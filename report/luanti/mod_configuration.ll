Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mod_configuration?download=true
inline.NumInlined: 2032
inline.NumDeleted: 904
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN16ModConfiguration13addModsInPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_:bb.a
_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !51
  %.not.i1.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i1.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 67
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !52
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ay)
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !26
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call noundef signext i8 %i.bf(ptr noundef nonnull align 8 dereferenceable(570) %i.ay, i8 noundef signext 10), !inline_history !198
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.m, %bb.n
  %.0.i.i.i = phi i8 [ %i.bc, %bb.m ], [ %i.bg, %bb.n ]
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.av, i8 noundef signext %.0.i.i.i)
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bh) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit11, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_Z13getModsInPathRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_i(ptr dead_on_unwind nonnull writable sret(%"class.std::map") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 0)
  invoke void @_Z11flattenModsRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE7ModSpecSt4lessIS5_ESaISt4pairIKS5_S6_EEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %4, i1 noundef zeroext true)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  invoke void @_ZN16ModConfiguration7addModsERKSt6vectorI7ModSpecSaIS1_EE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.bj = load ptr, ptr %3, align 8, !tbaa !79    ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !80 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bj, %i.bl
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIP7ModSpecS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i ], [ %i.bj, %bb.p ] ; 2 uses
  call void @_ZN7ModSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(424) dereferenceable(424) %.05.i.i.i) #22
  %i.bm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 424 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bm, %i.bl
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIP7ModSpecS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIP7ModSpecS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !79
  br label %_ZSt8_DestroyIP7ModSpecS0_EvT_S2_RSaIT0_E.exit.i

_ZSt8_DestroyIP7ModSpecS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIP7ModSpecS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, %bb.p
  %i.bn = phi ptr [ %.pr.i, %_ZSt8_DestroyIP7ModSpecS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i ], [ %i.bj, %bb.p ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorI7ModSpecSaIS0_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIP7ModSpecS0_EvT_S2_RSaIT0_E.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !82
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #24
  br label %_ZNSt6vectorI7ModSpecSaIS0_EED2Ev.exit

_ZNSt6vectorI7ModSpecSaIS0_EED2Ev.exit:           ; preds = %_ZSt8_DestroyIP7ModSpecS0_EvT_S2_RSaIT0_E.exit.i, %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !87
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_7ModSpecESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.bu)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE7ModSpecSt4lessIS5_ESaISt4pairIKS5_S6_EEED2Ev.exit unwind label %bb.r, !inline_history !1

