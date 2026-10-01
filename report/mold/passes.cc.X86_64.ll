Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/passes.cc.X86_64?download=true
inline.NumInlined: 23987
inline.NumDeleted: 9635
loop-unroll.NumCompletelyUnrolled: 73
loop-unroll.NumRuntimeUnrolled: 105
loop-unroll.NumUnrolled: 179
begin_hunk_0_@_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_:bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1435
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = mul nsw i64 %i.l, 21
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1460
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1436
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 24
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1437
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !1460
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 24
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 768614336404564650
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.408) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !1432
  %i.ag = load ptr, ptr %0, align 8, !tbaa !1433
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #36
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !1461
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !1434
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !1438
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !1479
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !1461
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !1435
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1434 ; 3 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !1436
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 504
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !1437
  store ptr %i.as, ptr %i.a, align 8, !tbaa !1438
  ret void
}

; Function Attrs: mustprogress noinline nounwind
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !170
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #16, !inline_history !3931
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !177
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !895  ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !895
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !170
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #16, !inline_history !3931
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail17__regex_algo_implIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEEcNS5_12regex_traitsIcEEEEbT_SH_RNS5_13match_resultsISH_T0_EERKNS5_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeENS_20_RegexExecutorPolicyEb(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #2 comdat {
bb.a:
  %7 = alloca %"class.std::__cxx11::sub_match.1732", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::sub_match.1732", align 8 ; 4 uses
  %9 = alloca %"class.std::__detail::_Executor", align 8 ; 24 uses
  %10 = alloca %"class.std::__detail::_Executor.1729", align 8 ; 22 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1608 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %0, ptr %i.c, align 8, !tbaa !614
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1470
  %i.f = add i64 %i.e, 3
  %i.g = and i64 %i.f, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %8, i8 0, i64 17, i1 false)
  call void @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE14_M_fill_assignEmRKSC_(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(17) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.h = load i32, ptr %3, align 8, !tbaa !1412
  %i.i = and i32 %i.h, 1024
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %._crit_edge88

._crit_edge88:                                    ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !1608
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %5, 1
  %.pre89 = load ptr, ptr %i.a, align 8, !tbaa !1608 ; 6 uses
  br i1 %i.j, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pre89, i64 48
  %i.l = load i8, ptr %i.k, align 8, !tbaa !1514, !range !613, !noundef !599
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.s, label %bb.e

bb.e:                                             ; preds = %._crit_edge88, %bb.d
  %i.n = phi ptr [ %.pre, %._crit_edge88 ], [ %.pre89, %bb.d ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(141) %9, i8 0, i64 32, i1 false)
  store ptr %0, ptr %i.o, align 8, !tbaa !614
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  store ptr %1, ptr %i.p, align 8, !tbaa !614
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %3, ptr %i.q, align 8, !tbaa !1610
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  store ptr %i.n, ptr %i.r, align 8, !tbaa !1474
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr %2, ptr %i.s, align 8, !tbaa !1612
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1463 ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !1452 ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 48                ; 7 uses
  %i.ac = icmp ugt i64 %i.ab, 576460752303423487
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.142) #37
  unreachable

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i: ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i, label %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i

_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %i.ad = shl nuw nsw i64 %i.ab, 4
  %i.ae = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #36 ; 4 uses
  store ptr %i.ae, ptr %i.t, align 8, !tbaa !1615
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 88
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !1616
  %xtraiter = and i64 %i.ab, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.prol = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ae, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ] ; 3 uses
  %.057.i.i.i.i.i.i.prol = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ab, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ]
  store ptr null, ptr %.08.i.i.i.i.i.i.prol, align 8, !tbaa !1618
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.ah, align 8, !tbaa !1620
  %i.ai = add nsw i64 %.057.i.i.i.i.i.i.prol, -1  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !3932

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i
  %.lcssa111.unr = phi ptr [ poison, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.i.unr = phi ptr [ %i.ae, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.i.unr = phi i64 [ %i.ab, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ak = icmp ult i64 %i.ab, 8
  br i1 %i.ak, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i.i.i.i = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.i.i ], [ %.057.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !1618
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.al, align 8, !tbaa !1620
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.am, align 8, !tbaa !1618
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 24
  store i32 0, ptr %i.an, align 8, !tbaa !1620
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.ao, align 8, !tbaa !1618
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 40
  store i32 0, ptr %i.ap, align 8, !tbaa !1620
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.aq, align 8, !tbaa !1618
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 56
  store i32 0, ptr %i.ar, align 8, !tbaa !1620
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 64
  store ptr null, ptr %i.as, align 8, !tbaa !1618
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 72
  store i32 0, ptr %i.at, align 8, !tbaa !1620
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 80
  store ptr null, ptr %i.au, align 8, !tbaa !1618
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 88
  store i32 0, ptr %i.av, align 8, !tbaa !1620
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 96
  store ptr null, ptr %i.aw, align 8, !tbaa !1618
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 104
  store i32 0, ptr %i.ax, align 8, !tbaa !1620
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 112
  store ptr null, ptr %i.ay, align 8, !tbaa !1618
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 120
  store i32 0, ptr %i.az, align 8, !tbaa !1620
  %i.ba = add nsw i64 %.057.i.i.i.i.i.i, -8       ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i.i.i.i.7, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !96

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %.lcssa111 = phi ptr [ %.lcssa111.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bb, %.lr.ph.i.i.i.i.i.i ]
  %.pre.i = load ptr, ptr %i.r, align 8, !tbaa !1635
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.loopexit.i, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %i.bc = phi ptr [ %.pre.i, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.loopexit.i ], [ %i.n, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %.lcssa111, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.loopexit.i ], [ null, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.bd, align 8, !tbaa !1636
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !1449
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1463
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !1452
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = sdiv exact i64 %i.bn, 48                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.be, i8 0, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 120 ; 2 uses
  %i.bq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bo) #36 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bq, i8 0, i64 %i.bo, i1 false)
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !1637
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 128
  store i64 %i.bg, ptr %i.br, align 8, !tbaa !3938
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 136 ; 3 uses
  %i.bt = and i32 %4, 128
  %.not.i59 = icmp eq i32 %i.bt, 0
  %i.bu = and i32 %4, -6
  %spec.select = select i1 %.not.i59, i32 %4, i32 %i.bu
  store i32 %spec.select, ptr %i.bs, align 8, !tbaa !1638
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.bw = load i64, ptr %i.o, align 8, !tbaa !614
  store i64 %i.bw, ptr %i.bv, align 8, !tbaa !614
  br i1 %6, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i
  %i.bx = call noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %9, i8 noundef zeroext 0), !inline_history !3933
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_searchEv.exit

bb.h:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i
  %i.by = call noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %9, i8 noundef zeroext 1), !inline_history !3934
  br i1 %i.by, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_searchEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bz = load i32, ptr %i.bs, align 8, !tbaa !1639 ; 2 uses
  %i.ca = and i32 %i.bz, 64
  %.not.i60 = icmp eq i32 %i.ca, 0
  br i1 %.not.i60, label %bb.j, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_searchEv.exit

bb.j:                                             ; preds = %bb.i
  %i.cb = or i32 %i.bz, 128
  store i32 %i.cb, ptr %i.bs, align 8, !tbaa !1638
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.cc = load ptr, ptr %i.o, align 8, !tbaa !614 ; 2 uses
  %i.cd = load ptr, ptr %i.p, align 8, !tbaa !614
  %.not3.i.not.not = icmp ne ptr %i.cc, %i.cd     ; 3 uses
  br i1 %.not3.i.not.not, label %bb.l, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_searchEv.exit

bb.l:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 1 ; 2 uses
  store ptr %i.ce, ptr %i.o, align 8, !tbaa !1618
  %.cast.i = ptrtoint ptr %i.ce to i64
  store i64 %.cast.i, ptr %i.bv, align 8, !tbaa !614
  %i.cf = call noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %9, i8 noundef zeroext 1), !inline_history !3934
  br i1 %i.cf, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_searchEv.exit, label %bb.k, !llvm.loop !3935

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_searchEv.exit: ; preds = %bb.l, %bb.k, %bb.i, %bb.h, %bb.g
  %.058.in = phi i1 [ %i.bx, %bb.g ], [ false, %bb.i ], [ true, %bb.h ], [ %.not3.i.not.not, %bb.k ], [ %.not3.i.not.not, %bb.l ]
  %i.cg = load ptr, ptr %i.bp, align 8, !tbaa !1637 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_searchEv.exit
  call void @_ZdaPv(ptr noundef nonnull %i.cg) #34
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_searchEv.exit
  %i.ci = load ptr, ptr %i.be, align 8, !tbaa !1640 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !1641 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.ci, %i.ck
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.cs, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i ], [ %i.ci, %bb.n ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !963 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !964
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = sub i64 %i.cp, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cr) #34
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.o, %.lr.ph.i.i.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i61 = icmp eq ptr %i.cs, %i.ck
  br i1 %.not.i.i.i.i.i61, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !97

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.be, align 8, !tbaa !1640
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exitthread-pre-split.i.i.i, %bb.n
  %i.ct = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exitthread-pre-split.i.i.i ], [ %i.ci, %bb.n ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exit.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !1642
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cy) #34
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i: ; preds = %bb.p, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exit.i.i.i
  %i.cz = load ptr, ptr %i.t, align 8, !tbaa !1615 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1616
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.cz to i64
  %i.de = sub i64 %i.dc, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.de) #34
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i: ; preds = %bb.q, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.df = load ptr, ptr %9, align 8, !tbaa !963   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !964
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.df to i64
  %i.dk = sub i64 %i.di, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.dk) #34
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br i1 %.058.in, label %bb.aa, label %bb.ag

bb.s:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.dl = getelementptr inbounds nuw i8, ptr %10, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(117) %10, i8 0, i64 32, i1 false)
  store ptr %0, ptr %i.dl, align 8, !tbaa !614
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %1, ptr %i.dm, align 8, !tbaa !614
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %3, ptr %i.dn, align 8, !tbaa !1610
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr %.pre89, ptr %i.do, align 8, !tbaa !1474
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 64
  store ptr %2, ptr %i.dp, align 8, !tbaa !1612
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.pre89, i64 56
  %i.ds = getelementptr inbounds nuw i8, ptr %.pre89, i64 64
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1463 ; 2 uses
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !1452 ; 2 uses
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = sdiv exact i64 %i.dx, 48                ; 7 uses
  %i.dz = icmp ugt i64 %i.dy, 576460752303423487
  %i.ea = ptrtoint ptr %0 to i64
  br i1 %i.dz, label %bb.t, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i62

bb.t:                                             ; preds = %bb.s
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.142) #37
  unreachable

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i62: ; preds = %bb.s
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i63 = icmp eq ptr %i.dt, %i.du
  br i1 %.not.i.i.i.i.i63, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i71, label %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i64

_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i64: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i62
  %i.eb = shl nuw nsw i64 %i.dy, 4
  %i.ec = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #36 ; 4 uses
  store ptr %i.ec, ptr %i.dq, align 8, !tbaa !1615
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %i.dy
  %i.ee = getelementptr inbounds nuw i8, ptr %10, i64 88
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !1616
  %xtraiter112 = and i64 %i.dy, 7                 ; 2 uses
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %.lr.ph.i.i.i.i.i.i65.prol.loopexit, label %.lr.ph.i.i.i.i.i.i65.prol

.lr.ph.i.i.i.i.i.i65.prol:                        ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i64, %.lr.ph.i.i.i.i.i.i65.prol
  %.08.i.i.i.i.i.i66.prol = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i.i65.prol ], [ %i.ec, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i64 ] ; 3 uses
  %.057.i.i.i.i.i.i67.prol = phi i64 [ %i.eg, %.lr.ph.i.i.i.i.i.i65.prol ], [ %i.dy, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i64 ]
  %prol.iter114 = phi i64 [ %prol.iter114.next, %.lr.ph.i.i.i.i.i.i65.prol ], [ 0, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i64 ]
  store ptr null, ptr %.08.i.i.i.i.i.i66.prol, align 8, !tbaa !1618
  %i.ef = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66.prol, i64 8
  store i32 0, ptr %i.ef, align 8, !tbaa !1620
  %i.eg = add nsw i64 %.057.i.i.i.i.i.i67.prol, -1 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66.prol, i64 16 ; 3 uses
  %prol.iter114.next = add i64 %prol.iter114, 1   ; 2 uses
  %prol.iter114.cmp.not = icmp eq i64 %prol.iter114.next, %xtraiter112
  br i1 %prol.iter114.cmp.not, label %.lr.ph.i.i.i.i.i.i65.prol.loopexit, label %.lr.ph.i.i.i.i.i.i65.prol, !llvm.loop !3936

.lr.ph.i.i.i.i.i.i65.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i65.prol, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i64
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i64 ], [ %i.eh, %.lr.ph.i.i.i.i.i.i65.prol ]
  %.08.i.i.i.i.i.i66.unr = phi ptr [ %i.ec, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i64 ], [ %i.eh, %.lr.ph.i.i.i.i.i.i65.prol ]
  %.057.i.i.i.i.i.i67.unr = phi i64 [ %i.dy, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i64 ], [ %i.eg, %.lr.ph.i.i.i.i.i.i65.prol ]
  %i.ei = icmp ult i64 %i.dy, 8
  br i1 %i.ei, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i71, label %.lr.ph.i.i.i.i.i.i65

