Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27272
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 595
loop-unroll.NumUnrolled: 720
begin_hunk_0_@_RINvMs1_NtCsdftwklc2oBO_7similar5typesNtB6_6DiffOp13apply_to_hookINtNtNtB8_10algorithms7replace7ReplaceNtNtB16_7capture7CaptureEECskXtk6F4WjxZ_4just:bb.a
bb.n:                                             ; preds = %_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceNtNtB4_7capture7CaptureE8flush_eqCskXtk6F4WjxZ_4just.exit.i33
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc) #74, !noalias !2568
  br label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceNtNtB7_7capture7CaptureENtNtB7_4hook8DiffHook7replaceCskXtk6F4WjxZ_4just.exit

_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceNtNtB7_7capture7CaptureENtNtB7_4hook8DiffHook7replaceCskXtk6F4WjxZ_4just.exit: ; preds = %_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceNtNtB4_7capture7CaptureE8flush_eqCskXtk6F4WjxZ_4just.exit.i33, %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !2567, !noalias !2568, !nonnull !28, !noundef !28
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %i.bh, i64 %i.bb ; 5 uses
  store i64 3, ptr %i.bi, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx.i34, align 8
  %.sroa.6.0..sroa_idx.i35 = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store i64 %i.g, ptr %.sroa.6.0..sroa_idx.i35, align 8
  %.sroa.7.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store i64 %i.ao, ptr %.sroa.7.0..sroa_idx.i36, align 8
  %i.bj = add i64 %i.bb, 1
  store i64 %i.bj, ptr %i.bf, align 8, !alias.scope !2567, !noalias !2568
  br label %bb.o

bb.o:                                             ; preds = %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceNtNtB7_7capture7CaptureENtNtB7_4hook8DiffHook7replaceCskXtk6F4WjxZ_4just.exit, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceNtNtB7_7capture7CaptureENtNtB7_4hook8DiffHook6insertCskXtk6F4WjxZ_4just.exit, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceNtNtB7_7capture7CaptureENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs1_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 3, 17) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [104 x i8], align 8               ; 5 uses
  %i.d = alloca [16 x i8], align 16               ; 5 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [104 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE12remove_entryeECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(120) %i.e, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !range !27, !noundef !28
  %.not = icmp eq i64 %i.h, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.e, align 8, !nonnull !28, !noundef !28
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.f, ptr noundef nonnull align 8 dereferenceable(104) %i.g, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i128 -74464835791046308019818222685244956422, ptr %i.a, align 16
  invoke void @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.a)
          to label %bb.e unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.04.0.copyload = load i128, ptr %i.d, align 16
  %i.l = icmp eq i128 %.sroa.04.0.copyload, -74464835791046308019818222685244956422
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.f, i64 104, i1 false)
  call fastcc void @_RNvMNtNtCs2FJGJNE9lTN_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_2id2IdNtNtNtNtB6_6parser7matches11matched_arg10MatchedArgE6insertCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.c, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k, ptr noalias nofree noundef align 8 captures(address) dereferenceable(104) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.m = load i64, ptr %i.c, align 8, !range !27, !alias.scope !2573, !noundef !28
  %i.n = icmp eq i64 %i.m, 2
  br i1 %i.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_arg10MatchedArgEECskXtk6F4WjxZ_4just.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.f, i64 104, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_arg10MatchedArgECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.c)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_arg10MatchedArgEECskXtk6F4WjxZ_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_arg10MatchedArgEECskXtk6F4WjxZ_4just.exit: ; preds = %bb.h, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.o, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i128 -74464835791046308019818222685244956422, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_arg10MatchedArgEECskXtk6F4WjxZ_4just.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.d

bb.j:                                             ; preds = %bb.k
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.k:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_arg10MatchedArgECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(104) %i.f) #72
          to label %bb.j unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !40, !noalias !2584, !noundef !28
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i, label %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i, !prof !29

._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i: ; preds = %bb.a
  %.pre.i = load i64, ptr %i.a, align 8, !noalias !2585 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre1.i = load i64, ptr %.phi.trans.insert.i, align 8, !noalias !2585
  %i.e = insertvalue { i64, i64 } poison, i64 %.pre.i, 0
  %i.f = insertvalue { i64, i64 } %i.e, i64 %.pre1.i, 1
  br label %bb.b

_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.a
  %i.g = tail call { i64, i64 } @_RNvNtNtNtCsaKJjC64KgbL_3std3sys6random5linux19hashmap_random_keys(), !noalias !2586 ; 3 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = extractvalue { i64, i64 } %i.g, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.i, ptr %i.j, align 8, !noalias !2586
  store i8 1, ptr %i.b, align 8, !noalias !2586
  br label %bb.b

bb.b:                                             ; preds = %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i
  %i.k = phi i64 [ %.pre.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i ], [ %i.h, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i ]
  %.merged = phi { i64, i64 } [ %i.f, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i ], [ %i.g, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i ]
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.a, align 8, !noalias !2585
  ret { i64, i64 } %.merged
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs3_NtCs4wP2HXfJTCR_5alloc3stre7replaceReECskXtk6F4WjxZ_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(none) %5, i64 noundef %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [104 x i8], align 8               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 13 uses
  %i.e = icmp eq i64 %4, 1
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %3, align 1, !noundef !28   ; 3 uses
  %i.g = icmp eq i64 %6, 1
  br i1 %i.g, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %5, align 1, !noundef !28   ; 3 uses
  %.not.i.i.i = icmp slt i64 %2, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.d, !prof !42

bb.d:                                             ; preds = %bb.c
  %i.i = icmp samesign eq i64 %2, 0
  br i1 %i.i, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCskXtk6F4WjxZ_4just.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !2633
  %i.j = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #70, !noalias !2633 ; 7 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %iter.check

iter.check:                                       ; preds = %bb.e
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.preheader.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check85 = icmp ult i64 %2, 32
  br i1 %min.iters.check85, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i64 %2, 24
  %n.vec = and i64 %2, 9223372036854775776        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert86 = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %broadcast.splat87 = shufflevector <16 x i8> %broadcast.splatinsert86, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <16 x i8>, ptr %i.m, align 1, !noalias !2634 ; 2 uses
  %wide.load88 = load <16 x i8>, ptr %i.n, align 1, !noalias !2634 ; 2 uses
  %i.o = icmp eq <16 x i8> %wide.load, %broadcast.splat
  %i.p = icmp eq <16 x i8> %wide.load88, %broadcast.splat
  %i.q = select <16 x i1> %i.o, <16 x i8> %broadcast.splat87, <16 x i8> %wide.load
  %i.r = select <16 x i1> %i.p, <16 x i8> %broadcast.splat87, <16 x i8> %wide.load88
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <16 x i8> %i.q, ptr %i.s, align 1, !noalias !2635
  store <16 x i8> %i.r, ptr %i.t, align 1, !noalias !2635
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !2612

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCskXtk6F4WjxZ_4just.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.i.i.preheader, label %vec.epilog.ph, !prof !63

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec89 = and i64 %2, 9223372036854775800      ; 3 uses
  %broadcast.splatinsert90 = insertelement <8 x i8> poison, i8 %i.f, i64 0
  %broadcast.splat91 = shufflevector <8 x i8> %broadcast.splatinsert90, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert92 = insertelement <8 x i8> poison, i8 %i.h, i64 0
  %broadcast.splat93 = shufflevector <8 x i8> %broadcast.splatinsert92, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index94 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next96, %vec.epilog.vector.body ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %index94
  %wide.load95 = load <8 x i8>, ptr %i.v, align 1, !noalias !2634 ; 2 uses
  %i.w = icmp eq <8 x i8> %wide.load95, %broadcast.splat91
  %i.x = select <8 x i1> %i.w, <8 x i8> %broadcast.splat93, <8 x i8> %wide.load95
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 %index94
  store <8 x i8> %i.x, ptr %i.y, align 1, !noalias !2635
  %index.next96 = add nuw i64 %index94, 8         ; 2 uses
  %i.z = icmp eq i64 %index.next96, %n.vec89
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2613

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n97 = icmp eq i64 %2, %n.vec89
  br i1 %cmp.n97, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCskXtk6F4WjxZ_4just.exit, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec89, %vec.epilog.middle.block ]
  br label %.preheader.i.i.i

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.e ], [ 0, %bb.c ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %2) #71, !noalias !2636
  unreachable

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader, %.preheader.i.i.i
  %i.aa = phi i64 [ %i.ae, %.preheader.i.i.i ], [ %.ph, %.preheader.i.i.i.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %.val15.i.i.i.i.i.i = load i8, ptr %i.ab, align 1, !noalias !2634, !noundef !28 ; 2 uses
  %i.ac = icmp eq i8 %.val15.i.i.i.i.i.i, %i.f
  %spec.select = select i1 %i.ac, i8 %i.h, i8 %.val15.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aa
  store i8 %spec.select, ptr %i.ad, align 1, !noalias !2635
  %i.ae = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %i.af = icmp eq i64 %i.ae, %2
  br i1 %i.af, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCskXtk6F4WjxZ_4just.exit, label %.preheader.i.i.i, !llvm.loop !2614

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCskXtk6F4WjxZ_4just.exit: ; preds = %.preheader.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.d
  %.sroa.10.0.i14.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.d ], [ %i.j, %middle.block ], [ %i.j, %vec.epilog.middle.block ], [ %i.j, %.preheader.i.i.i ]
  store i64 %2, ptr %0, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i14.i, ptr %.sroa.443.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.u, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCskXtk6F4WjxZ_4just.exit
  ret void

