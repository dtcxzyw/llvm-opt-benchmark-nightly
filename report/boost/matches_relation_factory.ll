Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/matches_relation_factory?download=true
inline.NumInlined: 7984
inline.NumDeleted: 2697
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNK5boost13re_detail_60031cpp_regex_traits_implementationIcE20lookup_classname_impEPKcS4_:bb.a
  %i.ay = icmp slt i64 %.pre-phi24, %i.ax
  %i.az = getelementptr inbounds i8, ptr %i.as, i64 %.pre-phi24
  %i.ba = select i1 %i.ay, ptr %i.az, ptr %i.au   ; 3 uses
  %.not22.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.as, %i.ba
  br i1 %.not22.i.i.i.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKN5boost13re_detail_60023character_pointer_rangeIcEES7_EEbT_RT0_.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i:             ; preds = %_ZSt9__advanceIPKN5boost13re_detail_60023character_pointer_rangeIcEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %i.bb = ptrtoaddr ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.aw
  %.fr.i = freeze i64 %i.bc
  %scevgep.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %1, i64 %.fr.i
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.j, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %.01924.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bl, %bb.j ], [ %1, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bk, %bb.j ], [ %i.as, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bd = load i8, ptr %.02023.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !84 ; 2 uses
  %i.be = load i8, ptr %.01924.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !84 ; 2 uses
  %i.bf = icmp slt i8 %i.bd, %i.be
  br i1 %i.bf, label %.thread.i.i.i, label %bb.i

.thread.i.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bh = xor i64 %i.aq, -1
  %i.bi = add nsw i64 %.033.i.i.i, %i.bh
  br label %.thread26.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.bj = icmp slt i8 %i.be, %i.bd
  br i1 %i.bj, label %.thread26.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bk, %i.ba
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKN5boost13re_detail_60023character_pointer_rangeIcEES7_EEbT_RT0_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !829

_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKN5boost13re_detail_60023character_pointer_rangeIcEES7_EEbT_RT0_.exit.i.i.i: ; preds = %bb.j, %_ZSt9__advanceIPKN5boost13re_detail_60023character_pointer_rangeIcEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.019.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %1, %_ZSt9__advanceIPKN5boost13re_detail_60023character_pointer_rangeIcEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %scevgep.i.i.i.i.i.i.i.i.i.i, %bb.j ]
  %.not14.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i.i.i, %2 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bn = xor i64 %i.aq, -1
  %i.bo = add nsw i64 %.033.i.i.i, %i.bn
  %spec.select.i.i.i = select i1 %.not14.i, ptr %.01132.i.i.i, ptr %i.bm
  %spec.select31.i.i.i = select i1 %.not14.i, i64 %i.aq, i64 %i.bo
  br label %.thread26.i.i.i

.thread26.i.i.i:                                  ; preds = %bb.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKN5boost13re_detail_60023character_pointer_rangeIcEES7_EEbT_RT0_.exit.i.i.i, %.thread.i.i.i
  %i.bp = phi ptr [ %i.bg, %.thread.i.i.i ], [ %spec.select.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKN5boost13re_detail_60023character_pointer_rangeIcEES7_EEbT_RT0_.exit.i.i.i ], [ %.01132.i.i.i, %bb.i ] ; 5 uses
  %i.bq = phi i64 [ %i.bi, %.thread.i.i.i ], [ %spec.select31.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKN5boost13re_detail_60023character_pointer_rangeIcEES7_EEbT_RT0_.exit.i.i.i ], [ %i.aq, %bb.i ] ; 2 uses
  %i.br = icmp sgt i64 %i.bq, 0
  br i1 %i.br, label %_ZSt9__advanceIPKN5boost13re_detail_60023character_pointer_rangeIcEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIPKN5boost13re_detail_60023character_pointer_rangeIcEES3_ET_S6_S6_RKT0_.exit.i, !llvm.loop !830