bb.r:                                             ; preds = %_ZNSt6vectorI7ModSpecSaIS0_EED2Ev.exit
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #26, !inline_history !1
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE7ModSpecSt4lessIS5_ESaISt4pairIKS5_S6_EEED2Ev.exit: ; preds = %_ZNSt6vectorI7ModSpecSaIS0_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.s:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorI7ModSpecSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #22
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.by, %bb.t ], [ %i.bx, %bb.s ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE7ModSpecSt4lessIS5_ESaISt4pairIKS5_S6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: uwtable
define dso_local void @_ZN16ModConfiguration7addModsERKSt6vectorI7ModSpecSaIS1_EE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, unsigned int>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, unsigned int>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, unsigned int>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, unsigned int>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  %4 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, unsigned int>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, unsigned int>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  %5 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.std::tuple", align 8        ; 4 uses
  %7 = alloca %"class.std::tuple.155", align 1    ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %"class.std::tuple", align 8        ; 4 uses
  %9 = alloca %"class.std::tuple.155", align 1    ; 3 uses
  %10 = alloca %"class.std::tuple", align 8       ; 4 uses
  %11 = alloca %"class.std::tuple.155", align 1   ; 3 uses
  %12 = alloca %"class.std::map.16", align 8      ; 20 uses
  %13 = alloca %"class.std::set", align 8         ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 18 uses
  store i32 0, ptr %i.c, align 8, !tbaa !88
  %i.d = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !87
  %i.e = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.c, ptr %i.e, align 8, !tbaa !89
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.c, ptr %i.f, align 8, !tbaa !90
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 7 uses
  store i64 0, ptr %i.g, align 8, !tbaa !91
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !80
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !79   ; 2 uses
  %.not610 = icmp eq ptr %i.j, %i.k
  br i1 %.not610, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not.i197 = icmp eq ptr @_ZTH13warningstream, null ; 2 uses
  %i.s = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.f

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.x = phi ptr [ %i.af, %bb.b ], [ %i.k, %bb.a ]
  %i.y = phi i64 [ %i.ad, %bb.b ], [ 0, %bb.a ]
  %.0597 = phi i32 [ %i.ac, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.z = getelementptr inbounds nuw [424 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.lr.ph
  store i32 %.0597, ptr %i.ab, align 4, !tbaa !202
  %i.ac = add i32 %.0597, 1                       ; 2 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !80
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !79  ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 424
  %i.ak = icmp ugt i64 %i.aj, %i.ad
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !199

bb.c:                                             ; preds = %.lr.ph
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.d:                                             ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !87
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef %i.am)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #26
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  ret void

bb.f:                                             ; preds = %._crit_edge, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit
  %not..045.ptr.sroa.idx = phi i8 [ 1, %._crit_edge ], [ 0, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit ]
  %.not = phi i1 [ false, %._crit_edge ], [ true, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  store i32 0, ptr %i.l, align 8, !tbaa !88
  store ptr null, ptr %i.m, align 8, !tbaa !87
  store ptr %i.l, ptr %i.n, align 8, !tbaa !89
  store ptr %i.l, ptr %i.o, align 8, !tbaa !90
  store i64 0, ptr %i.p, align 8, !tbaa !91
  %i.ap = load ptr, ptr %1, align 8, !tbaa !54    ; 2 uses
  %i.aq = load ptr, ptr %i.q, align 8, !tbaa !54  ; 2 uses
  %.not582603 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not582603, label %._crit_edge608, label %.lr.ph607

._crit_edge608.loopexit:                          ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit
  %.pre648 = load ptr, ptr %i.m, align 8, !tbaa !87
  br label %._crit_edge608

._crit_edge608:                                   ; preds = %._crit_edge608.loopexit, %bb.f
  %i.ar = phi ptr [ %.pre648, %._crit_edge608.loopexit ], [ null, %bb.f ]
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef %i.ar)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %._crit_edge608
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #26
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %._crit_edge608
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br i1 %.not, label %bb.d, label %bb.f

.lr.ph607:                                        ; preds = %bb.f, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit
  %.sroa.0464.0604 = phi ptr [ %i.wr, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit ], [ %i.ap, %bb.f ] ; 42 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0464.0604, i64 312 ; 3 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !203
  %i.aw = icmp sgt i32 %i.av, 0
  %i.ax = zext i1 %i.aw to i8
  %.not47 = icmp eq i8 %not..045.ptr.sroa.idx, %i.ax
  br i1 %.not47, label %bb.h, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit

bb.h:                                             ; preds = %.lr.ph607
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0464.0604, i64 8 ; 16 uses
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !87  ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE5countERS9_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0464.0604, i64 16 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !60 ; 16 uses
  %i.bc = load ptr, ptr %i.ay, align 8            ; 8 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 6 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !60 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bb, i64 %i.be) ; 2 uses
  %i.bf = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.bf, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !58
  %i.bi = call i32 @memcmp(ptr noundef %i.bh, ptr noundef %i.bc, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.i
  %i.bj = sub i64 %i.be, %i.bb
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bj, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.bi, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.bk = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 4 uses
  %.19.i.i.i = select i1 %i.bk, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.bk, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !109 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.i, !llvm.loop !200

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.bl = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.bl, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE5countERS9_.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bk, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.bm = load i64, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !60 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bb) ; 2 uses
  %i.bn = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.bn, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.j
  %.19.i.i.i.sroa.sel474.v.sroa.sel.v.sroa.sel.v = select i1 %i.bk, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel474.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel474.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.bo = load ptr, ptr %.19.i.i.i.sroa.sel474.v.sroa.sel.v.sroa.sel, align 8, !tbaa !58
  %i.bp = call i32 @memcmp(ptr noundef %i.bc, ptr noundef %i.bo, i64 noundef %.sroa.speculated.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE5countERS9_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.j
  %i.bq = sub i64 %i.bb, %i.bm
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bq, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE5countERS9_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE5countERS9_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.bp, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.br = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.br, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE5countERS9_.exit.thread, label %bb.u

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE5countERS9_.exit.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.h, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE5countERS9_.exit
  %i.bs = load ptr, ptr %i.i, align 8, !tbaa !80  ; 3 uses
  %i.bt = load ptr, ptr %i.v, align 8, !tbaa !82
  %.not.i = icmp eq ptr %i.bs, %i.bt
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE5countERS9_.exit.thread
  invoke void @_ZN7ModSpecC2ERKS_(ptr noundef nonnull align 8 dereferenceable(424) %i.bs, ptr noundef nonnull align 8 dereferenceable(424) %.sroa.0464.0604)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.k
  %i.bu = load ptr, ptr %i.i, align 8, !tbaa !80
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 424 ; 2 uses
  store ptr %i.bv, ptr %i.i, align 8, !tbaa !80
  br label %_ZNSt6vectorI7ModSpecSaIS0_EE9push_backERKS0_.exit

bb.l:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE5countERS9_.exit.thread
  invoke void @_ZNSt6vectorI7ModSpecSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr %i.bs, ptr noundef nonnull align 8 dereferenceable(424) %.sroa.0464.0604)
          to label %._ZNSt6vectorI7ModSpecSaIS0_EE9push_backERKS0_.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt6vectorI7ModSpecSaIS0_EE9push_backERKS0_.exit_crit_edge: ; preds = %bb.l
  %.pre643 = load ptr, ptr %i.i, align 8, !tbaa !80
  br label %_ZNSt6vectorI7ModSpecSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI7ModSpecSaIS0_EE9push_backERKS0_.exit: ; preds = %._ZNSt6vectorI7ModSpecSaIS0_EE9push_backERKS0_.exit_crit_edge, %.noexc
  %i.bw = phi ptr [ %.pre643, %._ZNSt6vectorI7ModSpecSaIS0_EE9push_backERKS0_.exit_crit_edge ], [ %i.bv, %.noexc ]
  %i.bx = load ptr, ptr %i.h, align 8, !tbaa !79
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 424
  %i.cc = load ptr, ptr %i.d, align 8, !tbaa !87  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorI7ModSpecSaIS0_EE9push_backERKS0_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0464.0604, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !60 ; 4 uses
  %i.cf = load ptr, ptr %i.ay, align 8            ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 6 uses
  %.0811.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !60 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ce, i64 %i.ch) ; 2 uses
  %i.ci = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.ci, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !58
  %i.cl = call i32 @memcmp(ptr noundef %i.ck, ptr noundef %i.cf, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.m
  %i.cm = sub i64 %i.ch, %i.ce
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.cm, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.cl, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.cn = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 4 uses
  %.19.i.i.i.i = select i1 %i.cn, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.cn, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !109 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE11lower_boundERS9_.exit.i, label %bb.m, !llvm.loop !2

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE11lower_boundERS9_.exit.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.co = icmp eq ptr %.19.i.i.i.i, %i.c
  br i1 %i.co, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE11lower_boundERS9_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.cn, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.cp = load i64, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !60 ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cp, i64 %i.ce) ; 2 uses
  %i.cq = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.cq, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.n
  %.19.i.i.i.i.sroa.sel477.v.sroa.sel.v.sroa.sel.v = select i1 %i.cn, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel477.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel477.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.cr = load ptr, ptr %.19.i.i.i.i.sroa.sel477.v.sroa.sel.v.sroa.sel, align 8, !tbaa !58
  %i.cs = call i32 @memcmp(ptr noundef %i.cf, ptr noundef %i.cr, i64 noundef %.sroa.speculated.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i4.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i.i4.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.n
  %i.ct = sub i64 %i.ce, %i.cp
  %spec.select7.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ct, i64 -2147483648)
  %.08.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.cs, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.cu = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.cu, label %.critedge.i, label %bb.t

.critedge.i:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE11lower_boundERS9_.exit.i, %_ZNSt6vectorI7ModSpecSaIS0_EE9push_backERKS0_.exit
  %.08.lcssa.i.i.i12.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE11lower_boundERS9_.exit.i ], [ %i.c, %_ZNSt6vectorI7ModSpecSaIS0_EE9push_backERKS0_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr %i.ay, ptr %10, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %12, ptr %4, align 8, !tbaa !113
  %i.cv = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #27
          to label %.noexc264 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc264:                                        ; preds = %.critedge.i
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull %i.cv, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc265 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc265:                                        ; preds = %.noexc264
end_hunk_0