.lr.ph.i.i.i.i.i.i65:                             ; preds = %.lr.ph.i.i.i.i.i.i65.prol.loopexit, %.lr.ph.i.i.i.i.i.i65
  %.08.i.i.i.i.i.i66 = phi ptr [ %i.ez, %.lr.ph.i.i.i.i.i.i65 ], [ %.08.i.i.i.i.i.i66.unr, %.lr.ph.i.i.i.i.i.i65.prol.loopexit ] ; 17 uses
  %.057.i.i.i.i.i.i67 = phi i64 [ %i.ey, %.lr.ph.i.i.i.i.i.i65 ], [ %.057.i.i.i.i.i.i67.unr, %.lr.ph.i.i.i.i.i.i65.prol.loopexit ]
  store ptr null, ptr %.08.i.i.i.i.i.i66, align 8, !tbaa !1618
  %i.ej = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66, i64 8
  store i32 0, ptr %i.ej, align 8, !tbaa !1620
  %i.ek = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66, i64 16
  store ptr null, ptr %i.ek, align 8, !tbaa !1618
  %i.el = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66, i64 24
  store i32 0, ptr %i.el, align 8, !tbaa !1620
  %i.em = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66, i64 32
  store ptr null, ptr %i.em, align 8, !tbaa !1618
  %i.en = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66, i64 40
  store i32 0, ptr %i.en, align 8, !tbaa !1620
  %i.eo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66, i64 48
  store ptr null, ptr %i.eo, align 8, !tbaa !1618
  %i.ep = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66, i64 56
  store i32 0, ptr %i.ep, align 8, !tbaa !1620
  %i.eq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66, i64 64
  store ptr null, ptr %i.eq, align 8, !tbaa !1618
  %i.er = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66, i64 72
  store i32 0, ptr %i.er, align 8, !tbaa !1620
  %i.es = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66, i64 80
  store ptr null, ptr %i.es, align 8, !tbaa !1618
  %i.et = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66, i64 88
  store i32 0, ptr %i.et, align 8, !tbaa !1620
  %i.eu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66, i64 96
  store ptr null, ptr %i.eu, align 8, !tbaa !1618
  %i.ev = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66, i64 104
  store i32 0, ptr %i.ev, align 8, !tbaa !1620
  %i.ew = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66, i64 112
  store ptr null, ptr %i.ew, align 8, !tbaa !1618
  %i.ex = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66, i64 120
  store i32 0, ptr %i.ex, align 8, !tbaa !1620
  %i.ey = add nsw i64 %.057.i.i.i.i.i.i67, -8     ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i68.7 = icmp eq i64 %i.ey, 0
  br i1 %.not.i.i.i.i.i.i68.7, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i71, label %.lr.ph.i.i.i.i.i.i65, !llvm.loop !96

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i71: ; preds = %.lr.ph.i.i.i.i.i.i65.prol.loopexit, %.lr.ph.i.i.i.i.i.i65, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i62
  %.0.lcssa.i.i.i.i.i.i72 = phi ptr [ null, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i62 ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i65.prol.loopexit ], [ %i.ez, %.lr.ph.i.i.i.i.i.i65 ]
  %i.fa = getelementptr inbounds nuw i8, ptr %10, i64 80
  store ptr %.0.lcssa.i.i.i.i.i.i72, ptr %i.fa, align 8, !tbaa !1636
  %i.fb = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.pre89, i64 32
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !1449
  store i64 %i.fd, ptr %i.fb, align 8, !tbaa !3939
  %i.fe = getelementptr inbounds nuw i8, ptr %10, i64 104 ; 2 uses
  store ptr null, ptr %i.fe, align 8, !tbaa !1618
  %i.ff = getelementptr inbounds nuw i8, ptr %10, i64 112
  %i.fg = and i32 %4, 128
  %.not.i73 = icmp eq i32 %i.fg, 0
  %i.fh = and i32 %4, -6
  %spec.select110 = select i1 %.not.i73, i32 %4, i32 %i.fh
  store i32 %spec.select110, ptr %i.ff, align 8, !tbaa !1638
  br i1 %6, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i71
  %i.fi = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 %i.ea, ptr %i.fi, align 8, !tbaa !614
  %i.fj = getelementptr inbounds nuw i8, ptr %10, i64 116 ; 2 uses
  store i8 0, ptr %i.fj, align 4, !tbaa !1645
  store i64 0, ptr %i.fe, align 8, !tbaa !614
  %i.fk = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(117) %10, ptr noundef nonnull align 8 dereferenceable(24) %2), !inline_history !3937 ; 0 uses
  %i.fl = load i64, ptr %i.fb, align 8, !tbaa !1646
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %10, i8 noundef zeroext 0, i64 noundef %i.fl), !inline_history !3937
  %i.fm = load i8, ptr %i.fj, align 4, !tbaa !1645, !range !613, !noundef !599
  %i.fn = trunc nuw i8 %i.fm to i1
  br label %bb.w

bb.v:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i71
  %i.fo = call noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE9_M_searchEv(ptr noundef nonnull align 8 dereferenceable(117) %10)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1.in = phi i1 [ %i.fn, %bb.u ], [ %i.fo, %bb.v ]
  %i.fp = load ptr, ptr %i.dq, align 8, !tbaa !1615 ; 3 uses
  %.not.i.i.i.i74 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i.i74, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i75, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fq = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !1616
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fp to i64
  %i.fu = sub i64 %i.fs, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.fu) #34
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i75

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i75: ; preds = %bb.x, %bb.w
  %i.fv = load ptr, ptr %10, align 8, !tbaa !963  ; 3 uses
  %.not.i.i.i1.i76 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i1.i76, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i75
  %i.fw = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !964
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = ptrtoint ptr %i.fv to i64
  %i.ga = sub i64 %i.fy, %i.fz
  call void @_ZdlPvm(ptr noundef nonnull %i.fv, i64 noundef %i.ga) #34
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br i1 %.1.in, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, %bb.z
  %i.gb = load ptr, ptr %2, align 8, !tbaa !1647  ; 6 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !1647 ; 3 uses
  %i.ge = icmp eq ptr %i.gb, %i.gd
  br i1 %i.ge, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa
  %.cast = ptrtoint ptr %1 to i64
  br label %bb.ab

._crit_edge:                                      ; preds = %bb.ad, %bb.aa
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = ptrtoint ptr %i.gb to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = getelementptr i8, ptr %i.gb, i64 %i.gh  ; 10 uses
  %i.gj = getelementptr i8, ptr %i.gi, i64 -48    ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gi, i64 -24    ; 2 uses
  br i1 %6, label %bb.ae, label %bb.af

bb.ab:                                            ; preds = %.lr.ph, %bb.ad
  %.sroa.078.086 = phi ptr [ %i.gb, %.lr.ph ], [ %i.gp, %bb.ad ] ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.078.086, i64 16
  %i.gm = load i8, ptr %i.gl, align 8, !tbaa !1650, !range !613, !noundef !599
  %i.gn = trunc nuw i8 %i.gm to i1
  br i1 %i.gn, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.078.086, i64 8
  store ptr %1, ptr %i.go, align 8, !tbaa !614
  store i64 %.cast, ptr %.sroa.078.086, align 8, !tbaa !614
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.078.086, i64 24 ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.gd
  br i1 %i.gq, label %._crit_edge, label %bb.ab

bb.ae:                                            ; preds = %._crit_edge
  %i.gr = getelementptr i8, ptr %i.gi, i64 -32
  store i8 0, ptr %i.gr, align 8, !tbaa !1650
  store ptr %0, ptr %i.gj, align 8, !tbaa !614
  %i.gs = getelementptr i8, ptr %i.gi, i64 -40
  store ptr %0, ptr %i.gs, align 8, !tbaa !614
  %i.gt = getelementptr i8, ptr %i.gi, i64 -8
  store i8 0, ptr %i.gt, align 8, !tbaa !1650
  store ptr %1, ptr %i.gk, align 8, !tbaa !614
  %i.gu = getelementptr i8, ptr %i.gi, i64 -16
  store ptr %1, ptr %i.gu, align 8, !tbaa !614
  br label %bb.ah

bb.af:                                            ; preds = %._crit_edge
  store ptr %0, ptr %i.gj, align 8, !tbaa !614
  %i.gv = getelementptr i8, ptr %i.gi, i64 -40
  %i.gw = load i64, ptr %i.gb, align 8, !tbaa !614 ; 2 uses
  store i64 %i.gw, ptr %i.gv, align 8, !tbaa !614
  %.cast83 = inttoptr i64 %i.gw to ptr
  %i.gx = icmp ne ptr %0, %.cast83
  %i.gy = getelementptr i8, ptr %i.gi, i64 -32
  %i.gz = zext i1 %i.gx to i8
  store i8 %i.gz, ptr %i.gy, align 8, !tbaa !1650
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !614 ; 2 uses
  store i64 %i.hb, ptr %i.gk, align 8, !tbaa !614
  %i.hc = getelementptr i8, ptr %i.gi, i64 -16
  store ptr %1, ptr %i.hc, align 8, !tbaa !614
  %.cast84 = inttoptr i64 %i.hb to ptr
  %i.hd = icmp ne ptr %1, %.cast84
  %i.he = getelementptr i8, ptr %i.gi, i64 -8
  %i.hf = zext i1 %i.hd to i8
  store i8 %i.hf, ptr %i.he, align 8, !tbaa !1650
  br label %bb.ah

bb.ag:                                            ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.hg = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 0, ptr %i.hg, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.hh, align 8, !tbaa !614
  %.cast.i77 = ptrtoint ptr %1 to i64
  store i64 %.cast.i77, ptr %7, align 8, !tbaa !614
  call void @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE14_M_fill_assignEmRKSC_(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(17) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.ae ], [ true, %bb.af ], [ false, %bb.ag ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE9_M_searchEv(ptr noundef nonnull align 8 dereferenceable(117) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !614
  store i64 %i.c, ptr %i.b, align 8, !tbaa !614
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 4 uses
  store i8 0, ptr %i.d, align 4, !tbaa !1645
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !614
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1651, !nonnull !599, !align !600
  %i.i = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(117) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h), !inline_history !3940 ; 0 uses
  %i.j = load i64, ptr %i.e, align 8, !tbaa !1646
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext 1, i64 noundef %i.j), !inline_history !3940
  %i.k = load i8, ptr %i.d, align 4, !tbaa !1645, !range !613, !noundef !599
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !1652 ; 2 uses
  %i.o = and i32 %i.n, 64
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.p = or i32 %i.n, 128
  store i32 %i.p, ptr %i.m, align 8, !tbaa !1638
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !614  ; 2 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !614
  %.not3.not = icmp ne ptr %i.r, %i.s             ; 3 uses
  br i1 %.not3.not, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !1618
  %.cast = ptrtoint ptr %i.t to i64
  store i64 %.cast, ptr %i.b, align 8, !tbaa !614
  store i8 0, ptr %i.d, align 4, !tbaa !1645
  store i64 0, ptr %i.f, align 8, !tbaa !614
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !1651, !nonnull !599, !align !600
  %i.v = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(117) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.u), !inline_history !3940 ; 0 uses
  %i.w = load i64, ptr %i.e, align 8, !tbaa !1646
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext 1, i64 noundef %i.w), !inline_history !3940
  %i.x = load i8, ptr %i.d, align 4, !tbaa !1645, !range !613, !noundef !599
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.loopexit, label %bb.d, !llvm.loop !3941

.loopexit:                                        ; preds = %bb.d, %bb.e, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ %.not3.not, %bb.e ], [ %.not3.not, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE14_M_fill_assignEmRKSC_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(17) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !964
  %i.c = load ptr, ptr %0, align 8, !tbaa !963    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %1, 384307168202282325
  br i1 %i.i, label %bb.c, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.142) #37
  unreachable

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i: ; preds = %bb.b
  %i.j = mul nuw nsw i64 %1, 24
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #36 ; 4 uses
  %xtraiter30 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod31.not = icmp eq i64 %xtraiter30, 0
  br i1 %lcmp.mod31.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i, %.lr.ph.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.prol = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i ] ; 2 uses
  %.068.i.i.i.i.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ], [ %1, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i ]
  %prol.iter32 = phi i64 [ %prol.iter32.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.l = add nsw i64 %.068.i.i.i.i.i.i.prol, -1   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter32.next = add i64 %prol.iter32, 1     ; 2 uses
  %prol.iter32.cmp.not = icmp eq i64 %prol.iter32.next, %xtraiter30
  br i1 %prol.iter32.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !3942

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i ], [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ]
  %.09.i.i.i.i.i.i.unr = phi ptr [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i ], [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.unr = phi i64 [ %1, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i ], [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.n = icmp ult i64 %1, 4
  br i1 %i.n, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSC_RKSD_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.068.i.i.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.r = add nsw i64 %.068.i.i.i.i.i.i, -4        ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.3, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSC_RKSD_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3943

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSC_RKSD_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.s, %.lr.ph.i.i.i.i.i.i ]
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %1
  %i.u = load ptr, ptr %0, align 8, !tbaa !963    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !964
  store ptr %i.k, ptr %0, align 8, !tbaa !963
  store ptr %.lcssa, ptr %i.v, align 8, !tbaa !1653
  store ptr %i.t, ptr %i.a, align 8, !tbaa !964
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSC_RKSD_.exit
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #34
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1653 ; 6 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.e
  %i.ae = sdiv exact i64 %i.ad, 24                ; 3 uses
  %i.af = icmp ugt i64 %1, %i.ae
  br i1 %i.af, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not5.i.i.i.i = icmp eq ptr %i.c, %i.ab
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i.i.i.i = load i8, ptr %i.ah, align 8, !tbaa !1650, !range !613
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %i.am, %bb.g ] ; 4 uses
  %i.ai = load i64, ptr %2, align 8, !tbaa !614
  store i64 %i.ai, ptr %.06.i.i.i.i, align 8, !tbaa !614
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.ak = load i64, ptr %i.ag, align 8, !tbaa !614
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !614
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16
  store i8 %.pre.i.i.i.i, ptr %i.al, align 8, !tbaa !1650
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.am, %i.ab
  br i1 %.not.i.i.i.i11, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit, label %bb.g, !llvm.loop !3944

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit: ; preds = %bb.g, %bb.f
  %i.an = sub i64 %1, %i.ae                       ; 3 uses
  %xtraiter = and i64 %i.an, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i12.prol.loopexit, label %.lr.ph.i.i.i.i12.prol