bb.h:                                             ; preds = %bb.b, %bb.a
  %.not = icmp ugt i64 %4, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br i1 %.not, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i = icmp slt i64 %2, 0
  br i1 %.not.i.i, label %bb.l, label %bb.j, !prof !64

bb.j:                                             ; preds = %bb.i
  %i.ag = icmp eq i64 %2, 0
  br i1 %i.ag, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !2637
  %i.ah = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #70, !noalias !2637 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.l, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit

bb.l:                                             ; preds = %bb.k, %bb.i
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.k ], [ 0, %bb.i ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %2) #71
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit: ; preds = %bb.h, %bb.k, %bb.j
  %.sroa.02.06165 = phi i64 [ 0, %bb.j ], [ %2, %bb.k ], [ 0, %bb.h ]
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.j ], [ %i.ah, %bb.k ], [ inttoptr (i64 1 to ptr), %bb.h ] ; 4 uses
  store i64 %.sroa.02.06165, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 7 uses
  store i64 0, ptr %.sroa.512.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMsu_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern13into_searcher.exit unwind label %bb.o

bb.m:                                             ; preds = %bb.q, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.q ], [ %i.ak, %bb.o ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2639)
  %.val.i.i = load i64, ptr %i.d, align 8, !alias.scope !2640 ; 2 uses
  %i.aj = icmp eq i64 %.val.i.i, 0
  br i1 %i.aj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val1.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !2640, !nonnull !28, !noundef !28
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !2640
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit

bb.o:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern13into_searcher.exit: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %i.b, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.not.i32 = icmp eq i64 %6, 0
  br label %bb.p

bb.p:                                             ; preds = %bb.z, %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern13into_searcher.exit
  %i.an = phi ptr [ %.sroa.10.0.i, %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern13into_searcher.exit ], [ %i.ch, %bb.z ] ; 2 uses
  %i.ao = phi ptr [ %.sroa.10.0.i, %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern13into_searcher.exit ], [ %i.ci, %bb.z ] ; 2 uses
  %i.ap = phi ptr [ %.sroa.10.0.i, %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern13into_searcher.exit ], [ %i.cj, %bb.z ] ; 2 uses
  %i.aq = phi i64 [ 0, %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern13into_searcher.exit ], [ %i.cl, %bb.z ] ; 10 uses
  %.sroa.04.0 = phi i64 [ 0, %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern13into_searcher.exit ], [ %i.bh, %bb.z ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 dereferenceable(104) %i.c)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i33, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i28, %bb.p
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.r:                                             ; preds = %bb.p
  %i.as = load i64, ptr %i.a, align 8, !range !41, !noundef !28
  %i.at = trunc nuw i64 %i.as to i1
  br i1 %i.at, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0
  %gepdiff = sub nuw nsw i64 %2, %.sroa.04.0      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2641)
  %i.av = load i64, ptr %i.d, align 8, !range !43, !alias.scope !2642, !noundef !28
  %i.aw = sub i64 %i.av, %i.aq
  %i.ax = icmp ugt i64 %gepdiff, %i.aw
  br i1 %i.ax, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i: ; preds = %bb.s
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.aq, i64 noundef %gepdiff, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i
  %i.ay = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !2641, !noundef !28 ; 2 uses
  %i.az = icmp sgt i64 %i.ay, -1
  tail call void @llvm.assume(i1 %i.az)
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !2641
  br label %bb.t

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.s
  %i.ba = icmp sgt i64 %i.aq, -1
  tail call void @llvm.assume(i1 %i.ba)
  %.not.i = icmp eq i64 %2, %.sroa.04.0
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i, %.noexc
  %i.bb = phi ptr [ %.pre, %.noexc ], [ %i.ap, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i ]
  %i.bc = phi i64 [ %i.ay, %.noexc ], [ %i.aq, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr nonnull readonly align 1 %i.au, i64 %gepdiff, i1 false), !noalias !2641
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i
  %i.be = phi i64 [ %i.bc, %bb.t ], [ %i.aq, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i ]
  %i.bf = add i64 %i.be, %gepdiff
  store i64 %i.bf, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !2641
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.v:                                             ; preds = %bb.r
  %i.bg = load i64, ptr %i.al, align 8, !noundef !28 ; 2 uses
  %i.bh = load i64, ptr %i.am, align 8, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0
  %gepdiff67 = sub nuw nsw i64 %i.bg, %.sroa.04.0 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2643)
  %i.bj = load i64, ptr %i.d, align 8, !range !43, !alias.scope !2644, !noundef !28 ; 3 uses
  %i.bk = sub i64 %i.bj, %i.aq
  %i.bl = icmp ugt i64 %gepdiff67, %i.bk
  br i1 %i.bl, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i28, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i26, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i28: ; preds = %bb.v
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.aq, i64 noundef %gepdiff67, i64 noundef 1, i64 noundef 1)
          to label %.noexc29 unwind label %bb.q

.noexc29:                                         ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i28
  %i.bm = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !2643, !noundef !28 ; 2 uses
  %i.bn = icmp sgt i64 %i.bm, -1
  tail call void @llvm.assume(i1 %i.bn)
  %.pre70 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !2643 ; 2 uses
  %.pre71.pre = load i64, ptr %i.d, align 8, !range !43, !alias.scope !2645
  br label %bb.w

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i26: ; preds = %bb.v
  %i.bo = icmp sgt i64 %i.aq, -1
  tail call void @llvm.assume(i1 %i.bo)
  %.not.i27 = icmp eq i64 %i.bg, %.sroa.04.0
  br i1 %.not.i27, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i26, %.noexc29
  %.pre71 = phi i64 [ %.pre71.pre, %.noexc29 ], [ %i.bj, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i26 ]
  %i.bp = phi ptr [ %.pre70, %.noexc29 ], [ %i.an, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i26 ]
  %i.bq = phi ptr [ %.pre70, %.noexc29 ], [ %i.ao, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i26 ] ; 3 uses
  %i.br = phi i64 [ %i.bm, %.noexc29 ], [ %i.aq, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i26 ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bs, ptr nonnull readonly align 1 %i.bi, i64 %gepdiff67, i1 false), !noalias !2643
  br label %bb.x

bb.x:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i26, %bb.w
  %i.bt = phi ptr [ %i.bp, %bb.w ], [ %i.an, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i26 ] ; 2 uses
  %i.bu = phi i64 [ %.pre71, %bb.w ], [ %i.bj, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i26 ]
  %i.bv = phi ptr [ %i.bq, %bb.w ], [ %i.ao, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i26 ]
  %i.bw = phi ptr [ %i.bq, %bb.w ], [ %i.ap, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i26 ]
  %i.bx = phi i64 [ %i.br, %bb.w ], [ %i.aq, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i26 ]
  %i.by = add i64 %i.bx, %gepdiff67               ; 6 uses
  store i64 %i.by, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !2643
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2646)
  %i.bz = sub i64 %i.bu, %i.by
  %i.ca = icmp ugt i64 %6, %i.bz
  br i1 %i.ca, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i33, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i31, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i33: ; preds = %bb.x
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.by, i64 noundef %6, i64 noundef 1, i64 noundef 1)
          to label %.noexc34 unwind label %bb.q

