Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_db-92c62a723a4254ca.ruff_db.3b660a75166acdec-cgu.09?download=true
inline.NumInlined: 1177
inline.NumDeleted: 537
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fsNtB2_16MemoryFileSystem13is_executable:bb.a
  invoke void @_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1h_14LeafOrInternalE11search_treeB1z_EB2f_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %.val8.i, i64 noundef %.val9.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %.noexc.i unwind label %bb.m, !noalias !830

.noexc.i:                                         ; preds = %bb.k
  %i.y = load i64, ptr %i.a, align 8, !range !27, !noalias !844, !noundef !15
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %.noexc.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = invoke { ptr, ptr } @_RNvMsP_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1l_14LeafOrInternalENtB1l_2KVE7into_kvB2j_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aa)
          to label %bb.n unwind label %bb.m, !noalias !830

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(24) %i.d) #31
          to label %.body.i unwind label %bb.s, !noalias !830

.thread.i:                                        ; preds = %.noexc.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !833
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.ad = extractvalue { ptr, ptr } %i.ab, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !833
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !830, !noundef !15
  %i.af = icmp ne ptr %i.ae, null
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.thread.i
  %.sroa.0.0.i = phi i1 [ %i.af, %bb.o ], [ false, %bb.n ], [ false, %.thread.i ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs56aZGHL6Dc6_7ruff_db.exit.i.i unwind label %bb.q, !noalias !830

bb.q:                                             ; preds = %bb.p
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.r, !noalias !830

bb.r:                                             ; preds = %bb.q
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !830
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs56aZGHL6Dc6_7ruff_db.exit.i.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fsNtB3_16MemoryFileSystem7is_fileRNtNtB5_4path10SystemPathEB7_.exit unwind label %bb.h, !noalias !830

bb.s:                                             ; preds = %bb.m, %.body.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !830
  unreachable

_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fsNtB3_16MemoryFileSystem7is_fileRNtNtB5_4path10SystemPathEB7_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs56aZGHL6Dc6_7ruff_db.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !833
  call void @_RNvXsh_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB2N_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f), !noalias !830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !833
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fsNtB2_16MemoryFileSystem19virtual_path_exists(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 4 uses
  %i.g = load atomic i32, ptr %i.f monotonic, align 4 ; 3 uses
  %or.cond3.i = icmp ult i32 %i.g, 1073741822
  br i1 %or.cond3.i, label %bb.b, label %bb.c, !prof !836

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw nsw i32 %i.g, 1
  %i.i = cmpxchg weak ptr %i.f, i32 %i.g, i32 %i.h acquire monotonic, align 4
  %i.j = extractvalue { i32, i1 } %i.i, 1
  br i1 %i.j, label %_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit, label %bb.c, !prof !98

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr noundef nonnull align 4 %i.f)
  br label %_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit

_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit: ; preds = %bb.b, %bb.c
  call void @_RNvMsd_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtNtBb_11collections4hash3map7HashMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path20SystemVirtualPathBufNtNtB1T_9memory_fs4FileNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE3newB1V_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !847)
  %i.k = load i64, ptr %i.c, align 8, !range !27, !alias.scope !847, !noalias !850, !noundef !15
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %bb.d, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBQ_11collections4hash3map7HashMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path20SystemVirtualPathBufNtNtB2s_9memory_fs4FileNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEINtBM_11PoisonErrorBH_EE6unwrapB2u_.exit, !prof !16

