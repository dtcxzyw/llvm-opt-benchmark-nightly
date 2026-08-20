inline.NumInlined: 2048
inline.NumDeleted: 828
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtB2_24PythonCredentialProvider16stable_cache_key:bb.a
  store ptr %.sroa.5.8.copyload1.i.i.i, ptr %i.s, align 8, !dbg !22210, !alias.scope !22153
  store i64 1, ptr %i.h, align 8, !dbg !22210, !alias.scope !22153
  br label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtBV_24PythonCredentialProvider16stable_cache_keys_0INtNtCscgRAwXFJnXP_4core6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtNtB7_3err5PyErrEEB11_.exit, !dbg !22219

bb.h:                                             ; preds = %.noexc.i
  tail call void @_Py_DecRef(ptr noundef nonnull %i.l) #39, !dbg !22215, !noalias !22175
  invoke void @_RNvXs0_NtNtNtCsbm5zPlkZccl_4pyo311conversions3std3vecINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtNtBb_10conversion12FromPyObject7extractCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.h, ptr noundef nonnull %i.m)
          to label %bb.j unwind label %bb.i, !dbg !22220

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECslpwjCj2YNBy_9polars_io(ptr nonnull %i.m) #37
          to label %.body.i unwind label %bb.m, !dbg !22229, !noalias !22230

bb.j:                                             ; preds = %bb.h
  %i.u = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL), !dbg !22233
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !dbg !22241, !noalias !22230, !noundef !13
  %i.v = icmp sgt i64 %.val.i.i.i.i.i.i.i, 0, !dbg !22242
  br i1 %i.v, label %bb.l, label %bb.k, !dbg !22244, !prof !1829

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %i.m)
          to label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtBV_24PythonCredentialProvider16stable_cache_keys_0INtNtCscgRAwXFJnXP_4core6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtNtB7_3err5PyErrEEB11_.exit unwind label %bb.n, !dbg !22246, !noalias !22129

bb.l:                                             ; preds = %bb.j
  call void @_Py_DecRef(ptr noundef nonnull %i.m) #39, !dbg !22247, !noalias !22230
  br label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtBV_24PythonCredentialProvider16stable_cache_keys_0INtNtCscgRAwXFJnXP_4core6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtNtB7_3err5PyErrEEB11_.exit, !dbg !22249

bb.m:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !22250, !noalias !22230
  unreachable, !dbg !22250

bb.n:                                             ; preds = %bb.k, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !22251

.body.i:                                          ; preds = %bb.n, %bb.i, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.x, %bb.n ], [ %i.r, %bb.f ], [ %i.t, %bb.i ]
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.g)
          to label %common.resume unwind label %bb.o, !dbg !22252, !noalias !22129

bb.o:                                             ; preds = %.body.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !22254, !noalias !22129
  unreachable, !dbg !22254

common.resume:                                    ; preds = %bb.q, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.ac, %bb.q ]
  resume { ptr, i32 } %common.resume.op, !dbg !22255

_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtBV_24PythonCredentialProvider16stable_cache_keys_0INtNtCscgRAwXFJnXP_4core6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtNtB7_3err5PyErrEEB11_.exit: ; preds = %bb.g, %bb.k, %bb.l
  call void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.g), !dbg !22256, !noalias !22129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !22251, !noalias !22129
  %i.z = load i64, ptr %i.h, align 8, !dbg !22258, !range !494, !noundef !13
  %i.aa = trunc nuw i64 %i.z to i1, !dbg !22261
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !22262 ; 2 uses
  br i1 %i.aa, label %bb.p, label %bb.s, !dbg !22261

