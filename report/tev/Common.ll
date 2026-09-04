Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/Common?download=true
inline.NumInlined: 8078
inline.NumDeleted: 2931
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZN3tev12matchesFuzzyENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_Pm:bb.a
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %1)
          to label %bb.j unwind label %bb.k, !noalias !557

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.q = icmp samesign eq i64 %1, 0
  br i1 %i.q, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, label %.lr.ph.i.i43

.lr.ph.i.i43:                                     ; preds = %bb.j
  %i.r = tail call ptr @__ctype_tolower_loc() #39
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i43
  %.sroa.421.022.i.i = phi ptr [ %0, %.lr.ph.i.i43 ], [ %i.y, %bb.m ] ; 2 uses
  %.val16.val.i.i = load i8, ptr %.sroa.421.022.i.i, align 1, !tbaa !88, !noalias !557
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !104, !noalias !557
  %i.u = sext i8 %.val16.val.i.i to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !91, !noalias !557
  %i.x = trunc i32 %i.w to i8
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 noundef signext %i.x)
          to label %bb.m unwind label %bb.n, !noalias !557

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.421.022.i.i, i64 1 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.p
  br i1 %i.z, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.s, %bb.k ], [ %i.aa, %bb.n ]
  %i.ab = load i8, ptr %6, align 8, !noalias !557
  %i.ac = trunc i8 %i.ab to i1
  br i1 %i.ac, label %bb.p, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit19.i.i

bb.p:                                             ; preds = %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !88, !noalias !557
  %i.af = load i64, ptr %6, align 8, !noalias !557
  %i.ag = and i64 %i.af, -2
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ag) #36, !noalias !557
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit19.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit19.i.i: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35, !noalias !557
  br label %.body

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.m, %bb.j
  %.sroa.090.0.copyload = load i64, ptr %6, align 8 ; 6 uses
  %.sroa.993.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.993.0.copyload = load i64, ptr %.sroa.993.0..sroa_idx, align 8 ; 2 uses
  %.sroa.996.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.996.0.copyload = load ptr, ptr %.sroa.996.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35, !noalias !557
  store i64 %.sroa.090.0.copyload, ptr %7, align 8
  %.sroa.993.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.993.0.copyload, ptr %.sroa.993.0..sroa_idx94, align 8
  %.sroa.996.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.sroa.996.0.copyload, ptr %.sroa.996.0..sroa_idx97, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35, !noalias !558
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !558
  %i.ah = trunc i64 %.sroa.090.0.copyload to i1   ; 2 uses
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %3)
          to label %.lr.ph.i.i46 unwind label %bb.q, !noalias !558

.lr.ph.i.i46:                                     ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.ai = tail call ptr @__ctype_tolower_loc() #39
  br label %bb.r

bb.q:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.r:                                             ; preds = %bb.s, %.lr.ph.i.i46
  %.sroa.421.022.i.i47 = phi ptr [ %2, %.lr.ph.i.i46 ], [ %i.ap, %bb.s ] ; 2 uses
  %.val16.val.i.i48 = load i8, ptr %.sroa.421.022.i.i47, align 1, !tbaa !88, !noalias !558
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !104, !noalias !558
  %i.al = sext i8 %.val16.val.i.i48 to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !91, !noalias !558
  %i.ao = trunc i32 %i.an to i8
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 noundef signext %i.ao)
          to label %bb.s unwind label %bb.t, !noalias !558

bb.s:                                             ; preds = %bb.r
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.421.022.i.i47, i64 1 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.d
  br i1 %i.aq, label %bb.w, label %bb.r

bb.t:                                             ; preds = %bb.r
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %.pn.pn.pn.pn.i.i44 = phi { ptr, i32 } [ %i.aj, %bb.q ], [ %i.ar, %bb.t ]
  %i.as = load i8, ptr %5, align 8, !noalias !558
  %i.at = trunc i8 %i.as to i1
  br i1 %i.at, label %bb.v, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit19.i.i45

bb.v:                                             ; preds = %bb.u
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !88, !noalias !558
  %i.aw = load i64, ptr %5, align 8, !noalias !558
  %i.ax = and i64 %i.aw, -2
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ax) #36, !noalias !558
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit19.i.i45

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit19.i.i45: ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35, !noalias !558
  br label %.body

bb.w:                                             ; preds = %bb.s
  %.sroa.070.0.copyload = load i64, ptr %5, align 8 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  %.sroa.975.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.975.0.copyload = load ptr, ptr %.sroa.975.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35, !noalias !558
  %i.ay = load i8, ptr %8, align 8
  %i.az = trunc i8 %i.ay to i1
  br i1 %i.az, label %bb.x, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit53

bb.x:                                             ; preds = %bb.w
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !88
  %i.bc = load i64, ptr %8, align 8
  %i.bd = and i64 %i.bc, -2
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bd) #36
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit53

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit53: ; preds = %bb.x, %bb.w
  store i64 %.sroa.070.0.copyload, ptr %8, align 8
  %.sroa.9.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa_idx73, align 8
  %.sroa.975.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %.sroa.975.0.copyload, ptr %.sroa.975.0..sroa_idx76, align 8, !tbaa !88
  %i.be = trunc i64 %.sroa.090.0.copyload to i1   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 1
  %i.bg = select i1 %i.be, ptr %.sroa.996.0.copyload, ptr %i.bf
  %i.bh = lshr i64 %.sroa.090.0.copyload, 1
  %i.bi = and i64 %i.bh, 127
  %i.bj = select i1 %i.be, i64 %.sroa.993.0.copyload, i64 %i.bi
  %i.bk = trunc i64 %.sroa.070.0.copyload to i1   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 1
  %i.bm = select i1 %i.bk, ptr %.sroa.975.0.copyload, ptr %i.bl
  %i.bn = lshr i64 %.sroa.070.0.copyload, 1
  %i.bo = and i64 %i.bn, 127
  %i.bp = select i1 %i.bk, i64 %.sroa.9.0.copyload, i64 %i.bo
  br label %bb.y

