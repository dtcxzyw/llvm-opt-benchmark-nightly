Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/phonenumbermatcher?download=true
inline.NumInlined: 1003
inline.NumDeleted: 395
begin_hunk_0_@_ZN4i18n12phonenumbers25PhoneNumberMatcherRegExpsC2Ev:._crit_edge.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %46, i64 21
  store i8 0, ptr %i.ef, align 1, !tbaa !37
  %i.eg = load ptr, ptr %i.ec, align 8, !tbaa !52
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = invoke noundef ptr %i.ei(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef nonnull align 8 dereferenceable(32) %46)
          to label %bb.bl unwind label %bb.hn

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258
  store ptr %i.ej, ptr %i.eb, align 8, !tbaa !57
  %i.ek = load ptr, ptr %46, align 8, !tbaa !34   ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.ed
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263: ; preds = %bb.bl
  %i.em = load i64, ptr %i.ed, align 8, !tbaa !37
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #21
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.ep = load ptr, ptr %i.aj, align 8, !tbaa !60 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !52
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = invoke noundef ptr %i.es(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %bb.bm unwind label %bb.ho

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265
  store ptr %i.et, ptr %i.eo, align 8, !tbaa !57
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.ev = load ptr, ptr %i.ah, align 8, !tbaa !60 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #21
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %48, ptr noundef nonnull @.str.37)
          to label %bb.bn unwind label %bb.hp

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #21
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %49, ptr noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %bb.bo unwind label %bb.hq

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #21
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %50, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %bb.bp unwind label %bb.hr

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #21
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %51, ptr noundef nonnull @.str.38)
          to label %bb.bq unwind label %bb.hs

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #21
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %52, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %bb.br unwind label %bb.ht

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #21
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %53, ptr noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %bb.bs unwind label %bb.hu

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #21
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %54, ptr noundef nonnull @.str.25)
          to label %bb.bt unwind label %bb.hv

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #21
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %55, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %bb.bu unwind label %bb.hw

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #21
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %56, ptr noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %bb.bv unwind label %bb.hx

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #21
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %57, ptr noundef nonnull @.str.38)
          to label %bb.bw unwind label %bb.hy

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #21
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %58, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %bb.bx unwind label %bb.hz

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #21
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %59, ptr noundef nonnull @.str.39)
          to label %bb.by unwind label %bb.ia

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #21
  %i.ew = invoke noundef ptr @_ZN4i18n12phonenumbers15PhoneNumberUtil11GetInstanceEv()
          to label %bb.bz unwind label %bb.ib

bb.bz:                                            ; preds = %bb.by
  %i.ex = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4i18n12phonenumbers15PhoneNumberUtil26GetExtnPatternsForMatchingB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.ew)
          to label %bb.ca unwind label %bb.ib

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %60, ptr noundef nonnull align 8 dereferenceable(32) %i.ex)
          to label %bb.cb unwind label %bb.ib

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #21
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %61, ptr noundef nonnull @.str.40)
          to label %bb.cc unwind label %bb.ic

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZN4i18n12phonenumbers6StrCatB5cxx11ERKNS0_12StringHolderES3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %47, ptr noundef nonnull align 8 dereferenceable(48) %48, ptr noundef nonnull align 8 dereferenceable(48) %49, ptr noundef nonnull align 8 dereferenceable(48) %50, ptr noundef nonnull align 8 dereferenceable(48) %51, ptr noundef nonnull align 8 dereferenceable(48) %52, ptr noundef nonnull align 8 dereferenceable(48) %53, ptr noundef nonnull align 8 dereferenceable(48) %54, ptr noundef nonnull align 8 dereferenceable(48) %55, ptr noundef nonnull align 8 dereferenceable(48) %56, ptr noundef nonnull align 8 dereferenceable(48) %57, ptr noundef nonnull align 8 dereferenceable(48) %58, ptr noundef nonnull align 8 dereferenceable(48) %59, ptr noundef nonnull align 8 dereferenceable(48) %60, ptr noundef nonnull align 8 dereferenceable(48) %61)
          to label %bb.cd unwind label %bb.id

bb.cd:                                            ; preds = %bb.cc
  %i.ey = load ptr, ptr %i.ev, align 8, !tbaa !52
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = invoke noundef ptr %i.fa(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef nonnull align 8 dereferenceable(32) %47)
          to label %bb.ce unwind label %bb.ie