bb.p:                                             ; preds = %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtBV_24PythonCredentialProvider16stable_cache_keys_0INtNtCscgRAwXFJnXP_4core6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtNtB7_3err5PyErrEEB11_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.ab, i64 64, i1 false), !dbg !22263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22264, !noalias !22270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !22264, !noalias !22274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22278, !noalias !22274
  store ptr %i.d, ptr %i.a, align 8, !dbg !22278, !noalias !22274
  %.sroa.42.0..sroa_idx.i.i1 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !22278
  store ptr @_RNvXs1_NtCsbm5zPlkZccl_4pyo33errNtB5_5PyErrNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i1, align 8, !dbg !22278, !noalias !22274
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @139, ptr noundef nonnull %i.a)
          to label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslpwjCj2YNBy_9polars_io.exit.i.i unwind label %bb.q, !dbg !22281, !noalias !22287

bb.q:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslpwjCj2YNBy_9polars_io.exit.i.i, %bb.p
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d) #37
          to label %common.resume unwind label %bb.r, !dbg !22288, !noalias !22287

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslpwjCj2YNBy_9polars_io.exit.i.i: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22264, !noalias !22274
  invoke void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @140)
          to label %_RNvYNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtB7_24PythonCredentialProvider16stable_cache_key0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTNtNtCsbm5zPlkZccl_4pyo33err5PyErrEE9call_onceBd_.exit unwind label %bb.q, !dbg !22289, !noalias !22287

bb.r:                                             ; preds = %bb.q
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !22293, !noalias !22287
  unreachable, !dbg !22293

_RNvYNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtB7_24PythonCredentialProvider16stable_cache_key0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTNtNtCsbm5zPlkZccl_4pyo33err5PyErrEE9call_onceBd_.exit: ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslpwjCj2YNBy_9polars_io.exit.i.i
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !22264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22264, !noalias !22274
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d), !dbg !22288, !noalias !22287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22295, !noalias !22270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !22296
  br label %bb.t, !dbg !22297

bb.s:                                             ; preds = %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtBV_24PythonCredentialProvider16stable_cache_keys_0INtNtCscgRAwXFJnXP_4core6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtNtB7_3err5PyErrEEB11_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !dbg !22300
  br label %bb.t, !dbg !22301

bb.t:                                             ; preds = %bb.s, %_RNvYNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtB7_24PythonCredentialProvider16stable_cache_key0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTNtNtCsbm5zPlkZccl_4pyo33err5PyErrEE9call_onceBd_.exit
  %storemerge = phi i64 [ 18, %bb.s ], [ 2, %_RNvYNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtB7_24PythonCredentialProvider16stable_cache_key0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTNtNtCsbm5zPlkZccl_4pyo33err5PyErrEE9call_onceBd_.exit ], !dbg !22262
  store i64 %storemerge, ptr %0, align 8, !dbg !22262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !22302
  ret void, !dbg !22303
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtB2_24PythonCredentialProvider20try_into_initialized(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, i64 noundef range(i64 0, 2) %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22304 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [4 x i8], align 4                 ; 5 uses
  %.sroa.12 = alloca [56 x i8], align 8           ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 10 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  store i64 %1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 7 uses
  store ptr %2, ptr %i.h, align 8
  %i.i = trunc nuw i64 %1 to i1, !dbg !22305
  br i1 %i.i, label %bb.b, label %bb.c, !dbg !22305

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22306
  store i64 1, ptr %i.j, align 8, !dbg !22306
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22306
  store ptr %2, ptr %i.k, align 8, !dbg !22306
  store i64 18, ptr %0, align 8, !dbg !22306
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_impl24PythonCredentialProviderEBO_.exit, !dbg !22307

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !22308
  store ptr %2, ptr %i.f, align 8, !dbg !22308
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12), !dbg !22309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !22311, !noalias !22314
  %i.l = invoke noundef i32 @_RNvMNtNtCsbm5zPlkZccl_4pyo38internal5stateNtB2_11AttachGuard6attach()
          to label %.noexc unwind label %bb.r, !dbg !22317