_ZSt11lower_boundIPKN5boost13re_detail_60023character_pointer_rangeIcEES3_ET_S6_S6_RKT0_.exit.i: ; preds = %.thread26.i.i.i
  %.not.i = icmp eq ptr %i.bp, getelementptr inbounds nuw (i8, ptr @_ZZN5boost13re_detail_60020get_default_class_idIcEEiPKT_S4_E6ranges, i64 336)
  br i1 %.not.i, label %_ZN5boost13re_detail_60020get_default_class_idIcEEiPKT_S4_.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt11lower_boundIPKN5boost13re_detail_60023character_pointer_rangeIcEES3_ET_S6_S6_RKT0_.exit.i
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !832 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !833
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %.not.i.i.i.i = icmp eq i64 %.pre-phi24, %i.bx
  br i1 %.not.i.i.i.i, label %bb.l, label %_ZN5boost13re_detail_60020get_default_class_idIcEEiPKT_S4_.exit

bb.l:                                             ; preds = %bb.k
  %.not.not.i.i.i.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %_ZNK5boost13re_detail_60023character_pointer_rangeIcEeqERKS2_.exit.thread.i, label %_ZNK5boost13re_detail_60023character_pointer_rangeIcEeqERKS2_.exit.i

_ZNK5boost13re_detail_60023character_pointer_rangeIcEeqERKS2_.exit.i: ; preds = %bb.l
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr %1, ptr %i.bs, i64 %.pre-phi24)
  %.not9.i.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i.i.i, label %_ZNK5boost13re_detail_60023character_pointer_rangeIcEeqERKS2_.exit.thread.i, label %_ZN5boost13re_detail_60020get_default_class_idIcEEiPKT_S4_.exit

_ZNK5boost13re_detail_60023character_pointer_rangeIcEeqERKS2_.exit.thread.i: ; preds = %_ZNK5boost13re_detail_60023character_pointer_rangeIcEeqERKS2_.exit.i, %bb.l
  %i.by = ptrtoint ptr %i.bp to i64
  %i.bz = sub i64 %i.by, ptrtoint (ptr @_ZZN5boost13re_detail_60020get_default_class_idIcEEiPKT_S4_E6ranges to i64)
  %sext = shl i64 %i.bz, 28
  %i.ca = ashr i64 %sext, 32
  br label %_ZN5boost13re_detail_60020get_default_class_idIcEEiPKT_S4_.exit

_ZN5boost13re_detail_60020get_default_class_idIcEEiPKT_S4_.exit: ; preds = %_ZSt11lower_boundIPKN5boost13re_detail_60023character_pointer_rangeIcEES3_ET_S6_S6_RKT0_.exit.i, %bb.k, %_ZNK5boost13re_detail_60023character_pointer_rangeIcEeqERKS2_.exit.i, %_ZNK5boost13re_detail_60023character_pointer_rangeIcEeqERKS2_.exit.thread.i
  %.0.i = phi i64 [ %i.ca, %_ZNK5boost13re_detail_60023character_pointer_rangeIcEeqERKS2_.exit.thread.i ], [ -1, %_ZNK5boost13re_detail_60023character_pointer_rangeIcEeqERKS2_.exit.i ], [ -1, %_ZSt11lower_boundIPKN5boost13re_detail_60023character_pointer_rangeIcEES3_ET_S6_S6_RKT0_.exit.i ], [ -1, %bb.k ]
  %i.cb = getelementptr [4 x i8], ptr @_ZZNK5boost13re_detail_60031cpp_regex_traits_implementationIcE20lookup_classname_impEPKcS4_E5masks, i64 %.0.i
  %i.cc = getelementptr i8, ptr %i.cb, i64 4
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %_ZN5boost13re_detail_60020get_default_class_idIcEEiPKT_S4_.exit
  %.1.in = phi ptr [ %i.cc, %_ZN5boost13re_detail_60020get_default_class_idIcEEiPKT_S4_.exit ], [ %i.ap, %bb.h ]
  %.1 = load i32, ptr %.1.in, align 4, !tbaa !86
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = load ptr, ptr %0, align 8, !tbaa !242
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !181, !noalias !836
  call void @_ZNK5boost13re_detail_60031cpp_regex_traits_implementationIcE12error_stringB5cxx11ENS_15regex_constants10error_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(437) %i.d, i32 noundef %1)
  invoke void @_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %3, align 8, !tbaa !83     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !84
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %3, align 8, !tbaa !83     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.c
  %i.n = load i64, ptr %i.l, align 8, !tbaa !84
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14parse_extendedEv(ptr noundef nonnull align 8 dereferenceable(216) %0) #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !277, !nonnull !107, !align !108
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !255  ; 13 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !84
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !181
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = zext i8 %i.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !84
  switch i8 %i.n, label %bb.ah [
    i8 1, label %bb.b
    i8 2, label %.critedge
    i8 12, label %bb.c
    i8 5, label %bb.d
    i8 4, label %bb.e
    i8 3, label %bb.f
    i8 6, label %bb.g
    i8 8, label %bb.l
    i8 7, label %bb.q
    i8 15, label %bb.v
    i8 16, label %bb.w
    i8 11, label %bb.ab
    i8 9, label %bb.ac
    i8 26, label %bb.ad
    i8 13, label %bb.ag
  ]

