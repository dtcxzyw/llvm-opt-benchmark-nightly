Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_wasm.ty_wasm.e6aa0ec0b7ff7585-cgu.12?download=true
inline.NumInlined: 297
inline.NumDeleted: 146
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fsNtB3_16MemoryFileSystem14write_file_allRNtNtB5_4path13SystemPathBufReECsjNOSlFB5dgD_7ty_wasm:bb.a
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, i64 } %i.h, 1
  %.val13 = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !53
  %i.k = getelementptr inbounds nuw i8, ptr %.val13, i64 40 ; 3 uses
  %i.l = cmpxchg weak ptr %i.k, i32 0, i32 1073741823 acquire monotonic, align 4, !noalias !56
  %i.m = extractvalue { i32, i1 } %i.l, 1
  br i1 %i.m, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB2_6RwLock15write_contended(ptr noundef nonnull align 8 %i.k), !noalias !56
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !56
  %i.o = and i64 %i.n, 9223372036854775807
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryEE5writeCsjNOSlFB5dgD_7ty_wasm.exit.i, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.q = tail call noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path(), !noalias !56
  %i.r = xor i1 %i.q, true
  %i.s = zext i1 %i.r to i8
  br label %_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryEE5writeCsjNOSlFB5dgD_7ty_wasm.exit.i

_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryEE5writeCsjNOSlFB5dgD_7ty_wasm.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.01.0.i.i.i = phi i8 [ %i.s, %bb.e ], [ 0, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %.val13, i64 48
  %i.u = load atomic i8, ptr %i.t monotonic, align 1, !noalias !56
  %i.v = icmp ne i8 %i.u, 0
  call void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryEENCNvMse_B10_BX_3new0ECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i1 noundef zeroext %i.v, i8 noundef %.sroa.01.0.i.i.i, ptr noundef nonnull align 8 %i.k), !noalias !53
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.w = load i64, ptr %i.d, align 8, !range !11, !alias.scope !59, !noalias !62, !noundef !3
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.f, label %bb.k, !prof !14

bb.f:                                             ; preds = %_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryEE5writeCsjNOSlFB5dgD_7ty_wasm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !64
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !59, !noalias !62, !nonnull !3, !align !16, !noundef !3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !range !17, !alias.scope !59, !noalias !62, !noundef !3
  store ptr %i.z, ptr %i.a, align 8, !noalias !64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ab, ptr %i.ac, align 8, !noalias !64
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @27, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #29
          to label %bb.h unwind label %bb.g, !noalias !65

bb.g:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison11PoisonErrorINtNtBE_6rwlock16RwLockWriteGuardINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryEEEECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #27
          to label %common.resume.i unwind label %bb.i, !noalias !65

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !65
  unreachable

common.resume.i:                                  ; preds = %.body.i, %bb.g
  %common.resume.op.i = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %.pn.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

.body.i:                                          ; preds = %bb.n, %bb.l, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.as, %bb.l ], [ %i.af, %bb.j ], [ %i.at, %bb.n ]
  %.val7.i = load ptr, ptr %i.e, align 8, !noalias !53, !nonnull !3, !align !16, !noundef !3
  %.val8.i = load i8, ptr %i.ak, align 8, !range !17, !noalias !53, !noundef !3
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryEEECsjNOSlFB5dgD_7ty_wasm(ptr nonnull %.val7.i, i8 %.val8.i) #27
          to label %common.resume.i unwind label %bb.t

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsjNOSlFB5dgD_7ty_wasm.exit.i.i, %bb.k
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.k:                                             ; preds = %_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryEE5writeCsjNOSlFB5dgD_7ty_wasm.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !59, !noalias !62, !nonnull !3, !align !16, !noundef !3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aj = load i8, ptr %i.ai, align 8, !range !17, !alias.scope !59, !noalias !62, !noundef !3
  store ptr %i.ah, ptr %i.e, align 8, !noalias !53
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store i8 %i.aj, ptr %i.ak, align 8, !noalias !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !53
  %i.al = getelementptr inbounds nuw i8, ptr %.val13, i64 24
  %.val.i.i.i = load ptr, ptr %i.al, align 8, !alias.scope !66, !noalias !69, !nonnull !3, !noundef !3
  %i.am = getelementptr inbounds nuw i8, ptr %.val13, i64 32
  %.val1.i.i.i = load i64, ptr %i.am, align 8, !alias.scope !66, !noalias !69, !noundef !3
  invoke void @_RNvNvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB4_10SystemPath8absolute8absolute(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val1.i.i.i)
          to label %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath8absoluteRBF_RNtB3_13SystemPathBufECsjNOSlFB5dgD_7ty_wasm.exit.i unwind label %bb.j

