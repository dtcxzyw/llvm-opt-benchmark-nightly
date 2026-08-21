Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/matches_relation_factory?download=true
inline.NumInlined: 7990
inline.NumDeleted: 2697
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE14add_emacs_codeEb:bb.a
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !974
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.fj = load ptr, ptr %0, align 8, !tbaa !969
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !817
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !848, !noalias !1354
  invoke void @_ZNK5boost13re_detail_60031cpp_regex_traits_implementationIwE12error_stringB5cxx11ENS_15regex_constants10error_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(232) %i.fm, i32 noundef 4)
          to label %.noexc80 unwind label %bb.aj

.noexc80:                                         ; preds = %bb.cj
  %i.fn = ptrtoint ptr %i.c to i64
  %i.fo = ptrtoint ptr %i.fi to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = ashr exact i64 %i.fp, 2
  invoke void @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 4, i64 noundef %i.fq, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.ck unwind label %bb.cl

bb.ck:                                            ; preds = %.noexc80
  %i.fr = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78: ; preds = %bb.ck
  %i.fu = load i64, ptr %i.fs, align 8, !tbaa !16
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fv) #31
  br label %_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl.exit81

bb.cl:                                            ; preds = %.noexc80
  %i.fw = landingpad { ptr, i32 }
          cleanup
  %i.fx = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i75: ; preds = %bb.cl
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !16
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i76: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.body

_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl.exit81: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.cr

bb.cm:                                            ; preds = %bb.cg, %bb.ca, %bb.bu, %bb.bk, %bb.ba, %bb.aq, %_ZNK5boost16cpp_regex_traitsIwE16lookup_classnameEPKwS3_.exit, %bb.z, %bb.i, %bb.h
  %i.gc = invoke noundef ptr @_ZN5boost13re_detail_60019basic_regex_creatorIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE10append_setERKNS0_14basic_char_setIwS5_EEPSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef null)
          to label %_ZN5boost13re_detail_60019basic_regex_creatorIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE10append_setERKNS0_14basic_char_setIwS5_EE.exit unwind label %bb.aj

_ZN5boost13re_detail_60019basic_regex_creatorIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE10append_setERKNS0_14basic_char_setIwS5_EE.exit: ; preds = %bb.cm
  %i.gd = icmp eq ptr %i.gc, null
  %i.ge = load ptr, ptr %i.a, align 8, !tbaa !975 ; 2 uses
  br i1 %i.gd, label %bb.cn, label %bb.cq

bb.cn:                                            ; preds = %_ZN5boost13re_detail_60019basic_regex_creatorIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE10append_setERKNS0_14basic_char_setIwS5_EE.exit
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !974
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.gh = load ptr, ptr %0, align 8, !tbaa !969
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !817
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !848, !noalias !1357
  invoke void @_ZNK5boost13re_detail_60031cpp_regex_traits_implementationIwE12error_stringB5cxx11ENS_15regex_constants10error_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(232) %i.gk, i32 noundef 4)
          to label %.noexc88 unwind label %bb.aj

.noexc88:                                         ; preds = %bb.cn
  %i.gl = ptrtoint ptr %i.ge to i64
  %i.gm = ptrtoint ptr %i.gg to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = ashr exact i64 %i.gn, 2
  invoke void @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 4, i64 noundef %i.go, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.co unwind label %bb.cp

bb.co:                                            ; preds = %.noexc88
  %i.gp = load ptr, ptr %2, align 8, !tbaa !14    ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86: ; preds = %bb.co
  %i.gs = load i64, ptr %i.gq, align 8, !tbaa !16
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gt) #31
  br label %_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl.exit91

bb.cp:                                            ; preds = %.noexc88
  %i.gu = landingpad { ptr, i32 }
          cleanup
  %i.gv = load ptr, ptr %2, align 8, !tbaa !14    ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.gx = icmp eq ptr %i.gv, %i.gw
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i83: ; preds = %bb.cp
  %i.gy = load i64, ptr %i.gw, align 8, !tbaa !16
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gz) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i84: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %.body

_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl.exit91: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.cr