bb.b:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16parse_open_parenEv(ptr noundef nonnull align 8 dereferenceable(216) %0)
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE21parse_extended_escapeEv(ptr noundef nonnull align 8 dereferenceable(216) %0)
  br label %.critedge

bb.d:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 @_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15parse_match_anyEv(ptr noundef nonnull align 8 dereferenceable(216) %0)
  br label %.critedge

bb.e:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store ptr %i.r, ptr %i.g, align 8, !tbaa !255
  %i.s = load ptr, ptr %0, align 8, !tbaa !242
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !252
  %5 = lshr i32 %i.u, 7
  %6 = and i32 %5, 8
  %7 = or disjoint i32 %6, 3
  %i.v = tail call noundef ptr @_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeE(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %7) ; 0 uses
  br label %.critedge

bb.f:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store ptr %i.w, ptr %i.g, align 8, !tbaa !255
  %i.x = load ptr, ptr %0, align 8, !tbaa !242
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !252
  %8 = lshr i32 %i.z, 7
  %9 = and i32 %8, 8
  %10 = or disjoint i32 %9, 4
  %i.aa = tail call noundef ptr @_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeE(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %10) ; 0 uses
  br label %.critedge

bb.g:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !254
  %i.ad = icmp eq ptr %i.h, %i.ac
  br i1 %i.ad, label %.noexc.i, label %bb.k

.noexc.i:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.ae, ptr %1, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  store i64 58, ptr %i.d, align 8, !tbaa !81
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.af, ptr %1, align 8, !tbaa !83
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !81  ; 3 uses
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %i.af, ptr noundef nonnull align 1 dereferenceable(58) @.str.86, i64 58, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !85
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  store i8 0, ptr %i.ai, align 1, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  invoke void @_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 13, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %.noexc
  %i.aj = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.ae
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.al = load i64, ptr %i.ae, align 8, !tbaa !84
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %.critedge

