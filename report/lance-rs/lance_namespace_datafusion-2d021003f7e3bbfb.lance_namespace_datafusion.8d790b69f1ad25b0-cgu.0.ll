Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_datafusion-2d021003f7e3bbfb.lance_namespace_datafusion.8d790b69f1ad25b0-cgu.0?download=true
inline.NumInlined: 15000
inline.NumDeleted: 5462
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_RNvXs1_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB5_20LanceCatalogProviderNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProvider12schema_names:bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #48
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.k, !noalias !40472

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = atomicrmw sub ptr %i.ar, i64 4 release, align 8, !noalias !40472
  %i.bk = icmp eq i64 %i.bj, 6
  br i1 %i.bk, label %bb.l, label %.body.i.i.i.i.i.i.i, !prof !114

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.ar)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.m, !noalias !40472

bb.m:                                             ; preds = %bb.l
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !40472
  unreachable

bb.n:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  store i64 1, ptr %i.bg, align 8, !noalias !40472
  %.sroa.435.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 1, ptr %.sroa.435.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !40472
  %.sroa.536.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr %i.ar, ptr %.sroa.536.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !40472
  call void @llvm.experimental.noalias.scope.decl(metadata !40481)
  %i.bm = load ptr, ptr %.sroa.5.0..sroa_idx74, align 8, !alias.scope !40482, !noalias !40471, !noundef !111 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtB13_6string6StringINtNtB2q_4util11SharedValueIBZ_DNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEINtB34_7RawIterB3P_EEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = atomicrmw sub ptr %i.bm, i64 1 release, align 8, !noalias !40483
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtB13_6string6StringINtNtB2q_4util11SharedValueIBZ_DNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEINtB34_7RawIterB3P_EEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtB7_6string6StringINtNtB1A_4util11SharedValueIBx_DNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEEEE9drop_slowB3V_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx74)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtB13_6string6StringINtNtB2q_4util11SharedValueIBZ_DNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEINtB34_7RawIterB3P_EEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i unwind label %.thread.i.i.i.i.i.i.i.i, !noalias !40472

.thread.i.i.i.i.i.i.i.i:                          ; preds = %bb.p
  %i.bq = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bg, ptr %.sroa.5.0..sroa_idx74, align 8, !alias.scope !40470, !noalias !40471
  store ptr %i.ax, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !40470, !noalias !40471
  store ptr %i.bd, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx12.sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !40470, !noalias !40471
  store ptr %i.bb, ptr %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx12.sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !40470, !noalias !40471
  store <16 x i1> %i.bc, ptr %.sroa.511.sroa.7.0..sroa.511.0..sroa_idx12.sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !40470, !noalias !40471
  store i64 %i.bf, ptr %i.p, align 8, !alias.scope !40470, !noalias !40471
  br label %.body.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtB13_6string6StringINtNtB2q_4util11SharedValueIBZ_DNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEINtB34_7RawIterB3P_EEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i: ; preds = %bb.p, %bb.o, %bb.n
  store ptr %i.bg, ptr %.sroa.5.0..sroa_idx74, align 8, !alias.scope !40470, !noalias !40471
  store ptr %i.ax, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !40470, !noalias !40471
  store ptr %i.bd, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx12.sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !40470, !noalias !40471
  store ptr %i.bb, ptr %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx12.sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !40470, !noalias !40471
  store <16 x i1> %i.bc, ptr %.sroa.511.sroa.7.0..sroa.511.0..sroa_idx12.sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !40470, !noalias !40471
  store i64 %i.bf, ptr %i.p, align 8, !alias.scope !40470, !noalias !40471
  %i.br = load i64, ptr %.sroa.4.0..sroa_idx73, align 8, !alias.scope !40470, !noalias !40471, !noundef !111
  %i.bs = add i64 %i.br, 1
  store i64 %i.bs, ptr %.sroa.4.0..sroa_idx73, align 8, !alias.scope !40470, !noalias !40471
  br label %.backedge

.backedge:                                        ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtB13_6string6StringINtNtB2q_4util11SharedValueIBZ_DNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEINtB34_7RawIterB3P_EEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i, %bb.aa
  %.be = phi ptr [ %i.bg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtB13_6string6StringINtNtB2q_4util11SharedValueIBZ_DNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEINtB34_7RawIterB3P_EEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.pre, %bb.aa ]
  br label %bb.c

.loopexit.i.i.i.i.i.i.i:                          ; preds = %_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i.i:                 ; preds = %_RNCNvXs1_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB7_20LanceCatalogProviderNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProvider12schema_names0B9_.exit.i.i.i.i.i.i.i.i, %bb.w
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %bb.u, %bb.t, %.loopexit.split-lp.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i, %bb.l, %bb.k
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bi, %bb.k ], [ %i.bq, %.thread.i.i.i.i.i.i.i.i ], [ %i.bi, %bb.l ], [ %i.cd, %bb.t ], [ %i.cd, %bb.u ], [ %lpad.loopexit.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !40484)
  call void @llvm.experimental.noalias.scope.decl(metadata !40485)
  %i.bt = load ptr, ptr %.sroa.5.0..sroa_idx74, align 8, !alias.scope !40486, !noalias !40487, !noundef !111 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.body.i, label %bb.q

bb.q:                                             ; preds = %.body.i.i.i.i.i.i.i
  %i.bv = atomicrmw sub ptr %i.bt, i64 1 release, align 8, !noalias !40488
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.r, label %.body.i

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtB7_6string6StringINtNtB1A_4util11SharedValueIBx_DNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEEEE9drop_slowB3V_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx74)
          to label %.body.i unwind label %bb.ab, !noalias !40478