.lr.ph.i.i.i.i12.prol:                            ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit, %.lr.ph.i.i.i.i12.prol
  %.09.i.i.i.i.prol = phi ptr [ %i.ap, %.lr.ph.i.i.i.i12.prol ], [ %i.ab, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit ] ; 2 uses
  %.068.i.i.i.i.prol = phi i64 [ %i.ao, %.lr.ph.i.i.i.i12.prol ], [ %i.an, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i12.prol ], [ 0, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ao = add i64 %.068.i.i.i.i.prol, -1          ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i12.prol.loopexit, label %.lr.ph.i.i.i.i12.prol, !llvm.loop !3945

.lr.ph.i.i.i.i12.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i12.prol, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit
  %.lcssa29.unr = phi ptr [ poison, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit ], [ %i.ap, %.lr.ph.i.i.i.i12.prol ]
  %.09.i.i.i.i.unr = phi ptr [ %i.ab, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit ], [ %i.ap, %.lr.ph.i.i.i.i12.prol ]
  %.068.i.i.i.i.unr = phi i64 [ %i.an, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit ], [ %i.ao, %.lr.ph.i.i.i.i12.prol ]
  %i.aq = sub i64 %i.ae, %1
  %i.ar = icmp ugt i64 %i.aq, -4
  br i1 %i.ar, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_SC_ET_SE_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %.lr.ph.i.i.i.i12.prol.loopexit, %.lr.ph.i.i.i.i12
  %.09.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i12 ], [ %.09.i.i.i.i.unr, %.lr.ph.i.i.i.i12.prol.loopexit ] ; 5 uses
  %.068.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i.i.i12 ], [ %.068.i.i.i.i.unr, %.lr.ph.i.i.i.i12.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.av = add i64 %.068.i.i.i.i, -4               ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i13.3 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i.i13.3, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_SC_ET_SE_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12, !llvm.loop !3943

_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_SC_ET_SE_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i12, %.lr.ph.i.i.i.i12.prol.loopexit
  %.lcssa29 = phi ptr [ %.lcssa29.unr, %.lr.ph.i.i.i.i12.prol.loopexit ], [ %i.aw, %.lr.ph.i.i.i.i12 ]
  store ptr %.lcssa29, ptr %i.aa, align 8, !tbaa !1653
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.ax = icmp eq i64 %1, 0
  br i1 %i.ax, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit, label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %bb.h
  %.idx.i.i = mul nuw nsw i64 %1, 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i.i.i.i15 = load i8, ptr %i.ba, align 8, !tbaa !1650, !range !613
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i14
  %.06.i.i.i.i16 = phi ptr [ %i.c, %.lr.ph.i.i.i.i14 ], [ %i.bf, %bb.i ] ; 4 uses
  %i.bb = load i64, ptr %2, align 8, !tbaa !614
  store i64 %i.bb, ptr %.06.i.i.i.i16, align 8, !tbaa !614
  %i.bc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 8
  %i.bd = load i64, ptr %i.az, align 8, !tbaa !614
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !614
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 16
  store i8 %.pre.i.i.i.i15, ptr %i.be, align 8, !tbaa !1650
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 24 ; 2 uses
  %.not.i.i.i.i17 = icmp eq ptr %i.bf, %i.ay
  br i1 %.not.i.i.i.i17, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit, label %bb.i, !llvm.loop !3944

_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit: ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %i.c, %bb.h ], [ %i.ay, %bb.i ] ; 2 uses
  %.not.i = icmp eq ptr %i.ab, %.0.i.i
  br i1 %.not.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit
  store ptr %.0.i.i, ptr %i.aa, align 8, !tbaa !1653
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %bb.j, %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit, %bb.d, %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSC_RKSD_.exit, %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_SC_ET_SE_T0_RKT1_RSaIT2_E.exit
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1654 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1655, !nonnull !599, !align !600 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.d, ptr %i.a, align 8, !tbaa !594
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1641 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1642
  %.not.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.h, align 8, !tbaa !1657
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1653 ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !963  ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = sdiv exact i64 %i.q, 24
  %i.s = icmp ugt i64 %i.r, 384307168202282325
  br i1 %i.s, label %bb.d, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !610

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #36
  br label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.i.i.i.i

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.i.i.i.i: ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %bb.b
  %i.u = phi ptr [ %i.t, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ], [ null, %bb.b ] ; 5 uses
  store ptr %i.u, ptr %i.k, align 8, !tbaa !963
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !1653
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.w, ptr %i.x, align 8, !tbaa !964
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !1647 ; 2 uses
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !1647 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZSt12construct_atISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEJRlRKSG_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSM_DpOSN_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.u, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.y, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.07.i.i.i.i.i.i.i.i.i, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_word_boundaryEv:bb.a

_ZNKSt5ctypeIcE5widenEc.exit.i.i:                 ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i8 [ %i.ap, %bb.k ], [ %i.at, %bb.l ]
  %i.au = icmp eq i8 %i.s, %.0.i.i.i
  %i.av = zext i1 %i.au to i32
  br label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i, %bb.i, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i, %bb.f
  %.1 = phi i32 [ 0, %bb.f ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i ], [ 0, %bb.i ], [ %i.av, %_ZNKSt5ctypeIcE5widenEc.exit.i.i ]
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !614 ; 2 uses
  %i.ax = load ptr, ptr %i.i, align 8, !tbaa !614
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  %i.az = load i8, ptr %i.aw, align 1, !tbaa !177 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1659, !nonnull !599, !align !600
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1608
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 80 ; 2 uses
  %i.bf = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.bg = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #16
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !1440
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1444
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bg
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1446 ; 7 uses
  %.not.not.i.i.i7 = icmp eq ptr %i.bl, null
  br i1 %.not.not.i.i.i7, label %bb.n, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt16__throw_bad_castv() #37
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8: ; preds = %bb.m
  %.sroa.0.0.extract.trunc.i.i9 = trunc i32 %i.bf to i16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1495
  %i.bo = zext i8 %i.az to i64
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !783
  %i.br = and i16 %i.bq, %.sroa.0.0.extract.trunc.i.i9
  %.not4.i.i10 = icmp eq i16 %i.br, 0
  br i1 %.not4.i.i10, label %bb.o, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15

bb.o:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8
  %i.bs = and i32 %i.bf, 65536
  %.not.i.i11 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i11, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !1582
  %.not.i.i.i12 = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i12, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 152
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !177
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i13

bb.r:                                             ; preds = %bb.p
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bl) #16
  %i.bx = load ptr, ptr %i.bl, align 8, !tbaa !170
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = tail call noundef signext i8 %i.bz(ptr noundef nonnull align 8 dereferenceable(570) %i.bl, i8 noundef signext 95) #16, !inline_history !3967
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i13

_ZNKSt5ctypeIcE5widenEc.exit.i.i13:               ; preds = %bb.r, %bb.q
  %.0.i.i.i14 = phi i8 [ %i.bw, %bb.q ], [ %i.ca, %bb.r ]
  %i.cb = icmp eq i8 %i.az, %.0.i.i.i14
  %i.cc = zext i1 %i.cb to i32
  br label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i13, %bb.o, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  %i.cd = phi i32 [ 0, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8 ], [ 0, %bb.o ], [ %i.cc, %_ZNKSt5ctypeIcE5widenEc.exit.i.i13 ]
  %i.ce = icmp ne i32 %.1, %i.cd
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.b, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15
  %.0 = phi i1 [ %i.ce, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15 ], [ false, %bb.b ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::vector.1714", align 8  ; 8 uses
  %3 = alloca %"class.std::__detail::_Executor", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1653 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !963    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.h, label %bb.c, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !610

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36
  %.pre = load ptr, ptr %0, align 8, !tbaa !1647
  %.pre15 = load ptr, ptr %i.a, align 8, !tbaa !1647
  br label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i: ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %.pre15, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %i.i, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 4 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !963
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !964
  %i.p = icmp eq ptr %i.k, %i.j
  br i1 %i.p, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.07.i.i.i.i.i, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.j
  br i1 %i.s, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !98

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.m, align 8, !tbaa !1653
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.05.0.copyload = load ptr, ptr %i.t, align 8, !tbaa !614 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1639 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(141) %3, i8 0, i64 32, i1 false)
  store ptr %.sroa.05.0.copyload, ptr %i.y, align 8, !tbaa !614
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !1659, !nonnull !599, !align !600
  %i.ab = load <2 x ptr>, ptr %i.u, align 8, !tbaa !672
  store <2 x ptr> %i.ab, ptr %i.z, align 8, !tbaa !672
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1608 ; 3 uses
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !1474
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %2, ptr %i.af, align 8, !tbaa !1612
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 56 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1463 ; 2 uses
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !1452 ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64               ; 3 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = sdiv exact i64 %i.an, 48                ; 7 uses
  %i.ap = icmp ugt i64 %i.ao, 576460752303423487
  %i.aq = ptrtoint ptr %.sroa.05.0.copyload to i64
  br i1 %i.ap, label %bb.d, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.142) #37
  unreachable

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i, label %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i

_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %i.ar = shl nuw nsw i64 %i.ao, 4
  %i.as = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #36 ; 4 uses
  store ptr %i.as, ptr %i.ag, align 8, !tbaa !1615
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.ao
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr %i.at, ptr %i.au, align 8, !tbaa !1616
  %xtraiter = and i64 %i.ao, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.as, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ] ; 3 uses
  %.057.i.i.i.i.i.i.prol = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ao, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ]
  store ptr null, ptr %.08.i.i.i.i.i.i.prol, align 8, !tbaa !1618
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.av, align 8, !tbaa !1620
  %i.aw = add nsw i64 %.057.i.i.i.i.i.i.prol, -1  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !3968

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.i.unr = phi ptr [ %i.as, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.i.unr = phi i64 [ %i.ao, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ay = icmp ult i64 %i.ao, 8
  br i1 %i.ay, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i.i ], [ %.057.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !1618
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.az, align 8, !tbaa !1620
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.ba, align 8, !tbaa !1618
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 24
  store i32 0, ptr %i.bb, align 8, !tbaa !1620
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.bc, align 8, !tbaa !1618
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 40
  store i32 0, ptr %i.bd, align 8, !tbaa !1620
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.be, align 8, !tbaa !1618
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 56
  store i32 0, ptr %i.bf, align 8, !tbaa !1620
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 64
  store ptr null, ptr %i.bg, align 8, !tbaa !1618
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 72
  store i32 0, ptr %i.bh, align 8, !tbaa !1620
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 80
  store ptr null, ptr %i.bi, align 8, !tbaa !1618
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 88
  store i32 0, ptr %i.bj, align 8, !tbaa !1620
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 96
  store ptr null, ptr %i.bk, align 8, !tbaa !1618
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 104
  store i32 0, ptr %i.bl, align 8, !tbaa !1620
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 112
  store ptr null, ptr %i.bm, align 8, !tbaa !1618
  %i.bn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 120
  store i32 0, ptr %i.bn, align 8, !tbaa !1620
  %i.bo = add nsw i64 %.057.i.i.i.i.i.i, -8       ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i.i.i.i.7, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !96

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bp, %.lr.ph.i.i.i.i.i.i ]
  %.pre16 = load ptr, ptr %i.ai, align 8, !tbaa !1463
  %.pre17 = load ptr, ptr %i.ah, align 8, !tbaa !1452
  %.pre18 = ptrtoint ptr %.pre16 to i64
  %.pre19 = ptrtoint ptr %.pre17 to i64
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.loopexit.i, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %.pre-phi20 = phi i64 [ %.pre19, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.loopexit.i ], [ %i.al, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i ]
  %.pre-phi = phi i64 [ %.pre18, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.loopexit.i ], [ %i.al, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %.lcssa, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.loopexit.i ], [ null, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.bq, align 8, !tbaa !1636
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.bs = sub i64 %.pre-phi, %.pre-phi20
  %i.bt = sdiv exact i64 %i.bs, 48                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.br, i8 0, i64 24, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 2 uses
  %i.bv = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bt) #36 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bv, i8 0, i64 %i.bt, i1 false)
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !1637
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.by = and i32 %i.x, 128
  %.not.i = icmp eq i32 %i.by, 0
  %i.bz = and i32 %i.x, -6
  %spec.select = select i1 %.not.i, i32 %i.x, i32 %i.bz
  store i32 %spec.select, ptr %i.bx, align 8, !tbaa !1638
  store i64 %1, ptr %i.bw, align 8, !tbaa !1654
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.aq, ptr %i.ca, align 8, !tbaa !614
  %i.cb = call noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %3, i8 noundef zeroext 1), !inline_history !3969 ; 2 uses
  br i1 %i.cb, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i
  %i.cc = load ptr, ptr %i.m, align 8, !tbaa !1653 ; 2 uses
  %i.cd = load ptr, ptr %2, align 8, !tbaa !963   ; 5 uses
  %.not = icmp eq ptr %i.cc, %i.cd
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 2 uses
  %i.ch = sdiv exact i64 %i.cg, 24                ; 3 uses
  %xtraiter40 = and i64 %i.ch, 1
  %i.ci = icmp eq i64 %i.cg, 24
  br i1 %i.ci, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ch, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.lr.ph.preheader.new
  %.013 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.dg, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.g ]
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %.013 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !1650, !range !613, !noundef !599
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.e, label %.lr.ph.1