bb.cq:                                            ; preds = %_ZN5boost13re_detail_60019basic_regex_creatorIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE10append_setERKNS0_14basic_char_setIwS5_EE.exit
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  store ptr %i.ha, ptr %i.a, align 8, !tbaa !975
  br label %bb.cr

bb.cr:                                            ; preds = %_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl.exit91, %_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl.exit81, %bb.cq
  %.05 = phi i1 [ true, %bb.cq ], [ false, %_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl.exit81 ], [ false, %_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl.exit91 ]
  %i.hb = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.hc = load ptr, ptr %i.ay, align 8, !tbaa !121
  invoke void @_ZNSt8_Rb_treeIN5boost13re_detail_6007digraphIwEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %i.hb, ptr noundef %i.hc)
          to label %_ZNSt3setIN5boost13re_detail_6007digraphIwEESt4lessIS3_ESaIS3_EED2Ev.exit.i unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.hd = landingpad { ptr, i32 }
          catch ptr null
  %i.he = extractvalue { ptr, i32 } %i.hd, 0
  call void @__clang_call_terminate(ptr %i.he) #28
  unreachable

_ZNSt3setIN5boost13re_detail_6007digraphIwEESt4lessIS3_ESaIS3_EED2Ev.exit.i: ; preds = %bb.cr
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !1052 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5boost13re_detail_6007digraphIwEESaIS3_EED2Ev.exit.i, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt3setIN5boost13re_detail_6007digraphIwEESt4lessIS3_ESaIS3_EED2Ev.exit.i
  %i.hh = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !1053
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = ptrtoint ptr %i.hg to i64
  %i.hl = sub i64 %i.hj, %i.hk
  call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef %i.hl) #31
  br label %_ZNSt6vectorIN5boost13re_detail_6007digraphIwEESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN5boost13re_detail_6007digraphIwEESaIS3_EED2Ev.exit.i: ; preds = %bb.ct, %_ZNSt3setIN5boost13re_detail_6007digraphIwEESt4lessIS3_ESaIS3_EED2Ev.exit.i
  %i.hm = load ptr, ptr %i.at, align 8, !tbaa !121
  invoke void @_ZNSt8_Rb_treeIN5boost13re_detail_6007digraphIwEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef %i.hm)
          to label %_ZN5boost13re_detail_60014basic_char_setIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEED2Ev.exit unwind label %bb.cu

bb.cu:                                            ; preds = %_ZNSt6vectorIN5boost13re_detail_6007digraphIwEESaIS3_EED2Ev.exit.i
  %i.hn = landingpad { ptr, i32 }
          catch ptr null
  %i.ho = extractvalue { ptr, i32 } %i.hn, 0
  call void @__clang_call_terminate(ptr %i.ho) #28
  unreachable

_ZN5boost13re_detail_60014basic_char_setIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEED2Ev.exit: ; preds = %_ZNSt6vectorIN5boost13re_detail_6007digraphIwEESaIS3_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.cv

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i84, %bb.aj, %bb.ci, %bb.ch, %bb.cb, %bb.bx, %bb.bw, %bb.bv, %bb.bn, %bb.bm, %bb.bl, %bb.bd, %bb.bc, %bb.bb, %bb.at, %bb.as, %bb.ar, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.ff, %bb.ch ], [ %i.cr, %bb.ah ], [ %i.cq, %bb.ag ], [ %i.cp, %bb.af ], [ %i.co, %bb.ae ], [ %i.cn, %bb.ad ], [ %i.cm, %bb.ac ], [ %i.cl, %bb.ab ], [ %i.ck, %bb.aa ], [ %i.dk, %bb.at ], [ %i.dj, %bb.as ], [ %i.di, %bb.ar ], [ %i.dw, %bb.bd ], [ %i.dv, %bb.bc ], [ %i.du, %bb.bb ], [ %i.ei, %bb.bn ], [ %i.eh, %bb.bm ], [ %i.eg, %bb.bl ], [ %i.eu, %bb.bx ], [ %i.et, %bb.bw ], [ %i.es, %bb.bv ], [ %i.ey, %bb.cb ], [ %i.fg, %bb.ci ], [ %i.fw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i76 ], [ %i.cy, %bb.aj ], [ %i.gu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i84 ]
  call void @_ZN5boost13re_detail_60014basic_char_setIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %common.resume