.noexc34:                                         ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i33
  %i.cb = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !2646, !noundef !28 ; 2 uses
  %i.cc = icmp sgt i64 %i.cb, -1
  tail call void @llvm.assume(i1 %i.cc)
  %.pre72 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !2646
  br label %bb.y

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i31: ; preds = %bb.x
  %i.cd = icmp sgt i64 %i.by, -1
  tail call void @llvm.assume(i1 %i.cd)
  br i1 %.not.i32, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i31, %.noexc34
  %i.ce = phi ptr [ %.pre72, %.noexc34 ], [ %i.bt, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i31 ] ; 4 uses
  %i.cf = phi i64 [ %i.cb, %.noexc34 ], [ %i.by, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i31 ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cg, ptr nonnull readonly align 1 %5, i64 %6, i1 false), !noalias !2646
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i31
  %i.ch = phi ptr [ %i.ce, %bb.y ], [ %i.bt, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i31 ]
  %i.ci = phi ptr [ %i.ce, %bb.y ], [ %i.bv, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i31 ]
  %i.cj = phi ptr [ %i.ce, %bb.y ], [ %i.bw, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i31 ]
  %i.ck = phi i64 [ %i.cf, %bb.y ], [ %i.by, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i31 ]
  %i.cl = add i64 %i.ck, %6                       ; 2 uses
  store i64 %i.cl, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !2646
  br label %bb.p

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit: ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs3_NtCs4wP2HXfJTCR_5alloc3stre7replacecECskXtk6F4WjxZ_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef range(i32 39, 46) %3, ptr noalias nofree noundef nonnull readonly captures(none) %4, i64 noundef range(i64 1, 5) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 13 uses
  %i.b = trunc nuw nsw i32 %3 to i8               ; 6 uses
  %i.c = icmp eq i64 %5, 1
  %.not.i.i.i = icmp slt i64 %2, 0                ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %4, align 1, !noundef !28   ; 3 uses
  br i1 %.not.i.i.i, label %bb.e, label %bb.c, !prof !42

bb.c:                                             ; preds = %bb.b
  %i.e = icmp samesign eq i64 %2, 0
  br i1 %i.e, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCskXtk6F4WjxZ_4just.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !2698
  %i.f = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #70, !noalias !2698 ; 7 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %iter.check

iter.check:                                       ; preds = %bb.d
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.preheader.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check187 = icmp ult i64 %2, 32
  br i1 %min.iters.check187, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.h = and i64 %2, 24
  %n.vec = and i64 %2, 9223372036854775776        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.b, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert188 = insertelement <16 x i8> poison, i8 %i.d, i64 0
  %broadcast.splat189 = shufflevector <16 x i8> %broadcast.splatinsert188, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <16 x i8>, ptr %i.i, align 1, !noalias !2699 ; 2 uses
  %wide.load190 = load <16 x i8>, ptr %i.j, align 1, !noalias !2699 ; 2 uses
  %i.k = icmp eq <16 x i8> %wide.load, %broadcast.splat
  %i.l = icmp eq <16 x i8> %wide.load190, %broadcast.splat
  %i.m = select <16 x i1> %i.k, <16 x i8> %broadcast.splat189, <16 x i8> %wide.load
  %i.n = select <16 x i1> %i.l, <16 x i8> %broadcast.splat189, <16 x i8> %wide.load190
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <16 x i8> %i.m, ptr %i.o, align 1, !noalias !2700
  store <16 x i8> %i.n, ptr %i.p, align 1, !noalias !2700
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !2672

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCskXtk6F4WjxZ_4just.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.h, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.i.i.preheader, label %vec.epilog.ph, !prof !63

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec191 = and i64 %2, 9223372036854775800     ; 3 uses
  %broadcast.splatinsert192 = insertelement <8 x i8> poison, i8 %i.b, i64 0
  %broadcast.splat193 = shufflevector <8 x i8> %broadcast.splatinsert192, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert194 = insertelement <8 x i8> poison, i8 %i.d, i64 0
  %broadcast.splat195 = shufflevector <8 x i8> %broadcast.splatinsert194, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index196 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next198, %vec.epilog.vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %index196
  %wide.load197 = load <8 x i8>, ptr %i.r, align 1, !noalias !2699 ; 2 uses
  %i.s = icmp eq <8 x i8> %wide.load197, %broadcast.splat193
  %i.t = select <8 x i1> %i.s, <8 x i8> %broadcast.splat195, <8 x i8> %wide.load197
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 %index196
  store <8 x i8> %i.t, ptr %i.u, align 1, !noalias !2700
  %index.next198 = add nuw i64 %index196, 8       ; 2 uses
  %i.v = icmp eq i64 %index.next198, %n.vec191
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2673

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n199 = icmp eq i64 %2, %n.vec191
  br i1 %cmp.n199, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCskXtk6F4WjxZ_4just.exit, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec191, %vec.epilog.middle.block ]
  br label %.preheader.i.i.i

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %2) #71, !noalias !2701
  unreachable

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader, %.preheader.i.i.i
  %i.w = phi i64 [ %i.aa, %.preheader.i.i.i ], [ %.ph, %.preheader.i.i.i.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %.val15.i.i.i.i.i.i = load i8, ptr %i.x, align 1, !noalias !2699, !noundef !28 ; 2 uses
  %i.y = icmp eq i8 %.val15.i.i.i.i.i.i, %i.b
  %spec.select = select i1 %i.y, i8 %i.d, i8 %.val15.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.w
  store i8 %spec.select, ptr %i.z, align 1, !noalias !2700
  %i.aa = add nuw nsw i64 %i.w, 1                 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %2
  br i1 %i.ab, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCskXtk6F4WjxZ_4just.exit, label %.preheader.i.i.i, !llvm.loop !2674

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCskXtk6F4WjxZ_4just.exit: ; preds = %.preheader.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.c
  %.sroa.10.0.i14.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.c ], [ %i.f, %middle.block ], [ %i.f, %vec.epilog.middle.block ], [ %i.f, %.preheader.i.i.i ]
  store i64 %2, ptr %0, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i14.i, ptr %.sroa.444.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.s, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCskXtk6F4WjxZ_4just.exit
  ret void

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br i1 %.not.i.i.i, label %bb.j, label %bb.h, !prof !42

bb.h:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %2, 0
  br i1 %i.ac, label %.lr.ph.split.preheader.i.lr.ph, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !2702
  %i.ad = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #70, !noalias !2702 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.j, label %.lr.ph.split.preheader.i.lr.ph

bb.j:                                             ; preds = %bb.i, %bb.g
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.i ], [ 0, %bb.g ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %2) #71
  unreachable

bb.k:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2704)
  %.val.i.i = load i64, ptr %i.a, align 8, !alias.scope !2705 ; 2 uses
  %i.af = icmp eq i64 %.val.i.i, 0
  br i1 %i.af, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val1.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !2705, !nonnull !28, !noundef !28
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !2705
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit

bb.m:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.lr.ph.split.preheader.i.lr.ph:                   ; preds = %bb.h, %bb.i
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.h ], [ %i.ad, %bb.i ] ; 2 uses
  store i64 %2, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  store i64 0, ptr %.sroa.512.0..sroa_idx, align 8
  br label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.split.preheader.i.lr.ph, %bb.w
  %i.ah = phi ptr [ %.sroa.10.0.i, %.lr.ph.split.preheader.i.lr.ph ], [ %i.ci, %bb.w ] ; 6 uses
  %i.ai = phi i64 [ 0, %.lr.ph.split.preheader.i.lr.ph ], [ %i.cl, %bb.w ] ; 9 uses
  %.sroa.04.0110 = phi i64 [ 0, %.lr.ph.split.preheader.i.lr.ph ], [ %i.ax, %bb.w ] ; 8 uses
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.p, %.lr.ph.split.preheader.i
  %i.aj = phi i64 [ %i.ax, %bb.p ], [ %.sroa.04.0110, %.lr.ph.split.preheader.i ] ; 5 uses
  %i.ak = sub nuw nsw i64 %2, %i.aj               ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj ; 2 uses
  %i.am = icmp samesign ult i64 %i.ak, 16
  br i1 %i.am, label %.preheader.i.i, label %bb.n

.preheader.i.i:                                   ; preds = %.lr.ph.split.i
  %.not.i.i24 = icmp eq i64 %2, %i.aj
  br i1 %.not.i.i24, label %.loopexit15.i, label %.lr.ph.i.i