bb.e:                                             ; preds = %.lr.ph
  %i.cn = load ptr, ptr %0, align 8, !tbaa !963
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %.013 ; 3 uses
  %i.cp = load i64, ptr %i.cj, align 8, !tbaa !614
  store i64 %i.cp, ptr %i.co, align 8, !tbaa !614
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !614
  store i64 %i.cs, ptr %i.cr, align 8, !tbaa !614
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i8 1, ptr %i.ct, align 8, !tbaa !1650
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.e
  %i.cu = or disjoint i64 %.013, 1                ; 2 uses
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %i.cu ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !1650, !range !613, !noundef !599
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.1
  %i.cz = load ptr, ptr %0, align 8, !tbaa !963
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.cz, i64 %i.cu ; 3 uses
  %i.db = load i64, ptr %i.cv, align 8, !tbaa !614
  store i64 %i.db, ptr %i.da, align 8, !tbaa !614
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !614
  store i64 %i.de, ptr %i.dd, align 8, !tbaa !614
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store i8 1, ptr %i.df, align 8, !tbaa !1650
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.1
  %i.dg = add nuw i64 %.013, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3970

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.g
  %lcmp.mod41.not = icmp eq i64 %xtraiter40, 0
  br i1 %lcmp.mod41.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.013.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.dg, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod42 = trunc i64 %i.ch to i1
  call void @llvm.assume(i1 %lcmp.mod42)
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %.013.epil.init ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !1650, !range !613, !noundef !599
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.lr.ph.epil.preheader
  %i.dl = load ptr, ptr %0, align 8, !tbaa !963
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.dl, i64 %.013.epil.init ; 3 uses
  %i.dn = load i64, ptr %i.dh, align 8, !tbaa !614
  store i64 %i.dn, ptr %i.dm, align 8, !tbaa !614
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !614
  store i64 %i.dq, ptr %i.dp, align 8, !tbaa !614
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i8 1, ptr %i.dr, align 8, !tbaa !1650
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.h, %.lr.ph.epil.preheader, %.preheader, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i
  %i.ds = load ptr, ptr %i.bu, align 8, !tbaa !1637 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %i.ds) #34
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit
  %i.du = load ptr, ptr %i.br, align 8, !tbaa !1640 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1641 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.du, %i.dw
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exit.i.i.i, label %.lr.ph.i.i.i.i.i9

.lr.ph.i.i.i.i.i9:                                ; preds = %bb.j, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ee, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i ], [ %i.du, %bb.j ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !963 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i9
  %i.dz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !964
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ed) #34
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.k, %.lr.ph.i.i.i.i.i9
  %i.ee = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i10 = icmp eq ptr %i.ee, %i.dw
  br i1 %.not.i.i.i.i.i10, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i9, !llvm.loop !97

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.br, align 8, !tbaa !1640
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exitthread-pre-split.i.i.i, %bb.j
  %i.ef = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exitthread-pre-split.i.i.i ], [ %i.du, %bb.j ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exit.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !1642
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.ef to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.ek) #34
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i: ; preds = %bb.l, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exit.i.i.i
  %i.el = load ptr, ptr %i.ag, align 8, !tbaa !1615 ; 3 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i11, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !1616
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %i.el to i64
  %i.eq = sub i64 %i.eo, %i.ep
end_hunk_1
begin_hunk_2_@_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_word_boundaryEv:bb.a

_ZNKSt5ctypeIcE5widenEc.exit.i.i:                 ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i8 [ %i.ap, %bb.k ], [ %i.at, %bb.l ]
  %i.au = icmp eq i8 %i.s, %.0.i.i.i
  %i.av = zext i1 %i.au to i32
  br label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i, %bb.i, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i, %bb.f
  %.1 = phi i32 [ 0, %bb.f ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i ], [ 0, %bb.i ], [ %i.av, %_ZNKSt5ctypeIcE5widenEc.exit.i.i ]
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !614 ; 2 uses
  %i.ax = load ptr, ptr %i.i, align 8, !tbaa !614
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit
  %i.az = load i8, ptr %i.aw, align 1, !tbaa !177 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1663, !nonnull !599, !align !600
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1608
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 80 ; 2 uses
  %i.bf = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.bg = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #16
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !1440
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1444
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bg
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1446 ; 7 uses
  %.not.not.i.i.i7 = icmp eq ptr %i.bl, null
  br i1 %.not.not.i.i.i7, label %bb.n, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt16__throw_bad_castv() #37
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8: ; preds = %bb.m
  %.sroa.0.0.extract.trunc.i.i9 = trunc i32 %i.bf to i16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1495
  %i.bo = zext i8 %i.az to i64
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !783
  %i.br = and i16 %i.bq, %.sroa.0.0.extract.trunc.i.i9
  %.not4.i.i10 = icmp eq i16 %i.br, 0
  br i1 %.not4.i.i10, label %bb.o, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15

bb.o:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8
  %i.bs = and i32 %i.bf, 65536
  %.not.i.i11 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i11, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !1582
  %.not.i.i.i12 = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i12, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 152
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !177
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i13

bb.r:                                             ; preds = %bb.p
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bl) #16
  %i.bx = load ptr, ptr %i.bl, align 8, !tbaa !170
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = tail call noundef signext i8 %i.bz(ptr noundef nonnull align 8 dereferenceable(570) %i.bl, i8 noundef signext 95) #16, !inline_history !3987
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i13

_ZNKSt5ctypeIcE5widenEc.exit.i.i13:               ; preds = %bb.r, %bb.q
  %.0.i.i.i14 = phi i8 [ %i.bw, %bb.q ], [ %i.ca, %bb.r ]
  %i.cb = icmp eq i8 %i.az, %.0.i.i.i14
  %i.cc = zext i1 %i.cb to i32
  br label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i13, %bb.o, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit
  %i.cd = phi i32 [ 0, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8 ], [ 0, %bb.o ], [ %i.cc, %_ZNKSt5ctypeIcE5widenEc.exit.i.i13 ]
  %i.ce = icmp ne i32 %.1, %i.cd
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.b, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15
  %.0 = phi i1 [ %i.ce, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15 ], [ false, %bb.b ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::vector.1714", align 8  ; 9 uses
  %3 = alloca %"class.std::__detail::_Executor.1729", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1653 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !963    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.h, label %bb.c, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !610

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36
  %.pre = load ptr, ptr %0, align 8, !tbaa !1647
  %.pre13 = load ptr, ptr %i.a, align 8, !tbaa !1647
  br label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i: ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %.pre13, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %i.i, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 4 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !963
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !964
  %i.p = icmp eq ptr %i.k, %i.j
  br i1 %i.p, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.07.i.i.i.i.i, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.j
  br i1 %i.s, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !98

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.m, align 8, !tbaa !1653
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.05.0.copyload = load ptr, ptr %i.t, align 8, !tbaa !614 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1652 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 0, i64 24, i1 false)
  store ptr %.sroa.05.0.copyload, ptr %i.y, align 8, !tbaa !614
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !1663, !nonnull !599, !align !600
  %i.ab = load <2 x ptr>, ptr %i.u, align 8, !tbaa !672
  store <2 x ptr> %i.ab, ptr %i.z, align 8, !tbaa !672
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1608 ; 3 uses
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !1474
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %2, ptr %i.af, align 8, !tbaa !1612
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1463 ; 2 uses
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !1452 ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = sdiv exact i64 %i.an, 48                ; 7 uses
  %i.ap = icmp ugt i64 %i.ao, 576460752303423487
  %i.aq = ptrtoint ptr %.sroa.05.0.copyload to i64
  br i1 %i.ap, label %bb.d, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.142) #37
  unreachable

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i, label %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i

_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %i.ar = shl nuw nsw i64 %i.ao, 4
  %i.as = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #36 ; 4 uses
  store ptr %i.as, ptr %i.ag, align 8, !tbaa !1615
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.ao
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr %i.at, ptr %i.au, align 8, !tbaa !1616
  %xtraiter = and i64 %i.ao, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.as, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ] ; 3 uses
  %.057.i.i.i.i.i.i.prol = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ao, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ]
  store ptr null, ptr %.08.i.i.i.i.i.i.prol, align 8, !tbaa !1618
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.av, align 8, !tbaa !1620
  %i.aw = add nsw i64 %.057.i.i.i.i.i.i.prol, -1  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !3988

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.i.unr = phi ptr [ %i.as, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.i.unr = phi i64 [ %i.ao, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ay = icmp ult i64 %i.ao, 8
  br i1 %i.ay, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i.i ], [ %.057.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !1618
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.az, align 8, !tbaa !1620
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.ba, align 8, !tbaa !1618
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 24
  store i32 0, ptr %i.bb, align 8, !tbaa !1620
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.bc, align 8, !tbaa !1618
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 40
  store i32 0, ptr %i.bd, align 8, !tbaa !1620
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.be, align 8, !tbaa !1618
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 56
  store i32 0, ptr %i.bf, align 8, !tbaa !1620
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 64
  store ptr null, ptr %i.bg, align 8, !tbaa !1618
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 72
  store i32 0, ptr %i.bh, align 8, !tbaa !1620
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 80
  store ptr null, ptr %i.bi, align 8, !tbaa !1618
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 88
  store i32 0, ptr %i.bj, align 8, !tbaa !1620
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 96
  store ptr null, ptr %i.bk, align 8, !tbaa !1618
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 104
  store i32 0, ptr %i.bl, align 8, !tbaa !1620
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 112
  store ptr null, ptr %i.bm, align 8, !tbaa !1618
  %i.bn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 120
  store i32 0, ptr %i.bn, align 8, !tbaa !1620
  %i.bo = add nsw i64 %.057.i.i.i.i.i.i, -8       ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i.i.i.i.7, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !96

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bp, %.lr.ph.i.i.i.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.bq, align 8, !tbaa !1636
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bu = and i32 %i.x, 128
  %.not.i = icmp eq i32 %i.bu, 0
  %i.bv = and i32 %i.x, -6
  %spec.select = select i1 %.not.i, i32 %i.x, i32 %i.bv
  store i32 %spec.select, ptr %i.bt, align 8, !tbaa !1638
  store i64 %1, ptr %i.br, align 8, !tbaa !1646
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.aq, ptr %i.bw, align 8, !tbaa !614
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 116 ; 2 uses
  store i8 0, ptr %i.bx, align 4, !tbaa !1645
  store i64 0, ptr %i.bs, align 8, !tbaa !614
  %i.by = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(117) %3, ptr noundef nonnull align 8 dereferenceable(24) %2), !inline_history !3989 ; 0 uses
  %i.bz = load i64, ptr %i.br, align 8, !tbaa !1646
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 noundef zeroext 1, i64 noundef %i.bz), !inline_history !3989
  %i.ca = load i8, ptr %i.bx, align 4, !tbaa !1645, !range !613, !noundef !599
  %i.cb = trunc nuw i8 %i.ca to i1                ; 2 uses
  br i1 %i.cb, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i
  %i.cc = load ptr, ptr %i.m, align 8, !tbaa !1653 ; 2 uses
  %i.cd = load ptr, ptr %2, align 8, !tbaa !963   ; 5 uses
  %.not = icmp eq ptr %i.cc, %i.cd
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 2 uses
  %i.ch = sdiv exact i64 %i.cg, 24                ; 3 uses
  %xtraiter26 = and i64 %i.ch, 1
  %i.ci = icmp eq i64 %i.cg, 24
  br i1 %i.ci, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ch, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.lr.ph.preheader.new
  %.011 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.dg, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.g ]
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %.011 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !1650, !range !613, !noundef !599
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.e, label %.lr.ph.1

bb.e:                                             ; preds = %.lr.ph
  %i.cn = load ptr, ptr %0, align 8, !tbaa !963
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %.011 ; 3 uses
  %i.cp = load i64, ptr %i.cj, align 8, !tbaa !614
  store i64 %i.cp, ptr %i.co, align 8, !tbaa !614
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !614
  store i64 %i.cs, ptr %i.cr, align 8, !tbaa !614
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i8 1, ptr %i.ct, align 8, !tbaa !1650
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.e
  %i.cu = or disjoint i64 %.011, 1                ; 2 uses
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %i.cu ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !1650, !range !613, !noundef !599
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.1
  %i.cz = load ptr, ptr %0, align 8, !tbaa !963
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.cz, i64 %i.cu ; 3 uses
  %i.db = load i64, ptr %i.cv, align 8, !tbaa !614
  store i64 %i.db, ptr %i.da, align 8, !tbaa !614
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !614
  store i64 %i.de, ptr %i.dd, align 8, !tbaa !614
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store i8 1, ptr %i.df, align 8, !tbaa !1650
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.1
  %i.dg = add nuw i64 %.011, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3990

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.g
  %lcmp.mod27.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod27.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.011.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.dg, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i64 %i.ch to i1
  call void @llvm.assume(i1 %lcmp.mod28)
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %.011.epil.init ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !1650, !range !613, !noundef !599
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.lr.ph.epil.preheader
  %i.dl = load ptr, ptr %0, align 8, !tbaa !963
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.dl, i64 %.011.epil.init ; 3 uses
  %i.dn = load i64, ptr %i.dh, align 8, !tbaa !614
  store i64 %i.dn, ptr %i.dm, align 8, !tbaa !614
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !614
  store i64 %i.dq, ptr %i.dp, align 8, !tbaa !614
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i8 1, ptr %i.dr, align 8, !tbaa !1650
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.h, %.lr.ph.epil.preheader, %.preheader, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i
  %i.ds = load ptr, ptr %i.ag, align 8, !tbaa !1615 ; 3 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i9, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !1616
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.ds to i64
  %i.dx = sub i64 %i.dv, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dx) #34
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i: ; preds = %bb.i, %.loopexit
  %i.dy = load ptr, ptr %3, align 8, !tbaa !963   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !964
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ed) #34
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.ee = load ptr, ptr %2, align 8, !tbaa !963   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit
  %i.ef = load ptr, ptr %i.o, align 8, !tbaa !964
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.ee to i64
  %i.ei = sub i64 %i.eg, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ei) #34
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret i1 %i.cb
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail17__regex_algo_implIPKcSaINSt7__cxx119sub_matchIS2_EEEcNS3_12regex_traitsIcEEEEbT_S9_RNS3_13match_resultsIS9_T0_EERKNS3_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeENS_20_RegexExecutorPolicyEb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #2 comdat {
bb.a:
  %7 = alloca %"class.std::__cxx11::sub_match", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::sub_match", align 8 ; 4 uses
  %9 = alloca %"class.std::__detail::_Executor.1745", align 8 ; 24 uses
  %10 = alloca %"class.std::__detail::_Executor.1757", align 8 ; 22 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1608 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %0, ptr %i.c, align 8, !tbaa !3998
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1470
  %i.f = add i64 %i.e, 3
  %i.g = and i64 %i.f, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %8, i8 0, i64 17, i1 false)
  call void @_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE14_M_fill_assignEmRKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(17) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.h = load i32, ptr %3, align 8, !tbaa !1412
  %i.i = and i32 %i.h, 1024
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %._crit_edge86

