Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/configure-6c1e72b3311f803b.configure.dc0aea985e7c587b-cgu.02?download=true
inline.NumInlined: 358
inline.NumDeleted: 144
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9configure3aqt19build_and_check_aqt17h5fcb78e7430b2d49E:bb.a

bb.ju:                                            ; preds = %bb.jt
  %i.aat = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aar, i64 noundef 48, i64 noundef 8) #18, !noalias !394
  br label %common.resume

_ZN9configure3aqt11build_pages17hbddd40b6beee126eE.exit.i: ; preds = %bb.jt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aar, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !393
  store i64 -9223372036854775805, ptr %i.i, align 8, !noalias !393
  %.sroa.4.0..sroa_idx.i39.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i39.i, align 8, !noalias !393
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i40.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.aar, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i40.i, align 8, !noalias !393
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i41.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 1, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i41.i, align 8, !noalias !393
  %i.aau = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr @43, ptr %i.aau, align 8, !noalias !393
  %i.aav = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i64 22, ptr %i.aav, align 8, !noalias !393
  %i.aaw = call noundef ptr @_ZN9ninja_gen5build5Build10add_action17had08439720f41efbE(ptr noalias noundef nonnull align 8 dereferenceable(248) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @44, i64 noundef 21, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.i) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !393
  %.not22.i35 = icmp eq ptr %i.aaw, null
  br i1 %.not22.i35, label %bb.jv, label %_ZN9configure3aqt23build_generated_sources17h4bba6898dc16cc3aE.exit.thread

bb.jv:                                            ; preds = %_ZN9configure3aqt11build_pages17hbddd40b6beee126eE.exit.i
  %i.aax = call fastcc noundef ptr @_ZN9configure3aqt11build_icons17h94c10d842ccebf96E(ptr noalias noundef nonnull align 8 dereferenceable(248) %0) ; 2 uses
  %.not23.i = icmp eq ptr %i.aax, null
  br i1 %.not23.i, label %_ZN9configure3aqt17build_data_folder17h48c493a90b06261fE.exit, label %_ZN9configure3aqt23build_generated_sources17h4bba6898dc16cc3aE.exit.thread

_ZN9configure3aqt17build_data_folder17h48c493a90b06261fE.exit: ; preds = %bb.jv
  %i.aay = call fastcc noundef ptr @_ZN9configure3aqt14copy_sveltekit17h4add919bd7e1234aE(ptr noalias noundef nonnull align 8 dereferenceable(248) %0) ; 2 uses
  %.not17 = icmp eq ptr %i.aay, null
  br i1 %.not17, label %bb.jw, label %_ZN9configure3aqt23build_generated_sources17h4bba6898dc16cc3aE.exit.thread

bb.jw:                                            ; preds = %_ZN9configure3aqt17build_data_folder17h48c493a90b06261fE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !395
  call void @_ZN9configure12anki_version17h0cc5eff0917c3307E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f), !noalias !395
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !395
  %i.aaz = call noundef align 8 dereferenceable_or_null(192) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 192, i64 noundef 8) #18, !noalias !395 ; 7 uses
  %i.aba = icmp eq ptr %i.aaz, null
  br i1 %i.aba, label %bb.jz, label %bb.ka, !prof !11

bb.jx:                                            ; preds = %bb.kb, %bb.jy
  %.pn14.i = phi { ptr, i32 } [ %i.abb, %bb.jy ], [ %.pn.pn.pn.i, %bb.kb ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"(ptr noalias noundef align 8 dereferenceable(24) %i.f) #16
          to label %common.resume unwind label %bb.km, !noalias !395

bb.jy:                                            ; preds = %bb.jz
  %i.abb = landingpad { ptr, i32 }
          cleanup
  br label %bb.jx

bb.jz:                                            ; preds = %bb.jw
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 192) #19
          to label %bb.kn unwind label %bb.jy, !noalias !395

bb.ka:                                            ; preds = %bb.jw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !395
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @45, i64 noundef 7)
          to label %bb.kd unwind label %bb.kc, !noalias !395

bb.kb:                                            ; preds = %bb.kf, %bb.kc
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i36, %bb.kf ], [ %i.abc, %bb.kc ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aaz, i64 noundef 192, i64 noundef 8) #18, !noalias !395
  br label %bb.jx

bb.kc:                                            ; preds = %bb.ka
  %i.abc = landingpad { ptr, i32 }
          cleanup
  br label %bb.kb

bb.kd:                                            ; preds = %bb.ka
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !396
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef 9, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i37 unwind label %bb.kg, !noalias !395

.noexc.i37:                                       ; preds = %bb.kd
  %i.abd = load i64, ptr %i.a, align 8, !range !12, !noalias !396, !noundef !5
  %i.abe = trunc nuw i64 %i.abd to i1
  %i.abf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.abg = load i64, ptr %i.abf, align 8, !range !7, !noalias !396, !noundef !5 ; 3 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.abe, label %bb.ke, label %bb.kh, !prof !11

bb.ke:                                            ; preds = %.noexc.i37
  %i.abi = load i64, ptr %i.abh, align 8, !noalias !396
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.abg, i64 %i.abi) #19
          to label %.noexc16.i unwind label %bb.kg, !noalias !395

.noexc16.i:                                       ; preds = %bb.ke
  unreachable

bb.kf:                                            ; preds = %bb.ki, %bb.kg
  %.pn.pn.i36 = phi { ptr, i32 } [ %.pn.i39, %bb.ki ], [ %i.abj, %bb.kg ]
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.e) #16
          to label %bb.kb unwind label %bb.km, !noalias !395

bb.kg:                                            ; preds = %bb.ke, %bb.kd
  %i.abj = landingpad { ptr, i32 }
          cleanup
  br label %bb.kf

bb.kh:                                            ; preds = %.noexc.i37
  %i.abk = load ptr, ptr %i.abh, align 8, !noalias !396, !nonnull !5, !noundef !5 ; 2 uses
  %i.abl = icmp ugt i64 %i.abg, 8
  call void @llvm.assume(i1 %i.abl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !396
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.abk, ptr noundef nonnull align 1 dereferenceable(9) @46, i64 9, i1 false), !noalias !397
  store i64 %i.abg, ptr %i.d, align 8, !noalias !395
  %.sroa.03.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.abk, ptr %.sroa.03.sroa.4.0..sroa_idx.i, align 8, !noalias !395
  %.sroa.03.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 9, ptr %.sroa.03.sroa.5.0..sroa_idx.i, align 8, !noalias !395
  %.sroa.44.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 -9223372036854775808, ptr %.sroa.44.0..sroa_idx.i38, align 8, !noalias !395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !395
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @47, i64 noundef 17)
          to label %bb.kk unwind label %bb.kj, !noalias !395

bb.ki:                                            ; preds = %bb.kl, %bb.kj
  %.pn.i39 = phi { ptr, i32 } [ %i.abn, %bb.kl ], [ %i.abm, %bb.kj ]
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.d) #16
          to label %bb.kf unwind label %bb.km, !noalias !395

bb.kj:                                            ; preds = %bb.kh
  %i.abm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ki

bb.kk:                                            ; preds = %bb.kh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !395
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @48, i64 noundef 17)
          to label %_ZN9configure3aqt11build_wheel17hd8c5f9761a57a607E.exit unwind label %bb.kl, !noalias !395

bb.kl:                                            ; preds = %bb.kk
  %i.abn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.c) #16
          to label %bb.ki unwind label %bb.km, !noalias !395

bb.km:                                            ; preds = %bb.kl, %bb.ki, %bb.kf, %bb.jx
  %i.abo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17, !noalias !395
  unreachable

bb.kn:                                            ; preds = %bb.jz
  unreachable

_ZN9configure3aqt11build_wheel17hd8c5f9761a57a607E.exit: ; preds = %bb.kk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aaz, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !395
  %i.abp = getelementptr inbounds nuw i8, ptr %i.aaz, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.abp, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !395
  %i.abq = getelementptr inbounds nuw i8, ptr %i.aaz, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.abq, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !395
  %i.abr = getelementptr inbounds nuw i8, ptr %i.aaz, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.abr, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !395
  %i.abs = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store ptr @49, ptr %i.abs, align 8, !noalias !395
  %i.abt = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store i64 3, ptr %i.abt, align 8, !noalias !395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !395
  %i.abu = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store i8 6, ptr %i.abu, align 8, !noalias !395
  %i.abv = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 -9223372036854775805, ptr %i.abv, align 8, !noalias !395
  %.sroa.4.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 4, ptr %.sroa.4.0..sroa_idx.i40, align 8, !noalias !395
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %i.aaz, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !395
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 4, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !395
  %i.abw = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store ptr @50, ptr %i.abw, align 8, !noalias !395
  %i.abx = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store i64 2, ptr %i.abx, align 8, !noalias !395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !395
  %i.aby = call noundef ptr @_ZN9ninja_gen5build5Build10add_action17hcdfb22b909a3a781E(ptr noalias noundef nonnull align 8 dereferenceable(248) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @51, i64 noundef 10, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.g) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !395
  %.not18 = icmp eq ptr %i.aby, null
  br i1 %.not18, label %bb.ko, label %_ZN9configure3aqt23build_generated_sources17h4bba6898dc16cc3aE.exit.thread

