Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/catch_amalgamated?download=true
inline.NumInlined: 19374
inline.NumDeleted: 7049
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE17_M_reallocate_mapEmb:bb.a
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPNSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEES7_ET0_T_S9_S8_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !69398
  %i.be = load ptr, ptr %.0, align 8, !tbaa !69397 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !69399
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 504
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !69400
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !69398
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !69397 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !69399
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 504
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !69400
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69398 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69398
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = mul nsw i64 %i.l, 21
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !69422
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !69399
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 24
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !69400
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !69422
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 24
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 768614336404564650
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.593) #58
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !69395
  %i.ag = load ptr, ptr %0, align 8, !tbaa !69396
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
  %i.am = tail call noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #59
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !69423
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !69397
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !69401
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !69442
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !69423
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !69398
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !69397 ; 3 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !69399
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 504
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !69400
  store ptr %i.as, ptr %i.a, align 8, !tbaa !69401
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail17__regex_algo_implIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEEcNS5_12regex_traitsIcEEEEbT_SH_RNS5_13match_resultsISH_T0_EERKNS5_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeENS_20_RegexExecutorPolicyEb(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #3 comdat {
bb.a:
  %7 = alloca %"class.std::__cxx11::sub_match", align 8 ; 4 uses
  %8 = alloca %"class.std::__detail::_Executor", align 8 ; 24 uses
  %9 = alloca %"class.std::__detail::_Executor.1058", align 8 ; 22 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69585 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %0, ptr %i.c, align 8, !tbaa !9357
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !69434
  %i.f = add i64 %i.e, 3
  %i.g = and i64 %i.f, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %7, i8 0, i64 17, i1 false)
  call void @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE14_M_fill_assignEmRKSC_(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(17) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  %i.h = load i32, ptr %3, align 8, !tbaa !23622
  %i.i = and i32 %i.h, 1024
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %._crit_edge86

._crit_edge86:                                    ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !69585
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %5, 1
  %.pre89 = load ptr, ptr %i.a, align 8, !tbaa !69585 ; 6 uses
  br i1 %i.j, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pre89, i64 48
  %i.l = load i8, ptr %i.k, align 8, !tbaa !69480, !range !16139, !noundef !4070
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.s, label %bb.e

bb.e:                                             ; preds = %._crit_edge86, %bb.d
  %i.n = phi ptr [ %.pre, %._crit_edge86 ], [ %.pre89, %bb.d ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #49
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(141) %8, i8 0, i64 32, i1 false)
  store ptr %0, ptr %i.o, align 8, !tbaa !9357
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  store ptr %1, ptr %i.p, align 8, !tbaa !9357
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %3, ptr %i.q, align 8, !tbaa !73647
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr %i.n, ptr %i.r, align 8, !tbaa !69437
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 64
  store ptr %2, ptr %i.s, align 8, !tbaa !69588
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !69425 ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !69414 ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 48                ; 9 uses
  %i.ac = icmp ugt i64 %i.ab, 576460752303423487
  %i.ad = ptrtoint ptr %0 to i64
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.501) #58
  unreachable

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i: ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 80
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.thread.i.i, label %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i

_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.thread.i.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %.pre87 = load ptr, ptr %i.v, align 8, !tbaa !69425
  %.pre88 = load ptr, ptr %i.u, align 8, !tbaa !69414
  %.pre90 = ptrtoint ptr %.pre87 to i64
  %.pre91 = ptrtoint ptr %.pre88 to i64
  %.pre93 = sub i64 %.pre90, %.pre91
  %.pre95 = sdiv exact i64 %.pre93, 48
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i

_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %i.af = shl nuw nsw i64 %i.ab, 4
  %i.ag = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #59 ; 4 uses
  store ptr %i.ag, ptr %i.t, align 8, !tbaa !69591
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ab
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 88
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !69592
  %xtraiter = and i64 %i.ab, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.prol = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ag, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ] ; 3 uses
  %.057.i.i.i.i.i.i.prol = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ab, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ]
  store ptr null, ptr %.08.i.i.i.i.i.i.prol, align 8, !tbaa !21816
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.aj, align 8, !tbaa !69594
  %i.ak = add i64 %.057.i.i.i.i.i.i.prol, -1      ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !73641

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i
  %.lcssa120.unr = phi ptr [ poison, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ], [ %i.al, %.lr.ph.i.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.i.unr = phi ptr [ %i.ag, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ], [ %i.al, %.lr.ph.i.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.i.unr = phi i64 [ %i.ab, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.am = icmp ult i64 %i.ab, 8
  br i1 %i.am, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i.i ], [ %.057.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !21816
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.an, align 8, !tbaa !69594
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.ao, align 8, !tbaa !21816
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 24
  store i32 0, ptr %i.ap, align 8, !tbaa !69594
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.aq, align 8, !tbaa !21816
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 40
  store i32 0, ptr %i.ar, align 8, !tbaa !69594
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.as, align 8, !tbaa !21816
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 56
  store i32 0, ptr %i.at, align 8, !tbaa !69594
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 64
  store ptr null, ptr %i.au, align 8, !tbaa !21816
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 72
  store i32 0, ptr %i.av, align 8, !tbaa !69594
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 80
  store ptr null, ptr %i.aw, align 8, !tbaa !21816
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 88
  store i32 0, ptr %i.ax, align 8, !tbaa !69594
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 96
  store ptr null, ptr %i.ay, align 8, !tbaa !21816
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 104
  store i32 0, ptr %i.az, align 8, !tbaa !69594
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 112
  store ptr null, ptr %i.ba, align 8, !tbaa !21816
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 120
  store i32 0, ptr %i.bb, align 8, !tbaa !69594
  %i.bc = add i64 %.057.i.i.i.i.i.i, -8           ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i.i.i.i.7, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3585

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.thread.i.i
  %.pre-phi96 = phi i64 [ %.pre95, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.thread.i.i ], [ %i.ab, %.lr.ph.i.i.i.i.i.i ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.thread.i.i ], [ %.lcssa120.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bd, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.ae, align 8, !tbaa !69595
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !69411
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.be, i8 0, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 120 ; 2 uses
  %i.bi = call noalias noundef nonnull ptr @_Znam(i64 noundef %.pre-phi96) #59 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bi, i8 0, i64 %.pre-phi96, i1 false)
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !69602
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 128
  store i64 %i.bg, ptr %i.bj, align 8, !tbaa !73648
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 136 ; 3 uses
  %i.bl = and i32 %4, 128
  %.not.i59 = icmp eq i32 %i.bl, 0
  %i.bm = and i32 %4, -6
  %spec.select = select i1 %.not.i59, i32 %4, i32 %i.bm
  store i32 %spec.select, ptr %i.bk, align 8, !tbaa !69604
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store i64 %i.ad, ptr %i.bn, align 8, !tbaa !9357
  br i1 %6, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i
  %i.bo = call noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %8, i8 noundef zeroext 0), !inline_history !73642
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_searchEv.exit

bb.h:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i
  %i.bp = call noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %8, i8 noundef zeroext 1), !inline_history !73643
  br i1 %i.bp, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_searchEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = load i32, ptr %i.bk, align 8, !tbaa !69612 ; 2 uses
  %i.br = and i32 %i.bq, 64
  %.not.i60 = icmp eq i32 %i.br, 0
  br i1 %.not.i60, label %bb.j, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_searchEv.exit

bb.j:                                             ; preds = %bb.i
  %i.bs = or i32 %i.bq, 128
  store i32 %i.bs, ptr %i.bk, align 8, !tbaa !69604
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.bt = load ptr, ptr %i.o, align 8, !tbaa !9357 ; 2 uses
  %i.bu = load ptr, ptr %i.p, align 8, !tbaa !9357
  %.not3.i.not.not = icmp ne ptr %i.bt, %i.bu     ; 3 uses
  br i1 %.not3.i.not.not, label %bb.l, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_searchEv.exit

bb.l:                                             ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 1 ; 2 uses
  store ptr %i.bv, ptr %i.o, align 8, !tbaa !21816
  %.cast.i = ptrtoint ptr %i.bv to i64
  store i64 %.cast.i, ptr %i.bn, align 8, !tbaa !9357
  %i.bw = call noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %8, i8 noundef zeroext 1), !inline_history !73643
  br i1 %i.bw, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_searchEv.exit, label %bb.k, !llvm.loop !73644

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_searchEv.exit: ; preds = %bb.l, %bb.k, %bb.i, %bb.h, %bb.g
  %.058.in = phi i1 [ %i.bo, %bb.g ], [ false, %bb.i ], [ true, %bb.h ], [ %.not3.i.not.not, %bb.k ], [ %.not3.i.not.not, %bb.l ]
  %i.bx = load ptr, ptr %i.bh, align 8, !tbaa !69602 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_searchEv.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bx) #60
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_searchEv.exit
  %i.bz = load ptr, ptr %i.be, align 8, !tbaa !69613 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !69614 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.bz, %i.cb
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.cj, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i ], [ %i.bz, %bb.n ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !23615 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !23616
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ci) #60
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.o, %.lr.ph.i.i.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i61 = icmp eq ptr %i.cj, %i.cb
  br i1 %.not.i.i.i.i.i61, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3586

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.be, align 8, !tbaa !69613
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exitthread-pre-split.i.i.i, %bb.n
  %i.ck = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exitthread-pre-split.i.i.i ], [ %i.bz, %bb.n ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exit.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !69615
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cp) #60
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i: ; preds = %bb.p, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exit.i.i.i
  %i.cq = load ptr, ptr %i.t, align 8, !tbaa !69591 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !69592
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cv) #60
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i: ; preds = %bb.q, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.cw = load ptr, ptr %8, align 8, !tbaa !23615 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !23616
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = sub i64 %i.cz, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.db) #60
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  br i1 %.058.in, label %bb.aa, label %bb.ag