bb.d:                                             ; preds = %_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !852
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !alias.scope !847, !noalias !850
  store <2 x ptr> %i.n, ptr %i.a, align 16, !noalias !852
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #30
          to label %bb.f unwind label %bb.e, !noalias !847

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsh_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtNtBb_11collections4hash3map7HashMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path20SystemVirtualPathBufNtNtB1T_9memory_fs4FileNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1V_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %common.resume unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !847
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.e ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBQ_11collections4hash3map7HashMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path20SystemVirtualPathBufNtNtB2s_9memory_fs4FileNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEINtBM_11PoisonErrorBH_EE6unwrapB2u_.exit: ; preds = %_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.r = load <2 x ptr>, ptr %i.q, align 8, !alias.scope !847, !noalias !850
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !847, !noalias !850, !nonnull !15, !noundef !15
  store <2 x ptr> %i.r, ptr %i.d, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMss_NtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB5_17SystemVirtualPath11to_path_buf(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.i unwind label %bb.h

.body:                                            ; preds = %bb.l, %bb.h, %bb.j
  %.pn = phi { ptr, i32 } [ %i.v, %bb.j ], [ %i.t, %bb.h ], [ %i.w, %bb.l ]
  invoke void @_RNvXsh_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtNtBb_11collections4hash3map7HashMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path20SystemVirtualPathBufNtNtB1T_9memory_fs4FileNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1V_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %common.resume unwind label %bb.n

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db.exit.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBQ_11collections4hash3map7HashMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path20SystemVirtualPathBufNtNtB2s_9memory_fs4FileNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEINtBM_11PoisonErrorBH_EE6unwrapB2u_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBQ_11collections4hash3map7HashMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path20SystemVirtualPathBufNtNtB2s_9memory_fs4FileNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEINtBM_11PoisonErrorBH_EE6unwrapB2u_.exit
  %i.u = invoke noundef zeroext i1 @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path20SystemVirtualPathBufNtNtBS_9memory_fs4FileNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE12contains_keyBO_EBU_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path20SystemVirtualPathBufEBH_(ptr noalias noundef align 8 dereferenceable(24) %i.b) #31
          to label %.body unwind label %bb.n

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db.exit.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path20SystemVirtualPathBufEBH_.exit unwind label %bb.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path20SystemVirtualPathBufEBH_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXsh_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtNtBb_11collections4hash3map7HashMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path20SystemVirtualPathBufNtNtB1T_9memory_fs4FileNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1V_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %i.u

bb.n:                                             ; preds = %.body, %bb.j
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fsNtB2_16MemoryFileSystem3new() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [128 x i8], align 8               ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 6 uses
  %i.j = alloca [112 x i8], align 8               ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.m = tail call { ptr, i64 } @_RINvMs4_CshFWUtO0bu8g_6caminoNtB6_8Utf8Path3neweECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 1) ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 0
  %i.o = extractvalue { ptr, i64 } %i.m, 1
  call void @_RNvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB2_10SystemPath11to_path_buf(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !15, !noundef !15
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !noundef !15
  %i.t = invoke { ptr, i64 } @_RINvMs4_CshFWUtO0bu8g_6caminoNtB6_8Utf8Path3neweECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 1)
          to label %.noexc.i unwind label %bb.b   ; 2 uses

.noexc.i:                                         ; preds = %bb.a
  %i.u = extractvalue { ptr, i64 } %i.t, 0
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  %i.w = invoke noundef zeroext i1 @_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path11starts_withRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPathEB10_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef %i.v)
          to label %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath11starts_withReEB7_.exit.i unwind label %bb.b

common.resume.i:                                  ; preds = %bb.ag, %.body20.i
  %common.resume.op.i = phi { ptr, i32 } [ %.pn.i, %.body20.i ], [ %i.bq, %bb.ag ]
  resume { ptr, i32 } %common.resume.op.i

.body20.i:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3map7HashMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path20SystemVirtualPathBufNtNtB2c_9memory_fs4FileNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEEB2e_.exit.i, %bb.aa, %.body.i, %bb.i, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.ah, %bb.i ], [ %eh.lpad-body.i, %.body.i ], [ %i.x, %bb.b ], [ %eh.lpad-body.i, %bb.aa ], [ %i.aa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3map7HashMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path20SystemVirtualPathBufNtNtB2c_9memory_fs4FileNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEEB2e_.exit.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEBH_(ptr noalias noundef align 8 dereferenceable(24) %i.l) #31
          to label %common.resume.i unwind label %bb.ai

bb.b:                                             ; preds = %bb.c, %.noexc.i, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body20.i

_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath11starts_withReEB7_.exit.i: ; preds = %.noexc.i
  br i1 %i.w, label %bb.d, label %bb.c, !prof !98

bb.c:                                             ; preds = %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath11starts_withReEB7_.exit.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @14, ptr noundef nonnull inttoptr (i64 111 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #30
          to label %bb.e unwind label %bb.b

bb.d:                                             ; preds = %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath11starts_withReEB7_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store ptr null, ptr %i.y, align 8
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 0, ptr %.sroa.510.0..sroa_idx.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.i, i8 0, i64 9, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.h, i8 0, i64 9, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) @17, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path20SystemVirtualPathBufNtNtBT_9memory_fs4FileEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3map7HashMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path20SystemVirtualPathBufNtNtB2c_9memory_fs4FileNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEEB2e_.exit.i unwind label %bb.ai

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ae, ptr noundef nonnull align 8 dereferenceable(112) %i.j, i64 112, i1 false)
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !853
  %i.af = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 129) 128, i64 noundef range(i64 1, 9) 8) #33, !noalias !853 ; 6 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.h, label %bb.k, !prof !856

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #30
          to label %.noexc26.i unwind label %bb.i

.noexc26.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs21MemoryFileSystemInnerEEB1j_(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.f) #31
          to label %.body20.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.af, ptr noundef nonnull align 8 dereferenceable(128) %i.f, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store ptr %i.af, ptr %i.k, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !857)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !857
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 40 ; 4 uses
  %i.al = cmpxchg weak ptr %i.ak, i32 0, i32 1073741823 acquire monotonic, align 4, !noalias !860
  %i.am = extractvalue { i32, i1 } %i.al, 1
  br i1 %i.am, label %.noexc28.i, label %bb.l, !prof !98

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB2_6RwLock15write_contended(ptr noundef nonnull align 8 %i.ak)
          to label %.noexc28.i unwind label %bb.z

