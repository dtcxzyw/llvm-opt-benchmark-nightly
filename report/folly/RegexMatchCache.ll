Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/RegexMatchCache?download=true
inline.NumInlined: 9173
inline.NumDeleted: 3340
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNK5boost13re_detail_50031cpp_regex_traits_implementationIcE20lookup_classname_impEPKcS4_:bb.a
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !20609 ; 2 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = icmp slt i64 %.pre-phi27, %i.ax
  %i.az = getelementptr inbounds i8, ptr %i.as, i64 %.pre-phi27
  %i.ba = select i1 %i.ay, ptr %i.az, ptr %i.au   ; 3 uses
  %.not22.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.as, %i.ba
  br i1 %.not22.i.i.i.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKN5boost13re_detail_50023character_pointer_rangeIcEES7_EEbT_RT0_.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i:             ; preds = %_ZSt9__advanceIPKN5boost13re_detail_50023character_pointer_rangeIcEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %i.bb = ptrtoaddr ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.aw
  %.fr.i = freeze i64 %i.bc
  %scevgep.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %1, i64 %.fr.i
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.l, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %.01924.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bl, %bb.l ], [ %1, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bk, %bb.l ], [ %i.as, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bd = load i8, ptr %.02023.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !19682 ; 2 uses
  %i.be = load i8, ptr %.01924.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !19682 ; 2 uses
  %i.bf = icmp slt i8 %i.bd, %i.be
  br i1 %i.bf, label %.thread.i.i.i, label %bb.k

.thread.i.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bh = xor i64 %i.aq, -1
  %i.bi = add nsw i64 %.033.i.i.i, %i.bh
  br label %.thread26.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.bj = icmp slt i8 %i.be, %i.bd
  br i1 %i.bj, label %.thread26.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bk, %i.ba
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKN5boost13re_detail_50023character_pointer_rangeIcEES7_EEbT_RT0_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !20605

_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKN5boost13re_detail_50023character_pointer_rangeIcEES7_EEbT_RT0_.exit.i.i.i: ; preds = %bb.l, %_ZSt9__advanceIPKN5boost13re_detail_50023character_pointer_rangeIcEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.019.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %1, %_ZSt9__advanceIPKN5boost13re_detail_50023character_pointer_rangeIcEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %scevgep.i.i.i.i.i.i.i.i.i.i, %bb.l ]
  %.not14.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i.i.i, %2 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bn = xor i64 %i.aq, -1
  %i.bo = add nsw i64 %.033.i.i.i, %i.bn
  %spec.select.i.i.i = select i1 %.not14.i, ptr %.01132.i.i.i, ptr %i.bm
  %spec.select31.i.i.i = select i1 %.not14.i, i64 %i.aq, i64 %i.bo
  br label %.thread26.i.i.i

.thread26.i.i.i:                                  ; preds = %bb.k, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKN5boost13re_detail_50023character_pointer_rangeIcEES7_EEbT_RT0_.exit.i.i.i, %.thread.i.i.i
  %i.bp = phi ptr [ %i.bg, %.thread.i.i.i ], [ %spec.select.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKN5boost13re_detail_50023character_pointer_rangeIcEES7_EEbT_RT0_.exit.i.i.i ], [ %.01132.i.i.i, %bb.k ] ; 5 uses
  %i.bq = phi i64 [ %i.bi, %.thread.i.i.i ], [ %spec.select31.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKN5boost13re_detail_50023character_pointer_rangeIcEES7_EEbT_RT0_.exit.i.i.i ], [ %i.aq, %bb.k ] ; 2 uses
  %i.br = icmp sgt i64 %i.bq, 0
  br i1 %i.br, label %_ZSt9__advanceIPKN5boost13re_detail_50023character_pointer_rangeIcEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIPKN5boost13re_detail_50023character_pointer_rangeIcEES3_ET_S6_S6_RKT0_.exit.i, !llvm.loop !20606

_ZSt11lower_boundIPKN5boost13re_detail_50023character_pointer_rangeIcEES3_ET_S6_S6_RKT0_.exit.i: ; preds = %.thread26.i.i.i
  %.not.i = icmp eq ptr %i.bp, getelementptr inbounds nuw (i8, ptr @_ZZN5boost13re_detail_50020get_default_class_idIcEEiPKT_S4_E6ranges, i64 336)
  br i1 %.not.i, label %_ZN5boost13re_detail_50020get_default_class_idIcEEiPKT_S4_.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt11lower_boundIPKN5boost13re_detail_50023character_pointer_rangeIcEES3_ET_S6_S6_RKT0_.exit.i
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !20608 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !20609
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %.not.i.i.i.i = icmp eq i64 %.pre-phi27, %i.bx
  br i1 %.not.i.i.i.i, label %bb.n, label %_ZN5boost13re_detail_50020get_default_class_idIcEEiPKT_S4_.exit