bb.s:                                             ; preds = %_RINvMsh_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB17_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEE9next_implKb0_ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i
  %i.bx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = sub nsw i64 0, %i.by
  %i.ca = getelementptr inbounds [40 x i8], ptr %i.ah, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -40 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.ca, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !40489
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40490
  store ptr %i.q, ptr %i.a, align 8, !noalias !40489
  store ptr %i.cb, ptr %.sroa.413.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !40489
  store ptr %i.cc, ptr %.sroa.514.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !40489
  call void @llvm.experimental.noalias.scope.decl(metadata !40491)
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cb)
          to label %bb.v unwind label %bb.t, !noalias !40492

bb.t:                                             ; preds = %bb.s
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !40493)
  call void @llvm.experimental.noalias.scope.decl(metadata !40494)
  call void @llvm.experimental.noalias.scope.decl(metadata !40495)
  %i.ce = load ptr, ptr %i.a, align 8, !alias.scope !40496, !noalias !40497, !nonnull !111, !noundef !111
  %i.cf = atomicrmw sub ptr %i.ce, i64 1 release, align 8, !noalias !40498
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %bb.u, label %.body.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtB7_6string6StringINtNtB1A_4util11SharedValueIBx_DNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEEEE9drop_slowB3V_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.x, !noalias !40499

bb.v:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !40500)
  call void @llvm.experimental.noalias.scope.decl(metadata !40501)
  call void @llvm.experimental.noalias.scope.decl(metadata !40502)
  %i.ch = load ptr, ptr %i.a, align 8, !alias.scope !40503, !noalias !40497, !nonnull !111, !noundef !111
  %i.ci = atomicrmw sub ptr %i.ch, i64 1 release, align 8, !noalias !40504
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %bb.w, label %_RNCNvXs1_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB7_20LanceCatalogProviderNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProvider12schema_names0B9_.exit.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtB7_6string6StringINtNtB1A_4util11SharedValueIBx_DNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEEEE9drop_slowB3V_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCNvXs1_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB7_20LanceCatalogProviderNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProvider12schema_names0B9_.exit.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i, !noalias !40478

bb.x:                                             ; preds = %bb.u
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !40499
  unreachable

_RNCNvXs1_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB7_20LanceCatalogProviderNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProvider12schema_names0B9_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40490
  invoke fastcc void @_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.aa unwind label %.loopexit.split-lp.i.i.i.i.i.i.i

bb.y:                                             ; preds = %.thread.i.i.i.i.i.i.i
  %i.cl = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !40505
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.z, label %_RINvXs7_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB6_7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1O_8adapters3map3MapINtNtCs5q0wOX0Zf7d_7dashmap4iter4IterB14_INtNtB18_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EENCNvXs1_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB5y_20LanceCatalogProviderNtNtB4q_7catalog15CatalogProvider12schema_names0EEB5A_.exit

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtB7_6string6StringINtNtB1A_4util11SharedValueIBx_DNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEEEE9drop_slowB3V_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx74)
          to label %_RINvXs7_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB6_7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1O_8adapters3map3MapINtNtCs5q0wOX0Zf7d_7dashmap4iter4IterB14_INtNtB18_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EENCNvXs1_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB5y_20LanceCatalogProviderNtNtB4q_7catalog15CatalogProvider12schema_names0EEB5A_.exit unwind label %bb.ac, !noalias !40463

bb.aa:                                            ; preds = %_RNCNvXs1_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB7_20LanceCatalogProviderNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProvider12schema_names0B9_.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40489
  %.pre.i.i.i.i.i.i.i.i.pre = load ptr, ptr %.sroa.5.0..sroa_idx74, align 8, !alias.scope !40470, !noalias !40471
  br label %.backedge