bb.ce:                                            ; preds = %bb.cd
  store ptr %i.fb, ptr %i.eu, align 8, !tbaa !57
  %i.fc = load ptr, ptr %47, align 8, !tbaa !34   ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266: ; preds = %bb.ce
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !37
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %61) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %60) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %59) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %58) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %57) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %56) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %55) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %54) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %53) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %52) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %51) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %50) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %49) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %48) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #21
  %i.fh = load ptr, ptr %i.de, align 8, !tbaa !103 ; 4 uses
  %i.fi = load ptr, ptr %i.aj, align 8, !tbaa !60 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #21
  %i.fj = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 6 uses
  store ptr %i.fj, ptr %62, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.fj, ptr noundef nonnull align 1 dereferenceable(6) @.str.41, i64 6, i1 false)
  %i.fk = getelementptr inbounds nuw i8, ptr %62, i64 8
  store i64 6, ptr %i.fk, align 8, !tbaa !35
  %i.fl = getelementptr inbounds nuw i8, ptr %62, i64 22
  store i8 0, ptr %i.fl, align 2, !tbaa !37
  %i.fm = load ptr, ptr %i.fi, align 8, !tbaa !52
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = invoke noundef ptr %i.fo(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, ptr noundef nonnull align 8 dereferenceable(32) %62)
          to label %bb.cf unwind label %bb.it     ; 2 uses

bb.cf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 3 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !173 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !108
  %.not.i.i = icmp eq ptr %i.fr, %i.ft
  br i1 %.not.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  store ptr %i.fp, ptr %i.fr, align 8, !tbaa !106
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store ptr %i.fu, ptr %i.fq, align 8, !tbaa !173
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit

bb.ch:                                            ; preds = %bb.cf
  %i.fv = load ptr, ptr %i.fh, align 8, !tbaa !109 ; 4 uses
  %i.fw = ptrtoint ptr %i.fr to i64
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = sub i64 %i.fw, %i.fx                    ; 6 uses
  %i.fz = icmp eq i64 %i.fy, 9223372036854775800
  br i1 %i.fz, label %bb.ci, label %_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #25
          to label %.noexc273 unwind label %bb.it

.noexc273:                                        ; preds = %bb.ci
  unreachable

_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ch
  %i.ga = ashr exact i64 %i.fy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ga, i64 1)
  %68 = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ga ; 2 uses
  %i.gb = icmp ult i64 %68, %i.ga
  %i.gc = call i64 @llvm.umin.i64(i64 %68, i64 1152921504606846975)
  %i.gd = select i1 %i.gb, i64 1152921504606846975, i64 %i.gc ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.gd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ge = shl nuw nsw i64 %i.gd, 3
  %i.gf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ge) #24
          to label %.noexc274 unwind label %bb.it ; 4 uses

.noexc274:                                        ; preds = %_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.gg = getelementptr inbounds i8, ptr %i.gf, i64 %i.fy ; 2 uses
  store ptr %i.fp, ptr %i.gg, align 8, !tbaa !106
  %i.gh = icmp sgt i64 %i.fy, 0
  br i1 %i.gh, label %bb.cj, label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.cj:                                            ; preds = %.noexc274
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gf, ptr align 8 %i.fv, i64 %i.fy, i1 false)
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.cj, %.noexc274
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fv, i64 noundef %i.fy) #23
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.ck, %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.gf, ptr %i.fh, align 8, !tbaa !109
  store ptr %i.gi, ptr %i.fq, align 8, !tbaa !173
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.gd
  store ptr %i.gj, ptr %i.fs, align 8, !tbaa !108
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.cg
  %i.gk = load ptr, ptr %62, align 8, !tbaa !34   ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.fj
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit
  %i.gm = load i64, ptr %i.fj, align 8, !tbaa !37
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gn) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #21
  %i.go = load ptr, ptr %i.de, align 8, !tbaa !103 ; 4 uses
  %i.gp = load ptr, ptr %i.aj, align 8, !tbaa !60 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #21
  %i.gq = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 6 uses
  store ptr %i.gq, ptr %63, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.gq, ptr noundef nonnull align 1 dereferenceable(9) @.str.42, i64 9, i1 false)
  %i.gr = getelementptr inbounds nuw i8, ptr %63, i64 8
  store i64 9, ptr %i.gr, align 8, !tbaa !35
  %i.gs = getelementptr inbounds nuw i8, ptr %63, i64 25
  store i8 0, ptr %i.gs, align 1, !tbaa !37
  %i.gt = load ptr, ptr %i.gp, align 8, !tbaa !52
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = invoke noundef ptr %i.gv(ptr noundef nonnull align 8 dereferenceable(8) %i.gp, ptr noundef nonnull align 8 dereferenceable(32) %63)
          to label %bb.cl unwind label %bb.iu     ; 2 uses

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277
  %i.gx = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 3 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !173 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.go, i64 16 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !108
  %.not.i.i282 = icmp eq ptr %i.gy, %i.ha
  br i1 %.not.i.i282, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  store ptr %i.gw, ptr %i.gy, align 8, !tbaa !106
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store ptr %i.hb, ptr %i.gx, align 8, !tbaa !173
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit291

bb.cn:                                            ; preds = %bb.cl
  %i.hc = load ptr, ptr %i.go, align 8, !tbaa !109 ; 4 uses
  %i.hd = ptrtoint ptr %i.gy to i64
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = sub i64 %i.hd, %i.he                    ; 6 uses
  %i.hg = icmp eq i64 %i.hf, 9223372036854775800
  br i1 %i.hg, label %bb.co, label %_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i283

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #25
          to label %.noexc289.a unwind label %bb.iu

