Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.14?download=true
inline.NumInlined: 3742
inline.NumDeleted: 1475
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RINvNtNtCs2r1H4NiMXj9_12regex_syntax3ast7visitor5visitQNtNtNtCs7gfv9tzbXmh_6yara_x2re6parser9ValidatorEBX_:bb.a
  br label %bb.al

bb.ak:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 88
  %i.de = load ptr, ptr %i.dd, align 8, !noalias !3725, !nonnull !6, !noundef !6
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ag
  %.sroa.0.1.i = phi ptr [ %.sroa.6.0.copyload.i, %bb.ag ], [ %.sroa.6.0.copyload.i, %bb.ai ], [ %i.dc, %bb.aj ], [ %i.de, %bb.ak ]
  %i.df = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !3753, !noalias !3754, !noundef !6 ; 3 uses
  %i.dg = load i64, ptr %i.m, align 8, !range !13, !alias.scope !3753, !noalias !3754, !noundef !6
  %i.dh = icmp eq i64 %i.df, %i.dg
  br i1 %i.dh, label %bb.am, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTRNtNtCs2r1H4NiMXj9_12regex_syntax3ast3AstNtNtBJ_7visitor5FrameEE8push_mutCs7gfv9tzbXmh_6yara_x.exit63.i

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTRNtNtCs2r1H4NiMXj9_12regex_syntax3ast3AstNtNtBQ_7visitor5FrameEE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m) #34
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTRNtNtCs2r1H4NiMXj9_12regex_syntax3ast3AstNtNtBJ_7visitor5FrameEE8push_mutCs7gfv9tzbXmh_6yara_x.exit63.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTRNtNtCs2r1H4NiMXj9_12regex_syntax3ast3AstNtNtBJ_7visitor5FrameEE8push_mutCs7gfv9tzbXmh_6yara_x.exit63.i: ; preds = %bb.am, %bb.al
  %i.di = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !3753, !noalias !3754, !nonnull !6, !noundef !6
  %i.dj = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %i.df ; 4 uses
  store ptr %.sroa.053.0.copyload.i, ptr %i.dj, align 8, !noalias !3725
  %.sroa.474.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i64 %i.cx, ptr %.sroa.474.0..sroa_idx.i, align 8, !noalias !3725
  %.sroa.575.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store ptr %.sroa.6.0.copyload.i, ptr %.sroa.575.0..sroa_idx.i, align 8, !noalias !3725
  %.sroa.676.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.676.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1030.0..sroa_idx.i, i64 16, i1 false), !noalias !3725
  br label %.backedge.i

bb.an:                                            ; preds = %.noexc14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.e, i64 104, i1 false), !noalias !3730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3727
  br label %bb.ap

bb.ao:                                            ; preds = %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3727
  %i.dk = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !3726, !noalias !3728, !noundef !6 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %._crit_edge.i, label %.lr.ph.i

.loopexit:                                        ; preds = %.lr.ph.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.ac, %.lr.ph.i
  %lpad.loopexit18 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.backedge.i.i.i, %bb.i, %bb.o
  %lpad.loopexit21 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.am, %bb.ae, %bb.ad, %.backedge.i, %bb.y, %bb.s
  %lpad.loopexit24 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.a
  %lpad.loopexit.split-lp25 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit18, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit21, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit24, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp25, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2r1H4NiMXj9_12regex_syntax3ast7visitor11HeapVisitorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(48) %i.m) #31
          to label %bb.ar unwind label %bb.aq

