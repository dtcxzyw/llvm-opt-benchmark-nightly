Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_python-5edf94d4479ec0ca.polars_python.a5d715ccd120a5f3-cgu.14?download=true
inline.NumInlined: 20908
inline.NumDeleted: 8232
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvNtCsgjwxzEoLG5s_12polars_error5abort18catch_polars_abortINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs7Ga9Brpi21q_11polars_lazy5frame8exitable14InProcessQueryNtB4_11PolarsErrorEINtNtNtB11_5panic11unwind_safe16AssertUnwindSafeNCNvMNtNtCseeLknQCOKOd_13polars_python9lazyframe8exitableNtB3M_11PyLazyFrame20collect_concurrently0EEB3O_:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 376, !dbg !161846
  store i32 %i.v, ptr %i.ab, align 8, !dbg !161846, !noalias !161826
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 368, !dbg !161846
  store ptr %i.aa, ptr %i.ac, align 16, !dbg !161846, !noalias !161826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !161846, !noalias !161826
  %i.ad = atomicrmw sub ptr %1, i64 16 release, align 8, !dbg !161855, !noalias !161826
  %i.ae = and i64 %i.ad, -14, !dbg !161856
  %i.af = icmp eq i64 %i.ae, 18, !dbg !161856
  br i1 %i.af, label %bb.h, label %_RNvXsl_NtNtCscgRAwXFJnXP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNvMNtNtCseeLknQCOKOd_13polars_python9lazyframe8exitableNtB1g_11PyLazyFrame20collect_concurrently0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB1i_.exit.i, !dbg !161856, !prof !4833

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 16 %1)
          to label %_RNvXsl_NtNtCscgRAwXFJnXP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNvMNtNtCseeLknQCOKOd_13polars_python9lazyframe8exitableNtB1g_11PyLazyFrame20collect_concurrently0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB1i_.exit.i unwind label %bb.j, !dbg !161857, !noalias !161826

bb.i:                                             ; preds = %bb.f
  call void @llvm.trap(), !dbg !161858
  unreachable, !dbg !161858

bb.j:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(384) %i.c) #51
          to label %.body22 unwind label %bb.k, !dbg !161859, !noalias !161826

bb.k:                                             ; preds = %bb.j, %bb.e
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !161860, !noalias !161826
  unreachable, !dbg !161860

_RNvXsl_NtNtCscgRAwXFJnXP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNvMNtNtCseeLknQCOKOd_13polars_python9lazyframe8exitableNtB1g_11PyLazyFrame20collect_concurrently0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB1i_.exit.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !161861, !noalias !161826
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(384) %i.b, ptr noundef nonnull align 16 dereferenceable(384) %i.c, i64 384, i1 false), !dbg !161861, !noalias !161826
  invoke void @_RNvMNtNtCs7Ga9Brpi21q_11polars_lazy5frame8exitableNtB4_9LazyFrame20collect_concurrently(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(384) %i.b)
          to label %bb.n unwind label %bb.l, !dbg !161862

bb.l:                                             ; preds = %_RNvXsl_NtNtCscgRAwXFJnXP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNvMNtNtCseeLknQCOKOd_13polars_python9lazyframe8exitableNtB1g_11PyLazyFrame20collect_concurrently0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB1i_.exit.i, %_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i
  %i.ai = landingpad { ptr, i32 }
          catch ptr null, !dbg !161863
  br label %.body22, !dbg !161863

.body22:                                          ; preds = %bb.d, %bb.e, %bb.j, %bb.l
  %eh.lpad-body23 = phi { ptr, i32 } [ %i.ai, %bb.l ], [ %i.ag, %bb.j ], [ %i.q, %bb.d ], [ %i.q, %bb.e ]
  %i.aj = extractvalue { ptr, i32 } %eh.lpad-body23, 0, !dbg !161863
  %i.ak = invoke { ptr, ptr } @_RNvNvNtCsh8eZTKRCwoO_3std9panicking12catch_unwind7cleanup(ptr noundef %i.aj)
          to label %bb.o unwind label %bb.m, !dbg !161864 ; 2 uses

bb.m:                                             ; preds = %.body22
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #53, !dbg !161865
  unreachable, !dbg !161865

bb.n:                                             ; preds = %_RNvXsl_NtNtCscgRAwXFJnXP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNvMNtNtCseeLknQCOKOd_13polars_python9lazyframe8exitableNtB1g_11PyLazyFrame20collect_concurrently0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB1i_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !161866, !noalias !161826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !161859, !noalias !161826
  %.sroa.0.0.copyload26 = load ptr, ptr %i.d, align 8, !dbg !161867 ; 2 uses
  %.sroa.8.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !161867
  %.sroa.8.0.copyload28 = load ptr, ptr %.sroa.8.0..sroa_idx27, align 8, !dbg !161867 ; 2 uses
  %.sroa.10.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !161867
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !161868
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.534.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10.0..sroa_idx29, i64 56, i1 false), !dbg !161867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !161869
  store ptr %.sroa.0.0.copyload26, ptr %i.e, align 8, !dbg !161868
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !161868
  store ptr %.sroa.8.0.copyload28, ptr %.sroa.433.0..sroa_idx, align 8, !dbg !161868
  %i.am = ptrtoint ptr %.sroa.0.0.copyload26 to i64, !dbg !161870
  br label %bb.p, !dbg !161870