._crit_edge86:                                    ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !1608
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %5, 1
  %.pre87 = load ptr, ptr %i.a, align 8, !tbaa !1608 ; 6 uses
  br i1 %i.j, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pre87, i64 48
  %i.l = load i8, ptr %i.k, align 8, !tbaa !1514, !range !613, !noundef !599
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.s, label %bb.e

bb.e:                                             ; preds = %._crit_edge86, %bb.d
  %i.n = phi ptr [ %.pre, %._crit_edge86 ], [ %.pre87, %bb.d ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(141) %9, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  store ptr %0, ptr %i.o, align 8, !tbaa !1680
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  store ptr %1, ptr %i.p, align 8, !tbaa !1681
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %3, ptr %i.q, align 8, !tbaa !1610
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  store ptr %i.n, ptr %i.r, align 8, !tbaa !1474
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr %2, ptr %i.s, align 8, !tbaa !1682
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1463 ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !1452 ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 48                ; 7 uses
  %i.ac = icmp ugt i64 %i.ab, 576460752303423487
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.142) #37
  unreachable

_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i, label %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i

_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.ad = shl nuw nsw i64 %i.ab, 4
  %i.ae = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #36 ; 4 uses
  store ptr %i.ae, ptr %i.t, align 8, !tbaa !1683
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 88
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !1684
  %xtraiter = and i64 %i.ab, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.prol = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ae, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i ] ; 3 uses
  %.057.i.i.i.i.i.i.prol = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ab, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i ]
  store ptr null, ptr %.08.i.i.i.i.i.i.prol, align 8, !tbaa !1686
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.ah, align 8, !tbaa !1687
  %i.ai = add nsw i64 %.057.i.i.i.i.i.i.prol, -1  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !3991

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i
  %.lcssa108.unr = phi ptr [ poison, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.i.unr = phi ptr [ %i.ae, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.i.unr = phi i64 [ %i.ab, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ak = icmp ult i64 %i.ab, 8
  br i1 %i.ak, label %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i.i.i.i = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.i.i ], [ %.057.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !1686
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.al, align 8, !tbaa !1687
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.am, align 8, !tbaa !1686
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 24
  store i32 0, ptr %i.an, align 8, !tbaa !1687
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.ao, align 8, !tbaa !1686
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 40
  store i32 0, ptr %i.ap, align 8, !tbaa !1687
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.aq, align 8, !tbaa !1686
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 56
  store i32 0, ptr %i.ar, align 8, !tbaa !1687
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 64
  store ptr null, ptr %i.as, align 8, !tbaa !1686
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 72
  store i32 0, ptr %i.at, align 8, !tbaa !1687
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 80
  store ptr null, ptr %i.au, align 8, !tbaa !1686
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 88
  store i32 0, ptr %i.av, align 8, !tbaa !1687
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 96
  store ptr null, ptr %i.aw, align 8, !tbaa !1686
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 104
  store i32 0, ptr %i.ax, align 8, !tbaa !1687
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 112
  store ptr null, ptr %i.ay, align 8, !tbaa !1686
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 120
  store i32 0, ptr %i.az, align 8, !tbaa !1687
  %i.ba = add nsw i64 %.057.i.i.i.i.i.i, -8       ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i.i.i.i.7, label %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !100

_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %.lcssa108 = phi ptr [ %.lcssa108.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bb, %.lr.ph.i.i.i.i.i.i ]
  %.pre.i = load ptr, ptr %i.r, align 8, !tbaa !1688
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i

_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.loopexit.i, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.bc = phi ptr [ %.pre.i, %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.loopexit.i ], [ %i.n, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %.lcssa108, %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.loopexit.i ], [ null, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.bd, align 8, !tbaa !1689
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !1449
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1463
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !1452
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = sdiv exact i64 %i.bn, 48                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.be, i8 0, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 120 ; 2 uses
  %i.bq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bo) #36 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bq, i8 0, i64 %i.bo, i1 false)
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !1690
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 128
  store i64 %i.bg, ptr %i.br, align 8, !tbaa !3999
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 136 ; 3 uses
  %i.bt = and i32 %4, 128
  %.not.i60 = icmp eq i32 %i.bt, 0
  %i.bu = and i32 %4, -6
  %spec.select = select i1 %.not.i60, i32 %4, i32 %i.bu
  store i32 %spec.select, ptr %i.bs, align 8, !tbaa !1638
  %i.bv = load ptr, ptr %i.o, align 8, !tbaa !1680
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !1691
  br i1 %6, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i
  %i.bx = call noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE16_M_main_dispatchENS9_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %9, i8 noundef zeroext 0), !inline_history !3992
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE9_M_searchEv.exit

bb.h:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i
  %i.by = call noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE16_M_main_dispatchENS9_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %9, i8 noundef zeroext 1), !inline_history !3993
  br i1 %i.by, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE9_M_searchEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bz = load i32, ptr %i.bs, align 8, !tbaa !1692 ; 2 uses
  %i.ca = and i32 %i.bz, 64
  %.not.i61 = icmp eq i32 %i.ca, 0
  br i1 %.not.i61, label %bb.j, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE9_M_searchEv.exit

bb.j:                                             ; preds = %bb.i
  %i.cb = or i32 %i.bz, 128
  store i32 %i.cb, ptr %i.bs, align 8, !tbaa !1638
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.cc = load ptr, ptr %i.o, align 8, !tbaa !1680 ; 2 uses
  %i.cd = load ptr, ptr %i.p, align 8, !tbaa !1681
  %.not3.not.i.not.not = icmp ne ptr %i.cc, %i.cd ; 3 uses
  br i1 %.not3.not.i.not.not, label %bb.l, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE9_M_searchEv.exit

bb.l:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 1 ; 2 uses
  store ptr %i.ce, ptr %i.o, align 8, !tbaa !1680
  store ptr %i.ce, ptr %i.bw, align 8, !tbaa !1691
  %i.cf = call noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE16_M_main_dispatchENS9_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %9, i8 noundef zeroext 1), !inline_history !3993
  br i1 %i.cf, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE9_M_searchEv.exit, label %bb.k, !llvm.loop !3994

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE9_M_searchEv.exit: ; preds = %bb.l, %bb.k, %bb.i, %bb.h, %bb.g
  %.0.in = phi i1 [ %i.bx, %bb.g ], [ false, %bb.i ], [ true, %bb.h ], [ %.not3.not.i.not.not, %bb.k ], [ %.not3.not.i.not.not, %bb.l ]
  %i.cg = load ptr, ptr %i.bp, align 8, !tbaa !1690 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE9_M_searchEv.exit
  call void @_ZdaPv(ptr noundef nonnull %i.cg) #34
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE9_M_searchEv.exit
  %i.ci = load ptr, ptr %i.be, align 8, !tbaa !1693 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !1694 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.ci, %i.ck
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvT_SB_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.cs, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i ], [ %i.ci, %bb.n ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !959 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !960
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = sub i64 %i.cp, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cr) #34
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.o, %.lr.ph.i.i.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i62 = icmp eq ptr %i.cs, %i.ck
  br i1 %.not.i.i.i.i.i62, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvT_SB_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !101

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvT_SB_.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.be, align 8, !tbaa !1693
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvT_SB_.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvT_SB_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvT_SB_.exitthread-pre-split.i.i.i, %bb.n
  %i.ct = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvT_SB_.exitthread-pre-split.i.i.i ], [ %i.ci, %bb.n ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvT_SB_.exit.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !1695
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cy) #34
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i: ; preds = %bb.p, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvT_SB_.exit.i.i.i
  %i.cz = load ptr, ptr %i.t, align 8, !tbaa !1683 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1684
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.cz to i64
  %i.de = sub i64 %i.dc, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.de) #34
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i:    ; preds = %bb.q, %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i
  %i.df = load ptr, ptr %9, align 8, !tbaa !959   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !960
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.df to i64
  %i.dk = sub i64 %i.di, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.dk) #34
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br i1 %.0.in, label %bb.aa, label %bb.af

bb.s:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(117) %10, i8 0, i64 24, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %0, ptr %i.dl, align 8, !tbaa !1698
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %1, ptr %i.dm, align 8, !tbaa !1699
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %3, ptr %i.dn, align 8, !tbaa !1610
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr %.pre87, ptr %i.do, align 8, !tbaa !1474
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 64
  store ptr %2, ptr %i.dp, align 8, !tbaa !1682
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.pre87, i64 56
  %i.ds = getelementptr inbounds nuw i8, ptr %.pre87, i64 64
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1463 ; 2 uses
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !1452 ; 2 uses
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = sdiv exact i64 %i.dx, 48                ; 7 uses
  %i.dz = icmp ugt i64 %i.dy, 576460752303423487
  br i1 %i.dz, label %bb.t, label %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i63

bb.t:                                             ; preds = %bb.s
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.142) #37
  unreachable

_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i63: ; preds = %bb.s
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i64 = icmp eq ptr %i.dt, %i.du
  br i1 %.not.i.i.i.i.i64, label %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i72, label %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i65

_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i65: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i63
  %i.ea = shl nuw nsw i64 %i.dy, 4
  %i.eb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ea) #36 ; 4 uses
  store ptr %i.eb, ptr %i.dq, align 8, !tbaa !1683
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.eb, i64 %i.dy
  %i.ed = getelementptr inbounds nuw i8, ptr %10, i64 88
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !1684
  %xtraiter109 = and i64 %i.dy, 7                 ; 2 uses
  %lcmp.mod110.not = icmp eq i64 %xtraiter109, 0
  br i1 %lcmp.mod110.not, label %.lr.ph.i.i.i.i.i.i66.prol.loopexit, label %.lr.ph.i.i.i.i.i.i66.prol

.lr.ph.i.i.i.i.i.i66.prol:                        ; preds = %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i65, %.lr.ph.i.i.i.i.i.i66.prol
  %.08.i.i.i.i.i.i67.prol = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i.i66.prol ], [ %i.eb, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i65 ] ; 3 uses
  %.057.i.i.i.i.i.i68.prol = phi i64 [ %i.ef, %.lr.ph.i.i.i.i.i.i66.prol ], [ %i.dy, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i65 ]
  %prol.iter111 = phi i64 [ %prol.iter111.next, %.lr.ph.i.i.i.i.i.i66.prol ], [ 0, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i65 ]
  store ptr null, ptr %.08.i.i.i.i.i.i67.prol, align 8, !tbaa !1686
  %i.ee = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i67.prol, i64 8
  store i32 0, ptr %i.ee, align 8, !tbaa !1687
  %i.ef = add nsw i64 %.057.i.i.i.i.i.i68.prol, -1 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i67.prol, i64 16 ; 3 uses
  %prol.iter111.next = add i64 %prol.iter111, 1   ; 2 uses
  %prol.iter111.cmp.not = icmp eq i64 %prol.iter111.next, %xtraiter109
  br i1 %prol.iter111.cmp.not, label %.lr.ph.i.i.i.i.i.i66.prol.loopexit, label %.lr.ph.i.i.i.i.i.i66.prol, !llvm.loop !3995

.lr.ph.i.i.i.i.i.i66.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i66.prol, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i65
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i65 ], [ %i.eg, %.lr.ph.i.i.i.i.i.i66.prol ]
  %.08.i.i.i.i.i.i67.unr = phi ptr [ %i.eb, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i65 ], [ %i.eg, %.lr.ph.i.i.i.i.i.i66.prol ]
  %.057.i.i.i.i.i.i68.unr = phi i64 [ %i.dy, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i65 ], [ %i.ef, %.lr.ph.i.i.i.i.i.i66.prol ]
  %i.eh = icmp ult i64 %i.dy, 8
  br i1 %i.eh, label %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i72, label %.lr.ph.i.i.i.i.i.i66

.lr.ph.i.i.i.i.i.i66:                             ; preds = %.lr.ph.i.i.i.i.i.i66.prol.loopexit, %.lr.ph.i.i.i.i.i.i66
  %.08.i.i.i.i.i.i67 = phi ptr [ %i.ey, %.lr.ph.i.i.i.i.i.i66 ], [ %.08.i.i.i.i.i.i67.unr, %.lr.ph.i.i.i.i.i.i66.prol.loopexit ] ; 17 uses
  %.057.i.i.i.i.i.i68 = phi i64 [ %i.ex, %.lr.ph.i.i.i.i.i.i66 ], [ %.057.i.i.i.i.i.i68.unr, %.lr.ph.i.i.i.i.i.i66.prol.loopexit ]
  store ptr null, ptr %.08.i.i.i.i.i.i67, align 8, !tbaa !1686
  %i.ei = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i67, i64 8
  store i32 0, ptr %i.ei, align 8, !tbaa !1687
  %i.ej = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i67, i64 16
  store ptr null, ptr %i.ej, align 8, !tbaa !1686
  %i.ek = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i67, i64 24
  store i32 0, ptr %i.ek, align 8, !tbaa !1687
  %i.el = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i67, i64 32
  store ptr null, ptr %i.el, align 8, !tbaa !1686
  %i.em = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i67, i64 40
  store i32 0, ptr %i.em, align 8, !tbaa !1687
  %i.en = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i67, i64 48
  store ptr null, ptr %i.en, align 8, !tbaa !1686
  %i.eo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i67, i64 56
  store i32 0, ptr %i.eo, align 8, !tbaa !1687
  %i.ep = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i67, i64 64
  store ptr null, ptr %i.ep, align 8, !tbaa !1686
  %i.eq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i67, i64 72
  store i32 0, ptr %i.eq, align 8, !tbaa !1687
  %i.er = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i67, i64 80
  store ptr null, ptr %i.er, align 8, !tbaa !1686
  %i.es = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i67, i64 88
  store i32 0, ptr %i.es, align 8, !tbaa !1687
  %i.et = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i67, i64 96
  store ptr null, ptr %i.et, align 8, !tbaa !1686
  %i.eu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i67, i64 104
  store i32 0, ptr %i.eu, align 8, !tbaa !1687
  %i.ev = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i67, i64 112
  store ptr null, ptr %i.ev, align 8, !tbaa !1686
  %i.ew = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i67, i64 120
  store i32 0, ptr %i.ew, align 8, !tbaa !1687
  %i.ex = add nsw i64 %.057.i.i.i.i.i.i68, -8     ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i67, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i69.7 = icmp eq i64 %i.ex, 0
  br i1 %.not.i.i.i.i.i.i69.7, label %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i72, label %.lr.ph.i.i.i.i.i.i66, !llvm.loop !100

