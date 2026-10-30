Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/matches_relation_factory?download=true
inline.NumInlined: 7984
inline.NumDeleted: 2697
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN5boost13re_detail_60012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE20unwind_recursion_popEb:bb.a
  br i1 %1, label %_ZNSt6vectorIN5boost13re_detail_60014recursion_infoINS0_13match_resultsIPKcSaINS0_9sub_matchIS5_EEEEEEESaISA_EE8pop_backEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !606
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !606  ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZNSt6vectorIN5boost13re_detail_60014recursion_infoINS0_13match_resultsIPKcSaINS0_9sub_matchIS5_EEEEEEESaISA_EE8pop_backEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -96
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !567
  %i.k = tail call noundef nonnull align 8 dereferenceable(77) ptr @_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(77) %i.j, ptr noundef nonnull align 8 dereferenceable(77) %i.h) ; 0 uses
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !606  ; 5 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -112
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !623
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.o, ptr %i.p, align 8, !tbaa !553
  store ptr %i.m, ptr %i.e, align 8, !tbaa !572
  %i.q = getelementptr inbounds i8, ptr %i.l, i64 -96
  %i.r = getelementptr inbounds i8, ptr %i.l, i64 -32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !89   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.t, align 8, !tbaa !99
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !100
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !102
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #27, !inline_history !52
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #27, !inline_history !52
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !86
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.w, %bb.g ], [ %i.ag, %bb.h ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.i, label %_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !103

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #27
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.e, %bb.c
  %i.ai = load ptr, ptr %i.q, align 8, !tbaa !529 ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt6vectorIN5boost13re_detail_60014recursion_infoINS0_13match_resultsIPKcSaINS0_9sub_matchIS5_EEEEEEESaISA_EE8pop_backEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.aj = getelementptr inbounds i8, ptr %i.l, i64 -80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !530
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #31
  br label %_ZNSt6vectorIN5boost13re_detail_60014recursion_infoINS0_13match_resultsIPKcSaINS0_9sub_matchIS5_EEEEEEESaISA_EE8pop_backEv.exit

_ZNSt6vectorIN5boost13re_detail_60014recursion_infoINS0_13match_resultsIPKcSaINS0_9sub_matchIS5_EEEEEEESaISA_EE8pop_backEv.exit: ; preds = %bb.j, %_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, %bb.b, %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !589
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost13re_detail_60012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13unwind_commitEb(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %1) #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !589
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.a, align 8, !tbaa !589
  %i.d = zext i1 %1 to i8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 229 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 230
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  store i8 %i.d, ptr %i.e, align 4, !tbaa !586
  store i8 0, ptr %i.f, align 1, !tbaa !587
  store i8 0, ptr %i.g, align 2, !tbaa !588
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !589
  %i.j = load i32, ptr %i.i, align 8, !tbaa !84
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr @_ZZN5boost13re_detail_60012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEbE14s_unwind_table, i64 %i.k
  %.unpack.i = load i64, ptr %i.l, align 16, !tbaa !84
  %i.m = inttoptr i64 %.unpack.i to ptr
  %i.n = load i8, ptr %i.e, align 4, !tbaa !586, !range !267, !noundef !107
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %i.o), !inline_history !48
  br i1 %i.p, label %bb.c, label %_ZN5boost13re_detail_60012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEb.exit, !llvm.loop !49

_ZN5boost13re_detail_60012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEb.exit: ; preds = %bb.c
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !561
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost13re_detail_60012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEb.exit
  %i.r = load i8, ptr %i.f, align 1, !tbaa !587, !range !267, !noundef !107
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %.critedge, label %bb.b, !llvm.loop !1743

.critedge:                                        ; preds = %bb.d
  store i8 0, ptr %i.f, align 1, !tbaa !587
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !589
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !597
  %i.x = icmp ult ptr %i.u, %i.w
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge
  tail call void @_ZN5boost13re_detail_60012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv(ptr noundef nonnull align 8 dereferenceable(236) %0)
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !589
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %.0 = phi ptr [ %i.z, %bb.e ], [ %i.u, %.critedge ] ; 2 uses
  store i32 16, ptr %.0, align 8, !tbaa !84
  store ptr %.0, ptr %i.a, align 8, !tbaa !589
  br label %.thread