bb.o:                                             ; preds = %.body22
  %i.an = extractvalue { ptr, ptr } %i.ak, 0, !dbg !161864 ; 3 uses
  %i.ao = extractvalue { ptr, ptr } %i.ak, 1, !dbg !161864 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !161871
  store ptr %i.an, ptr %i.ap, align 8, !dbg !161871
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !161871
  store ptr %i.ao, ptr %i.aq, align 8, !dbg !161871
  store i64 19, ptr %i.e, align 8, !dbg !161871
  br label %bb.p, !dbg !161870

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.5.0.copyload = phi ptr [ %i.an, %bb.o ], [ %.sroa.8.0.copyload28, %bb.n ] ; 8 uses
  %.sroa.03.0.copyload = phi i64 [ 19, %bb.o ], [ %i.am, %bb.n ] ; 2 uses
  invoke void @_RNvNtCsgjwxzEoLG5s_12polars_error5abort18unregister_catcher()
          to label %bb.q unwind label %bb.ad, !dbg !161872

bb.q:                                             ; preds = %bb.p
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !161873
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !161873 ; 10 uses
  %i.ar = icmp eq i64 %.sroa.03.0.copyload, 19, !dbg !161874
  br i1 %i.ar, label %bb.r, label %bb.z, !dbg !161875

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.as = invoke noundef i8 @_RNvNtCsgjwxzEoLG5s_12polars_error5abort19decode_polars_abort(ptr noundef nonnull %.sroa.5.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.6.0.copyload)
          to label %bb.s unwind label %bb.x, !dbg !161876 ; 2 uses

bb.s:                                             ; preds = %bb.r
  %.not.i = icmp eq i8 %i.as, 2, !dbg !161876
  br i1 %.not.i, label %.noexc, label %bb.t, !dbg !161877

bb.t:                                             ; preds = %bb.s
  %i.at = load ptr, ptr %.sroa.6.0.copyload, align 8, !dbg !161878, !invariant.load !4821, !alias.scope !161831 ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, null, !dbg !161878
  br i1 %.not.i.i, label %bb.v, label %bb.u, !dbg !161878

bb.u:                                             ; preds = %bb.t
  invoke void %i.at(ptr noundef nonnull %.sroa.5.0.copyload)
          to label %bb.v unwind label %bb.w, !dbg !161878

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 8, !dbg !161879
  %i.av = load i64, ptr %i.au, align 8, !dbg !161879, !range !5300, !invariant.load !4821, !alias.scope !161831 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0, !dbg !161880
  br i1 %i.aw, label %bb.ab, label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i.i.i, !dbg !161880

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.v
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 16, !dbg !161879
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !161881, !range !5301, !invariant.load !4821, !alias.scope !161831
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) %i.ay) #48, !dbg !161882
  br label %bb.ab, !dbg !161883

bb.w:                                             ; preds = %bb.u
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 8, !dbg !161884
  %i.bb = load i64, ptr %i.ba, align 8, !dbg !161884, !range !5300, !invariant.load !4821, !alias.scope !161831 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0, !dbg !161885
  br i1 %i.bc, label %.body.thread, label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i4.i.i, !dbg !161885

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.w
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 16, !dbg !161884
  %i.be = load i64, ptr %i.bd, align 8, !dbg !161886, !range !5301, !invariant.load !4821, !alias.scope !161831
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) %i.be) #48, !dbg !161887
  br label %.body.thread, !dbg !161888

.noexc:                                           ; preds = %bb.s
  call void @_RNvNtCsh8eZTKRCwoO_3std5panic13resume_unwind(ptr noundef nonnull %.sroa.5.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.6.0.copyload) #52, !dbg !161889
  unreachable

bb.x:                                             ; preds = %bb.r
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECseeLknQCOKOd_13polars_python(ptr nonnull %.sroa.5.0.copyload, ptr nonnull readonly align 8 dereferenceable(32) %.sroa.6.0.copyload) #51
          to label %.body.thread unwind label %bb.y, !dbg !161890

bb.y:                                             ; preds = %bb.x
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !161891
  unreachable, !dbg !161891

bb.z:                                             ; preds = %bb.q
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !161873
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !161892
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.616.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, i64 48, i1 false), !dbg !161893
  store i64 %.sroa.03.0.copyload, ptr %0, align 8, !dbg !161892
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161892
  store ptr %.sroa.5.0.copyload, ptr %.sroa.414.0..sroa_idx, align 8, !dbg !161892
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161892
  store ptr %.sroa.6.0.copyload, ptr %.sroa.515.0..sroa_idx, align 8, !dbg !161892
  br label %bb.aa, !dbg !161894

bb.aa:                                            ; preds = %bb.ab, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !161835
  br label %bb.ac, !dbg !161835

bb.ab:                                            ; preds = %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.v
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161895
  store i8 %i.as, ptr %i.bh, align 8, !dbg !161895
  store i64 19, ptr %0, align 8, !dbg !161895
  br label %bb.aa, !dbg !161896

bb.ac:                                            ; preds = %bb.aa, %bb.b
  ret void, !dbg !161897

bb.ad:                                            ; preds = %bb.p
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtNtNtCs7Ga9Brpi21q_11polars_lazy5frame8exitable14InProcessQueryNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(72) %i.e) #51
          to label %.body.thread unwind label %bb.ae, !dbg !161835

bb.ae:                                            ; preds = %bb.ad
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !161898
  unreachable, !dbg !161898