.noexc:                                           ; preds = %bb.c
  store i32 %i.l, ptr %i.e, align 4, !dbg !22317, !noalias !22314
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !22318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !22326, !noalias !22332
  %i.n = load ptr, ptr @_RNvNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtB6_24PythonCredentialProvider20try_into_initialized08INTERNED, align 8, !dbg !22326, !noalias !22332, !nonnull !13, !noundef !13
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtB6_24PythonCredentialProvider20try_into_initialized08INTERNED, i64 8), align 8, !dbg !22326, !noalias !22332, !noundef !13
  store ptr %i.a, ptr %i.d, align 8, !dbg !22326, !noalias !22332
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !22326
  store ptr %i.n, ptr %i.p, align 8, !dbg !22326, !noalias !22332
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !22326
  store i64 %i.o, ptr %i.q, align 8, !dbg !22326, !noalias !22332
  %i.r = invoke noundef align 8 ptr @_RNvMs4_NtCs3XBxJoY2OLA_9once_cell4syncINtB5_8OnceCellINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBU_5types6string8PyStringEE3getCslpwjCj2YNBy_9polars_io(ptr noundef nonnull align 8 getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtB6_24PythonCredentialProvider20try_into_initialized08INTERNED, i64 16))
          to label %.noexc.i unwind label %bb.p, !dbg !22335, !noalias !22314 ; 2 uses

.noexc.i:                                         ; preds = %.noexc
  %.not.i.i.i = icmp eq ptr %i.r, null, !dbg !22341
  br i1 %.not.i.i.i, label %bb.d, label %_RINvMNtNtCsbm5zPlkZccl_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs3_B5_NtB5_8Interned3get0ECslpwjCj2YNBy_9polars_io.exit.i.i, !dbg !22344, !prof !497

bb.d:                                             ; preds = %.noexc.i
  %i.s = invoke noundef nonnull align 8 ptr @_RINvNtNtCsbm5zPlkZccl_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvMs3_B4_NtB4_8Interned3get0INtNtB6_8instance2PyNtNtNtB6_5types6string8PyStringEECslpwjCj2YNBy_9polars_io(ptr noundef nonnull align 8 getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtB6_24PythonCredentialProvider20try_into_initialized08INTERNED, i64 16), ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d)
          to label %_RINvMNtNtCsbm5zPlkZccl_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs3_B5_NtB5_8Interned3get0ECslpwjCj2YNBy_9polars_io.exit.i.i unwind label %bb.p, !dbg !22345, !noalias !22314

_RINvMNtNtCsbm5zPlkZccl_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs3_B5_NtB5_8Interned3get0ECslpwjCj2YNBy_9polars_io.exit.i.i: ; preds = %bb.d, %.noexc.i
  %.sroa.0.0.i.i.i = phi ptr [ %i.r, %.noexc.i ], [ %i.s, %bb.d ], !dbg !22350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !22351, !noalias !22332
  %.val28.i.i = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !dbg !22352, !noalias !22332, !nonnull !13, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !22353, !noalias !22356
  invoke void @_RNvNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtBa_8instance5BoundNtB6_5PyAnyENtB6_12PyAnyMethods7getattr5inner(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noundef nonnull %.val28.i.i)
          to label %.noexc5.i unwind label %bb.p, !dbg !22360, !noalias !22314

.noexc5.i:                                        ; preds = %_RINvMNtNtCsbm5zPlkZccl_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs3_B5_NtB5_8Interned3get0ECslpwjCj2YNBy_9polars_io.exit.i.i
  %i.t = load i64, ptr %i.c, align 8, !dbg !22363, !range !494, !noalias !22356, !noundef !13
  %i.u = trunc nuw i64 %i.t to i1, !dbg !22366
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !22367
  %.sroa.5.8.copyload.i.i = load ptr, ptr %i.v, align 8, !dbg !22367, !noalias !22368 ; 6 uses
  br i1 %i.u, label %bb.e, label %bb.f, !dbg !22366