.thread:                                          ; preds = %_ZN5boost13re_detail_60012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEb.exit, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 123
  store i8 0, ptr %i.aa, align 1, !tbaa !555
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost13re_detail_60012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE11unwind_thenEb(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %1) #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !589
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.a, align 8, !tbaa !589
  %i.d = zext i1 %1 to i8                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 5 uses
  store i8 %i.d, ptr %i.e, align 4, !tbaa !586
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 229 ; 2 uses
  store i8 0, ptr %i.f, align 1, !tbaa !587
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 230 ; 3 uses
  store i8 0, ptr %i.g, align 2, !tbaa !588
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !589
  %i.i = load i32, ptr %i.h, align 8, !tbaa !84
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr @_ZZN5boost13re_detail_60012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEbE14s_unwind_table, i64 %i.j
  %.unpack.i = load i64, ptr %i.k, align 16, !tbaa !84
  %i.l = inttoptr i64 %.unpack.i to ptr
  %i.m = load i8, ptr %i.e, align 4, !tbaa !586, !range !267, !noundef !107
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %i.n), !inline_history !48
  br i1 %i.o, label %bb.b, label %_ZN5boost13re_detail_60012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEb.exit, !llvm.loop !49

_ZN5boost13re_detail_60012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEb.exit: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.0.in.in11 = load ptr, ptr %i.p, align 8, !tbaa !561
  %.0.in.not12 = icmp eq ptr %.0.in.in11, null
  br i1 %.0.in.not12, label %.critedge5, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost13re_detail_60012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEb.exit, %_ZN5boost13re_detail_60012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEb.exit7
  %i.q = load i8, ptr %i.g, align 2, !tbaa !588, !range !267, !noundef !107
  %i.r = trunc nuw i8 %i.q to i1
  store i8 %i.d, ptr %i.e, align 4, !tbaa !586
  store i8 0, ptr %i.f, align 1, !tbaa !587
  br i1 %i.r, label %.critedge, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.preheader
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !589
  %i.t = load i32, ptr %i.s, align 8, !tbaa !84
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr @_ZZN5boost13re_detail_60012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEbE14s_unwind_table, i64 %i.u
  %.unpack.i6 = load i64, ptr %i.v, align 16, !tbaa !84
  %i.w = inttoptr i64 %.unpack.i6 to ptr
  %i.x = load i8, ptr %i.e, align 4, !tbaa !586, !range !267, !noundef !107
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = tail call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %i.y), !inline_history !48
  br i1 %i.z, label %.preheader, label %_ZN5boost13re_detail_60012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEb.exit7, !llvm.loop !49

_ZN5boost13re_detail_60012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEb.exit7: ; preds = %.preheader
  %.0.in.in = load ptr, ptr %i.p, align 8, !tbaa !561
  %.0.in.not = icmp eq ptr %.0.in.in, null
  br i1 %.0.in.not, label %.critedge5, label %.lr.ph, !llvm.loop !1744

.critedge:                                        ; preds = %.lr.ph
  store i8 0, ptr %i.g, align 2, !tbaa !588
  br label %.critedge.a

.critedge.a:                                      ; preds = %.critedge.a, %.critedge
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !589
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !84
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr @_ZZN5boost13re_detail_60012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEbE14s_unwind_table, i64 %i.ac
  %.unpack.i8 = load i64, ptr %i.ad, align 16, !tbaa !84
  %i.ae = inttoptr i64 %.unpack.i8 to ptr
  %i.af = load i8, ptr %i.e, align 4, !tbaa !586, !range !267, !noundef !107
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = tail call noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %i.ag), !inline_history !48
  br i1 %i.ah, label %.critedge.a, label %.critedge5, !llvm.loop !49