_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath8absoluteRBF_RNtB3_13SystemPathBufECsjNOSlFB5dgD_7ty_wasm.exit.i: ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !53
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !53, !nonnull !3, !noundef !3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !53, !noundef !3
  %i.ar = invoke noundef ptr @_RNvNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs14create_dir_all(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef %i.aq)
          to label %bb.m unwind label %bb.l       ; 2 uses

bb.l:                                             ; preds = %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath8absoluteRBF_RNtB3_13SystemPathBufECsjNOSlFB5dgD_7ty_wasm.exit.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef align 8 dereferenceable(24) %i.c) #27
          to label %.body.i unwind label %bb.t

bb.m:                                             ; preds = %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath8absoluteRBF_RNtB3_13SystemPathBufECsjNOSlFB5dgD_7ty_wasm.exit.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsjNOSlFB5dgD_7ty_wasm.exit.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsjNOSlFB5dgD_7ty_wasm.exit.i.i: ; preds = %bb.m
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECsjNOSlFB5dgD_7ty_wasm.exit.i unwind label %bb.j

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECsjNOSlFB5dgD_7ty_wasm.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsjNOSlFB5dgD_7ty_wasm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !53
  %.val5.i = load ptr, ptr %i.e, align 8, !noalias !53, !nonnull !3, !align !16, !noundef !3 ; 3 uses
  %.val6.i = load i8, ptr %i.ak, align 8, !range !17, !noalias !53, !noundef !3
  %i.av = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.aw = trunc nuw i8 %.val6.i to i1
  br i1 %i.aw, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECsjNOSlFB5dgD_7ty_wasm.exit.i
  %i.ax = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !53
  %i.ay = and i64 %i.ax, 9223372036854775807
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.q, !prof !7

bb.q:                                             ; preds = %bb.p
  %i.ba = call noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.ba, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store atomic i8 1, ptr %i.av monotonic, align 8
  br label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.r, %bb.q, %bb.p, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECsjNOSlFB5dgD_7ty_wasm.exit.i
  %i.bb = atomicrmw sub ptr %.val5.i, i32 1073741823 release, align 4
  %i.bc = add i32 %i.bb, -1073741823              ; 2 uses
  %or.cond.i.i.i = icmp ult i32 %i.bc, 1073741824
  br i1 %or.cond.i.i.i, label %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fsNtB3_16MemoryFileSystem20create_directory_allRNtNtB5_4path10SystemPathECsjNOSlFB5dgD_7ty_wasm.exit, label %bb.s, !prof !25

bb.s:                                             ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %.val5.i, i32 noundef %i.bc)
  br label %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fsNtB3_16MemoryFileSystem20create_directory_allRNtNtB5_4path10SystemPathECsjNOSlFB5dgD_7ty_wasm.exit

bb.t:                                             ; preds = %bb.l, %.body.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fsNtB3_16MemoryFileSystem20create_directory_allRNtNtB5_4path10SystemPathECsjNOSlFB5dgD_7ty_wasm.exit: ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !53
  %.not12 = icmp eq ptr %i.ar, null
  br i1 %.not12, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fsNtB3_16MemoryFileSystem20create_directory_allRNtNtB5_4path10SystemPathECsjNOSlFB5dgD_7ty_wasm.exit, %bb.a
  %i.be = call noundef ptr @_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fsNtB3_16MemoryFileSystem10write_fileRNtNtB5_4path10SystemPathReECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  br label %bb.v

bb.v:                                             ; preds = %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fsNtB3_16MemoryFileSystem20create_directory_allRNtNtB5_4path10SystemPathECsjNOSlFB5dgD_7ty_wasm.exit, %bb.u
  %.sroa.0.0 = phi ptr [ %i.be, %bb.u ], [ %i.ar, %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fsNtB3_16MemoryFileSystem20create_directory_allRNtNtB5_4path10SystemPathECsjNOSlFB5dgD_7ty_wasm.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fsNtB3_16MemoryFileSystem22with_current_directoryRNtNtB5_4path10SystemPathECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [128 x i8], align 8               ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 6 uses
  %i.j = alloca [40 x i8], align 8                ; 7 uses
  %i.k = alloca [112 x i8], align 8               ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB2_10SystemPath11to_path_buf(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !3, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noundef !3
  %i.r = invoke { ptr, i64 } @_RINvMs4_CshFWUtO0bu8g_6caminoNtB6_8Utf8Path3neweECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 1)
          to label %.noexc unwind label %bb.b     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.s = extractvalue { ptr, i64 } %i.r, 0
  %i.t = extractvalue { ptr, i64 } %i.r, 1
  %i.u = invoke noundef zeroext i1 @_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path11starts_withRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPathECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.t)
          to label %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath11starts_withReECsjNOSlFB5dgD_7ty_wasm.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.aj, %.body20
  %common.resume.op = phi { ptr, i32 } [ %.pn, %.body20 ], [ %i.ci, %bb.aj ]
  resume { ptr, i32 } %common.resume.op