bb.i:                                             ; preds = %.noexc.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.j:                                             ; preds = %.noexc
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.ae
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.j
  %i.ar = load i64, ptr %i.ae, align 8, !tbaa !84
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.i
  %.pn22 = phi { ptr, i32 } [ %i.an, %bb.i ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.ao, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.ai

bb.k:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store ptr %i.at, ptr %i.g, align 8, !tbaa !255
  %i.au = tail call noundef zeroext i1 @_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12parse_repeatEmm(ptr noundef nonnull align 8 dereferenceable(216) %0, i64 noundef 0, i64 noundef -1)
  br label %.critedge

bb.l:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !254
  %i.ax = icmp eq ptr %i.h, %i.aw
  br i1 %i.ax, label %.noexc.i31, label %bb.p

.noexc.i31:                                       ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.ay, ptr %2, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i64 58, ptr %i.c, align 8, !tbaa !81
  %i.az = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc32 unwind label %bb.n   ; 3 uses

.noexc32:                                         ; preds = %.noexc.i31
  store ptr %i.az, ptr %2, align 8, !tbaa !83
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !81  ; 3 uses
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %i.az, ptr noundef nonnull align 1 dereferenceable(58) @.str.87, i64 58, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !85
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba
  store i8 0, ptr %i.bc, align 1, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  invoke void @_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 13, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %.noexc32
  %i.bd = load ptr, ptr %2, align 8, !tbaa !83    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ay
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.m
  %i.bf = load i64, ptr %i.ay, align 8, !tbaa !84
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %.critedge

bb.n:                                             ; preds = %.noexc.i31
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

bb.o:                                             ; preds = %.noexc32
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load ptr, ptr %2, align 8, !tbaa !83    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.ay
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.o
  %i.bl = load i64, ptr %i.ay, align 8, !tbaa !84
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.n
  %.pn20 = phi { ptr, i32 } [ %i.bh, %bb.n ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %i.bi, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.ai

bb.p:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store ptr %i.bn, ptr %i.g, align 8, !tbaa !255
  %i.bo = tail call noundef zeroext i1 @_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12parse_repeatEmm(ptr noundef nonnull align 8 dereferenceable(216) %0, i64 noundef 0, i64 noundef 1)
  br label %.critedge

bb.q:                                             ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !254
  %i.br = icmp eq ptr %i.h, %i.bq
  br i1 %i.br, label %.noexc.i41, label %bb.u

.noexc.i41:                                       ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.bs, ptr %3, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 58, ptr %i.b, align 8, !tbaa !81
  %i.bt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc42 unwind label %bb.s   ; 3 uses

.noexc42:                                         ; preds = %.noexc.i41
  store ptr %i.bt, ptr %3, align 8, !tbaa !83
  %i.bu = load i64, ptr %i.b, align 8, !tbaa !81  ; 3 uses
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %i.bt, ptr noundef nonnull align 1 dereferenceable(58) @.str.88, i64 58, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !85
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bu
  store i8 0, ptr %i.bw, align 1, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  invoke void @_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 13, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %.noexc42
  %i.bx = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bs
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.r
  %i.bz = load i64, ptr %i.bs, align 8, !tbaa !84
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.critedge

bb.s:                                             ; preds = %.noexc.i41
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

bb.t:                                             ; preds = %.noexc42
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.bs
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
end_hunk_0
begin_hunk_1_@_ZNK5boost13re_detail_60031cpp_regex_traits_implementationIwE20lookup_classname_impEPKwS4_:bb.a
  %i.bl = icmp slt i32 %i.bg, %i.bf
  br i1 %i.bl, label %.thread26.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.bn = getelementptr i8, ptr %.01924.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.be
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKN5boost13re_detail_60023character_pointer_rangeIwEES7_EEbT_RT0_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1278

_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKN5boost13re_detail_60023character_pointer_rangeIwEES7_EEbT_RT0_.exit.i.i.i: ; preds = %bb.i, %_ZSt9__advanceIPKN5boost13re_detail_60023character_pointer_rangeIwEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.019.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %1, %_ZSt9__advanceIPKN5boost13re_detail_60023character_pointer_rangeIwEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.bn, %bb.i ]
  %.not14.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i.i.i, %2 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bp = xor i64 %i.au, -1
  %i.bq = add nsw i64 %.033.i.i.i, %i.bp
  %spec.select.i.i.i = select i1 %.not14.i, ptr %.01132.i.i.i, ptr %i.bo
  %spec.select31.i.i.i = select i1 %.not14.i, i64 %i.au, i64 %i.bq
  br label %.thread26.i.i.i

.thread26.i.i.i:                                  ; preds = %bb.h, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKN5boost13re_detail_60023character_pointer_rangeIwEES7_EEbT_RT0_.exit.i.i.i, %.thread.i.i.i
  %i.br = phi ptr [ %i.bi, %.thread.i.i.i ], [ %spec.select.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKN5boost13re_detail_60023character_pointer_rangeIwEES7_EEbT_RT0_.exit.i.i.i ], [ %.01132.i.i.i, %bb.h ] ; 5 uses
  %i.bs = phi i64 [ %i.bk, %.thread.i.i.i ], [ %spec.select31.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKN5boost13re_detail_60023character_pointer_rangeIwEES7_EEbT_RT0_.exit.i.i.i ], [ %i.au, %bb.h ] ; 2 uses
  %i.bt = icmp sgt i64 %i.bs, 0
  br i1 %i.bt, label %_ZSt9__advanceIPKN5boost13re_detail_60023character_pointer_rangeIwEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIPKN5boost13re_detail_60023character_pointer_rangeIwEES3_ET_S6_S6_RKT0_.exit.i, !llvm.loop !1279

_ZSt11lower_boundIPKN5boost13re_detail_60023character_pointer_rangeIwEES3_ET_S6_S6_RKT0_.exit.i: ; preds = %.thread26.i.i.i
  %.not.i = icmp eq ptr %i.br, getelementptr inbounds nuw (i8, ptr @_ZZN5boost13re_detail_60020get_default_class_idIwEEiPKT_S4_E6ranges, i64 336)
  br i1 %.not.i, label %_ZN5boost13re_detail_60020get_default_class_idIwEEiPKT_S4_.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt11lower_boundIPKN5boost13re_detail_60023character_pointer_rangeIwEES3_ET_S6_S6_RKT0_.exit.i
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !1281 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1282
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  %.not.i.i.i.i = icmp eq i64 %.pre-phi26, %i.bz
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN5boost13re_detail_60020get_default_class_idIwEEiPKT_S4_.exit

bb.k:                                             ; preds = %bb.j
  %.not.not.i.i.i.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %_ZNK5boost13re_detail_60023character_pointer_rangeIwEeqERKS2_.exit.thread.i, label %_ZNK5boost13re_detail_60023character_pointer_rangeIwEeqERKS2_.exit.i

_ZNK5boost13re_detail_60023character_pointer_rangeIwEeqERKS2_.exit.i: ; preds = %bb.k
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr %1, ptr %i.bu, i64 %.pre-phi26)
  %.not9.i.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i.i.i, label %_ZNK5boost13re_detail_60023character_pointer_rangeIwEeqERKS2_.exit.thread.i, label %_ZN5boost13re_detail_60020get_default_class_idIwEEiPKT_S4_.exit