.noexc289.a:                                      ; preds = %bb.co
  unreachable

_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i283: ; preds = %bb.cn
  %i.hh = ashr exact i64 %i.hf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i284 = call i64 @llvm.umax.i64(i64 %i.hh, i64 1)
  %69 = add nsw i64 %.sroa.speculated.i.i.i.i284, %i.hh ; 2 uses
  %i.hi = icmp ult i64 %69, %i.hh
  %i.hj = call i64 @llvm.umin.i64(i64 %69, i64 1152921504606846975)
  %i.hk = select i1 %i.hi, i64 1152921504606846975, i64 %i.hj ; 3 uses
  %.not.i.i.i.i285 = icmp ne i64 %i.hk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i285)
  %i.hl = shl nuw nsw i64 %i.hk, 3
  %i.hm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hl) #24
          to label %.noexc290 unwind label %bb.iu ; 4 uses

.noexc290:                                        ; preds = %_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i283
  %i.hn = getelementptr inbounds i8, ptr %i.hm, i64 %i.hf ; 2 uses
  store ptr %i.gw, ptr %i.hn, align 8, !tbaa !106
  %i.ho = icmp sgt i64 %i.hf, 0
  br i1 %i.ho, label %bb.cp, label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i286

bb.cp:                                            ; preds = %.noexc290
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hm, ptr align 8 %i.hc, i64 %i.hf, i1 false)
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i286

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i286: ; preds = %bb.cp, %.noexc290
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %.not.i17.i.i.i287 = icmp eq ptr %i.hc, null
  br i1 %.not.i17.i.i.i287, label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i288, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i286
  call void @_ZdlPvm(ptr noundef nonnull %i.hc, i64 noundef %i.hf) #23
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i288

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i288: ; preds = %bb.cq, %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i286
  store ptr %i.hm, ptr %i.go, align 8, !tbaa !109
  store ptr %i.hp, ptr %i.gx, align 8, !tbaa !173
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.hk
  store ptr %i.hq, ptr %i.gz, align 8, !tbaa !108
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit291

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit291: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i288, %bb.cm
  %i.hr = load ptr, ptr %63, align 8, !tbaa !34   ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.gq
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit291
  %i.ht = load i64, ptr %i.gq, align 8, !tbaa !37
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hu) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit291, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #21
  %i.hv = load ptr, ptr %i.de, align 8, !tbaa !103 ; 4 uses
  %i.hw = load ptr, ptr %i.aj, align 8, !tbaa !60 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #21
  %i.hx = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 6 uses
  store ptr %i.hx, ptr %64, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 27, ptr %i.c, align 8, !tbaa !36
  %i.hy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %64, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc297 unwind label %bb.iv ; 2 uses

.noexc297:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294
  store ptr %i.hy, ptr %64, align 8, !tbaa !34
  %i.hz = load i64, ptr %i.c, align 8, !tbaa !36  ; 3 uses
  store i64 %i.hz, ptr %i.hx, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.hy, ptr noundef nonnull align 1 dereferenceable(27) @.str.43, i64 27, i1 false)
  %i.ia = getelementptr inbounds nuw i8, ptr %64, i64 8
  store i64 %i.hz, ptr %i.ia, align 8, !tbaa !35
  %i.ib = load ptr, ptr %64, align 8, !tbaa !34
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.hz
  store i8 0, ptr %i.ic, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.id = load ptr, ptr %i.hw, align 8, !tbaa !52
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = invoke noundef ptr %i.if(ptr noundef nonnull align 8 dereferenceable(8) %i.hw, ptr noundef nonnull align 8 dereferenceable(32) %64)
          to label %bb.cr unwind label %bb.iw     ; 2 uses

bb.cr:                                            ; preds = %.noexc297
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 3 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !173 ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hv, i64 16 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !108
  %.not.i.i299 = icmp eq ptr %i.ii, %i.ik
  br i1 %.not.i.i299, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  store ptr %i.ig, ptr %i.ii, align 8, !tbaa !106
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store ptr %i.il, ptr %i.ih, align 8, !tbaa !173
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit308

bb.ct:                                            ; preds = %bb.cr
  %i.im = load ptr, ptr %i.hv, align 8, !tbaa !109 ; 4 uses
  %i.in = ptrtoint ptr %i.ii to i64
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = sub i64 %i.in, %i.io                    ; 6 uses
  %i.iq = icmp eq i64 %i.ip, 9223372036854775800
  br i1 %i.iq, label %bb.cu, label %_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i300

bb.cu:                                            ; preds = %bb.ct
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #25
          to label %.noexc306 unwind label %bb.iw

.noexc306:                                        ; preds = %bb.cu
  unreachable