bb.s:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #49
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(117) %9, i8 0, i64 32, i1 false)
  store ptr %0, ptr %i.dc, align 8, !tbaa !9357
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr %1, ptr %i.dd, align 8, !tbaa !9357
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %3, ptr %i.de, align 8, !tbaa !73647
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 56
  store ptr %.pre89, ptr %i.df, align 8, !tbaa !69437
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr %2, ptr %i.dg, align 8, !tbaa !69588
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.pre89, i64 56
  %i.dj = getelementptr inbounds nuw i8, ptr %.pre89, i64 64
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !69425 ; 2 uses
  %i.dl = load ptr, ptr %i.di, align 8, !tbaa !69414 ; 2 uses
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = sdiv exact i64 %i.do, 48                ; 7 uses
  %i.dq = icmp ugt i64 %i.dp, 576460752303423487
  %i.dr = ptrtoint ptr %0 to i64
  br i1 %i.dq, label %bb.t, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i62

bb.t:                                             ; preds = %bb.s
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.501) #58
  unreachable

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i62: ; preds = %bb.s
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 80
  %.not.i.i.i.i.i63 = icmp eq ptr %i.dk, %i.dl
  br i1 %.not.i.i.i.i.i63, label %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.thread.i.i72, label %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i64

_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.thread.i.i72: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i69

_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i64: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i62
  %i.dt = shl nuw nsw i64 %i.dp, 4
  %i.du = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dt) #59 ; 4 uses
  store ptr %i.du, ptr %i.dh, align 8, !tbaa !69591
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.dp
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 88
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !69592
  %xtraiter121 = and i64 %i.dp, 7                 ; 2 uses
  %lcmp.mod122.not = icmp eq i64 %xtraiter121, 0
  br i1 %lcmp.mod122.not, label %.lr.ph.i.i.i.i.i.i65.prol.loopexit, label %.lr.ph.i.i.i.i.i.i65.prol

.lr.ph.i.i.i.i.i.i65.prol:                        ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i64, %.lr.ph.i.i.i.i.i.i65.prol
  %.08.i.i.i.i.i.i66.prol = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i.i65.prol ], [ %i.du, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i64 ] ; 3 uses
  %.057.i.i.i.i.i.i67.prol = phi i64 [ %i.dy, %.lr.ph.i.i.i.i.i.i65.prol ], [ %i.dp, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i64 ]
  %prol.iter123 = phi i64 [ %prol.iter123.next, %.lr.ph.i.i.i.i.i.i65.prol ], [ 0, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i64 ]
  store ptr null, ptr %.08.i.i.i.i.i.i66.prol, align 8, !tbaa !21816
  %i.dx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66.prol, i64 8
  store i32 0, ptr %i.dx, align 8, !tbaa !69594
  %i.dy = add i64 %.057.i.i.i.i.i.i67.prol, -1    ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66.prol, i64 16 ; 3 uses
  %prol.iter123.next = add i64 %prol.iter123, 1   ; 2 uses
  %prol.iter123.cmp.not = icmp eq i64 %prol.iter123.next, %xtraiter121
  br i1 %prol.iter123.cmp.not, label %.lr.ph.i.i.i.i.i.i65.prol.loopexit, label %.lr.ph.i.i.i.i.i.i65.prol, !llvm.loop !73645

.lr.ph.i.i.i.i.i.i65.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i65.prol, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i64
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i64 ], [ %i.dz, %.lr.ph.i.i.i.i.i.i65.prol ]
  %.08.i.i.i.i.i.i66.unr = phi ptr [ %i.du, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i64 ], [ %i.dz, %.lr.ph.i.i.i.i.i.i65.prol ]
  %.057.i.i.i.i.i.i67.unr = phi i64 [ %i.dp, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i64 ], [ %i.dy, %.lr.ph.i.i.i.i.i.i65.prol ]
  %i.ea = icmp ult i64 %i.dp, 8
  br i1 %i.ea, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i69, label %.lr.ph.i.i.i.i.i.i65