_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i72: ; preds = %.lr.ph.i.i.i.i.i.i66.prol.loopexit, %.lr.ph.i.i.i.i.i.i66, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i63
  %.0.lcssa.i.i.i.i.i.i73 = phi ptr [ null, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i63 ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i66.prol.loopexit ], [ %i.ey, %.lr.ph.i.i.i.i.i.i66 ]
  %i.ez = getelementptr inbounds nuw i8, ptr %10, i64 80
  store ptr %.0.lcssa.i.i.i.i.i.i73, ptr %i.ez, align 8, !tbaa !1689
  %i.fa = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.pre87, i64 32
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !1449
  store i64 %i.fc, ptr %i.fa, align 8, !tbaa !4000
  %i.fd = getelementptr inbounds nuw i8, ptr %10, i64 112
  %i.fe = and i32 %4, 128
  %.not.i74 = icmp eq i32 %i.fe, 0
  %i.ff = and i32 %4, -6
  %spec.select107 = select i1 %.not.i74, i32 %4, i32 %i.ff
  store i32 %spec.select107, ptr %i.fd, align 8, !tbaa !1638
  br i1 %6, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i72
  %i.fg = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %0, ptr %i.fg, align 8, !tbaa !1700
  %i.fh = getelementptr inbounds nuw i8, ptr %10, i64 116 ; 2 uses
  store i8 0, ptr %i.fh, align 4, !tbaa !1701
  %i.fi = getelementptr inbounds nuw i8, ptr %10, i64 104
  store ptr null, ptr %i.fi, align 8, !tbaa !614
  %i.fj = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(117) %10, ptr noundef nonnull align 8 dereferenceable(24) %2), !inline_history !3996 ; 0 uses
  %i.fk = load i64, ptr %i.fa, align 8, !tbaa !1702
  call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %10, i8 noundef zeroext 0, i64 noundef %i.fk), !inline_history !3996
  %i.fl = load i8, ptr %i.fh, align 4, !tbaa !1701, !range !613, !noundef !599
  %i.fm = trunc nuw i8 %i.fl to i1
  br label %bb.w

bb.v:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i72
  %i.fn = call noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE9_M_searchEv(ptr noundef nonnull align 8 dereferenceable(117) %10)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1.in = phi i1 [ %i.fm, %bb.u ], [ %i.fn, %bb.v ]
  %i.fo = load ptr, ptr %i.dq, align 8, !tbaa !1683 ; 3 uses
  %.not.i.i.i.i75 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i.i75, label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i76, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fp = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !1684
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = ptrtoint ptr %i.fo to i64
  %i.ft = sub i64 %i.fr, %i.fs
  call void @_ZdlPvm(ptr noundef nonnull %i.fo, i64 noundef %i.ft) #34
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i76

_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i76:  ; preds = %bb.x, %bb.w
  %i.fu = load ptr, ptr %10, align 8, !tbaa !959  ; 3 uses
  %.not.i.i.i1.i77 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i1.i77, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i76
  %i.fv = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !960
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = ptrtoint ptr %i.fu to i64
  %i.fz = sub i64 %i.fx, %i.fy
  call void @_ZdlPvm(ptr noundef nonnull %i.fu, i64 noundef %i.fz) #34
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br i1 %.1.in, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit, %bb.z
  %i.ga = load ptr, ptr %2, align 8, !tbaa !952   ; 6 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !952 ; 3 uses
  %i.gd = icmp eq ptr %i.ga, %i.gc
  br i1 %i.gd, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ac, %bb.aa
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = ptrtoint ptr %i.ga to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = getelementptr i8, ptr %i.ga, i64 %i.gg  ; 10 uses
  %i.gi = getelementptr i8, ptr %i.gh, i64 -48    ; 2 uses
  %i.gj = getelementptr i8, ptr %i.gh, i64 -24    ; 2 uses
  br i1 %6, label %bb.ad, label %bb.ae

.lr.ph:                                           ; preds = %bb.aa, %bb.ac
  %.sroa.078.084 = phi ptr [ %i.go, %bb.ac ], [ %i.ga, %bb.aa ] ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.078.084, i64 16
  %i.gl = load i8, ptr %i.gk, align 8, !tbaa !955, !range !613, !noundef !599
  %i.gm = trunc nuw i8 %i.gl to i1
  br i1 %i.gm, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.078.084, i64 8
  store ptr %1, ptr %i.gn, align 8, !tbaa !957
  store ptr %1, ptr %.sroa.078.084, align 8, !tbaa !956
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.078.084, i64 24 ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.gc
  br i1 %i.gp, label %._crit_edge, label %.lr.ph

bb.ad:                                            ; preds = %._crit_edge
  %i.gq = getelementptr i8, ptr %i.gh, i64 -32
  store i8 0, ptr %i.gq, align 8, !tbaa !955
  store ptr %0, ptr %i.gi, align 8, !tbaa !956
  %i.gr = getelementptr i8, ptr %i.gh, i64 -40
  store ptr %0, ptr %i.gr, align 8, !tbaa !957
  %i.gs = getelementptr i8, ptr %i.gh, i64 -8
  store i8 0, ptr %i.gs, align 8, !tbaa !955
  store ptr %1, ptr %i.gj, align 8, !tbaa !956
  %i.gt = getelementptr i8, ptr %i.gh, i64 -16
  store ptr %1, ptr %i.gt, align 8, !tbaa !957
  br label %bb.ag

bb.ae:                                            ; preds = %._crit_edge
  store ptr %0, ptr %i.gi, align 8, !tbaa !956
  %i.gu = load ptr, ptr %i.ga, align 8, !tbaa !956 ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gh, i64 -40
  store ptr %i.gu, ptr %i.gv, align 8, !tbaa !957
  %i.gw = icmp ne ptr %0, %i.gu
  %i.gx = getelementptr i8, ptr %i.gh, i64 -32
  %i.gy = zext i1 %i.gw to i8
  store i8 %i.gy, ptr %i.gx, align 8, !tbaa !955
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !957 ; 2 uses
  store ptr %i.ha, ptr %i.gj, align 8, !tbaa !956
  %i.hb = getelementptr i8, ptr %i.gh, i64 -16
  store ptr %1, ptr %i.hb, align 8, !tbaa !957
  %i.hc = icmp ne ptr %i.ha, %1
  %i.hd = getelementptr i8, ptr %i.gh, i64 -8
  %i.he = zext i1 %i.hc to i8
  store i8 %i.he, ptr %i.hd, align 8, !tbaa !955
  br label %bb.ag

bb.af:                                            ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.hf = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 0, ptr %i.hf, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.hg, align 8, !tbaa !957
  store ptr %1, ptr %7, align 8, !tbaa !956
  call void @_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE14_M_fill_assignEmRKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(17) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.a
  %.059 = phi i1 [ false, %bb.a ], [ true, %bb.ad ], [ true, %bb.ae ], [ false, %bb.af ]
  ret i1 %.059
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE9_M_searchEv(ptr noundef nonnull align 8 dereferenceable(117) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1698
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !1700
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 4 uses
  store i8 0, ptr %i.d, align 4, !tbaa !1701
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !614
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1703, !nonnull !599, !align !600
  %i.i = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(117) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h), !inline_history !4001 ; 0 uses
  %i.j = load i64, ptr %i.e, align 8, !tbaa !1702
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext 1, i64 noundef %i.j), !inline_history !4001
  %i.k = load i8, ptr %i.d, align 4, !tbaa !1701, !range !613, !noundef !599
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !1704 ; 2 uses
  %i.o = and i32 %i.n, 64
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.p = or i32 %i.n, 128
  store i32 %i.p, ptr %i.m, align 8, !tbaa !1638
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !1698 ; 2 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !1699
  %.not3.not.not = icmp ne ptr %i.r, %i.s         ; 3 uses
  br i1 %.not3.not.not, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !1698
  store ptr %i.t, ptr %i.c, align 8, !tbaa !1700
  store i8 0, ptr %i.d, align 4, !tbaa !1701
  store ptr null, ptr %i.f, align 8, !tbaa !614
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !1703, !nonnull !599, !align !600
  %i.v = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(117) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.u), !inline_history !4001 ; 0 uses
  %i.w = load i64, ptr %i.e, align 8, !tbaa !1702
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext 1, i64 noundef %i.w), !inline_history !4001
  %i.x = load i8, ptr %i.d, align 4, !tbaa !1701, !range !613, !noundef !599
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.loopexit, label %bb.d, !llvm.loop !4002

.loopexit:                                        ; preds = %bb.d, %bb.e, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ %.not3.not.not, %bb.e ], [ %.not3.not.not, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE14_M_fill_assignEmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(17) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !960
  %i.c = load ptr, ptr %0, align 8, !tbaa !959    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %1, 384307168202282325
  br i1 %i.i, label %bb.c, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.142) #37
  unreachable

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i: ; preds = %bb.b
  %i.j = mul nuw nsw i64 %1, 24
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #36 ; 4 uses
  %xtraiter32 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod33.not = icmp eq i64 %xtraiter32, 0
  br i1 %lcmp.mod33.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i, %.lr.ph.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.prol = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i ] ; 2 uses
  %.068.i.i.i.i.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ], [ %1, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i ]
  %prol.iter34 = phi i64 [ %prol.iter34.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.l = add nsw i64 %.068.i.i.i.i.i.i.prol, -1   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter34.next = add i64 %prol.iter34, 1     ; 2 uses
  %prol.iter34.cmp.not = icmp eq i64 %prol.iter34.next, %xtraiter32
  br i1 %prol.iter34.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !4003

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i ], [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ]
  %.09.i.i.i.i.i.i.unr = phi ptr [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i ], [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.unr = phi i64 [ %1, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i ], [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.n = icmp ult i64 %1, 4
  br i1 %i.n, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS4_RKS5_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.068.i.i.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.r = add nsw i64 %.068.i.i.i.i.i.i, -4        ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.3, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS4_RKS5_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !4004

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS4_RKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.s, %.lr.ph.i.i.i.i.i.i ]
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %1
  %i.u = load ptr, ptr %0, align 8, !tbaa !959    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !960
  store ptr %i.k, ptr %0, align 8, !tbaa !959
  store ptr %.lcssa, ptr %i.v, align 8, !tbaa !1705
  store ptr %i.t, ptr %i.a, align 8, !tbaa !960
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS4_RKS5_.exit
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #34
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1705 ; 6 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.e
  %i.ae = sdiv exact i64 %i.ad, 24                ; 3 uses
  %i.af = icmp ugt i64 %1, %i.ae
  br i1 %i.af, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not5.i.i.i.i = icmp eq ptr %i.c, %i.ab
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = load <2 x ptr>, ptr %2, align 8, !tbaa !614
  %.pre8.i.i.i.i = load i8, ptr %i.ag, align 8, !tbaa !955, !range !613
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %i.aj, %bb.g ] ; 3 uses
  store <2 x ptr> %i.ah, ptr %.06.i.i.i.i, align 8, !tbaa !614
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16
  store i8 %.pre8.i.i.i.i, ptr %i.ai, align 8, !tbaa !955
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.aj, %i.ab
  br i1 %.not.i.i.i.i11, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit, label %bb.g, !llvm.loop !4005

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit: ; preds = %bb.g, %bb.f
  %i.ak = sub i64 %1, %i.ae                       ; 3 uses
  %xtraiter = and i64 %i.ak, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i12.prol.loopexit, label %.lr.ph.i.i.i.i12.prol