bb.n:                                             ; preds = %.lr.ph.split.i
  %i.an = invoke { i64, i64 } @_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr14memchr_aligned(i8 noundef %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef range(i64 0, -9223372036854775808) %i.ak)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.n
  %i.ao = extractvalue { i64, i64 } %i.an, 0
  %i.ap = extractvalue { i64, i64 } %i.an, 1
  %i.aq = trunc nuw i64 %i.ao to i1
  br i1 %i.aq, label %.loopexit.i, label %.loopexit15.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.o
  %.sroa.04.011.i.i = phi i64 [ %i.au, %bb.o ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sroa.04.011.i.i
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !2706, !noalias !2707, !noundef !28
  %i.at = icmp eq i8 %i.as, %i.b
  br i1 %i.at, label %.loopexit.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.au = add nuw nsw i64 %.sroa.04.011.i.i, 1    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.au, %i.ak
  br i1 %exitcond.not.i.i, label %.loopexit15.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %.noexc
  %.sroa.5.0.i.i = phi i64 [ %i.ap, %.noexc ], [ %.sroa.04.011.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.av = icmp ult i64 %.sroa.5.0.i.i, %i.ak
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = add nuw i64 %i.aj, 1
  %i.ax = add nuw i64 %i.aw, %.sroa.5.0.i.i       ; 4 uses
  %.not12.i = icmp ugt i64 %i.ax, %2              ; 2 uses
  %i.ay = add nuw i64 %.sroa.5.0.i.i, %i.aj       ; 4 uses
  %or.cond.i.not = icmp ult i64 %i.ay, %2
  br i1 %or.cond.i.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.q, %.loopexit.i
  br i1 %.not12.i, label %.loopexit15.i, label %.lr.ph.split.i

bb.q:                                             ; preds = %.loopexit.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %i.ay
  %lhsc = load i8, ptr %i.az, align 1
  %i.ba = icmp eq i8 %lhsc, %i.b
  br i1 %i.ba, label %bb.t, label %bb.p

.loopexit:                                        ; preds = %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i29, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i34
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit15.i:                                    ; preds = %bb.w, %bb.p, %.preheader.i.i, %.noexc, %bb.o
  %i.bb = phi ptr [ %i.ah, %bb.p ], [ %i.ah, %bb.o ], [ %i.ah, %.noexc ], [ %i.ah, %.preheader.i.i ], [ %i.ci, %bb.w ]
end_hunk_0
begin_hunk_1_@_RINvNvXs0_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB8_8BTreeMappppENtNtCsj6eKBz9Db1c_4core5clone5Clone5clone13clone_subtreeNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBa_7set_val9SetValZSTNtNtBe_5alloc6GlobalEB2c_:bb.a
  store i64 %i.as, ptr %i.m, align 8, !alias.scope !27891
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 362 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !noundef !28
  %.not105 = icmp eq i16 %i.ay, 0
  br i1 %.not105, label %bb.y, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  %.promoted = load i64, ptr %i.ba, align 8
  br label %bb.z

._crit_edge:                                      ; preds = %bb.ai
  store i64 %i.cg, ptr %i.ba, align 8
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.z:                                             ; preds = %.lr.ph, %bb.ai
  %i.bb = phi i64 [ %.promoted, %.lr.ph ], [ %i.cg, %bb.ai ] ; 5 uses
  %.sroa.9.092 = phi i64 [ 0, %.lr.ph ], [ %i.be, %bb.ai ] ; 3 uses
  %i.bc = icmp samesign ult i64 %.sroa.9.092, 11
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.sroa.9.092 ; 3 uses
  %i.be = add nuw nsw i64 %.sroa.9.092, 1         ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.val.i70 = load ptr, ptr %i.bf, align 8, !alias.scope !27894, !noalias !27895, !nonnull !28, !noundef !28
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.val1.i71 = load i64, ptr %i.bg, align 8, !alias.scope !27894, !noalias !27895, !noundef !28
  invoke fastcc void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr nonnull %.val.i70, i64 %.val1.i71)
          to label %bb.ab unwind label %.loopexit

bb.aa:                                            ; preds = %bb.ab
  %i.bh = landingpad { ptr, i32 }
          cleanup
  store i64 %i.bb, ptr %i.ba, align 8
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #72
  br label %bb.q

bb.ab:                                            ; preds = %bb.z
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bj = load i8, ptr %i.bi, align 8, !range !40, !alias.scope !27894, !noalias !27895, !noundef !28
  store i8 %i.bj, ptr %i.az, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.be
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !28, !noundef !28
  invoke fastcc void @_RINvNvXs0_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB8_8BTreeMappppENtNtCsj6eKBz9Db1c_4core5clone5Clone5clone13clone_subtreeNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBa_7set_val9SetValZSTNtNtBe_5alloc6GlobalEB2c_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.bl, i64 noundef %i.k)
          to label %bb.ac unwind label %bb.aa

bb.ac:                                            ; preds = %bb.ab
  %.sroa.051.0.copyload = load ptr, ptr %i.b, align 8 ; 2 uses
  %.sroa.452.0.copyload = load i64, ptr %.sroa.452.0..sroa_idx, align 8
  %.sroa.553.0.copyload = load i64, ptr %.sroa.553.0..sroa_idx, align 8
  %.not55 = icmp eq ptr %.sroa.051.0.copyload, null
  br i1 %.not55, label %bb.ad, label %bb.ag

.body74:                                          ; preds = %.invoke.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.a) #72
  br label %bb.q

bb.ad:                                            ; preds = %bb.ac
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70
  %i.bn = tail call noalias noundef align 8 dereferenceable_or_null(368) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 368, i64 noundef range(i64 1, -9223372036854775807) 8) #70 ; 4 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.ae, label %bb.af, !prof !44

bb.ae:                                            ; preds = %bb.ad
  store i64 %i.bb, ptr %i.ba, align 8
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 368) #71
          to label %.noexc unwind label %bb.aj

.noexc:                                           ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 352
  store ptr null, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 362
  store i16 0, ptr %i.bq, align 2
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ac, %bb.af
  %.sroa.538.0 = phi i64 [ 0, %bb.af ], [ %.sroa.452.0.copyload, %bb.ac ]
  %.sroa.037.0 = phi ptr [ %i.bn, %bb.af ], [ %.sroa.051.0.copyload, %bb.ac ] ; 3 uses
  %i.br = icmp eq i64 %.sroa.538.0, %i.am
  br i1 %i.br, label %bb.ah, label %.invoke.i, !prof !29

.invoke.i:                                        ; preds = %bb.ah, %bb.ag
  %i.bs = phi ptr [ @1313, %bb.ag ], [ @1311, %bb.ah ]
  %i.bt = phi i64 [ 48, %bb.ag ], [ 32, %bb.ah ]
  %i.bu = phi ptr [ @1314, %bb.ag ], [ @1315, %bb.ah ]
  store i64 %i.bb, ptr %i.ba, align 8
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bs, i64 noundef %i.bt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bu) #71
          to label %.cont.i unwind label %.body74, !noalias !27896

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.bv = load i16, ptr %i.aq, align 2, !noalias !27896, !noundef !28 ; 3 uses
  %i.bw = icmp ult i16 %i.bv, 11
  br i1 %i.bw, label %bb.ai, label %.invoke.i, !prof !29

bb.ai:                                            ; preds = %bb.ah
  %i.bx = zext nneg i16 %i.bv to i64              ; 2 uses
  %i.by = add nuw nsw i16 %i.bv, 1
  store i16 %i.by, ptr %i.aq, align 2, !noalias !27896
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %i.an, i64 %i.bx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.ca = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ca
  store ptr %.sroa.037.0, ptr %i.cb, align 8, !noalias !27896
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.037.0, i64 352
  store ptr %i.an, ptr %i.cc, align 8, !noalias !27896
  %i.cd = trunc nuw nsw i64 %i.ca to i16
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.037.0, i64 360
  store i16 %i.cd, ptr %i.ce, align 8, !noalias !27896
  %i.cf = add i64 %.sroa.553.0.copyload, 1
  %i.cg = add i64 %i.cf, %i.bb                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ch = load i16, ptr %i.ax, align 2, !noundef !28
  %i.ci = zext i16 %i.ch to i64
  %i.cj = icmp samesign ult i64 %i.be, %i.ci
  br i1 %i.cj, label %bb.z, label %._crit_edge

bb.aj:                                            ; preds = %bb.ae
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #72
  br label %bb.q

