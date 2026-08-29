Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish_gettext-115224af74263944.fish_gettext.778c4f22e7cc23d5-cgu.0?download=true
inline.NumInlined: 214
inline.NumDeleted: 138
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvCsaglNHct1YhZ_12fish_gettext23get_available_languages
define noundef nonnull align 8 ptr @_RNvCsaglNHct1YhZ_12fish_gettext23get_available_languages() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsaglNHct1YhZ_12fish_gettext19AVAILABLE_LANGUAGES, i64 48) acquire, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3set7HashSetNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEE5force0EB2l_.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvCsaglNHct1YhZ_12fish_gettext19AVAILABLE_LANGUAGES, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvCsaglNHct1YhZ_12fish_gettext19AVAILABLE_LANGUAGES, i64 48), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3set7HashSetNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEE5force0EB2l_.exit

_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3set7HashSetNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEE5force0EB2l_.exit: ; preds = %bb.a, %bb.b
  ret ptr @_RNvCsaglNHct1YhZ_12fish_gettext19AVAILABLE_LANGUAGES
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCsaglNHct1YhZ_12fish_gettext23get_language_precedence(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB2J_EEEE4lockCsaglNHct1YhZ_12fish_gettext(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 @_RNvCsaglNHct1YhZ_12fish_gettext19LANGUAGE_PRECEDENCE)
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.c = load i64, ptr %i.b, align 8, !range !127, !alias.scope !124, !noalias !128, !noundef !4
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB3o_EEEEINtBM_11PoisonErrorBH_EE6unwrapCsaglNHct1YhZ_12fish_gettext.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !130
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !124, !noalias !128, !nonnull !4, !align !5, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !6, !alias.scope !124, !noalias !128, !noundef !4
  store ptr %i.f, ptr %i.a, align 8, !noalias !130
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.h, ptr %i.i, align 8, !noalias !130
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #22
          to label %bb.d unwind label %bb.c, !noalias !124

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB3B_EEEEEECsaglNHct1YhZ_12fish_gettext(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #23
          to label %common.resume unwind label %bb.e, !noalias !124

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !124
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.ak, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB3o_EEEEINtBM_11PoisonErrorBH_EE6unwrapCsaglNHct1YhZ_12fish_gettext.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !124, !noalias !128, !nonnull !4, !align !5, !noundef !4 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !6, !alias.scope !124, !noalias !128, !noundef !4 ; 2 uses
  %i.p = trunc nuw i8 %i.o to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noundef !4 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.u = shl nuw i64 %i.t, 4                      ; 2 uses
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %.loopexit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB3o_EEEEINtBM_11PoisonErrorBH_EE6unwrapCsaglNHct1YhZ_12fish_gettext.exit
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !134
  %i.w = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) %i.u, i64 noundef 8) #25, !noalias !134 ; 6 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.f, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  %xtraiter = and i64 %i.t, 1
  %i.y = icmp eq i64 %i.t, 1
  br i1 %i.y, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter = and i64 %i.t, -2
  br label %.preheader.i.i.i