bb.cv:                                            ; preds = %_ZN5boost13re_detail_60014basic_char_setIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEED2Ev.exit, %_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl.exit
  %.1 = phi i1 [ false, %_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl.exit ], [ %.05, %_ZN5boost13re_detail_60014basic_char_setIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEED2Ev.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeElNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1, i64 noundef %2, ptr noundef align 8 %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.boost::regex_error", align 8 ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !969    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !982
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.d, align 4, !tbaa !982
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !976  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.h, ptr %i.i, align 8, !tbaa !975
  %i.j = icmp eq i64 %4, %2
  %i.k = tail call i64 @llvm.smax.i64(i64 %2, i64 10)
  %.sroa.speculated69 = add nsw i64 %i.k, -10
  %.021 = select i1 %i.j, i64 %.sroa.speculated69, i64 %4 ; 3 uses
  %i.l = add nsw i64 %2, 10                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !974
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 2                   ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.r, i64 %i.l) ; 2 uses
  %.not = icmp eq i32 %1, 17
  br i1 %.not, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not25 = icmp eq i64 %.021, 0
  %.not26 = icmp sle i64 %i.r, %i.l
  %or.cond = select i1 %.not25, i1 %.not26, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !17   ; 2 uses
  br i1 %or.cond, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add i64 %i.t, -4611686018427387835
  %i.v = icmp ult i64 %i.u, 69
  br i1 %i.v, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.e
  %i.w = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.251, i64 noundef 69) ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.x = add i64 %i.t, -4611686018427387844
  %i.y = icmp ult i64 %i.x, 60
  br i1 %i.y, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34: ; preds = %bb.g
  %i.z = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.252, i64 noundef 60) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %.not27 = icmp eq i64 %.021, %.sroa.speculated
  br i1 %.not27, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !974 ; 2 uses
  %.idx74 = shl nsw i64 %.021, 2                  ; 5 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 %.idx74 ; 5 uses
  %.idx = shl nsw i64 %2, 2                       ; 10 uses
  %i.ac = getelementptr i8, ptr %i.aa, i64 %.idx  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ad, ptr %5, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.ae, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %gepdiff = sub nsw i64 %.idx, %.idx74
  %i.af = ashr exact i64 %gepdiff, 2              ; 3 uses
  store i64 %i.af, ptr %i.b, align 8, !tbaa !12
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.j
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ah, ptr %5, align 8, !tbaa !14
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !12  ; 2 uses
  store i64 %i.ai, ptr %i.ad, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.j
  %i.aj = phi i64 [ %i.ai, %.noexc ], [ %i.af, %bb.j ]
  %i.ak = phi ptr [ %i.ah, %.noexc ], [ %i.ad, %bb.j ] ; 7 uses
  %.not7.i.i.i = icmp eq i64 %.idx74, %.idx
  br i1 %.not7.i.i.i, label %bb.k, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %._crit_edge.i.i
  %i.al = add i64 %.idx, -4
  %i.am = sub i64 %i.al, %.idx74                  ; 2 uses
  %i.an = lshr exact i64 %i.am, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.am, 92
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader112, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ap = add i64 %.idx, -4
  %i.aq = sub i64 %i.ap, %.idx74
  %i.ar = lshr exact i64 %i.aq, 2
  %i.as = getelementptr i8, ptr %i.ak, i64 %i.ar
  %scevgep = getelementptr i8, ptr %i.as, i64 1
  %bound0 = icmp ult ptr %i.ak, %i.ac
  %bound1 = icmp ult ptr %i.ab, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader112, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ao, 9223372036854775800     ; 4 uses
  %i.at = getelementptr i8, ptr %i.ak, i64 %n.vec
  %i.au = shl i64 %n.vec, 2
  %i.av = getelementptr i8, ptr %i.ab, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %index ; 2 uses
  %i.aw = shl i64 %index, 2
  %next.gep88 = getelementptr i8, ptr %i.ab, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep88, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep88, align 4, !tbaa !808, !alias.scope !1360
  %wide.load89 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !808, !alias.scope !1360
  %i.ay = trunc <4 x i32> %wide.load to <4 x i8>
  %i.az = trunc <4 x i32> %wide.load89 to <4 x i8>
  %i.ba = getelementptr i8, ptr %next.gep, i64 4
  store <4 x i8> %i.ay, ptr %next.gep, align 1, !tbaa !16, !alias.scope !1363, !noalias !1360
  store <4 x i8> %i.az, ptr %i.ba, align 1, !tbaa !16, !alias.scope !1363, !noalias !1360
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !1365

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.preheader112