bb.ak:                                            ; preds = %.body, %bb.q
  %.pn59.pn = phi { ptr, i32 } [ %.pn59, %.body ], [ %.pn.pn, %bb.q ]
  resume { ptr, i32 } %.pn59.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvXs0_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB8_8BTreeMappppENtNtCsj6eKBz9Db1c_4core5clone5Clone5clone13clone_subtreeNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtNtBa_7set_val9SetValZSTNtNtBe_5alloc6GlobalEB2c_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70
  %i.d = tail call noalias noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #70 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.f, !prof !44

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #71
  unreachable

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !28, !noundef !28
  %i.h = add i64 %2, -1                           ; 2 uses
  call fastcc void @_RINvNvXs0_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB8_8BTreeMappppENtNtCsj6eKBz9Db1c_4core5clone5Clone5clone13clone_subtreeNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtNtBa_7set_val9SetValZSTNtNtBe_5alloc6GlobalEB2c_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.g, i64 noundef %i.h)
  %i.i = load ptr, ptr %i.b, align 8, !noundef !28 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.i, label %bb.l, !prof !44

bb.e:                                             ; preds = %bb.i
  unreachable

bb.f:                                             ; preds = %bb.b
  store ptr null, ptr %i.d, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 10 ; 2 uses
  store i16 0, ptr %i.k, align 2
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.m = load i16, ptr %i.l, align 2, !noundef !28 ; 4 uses
  %i.n = zext i16 %i.m to i64                     ; 7 uses
  %.not99 = icmp eq i16 %i.m, 0
  br i1 %.not99, label %._crit_edge97, label %iter.check

iter.check:                                       ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 3 uses
  %min.iters.check = icmp ult i16 %i.m, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check129 = icmp ult i16 %i.m, 32
  br i1 %min.iters.check129, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.n, 28
  %n.vec = and i64 %i.n, 65504                    ; 5 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <16 x i8>, ptr %i.r, align 1
  %wide.load130 = load <16 x i8>, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %wide.load, ptr %i.t, align 4, !noalias !27908
  store <16 x i8> %wide.load130, ptr %i.u, align 4, !noalias !27908
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !27899

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.n
  br i1 %cmp.n, label %._crit_edge97.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !27909

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec131 = and i64 %i.n, 65532                 ; 4 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index132 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next135, %vec.epilog.vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %index132
  %wide.load134 = load <4 x i8>, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 %index132
  store <4 x i8> %wide.load134, ptr %i.x, align 4, !noalias !27908
  %index.next135 = add nuw i64 %index132, 4       ; 2 uses
  %i.y = icmp eq i64 %index.next135, %n.vec131
  br i1 %i.y, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !27900

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n137 = icmp eq i64 %n.vec131, %i.n
  br i1 %cmp.n137, label %._crit_edge97.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.7.094.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec131, %vec.epilog.middle.block ] ; 2 uses
  br label %vec.epilog.scalar.ph

._crit_edge97.loopexit:                           ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %n.vec131, %vec.epilog.middle.block ], [ %n.vec, %middle.block ], [ %indvars.iv.next, %vec.epilog.scalar.ph ]
  %i.z = trunc nuw nsw i64 %indvars.iv.next.lcssa to i16
  store i16 %i.z, ptr %i.k, align 2, !noalias !27908
  br label %._crit_edge97

._crit_edge97:                                    ; preds = %._crit_edge97.loopexit, %bb.f
  store ptr %i.d, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.s, %._crit_edge97
  ret void

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %.sroa.7.094.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.7.094 = phi i64 [ %i.ac, %vec.epilog.scalar.ph ], [ %.sroa.7.094.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.aa = icmp samesign ult i64 %.sroa.7.094, 11
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.7.094
  %.val61 = load i8, ptr %i.ab, align 1, !range !38, !noundef !28
  %i.ac = add nuw nsw i64 %.sroa.7.094, 1         ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv
  store i8 %.val61, ptr %i.ad, align 1, !noalias !27908
  %exitcond108.not = icmp eq i64 %i.ac, %i.n
  br i1 %exitcond108.not, label %._crit_edge97.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !27901

bb.h:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73
  unreachable

bb.i:                                             ; preds = %bb.d
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @399) #71
          to label %bb.e unwind label %bb.k

bb.j:                                             ; preds = %bb.x, %bb.t, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.x ], [ %i.au, %bb.t ], [ %i.af, %bb.k ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtNtBG_7set_val9SetValZSTEEB1E_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #72
          to label %bb.ae unwind label %bb.h

bb.k:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27910)
  %i.ag = load i64, ptr %i.j, align 8, !alias.scope !27910, !noundef !28 ; 2 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !27910
  %i.ah = tail call noalias noundef align 8 dereferenceable_or_null(120) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 120, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !27910 ; 9 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.m, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1y_.exit.i.i.i.i, !prof !44

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 120) #71
          to label %.noexc.i unwind label %bb.q, !noalias !27910

.noexc.i:                                         ; preds = %bb.m
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1y_.exit.i.i.i.i: ; preds = %bb.l
  store ptr null, ptr %i.ah, align 8, !noalias !27910
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 10 ; 3 uses
  store i16 0, ptr %i.aj, align 2, !noalias !27910
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  store ptr %i.i, ptr %i.ak, align 8, !noalias !27910
  %i.al = add i64 %i.ag, 1                        ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.r, !prof !44

bb.n:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1y_.exit.i.i.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #71
          to label %bb.o unwind label %bb.p, !noalias !27910

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef 120, i64 noundef 8) #70, !noalias !27910
  br label %.body.i

bb.q:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.q, %bb.p
  tail call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1y_.exit.i.i.i.i
  store ptr %i.ah, ptr %i.i, align 8, !noalias !27911
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i16 0, ptr %i.ao, align 8, !noalias !27912
  store ptr %i.ah, ptr %i.b, align 8, !alias.scope !27910
  store i64 %i.al, ptr %i.j, align 8, !alias.scope !27910
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !noundef !28
  %.not98 = icmp eq i16 %i.aq, 0
  br i1 %.not98, label %bb.s, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %.promoted = load i64, ptr %i.at, align 8
  br label %bb.u

._crit_edge:                                      ; preds = %bb.ad
  store i64 %i.bt, ptr %i.at, align 8
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.t:                                             ; preds = %bb.u
  %i.au = landingpad { ptr, i32 }
          cleanup
  store i64 %i.av, ptr %i.at, align 8
  br label %bb.j

bb.u:                                             ; preds = %.lr.ph, %bb.ad
  %i.av = phi i64 [ %.promoted, %.lr.ph ], [ %i.bt, %bb.ad ] ; 4 uses
  %.sroa.9.085 = phi i64 [ 0, %.lr.ph ], [ %i.ay, %bb.ad ] ; 3 uses
  %i.aw = icmp samesign ult i64 %.sroa.9.085, 11
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.9.085
  %i.ay = add nuw nsw i64 %.sroa.9.085, 1         ; 3 uses
  %.val = load i8, ptr %i.ax, align 1, !range !38, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !28, !noundef !28
  invoke fastcc void @_RINvNvXs0_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB8_8BTreeMappppENtNtCsj6eKBz9Db1c_4core5clone5Clone5clone13clone_subtreeNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtNtBa_7set_val9SetValZSTNtNtBe_5alloc6GlobalEB2c_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %i.ba, i64 noundef %i.h)
          to label %bb.v unwind label %bb.t

bb.v:                                             ; preds = %bb.u
  %.sroa.051.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.553.0.copyload = load i64, ptr %.sroa.553.0..sroa_idx, align 8
  %.not55 = icmp eq ptr %.sroa.051.0.copyload, null
  br i1 %.not55, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.452.0.copyload = load i64, ptr %.sroa.452.0..sroa_idx, align 8
  br label %bb.ab
end_hunk_1
begin_hunk_2_@_RNvMNtCskXtk6F4WjxZ_4just8justfileNtB2_8Justfile3run:bb.a
  %i.anz = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.4153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.aoa = getelementptr inbounds nuw i8, ptr %.sroa.014.0116.i, i64 391
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i382 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.4157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.aob = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.4164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.aod = getelementptr inbounds nuw i8, ptr %2, i64 449
  br label %bb.gk

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit386: ; preds = %.loopexit748, %.loopexit.split-lp749, %bb.hk, %bb.hj, %bb.hf, %bb.he
  %.pn = phi { ptr, i32 } [ %i.arl, %bb.hf ], [ %i.atc, %bb.hk ], [ %i.arl, %bb.he ], [ %i.atc, %bb.hj ], [ %lpad.loopexit750, %.loopexit748 ], [ %lpad.loopexit.split-lp751, %.loopexit.split-lp749 ] ; 2 uses
  %i.aoe = icmp eq i64 %i.ann, 0
  br i1 %i.aoe, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit, label %bb.gj

bb.gj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit386
  %i.aof = shl nuw i64 %i.ann, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ani, i64 noundef %i.aof, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !58899
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit

.loopexit748:                                     ; preds = %bb.gp, %bb.gu, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit398, %bb.gn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit389
  %lpad.loopexit750 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit386