bb.ab:                                            ; preds = %bb.r
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !40478
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ac, %bb.r, %bb.q, %.body.i.i.i.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.co, %bb.ac ], [ %eh.lpad-body.i.i.i.i.i.i.i, %bb.r ], [ %eh.lpad-body.i.i.i.i.i.i.i, %bb.q ], [ %eh.lpad-body.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(48) %i.d) #49, !noalias !40463
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXs7_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB6_7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1O_8adapters3map3MapINtNtCs5q0wOX0Zf7d_7dashmap4iter4IterB14_INtNtB18_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EENCNvXs1_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB5y_20LanceCatalogProviderNtNtB4q_7catalog15CatalogProvider12schema_names0EEB5A_.exit: ; preds = %bb.e, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !40467
  %.sroa.020.0.copyload = load ptr, ptr %i.d, align 8, !noalias !40506, !nonnull !111, !noundef !111 ; 5 uses
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.421.0.copyload = load i64, ptr %.sroa.421.0..sroa_idx, align 8, !noalias !40506 ; 4 uses
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.623.0.copyload = load i64, ptr %.sroa.623.0..sroa_idx, align 8, !noalias !40506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !40463
  %.val3.i.i.i = load <16 x i8>, ptr %.sroa.020.0.copyload, align 16, !noalias !40507
  %i.cp = icmp eq i64 %.sroa.421.0.copyload, 0
  br i1 %i.cp, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12IntoIterator9into_iterCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvXs7_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB6_7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1O_8adapters3map3MapINtNtCs5q0wOX0Zf7d_7dashmap4iter4IterB14_INtNtB18_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EENCNvXs1_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB5y_20LanceCatalogProviderNtNtB4q_7catalog15CatalogProvider12schema_names0EEB5A_.exit
  %i.cq = mul i64 %.sroa.421.0.copyload, 24
  %i.cr = and i64 %i.cq, -16                      ; 2 uses
  %i.cs = add i64 %.sroa.421.0.copyload, 49
  %i.ct = add i64 %i.cs, %i.cr
  %i.cu = sub i64 -32, %i.cr
  %i.cv = getelementptr inbounds i8, ptr %.sroa.020.0.copyload, i64 %i.cu
  br label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12IntoIterator9into_iterCsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12IntoIterator9into_iterCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %_RINvXs7_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB6_7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1O_8adapters3map3MapINtNtCs5q0wOX0Zf7d_7dashmap4iter4IterB14_INtNtB18_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EENCNvXs1_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB5y_20LanceCatalogProviderNtNtB4q_7catalog15CatalogProvider12schema_names0EEB5A_.exit, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.511.0.i.i = phi ptr [ undef, %_RINvXs7_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB6_7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1O_8adapters3map3MapINtNtCs5q0wOX0Zf7d_7dashmap4iter4IterB14_INtNtB18_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EENCNvXs1_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB5y_20LanceCatalogProviderNtNtB4q_7catalog15CatalogProvider12schema_names0EEB5A_.exit ], [ %i.cv, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %.sroa.410.0.i.i = phi i64 [ undef, %_RINvXs7_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB6_7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1O_8adapters3map3MapINtNtCs5q0wOX0Zf7d_7dashmap4iter4IterB14_INtNtB18_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EENCNvXs1_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB5y_20LanceCatalogProviderNtNtB4q_7catalog15CatalogProvider12schema_names0EEB5A_.exit ], [ %i.ct, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %.sink.i.i.i = phi i64 [ 0, %_RINvXs7_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB6_7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1O_8adapters3map3MapINtNtCs5q0wOX0Zf7d_7dashmap4iter4IterB14_INtNtB18_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EENCNvXs1_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB5y_20LanceCatalogProviderNtNtB4q_7catalog15CatalogProvider12schema_names0EEB5A_.exit ], [ 16, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload, i64 16
  %i.cx = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.cy = getelementptr i8, ptr %.sroa.020.0.copyload, i64 %.sroa.421.0.copyload
  %i.cz = getelementptr i8, ptr %i.cy, i64 1
  store i64 %.sink.i.i.i, ptr %i.e, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.410.0.i.i, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.511.0.i.i, ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.020.0.copyload, ptr %.sroa.610.0..sroa_idx, align 8
  %.sroa.711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.cw, ptr %.sroa.711.0..sroa_idx, align 8
  %.sroa.812.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.cz, ptr %.sroa.812.0..sroa_idx, align 8
  %.sroa.913.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store <16 x i1> %i.cx, ptr %.sroa.913.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %.sroa.623.0.copyload, ptr %.sroa.11.0..sroa_idx, align 8
  call fastcc void @_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterB11_EE9from_iterCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB5_20LanceCatalogProviderNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProvider15register_schema(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noundef nonnull %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 12 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [16 x i8], align 16               ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  store ptr %4, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %5, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.not.i = icmp slt i64 %3, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !112

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %3, 0                        ; 4 uses
  br i1 %i.h, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread21, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !40566
  %i.i = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !40566 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.aa

bb.c:                                             ; preds = %bb.a, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.a ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %3) #48
          to label %bb.ac unwind label %bb.ad

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread21: ; preds = %bb.b, %bb.aa
  %i.k = phi ptr [ %i.i, %bb.aa ], [ inttoptr (i64 1 to ptr), %bb.b ] ; 5 uses
  %.sroa.10.026 = phi i64 [ %i.fi, %bb.aa ], [ 1, %bb.b ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40567)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %4, ptr %i.d, align 16, !noalias !40568
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %5, ptr %i.l, align 8, !noalias !40568
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40569)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !40568
  store ptr %i.g, ptr %i.c, align 8, !noalias !40570
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !40570
  %.sroa.48.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.n = load <2 x i64>, ptr %i.m, align 8, !alias.scope !40571, !noalias !40572 ; 3 uses
  %i.o = shufflevector <2 x i64> %i.n, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.p = xor <2 x i64> %i.o, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.p, ptr %i.b, align 16, !alias.scope !40573, !noalias !40570
  %i.q = shufflevector <2 x i64> %i.n, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.r = xor <2 x i64> %i.q, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.r, ptr %.sroa.59.0..sroa_idx.i.i.i.i, align 16, !alias.scope !40573, !noalias !40570
  store <2 x i64> %i.n, ptr %.sroa.711.0..sroa_idx.i.i.i.i, align 16, !alias.scope !40573, !noalias !40570
  %.sroa.913.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !40573, !noalias !40570
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %3), !noalias !40574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40575
  store i8 -1, ptr %i.a, align 1, !noalias !40575
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !40576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40575
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.b, align 16, !alias.scope !40577, !noalias !40570
  %.sroa.10.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i.i, align 8, !alias.scope !40577, !noalias !40570
  %.sroa.17.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i.i, align 16, !alias.scope !40577, !noalias !40570 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i.i, align 8, !alias.scope !40577, !noalias !40570
  %i.s = load i64, ptr %.sroa.913.0..sroa_idx.i.i.i.i, align 16, !alias.scope !40577, !noalias !40570, !noundef !111
  %i.t = shl i64 %i.s, 56
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !40577, !noalias !40570, !noundef !111
  %i.w = or i64 %i.t, %i.v                        ; 2 uses
  %i.x = xor i64 %i.w, %.sroa.22.0.copyload.i.i.i.i.i ; 3 uses
  %i.y = add i64 %.sroa.17.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i ; 3 uses
  %i.z = add i64 %i.x, %.sroa.10.0.copyload.i.i.i.i.i ; 2 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i.i.i, i64 %.sroa.17.0.copyload.i.i.i.i.i, i64 13)
  %i.ab = xor i64 %i.aa, %i.y                     ; 3 uses
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 16)
  %i.ad = xor i64 %i.ac, %i.z                     ; 3 uses
  %i.ae = tail call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 32)
  %i.af = add i64 %i.z, %i.ab                     ; 3 uses
  %i.ag = add i64 %i.ad, %i.ae                    ; 2 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 17)
  %i.ai = xor i64 %i.af, %i.ah                    ; 3 uses
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 21)
  %i.ak = xor i64 %i.aj, %i.ag                    ; 3 uses
  %i.al = tail call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 32)
  %i.am = xor i64 %i.ag, %i.w
  %i.an = xor i64 %i.al, 255
  %i.ao = add i64 %i.am, %i.ai                    ; 3 uses
  %i.ap = add i64 %i.ak, %i.an                    ; 2 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 13)
  %i.ar = xor i64 %i.ao, %i.aq                    ; 3 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 16)
  %i.at = xor i64 %i.as, %i.ap                    ; 3 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 32)
  %i.av = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.aw = add i64 %i.at, %i.au                    ; 2 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 17)
  %i.ay = xor i64 %i.av, %i.ax                    ; 3 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 21)
  %i.ba = xor i64 %i.az, %i.aw                    ; 3 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 32)
  %i.bc = add i64 %i.ay, %i.aw                    ; 3 uses
  %i.bd = add i64 %i.ba, %i.bb                    ; 2 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 13)
  %i.bf = xor i64 %i.be, %i.bc                    ; 3 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 16)
  %i.bh = xor i64 %i.bg, %i.bd                    ; 3 uses
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 32)
  %i.bj = add i64 %i.bf, %i.bd                    ; 3 uses
  %i.bk = add i64 %i.bh, %i.bi                    ; 2 uses
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 17)
  %i.bm = xor i64 %i.bl, %i.bj                    ; 3 uses
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 21)
  %i.bo = xor i64 %i.bn, %i.bk                    ; 3 uses
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 32)
  %i.bq = add i64 %i.bm, %i.bk
  %i.br = add i64 %i.bo, %i.bp                    ; 2 uses
  %i.bs = tail call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 13)
  %i.bt = xor i64 %i.bs, %i.bq                    ; 3 uses
  %i.bu = tail call noundef i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 16)
  %i.bv = xor i64 %i.bu, %i.br                    ; 2 uses
  %i.bw = add i64 %i.bt, %i.br                    ; 3 uses
  %i.bx = tail call noundef i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 17)
  %i.by = tail call noundef i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 21)
  %i.bz = tail call noundef i64 @llvm.fshl.i64(i64 %i.bw, i64 %i.bw, i64 32)
  %i.ca = xor i64 %i.by, %i.bx
  %i.cb = xor i64 %i.ca, %i.bz
  %i.cc = xor i64 %i.cb, %i.bw                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40570
  %i.cd = shl i64 %i.cc, 7
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !40571, !noalias !40572, !noundef !111
  %i.cg = and i64 %i.cf, 63
  %i.ch = lshr i64 %i.cd, %i.cg                   ; 2 uses
  %.val13.i.i = load ptr, ptr %i.g, align 8, !alias.scope !40571, !noalias !40572, !nonnull !111, !noundef !111
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val14.i.i = load i64, ptr %i.ci, align 8, !alias.scope !40571, !noalias !40572, !noundef !111
  %i.cj = icmp ult i64 %i.ch, %.val14.i.i
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = getelementptr inbounds nuw [128 x i8], ptr %.val13.i.i, i64 %i.ch ; 11 uses
  %i.cl = cmpxchg weak ptr %i.ck, i64 0, i64 -4 acquire monotonic, align 8, !noalias !40574
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.cl, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %_RNvXs2_Cs5q0wOX0Zf7d_7dashmapINtB5_7DashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE18__yield_write_shardCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, label %bb.f, !prof !116

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock16RwLockWriteGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1w_4util11SharedValueINtNtB30_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.o, %bb.n, %bb.e
  %.pn.i.i = phi { ptr, i32 } [ %i.cm, %bb.e ], [ %i.ef, %bb.o ], [ %i.ef, %bb.n ] ; 2 uses
  br i1 %i.h, label %bb.x, label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock16RwLockWriteGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1w_4util11SharedValueINtNtB30_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !40578
  br label %bb.x