bb.ko:                                            ; preds = %_ZN9configure3aqt11build_wheel17hd8c5f9761a57a607E.exit
  %i.abz = call fastcc noundef ptr @_ZN9configure3aqt12check_python17hf683dd98dfe43dedE(ptr noalias noundef align 8 dereferenceable(248) %0)
  br label %_ZN9configure3aqt23build_generated_sources17h4bba6898dc16cc3aE.exit.thread

_ZN9configure3aqt23build_generated_sources17h4bba6898dc16cc3aE.exit.thread: ; preds = %_ZN9configure3aqt8build_js17h2edf5509ceabe4d7E.exit.thread46.i, %_ZN9configure3aqt8build_js17h2edf5509ceabe4d7E.exit.thread.i, %_ZN9configure3aqt9build_css17hb44c0644d4367f0dE.exit.thread.i, %bb.jv, %_ZN9configure3aqt11build_pages17hbddd40b6beee126eE.exit.i, %_ZN9configure3aqt8build_js17h2edf5509ceabe4d7E.exit.i, %_ZN9configure3aqt10build_imgs17hdefb8903ff95c7b7E.exit.i, %_ZN9configure3aqt9build_css17hb44c0644d4367f0dE.exit.i, %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17h605c3cff841a528bE.exit78.i", %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17h605c3cff841a528bE.exit.i26", %bb.ko, %_ZN9configure3aqt11build_wheel17hd8c5f9761a57a607E.exit, %_ZN9configure3aqt17build_data_folder17h48c493a90b06261fE.exit, %_ZN9configure3aqt23build_generated_sources17h4bba6898dc16cc3aE.exit, %_ZN9configure3aqt11build_forms17hda932fd8c0c9422eE.exit
  %.sroa.0.0 = phi ptr [ %i.aby, %_ZN9configure3aqt11build_wheel17hd8c5f9761a57a607E.exit ], [ %i.gz, %_ZN9configure3aqt11build_forms17hda932fd8c0c9422eE.exit ], [ %i.um, %_ZN9configure3aqt23build_generated_sources17h4bba6898dc16cc3aE.exit ], [ %i.aay, %_ZN9configure3aqt17build_data_folder17h48c493a90b06261fE.exit ], [ %i.abz, %bb.ko ], [ %i.sw, %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17h605c3cff841a528bE.exit.i26" ], [ %i.ui, %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17h605c3cff841a528bE.exit78.i" ], [ %i.zh, %_ZN9configure3aqt8build_js17h2edf5509ceabe4d7E.exit.thread46.i ], [ %.sroa.0.0.i34.ph.i, %_ZN9configure3aqt8build_js17h2edf5509ceabe4d7E.exit.thread.i ], [ %i.wv, %_ZN9configure3aqt9build_css17hb44c0644d4367f0dE.exit.thread.i ], [ %i.aax, %bb.jv ], [ %i.aaw, %_ZN9configure3aqt11build_pages17hbddd40b6beee126eE.exit.i ], [ %i.aaq, %_ZN9configure3aqt8build_js17h2edf5509ceabe4d7E.exit.i ], [ %i.xx, %_ZN9configure3aqt10build_imgs17hdefb8903ff95c7b7E.exit.i ], [ %i.xj, %_ZN9configure3aqt9build_css17hb44c0644d4367f0dE.exit.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_ZN9ninja_gen6action11BuildAction4name17h399d5e92061c30f7E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !433 {
.lr.ph.i:
  %i.a = alloca [104 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @137, i64 noundef 35, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @138, i64 noundef 2)
  %.sroa.07.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.07.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.07.sroa.4.0.copyload = load i64, ptr %.sroa.07.sroa.4.0..sroa_idx, align 8 ; 26 uses
  %.sroa.07.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.07.sroa.6.0.copyload = load i64, ptr %.sroa.07.sroa.6.0..sroa_idx, align 8 ; 5 uses
  %.sroa.07.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.07.sroa.7.0.copyload = load i64, ptr %.sroa.07.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.07.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.07.sroa.8.0.copyload = load i64, ptr %.sroa.07.sroa.8.0..sroa_idx, align 8
  %.sroa.07.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.07.sroa.10.0.copyload = load i64, ptr %.sroa.07.sroa.10.0..sroa_idx, align 8
  %.sroa.07.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.07.sroa.12.0.copyload = load ptr, ptr %.sroa.07.sroa.12.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 16 uses
  %.sroa.07.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.07.sroa.13.0.copyload = load i64, ptr %.sroa.07.sroa.13.0..sroa_idx, align 8 ; 41 uses
  %.sroa.07.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.07.sroa.14.0.copyload = load ptr, ptr %.sroa.07.sroa.14.0..sroa_idx, align 8 ; 5 uses
  %.sroa.07.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.07.sroa.15.0.copyload = load i64, ptr %.sroa.07.sroa.15.0..sroa_idx, align 8 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.b = trunc nuw i64 %.sroa.07.sroa.0.0.copyload to i1
  %i.c = add i64 %.sroa.07.sroa.15.0.copyload, -1 ; 3 uses
  br i1 %i.b, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.sroa.14.0.copyload) ]
  %i.d = sub i64 %.sroa.07.sroa.15.0.copyload, %.sroa.07.sroa.6.0.copyload
  %umax49.i.us = call i64 @llvm.umax.i64(i64 %.sroa.07.sroa.4.0.copyload, i64 %.sroa.07.sroa.15.0.copyload)
  %i.e = add i64 %.sroa.07.sroa.4.0.copyload, -1
  %.first_iter = icmp ult i64 %i.e, %.sroa.07.sroa.15.0.copyload
  %invariant.op = sub i64 1, %.sroa.07.sroa.4.0.copyload
  %exitcond.not.i.us319.not = icmp ult i64 %.sroa.07.sroa.4.0.copyload, %.sroa.07.sroa.15.0.copyload
  %invariant.op423 = sub i64 1, %.sroa.07.sroa.4.0.copyload
  %.not82.us322 = icmp eq i64 %.sroa.07.sroa.4.0.copyload, 0
  br label %bb.a

bb.a:                                             ; preds = %.loopexit19.thread.i.i.i.us, %.lr.ph.i.split.us
  %.sroa.39.0.us = phi i64 [ 0, %.lr.ph.i.split.us ], [ %.sroa.11.1.ph.us, %.loopexit19.thread.i.i.i.us ] ; 4 uses
  %.sroa.2937.0.us = phi i64 [ %.sroa.07.sroa.10.0.copyload, %.lr.ph.i.split.us ], [ %.sroa.2937.1.ph.us, %.loopexit19.thread.i.i.i.us ] ; 2 uses
  %.sroa.17.0.us = phi i64 [ %.sroa.07.sroa.8.0.copyload, %.lr.ph.i.split.us ], [ %.sroa.11.1.ph.us, %.loopexit19.thread.i.i.i.us ] ; 3 uses
  %i.f = icmp eq i64 %.sroa.2937.0.us, -1
  %i.g = add i64 %.sroa.17.0.us, %i.c             ; 3 uses
  %i.h = icmp ult i64 %i.g, %.sroa.07.sroa.13.0.copyload ; 2 uses
  br i1 %i.f, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !434)
  call void @llvm.experimental.noalias.scope.decl(metadata !435)
  br i1 %i.h, label %.lr.ph.i21.us, label %.lr.ph.split.i.i

.lr.ph.i21.us:                                    ; preds = %bb.b, %.sink.split.i.us
  %i.i = phi i64 [ %.sink.i.us, %.sink.split.i.us ], [ %.sroa.2937.0.us, %bb.b ] ; 3 uses
  %i.j = phi i64 [ %i.am, %.sink.split.i.us ], [ %i.g, %bb.b ]
  %i.k = phi i64 [ %.ph71.i.us, %.sink.split.i.us ], [ %.sroa.17.0.us, %bb.b ] ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.j
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !434, !noundef !5
  %i.n = and i8 %i.m, 63
  %i.o = zext nneg i8 %i.n to i64
  %i.p = shl nuw i64 1, %i.o
  %i.q = and i64 %i.p, %.sroa.07.sroa.7.0.copyload
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.j, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i21.us
  %.sroa.0.0.i.i23.us = call i64 @llvm.umax.i64(i64 %i.i, i64 %.sroa.07.sroa.4.0.copyload) ; 4 uses
  %umax49.i24.us = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i23.us, i64 %.sroa.07.sroa.15.0.copyload)
  %exitcond.not.i26.us314.not = icmp ult i64 %.sroa.0.0.i.i23.us, %.sroa.07.sroa.15.0.copyload
  br i1 %exitcond.not.i26.us314.not, label %.lr.ph, label %.preheader83.us.preheader