bb.y:                                             ; preds = %"_ZNKSt3__16ranges8__all_of4__fnclB8ne180100ITkNS0_11input_rangeERNS_17basic_string_viewIcNS_11char_traitsIcEEEENS_8identityETkNS_24indirect_unary_predicateINS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET0_E6__typeEEEZN3tev12matchesFuzzyES7_S7_PmE3$_0EEbOSD_T1_SG_.exit", %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit53
  %i.bq = phi i64 [ %.sroa.090.0.copyload, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit53 ], [ 0, %"_ZNKSt3__16ranges8__all_of4__fnclB8ne180100ITkNS0_11input_rangeERNS_17basic_string_viewIcNS_11char_traitsIcEEEENS_8identityETkNS_24indirect_unary_predicateINS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET0_E6__typeEEEZN3tev12matchesFuzzyES7_S7_PmE3$_0EEbOSD_T1_SG_.exit" ]
  %i.br = phi ptr [ %.sroa.996.0.copyload, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit53 ], [ null, %"_ZNKSt3__16ranges8__all_of4__fnclB8ne180100ITkNS0_11input_rangeERNS_17basic_string_viewIcNS_11char_traitsIcEEEENS_8identityETkNS_24indirect_unary_predicateINS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET0_E6__typeEEEZN3tev12matchesFuzzyES7_S7_PmE3$_0EEbOSD_T1_SG_.exit" ]
  %i.bs = phi i1 [ %i.ah, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit53 ], [ false, %"_ZNKSt3__16ranges8__all_of4__fnclB8ne180100ITkNS0_11input_rangeERNS_17basic_string_viewIcNS_11char_traitsIcEEEENS_8identityETkNS_24indirect_unary_predicateINS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET0_E6__typeEEEZN3tev12matchesFuzzyES7_S7_PmE3$_0EEbOSD_T1_SG_.exit" ]
  %.sroa.0111.0 = phi ptr [ %i.bm, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit53 ], [ %2, %"_ZNKSt3__16ranges8__all_of4__fnclB8ne180100ITkNS0_11input_rangeERNS_17basic_string_viewIcNS_11char_traitsIcEEEENS_8identityETkNS_24indirect_unary_predicateINS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET0_E6__typeEEEZN3tev12matchesFuzzyES7_S7_PmE3$_0EEbOSD_T1_SG_.exit" ]
  %.sroa.8.0 = phi i64 [ %i.bp, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit53 ], [ %3, %"_ZNKSt3__16ranges8__all_of4__fnclB8ne180100ITkNS0_11input_rangeERNS_17basic_string_viewIcNS_11char_traitsIcEEEENS_8identityETkNS_24indirect_unary_predicateINS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET0_E6__typeEEEZN3tev12matchesFuzzyES7_S7_PmE3$_0EEbOSD_T1_SG_.exit" ]
  %.sroa.0118.0 = phi ptr [ %i.bg, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit53 ], [ %0, %"_ZNKSt3__16ranges8__all_of4__fnclB8ne180100ITkNS0_11input_rangeERNS_17basic_string_viewIcNS_11char_traitsIcEEEENS_8identityETkNS_24indirect_unary_predicateINS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET0_E6__typeEEEZN3tev12matchesFuzzyES7_S7_PmE3$_0EEbOSD_T1_SG_.exit" ] ; 3 uses
  %.sroa.5.0 = phi i64 [ %i.bj, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit53 ], [ %1, %"_ZNKSt3__16ranges8__all_of4__fnclB8ne180100ITkNS0_11input_rangeERNS_17basic_string_viewIcNS_11char_traitsIcEEEENS_8identityETkNS_24indirect_unary_predicateINS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET0_E6__typeEEEZN3tev12matchesFuzzyES7_S7_PmE3$_0EEbOSD_T1_SG_.exit" ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  invoke void @_ZN3tev5splitENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_b(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::vector") align 8 %9, ptr %.sroa.0111.0, i64 %.sroa.8.0, ptr nonnull @.str.12, i64 2, i1 noundef zeroext false)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.bt = load ptr, ptr %9, align 8, !tbaa !112   ; 9 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !113 ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.bt, %i.bv
  br i1 %.not8.i.i.i, label %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.z, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i
  %.09.i.i.i = phi ptr [ %i.bw, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i ], [ %i.bt, %bb.z ] ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !108
  %.not.i.i.i.i = icmp eq i64 %.sroa.2.0.copyload.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bw, %i.bv
  br i1 %.not.i.i.i, label %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit.thread.i, label %.lr.ph.i.i.i, !llvm.loop !552

_ZNSt3__14findB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit.thread.i: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = getelementptr inbounds i8, ptr %i.bt, i64 %i.bz
  br label %_ZNSt3__16removeB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit

_ZNSt3__14findB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit.i: ; preds = %.lr.ph.i.i.i, %bb.z
  %.0.lcssa.i.i.i = phi ptr [ %i.bt, %bb.z ], [ %.09.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.cb = ptrtoint ptr %.0.lcssa.i.i.i to i64
  %i.cc = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = getelementptr inbounds i8, ptr %i.bt, i64 %i.cd ; 4 uses
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i, %i.bv
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %.not1617.i = icmp eq ptr %i.cf, %i.bv
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1617.i
  br i1 %or.cond.i, label %_ZNSt3__16removeB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i
  %i.cg = phi ptr [ %i.ci, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i ], [ %i.cf, %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit.i ] ; 3 uses
  %.sroa.012.019.i = phi ptr [ %.sroa.012.1.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i ], [ %i.ce, %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit.i ] ; 3 uses
  %.sroa.06.018.i = phi ptr [ %i.cg, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i ], [ %i.ce, %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit.i ]
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.06.018.i, i64 24
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !108
  %.not.i.i56 = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %.not.i.i56, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i: ; preds = %.lr.ph.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.012.019.i, ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i64 16, i1 false), !tbaa.struct !114
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.012.019.i, i64 16
  br label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i: ; preds = %.lr.ph.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i
  %.sroa.012.1.i = phi ptr [ %i.ch, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i ], [ %.sroa.012.019.i, %.lr.ph.i ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %.not16.i = icmp eq ptr %i.ci, %i.bv
  br i1 %.not16.i, label %_ZNSt3__16removeB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !553

_ZNSt3__16removeB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit.loopexit: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i
  %.pre = load ptr, ptr %i.bu, align 8, !tbaa !113
  %.pre137 = load ptr, ptr %9, align 8, !tbaa !112 ; 2 uses
  %.pre140 = ptrtoint ptr %.pre137 to i64
  br label %_ZNSt3__16removeB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit

_ZNSt3__16removeB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit: ; preds = %_ZNSt3__16removeB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit.loopexit, %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit.i, %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit.thread.i
  %.pre-phi = phi i64 [ %.pre140, %_ZNSt3__16removeB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit.loopexit ], [ %i.cc, %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit.i ], [ %i.by, %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit.thread.i ]
  %i.cj = phi ptr [ %.pre137, %_ZNSt3__16removeB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit.loopexit ], [ %i.bt, %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit.i ], [ %i.bt, %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit.thread.i ] ; 3 uses
  %i.ck = phi ptr [ %.pre, %_ZNSt3__16removeB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit.loopexit ], [ %i.bv, %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit.i ], [ %i.bv, %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit.thread.i ] ; 4 uses
  %.sroa.012.2.i = phi ptr [ %.sroa.012.1.i, %_ZNSt3__16removeB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit.loopexit ], [ %i.ce, %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit.i ], [ %i.ca, %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit.thread.i ] ; 2 uses
  %i.cl = ptrtoint ptr %.sroa.012.2.i to i64      ; 2 uses
  %i.cm = sub i64 %i.cl, %.pre-phi
  %i.cn = getelementptr inbounds i8, ptr %i.cj, i64 %i.cm ; 3 uses
  %.not.i57 = icmp eq ptr %.sroa.012.2.i, %i.ck
  br i1 %.not.i57, label %_ZNSt3__16vectorINS_17basic_string_viewIcNS_11char_traitsIcEEEENS_9allocatorIS4_EEE5eraseENS_11__wrap_iterIPKS4_EESB_.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt3__16removeB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit
  %i.co = ptrtoint ptr %i.ck to i64               ; 2 uses
  %i.cp = sub i64 %i.co, %i.cl
  %i.cq = getelementptr inbounds i8, ptr %i.cn, i64 %i.cp ; 3 uses
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = sub i64 %i.co, %i.cr                    ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ck, %i.cq
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__14moveB8ne180100IPNS_17basic_string_viewIcNS_11char_traitsIcEEEES5_EET0_T_S7_S6_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cn, ptr nonnull align 8 %i.cq, i64 %i.cs, i1 false)
  %.pre138.pre = load ptr, ptr %9, align 8, !tbaa !112
  br label %_ZNSt3__14moveB8ne180100IPNS_17basic_string_viewIcNS_11char_traitsIcEEEES5_EET0_T_S7_S6_.exit.i

_ZNSt3__14moveB8ne180100IPNS_17basic_string_viewIcNS_11char_traitsIcEEEES5_EET0_T_S7_S6_.exit.i: ; preds = %bb.ab, %bb.aa
  %.pre138 = phi ptr [ %.pre138.pre, %bb.ab ], [ %i.cj, %bb.aa ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cs ; 2 uses
  store ptr %i.ct, ptr %i.bu, align 8, !tbaa !113
  br label %_ZNSt3__16vectorINS_17basic_string_viewIcNS_11char_traitsIcEEEENS_9allocatorIS4_EEE5eraseENS_11__wrap_iterIPKS4_EESB_.exit

_ZNSt3__16vectorINS_17basic_string_viewIcNS_11char_traitsIcEEEENS_9allocatorIS4_EEE5eraseENS_11__wrap_iterIPKS4_EESB_.exit: ; preds = %_ZNSt3__14moveB8ne180100IPNS_17basic_string_viewIcNS_11char_traitsIcEEEES5_EET0_T_S7_S6_.exit.i, %_ZNSt3__16removeB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit
  %i.cu = phi ptr [ %i.ct, %_ZNSt3__14moveB8ne180100IPNS_17basic_string_viewIcNS_11char_traitsIcEEEES5_EET0_T_S7_S6_.exit.i ], [ %i.ck, %_ZNSt3__16removeB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit ] ; 2 uses
  %i.cv = phi ptr [ %.pre138, %_ZNSt3__14moveB8ne180100IPNS_17basic_string_viewIcNS_11char_traitsIcEEEES5_EET0_T_S7_S6_.exit.i ], [ %i.cj, %_ZNSt3__16removeB8ne180100INS_11__wrap_iterIPNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEA1_cEET_S9_S9_RKT0_.exit ] ; 7 uses
  %i.cw = icmp eq ptr %i.cv, %i.cu
  br i1 %i.cw, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt3__16vectorINS_17basic_string_viewIcNS_11char_traitsIcEEEENS_9allocatorIS4_EEE5eraseENS_11__wrap_iterIPKS4_EESB_.exit
  %i.cx = ptrtoint ptr %i.cu to i64
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = ashr exact i64 %i.cz, 4
  %i.db = getelementptr i8, ptr %.sroa.0118.0, i64 %.sroa.5.0 ; 2 uses
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %.sroa.0118.0 to i64
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br label %.body

bb.ad:                                            ; preds = %.lr.ph, %_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findB8ne180100ES3_m.exit.thread
  %.028132 = phi i64 [ 0, %.lr.ph ], [ %i.du, %_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findB8ne180100ES3_m.exit.thread ] ; 3 uses
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %.028132 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.df, align 8, !tbaa !107 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108 ; 5 uses
  %i.dg = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %i.dg, label %_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findB8ne180100ES3_m.exit.thread124, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dh = icmp slt i64 %.sroa.5.0, %.sroa.2.0.copyload
  br i1 %i.dh, label %_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findB8ne180100ES3_m.exit.thread, label %.lr.ph.i.i.i59

.lr.ph.i.i.i59:                                   ; preds = %bb.ae
  %i.di = load i8, ptr %.sroa.0.0.copyload, align 1, !tbaa !88
  %i.dj = sext i8 %i.di to i32
  %invariant.op = sub i64 1, %.sroa.2.0.copyload
  br label %bb.af

bb.af:                                            ; preds = %bb.ah, %.lr.ph.i.i.i59
  %i.dk = phi i64 [ %.sroa.5.0, %.lr.ph.i.i.i59 ], [ %i.dq, %bb.ah ]
  %.02529.i.i.i = phi ptr [ %.sroa.0118.0, %.lr.ph.i.i.i59 ], [ %i.do, %bb.ah ]
  %.reass.i.reass.i.reass.i.reass.reass = add i64 %i.dk, %invariant.op
  %i.dl = call noundef ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02529.i.i.i, i32 noundef %i.dj, i64 noundef %.reass.i.reass.i.reass.i.reass.reass) #35 ; 5 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findB8ne180100ES3_m.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.dl, ptr nonnull %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  %i.dn = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.dn, label %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 1 ; 2 uses
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = sub i64 %i.dc, %i.dp                    ; 2 uses
  %i.dr = icmp slt i64 %i.dq, %.sroa.2.0.copyload
  br i1 %i.dr, label %_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findB8ne180100ES3_m.exit.thread, label %bb.af, !llvm.loop !554

_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i: ; preds = %bb.ag
  %.pre20.i.i = ptrtoint ptr %i.dl to i64
  %i.ds = icmp eq ptr %i.dl, %i.db
  %i.dt = sub i64 %.pre20.i.i, %i.dd
  %.not40 = icmp eq i64 %i.dt, -1
  %or.cond = select i1 %i.ds, i1 true, i1 %.not40
  br i1 %or.cond, label %_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findB8ne180100ES3_m.exit.thread, label %_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findB8ne180100ES3_m.exit.thread124

_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findB8ne180100ES3_m.exit.thread124: ; preds = %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i, %bb.ad
  br i1 %.not, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findB8ne180100ES3_m.exit.thread124
  store i64 %.028132, ptr %4, align 8, !tbaa !108
  br label %.loopexit

_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findB8ne180100ES3_m.exit.thread: ; preds = %bb.ah, %bb.af, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i, %bb.ae
  %i.du = add nuw i64 %.028132, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.du, %i.da
  br i1 %exitcond.not, label %.loopexit, label %bb.ad, !llvm.loop !555

.loopexit:                                        ; preds = %_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findB8ne180100ES3_m.exit.thread, %bb.ai, %_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findB8ne180100ES3_m.exit.thread124, %_ZNSt3__16vectorINS_17basic_string_viewIcNS_11char_traitsIcEEEENS_9allocatorIS4_EEE5eraseENS_11__wrap_iterIPKS4_EESB_.exit
  %.1 = phi i1 [ true, %_ZNSt3__16vectorINS_17basic_string_viewIcNS_11char_traitsIcEEEENS_9allocatorIS4_EEE5eraseENS_11__wrap_iterIPKS4_EESB_.exit ], [ true, %_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findB8ne180100ES3_m.exit.thread124 ], [ true, %bb.ai ], [ false, %_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findB8ne180100ES3_m.exit.thread ]
  %.not.i.i60 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i60, label %_ZNSt3__16vectorINS_17basic_string_viewIcNS_11char_traitsIcEEEENS_9allocatorIS4_EEED2B8ne180100Ev.exit61, label %bb.aj

bb.aj:                                            ; preds = %.loopexit
  store ptr %i.cv, ptr %i.bu, align 8, !tbaa !113
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !106
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.cv to i64
  %i.dz = sub i64 %i.dx, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.dz) #36
  br label %_ZNSt3__16vectorINS_17basic_string_viewIcNS_11char_traitsIcEEEENS_9allocatorIS4_EEED2B8ne180100Ev.exit61

_ZNSt3__16vectorINS_17basic_string_viewIcNS_11char_traitsIcEEEENS_9allocatorIS4_EEED2B8ne180100Ev.exit61: ; preds = %.loopexit, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  %i.ea = load i8, ptr %8, align 8
  %i.eb = trunc i8 %i.ea to i1
  br i1 %i.eb, label %bb.ak, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit62

bb.ak:                                            ; preds = %_ZNSt3__16vectorINS_17basic_string_viewIcNS_11char_traitsIcEEEENS_9allocatorIS4_EEED2B8ne180100Ev.exit61
  %i.ec = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !88
  %i.ee = load i64, ptr %8, align 8
  %i.ef = and i64 %i.ee, -2
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.ef) #36
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit62

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit62: ; preds = %_ZNSt3__16vectorINS_17basic_string_viewIcNS_11char_traitsIcEEEENS_9allocatorIS4_EEED2B8ne180100Ev.exit61, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  %i.eg = load i8, ptr %7, align 8
  %i.eh = trunc i8 %i.eg to i1
  br i1 %i.eh, label %bb.al, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit63