_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i300: ; preds = %bb.ct
  %i.ir = ashr exact i64 %i.ip, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i301 = call i64 @llvm.umax.i64(i64 %i.ir, i64 1)
  %70 = add nsw i64 %.sroa.speculated.i.i.i.i301, %i.ir ; 2 uses
  %i.is = icmp ult i64 %70, %i.ir
  %i.it = call i64 @llvm.umin.i64(i64 %70, i64 1152921504606846975)
  %i.iu = select i1 %i.is, i64 1152921504606846975, i64 %i.it ; 3 uses
  %.not.i.i.i.i302 = icmp ne i64 %i.iu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i302)
  %i.iv = shl nuw nsw i64 %i.iu, 3
  %i.iw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iv) #24
          to label %.noexc307 unwind label %bb.iw ; 4 uses

.noexc307:                                        ; preds = %_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i300
  %i.ix = getelementptr inbounds i8, ptr %i.iw, i64 %i.ip ; 2 uses
  store ptr %i.ig, ptr %i.ix, align 8, !tbaa !106
  %i.iy = icmp sgt i64 %i.ip, 0
  br i1 %i.iy, label %bb.cv, label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i303

bb.cv:                                            ; preds = %.noexc307
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iw, ptr align 8 %i.im, i64 %i.ip, i1 false)
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i303

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i303: ; preds = %bb.cv, %.noexc307
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %.not.i17.i.i.i304 = icmp eq ptr %i.im, null
  br i1 %.not.i17.i.i.i304, label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i305, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i303
  call void @_ZdlPvm(ptr noundef nonnull %i.im, i64 noundef %i.ip) #23
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i305

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i305: ; preds = %bb.cw, %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i303
  store ptr %i.iw, ptr %i.hv, align 8, !tbaa !109
  store ptr %i.iz, ptr %i.ih, align 8, !tbaa !173
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.iu
  store ptr %i.ja, ptr %i.ij, align 8, !tbaa !108
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit308

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit308: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i305, %bb.cs
  %i.jb = load ptr, ptr %64, align 8, !tbaa !34   ; 2 uses
  %i.jc = icmp eq ptr %i.jb, %i.hx
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit308
  %i.jd = load i64, ptr %i.hx, align 8, !tbaa !37
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.je) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit308, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #21
  %i.jf = load ptr, ptr %i.de, align 8, !tbaa !103 ; 4 uses
  %i.jg = load ptr, ptr %i.aj, align 8, !tbaa !60 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #21
  %i.jh = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 6 uses
  store ptr %i.jh, ptr %65, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 22, ptr %i.b, align 8, !tbaa !36
  %i.ji = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc314 unwind label %bb.ix ; 2 uses

.noexc314:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311
  store ptr %i.ji, ptr %65, align 8, !tbaa !34
  %i.jj = load i64, ptr %i.b, align 8, !tbaa !36  ; 3 uses
  store i64 %i.jj, ptr %i.jh, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.ji, ptr noundef nonnull align 1 dereferenceable(22) @.str.44, i64 22, i1 false)
  %i.jk = getelementptr inbounds nuw i8, ptr %65, i64 8
  store i64 %i.jj, ptr %i.jk, align 8, !tbaa !35
  %i.jl = load ptr, ptr %65, align 8, !tbaa !34
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jj
  store i8 0, ptr %i.jm, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.jn = load ptr, ptr %i.jg, align 8, !tbaa !52
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  %i.jp = load ptr, ptr %i.jo, align 8
  %i.jq = invoke noundef ptr %i.jp(ptr noundef nonnull align 8 dereferenceable(8) %i.jg, ptr noundef nonnull align 8 dereferenceable(32) %65)
          to label %bb.cx unwind label %bb.iy     ; 2 uses

bb.cx:                                            ; preds = %.noexc314
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jf, i64 8 ; 3 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !173 ; 4 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jf, i64 16 ; 2 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !108
  %.not.i.i316 = icmp eq ptr %i.js, %i.ju
  br i1 %.not.i.i316, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  store ptr %i.jq, ptr %i.js, align 8, !tbaa !106
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  store ptr %i.jv, ptr %i.jr, align 8, !tbaa !173
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit325

bb.cz:                                            ; preds = %bb.cx
  %i.jw = load ptr, ptr %i.jf, align 8, !tbaa !109 ; 4 uses
  %i.jx = ptrtoint ptr %i.js to i64
  %i.jy = ptrtoint ptr %i.jw to i64
  %i.jz = sub i64 %i.jx, %i.jy                    ; 6 uses
  %i.ka = icmp eq i64 %i.jz, 9223372036854775800
  br i1 %i.ka, label %bb.da, label %_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i317

bb.da:                                            ; preds = %bb.cz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #25
          to label %.noexc323 unwind label %bb.iy

.noexc323:                                        ; preds = %bb.da
  unreachable