bb.d:                                             ; preds = %bb.e
  %i.s = add nuw i64 %.sroa.02.0.i25.us315, 1     ; 2 uses
  %exitcond.not.i26.us = icmp eq i64 %i.s, %umax49.i24.us
  br i1 %exitcond.not.i26.us, label %.preheader83.us.preheader, label %.lr.ph

.preheader83.us.preheader:                        ; preds = %bb.d, %bb.c
  %i.t = icmp ult i64 %i.i, %.sroa.07.sroa.4.0.copyload
  br i1 %i.t, label %.lr.ph317, label %.loopexit19.thread.i.i.i.us

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.02.0.i25.us315 = phi i64 [ %i.s, %bb.d ], [ %.sroa.0.0.i.i23.us, %bb.c ] ; 4 uses
  %i.u = add i64 %.sroa.02.0.i25.us315, %i.k      ; 2 uses
  %i.v = icmp ult i64 %i.u, %.sroa.07.sroa.13.0.copyload
  br i1 %i.v, label %bb.e, label %.split.us

bb.e:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.14.0.copyload, i64 %.sroa.02.0.i25.us315
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !435, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.u
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !434, !noundef !5
  %.not21.i28.us = icmp eq i8 %i.x, %i.z
  br i1 %.not21.i28.us, label %bb.d, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.reass.reass = add i64 %i.k, %invariant.op
  %i.aa = add i64 %.reass.reass, %.sroa.02.0.i25.us315
  br label %.sink.split.i.us

.preheader83.us:                                  ; preds = %bb.h
  %i.ab = icmp ult i64 %i.i, %i.ac
  br i1 %i.ab, label %.lr.ph317, label %.loopexit19.thread.i.i.i.us

.lr.ph317:                                        ; preds = %.preheader83.us.preheader, %.preheader83.us
  %.sroa.2.0.i29.us316 = phi i64 [ %i.ac, %.preheader83.us ], [ %.sroa.07.sroa.4.0.copyload, %.preheader83.us.preheader ]
  %i.ac = add i64 %.sroa.2.0.i29.us316, -1        ; 6 uses
  %i.ad = icmp ult i64 %i.ac, %.sroa.07.sroa.15.0.copyload
  br i1 %i.ad, label %bb.g, label %.split137.us

bb.g:                                             ; preds = %.lr.ph317
  %i.ae = add i64 %i.ac, %i.k                     ; 3 uses
  %i.af = icmp ult i64 %i.ae, %.sroa.07.sroa.13.0.copyload
  br i1 %i.af, label %bb.h, label %.split140.us

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.14.0.copyload, i64 %i.ac
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !435, !noundef !5
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.ae
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !434, !noundef !5
  %.not.i30.us = icmp eq i8 %i.ah, %i.aj
  br i1 %.not.i30.us, label %.preheader83.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = add i64 %i.k, %.sroa.07.sroa.6.0.copyload
  br label %.sink.split.i.us

bb.j:                                             ; preds = %.lr.ph.i21.us
  %i.al = add i64 %i.k, %.sroa.07.sroa.15.0.copyload
  br label %.sink.split.i.us

.sink.split.i.us:                                 ; preds = %bb.j, %bb.i, %bb.f
  %.sink.i.us = phi i64 [ %i.d, %bb.i ], [ 0, %bb.f ], [ 0, %bb.j ]
  %.ph71.i.us = phi i64 [ %i.ak, %bb.i ], [ %i.aa, %bb.f ], [ %i.al, %bb.j ] ; 2 uses
  %i.am = add i64 %.ph71.i.us, %i.c               ; 2 uses
  %i.an = icmp ult i64 %i.am, %.sroa.07.sroa.13.0.copyload
  br i1 %i.an, label %.lr.ph.i21.us, label %.lr.ph.split.i.i

bb.k:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !436)
  call void @llvm.experimental.noalias.scope.decl(metadata !437)
  br i1 %i.h, label %.lr.ph.i16.us, label %.lr.ph.split.i.i

.lr.ph.i16.us:                                    ; preds = %bb.k, %bb.r
  %i.ao = phi i64 [ %i.bp, %bb.r ], [ %i.g, %bb.k ]
  %i.ap = phi i64 [ %i.bo, %bb.r ], [ %.sroa.17.0.us, %bb.k ] ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.ao
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !436, !noundef !5
  %i.as = and i8 %i.ar, 63
  %i.at = zext nneg i8 %i.as to i64
  %i.au = shl nuw i64 1, %i.at
  %i.av = and i64 %i.au, %.sroa.07.sroa.7.0.copyload
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.q, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.i16.us
  br i1 %exitcond.not.i.us319.not, label %.lr.ph321, label %.preheader.us.preheader

.preheader:                                       ; preds = %bb.l
  %i.ax = add nuw i64 %.sroa.02.0.i.us320, 1      ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.ax, %umax49.i.us
  br i1 %exitcond.not.i.us, label %.preheader.us.preheader, label %.lr.ph321

.preheader.us.preheader:                          ; preds = %.preheader, %.preheader.preheader
  br i1 %.not82.us322, label %.loopexit19.thread.i.i.i.us, label %.lr.ph324

.lr.ph321:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.02.0.i.us320 = phi i64 [ %i.ax, %.preheader ], [ %.sroa.07.sroa.4.0.copyload, %.preheader.preheader ] ; 4 uses
  %i.ay = add i64 %.sroa.02.0.i.us320, %i.ap      ; 2 uses
  %i.az = icmp ult i64 %i.ay, %.sroa.07.sroa.13.0.copyload
  br i1 %i.az, label %bb.l, label %.split144.us

bb.l:                                             ; preds = %.lr.ph321
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.14.0.copyload, i64 %.sroa.02.0.i.us320
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !437, !noundef !5
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.ay
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !436, !noundef !5
  %.not21.i.us = icmp eq i8 %i.bb, %i.bd
  br i1 %.not21.i.us, label %.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.reass273.reass = add i64 %i.ap, %invariant.op423
  %i.be = add i64 %.reass273.reass, %.sroa.02.0.i.us320
  br label %bb.r

.preheader.us:                                    ; preds = %bb.o
  %.not82.us = icmp eq i64 %i.bf, 0
  br i1 %.not82.us, label %.loopexit19.thread.i.i.i.us, label %.lr.ph324

.lr.ph324:                                        ; preds = %.preheader.us.preheader, %.preheader.us
  %.sroa.2.0.i.us323 = phi i64 [ %i.bf, %.preheader.us ], [ %.sroa.07.sroa.4.0.copyload, %.preheader.us.preheader ]
  %i.bf = add i64 %.sroa.2.0.i.us323, -1          ; 5 uses
  br i1 %.first_iter, label %bb.n, label %.split148.us

bb.n:                                             ; preds = %.lr.ph324
  %i.bg = add i64 %i.bf, %i.ap                    ; 3 uses
  %i.bh = icmp ult i64 %i.bg, %.sroa.07.sroa.13.0.copyload
  br i1 %i.bh, label %bb.o, label %.split151.us

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.14.0.copyload, i64 %i.bf
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !437, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.bg
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !436, !noundef !5
  %.not.i.us = icmp eq i8 %i.bj, %i.bl
  br i1 %.not.i.us, label %.preheader.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = add i64 %.sroa.07.sroa.6.0.copyload, %i.ap
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph.i16.us
  %i.bn = add i64 %i.ap, %.sroa.07.sroa.15.0.copyload
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.m
  %i.bo = phi i64 [ %i.be, %bb.m ], [ %i.bn, %bb.q ], [ %i.bm, %bb.p ] ; 2 uses
  %i.bp = add i64 %i.bo, %i.c                     ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %.sroa.07.sroa.13.0.copyload
  br i1 %i.bq, label %.lr.ph.i16.us, label %.lr.ph.split.i.i

.loopexit19.thread.i.i.i.us:                      ; preds = %.preheader83.us.preheader, %.preheader.us.preheader, %.preheader83.us, %.preheader.us
  %.pn = phi i64 [ %i.ap, %.preheader.us ], [ %i.k, %.preheader83.us ], [ %i.ap, %.preheader.us.preheader ], [ %i.k, %.preheader83.us.preheader ]
  %.sroa.2937.1.ph.us = phi i64 [ -1, %.preheader.us ], [ 0, %.preheader83.us ], [ -1, %.preheader.us.preheader ], [ 0, %.preheader83.us.preheader ]
  %.sroa.11.1.ph.us = add i64 %.pn, %.sroa.07.sroa.15.0.copyload ; 2 uses
  br label %bb.a

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.br = and i64 %.sroa.07.sroa.6.0.copyload, 65536
  %.not81 = icmp eq i64 %i.br, 0
  br i1 %.not81, label %.lr.ph.i.i.i.i.preheader, label %.lr.ph.split.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.split
  %i.bs = trunc i64 %.sroa.07.sroa.6.0.copyload to i1 ; 2 uses
  %i.bt = icmp eq i64 %.sroa.07.sroa.4.0.copyload, 0
  br i1 %i.bt, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.preheader
  %.not.i.i.i.peel.i.i.i.peel = icmp ult i64 %.sroa.07.sroa.4.0.copyload, %.sroa.07.sroa.13.0.copyload
  br i1 %.not.i.i.i.peel.i.i.i.peel, label %bb.t, label %.split.i.i.i.peel.i.i.i.peel