bb.f:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.u) #22
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %i.z = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.aj, %.preheader.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i ]
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.z ; 2 uses
  %.val15.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !noalias !137, !nonnull !4, !noundef !4
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %.val16.i.i.i.i.i.i = load i64, ptr %i.ab, align 8, !noalias !137, !noundef !4
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.z ; 2 uses
  store ptr %.val15.i.i.i.i.i.i, ptr %i.ac, align 8, !noalias !148
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %.val16.i.i.i.i.i.i, ptr %i.ad, align 8, !noalias !157
  %i.ae = or disjoint i64 %i.z, 1                 ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.ae ; 2 uses
  %.val15.i.i.i.i.i.i.1 = load ptr, ptr %i.af, align 8, !noalias !137, !nonnull !4, !noundef !4
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %.val16.i.i.i.i.i.i.1 = load i64, ptr %i.ag, align 8, !noalias !137, !noundef !4
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.ae ; 2 uses
  store ptr %.val15.i.i.i.i.i.i.1, ptr %i.ah, align 8, !noalias !148
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %.val16.i.i.i.i.i.i.1, ptr %i.ai, align 8, !noalias !157
  %i.aj = add nuw i64 %i.z, 2                     ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB3i_EEEEECsaglNHct1YhZ_12fish_gettext(ptr nonnull %i.m, i8 %i.o) #23
          to label %common.resume unwind label %bb.l

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.aj, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod6 = trunc i64 %i.t to i1
  call void @llvm.assume(i1 %lcmp.mod6)
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %.epil.init ; 2 uses
  %.val15.i.i.i.i.i.i.epil = load ptr, ptr %i.al, align 8, !noalias !137, !nonnull !4, !noundef !4
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %.val16.i.i.i.i.i.i.epil = load i64, ptr %i.am, align 8, !noalias !137, !noundef !4
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.epil.init ; 2 uses
  store ptr %.val15.i.i.i.i.i.i.epil, ptr %i.an, align 8, !noalias !148
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %.val16.i.i.i.i.i.i.epil, ptr %i.ao, align 8, !noalias !157
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.i.i.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB3o_EEEEINtBM_11PoisonErrorBH_EE6unwrapCsaglNHct1YhZ_12fish_gettext.exit
  %i.ap = phi ptr [ inttoptr (i64 8 to ptr), %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB3o_EEEEINtBM_11PoisonErrorBH_EE6unwrapCsaglNHct1YhZ_12fish_gettext.exit ], [ %i.w, %.loopexit.loopexit.unr-lcssa ], [ %i.w, %.preheader.i.i.i.epil.preheader ]
  store i64 %i.t, ptr %0, align 8, !alias.scope !131
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !131
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.t, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !131
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  br i1 %i.p, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.ar = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.as = and i64 %i.ar, 9223372036854775807
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  %i.au = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #19
  br i1 %i.au, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  store atomic i8 1, ptr %i.aq monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h, %.loopexit
  %i.av = atomicrmw xchg ptr %i.m, i32 0 release, align 4
  %i.aw = icmp eq i32 %i.av, 2
  br i1 %i.aw, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB3i_EEEEECsaglNHct1YhZ_12fish_gettext.exit, !prof !8

bb.k:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.m)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB3i_EEEEECsaglNHct1YhZ_12fish_gettext.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB3i_EEEEECsaglNHct1YhZ_12fish_gettext.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.k
  ret void

bb.l:                                             ; preds = %bb.g
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCsaglNHct1YhZ_12fish_gettext23set_language_precedence(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 576460752303423488) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = mul nuw i64 %1, 24                       ; 4 uses
  %or.cond.not.i.i.i = icmp samesign ugt i64 %1, 384307168202282325
  br i1 %or.cond.not.i.i.i, label %bb.c, label %bb.b, !prof !158

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %1, 0                        ; 2 uses
  br i1 %i.d, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB2i_EEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB34_5slice4iter4IterNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCNvB4c_23set_language_precedence0EE9from_iterB4c_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !159
  %i.e = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) %i.c, i64 noundef 8) #25, !noalias !159 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %.preheader.i.i.i

bb.c:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.a
  %.sroa.10.0.ph.i.i = phi i64 [ %i.c, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i ], [ undef, %bb.a ]
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.a ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.10.0.ph.i.i) #22, !noalias !164
  unreachable