.lr.ph.i.i.i.i.i.i65:                             ; preds = %.lr.ph.i.i.i.i.i.i65.prol.loopexit, %.lr.ph.i.i.i.i.i.i65
  %.08.i.i.i.i.i.i66 = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i.i65 ], [ %.08.i.i.i.i.i.i66.unr, %.lr.ph.i.i.i.i.i.i65.prol.loopexit ] ; 17 uses
  %.057.i.i.i.i.i.i67 = phi i64 [ %i.eq, %.lr.ph.i.i.i.i.i.i65 ], [ %.057.i.i.i.i.i.i67.unr, %.lr.ph.i.i.i.i.i.i65.prol.loopexit ]
  store ptr null, ptr %.08.i.i.i.i.i.i66, align 8, !tbaa !21816
  %i.eb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66, i64 8
  store i32 0, ptr %i.eb, align 8, !tbaa !69594
  %i.ec = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66, i64 16
  store ptr null, ptr %i.ec, align 8, !tbaa !21816
  %i.ed = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66, i64 24
  store i32 0, ptr %i.ed, align 8, !tbaa !69594
  %i.ee = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66, i64 32
  store ptr null, ptr %i.ee, align 8, !tbaa !21816
  %i.ef = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66, i64 40
  store i32 0, ptr %i.ef, align 8, !tbaa !69594
  %i.eg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66, i64 48
  store ptr null, ptr %i.eg, align 8, !tbaa !21816
  %i.eh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66, i64 56
  store i32 0, ptr %i.eh, align 8, !tbaa !69594
  %i.ei = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66, i64 64
  store ptr null, ptr %i.ei, align 8, !tbaa !21816
  %i.ej = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66, i64 72
  store i32 0, ptr %i.ej, align 8, !tbaa !69594
  %i.ek = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66, i64 80
  store ptr null, ptr %i.ek, align 8, !tbaa !21816
  %i.el = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66, i64 88
  store i32 0, ptr %i.el, align 8, !tbaa !69594
  %i.em = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66, i64 96
  store ptr null, ptr %i.em, align 8, !tbaa !21816
  %i.en = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66, i64 104
  store i32 0, ptr %i.en, align 8, !tbaa !69594
  %i.eo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66, i64 112
  store ptr null, ptr %i.eo, align 8, !tbaa !21816
  %i.ep = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66, i64 120
  store i32 0, ptr %i.ep, align 8, !tbaa !69594
  %i.eq = add i64 %.057.i.i.i.i.i.i67, -8         ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i66, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i68.7 = icmp eq i64 %i.eq, 0
  br i1 %.not.i.i.i.i.i.i68.7, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i69, label %.lr.ph.i.i.i.i.i.i65, !llvm.loop !3585

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i69: ; preds = %.lr.ph.i.i.i.i.i.i65.prol.loopexit, %.lr.ph.i.i.i.i.i.i65, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.thread.i.i72
  %.0.lcssa.i.i.i.i.i.i70 = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.thread.i.i72 ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i65.prol.loopexit ], [ %i.er, %.lr.ph.i.i.i.i.i.i65 ]
  store ptr %.0.lcssa.i.i.i.i.i.i70, ptr %i.ds, align 8, !tbaa !69595
  %i.es = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.pre89, i64 32
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !69411
  store i64 %i.eu, ptr %i.es, align 8, !tbaa !73649
  %i.ev = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 2 uses
  store ptr null, ptr %i.ev, align 8, !tbaa !21816
  %i.ew = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.ex = and i32 %4, 128
  %.not.i71 = icmp eq i32 %i.ex, 0
  %i.ey = and i32 %4, -6
  %spec.select119 = select i1 %.not.i71, i32 %4, i32 %i.ey
  store i32 %spec.select119, ptr %i.ew, align 8, !tbaa !69604
  br i1 %6, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i69
  %i.ez = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %i.dr, ptr %i.ez, align 8, !tbaa !9357
  %i.fa = getelementptr inbounds nuw i8, ptr %9, i64 116 ; 2 uses
  store i8 0, ptr %i.fa, align 4, !tbaa !69618
  store i64 0, ptr %i.ev, align 8, !tbaa !9357
  %i.fb = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(117) %9, ptr noundef nonnull align 8 dereferenceable(24) %2), !inline_history !73646 ; 0 uses
  %i.fc = load i64, ptr %i.es, align 8, !tbaa !69619
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %9, i8 noundef zeroext 0, i64 noundef %i.fc), !inline_history !73646
  %i.fd = load i8, ptr %i.fa, align 4, !tbaa !69618, !range !16139, !noundef !4070
  %i.fe = trunc nuw i8 %i.fd to i1
  br label %bb.w

bb.v:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i69
  %i.ff = call noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE9_M_searchEv(ptr noundef nonnull align 8 dereferenceable(117) %9)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1.in = phi i1 [ %i.fe, %bb.u ], [ %i.ff, %bb.v ]
  %i.fg = load ptr, ptr %i.dh, align 8, !tbaa !69591 ; 3 uses
  %.not.i.i.i.i73 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i.i73, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i74, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fh = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !69592
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = ptrtoint ptr %i.fg to i64
  %i.fl = sub i64 %i.fj, %i.fk
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.fl) #60
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i74

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i74: ; preds = %bb.x, %bb.w
  %i.fm = load ptr, ptr %9, align 8, !tbaa !23615 ; 3 uses
  %.not.i.i.i1.i75 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i1.i75, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i74
  %i.fn = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !23616
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = ptrtoint ptr %i.fm to i64
  %i.fr = sub i64 %i.fp, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef %i.fr) #60
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #49
  br i1 %.1.in, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, %bb.z
  %i.fs = load ptr, ptr %2, align 8, !tbaa !69620 ; 6 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !69620 ; 3 uses
  %i.fv = icmp eq ptr %i.fs, %i.fu
  br i1 %i.fv, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa
  %.cast = ptrtoint ptr %1 to i64
  br label %bb.ab

._crit_edge:                                      ; preds = %bb.ad, %bb.aa
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = ptrtoint ptr %i.fs to i64
  %i.fy = sub i64 %i.fw, %i.fx
  %i.fz = getelementptr i8, ptr %i.fs, i64 %i.fy  ; 10 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 -48    ; 2 uses
  %i.gb = getelementptr i8, ptr %i.fz, i64 -24    ; 2 uses
  br i1 %6, label %bb.ae, label %bb.af

bb.ab:                                            ; preds = %.lr.ph, %bb.ad
  %.sroa.076.084 = phi ptr [ %i.fs, %.lr.ph ], [ %i.gg, %bb.ad ] ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.076.084, i64 16
  %i.gd = load i8, ptr %i.gc, align 8, !tbaa !69623, !range !16139, !noundef !4070
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.076.084, i64 8
  store ptr %1, ptr %i.gf, align 8, !tbaa !9357
  store i64 %.cast, ptr %.sroa.076.084, align 8, !tbaa !9357
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.076.084, i64 24 ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.fu
  br i1 %i.gh, label %._crit_edge, label %bb.ab

bb.ae:                                            ; preds = %._crit_edge
  %i.gi = getelementptr i8, ptr %i.fz, i64 -32
  store i8 0, ptr %i.gi, align 8, !tbaa !69623
  store ptr %0, ptr %i.ga, align 8, !tbaa !9357
  %i.gj = getelementptr i8, ptr %i.fz, i64 -40
  store ptr %0, ptr %i.gj, align 8, !tbaa !9357
  %i.gk = getelementptr i8, ptr %i.fz, i64 -8
  store i8 0, ptr %i.gk, align 8, !tbaa !69623
  store ptr %1, ptr %i.gb, align 8, !tbaa !9357
  %i.gl = getelementptr i8, ptr %i.fz, i64 -16
  store ptr %1, ptr %i.gl, align 8, !tbaa !9357
  br label %bb.ah

bb.af:                                            ; preds = %._crit_edge
  store ptr %0, ptr %i.ga, align 8, !tbaa !9357
  %i.gm = getelementptr i8, ptr %i.fz, i64 -40
  %i.gn = load i64, ptr %i.fs, align 8, !tbaa !9357 ; 2 uses
  store i64 %i.gn, ptr %i.gm, align 8, !tbaa !9357
  %.cast81 = inttoptr i64 %i.gn to ptr
  %i.go = icmp ne ptr %0, %.cast81
  %i.gp = getelementptr i8, ptr %i.fz, i64 -32
  %i.gq = zext i1 %i.go to i8
  store i8 %i.gq, ptr %i.gp, align 8, !tbaa !69623
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !9357 ; 2 uses
  store i64 %i.gs, ptr %i.gb, align 8, !tbaa !9357
  %i.gt = getelementptr i8, ptr %i.fz, i64 -16
  store ptr %1, ptr %i.gt, align 8, !tbaa !9357
  %.cast82 = inttoptr i64 %i.gs to ptr
  %i.gu = icmp ne ptr %1, %.cast82
  %i.gv = getelementptr i8, ptr %i.fz, i64 -8
  %i.gw = zext i1 %i.gu to i8
  store i8 %i.gw, ptr %i.gv, align 8, !tbaa !69623
  br label %bb.ah

