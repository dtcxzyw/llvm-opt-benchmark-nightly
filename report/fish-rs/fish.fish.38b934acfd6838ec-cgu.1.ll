Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish.fish.38b934acfd6838ec-cgu.1?download=true
inline.NumInlined: 538
inline.NumDeleted: 181
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvCs4RW8js5ES7g_4fish13throwing_main:bb.a
  br label %bb.qb

bb.uo:                                            ; preds = %bb.qb
  %i.auu = invoke noundef i32 @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser11last_status(ptr noundef nonnull align 8 %i.fx)
          to label %bb.up unwind label %bb.mv

bb.up:                                            ; preds = %bb.uo, %bb.qb
  %i.auv = phi i32 [ 127, %bb.qb ], [ %i.auu, %bb.uo ] ; 3 uses
  store i32 %i.auv, ptr %i.em, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el)
  %i.auw = call noundef i32 @getpid() #22         ; 2 uses
  %or.cond245 = icmp slt i32 %i.auw, 1
  br i1 %or.cond245, label %bb.uq, label %bb.ur, !prof !927

bb.uq:                                            ; preds = %bb.up
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #23
          to label %bb.mw unwind label %bb.mv

bb.ur:                                            ; preds = %bb.up
  invoke void @_RNvMs1_NtCs8frGy5WneL6_4fish5eventNtB5_5Event12process_exit(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.el, i32 noundef %i.auw, i32 noundef %i.auv)
          to label %bb.us unwind label %bb.mv

bb.us:                                            ; preds = %bb.ur
  invoke void @_RNvNtCs8frGy5WneL6_4fish5event4fire(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %i.fx, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.el)
          to label %bb.ut unwind label %bb.mv

bb.ut:                                            ; preds = %bb.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dt, i64 noundef 9, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.uu unwind label %bb.mv

bb.uu:                                            ; preds = %bb.ut
  %i.aux = load i64, ptr %i.dt, align 8, !range !611, !noundef !8
  %i.auy = trunc nuw i64 %i.aux to i1
  %i.auz = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.ava = load i64, ptr %i.auz, align 8, !range !612, !noundef !8 ; 3 uses
  %i.avb = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  br i1 %i.auy, label %bb.uv, label %bb.uw, !prof !578

bb.uv:                                            ; preds = %bb.uu
  %i.avc = load i64, ptr %i.avb, align 8
  br label %.invoke757

bb.uw:                                            ; preds = %bb.uu
  %i.avd = load ptr, ptr %i.avb, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.ave = icmp samesign ugt i64 %i.ava, 8
  call void @llvm.assume(i1 %i.ave)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.avd, ptr noundef nonnull align 4 dereferenceable(36) @28, i64 36, i1 false)
  store i64 %i.ava, ptr %i.ek, align 8
  %.sroa.4143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store ptr %i.avd, ptr %.sroa.4143.0..sroa_idx, align 8
  %.sroa.6144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i64 9, ptr %.sroa.6144.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej)
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.avf = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 137) 24, i64 noundef 8) #22 ; 4 uses
  %i.avg = icmp eq ptr %i.avf, null
  br i1 %i.avg, label %bb.ux, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit, !prof !578

bb.ux:                                            ; preds = %bb.uw
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #23
          to label %.noexc444 unwind label %.thread555

.thread555:                                       ; preds = %bb.ux
  %i.avh = landingpad { ptr, i32 }
          cleanup
  br label %bb.zc

.noexc444:                                        ; preds = %bb.ux
  unreachable

bb.uy:                                            ; preds = %bb.uz
  %i.avi = landingpad { ptr, i32 }
          cleanup
  br label %.body357

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.uw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei)
  invoke void @_RNvXsl_Cskr4qsHYS30i_15fish_widestringlNtB5_9ToWString10to_wstring(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ei, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.em)
          to label %bb.uz unwind label %.thread551

.thread551:                                       ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  %i.avj = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.avf, i64 noundef 24, i64 noundef 8) #22
  br label %bb.zc