.lr.ph.i.i.i.preheader112:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.09.i.i.i.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.068.i.i.i.ph = phi ptr [ %i.ab, %vector.memcheck ], [ %i.ab, %.lr.ph.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader112, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader112 ] ; 2 uses
  %.068.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i ], [ %.068.i.i.i.ph, %.lr.ph.i.i.i.preheader112 ] ; 2 uses
  %i.bc = load i32, ptr %.068.i.i.i, align 4, !tbaa !808
  %i.bd = trunc i32 %i.bc to i8
  store i8 %i.bd, ptr %.09.i.i.i, align 1, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 1
  %.not.i.i.i = icmp eq ptr %i.be, %i.ac
  br i1 %.not.i.i.i, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1366

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block
  %.pre12.i.i = load i64, ptr %i.b, align 8, !tbaa !12
  %.pre13.i.i = load ptr, ptr %5, align 8, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, %._crit_edge.i.i
  %i.bg = phi ptr [ %.pre13.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %i.ak, %._crit_edge.i.i ]
  %i.bh = phi i64 [ %.pre12.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %i.aj, %._crit_edge.i.i ] ; 2 uses
  store i64 %i.bh, ptr %i.ae, align 8, !tbaa !17
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bh
  store i8 0, ptr %i.bi, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.bj = load i64, ptr %i.ae, align 8, !tbaa !17 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !17
  %i.bm = sub i64 4611686018427387903, %i.bl
  %i.bn = icmp ult i64 %i.bm, %i.bj
  br i1 %i.bn, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #29
          to label %.noexc35 unwind label %bb.q

.noexc35:                                         ; preds = %bb.l
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.k
  %i.bo = load ptr, ptr %5, align 8, !tbaa !14
  %i.bp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.bo, i64 noundef %i.bj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.q ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bq = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.ad
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.bs = load i64, ptr %i.ad, align 8, !tbaa !16
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.bu = load i64, ptr %i.bk, align 8, !tbaa !17
  %i.bv = add i64 %i.bu, -4611686018427387894
  %i.bw = icmp ult i64 %i.bv, 10
  br i1 %i.bw, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.253, i64 noundef 10) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.by = load ptr, ptr %i.m, align 8, !tbaa !974 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 %.idx  ; 5 uses
  %.idx75 = shl nsw i64 %.sroa.speculated, 2      ; 5 uses
  %i.ca = getelementptr i8, ptr %i.by, i64 %.idx75 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.cb, ptr %6, align 8, !tbaa !8
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.cc, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %gepdiff77 = sub nsw i64 %.idx75, %.idx
  %i.cd = ashr exact i64 %gepdiff77, 2            ; 3 uses
  store i64 %i.cd, ptr %i.a, align 8, !tbaa !12
  %i.ce = icmp ugt i64 %i.cd, 15
  br i1 %i.ce, label %.noexc.i47, label %._crit_edge.i.i38

.noexc.i47:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37
  %i.cf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc48 unwind label %bb.r   ; 2 uses

.noexc48:                                         ; preds = %.noexc.i47
  store ptr %i.cf, ptr %6, align 8, !tbaa !14
  %i.cg = load i64, ptr %i.a, align 8, !tbaa !12  ; 2 uses
  store i64 %i.cg, ptr %i.cb, align 8, !tbaa !16
  br label %._crit_edge.i.i38

._crit_edge.i.i38:                                ; preds = %.noexc48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37
  %i.ch = phi i64 [ %i.cg, %.noexc48 ], [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37 ]
  %i.ci = phi ptr [ %i.cf, %.noexc48 ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37 ] ; 7 uses
  %.not7.i.i.i39 = icmp eq i64 %.idx, %.idx75
  br i1 %.not7.i.i.i39, label %bb.n, label %.lr.ph.i.i.i40.preheader