.body.thread:                                     ; preds = %bb.x, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.w, %bb.ad
  %eh.lpad-body42 = phi { ptr, i32 } [ %i.bi, %bb.ad ], [ %i.bf, %bb.x ], [ %i.az, %bb.w ], [ %i.az, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i4.i.i ]
  resume { ptr, i32 } %eh.lpad-body42, !dbg !161898
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsgjwxzEoLG5s_12polars_error5abort18catch_polars_abortINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCseeLknQCOKOd_13polars_python9lazyframe7general16PyCollectBatchesNtNtCsbm5zPlkZccl_4pyo33err5PyErrEINtNtNtB11_5panic11unwind_safe16AssertUnwindSafeNCNvMs0_B1A_NtB1C_11PyLazyFrame15collect_batches0EEB1E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([400 x i8]) align 16 captures(none) dereferenceable(400) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !161899 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = alloca [64 x i8], align 8                ; 7 uses
  %i.c = alloca [72 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [368 x i8], align 16              ; 4 uses
  %i.f = alloca [368 x i8], align 16              ; 4 uses
  %.sroa.4.i.i.i = alloca [39 x i8], align 1      ; 4 uses
  %i.g = alloca [384 x i8], align 16              ; 6 uses
  %i.h = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.66.i.i.i = alloca [32 x i8], align 8     ; 6 uses
  %.sroa.6.i.i.i = alloca [32 x i8], align 8      ; 7 uses
  %i.i = alloca [384 x i8], align 16              ; 14 uses
  %.sroa.6.i = alloca [312 x i8], align 8         ; 4 uses
  %.sroa.53.i.sroa.8 = alloca [32 x i8], align 8  ; 5 uses
  %.sroa.15 = alloca [344 x i8], align 8          ; 3 uses
  %i.j = alloca [400 x i8], align 16              ; 13 uses
  %i.k = tail call noundef i8 @_RNvNtCsgjwxzEoLG5s_12polars_error5abort20try_register_catcher(), !dbg !162067 ; 2 uses
  %.not = icmp eq i8 %i.k, 2, !dbg !162095
  br i1 %.not, label %bb.c, label %bb.b, !dbg !162096

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162097
  store i8 %i.k, ptr %i.l, align 8, !dbg !162097
  store i64 -9223372036854775777, ptr %0, align 16, !dbg !162097
  br label %bb.as, !dbg !162098

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !162099
  %.sroa.054.0.copyload = load i64, ptr %1, align 8, !dbg !162100
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !162100
  %.sroa.455.0.copyload = load ptr, ptr %.sroa.455.0..sroa_idx, align 8, !dbg !162100 ; 2 uses
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !162100
  %.sroa.556.0.copyload = load ptr, ptr %.sroa.556.0..sroa_idx, align 8, !dbg !162100 ; 2 uses
  %.sroa.657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !162100
  %.sroa.657.0.copyload = load ptr, ptr %.sroa.657.0..sroa_idx, align 8, !dbg !162100 ; 2 uses
  %.sroa.758.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !162100
  %.sroa.758.0.copyload = load ptr, ptr %.sroa.758.0..sroa_idx, align 8, !dbg !162100 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i), !dbg !162101
  %i.m = inttoptr i64 %.sroa.054.0.copyload to ptr, !dbg !162101 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.53.i.sroa.8), !dbg !162102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !162103, !noalias !162074
  %i.n = load atomic i64, ptr %i.m monotonic, align 8, !dbg !162104, !noalias !162074 ; 4 uses
  %i.o = and i64 %i.n, 8, !dbg !162105
  %i.p = icmp ne i64 %i.o, 0, !dbg !162105
  %i.q = icmp ugt i64 %i.n, -17
  %or.cond.i.i.i.i = or i1 %i.q, %i.p, !dbg !162105
  br i1 %or.cond.i.i.i.i, label %_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, label %_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i, !dbg !162105, !prof !5264

_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i: ; preds = %bb.c
  %i.r = add nuw i64 %i.n, 16, !dbg !162106
  %i.s = cmpxchg weak ptr %i.m, i64 %i.n, i64 %i.r acquire monotonic, align 8, !dbg !162107, !noalias !162074
  %i.t = extractvalue { i64, i1 } %i.s, 1, !dbg !162107
  br i1 %i.t, label %.noexc21, label %_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, !dbg !162108, !prof !5087

_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i: ; preds = %_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i, %bb.c
  %i.u = invoke noundef zeroext i1 @_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %i.m, i1 noundef zeroext false, i64 undef, i32 noundef 1000000000)
          to label %.noexc21 unwind label %bb.ab, !dbg !162109 ; 0 uses

.noexc21:                                         ; preds = %_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, %_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !162110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !162111, !noalias !162074
  invoke void @_RNvXNtNtCsfcROwRM8ZtH_11polars_plan3dsl4planNtB2_7DslPlanNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([368 x i8]) align 16 captures(address) dereferenceable(368) %i.f, ptr noundef nonnull align 16 %i.v)
          to label %bb.f unwind label %bb.d, !dbg !162111, !noalias !162074

bb.d:                                             ; preds = %.noexc21
  %i.w = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  %i.x = atomicrmw sub ptr %i.m, i64 16 release, align 8, !dbg !162112, !noalias !162074
  %i.y = and i64 %i.x, -14, !dbg !162113
  %i.z = icmp eq i64 %i.y, 18, !dbg !162113
  br i1 %i.z, label %bb.e, label %.body23, !dbg !162113, !prof !4833

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.m)
          to label %.body23 unwind label %bb.aa, !dbg !162114, !noalias !162074

bb.f:                                             ; preds = %.noexc21
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 392, !dbg !162115
  %i.ab = load i32, ptr %i.aa, align 8, !dbg !162115, !noalias !162074, !noundef !4821
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 384, !dbg !162116 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 16, !dbg !162116, !noalias !162074, !nonnull !4821, !noundef !4821
  %i.ae = atomicrmw add ptr %i.ad, i64 1 monotonic, align 8, !dbg !162117, !noalias !162074
  %i.af = icmp slt i64 %i.ae, 0, !dbg !162118
  br i1 %i.af, label %bb.i, label %bb.g, !dbg !162118