.lr.ph.i.i.i.i12.prol:                            ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit, %.lr.ph.i.i.i.i12.prol
  %.09.i.i.i.i.prol = phi ptr [ %i.am, %.lr.ph.i.i.i.i12.prol ], [ %i.ab, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit ] ; 2 uses
  %.068.i.i.i.i.prol = phi i64 [ %i.al, %.lr.ph.i.i.i.i12.prol ], [ %i.ak, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i12.prol ], [ 0, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.al = add i64 %.068.i.i.i.i.prol, -1          ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i12.prol.loopexit, label %.lr.ph.i.i.i.i12.prol, !llvm.loop !4006

.lr.ph.i.i.i.i12.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i12.prol, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit
  %.lcssa31.unr = phi ptr [ poison, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit ], [ %i.am, %.lr.ph.i.i.i.i12.prol ]
  %.09.i.i.i.i.unr = phi ptr [ %i.ab, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit ], [ %i.am, %.lr.ph.i.i.i.i12.prol ]
  %.068.i.i.i.i.unr = phi i64 [ %i.ak, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit ], [ %i.al, %.lr.ph.i.i.i.i12.prol ]
  %i.an = sub i64 %i.ae, %1
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %.lr.ph.i.i.i.i12.prol.loopexit, %.lr.ph.i.i.i.i12
  %.09.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i12 ], [ %.09.i.i.i.i.unr, %.lr.ph.i.i.i.i12.prol.loopexit ] ; 5 uses
  %.068.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i12 ], [ %.068.i.i.i.i.unr, %.lr.ph.i.i.i.i12.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.as = add i64 %.068.i.i.i.i, -4               ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i13.3 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i.i13.3, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12, !llvm.loop !4004

_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i12, %.lr.ph.i.i.i.i12.prol.loopexit
  %.lcssa31 = phi ptr [ %.lcssa31.unr, %.lr.ph.i.i.i.i12.prol.loopexit ], [ %i.at, %.lr.ph.i.i.i.i12 ]
  store ptr %.lcssa31, ptr %i.aa, align 8, !tbaa !1705
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.au = icmp eq i64 %1, 0
  br i1 %i.au, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIPKcEEmS4_ET_S6_T0_RKT1_.exit, label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %bb.h
  %.idx.i.i = mul nuw nsw i64 %1, 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ax = load <2 x ptr>, ptr %2, align 8, !tbaa !614
  %.pre8.i.i.i.i17 = load i8, ptr %i.aw, align 8, !tbaa !955, !range !613
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i14
  %.06.i.i.i.i18 = phi ptr [ %i.c, %.lr.ph.i.i.i.i14 ], [ %i.az, %bb.i ] ; 3 uses
  store <2 x ptr> %i.ax, ptr %.06.i.i.i.i18, align 8, !tbaa !614
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 16
  store i8 %.pre8.i.i.i.i17, ptr %i.ay, align 8, !tbaa !955
  %i.az = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 24 ; 2 uses
  %.not.i.i.i.i19 = icmp eq ptr %i.az, %i.av
  br i1 %.not.i.i.i.i19, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIPKcEEmS4_ET_S6_T0_RKT1_.exit, label %bb.i, !llvm.loop !4005

_ZSt6fill_nIPNSt7__cxx119sub_matchIPKcEEmS4_ET_S6_T0_RKT1_.exit: ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %i.c, %bb.h ], [ %i.av, %bb.i ] ; 2 uses
  %.not.i = icmp eq ptr %i.ab, %.0.i.i
  br i1 %.not.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt6fill_nIPNSt7__cxx119sub_matchIPKcEEmS4_ET_S6_T0_RKT1_.exit
  store ptr %.0.i.i, ptr %i.aa, align 8, !tbaa !1705
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit: ; preds = %bb.j, %_ZSt6fill_nIPNSt7__cxx119sub_matchIPKcEEmS4_ET_S6_T0_RKT1_.exit, %bb.d, %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS4_RKS5_.exit, %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE16_M_main_dispatchENS9_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1706 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1707, !nonnull !599, !align !600 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.d, ptr %i.a, align 8, !tbaa !594
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1694 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1695
  %.not.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.h, align 8, !tbaa !1709
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1705 ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !959  ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = sdiv exact i64 %i.q, 24
  %i.s = icmp ugt i64 %i.r, 384307168202282325
  br i1 %i.s, label %bb.d, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !610

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #36
  br label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i.i.i.i.i

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i.i.i.i.i: ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %bb.b
  %i.u = phi ptr [ %i.t, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ], [ null, %bb.b ] ; 5 uses
  store ptr %i.u, ptr %i.k, align 8, !tbaa !959
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !1705
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.w, ptr %i.x, align 8, !tbaa !960
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !952  ; 2 uses
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !952  ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZSt12construct_atISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEJRlRKS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSE_DpOSF_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.u, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.y, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.07.i.i.i.i.i.i.i.i.i, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.z
  br i1 %i.ad, label %_ZSt12construct_atISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEJRlRKS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSE_DpOSF_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !102

_ZSt12construct_atISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEJRlRKS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSE_DpOSF_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i.i.i.i.i ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, ptr %i.v, align 8, !tbaa !1705
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !1694
end_hunk_2
begin_hunk_3_@_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE16_M_word_boundaryEv:bb.a
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

_ZNKSt5ctypeIcE5widenEc.exit.i.i:                 ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i8 [ %i.ap, %bb.k ], [ %i.at, %bb.l ]
  %i.au = icmp eq i8 %i.s, %.0.i.i.i
  %i.av = zext i1 %i.au to i32
  br label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit

_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i, %bb.i, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i, %bb.f
  %.1 = phi i32 [ 0, %bb.f ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i ], [ 0, %bb.i ], [ %i.av, %_ZNKSt5ctypeIcE5widenEc.exit.i.i ]
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !1691 ; 2 uses
  %i.ax = load ptr, ptr %i.i, align 8, !tbaa !1681
  %.not9 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not9, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !177 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1711, !nonnull !599, !align !600
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1608
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 2 uses
  %i.be = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.bf = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #16
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !1440
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1444
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bf
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1446 ; 7 uses
  %.not.not.i.i.i10 = icmp eq ptr %i.bk, null
  br i1 %.not.not.i.i.i10, label %bb.n, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt16__throw_bad_castv() #37
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11: ; preds = %bb.m
  %.sroa.0.0.extract.trunc.i.i12 = trunc i32 %i.be to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1495
  %i.bn = zext i8 %i.ay to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !783
  %i.bq = and i16 %i.bp, %.sroa.0.0.extract.trunc.i.i12
  %.not4.i.i13 = icmp eq i16 %i.bq, 0
  br i1 %.not4.i.i13, label %bb.o, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18

bb.o:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11
  %i.br = and i32 %i.be, 65536
  %.not.i.i14 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i14, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !1582
  %.not.i.i.i15 = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i15, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 152
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !177
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i16

bb.r:                                             ; preds = %bb.p
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bk) #16
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !170
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef signext i8 %i.by(ptr noundef nonnull align 8 dereferenceable(570) %i.bk, i8 noundef signext 95) #16, !inline_history !4027
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i16

_ZNKSt5ctypeIcE5widenEc.exit.i.i16:               ; preds = %bb.r, %bb.q
  %.0.i.i.i17 = phi i8 [ %i.bv, %bb.q ], [ %i.bz, %bb.r ]
  %i.ca = icmp eq i8 %i.ay, %.0.i.i.i17
  %i.cb = zext i1 %i.ca to i32
  br label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18

_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i16, %bb.o, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  %i.cc = phi i32 [ 0, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11 ], [ 0, %bb.o ], [ %i.cb, %_ZNKSt5ctypeIcE5widenEc.exit.i.i16 ]
  %i.cd = icmp ne i32 %.1, %i.cc
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.b, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18
  %.04 = phi i1 [ %i.cd, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18 ], [ false, %bb.b ], [ false, %bb.d ]
  ret i1 %.04
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::vector.1573", align 8  ; 8 uses
  %3 = alloca %"class.std::__detail::_Executor.1745", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1705 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !959    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.h, label %bb.c, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i, !prof !610

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36
  %.pre = load ptr, ptr %0, align 8, !tbaa !952
  %.pre14 = load ptr, ptr %i.a, align 8, !tbaa !952
  br label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i: ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %.pre14, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %i.i, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 4 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !959
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !960
  %i.p = icmp eq ptr %i.k, %i.j
  br i1 %i.p, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.07.i.i.i.i.i, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.j
  br i1 %i.s, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !102

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.m, align 8, !tbaa !1705
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1691 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load i32, ptr %i.x, align 8, !tbaa !1692 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(141) %3, i8 0, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.u, ptr %i.z, align 8, !tbaa !1680
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !1711, !nonnull !599, !align !600
  %i.ac = load <2 x ptr>, ptr %i.v, align 8, !tbaa !672
  store <2 x ptr> %i.ac, ptr %i.aa, align 8, !tbaa !672
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1608 ; 3 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !1474
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %2, ptr %i.ag, align 8, !tbaa !1682
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 56 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 64 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1463 ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !1452 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64               ; 3 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sdiv exact i64 %i.ao, 48                ; 7 uses
  %i.aq = icmp ugt i64 %i.ap, 576460752303423487
  br i1 %i.aq, label %bb.d, label %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.142) #37
  unreachable

_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i, label %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i

_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.ar = shl nuw nsw i64 %i.ap, 4
  %i.as = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #36 ; 4 uses
  store ptr %i.as, ptr %i.ah, align 8, !tbaa !1683
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.ap
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr %i.at, ptr %i.au, align 8, !tbaa !1684
  %xtraiter = and i64 %i.ap, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.as, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i ] ; 3 uses
  %.057.i.i.i.i.i.i.prol = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ap, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i ]
  store ptr null, ptr %.08.i.i.i.i.i.i.prol, align 8, !tbaa !1686
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.av, align 8, !tbaa !1687
  %i.aw = add nsw i64 %.057.i.i.i.i.i.i.prol, -1  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !4028

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.i.unr = phi ptr [ %i.as, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.i.unr = phi i64 [ %i.ap, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ay = icmp ult i64 %i.ap, 8
  br i1 %i.ay, label %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i.i ], [ %.057.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !1686
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.az, align 8, !tbaa !1687
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.ba, align 8, !tbaa !1686
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 24
  store i32 0, ptr %i.bb, align 8, !tbaa !1687
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.bc, align 8, !tbaa !1686
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 40
  store i32 0, ptr %i.bd, align 8, !tbaa !1687
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.be, align 8, !tbaa !1686
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 56
  store i32 0, ptr %i.bf, align 8, !tbaa !1687
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 64
  store ptr null, ptr %i.bg, align 8, !tbaa !1686
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 72
  store i32 0, ptr %i.bh, align 8, !tbaa !1687
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 80
  store ptr null, ptr %i.bi, align 8, !tbaa !1686
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 88
  store i32 0, ptr %i.bj, align 8, !tbaa !1687
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 96
  store ptr null, ptr %i.bk, align 8, !tbaa !1686
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 104
  store i32 0, ptr %i.bl, align 8, !tbaa !1687
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 112
  store ptr null, ptr %i.bm, align 8, !tbaa !1686
  %i.bn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 120
  store i32 0, ptr %i.bn, align 8, !tbaa !1687
  %i.bo = add nsw i64 %.057.i.i.i.i.i.i, -8       ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i.i.i.i.7, label %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !100

_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bp, %.lr.ph.i.i.i.i.i.i ]
  %.pre15 = load ptr, ptr %i.aj, align 8, !tbaa !1463
  %.pre16 = load ptr, ptr %i.ai, align 8, !tbaa !1452
  %.pre17 = ptrtoint ptr %.pre15 to i64
  %.pre18 = ptrtoint ptr %.pre16 to i64
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i

_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.loopexit.i, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %.pre-phi19 = phi i64 [ %.pre18, %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.loopexit.i ], [ %i.am, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ]
  %.pre-phi = phi i64 [ %.pre17, %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.loopexit.i ], [ %i.am, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %.lcssa, %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.loopexit.i ], [ null, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.bq, align 8, !tbaa !1689
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.bs = sub i64 %.pre-phi, %.pre-phi19
  %i.bt = sdiv exact i64 %i.bs, 48                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.br, i8 0, i64 24, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 2 uses
  %i.bv = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bt) #36 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bv, i8 0, i64 %i.bt, i1 false)
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !1690
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.by = and i32 %i.y, 128
  %.not.i = icmp eq i32 %i.by, 0
  %i.bz = and i32 %i.y, -6
  %spec.select = select i1 %.not.i, i32 %i.y, i32 %i.bz
  store i32 %spec.select, ptr %i.bx, align 8, !tbaa !1638
  store i64 %1, ptr %i.bw, align 8, !tbaa !1706
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.u, ptr %i.ca, align 8, !tbaa !1691
  %i.cb = call noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE16_M_main_dispatchENS9_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %3, i8 noundef zeroext 1), !inline_history !4029 ; 2 uses
  br i1 %i.cb, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i
  %i.cc = load ptr, ptr %i.m, align 8, !tbaa !1705 ; 2 uses
  %i.cd = load ptr, ptr %2, align 8, !tbaa !959   ; 5 uses
  %.not = icmp eq ptr %i.cc, %i.cd
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 2 uses
  %i.ch = sdiv exact i64 %i.cg, 24                ; 3 uses
  %xtraiter39 = and i64 %i.ch, 1
  %i.ci = icmp eq i64 %i.cg, 24
  br i1 %i.ci, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ch, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.lr.ph.preheader.new
  %.012 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.da, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.g ]
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %.012 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !955, !range !613, !noundef !599
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.e, label %.lr.ph.1

bb.e:                                             ; preds = %.lr.ph
  %i.cn = load ptr, ptr %0, align 8, !tbaa !959
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %.012 ; 2 uses
  %i.cp = load <2 x ptr>, ptr %i.cj, align 8, !tbaa !614
  store <2 x ptr> %i.cp, ptr %i.co, align 8, !tbaa !614
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i8 1, ptr %i.cq, align 8, !tbaa !955
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.e
  %i.cr = or disjoint i64 %.012, 1                ; 2 uses
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %i.cr ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !955, !range !613, !noundef !599
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.1
  %i.cw = load ptr, ptr %0, align 8, !tbaa !959
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %i.cr ; 2 uses
  %i.cy = load <2 x ptr>, ptr %i.cs, align 8, !tbaa !614
  store <2 x ptr> %i.cy, ptr %i.cx, align 8, !tbaa !614
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i8 1, ptr %i.cz, align 8, !tbaa !955
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.1
  %i.da = add nuw i64 %.012, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !4030

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.g
  %lcmp.mod40.not = icmp eq i64 %xtraiter39, 0
  br i1 %lcmp.mod40.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.012.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.da, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod41 = trunc i64 %i.ch to i1
  call void @llvm.assume(i1 %lcmp.mod41)
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %.012.epil.init ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !955, !range !613, !noundef !599
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.lr.ph.epil.preheader
  %i.df = load ptr, ptr %0, align 8, !tbaa !959
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %.012.epil.init ; 2 uses
  %i.dh = load <2 x ptr>, ptr %i.db, align 8, !tbaa !614
  store <2 x ptr> %i.dh, ptr %i.dg, align 8, !tbaa !614
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store i8 1, ptr %i.di, align 8, !tbaa !955
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.h, %.lr.ph.epil.preheader, %.preheader, %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i
  %i.dj = load ptr, ptr %i.bu, align 8, !tbaa !1690 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %i.dj) #34
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit
  %i.dl = load ptr, ptr %i.br, align 8, !tbaa !1693 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !1694 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.dl, %i.dn
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvT_SB_.exit.i.i.i, label %.lr.ph.i.i.i.i.i8