.critedge5:                                       ; preds = %_ZN5boost13re_detail_60012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEb.exit7, %.critedge.a, %_ZN5boost13re_detail_60012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEb.exit
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost13re_detail_60012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE11unwind_caseEb(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %1) #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !589  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !622, !range !267, !noundef !107
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %i.d, ptr %i.e, align 8, !tbaa !565
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.f, ptr %i.a, align 8, !tbaa !589
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost13re_detail_60015mem_block_cache3putEPv(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
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
begin_hunk_1_@_ZN5boost13re_detail_60012perl_matcherIPKwSaINS_9sub_matchIS3_EEENS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE20unwind_recursion_popEb:bb.a
  br i1 %1, label %_ZNSt6vectorIN5boost13re_detail_60014recursion_infoINS0_13match_resultsIPKwSaINS0_9sub_matchIS5_EEEEEEESaISA_EE8pop_backEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !701
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !701  ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZNSt6vectorIN5boost13re_detail_60014recursion_infoINS0_13match_resultsIPKwSaINS0_9sub_matchIS5_EEEEEEESaISA_EE8pop_backEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -96
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !668
  %i.k = tail call noundef nonnull align 8 dereferenceable(77) ptr @_ZN5boost13match_resultsIPKwSaINS_9sub_matchIS2_EEEEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(77) %i.j, ptr noundef nonnull align 8 dereferenceable(77) %i.h) ; 0 uses
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !701  ; 5 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -112
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !714
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.o, ptr %i.p, align 8, !tbaa !655
  store ptr %i.m, ptr %i.e, align 8, !tbaa !673
  %i.q = getelementptr inbounds i8, ptr %i.l, i64 -96
  %i.r = getelementptr inbounds i8, ptr %i.l, i64 -32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !89   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.t, align 8, !tbaa !99
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !100
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !102
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #27, !inline_history !64
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #27, !inline_history !64
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !86
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.w, %bb.g ], [ %i.ag, %bb.h ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.i, label %_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !103

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #27
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.e, %bb.c
  %i.ai = load ptr, ptr %i.q, align 8, !tbaa !633 ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt6vectorIN5boost13re_detail_60014recursion_infoINS0_13match_resultsIPKwSaINS0_9sub_matchIS5_EEEEEEESaISA_EE8pop_backEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.aj = getelementptr inbounds i8, ptr %i.l, i64 -80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !634
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #31
  br label %_ZNSt6vectorIN5boost13re_detail_60014recursion_infoINS0_13match_resultsIPKwSaINS0_9sub_matchIS5_EEEEEEESaISA_EE8pop_backEv.exit

_ZNSt6vectorIN5boost13re_detail_60014recursion_infoINS0_13match_resultsIPKwSaINS0_9sub_matchIS5_EEEEEEESaISA_EE8pop_backEv.exit: ; preds = %bb.j, %_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, %bb.b, %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !686
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost13re_detail_60012perl_matcherIPKwSaINS_9sub_matchIS3_EEENS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE13unwind_commitEb(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %1) #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !686
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.a, align 8, !tbaa !686
  %i.d = zext i1 %1 to i8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 229 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 230
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  store i8 %i.d, ptr %i.e, align 4, !tbaa !683
  store i8 0, ptr %i.f, align 1, !tbaa !684
  store i8 0, ptr %i.g, align 2, !tbaa !685
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !686
  %i.j = load i32, ptr %i.i, align 8, !tbaa !84
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr @_ZZN5boost13re_detail_60012perl_matcherIPKwSaINS_9sub_matchIS3_EEENS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE6unwindEbE14s_unwind_table, i64 %i.k
  %.unpack.i = load i64, ptr %i.l, align 16, !tbaa !84
  %i.m = inttoptr i64 %.unpack.i to ptr
  %i.n = load i8, ptr %i.e, align 4, !tbaa !683, !range !267, !noundef !107
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %i.o), !inline_history !61
  br i1 %i.p, label %bb.c, label %_ZN5boost13re_detail_60012perl_matcherIPKwSaINS_9sub_matchIS3_EEENS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE6unwindEb.exit, !llvm.loop !62

_ZN5boost13re_detail_60012perl_matcherIPKwSaINS_9sub_matchIS3_EEENS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE6unwindEb.exit: ; preds = %bb.c
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !663
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost13re_detail_60012perl_matcherIPKwSaINS_9sub_matchIS3_EEENS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE6unwindEb.exit
  %i.r = load i8, ptr %i.f, align 1, !tbaa !684, !range !267, !noundef !107
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %.critedge, label %bb.b, !llvm.loop !1824

.critedge:                                        ; preds = %bb.d
  store i8 0, ptr %i.f, align 1, !tbaa !684
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !686
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !693
  %i.x = icmp ult ptr %i.u, %i.w
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge
  tail call void @_ZN5boost13re_detail_60012perl_matcherIPKwSaINS_9sub_matchIS3_EEENS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE12extend_stackEv(ptr noundef nonnull align 8 dereferenceable(236) %0)
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !686
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %.0 = phi ptr [ %i.z, %bb.e ], [ %i.u, %.critedge ] ; 2 uses
  store i32 16, ptr %.0, align 8, !tbaa !84
  store ptr %.0, ptr %i.a, align 8, !tbaa !686
  br label %.thread