.loopexit.split-lp749:                            ; preds = %bb.gq, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i, %bb.hd
  %lpad.loopexit.split-lp751 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit386

bb.gk:                                            ; preds = %.lr.ph972, %bb.gs
  %.sroa.5619.0970 = phi ptr [ %i.ani, %.lr.ph972 ], [ %i.aog, %bb.gs ] ; 2 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %.sroa.5619.0970, i64 8 ; 2 uses
  %i.aoh = load ptr, ptr %.sroa.5619.0970, align 8, !noalias !58900, !nonnull !28, !align !35, !noundef !28 ; 9 uses
  br i1 %i.ans, label %bb.gm, label %bb.gn

._crit_edge973:                                   ; preds = %bb.gs, %bb.gi
  %i.aoi = icmp eq i64 %i.ann, 0
  br i1 %i.aoi, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just7binding7BindingEEB1u_.exit378, label %bb.gl

bb.gl:                                            ; preds = %._crit_edge973
  %i.aoj = shl nuw i64 %i.ann, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ani, i64 noundef %i.aoj, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !58901
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just7binding7BindingEEB1u_.exit378

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just7binding7BindingEEB1u_.exit378: ; preds = %bb.gl, %._crit_edge973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.gd

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSetNtNtCskXtk6F4WjxZ_4just6number6NumberEEB1A_.exit376: ; preds = %bb.ge, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i375, %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit438

bb.gm:                                            ; preds = %bb.gk
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoh, i64 129
  %i.aol = load i8, ptr %i.aok, align 1, !range !40, !noundef !28
  %i.aom = trunc nuw i8 %i.aol to i1
  br i1 %i.aom, label %bb.gu, label %bb.gt

bb.gn:                                            ; preds = %bb.gk
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aoh, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.aoo = invoke noundef nonnull align 8 ptr @_RNvNtNtCsaKJjC64KgbL_3std2io5stdio6stdout()
          to label %bb.go unwind label %.loopexit748 ; 0 uses

bb.go:                                            ; preds = %bb.gn
  %i.aop = call noundef i32 @isatty(i32 noundef 1) #70, !noalias !58902
  %i.aoq = icmp ne i32 %i.aop, 0
  %i.aor = zext i1 %i.aoq to i8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %.sroa.6627.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(17) %i.aod, i64 17, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !58903)
  store ptr %i.aoh, ptr %i.anu, align 8, !alias.scope !58904, !noalias !58905
  store ptr @1348, ptr %i.anv, align 8, !alias.scope !58904, !noalias !58905
  store i64 %.sroa.0630.0.copyload, ptr %i.q, align 8, !alias.scope !58906, !noalias !58907
  store i32 %.sroa.4631.0.copyload, ptr %.sroa.4624.0..sroa_idx, align 8, !alias.scope !58906, !noalias !58907
  store i8 %i.aor, ptr %.sroa.5626.0..sroa_idx, align 8, !alias.scope !58906, !noalias !58907
  store i8 %.sroa.6633.0.copyload, ptr %.sroa.7628.0..sroa_idx, align 2, !alias.scope !58906, !noalias !58907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  br i1 %i.anw, label %bb.gq, label %bb.gp, !prof !44

bb.gp:                                            ; preds = %bb.go
  store ptr %i.aon, ptr %i.p, align 8
  store ptr @_RNvXs0_NtCskXtk6F4WjxZ_4just4nameNtB5_4NameNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.4143.0..sroa_idx, align 8
  store ptr null, ptr %i.any, align 8
  store i16 %i.anx, ptr %.sroa.4148.0..sroa_idx, align 8
  store ptr %i.q, ptr %i.anz, align 8
  store ptr @_RNvXNtCskXtk6F4WjxZ_4just13color_displayNtB2_7WrapperNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.4153.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsaKJjC64KgbL_3std2io5stdio6__print(ptr noundef nonnull @970, ptr noundef nonnull %i.p)
          to label %bb.gr unwind label %.loopexit748

bb.gq:                                            ; preds = %bb.go
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @393, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @971) #71
          to label %bb.dw unwind label %.loopexit.split-lp749

bb.gr:                                            ; preds = %bb.gp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.gs

bb.gs:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit398, %bb.gr
  %i.aos = icmp eq ptr %i.aog, %i.anl
  br i1 %i.aos, label %._crit_edge973, label %bb.gk

bb.gt:                                            ; preds = %bb.gm
  %i.aot = load i8, ptr %i.aoa, align 1, !range !40, !noundef !28
  %i.aou = trunc nuw i8 %i.aot to i1
  br i1 %i.aou, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt, %bb.gm
  invoke void @_RNvNtNtCsaKJjC64KgbL_3std2io5stdio6__print(ptr noundef nonnull @972, ptr noundef nonnull inttoptr (i64 15 to ptr))
          to label %bb.gv unwind label %.loopexit748

bb.gv:                                            ; preds = %bb.gt, %bb.gu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !58908)
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aoh, i64 40
  %i.aow = load ptr, ptr %i.aov, align 8, !alias.scope !58908, !nonnull !28, !noundef !28 ; 5 uses
  %i.aox = ptrtoaddr ptr %i.aow to i64
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aoh, i64 48
  %i.aoz = load i64, ptr %i.aoy, align 8, !alias.scope !58908, !noundef !28 ; 4 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aoh, i64 80
  %i.apb = load i64, ptr %i.apa, align 8, !alias.scope !58908, !noundef !28 ; 8 uses
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aoh, i64 64
  %i.apd = load i64, ptr %i.apc, align 8, !alias.scope !58908, !noundef !28 ; 17 uses
  %i.ape = add i64 %i.apd, %i.apb                 ; 5 uses
  %i.apf = icmp ugt i64 %i.apb, %i.ape
  %i.apg = icmp ugt i64 %i.ape, %i.aoz
  %or.cond.i.i = or i1 %i.apf, %i.apg
  br i1 %or.cond.i.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i, label %bb.gw, !prof !31

bb.gw:                                            ; preds = %bb.gv
  %i.aph = icmp eq i64 %i.apb, %i.aoz
  br i1 %i.aph, label %bb.ha, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.api = icmp eq i64 %i.apb, 0
  br i1 %i.api, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gz, %bb.gx
  %i.apj = icmp eq i64 %i.ape, %i.aoz
  br i1 %i.apj, label %bb.ha, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i

bb.gz:                                            ; preds = %bb.gx
  %i.apk = getelementptr inbounds nuw i8, ptr %i.aow, i64 %i.apb
  %i.apl = load i8, ptr %i.apk, align 1, !alias.scope !58909, !noalias !58908, !noundef !28
  %i.apm = icmp sgt i8 %i.apl, -65
  br i1 %i.apm, label %bb.gy, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i: ; preds = %bb.gy
  %i.apn = getelementptr inbounds nuw i8, ptr %i.aow, i64 %i.ape
  %i.apo = load i8, ptr %i.apn, align 1, !alias.scope !58909, !noalias !58908, !noundef !28
  %i.app = icmp sgt i8 %i.apo, -65
  br i1 %i.app, label %bb.ha, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i, !prof !33

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i, %bb.gz, %bb.gv
  invoke void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aow, i64 noundef %i.aoz, i64 noundef %i.apb, i64 noundef %i.ape, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869) #75
          to label %.noexc380 unwind label %.loopexit.split-lp749

.noexc380:                                        ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i
  unreachable

bb.ha:                                            ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i, %bb.gy, %bb.gw
  %i.apq = getelementptr inbounds nuw i8, ptr %i.aow, i64 %i.apb ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58910)
  call void @llvm.experimental.noalias.scope.decl(metadata !58911)
  %.not.i.i.i.i = icmp slt i64 %i.apd, 0
  br i1 %.not.i.i.i.i, label %bb.hd, label %bb.hb, !prof !42

bb.hb:                                            ; preds = %bb.ha
  %i.apr = icmp samesign eq i64 %i.apd, 0
  br i1 %i.apr, label %.loopexit747, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !58912
  %i.aps = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.apd, i64 noundef range(i64 1, 9) 1) #70, !noalias !58912 ; 13 uses
  %i.apt = ptrtoaddr ptr %i.aps to i64
  %i.apu = icmp eq ptr %i.aps, null
  br i1 %i.apu, label %bb.hd, label %iter.check