bb.al:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit62
  %i.ei = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !88
  %i.ek = load i64, ptr %7, align 8
  %i.el = and i64 %i.ek, -2
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.el) #36
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit63

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit63: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit62, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  br label %bb.ao

.body:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit19.i.i45, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit19.i.i, %bb.ac
  %i.em = phi i64 [ %i.bq, %bb.ac ], [ 0, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit19.i.i ], [ %.sroa.090.0.copyload, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit19.i.i45 ]
  %i.en = phi ptr [ %i.br, %bb.ac ], [ null, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit19.i.i ], [ %.sroa.996.0.copyload, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit19.i.i45 ]
  %i.eo = phi i1 [ %i.bs, %bb.ac ], [ false, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit19.i.i ], [ %i.ah, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit19.i.i45 ]
  %.pn.pn.pn = phi { ptr, i32 } [ %i.de, %bb.ac ], [ %.pn.pn.pn.pn.i.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit19.i.i ], [ %.pn.pn.pn.pn.i.i44, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit19.i.i45 ]
  %i.ep = load i8, ptr %8, align 8
  %i.eq = trunc i8 %i.ep to i1
  br i1 %i.eq, label %bb.am, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit64

bb.am:                                            ; preds = %.body
  %i.er = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !88
  %i.et = load i64, ptr %8, align 8
  %i.eu = and i64 %i.et, -2
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.eu) #36
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit64

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit64: ; preds = %.body, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
end_hunk_0
begin_hunk_1_@_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE21__parse_basic_reg_expINS_11__wrap_iterIPKcEEEET_S9_S9_:bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !329
  %i.l = zext i1 %i.g to i8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.k, ptr %i.m, align 8, !tbaa !324
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__120__l_anchor_multilineIcEE, i64 16), ptr %i.c, align 8, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 %i.l, ptr %i.n, align 8, !tbaa !334
  store ptr %i.c, ptr %i.j, align 8, !tbaa !329
  store ptr %i.c, ptr %i.h, align 8, !tbaa !327
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.010.0 = phi ptr [ %i.o, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %.not18 = icmp eq ptr %.sroa.010.0, %2
  br i1 %.not18, label %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE21__parse_RE_expressionINS_11__wrap_iterIPKcEEEET_S9_S9_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE17__parse_simple_REINS_11__wrap_iterIPKcEEEET_S9_S9_.exit.i, %bb.e
  %.sroa.04.0.i = phi ptr [ %.sroa.010.0, %bb.e ], [ %i.x, %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE17__parse_simple_REINS_11__wrap_iterIPKcEEEET_S9_S9_.exit.i ] ; 9 uses
  %.not.i = icmp eq ptr %.sroa.04.0.i, %2
  br i1 %.not.i, label %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE21__parse_RE_expressionINS_11__wrap_iterIPKcEEEET_S9_S9_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !327
  %i.s = load i32, ptr %i.q, align 4, !tbaa !328
  %i.t = tail call ptr @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE18__parse_nondupl_REINS_11__wrap_iterIPKcEEEET_S9_S9_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %.sroa.04.0.i, ptr %2), !inline_history !40 ; 2 uses
  %.not13.i = icmp eq ptr %i.t, %.sroa.04.0.i
  br i1 %.not13.i, label %bb.h, label %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE17__parse_simple_REINS_11__wrap_iterIPKcEEEET_S9_S9_.exit.i