bb.uz:                                            ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.avf, ptr noundef nonnull align 8 dereferenceable(24) %i.ei, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  store i64 1, ptr %i.ej, align 8
  %i.avk = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store ptr %i.avf, ptr %i.avk, align 8
  %i.avl = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store i64 1, ptr %i.avl, align 8
  invoke void @_RNvNtCs8frGy5WneL6_4fish5event12fire_generic(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %i.fx, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ek, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ej)
          to label %bb.va unwind label %bb.uy

bb.va:                                            ; preds = %bb.uz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek)
  %i.avm = load i64, ptr %i.hp, align 8, !range !38, !noundef !8
  %.not212 = icmp eq i64 %i.avm, -1               ; 33 uses
  br i1 %.not212, label %bb.vc, label %bb.vb

bb.vb:                                            ; preds = %bb.va
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, ptr noundef nonnull align 8 dereferenceable(24) %i.hp, i64 24, i1 false)
  %i.avn = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.avo = load ptr, ptr %i.avn, align 8, !nonnull !8, !noundef !8
  %i.avp = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.avq = load i64, ptr %i.avp, align 8, !noundef !8
  invoke void @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser15flush_profiling(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %i.fx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.avo, i64 noundef %i.avq)
          to label %bb.ve unwind label %bb.vd

bb.vc:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish.exit451, %bb.va
  invoke void @_RNvNtNtCs8frGy5WneL6_4fish7history7history8save_all()
          to label %bb.vh unwind label %bb.mv

bb.vd:                                            ; preds = %bb.vb
  %i.avr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.eh) #19
          to label %.body357 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ve:                                            ; preds = %bb.vb
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eh)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs4RW8js5ES7g_4fish.exit.i446 unwind label %bb.vf

bb.vf:                                            ; preds = %bb.ve
  %i.avs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eh)
          to label %.body357 unwind label %bb.vg

bb.vg:                                            ; preds = %bb.vf
  %i.avt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs4RW8js5ES7g_4fish.exit.i446: ; preds = %bb.ve
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eh)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish.exit451 unwind label %bb.mv

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish.exit451: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs4RW8js5ES7g_4fish.exit.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  br label %bb.vc

bb.vh:                                            ; preds = %bb.vc
  %i.avu = invoke noundef i32 @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader18reader_exit_signal()
          to label %bb.vi unwind label %bb.mv     ; 3 uses

bb.vi:                                            ; preds = %bb.vh
  %i.avv = icmp eq i32 %i.avu, 0
  br i1 %i.avv, label %bb.vj, label %bb.vk

bb.vj:                                            ; preds = %bb.vk, %bb.vi
  %i.avw = load i8, ptr %i.ht, align 8, !range !601, !noundef !8
  %i.avx = trunc nuw i8 %i.avw to i1
  br i1 %i.avx, label %bb.vm, label %bb.vl

bb.vk:                                            ; preds = %bb.vi
  %i.avy = call noundef i64 @signal(i32 noundef %i.avu, i64 noundef 0) #22 ; 0 uses
  %i.avz = call noundef i32 @raise(i32 noundef %i.avu) #22 ; 0 uses
  br label %bb.vj

bb.vl:                                            ; preds = %_RNvCs4RW8js5ES7g_4fish17print_rusage_self.exit, %bb.vj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish6parser6ParserECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(432) %i.fx)
          to label %bb.yj unwind label %bb.kk

bb.vm:                                            ; preds = %bb.vj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  invoke void @_RNvNtNtCse7JGOylGlDZ_3nix3sys8resource9getrusage(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.aj, i32 noundef 0)
          to label %.noexc466 unwind label %bb.mv