.split.i.i.i.peel.i.i.i.peel:                     ; preds = %bb.s
  %i.bu = icmp eq i64 %.sroa.07.sroa.4.0.copyload, %.sroa.07.sroa.13.0.copyload
  br i1 %i.bu, label %bb.u, label %.loopexit.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %.sroa.07.sroa.4.0.copyload
  %i.bw = load i8, ptr %i.bv, align 1, !alias.scope !438, !noalias !439, !noundef !5
  %i.bx = icmp sgt i8 %i.bw, -65
  br i1 %i.bx, label %bb.u, label %.loopexit.i.i.i

bb.u:                                             ; preds = %bb.t, %.split.i.i.i.peel.i.i.i.peel, %.lr.ph.i.i.i.i.preheader
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %.sroa.07.sroa.4.0.copyload ; 4 uses
  %i.bz = icmp samesign eq i64 %.sroa.07.sroa.4.0.copyload, %.sroa.07.sroa.13.0.copyload
  br i1 %i.bz, label %.loopexit19.i.i.i.peel, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ca = load i8, ptr %i.by, align 1, !noalias !440, !noundef !5 ; 5 uses
  %i.cb = icmp sgt i8 %i.ca, -1
  br i1 %i.cb, label %bb.w, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i.peel": ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.cd = and i8 %i.ca, 31
  %i.ce = zext nneg i8 %i.cd to i32               ; 3 uses
  %i.cf = add nuw nsw i64 %.sroa.07.sroa.4.0.copyload, 1
  %i.cg = icmp samesign ne i64 %i.cf, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.cg)
  %i.ch = load i8, ptr %i.cc, align 1, !noalias !440, !noundef !5
  %i.ci = shl nuw nsw i32 %i.ce, 6
  %i.cj = and i8 %i.ch, 63
  %i.ck = zext nneg i8 %i.cj to i32               ; 2 uses
  %i.cl = or disjoint i32 %i.ci, %i.ck
  %i.cm = icmp samesign ugt i8 %i.ca, -33
  br i1 %i.cm, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i.peel", label %bb.x

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i.peel"
  %i.cn = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  %i.co = add nuw nsw i64 %.sroa.07.sroa.4.0.copyload, 2
  %i.cp = icmp samesign ne i64 %i.co, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.cp)
  %i.cq = load i8, ptr %i.cn, align 1, !noalias !440, !noundef !5
  %i.cr = shl nuw nsw i32 %i.ck, 6
  %i.cs = and i8 %i.cq, 63
  %i.ct = zext nneg i8 %i.cs to i32
  %i.cu = or disjoint i32 %i.cr, %i.ct            ; 2 uses
  %i.cv = shl nuw nsw i32 %i.ce, 12
  %i.cw = or disjoint i32 %i.cu, %i.cv
  %i.cx = icmp samesign ugt i8 %i.ca, -17
  br i1 %i.cx, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.i.i.peel", label %bb.x

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i.peel"
  %i.cy = getelementptr inbounds nuw i8, ptr %i.by, i64 3
  %i.cz = add nuw nsw i64 %.sroa.07.sroa.4.0.copyload, 3
  %i.da = icmp samesign ne i64 %i.cz, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.da)
  %i.db = load i8, ptr %i.cy, align 1, !noalias !440, !noundef !5
  %i.dc = shl nuw nsw i32 %i.ce, 18
  %i.dd = and i32 %i.dc, 1835008
  %i.de = shl nuw nsw i32 %i.cu, 6
  %i.df = and i8 %i.db, 63
  %i.dg = zext nneg i8 %i.df to i32
  %i.dh = or disjoint i32 %i.de, %i.dg
  %i.di = or disjoint i32 %i.dh, %i.dd
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dj = zext nneg i8 %i.ca to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i.peel"
  %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel = phi i32 [ %i.cw, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i.peel" ], [ %i.di, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.i.i.peel" ], [ %i.cl, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i.peel" ], [ %i.dj, %bb.w ] ; 4 uses
  %i.dk = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel, 1114112
  call void @llvm.assume(i1 %i.dk)
  br i1 %i.bs, label %.lr.ph.i.i.i.i.preheader373, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel, 128
  br i1 %i.dl, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel, 2048
  br i1 %i.dm, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel, 65536
  %..i.i.peel.i.i.i.peel = select i1 %i.dn, i64 3, i64 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.sroa.01.0.i.i.peel.i.i.i.peel = phi i64 [ 2, %bb.z ], [ %..i.i.peel.i.i.i.peel, %bb.aa ], [ 1, %bb.y ]
  %i.do = add i64 %.sroa.01.0.i.i.peel.i.i.i.peel, %.sroa.07.sroa.4.0.copyload ; 12 uses
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not.i.i.i.i.i.i.peel = icmp ult i64 %i.do, %.sroa.07.sroa.13.0.copyload
  br i1 %.not.i.i.i.i.i.i.peel, label %bb.ad, label %.split.i.i.i.i.i.i.peel

.split.i.i.i.i.i.i.peel:                          ; preds = %bb.ac
  %i.dq = icmp eq i64 %i.do, %.sroa.07.sroa.13.0.copyload
  br i1 %i.dq, label %bb.ae, label %.loopexit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.do
  %i.ds = load i8, ptr %i.dr, align 1, !alias.scope !438, !noalias !441, !noundef !5
  %i.dt = icmp sgt i8 %i.ds, -65
  br i1 %i.dt, label %bb.ae, label %.loopexit.i.i.i

bb.ae:                                            ; preds = %bb.ad, %.split.i.i.i.i.i.i.peel, %bb.ab
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.do ; 4 uses
  %i.dv = icmp samesign eq i64 %i.do, %.sroa.07.sroa.13.0.copyload
  br i1 %i.dv, label %.lr.ph.i.i.i.i.preheader373, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dw = load i8, ptr %i.du, align 1, !noalias !442, !noundef !5 ; 5 uses
  %i.dx = icmp sgt i8 %i.dw, -1
  br i1 %i.dx, label %bb.ag, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i.peel": ; preds = %bb.af
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  %i.dz = and i8 %i.dw, 31
  %i.ea = zext nneg i8 %i.dz to i32               ; 3 uses
  %i.eb = add nuw nsw i64 %i.do, 1
  %i.ec = icmp samesign ne i64 %i.eb, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.ec)
  %i.ed = load i8, ptr %i.dy, align 1, !noalias !442, !noundef !5
  %i.ee = shl nuw nsw i32 %i.ea, 6
  %i.ef = and i8 %i.ed, 63
  %i.eg = zext nneg i8 %i.ef to i32               ; 2 uses
  %i.eh = or disjoint i32 %i.ee, %i.eg
  %i.ei = icmp samesign ugt i8 %i.dw, -33
  br i1 %i.ei, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i.peel", label %.loopexit.i.loopexit.i.i.i.peel

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i.peel"
  %i.ej = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  %i.ek = add nuw nsw i64 %i.do, 2
  %i.el = icmp samesign ne i64 %i.ek, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.el)
  %i.em = load i8, ptr %i.ej, align 1, !noalias !442, !noundef !5
  %i.en = shl nuw nsw i32 %i.eg, 6
  %i.eo = and i8 %i.em, 63
  %i.ep = zext nneg i8 %i.eo to i32
  %i.eq = or disjoint i32 %i.en, %i.ep            ; 2 uses
  %i.er = shl nuw nsw i32 %i.ea, 12
  %i.es = or disjoint i32 %i.eq, %i.er
  %i.et = icmp samesign ugt i8 %i.dw, -17
  br i1 %i.et, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i.peel", label %.loopexit.i.loopexit.i.i.i.peel

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i.peel"
  %i.eu = getelementptr inbounds nuw i8, ptr %i.du, i64 3
  %i.ev = add nuw nsw i64 %i.do, 3
  %i.ew = icmp samesign ne i64 %i.ev, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.ew)
  %i.ex = load i8, ptr %i.eu, align 1, !noalias !442, !noundef !5
  %i.ey = shl nuw nsw i32 %i.ea, 18
  %i.ez = and i32 %i.ey, 1835008
  %i.fa = shl nuw nsw i32 %i.eq, 6
  %i.fb = and i8 %i.ex, 63
  %i.fc = zext nneg i8 %i.fb to i32
  %i.fd = or disjoint i32 %i.fa, %i.fc
  %i.fe = or disjoint i32 %i.fd, %i.ez
  br label %.loopexit.i.loopexit.i.i.i.peel

bb.ag:                                            ; preds = %bb.af
  %i.ff = zext nneg i8 %i.dw to i32
  br label %.loopexit.i.loopexit.i.i.i.peel