bb.ag:                                            ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, %bb.z
  call void @_ZNSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE25_M_establish_failed_matchESA_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %1)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.ae ], [ true, %bb.af ], [ false, %bb.ag ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE9_M_searchEv(ptr noundef nonnull align 8 dereferenceable(117) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !9357
  store i64 %i.c, ptr %i.b, align 8, !tbaa !9357
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 4 uses
  store i8 0, ptr %i.d, align 4, !tbaa !69618
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !9357
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !69624, !nonnull !4070, !align !19314
  %i.i = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(117) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h), !inline_history !73650 ; 0 uses
  %i.j = load i64, ptr %i.e, align 8, !tbaa !69619
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext 1, i64 noundef %i.j), !inline_history !73650
  %i.k = load i8, ptr %i.d, align 4, !tbaa !69618, !range !16139, !noundef !4070
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !69625 ; 2 uses
  %i.o = and i32 %i.n, 64
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.p = or i32 %i.n, 128
  store i32 %i.p, ptr %i.m, align 8, !tbaa !69604
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !9357 ; 2 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !9357
  %.not3.not = icmp ne ptr %i.r, %i.s             ; 3 uses
  br i1 %.not3.not, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !21816
  %.cast = ptrtoint ptr %i.t to i64
  store i64 %.cast, ptr %i.b, align 8, !tbaa !9357
  store i8 0, ptr %i.d, align 4, !tbaa !69618
  store i64 0, ptr %i.f, align 8, !tbaa !9357
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !69624, !nonnull !4070, !align !19314
  %i.v = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(117) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.u), !inline_history !73650 ; 0 uses
  %i.w = load i64, ptr %i.e, align 8, !tbaa !69619
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext 1, i64 noundef %i.w), !inline_history !73650
  %i.x = load i8, ptr %i.d, align 4, !tbaa !69618, !range !16139, !noundef !4070
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.loopexit, label %bb.d, !llvm.loop !73651

.loopexit:                                        ; preds = %bb.d, %bb.e, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ %.not3.not, %bb.e ], [ %.not3.not, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE25_M_establish_failed_matchESA_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.cast = ptrtoint ptr %1 to i64                 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23616
  %i.c = load ptr, ptr %0, align 8, !tbaa !23615  ; 15 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ult i64 %i.g, 3
  br i1 %i.h, label %.lr.ph.i.i.i.i.i.i.i, label %bb.c

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.a
  %i.i = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #59 ; 12 uses
  store i64 %.cast, ptr %i.i, align 8
  %.sroa.8.0..09.i.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %1, ptr %.sroa.8.0..09.i.i.i.i.i.i.i.sroa_idx, align 8
  %.sroa.11.0..09.i.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i8 0, ptr %.sroa.11.0..09.i.i.i.i.i.i.i.sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.cast, ptr %i.j, align 8
  %.sroa.8.0..09.i.i.i.i.i.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %1, ptr %.sroa.8.0..09.i.i.i.i.i.i.i.sroa_idx.1, align 8
  %.sroa.11.0..09.i.i.i.i.i.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i8 0, ptr %.sroa.11.0..09.i.i.i.i.i.i.i.sroa_idx.1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 %.cast, ptr %i.k, align 8
  %.sroa.8.0..09.i.i.i.i.i.i.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store ptr %1, ptr %.sroa.8.0..09.i.i.i.i.i.i.i.sroa_idx.2, align 8
  %.sroa.11.0..09.i.i.i.i.i.i.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i8 0, ptr %.sroa.11.0..09.i.i.i.i.i.i.i.sroa_idx.2, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %0, align 8, !tbaa !23615
  store ptr %i.l, ptr %i.n, align 8, !tbaa !69626
  store ptr %i.m, ptr %i.a, align 8, !tbaa !23616
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE14_M_fill_assignEmRKSC_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #60
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE14_M_fill_assignEmRKSC_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !69626 ; 5 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.e
  %i.s = sdiv exact i64 %i.r, 24                  ; 2 uses
  %i.t = icmp ult i64 %i.s, 3
  br i1 %i.t, label %bb.d, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit.i

bb.d:                                             ; preds = %bb.c
  %.not5.i.i.i.i.i = icmp eq ptr %i.c, %i.p
  br i1 %.not5.i.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.d ] ; 4 uses
  store i64 %.cast, ptr %.06.i.i.i.i.i, align 8, !tbaa !9357
  %i.u = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  store i64 %.cast, ptr %i.u, align 8, !tbaa !9357
  %i.v = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  store i8 0, ptr %i.v, align 8, !tbaa !69623
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i11.i = icmp eq ptr %i.w, %i.p
  br i1 %.not.i.i.i.i11.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3587

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %i.x = sub nuw nsw i64 3, %i.s
  br label %.lr.ph.i.i.i.i12.i.prol

.lr.ph.i.i.i.i12.i.prol:                          ; preds = %.lr.ph.i.i.i.i12.i.prol, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit.i
  %.09.i.i.i.i.i.prol = phi ptr [ %i.y, %.lr.ph.i.i.i.i12.i.prol ], [ %i.p, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit.i ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i12.i.prol ], [ 0, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit.i ]
  store i64 %.cast, ptr %.09.i.i.i.i.i.prol, align 8
  %.sroa.8.0..09.i.i.i.i.i.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.prol, i64 8
  store ptr %1, ptr %.sroa.8.0..09.i.i.i.i.i.sroa_idx.prol, align 8
  %.sroa.11.0..09.i.i.i.i.i.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.prol, i64 16
  store i8 0, ptr %.sroa.11.0..09.i.i.i.i.i.sroa_idx.prol, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.prol, i64 24 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %i.x
  br i1 %prol.iter.cmp.not, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_SC_ET_SE_T0_RKT1_RSaIT2_E.exit.i, label %.lr.ph.i.i.i.i12.i.prol, !llvm.loop !73652

_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_SC_ET_SE_T0_RKT1_RSaIT2_E.exit.i: ; preds = %.lr.ph.i.i.i.i12.i.prol
  store ptr %i.y, ptr %i.o, align 8, !tbaa !69626
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE14_M_fill_assignEmRKSC_.exit