_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i317: ; preds = %bb.cz
  %i.kb = ashr exact i64 %i.jz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i318 = call i64 @llvm.umax.i64(i64 %i.kb, i64 1)
  %71 = add nsw i64 %.sroa.speculated.i.i.i.i318, %i.kb ; 2 uses
  %i.kc = icmp ult i64 %71, %i.kb
  %i.kd = call i64 @llvm.umin.i64(i64 %71, i64 1152921504606846975)
  %i.ke = select i1 %i.kc, i64 1152921504606846975, i64 %i.kd ; 3 uses
  %.not.i.i.i.i319 = icmp ne i64 %i.ke, 0
  call void @llvm.assume(i1 %.not.i.i.i.i319)
  %i.kf = shl nuw nsw i64 %i.ke, 3
  %i.kg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kf) #24
          to label %.noexc324 unwind label %bb.iy ; 4 uses

.noexc324:                                        ; preds = %_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i317
  %i.kh = getelementptr inbounds i8, ptr %i.kg, i64 %i.jz ; 2 uses
  store ptr %i.jq, ptr %i.kh, align 8, !tbaa !106
  %i.ki = icmp sgt i64 %i.jz, 0
  br i1 %i.ki, label %bb.db, label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i320

bb.db:                                            ; preds = %.noexc324
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kg, ptr align 8 %i.jw, i64 %i.jz, i1 false)
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i320

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i320: ; preds = %bb.db, %.noexc324
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %.not.i17.i.i.i321 = icmp eq ptr %i.jw, null
  br i1 %.not.i17.i.i.i321, label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i322, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i320
  call void @_ZdlPvm(ptr noundef nonnull %i.jw, i64 noundef %i.jz) #23
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i322

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i322: ; preds = %bb.dc, %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i320
  store ptr %i.kg, ptr %i.jf, align 8, !tbaa !109
  store ptr %i.kj, ptr %i.jr, align 8, !tbaa !173
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %i.ke
  store ptr %i.kk, ptr %i.jt, align 8, !tbaa !108
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit325

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit325: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i322, %bb.cy
  %i.kl = load ptr, ptr %65, align 8, !tbaa !34   ; 2 uses
  %i.km = icmp eq ptr %i.kl, %i.jh
  br i1 %i.km, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit325
  %i.kn = load i64, ptr %i.jh, align 8, !tbaa !37
  %i.ko = add i64 %i.kn, 1
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.ko) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit325, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #21
  %i.kp = load ptr, ptr %i.de, align 8, !tbaa !103 ; 4 uses
  %i.kq = load ptr, ptr %i.aj, align 8, !tbaa !60 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #21
  %i.kr = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 6 uses
  store ptr %i.kr, ptr %66, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 16, ptr %i.a, align 8, !tbaa !36
  %i.ks = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %66, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc331 unwind label %bb.iz ; 2 uses

.noexc331:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328
  store ptr %i.ks, ptr %66, align 8, !tbaa !34
  %i.kt = load i64, ptr %i.a, align 8, !tbaa !36  ; 3 uses
  store i64 %i.kt, ptr %i.kr, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ks, ptr noundef nonnull align 1 dereferenceable(16) @.str.45, i64 16, i1 false)
  %i.ku = getelementptr inbounds nuw i8, ptr %66, i64 8
  store i64 %i.kt, ptr %i.ku, align 8, !tbaa !35
  %i.kv = load ptr, ptr %66, align 8, !tbaa !34
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.kt
  store i8 0, ptr %i.kw, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.kx = load ptr, ptr %i.kq, align 8, !tbaa !52
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 24
  %i.kz = load ptr, ptr %i.ky, align 8
  %i.la = invoke noundef ptr %i.kz(ptr noundef nonnull align 8 dereferenceable(8) %i.kq, ptr noundef nonnull align 8 dereferenceable(32) %66)
          to label %bb.dd unwind label %bb.ja     ; 2 uses

bb.dd:                                            ; preds = %.noexc331
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kp, i64 8 ; 3 uses
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !173 ; 4 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kp, i64 16 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !108
  %.not.i.i333 = icmp eq ptr %i.lc, %i.le
  br i1 %.not.i.i333, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  store ptr %i.la, ptr %i.lc, align 8, !tbaa !106
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  store ptr %i.lf, ptr %i.lb, align 8, !tbaa !173
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit342

bb.df:                                            ; preds = %bb.dd
  %i.lg = load ptr, ptr %i.kp, align 8, !tbaa !109 ; 4 uses
  %i.lh = ptrtoint ptr %i.lc to i64
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = sub i64 %i.lh, %i.li                    ; 6 uses
  %i.lk = icmp eq i64 %i.lj, 9223372036854775800
  br i1 %i.lk, label %bb.dg, label %_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i334

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #25
          to label %.noexc340 unwind label %bb.ja

.noexc340:                                        ; preds = %bb.dg
  unreachable