bb.g:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %i.ac, align 16, !dbg !162119, !noalias !162074, !nonnull !4821, !noundef !4821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.i, ptr noundef nonnull align 16 dereferenceable(368) %i.f, i64 368, i1 false), !dbg !162111, !noalias !162074
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 376, !dbg !162111 ; 2 uses
  store i32 %i.ab, ptr %i.ah, align 8, !dbg !162111, !noalias !162074
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 368, !dbg !162111 ; 7 uses
  store ptr %i.ag, ptr %i.ai, align 16, !dbg !162111, !noalias !162074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !162111, !noalias !162074
  %i.aj = atomicrmw sub ptr %i.m, i64 16 release, align 8, !dbg !162120, !noalias !162074
  %i.ak = and i64 %i.aj, -14, !dbg !162121
  %i.al = icmp eq i64 %i.ak, 18, !dbg !162121
  br i1 %i.al, label %bb.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api6rwlock15RwLockReadGuardNtNtCs3mtJKb2XD8V_11parking_lot10raw_rwlock9RawRwLockNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEECseeLknQCOKOd_13polars_python.exit27.i.i.i, !dbg !162121, !prof !4833

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.m)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api6rwlock15RwLockReadGuardNtNtCs3mtJKb2XD8V_11parking_lot10raw_rwlock9RawRwLockNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEECseeLknQCOKOd_13polars_python.exit27.i.i.i unwind label %bb.j, !dbg !162122, !noalias !162074

bb.i:                                             ; preds = %bb.f
  call void @llvm.trap(), !dbg !162123
  unreachable, !dbg !162123

bb.j:                                             ; preds = %bb.t, %bb.l, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api6rwlock15RwLockReadGuardNtNtCs3mtJKb2XD8V_11parking_lot10raw_rwlock9RawRwLockNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEECseeLknQCOKOd_13polars_python.exit27.i.i.i, %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i, !dbg !162124

.body.i.i.i:                                      ; preds = %bb.q, %bb.j
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.am, %bb.j ], [ %i.bg, %bb.q ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(384) %i.i) #51
          to label %.body23 unwind label %bb.aa, !dbg !162124, !noalias !162074

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api6rwlock15RwLockReadGuardNtNtCs3mtJKb2XD8V_11parking_lot10raw_rwlock9RawRwLockNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEECseeLknQCOKOd_13polars_python.exit27.i.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i), !dbg !162125
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.66.i.i.i), !dbg !162125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !162125, !noalias !162074
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !162125, !noalias !162074
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !162126, !noalias !162074
  invoke void @_RNvXNtNtCsfcROwRM8ZtH_11polars_plan3dsl4planNtB2_7DslPlanNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([368 x i8]) align 16 captures(address) dereferenceable(368) %i.e, ptr noundef nonnull align 16 %i.i)
          to label %bb.k unwind label %bb.j, !dbg !162126, !noalias !162074

bb.k:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api6rwlock15RwLockReadGuardNtNtCs3mtJKb2XD8V_11parking_lot10raw_rwlock9RawRwLockNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEECseeLknQCOKOd_13polars_python.exit27.i.i.i
  %i.an = load i32, ptr %i.ah, align 8, !dbg !162127, !noalias !162074, !noundef !4821
  %i.ao = load ptr, ptr %i.ai, align 16, !dbg !162128, !noalias !162074, !nonnull !4821, !noundef !4821
  %i.ap = atomicrmw add ptr %i.ao, i64 1 monotonic, align 8, !dbg !162129, !noalias !162074
  %i.aq = icmp slt i64 %i.ap, 0, !dbg !162130
  br i1 %i.aq, label %bb.m, label %bb.l, !dbg !162130

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %i.ai, align 16, !dbg !162131, !noalias !162074, !nonnull !4821, !noundef !4821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.g, ptr noundef nonnull align 16 dereferenceable(368) %i.e, i64 368, i1 false), !dbg !162126, !noalias !162074
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 376, !dbg !162126
  store i32 %i.an, ptr %i.as, align 8, !dbg !162126, !noalias !162074
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 368, !dbg !162126
  store ptr %i.ar, ptr %i.at, align 16, !dbg !162126, !noalias !162074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !162126, !noalias !162074
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.455.0.copyload) ]
  %i.au = load i8, ptr %.sroa.455.0.copyload, align 1, !dbg !162132, !range !4994, !noalias !162074, !noundef !4821
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.556.0.copyload) ]
  %i.av = load i8, ptr %.sroa.556.0.copyload, align 1, !dbg !162133, !range !4858, !noalias !162074, !noundef !4821
  %i.aw = trunc nuw i8 %i.av to i1, !dbg !162133
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.657.0.copyload) ]
  %i.ax = load i64, ptr %.sroa.657.0.copyload, align 8, !dbg !162134, !noalias !162074, !noundef !4821
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.758.0.copyload) ]
  %i.ay = load i8, ptr %.sroa.758.0.copyload, align 1, !dbg !162135, !range !4858, !noalias !162074, !noundef !4821
  %i.az = trunc nuw i8 %i.ay to i1, !dbg !162135
  invoke void @_RNvMs1_NtCs7Ga9Brpi21q_11polars_lazy5frameNtB5_9LazyFrame15collect_batches(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(384) %i.g, i8 noundef %i.au, i1 noundef zeroext %i.aw, i64 noundef %i.ax, i1 noundef zeroext %i.az)
          to label %bb.n unwind label %bb.j, !dbg !162136, !noalias !162074