.preheader.i.i.i:                                 ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.e
  %.val10.i.i.i.i.i.i = phi i64 [ %i.p, %bb.e ], [ 0, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.val10.i.i.i.i.i.i ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !165, !noalias !170, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !165, !noalias !170, !noundef !4
  %i.k = invoke { ptr, ptr } @_RINvMs3_NtCs5HGUHib7p01_3phf3mapINtB6_3MapNtCslSwhfOFuxKz_17fish_localization8LanguageRIBv_ReB1r_EE9get_entryBE_ECsaglNHct1YhZ_12fish_gettext(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @_RNvCs4JGtqSZYfcN_17fish_gettext_maps8CATALOGS, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %.noexc.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !183 ; 2 uses

.noexc.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i
  %i.l = extractvalue { ptr, ptr } %i.k, 0
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.e, !prof !8

bb.d:                                             ; preds = %.noexc.i.i.i.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 65, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #20
          to label %.noexc15.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !183

.noexc15.i.i.i.i.i.i:                             ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.n = load ptr, ptr %i.m, align 8, !noalias !170, !nonnull !4, !align !5, !noundef !4
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.val10.i.i.i.i.i.i ; 3 uses
  store ptr %i.h, ptr %i.o, align 8, !noalias !184
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.j, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !184
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.n, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !184
  %i.p = add nuw nsw i64 %.val10.i.i.i.i.i.i, 1   ; 2 uses
  %i.q = icmp eq i64 %i.p, %1
  br i1 %i.q, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB2i_EEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB34_5slice4iter4IterNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCNvB4c_23set_language_precedence0EE9from_iterB4c_.exit, label %.preheader.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %.preheader.i.i.i
  %lpad.loopexit.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i.i.i.i.i.i:                   ; preds = %bb.d
  %lpad.loopexit.split-lp.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

common.resume:                                    ; preds = %.body, %bb.g, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i.i.i.i.i.i, %.body.i ], [ %eh.lpad-body, %bb.g ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !164
  br label %common.resume

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB2i_EEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB34_5slice4iter4IterNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCNvB4c_23set_language_precedence0EE9from_iterB4c_.exit: ; preds = %bb.e, %bb.b
  %i.r = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.e, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB2J_EEEE4lockCsaglNHct1YhZ_12fish_gettext(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 @_RNvCsaglNHct1YhZ_12fish_gettext19LANGUAGE_PRECEDENCE)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB2i_EEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB34_5slice4iter4IterNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCNvB4c_23set_language_precedence0EE9from_iterB4c_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.s, %bb.f ], [ %i.aa, %bb.j ] ; 2 uses
  br i1 %i.d, label %common.resume, label %bb.g

bb.g:                                             ; preds = %.body
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #25
  br label %common.resume

bb.h:                                             ; preds = %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB2i_EEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB34_5slice4iter4IterNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCNvB4c_23set_language_precedence0EE9from_iterB4c_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.t = load i64, ptr %i.b, align 8, !range !127, !alias.scope !189, !noalias !192, !noundef !4
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.i, label %bb.m, !prof !8

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !194
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !189, !noalias !192, !nonnull !4, !align !5, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = load i8, ptr %i.x, align 8, !range !6, !alias.scope !189, !noalias !192, !noundef !4
  store ptr %i.w, ptr %i.a, align 8, !noalias !194
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.y, ptr %i.z, align 8, !noalias !194
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #22
          to label %bb.k unwind label %bb.j, !noalias !189

bb.j:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB3B_EEEEEECsaglNHct1YhZ_12fish_gettext(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #23
          to label %.body unwind label %bb.l, !noalias !189

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !189
  unreachable

bb.m:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !189, !noalias !192, !nonnull !4, !align !5, !noundef !4 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.af = load i8, ptr %i.ae, align 8, !range !6, !alias.scope !189, !noalias !192, !noundef !4
  %i.ag = trunc nuw i8 %i.af to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %.val5 = load i64, ptr %i.ah, align 8           ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ad, i64 16     ; 2 uses
  %i.aj = icmp eq i64 %.val5, 0
  br i1 %i.aj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB2n_EEEECsaglNHct1YhZ_12fish_gettext.exit9, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val6 = load ptr, ptr %i.ai, align 8, !nonnull !4, !noundef !4
  %i.ak = mul nuw i64 %.val5, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 8) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB2n_EEEECsaglNHct1YhZ_12fish_gettext.exit9

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB2n_EEEECsaglNHct1YhZ_12fish_gettext.exit9: ; preds = %bb.n, %bb.m
  store i64 %1, ptr %i.ah, align 8
  store ptr %i.r, ptr %i.ai, align 8
  %.sroa.8.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 %1, ptr %.sroa.8.0..sroa_idx14, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  br i1 %i.ag, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB2n_EEEECsaglNHct1YhZ_12fish_gettext.exit9
  %i.am = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.an = and i64 %i.am, 9223372036854775807
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.p, !prof !7

bb.p:                                             ; preds = %bb.o
  %i.ap = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #19
  br i1 %i.ap, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr %i.al monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.q, %bb.p, %bb.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB2n_EEEECsaglNHct1YhZ_12fish_gettext.exit9
  %i.aq = atomicrmw xchg ptr %i.ad, i32 0 release, align 4
  %i.ar = icmp eq i32 %i.aq, 2
  br i1 %i.ar, label %bb.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB3i_EEEEECsaglNHct1YhZ_12fish_gettext.exit, !prof !8

bb.r:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ad)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB3i_EEEEECsaglNHct1YhZ_12fish_gettext.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB3i_EEEEECsaglNHct1YhZ_12fish_gettext.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.r
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvCsaglNHct1YhZ_12fish_gettext7gettext(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB2J_EEEE4lockCsaglNHct1YhZ_12fish_gettext(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 @_RNvCsaglNHct1YhZ_12fish_gettext19LANGUAGE_PRECEDENCE)
  call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.c = load i64, ptr %i.b, align 8, !range !127, !alias.scope !195, !noalias !198, !noundef !4
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB3o_EEEEINtBM_11PoisonErrorBH_EE6unwrapCsaglNHct1YhZ_12fish_gettext.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !200
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !195, !noalias !198, !nonnull !4, !align !5, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !6, !alias.scope !195, !noalias !198, !noundef !4
  store ptr %i.f, ptr %i.a, align 8, !noalias !200
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.h, ptr %i.i, align 8, !noalias !200
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #22
          to label %bb.d unwind label %bb.c, !noalias !195

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB3B_EEEEEECsaglNHct1YhZ_12fish_gettext(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #23
          to label %common.resume unwind label %bb.e, !noalias !195

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !195
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.ai, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB3o_EEEEINtBM_11PoisonErrorBH_EE6unwrapCsaglNHct1YhZ_12fish_gettext.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !195, !noalias !198, !nonnull !4, !align !5, !noundef !4 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !6, !alias.scope !195, !noalias !198, !noundef !4 ; 2 uses
  %i.p = trunc nuw i8 %i.o to i1                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.t, 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.01.017, i64 24 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.u
  br i1 %i.x, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB3o_EEEEINtBM_11PoisonErrorBH_EE6unwrapCsaglNHct1YhZ_12fish_gettext.exit, %bb.f
  %.sroa.01.017 = phi ptr [ %i.w, %bb.f ], [ %i.r, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB3o_EEEEINtBM_11PoisonErrorBH_EE6unwrapCsaglNHct1YhZ_12fish_gettext.exit ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.01.017, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !align !5, !noundef !4
  %i.aa = invoke { ptr, ptr } @_RINvMs3_NtCs5HGUHib7p01_3phf3mapINtB6_3MapReBE_E9get_entryeECsaglNHct1YhZ_12fish_gettext(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
          to label %bb.k unwind label %bb.j       ; 2 uses

._crit_edge:                                      ; preds = %bb.f, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB3o_EEEEINtBM_11PoisonErrorBH_EE6unwrapCsaglNHct1YhZ_12fish_gettext.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  br i1 %i.p, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.ac = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ad = and i64 %i.ac, 9223372036854775807
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.af = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #19
  br i1 %i.af, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store atomic i8 1, ptr %i.ab monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g, %._crit_edge
  %i.ag = atomicrmw xchg ptr %i.m, i32 0 release, align 4
  %i.ah = icmp eq i32 %i.ag, 2
  br i1 %i.ah, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB3i_EEEEECsaglNHct1YhZ_12fish_gettext.exit.sink.split, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB3i_EEEEECsaglNHct1YhZ_12fish_gettext.exit, !prof !8

bb.j:                                             ; preds = %.lr.ph
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB3i_EEEEECsaglNHct1YhZ_12fish_gettext(ptr nonnull %i.m, i8 %i.o) #23
          to label %common.resume unwind label %bb.p

bb.k:                                             ; preds = %.lr.ph
  %i.aj = extractvalue { ptr, ptr } %i.aa, 0
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %bb.f, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = extractvalue { ptr, ptr } %i.aa, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8, !noundef !4 ; 2 uses
end_hunk_0