.lr.ph.i.i.i.i.i8:                                ; preds = %bb.j, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.dv, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i ], [ %i.dl, %bb.j ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !959 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i8
  %i.dq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !960
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.du) #34
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.k, %.lr.ph.i.i.i.i.i8
  %i.dv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i9 = icmp eq ptr %i.dv, %i.dn
  br i1 %.not.i.i.i.i.i9, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvT_SB_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i8, !llvm.loop !101

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvT_SB_.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.br, align 8, !tbaa !1693
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvT_SB_.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvT_SB_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvT_SB_.exitthread-pre-split.i.i.i, %bb.j
  %i.dw = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvT_SB_.exitthread-pre-split.i.i.i ], [ %i.dl, %bb.j ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvT_SB_.exit.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !1695
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dw to i64
  %i.eb = sub i64 %i.dz, %i.ea
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.eb) #34
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i: ; preds = %bb.l, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvT_SB_.exit.i.i.i
  %i.ec = load ptr, ptr %i.ah, align 8, !tbaa !1683 ; 3 uses
  %.not.i.i.i.i10 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i10, label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !1684
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = ptrtoint ptr %i.ec to i64
  %i.eh = sub i64 %i.ef, %i.eg
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.eh) #34
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i:    ; preds = %bb.m, %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i
  %i.ei = load ptr, ptr %3, align 8, !tbaa !959   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !960
  %i.el = ptrtoint ptr %i.ek to i64
end_hunk_3
begin_hunk_4_@_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_word_boundaryEv:bb.a
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

_ZNKSt5ctypeIcE5widenEc.exit.i.i:                 ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i8 [ %i.ap, %bb.k ], [ %i.at, %bb.l ]
  %i.au = icmp eq i8 %i.s, %.0.i.i.i
  %i.av = zext i1 %i.au to i32
  br label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit

_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i, %bb.i, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i, %bb.f
  %.1 = phi i32 [ 0, %bb.f ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i ], [ 0, %bb.i ], [ %i.av, %_ZNKSt5ctypeIcE5widenEc.exit.i.i ]
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !1700 ; 2 uses
  %i.ax = load ptr, ptr %i.i, align 8, !tbaa !1699
  %.not9 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not9, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !177 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1715, !nonnull !599, !align !600
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1608
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 2 uses
  %i.be = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.bf = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #16
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !1440
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1444
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bf
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1446 ; 7 uses
  %.not.not.i.i.i10 = icmp eq ptr %i.bk, null
  br i1 %.not.not.i.i.i10, label %bb.n, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt16__throw_bad_castv() #37
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11: ; preds = %bb.m
  %.sroa.0.0.extract.trunc.i.i12 = trunc i32 %i.be to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1495
  %i.bn = zext i8 %i.ay to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !783
  %i.bq = and i16 %i.bp, %.sroa.0.0.extract.trunc.i.i12
  %.not4.i.i13 = icmp eq i16 %i.bq, 0
  br i1 %.not4.i.i13, label %bb.o, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18

bb.o:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11
  %i.br = and i32 %i.be, 65536
  %.not.i.i14 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i14, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !1582
  %.not.i.i.i15 = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i15, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 152
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !177
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i16

bb.r:                                             ; preds = %bb.p
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bk) #16
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !170
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef signext i8 %i.by(ptr noundef nonnull align 8 dereferenceable(570) %i.bk, i8 noundef signext 95) #16, !inline_history !4046
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i16

_ZNKSt5ctypeIcE5widenEc.exit.i.i16:               ; preds = %bb.r, %bb.q
  %.0.i.i.i17 = phi i8 [ %i.bv, %bb.q ], [ %i.bz, %bb.r ]
  %i.ca = icmp eq i8 %i.ay, %.0.i.i.i17
  %i.cb = zext i1 %i.ca to i32
  br label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18

_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i16, %bb.o, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit
  %i.cc = phi i32 [ 0, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11 ], [ 0, %bb.o ], [ %i.cb, %_ZNKSt5ctypeIcE5widenEc.exit.i.i16 ]
  %i.cd = icmp ne i32 %.1, %i.cc
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.b, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18
  %.04 = phi i1 [ %i.cd, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18 ], [ false, %bb.b ], [ false, %bb.d ]
  ret i1 %.04
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::vector.1573", align 8  ; 9 uses
  %3 = alloca %"class.std::__detail::_Executor.1757", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1705 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !959    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.h, label %bb.c, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i, !prof !610

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36
  %.pre = load ptr, ptr %0, align 8, !tbaa !952
  %.pre12 = load ptr, ptr %i.a, align 8, !tbaa !952
  br label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i: ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %.pre12, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %i.i, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 4 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !959
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !960
  %i.p = icmp eq ptr %i.k, %i.j
  br i1 %i.p, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.07.i.i.i.i.i, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.j
  br i1 %i.s, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !102

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.m, align 8, !tbaa !1705
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1700 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load i32, ptr %i.x, align 8, !tbaa !1704 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 0, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.u, ptr %i.z, align 8, !tbaa !1698
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !1715, !nonnull !599, !align !600
  %i.ac = load <2 x ptr>, ptr %i.v, align 8, !tbaa !672
  store <2 x ptr> %i.ac, ptr %i.aa, align 8, !tbaa !672
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1608 ; 3 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !1474
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %2, ptr %i.ag, align 8, !tbaa !1682
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1463 ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !1452 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sdiv exact i64 %i.ao, 48                ; 7 uses
  %i.aq = icmp ugt i64 %i.ap, 576460752303423487
  br i1 %i.aq, label %bb.d, label %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.142) #37
  unreachable

_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i, label %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i

_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.ar = shl nuw nsw i64 %i.ap, 4
  %i.as = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #36 ; 4 uses
  store ptr %i.as, ptr %i.ah, align 8, !tbaa !1683
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.ap
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr %i.at, ptr %i.au, align 8, !tbaa !1684
  %xtraiter = and i64 %i.ap, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.as, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i ] ; 3 uses
  %.057.i.i.i.i.i.i.prol = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ap, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i ]
  store ptr null, ptr %.08.i.i.i.i.i.i.prol, align 8, !tbaa !1686
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.av, align 8, !tbaa !1687
  %i.aw = add nsw i64 %.057.i.i.i.i.i.i.prol, -1  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !4047

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.i.unr = phi ptr [ %i.as, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.i.unr = phi i64 [ %i.ap, %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ay = icmp ult i64 %i.ap, 8
  br i1 %i.ay, label %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i.i ], [ %.057.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !1686
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.az, align 8, !tbaa !1687
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.ba, align 8, !tbaa !1686
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 24
  store i32 0, ptr %i.bb, align 8, !tbaa !1687
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.bc, align 8, !tbaa !1686
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 40
  store i32 0, ptr %i.bd, align 8, !tbaa !1687
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.be, align 8, !tbaa !1686
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 56
  store i32 0, ptr %i.bf, align 8, !tbaa !1687
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 64
  store ptr null, ptr %i.bg, align 8, !tbaa !1686
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 72
  store i32 0, ptr %i.bh, align 8, !tbaa !1687
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 80
  store ptr null, ptr %i.bi, align 8, !tbaa !1686
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 88
  store i32 0, ptr %i.bj, align 8, !tbaa !1687
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 96
  store ptr null, ptr %i.bk, align 8, !tbaa !1686
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 104
  store i32 0, ptr %i.bl, align 8, !tbaa !1687
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 112
  store ptr null, ptr %i.bm, align 8, !tbaa !1686
  %i.bn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 120
  store i32 0, ptr %i.bn, align 8, !tbaa !1687
  %i.bo = add nsw i64 %.057.i.i.i.i.i.i, -8       ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i.i.i.i.7, label %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !100

_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bp, %.lr.ph.i.i.i.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.bq, align 8, !tbaa !1689
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bt = and i32 %i.y, 128
  %.not.i = icmp eq i32 %i.bt, 0
  %i.bu = and i32 %i.y, -6
  %spec.select = select i1 %.not.i, i32 %i.y, i32 %i.bu
  store i32 %spec.select, ptr %i.bs, align 8, !tbaa !1638
  store i64 %1, ptr %i.br, align 8, !tbaa !1702
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.u, ptr %i.bv, align 8, !tbaa !1700
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 116 ; 2 uses
  store i8 0, ptr %i.bw, align 4, !tbaa !1701
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 104
  store ptr null, ptr %i.bx, align 8, !tbaa !614
  %i.by = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(117) %3, ptr noundef nonnull align 8 dereferenceable(24) %2), !inline_history !4048 ; 0 uses
  %i.bz = load i64, ptr %i.br, align 8, !tbaa !1702
  call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 noundef zeroext 1, i64 noundef %i.bz), !inline_history !4048
  %i.ca = load i8, ptr %i.bw, align 4, !tbaa !1701, !range !613, !noundef !599
  %i.cb = trunc nuw i8 %i.ca to i1                ; 2 uses
  br i1 %i.cb, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i
  %i.cc = load ptr, ptr %i.m, align 8, !tbaa !1705 ; 2 uses
  %i.cd = load ptr, ptr %2, align 8, !tbaa !959   ; 5 uses
  %.not = icmp eq ptr %i.cc, %i.cd
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 2 uses
  %i.ch = sdiv exact i64 %i.cg, 24                ; 3 uses
  %xtraiter25 = and i64 %i.ch, 1
  %i.ci = icmp eq i64 %i.cg, 24
  br i1 %i.ci, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ch, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.lr.ph.preheader.new
  %.010 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.da, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.g ]
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %.010 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !955, !range !613, !noundef !599
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.e, label %.lr.ph.1

bb.e:                                             ; preds = %.lr.ph
  %i.cn = load ptr, ptr %0, align 8, !tbaa !959
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %.010 ; 2 uses
  %i.cp = load <2 x ptr>, ptr %i.cj, align 8, !tbaa !614
  store <2 x ptr> %i.cp, ptr %i.co, align 8, !tbaa !614
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i8 1, ptr %i.cq, align 8, !tbaa !955
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.e
  %i.cr = or disjoint i64 %.010, 1                ; 2 uses
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %i.cr ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !955, !range !613, !noundef !599
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.1
  %i.cw = load ptr, ptr %0, align 8, !tbaa !959
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %i.cr ; 2 uses
  %i.cy = load <2 x ptr>, ptr %i.cs, align 8, !tbaa !614
  store <2 x ptr> %i.cy, ptr %i.cx, align 8, !tbaa !614
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i8 1, ptr %i.cz, align 8, !tbaa !955
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.1
  %i.da = add nuw i64 %.010, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !4049

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.g
  %lcmp.mod26.not = icmp eq i64 %xtraiter25, 0
  br i1 %lcmp.mod26.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.010.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.da, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod27 = trunc i64 %i.ch to i1
  call void @llvm.assume(i1 %lcmp.mod27)
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %.010.epil.init ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !955, !range !613, !noundef !599
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.lr.ph.epil.preheader
  %i.df = load ptr, ptr %0, align 8, !tbaa !959
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %.010.epil.init ; 2 uses
  %i.dh = load <2 x ptr>, ptr %i.db, align 8, !tbaa !614
  store <2 x ptr> %i.dh, ptr %i.dg, align 8, !tbaa !614
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store i8 1, ptr %i.di, align 8, !tbaa !955
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.h, %.lr.ph.epil.preheader, %.preheader, %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i
  %i.dj = load ptr, ptr %i.ah, align 8, !tbaa !1683 ; 3 uses
  %.not.i.i.i.i8 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i8, label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !1684
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dj to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.do) #34
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i:    ; preds = %bb.i, %.loopexit
  %i.dp = load ptr, ptr %3, align 8, !tbaa !959   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !960
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.du) #34
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev.exit

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.dv = load ptr, ptr %2, align 8, !tbaa !959   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev.exit
  %i.dw = load ptr, ptr %i.o, align 8, !tbaa !960
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.dv to i64
  %i.dz = sub i64 %i.dx, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.dz) #34
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret i1 %i.cb
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt24__throw_invalid_argumentPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #21

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local ptr @_ZNKSt6ranges16__stable_sort_fnclITkSt22random_access_iteratorN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS4_6X86_64EEEvRNS4_7ContextIT_EEE5EntrySt6vectorISB_SaISB_EEEETkSt12sentinel_forIS8_ESG_NS_4lessEMSB_lQ8sortableIS8_T1_T2_EEES8_S8_T0_SK_SL_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, ptr %2, i64 %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"struct.std::ranges::less", align 1 ; 3 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  store i64 %3, ptr %i.a, align 8, !tbaa !177
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEEZNSt6ranges8__detail16__make_comp_projINSF_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSL_E_EvS6_S6_SL_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 4                   ; 2 uses
  %i.g = add nsw i64 %i.f, 1
  %i.h = sdiv i64 %i.g, 2                         ; 3 uses
  %i.i = icmp sgt i64 %i.f, 0
  br i1 %i.i, label %.lr.ph.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_EC2ESE_l.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %select.unfold.i.i.i.i
  %.010.i.i.i.i = phi i64 [ %i.n, %select.unfold.i.i.i.i ], [ %i.h, %bb.b ] ; 4 uses
  %i.j = shl nuw nsw i64 %.010.i.i.i.i, 4
  %i.k = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.j, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_EC2ESE_l.exit.i.i

select.unfold.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i
  %i.l = icmp eq i64 %.010.i.i.i.i, 1
  %i.m = add nuw nsw i64 %.010.i.i.i.i, 1
end_hunk_4