.thread:                                          ; preds = %_ZN5boost13re_detail_60012perl_matcherIPKwSaINS_9sub_matchIS3_EEENS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE6unwindEb.exit, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 123
  store i8 0, ptr %i.aa, align 1, !tbaa !657
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost13re_detail_60012perl_matcherIPKwSaINS_9sub_matchIS3_EEENS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE11unwind_thenEb(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %1) #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !686
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.a, align 8, !tbaa !686
  %i.d = zext i1 %1 to i8                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 5 uses
  store i8 %i.d, ptr %i.e, align 4, !tbaa !683
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 229 ; 2 uses
  store i8 0, ptr %i.f, align 1, !tbaa !684
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 230 ; 3 uses
  store i8 0, ptr %i.g, align 2, !tbaa !685
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !686
  %i.i = load i32, ptr %i.h, align 8, !tbaa !84
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr @_ZZN5boost13re_detail_60012perl_matcherIPKwSaINS_9sub_matchIS3_EEENS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE6unwindEbE14s_unwind_table, i64 %i.j
  %.unpack.i = load i64, ptr %i.k, align 16, !tbaa !84
  %i.l = inttoptr i64 %.unpack.i to ptr
  %i.m = load i8, ptr %i.e, align 4, !tbaa !683, !range !267, !noundef !107
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %i.n), !inline_history !61
  br i1 %i.o, label %bb.b, label %_ZN5boost13re_detail_60012perl_matcherIPKwSaINS_9sub_matchIS3_EEENS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE6unwindEb.exit, !llvm.loop !62

_ZN5boost13re_detail_60012perl_matcherIPKwSaINS_9sub_matchIS3_EEENS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE6unwindEb.exit: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.0.in.in11 = load ptr, ptr %i.p, align 8, !tbaa !663
  %.0.in.not12 = icmp eq ptr %.0.in.in11, null
  br i1 %.0.in.not12, label %.critedge5, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost13re_detail_60012perl_matcherIPKwSaINS_9sub_matchIS3_EEENS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE6unwindEb.exit, %_ZN5boost13re_detail_60012perl_matcherIPKwSaINS_9sub_matchIS3_EEENS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE6unwindEb.exit7
  %i.q = load i8, ptr %i.g, align 2, !tbaa !685, !range !267, !noundef !107
  %i.r = trunc nuw i8 %i.q to i1
  store i8 %i.d, ptr %i.e, align 4, !tbaa !683
  store i8 0, ptr %i.f, align 1, !tbaa !684
  br i1 %i.r, label %.critedge, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.preheader
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !686
  %i.t = load i32, ptr %i.s, align 8, !tbaa !84
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr @_ZZN5boost13re_detail_60012perl_matcherIPKwSaINS_9sub_matchIS3_EEENS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE6unwindEbE14s_unwind_table, i64 %i.u
  %.unpack.i6 = load i64, ptr %i.v, align 16, !tbaa !84
  %i.w = inttoptr i64 %.unpack.i6 to ptr
  %i.x = load i8, ptr %i.e, align 4, !tbaa !683, !range !267, !noundef !107
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = tail call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %i.y), !inline_history !61
  br i1 %i.z, label %.preheader, label %_ZN5boost13re_detail_60012perl_matcherIPKwSaINS_9sub_matchIS3_EEENS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE6unwindEb.exit7, !llvm.loop !62

_ZN5boost13re_detail_60012perl_matcherIPKwSaINS_9sub_matchIS3_EEENS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE6unwindEb.exit7: ; preds = %.preheader
  %.0.in.in = load ptr, ptr %i.p, align 8, !tbaa !663
  %.0.in.not = icmp eq ptr %.0.in.in, null
  br i1 %.0.in.not, label %.critedge5, label %.lr.ph, !llvm.loop !1825

.critedge:                                        ; preds = %.lr.ph
  store i8 0, ptr %i.g, align 2, !tbaa !685
  br label %.critedge.a

.critedge.a:                                      ; preds = %.critedge.a, %.critedge
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !686
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !84
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr @_ZZN5boost13re_detail_60012perl_matcherIPKwSaINS_9sub_matchIS3_EEENS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE6unwindEbE14s_unwind_table, i64 %i.ac
  %.unpack.i8 = load i64, ptr %i.ad, align 16, !tbaa !84
  %i.ae = inttoptr i64 %.unpack.i8 to ptr
  %i.af = load i8, ptr %i.e, align 4, !tbaa !683, !range !267, !noundef !107
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = tail call noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %i.ag), !inline_history !61
  br i1 %i.ah, label %.critedge.a, label %.critedge5, !llvm.loop !62