_ZNK5boost13re_detail_60023character_pointer_rangeIwEeqERKS2_.exit.thread.i: ; preds = %_ZNK5boost13re_detail_60023character_pointer_rangeIwEeqERKS2_.exit.i, %bb.k
  %i.ca = ptrtoint ptr %i.br to i64
  %i.cb = sub i64 %i.ca, ptrtoint (ptr @_ZZN5boost13re_detail_60020get_default_class_idIwEEiPKT_S4_E6ranges to i64)
  %sext = shl i64 %i.cb, 28
  %i.cc = ashr i64 %sext, 32
  br label %_ZN5boost13re_detail_60020get_default_class_idIwEEiPKT_S4_.exit

_ZN5boost13re_detail_60020get_default_class_idIwEEiPKT_S4_.exit: ; preds = %_ZSt11lower_boundIPKN5boost13re_detail_60023character_pointer_rangeIwEES3_ET_S6_S6_RKT0_.exit.i, %bb.j, %_ZNK5boost13re_detail_60023character_pointer_rangeIwEeqERKS2_.exit.i, %_ZNK5boost13re_detail_60023character_pointer_rangeIwEeqERKS2_.exit.thread.i
  %.0.i = phi i64 [ %i.cc, %_ZNK5boost13re_detail_60023character_pointer_rangeIwEeqERKS2_.exit.thread.i ], [ -1, %_ZNK5boost13re_detail_60023character_pointer_rangeIwEeqERKS2_.exit.i ], [ -1, %_ZSt11lower_boundIPKN5boost13re_detail_60023character_pointer_rangeIwEES3_ET_S6_S6_RKT0_.exit.i ], [ -1, %bb.j ]
  %i.cd = getelementptr [4 x i8], ptr @_ZZNK5boost13re_detail_60031cpp_regex_traits_implementationIwE20lookup_classname_impEPKwS4_E5masks, i64 %.0.i
  %i.ce = getelementptr i8, ptr %i.cd, i64 4
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %_ZN5boost13re_detail_60020get_default_class_idIwEEiPKT_S4_.exit
  %.1.in = phi ptr [ %i.ce, %_ZN5boost13re_detail_60020get_default_class_idIwEEiPKT_S4_.exit ], [ %i.at, %bb.g ]
  %.1 = load i32, ptr %.1.in, align 4, !tbaa !86
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = load ptr, ptr %0, align 8, !tbaa !447
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !395
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !414, !noalias !1285
  call void @_ZNK5boost13re_detail_60031cpp_regex_traits_implementationIwE12error_stringB5cxx11ENS_15regex_constants10error_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(232) %i.d, i32 noundef %1)
  invoke void @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %3, align 8, !tbaa !83     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !84
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %3, align 8, !tbaa !83     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.c
  %i.n = load i64, ptr %i.l, align 8, !tbaa !84
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE14parse_extendedEv(ptr noundef nonnull align 8 dereferenceable(216) %0) #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !466, !nonnull !107, !align !108 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 17 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !453  ; 12 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !388  ; 8 uses
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !414  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !172  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not10.i.i.i.i.i, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit.thread, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.a ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.m, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.o = load i32, ptr %i.n, align 4, !tbaa !388
  %i.p = icmp slt i32 %i.o, %i.i                  ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.p, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.p, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !39

