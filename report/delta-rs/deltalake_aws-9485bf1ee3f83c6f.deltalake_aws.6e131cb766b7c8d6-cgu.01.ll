inline.NumInlined: 1838
inline.NumDeleted: 674
begin_hunk_0_@_RNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB7_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore17read_commit_entry0Bb_:bb.a

_RNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB9_9GetResult5bytes00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %_RNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB9_9GetResult5bytes00Cs9rVkZwOUgsI_13deltalake_aws.exit.sink.split.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2186
  %.sroa.0.0.copyload37.pre.i.i.i = load i64, ptr %i.s, align 8, !noalias !2207
  br label %bb.ig

bb.hp:                                            ; preds = %bb.ge
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #34
          to label %.noexc.i.i.i unwind label %bb.if, !noalias !2208

.noexc.i.i.i:                                     ; preds = %bb.hp
  unreachable

bb.hq:                                            ; preds = %bb.ge
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #34
          to label %.noexc15.i.i.i unwind label %bb.if, !noalias !2208

.noexc15.i.i.i:                                   ; preds = %bb.hq
  unreachable
end_hunk_0
begin_hunk_1_@_RNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB7_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore17read_commit_entry0Bb_:bb.a
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit15.i.i.i.i unwind label %bb.ic, !noalias !2206

bb.ht:                                            ; preds = %bb.hr
  %i.tw = load i64, ptr %i.t, align 8, !range !2209, !noalias !2186, !noundef !3 ; 7 uses
  %i.tx = icmp eq i64 %i.tw, -9223372036854775788
  br i1 %i.tx, label %.thread.i.i.i, label %bb.hu

end_hunk_1
begin_hunk_2_@_RNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB7_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore17read_commit_entry0Bb_:bb.a
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i.i.i.i, i64 24, i1 false), !noalias !2186
  %i.ua = getelementptr inbounds nuw i8, ptr %1, i64 880
  call void @llvm.experimental.noalias.scope.decl(metadata !2210)
  call void @llvm.experimental.noalias.scope.decl(metadata !2213)
  %i.ub = load i64, ptr %i.ua, align 8, !range !65, !alias.scope !2216, !noalias !2186, !noundef !3
  %i.uc = getelementptr inbounds nuw i8, ptr %1, i64 888 ; 4 uses
  %i.ud = icmp eq i64 %i.ub, 0
  br i1 %i.ud, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  call void @llvm.experimental.noalias.scope.decl(metadata !2217)
  call void @llvm.experimental.noalias.scope.decl(metadata !2220)
  %i.ue = load ptr, ptr %i.uc, align 8, !alias.scope !2223, !noalias !2186, !nonnull !3, !noundef !3
  %i.uf = atomicrmw sub ptr %i.ue, i64 1 release, align 8, !noalias !2224
  %i.ug = icmp eq i64 %i.uf, 1
  br i1 %i.ug, label %.invoke23.i.i.i.i, label %bb.ig

bb.hy:                                            ; preds = %bb.hw
  call void @llvm.experimental.noalias.scope.decl(metadata !2225)
  call void @llvm.experimental.noalias.scope.decl(metadata !2228)
  %i.uh = load ptr, ptr %i.uc, align 8, !alias.scope !2231, !noalias !2186, !nonnull !3, !noundef !3
  %i.ui = atomicrmw sub ptr %i.uh, i64 1 release, align 8, !noalias !2232
  %i.uj = icmp eq i64 %i.ui, 1
  br i1 %i.uj, label %.invoke.i.i.i.i, label %bb.ig