bb.e:                                             ; preds = %bb.f
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock16RwLockWriteGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1w_4util11SharedValueINtNtB30_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

bb.f:                                             ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread21
  invoke void @_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.ck)
          to label %_RNvXs2_Cs5q0wOX0Zf7d_7dashmapINtB5_7DashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE18__yield_write_shardCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.e, !noalias !40574

_RNvXs2_Cs5q0wOX0Zf7d_7dashmapINtB5_7DashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE18__yield_write_shardCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.f, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread21
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 24 ; 3 uses
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !40579, !noalias !40580, !noundef !111
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.g, label %_RINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entrys_0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i, !prof !114
end_hunk_0
begin_hunk_1_@_RNvXs_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB4_24LanceCatalogProviderListNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog19CatalogProviderList13catalog_names:bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #48
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.k, !noalias !41345

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = atomicrmw sub ptr %i.ar, i64 4 release, align 8, !noalias !41345
  %i.bk = icmp eq i64 %i.bj, 6
  br i1 %i.bk, label %bb.l, label %.body.i.i.i.i.i.i.i, !prof !114

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.ar)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.m, !noalias !41345

bb.m:                                             ; preds = %bb.l
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !41345
  unreachable

bb.n:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  store i64 1, ptr %i.bg, align 8, !noalias !41345
  %.sroa.435.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 1, ptr %.sroa.435.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !41345
  %.sroa.536.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr %i.ar, ptr %.sroa.536.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !41345
  call void @llvm.experimental.noalias.scope.decl(metadata !41354)
  %i.bm = load ptr, ptr %.sroa.5.0..sroa_idx74, align 8, !alias.scope !41355, !noalias !41344, !noundef !111 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtB13_6string6StringINtNtB2q_4util11SharedValueIBZ_DNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEEINtB34_7RawIterB3P_EEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = atomicrmw sub ptr %i.bm, i64 1 release, align 8, !noalias !41356
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtB13_6string6StringINtNtB2q_4util11SharedValueIBZ_DNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEEINtB34_7RawIterB3P_EEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtB7_6string6StringINtNtB1A_4util11SharedValueIBx_DNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEE9drop_slowB3V_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx74)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtB13_6string6StringINtNtB2q_4util11SharedValueIBZ_DNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEEINtB34_7RawIterB3P_EEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i unwind label %.thread.i.i.i.i.i.i.i.i, !noalias !41345