_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i334: ; preds = %bb.df
  %i.ll = ashr exact i64 %i.lj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i335 = call i64 @llvm.umax.i64(i64 %i.ll, i64 1)
  %72 = add nsw i64 %.sroa.speculated.i.i.i.i335, %i.ll ; 2 uses
  %i.lm = icmp ult i64 %72, %i.ll
  %i.ln = call i64 @llvm.umin.i64(i64 %72, i64 1152921504606846975)
  %i.lo = select i1 %i.lm, i64 1152921504606846975, i64 %i.ln ; 3 uses
  %.not.i.i.i.i336 = icmp ne i64 %i.lo, 0
  call void @llvm.assume(i1 %.not.i.i.i.i336)
  %i.lp = shl nuw nsw i64 %i.lo, 3
  %i.lq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lp) #24
          to label %.noexc341 unwind label %bb.ja ; 4 uses

.noexc341:                                        ; preds = %_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i334
  %i.lr = getelementptr inbounds i8, ptr %i.lq, i64 %i.lj ; 2 uses
  store ptr %i.la, ptr %i.lr, align 8, !tbaa !106
  %i.ls = icmp sgt i64 %i.lj, 0
  br i1 %i.ls, label %bb.dh, label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i337

bb.dh:                                            ; preds = %.noexc341
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lq, ptr align 8 %i.lg, i64 %i.lj, i1 false)
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i337

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i337: ; preds = %bb.dh, %.noexc341
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %.not.i17.i.i.i338 = icmp eq ptr %i.lg, null
  br i1 %.not.i17.i.i.i338, label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i339, label %bb.di

bb.di:                                            ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i337
  call void @_ZdlPvm(ptr noundef nonnull %i.lg, i64 noundef %i.lj) #23
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i339

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i339: ; preds = %bb.di, %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i337
  store ptr %i.lq, ptr %i.kp, align 8, !tbaa !109
  store ptr %i.lt, ptr %i.lb, align 8, !tbaa !173
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %i.lo
  store ptr %i.lu, ptr %i.ld, align 8, !tbaa !108
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit342

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit342: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i339, %bb.de
  %i.lv = load ptr, ptr %66, align 8, !tbaa !34   ; 2 uses
  %i.lw = icmp eq ptr %i.lv, %i.kr
  br i1 %i.lw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit342
  %i.lx = load i64, ptr %i.kr, align 8, !tbaa !37
  %i.ly = add i64 %i.lx, 1
  call void @_ZdlPvm(ptr noundef %i.lv, i64 noundef %i.ly) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit342, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #21
  %i.lz = load ptr, ptr %i.de, align 8, !tbaa !103 ; 4 uses
  %i.ma = load ptr, ptr %i.aj, align 8, !tbaa !60 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #21
  %i.mb = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 6 uses
  store ptr %i.mb, ptr %67, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.mb, ptr noundef nonnull align 1 dereferenceable(14) @.str.46, i64 14, i1 false)
  %i.mc = getelementptr inbounds nuw i8, ptr %67, i64 8
  store i64 14, ptr %i.mc, align 8, !tbaa !35
  %i.md = getelementptr inbounds nuw i8, ptr %67, i64 30
  store i8 0, ptr %i.md, align 2, !tbaa !37
  %i.me = load ptr, ptr %i.ma, align 8, !tbaa !52
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %i.mg = load ptr, ptr %i.mf, align 8
  %i.mh = invoke noundef ptr %i.mg(ptr noundef nonnull align 8 dereferenceable(8) %i.ma, ptr noundef nonnull align 8 dereferenceable(32) %67)
          to label %bb.dj unwind label %bb.jb     ; 2 uses

bb.dj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lz, i64 8 ; 3 uses
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !173 ; 4 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lz, i64 16 ; 2 uses
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !108
  %.not.i.i350 = icmp eq ptr %i.mj, %i.ml
  br i1 %.not.i.i350, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  store ptr %i.mh, ptr %i.mj, align 8, !tbaa !106
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  store ptr %i.mm, ptr %i.mi, align 8, !tbaa !173
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit359

bb.dl:                                            ; preds = %bb.dj
  %i.mn = load ptr, ptr %i.lz, align 8, !tbaa !109 ; 4 uses
  %i.mo = ptrtoint ptr %i.mj to i64
  %i.mp = ptrtoint ptr %i.mn to i64
  %i.mq = sub i64 %i.mo, %i.mp                    ; 6 uses
  %i.mr = icmp eq i64 %i.mq, 9223372036854775800
  br i1 %i.mr, label %bb.dm, label %_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i351

bb.dm:                                            ; preds = %bb.dl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #25
          to label %.noexc357 unwind label %bb.jb

.noexc357:                                        ; preds = %bb.dm
  unreachable

_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i351: ; preds = %bb.dl
  %i.ms = ashr exact i64 %i.mq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i352 = call i64 @llvm.umax.i64(i64 %i.ms, i64 1)
  %73 = add nsw i64 %.sroa.speculated.i.i.i.i352, %i.ms ; 2 uses
  %i.mt = icmp ult i64 %73, %i.ms
  %i.mu = call i64 @llvm.umin.i64(i64 %73, i64 1152921504606846975)
  %i.mv = select i1 %i.mt, i64 1152921504606846975, i64 %i.mu ; 3 uses
  %.not.i.i.i.i353 = icmp ne i64 %i.mv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i353)
  %i.mw = shl nuw nsw i64 %i.mv, 3
  %i.mx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mw) #24
          to label %.noexc358 unwind label %bb.jb ; 4 uses