bb.hz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i.i.i.i, i64 24, i1 false), !noalias !2186
  store i64 -9223372036854775799, ptr %i.s, align 8, !alias.scope !2233, !noalias !2236
  %i.uk = getelementptr inbounds nuw i8, ptr %1, i64 880
  call void @llvm.experimental.noalias.scope.decl(metadata !2238)
  call void @llvm.experimental.noalias.scope.decl(metadata !2241)
  %i.ul = load i64, ptr %i.uk, align 8, !range !65, !alias.scope !2244, !noalias !2186, !noundef !3
  %i.um = getelementptr inbounds nuw i8, ptr %1, i64 888 ; 4 uses
  %i.un = icmp eq i64 %i.ul, 0
  br i1 %i.un, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  call void @llvm.experimental.noalias.scope.decl(metadata !2245)
  call void @llvm.experimental.noalias.scope.decl(metadata !2248)
  %i.uo = load ptr, ptr %i.um, align 8, !alias.scope !2251, !noalias !2186, !nonnull !3, !noundef !3
  %i.up = atomicrmw sub ptr %i.uo, i64 1 release, align 8, !noalias !2252
  %i.uq = icmp eq i64 %i.up, 1
  br i1 %i.uq, label %.invoke23.i.i.i.i, label %bb.ig

.invoke23.i.i.i.i:                                ; preds = %bb.ia, %bb.hx
  %.sroa.0.0.copyload3766.i.i.i = phi i64 [ %i.tw, %bb.hx ], [ -9223372036854775799, %bb.ia ]
  %i.ur = phi ptr [ %i.uc, %bb.hx ], [ %i.um, %bb.ia ]
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ur) #32
          to label %bb.ig unwind label %bb.gi, !noalias !2206

bb.ib:                                            ; preds = %bb.hz
  call void @llvm.experimental.noalias.scope.decl(metadata !2253)
  call void @llvm.experimental.noalias.scope.decl(metadata !2256)
  %i.us = load ptr, ptr %i.um, align 8, !alias.scope !2259, !noalias !2186, !nonnull !3, !noundef !3
  %i.ut = atomicrmw sub ptr %i.us, i64 1 release, align 8, !noalias !2260
  %i.uu = icmp eq i64 %i.ut, 1
  br i1 %i.uu, label %.invoke.i.i.i.i, label %bb.ig

.invoke.i.i.i.i:                                  ; preds = %bb.ib, %bb.hy
  %.sroa.0.0.copyload3765.i.i.i = phi i64 [ %i.tw, %bb.hy ], [ -9223372036854775799, %bb.ib ]
  %i.uv = phi ptr [ %i.uc, %bb.hy ], [ %i.um, %bb.ib ]
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.uv) #32
end_hunk_2
begin_hunk_3_@_RNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB7_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore17read_commit_entry0Bb_:bb.a
  %i.uz = phi ptr [ %i.qs, %_RNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB9_9GetResult5bytes00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i ], [ %i.tr, %bb.hx ], [ %i.tr, %bb.hy ], [ %i.tr, %bb.ia ], [ %i.tr, %.invoke23.i.i.i.i ], [ %i.tr, %bb.ib ], [ %i.tr, %.invoke.i.i.i.i ] ; 2 uses
  %i.va = phi ptr [ %i.qt, %_RNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB9_9GetResult5bytes00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i ], [ %i.ts, %bb.hx ], [ %i.ts, %bb.hy ], [ %i.ts, %bb.ia ], [ %i.ts, %.invoke23.i.i.i.i ], [ %i.ts, %bb.ib ], [ %i.ts, %.invoke.i.i.i.i ]
  %i.vb = phi ptr [ %i.qu, %_RNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB9_9GetResult5bytes00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i ], [ %i.tt, %bb.hx ], [ %i.tt, %bb.hy ], [ %i.tt, %bb.ia ], [ %i.tt, %.invoke23.i.i.i.i ], [ %i.tt, %bb.ib ], [ %i.tt, %.invoke.i.i.i.i ]
  %.sroa.0.0.copyload37.i.i.i = phi i64 [ %.sroa.0.0.copyload37.pre.i.i.i, %_RNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB9_9GetResult5bytes00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i ], [ %i.tw, %bb.hx ], [ %i.tw, %bb.hy ], [ -9223372036854775799, %bb.ia ], [ %.sroa.0.0.copyload3766.i.i.i, %.invoke23.i.i.i.i ], [ -9223372036854775799, %bb.ib ], [ %.sroa.0.0.copyload3765.i.i.i, %.invoke.i.i.i.i ] ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %1, i64 905
  store i8 0, ptr %i.vc, align 1, !noalias !2186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2186
  %.sroa.838.0..sroa_idx39.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.838.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.838.0..sroa_idx39.i.i.i, align 8, !noalias !2207
  %.sroa.838.sroa.6.0..sroa.838.0..sroa_idx39.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.838.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.838.sroa.6.0..sroa.838.0..sroa_idx39.sroa_idx.i.i.i, i64 24, i1 false), !noalias !2207
  %.sroa.838.sroa.7.0..sroa.838.0..sroa_idx39.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.838.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.838.sroa.7.0..sroa.838.0..sroa_idx39.sroa_idx.i.i.i, i64 32, i1 false), !noalias !2207
  store i8 1, ptr %i.va, align 8, !noalias !2186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2182
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i.i.i)
end_hunk_3
begin_hunk_4_@_RNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB7_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore17read_commit_entry0Bb_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.838.sroa.6.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.838.sroa.7.i.i.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util20maybe_spawn_blockingNCNCNvMs0_BN_NtBN_9GetResult5bytes00NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.vb)
          to label %bb.ik unwind label %bb.ij, !noalias !2208