.loopexit.i.loopexit.i.i.i.peel:                  ; preds = %bb.ag, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i.peel"
  %.sroa.4.0.i.ph.i.i.i.i.i.peel = phi i32 [ %i.es, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i.peel" ], [ %i.fe, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i.peel" ], [ %i.eh, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i.peel" ], [ %i.ff, %bb.ag ]
  %i.fg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.peel, 1114112
  br label %.lr.ph.i.i.i.i.sink.split

.loopexit19.i.i.i.peel:                           ; preds = %bb.u
  br i1 %i.bs, label %.lr.ph.i.i.i.i.preheader373, label %.lr.ph.split.i.i

.lr.ph.i.i.i.i.sink.split:                        ; preds = %.loopexit.i.loopexit.i.i.i.peel, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i"
  %.sink = phi i1 [ %i.hs, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i" ], [ %i.fg, %.loopexit.i.loopexit.i.i.i.peel ]
  %.sroa.4.0157.ph = phi i64 [ %i.hb, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i" ], [ %i.do, %.loopexit.i.loopexit.i.i.i.peel ]
  call void @llvm.assume(i1 %.sink)
  br label %.lr.ph.i.i.i.i.preheader373

.lr.ph.i.i.i.i.preheader373:                      ; preds = %bb.x, %bb.ae, %.loopexit19.i.i.i.peel, %.lr.ph.i.i.i.i.sink.split
  %.sroa.4.0157.ph374 = phi i64 [ %.sroa.4.0157.ph, %.lr.ph.i.i.i.i.sink.split ], [ %.sroa.07.sroa.4.0.copyload, %.loopexit19.i.i.i.peel ], [ %.sroa.07.sroa.13.0.copyload, %bb.ae ], [ %.sroa.07.sroa.4.0.copyload, %bb.x ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.backedge, %.lr.ph.i.i.i.i.preheader373
  %.sroa.4.0157 = phi i64 [ %.sroa.4.0157.ph374, %.lr.ph.i.i.i.i.preheader373 ], [ %.sroa.4.0157.be, %.lr.ph.i.i.i.i.backedge ] ; 13 uses
  %i.fh = icmp eq i64 %.sroa.4.0157, 0
  br i1 %i.fh, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.peel.i.i.i = icmp ult i64 %.sroa.4.0157, %.sroa.07.sroa.13.0.copyload
  br i1 %.not.i.i.i.peel.i.i.i, label %bb.ai, label %.split.i.i.i.peel.i.i.i

.split.i.i.i.peel.i.i.i:                          ; preds = %bb.ah
  %i.fi = icmp eq i64 %.sroa.4.0157, %.sroa.07.sroa.13.0.copyload
  br i1 %i.fi, label %bb.aj, label %.loopexit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %.sroa.4.0157
  %i.fk = load i8, ptr %i.fj, align 1, !alias.scope !438, !noalias !439, !noundef !5
  %i.fl = icmp sgt i8 %i.fk, -65
  br i1 %i.fl, label %bb.aj, label %.loopexit.i.i.i

bb.aj:                                            ; preds = %bb.ai, %.split.i.i.i.peel.i.i.i, %.lr.ph.i.i.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %.sroa.4.0157 ; 4 uses
  %i.fn = icmp samesign eq i64 %.sroa.4.0157, %.sroa.07.sroa.13.0.copyload
  br i1 %i.fn, label %.lr.ph.split.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fo = load i8, ptr %i.fm, align 1, !noalias !440, !noundef !5 ; 4 uses
  %i.fp = icmp sgt i8 %i.fo, -1
  br i1 %i.fp, label %.thread, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i": ; preds = %bb.ak
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.fr = and i8 %i.fo, 31
  %i.fs = zext nneg i8 %i.fr to i32               ; 3 uses
  %i.ft = add nuw nsw i64 %.sroa.4.0157, 1
  %i.fu = icmp samesign ne i64 %i.ft, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.fu)
  %i.fv = load i8, ptr %i.fq, align 1, !noalias !440, !noundef !5
  %i.fw = shl nuw nsw i32 %i.fs, 6
  %i.fx = and i8 %i.fv, 63
  %i.fy = zext nneg i8 %i.fx to i32               ; 2 uses
  %i.fz = or disjoint i32 %i.fw, %i.fy
  %i.ga = icmp samesign ugt i8 %i.fo, -33
  br i1 %i.ga, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i", label %bb.al

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i"
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  %i.gc = add nuw nsw i64 %.sroa.4.0157, 2
  %i.gd = icmp samesign ne i64 %i.gc, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.gd)
  %i.ge = load i8, ptr %i.gb, align 1, !noalias !440, !noundef !5
  %i.gf = shl nuw nsw i32 %i.fy, 6
  %i.gg = and i8 %i.ge, 63
  %i.gh = zext nneg i8 %i.gg to i32
  %i.gi = or disjoint i32 %i.gf, %i.gh            ; 2 uses
  %i.gj = shl nuw nsw i32 %i.fs, 12
  %i.gk = or disjoint i32 %i.gi, %i.gj
  %i.gl = icmp samesign ugt i8 %i.fo, -17
  br i1 %i.gl, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.i.i", label %bb.al

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i"
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fm, i64 3
  %i.gn = add nuw nsw i64 %.sroa.4.0157, 3
  %i.go = icmp samesign ne i64 %i.gn, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.go)
  %i.gp = load i8, ptr %i.gm, align 1, !noalias !440, !noundef !5
  %i.gq = shl nuw nsw i32 %i.fs, 18
  %i.gr = and i32 %i.gq, 1835008
  %i.gs = shl nuw nsw i32 %i.gi, 6
  %i.gt = and i8 %i.gp, 63
  %i.gu = zext nneg i8 %i.gt to i32
  %i.gv = or disjoint i32 %i.gs, %i.gu
  %i.gw = or disjoint i32 %i.gv, %i.gr
  br label %bb.al

bb.al:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.i.i"
  %.sroa.4.0.i.ph.i.i.peel.i.i.i = phi i32 [ %i.gk, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i" ], [ %i.gw, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.i.i" ], [ %i.fz, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i" ] ; 4 uses
  %i.gx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i, 1114112
  call void @llvm.assume(i1 %i.gx)
  %i.gy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i, 128
  br i1 %i.gy, label %.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gz = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i, 2048
  br i1 %i.gz, label %.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ha = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i, 65536
  %..i.i.peel.i.i.i = select i1 %i.ha, i64 3, i64 4
  br label %.thread

.thread:                                          ; preds = %bb.ak, %bb.an, %bb.am, %bb.al
  %.sroa.01.0.i.i.peel.i.i.i = phi i64 [ 2, %bb.am ], [ %..i.i.peel.i.i.i, %bb.an ], [ 1, %bb.al ], [ 1, %bb.ak ]
  %i.hb = add i64 %.sroa.01.0.i.i.peel.i.i.i, %.sroa.4.0157 ; 15 uses
  %i.hc = icmp eq i64 %i.hb, 0
  br i1 %i.hc, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %.thread
  %.not.i.i.i.i.i.i = icmp ult i64 %i.hb, %.sroa.07.sroa.13.0.copyload
  br i1 %.not.i.i.i.i.i.i, label %bb.ap, label %.split.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %bb.ao
  %i.hd = icmp eq i64 %i.hb, %.sroa.07.sroa.13.0.copyload
  br i1 %i.hd, label %bb.aq, label %.loopexit.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.hb
  %i.hf = load i8, ptr %i.he, align 1, !alias.scope !438, !noalias !441, !noundef !5
  %i.hg = icmp sgt i8 %i.hf, -65
  br i1 %i.hg, label %bb.aq, label %.loopexit.i.i.i

bb.aq:                                            ; preds = %bb.ap, %.split.i.i.i.i.i.i, %.thread
  %i.hh = icmp samesign eq i64 %i.hb, %.sroa.07.sroa.13.0.copyload
  br i1 %i.hh, label %.lr.ph.i.i.i.i.backedge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.hb
  %i.hj = load i8, ptr %i.hi, align 1, !noalias !442, !noundef !5 ; 3 uses
  %i.hk = icmp sgt i8 %i.hj, -1
  br i1 %i.hk, label %.lr.ph.i.i.i.i.backedge, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i": ; preds = %bb.ar
  %i.hl = add nuw nsw i64 %i.hb, 1
  %i.hm = icmp samesign ne i64 %i.hl, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.hm)
  %i.hn = icmp samesign ugt i8 %i.hj, -33
  br i1 %i.hn, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.backedge

.lr.ph.i.i.i.i.backedge:                          ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i", %bb.ar, %bb.aq
  %.sroa.4.0157.be = phi i64 [ %.sroa.07.sroa.13.0.copyload, %bb.aq ], [ %i.hb, %bb.ar ], [ %i.hb, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i" ], [ %i.hb, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i" ]
  br label %.lr.ph.i.i.i.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i"
  %i.ho = add nuw nsw i64 %i.hb, 2
  %i.hp = icmp samesign ne i64 %i.ho, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.hp)
  %i.hq = icmp samesign ugt i8 %i.hj, -17
  br i1 %i.hq, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.backedge

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i"
  %i.hr = add nuw nsw i64 %i.hb, 3
  %i.hs = icmp samesign ne i64 %i.hr, %.sroa.07.sroa.13.0.copyload
  br label %.lr.ph.i.i.i.i.sink.split

