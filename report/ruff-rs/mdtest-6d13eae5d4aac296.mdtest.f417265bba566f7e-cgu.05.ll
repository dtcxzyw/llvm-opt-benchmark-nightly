Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/mdtest-6d13eae5d4aac296.mdtest.f417265bba566f7e-cgu.05?download=true
inline.NumInlined: 247
inline.NumDeleted: 138
begin_hunk_0_@_RNvMs0_NtCs45bxiIjzMqg_5salsa5inputINtB5_14IngredientImplNtNtCs56aZGHL6Dc6_7ruff_db5files4FileE5fieldCskXhPDodhyTq_6mdtest:bb.a
.noexc4:                                          ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !238
  %.pre = load i64, ptr %i.p, align 8
  %i.y = add i64 %.pre, 1
  br label %_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal30with_query_stack_unchecked_mutuNCNvB2_26report_tracked_read_simple0ECskXhPDodhyTq_6mdtest.exit

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load i64, ptr %i.p, align 8, !noundef !4
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.p, align 8
  resume { ptr, i32 } %i.z

_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal30with_query_stack_unchecked_mutuNCNvB2_26report_tracked_read_simple0ECskXhPDodhyTq_6mdtest.exit: ; preds = %.noexc4, %bb.d
  %i.ac = phi i64 [ %i.y, %.noexc4 ], [ 0, %bb.d ]
  store i64 %i.ac, ptr %i.p, align 8
  ret ptr %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEEE8try_lockCskXhPDodhyTq_6mdtest(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8), (16, 17)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.c = extractvalue { i32, i1 } %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.f = and i64 %i.e, 9223372036854775807
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.c, !prof !30

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
  %i.i = xor i1 %i.h, true
  %i.j = zext i1 %i.i to i8
  br label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i = phi i8 [ %i.j, %bb.c ], [ 0, %bb.b ]
  %i.k = load atomic i8, ptr %i.d monotonic, align 4
  %i.l = icmp ne i8 %i.k, 0
  call void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1s_5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEEENCNvMs9_B10_BX_3new0ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i1 noundef zeroext %i.l, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  %i.m = load i64, ptr %i.a, align 8, !range !239, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !align !148, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i8, ptr %i.p, align 8, !range !240, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.r, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit
  %.sink3 = phi i8 [ %i.q, %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit ], [ 2, %bb.a ]
  %.sink = phi i64 [ %i.m, %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit ], [ 1, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink3, ptr %i.s, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @_RNvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_13RawTableInner17find_insert_index(ptr nofree readonly captures(none) %.0.val, i64 %.8.val, i64 noundef %0) unnamed_addr #4 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.0.07 = and i64 %0, %.8.val               ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.0.07
  %.sroa.0.0.copyload.i68 = load <16 x i8>, ptr %i.a, align 1, !noalias !241
  %i.b = icmp slt <16 x i8> %.sroa.0.0.copyload.i68, zeroinitializer
  %i.c = bitcast <16 x i1> %i.b to i16            ; 2 uses
  %.not.i9 = icmp eq i16 %i.c, 0
  br i1 %.not.i9, label %.lr.ph, label %._crit_edge, !prof !119

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.07, %bb.a ], [ %.sroa.0.0, %.lr.ph ]
  %.lcssa = phi i16 [ %i.c, %bb.a ], [ %i.t, %.lr.ph ]
  %i.d = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.e = zext nneg i16 %i.d to i64
  %i.f = add i64 %.sroa.0.0.lcssa, %i.e
  %i.g = and i64 %i.f, %.8.val                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !noundef !4
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %bb.b, label %_RNvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit, !prof !31

bb.b:                                             ; preds = %._crit_edge
  %.val72.i = load <16 x i8>, ptr %.0.val, align 16
  %i.k = icmp slt <16 x i8> %.val72.i, zeroinitializer
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not.i6 = icmp ne i16 %i.l, 0
  %i.m = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.l, i1 true)
  %i.n = zext nneg i16 %i.m to i64
  tail call void @llvm.assume(i1 %.not.i6)
  br label %_RNvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit

_RNvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit: ; preds = %._crit_edge, %bb.b
  %.sroa.0.0.i5 = phi i64 [ %i.n, %bb.b ], [ %i.g, %._crit_edge ]
  ret i64 %.sroa.0.0.i5

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.010 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %.sroa.0.07, %bb.a ]
  %i.o = phi i64 [ %i.p, %.lr.ph ], [ 0, %bb.a ]
  %i.p = add i64 %i.o, 16                         ; 2 uses
  %i.q = add i64 %i.p, %.sroa.0.010
  %.sroa.0.0 = and i64 %i.q, %.8.val              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.0.0
  %.sroa.0.0.copyload.i6 = load <16 x i8>, ptr %i.r, align 1, !noalias !241
  %i.s = icmp slt <16 x i8> %.sroa.0.0.copyload.i6, zeroinitializer
  %i.t = bitcast <16 x i1> %i.s to i16            ; 2 uses
  %.not.i = icmp eq i16 %i.t, 0
  br i1 %.not.i, label %.lr.ph, label %._crit_edge, !prof !120
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnosticj2_E21reserve_one_uncheckedCskXhPDodhyTq_6mdtest(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !244, !noalias !247, !noundef !4 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 2
  %i.e = load ptr, ptr %0, align 8, !alias.scope !244, !noalias !247, !nonnull !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !244, !noalias !247 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !31

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.n = icmp ult i64 %i.c, 3                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !31

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #24, !noalias !249
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 2
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not42.i = icmp eq i64 %i.c, %i.m
  br i1 %.not42.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECskXhPDodhyTq_6mdtest.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECskXhPDodhyTq_6mdtest.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = shl nuw nsw i64 %i.m, 3                  ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 1152921504606846975
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit.i, label %bb.p, !prof !252

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit.i
  %i.q = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.q, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit44.i, label %bb.p, !prof !252

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !249
  %i.r = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #26, !noalias !249 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit44.i: ; preds = %bb.i
  %i.t = shl nuw nsw i64 %.sink.i.i, 3
  %i.u = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.t, i64 noundef 8, i64 noundef %i.p) #26, !noalias !249 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit44.i
  %.sroa.030.0.i = phi ptr [ %i.r, %bb.l ], [ %i.u, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit44.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !249
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !249
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !249
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECskXhPDodhyTq_6mdtest.exit

bb.l:                                             ; preds = %bb.j
  %i.w = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 dereferenceable(24) %0, i64 %i.w, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.x = shl i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(24) %0, ptr nonnull align 8 %i.e, i64 %i.x, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !249
  %or.cond.i.i = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond.i.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit.i, label %bb.n, !prof !252

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !253
  store i64 0, ptr %i.a, align 8, !noalias !253
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24, !noalias !253
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit.i: ; preds = %bb.m
  %i.y = shl nuw nsw i64 %.sink.i.i, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.y, i64 noundef 8) #26, !noalias !249
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECskXhPDodhyTq_6mdtest.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit44.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.p) #24
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECskXhPDodhyTq_6mdtest.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #24
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionj1_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !alias.scope !256, !noalias !259, !noundef !4 ; 7 uses
  %i.c = icmp ugt i64 %i.b, 1                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !256, !noalias !259, !nonnull !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !256, !noalias !259
  %.sink9.i = select i1 %i.c, i64 %i.g, i64 %i.b  ; 3 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0                 ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !31

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.n = icmp ult i64 %i.b, 2                     ; 2 uses
  %.sink8.idx.i.i = select i1 %i.c, i64 16, i64 0
  %.sink8.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink8.idx.i.i
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.o = load i64, ptr %.sink8.i.i, align 8, !alias.scope !261, !noundef !4 ; 5 uses
  %.not.i = icmp ult i64 %i.m, %i.o
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !31

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #24, !noalias !261
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.b, %i.m
  br i1 %.not43.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECskXhPDodhyTq_6mdtest.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECskXhPDodhyTq_6mdtest.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = mul i64 %i.m, 24                         ; 3 uses
  %or.cond.not.i = icmp ugt i64 %i.k, 384307168202282324
  br i1 %or.cond.not.i, label %bb.p, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionEBH_.exit.i, !prof !264

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionEBH_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionEBH_.exit.i
  %or.cond62.not.i = icmp ugt i64 %i.b, 384307168202282325
  br i1 %or.cond62.not.i, label %bb.p, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionEBH_.exit45.i, !prof !264

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionEBH_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !261
  %i.q = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #26, !noalias !261 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionEBH_.exit45.i: ; preds = %bb.i
  %i.s = mul nuw i64 %.sink.i.i, 24
  %i.t = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.p) #26, !noalias !261 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionEBH_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionEBH_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %i.d, align 8, !alias.scope !261
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !261
  store i64 %i.m, ptr %0, align 8, !alias.scope !261
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECskXhPDodhyTq_6mdtest.exit