.thread.i.i.i.i.i.i.i.i:                          ; preds = %bb.p
  %i.bq = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bg, ptr %.sroa.5.0..sroa_idx74, align 8, !alias.scope !41343, !noalias !41344
  store ptr %i.ax, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !41343, !noalias !41344
  store ptr %i.bd, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx12.sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !41343, !noalias !41344
  store ptr %i.bb, ptr %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx12.sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !41343, !noalias !41344
  store <16 x i1> %i.bc, ptr %.sroa.511.sroa.7.0..sroa.511.0..sroa_idx12.sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !41343, !noalias !41344
  store i64 %i.bf, ptr %i.p, align 8, !alias.scope !41343, !noalias !41344
  br label %.body.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtB13_6string6StringINtNtB2q_4util11SharedValueIBZ_DNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEEINtB34_7RawIterB3P_EEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i: ; preds = %bb.p, %bb.o, %bb.n
  store ptr %i.bg, ptr %.sroa.5.0..sroa_idx74, align 8, !alias.scope !41343, !noalias !41344
  store ptr %i.ax, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !41343, !noalias !41344
  store ptr %i.bd, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx12.sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !41343, !noalias !41344
  store ptr %i.bb, ptr %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx12.sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !41343, !noalias !41344
  store <16 x i1> %i.bc, ptr %.sroa.511.sroa.7.0..sroa.511.0..sroa_idx12.sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !41343, !noalias !41344
  store i64 %i.bf, ptr %i.p, align 8, !alias.scope !41343, !noalias !41344
  %i.br = load i64, ptr %.sroa.4.0..sroa_idx73, align 8, !alias.scope !41343, !noalias !41344, !noundef !111
  %i.bs = add i64 %i.br, 1
  store i64 %i.bs, ptr %.sroa.4.0..sroa_idx73, align 8, !alias.scope !41343, !noalias !41344
  br label %.backedge

.backedge:                                        ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtB13_6string6StringINtNtB2q_4util11SharedValueIBZ_DNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEEINtB34_7RawIterB3P_EEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i, %bb.aa
  %.be = phi ptr [ %i.bg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtB13_6string6StringINtNtB2q_4util11SharedValueIBZ_DNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEEINtB34_7RawIterB3P_EEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.pre, %bb.aa ]
  br label %bb.c

.loopexit.i.i.i.i.i.i.i:                          ; preds = %_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i.i:                 ; preds = %_RNCNvXs_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB6_24LanceCatalogProviderListNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog19CatalogProviderList13catalog_names0B8_.exit.i.i.i.i.i.i.i.i, %bb.w
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %bb.u, %bb.t, %.loopexit.split-lp.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i, %bb.l, %bb.k
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bi, %bb.k ], [ %i.bq, %.thread.i.i.i.i.i.i.i.i ], [ %i.bi, %bb.l ], [ %i.cd, %bb.t ], [ %i.cd, %bb.u ], [ %lpad.loopexit.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41357)
  call void @llvm.experimental.noalias.scope.decl(metadata !41358)
  %i.bt = load ptr, ptr %.sroa.5.0..sroa_idx74, align 8, !alias.scope !41359, !noalias !41360, !noundef !111 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.body.i, label %bb.q

bb.q:                                             ; preds = %.body.i.i.i.i.i.i.i
  %i.bv = atomicrmw sub ptr %i.bt, i64 1 release, align 8, !noalias !41361
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.r, label %.body.i

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtB7_6string6StringINtNtB1A_4util11SharedValueIBx_DNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEE9drop_slowB3V_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx74)
          to label %.body.i unwind label %bb.ab, !noalias !41351

bb.s:                                             ; preds = %_RINvMsh_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB17_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEE9next_implKb0_ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i
  %i.bx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = sub nsw i64 0, %i.by
  %i.ca = getelementptr inbounds [40 x i8], ptr %i.ah, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -40 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.ca, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !41362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41363
  store ptr %i.q, ptr %i.a, align 8, !noalias !41362
  store ptr %i.cb, ptr %.sroa.413.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !41362
  store ptr %i.cc, ptr %.sroa.514.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !41362
  call void @llvm.experimental.noalias.scope.decl(metadata !41364)
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cb)
          to label %bb.v unwind label %bb.t, !noalias !41365