bb.e:                                             ; preds = %.noexc5.i
  %.sroa.94.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !22369
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.94.8..sroa_idx.i.i, i64 56, i1 false), !dbg !22369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22370, !noalias !22356
  br label %_RNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtB4_24PythonCredentialProvider20try_into_initialized0Ba_.exit.i, !dbg !22371

bb.f:                                             ; preds = %.noexc5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22370, !noalias !22356
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22373, !noalias !22377
  invoke void @_RNvXsj_NtNtCsbm5zPlkZccl_4pyo35types5tupleTbENtNtB9_4call10PyCallArgs15call_positionalCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, i1 noundef zeroext %3, ptr noundef nonnull %.sroa.5.8.copyload.i.i)
          to label %.noexc.i.i unwind label %bb.g, !dbg !22380, !noalias !22332

.noexc.i.i:                                       ; preds = %bb.f
  %i.w = load i64, ptr %i.b, align 8, !dbg !22383, !range !494, !noalias !22377, !noundef !13
  %i.x = trunc nuw i64 %i.w to i1, !dbg !22386    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !22387
  %.sroa.56.8.copyload.i.i = load ptr, ptr %i.y, align 8, !dbg !22387, !noalias !22332 ; 6 uses
  br i1 %i.x, label %bb.h, label %bb.j, !dbg !22386

bb.g:                                             ; preds = %bb.l, %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECslpwjCj2YNBy_9polars_io(ptr nonnull %.sroa.5.8.copyload.i.i) #37
          to label %.body.i unwind label %bb.o, !dbg !22388, !noalias !22332

bb.h:                                             ; preds = %.noexc.i.i
  %.sroa.98.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !22389
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.98.8..sroa_idx.i.i, i64 56, i1 false), !dbg !22389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22390, !noalias !22377
  %i.aa = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL), !dbg !22391
  %.val.i.i.i.i.i.i = load i64, ptr %i.aa, align 8, !dbg !22399, !noalias !22332, !noundef !13
  %i.ab = icmp sgt i64 %.val.i.i.i.i.i.i, 0, !dbg !22400
  br i1 %i.ab, label %bb.i, label %.invoke.i, !dbg !22402, !prof !1829

bb.i:                                             ; preds = %bb.h
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.5.8.copyload.i.i) #39, !dbg !22404, !noalias !22332
  br label %_RNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtB4_24PythonCredentialProvider20try_into_initialized0Ba_.exit.i, !dbg !22406

bb.j:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22390, !noalias !22377
  %.not.i.i = icmp eq ptr %.sroa.56.8.copyload.i.i, @_Py_NoneStruct, !dbg !22407
  %i.ac = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL), !dbg !22415 ; 2 uses
  br i1 %.not.i.i, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECslpwjCj2YNBy_9polars_io.exit33.i.i, !dbg !22416

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i.i31.i.i = load i64, ptr %i.ac, align 8, !dbg !22422, !noalias !22332, !noundef !13
  %i.ad = icmp sgt i64 %.val.i.i.i.i31.i.i, 0, !dbg !22428
  br i1 %i.ad, label %bb.m, label %bb.l, !dbg !22430, !prof !1829

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.sroa.56.8.copyload.i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECslpwjCj2YNBy_9polars_io.exit33.i.i unwind label %bb.g, !dbg !22432, !noalias !22332

bb.m:                                             ; preds = %bb.k
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.56.8.copyload.i.i) #39, !dbg !22433, !noalias !22332
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECslpwjCj2YNBy_9polars_io.exit33.i.i, !dbg !22435

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECslpwjCj2YNBy_9polars_io.exit33.i.i: ; preds = %bb.m, %bb.l, %bb.j
  %.sroa.011.0.i.i = phi ptr [ null, %bb.l ], [ null, %bb.m ], [ %.sroa.56.8.copyload.i.i, %bb.j ], !dbg !22436 ; 2 uses
  %.val.i.i.i.i34.i.i = load i64, ptr %i.ac, align 8, !dbg !22437, !noalias !22332, !noundef !13
  %i.ae = icmp sgt i64 %.val.i.i.i.i34.i.i, 0, !dbg !22443
  br i1 %i.ae, label %bb.n, label %.invoke.i, !dbg !22445, !prof !1829