bb.ap:                                            ; preds = %bb.an, %bb.ah, %bb.af, %._crit_edge.i, %bb.z, %._crit_edge131.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2r1H4NiMXj9_12regex_syntax3ast7visitor11HeapVisitorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(48) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.aq:                                            ; preds = %.loopexit.split-lp
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.ar:                                            ; preds = %.loopexit.split-lp
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1r_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEENCNvMs9_BZ_BW_3new0ECs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #3 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardINtNtNtNtB6_11collections4hash3map7HashMapNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdNtB2b_14CodeCacheEntryEENCNvMse_BZ_BW_3new0EB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #3 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardINtNtNtNtB6_11collections4hash3map7HashMapNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdNtB20_14CodeCacheEntryEENCNvMsd_BP_BM_3new0EB24_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 %2) unnamed_addr #3 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %.sink = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelINtNtB1f_6option6OptionNtNtB6_6string6StringEEENCNvMsa_NtNtCs7gfv9tzbXmh_6yara_x8compiler6reportNtB4g_13ReportBuilder13create_report0ETB2A_B3K_EEB4k_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = invoke { ptr, ptr } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelINtNtCskKLDkoKarTP_4core6option6OptionNtNtBa_6string6StringEEENtNtNtNtB1Q_4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropTBY_B2n_EENCINvNtNtB2R_8adapters10filter_map19filter_map_try_foldBX_B4a_B3A_INtNtB1Q_6result6ResultB3A_zENCNvMsa_NtNtCs7gfv9tzbXmh_6yara_x8compiler6reportNtB5Z_13ReportBuilder13create_report0NCINvNtB8_16in_place_collect24write_in_place_with_dropB4a_E0E0B5o_EB63_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull %i.g, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.i, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelINtNtCskKLDkoKarTP_4core6option6OptionNtNtB9_6string6StringEEENtNtNtB1P_3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelINtNtB4_6option6OptionNtNtB1u_6string6StringEEENCNvMsa_NtNtCs7gfv9tzbXmh_6yara_x8compiler6reportNtB3S_13ReportBuilder13create_report0EEB3W_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.d to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = udiv exact i64 %i.m, 56                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.p, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelINtNtCskKLDkoKarTP_4core6option6OptionNtNtB9_6string6StringEEE32forget_allocation_drop_remainingCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelINtNtB4_6option6OptionNtNtBI_6string6StringEETB1M_B2V_EEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #31
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelINtNtCskKLDkoKarTP_4core6option6OptionNtNtB9_6string6StringEEENtNtNtB1P_3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelINtNtB4_6option6OptionNtNtB1u_6string6StringEEENCNvMsa_NtNtCs7gfv9tzbXmh_6yara_x8compiler6reportNtB3S_13ReportBuilder13create_report0EEB3W_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCs7gfv9tzbXmh_6yara_x2re3hir3HirENCNvMs3_B2n_B2l_6concat0ENtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirEB2r_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !6
  %i.g = mul i64 %i.c, 56                         ; 7 uses
  %i.h = udiv i64 %i.g, 48                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs7gfv9tzbXmh_6yara_x2re3hir3HirENCNvMs3_B1N_B1L_6concat0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirENCINvNtB12_16in_place_collect24write_in_place_with_dropB45_E0INtNtBc_6result6ResultB3u_zEEB1R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7gfv9tzbXmh_6yara_x2re3hir3HirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs7gfv9tzbXmh_6yara_x2re3hir3HirENCNvMs3_B1Z_B1X_6concat0EEB23_.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 48                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7gfv9tzbXmh_6yara_x2re3hir3HirE32forget_allocation_drop_remainingB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCs7gfv9tzbXmh_6yara_x2re3hir3HirNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirEEB1R_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #31
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 48                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCs7gfv9tzbXmh_6yara_x2re3hir3HirNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirEB17_.exit.thread

_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCs7gfv9tzbXmh_6yara_x2re3hir3HirNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirEB17_.exit.thread: ; preds = %2, %bb.h, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %2 ], [ %i.y, %bb.i ], [ %i.d, %bb.f ], [ inttoptr (i64 8 to ptr), %bb.h ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7gfv9tzbXmh_6yara_x2re3hir3HirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 48
  br i1 %i.w, label %2, label %bb.i

2:                                                ; preds = %bb.g
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCs7gfv9tzbXmh_6yara_x2re3hir3HirNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirEB17_.exit.thread, label %bb.h

bb.h:                                             ; preds = %2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #33
  br label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCs7gfv9tzbXmh_6yara_x2re3hir3HirNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirEB17_.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef %i.s) #33 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCs7gfv9tzbXmh_6yara_x2re3hir3HirNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirEB17_.exit.thread, !prof !15

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #35
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs7gfv9tzbXmh_6yara_x2re3hir3HirENCNvMs3_B1Z_B1X_6concat0EEB23_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler10RegexpAtomENCNvMs_B2n_NtB2n_8Compiler7compile0ENtB2r_10RegexpAtomEB2t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !6
  %i.g = mul i64 %i.c, 56                         ; 7 uses
  %i.h = udiv i64 %i.g, 40                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler10RegexpAtomENCNvMs_B1N_NtB1N_8Compiler7compile0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtB1R_10RegexpAtomENCINvNtB12_16in_place_collect24write_in_place_with_dropB4E_E0INtNtBc_6result6ResultB43_zEEB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler10RegexpAtomENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler10RegexpAtomENCNvMs_B1Z_NtB1Z_8Compiler7compile0EEB25_.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 40                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler10RegexpAtomE32forget_allocation_drop_remainingB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler10RegexpAtomNtB1R_10RegexpAtomEEB1T_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #31
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 40                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler10RegexpAtomNtB17_10RegexpAtomEB19_.exit.thread