bb.t:                                             ; preds = %bb.s
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41366)
  call void @llvm.experimental.noalias.scope.decl(metadata !41367)
  call void @llvm.experimental.noalias.scope.decl(metadata !41368)
  %i.ce = load ptr, ptr %i.a, align 8, !alias.scope !41369, !noalias !41370, !nonnull !111, !noundef !111
  %i.cf = atomicrmw sub ptr %i.ce, i64 1 release, align 8, !noalias !41371
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %bb.u, label %.body.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtB7_6string6StringINtNtB1A_4util11SharedValueIBx_DNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEE9drop_slowB3V_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.x, !noalias !41372

bb.v:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !41373)
  call void @llvm.experimental.noalias.scope.decl(metadata !41374)
  call void @llvm.experimental.noalias.scope.decl(metadata !41375)
  %i.ch = load ptr, ptr %i.a, align 8, !alias.scope !41376, !noalias !41370, !nonnull !111, !noundef !111
  %i.ci = atomicrmw sub ptr %i.ch, i64 1 release, align 8, !noalias !41377
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %bb.w, label %_RNCNvXs_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB6_24LanceCatalogProviderListNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog19CatalogProviderList13catalog_names0B8_.exit.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtB7_6string6StringINtNtB1A_4util11SharedValueIBx_DNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEE9drop_slowB3V_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCNvXs_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB6_24LanceCatalogProviderListNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog19CatalogProviderList13catalog_names0B8_.exit.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i, !noalias !41351

bb.x:                                             ; preds = %bb.u
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !41372
  unreachable

_RNCNvXs_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB6_24LanceCatalogProviderListNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog19CatalogProviderList13catalog_names0B8_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !41363
  invoke fastcc void @_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.aa unwind label %.loopexit.split-lp.i.i.i.i.i.i.i

bb.y:                                             ; preds = %.thread.i.i.i.i.i.i.i
  %i.cl = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !41378
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.z, label %_RINvXs7_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB6_7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1O_8adapters3map3MapINtNtCs5q0wOX0Zf7d_7dashmap4iter4IterB14_INtNtB18_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EENCNvXs_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB5z_24LanceCatalogProviderListNtB4o_19CatalogProviderList13catalog_names0EEB5B_.exit

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtB7_6string6StringINtNtB1A_4util11SharedValueIBx_DNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEE9drop_slowB3V_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx74)
          to label %_RINvXs7_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB6_7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1O_8adapters3map3MapINtNtCs5q0wOX0Zf7d_7dashmap4iter4IterB14_INtNtB18_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EENCNvXs_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB5z_24LanceCatalogProviderListNtB4o_19CatalogProviderList13catalog_names0EEB5B_.exit unwind label %bb.ac, !noalias !41336

bb.aa:                                            ; preds = %_RNCNvXs_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB6_24LanceCatalogProviderListNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog19CatalogProviderList13catalog_names0B8_.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !41362
  %.pre.i.i.i.i.i.i.i.i.pre = load ptr, ptr %.sroa.5.0..sroa_idx74, align 8, !alias.scope !41343, !noalias !41344
  br label %.backedge