iter.check:                                       ; preds = %bb.hc
  %min.iters.check = icmp ult i64 %i.apd, 8
  br i1 %min.iters.check, label %.preheader.i.i.i.i381.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.apv = add i64 %i.apb, %i.aox
  %i.apw = sub i64 %i.apv, %i.apt
  %diff.check = icmp ugt i64 %i.apw, -32
  br i1 %diff.check, label %.preheader.i.i.i.i381.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check1810 = icmp ult i64 %i.apd, 32
  br i1 %min.iters.check1810, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.apx = and i64 %i.apd, 24
  %n.vec = and i64 %i.apd, 9223372036854775776    ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apq, i64 %index ; 2 uses
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apy, i64 16
  %wide.load = load <16 x i8>, ptr %i.apy, align 1, !alias.scope !58911, !noalias !58913 ; 2 uses
  %wide.load1811 = load <16 x i8>, ptr %i.apz, align 1, !alias.scope !58911, !noalias !58913 ; 2 uses
  %i.aqa = icmp eq <16 x i8> %wide.load, splat (i8 45)
  %i.aqb = icmp eq <16 x i8> %wide.load1811, splat (i8 45)
  %i.aqc = select <16 x i1> %i.aqa, <16 x i8> splat (i8 95), <16 x i8> %wide.load
  %i.aqd = select <16 x i1> %i.aqb, <16 x i8> splat (i8 95), <16 x i8> %wide.load1811
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aps, i64 %index ; 2 uses
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 16
  store <16 x i8> %i.aqc, ptr %i.aqe, align 1, !noalias !58914
  store <16 x i8> %i.aqd, ptr %i.aqf, align 1, !noalias !58914
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aqg = icmp eq i64 %index.next, %n.vec
  br i1 %i.aqg, label %middle.block, label %vector.body, !llvm.loop !58497

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.apd, %n.vec
  br i1 %cmp.n, label %.loopexit747, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.apx, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.i.i.i381.preheader, label %vec.epilog.ph, !prof !63

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1812 = and i64 %i.apd, 9223372036854775800 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1813 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1815, %vec.epilog.vector.body ] ; 3 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.apq, i64 %index1813
  %wide.load1814 = load <8 x i8>, ptr %i.aqh, align 1, !alias.scope !58911, !noalias !58913 ; 2 uses
  %i.aqi = icmp eq <8 x i8> %wide.load1814, splat (i8 45)
  %i.aqj = select <8 x i1> %i.aqi, <8 x i8> splat (i8 95), <8 x i8> %wide.load1814
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aps, i64 %index1813
  store <8 x i8> %i.aqj, ptr %i.aqk, align 1, !noalias !58914
  %index.next1815 = add nuw i64 %index1813, 8     ; 2 uses
  %i.aql = icmp eq i64 %index.next1815, %n.vec1812
  br i1 %i.aql, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !58498

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1816 = icmp eq i64 %i.apd, %n.vec1812
  br i1 %cmp.n1816, label %.loopexit747, label %.preheader.i.i.i.i381.preheader

.preheader.i.i.i.i381.preheader:                  ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph1869 = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1812, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter2130 = and i64 %i.apd, 3               ; 2 uses
  %lcmp.mod2131.not = icmp eq i64 %xtraiter2130, 0
  br i1 %lcmp.mod2131.not, label %.preheader.i.i.i.i381.prol.loopexit, label %.preheader.i.i.i.i381.prol

.preheader.i.i.i.i381.prol:                       ; preds = %.preheader.i.i.i.i381.preheader, %.preheader.i.i.i.i381.prol
  %i.aqm = phi i64 [ %i.aqq, %.preheader.i.i.i.i381.prol ], [ %.ph1869, %.preheader.i.i.i.i381.preheader ] ; 3 uses
  %prol.iter2132 = phi i64 [ %prol.iter2132.next, %.preheader.i.i.i.i381.prol ], [ 0, %.preheader.i.i.i.i381.preheader ]
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.apq, i64 %i.aqm
  %.val15.i.i.i.i.i.i.i.prol = load i8, ptr %i.aqn, align 1, !alias.scope !58911, !noalias !58913, !noundef !28 ; 2 uses
  %i.aqo = icmp eq i8 %.val15.i.i.i.i.i.i.i.prol, 45
  %spec.select.i.prol = select i1 %i.aqo, i8 95, i8 %.val15.i.i.i.i.i.i.i.prol
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aps, i64 %i.aqm
  store i8 %spec.select.i.prol, ptr %i.aqp, align 1, !noalias !58914
  %i.aqq = add nuw nsw i64 %i.aqm, 1              ; 2 uses
  %prol.iter2132.next = add i64 %prol.iter2132, 1 ; 2 uses
  %prol.iter2132.cmp.not = icmp eq i64 %prol.iter2132.next, %xtraiter2130
  br i1 %prol.iter2132.cmp.not, label %.preheader.i.i.i.i381.prol.loopexit, label %.preheader.i.i.i.i381.prol, !llvm.loop !58499

.preheader.i.i.i.i381.prol.loopexit:              ; preds = %.preheader.i.i.i.i381.prol, %.preheader.i.i.i.i381.preheader
  %.unr = phi i64 [ %.ph1869, %.preheader.i.i.i.i381.preheader ], [ %i.aqq, %.preheader.i.i.i.i381.prol ]
  %i.aqr = sub nsw i64 %.ph1869, %i.apd
  %i.aqs = icmp ugt i64 %i.aqr, -4
  br i1 %i.aqs, label %.loopexit747, label %.preheader.i.i.i.i381

bb.hd:                                            ; preds = %bb.hc, %bb.ha
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.hc ], [ 0, %bb.ha ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.apd) #71
          to label %.noexc383 unwind label %.loopexit.split-lp749

.noexc383:                                        ; preds = %bb.hd
  unreachable

.preheader.i.i.i.i381:                            ; preds = %.preheader.i.i.i.i381.prol.loopexit, %.preheader.i.i.i.i381
  %i.aqt = phi i64 [ %i.arj, %.preheader.i.i.i.i381 ], [ %.unr, %.preheader.i.i.i.i381.prol.loopexit ] ; 6 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.apq, i64 %i.aqt
  %.val15.i.i.i.i.i.i.i = load i8, ptr %i.aqu, align 1, !alias.scope !58911, !noalias !58913, !noundef !28 ; 2 uses
  %i.aqv = icmp eq i8 %.val15.i.i.i.i.i.i.i, 45
  %spec.select.i = select i1 %i.aqv, i8 95, i8 %.val15.i.i.i.i.i.i.i
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aps, i64 %i.aqt
  store i8 %spec.select.i, ptr %i.aqw, align 1, !noalias !58914
  %i.aqx = add nuw nsw i64 %i.aqt, 1              ; 2 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.apq, i64 %i.aqx
  %.val15.i.i.i.i.i.i.i.1 = load i8, ptr %i.aqy, align 1, !alias.scope !58911, !noalias !58913, !noundef !28 ; 2 uses
  %i.aqz = icmp eq i8 %.val15.i.i.i.i.i.i.i.1, 45
  %spec.select.i.1 = select i1 %i.aqz, i8 95, i8 %.val15.i.i.i.i.i.i.i.1
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aps, i64 %i.aqx
  store i8 %spec.select.i.1, ptr %i.ara, align 1, !noalias !58914
  %i.arb = add nuw nsw i64 %i.aqt, 2              ; 2 uses
  %i.arc = getelementptr inbounds nuw i8, ptr %i.apq, i64 %i.arb
  %.val15.i.i.i.i.i.i.i.2 = load i8, ptr %i.arc, align 1, !alias.scope !58911, !noalias !58913, !noundef !28 ; 2 uses
  %i.ard = icmp eq i8 %.val15.i.i.i.i.i.i.i.2, 45
  %spec.select.i.2 = select i1 %i.ard, i8 95, i8 %.val15.i.i.i.i.i.i.i.2
  %i.are = getelementptr inbounds nuw i8, ptr %i.aps, i64 %i.arb
  store i8 %spec.select.i.2, ptr %i.are, align 1, !noalias !58914
  %i.arf = add nuw nsw i64 %i.aqt, 3              ; 2 uses
  %i.arg = getelementptr inbounds nuw i8, ptr %i.apq, i64 %i.arf
  %.val15.i.i.i.i.i.i.i.3 = load i8, ptr %i.arg, align 1, !alias.scope !58911, !noalias !58913, !noundef !28 ; 2 uses
  %i.arh = icmp eq i8 %.val15.i.i.i.i.i.i.i.3, 45
  %spec.select.i.3 = select i1 %i.arh, i8 95, i8 %.val15.i.i.i.i.i.i.i.3
  %i.ari = getelementptr inbounds nuw i8, ptr %i.aps, i64 %i.arf
  store i8 %spec.select.i.3, ptr %i.ari, align 1, !noalias !58914
  %i.arj = add nuw nsw i64 %i.aqt, 4              ; 2 uses
  %i.ark = icmp eq i64 %i.arj, %i.apd
  br i1 %i.ark, label %.loopexit747, label %.preheader.i.i.i.i381, !llvm.loop !58500