.noexc466:                                        ; preds = %bb.vm
  call void @llvm.experimental.noalias.scope.decl(metadata !928)
  call void @llvm.experimental.noalias.scope.decl(metadata !931)
  %i.awa = load i32, ptr %i.aj, align 8, !range !176, !alias.scope !931, !noalias !928, !noundef !8
  %i.awb = trunc nuw i32 %i.awa to i1
  br i1 %i.awb, label %bb.vn, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCse7JGOylGlDZ_3nix3sys8resource5UsageNtNtNtBN_5errno6consts5ErrnoE6unwrapCs4RW8js5ES7g_4fish.exit.i, !prof !578

bb.vn:                                            ; preds = %.noexc466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !933
  %i.awc = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.awd = load i32, ptr %i.awc, align 4, !range !934, !alias.scope !931, !noalias !928, !noundef !8
  store i32 %i.awd, ptr %i.g, align 4, !noalias !933
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @114, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @113, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #24
          to label %.noexc467 unwind label %bb.mv

.noexc467:                                        ; preds = %bb.vn
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCse7JGOylGlDZ_3nix3sys8resource5UsageNtNtNtBN_5errno6consts5ErrnoE6unwrapCs4RW8js5ES7g_4fish.exit.i: ; preds = %.noexc466
  %i.awe = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.awe, align 8, !alias.scope !933 ; 2 uses
  %.sroa.4.0..sroa_idx134.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx134.i, align 8, !alias.scope !933
  %.sroa.5.0..sroa_idx135.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx135.i, align 8, !alias.scope !933 ; 2 uses
  %.sroa.6.0..sroa_idx.i452 = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i452, align 8, !alias.scope !933
  %.sroa.7.0..sroa_idx136.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx136.i, align 8, !alias.scope !933
  %.sroa.8138.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 128
  %.sroa.8138.0.copyload.i = load i64, ptr %.sroa.8138.0..sroa_idx.i, align 8, !alias.scope !933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %0 = add i64 %.sroa.0.0.copyload.i, -9223372036854776
  %1 = icmp ult i64 %0, -18446744073709551
  br i1 %1, label %.invoke755, label %bb.vo

bb.vo:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCse7JGOylGlDZ_3nix3sys8resource5UsageNtNtNtBN_5errno6consts5ErrnoE6unwrapCs4RW8js5ES7g_4fish.exit.i
  %2 = mul nsw i64 %.sroa.0.0.copyload.i, 1000    ; 2 uses
  %i.awf = sdiv i64 %.sroa.4.0.copyload.i, 1000   ; 2 uses
  %i.awg = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %2, i64 %i.awf)
  %3 = add nsw i64 %i.awf, %2                     ; 3 uses
  %i.awh = extractvalue { i64, i1 } %i.awg, 1
  br i1 %i.awh, label %.invoke, label %bb.vp

bb.vp:                                            ; preds = %bb.vo
  %4 = add i64 %.sroa.5.0.copyload.i, -9223372036854776
  %5 = icmp ult i64 %4, -18446744073709551
  br i1 %5, label %.invoke755, label %bb.vq

bb.vq:                                            ; preds = %bb.vp
  %6 = mul nsw i64 %.sroa.5.0.copyload.i, 1000    ; 2 uses
  %i.awi = sdiv i64 %.sroa.6.0.copyload.i, 1000   ; 2 uses
  %i.awj = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %i.awi)
  %i.awk = extractvalue { i64, i1 } %i.awj, 1
  br i1 %i.awk, label %.invoke, label %bb.vr

.invoke755:                                       ; preds = %bb.vp, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCse7JGOylGlDZ_3nix3sys8resource5UsageNtNtNtBN_5errno6consts5ErrnoE6unwrapCs4RW8js5ES7g_4fish.exit.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #24
          to label %.cont756 unwind label %bb.mv

.cont756:                                         ; preds = %.invoke755
  unreachable

bb.vr:                                            ; preds = %bb.vq
  %7 = add nsw i64 %i.awi, %6                     ; 3 uses
  %i.awl = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %3, i64 %7)
  %i.awm = extractvalue { i64, i1 } %i.awl, 1
  br i1 %i.awm, label %.invoke, label %bb.vs