.invoke.i:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECslpwjCj2YNBy_9polars_io.exit33.i.i, %bb.h
  %.sroa.7.0 = phi ptr [ %.sroa.56.8.copyload.i.i, %bb.h ], [ %.sroa.011.0.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECslpwjCj2YNBy_9polars_io.exit33.i.i ], !dbg !22447
  invoke void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.sroa.5.8.copyload.i.i)
          to label %_RNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtB4_24PythonCredentialProvider20try_into_initialized0Ba_.exit.i unwind label %bb.p, !dbg !22448, !noalias !22314

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECslpwjCj2YNBy_9polars_io.exit33.i.i
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.5.8.copyload.i.i) #39, !dbg !22452, !noalias !22332
  br label %_RNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtB4_24PythonCredentialProvider20try_into_initialized0Ba_.exit.i, !dbg !22454

bb.o:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !22455, !noalias !22332
  unreachable, !dbg !22455

bb.p:                                             ; preds = %.invoke.i, %_RINvMNtNtCsbm5zPlkZccl_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs3_B5_NtB5_8Interned3get0ECslpwjCj2YNBy_9polars_io.exit.i.i, %bb.d, %.noexc
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !22456

.body.i:                                          ; preds = %bb.p, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ag, %bb.p ], [ %i.z, %bb.g ]
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %.body unwind label %bb.q, !dbg !22457, !noalias !22314

_RNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtB4_24PythonCredentialProvider20try_into_initialized0Ba_.exit.i: ; preds = %bb.n, %.invoke.i, %bb.i, %bb.e
  %.sroa.7.1 = phi ptr [ %.sroa.5.8.copyload.i.i, %bb.e ], [ %.sroa.56.8.copyload.i.i, %bb.i ], [ %.sroa.7.0, %.invoke.i ], [ %.sroa.011.0.i.i, %bb.n ], !dbg !22415 ; 4 uses
  %.sroa.038.1 = phi i1 [ true, %bb.e ], [ true, %bb.i ], [ %i.x, %.invoke.i ], [ false, %bb.n ], !dbg !22415
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %bb.t unwind label %bb.r, !dbg !22459

bb.q:                                             ; preds = %.body.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !22461, !noalias !22314
  unreachable, !dbg !22461

bb.r:                                             ; preds = %_RNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtB4_24PythonCredentialProvider20try_into_initialized0Ba_.exit.i, %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !22462

.body:                                            ; preds = %bb.ab, %bb.r, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.ai, %bb.r ], [ %i.aw, %bb.ab ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22463), !dbg !22462
  call void @llvm.experimental.noalias.scope.decl(metadata !22466), !dbg !22469
  %i.aj = load ptr, ptr %i.f, align 8, !dbg !22471, !alias.scope !22475, !nonnull !13, !noundef !13
  %i.ak = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !dbg !22476, !noalias !22475
  %i.al = icmp eq i64 %i.ak, 1, !dbg !22479
  br i1 %i.al, label %bb.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEECslpwjCj2YNBy_9polars_io.exit, !dbg !22479

bb.s:                                             ; preds = %.body
  fence acquire, !dbg !22480
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #40
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEECslpwjCj2YNBy_9polars_io.exit unwind label %bb.aj, !dbg !22482

bb.t:                                             ; preds = %_RNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtB4_24PythonCredentialProvider20try_into_initialized0Ba_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !22456, !noalias !22314
  br i1 %.sroa.038.1, label %bb.u, label %bb.w, !dbg !22483