.body20:                                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3map7HashMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path20SystemVirtualPathBufNtNtB2c_9memory_fs4FileNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEECsjNOSlFB5dgD_7ty_wasm.exit, %.body, %bb.ad, %bb.i, %bb.b
  %.pn = phi { ptr, i32 } [ %i.af, %bb.i ], [ %eh.lpad-body, %.body ], [ %i.v, %bb.b ], [ %eh.lpad-body, %bb.ad ], [ %i.y, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3map7HashMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path20SystemVirtualPathBufNtNtB2c_9memory_fs4FileNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEECsjNOSlFB5dgD_7ty_wasm.exit ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef align 8 dereferenceable(24) %i.m) #27
          to label %common.resume unwind label %bb.al

bb.b:                                             ; preds = %.noexc, %bb.a, %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body20

_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath11starts_withReECsjNOSlFB5dgD_7ty_wasm.exit: ; preds = %.noexc
  br i1 %i.u, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath11starts_withReECsjNOSlFB5dgD_7ty_wasm.exit
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 111 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #29
          to label %bb.e unwind label %bb.b

bb.d:                                             ; preds = %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath11starts_withReECsjNOSlFB5dgD_7ty_wasm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8
  %2 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i8 0, ptr %2, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store ptr null, ptr %i.w, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 0, ptr %.sroa.510.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i8 0, ptr %i.x, align 8
  %3 = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) @8, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path20SystemVirtualPathBufNtNtBT_9memory_fs4FileEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull align 8 dereferenceable(32) %3)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3map7HashMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path20SystemVirtualPathBufNtNtB2c_9memory_fs4FileNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEECsjNOSlFB5dgD_7ty_wasm.exit unwind label %bb.al

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 1, ptr %i.g, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ac, ptr noundef nonnull align 8 dereferenceable(112) %i.k, i64 112, i1 false)
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !72
  %i.ad = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef 8) #30, !noalias !72 ; 7 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.h, label %bb.k, !prof !14

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #29
          to label %.noexc26 unwind label %bb.i

.noexc26:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs21MemoryFileSystemInnerEECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.g) #27
          to label %.body20 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ad, ptr noundef nonnull align 8 dereferenceable(128) %i.g, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store ptr %i.ad, ptr %i.l, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !75
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 40 ; 3 uses
  %i.ai = cmpxchg weak ptr %i.ah, i32 0, i32 1073741823 acquire monotonic, align 4, !noalias !78
  %i.aj = extractvalue { i32, i1 } %i.ai, 1
  br i1 %i.aj, label %.noexc27, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB2_6RwLock15write_contended(ptr noundef nonnull align 8 %i.ah)
          to label %.noexc27 unwind label %bb.ac

.noexc27:                                         ; preds = %bb.l, %bb.k
  %i.ak = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !78
  %i.al = and i64 %i.ak, 9223372036854775807
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryEE5writeCsjNOSlFB5dgD_7ty_wasm.exit.i, label %bb.m, !prof !7

bb.m:                                             ; preds = %.noexc27
  %i.an = invoke noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc28 unwind label %bb.ac

.noexc28:                                         ; preds = %bb.m
  %i.ao = xor i1 %i.an, true
  %i.ap = zext i1 %i.ao to i8
  br label %_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryEE5writeCsjNOSlFB5dgD_7ty_wasm.exit.i

_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryEE5writeCsjNOSlFB5dgD_7ty_wasm.exit.i: ; preds = %.noexc28, %.noexc27
  %.sroa.01.0.i.i.i = phi i8 [ %i.ap, %.noexc28 ], [ 0, %.noexc27 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.ar = load atomic i8, ptr %i.aq monotonic, align 8, !noalias !78
  %i.as = icmp ne i8 %i.ar, 0
  invoke void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryEENCNvMse_B10_BX_3new0ECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i1 noundef zeroext %i.as, i8 noundef %.sroa.01.0.i.i.i, ptr noundef nonnull align 8 %i.ah)
          to label %.noexc29 unwind label %bb.ac

.noexc29:                                         ; preds = %_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryEE5writeCsjNOSlFB5dgD_7ty_wasm.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.at = load i64, ptr %i.d, align 8, !range !11, !alias.scope !81, !noalias !84, !noundef !3
  %i.au = trunc nuw i64 %i.at to i1
  br i1 %i.au, label %bb.n, label %bb.s, !prof !14