.lr.ph.i.i.i40.preheader:                         ; preds = %._crit_edge.i.i38
  %i.cj = add i64 %.idx75, -4
  %i.ck = sub i64 %i.cj, %.idx                    ; 2 uses
  %i.cl = lshr exact i64 %i.ck, 2
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %min.iters.check97 = icmp ult i64 %i.ck, 92
  br i1 %min.iters.check97, label %.lr.ph.i.i.i40.preheader111, label %vector.memcheck91

vector.memcheck91:                                ; preds = %.lr.ph.i.i.i40.preheader
  %i.cn = add i64 %.idx75, -4
  %i.co = sub i64 %i.cn, %.idx
  %i.cp = lshr exact i64 %i.co, 2
  %i.cq = getelementptr i8, ptr %i.ci, i64 %i.cp
  %scevgep92 = getelementptr i8, ptr %i.cq, i64 1
  %bound093 = icmp ult ptr %i.ci, %i.ca
  %bound194 = icmp ult ptr %i.bz, %scevgep92
  %found.conflict95 = and i1 %bound093, %bound194
  br i1 %found.conflict95, label %.lr.ph.i.i.i40.preheader111, label %vector.ph98

vector.ph98:                                      ; preds = %vector.memcheck91
  %n.vec99 = and i64 %i.cm, 9223372036854775800   ; 4 uses
  %i.cr = getelementptr i8, ptr %i.ci, i64 %n.vec99
  %i.cs = shl i64 %n.vec99, 2
  %i.ct = getelementptr i8, ptr %i.bz, i64 %i.cs
  br label %vector.body100

vector.body100:                                   ; preds = %vector.body100, %vector.ph98
  %index101 = phi i64 [ 0, %vector.ph98 ], [ %index.next106, %vector.body100 ] ; 3 uses
  %next.gep102 = getelementptr i8, ptr %i.ci, i64 %index101 ; 2 uses
  %i.cu = shl i64 %index101, 2
  %next.gep103 = getelementptr i8, ptr %i.bz, i64 %i.cu ; 2 uses
  %i.cv = getelementptr i8, ptr %next.gep103, i64 16
  %wide.load104 = load <4 x i32>, ptr %next.gep103, align 4, !tbaa !808, !alias.scope !1367
  %wide.load105 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !808, !alias.scope !1367
  %i.cw = trunc <4 x i32> %wide.load104 to <4 x i8>
  %i.cx = trunc <4 x i32> %wide.load105 to <4 x i8>
  %i.cy = getelementptr i8, ptr %next.gep102, i64 4
  store <4 x i8> %i.cw, ptr %next.gep102, align 1, !tbaa !16, !alias.scope !1370, !noalias !1367
  store <4 x i8> %i.cx, ptr %i.cy, align 1, !tbaa !16, !alias.scope !1370, !noalias !1367
  %index.next106 = add nuw i64 %index101, 8       ; 2 uses
  %i.cz = icmp eq i64 %index.next106, %n.vec99
  br i1 %i.cz, label %middle.block107, label %vector.body100, !llvm.loop !1372

middle.block107:                                  ; preds = %vector.body100
  %cmp.n108 = icmp eq i64 %i.cm, %n.vec99
  br i1 %cmp.n108, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i44, label %.lr.ph.i.i.i40.preheader111