bb.ab:                                            ; preds = %bb.r
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !41351
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ac, %bb.r, %bb.q, %.body.i.i.i.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.co, %bb.ac ], [ %eh.lpad-body.i.i.i.i.i.i.i, %bb.r ], [ %eh.lpad-body.i.i.i.i.i.i.i, %bb.q ], [ %eh.lpad-body.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(48) %i.d) #49, !noalias !41336
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXs7_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB6_7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1O_8adapters3map3MapINtNtCs5q0wOX0Zf7d_7dashmap4iter4IterB14_INtNtB18_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EENCNvXs_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB5z_24LanceCatalogProviderListNtB4o_19CatalogProviderList13catalog_names0EEB5B_.exit: ; preds = %bb.e, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !41340
  %.sroa.020.0.copyload = load ptr, ptr %i.d, align 8, !noalias !41379, !nonnull !111, !noundef !111 ; 5 uses
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.421.0.copyload = load i64, ptr %.sroa.421.0..sroa_idx, align 8, !noalias !41379 ; 4 uses
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.623.0.copyload = load i64, ptr %.sroa.623.0..sroa_idx, align 8, !noalias !41379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !41336
  %.val3.i.i.i = load <16 x i8>, ptr %.sroa.020.0.copyload, align 16, !noalias !41380
  %i.cp = icmp eq i64 %.sroa.421.0.copyload, 0
  br i1 %i.cp, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12IntoIterator9into_iterCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvXs7_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB6_7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1O_8adapters3map3MapINtNtCs5q0wOX0Zf7d_7dashmap4iter4IterB14_INtNtB18_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EENCNvXs_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB5z_24LanceCatalogProviderListNtB4o_19CatalogProviderList13catalog_names0EEB5B_.exit
  %i.cq = mul i64 %.sroa.421.0.copyload, 24
  %i.cr = and i64 %i.cq, -16                      ; 2 uses
  %i.cs = add i64 %.sroa.421.0.copyload, 49
  %i.ct = add i64 %i.cs, %i.cr
  %i.cu = sub i64 -32, %i.cr
  %i.cv = getelementptr inbounds i8, ptr %.sroa.020.0.copyload, i64 %i.cu
  br label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12IntoIterator9into_iterCsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12IntoIterator9into_iterCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %_RINvXs7_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB6_7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1O_8adapters3map3MapINtNtCs5q0wOX0Zf7d_7dashmap4iter4IterB14_INtNtB18_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EENCNvXs_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB5z_24LanceCatalogProviderListNtB4o_19CatalogProviderList13catalog_names0EEB5B_.exit, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.511.0.i.i = phi ptr [ undef, %_RINvXs7_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB6_7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1O_8adapters3map3MapINtNtCs5q0wOX0Zf7d_7dashmap4iter4IterB14_INtNtB18_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EENCNvXs_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB5z_24LanceCatalogProviderListNtB4o_19CatalogProviderList13catalog_names0EEB5B_.exit ], [ %i.cv, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %.sroa.410.0.i.i = phi i64 [ undef, %_RINvXs7_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB6_7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1O_8adapters3map3MapINtNtCs5q0wOX0Zf7d_7dashmap4iter4IterB14_INtNtB18_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EENCNvXs_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB5z_24LanceCatalogProviderListNtB4o_19CatalogProviderList13catalog_names0EEB5B_.exit ], [ %i.ct, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %.sink.i.i.i = phi i64 [ 0, %_RINvXs7_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB6_7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1O_8adapters3map3MapINtNtCs5q0wOX0Zf7d_7dashmap4iter4IterB14_INtNtB18_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EENCNvXs_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB5z_24LanceCatalogProviderListNtB4o_19CatalogProviderList13catalog_names0EEB5B_.exit ], [ 16, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload, i64 16
  %i.cx = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.cy = getelementptr i8, ptr %.sroa.020.0.copyload, i64 %.sroa.421.0.copyload
  %i.cz = getelementptr i8, ptr %i.cy, i64 1
  store i64 %.sink.i.i.i, ptr %i.e, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.410.0.i.i, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.511.0.i.i, ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.020.0.copyload, ptr %.sroa.610.0..sroa_idx, align 8
  %.sroa.711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.cw, ptr %.sroa.711.0..sroa_idx, align 8
  %.sroa.812.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.cz, ptr %.sroa.812.0..sroa_idx, align 8
  %.sroa.913.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store <16 x i1> %i.cx, ptr %.sroa.913.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %.sroa.623.0.copyload, ptr %.sroa.11.0..sroa_idx, align 8
  call fastcc void @_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterB11_EE9from_iterCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB4_24LanceCatalogProviderListNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog19CatalogProviderList16register_catalog(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 12 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [16 x i8], align 16               ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41434)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %2, ptr %i.d, align 16, !noalias !41435
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %3, ptr %i.f, align 8, !noalias !41435
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41438)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !41435
  store ptr %i.e, ptr %i.c, align 8, !noalias !41439
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val11.i.i = load ptr, ptr %i.h, align 8, !alias.scope !41440, !noalias !41441, !nonnull !111, !noundef !111 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val12.i.i = load i64, ptr %i.i, align 8, !alias.scope !41440, !noalias !41441, !noundef !111 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !41439
  %.sroa.48.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = load <2 x i64>, ptr %i.g, align 8, !alias.scope !41442, !noalias !41443 ; 3 uses
  %i.k = shufflevector <2 x i64> %i.j, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.l = xor <2 x i64> %i.k, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.l, ptr %i.b, align 16, !alias.scope !41444, !noalias !41439
  %i.m = shufflevector <2 x i64> %i.j, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.n = xor <2 x i64> %i.m, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.n, ptr %.sroa.59.0..sroa_idx.i.i.i.i, align 16, !alias.scope !41444, !noalias !41439
  store <2 x i64> %i.j, ptr %.sroa.711.0..sroa_idx.i.i.i.i, align 16, !alias.scope !41444, !noalias !41439
  %.sroa.913.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !41444, !noalias !41439
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val11.i.i, i64 noundef %.val12.i.i), !noalias !41445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41446
  store i8 -1, ptr %i.a, align 1, !noalias !41446
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !41447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !41446
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.b, align 16, !alias.scope !41448, !noalias !41439
  %.sroa.10.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i.i, align 8, !alias.scope !41448, !noalias !41439
  %.sroa.17.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i.i, align 16, !alias.scope !41448, !noalias !41439 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i.i, align 8, !alias.scope !41448, !noalias !41439
  %i.o = load i64, ptr %.sroa.913.0..sroa_idx.i.i.i.i, align 16, !alias.scope !41448, !noalias !41439, !noundef !111
  %i.p = shl i64 %i.o, 56
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !41448, !noalias !41439, !noundef !111
  %i.s = or i64 %i.p, %i.r                        ; 2 uses
  %i.t = xor i64 %i.s, %.sroa.22.0.copyload.i.i.i.i.i ; 3 uses
  %i.u = add i64 %.sroa.17.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i ; 3 uses
  %i.v = add i64 %i.t, %.sroa.10.0.copyload.i.i.i.i.i ; 2 uses
  %i.w = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i.i.i, i64 %.sroa.17.0.copyload.i.i.i.i.i, i64 13)
  %i.x = xor i64 %i.w, %i.u                       ; 3 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 16)
  %i.z = xor i64 %i.y, %i.v                       ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 32)
  %i.ab = add i64 %i.v, %i.x                      ; 3 uses
  %i.ac = add i64 %i.z, %i.aa                     ; 2 uses
  %i.ad = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 17)
  %i.ae = xor i64 %i.ab, %i.ad                    ; 3 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 21)
  %i.ag = xor i64 %i.af, %i.ac                    ; 3 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 32)
  %i.ai = xor i64 %i.ac, %i.s
  %i.aj = xor i64 %i.ah, 255
  %i.ak = add i64 %i.ai, %i.ae                    ; 3 uses
  %i.al = add i64 %i.ag, %i.aj                    ; 2 uses
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 13)
  %i.an = xor i64 %i.ak, %i.am                    ; 3 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 16)
  %i.ap = xor i64 %i.ao, %i.al                    ; 3 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 32)
  %i.ar = add i64 %i.an, %i.al                    ; 3 uses
  %i.as = add i64 %i.ap, %i.aq                    ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 17)
  %i.au = xor i64 %i.ar, %i.at                    ; 3 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 21)
  %i.aw = xor i64 %i.av, %i.as                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 32)
  %i.ay = add i64 %i.au, %i.as                    ; 3 uses
  %i.az = add i64 %i.aw, %i.ax                    ; 2 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 13)
  %i.bb = xor i64 %i.ba, %i.ay                    ; 3 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 16)
  %i.bd = xor i64 %i.bc, %i.az                    ; 3 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 32)
  %i.bf = add i64 %i.bb, %i.az                    ; 3 uses
  %i.bg = add i64 %i.bd, %i.be                    ; 2 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 17)
  %i.bi = xor i64 %i.bh, %i.bf                    ; 3 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 21)
  %i.bk = xor i64 %i.bj, %i.bg                    ; 3 uses
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 32)
  %i.bm = add i64 %i.bi, %i.bg
  %i.bn = add i64 %i.bk, %i.bl                    ; 2 uses
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 13)
  %i.bp = xor i64 %i.bo, %i.bm                    ; 3 uses
  %i.bq = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 16)
  %i.br = xor i64 %i.bq, %i.bn                    ; 2 uses
  %i.bs = add i64 %i.bp, %i.bn                    ; 3 uses
  %i.bt = tail call noundef i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 17)
  %i.bu = tail call noundef i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 21)
  %i.bv = tail call noundef i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 32)
  %i.bw = xor i64 %i.bu, %i.bt
  %i.bx = xor i64 %i.bw, %i.bv
  %i.by = xor i64 %i.bx, %i.bs                    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !41439
  %i.bz = shl i64 %i.by, 7
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !41442, !noalias !41443, !noundef !111
  %i.cc = and i64 %i.cb, 63
  %i.cd = lshr i64 %i.bz, %i.cc                   ; 2 uses
  %.val13.i.i = load ptr, ptr %i.e, align 8, !alias.scope !41442, !noalias !41443, !nonnull !111, !noundef !111
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val14.i.i = load i64, ptr %i.ce, align 8, !alias.scope !41442, !noalias !41443, !noundef !111
  %i.cf = icmp ult i64 %i.cd, %.val14.i.i
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds nuw [128 x i8], ptr %.val13.i.i, i64 %i.cd ; 10 uses
  %i.ch = cmpxchg weak ptr %i.cg, i64 0, i64 -4 acquire monotonic, align 8, !noalias !41445
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.ch, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %_RNvXs2_Cs5q0wOX0Zf7d_7dashmapINtB5_7DashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE18__yield_write_shardCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, label %bb.d, !prof !116

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock16RwLockWriteGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1w_4util11SharedValueINtNtB30_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.m, %bb.l, %bb.c
  %.pn.i.i = phi { ptr, i32 } [ %i.cj, %bb.c ], [ %i.ec, %bb.m ], [ %i.ec, %bb.l ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41449)
  %.val.i.i.i = load i64, ptr %1, align 8, !alias.scope !41450, !noalias !41441 ; 2 uses
  %i.ci = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ci, label %bb.w, label %bb.b

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock16RwLockWriteGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1w_4util11SharedValueINtNtB30_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !41451
  br label %bb.w