bb.u:                                             ; preds = %bb.t
  %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22485
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12, i64 56, i1 false), !dbg !22492
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12), !dbg !22493
  store i64 17, ptr %0, align 8, !dbg !22485
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22485
  store ptr %.sroa.7.1, ptr %.sroa.416.0..sroa_idx, align 8, !dbg !22485
  call void @llvm.experimental.noalias.scope.decl(metadata !22494), !dbg !22462
  call void @llvm.experimental.noalias.scope.decl(metadata !22497), !dbg !22500
  %i.am = load ptr, ptr %i.f, align 8, !dbg !22502, !alias.scope !22506, !nonnull !13, !noundef !13
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !dbg !22507, !noalias !22506
  %i.ao = icmp eq i64 %i.an, 1, !dbg !22510
  br i1 %i.ao, label %bb.v, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEECslpwjCj2YNBy_9polars_io.exit31, !dbg !22510

bb.v:                                             ; preds = %bb.u
  fence acquire, !dbg !22511
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #40
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEECslpwjCj2YNBy_9polars_io.exit31 unwind label %bb.ae, !dbg !22513

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12), !dbg !22493
  %.not = icmp eq ptr %.sroa.7.1, null, !dbg !22514
  br i1 %.not, label %bb.x, label %bb.z, !dbg !22518

bb.x:                                             ; preds = %bb.w, %bb.ad
  %.sroa.57.0 = phi ptr [ %i.au, %bb.ad ], [ undef, %bb.w ], !dbg !22519
  %.sroa.06.0 = phi i64 [ 1, %bb.ad ], [ 2, %bb.w ], !dbg !22519
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22522
  store i64 %.sroa.06.0, ptr %i.ap, align 8, !dbg !22522
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22522
  store ptr %.sroa.57.0, ptr %i.aq, align 8, !dbg !22522
  store i64 18, ptr %0, align 8, !dbg !22522
  call void @llvm.experimental.noalias.scope.decl(metadata !22523), !dbg !22462
  call void @llvm.experimental.noalias.scope.decl(metadata !22526), !dbg !22529
  %i.ar = load ptr, ptr %i.f, align 8, !dbg !22531, !alias.scope !22535, !nonnull !13, !noundef !13
  %i.as = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !dbg !22536, !noalias !22535
  %i.at = icmp eq i64 %i.as, 1, !dbg !22539
  br i1 %i.at, label %bb.y, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEECslpwjCj2YNBy_9polars_io.exit33, !dbg !22539

bb.y:                                             ; preds = %bb.x
  fence acquire, !dbg !22540
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #40
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEECslpwjCj2YNBy_9polars_io.exit33 unwind label %bb.ae, !dbg !22542

bb.z:                                             ; preds = %bb.w
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !dbg !22543, !noalias !22559
  %i.au = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 161) 24, i64 noundef range(i64 8, 17) 8) #39, !dbg !22562, !noalias !22559 ; 5 uses
  %i.av = icmp eq ptr %i.au, null, !dbg !22563
  br i1 %i.av, label %bb.aa, label %bb.ad, !dbg !22564, !prof !497

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #36
          to label %.noexc34 unwind label %bb.ab, !dbg !22565

.noexc34:                                         ; preds = %bb.aa
  unreachable, !dbg !22565

bb.ab:                                            ; preds = %bb.aa
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEECslpwjCj2YNBy_9polars_io(ptr nonnull %.sroa.7.1) #37
          to label %.body unwind label %bb.ac, !dbg !22566

bb.ac:                                            ; preds = %bb.ab
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !22567
  unreachable, !dbg !22567