_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE17__parse_simple_REINS_11__wrap_iterIPKcEEEET_S9_S9_.exit.i: ; preds = %bb.g
  %i.u = add i32 %i.s, 1
  %i.v = load i32, ptr %i.q, align 4, !tbaa !328
  %i.w = add i32 %i.v, 1
  %i.x = tail call ptr @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE22__parse_RE_dupl_symbolINS_11__wrap_iterIPKcEEEET_S9_S9_PNS_16__owns_one_stateIcEEjj(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %i.t, ptr %2, ptr noundef %i.r, i32 noundef %i.u, i32 noundef %i.w), !inline_history !40 ; 2 uses
  %i.y = icmp eq ptr %i.x, %.sroa.04.0.i
  br i1 %i.y, label %bb.h, label %bb.f

bb.h:                                             ; preds = %bb.g, %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE17__parse_simple_REINS_11__wrap_iterIPKcEEEET_S9_S9_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 1 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %2
  br i1 %i.aa, label %bb.i, label %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE21__parse_RE_expressionINS_11__wrap_iterIPKcEEEET_S9_S9_.exit

bb.i:                                             ; preds = %bb.h
  %i.ab = load i8, ptr %.sroa.04.0.i, align 1, !tbaa !88
  %i.ac = icmp eq i8 %i.ab, 36
  br i1 %i.ac, label %bb.j, label %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE21__parse_RE_expressionINS_11__wrap_iterIPKcEEEET_S9_S9_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #38 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !145
  %i.ag = and i32 %i.af, 1520
  %i.ah = icmp eq i32 %i.ag, 1024
  %i.ai = load ptr, ptr %i.p, align 8, !tbaa !327
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !329
  %i.al = zext i1 %i.ah to i8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !324
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__120__r_anchor_multilineIcEE, i64 16), ptr %i.ad, align 8, !tbaa !64
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i8 %i.al, ptr %i.an, align 8, !tbaa !336
  store ptr %i.ad, ptr %i.aj, align 8, !tbaa !329
  store ptr %i.ad, ptr %i.p, align 8, !tbaa !327
  br label %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE21__parse_RE_expressionINS_11__wrap_iterIPKcEEEET_S9_S9_.exit