bb.vs:                                            ; preds = %bb.vr
  %8 = add nsw i64 %7, %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 0, ptr %i.ah, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 0, ptr %.sroa.8.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 15, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @4, ptr noalias nofree noundef nonnull align 8 inttoptr (i64 8 to ptr), i64 noundef 0)
          to label %bb.vu unwind label %bb.vt

.invoke:                                          ; preds = %bb.vr, %bb.vq, %bb.vo
  %i.awn = phi ptr [ @87, %bb.vq ], [ @87, %bb.vo ], [ @88, %bb.vr ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.awn) #24
          to label %.cont unwind label %bb.mv

.cont:                                            ; preds = %.invoke
  unreachable

bb.vt:                                            ; preds = %bb.vv, %bb.vs
  %i.awo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah) #19
          to label %.body357 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i453.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.vu:                                            ; preds = %bb.vs
  call void @llvm.experimental.noalias.scope.decl(metadata !935)
  %i.awp = load i8, ptr %i.ag, align 8, !range !601, !alias.scope !935, !noalias !938, !noundef !8
  %i.awq = trunc nuw i8 %i.awp to i1
  br i1 %i.awq, label %bb.vv, label %bb.vw, !prof !578

bb.vv:                                            ; preds = %bb.vu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !940
  %i.awr = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.aws = load i8, ptr %i.awr, align 1, !range !605, !alias.scope !935, !noalias !938, !noundef !8
  store i8 %i.aws, ptr %i.a, align 1, !noalias !940
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @114, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @116, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #24
          to label %.noexc74.i unwind label %bb.vt

.noexc74.i:                                       ; preds = %bb.vv
  unreachable

bb.vw:                                            ; preds = %bb.vu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.awt = invoke { i64, i64 } @_RINvNtCs8frGy5WneL6_4fish5wutil30unescape_bytes_and_write_to_fdRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai, i32 noundef 2)
          to label %bb.vy unwind label %bb.vx     ; 0 uses

bb.vx:                                            ; preds = %bb.vw
  %i.awu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai) #19
          to label %.body357 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i453.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.vy:                                            ; preds = %bb.vw
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit.i456 unwind label %bb.vz

bb.vz:                                            ; preds = %bb.vy
  %i.awv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body357 unwind label %bb.wa

bb.wa:                                            ; preds = %bb.vz
  %i.aww = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit.i456: ; preds = %bb.vy
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.noexc476 unwind label %bb.mv

.noexc476:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit.i456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i64 0, ptr %i.ae, align 8
  %.sroa.7.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.7.0..sroa_idx23.i, align 8
  %.sroa.8.0..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 0, ptr %.sroa.8.0..sroa_idx33.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke fastcc void @_RNvXs1M_NtCs1xwejQucwHj_5alloc6stringxNtB6_12SpecToString14spec_to_string(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ab, i64 %3)
          to label %bb.wc unwind label %bb.wb

.body.i457:                                       ; preds = %bb.wh, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit.i460, %bb.wb
  %.pn46.i = phi { ptr, i32 } [ %.pn.i461, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit.i460 ], [ %i.awx, %bb.wb ], [ %i.axi, %bb.wh ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #19
          to label %.body357 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i453.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.wb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs4RW8js5ES7g_4fish.exit.i.i, %.noexc476
  %i.awx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i457

bb.wc:                                            ; preds = %.noexc476
  %i.awy = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.awz = load ptr, ptr %i.awy, align 8, !nonnull !8, !noundef !8
  %i.axa = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.axb = load i64, ptr %i.axa, align 8, !noundef !8
  store i64 0, ptr %i.ac, align 8
  %.sroa.4.0..sroa_idx.i458 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.awz, ptr %.sroa.4.0..sroa_idx.i458, align 8
  %.sroa.5.0..sroa_idx.i459 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %i.axb, ptr %.sroa.5.0..sroa_idx.i459, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 23, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @4, ptr noalias nofree noundef nonnull align 8 %i.ac, i64 noundef 1)
          to label %bb.we unwind label %bb.wd