bb.l:                                             ; preds = %bb.j
  %i.v = mul i64 %i.o, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.d, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = mul i64 %i.o, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.e, i64 %i.w, i1 false)
  store i64 %i.o, ptr %0, align 8, !alias.scope !261
  %i.x = mul i64 %.sink.i.i, 24                   ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %i.b, 384307168202282325
  br i1 %or.cond.not.i.i, label %bb.n, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionEBF_.exit.i, !prof !264

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !265
  store i64 0, ptr %i.a, align 8, !noalias !265
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.x, ptr %i.y, align 8, !noalias !265
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24, !noalias !265
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionEBF_.exit.i: ; preds = %bb.m
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 8) #26, !noalias !261
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECskXhPDodhyTq_6mdtest.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionEBH_.exit45.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.p) #24
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECskXhPDodhyTq_6mdtest.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionEBF_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsG_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterANtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnosticj2_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.promoted = load i64, ptr %i.b, align 8        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp eq i64 %.promoted, %i.d
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECskXhPDodhyTq_6mdtest.exit1, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !268, !noalias !271, !noundef !4
  %i.h = icmp ugt i64 %i.g, 2
  %i.i = load ptr, ptr %0, align 8, !alias.scope !268, !noalias !271, !nonnull !4
  %.sink10.i = select i1 %i.h, ptr %i.i, ptr %0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECskXhPDodhyTq_6mdtest.exit
  %i.j = phi i64 [ %.promoted, %.lr.ph ], [ %i.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECskXhPDodhyTq_6mdtest.exit ] ; 2 uses
  %i.k = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.k, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.sink10.i, i64 %i.j
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.m, ptr %i.a, align 8
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !273
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECskXhPDodhyTq_6mdtest.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECskXhPDodhyTq_6mdtest.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECskXhPDodhyTq_6mdtest.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = icmp eq i64 %i.k, %i.d
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECskXhPDodhyTq_6mdtest.exit1, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECskXhPDodhyTq_6mdtest.exit1: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECskXhPDodhyTq_6mdtest.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsM_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnosticj2_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCskXhPDodhyTq_6mdtest(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !282, !noalias !285, !noundef !4 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 2                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !282, !noalias !285
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b
  %.sink8.i = select i1 %i.c, ptr %i.d, ptr %i.a
  store i64 0, ptr %.sink8.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sink9.i, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvXsN_Csheqz6YZvxwl_8smallvecRINtB5_8SmallVecANtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionj1_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterBN_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !287, !noalias !290, !noundef !4 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 1                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !287, !noalias !290, !nonnull !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !287, !noalias !290
  %.sink10.i = select i1 %i.b, ptr %i.d, ptr %i.c ; 2 uses
  %.sink9.i = select i1 %i.b, i64 %i.f, i64 %i.a
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %.sink10.i, i64 %.sink9.i
  %i.h = insertvalue { ptr, ptr } poison, ptr %.sink10.i, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %i.g, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsX_Csheqz6YZvxwl_8smallvecNtB5_18CollectionAllocErrNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !292, !noundef !4
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @32)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 16)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvXsd_NtCs45bxiIjzMqg_5salsa8internedINtB5_5ValueNtCs56aZGHL6Dc6_7ruff_db10PythonFileENtNtB7_5table4Slot5memosCskXhPDodhyTq_6mdtest(ptr nofree noundef readnone captures(ret: address, provenance) %0, i64 range(i64 1, 0) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsd_NtCs45bxiIjzMqg_5salsa8internedINtB5_5ValueNtCs56aZGHL6Dc6_7ruff_db10PythonFileENtNtB7_5table4Slot9memos_mutCskXhPDodhyTq_6mdtest(ptr noalias nofree noundef readnone align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnosticj2_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 6 uses
  %i.d = icmp ugt i64 %i.c, 2
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.09.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !302, !nonnull !4, !noundef !4
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !305
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.k = icmp eq i64 %i.g, %i.c
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = icmp eq i64 %i.g, %i.c
  br i1 %i.m, label %common.resume, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.o, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit8.i ], [ %i.g, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.110.i ; 2 uses
  %i.o = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
end_hunk_0