bb.ij:                                            ; preds = %bb.ii
  %i.vf = landingpad { ptr, i32 }
end_hunk_4
begin_hunk_5_@_RNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB7_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore17read_commit_entry0Bb_:bb.a
  %i.vi = phi ptr [ %.sroa.6.2.i.i.i.i, %bb.ld ], [ %.sroa.838.sroa.0.0.copyload.i.i.i, %bb.ii ] ; 4 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %1, i64 616
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(96) %i.vj)
          to label %bb.lg unwind label %bb.lf, !noalias !2208

.body.i.i.i:                                      ; preds = %bb.if, %bb.id
  %i.vk = phi ptr [ %i.qx, %bb.id ], [ %.phi.trans.insert.i.i, %bb.if ]
end_hunk_5
begin_hunk_6_@_RNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB7_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore17read_commit_entry0Bb_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.838.sroa.6.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.838.sroa.7.i.i.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util20maybe_spawn_blockingNCNCNvMs0_BN_NtBN_9GetResult5bytes00NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.vm) #31
          to label %bb.im unwind label %bb.il, !noalias !2208

bb.il:                                            ; preds = %bb.li, %.body24.i.i.i, %bb.lf, %bb.im, %.body.i.i.i
  %i.vn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !2208
  unreachable

bb.im:                                            ; preds = %.body24.i.i.i, %bb.le, %.body.i.i.i, %bb.ij
end_hunk_6
begin_hunk_7_@_RNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB7_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore17read_commit_entry0Bb_:bb.a
  %.pn10.pn.i.i.i = phi { ptr, i32 } [ %.pn8.i.i.i, %.body24.i.i.i ], [ %i.afs, %bb.le ], [ %i.vf, %bb.ij ], [ %.pn2.i.i.i, %.body.i.i.i ]
  %i.vq = getelementptr inbounds nuw i8, ptr %1, i64 616
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(96) %i.vq) #31
          to label %bb.li unwind label %bb.il, !noalias !2208

bb.in:                                            ; preds = %bb.ga
  %.phi.trans.insert64.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 912 ; 5 uses
end_hunk_7
begin_hunk_8_@_RNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB7_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore17read_commit_entry0Bb_:bb.a

bb.iq:                                            ; preds = %bb.in
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #34
          to label %.noexc22.i.i.i unwind label %bb.lb, !noalias !2208

.noexc22.i.i.i:                                   ; preds = %bb.iq
  unreachable

bb.ir:                                            ; preds = %bb.in
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #34
          to label %.noexc23.i.i.i unwind label %bb.lb, !noalias !2208

.noexc23.i.i.i:                                   ; preds = %bb.ir
  unreachable
end_hunk_8
begin_hunk_9_@_RNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB7_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore17read_commit_entry0Bb_:bb.a
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i

bb.iu:                                            ; preds = %bb.is
  %i.wn = load i64, ptr %i.g, align 8, !range !2209, !noalias !2261, !noundef !3 ; 3 uses
  %i.wo = icmp eq i64 %i.wn, -9223372036854775788
  br i1 %i.wo, label %bb.iv, label %bb.iw

