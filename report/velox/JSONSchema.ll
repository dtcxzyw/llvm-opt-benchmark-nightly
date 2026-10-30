Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/JSONSchema?download=true
inline.NumInlined: 10040
inline.NumDeleted: 4349
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE20unwind_recursion_popEb:bb.a
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !421
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23, !call_target !466, !inline_history !388
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !421
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23, !call_target !481, !inline_history !388
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !413
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !527
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.w, %bb.g ], [ %i.ag, %bb.h ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.i, label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, !prof !410

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.e, %bb.c
  %i.ai = load ptr, ptr %i.q, align 8, !tbaa !9566 ; 3 uses
  %.not.i.i.i1.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i1.i.i.i.i, label %_ZNSt6vectorIN5boost13re_detail_50014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEESaISJ_EE8pop_backEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i
  %i.aj = getelementptr inbounds i8, ptr %i.l, i64 -80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !9567
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #49
  br label %_ZNSt6vectorIN5boost13re_detail_50014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEESaISJ_EE8pop_backEv.exit

_ZNSt6vectorIN5boost13re_detail_50014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEESaISJ_EE8pop_backEv.exit: ; preds = %bb.j, %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, %bb.b, %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !9596
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13unwind_commitEb(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %1) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9596
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.a, align 8, !tbaa !9596
  %i.d = zext i1 %1 to i8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 229 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 230
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  store i8 %i.d, ptr %i.e, align 4, !tbaa !9593
  store i8 0, ptr %i.f, align 1, !tbaa !9594
  store i8 0, ptr %i.g, align 2, !tbaa !9595
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !9596
  %i.j = load i32, ptr %i.i, align 8, !tbaa !413
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr @_ZZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEbE14s_unwind_tableB5cxx11, i64 %i.k
  %.unpack.i = load i64, ptr %i.l, align 16, !tbaa !413
  %i.m = inttoptr i64 %.unpack.i to ptr
  %i.n = load i8, ptr %i.e, align 4, !tbaa !9593, !range !614, !noundef !515
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %i.o), !inline_history !386
  br i1 %i.p, label %bb.c, label %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEb.exit, !llvm.loop !387

_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEb.exit: ; preds = %bb.c
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !9568
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEb.exit
  %i.r = load i8, ptr %i.f, align 1, !tbaa !9594, !range !614, !noundef !515
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %.critedge, label %bb.b, !llvm.loop !11702

.critedge:                                        ; preds = %bb.d
  store i8 0, ptr %i.f, align 1, !tbaa !9594
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !9596
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !9601
  %i.x = icmp ult ptr %i.u, %i.w
  br i1 %i.x, label %bb.e, label %bb.j

bb.e:                                             ; preds = %.critedge
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !9585 ; 2 uses
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = add i32 %i.z, -1
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !9585
  %i.ab = load atomic i8, ptr @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache acquire, align 8
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %_ZN5boost13re_detail_50013get_mem_blockEv.exit.i, !prof !1693

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #23
  %.not.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i, label %_ZN5boost13re_detail_50013get_mem_blockEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost13re_detail_50015mem_block_cacheD2Ev, ptr nonnull @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache, ptr nonnull @__dso_handle) #23 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #23
  br label %_ZN5boost13re_detail_50013get_mem_blockEv.exit.i

_ZN5boost13re_detail_50013get_mem_blockEv.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.af = tail call noundef ptr @_ZN5boost13re_detail_50015mem_block_cache3getEv(ptr noundef nonnull align 8 dereferenceable(128) @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4072 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 4080
  %i.ai = load <2 x ptr>, ptr %i.v, align 8, !tbaa !9584
  store i32 6, ptr %i.ag, align 8, !tbaa !413
  store <2 x ptr> %i.ai, ptr %i.ah, align 8, !tbaa !9584
  store ptr %i.af, ptr %i.v, align 8, !tbaa !9601
  br label %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit

bb.i:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !9597, !nonnull !515, !align !559
  tail call void @_ZN5boost13re_detail_50011raise_errorINS_20regex_traits_wrapperINS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEEEEvRKT_NS_15regex_constants10error_typeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i32 noundef 19)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !9596
  br label %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit

_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit: ; preds = %_ZN5boost13re_detail_50013get_mem_blockEv.exit.i, %bb.i
  %i.al = phi ptr [ %i.ag, %_ZN5boost13re_detail_50013get_mem_blockEv.exit.i ], [ %.pre, %bb.i ]
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  br label %bb.j

bb.j:                                             ; preds = %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit, %.critedge
  %.0 = phi ptr [ %i.am, %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit ], [ %i.u, %.critedge ] ; 2 uses
  store i32 16, ptr %.0, align 8, !tbaa !413
  store ptr %.0, ptr %i.a, align 8, !tbaa !9596
  br label %.thread

.thread:                                          ; preds = %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEb.exit, %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 123
  store i8 0, ptr %i.an, align 1, !tbaa !9560
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE11unwind_thenEb(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %1) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9596
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.a, align 8, !tbaa !9596
  %i.d = zext i1 %1 to i8                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 5 uses
  store i8 %i.d, ptr %i.e, align 4, !tbaa !9593
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 229 ; 2 uses
  store i8 0, ptr %i.f, align 1, !tbaa !9594
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 230 ; 3 uses
  store i8 0, ptr %i.g, align 2, !tbaa !9595
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !9596
  %i.i = load i32, ptr %i.h, align 8, !tbaa !413
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr @_ZZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEbE14s_unwind_tableB5cxx11, i64 %i.j
  %.unpack.i = load i64, ptr %i.k, align 16, !tbaa !413
  %i.l = inttoptr i64 %.unpack.i to ptr
  %i.m = load i8, ptr %i.e, align 4, !tbaa !9593, !range !614, !noundef !515
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %i.n), !inline_history !386
  br i1 %i.o, label %bb.b, label %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEb.exit, !llvm.loop !387

_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEb.exit: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.0.in.in11 = load ptr, ptr %i.p, align 8, !tbaa !9568
  %.0.in.not12 = icmp eq ptr %.0.in.in11, null
  br i1 %.0.in.not12, label %.critedge5, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEb.exit, %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEb.exit7
  %i.q = load i8, ptr %i.g, align 2, !tbaa !9595, !range !614, !noundef !515
  %i.r = trunc nuw i8 %i.q to i1
  store i8 %i.d, ptr %i.e, align 4, !tbaa !9593
  store i8 0, ptr %i.f, align 1, !tbaa !9594
  br i1 %i.r, label %.critedge, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.preheader
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !9596
  %i.t = load i32, ptr %i.s, align 8, !tbaa !413
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr @_ZZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEbE14s_unwind_tableB5cxx11, i64 %i.u
  %.unpack.i6 = load i64, ptr %i.v, align 16, !tbaa !413
  %i.w = inttoptr i64 %.unpack.i6 to ptr
  %i.x = load i8, ptr %i.e, align 4, !tbaa !9593, !range !614, !noundef !515
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = tail call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %i.y), !inline_history !386
  br i1 %i.z, label %.preheader, label %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEb.exit7, !llvm.loop !387

_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEb.exit7: ; preds = %.preheader
  %.0.in.in = load ptr, ptr %i.p, align 8, !tbaa !9568
  %.0.in.not = icmp eq ptr %.0.in.in, null
  br i1 %.0.in.not, label %.critedge5, label %.lr.ph, !llvm.loop !11703

.critedge:                                        ; preds = %.lr.ph
  store i8 0, ptr %i.g, align 2, !tbaa !9595
  br label %.critedge.a