.noexc358:                                        ; preds = %_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i351
  %i.my = getelementptr inbounds i8, ptr %i.mx, i64 %i.mq ; 2 uses
  store ptr %i.mh, ptr %i.my, align 8, !tbaa !106
  %i.mz = icmp sgt i64 %i.mq, 0
  br i1 %i.mz, label %bb.dn, label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i354

bb.dn:                                            ; preds = %.noexc358
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mx, ptr align 8 %i.mn, i64 %i.mq, i1 false)
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i354

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i354: ; preds = %bb.dn, %.noexc358
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %.not.i17.i.i.i355 = icmp eq ptr %i.mn, null
  br i1 %.not.i17.i.i.i355, label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i356, label %bb.do

bb.do:                                            ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i354
  call void @_ZdlPvm(ptr noundef nonnull %i.mn, i64 noundef %i.mq) #23
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i356

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i356: ; preds = %bb.do, %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i354
  store ptr %i.mx, ptr %i.lz, align 8, !tbaa !109
  store ptr %i.na, ptr %i.mi, align 8, !tbaa !173
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %i.mv
  store ptr %i.nb, ptr %i.mk, align 8, !tbaa !108
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit359

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit359: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i356, %bb.dk
  %i.nc = load ptr, ptr %67, align 8, !tbaa !34   ; 2 uses
  %i.nd = icmp eq ptr %i.nc, %i.mb
  br i1 %i.nd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit359
  %i.ne = load i64, ptr %i.mb, align 8, !tbaa !37
  %i.nf = add i64 %i.ne, 1
  call void @_ZdlPvm(ptr noundef %i.nc, i64 noundef %i.nf) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit359, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #21
  ret void