bb.m:                                             ; preds = %bb.k
  call void @llvm.trap(), !dbg !162137
  unreachable, !dbg !162137

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !162138, !noalias !162074
  %i.ba = load i64, ptr %i.h, align 8, !dbg !162139, !range !5178, !noalias !162074, !noundef !4821 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ba, 18, !dbg !162139
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !162140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 32, i1 false), !dbg !162140, !noalias !162074
  br i1 %.not.i.i.i, label %bb.o, label %bb.t, !dbg !162141

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !162142, !noalias !162074
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66.i.i.i, i64 32, i1 false), !dbg !162143, !noalias !162074
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66.i.i.i), !dbg !162144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !162145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i.i, i64 32, i1 false), !dbg !162125, !noalias !162074
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i), !dbg !162146
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i), !dbg !162147
  %.sroa.4.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i, i64 7, !dbg !162148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.4.8..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !162148, !noalias !162074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !162149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !162150, !noalias !162074
  store i64 1, ptr %i.a, align 8, !dbg !162150, !noalias !162074
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !162150
  store i64 1, ptr %i.bc, align 8, !dbg !162150, !noalias !162074
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !162150 ; 2 uses
  store i8 0, ptr %i.bd, align 8, !dbg !162150, !noalias !162074
  %.sroa.4.0..sroa_idx31.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 17, !dbg !162150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.4.0..sroa_idx31.i.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.4.i.i.i, i64 39, i1 false), !dbg !162150, !noalias !162074
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !dbg !162151, !noalias !162082
  %i.be = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !dbg !162152, !noalias !162082 ; 3 uses
  %i.bf = icmp eq ptr %i.be, null, !dbg !162153
  br i1 %i.bf, label %bb.p, label %bb.s, !dbg !162154, !prof !5146

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #52
          to label %.noexc28.i.i.i unwind label %bb.q, !dbg !162155, !noalias !162074

.noexc28.i.i.i:                                   ; preds = %bb.p
  unreachable, !dbg !162155

bb.q:                                             ; preds = %bb.p
  %i.bg = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex5MutexNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexNtNtCs7Ga9Brpi21q_11polars_lazy5frame14CollectBatchesEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(40) %i.bd)
          to label %.body.i.i.i unwind label %bb.r, !dbg !162156, !noalias !162074

bb.r:                                             ; preds = %bb.q
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !162157, !noalias !162074
  unreachable, !dbg !162157

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.be, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !dbg !162158, !noalias !162074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !162159, !noalias !162074
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i), !dbg !162160
  %.sroa.01.0.copyload2.i = load i64, ptr %i.i, align 16, !dbg !162161, !noalias !162083
  %.sroa.53.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !162161
  %.sroa.53.i.sroa.0.0.copyload59 = load ptr, ptr %.sroa.53.0..sroa_idx4.i, align 8, !dbg !162161, !noalias !162083
  %.sroa.53.i.sroa.5.0..sroa.53.0..sroa_idx4.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !162161
  %2 = load <2 x ptr>, ptr %.sroa.53.i.sroa.5.0..sroa.53.0..sroa_idx4.i.sroa_idx, align 16, !dbg !162161, !noalias !162083
  %.sroa.53.i.sroa.7.0..sroa.53.0..sroa_idx4.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !162161
  %.sroa.53.i.sroa.7.0.copyload62 = load ptr, ptr %.sroa.53.i.sroa.7.0..sroa.53.0..sroa_idx4.i.sroa_idx, align 16, !dbg !162161, !noalias !162083
  %.sroa.53.i.sroa.8.0..sroa.53.0..sroa_idx4.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40, !dbg !162161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.53.i.sroa.8, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.53.i.sroa.8.0..sroa.53.0..sroa_idx4.i.sroa_idx, i64 32, i1 false), !dbg !162161, !noalias !162083
  %.sroa.6.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.i, i64 72, !dbg !162161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.6.0..sroa_idx5.i, i64 312, i1 false), !dbg !162161
  br label %bb.ad, !dbg !162162

bb.t:                                             ; preds = %bb.n
  %.sroa.336.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40, !dbg !162163
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !162164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !162165, !noalias !162074
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.336.0..sroa_idx.i.i.i, i64 32, i1 false), !dbg !162163, !noalias !162074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !162142, !noalias !162074
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66.i.i.i, i64 32, i1 false), !dbg !162166, !noalias !162074
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66.i.i.i), !dbg !162144
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !162164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i.i, i64 32, i1 false), !dbg !162144, !noalias !162074
  store i64 %i.ba, ptr %i.c, align 8, !dbg !162164, !noalias !162074
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !162167, !noalias !162074
  invoke void @_RNvXs2_NtCseeLknQCOKOd_13polars_python5errorNtNtCsbm5zPlkZccl_4pyo33err5PyErrINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_11PyPolarsErrE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.c)
          to label %bb.u unwind label %bb.j, !dbg !162167, !noalias !162074

bb.u:                                             ; preds = %bb.t
  %.sroa.53.i.sroa.0.0.copyload = load ptr, ptr %i.b, align 8, !dbg !162168, !noalias !162083 ; 2 uses
  %.sroa.53.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !162168
  %3 = load <2 x ptr>, ptr %.sroa.53.i.sroa.5.0..sroa_idx, align 8, !dbg !162168, !noalias !162083 ; 2 uses
  %.sroa.53.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !162168
  %.sroa.53.i.sroa.7.0.copyload = load ptr, ptr %.sroa.53.i.sroa.7.0..sroa_idx, align 8, !dbg !162168, !noalias !162083 ; 2 uses
  %.sroa.53.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !162168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.53.i.sroa.8, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.53.i.sroa.8.0..sroa_idx, i64 32, i1 false), !dbg !162168, !noalias !162083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !162169, !noalias !162074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !162165, !noalias !162074
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i), !dbg !162146
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 16 dereferenceable(384) %i.i)
          to label %bb.x unwind label %bb.v, !dbg !162170, !noalias !162074

bb.v:                                             ; preds = %bb.u
  %i.bi = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !162085), !dbg !162170
  call void @llvm.experimental.noalias.scope.decl(metadata !162086), !dbg !162171
  %i.bj = load ptr, ptr %i.ai, align 16, !dbg !162172, !alias.scope !162087, !noalias !162074, !nonnull !4821, !noundef !4821
  %i.bk = atomicrmw sub ptr %i.bj, i64 1 release, align 8, !dbg !162173, !noalias !162088
  %i.bl = icmp eq i64 %i.bk, 1, !dbg !162174
  br i1 %i.bl, label %bb.w, label %.body23, !dbg !162174