_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE21__parse_RE_expressionINS_11__wrap_iterIPKcEEEET_S9_S9_.exit: ; preds = %bb.f, %bb.h, %bb.i, %bb.j, %bb.d
  %.sroa.010.2 = phi ptr [ %.sroa.010.0, %bb.d ], [ %.sroa.04.0.i, %bb.h ], [ %i.z, %bb.j ], [ %.sroa.04.0.i, %bb.i ], [ %.sroa.04.0.i, %bb.f ] ; 2 uses
  %.not20 = icmp eq ptr %.sroa.010.2, %2
  br i1 %.not20, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE21__parse_RE_expressionINS_11__wrap_iterIPKcEEEET_S9_S9_.exit
  tail call void @_ZNSt3__119__throw_regex_errorB8ne180100ILNS_15regex_constants10error_typeE15EEEvv() #37
  unreachable

bb.l:                                             ; preds = %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE21__parse_RE_expressionINS_11__wrap_iterIPKcEEEET_S9_S9_.exit, %bb.a
  %.sroa.010.3 = phi ptr [ %.sroa.010.2, %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE21__parse_RE_expressionINS_11__wrap_iterIPKcEEEET_S9_S9_.exit ], [ %1, %bb.a ]
  ret ptr %.sroa.010.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE24__parse_extended_reg_expINS_11__wrap_iterIPKcEEEET_S9_S9_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !327
  %i.c = tail call ptr @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE22__parse_ERE_expressionINS_11__wrap_iterIPKcEEEET_S9_S9_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, ptr %2), !inline_history !1074 ; 2 uses
  %i.d = icmp eq ptr %i.c, %1
  br i1 %i.d, label %bb.b, label %.preheader29

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt3__119__throw_regex_errorB8ne180100ILNS_15regex_constants10error_typeE15EEEvv() #37, !inline_history !1074
  unreachable