_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler10RegexpAtomNtB17_10RegexpAtomEB19_.exit.thread: ; preds = %2, %bb.h, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %2 ], [ %i.y, %bb.i ], [ %i.d, %bb.f ], [ inttoptr (i64 8 to ptr), %bb.h ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler10RegexpAtomENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 40
  br i1 %i.w, label %2, label %bb.i

2:                                                ; preds = %bb.g
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler10RegexpAtomNtB17_10RegexpAtomEB19_.exit.thread, label %bb.h

bb.h:                                             ; preds = %2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #33
  br label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler10RegexpAtomNtB17_10RegexpAtomEB19_.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef %i.s) #33 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler10RegexpAtomNtB17_10RegexpAtomEB19_.exit.thread, !prof !15

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #35
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler10RegexpAtomENCNvMs_B1Z_NtB1Z_8Compiler7compile0EEB25_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4yara8AclEntryENCNCNvMs0_NtNtB2t_5types9structureNtB3s_6Struct3acls0_00ENtB3s_8AclEntryEB2t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !6
  %i.g = mul i64 %i.c, 112                        ; 7 uses
  %i.h = udiv i64 %i.g, 96                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4yara8AclEntryENCNCNvMs0_NtNtB1T_5types9structureNtB2S_6Struct3acls0_00ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtB2S_8AclEntryENCINvNtB12_16in_place_collect24write_in_place_with_dropB4V_E0INtNtBc_6result6ResultB4k_zEEB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4yara8AclEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4yara8AclEntryENCNCNvMs0_NtNtB25_5types9structureNtB34_6Struct3acls0_00EEB25_.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 96                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4yara8AclEntryE32forget_allocation_drop_remainingB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4yara8AclEntryNtNtNtB1T_5types9structure8AclEntryEEB1T_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #31
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 96                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4yara8AclEntryNtNtNtB19_5types9structure8AclEntryEB19_.exit.thread