.loopexit.i.i.i:                                  ; preds = %bb.ap, %.split.i.i.i.i.i.i, %bb.ai, %.split.i.i.i.peel.i.i.i, %bb.ad, %.split.i.i.i.i.i.i.peel, %bb.t, %.split.i.i.i.peel.i.i.i.peel
  %.lcssa12.i.i.i = phi i64 [ %.sroa.07.sroa.4.0.copyload, %.split.i.i.i.peel.i.i.i.peel ], [ %.sroa.07.sroa.4.0.copyload, %bb.t ], [ %i.do, %.split.i.i.i.i.i.i.peel ], [ %i.do, %bb.ad ], [ %.sroa.4.0157, %.split.i.i.i.peel.i.i.i ], [ %.sroa.4.0157, %bb.ai ], [ %i.hb, %.split.i.i.i.i.i.i ], [ %i.hb, %bb.ap ]
  call void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.07.sroa.12.0.copyload, i64 noundef %.sroa.07.sroa.13.0.copyload, i64 noundef %.lcssa12.i.i.i, i64 noundef %.sroa.07.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #19, !noalias !441
  unreachable

.split137.us:                                     ; preds = %.lr.ph317
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ac, i64 noundef %.sroa.07.sroa.15.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #19, !noalias !443
  unreachable

.split140.us:                                     ; preds = %bb.g
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ae, i64 noundef %.sroa.07.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #19, !noalias !443
  unreachable

.split.us:                                        ; preds = %.lr.ph
  %i.ht = add i64 %i.k, %.sroa.0.0.i.i23.us
  %umax.i27 = call i64 @llvm.umax.i64(i64 %.sroa.07.sroa.13.0.copyload, i64 %i.ht)
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %umax.i27, i64 noundef %.sroa.07.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19, !noalias !443
  unreachable

.split148.us:                                     ; preds = %.lr.ph324
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.bf, i64 noundef %.sroa.07.sroa.15.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #19, !noalias !444
  unreachable

.split151.us:                                     ; preds = %bb.n
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.bg, i64 noundef %.sroa.07.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #19, !noalias !444
  unreachable

.split144.us:                                     ; preds = %.lr.ph321
  %i.hu = add i64 %i.ap, %.sroa.07.sroa.4.0.copyload
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.07.sroa.13.0.copyload, i64 %i.hu)
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %umax.i, i64 noundef %.sroa.07.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19, !noalias !444
  unreachable

.lr.ph.split.i.i:                                 ; preds = %bb.aj, %bb.k, %bb.b, %.sink.split.i.us, %bb.r, %.loopexit19.i.i.i.peel, %.lr.ph.i.split
  %.sroa.39.0133 = phi i64 [ 0, %.loopexit19.i.i.i.peel ], [ 0, %.lr.ph.i.split ], [ %.sroa.39.0.us, %.sink.split.i.us ], [ %.sroa.39.0.us, %bb.r ], [ %.sroa.39.0.us, %bb.k ], [ %.sroa.39.0.us, %bb.b ], [ %.sroa.4.0157, %bb.aj ] ; 2 uses
  %i.hv = sub nuw i64 35, %.sroa.39.0133          ; 6 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %.sroa.39.0133 ; 3 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.split.i.i
  %i.hx = phi i64 [ 0, %.lr.ph.split.i.i ], [ %i.im, %.backedge.backedge ] ; 5 uses
  %i.hy = sub nuw nsw i64 %i.hv, %i.hx            ; 5 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.hx ; 2 uses
  %i.ia = icmp samesign ult i64 %i.hy, 16
  br i1 %i.ia, label %.preheader.i.i.i, label %bb.as