bb.wd:                                            ; preds = %bb.wf, %bb.wc
  %i.axc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit.i460 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i453.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.we:                                            ; preds = %bb.wc
  call void @llvm.experimental.noalias.scope.decl(metadata !941)
  %i.axd = load i8, ptr %i.ad, align 8, !range !601, !alias.scope !941, !noalias !944, !noundef !8
  %i.axe = trunc nuw i8 %i.axd to i1
  br i1 %i.axe, label %bb.wf, label %.noexc81.i.preheader, !prof !578

bb.wf:                                            ; preds = %bb.we
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !946
  %i.axf = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.axg = load i8, ptr %i.axf, align 1, !range !605, !alias.scope !941, !noalias !944, !noundef !8
  store i8 %i.axg, ptr %i.b, align 1, !noalias !946
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @114, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @116, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #24
          to label %.noexc72.i unwind label %bb.wd

.noexc72.i:                                       ; preds = %bb.wf
  unreachable

.noexc81.i.preheader:                             ; preds = %bb.we
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit82.i unwind label %bb.wg

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit.i460: ; preds = %bb.wd, %bb.wg
  %.pn.i461 = phi { ptr, i32 } [ %i.axh, %bb.wg ], [ %i.axc, %bb.wd ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ab) #19
          to label %.body.i457 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i453.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.wg:                                            ; preds = %.noexc81.i.preheader
  %i.axh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit.i460

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit82.i: ; preds = %.noexc81.i.preheader
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs4RW8js5ES7g_4fish.exit.i.i unwind label %bb.wh

bb.wh:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit82.i
  %i.axi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.body.i457 unwind label %bb.wi

bb.wi:                                            ; preds = %bb.wh
  %i.axj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs4RW8js5ES7g_4fish.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit82.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit.i462 unwind label %bb.wb

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit.i462: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs4RW8js5ES7g_4fish.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.axk = invoke { i64, i64 } @_RINvNtCs8frGy5WneL6_4fish5wutil30unescape_bytes_and_write_to_fdRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af, i32 noundef 2)
          to label %bb.wk unwind label %bb.wj     ; 0 uses

bb.wj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit.i462
  %i.axl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af) #19
          to label %.body357 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i453.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.wk:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit.i462
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit85.i unwind label %bb.wl

bb.wl:                                            ; preds = %bb.wk
  %i.axm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body357 unwind label %bb.wm

bb.wm:                                            ; preds = %bb.wl
  %i.axn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable
end_hunk_0
begin_hunk_1_@_RNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStack7globals
declare noundef nonnull align 8 ptr @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStack7globals() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs8frGy5WneL6_4fish7history7history18start_private_mode(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish4proc22is_interactive_session() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvCs5UXtnEuoeIl_11fish_common34save_term_foreground_process_group() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs8frGy5WneL6_4fish3env12config_pathsNtB2_11ConfigPaths3new(ptr dead_on_unwind noalias nofree noundef writable sret([120 x i8]) align 8 captures(none) dereferenceable(120)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs8frGy5WneL6_4fish3env11environment8env_init(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs7_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStackNtB5_11Environment4getf(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, i16 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMCsbHolxaesP1E_18fish_feature_flagsNtB2_8Features15set_from_string(ptr noundef nonnull, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8frGy5WneL6_4fish4proc9proc_init() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader11reader_init(i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStack12create_child(ptr dead_on_unwind noalias nofree noundef writable sret([136 x i8]) align 8 captures(none) dereferenceable(136), ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser3new(ptr dead_on_unwind noalias nofree noundef writable sret([432 x i8]) align 8 captures(none) dereferenceable(432), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(136), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4RW8js5ES7g_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 5) i8 @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser7set_one(ptr noalias nofree noundef align 8 dereferenceable(432), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, i32, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish8function6exists(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(432)) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader15term_copy_modes() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtNtCs8frGy5WneL6_4fish3env3varNtB5_8Statuses4just(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser17set_last_statuses(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser15flush_profiling(ptr noalias nofree noundef align 8 dereferenceable(432), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs8frGy5WneL6_4fish13global_safetyNtB2_17RelaxedAtomicBool5store(ptr noundef nonnull, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8frGy5WneL6_4fish6signal19signal_clear_cancel() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish4proc9get_login() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2y_5slice4iter4IterB13_ENCNvCs4RW8js5ES7g_4fish13throwing_main0EE9from_iterB3N_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 5) i8 @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser7set_var(ptr noalias nofree noundef align 8 dereferenceable(432), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, i32, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvCskr4qsHYS30i_15fish_widestring9wcs2bytesRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtCsaL1QbXo9JQH_3std2fsNtB6_4File4openRNtNtNtB8_3ffi6os_str5OsStrECs4RW8js5ES7g_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvNtCs8frGy5WneL6_4fish3fds14heightenize_fd(i32 noundef range(i32 0, -1), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2y_5slice4iter4IterB13_ENCNvCs4RW8js5ES7g_4fish13throwing_mains_0EE9from_iterB3N_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs4RW8js5ES7g_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvMs6_Cs5UXtnEuoeIl_11fish_commonINtB6_13ScopedRefCellINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEE10scoped_setNCNvB2_14scoped_replace0BS_ECs4RW8js5ES7g_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader11reader_read(ptr noalias nofree noundef align 8 dereferenceable(432), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String15from_utf8_lossy(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs4RW8js5ES7g_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 288230376151711744)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish3nix6isatty(i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser11last_status(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @getpid() unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCs8frGy5WneL6_4fish5eventNtB5_5Event12process_exit(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8frGy5WneL6_4fish5event4fire(ptr noalias nofree noundef align 8 dereferenceable(432), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsl_Cskr4qsHYS30i_15fish_widestringlNtB5_9ToWString10to_wstring(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8frGy5WneL6_4fish5event12fire_generic(ptr noalias nofree noundef align 8 dereferenceable(432), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs8frGy5WneL6_4fish7history7history8save_all() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader18reader_exit_signal() unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i64 @signal(i32 noundef, i64 noundef) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @raise(i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2s_5slice4iter4IterNtNtB18_9utfstring11Utf32StringENCNvCs4RW8js5ES7g_4fish14fish_parse_opt0EE9from_iterB48_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 -1, 1114112) i32 @_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter8next_opt(ptr noalias nofree noundef align 8 dereferenceable(136)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvCskr4qsHYS30i_15fish_widestring9wcs2bytesRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrECs4RW8js5ES7g_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories14all_categories(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc24localized_version_stringReECs4RW8js5ES7g_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB3_5Error13append_to_msgcECs4RW8js5ES7g_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72), i32 noundef range(i32 0, 1114112)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i32, i1 } @_RNvMsd_NtCs8frGy5WneL6_4fish2ioNtB5_14FdOutputStream3new(i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error8write_to(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i32 0, 1114112) i32 @_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs4RW8js5ES7g_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8frGy5WneL6_4fish3ast5parse(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, i48, ptr noalias nofree noundef align 8 dereferenceable_or_null(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i8, i8 } @_RNvNtCs8frGy5WneL6_4fish10parse_util26detect_parse_errors_in_ast(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable_or_null(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser18eval_parsed_source(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(address) dereferenceable(12), ptr noalias nofree noundef align 8 dereferenceable(432), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8), i8 noundef range(i8 0, 14)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser13get_backtrace(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCse7JGOylGlDZ_3nix3sys8resource9getrusage(ptr dead_on_unwind noalias nofree noundef writable sret([152 x i8]) align 8 captures(none) dereferenceable(152), i32 noundef range(i32 -1, 2)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvCs5UXtnEuoeIl_11fish_common6escape(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 -1, 134) i32 @_RNvNtCs8frGy5WneL6_4fish5wutil7waccess(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser4eval(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(address) dereferenceable(12), ptr noalias nofree noundef align 8 dereferenceable(432), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path9file_name(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent4main() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader4main() unnamed_addr #1

; Function Attrs: noreturn nonlazybind uwtable
declare hidden void @_RINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvCs4RW8js5ES7g_4fish13throwing_mainEBK_() unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCs8frGy5WneL6_4fish8autoloadNtB5_5Asset3get(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvCskr4qsHYS30i_15fish_widestring14bytes2wcstring(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser14eval_file_wstr(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(432), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringRNtNtCsaL1QbXo9JQH_3std4path7PathBufECs4RW8js5ES7g_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8frGy5WneL6_4fish4path15path_get_config(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB6_5Debug3fmtCs4RW8js5ES7g_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMsf_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impy4__fmt(i64 noundef, ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtB6_5ErrorNtB6_5Debug3fmtCs4RW8js5ES7g_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexNtNtCs8frGy5WneL6_4fish2io15SeparatedBufferEE9drop_slowB1z_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish21null_terminated_array25OwningNullTerminatedArrayE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB1g_8LruEntryB1F_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1J_11wait_handle10WaitHandleEEEENtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell4CellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataEE9drop_slowB1f_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell7RefCellINtNtBI_6option6OptionINtNtB7_4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEEE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell7RefCellINtNtBI_6option6OptionINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtB1F_3ast11JobPipelineEEEE9drop_slowB1F_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell7RefCellINtNtBI_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRmNtB6_5Debug3fmtCs4RW8js5ES7g_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind
define noundef i32 @main(i32 %0, ptr %1) unnamed_addr #16 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = tail call i64 @_RINvNtCsaL1QbXo9JQH_3std2rt10lang_startuECs4RW8js5ES7g_4fish(ptr @_RNvCs4RW8js5ES7g_4fish4main, i64 %i.a, ptr %1, i8 0)
  %i.c = trunc i64 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvNtCsaL1QbXo9JQH_3std2rt10lang_startuECs4RW8js5ES7g_4fish(ptr noundef nonnull, i64 noundef, ptr noundef, i8 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nonlazybind "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { cold }
attributes #20 = { cold noreturn nounwind }
attributes #21 = { noinline }
attributes #22 = { nounwind }
attributes #23 = { noreturn }
attributes #24 = { noinline noreturn }
attributes #25 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTuNCINvMs6_Cs5UXtnEuoeIl_11fish_commonINtB18_13ScopedRefCellIBC_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEE10scoped_setNCNvB14_14scoped_replace0B1V_E0EEECs4RW8js5ES7g_4fish: argument 0"}
!7 = distinct !{!7, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTuNCINvMs6_Cs5UXtnEuoeIl_11fish_commonINtB18_13ScopedRefCellIBC_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEE10scoped_setNCNvB14_14scoped_replace0B1V_E0EEECs4RW8js5ES7g_4fish"}
!8 = !{}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTuNCINvMs6_Cs5UXtnEuoeIl_11fish_commonINtBM_13ScopedRefCellINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEE10scoped_setNCNvBI_14scoped_replace0B1y_E0EECs4RW8js5ES7g_4fish: argument 0"}
!11 = distinct !{!11, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTuNCINvMs6_Cs5UXtnEuoeIl_11fish_commonINtBM_13ScopedRefCellINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEE10scoped_setNCNvBI_14scoped_replace0B1y_E0EECs4RW8js5ES7g_4fish"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMs6_Cs5UXtnEuoeIl_11fish_commonINtBK_13ScopedRefCellINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEE10scoped_setNCNvBG_14scoped_replace0B1w_E0ECs4RW8js5ES7g_4fish: argument 0"}
end_hunk_1