.lr.ph.i.i.i40.preheader111:                      ; preds = %vector.memcheck91, %.lr.ph.i.i.i40.preheader, %middle.block107
  %.09.i.i.i41.ph = phi ptr [ %i.ci, %vector.memcheck91 ], [ %i.ci, %.lr.ph.i.i.i40.preheader ], [ %i.cr, %middle.block107 ]
  %.068.i.i.i42.ph = phi ptr [ %i.bz, %vector.memcheck91 ], [ %i.bz, %.lr.ph.i.i.i40.preheader ], [ %i.ct, %middle.block107 ]
  br label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %.lr.ph.i.i.i40.preheader111, %.lr.ph.i.i.i40
  %.09.i.i.i41 = phi ptr [ %i.dd, %.lr.ph.i.i.i40 ], [ %.09.i.i.i41.ph, %.lr.ph.i.i.i40.preheader111 ] ; 2 uses
  %.068.i.i.i42 = phi ptr [ %i.dc, %.lr.ph.i.i.i40 ], [ %.068.i.i.i42.ph, %.lr.ph.i.i.i40.preheader111 ] ; 2 uses
  %i.da = load i32, ptr %.068.i.i.i42, align 4, !tbaa !808
  %i.db = trunc i32 %i.da to i8
  store i8 %i.db, ptr %.09.i.i.i41, align 1, !tbaa !16
  %i.dc = getelementptr inbounds nuw i8, ptr %.068.i.i.i42, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.09.i.i.i41, i64 1
  %.not.i.i.i43 = icmp eq ptr %i.dc, %i.ca
  br i1 %.not.i.i.i43, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i44, label %.lr.ph.i.i.i40, !llvm.loop !1373

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i44: ; preds = %.lr.ph.i.i.i40, %middle.block107
  %.pre12.i.i45 = load i64, ptr %i.a, align 8, !tbaa !12
  %.pre13.i.i46 = load ptr, ptr %6, align 8, !tbaa !14
  br label %bb.n

bb.n:                                             ; preds = %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i44, %._crit_edge.i.i38
  %i.de = phi ptr [ %.pre13.i.i46, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i44 ], [ %i.ci, %._crit_edge.i.i38 ]
  %i.df = phi i64 [ %.pre12.i.i45, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i44 ], [ %i.ch, %._crit_edge.i.i38 ] ; 2 uses
  store i64 %i.df, ptr %i.cc, align 8, !tbaa !17
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.df
  store i8 0, ptr %i.dg, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.dh = load i64, ptr %i.cc, align 8, !tbaa !17 ; 2 uses
  %i.di = load i64, ptr %i.bk, align 8, !tbaa !17
  %i.dj = sub i64 4611686018427387903, %i.di
  %i.dk = icmp ult i64 %i.dj, %i.dh
  br i1 %i.dk, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i50

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #29
          to label %.noexc51 unwind label %bb.s

.noexc51:                                         ; preds = %bb.o
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i50: ; preds = %bb.n
  %i.dl = load ptr, ptr %6, align 8, !tbaa !14
  %i.dm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.dl, i64 noundef %i.dh)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit53 unwind label %bb.s ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i50
  %i.dn = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.cb
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit53
  %i.dp = load i64, ptr %i.cb, align 8, !tbaa !16
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.t

bb.p:                                             ; preds = %.noexc.i
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.l
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.ad
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.q
  %i.dv = load i64, ptr %i.ad, align 8, !tbaa !16
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %bb.p
  %.pn = phi { ptr, i32 } [ %i.dr, %bb.p ], [ %i.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %i.ds, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.z

bb.r:                                             ; preds = %.noexc.i47
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i50, %bb.o
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.cb
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.s
  %i.eb = load i64, ptr %i.cb, align 8, !tbaa !16
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60, %bb.r
  %.pn29 = phi { ptr, i32 } [ %i.dx, %bb.r ], [ %i.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ], [ %i.dy, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.z

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %bb.i
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !17
  %i.ef = and i64 %i.ee, -2
  %i.eg = icmp eq i64 %i.ef, 4611686018427387902
  br i1 %i.eg, label %bb.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit63

bb.u:                                             ; preds = %bb.t
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit63: ; preds = %bb.t
  %i.eh = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.254, i64 noundef 2) ; 0 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !969
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit63, %bb.c
  %i.ei = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit63 ], [ %i.c, %bb.c ]
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !970
  %i.el = and i32 %i.ek, 262144
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %3)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost11regex_errorE, i64 16), ptr %7, align 8, !tbaa !33
  %i.en = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %1, ptr %i.en, align 8, !tbaa !744
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %2, ptr %i.eo, align 8, !tbaa !750
  invoke void @_ZN5boost15throw_exceptionINS_11regex_errorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(32) %7) #29
          to label %.noexc64 unwind label %bb.x

.noexc64:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  ret void

bb.z:                                             ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
end_hunk_0