end_hunk_9
begin_hunk_10_@_RNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB7_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore17read_commit_entry0Bb_:bb.a
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i unwind label %bb.jz, !noalias !2265, !inline_history !626

bb.jj:                                            ; preds = %bb.jh
  %i.ym = load i64, ptr %i.f, align 8, !range !2209, !noalias !2261, !noundef !3 ; 4 uses
  %i.yn = icmp eq i64 %i.ym, -9223372036854775788
  br i1 %i.yn, label %bb.jk, label %bb.jl

end_hunk_10
begin_hunk_11_@_RNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB7_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore17read_commit_entry0Bb_:bb.a
  br label %bb.jw

bb.kc:                                            ; preds = %bb.ka
  %i.abj = load i64, ptr %i.e, align 8, !range !2209, !noalias !2261, !noundef !3 ; 4 uses
  %i.abk = icmp eq i64 %i.abj, -9223372036854775788
  br i1 %i.abk, label %bb.kd, label %bb.ke

end_hunk_11
begin_hunk_12_@_RNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB7_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore17read_commit_entry0Bb_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5104.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i16.i.i.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util13collect_bytesINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtBN_5ErrorENtNtB4_6marker4SendEL_EEB4b_E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.afr)
          to label %bb.ik unwind label %bb.le, !noalias !2208

bb.le:                                            ; preds = %bb.ld
  %i.afs = landingpad { ptr, i32 }
end_hunk_12
begin_hunk_13_@_RNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB7_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore17read_commit_entry0Bb_:bb.a
          cleanup
  %i.afu = getelementptr inbounds nuw i8, ptr %1, i64 744
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.afu)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.il, !noalias !2208

bb.lg:                                            ; preds = %bb.ik
  %i.afv = getelementptr inbounds nuw i8, ptr %1, i64 744
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.afv)
          to label %bb.lk unwind label %bb.lh, !noalias !2208

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.li, %bb.lh, %bb.lf
  %i.afw = phi ptr [ %i.vg, %bb.lh ], [ %i.vg, %bb.lf ], [ %i.vo, %bb.li ]
end_hunk_13
begin_hunk_14_@_RNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB7_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore17read_commit_entry0Bb_:bb.a
  %i.agb = phi ptr [ %i.adx, %.body.i17.i.i.i ], [ %i.vr, %bb.lb ]
  %.pn8.i.i.i = phi { ptr, i32 } [ %.pn32.i.i.i.i, %.body.i17.i.i.i ], [ %i.afl, %bb.lb ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util13collect_bytesINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtBN_5ErrorENtNtB4_6marker4SendEL_EEB4b_E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.agb) #31
          to label %bb.im unwind label %bb.il, !noalias !2208

bb.li:                                            ; preds = %bb.im
  %i.agc = getelementptr inbounds nuw i8, ptr %1, i64 744
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.agc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.il, !noalias !2208

bb.lj:                                            ; preds = %bb.lc, %bb.ih
  %i.agd = phi ptr [ %i.ve, %bb.ih ], [ %i.afm, %bb.lc ]