.preheader29:                                     ; preds = %bb.a, %.preheader29
  %.sroa.018.0 = phi ptr [ %i.e, %.preheader29 ], [ %i.c, %bb.a ] ; 6 uses
  %i.e = tail call ptr @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE22__parse_ERE_expressionINS_11__wrap_iterIPKcEEEET_S9_S9_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %.sroa.018.0, ptr %2), !inline_history !1074 ; 2 uses
  %.not = icmp eq ptr %i.e, %.sroa.018.0
  br i1 %.not, label %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE18__parse_ERE_branchINS_11__wrap_iterIPKcEEEET_S9_S9_.exit, label %.preheader29, !llvm.loop !1075

_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE18__parse_ERE_branchINS_11__wrap_iterIPKcEEEET_S9_S9_.exit: ; preds = %.preheader29
  %i.f = icmp eq ptr %.sroa.018.0, %1
  br i1 %i.f, label %bb.c, label %.preheader28

.preheader28:                                     ; preds = %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE18__parse_ERE_branchINS_11__wrap_iterIPKcEEEET_S9_S9_.exit
  %.not2632 = icmp eq ptr %.sroa.018.0, %2
  br i1 %.not2632, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader28
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE18__parse_ERE_branchINS_11__wrap_iterIPKcEEEET_S9_S9_.exit
  tail call void @_ZNSt3__119__throw_regex_errorB8ne180100ILNS_15regex_constants10error_typeE15EEEvv() #37
  unreachable

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.0.033 = phi ptr [ %.sroa.018.0, %.lr.ph ], [ %.sroa.022.0, %bb.h ] ; 3 uses
  %i.h = load i8, ptr %.sroa.0.033, align 1, !tbaa !88
  %i.i = icmp eq i8 %i.h, 124
  br i1 %i.i, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !327
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.033, i64 1 ; 3 uses
  %i.l = tail call ptr @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE22__parse_ERE_expressionINS_11__wrap_iterIPKcEEEET_S9_S9_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nonnull %i.k, ptr %2), !inline_history !1074 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.k
  br i1 %i.m, label %bb.f, label %.preheader

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNSt3__119__throw_regex_errorB8ne180100ILNS_15regex_constants10error_typeE15EEEvv() #37, !inline_history !1074
  unreachable

.preheader:                                       ; preds = %bb.e, %.preheader
  %.sroa.022.0 = phi ptr [ %i.n, %.preheader ], [ %i.l, %bb.e ] ; 6 uses
  %i.n = tail call ptr @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE22__parse_ERE_expressionINS_11__wrap_iterIPKcEEEET_S9_S9_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %.sroa.022.0, ptr %2), !inline_history !1074 ; 2 uses
  %.not27 = icmp eq ptr %i.n, %.sroa.022.0
  br i1 %.not27, label %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE18__parse_ERE_branchINS_11__wrap_iterIPKcEEEET_S9_S9_.exit10, label %.preheader, !llvm.loop !1075

_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE18__parse_ERE_branchINS_11__wrap_iterIPKcEEEET_S9_S9_.exit10: ; preds = %.preheader
  %i.o = icmp eq ptr %.sroa.022.0, %i.k
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE18__parse_ERE_branchINS_11__wrap_iterIPKcEEEET_S9_S9_.exit10
  tail call void @_ZNSt3__119__throw_regex_errorB8ne180100ILNS_15regex_constants10error_typeE15EEEvv() #37
  unreachable

bb.h:                                             ; preds = %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE18__parse_ERE_branchINS_11__wrap_iterIPKcEEEET_S9_S9_.exit10
  %i.p = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #38 ; 4 uses
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !329
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !329
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.q, ptr %i.t, align 8, !tbaa !324
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.s, ptr %i.u, align 8, !tbaa !332
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__111__alternateIcEE, i64 16), ptr %i.p, align 8, !tbaa !64
  store ptr %i.p, ptr %i.g, align 8, !tbaa !329
  store ptr null, ptr %i.r, align 8, !tbaa !329
  %i.v = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38 ; 3 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !327
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !329
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !324
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__113__empty_stateIcEE, i64 16), ptr %i.v, align 8, !tbaa !64
  store ptr %i.v, ptr %i.r, align 8, !tbaa !329
  store ptr null, ptr %i.x, align 8, !tbaa !329
  %i.aa = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38 ; 3 uses
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !329
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !324
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__121__empty_non_own_stateIcEE, i64 16), ptr %i.aa, align 8, !tbaa !64
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !327
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.aa, ptr %i.ae, align 8, !tbaa !329
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !329
  store ptr %i.af, ptr %i.a, align 8, !tbaa !327
  %.not26 = icmp eq ptr %.sroa.022.0, %2
  br i1 %.not26, label %.critedge, label %bb.d, !llvm.loop !1076