bb.w:                                             ; preds = %bb.v
  fence acquire, !dbg !162175
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCs7Ga9Brpi21q_11polars_lazy5frame13cached_arenas11CachedArenaEEE9drop_slowB2d_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ai) #55
          to label %.body23 unwind label %bb.z, !dbg !162176, !noalias !162074

bb.x:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !162089), !dbg !162170
  call void @llvm.experimental.noalias.scope.decl(metadata !162090), !dbg !162177
  %i.bm = load ptr, ptr %i.ai, align 16, !dbg !162178, !alias.scope !162091, !noalias !162074, !nonnull !4821, !noundef !4821
  %i.bn = atomicrmw sub ptr %i.bm, i64 1 release, align 8, !dbg !162179, !noalias !162092
  %i.bo = icmp eq i64 %i.bn, 1, !dbg !162180
  br i1 %i.bo, label %bb.y, label %bb.ad, !dbg !162180

bb.y:                                             ; preds = %bb.x
  fence acquire, !dbg !162181
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCs7Ga9Brpi21q_11polars_lazy5frame13cached_arenas11CachedArenaEEE9drop_slowB2d_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ai) #55
          to label %bb.ad unwind label %bb.ab, !dbg !162182

bb.z:                                             ; preds = %bb.w
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !162170, !noalias !162074
  unreachable, !dbg !162170

bb.aa:                                            ; preds = %.body.i.i.i, %bb.e
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !162183, !noalias !162074
  unreachable, !dbg !162183

bb.ab:                                            ; preds = %bb.y, %_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null, !dbg !162184
  br label %.body23, !dbg !162184

.body23:                                          ; preds = %bb.d, %bb.e, %.body.i.i.i, %bb.v, %bb.w, %bb.ab
  %eh.lpad-body24 = phi { ptr, i32 } [ %i.br, %bb.ab ], [ %i.bi, %bb.v ], [ %i.bi, %bb.w ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.w, %bb.e ], [ %i.w, %bb.d ]
  %i.bs = extractvalue { ptr, i32 } %eh.lpad-body24, 0, !dbg !162184
  %i.bt = invoke { ptr, ptr } @_RNvNvNtCsh8eZTKRCwoO_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bs)
          to label %bb.ae unwind label %bb.ac, !dbg !162185 ; 2 uses

bb.ac:                                            ; preds = %.body23
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #53, !dbg !162186
  unreachable, !dbg !162186

bb.ad:                                            ; preds = %bb.x, %bb.s, %bb.y
  %.sroa.53.i.sroa.0.0 = phi ptr [ %.sroa.53.i.sroa.0.0.copyload59, %bb.s ], [ %.sroa.53.i.sroa.0.0.copyload, %bb.x ], [ %.sroa.53.i.sroa.0.0.copyload, %bb.y ], !dbg !162187 ; 2 uses
  %.sroa.53.i.sroa.7.0 = phi ptr [ %.sroa.53.i.sroa.7.0.copyload62, %bb.s ], [ %.sroa.53.i.sroa.7.0.copyload, %bb.x ], [ %.sroa.53.i.sroa.7.0.copyload, %bb.y ], !dbg !162187
  %.sroa.01.0.i = phi i64 [ %.sroa.01.0.copyload2.i, %bb.s ], [ -9223372036854775778, %bb.x ], [ -9223372036854775778, %bb.y ], !dbg !162187 ; 2 uses
  %.sroa.66.0.i = phi ptr [ %i.be, %bb.s ], [ undef, %bb.x ], [ undef, %bb.y ], !dbg !162102
  %4 = phi <2 x ptr> [ %2, %bb.s ], [ %3, %bb.x ], [ %3, %bb.y ], !dbg !162187 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !162124, !noalias !162074
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.53.i.sroa.8, i64 32, i1 false), !dbg !162188
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.53.i.sroa.8), !dbg !162189
  %.sroa.15.72..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 32, !dbg !162190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.15.72..sroa_idx, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.6.i, i64 312, i1 false), !dbg !162190
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i), !dbg !162191
  store i64 %.sroa.01.0.i, ptr %i.j, align 16, !dbg !162192
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !162192
  store ptr %.sroa.53.i.sroa.0.0, ptr %.sroa.447.0..sroa_idx, align 8, !dbg !162192
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !162192
  store <2 x ptr> %4, ptr %.sroa.548.0..sroa_idx, align 16, !dbg !162192
  %.sroa.750.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !162192
  store ptr %.sroa.53.i.sroa.7.0, ptr %.sroa.750.0..sroa_idx, align 16, !dbg !162192
  %.sroa.851.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40, !dbg !162192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.851.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.15, i64 344, i1 false), !dbg !162192
  %.sroa.952.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 384, !dbg !162192
  store ptr %.sroa.66.0.i, ptr %.sroa.952.0..sroa_idx, align 16, !dbg !162192
  %i.bv = extractelement <2 x ptr> %4, i64 0, !dbg !162193
  br label %bb.af, !dbg !162193

bb.ae:                                            ; preds = %.body23
  %i.bw = extractvalue { ptr, ptr } %i.bt, 0, !dbg !162185 ; 2 uses
  %i.bx = extractvalue { ptr, ptr } %i.bt, 1, !dbg !162185 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bx) ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !162194
  store ptr %i.bw, ptr %i.by, align 8, !dbg !162194
  %i.bz = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !162194
  store ptr %i.bx, ptr %i.bz, align 16, !dbg !162194
  store i64 -9223372036854775777, ptr %i.j, align 16, !dbg !162194
  br label %bb.af, !dbg !162193

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sroa.6.0.copyload = phi ptr [ %i.bx, %bb.ae ], [ %i.bv, %bb.ad ] ; 10 uses
  %.sroa.5.0.copyload = phi ptr [ %i.bw, %bb.ae ], [ %.sroa.53.i.sroa.0.0, %bb.ad ] ; 8 uses
  %.sroa.03.0.copyload = phi i64 [ -9223372036854775777, %bb.ae ], [ %.sroa.01.0.i, %bb.ad ] ; 2 uses
  invoke void @_RNvNtCsgjwxzEoLG5s_12polars_error5abort18unregister_catcher()
          to label %bb.ag unwind label %bb.at, !dbg !162195