end_hunk_14
begin_hunk_15_@llvm.smax.i64
!2204 = !{!2195, !2187, !2189, !2183, !2185, !2158, !2160, !2135, !2137}
!2205 = !{!2201, !2192, !2195, !2187, !2189, !2183, !2185, !2158, !2160, !2135, !2137}
!2206 = !{!2187, !2183, !2158, !2135}
!2207 = !{!2189, !2183, !2185, !2158, !2160, !2135, !2137}
!2208 = !{!2183, !2158, !2135}
!2209 = !{i64 0, i64 -9223372036854775787}
!2210 = !{!2211}
!2211 = distinct !{!2211, !2212, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws: argument 0"}
!2212 = distinct !{!2212, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws"}
!2213 = !{!2214}
!2214 = distinct !{!2214, !2215, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECs9rVkZwOUgsI_13deltalake_aws: argument 0"}
!2215 = distinct !{!2215, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECs9rVkZwOUgsI_13deltalake_aws"}
!2216 = !{!2214, !2211}
!2217 = !{!2218}
!2218 = distinct !{!2218, !2219, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleEECs9rVkZwOUgsI_13deltalake_aws: argument 0"}
!2219 = distinct !{!2219, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleEECs9rVkZwOUgsI_13deltalake_aws"}
!2220 = !{!2221}
!2221 = distinct !{!2221, !2222, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws: argument 0"}
!2222 = distinct !{!2222, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws"}
!2223 = !{!2221, !2218, !2214, !2211}
!2224 = !{!2221, !2218, !2214, !2211, !2187, !2183, !2158, !2135}
!2225 = !{!2226}
!2226 = distinct !{!2226, !2227, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleEECs9rVkZwOUgsI_13deltalake_aws: argument 0"}
!2227 = distinct !{!2227, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleEECs9rVkZwOUgsI_13deltalake_aws"}
!2228 = !{!2229}
!2229 = distinct !{!2229, !2230, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws: argument 0"}
!2230 = distinct !{!2230, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws"}
!2231 = !{!2229, !2226, !2214, !2211}
!2232 = !{!2229, !2226, !2214, !2211, !2187, !2183, !2158, !2135}
!2233 = !{!2234}
!2234 = distinct !{!2234, !2235, !"_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEE13from_residualCs9rVkZwOUgsI_13deltalake_aws: argument 0"}
!2235 = distinct !{!2235, !"_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEE13from_residualCs9rVkZwOUgsI_13deltalake_aws"}
!2236 = !{!2237, !2187, !2189, !2183, !2185, !2158, !2160, !2135, !2137}
!2237 = distinct !{!2237, !2235, !"_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEE13from_residualCs9rVkZwOUgsI_13deltalake_aws: argument 1"}
!2238 = !{!2239}
!2239 = distinct !{!2239, !2240, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws: argument 0"}
!2240 = distinct !{!2240, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws"}
!2241 = !{!2242}
!2242 = distinct !{!2242, !2243, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECs9rVkZwOUgsI_13deltalake_aws: argument 0"}
!2243 = distinct !{!2243, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECs9rVkZwOUgsI_13deltalake_aws"}
!2244 = !{!2242, !2239}
!2245 = !{!2246}
!2246 = distinct !{!2246, !2247, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleEECs9rVkZwOUgsI_13deltalake_aws: argument 0"}
!2247 = distinct !{!2247, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleEECs9rVkZwOUgsI_13deltalake_aws"}
!2248 = !{!2249}
!2249 = distinct !{!2249, !2250, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws: argument 0"}
!2250 = distinct !{!2250, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws"}
!2251 = !{!2249, !2246, !2242, !2239}
!2252 = !{!2249, !2246, !2242, !2239, !2187, !2183, !2158, !2135}
!2253 = !{!2254}
!2254 = distinct !{!2254, !2255, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleEECs9rVkZwOUgsI_13deltalake_aws: argument 0"}
!2255 = distinct !{!2255, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleEECs9rVkZwOUgsI_13deltalake_aws"}
!2256 = !{!2257}
!2257 = distinct !{!2257, !2258, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws: argument 0"}
!2258 = distinct !{!2258, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws"}
!2259 = !{!2257, !2254, !2242, !2239}
!2260 = !{!2257, !2254, !2242, !2239, !2187, !2183, !2158, !2135}
!2261 = !{!2262, !2264, !2183, !2185, !2158, !2160, !2135, !2137}
!2262 = distinct !{!2262, !2263, !"_RNCINvNtCsjyY8HP3IvQ6_12object_store4util13collect_bytesINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtBX_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB6_5ErrorENtNtBX_6marker4SendEL_EEB3K_E0Cs9rVkZwOUgsI_13deltalake_aws: argument 0"}
!2263 = distinct !{!2263, !"_RNCINvNtCsjyY8HP3IvQ6_12object_store4util13collect_bytesINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtBX_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB6_5ErrorENtNtBX_6marker4SendEL_EEB3K_E0Cs9rVkZwOUgsI_13deltalake_aws"}
end_hunk_15