bb.c:                                             ; preds = %bb.d
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock16RwLockWriteGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1w_4util11SharedValueINtNtB30_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.cg)
          to label %_RNvXs2_Cs5q0wOX0Zf7d_7dashmapINtB5_7DashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE18__yield_write_shardCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.c, !noalias !41445

_RNvXs2_Cs5q0wOX0Zf7d_7dashmapINtB5_7DashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE18__yield_write_shardCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.d, %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 24 ; 3 uses
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !41452, !noalias !41453, !noundef !111
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.e, label %_RINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entrys_0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i, !prof !114

bb.e:                                             ; preds = %_RNvXs2_Cs5q0wOX0Zf7d_7dashmapINtB5_7DashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE18__yield_write_shardCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  %i.co = invoke { i64, i64 } @_RINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEE14reserve_rehashNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entrys_0EB2G_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ck, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i1 noundef zeroext true)
          to label %_RINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entrys_0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i unwind label %bb.l, !noalias !41445 ; 0 uses

_RINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entrys_0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i: ; preds = %bb.e, %_RNvXs2_Cs5q0wOX0Zf7d_7dashmapINtB5_7DashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE18__yield_write_shardCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  %.val.i16.i.i = load ptr, ptr %i.ck, align 8, !alias.scope !41454, !noalias !41455, !nonnull !111, !noundef !111 ; 7 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %.val7.i.i.i = load i64, ptr %i.cp, align 8, !alias.scope !41454, !noalias !41455, !noundef !111 ; 4 uses
  %i.cq = lshr i64 %i.by, 57
  %i.cr = trunc nuw nsw i64 %i.cq to i8           ; 3 uses
  %i.cs = insertelement <16 x i8> poison, i8 %i.cr, i64 0
  %i.ct = shufflevector <16 x i8> %i.cs, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

end_hunk_1