bb.ad:                                            ; preds = %bb.z
  store i64 1, ptr %i.au, align 8, !dbg !22568
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8, !dbg !22568
  store i64 1, ptr %.sroa.440.0..sroa_idx, align 8, !dbg !22568
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16, !dbg !22568
  store ptr %.sroa.7.1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !22568
  br label %bb.x, !dbg !22570

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEECslpwjCj2YNBy_9polars_io.exit: ; preds = %.body, %bb.s, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.ae ], [ %eh.lpad-body, %bb.s ], [ %eh.lpad-body, %.body ]
  %i.ay = load i64, ptr %i.g, align 8, !dbg !22571, !range !494, !noundef !13
  %i.az = icmp eq i64 %i.ay, 0, !dbg !22571
  br i1 %i.az, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_impl24PythonCredentialProviderEBO_.exit37, label %bb.ak, !dbg !22571

bb.ae:                                            ; preds = %bb.y, %bb.v
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEECslpwjCj2YNBy_9polars_io.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEECslpwjCj2YNBy_9polars_io.exit33: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !22462
  %i.bb = load i64, ptr %i.g, align 8, !dbg !22571, !range !494, !noundef !13
  %i.bc = trunc nuw i64 %i.bb to i1, !dbg !22571
  br i1 %i.bc, label %bb.af, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_impl24PythonCredentialProviderEBO_.exit, !dbg !22571

bb.af:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEECslpwjCj2YNBy_9polars_io.exit33
  call void @llvm.experimental.noalias.scope.decl(metadata !22572), !dbg !22571
  call void @llvm.experimental.noalias.scope.decl(metadata !22575), !dbg !22578
  call void @llvm.experimental.noalias.scope.decl(metadata !22581), !dbg !22584
  %i.bd = load ptr, ptr %i.h, align 8, !dbg !22586, !alias.scope !22590, !nonnull !13, !noundef !13
  %i.be = atomicrmw sub ptr %i.bd, i64 1 release, align 8, !dbg !22591, !noalias !22590
  %i.bf = icmp eq i64 %i.be, 1, !dbg !22594
  br i1 %i.bf, label %bb.ag, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_impl24PythonCredentialProviderEBO_.exit, !dbg !22594

bb.ag:                                            ; preds = %bb.af
  fence acquire, !dbg !22595
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h) #40, !dbg !22597
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_impl24PythonCredentialProviderEBO_.exit, !dbg !22597

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_impl24PythonCredentialProviderEBO_.exit: ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEECslpwjCj2YNBy_9polars_io.exit31, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEECslpwjCj2YNBy_9polars_io.exit33, %bb.b
  ret void, !dbg !22598

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEECslpwjCj2YNBy_9polars_io.exit31: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !22462
  %i.bg = load i64, ptr %i.g, align 8, !dbg !22571, !range !494, !noundef !13
  %i.bh = trunc nuw i64 %i.bg to i1, !dbg !22571
  br i1 %i.bh, label %bb.ah, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_impl24PythonCredentialProviderEBO_.exit, !dbg !22571

bb.ah:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEECslpwjCj2YNBy_9polars_io.exit31
  call void @llvm.experimental.noalias.scope.decl(metadata !22599), !dbg !22571
  call void @llvm.experimental.noalias.scope.decl(metadata !22602), !dbg !22605
  call void @llvm.experimental.noalias.scope.decl(metadata !22607), !dbg !22610
  %i.bi = load ptr, ptr %i.h, align 8, !dbg !22612, !alias.scope !22616, !nonnull !13, !noundef !13
  %i.bj = atomicrmw sub ptr %i.bi, i64 1 release, align 8, !dbg !22617, !noalias !22616
  %i.bk = icmp eq i64 %i.bj, 1, !dbg !22620
  br i1 %i.bk, label %bb.ai, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_impl24PythonCredentialProviderEBO_.exit, !dbg !22620

bb.ai:                                            ; preds = %bb.ah
  fence acquire, !dbg !22621
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h) #40, !dbg !22623
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_impl24PythonCredentialProviderEBO_.exit, !dbg !22623

bb.aj:                                            ; preds = %bb.al, %bb.s
end_hunk_0