_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.q = icmp eq ptr %.19.i.i.i.i.i, %i.m
  br i1 %i.q, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit.thread, label %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i

_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.s = load i32, ptr %i.r, align 4, !tbaa !388
  %i.t = icmp slt i32 %i.i, %i.s
  br i1 %i.t, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit.thread, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit

_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit: ; preds = %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 36
  %i.v = load i8, ptr %i.u, align 4, !tbaa !432
  switch i8 %i.v, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit.thread [
    i8 1, label %bb.b
    i8 2, label %.critedge
    i8 12, label %bb.c
    i8 5, label %bb.d
    i8 4, label %bb.e
    i8 3, label %bb.f
    i8 6, label %bb.g
    i8 8, label %bb.l
    i8 7, label %bb.q
    i8 15, label %bb.v
    i8 16, label %bb.w
    i8 11, label %bb.ad
    i8 9, label %bb.ae
    i8 26, label %bb.af
    i8 13, label %bb.ak
  ]

bb.b:                                             ; preds = %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit
  %i.w = tail call noundef zeroext i1 @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE16parse_open_parenEv(ptr noundef nonnull align 8 dereferenceable(216) %0)
  br label %.critedge

bb.c:                                             ; preds = %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit
  %i.x = tail call noundef zeroext i1 @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE21parse_extended_escapeEv(ptr noundef nonnull align 8 dereferenceable(216) %0)
  br label %.critedge

bb.d:                                             ; preds = %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit
  %i.y = tail call noundef zeroext i1 @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE15parse_match_anyEv(ptr noundef nonnull align 8 dereferenceable(216) %0)
  br label %.critedge

bb.e:                                             ; preds = %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store ptr %i.z, ptr %i.g, align 8, !tbaa !453
  %i.aa = load ptr, ptr %0, align 8, !tbaa !447
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !450
  %5 = lshr i32 %i.ac, 7
  %6 = and i32 %5, 8
  %7 = or disjoint i32 %6, 3
  %i.ad = tail call noundef ptr @_ZN5boost13re_detail_60019basic_regex_creatorIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE12append_stateENS0_19syntax_element_typeE(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %7) ; 0 uses
  br label %.critedge

bb.f:                                             ; preds = %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !453
  %i.af = load ptr, ptr %0, align 8, !tbaa !447
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !450
  %8 = lshr i32 %i.ah, 7
  %9 = and i32 %8, 8
  %10 = or disjoint i32 %9, 4
  %i.ai = tail call noundef ptr @_ZN5boost13re_detail_60019basic_regex_creatorIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE12append_stateENS0_19syntax_element_typeE(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %10) ; 0 uses
  br label %.critedge