bb.dp:                                            ; preds = %._crit_edge.i.i
  %i.ng = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.dq:                                            ; preds = %bb.a
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.dr:                                            ; preds = %bb.b
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.ds:                                            ; preds = %bb.c
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.dt:                                            ; preds = %bb.d
  %i.nk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #21
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.pn = phi { ptr, i32 } [ %i.nk, %bb.dt ], [ %i.nj, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #21
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dr
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.du ], [ %i.ni, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #21
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.dq
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.dv ], [ %i.nh, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #21
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dp
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.dw ], [ %i.ng, %bb.dp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449

bb.dy:                                            ; preds = %bb.e
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446

bb.dz:                                            ; preds = %bb.f
  %i.nm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

bb.ea:                                            ; preds = %bb.g
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.eb:                                            ; preds = %bb.h
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.ec:                                            ; preds = %bb.i
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.ed:                                            ; preds = %bb.j
  %i.nq = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.ee:                                            ; preds = %bb.k
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.ef:                                            ; preds = %bb.l
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

bb.eg:                                            ; preds = %bb.m
  %i.nt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.eh:                                            ; preds = %bb.n
  %i.nu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %12) #21
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.pn107 = phi { ptr, i32 } [ %i.nu, %bb.eh ], [ %i.nt, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #21
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.ef
  %.pn107.pn = phi { ptr, i32 } [ %.pn107, %bb.ei ], [ %i.ns, %bb.ef ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #21
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ee
  %.pn107.pn.pn = phi { ptr, i32 } [ %.pn107.pn, %bb.ej ], [ %i.nr, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #21
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ed
  %.pn107.pn.pn.pn = phi { ptr, i32 } [ %.pn107.pn.pn, %bb.ek ], [ %i.nq, %bb.ed ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #21
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ec
  %.pn107.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn107.pn.pn.pn, %bb.el ], [ %i.np, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #21
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.eb
  %.pn107.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn107.pn.pn.pn.pn, %bb.em ], [ %i.no, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #21
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.ea
  %.pn107.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn107.pn.pn.pn.pn.pn, %bb.en ], [ %i.nn, %bb.ea ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #21
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.dz
  %.pn107.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn107.pn.pn.pn.pn.pn.pn, %bb.eo ], [ %i.nm, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443

bb.eq:                                            ; preds = %bb.o
  %i.nv = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.er:                                            ; preds = %bb.p
  %i.nw = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIiSt4pairIKiPKN4i18n12phonenumbers13PhoneMetadataEESt10_Select1stIS7_ESt4lessIiESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112
  tail call void @_ZNSt8_Rb_treeIiSt4pairIKiPKN4i18n12phonenumbers13PhoneMetadataEESt10_Select1stIS7_ESt4lessIiESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !203  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !202

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4i18n12phonenumbers17FunctionCallback4IbRKNS0_15PhoneNumberUtilERKNS0_11PhoneNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISD_SaISD_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN4i18n12phonenumbers17FunctionCallback4IbRKNS0_15PhoneNumberUtilERKNS0_11PhoneNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISD_SaISD_EEE3RunES4_S7_SF_SK_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.c = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4i18n12phonenumbers15ResultCallback4IbRKNS0_15PhoneNumberUtilERKNS0_11PhoneNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISD_SaISD_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4i18n12phonenumbers20ConstMethodCallback4INS0_18PhoneNumberMatcherEbRKNS0_15PhoneNumberUtilERKNS0_11PhoneNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISE_SaISE_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN4i18n12phonenumbers20ConstMethodCallback4INS0_18PhoneNumberMatcherEbRKNS0_15PhoneNumberUtilERKNS0_11PhoneNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISE_SaISE_EEE3RunES5_S8_SG_SL_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.unpack = load i64, ptr %i.c, align 8, !tbaa !71 ; 3 uses
  %.elt5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.unpack6 = load i64, ptr %.elt5, align 8, !tbaa !71
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %.unpack6 ; 2 uses
  %i.e = and i64 %.unpack, 1
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.g = getelementptr i8, ptr %i.f, i64 %.unpack
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load ptr, ptr %i.h, align 8, !nosanitize !48
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %.unpack to ptr
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(117) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  ret i1 %i.l
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN4i18n12phonenumbers15ConvertToStringIiE6DoWorkB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %1)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !35
  store i8 0, ptr %i.c, align 8, !tbaa !37
  %i.e = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.e unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.c
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.j = load i64, ptr %i.c, align 8, !tbaa !37
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.e:                                             ; preds = %bb.b
  %i.l = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !52
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.n = getelementptr i8, ptr %i.l, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %2, i64 %i.o
  store ptr %i.m, ptr %i.p, align 8, !tbaa !52
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.q, ptr %i.a, align 8, !tbaa !52
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.r, align 8, !tbaa !52
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !34   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.e
  %i.w = load i64, ptr %i.u, align 8, !tbaa !37
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #23
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.r, align 8, !tbaa !52
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #21
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.z, ptr %2, align 8, !tbaa !52
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %2, i64 %i.ac
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ae, align 8, !tbaa !205
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.af) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.d ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !82   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !83     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #25
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.i      ; 2 uses
  %i.j = icmp ult i64 %3, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %3, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.f
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !33
  %i.s = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !35   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.u, ptr %i.a, align 8, !tbaa !36
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.w, ptr %i.q, align 8, !tbaa !34
  %i.x = load i64, ptr %i.a, align 8, !tbaa !36
  store i64 %i.x, ptr %i.r, align 8, !tbaa !37
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.r, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.u, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !37
  store i8 %i.z, ptr %i.y, align 1, !tbaa !37
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !36  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !35
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !34
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !33, !alias.scope !213, !noalias !214
  %i.af = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !34, !alias.scope !214, !noalias !213 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !35, !alias.scope !214, !noalias !213 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false), !alias.scope !215
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !34, !alias.scope !213, !noalias !214
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !37, !alias.scope !214, !noalias !213
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !37, !alias.scope !213, !noalias !214
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !35, !alias.scope !214, !noalias !213
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.an = phi i64 [ %i.aj, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !35, !alias.scope !213, !noalias !214
  store ptr %i.ag, ptr %.0911.i.i.i, align 8, !tbaa !34, !alias.scope !214, !noalias !213
  store i64 0, ptr %i.ao, align 8, !tbaa !35, !alias.scope !214, !noalias !213
  store i8 0, ptr %i.ag, align 8, !tbaa !37, !alias.scope !214, !noalias !213
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !209

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !216)
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.at, ptr %.012.i.i.i28, align 8, !tbaa !33, !alias.scope !216, !noalias !217
  %i.au = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !34, !alias.scope !217, !noalias !216 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !35, !alias.scope !217, !noalias !216 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false), !alias.scope !218
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.au, ptr %.012.i.i.i28, align 8, !tbaa !34, !alias.scope !216, !noalias !217
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !37, !alias.scope !217, !noalias !216
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !37, !alias.scope !216, !noalias !217
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !35, !alias.scope !217, !noalias !216
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.bc = phi i64 [ %i.ay, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !35, !alias.scope !216, !noalias !217
  store ptr %i.av, ptr %.0911.i.i.i29, align 8, !tbaa !34, !alias.scope !217, !noalias !216
  store i64 0, ptr %i.bd, align 8, !tbaa !35, !alias.scope !217, !noalias !216
  store i8 0, ptr %i.av, align 8, !tbaa !37, !alias.scope !217, !noalias !216
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bf, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !209

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !100
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bk) #23
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %i.p, ptr %0, align 8, !tbaa !83
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !82
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !100
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  %i.bp = call ptr @__cxa_begin_catch(ptr %i.bo) #21 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #23
  invoke void @__cxa_rethrow() #25
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bm

bb.l:                                             ; preds = %bb.i
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #22
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19
end_hunk_1