_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit.i: ; preds = %bb.c
  store i64 %.cast, ptr %i.c, align 8, !tbaa !9357
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.cast, ptr %i.z, align 8, !tbaa !9357
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 0, ptr %i.aa, align 8, !tbaa !69623
  %.06.i.i.i.i16.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.cast, ptr %.06.i.i.i.i16.i.ptr.1, align 8, !tbaa !9357
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.cast, ptr %i.ab, align 8, !tbaa !9357
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i8 0, ptr %i.ac, align 8, !tbaa !69623
  %.06.i.i.i.i16.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %.cast, ptr %.06.i.i.i.i16.i.ptr.2, align 8, !tbaa !9357
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.cast, ptr %i.ad, align 8, !tbaa !9357
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i8 0, ptr %i.ae, align 8, !tbaa !69623
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.af
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE14_M_fill_assignEmRKSC_.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit.i
  store ptr %i.af, ptr %i.o, align 8, !tbaa !69626
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE14_M_fill_assignEmRKSC_.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE14_M_fill_assignEmRKSC_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.b, %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_SC_ET_SE_T0_RKT1_RSaIT2_E.exit.i, %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE14_M_fill_assignEmRKSC_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(17) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23616
  %i.c = load ptr, ptr %0, align 8, !tbaa !23615  ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %1, 384307168202282325
  br i1 %i.i, label %bb.c, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.501) #58
  unreachable

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i: ; preds = %bb.b
  %i.j = mul nuw nsw i64 %1, 24
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #59 ; 4 uses
  %xtraiter29 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod30.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod30.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i, %.lr.ph.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.prol = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i ] ; 2 uses
  %.068.i.i.i.i.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ], [ %1, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i ]
  %prol.iter31 = phi i64 [ %prol.iter31.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.l = add i64 %.068.i.i.i.i.i.i.prol, -1       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter31.next = add i64 %prol.iter31, 1     ; 2 uses
  %prol.iter31.cmp.not = icmp eq i64 %prol.iter31.next, %xtraiter29
  br i1 %prol.iter31.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !73653

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
  %i.r = add i64 %.068.i.i.i.i.i.i, -4            ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.3, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSC_RKSD_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !73654

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSC_RKSD_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.s, %.lr.ph.i.i.i.i.i.i ]
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %0, align 8, !tbaa !23615
  store ptr %.lcssa, ptr %i.u, align 8, !tbaa !69626
  store ptr %i.t, ptr %i.a, align 8, !tbaa !23616
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSC_RKSD_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #60
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !69626 ; 6 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.e
  %i.z = sdiv exact i64 %i.y, 24                  ; 3 uses
  %i.aa = icmp ugt i64 %1, %i.z
  br i1 %i.aa, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not5.i.i.i.i = icmp eq ptr %i.c, %i.w
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i.i.i.i = load i8, ptr %i.ac, align 8, !tbaa !69623, !range !16139
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %i.ah, %bb.g ] ; 4 uses
  %i.ad = load i64, ptr %2, align 8, !tbaa !9357
  store i64 %i.ad, ptr %.06.i.i.i.i, align 8, !tbaa !9357
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.af = load i64, ptr %i.ab, align 8, !tbaa !9357
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !9357
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16
  store i8 %.pre.i.i.i.i, ptr %i.ag, align 8, !tbaa !69623
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.ah, %i.w
  br i1 %.not.i.i.i.i11, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit, label %bb.g, !llvm.loop !3587

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit: ; preds = %bb.g, %bb.f
  %i.ai = sub i64 %1, %i.z                        ; 3 uses
  %xtraiter = and i64 %i.ai, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i12.prol.loopexit, label %.lr.ph.i.i.i.i12.prol

.lr.ph.i.i.i.i12.prol:                            ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit, %.lr.ph.i.i.i.i12.prol
  %.09.i.i.i.i.prol = phi ptr [ %i.ak, %.lr.ph.i.i.i.i12.prol ], [ %i.w, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit ] ; 2 uses
  %.068.i.i.i.i.prol = phi i64 [ %i.aj, %.lr.ph.i.i.i.i12.prol ], [ %i.ai, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i12.prol ], [ 0, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.aj = add i64 %.068.i.i.i.i.prol, -1          ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i12.prol.loopexit, label %.lr.ph.i.i.i.i12.prol, !llvm.loop !73655

.lr.ph.i.i.i.i12.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i12.prol, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit
  %.lcssa28.unr = phi ptr [ poison, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit ], [ %i.ak, %.lr.ph.i.i.i.i12.prol ]
  %.09.i.i.i.i.unr = phi ptr [ %i.w, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit ], [ %i.ak, %.lr.ph.i.i.i.i12.prol ]
  %.068.i.i.i.i.unr = phi i64 [ %i.ai, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit ], [ %i.aj, %.lr.ph.i.i.i.i12.prol ]
  %i.al = sub i64 %i.z, %1
  %i.am = icmp ugt i64 %i.al, -4
  br i1 %i.am, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_SC_ET_SE_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %.lr.ph.i.i.i.i12.prol.loopexit, %.lr.ph.i.i.i.i12
  %.09.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i12 ], [ %.09.i.i.i.i.unr, %.lr.ph.i.i.i.i12.prol.loopexit ] ; 5 uses
  %.068.i.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i.i12 ], [ %.068.i.i.i.i.unr, %.lr.ph.i.i.i.i12.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.aq = add i64 %.068.i.i.i.i, -4               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i13.3 = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i.i.i13.3, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_SC_ET_SE_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12, !llvm.loop !73654

_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_SC_ET_SE_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i12, %.lr.ph.i.i.i.i12.prol.loopexit
  %.lcssa28 = phi ptr [ %.lcssa28.unr, %.lr.ph.i.i.i.i12.prol.loopexit ], [ %i.ar, %.lr.ph.i.i.i.i12 ]
  store ptr %.lcssa28, ptr %i.v, align 8, !tbaa !69626
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.as = icmp eq i64 %1, 0
  br i1 %i.as, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit, label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %bb.h
  %.idx.i.i = mul nuw nsw i64 %1, 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i.i.i.i15 = load i8, ptr %i.av, align 8, !tbaa !69623, !range !16139
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i14
  %.06.i.i.i.i16 = phi ptr [ %i.c, %.lr.ph.i.i.i.i14 ], [ %i.ba, %bb.i ] ; 4 uses
  %i.aw = load i64, ptr %2, align 8, !tbaa !9357
  store i64 %i.aw, ptr %.06.i.i.i.i16, align 8, !tbaa !9357
  %i.ax = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 8
  %i.ay = load i64, ptr %i.au, align 8, !tbaa !9357
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !9357
  %i.az = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 16
  store i8 %.pre.i.i.i.i15, ptr %i.az, align 8, !tbaa !69623
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 24 ; 2 uses
  %.not.i.i.i.i17 = icmp eq ptr %i.ba, %i.at
  br i1 %.not.i.i.i.i17, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit, label %bb.i, !llvm.loop !3587

_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit: ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %i.c, %bb.h ], [ %i.at, %bb.i ] ; 2 uses
  %.not.i = icmp eq ptr %i.w, %.0.i.i
  br i1 %.not.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit
  store ptr %.0.i.i, ptr %i.v, align 8, !tbaa !69626
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %bb.j, %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit, %bb.d, %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSC_RKSD_.exit, %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_SC_ET_SE_T0_RKT1_RSaIT2_E.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i64, ptr %i.c, align 8, !tbaa !69627 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69628, !nonnull !4070, !align !19314 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.d, ptr %i.a, align 8, !tbaa !9358
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !69614 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !69615
  %.not.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.h, align 8, !tbaa !69630
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !69626 ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !23615 ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = sdiv exact i64 %i.q, 24
  %i.s = icmp ugt i64 %i.r, 384307168202282325
  br i1 %i.s, label %bb.d, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !9356

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #58
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #59
  br label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.i.i.i.i

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.i.i.i.i: ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %bb.b
  %i.u = phi ptr [ %i.t, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ], [ null, %bb.b ] ; 5 uses
  store ptr %i.u, ptr %i.k, align 8, !tbaa !23615
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !69626
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.w, ptr %i.x, align 8, !tbaa !23616
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !69620 ; 2 uses
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !69620 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZSt12construct_atISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEJRlRKSG_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSM_DpOSN_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.u, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.y, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.07.i.i.i.i.i.i.i.i.i, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.z
  br i1 %i.ad, label %_ZSt12construct_atISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEJRlRKSG_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSM_DpOSN_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !3588