.critedge:                                        ; preds = %bb.d, %bb.h, %.preheader28
  %.sroa.0.0.lcssa = phi ptr [ %.sroa.018.0, %.preheader28 ], [ %.sroa.022.0, %bb.h ], [ %.sroa.0.033, %bb.d ]
  ret ptr %.sroa.0.0.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE12__parse_grepINS_11__wrap_iterIPKcEEEET_S9_S9_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !327
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = tail call noundef ptr @memchr(ptr noundef %1, i32 noundef 10, i64 noundef %i.e) #35 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.f, null
  %spec.select.i.i = select i1 %.not.not.i.i, ptr %2, ptr %i.f ; 3 uses
  %3 = ptrtoint ptr %spec.select.i.i to i64
  %4 = sub i64 %3, %i.d
  %5 = getelementptr inbounds i8, ptr %1, i64 %4  ; 2 uses
  %.not = icmp eq ptr %spec.select.i.i, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE21__parse_basic_reg_expINS_11__wrap_iterIPKcEEEET_S9_S9_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, ptr nonnull %5) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38 ; 4 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !327
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !329
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !324
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__113__empty_stateIcEE, i64 16), ptr %i.h, align 8, !tbaa !64
  store ptr %i.h, ptr %i.j, align 8, !tbaa !329
  store ptr %i.h, ptr %i.a, align 8, !tbaa !327
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not30 = icmp ne ptr %spec.select.i.i, %2
  %spec.select.idx = zext i1 %.not30 to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %5, i64 %spec.select.idx ; 3 uses
  %.not3134 = icmp eq ptr %spec.select, %2
  br i1 %.not3134, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !327
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %i.n = phi ptr [ %.pre, %.lr.ph ], [ %i.an, %bb.h ]
  %.sroa.022.135 = phi ptr [ %spec.select, %.lr.ph ], [ %spec.select29, %bb.h ] ; 5 uses
  %i.o = ptrtoint ptr %.sroa.022.135 to i64       ; 2 uses
  %i.p = sub i64 %i.c, %i.o
  %i.q = tail call noundef ptr @memchr(ptr noundef %.sroa.022.135, i32 noundef 10, i64 noundef %i.p) #35 ; 2 uses
  %.not.not.i.i14 = icmp eq ptr %i.q, null
  %spec.select.i.i15 = select i1 %.not.not.i.i14, ptr %2, ptr %i.q ; 3 uses
  %6 = ptrtoint ptr %spec.select.i.i15 to i64
  %7 = sub i64 %6, %i.o
  %8 = getelementptr inbounds i8, ptr %.sroa.022.135, i64 %7 ; 2 uses
  %.not32 = icmp eq ptr %spec.select.i.i15, %.sroa.022.135
  br i1 %.not32, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call ptr @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE21__parse_basic_reg_expINS_11__wrap_iterIPKcEEEET_S9_S9_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %.sroa.022.135, ptr nonnull %8) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.s = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38 ; 4 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !327
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !329
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !324
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__113__empty_stateIcEE, i64 16), ptr %i.s, align 8, !tbaa !64
  store ptr %i.s, ptr %i.u, align 8, !tbaa !329
  store ptr %i.s, ptr %i.a, align 8, !tbaa !327
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #38 ; 4 uses
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !329
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 5 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !329
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !324
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !332
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__111__alternateIcEE, i64 16), ptr %i.x, align 8, !tbaa !64
  store ptr %i.x, ptr %i.m, align 8, !tbaa !329
  store ptr null, ptr %i.z, align 8, !tbaa !329
  %i.ad = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38 ; 3 uses
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !327
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !329
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !324
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__113__empty_stateIcEE, i64 16), ptr %i.ad, align 8, !tbaa !64
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !329
  store ptr null, ptr %i.af, align 8, !tbaa !329
  %i.ai = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38 ; 3 uses
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !329
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !324
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__121__empty_non_own_stateIcEE, i64 16), ptr %i.ai, align 8, !tbaa !64
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !327
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !329
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !329 ; 2 uses
  store ptr %i.an, ptr %i.a, align 8, !tbaa !327
  %.not33 = icmp ne ptr %spec.select.i.i15, %2
  %spec.select29.idx = zext i1 %.not33 to i64
  %spec.select29 = getelementptr inbounds nuw i8, ptr %8, i64 %spec.select29.idx ; 3 uses
  %.not31 = icmp eq ptr %spec.select29, %2
  br i1 %.not31, label %._crit_edge, label %bb.e, !llvm.loop !1077

._crit_edge:                                      ; preds = %bb.h, %bb.d
  %.sroa.022.1.lcssa = phi ptr [ %spec.select, %bb.d ], [ %spec.select29, %bb.h ]
  ret ptr %.sroa.022.1.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE13__parse_egrepINS_11__wrap_iterIPKcEEEET_S9_S9_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !327
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = tail call noundef ptr @memchr(ptr noundef %1, i32 noundef 10, i64 noundef %i.e) #35 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.f, null
  %spec.select.i.i = select i1 %.not.not.i.i, ptr %2, ptr %i.f ; 3 uses
  %3 = ptrtoint ptr %spec.select.i.i to i64
  %4 = sub i64 %3, %i.d
  %5 = getelementptr inbounds i8, ptr %1, i64 %4  ; 2 uses
  %.not = icmp eq ptr %spec.select.i.i, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE24__parse_extended_reg_expINS_11__wrap_iterIPKcEEEET_S9_S9_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, ptr nonnull %5) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38 ; 4 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !327
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !329
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !324
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__113__empty_stateIcEE, i64 16), ptr %i.h, align 8, !tbaa !64
  store ptr %i.h, ptr %i.j, align 8, !tbaa !329
  store ptr %i.h, ptr %i.a, align 8, !tbaa !327
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not30 = icmp ne ptr %spec.select.i.i, %2
  %spec.select.idx = zext i1 %.not30 to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %5, i64 %spec.select.idx ; 3 uses
  %.not3134 = icmp eq ptr %spec.select, %2
  br i1 %.not3134, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !327
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %i.n = phi ptr [ %.pre, %.lr.ph ], [ %i.an, %bb.h ]
  %.sroa.022.135 = phi ptr [ %spec.select, %.lr.ph ], [ %spec.select29, %bb.h ] ; 5 uses
  %i.o = ptrtoint ptr %.sroa.022.135 to i64       ; 2 uses
  %i.p = sub i64 %i.c, %i.o
  %i.q = tail call noundef ptr @memchr(ptr noundef %.sroa.022.135, i32 noundef 10, i64 noundef %i.p) #35 ; 2 uses
  %.not.not.i.i14 = icmp eq ptr %i.q, null
  %spec.select.i.i15 = select i1 %.not.not.i.i14, ptr %2, ptr %i.q ; 3 uses
  %6 = ptrtoint ptr %spec.select.i.i15 to i64
  %7 = sub i64 %6, %i.o
  %8 = getelementptr inbounds i8, ptr %.sroa.022.135, i64 %7 ; 2 uses
  %.not32 = icmp eq ptr %spec.select.i.i15, %.sroa.022.135
  br i1 %.not32, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call ptr @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE24__parse_extended_reg_expINS_11__wrap_iterIPKcEEEET_S9_S9_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %.sroa.022.135, ptr nonnull %8) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.s = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38 ; 4 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !327
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !329
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !324
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__113__empty_stateIcEE, i64 16), ptr %i.s, align 8, !tbaa !64
  store ptr %i.s, ptr %i.u, align 8, !tbaa !329
  store ptr %i.s, ptr %i.a, align 8, !tbaa !327
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #38 ; 4 uses
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !329
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 5 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !329
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !324
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !332
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__111__alternateIcEE, i64 16), ptr %i.x, align 8, !tbaa !64
  store ptr %i.x, ptr %i.m, align 8, !tbaa !329
  store ptr null, ptr %i.z, align 8, !tbaa !329
  %i.ad = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38 ; 3 uses
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !327
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !329
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !324
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__113__empty_stateIcEE, i64 16), ptr %i.ad, align 8, !tbaa !64
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !329
  store ptr null, ptr %i.af, align 8, !tbaa !329
  %i.ai = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38 ; 3 uses
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !329
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !324
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__121__empty_non_own_stateIcEE, i64 16), ptr %i.ai, align 8, !tbaa !64
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !327
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !329
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !329 ; 2 uses
  store ptr %i.an, ptr %i.a, align 8, !tbaa !327
  %.not33 = icmp ne ptr %spec.select.i.i15, %2
  %spec.select29.idx = zext i1 %.not33 to i64
  %spec.select29 = getelementptr inbounds nuw i8, ptr %8, i64 %spec.select29.idx ; 3 uses
  %.not31 = icmp eq ptr %spec.select29, %2
  br i1 %.not31, label %._crit_edge, label %bb.e, !llvm.loop !1078