bb.n:                                             ; preds = %bb.m
  %.not.not.i.i.i.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %_ZNK5boost13re_detail_50023character_pointer_rangeIcEeqERKS2_.exit.thread.i, label %_ZNK5boost13re_detail_50023character_pointer_rangeIcEeqERKS2_.exit.i

_ZNK5boost13re_detail_50023character_pointer_rangeIcEeqERKS2_.exit.i: ; preds = %bb.n
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr %1, ptr %i.bs, i64 %.pre-phi27)
  %.not9.i.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i.i.i, label %_ZNK5boost13re_detail_50023character_pointer_rangeIcEeqERKS2_.exit.thread.i, label %_ZN5boost13re_detail_50020get_default_class_idIcEEiPKT_S4_.exit

_ZNK5boost13re_detail_50023character_pointer_rangeIcEeqERKS2_.exit.thread.i: ; preds = %_ZNK5boost13re_detail_50023character_pointer_rangeIcEeqERKS2_.exit.i, %bb.n
  %i.by = ptrtoint ptr %i.bp to i64
  %i.bz = sub i64 %i.by, ptrtoint (ptr @_ZZN5boost13re_detail_50020get_default_class_idIcEEiPKT_S4_E6ranges to i64)
  %sext = shl i64 %i.bz, 28
  %i.ca = ashr i64 %sext, 32
  br label %_ZN5boost13re_detail_50020get_default_class_idIcEEiPKT_S4_.exit