_ZSt12construct_atISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEJRlRKSG_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSM_DpOSN_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_word_boundaryEv:bb.a

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i, %bb.i, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i, %bb.f
  %.1 = phi i32 [ 0, %bb.f ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i ], [ 0, %bb.i ], [ %i.av, %_ZNKSt5ctypeIcE5widenEc.exit.i.i ]
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !9357 ; 2 uses
  %i.ax = load ptr, ptr %i.i, align 8, !tbaa !9357
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  %i.az = load i8, ptr %i.aw, align 1, !tbaa !9325 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !69633, !nonnull !4070, !align !19314
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !69585
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 80 ; 2 uses
  %i.bf = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.bg = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #49
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !69403
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !69406
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bg
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !69408 ; 7 uses
  %.not.not.i.i.i7 = icmp eq ptr %i.bl, null
  br i1 %.not.not.i.i.i7, label %bb.n, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt16__throw_bad_castv() #58
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8: ; preds = %bb.m
  %.sroa.0.0.extract.trunc.i.i9 = trunc i32 %i.bf to i16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !69456
  %i.bo = zext i8 %i.az to i64
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !69458
  %i.br = and i16 %i.bq, %.sroa.0.0.extract.trunc.i.i9
  %.not4.i.i10 = icmp eq i16 %i.br, 0
  br i1 %.not4.i.i10, label %bb.o, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15

bb.o:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8
  %i.bs = and i32 %i.bf, 65536
  %.not.i.i11 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i11, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !21359
  %.not.i.i.i12 = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i12, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 152
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !9325
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i13

bb.r:                                             ; preds = %bb.p
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bl) #49
  %i.bx = load ptr, ptr %i.bl, align 8, !tbaa !3603
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = tail call noundef signext i8 %i.bz(ptr noundef nonnull align 8 dereferenceable(570) %i.bl, i8 noundef signext 95) #49, !call_target !21366, !inline_history !73678
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

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::vector.1043", align 8  ; 12 uses
  %3 = alloca %"class.std::__detail::_Executor", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69626 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !23615  ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.thread, label %bb.b

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.thread: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !23616
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = sdiv exact i64 %i.f, 24
  %i.k = icmp ugt i64 %i.j, 384307168202282325
  br i1 %i.k, label %bb.c, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i, !prof !9356

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #58
  unreachable

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #59 ; 3 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !23615
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !23616
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.07.i.i.i.i.i, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.b
  br i1 %i.r, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3588

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.thread
  %i.s = phi ptr [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.thread ], [ %i.o, %.lr.ph.i.i.i.i.i ]
  %i.t = phi ptr [ %i.g, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.thread ], [ %i.m, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.thread ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.t, align 8, !tbaa !69626
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.05.0.copyload = load ptr, ptr %i.u, align 8, !tbaa !9357 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load i32, ptr %i.x, align 8, !tbaa !69612 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(141) %3, i8 0, i64 32, i1 false)
  store ptr %.sroa.05.0.copyload, ptr %i.z, align 8, !tbaa !9357
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !69633, !nonnull !4070, !align !19314
  %i.ac = load <2 x ptr>, ptr %i.v, align 8, !tbaa !16127
  store <2 x ptr> %i.ac, ptr %i.aa, align 8, !tbaa !16127
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !69585 ; 3 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !69437
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %2, ptr %i.ag, align 8, !tbaa !69588
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !69425 ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !69414 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sdiv exact i64 %i.ao, 48                ; 9 uses
  %i.aq = icmp ugt i64 %i.ap, 576460752303423487
  %i.ar = ptrtoint ptr %.sroa.05.0.copyload to i64
  br i1 %i.aq, label %bb.d, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.501) #58
  unreachable

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 80
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.thread.i.i, label %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i

_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.thread.i.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i

_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %i.at = shl nuw nsw i64 %i.ap, 4
  %i.au = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #59 ; 4 uses
  store ptr %i.au, ptr %i.ah, align 8, !tbaa !69591
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.ap
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !69592
  %xtraiter = and i64 %i.ap, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.prol = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.au, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ] ; 3 uses
  %.057.i.i.i.i.i.i.prol = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ap, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ]
  store ptr null, ptr %.08.i.i.i.i.i.i.prol, align 8, !tbaa !21816
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.ax, align 8, !tbaa !69594
  %i.ay = add i64 %.057.i.i.i.i.i.i.prol, -1      ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !73679

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ], [ %i.az, %.lr.ph.i.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.i.unr = phi ptr [ %i.au, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ], [ %i.az, %.lr.ph.i.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.i.unr = phi i64 [ %i.ap, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ba = icmp ult i64 %i.ap, 8
  br i1 %i.ba, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i.i.i.i = phi i64 [ %i.bq, %.lr.ph.i.i.i.i.i.i ], [ %.057.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !21816
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.bb, align 8, !tbaa !69594
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.bc, align 8, !tbaa !21816
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 24
  store i32 0, ptr %i.bd, align 8, !tbaa !69594
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.be, align 8, !tbaa !21816
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 40
  store i32 0, ptr %i.bf, align 8, !tbaa !69594
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.bg, align 8, !tbaa !21816
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 56
  store i32 0, ptr %i.bh, align 8, !tbaa !69594
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 64
  store ptr null, ptr %i.bi, align 8, !tbaa !21816
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 72
  store i32 0, ptr %i.bj, align 8, !tbaa !69594
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 80
  store ptr null, ptr %i.bk, align 8, !tbaa !21816
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 88
  store i32 0, ptr %i.bl, align 8, !tbaa !69594
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 96
  store ptr null, ptr %i.bm, align 8, !tbaa !21816
  %i.bn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 104
  store i32 0, ptr %i.bn, align 8, !tbaa !69594
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 112
  store ptr null, ptr %i.bo, align 8, !tbaa !21816
  %i.bp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 120
  store i32 0, ptr %i.bp, align 8, !tbaa !69594
  %i.bq = add i64 %.057.i.i.i.i.i.i, -8           ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i.i.i.i.i.7, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3585

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.thread.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.thread.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.br, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.as, align 8, !tbaa !69595
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bs, i8 0, i64 24, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 2 uses
  %i.bu = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ap) #59 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bu, i8 0, i64 %i.ap, i1 false)
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !69602
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.bx = and i32 %i.y, 128
  %.not.i = icmp eq i32 %i.bx, 0
  %i.by = and i32 %i.y, -6
  %spec.select = select i1 %.not.i, i32 %i.y, i32 %i.by
  store i32 %spec.select, ptr %i.bw, align 8, !tbaa !69604
  store i64 %1, ptr %i.bv, align 8, !tbaa !69627
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.ar, ptr %i.bz, align 8, !tbaa !9357
  %i.ca = call noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %3, i8 noundef zeroext 1), !inline_history !73680 ; 2 uses
  br i1 %i.ca, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i
  %i.cb = load ptr, ptr %i.t, align 8, !tbaa !69626 ; 2 uses
  %i.cc = load ptr, ptr %2, align 8, !tbaa !23615 ; 5 uses
  %.not = icmp eq ptr %i.cb, %i.cc
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce                    ; 2 uses
  %i.cg = sdiv exact i64 %i.cf, 24                ; 3 uses
  %xtraiter31 = and i64 %i.cg, 1
  %i.ch = icmp eq i64 %i.cf, 24
  br i1 %i.ch, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.cg, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.lr.ph.preheader.new
  %.013 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.df, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.g ]
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %.013 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !69623, !range !16139, !noundef !4070
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.e, label %.lr.ph.1

bb.e:                                             ; preds = %.lr.ph
  %i.cm = load ptr, ptr %0, align 8, !tbaa !23615
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %.013 ; 3 uses
  %i.co = load i64, ptr %i.ci, align 8, !tbaa !9357
  store i64 %i.co, ptr %i.cn, align 8, !tbaa !9357
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !9357
  store i64 %i.cr, ptr %i.cq, align 8, !tbaa !9357
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store i8 1, ptr %i.cs, align 8, !tbaa !69623
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.e
  %i.ct = or disjoint i64 %.013, 1                ; 2 uses
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.ct ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !69623, !range !16139, !noundef !4070
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.1
  %i.cy = load ptr, ptr %0, align 8, !tbaa !23615
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.cy, i64 %i.ct ; 3 uses
  %i.da = load i64, ptr %i.cu, align 8, !tbaa !9357
  store i64 %i.da, ptr %i.cz, align 8, !tbaa !9357
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !9357
  store i64 %i.dd, ptr %i.dc, align 8, !tbaa !9357
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i8 1, ptr %i.de, align 8, !tbaa !69623
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.1
  %i.df = add nuw i64 %.013, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !73681

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.g
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.013.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.df, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod33 = trunc i64 %i.cg to i1
  call void @llvm.assume(i1 %lcmp.mod33)
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %.013.epil.init ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !69623, !range !16139, !noundef !4070
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.lr.ph.epil.preheader
  %i.dk = load ptr, ptr %0, align 8, !tbaa !23615
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %.013.epil.init ; 3 uses
  %i.dm = load i64, ptr %i.dg, align 8, !tbaa !9357
  store i64 %i.dm, ptr %i.dl, align 8, !tbaa !9357
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !9357
  store i64 %i.dp, ptr %i.do, align 8, !tbaa !9357
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store i8 1, ptr %i.dq, align 8, !tbaa !69623
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.h, %.lr.ph.epil.preheader, %.preheader, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i
  %i.dr = load ptr, ptr %i.bt, align 8, !tbaa !69602 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %i.dr) #60
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit
  %i.dt = load ptr, ptr %i.bs, align 8, !tbaa !69613 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !69614 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.dt, %i.dv
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exit.i.i.i, label %.lr.ph.i.i.i.i.i9