bb.ag:                                            ; preds = %bb.af
  %i.ca = icmp eq i64 %.sroa.03.0.copyload, -9223372036854775777, !dbg !162196
  br i1 %i.ca, label %bb.ah, label %bb.ap, !dbg !162197

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.cb = invoke noundef i8 @_RNvNtCsgjwxzEoLG5s_12polars_error5abort19decode_polars_abort(ptr noundef nonnull %.sroa.5.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.6.0.copyload)
          to label %bb.ai unwind label %bb.an, !dbg !162198 ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  %.not.i = icmp eq i8 %i.cb, 2, !dbg !162198
  br i1 %.not.i, label %.noexc, label %bb.aj, !dbg !162199

bb.aj:                                            ; preds = %bb.ai
  %i.cc = load ptr, ptr %.sroa.6.0.copyload, align 8, !dbg !162200, !invariant.load !4821, !alias.scope !162094 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cc, null, !dbg !162200
  br i1 %.not.i.i, label %bb.al, label %bb.ak, !dbg !162200

bb.ak:                                            ; preds = %bb.aj
  invoke void %i.cc(ptr noundef nonnull %.sroa.5.0.copyload)
          to label %bb.al unwind label %bb.am, !dbg !162200

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 8, !dbg !162201
  %i.ce = load i64, ptr %i.cd, align 8, !dbg !162201, !range !5300, !invariant.load !4821, !alias.scope !162094 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 0, !dbg !162202
  br i1 %i.cf, label %bb.ar, label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i.i.i, !dbg !162202

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.al
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 16, !dbg !162201
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !162203, !range !5301, !invariant.load !4821, !alias.scope !162094
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %i.ce, i64 noundef range(i64 1, -9223372036854775807) %i.ch) #48, !dbg !162204
  br label %bb.ar, !dbg !162205

bb.am:                                            ; preds = %bb.ak
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 8, !dbg !162206
  %i.ck = load i64, ptr %i.cj, align 8, !dbg !162206, !range !5300, !invariant.load !4821, !alias.scope !162094 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 0, !dbg !162207
  br i1 %i.cl, label %.body.thread, label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i4.i.i, !dbg !162207

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.am
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 16, !dbg !162206
  %i.cn = load i64, ptr %i.cm, align 8, !dbg !162208, !range !5301, !invariant.load !4821, !alias.scope !162094
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %i.ck, i64 noundef range(i64 1, -9223372036854775807) %i.cn) #48, !dbg !162209
  br label %.body.thread, !dbg !162210

.noexc:                                           ; preds = %bb.ai
  call void @_RNvNtCsh8eZTKRCwoO_3std5panic13resume_unwind(ptr noundef nonnull %.sroa.5.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.6.0.copyload) #52, !dbg !162211
  unreachable

bb.an:                                            ; preds = %bb.ah
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECseeLknQCOKOd_13polars_python(ptr nonnull %.sroa.5.0.copyload, ptr nonnull readonly align 8 dereferenceable(32) %.sroa.6.0.copyload) #51
          to label %.body.thread unwind label %bb.ao, !dbg !162212

bb.ao:                                            ; preds = %bb.an
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !162213
  unreachable, !dbg !162213

bb.ap:                                            ; preds = %bb.ag
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !162214
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !162215
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %.sroa.616.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(376) %.sroa.7.0..sroa_idx, i64 376, i1 false), !dbg !162216
  store i64 %.sroa.03.0.copyload, ptr %0, align 16, !dbg !162215
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162215
  store ptr %.sroa.5.0.copyload, ptr %.sroa.414.0..sroa_idx, align 8, !dbg !162215
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !162215
  store ptr %.sroa.6.0.copyload, ptr %.sroa.515.0..sroa_idx, align 16, !dbg !162215
  br label %bb.aq, !dbg !162217

bb.aq:                                            ; preds = %bb.ar, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !162098
  br label %bb.as, !dbg !162098

bb.ar:                                            ; preds = %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.al
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162218
  store i8 %i.cb, ptr %i.cq, align 8, !dbg !162218
  store i64 -9223372036854775777, ptr %0, align 16, !dbg !162218
  br label %bb.aq, !dbg !162219

bb.as:                                            ; preds = %bb.aq, %bb.b
  ret void, !dbg !162220

bb.at:                                            ; preds = %bb.af
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtNtNtCseeLknQCOKOd_13polars_python9lazyframe7general16PyCollectBatchesNtNtCsbm5zPlkZccl_4pyo33err5PyErrEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEB1c_(ptr noalias noundef align 16 dereferenceable(400) %i.j) #51
          to label %.body.thread unwind label %bb.au, !dbg !162098

bb.au:                                            ; preds = %bb.at
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !162221
  unreachable, !dbg !162221