_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4yara8AclEntryNtNtNtB19_5types9structure8AclEntryEB19_.exit.thread: ; preds = %2, %bb.h, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %2 ], [ %i.y, %bb.i ], [ %i.d, %bb.f ], [ inttoptr (i64 8 to ptr), %bb.h ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4yara8AclEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 96
  br i1 %i.w, label %2, label %bb.i

2:                                                ; preds = %bb.g
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4yara8AclEntryNtNtNtB19_5types9structure8AclEntryEB19_.exit.thread, label %bb.h

bb.h:                                             ; preds = %2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #33
  br label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4yara8AclEntryNtNtNtB19_5types9structure8AclEntryEB19_.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef %i.s) #33 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4yara8AclEntryNtNtNtB19_5types9structure8AclEntryEB19_.exit.thread, !prof !15

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #35
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4yara8AclEntryENCNCNvMs0_NtNtB25_5types9structureNtB34_6Struct3acls0_00EEB25_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNvXNvXNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schemaNtB2t_11NetworkJsonNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB2q_9MyVisitorNtB3B_7Visitor9visit_map13OldDomainJsonENCINvXB2q_B4w_B4M_9visit_mapINtNtCsbbTh99npV2h_10serde_json2de9MapAccessNtNtB5X_4read9SliceReadEE0ENtB2t_10DomainJsonEB2z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !6
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNvXNvXNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schemaNtB1T_11NetworkJsonNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB1Q_9MyVisitorNtB31_7Visitor9visit_map13OldDomainJsonENCINvXB1Q_B3W_B4c_9visit_mapINtNtCsbbTh99npV2h_10serde_json2de9MapAccessNtNtB5n_4read9SliceReadEE0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtB1T_10DomainJsonENCINvNtB12_16in_place_collect24write_in_place_with_dropB7J_E0INtNtBc_6result6ResultB78_zEEB1Z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNvXNvXNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schemaNtB14_11NetworkJsonNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB11_9MyVisitorNtB2c_7Visitor9visit_map13OldDomainJsonENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNvXNvXNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schemaNtB25_11NetworkJsonNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB22_9MyVisitorNtB3d_7Visitor9visit_map13OldDomainJsonENCINvXB22_B48_B4o_9visit_mapINtNtCsbbTh99npV2h_10serde_json2de9MapAccessNtNtB5z_4read9SliceReadEE0EEB2b_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNvXNvXNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schemaNtB14_11NetworkJsonNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB11_9MyVisitorNtB2c_7Visitor9visit_map13OldDomainJsonE32forget_allocation_drop_remainingB1a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNvXNvXNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schemaNtB1T_11NetworkJsonNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB1Q_9MyVisitorNtB31_7Visitor9visit_map13OldDomainJsonNtB1T_10DomainJsonEEB1Z_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #31
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNvXNvXNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schemaNtB14_11NetworkJsonNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB11_9MyVisitorNtB2c_7Visitor9visit_map13OldDomainJsonENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNvXNvXNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schemaNtB25_11NetworkJsonNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB22_9MyVisitorNtB3d_7Visitor9visit_map13OldDomainJsonENCINvXB22_B48_B4o_9visit_mapINtNtCsbbTh99npV2h_10serde_json2de9MapAccessNtNtB5z_4read9SliceReadEE0EEB2b_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3757)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !13, !alias.scope !3757, !noundef !6 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 range(i64 0, -1) %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3757
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !3757
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !3757
  %i.j = load i64, ptr %i.a, align 8, !range !17, !noalias !3757, !noundef !6
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !18, !noalias !3757, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !3757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3757
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #35
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !3757, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3757
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !3757
  %i.q = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !3757
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCs3qXrMTCDNMF_3der6decodeNtNtNtB5_4asn110bit_string12BitStringRefNtB3_6Decode6decodeINtNtNtB5_6reader6nested12NestedReaderNtNtB1w_5slice11SliceReaderEECs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 13 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.610 = alloca [3 x i8], align 4           ; 5 uses
  %i.e = alloca [56 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RINvXs_NtCs3qXrMTCDNMF_3der6headerNtB5_6HeaderNtNtB7_6decode6Decode6decodeINtNtNtB7_6reader6nested12NestedReaderNtNtB1f_5slice11SliceReaderEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1)
  %i.f = load i32, ptr %i.e, align 8, !range !19, !noundef !6 ; 2 uses
  %.not = icmp eq i32 %i.f, 2
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.018.0.copyload = load i64, ptr %i.g, align 4 ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.527.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.524.0..sroa_idx, i64 44, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i32 %i.f, ptr %0, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.018.0.copyload, ptr %.sroa.426.0..sroa_idx, align 4
  br label %_RINvXs_NtNtCs3qXrMTCDNMF_3der4asn110bit_stringNtB5_12BitStringRefNtNtB9_6decode11DecodeValue12decode_valueINtNtNtB9_6reader6nested12NestedReaderNtNtB1L_5slice11SliceReaderEECs7gfv9tzbXmh_6yara_x.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.610)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.07.4.extract.shift = lshr i64 %.sroa.018.0.copyload, 32
  %.sroa.07.4.extract.trunc = trunc i64 %.sroa.07.4.extract.shift to i24
  call void @_RNvMs_NtCs3qXrMTCDNMF_3der3tagNtB4_3Tag9assert_eq(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, i24 %.sroa.07.4.extract.trunc, i24 2)
  %i.h = load i32, ptr %i.d, align 8, !range !19, !noundef !6 ; 2 uses
  %.not42 = icmp eq i32 %i.h, 2
  br i1 %.not42, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.610, ptr noundef nonnull align 4 dereferenceable(3) %.sroa.432.0..sroa_idx, i64 3, i1 false)
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 7
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %.sroa.536.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(49) %.sroa.533.0..sroa_idx, i64 49, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.435.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(3) %.sroa.610, i64 3, i1 false)
  store i32 %i.h, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.610)
  br label %_RINvXs_NtNtCs3qXrMTCDNMF_3der4asn110bit_stringNtB5_12BitStringRefNtNtB9_6decode11DecodeValue12decode_valueINtNtNtB9_6reader6nested12NestedReaderNtNtB1L_5slice11SliceReaderEECs7gfv9tzbXmh_6yara_x.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3764)
  %.sroa.01.0.extract.trunc.i = trunc i64 %.sroa.018.0.copyload to i32
end_hunk_0