.lr.ph.i.i.i.i.i9:                                ; preds = %bb.j, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ed, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i ], [ %i.dt, %bb.j ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !23615 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i9
  %i.dy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !23616
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dx to i64
  %i.ec = sub i64 %i.ea, %i.eb
  call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.ec) #60
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.k, %.lr.ph.i.i.i.i.i9
  %i.ed = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i10 = icmp eq ptr %i.ed, %i.dv
  br i1 %.not.i.i.i.i.i10, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i9, !llvm.loop !3586

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.bs, align 8, !tbaa !69613
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exitthread-pre-split.i.i.i, %bb.j
  %i.ee = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exitthread-pre-split.i.i.i ], [ %i.dt, %bb.j ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exit.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !69615
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = ptrtoint ptr %i.ee to i64
  %i.ej = sub i64 %i.eh, %i.ei
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ej) #60
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i: ; preds = %bb.l, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exit.i.i.i
  %i.ek = load ptr, ptr %i.ah, align 8, !tbaa !69591 ; 3 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i.i11, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !69592
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.ek to i64
  %i.ep = sub i64 %i.en, %i.eo
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef %i.ep) #60
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i: ; preds = %bb.m, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.eq = load ptr, ptr %3, align 8, !tbaa !23615 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !23616
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = ptrtoint ptr %i.eq to i64
end_hunk_1
begin_hunk_2_@_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_word_boundaryEv:bb.a

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i, %bb.i, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i, %bb.f
  %.1 = phi i32 [ 0, %bb.f ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i ], [ 0, %bb.i ], [ %i.av, %_ZNKSt5ctypeIcE5widenEc.exit.i.i ]
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !9357 ; 2 uses
  %i.ax = load ptr, ptr %i.i, align 8, !tbaa !9357
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit
  %i.az = load i8, ptr %i.aw, align 1, !tbaa !9325 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !69637, !nonnull !4070, !align !19314
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !69585
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 80 ; 2 uses
  %i.bf = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.bg = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #49
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !69403
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !69406
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bg
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !69408 ; 7 uses
  %.not.not.i.i.i7 = icmp eq ptr %i.bl, null
  br i1 %.not.not.i.i.i7, label %bb.n, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt16__throw_bad_castv() #58
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8: ; preds = %bb.m
  %.sroa.0.0.extract.trunc.i.i9 = trunc i32 %i.bf to i16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !69456
  %i.bo = zext i8 %i.az to i64
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !69458
  %i.br = and i16 %i.bq, %.sroa.0.0.extract.trunc.i.i9
  %.not4.i.i10 = icmp eq i16 %i.br, 0
  br i1 %.not4.i.i10, label %bb.o, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15

bb.o:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8
  %i.bs = and i32 %i.bf, 65536
  %.not.i.i11 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i11, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !21359
  %.not.i.i.i12 = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i12, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 152
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !9325
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i13

bb.r:                                             ; preds = %bb.p
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bl) #49
  %i.bx = load ptr, ptr %i.bl, align 8, !tbaa !3603
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = tail call noundef signext i8 %i.bz(ptr noundef nonnull align 8 dereferenceable(570) %i.bl, i8 noundef signext 95) #49, !call_target !21366, !inline_history !73698
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

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::vector.1043", align 8  ; 13 uses
  %3 = alloca %"class.std::__detail::_Executor.1058", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69626 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !23615  ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.thread, label %bb.b

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.thread: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !23616
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = sdiv exact i64 %i.f, 24
  %i.k = icmp ugt i64 %i.j, 384307168202282325
  br i1 %i.k, label %bb.c, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i, !prof !9356

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #58
  unreachable

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #59 ; 3 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !23615
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !23616
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.07.i.i.i.i.i, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.b
  br i1 %i.r, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3588

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.thread
  %i.s = phi ptr [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.thread ], [ %i.o, %.lr.ph.i.i.i.i.i ]
  %i.t = phi ptr [ %i.g, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.thread ], [ %i.m, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.thread ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.t, align 8, !tbaa !69626
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.05.0.copyload = load ptr, ptr %i.u, align 8, !tbaa !9357 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load i32, ptr %i.x, align 8, !tbaa !69625 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 0, i64 24, i1 false)
  store ptr %.sroa.05.0.copyload, ptr %i.z, align 8, !tbaa !9357
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !69637, !nonnull !4070, !align !19314
  %i.ac = load <2 x ptr>, ptr %i.v, align 8, !tbaa !16127
  store <2 x ptr> %i.ac, ptr %i.aa, align 8, !tbaa !16127
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !69585 ; 3 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !69437
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %2, ptr %i.ag, align 8, !tbaa !69588
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !69425 ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !69414 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sdiv exact i64 %i.ao, 48                ; 7 uses
  %i.aq = icmp ugt i64 %i.ap, 576460752303423487
  %i.ar = ptrtoint ptr %.sroa.05.0.copyload to i64
  br i1 %i.aq, label %bb.d, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.501) #58
  unreachable

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 80
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.thread.i.i, label %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i

_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.thread.i.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i