.body.thread:                                     ; preds = %bb.an, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.am, %bb.at
  %eh.lpad-body78 = phi { ptr, i32 } [ %i.cr, %bb.at ], [ %i.co, %bb.an ], [ %i.ci, %bb.am ], [ %i.ci, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i4.i.i ]
  resume { ptr, i32 } %eh.lpad-body78, !dbg !162221
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsgjwxzEoLG5s_12polars_error5abort18catch_polars_abortINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanNtB4_11PolarsErrorEINtNtNtB11_5panic11unwind_safe16AssertUnwindSafeNCNvMNtNtCseeLknQCOKOd_13polars_python9lazyframe5serdeNtB3y_11PyLazyFrame18deserialize_binary0EEB3A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([368 x i8]) align 16 captures(none) dereferenceable(368) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !162222 {
bb.a:
  %i.a = alloca [56 x i8], align 16               ; 5 uses
  %i.b = alloca [368 x i8], align 16              ; 6 uses
  %.sroa.10 = alloca [352 x i8], align 16         ; 4 uses
  %i.c = alloca [368 x i8], align 16              ; 11 uses
  %i.d = invoke noundef i8 @_RNvNtCsgjwxzEoLG5s_12polars_error5abort20try_register_catcher()
          to label %bb.b unwind label %bb.aa, !dbg !162318 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i8 %i.d, 2, !dbg !162331
  br i1 %.not, label %bb.g, label %bb.c, !dbg !162332

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162333
  store i8 %i.d, ptr %i.e, align 8, !dbg !162333
  store i64 -9223372036854775777, ptr %0, align 16, !dbg !162333
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162321), !dbg !162334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162322), !dbg !162335
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162323), !dbg !162336
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !162337
  %.val5.i.i.i = load i64, ptr %i.f, align 8, !dbg !162337, !alias.scope !162324, !noundef !4821 ; 2 uses
  %i.g = icmp eq i64 %.val5.i.i.i, 0, !dbg !162338
  br i1 %i.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsh8eZTKRCwoO_3std2io8buffered9bufreader6buffer6BufferECseeLknQCOKOd_13polars_python.exit.i.i.i, label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, !dbg !162338

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.val4.i.i.i = load ptr, ptr %1, align 8, !dbg !162337, !alias.scope !162324, !nonnull !4821, !noundef !4821
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i, i64 noundef %.val5.i.i.i, i64 noundef 1) #48, !dbg !162339, !noalias !162324
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsh8eZTKRCwoO_3std2io8buffered9bufreader6buffer6BufferECseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !162340

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsh8eZTKRCwoO_3std2io8buffered9bufreader6buffer6BufferECseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !162337
  %.val.i.i.i = load ptr, ptr %i.h, align 8, !dbg !162337, !alias.scope !162324 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !162337
  %.val1.i.i.i = load ptr, ptr %i.i, align 8, !dbg !162337, !alias.scope !162324, !nonnull !4821, !align !4995, !noundef !4821 ; 5 uses
  %i.j = load ptr, ptr %.val1.i.i.i, align 8, !dbg !162341, !invariant.load !4821, !noalias !162324 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null, !dbg !162341
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d, !dbg !162341

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsh8eZTKRCwoO_3std2io8buffered9bufreader6buffer6BufferECseeLknQCOKOd_13polars_python.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.j(ptr noundef nonnull %.val.i.i.i)
          to label %bb.e unwind label %bb.f, !dbg !162341, !noalias !162324

bb.e:                                             ; preds = %bb.d, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsh8eZTKRCwoO_3std2io8buffered9bufreader6buffer6BufferECseeLknQCOKOd_13polars_python.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8, !dbg !162342
  %i.l = load i64, ptr %i.k, align 8, !dbg !162342, !range !5300, !invariant.load !4821, !noalias !162324 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0, !dbg !162343
  br i1 %i.m, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeNCNvMNtNtCseeLknQCOKOd_13polars_python9lazyframe5serdeNtB1y_11PyLazyFrame18deserialize_binary0EEB1A_.exit, label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, !dbg !162343

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16, !dbg !162342
  %i.o = load i64, ptr %i.n, align 8, !dbg !162344, !range !5301, !invariant.load !4821, !noalias !162324
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) %i.o) #48, !dbg !162345, !noalias !162324
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeNCNvMNtNtCseeLknQCOKOd_13polars_python9lazyframe5serdeNtB1y_11PyLazyFrame18deserialize_binary0EEB1A_.exit, !dbg !162346

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8, !dbg !162347
  %i.r = load i64, ptr %i.q, align 8, !dbg !162347, !range !5300, !invariant.load !4821, !noalias !162324 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0, !dbg !162348
  br i1 %i.s, label %common.resume, label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, !dbg !162348

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16, !dbg !162347
  %i.u = load i64, ptr %i.t, align 8, !dbg !162349, !range !5301, !invariant.load !4821, !noalias !162324
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) %i.u) #48, !dbg !162350, !noalias !162324
  br label %common.resume, !dbg !162351

common.resume:                                    ; preds = %bb.aa, %bb.y, %bb.s, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.t, %bb.f, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.p, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ], [ %i.ay, %bb.aa ], [ %i.aw, %bb.y ], [ %i.at, %bb.t ], [ %i.an, %bb.s ], [ %i.an, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i4.i.i ]
  resume { ptr, i32 } %common.resume.op, !dbg !162352

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !162353
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !162354
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10), !dbg !162355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !162356, !noalias !162327
  %i.v = load <2 x ptr>, ptr %1, align 8, !dbg !162354
  store <2 x ptr> %i.v, ptr %i.a, align 16, !dbg !162357
  %.sroa.10.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !162357
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.10.0..sroa_idx33, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.547.0..sroa_idx, i64 40, i1 false), !dbg !162357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !162358
  invoke void @_RINvMs0_NtNtCsfcROwRM8ZtH_11polars_plan3dsl4planNtB6_7DslPlan21deserialize_versionedINtNtNtNtCsh8eZTKRCwoO_3std2io8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEB2V_(ptr noalias noundef nonnull sret([368 x i8]) align 16 captures(address) dereferenceable(368) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.j unwind label %bb.h, !dbg !162359

bb.h:                                             ; preds = %bb.g
end_hunk_0