bb.n:                                             ; preds = %.noexc29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !86
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !81, !noalias !84, !nonnull !3, !align !16, !noundef !3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ay = load i8, ptr %i.ax, align 8, !range !17, !alias.scope !81, !noalias !84, !noundef !3
  store ptr %i.aw, ptr %i.a, align 8, !noalias !86
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ay, ptr %i.az, align 8, !noalias !86
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @27, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #29
          to label %bb.p unwind label %bb.o, !noalias !87

bb.o:                                             ; preds = %bb.n
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison11PoisonErrorINtNtBE_6rwlock16RwLockWriteGuardINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryEEEECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #27
          to label %.body unwind label %bb.q, !noalias !87

bb.p:                                             ; preds = %bb.n
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !87
  unreachable

.body.i:                                          ; preds = %bb.v, %bb.t, %bb.r
  %.pn.i = phi { ptr, i32 } [ %i.bp, %bb.t ], [ %i.bc, %bb.r ], [ %i.bq, %bb.v ]
  %.val5.i = load ptr, ptr %i.e, align 8, !noalias !75, !nonnull !3, !align !16, !noundef !3
  %.val6.i = load i8, ptr %i.bh, align 8, !range !17, !noalias !75, !noundef !3
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryEEECsjNOSlFB5dgD_7ty_wasm(ptr nonnull %.val5.i, i8 %.val6.i) #27
          to label %.body unwind label %bb.ab, !noalias !75

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsjNOSlFB5dgD_7ty_wasm.exit.i.i, %bb.s
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.s:                                             ; preds = %.noexc29
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !81, !noalias !84, !nonnull !3, !align !16, !noundef !3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bg = load i8, ptr %i.bf, align 8, !range !17, !alias.scope !81, !noalias !84, !noundef !3
  store ptr %i.be, ptr %i.e, align 8, !noalias !75
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store i8 %i.bg, ptr %i.bh, align 8, !noalias !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !75
  %.val.i.i = load ptr, ptr %i.n, align 8, !alias.scope !75, !nonnull !3, !noundef !3
  %.val1.i.i = load i64, ptr %i.p, align 8, !alias.scope !75, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !75
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.val.i.i.i = load ptr, ptr %i.bi, align 8, !alias.scope !88, !noalias !91, !nonnull !3, !noundef !3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.val1.i.i.i = load i64, ptr %i.bj, align 8, !alias.scope !88, !noalias !91, !noundef !3
  invoke void @_RNvNvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB4_10SystemPath8absolute8absolute(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val1.i.i.i)
          to label %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath8absoluteRBF_RNtB3_13SystemPathBufECsjNOSlFB5dgD_7ty_wasm.exit.i unwind label %bb.r, !noalias !75

_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath8absoluteRBF_RNtB3_13SystemPathBufECsjNOSlFB5dgD_7ty_wasm.exit.i: ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !75
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !75, !nonnull !3, !noundef !3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !75, !noundef !3
  %i.bo = invoke noundef ptr @_RNvNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs14create_dir_all(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef %i.bn)
          to label %bb.u unwind label %bb.t, !noalias !75 ; 2 uses

bb.t:                                             ; preds = %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath8absoluteRBF_RNtB3_13SystemPathBufECsjNOSlFB5dgD_7ty_wasm.exit.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef align 8 dereferenceable(24) %i.c) #27
          to label %.body.i unwind label %bb.ab, !noalias !75

bb.u:                                             ; preds = %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath8absoluteRBF_RNtB3_13SystemPathBufECsjNOSlFB5dgD_7ty_wasm.exit.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsjNOSlFB5dgD_7ty_wasm.exit.i.i unwind label %bb.v, !noalias !75

bb.v:                                             ; preds = %bb.u
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i unwind label %bb.w, !noalias !75

bb.w:                                             ; preds = %bb.v
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !75
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsjNOSlFB5dgD_7ty_wasm.exit.i.i: ; preds = %bb.u
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECsjNOSlFB5dgD_7ty_wasm.exit.i unwind label %bb.r, !noalias !75

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECsjNOSlFB5dgD_7ty_wasm.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsjNOSlFB5dgD_7ty_wasm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !75
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !75, !nonnull !3, !align !16, !noundef !3 ; 3 uses
  %.val4.i = load i8, ptr %i.bh, align 8, !range !17, !noalias !75, !noundef !3
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.bt = trunc nuw i8 %.val4.i to i1
  br i1 %i.bt, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.x

bb.x:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECsjNOSlFB5dgD_7ty_wasm.exit.i
  %i.bu = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !75
  %i.bv = and i64 %i.bu, 9223372036854775807
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.y, !prof !7

bb.y:                                             ; preds = %bb.x
  %i.bx = invoke noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc32 unwind label %bb.ac

end_hunk_0