_ZN5boost13re_detail_50020get_default_class_idIcEEiPKT_S4_.exit: ; preds = %_ZSt11lower_boundIPKN5boost13re_detail_50023character_pointer_rangeIcEES3_ET_S6_S6_RKT0_.exit.i, %bb.m, %_ZNK5boost13re_detail_50023character_pointer_rangeIcEeqERKS2_.exit.i, %_ZNK5boost13re_detail_50023character_pointer_rangeIcEeqERKS2_.exit.thread.i
  %.0.i = phi i64 [ %i.ca, %_ZNK5boost13re_detail_50023character_pointer_rangeIcEeqERKS2_.exit.thread.i ], [ -1, %_ZNK5boost13re_detail_50023character_pointer_rangeIcEeqERKS2_.exit.i ], [ -1, %_ZSt11lower_boundIPKN5boost13re_detail_50023character_pointer_rangeIcEES3_ET_S6_S6_RKT0_.exit.i ], [ -1, %bb.m ]
  %i.cb = getelementptr [4 x i8], ptr @_ZZNK5boost13re_detail_50031cpp_regex_traits_implementationIcE20lookup_classname_impEPKcS4_E5masks, i64 %.0.i
  %i.cc = getelementptr i8, ptr %i.cb, i64 4
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %_ZN5boost13re_detail_50020get_default_class_idIcEEiPKT_S4_.exit
  %.1.in = phi ptr [ %i.cc, %_ZN5boost13re_detail_50020get_default_class_idIcEEiPKT_S4_.exit ], [ %i.ap, %bb.j ]
  %.1 = load i32, ptr %.1.in, align 4, !tbaa !19786
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.a = load ptr, ptr %0, align 8, !tbaa !20035
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19823
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19858, !noalias !20612
  call void @_ZNK5boost13re_detail_50031cpp_regex_traits_implementationIcE12error_stringB5cxx11ENS_15regex_constants10error_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(437) %i.d, i32 noundef %1)
  invoke void @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %3, align 8, !tbaa !19672  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !19682
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %3, align 8, !tbaa !19672  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.c
  %i.n = load i64, ptr %i.l, align 8, !tbaa !19682
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14parse_extendedEv(ptr noundef nonnull align 8 dereferenceable(216) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20070, !nonnull !1339, !align !19737
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20048 ; 13 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !19682
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !19858
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = zext i8 %i.e to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !19682
  switch i8 %i.j, label %bb.at [
    i8 1, label %bb.b
    i8 2, label %.critedge
    i8 12, label %bb.c
    i8 5, label %bb.d
    i8 4, label %bb.e
    i8 3, label %bb.l
    i8 6, label %bb.s
    i8 8, label %bb.x
    i8 7, label %bb.ac
    i8 15, label %bb.ah
    i8 16, label %bb.ai
    i8 11, label %bb.an
    i8 9, label %bb.ao
    i8 26, label %bb.ap
    i8 13, label %bb.as
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16parse_open_parenEv(ptr noundef nonnull align 8 dereferenceable(216) %0)
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE21parse_extended_escapeEv(ptr noundef nonnull align 8 dereferenceable(216) %0)
  br label %.critedge

bb.d:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15parse_match_anyEv(ptr noundef nonnull align 8 dereferenceable(216) %0)
  br label %.critedge

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.n, ptr %i.c, align 8, !tbaa !20048
  %i.o = load ptr, ptr %0, align 8, !tbaa !20035  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !20045
  %5 = and i32 %i.q, 1024
  %.not26 = icmp eq i32 %5, 0
  %6 = select i1 %.not26, i32 3, i32 11
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 352
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20034 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 360 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20051
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64                 ; 2 uses
  %reass.sub91 = sub i64 %i.v, %i.w
  %i.x = add i64 %reass.sub91, 7
  %i.y = and i64 %i.x, -8                         ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.s, i64 %i.y ; 2 uses
  store ptr %i.z, ptr %i.t, align 8, !tbaa !20051
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !20052 ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = ptrtoint ptr %i.ab to i64
  %.neg.i = sub i64 %i.w, %i.ac
  %i.ad = add i64 %.neg.i, %i.y
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !19682
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !20035 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 360
  %.pre5.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !20051
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.af = phi ptr [ %.pre5.i, %bb.f ], [ %i.z, %bb.e ] ; 2 uses
  %i.ag = phi ptr [ %.pre.i, %bb.f ], [ %i.o, %bb.e ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 344 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !20053
  %i.aj = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.ak = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp ult i64 %i.al, 16
  br i1 %i.am, label %bb.h, label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 352 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !20034 ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.aq = sub i64 %i.ak, %i.ap                    ; 3 uses
  %i.ar = add i64 %i.aq, 16
  %.not.i.i.i = icmp eq ptr %i.ao, null
  %i.as = sub i64 %i.aj, %i.ap
  %i.at = select i1 %.not.i.i.i, i64 1024, i64 %i.as
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi i64 [ %i.at, %bb.h ], [ %i.av, %bb.i ] ; 3 uses
  %i.au = icmp ult i64 %.0.i.i.i, %i.ar
  %i.av = shl i64 %.0.i.i.i, 1
  br i1 %i.au, label %bb.i, label %bb.j, !llvm.loop !743

bb.j:                                             ; preds = %bb.i
  %i.aw = add i64 %.0.i.i.i, 7
  %i.ax = and i64 %i.aw, -8                       ; 2 uses
  %i.ay = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #46 ; 4 uses
  %i.az = load ptr, ptr %i.an, align 8, !tbaa !20034 ; 3 uses
  %.not14.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not14.i.i.i, label %_ZN5boost13re_detail_50011raw_storage6resizeEm.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull align 1 %i.az, i64 %i.aq, i1 false)
  br label %_ZN5boost13re_detail_50011raw_storage6resizeEm.exit.i.i

_ZN5boost13re_detail_50011raw_storage6resizeEm.exit.i.i: ; preds = %bb.k, %bb.j
  tail call void @_ZdlPv(ptr noundef %i.az) #40
  store ptr %i.ay, ptr %i.an, align 8, !tbaa !20034
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aq
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  store ptr %i.bb, ptr %i.ah, align 8, !tbaa !20053
  br label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit

_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit: ; preds = %bb.g, %_ZN5boost13re_detail_50011raw_storage6resizeEm.exit.i.i
  %i.bc = phi ptr [ %i.ba, %_ZN5boost13re_detail_50011raw_storage6resizeEm.exit.i.i ], [ %i.af, %bb.g ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ag, i64 360
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !20051
  store ptr %i.bc, ptr %i.aa, align 8, !tbaa !20052
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 0, ptr %i.bf, align 8, !tbaa !19682
  %i.bg = load ptr, ptr %i.aa, align 8, !tbaa !20052
  store i32 %6, ptr %i.bg, align 8, !tbaa !20056
  br label %.critedge

bb.l:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.bh, ptr %i.c, align 8, !tbaa !20048
  %i.bi = load ptr, ptr %0, align 8, !tbaa !20035 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !20045
  %7 = and i32 %i.bk, 1024
  %.not25 = icmp eq i32 %7, 0
  %8 = select i1 %.not25, i32 4, i32 12
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 352
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !20034 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 360 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !20051
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64               ; 2 uses
  %reass.sub = sub i64 %i.bp, %i.bq
  %i.br = add i64 %reass.sub, 7
  %i.bs = and i64 %i.br, -8                       ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bm, i64 %i.bs ; 2 uses
  store ptr %i.bt, ptr %i.bn, align 8, !tbaa !20051
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !20052 ; 3 uses
  %.not.i28 = icmp eq ptr %i.bv, null
  br i1 %.not.i28, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = ptrtoint ptr %i.bv to i64
  %.neg.i29 = sub i64 %i.bq, %i.bw
  %i.bx = add i64 %.neg.i29, %i.bs
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !19682
  %.pre.i30 = load ptr, ptr %0, align 8, !tbaa !20035 ; 2 uses
  %.phi.trans.insert.i31 = getelementptr inbounds nuw i8, ptr %.pre.i30, i64 360
  %.pre5.i32 = load ptr, ptr %.phi.trans.insert.i31, align 8, !tbaa !20051
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bz = phi ptr [ %.pre5.i32, %bb.m ], [ %i.bt, %bb.l ] ; 2 uses
  %i.ca = phi ptr [ %.pre.i30, %bb.m ], [ %i.bi, %bb.l ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 344 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !20053
  %i.cd = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.ce = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = icmp ult i64 %i.cf, 16
  br i1 %i.cg, label %bb.o, label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit37

bb.o:                                             ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 352 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !20034 ; 2 uses
  %i.cj = ptrtoint ptr %i.ci to i64               ; 2 uses
  %i.ck = sub i64 %i.ce, %i.cj                    ; 3 uses
  %i.cl = add i64 %i.ck, 16
  %.not.i.i.i33 = icmp eq ptr %i.ci, null
  %i.cm = sub i64 %i.cd, %i.cj
  %i.cn = select i1 %.not.i.i.i33, i64 1024, i64 %i.cm
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.0.i.i.i34 = phi i64 [ %i.cn, %bb.o ], [ %i.cp, %bb.p ] ; 3 uses
  %i.co = icmp ult i64 %.0.i.i.i34, %i.cl
  %i.cp = shl i64 %.0.i.i.i34, 1
  br i1 %i.co, label %bb.p, label %bb.q, !llvm.loop !743

bb.q:                                             ; preds = %bb.p
  %i.cq = add i64 %.0.i.i.i34, 7
  %i.cr = and i64 %i.cq, -8                       ; 2 uses
  %i.cs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #46 ; 4 uses
  %i.ct = load ptr, ptr %i.ch, align 8, !tbaa !20034 ; 3 uses
  %.not14.i.i.i35 = icmp eq ptr %i.ct, null
  br i1 %.not14.i.i.i35, label %_ZN5boost13re_detail_50011raw_storage6resizeEm.exit.i.i36, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cs, ptr nonnull align 1 %i.ct, i64 %i.ck, i1 false)
  br label %_ZN5boost13re_detail_50011raw_storage6resizeEm.exit.i.i36

_ZN5boost13re_detail_50011raw_storage6resizeEm.exit.i.i36: ; preds = %bb.r, %bb.q
  tail call void @_ZdlPv(ptr noundef %i.ct) #40
  store ptr %i.cs, ptr %i.ch, align 8, !tbaa !20034
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ck
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cr
  store ptr %i.cv, ptr %i.cb, align 8, !tbaa !20053
  br label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit37

_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit37: ; preds = %bb.n, %_ZN5boost13re_detail_50011raw_storage6resizeEm.exit.i.i36
  %i.cw = phi ptr [ %i.cu, %_ZN5boost13re_detail_50011raw_storage6resizeEm.exit.i.i36 ], [ %i.bz, %bb.n ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ca, i64 360
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !20051
  store ptr %i.cw, ptr %i.bu, align 8, !tbaa !20052
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 0, ptr %i.cz, align 8, !tbaa !19682
  %i.da = load ptr, ptr %i.bu, align 8, !tbaa !20052
  store i32 %8, ptr %i.da, align 8, !tbaa !20056
  br label %.critedge

bb.s:                                             ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !20047
  %i.dd = icmp eq ptr %i.d, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.de, ptr %1, align 8, !tbaa !19764
  %i.df = invoke noalias noundef nonnull dereferenceable(59) ptr @_Znwm(i64 noundef 59) #44
          to label %.noexc39 unwind label %bb.u   ; 3 uses

.noexc39:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.df, ptr %1, align 8, !tbaa !19672
  store i64 58, ptr %i.de, align 8, !tbaa !19682
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %i.df, ptr noundef nonnull align 1 dereferenceable(58) @.str.92, i64 58, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 58, ptr %i.dg, align 8, !tbaa !19673
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 58
  store i8 0, ptr %i.dh, align 1, !tbaa !19682
  invoke void @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 13, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %.noexc39
  %i.di = load ptr, ptr %1, align 8, !tbaa !19672 ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.de
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  %i.dk = load i64, ptr %i.de, align 8, !tbaa !19682
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br label %.critedge

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

bb.v:                                             ; preds = %.noexc39
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = load ptr, ptr %1, align 8, !tbaa !19672 ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.de
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.v
  %i.dq = load i64, ptr %i.de, align 8, !tbaa !19682
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %bb.u
  %.pn22 = phi { ptr, i32 } [ %i.dm, %bb.u ], [ %i.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %i.dn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br label %bb.au

bb.w:                                             ; preds = %bb.s
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.ds, ptr %i.c, align 8, !tbaa !20048
  %i.dt = tail call noundef zeroext i1 @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12parse_repeatEmm(ptr noundef nonnull align 8 dereferenceable(216) %0, i64 noundef 0, i64 noundef -1)
  br label %.critedge

bb.x:                                             ; preds = %bb.a
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !20047
  %i.dw = icmp eq ptr %i.d, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i44, label %bb.ab

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i44: ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.dx, ptr %2, align 8, !tbaa !19764
  %i.dy = invoke noalias noundef nonnull dereferenceable(59) ptr @_Znwm(i64 noundef 59) #44
          to label %.noexc49 unwind label %bb.z   ; 3 uses

.noexc49:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i44
  store ptr %i.dy, ptr %2, align 8, !tbaa !19672
  store i64 58, ptr %i.dx, align 8, !tbaa !19682
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %i.dy, ptr noundef nonnull align 1 dereferenceable(58) @.str.93, i64 58, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 58, ptr %i.dz, align 8, !tbaa !19673
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 58
  store i8 0, ptr %i.ea, align 1, !tbaa !19682
  invoke void @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 13, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %.noexc49
  %i.eb = load ptr, ptr %2, align 8, !tbaa !19672 ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.dx
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.y
  %i.ed = load i64, ptr %i.dx, align 8, !tbaa !19682
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %.critedge

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i44
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

bb.aa:                                            ; preds = %.noexc49
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eh = load ptr, ptr %2, align 8, !tbaa !19672 ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.dx
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.aa
  %i.ej = load i64, ptr %i.dx, align 8, !tbaa !19682
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %bb.z
  %.pn20 = phi { ptr, i32 } [ %i.ef, %bb.z ], [ %i.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %i.eg, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %bb.au

bb.ab:                                            ; preds = %bb.x
  %i.el = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.el, ptr %i.c, align 8, !tbaa !20048
  %i.em = tail call noundef zeroext i1 @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12parse_repeatEmm(ptr noundef nonnull align 8 dereferenceable(216) %0, i64 noundef 0, i64 noundef 1)
  br label %.critedge

bb.ac:                                            ; preds = %bb.a
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !20047
  %i.ep = icmp eq ptr %i.d, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i58, label %bb.ag

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i58: ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.eq, ptr %3, align 8, !tbaa !19764
  %i.er = invoke noalias noundef nonnull dereferenceable(59) ptr @_Znwm(i64 noundef 59) #44
          to label %.noexc63 unwind label %bb.ae  ; 3 uses

.noexc63:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i58
  store ptr %i.er, ptr %3, align 8, !tbaa !19672
  store i64 58, ptr %i.eq, align 8, !tbaa !19682
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %i.er, ptr noundef nonnull align 1 dereferenceable(58) @.str.94, i64 58, i1 false)
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 58, ptr %i.es, align 8, !tbaa !19673
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 58
  store i8 0, ptr %i.et, align 1, !tbaa !19682
  invoke void @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 13, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %.noexc63
  %i.eu = load ptr, ptr %3, align 8, !tbaa !19672 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.eq
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.ad
  %i.ew = load i64, ptr %i.eq, align 8, !tbaa !19682
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %.critedge

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i58
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.af:                                            ; preds = %.noexc63
  %i.ez = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fa = load ptr, ptr %3, align 8, !tbaa !19672 ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.eq
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.af
  %i.fc = load i64, ptr %i.eq, align 8, !tbaa !19682
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %bb.ae
  %.pn18 = phi { ptr, i32 } [ %i.ey, %bb.ae ], [ %i.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %i.ez, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.au

end_hunk_0