.loopexit747:                                     ; preds = %.preheader.i.i.i.i381.prol.loopexit, %.preheader.i.i.i.i381, %middle.block, %vec.epilog.middle.block, %bb.hb
  %.sroa.10.0.i14.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.hb ], [ %i.aps, %middle.block ], [ %i.aps, %vec.epilog.middle.block ], [ %i.aps, %.preheader.i.i.i.i381 ], [ %i.aps, %.preheader.i.i.i.i381.prol.loopexit ]
  store i64 %i.apd, ptr %i.o, align 8, !alias.scope !58910, !noalias !58915
  store ptr %.sroa.10.0.i14.i.i, ptr %.sroa.444.0..sroa_idx.i, align 8, !alias.scope !58910, !noalias !58915
  store i64 %i.apd, ptr %.sroa.5.0..sroa_idx.i382, align 8, !alias.scope !58910, !noalias !58915
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.o, ptr %i.n, align 8
  store ptr @_RNvXsq_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.4157.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsaKJjC64KgbL_3std2io5stdio6__print(ptr noundef nonnull @973, ptr noundef nonnull %i.n)
          to label %bb.hg unwind label %bb.he

bb.he:                                            ; preds = %.loopexit747
  %i.arl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58916)
  call void @llvm.experimental.noalias.scope.decl(metadata !58917)
  %.val.i.i384 = load i64, ptr %i.o, align 8, !alias.scope !58918 ; 2 uses
  %i.arm = icmp eq i64 %.val.i.i384, 0
  br i1 %i.arm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit386, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %.val1.i.i385 = load ptr, ptr %.sroa.444.0..sroa_idx.i, align 8, !alias.scope !58918, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i385, i64 noundef %.val.i.i384, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !58918
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit386

bb.hg:                                            ; preds = %.loopexit747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !58919)
  call void @llvm.experimental.noalias.scope.decl(metadata !58920)
  %.val.i.i387 = load i64, ptr %i.o, align 8, !alias.scope !58921 ; 2 uses
  %i.arn = icmp eq i64 %.val.i.i387, 0
  br i1 %i.arn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit389, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %.val1.i.i388 = load ptr, ptr %.sroa.444.0..sroa_idx.i, align 8, !alias.scope !58921, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i388, i64 noundef %.val.i.i387, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !58921
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit389

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit389: ; preds = %bb.hh, %bb.hg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.aro = getelementptr i8, ptr %i.aoh, i64 8
  %.val247 = load ptr, ptr %i.aro, align 8, !nonnull !28, !noundef !28
  %i.arp = getelementptr i8, ptr %i.aoh, i64 16
  %.val248 = load i64, ptr %i.arp, align 8, !noundef !28
  invoke fastcc void @_RINvNtCs4wP2HXfJTCR_5alloc3str17join_generic_copyehNtNtB4_6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val247, i64 noundef %.val248, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @870, i64 noundef 1)
          to label %_RNvMNtCskXtk6F4WjxZ_4just5valueNtB2_5Value4join.exit391 unwind label %.loopexit748

_RNvMNtCskXtk6F4WjxZ_4just5valueNtB2_5Value4join.exit391: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit389
  %i.arq = load ptr, ptr %i.aob, align 8, !nonnull !28, !noundef !28 ; 4 uses
  %i.arr = load i64, ptr %i.aoc, align 8, !noundef !28 ; 2 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arq, i64 %i.arr ; 4 uses
  %i.art = icmp samesign eq i64 %i.arr, 0
  br i1 %i.art, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCskXtk6F4WjxZ_4just5valueNtB2_5Value4join.exit391, %bb.hp
  %.sroa.0635.0969 = phi ptr [ %.sroa.0635.1.ph, %bb.hp ], [ %i.arq, %_RNvMNtCskXtk6F4WjxZ_4just5valueNtB2_5Value4join.exit391 ] ; 5 uses
  %i.aru = getelementptr inbounds nuw i8, ptr %.sroa.0635.0969, i64 1 ; 3 uses
  %i.arv = load i8, ptr %.sroa.0635.0969, align 1, !noalias !58922, !noundef !28 ; 5 uses
  %i.arw = icmp sgt i8 %i.arv, -1
  br i1 %i.arw, label %bb.hi, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i: ; preds = %.lr.ph
  %i.arx = and i8 %i.arv, 31
  %i.ary = zext nneg i8 %i.arx to i32             ; 3 uses
  %i.arz = icmp ne ptr %i.aru, %i.ars
  call void @llvm.assume(i1 %i.arz)
  %i.asa = getelementptr inbounds nuw i8, ptr %.sroa.0635.0969, i64 2 ; 3 uses
  %i.asb = load i8, ptr %i.aru, align 1, !noalias !58922, !noundef !28
  %i.asc = shl nuw nsw i32 %i.ary, 6
  %i.asd = and i8 %i.asb, 63
  %i.ase = zext nneg i8 %i.asd to i32             ; 2 uses
  %i.asf = or disjoint i32 %i.asc, %i.ase
  %i.asg = icmp samesign ugt i8 %i.arv, -33
  br i1 %i.asg, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i, label %bb.hl

bb.hi:                                            ; preds = %.lr.ph
  %i.ash = zext nneg i8 %i.arv to i32
  br label %bb.hl

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i
  %i.asi = icmp ne ptr %i.asa, %i.ars
  call void @llvm.assume(i1 %i.asi)
  %i.asj = getelementptr inbounds nuw i8, ptr %.sroa.0635.0969, i64 3 ; 3 uses
  %i.ask = load i8, ptr %i.asa, align 1, !noalias !58922, !noundef !28
  %i.asl = shl nuw nsw i32 %i.ase, 6
  %i.asm = and i8 %i.ask, 63
  %i.asn = zext nneg i8 %i.asm to i32
  %i.aso = or disjoint i32 %i.asl, %i.asn         ; 2 uses
  %i.asp = shl nuw nsw i32 %i.ary, 12
  %i.asq = or disjoint i32 %i.aso, %i.asp
  %i.asr = icmp samesign ugt i8 %i.arv, -17
  br i1 %i.asr, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i, label %bb.hl

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i
  %i.ass = icmp ne ptr %i.asj, %i.ars
  call void @llvm.assume(i1 %i.ass)
  %i.ast = getelementptr inbounds nuw i8, ptr %.sroa.0635.0969, i64 4
  %i.asu = load i8, ptr %i.asj, align 1, !noalias !58922, !noundef !28
  %i.asv = shl nuw nsw i32 %i.ary, 18
  %i.asw = and i32 %i.asv, 1835008
  %i.asx = shl nuw nsw i32 %i.aso, 6
  %i.asy = and i8 %i.asu, 63
  %i.asz = zext nneg i8 %i.asy to i32
  %i.ata = or disjoint i32 %i.asx, %i.asz
  %i.atb = or disjoint i32 %i.ata, %i.asw
  br label %bb.hl

bb.hj:                                            ; preds = %bb.ho, %bb.hn
  %i.atc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58923)
  call void @llvm.experimental.noalias.scope.decl(metadata !58924)
  %.val.i.i393 = load i64, ptr %i.m, align 8, !alias.scope !58925 ; 2 uses
  %i.atd = icmp eq i64 %.val.i.i393, 0
  br i1 %i.atd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit386, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.arq, i64 noundef %.val.i.i393, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !58925
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit386

bb.hl:                                            ; preds = %bb.hi, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i
  %.sroa.0635.1.ph = phi ptr [ %i.asa, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i ], [ %i.asj, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i ], [ %i.ast, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i ], [ %i.aru, %bb.hi ] ; 2 uses
  %.sroa.4.0.i.ph = phi i32 [ %i.asf, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i ], [ %i.asq, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i ], [ %i.atb, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i ], [ %i.ash, %bb.hi ] ; 3 uses
  %i.ate = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  call void @llvm.assume(i1 %i.ate)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i32 %.sroa.4.0.i.ph, ptr %i.l, align 4
  switch i32 %.sroa.4.0.i.ph, label %bb.ho [
    i32 33, label %bb.hn
    i32 34, label %bb.hn
    i32 36, label %bb.hn
    i32 92, label %bb.hn
    i32 96, label %bb.hn
end_hunk_2