.preheader.i.i.i:                                 ; preds = %.backedge
  %.not.i.i.i = icmp eq i64 %i.hy, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.as:                                            ; preds = %.backedge
  %i.ib = call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17hb790a94b054306e6E(i8 noundef 60, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.hz, i64 noundef %i.hy), !noalias !445
  br label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.at, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.hy, %bb.at ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.at ], [ 1, %.lr.ph.i.i.i ]
  %i.ic = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.id = insertvalue { i64, i64 } %i.ic, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.at
  %.sroa.01.05.i.i.i = phi i64 [ %i.ih, %bb.at ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hz, i64 %.sroa.01.05.i.i.i
  %i.if = load i8, ptr %i.ie, align 1, !alias.scope !446, !noalias !445, !noundef !5
  %i.ig = icmp eq i8 %i.if, 60
  br i1 %i.ig, label %._crit_edge.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i
  %i.ih = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ih, %i.hy
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.as
  %.merged.i.i.i = phi { i64, i64 } [ %i.id, %._crit_edge.i.i.i ], [ %i.ib, %bb.as ] ; 2 uses
  %i.ii = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.ij = trunc nuw i64 %i.ii to i1
  br i1 %i.ij, label %bb.au, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit"

bb.au:                                            ; preds = %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i
  %i.ik = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 3 uses
  %i.il = add nuw nsw i64 %i.hx, 1
  %i.im = add i64 %i.il, %i.ik                    ; 2 uses
  %.not14.i.i = icmp ugt i64 %i.im, %i.hv         ; 2 uses
  %i.in = add i64 %i.hx, %i.ik
  %or.cond.i.i.not = icmp ult i64 %i.in, %i.hv
  br i1 %or.cond.i.i.not, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %.not14.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit", label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.av, %bb.aw
  br label %.backedge

bb.aw:                                            ; preds = %bb.au
  %i.io = add i64 %i.hx, %i.ik                    ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.io
  %lhsc = load i8, ptr %i.ip, align 1
  %i.iq = icmp eq i8 %lhsc, 60                    ; 2 uses
  %brmerge = select i1 %i.iq, i1 true, i1 %.not14.i.i
  br i1 %brmerge, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit.split.loop.exit", label %.backedge.backedge

"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit.split.loop.exit": ; preds = %bb.aw
  %.mux.le = select i1 %i.iq, i64 %i.io, i64 %i.hv
  br label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit"

"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit": ; preds = %bb.av, %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit.split.loop.exit"
  %.sroa.4.1.i = phi i64 [ %.mux.le, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit.split.loop.exit" ], [ %i.hv, %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i ], [ %i.hv, %bb.av ]
  %i.ir = insertvalue { ptr, i64 } poison, ptr %i.hw, 0
  %i.is = insertvalue { ptr, i64 } %i.ir, i64 %.sroa.4.1.i, 1
  ret { ptr, i64 } %i.is
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hcae45cf2b18d3a5cE"(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable_or_null(24)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #6

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3eeda5b08ada749aE"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hacf87f6daaa1781eE"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd8555fa4eb1b4d4dE"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h58dd519c895d8049E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcfd8ed4231926af8E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h250495e46417481dE"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8ffe18c38cc07863E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h452891d7a9090ae6E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77374583839addd9E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha837511b77035433E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h040d78a81c75c243E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3b87d9d24edef06cE"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h443f75200eb5e93bE"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc2af8237e9b78b53E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h670739065d6ccec7E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b78abe370e97a15E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha86766fe95ee8582E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4f9b600e0434f438E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h033c9ce35d6b13e0E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4c72d244e62c00ecE"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1cba19ea4a74dad8E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcb28bc7450a5beb1E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc3a507ddadc41060E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9d28ce7fb48139e7E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he476a3d1497a3c6dE"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77c3e2cfc43545b6E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hab187e11a518a110E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3b293d94613ecc39E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9b215add247d83f9E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h24ffc248413dd906E"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17hb790a94b054306e6E(i8 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(address) dereferenceable(104), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h35895b0db1271ff3E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #9

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #4

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #11

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h98c6837e4dd74476E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_ZN6camino8Utf8Path3new17h4ab38da8cf1b9539E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN3std4path4Path4join17h630e4bc09ee3484dE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!217 = distinct !{!217, !216, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E: argument 1"}
!218 = distinct !{!218, !216, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E: argument 0"}
!219 = !{i64 -5536668032804692732}
!220 = !{!210, !209}
!221 = !{!210}
!222 = !{!213, !212}
!223 = !{!213}
!224 = !{!215}
!225 = !{!218, !217}
!226 = !{!218}
!227 = !{i64 -4450452008971515190}
!228 = distinct !{!228, i1 true, !"_ZN9configure3aqt11build_forms17hda932fd8c0c9422eE"}
!229 = distinct !{!229, !228, !"_ZN9configure3aqt11build_forms17hda932fd8c0c9422eE: argument 0"}
!230 = distinct !{!230, i1 true, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E"}
!231 = distinct !{!231, !230, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E: argument 1"}
!232 = distinct !{!232, !230, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E: argument 0"}
!233 = distinct !{!233, i1 true, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h157b314d0ff6d99dE"}
!234 = distinct !{!234, !233, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h157b314d0ff6d99dE: argument 1"}
!235 = distinct !{!235, !233, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h157b314d0ff6d99dE: argument 2"}
!236 = distinct !{!236, !233, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h157b314d0ff6d99dE: argument 0"}
!237 = distinct !{!237, i1 true, !"_ZN4core3ptr185drop_in_place$LT$core..iter..adapters..filter_map..FilterMap$LT$core..slice..iter..Iter$LT$camino..Utf8PathBuf$GT$$C$ninja_gen..input..Glob..resolve..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h9293fb0a7dd8557aE"}
!238 = distinct !{!238, !237, !"_ZN4core3ptr185drop_in_place$LT$core..iter..adapters..filter_map..FilterMap$LT$core..slice..iter..Iter$LT$camino..Utf8PathBuf$GT$$C$ninja_gen..input..Glob..resolve..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h9293fb0a7dd8557aE: argument 0"}
!239 = distinct !{!239, i1 true, !"_ZN4core3ptr81drop_in_place$LT$ninja_gen..input..Glob..resolve..$u7b$$u7b$closure$u7d$$u7d$$GT$17h3a93522c51866f80E"}
!240 = distinct !{!240, !239, !"_ZN4core3ptr81drop_in_place$LT$ninja_gen..input..Glob..resolve..$u7b$$u7b$closure$u7d$$u7d$$GT$17h3a93522c51866f80E: argument 0"}
!241 = distinct !{!241, i1 true, !"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$globset..glob..GlobMatcher$GT$$GT$17h46f7e02468b47ba2E"}
!242 = distinct !{!242, !241, !"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$globset..glob..GlobMatcher$GT$$GT$17h46f7e02468b47ba2E: argument 0"}
!243 = distinct !{!243, i1 true, !"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$globset..glob..GlobMatcher$GT$$GT$17h46f7e02468b47ba2E"}
!244 = distinct !{!244, !243, !"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$globset..glob..GlobMatcher$GT$$GT$17h46f7e02468b47ba2E: argument 0"}
!245 = distinct !{!245, i1 true, !"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$ninja_gen..input..BuildInput$GT$$GT$17h95941964f2582739E"}
!246 = distinct !{!246, !245, !"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$ninja_gen..input..BuildInput$GT$$GT$17h95941964f2582739E: argument 0"}
!247 = distinct !{!247, i1 true, !"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$ninja_gen..input..BuildInput$GT$$GT$17h95941964f2582739E"}
!248 = distinct !{!248, !247, !"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$ninja_gen..input..BuildInput$GT$$GT$17h95941964f2582739E: argument 0"}
!249 = distinct !{!249, i1 true, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17from_raw_parts_in17he1d45079605be904E"}
!250 = distinct !{!250, !249, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17from_raw_parts_in17he1d45079605be904E: argument 0"}
!251 = distinct !{!251, i1 true, !"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17h605c3cff841a528bE"}
!252 = distinct !{!252, !251, !"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17h605c3cff841a528bE: argument 0"}
!253 = distinct !{!253, i1 true, !"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17h605c3cff841a528bE"}
!254 = distinct !{!254, !253, !"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17h605c3cff841a528bE: argument 0"}
!255 = distinct !{!255, i1 true, !"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17hcdb13b152c7683d6E"}
!256 = distinct !{!256, !255, !"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17hcdb13b152c7683d6E: argument 1"}
!257 = distinct !{!257, !255, !"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17hcdb13b152c7683d6E: argument 0"}
!258 = distinct !{!258, i1 true, !"_ZN4core3str7pattern14TwoWaySearcher4next17hc95d8737fa102c25E"}
!259 = distinct !{!259, !258, !"_ZN4core3str7pattern14TwoWaySearcher4next17hc95d8737fa102c25E: argument 2"}
!260 = distinct !{!260, !258, !"_ZN4core3str7pattern14TwoWaySearcher4next17hc95d8737fa102c25E: argument 3"}
!261 = distinct !{!261, i1 true, !"_ZN4core3str7pattern14TwoWaySearcher4next17hc95d8737fa102c25E"}
!262 = distinct !{!262, !261, !"_ZN4core3str7pattern14TwoWaySearcher4next17hc95d8737fa102c25E: argument 2"}
!263 = distinct !{!263, !261, !"_ZN4core3str7pattern14TwoWaySearcher4next17hc95d8737fa102c25E: argument 3"}
!264 = distinct !{!264, i1 true, !"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h4ed2090538ea9a22E"}
!265 = distinct !{!265, !264, !"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h4ed2090538ea9a22E: argument 0"}
!266 = distinct !{!266, i1 true, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E"}
!267 = distinct !{!267, !266, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E: argument 1"}
!268 = distinct !{!268, !266, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E: argument 0"}
!269 = distinct !{!269, i1 true, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E"}
!270 = distinct !{!270, !269, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E: argument 1"}
!271 = distinct !{!271, !269, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E: argument 0"}
!272 = distinct !{!272, i1 true, !"_ZN4core3str11validations15next_code_point17hd84f581a1e5a9aacE"}
!273 = distinct !{!273, !272, !"_ZN4core3str11validations15next_code_point17hd84f581a1e5a9aacE: argument 0"}
!274 = distinct !{!274, !361}
!275 = distinct !{!275, i1 true, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hdf8a4bbb193e5c1cE"}
!276 = distinct !{!276, !275, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hdf8a4bbb193e5c1cE: argument 0"}
!277 = distinct !{!277, !275, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hdf8a4bbb193e5c1cE: argument 1"}
!278 = distinct !{!278, i1 true, !"_ZN9configure3aqt23build_generated_sources17h4bba6898dc16cc3aE"}
!279 = distinct !{!279, !278, !"_ZN9configure3aqt23build_generated_sources17h4bba6898dc16cc3aE: argument 0"}
!280 = distinct !{!280, i1 true, !"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$ninja_gen..input..BuildInput$GT$$GT$17h95941964f2582739E"}
!281 = distinct !{!281, !280, !"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$ninja_gen..input..BuildInput$GT$$GT$17h95941964f2582739E: argument 0"}
!282 = distinct !{!282, i1 true, !"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$ninja_gen..input..BuildInput$GT$$GT$17h95941964f2582739E"}
!283 = distinct !{!283, !282, !"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$ninja_gen..input..BuildInput$GT$$GT$17h95941964f2582739E: argument 0"}
!284 = distinct !{!284, i1 true, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17from_raw_parts_in17he1d45079605be904E"}
!285 = distinct !{!285, !284, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17from_raw_parts_in17he1d45079605be904E: argument 0"}
!286 = distinct !{!286, i1 true, !"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17h605c3cff841a528bE"}
!287 = distinct !{!287, !286, !"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17h605c3cff841a528bE: argument 0"}
!288 = distinct !{!288, i1 true, !"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$ninja_gen..input..BuildInput$GT$$GT$17h95941964f2582739E"}
!289 = distinct !{!289, !288, !"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$ninja_gen..input..BuildInput$GT$$GT$17h95941964f2582739E: argument 0"}
!290 = distinct !{!290, i1 true, !"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$ninja_gen..input..BuildInput$GT$$GT$17h95941964f2582739E"}
!291 = distinct !{!291, !290, !"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$ninja_gen..input..BuildInput$GT$$GT$17h95941964f2582739E: argument 0"}
!292 = distinct !{!292, i1 true, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17from_raw_parts_in17he1d45079605be904E"}
!293 = distinct !{!293, !292, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17from_raw_parts_in17he1d45079605be904E: argument 0"}
!294 = distinct !{!294, i1 true, !"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17h605c3cff841a528bE"}
!295 = distinct !{!295, !294, !"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17h605c3cff841a528bE: argument 0"}
!296 = distinct !{!296, i1 true, !"_ZN9configure3aqt17build_data_folder17h48c493a90b06261fE"}
!297 = distinct !{!297, !296, !"_ZN9configure3aqt17build_data_folder17h48c493a90b06261fE: argument 0"}
!298 = distinct !{!298, i1 true, !"_ZN9configure3aqt9build_css17hb44c0644d4367f0dE"}
!299 = distinct !{!299, !298, !"_ZN9configure3aqt9build_css17hb44c0644d4367f0dE: argument 0"}
!300 = distinct !{!300, i1 true, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E"}
!301 = distinct !{!301, !300, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E: argument 1"}
!302 = distinct !{!302, !300, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E: argument 0"}
!303 = distinct !{!303, i1 true, !"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h69f850aaf8e47ef8E"}
!304 = distinct !{!304, !303, !"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h69f850aaf8e47ef8E: argument 1"}
!305 = distinct !{!305, i1 true, !"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h69f850aaf8e47ef8E"}
!306 = distinct !{!306, !305, !"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h69f850aaf8e47ef8E: argument 1:h.rot"}
!307 = distinct !{!307, i1 true, !"_ZN9configure3aqt10build_imgs17hdefb8903ff95c7b7E"}
!308 = distinct !{!308, !307, !"_ZN9configure3aqt10build_imgs17hdefb8903ff95c7b7E: argument 0"}
!309 = distinct !{!309, i1 true, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E"}
!310 = distinct !{!310, !309, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E: argument 1"}
!311 = distinct !{!311, !309, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E: argument 0"}
!312 = distinct !{!312, i1 true, !"_ZN9configure3aqt8build_js17h2edf5509ceabe4d7E"}
!313 = distinct !{!313, !312, !"_ZN9configure3aqt8build_js17h2edf5509ceabe4d7E: argument 0"}
!314 = distinct !{!314, i1 true, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h3b6f713ed6dfe398E"}
!315 = distinct !{!315, !314, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h3b6f713ed6dfe398E: argument 1"}
!316 = distinct !{!316, !314, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h3b6f713ed6dfe398E: argument 0"}
!317 = distinct !{!317, i1 true, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hc67d44c2584ad46aE"}
!318 = distinct !{!318, !317, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hc67d44c2584ad46aE: argument 1"}
!319 = distinct !{!319, !317, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hc67d44c2584ad46aE: argument 0"}
!320 = distinct !{!320, i1 true, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E"}
!321 = distinct !{!321, !320, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E: argument 1"}
!322 = distinct !{!322, !320, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E: argument 0"}
!323 = distinct !{!323, i1 true, !"_ZN9configure3aqt15build_vendor_js17ha888503e679c1860E"}
!324 = distinct !{!324, !323, !"_ZN9configure3aqt15build_vendor_js17ha888503e679c1860E: argument 0"}
!325 = distinct !{!325, i1 true, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h3b6f713ed6dfe398E"}
!326 = distinct !{!326, !325, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h3b6f713ed6dfe398E: argument 1"}
!327 = distinct !{!327, !325, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h3b6f713ed6dfe398E: argument 0"}
!328 = distinct !{!328, i1 true, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hc67d44c2584ad46aE"}
!329 = distinct !{!329, !328, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hc67d44c2584ad46aE: argument 1"}
!330 = distinct !{!330, !328, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hc67d44c2584ad46aE: argument 0"}
!331 = distinct !{!331, i1 true, !"_ZN9configure3aqt11build_pages17hbddd40b6beee126eE"}
!332 = distinct !{!332, !331, !"_ZN9configure3aqt11build_pages17hbddd40b6beee126eE: argument 0"}
!333 = distinct !{!333, i1 true, !"_ZN9configure3aqt11build_wheel17hd8c5f9761a57a607E"}
!334 = distinct !{!334, !333, !"_ZN9configure3aqt11build_wheel17hd8c5f9761a57a607E: argument 0"}
!335 = distinct !{!335, i1 true, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E"}
!336 = distinct !{!336, !335, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E: argument 1"}
!337 = distinct !{!337, !335, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E: argument 0"}
!338 = !{i64 -7644903876862425923}
!339 = !{!229}
!340 = !{!232, !231, !229}
!341 = !{!232, !229}
!342 = !{!234}
!343 = !{!236, !234, !235, !229}
!344 = !{!242, !240, !238}
!345 = !{!244, !240, !238}
!346 = !{!246}
!347 = !{!248}
!348 = !{!250}
!349 = !{!252}
!350 = !{!254}
!351 = !{!257, !256, !229}
!352 = !{!257, !229}
!353 = !{!259}
!354 = !{!260}
!355 = !{!262}
!356 = !{!263}
!357 = !{!265}
!358 = !{!271, !270, !268, !267, !257, !229}
!359 = !{!273, !271, !270, !268, !267, !257, !229}
!360 = !{!257}
!361 = !{!"llvm.loop.peeled.count", i32 1}
!362 = !{!256, !229}
!363 = !{!276}
!364 = !{!277, !229}
!365 = !{!279}
!366 = !{!281}
!367 = !{!283}
!368 = !{!285}
!369 = !{!287}
!370 = !{!289}
!371 = !{!291}
!372 = !{!293}
!373 = !{!295}
!374 = !{!297}
!375 = !{!299, !297}
!376 = !{!302, !301, !299, !297}
!377 = !{!302}
!378 = !{!304}
!379 = !{!306}
!380 = !{!308, !297}
!381 = !{!308}
!382 = !{!311, !310, !308, !297}
!383 = !{!311, !308}
!384 = !{!313, !297}
!385 = !{!313}
!386 = !{!319, !318, !316, !315, !313, !297}
!387 = !{!319, !316, !313, !297}
!388 = !{!322, !321, !313, !297}
!389 = !{!322}
!390 = !{!324, !313, !297}
!391 = !{!330, !329, !327, !326, !313, !297}
!392 = !{!330, !327, !313, !297}
!393 = !{!332, !297}
!394 = !{!332}
!395 = !{!334}
!396 = !{!337, !336, !334}
!397 = !{!337, !334}
!398 = distinct !{!398, i1 true, !"_ZN4core3str7pattern14TwoWaySearcher4next17hc95d8737fa102c25E"}
!399 = distinct !{!399, !398, !"_ZN4core3str7pattern14TwoWaySearcher4next17hc95d8737fa102c25E: argument 2"}
!400 = distinct !{!400, !398, !"_ZN4core3str7pattern14TwoWaySearcher4next17hc95d8737fa102c25E: argument 3"}
!401 = distinct !{!401, i1 true, !"_ZN4core3str7pattern14TwoWaySearcher4next17hc95d8737fa102c25E"}
!402 = distinct !{!402, !401, !"_ZN4core3str7pattern14TwoWaySearcher4next17hc95d8737fa102c25E: argument 2"}
!403 = distinct !{!403, !401, !"_ZN4core3str7pattern14TwoWaySearcher4next17hc95d8737fa102c25E: argument 3"}
!404 = distinct !{!404, i1 true, !"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h4ed2090538ea9a22E"}
!405 = distinct !{!405, !404, !"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h4ed2090538ea9a22E: argument 0"}
!406 = distinct !{!406, i1 true, !"_ZN4core4iter6traits8iterator8Iterator4fold17h2e1b89611d06ce42E"}
!407 = distinct !{!407, !406, !"_ZN4core4iter6traits8iterator8Iterator4fold17h2e1b89611d06ce42E: argument 0"}
!408 = distinct !{!408, i1 true, !"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had1dc90ac7b6cc50E"}
!409 = distinct !{!409, !408, !"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had1dc90ac7b6cc50E: argument 0"}
!410 = distinct !{!410, i1 true, !"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17hef8d2a0ebca17fbfE"}
!411 = distinct !{!411, !410, !"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17hef8d2a0ebca17fbfE: argument 0"}
!412 = distinct !{!412, i1 true, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E"}
!413 = distinct !{!413, !412, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E: argument 1"}
!414 = distinct !{!414, !412, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E: argument 0"}
!415 = distinct !{!415, i1 true, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E"}
!416 = distinct !{!416, !415, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E: argument 1:Peel0"}
!417 = distinct !{!417, i1 true, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E"}
!418 = distinct !{!418, !417, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E: argument 0"}
!419 = distinct !{!419, i1 true, !"_ZN4core3str11validations15next_code_point17hd84f581a1e5a9aacE"}
!420 = distinct !{!420, !419, !"_ZN4core3str11validations15next_code_point17hd84f581a1e5a9aacE: argument 0"}
!421 = distinct !{!421, !417, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E: argument 1"}
!422 = distinct !{!422, !398, !"_ZN4core3str7pattern14TwoWaySearcher4next17hc95d8737fa102c25E: argument 1"}
!423 = distinct !{!423, !398, !"_ZN4core3str7pattern14TwoWaySearcher4next17hc95d8737fa102c25E: argument 0"}
!424 = distinct !{!424, !401, !"_ZN4core3str7pattern14TwoWaySearcher4next17hc95d8737fa102c25E: argument 1"}
!425 = distinct !{!425, !401, !"_ZN4core3str7pattern14TwoWaySearcher4next17hc95d8737fa102c25E: argument 0"}
!426 = distinct !{!426, i1 true, !"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE"}
!427 = distinct !{!427, !426, !"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE: argument 0"}
!428 = distinct !{!428, i1 true, !"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E"}
!429 = distinct !{!429, !428, !"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E: argument 1"}
!430 = distinct !{!430, !428, !"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E: argument 0"}
!431 = distinct !{!431, i1 true, !"_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E"}
!432 = distinct !{!432, !431, !"_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E: argument 0"}
!433 = !{i64 4333259159270442119}
!434 = !{!399}
!435 = !{!400}
!436 = !{!402}
!437 = !{!403}
!438 = !{!405}
!439 = !{!418, !416, !414, !413, !411, !409, !407}
!440 = !{!420, !418, !416, !414, !413, !411, !409, !407}
!441 = !{!418, !421, !414, !413, !411, !409, !407}
!442 = !{!420, !418, !421, !414, !413, !411, !409, !407}
!443 = !{!423, !422, !399, !400}
!444 = !{!425, !424, !402, !403}
!445 = !{!430, !429, !427}
!446 = !{!432}
end_hunk_1