bb.g:                                             ; preds = %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !452
  %i.al = icmp eq ptr %i.h, %i.ak
  br i1 %i.al, label %.noexc.i, label %bb.k

.noexc.i:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  store i64 58, ptr %i.d, align 8, !tbaa !81
  %i.an = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.an, ptr %1, align 8, !tbaa !83
  %i.ao = load i64, ptr %i.d, align 8, !tbaa !81  ; 3 uses
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %i.an, ptr noundef nonnull align 1 dereferenceable(58) @.str.86, i64 58, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !85
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  store i8 0, ptr %i.aq, align 1, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  invoke void @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 13, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %.noexc
  %i.ar = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.am
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.am, align 8, !tbaa !84
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %.critedge

bb.i:                                             ; preds = %.noexc.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.j:                                             ; preds = %.noexc
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.am
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.j
  %i.az = load i64, ptr %i.am, align 8, !tbaa !84
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.i
  %.pn22 = phi { ptr, i32 } [ %i.av, %bb.i ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.aw, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.ap

bb.k:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store ptr %i.bb, ptr %i.g, align 8, !tbaa !453
  %i.bc = tail call noundef zeroext i1 @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE12parse_repeatEmm(ptr noundef nonnull align 8 dereferenceable(216) %0, i64 noundef 0, i64 noundef -1)
  br label %.critedge

bb.l:                                             ; preds = %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !452
  %i.bf = icmp eq ptr %i.h, %i.be
  br i1 %i.bf, label %.noexc.i31, label %bb.p

.noexc.i31:                                       ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.bg, ptr %2, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i64 58, ptr %i.c, align 8, !tbaa !81
  %i.bh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc32 unwind label %bb.n   ; 3 uses

.noexc32:                                         ; preds = %.noexc.i31
  store ptr %i.bh, ptr %2, align 8, !tbaa !83
  %i.bi = load i64, ptr %i.c, align 8, !tbaa !81  ; 3 uses
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %i.bh, ptr noundef nonnull align 1 dereferenceable(58) @.str.87, i64 58, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !85
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bi
  store i8 0, ptr %i.bk, align 1, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  invoke void @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 13, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %.noexc32
  %i.bl = load ptr, ptr %2, align 8, !tbaa !83    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.bg
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.m
  %i.bn = load i64, ptr %i.bg, align 8, !tbaa !84
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %.critedge

bb.n:                                             ; preds = %.noexc.i31
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

bb.o:                                             ; preds = %.noexc32
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = load ptr, ptr %2, align 8, !tbaa !83    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.bg
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.o
  %i.bt = load i64, ptr %i.bg, align 8, !tbaa !84
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.n
  %.pn20 = phi { ptr, i32 } [ %i.bp, %bb.n ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %i.bq, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.ap

bb.p:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store ptr %i.bv, ptr %i.g, align 8, !tbaa !453
  %i.bw = tail call noundef zeroext i1 @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE12parse_repeatEmm(ptr noundef nonnull align 8 dereferenceable(216) %0, i64 noundef 0, i64 noundef 1)
  br label %.critedge

bb.q:                                             ; preds = %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !452
  %i.bz = icmp eq ptr %i.h, %i.by
  br i1 %i.bz, label %.noexc.i41, label %bb.u

.noexc.i41:                                       ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.ca, ptr %3, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 58, ptr %i.b, align 8, !tbaa !81
  %i.cb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc42 unwind label %bb.s   ; 3 uses

.noexc42:                                         ; preds = %.noexc.i41
  store ptr %i.cb, ptr %3, align 8, !tbaa !83
  %i.cc = load i64, ptr %i.b, align 8, !tbaa !81  ; 3 uses
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %i.cb, ptr noundef nonnull align 1 dereferenceable(58) @.str.88, i64 58, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !85
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cc
  store i8 0, ptr %i.ce, align 1, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  invoke void @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 13, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %.noexc42
  %i.cf = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ca
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.r
  %i.ch = load i64, ptr %i.ca, align 8, !tbaa !84
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.critedge

bb.s:                                             ; preds = %.noexc.i41
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

bb.t:                                             ; preds = %.noexc42
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.ca
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
end_hunk_1