._crit_edge:                                      ; preds = %bb.h, %bb.d
  %.sroa.022.1.lcssa = phi ptr [ %spec.select, %bb.d ], [ %spec.select29, %bb.h ]
  ret ptr %.sroa.022.1.lcssa
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNSt3__119__throw_regex_errorB8ne180100ILNS_15regex_constants10error_typeE14EEEvv() local_unnamed_addr #23 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 24) #35 ; 3 uses
  invoke void @_ZNSt3__111regex_errorC1ENS_15regex_constants10error_typeE(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i32 noundef 14)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTINSt3__111regex_errorE, ptr nonnull @_ZNSt3__111regex_errorD1Ev) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #35
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__111__end_stateIcED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__111__end_stateIcE6__execERNS_7__stateIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(93) %1) unnamed_addr #14 comdat align 2 {
bb.a:
  store i32 -1000, ptr %1, align 8, !tbaa !343
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__16__nodeIcE12__exec_splitEbRNS_7__stateIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(93) %2) unnamed_addr #14 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__16__nodeIcE6__execERNS_7__stateIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(93) %1) unnamed_addr #14 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__120__shared_ptr_pointerIPNS_13__empty_stateIcEENS_10shared_ptrIS2_E27__shared_ptr_default_deleteIS2_S2_EENS_9allocatorIS2_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_pointerIPNS_13__empty_stateIcEENS_10shared_ptrIS2_E27__shared_ptr_default_deleteIS2_S2_EENS_9allocatorIS2_EEE16__on_zero_sharedEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !325  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt3__114default_deleteINS_13__empty_stateIcEEEclB8ne180100EPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35, !inline_history !1079
  br label %_ZNKSt3__114default_deleteINS_13__empty_stateIcEEEclB8ne180100EPS2_.exit

_ZNKSt3__114default_deleteINS_13__empty_stateIcEEEclB8ne180100EPS2_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__120__shared_ptr_pointerIPNS_13__empty_stateIcEENS_10shared_ptrIS2_E27__shared_ptr_default_deleteIS2_S2_EENS_9allocatorIS2_EEE13__get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1081
  %i.c = icmp eq ptr %i.b, @_ZTSNSt3__110shared_ptrINS_13__empty_stateIcEEE27__shared_ptr_default_deleteIS2_S2_EE
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %spec.select = select i1 %i.c, ptr %i.d, ptr null
  ret ptr %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_pointerIPNS_13__empty_stateIcEENS_10shared_ptrIS2_E27__shared_ptr_default_deleteIS2_S2_EENS_9allocatorIS2_EEE21__on_zero_shared_weakEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #36
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__113__empty_stateIcED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__116__owns_one_stateIcEE, i64 16), ptr %0, align 8, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !329  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNSt3__116__owns_one_stateIcED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #35, !inline_history !344
  br label %_ZNSt3__116__owns_one_stateIcED2Ev.exit

_ZNSt3__116__owns_one_stateIcED2Ev.exit:          ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNKSt3__113__empty_stateIcE6__execERNS_7__stateIcEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(93) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  store i32 -994, ptr %1, align 8, !tbaa !343
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !324
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %i.b, ptr %i.c, align 8, !tbaa !345
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__116__owns_one_stateIcED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__116__owns_one_stateIcEE, i64 16), ptr %0, align 8, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !329  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNSt3__116__owns_one_stateIcED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #35, !inline_history !344
  br label %_ZNSt3__116__owns_one_stateIcED2Ev.exit

_ZNSt3__116__owns_one_stateIcED2Ev.exit:          ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE17__parse_assertionINS_11__wrap_iterIPKcEEEET_S9_S9_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__1::basic_regex", align 8 ; 10 uses
  %4 = alloca %"class.std::__1::basic_regex", align 8 ; 10 uses
  %.not49 = icmp eq ptr %1, %2
  br i1 %.not49, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !88
  %i.b = sext i8 %i.a to i32
  %i.c = add nsw i32 %i.b, -36                    ; 2 uses
  %i.d = tail call i32 @llvm.fshl.i32(i32 %i.c, i32 %i.c, i32 31)
  switch i32 %i.d, label %bb.ah [
    i32 29, label %bb.c
    i32 0, label %bb.d
    i32 28, label %bb.e
    i32 2, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #38 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !145
  %i.h = and i32 %i.g, 1520
  %i.i = icmp eq i32 %i.h, 1024
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !327
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !329
  %i.n = zext i1 %i.i to i8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.m, ptr %i.o, align 8, !tbaa !324
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__120__l_anchor_multilineIcEE, i64 16), ptr %i.e, align 8, !tbaa !64
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i8 %i.n, ptr %i.p, align 8, !tbaa !334
  store ptr %i.e, ptr %i.l, align 8, !tbaa !329
  store ptr %i.e, ptr %i.j, align 8, !tbaa !327
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.ah

bb.d:                                             ; preds = %bb.b
  %i.r = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #38 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !145
  %i.u = and i32 %i.t, 1520
  %i.v = icmp eq i32 %i.u, 1024
end_hunk_1
