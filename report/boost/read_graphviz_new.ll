Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/read_graphviz_new?download=true
inline.NumInlined: 6920
inline.NumDeleted: 2274
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE21match_long_set_repeatEv:bb.a
bb.d:                                             ; preds = %bb.c, %.thread, %.thread54
  %i.t = phi ptr [ %i.i, %.thread54 ], [ %i.s, %bb.c ], [ %i.n, %.thread ]
  %i.u = phi ptr [ %i.h, %.thread54 ], [ %i.r, %bb.c ], [ %i.m, %.thread ] ; 2 uses
  %i.v = phi i1 [ false, %.thread54 ], [ %i.q, %bb.c ], [ true, %.thread ]
  %i.w = phi ptr [ %i.i, %.thread54 ], [ %spec.select, %bb.c ], [ %i.m, %.thread ]
  %i.x = load i64, ptr %i.w, align 8, !tbaa !25   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.z = load i64, ptr %i.y, align 8              ; 4 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 4 uses
  %i.ab = icmp eq i64 %i.x, -1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %i.ab, label %..critedge41_crit_edge, label %bb.e

..critedge41_crit_edge:                           ; preds = %bb.d
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !290
  %i.ac = inttoptr i64 %.pre to ptr
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.e:                                             ; preds = %bb.d
  %.sroa.07.0.copyload = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  %i.ad = ptrtoint ptr %.sroa.07.0.copyload to i64
  %i.ae = sub i64 %i.ad, %i.z
  %i.af = icmp ult i64 %i.x, %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.aa, i64 %i.x
  %spec.select77 = select i1 %i.af, ptr %i.ag, ptr %.sroa.07.0.copyload
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElEvRT_T0_St26random_access_iterator_tag.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e, %..critedge41_crit_edge
  %.sroa.044.0 = phi ptr [ %i.ac, %..critedge41_crit_edge ], [ %spec.select77, %bb.e ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not5658 = icmp eq ptr %.sroa.044.0, %i.aa
  br i1 %.not5658, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.g
  %i.ak = phi ptr [ %i.aa, %.lr.ph ], [ %i.ar, %bb.g ]
  %.sroa.04.0.copyload = load ptr, ptr %i.ah, align 8, !tbaa !290
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !1042, !nonnull !104, !align !105
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !195
  %i.an = load i8, ptr %i.aj, align 8, !tbaa !1044, !range !451, !noundef !104
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = tail call ptr @_ZN5boost13re_detail_60016re_is_set_memberIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEjEET_SH_SH_PKNS0_11re_set_longIT2_EERKNS0_10regex_dataIT0_T1_EEb(ptr %i.ak, ptr %.sroa.04.0.copyload, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(402) %i.am, i1 noundef zeroext %i.ao)
  %i.aq = load ptr, ptr %i.y, align 8             ; 3 uses
  %.not57 = icmp eq ptr %i.aq, %i.ap
  br i1 %.not57, label %.critedge.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 4 uses
  store ptr %i.ar, ptr %i.y, align 8, !tbaa !997
  %.not56 = icmp eq ptr %i.ar, %.sroa.044.0
  br i1 %.not56, label %.critedge.loopexit, label %bb.f, !llvm.loop !1133

.critedge.loopexit:                               ; preds = %bb.g, %bb.f
  %.sroa.02.0.copyload61 = phi ptr [ %i.ar, %bb.g ], [ %i.aq, %bb.f ] ; 2 uses
  %i.as = ptrtoint ptr %.sroa.02.0.copyload61 to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.at = phi i64 [ %i.as, %.critedge.loopexit ], [ %i.z, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.au = phi ptr [ %.sroa.02.0.copyload61, %.critedge.loopexit ], [ %i.aa, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 4 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.z
  %i.ax = and i64 %i.aw, 4294967295               ; 6 uses
  %i.ay = load i64, ptr %i.t, align 8, !tbaa !548 ; 2 uses
  %i.az = icmp ult i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.v, label %bb.h

bb.h:                                             ; preds = %.critedge
  br i1 %i.v, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 308
  %i.bb = load i8, ptr %i.ba, align 4, !tbaa !495, !range !451, !noundef !104
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bd = load i64, ptr %i.u, align 8, !tbaa !549
  %i.be = icmp ult i64 %i.ax, %i.bd
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.at, ptr %i.bf, align 8, !tbaa !290
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.not39 = icmp eq i64 %i.ax, %i.ay
  br i1 %.not39, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1079
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -32 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1096
  %i.bl = icmp ult ptr %i.bi, %i.bk
  br i1 %i.bl, label %bb.n, label %_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE18push_single_repeatEmPKNS0_9re_repeatESC_i.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv(ptr noundef nonnull align 8 dereferenceable(236) %0)
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !1079
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -32
  br label %_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE18push_single_repeatEmPKNS0_9re_repeatESC_i.exit

_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE18push_single_repeatEmPKNS0_9re_repeatESC_i.exit: ; preds = %bb.m, %bb.n
  %.0.i = phi ptr [ %i.bn, %bb.n ], [ %i.bi, %bb.m ] ; 5 uses
  store i32 7, ptr %.0.i, align 8, !tbaa !22
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i64 %i.ax, ptr %i.bo, align 8, !tbaa !1127
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %i.b, ptr %i.bp, align 8, !tbaa !1130
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store ptr %i.au, ptr %i.bq, align 8, !tbaa !290
  store ptr %.0.i, ptr %i.bg, align 8, !tbaa !1079
  br label %bb.o

bb.o:                                             ; preds = %_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE18push_single_repeatEmPKNS0_9re_repeatESC_i.exit, %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !22
  store ptr %i.bs, ptr %i.a, align 8, !tbaa !1040
  br label %bb.v

bb.p:                                             ; preds = %bb.h
  %i.bt = load i64, ptr %i.u, align 8, !tbaa !549
  %i.bu = icmp ult i64 %i.ax, %i.bt
  br i1 %i.bu, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1079
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1096
  %i.ca = icmp ult ptr %i.bx, %i.bz
  br i1 %i.ca, label %bb.r, label %_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE18push_single_repeatEmPKNS0_9re_repeatESC_i.exit43

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv(ptr noundef nonnull align 8 dereferenceable(236) %0)
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !1079
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -32
  br label %_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE18push_single_repeatEmPKNS0_9re_repeatESC_i.exit43

_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE18push_single_repeatEmPKNS0_9re_repeatESC_i.exit43: ; preds = %bb.q, %bb.r
  %.0.i42 = phi ptr [ %i.cc, %bb.r ], [ %i.bx, %bb.q ] ; 5 uses
  store i32 12, ptr %.0.i42, align 8, !tbaa !22
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i42, i64 8
  store i64 %i.ax, ptr %i.cd, align 8, !tbaa !1127
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i42, i64 16
  store ptr %i.b, ptr %i.ce, align 8, !tbaa !1130
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i42, i64 24
  store ptr %i.au, ptr %i.cf, align 8, !tbaa !290
  store ptr %.0.i42, ptr %i.bv, align 8, !tbaa !1079
  %.pre62 = load ptr, ptr %i.y, align 8, !tbaa !290
  br label %bb.s

bb.s:                                             ; preds = %_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE18push_single_repeatEmPKNS0_9re_repeatESC_i.exit43, %bb.p
  %i.cg = phi ptr [ %.pre62, %_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE18push_single_repeatEmPKNS0_9re_repeatESC_i.exit43 ], [ %i.au, %bb.p ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !22
  store ptr %i.ci, ptr %i.a, align 8, !tbaa !1040
  %i.cj = load ptr, ptr %i.ah, align 8, !tbaa !290
  %i.ck = icmp eq ptr %i.cg, %i.cj
  br i1 %i.ck, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !907
  %i.cn = and i32 %i.cm, 2
  %i.co = icmp ne i32 %i.cn, 0
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.cp = load i8, ptr %i.cg, align 1, !tbaa !22
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cr = zext i8 %i.cp to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !22
  %i.cu = and i8 %i.ct, 2
  %i.cv = icmp ne i8 %i.cu, 0
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %.critedge, %bb.o
  %.0 = phi i1 [ false, %.critedge ], [ true, %bb.o ], [ %i.co, %bb.t ], [ %i.cv, %bb.u ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14match_backstepEv(ptr noundef nonnull align 8 dereferenceable(236) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.01.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !290
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !290 ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.d = ptrtoint ptr %.sroa.01.0.copyload to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1040 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !448  ; 2 uses
  %i.j = sext i32 %i.i to i64
  %1 = icmp sge i64 %i.e, %i.j                    ; 2 uses
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = sub nsw i32 0, %i.i
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 %i.l
  store ptr %i.m, ptr %i.b, align 8, !tbaa !997
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !22
  store ptr %i.o, ptr %i.f, align 8, !tbaa !1040
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE20match_assert_backrefEv(ptr noundef nonnull align 8 dereferenceable(236) %0) #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %2 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1040 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !448  ; 11 uses
  %i.e = icmp eq i32 %i.d, 9999
  br i1 %i.e, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.u

bb.c:                                             ; preds = %bb.b
  %i.g = icmp samesign ugt i32 %i.d, 1073741823
  br i1 %i.g, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1042, !nonnull !104, !align !105
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !195  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !706  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !706
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %.loopexit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.d, %bb.g
  %.01951.i.i.i = phi i64 [ %.2.i.i.i, %bb.g ], [ %i.q, %bb.d ] ; 3 uses
  %.sroa.036.050.i.i.i = phi ptr [ %.sroa.036.1.i.i.i, %bb.g ], [ %i.k, %bb.d ] ; 4 uses
  %i.s = lshr i64 %.01951.i.i.i, 1                ; 5 uses
  %.idx146 = shl nuw nsw i64 %i.s, 3              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.036.050.i.i.i, i64 %.idx146 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !714  ; 2 uses
  %i.w = icmp slt i32 %i.v, %i.d
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.y = xor i64 %i.s, -1
  %i.z = add nsw i64 %.01951.i.i.i, %i.y
  br label %bb.g

bb.f:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %i.aa = icmp slt i32 %i.d, %i.v
  br i1 %i.aa, label %bb.g, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.f
  %.not144 = icmp eq i64 %i.s, 0
  br i1 %.not144, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_less_valEET_SE_SE_RKT0_T1_.exit.i.i.i, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i: ; preds = %.critedge.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %.016.i.i.i.i = phi i64 [ %.1.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %i.s, %.critedge.i.i.i ] ; 2 uses
  %.sroa.011.015.i.i.i.i = phi ptr [ %.sroa.011.1.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %.sroa.036.050.i.i.i, %.critedge.i.i.i ] ; 2 uses
  %i.ab = lshr i64 %.016.i.i.i.i, 1               ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i.i.i, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !714
  %i.af = icmp slt i32 %i.ae, %i.d                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = xor i64 %i.ab, -1
  %i.ai = add nsw i64 %.016.i.i.i.i, %i.ah
  %.sroa.011.1.i.i.i.i = select i1 %i.af, ptr %i.ag, ptr %.sroa.011.015.i.i.i.i ; 2 uses
  %.1.i.i.i.i = select i1 %i.af, i64 %i.ai, i64 %i.ab ; 2 uses
  %i.aj = icmp sgt i64 %.1.i.i.i.i, 0
  br i1 %i.aj, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_less_valEET_SE_SE_RKT0_T1_.exit.i.i.i, !llvm.loop !765

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_less_valEET_SE_SE_RKT0_T1_.exit.i.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, %.critedge.i.i.i
  %.sroa.011.0.lcssa.i.i.i.i = phi ptr [ %.sroa.036.050.i.i.i, %.critedge.i.i.i ], [ %.sroa.011.1.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 2 uses
  %.idx145 = shl nuw nsw i64 %.01951.i.i.i, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.al = add nuw nsw i64 %.idx146, 8
  %gepdiff147 = sub nsw i64 %.idx145, %i.al
  %i.am = ashr exact i64 %gepdiff147, 3           ; 2 uses
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i25.i.i.i, label %_ZNK5boost13re_detail_60020named_subexpressions11equal_rangeEi.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i25.i.i.i: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_less_valEET_SE_SE_RKT0_T1_.exit.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i25.i.i.i
  %.016.i26.i.i.i = phi i64 [ %.1.i31.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i25.i.i.i ], [ %i.am, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_less_valEET_SE_SE_RKT0_T1_.exit.i.i.i ] ; 2 uses
  %.sroa.011.015.i27.i.i.i = phi ptr [ %.sroa.011.1.i30.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i25.i.i.i ], [ %i.ak, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_less_valEET_SE_SE_RKT0_T1_.exit.i.i.i ] ; 2 uses
  %i.ao = lshr i64 %.016.i26.i.i.i, 1             ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i27.i.i.i, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !714
  %i.as = icmp slt i32 %i.d, %i.ar                ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.au = xor i64 %i.ao, -1
  %i.av = add nsw i64 %.016.i26.i.i.i, %i.au
  %.sroa.011.1.i30.i.i.i = select i1 %i.as, ptr %.sroa.011.015.i27.i.i.i, ptr %i.at ; 2 uses
  %.1.i31.i.i.i = select i1 %i.as, i64 %i.ao, i64 %i.av ; 2 uses
  %i.aw = icmp sgt i64 %.1.i31.i.i.i, 0
  br i1 %i.aw, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i25.i.i.i, label %_ZNK5boost13re_detail_60020named_subexpressions11equal_rangeEi.exit, !llvm.loop !1118

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.036.1.i.i.i = phi ptr [ %i.x, %bb.e ], [ %.sroa.036.050.i.i.i, %bb.f ]
  %.2.i.i.i = phi i64 [ %i.z, %bb.e ], [ %i.s, %bb.f ] ; 2 uses
  %i.ax = icmp sgt i64 %.2.i.i.i, 0
  br i1 %i.ax, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %.loopexit, !llvm.loop !1119

_ZNK5boost13re_detail_60020named_subexpressions11equal_rangeEi.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i25.i.i.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_less_valEET_SE_SE_RKT0_T1_.exit.i.i.i
  %.sroa.3.0.i.i.i = phi ptr [ %i.ak, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_less_valEET_SE_SE_RKT0_T1_.exit.i.i.i ], [ %.sroa.011.1.i30.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i25.i.i.i ] ; 2 uses
  %.not6078 = icmp eq ptr %.sroa.011.0.lcssa.i.i.i.i, %.sroa.3.0.i.i.i
  br i1 %.not6078, label %.loopexit, label %.lr.ph80

.lr.ph80:                                         ; preds = %_ZNK5boost13re_detail_60020named_subexpressions11equal_rangeEi.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1047 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 76
  %i.bb = load i8, ptr %i.ba, align 4, !tbaa !963, !range !451, !noundef !104
  %i.bc = trunc nuw i8 %i.bb to i1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNK5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEEixIiEENSt9enable_ifIXsr3std11is_integralIT_EE5valueERKSD_E4typeESI_.exit, %.lr.ph80
  %.sroa.055.079 = phi ptr [ %.sroa.011.0.lcssa.i.i.i.i, %.lr.ph80 ], [ %i.ca, %_ZNK5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEEixIiEENSt9enable_ifIXsr3std11is_integralIT_EE5valueERKSD_E4typeESI_.exit ] ; 2 uses
  %i.bf = load i32, ptr %.sroa.055.079, align 4, !tbaa !766 ; 3 uses
  br i1 %i.bc, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bg = load ptr, ptr %i.az, align 8, !tbaa !977
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !977
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.297)
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %2) #28
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

common.resume:                                    ; preds = %bb.t, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.bj, %bb.l ], [ %i.ck, %bb.t ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.j
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %common.resume

bb.m:                                             ; preds = %bb.i, %bb.h
  %i.bk = icmp sgt i32 %i.bf, 2147483644
  br i1 %i.bk, label %_ZNK5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEEixIiEENSt9enable_ifIXsr3std11is_integralIT_EE5valueERKSD_E4typeESI_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = add nsw i32 %i.bf, 2                    ; 2 uses
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !975
  %i.bn = load ptr, ptr %i.az, align 8, !tbaa !976 ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = sdiv exact i64 %i.bq, 24
  %i.bs = trunc i64 %i.br to i32
  %i.bt = icmp slt i32 %i.bl, %i.bs
  %i.bu = icmp sgt i32 %i.bf, -3
  %or.cond.i.i = and i1 %i.bu, %i.bt
  br i1 %or.cond.i.i, label %bb.o, label %_ZNK5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEEixIiEENSt9enable_ifIXsr3std11is_integralIT_EE5valueERKSD_E4typeESI_.exit

bb.o:                                             ; preds = %bb.n
  %i.bv = zext nneg i32 %i.bl to i64
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.bv
  br label %_ZNK5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEEixIiEENSt9enable_ifIXsr3std11is_integralIT_EE5valueERKSD_E4typeESI_.exit

_ZNK5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEEixIiEENSt9enable_ifIXsr3std11is_integralIT_EE5valueERKSD_E4typeESI_.exit: ; preds = %bb.n, %bb.m, %bb.o
  %.0.i.i = phi ptr [ %i.be, %bb.m ], [ %i.bw, %bb.o ], [ %i.be, %bb.n ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !981, !range !451, !noundef !104
  %i.bz = trunc nuw i8 %i.by to i1                ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.055.079, i64 8 ; 2 uses
  %.not60 = icmp eq ptr %i.ca, %.sroa.3.0.i.i.i
  %or.cond = select i1 %i.bz, i1 true, i1 %.not60
  br i1 %or.cond, label %.loopexit, label %bb.h, !llvm.loop !1134

bb.p:                                             ; preds = %bb.c
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1047 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 76
  %i.ce = load i8, ptr %i.cd, align 4, !tbaa !963, !range !451, !noundef !104
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.q, label %._ZNK5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEEixIiEENSt9enable_ifIXsr3std11is_integralIT_EE5valueERKSD_E4typeESI_.exit21_crit_edge

._ZNK5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEEixIiEENSt9enable_ifIXsr3std11is_integralIT_EE5valueERKSD_E4typeESI_.exit21_crit_edge: ; preds = %bb.p
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !975
  %.pre96 = load ptr, ptr %i.cc, align 8, !tbaa !976
end_hunk_0