.critedge.a:                                      ; preds = %.critedge.a, %.critedge
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !9596
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !413
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr @_ZZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEbE14s_unwind_tableB5cxx11, i64 %i.ac
  %.unpack.i8 = load i64, ptr %i.ad, align 16, !tbaa !413
  %i.ae = inttoptr i64 %.unpack.i8 to ptr
  %i.af = load i8, ptr %i.e, align 4, !tbaa !9593, !range !614, !noundef !515
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = tail call noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %i.ag), !inline_history !386
  br i1 %i.ah, label %.critedge.a, label %.critedge5, !llvm.loop !387

.critedge5:                                       ; preds = %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEb.exit7, %.critedge.a, %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEb.exit
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE11unwind_caseEb(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %1) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9596 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !9620, !range !614, !noundef !515
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %i.d, ptr %i.e, align 8, !tbaa !9572
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.f, ptr %i.a, align 8, !tbaa !9596
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5boost13re_detail_50015mem_block_cache3putEPv(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic ptr, ptr %0 seq_cst, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = cmpxchg ptr %0, ptr null, ptr %1 seq_cst seq_cst, align 8
  %i.d = extractvalue { ptr, i1 } %i.c, 1
  br i1 %i.d, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load atomic ptr, ptr %i.e seq_cst, align 8
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %.critedge.1

bb.c:                                             ; preds = %.critedge
  %i.h = cmpxchg ptr %i.e, ptr null, ptr %1 seq_cst seq_cst, align 8
  %i.i = extractvalue { ptr, i1 } %i.h, 1
  br i1 %i.i, label %.loopexit, label %.critedge.1

.critedge.1:                                      ; preds = %bb.c, %.critedge
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load atomic ptr, ptr %i.j seq_cst, align 8
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %.critedge.2

bb.d:                                             ; preds = %.critedge.1
  %i.m = cmpxchg ptr %i.j, ptr null, ptr %1 seq_cst seq_cst, align 8
  %i.n = extractvalue { ptr, i1 } %i.m, 1
  br i1 %i.n, label %.loopexit, label %.critedge.2

.critedge.2:                                      ; preds = %bb.d, %.critedge.1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load atomic ptr, ptr %i.o seq_cst, align 8
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %.critedge.3

bb.e:                                             ; preds = %.critedge.2
  %i.r = cmpxchg ptr %i.o, ptr null, ptr %1 seq_cst seq_cst, align 8
  %i.s = extractvalue { ptr, i1 } %i.r, 1
  br i1 %i.s, label %.loopexit, label %.critedge.3

.critedge.3:                                      ; preds = %bb.e, %.critedge.2
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = load atomic ptr, ptr %i.t seq_cst, align 8
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %.critedge.4

bb.f:                                             ; preds = %.critedge.3
  %i.w = cmpxchg ptr %i.t, ptr null, ptr %1 seq_cst seq_cst, align 8
  %i.x = extractvalue { ptr, i1 } %i.w, 1
  br i1 %i.x, label %.loopexit, label %.critedge.4

.critedge.4:                                      ; preds = %bb.f, %.critedge.3
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load atomic ptr, ptr %i.y seq_cst, align 8
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.g, label %.critedge.5

bb.g:                                             ; preds = %.critedge.4
  %i.ab = cmpxchg ptr %i.y, ptr null, ptr %1 seq_cst seq_cst, align 8
  %i.ac = extractvalue { ptr, i1 } %i.ab, 1
  br i1 %i.ac, label %.loopexit, label %.critedge.5

.critedge.5:                                      ; preds = %bb.g, %.critedge.4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ae = load atomic ptr, ptr %i.ad seq_cst, align 8
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %.critedge.6

bb.h:                                             ; preds = %.critedge.5
  %i.ag = cmpxchg ptr %i.ad, ptr null, ptr %1 seq_cst seq_cst, align 8
  %i.ah = extractvalue { ptr, i1 } %i.ag, 1
  br i1 %i.ah, label %.loopexit, label %.critedge.6

.critedge.6:                                      ; preds = %bb.h, %.critedge.5
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aj = load atomic ptr, ptr %i.ai seq_cst, align 8
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.i, label %.critedge.7

bb.i:                                             ; preds = %.critedge.6
  %i.al = cmpxchg ptr %i.ai, ptr null, ptr %1 seq_cst seq_cst, align 8
  %i.am = extractvalue { ptr, i1 } %i.al, 1
  br i1 %i.am, label %.loopexit, label %.critedge.7

.critedge.7:                                      ; preds = %bb.i, %.critedge.6
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ao = load atomic ptr, ptr %i.an seq_cst, align 8
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.j, label %.critedge.8

bb.j:                                             ; preds = %.critedge.7
  %i.aq = cmpxchg ptr %i.an, ptr null, ptr %1 seq_cst seq_cst, align 8
  %i.ar = extractvalue { ptr, i1 } %i.aq, 1
  br i1 %i.ar, label %.loopexit, label %.critedge.8

.critedge.8:                                      ; preds = %bb.j, %.critedge.7
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.at = load atomic ptr, ptr %i.as seq_cst, align 8
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.k, label %.critedge.9

bb.k:                                             ; preds = %.critedge.8
  %i.av = cmpxchg ptr %i.as, ptr null, ptr %1 seq_cst seq_cst, align 8
  %i.aw = extractvalue { ptr, i1 } %i.av, 1
  br i1 %i.aw, label %.loopexit, label %.critedge.9

.critedge.9:                                      ; preds = %bb.k, %.critedge.8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ay = load atomic ptr, ptr %i.ax seq_cst, align 8
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.l, label %.critedge.10

bb.l:                                             ; preds = %.critedge.9
  %i.ba = cmpxchg ptr %i.ax, ptr null, ptr %1 seq_cst seq_cst, align 8
  %i.bb = extractvalue { ptr, i1 } %i.ba, 1
  br i1 %i.bb, label %.loopexit, label %.critedge.10

.critedge.10:                                     ; preds = %bb.l, %.critedge.9
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bd = load atomic ptr, ptr %i.bc seq_cst, align 8
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.m, label %.critedge.11

bb.m:                                             ; preds = %.critedge.10
  %i.bf = cmpxchg ptr %i.bc, ptr null, ptr %1 seq_cst seq_cst, align 8
  %i.bg = extractvalue { ptr, i1 } %i.bf, 1
  br i1 %i.bg, label %.loopexit, label %.critedge.11

.critedge.11:                                     ; preds = %bb.m, %.critedge.10
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bi = load atomic ptr, ptr %i.bh seq_cst, align 8
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.n, label %.critedge.12

bb.n:                                             ; preds = %.critedge.11
  %i.bk = cmpxchg ptr %i.bh, ptr null, ptr %1 seq_cst seq_cst, align 8
  %i.bl = extractvalue { ptr, i1 } %i.bk, 1
  br i1 %i.bl, label %.loopexit, label %.critedge.12

.critedge.12:                                     ; preds = %bb.n, %.critedge.11
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bn = load atomic ptr, ptr %i.bm seq_cst, align 8
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.o, label %.critedge.13

bb.o:                                             ; preds = %.critedge.12
  %i.bp = cmpxchg ptr %i.bm, ptr null, ptr %1 seq_cst seq_cst, align 8
  %i.bq = extractvalue { ptr, i1 } %i.bp, 1
  br i1 %i.bq, label %.loopexit, label %.critedge.13

.critedge.13:                                     ; preds = %bb.o, %.critedge.12
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bs = load atomic ptr, ptr %i.br seq_cst, align 8
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.p, label %.critedge.14

bb.p:                                             ; preds = %.critedge.13
  %i.bu = cmpxchg ptr %i.br, ptr null, ptr %1 seq_cst seq_cst, align 8
  %i.bv = extractvalue { ptr, i1 } %i.bu, 1
  br i1 %i.bv, label %.loopexit, label %.critedge.14

.critedge.14:                                     ; preds = %bb.p, %.critedge.13
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bx = load atomic ptr, ptr %i.bw seq_cst, align 8
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.q, label %.critedge.15
end_hunk_0