_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %i.at = shl nuw nsw i64 %i.ap, 4
  %i.au = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #59 ; 4 uses
  store ptr %i.au, ptr %i.ah, align 8, !tbaa !69591
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.ap
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !69592
  %xtraiter = and i64 %i.ap, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.prol = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.au, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ] ; 3 uses
  %.057.i.i.i.i.i.i.prol = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ap, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ]
  store ptr null, ptr %.08.i.i.i.i.i.i.prol, align 8, !tbaa !21816
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.ax, align 8, !tbaa !69594
  %i.ay = add i64 %.057.i.i.i.i.i.i.prol, -1      ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !73699

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ], [ %i.az, %.lr.ph.i.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.i.unr = phi ptr [ %i.au, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ], [ %i.az, %.lr.ph.i.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.i.unr = phi i64 [ %i.ap, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ba = icmp ult i64 %i.ap, 8
  br i1 %i.ba, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i.i.i.i = phi i64 [ %i.bq, %.lr.ph.i.i.i.i.i.i ], [ %.057.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !21816
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.bb, align 8, !tbaa !69594
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.bc, align 8, !tbaa !21816
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 24
  store i32 0, ptr %i.bd, align 8, !tbaa !69594
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.be, align 8, !tbaa !21816
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 40
  store i32 0, ptr %i.bf, align 8, !tbaa !69594
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.bg, align 8, !tbaa !21816
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 56
  store i32 0, ptr %i.bh, align 8, !tbaa !69594
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 64
  store ptr null, ptr %i.bi, align 8, !tbaa !21816
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 72
  store i32 0, ptr %i.bj, align 8, !tbaa !69594
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 80
  store ptr null, ptr %i.bk, align 8, !tbaa !21816
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 88
  store i32 0, ptr %i.bl, align 8, !tbaa !69594
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 96
  store ptr null, ptr %i.bm, align 8, !tbaa !21816
  %i.bn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 104
  store i32 0, ptr %i.bn, align 8, !tbaa !69594
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 112
  store ptr null, ptr %i.bo, align 8, !tbaa !21816
  %i.bp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 120
  store i32 0, ptr %i.bp, align 8, !tbaa !69594
  %i.bq = add i64 %.057.i.i.i.i.i.i, -8           ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i.i.i.i.i.7, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3585

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.thread.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.thread.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.br, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.as, align 8, !tbaa !69595
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bv = and i32 %i.y, 128
  %.not.i = icmp eq i32 %i.bv, 0
  %i.bw = and i32 %i.y, -6
  %spec.select = select i1 %.not.i, i32 %i.y, i32 %i.bw
  store i32 %spec.select, ptr %i.bu, align 8, !tbaa !69604
  store i64 %1, ptr %i.bs, align 8, !tbaa !69619
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.ar, ptr %i.bx, align 8, !tbaa !9357
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 116 ; 2 uses
  store i8 0, ptr %i.by, align 4, !tbaa !69618
  store i64 0, ptr %i.bt, align 8, !tbaa !9357
  %i.bz = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(117) %3, ptr noundef nonnull align 8 dereferenceable(24) %2), !inline_history !73700 ; 0 uses
  %i.ca = load i64, ptr %i.bs, align 8, !tbaa !69619
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 noundef zeroext 1, i64 noundef %i.ca), !inline_history !73700
  %i.cb = load i8, ptr %i.by, align 4, !tbaa !69618, !range !16139, !noundef !4070
  %i.cc = trunc nuw i8 %i.cb to i1                ; 2 uses
  br i1 %i.cc, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i
  %i.cd = load ptr, ptr %i.t, align 8, !tbaa !69626 ; 2 uses
  %i.ce = load ptr, ptr %2, align 8, !tbaa !23615 ; 5 uses
  %.not = icmp eq ptr %i.cd, %i.ce
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg                    ; 2 uses
  %i.ci = sdiv exact i64 %i.ch, 24                ; 3 uses
  %xtraiter23 = and i64 %i.ci, 1
  %i.cj = icmp eq i64 %i.ch, 24
  br i1 %i.cj, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ci, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.lr.ph.preheader.new
  %.011 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.dh, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.g ]
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %.011 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !69623, !range !16139, !noundef !4070
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.e, label %.lr.ph.1

bb.e:                                             ; preds = %.lr.ph
  %i.co = load ptr, ptr %0, align 8, !tbaa !23615
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %.011 ; 3 uses
  %i.cq = load i64, ptr %i.ck, align 8, !tbaa !9357
  store i64 %i.cq, ptr %i.cp, align 8, !tbaa !9357
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !9357
  store i64 %i.ct, ptr %i.cs, align 8, !tbaa !9357
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i8 1, ptr %i.cu, align 8, !tbaa !69623
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.e
  %i.cv = or disjoint i64 %.011, 1                ; 2 uses
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %i.cv ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !69623, !range !16139, !noundef !4070
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.1
  %i.da = load ptr, ptr %0, align 8, !tbaa !23615
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.da, i64 %i.cv ; 3 uses
  %i.dc = load i64, ptr %i.cw, align 8, !tbaa !9357
  store i64 %i.dc, ptr %i.db, align 8, !tbaa !9357
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !9357
  store i64 %i.df, ptr %i.de, align 8, !tbaa !9357
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store i8 1, ptr %i.dg, align 8, !tbaa !69623
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.1
  %i.dh = add nuw i64 %.011, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !73701

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.g
  %lcmp.mod24.not = icmp eq i64 %xtraiter23, 0
  br i1 %lcmp.mod24.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.011.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.dh, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.ci to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %.011.epil.init ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !69623, !range !16139, !noundef !4070
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.lr.ph.epil.preheader
  %i.dm = load ptr, ptr %0, align 8, !tbaa !23615
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %.011.epil.init ; 3 uses
  %i.do = load i64, ptr %i.di, align 8, !tbaa !9357
  store i64 %i.do, ptr %i.dn, align 8, !tbaa !9357
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !9357
  store i64 %i.dr, ptr %i.dq, align 8, !tbaa !9357
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store i8 1, ptr %i.ds, align 8, !tbaa !69623
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.h, %.lr.ph.epil.preheader, %.preheader, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i
  %i.dt = load ptr, ptr %i.ah, align 8, !tbaa !69591 ; 3 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i9, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !69592
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.dt to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dy) #60
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i: ; preds = %bb.i, %.loopexit
  %i.dz = load ptr, ptr %3, align 8, !tbaa !23615 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !23616
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.dz to i64
  %i.ee = sub i64 %i.ec, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.ee) #60
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  %i.ef = load ptr, ptr %2, align 8, !tbaa !23615 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit
  %i.eg = load ptr, ptr %i.s, align 8, !tbaa !23616
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = ptrtoint ptr %i.ef to i64
  %i.ej = sub i64 %i.eh, %i.ei
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.ej) #60
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  ret i1 %i.cc
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Catch12TablePrinterD2Ev(ptr noundef nonnull align 8 dead_on_return(53) dereferenceable(53) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9338
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #49
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !9321
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !9324
  store i8 0, ptr %i.d, align 8, !tbaa !9325
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.g = load ptr, ptr %1, align 8, !tbaa !9326   ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.d
  br i1 %i.h, label %_ZN5Catch20ReusableStringStreamD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.i = load i64, ptr %i.d, align 8, !tbaa !9325
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #60
  br label %_ZN5Catch20ReusableStringStreamD2Ev.exit

_ZN5Catch20ReusableStringStreamD2Ev.exit:         ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #49
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !9338 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !3603
  %i.m = getelementptr i8, ptr %i.l, i64 -24
end_hunk_2