.critedge5:                                       ; preds = %_ZN5boost13re_detail_60012perl_matcherIPKwSaINS_9sub_matchIS3_EEENS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE6unwindEb.exit7, %.critedge.a, %_ZN5boost13re_detail_60012perl_matcherIPKwSaINS_9sub_matchIS3_EEENS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE6unwindEb.exit
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost13re_detail_60012perl_matcherIPKwSaINS_9sub_matchIS3_EEENS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE11unwind_caseEb(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %1) #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !686  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !622, !range !267, !noundef !107
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %i.d, ptr %i.e, align 8, !tbaa !667
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.f, ptr %i.a, align 8, !tbaa !686
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost13re_detail_60015saved_recursionINS_13match_resultsIPKwSaINS_9sub_matchIS4_EEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !89   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !99
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !100
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !102
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #27, !inline_history !57
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !102
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #27, !inline_history !57
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !86
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !103

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #27
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !633  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i, label %_ZN5boost13match_resultsIPKwSaINS_9sub_matchIS2_EEEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !634
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #31
  br label %_ZN5boost13match_resultsIPKwSaINS_9sub_matchIS2_EEEED2Ev.exit

_ZN5boost13match_resultsIPKwSaINS_9sub_matchIS2_EEEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !89  ; 8 uses
  %.not.i.i.i1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i1, label %_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i5, label %bb.i

bb.i:                                             ; preds = %_ZN5boost13match_resultsIPKwSaINS_9sub_matchIS2_EEEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ab, align 8, !tbaa !99
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !100
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !102
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #27, !inline_history !57
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !102
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #27, !inline_history !57
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i5

bb.k:                                             ; preds = %bb.i
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i2 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i2, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !86
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3

bb.m:                                             ; preds = %bb.k
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i4 = phi i32 [ %i.ae, %bb.l ], [ %i.ao, %bb.m ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i4, 1
  br i1 %i.ap, label %bb.n, label %_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i5, !prof !103

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #27
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i5

_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i5: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3, %bb.j, %_ZN5boost13match_resultsIPKwSaINS_9sub_matchIS2_EEEED2Ev.exit
  %i.aq = load ptr, ptr %i.y, align 8, !tbaa !633 ; 3 uses
  %.not.i.i.i1.i6 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i1.i6, label %_ZN5boost13match_resultsIPKwSaINS_9sub_matchIS2_EEEED2Ev.exit7, label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i5
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !634
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #31
  br label %_ZN5boost13match_resultsIPKwSaINS_9sub_matchIS2_EEEED2Ev.exit7

_ZN5boost13match_resultsIPKwSaINS_9sub_matchIS2_EEEED2Ev.exit7: ; preds = %_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i5, %bb.o
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost3log11v2_mt_posix15type_dispatcher13callback_base10trampolineINS1_19save_result_wrapperIRKNS1_3aux9anonymous17matches_predicateEbEENS1_20basic_string_literalIwSt11char_traitsIwEEEEEvPvRKT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !515, !nonnull !107, !align !108
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %1, align 8, !tbaa !1827   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1828
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e
  %i.g = tail call noundef zeroext i1 @_ZN5boost11regex_matchIPKwwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEEEbT_S7_RKNS_11basic_regexIT0_T1_EENS_15regex_constants12_match_flagsE(ptr noundef %i.c, ptr noundef %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i32 noundef 0)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !516, !nonnull !107
  %i.j = zext i1 %i.g to i8
  store i8 %i.j, ptr %i.i, align 1, !tbaa !372
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPSt4pairIN5boost9typeindex14stl_type_indexEPvElN9__gnu_cxx5__ops15_Iter_comp_iterINS1_3log11v2_mt_posix3aux21dispatching_map_orderEEEEvT_SF_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph.preheader, label %_ZSt14__partial_sortIPSt4pairIN5boost9typeindex14stl_type_indexEPvEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_3log11v2_mt_posix3aux21dispatching_map_orderEEEEvT_SF_SF_T0_.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph37

.lr.ph:                                           ; preds = %.lr.ph37
  %i.f = icmp eq i64 %i.t, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph37, !llvm.loop !1829

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
end_hunk_1