.noexc28.i:                                       ; preds = %bb.l, %bb.k
  %i.an = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !860
  %i.ao = and i64 %i.an, 9223372036854775807
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryEE5writeB2D_.exit.i.i, label %bb.m, !prof !98

bb.m:                                             ; preds = %.noexc28.i
  %i.aq = invoke noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc29.i unwind label %bb.z

.noexc29.i:                                       ; preds = %bb.m
  %i.ar = xor i1 %i.aq, true
  %i.as = zext i1 %i.ar to i8
  br label %_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryEE5writeB2D_.exit.i.i

_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryEE5writeB2D_.exit.i.i: ; preds = %.noexc29.i, %.noexc28.i
  %.sroa.01.0.i.i.i.i = phi i8 [ %i.as, %.noexc29.i ], [ 0, %.noexc28.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.au = load atomic i8, ptr %i.at monotonic, align 8, !noalias !860
  %.not.i27.i = icmp eq i8 %i.au, 0
  br i1 %.not.i27.i, label %bb.s, label %bb.n, !prof !98

bb.n:                                             ; preds = %_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryEE5writeB2D_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !863
  store ptr %i.ak, ptr %i.a, align 8, !noalias !863
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i.i.i, ptr %i.av, align 8, !noalias !863
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #30
          to label %bb.p unwind label %bb.o, !noalias !867

bb.o:                                             ; preds = %bb.n
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsi_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB2O_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.body.i unwind label %bb.q, !noalias !857

bb.p:                                             ; preds = %bb.n
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !867
  unreachable

.body.i.i:                                        ; preds = %bb.w, %bb.u, %bb.r
  %.pn.i.i = phi { ptr, i32 } [ %i.bf, %bb.u ], [ %i.ay, %bb.r ], [ %i.bg, %bb.w ]
  invoke void @_RNvXsi_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB2O_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.body.i unwind label %bb.y, !noalias !857

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs56aZGHL6Dc6_7ruff_db.exit.i.i.i, %bb.s
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.s:                                             ; preds = %_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryEE5writeB2D_.exit.i.i
  store ptr %i.ak, ptr %i.d, align 8, !noalias !857
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %.sroa.01.0.i.i.i.i, ptr %i.az, align 8, !noalias !857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !857
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !857, !nonnull !15, !noundef !15
  %.val1.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !857, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !857
  invoke void @_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath8absoluteRBF_RNtB3_13SystemPathBufEB7_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj)
          to label %bb.t unwind label %bb.r, !noalias !857

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !857
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !857, !nonnull !15, !noundef !15
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !857, !noundef !15
  %i.be = invoke noundef ptr @_RNvNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs14create_dir_all(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef %i.bd)
          to label %bb.v unwind label %bb.u, !noalias !857 ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(24) %i.c) #31
          to label %.body.i.i unwind label %bb.y, !noalias !857

bb.v:                                             ; preds = %bb.t
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs56aZGHL6Dc6_7ruff_db.exit.i.i.i unwind label %bb.w, !noalias !857

bb.w:                                             ; preds = %bb.v
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i.i unwind label %bb.x, !noalias !857

bb.x:                                             ; preds = %bb.w
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !857
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs56aZGHL6Dc6_7ruff_db.exit.i.i.i: ; preds = %bb.v
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs56aZGHL6Dc6_7ruff_db.exit.i.i unwind label %bb.r, !noalias !857

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs56aZGHL6Dc6_7ruff_db.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs56aZGHL6Dc6_7ruff_db.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !857
  invoke void @_RNvXsi_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB2O_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %bb.ab unwind label %bb.z

bb.y:                                             ; preds = %bb.u, %.body.i.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !857
  unreachable

bb.z:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs56aZGHL6Dc6_7ruff_db.exit.i.i, %bb.m, %bb.l
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ad, %bb.z, %.body.i.i, %bb.o
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn.i.i, %.body.i.i ], [ %i.bj, %bb.z ], [ %i.aw, %bb.o ], [ %i.bn, %bb.ad ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !868)
  call void @llvm.experimental.noalias.scope.decl(metadata !871)
  call void @llvm.experimental.noalias.scope.decl(metadata !874)
  %i.bk = load ptr, ptr %i.k, align 8, !alias.scope !877, !nonnull !15, !noundef !15
  %i.bl = atomicrmw sub ptr %i.bk, i64 1 release, align 8, !noalias !877
  %i.bm = icmp eq i64 %i.bl, 1
  br i1 %i.bm, label %bb.aa, label %.body20.i

bb.aa:                                            ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs21MemoryFileSystemInnerE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %.body20.i unwind label %bb.ai

bb.ab:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs56aZGHL6Dc6_7ruff_db.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !857
  %.not.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE6unwrapCs56aZGHL6Dc6_7ruff_db.exit.i, label %bb.ac, !prof !98

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.be, ptr %i.e, align 8
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #30
end_hunk_0
