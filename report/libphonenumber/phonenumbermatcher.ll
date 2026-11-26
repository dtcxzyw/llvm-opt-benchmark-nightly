Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/phonenumbermatcher?download=true
inline.NumInlined: 1003
inline.NumDeleted: 396
begin_hunk_0_@_ZN4i18n12phonenumbers25PhoneNumberMatcherRegExpsC2Ev:bb.a
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i257

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i257: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ec = load ptr, ptr %i.aj, align 8, !tbaa !60 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #21
  %i.ed = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 6 uses
  store ptr %i.ed, ptr %46, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ed, ptr noundef nonnull align 1 dereferenceable(5) @.str.36, i64 5, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i64 5, ptr %i.ee, align 8, !tbaa !35
  %i.ef = getelementptr inbounds nuw i8, ptr %46, i64 21
  store i8 0, ptr %i.ef, align 1, !tbaa !37
  %i.eg = load ptr, ptr %i.ec, align 8, !tbaa !52
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = invoke noundef ptr %i.ei(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef nonnull align 8 dereferenceable(32) %46)
          to label %bb.bp unwind label %bb.hu

bb.bp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i257
  store ptr %i.ej, ptr %i.eb, align 8, !tbaa !57
  %i.ek = load ptr, ptr %46, align 8, !tbaa !34   ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.ed
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263: ; preds = %bb.bp
  %i.em = load i64, ptr %i.ed, align 8, !tbaa !37
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #21
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.ep = load ptr, ptr %i.aj, align 8, !tbaa !60 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !52
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = invoke noundef ptr %i.es(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %bb.bq unwind label %bb.hv

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265
  store ptr %i.et, ptr %i.eo, align 8, !tbaa !57
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.ev = load ptr, ptr %i.ah, align 8, !tbaa !60 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #21
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %48, ptr noundef nonnull @.str.37)
          to label %bb.br unwind label %bb.hw

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #21
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %49, ptr noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %bb.bs unwind label %bb.hx

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #21
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %50, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %bb.bt unwind label %bb.hy

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #21
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %51, ptr noundef nonnull @.str.38)
          to label %bb.bu unwind label %bb.hz

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #21
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %52, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %bb.bv unwind label %bb.ia

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #21
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %53, ptr noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %bb.bw unwind label %bb.ib

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #21
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %54, ptr noundef nonnull @.str.25)
          to label %bb.bx unwind label %bb.ic

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #21
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %55, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %bb.by unwind label %bb.id

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #21
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %56, ptr noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %bb.bz unwind label %bb.ie

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #21
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %57, ptr noundef nonnull @.str.38)
          to label %bb.ca unwind label %bb.if

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #21
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %58, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %bb.cb unwind label %bb.ig

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #21
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %59, ptr noundef nonnull @.str.39)
          to label %bb.cc unwind label %bb.ih

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #21
  %i.ew = invoke noundef ptr @_ZN4i18n12phonenumbers15PhoneNumberUtil11GetInstanceEv()
          to label %bb.cd unwind label %bb.ii

bb.cd:                                            ; preds = %bb.cc
  %i.ex = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4i18n12phonenumbers15PhoneNumberUtil26GetExtnPatternsForMatchingB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.ew)
          to label %bb.ce unwind label %bb.ii

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %60, ptr noundef nonnull align 8 dereferenceable(32) %i.ex)
          to label %bb.cf unwind label %bb.ii

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #21
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %61, ptr noundef nonnull @.str.40)
          to label %bb.cg unwind label %bb.ij

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZN4i18n12phonenumbers6StrCatB5cxx11ERKNS0_12StringHolderES3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %47, ptr noundef nonnull align 8 dereferenceable(48) %48, ptr noundef nonnull align 8 dereferenceable(48) %49, ptr noundef nonnull align 8 dereferenceable(48) %50, ptr noundef nonnull align 8 dereferenceable(48) %51, ptr noundef nonnull align 8 dereferenceable(48) %52, ptr noundef nonnull align 8 dereferenceable(48) %53, ptr noundef nonnull align 8 dereferenceable(48) %54, ptr noundef nonnull align 8 dereferenceable(48) %55, ptr noundef nonnull align 8 dereferenceable(48) %56, ptr noundef nonnull align 8 dereferenceable(48) %57, ptr noundef nonnull align 8 dereferenceable(48) %58, ptr noundef nonnull align 8 dereferenceable(48) %59, ptr noundef nonnull align 8 dereferenceable(48) %60, ptr noundef nonnull align 8 dereferenceable(48) %61)
          to label %bb.ch unwind label %bb.ik

bb.ch:                                            ; preds = %bb.cg
  %i.ey = load ptr, ptr %i.ev, align 8, !tbaa !52
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = invoke noundef ptr %i.fa(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef nonnull align 8 dereferenceable(32) %47)
          to label %bb.ci unwind label %bb.il

bb.ci:                                            ; preds = %bb.ch
  store ptr %i.fb, ptr %i.eu, align 8, !tbaa !57
  %i.fc = load ptr, ptr %47, align 8, !tbaa !34   ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i267, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266: ; preds = %bb.ci
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !37
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i267: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266
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
          to label %bb.cj unwind label %bb.ja     ; 2 uses

bb.cj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i267
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 3 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !176 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !108
  %.not.i.i = icmp eq ptr %i.fr, %i.ft
  br i1 %.not.i.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  store ptr %i.fp, ptr %i.fr, align 8, !tbaa !106
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store ptr %i.fu, ptr %i.fq, align 8, !tbaa !176
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit

bb.cl:                                            ; preds = %bb.cj
  %i.fv = load ptr, ptr %i.fh, align 8, !tbaa !109 ; 4 uses
  %i.fw = ptrtoint ptr %i.fr to i64
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = sub i64 %i.fw, %i.fx                    ; 6 uses
  %i.fz = icmp eq i64 %i.fy, 9223372036854775800
  br i1 %i.fz, label %bb.cm, label %_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #25
          to label %.noexc273 unwind label %bb.ja

.noexc273:                                        ; preds = %bb.cm
  unreachable

_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cl
  %i.ga = ashr exact i64 %i.fy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ga, i64 1)
  %i.gb = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ga ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.ga
  %i.gd = call i64 @llvm.umin.i64(i64 %i.gb, i64 1152921504606846975)
  %i.ge = select i1 %i.gc, i64 1152921504606846975, i64 %i.gd ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ge, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.gf = shl nuw nsw i64 %i.ge, 3
  %i.gg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gf) #24
          to label %.noexc274 unwind label %bb.ja ; 4 uses

.noexc274:                                        ; preds = %_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 %i.fy ; 2 uses
  store ptr %i.fp, ptr %i.gh, align 8, !tbaa !106
  %i.gi = icmp sgt i64 %i.fy, 0
  br i1 %i.gi, label %bb.cn, label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.cn:                                            ; preds = %.noexc274
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gg, ptr align 8 %i.fv, i64 %i.fy, i1 false)
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.cn, %.noexc274
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.co

bb.co:                                            ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fv, i64 noundef %i.fy) #23
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.co, %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.gg, ptr %i.fh, align 8, !tbaa !109
  store ptr %i.gj, ptr %i.fq, align 8, !tbaa !176
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.ge
  store ptr %i.gk, ptr %i.fs, align 8, !tbaa !108
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.ck
  %i.gl = load ptr, ptr %62, align 8, !tbaa !34   ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.fj
  br i1 %i.gm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i276, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit
  %i.gn = load i64, ptr %i.fj, align 8, !tbaa !37
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.go) #23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i276

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i276: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #21
  %i.gp = load ptr, ptr %i.de, align 8, !tbaa !103 ; 4 uses
  %i.gq = load ptr, ptr %i.aj, align 8, !tbaa !60 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #21
  %i.gr = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 6 uses
  store ptr %i.gr, ptr %63, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.gr, ptr noundef nonnull align 1 dereferenceable(9) @.str.42, i64 9, i1 false)
  %i.gs = getelementptr inbounds nuw i8, ptr %63, i64 8
  store i64 9, ptr %i.gs, align 8, !tbaa !35
  %i.gt = getelementptr inbounds nuw i8, ptr %63, i64 25
  store i8 0, ptr %i.gt, align 1, !tbaa !37
  %i.gu = load ptr, ptr %i.gq, align 8, !tbaa !52
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = invoke noundef ptr %i.gw(ptr noundef nonnull align 8 dereferenceable(8) %i.gq, ptr noundef nonnull align 8 dereferenceable(32) %63)
          to label %bb.cp unwind label %bb.jb     ; 2 uses

bb.cp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i276
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 3 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !176 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !108
  %.not.i.i282 = icmp eq ptr %i.gz, %i.hb
  br i1 %.not.i.i282, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  store ptr %i.gx, ptr %i.gz, align 8, !tbaa !106
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store ptr %i.hc, ptr %i.gy, align 8, !tbaa !176
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit291

bb.cr:                                            ; preds = %bb.cp
  %i.hd = load ptr, ptr %i.gp, align 8, !tbaa !109 ; 4 uses
  %i.he = ptrtoint ptr %i.gz to i64
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = sub i64 %i.he, %i.hf                    ; 6 uses
  %i.hh = icmp eq i64 %i.hg, 9223372036854775800
  br i1 %i.hh, label %bb.cs, label %_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i283

bb.cs:                                            ; preds = %bb.cr
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #25
          to label %.noexc289 unwind label %bb.jb

.noexc289:                                        ; preds = %bb.cs
  unreachable

_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i283: ; preds = %bb.cr
  %i.hi = ashr exact i64 %i.hg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i284 = call i64 @llvm.umax.i64(i64 %i.hi, i64 1)
  %i.hj = add nsw i64 %.sroa.speculated.i.i.i.i284, %i.hi ; 2 uses
  %i.hk = icmp ult i64 %i.hj, %i.hi
  %i.hl = call i64 @llvm.umin.i64(i64 %i.hj, i64 1152921504606846975)
  %i.hm = select i1 %i.hk, i64 1152921504606846975, i64 %i.hl ; 3 uses
  %.not.i.i.i.i285 = icmp ne i64 %i.hm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i285)
  %i.hn = shl nuw nsw i64 %i.hm, 3
  %i.ho = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hn) #24
          to label %.noexc290 unwind label %bb.jb ; 4 uses

.noexc290:                                        ; preds = %_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i283
  %i.hp = getelementptr inbounds i8, ptr %i.ho, i64 %i.hg ; 2 uses
  store ptr %i.gx, ptr %i.hp, align 8, !tbaa !106
  %i.hq = icmp sgt i64 %i.hg, 0
  br i1 %i.hq, label %bb.ct, label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i286

bb.ct:                                            ; preds = %.noexc290
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ho, ptr align 8 %i.hd, i64 %i.hg, i1 false)
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i286

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i286: ; preds = %bb.ct, %.noexc290
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %.not.i17.i.i.i287 = icmp eq ptr %i.hd, null
  br i1 %.not.i17.i.i.i287, label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i288, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i286
  call void @_ZdlPvm(ptr noundef nonnull %i.hd, i64 noundef %i.hg) #23
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i288

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i288: ; preds = %bb.cu, %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i286
  store ptr %i.ho, ptr %i.gp, align 8, !tbaa !109
  store ptr %i.hr, ptr %i.gy, align 8, !tbaa !176
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.hm
  store ptr %i.hs, ptr %i.ha, align 8, !tbaa !108
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit291

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit291: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i288, %bb.cq
  %i.ht = load ptr, ptr %63, align 8, !tbaa !34   ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.gr
  br i1 %i.hu, label %.noexc.i296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit291
  %i.hv = load i64, ptr %i.gr, align 8, !tbaa !37
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hw) #23
  br label %.noexc.i296

.noexc.i296:                                      ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit291, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #21
  %i.hx = load ptr, ptr %i.de, align 8, !tbaa !103 ; 4 uses
  %i.hy = load ptr, ptr %i.aj, align 8, !tbaa !60 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #21
  %i.hz = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 6 uses
  store ptr %i.hz, ptr %64, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 27, ptr %i.c, align 8, !tbaa !36
  %i.ia = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %64, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %bb.cv unwind label %bb.jc     ; 2 uses

bb.cv:                                            ; preds = %.noexc.i296
  store ptr %i.ia, ptr %64, align 8, !tbaa !34
  %i.ib = load i64, ptr %i.c, align 8, !tbaa !36  ; 3 uses
  store i64 %i.ib, ptr %i.hz, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.ia, ptr noundef nonnull align 1 dereferenceable(27) @.str.43, i64 27, i1 false)
  %i.ic = getelementptr inbounds nuw i8, ptr %64, i64 8
  store i64 %i.ib, ptr %i.ic, align 8, !tbaa !35
  %i.id = load ptr, ptr %64, align 8, !tbaa !34
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ib
  store i8 0, ptr %i.ie, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.if = load ptr, ptr %i.hy, align 8, !tbaa !52
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = invoke noundef ptr %i.ih(ptr noundef nonnull align 8 dereferenceable(8) %i.hy, ptr noundef nonnull align 8 dereferenceable(32) %64)
          to label %bb.cw unwind label %bb.jd     ; 2 uses

bb.cw:                                            ; preds = %bb.cv
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 3 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !176 ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.hx, i64 16 ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !108
  %.not.i.i299 = icmp eq ptr %i.ik, %i.im
  br i1 %.not.i.i299, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  store ptr %i.ii, ptr %i.ik, align 8, !tbaa !106
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store ptr %i.in, ptr %i.ij, align 8, !tbaa !176
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit308

bb.cy:                                            ; preds = %bb.cw
  %i.io = load ptr, ptr %i.hx, align 8, !tbaa !109 ; 4 uses
  %i.ip = ptrtoint ptr %i.ik to i64
  %i.iq = ptrtoint ptr %i.io to i64
  %i.ir = sub i64 %i.ip, %i.iq                    ; 6 uses
  %i.is = icmp eq i64 %i.ir, 9223372036854775800
  br i1 %i.is, label %bb.cz, label %_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i300

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #25
          to label %.noexc306 unwind label %bb.jd

.noexc306:                                        ; preds = %bb.cz
  unreachable

_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i300: ; preds = %bb.cy
  %i.it = ashr exact i64 %i.ir, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i301 = call i64 @llvm.umax.i64(i64 %i.it, i64 1)
  %i.iu = add nsw i64 %.sroa.speculated.i.i.i.i301, %i.it ; 2 uses
  %i.iv = icmp ult i64 %i.iu, %i.it
  %i.iw = call i64 @llvm.umin.i64(i64 %i.iu, i64 1152921504606846975)
  %i.ix = select i1 %i.iv, i64 1152921504606846975, i64 %i.iw ; 3 uses
  %.not.i.i.i.i302 = icmp ne i64 %i.ix, 0
  call void @llvm.assume(i1 %.not.i.i.i.i302)
  %i.iy = shl nuw nsw i64 %i.ix, 3
  %i.iz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iy) #24
          to label %.noexc307 unwind label %bb.jd ; 4 uses

.noexc307:                                        ; preds = %_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i300
  %i.ja = getelementptr inbounds i8, ptr %i.iz, i64 %i.ir ; 2 uses
  store ptr %i.ii, ptr %i.ja, align 8, !tbaa !106
  %i.jb = icmp sgt i64 %i.ir, 0
  br i1 %i.jb, label %bb.da, label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i303

bb.da:                                            ; preds = %.noexc307
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iz, ptr align 8 %i.io, i64 %i.ir, i1 false)
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i303

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i303: ; preds = %bb.da, %.noexc307
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %.not.i17.i.i.i304 = icmp eq ptr %i.io, null
  br i1 %.not.i17.i.i.i304, label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i305, label %bb.db

bb.db:                                            ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i303
  call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef %i.ir) #23
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i305

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i305: ; preds = %bb.db, %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i303
  store ptr %i.iz, ptr %i.hx, align 8, !tbaa !109
  store ptr %i.jc, ptr %i.ij, align 8, !tbaa !176
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.ix
  store ptr %i.jd, ptr %i.il, align 8, !tbaa !108
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit308

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit308: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i305, %bb.cx
  %i.je = load ptr, ptr %64, align 8, !tbaa !34   ; 2 uses
  %i.jf = icmp eq ptr %i.je, %i.hz
  br i1 %i.jf, label %.noexc.i313, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit308
  %i.jg = load i64, ptr %i.hz, align 8, !tbaa !37
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.jh) #23
  br label %.noexc.i313

.noexc.i313:                                      ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit308, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #21
  %i.ji = load ptr, ptr %i.de, align 8, !tbaa !103 ; 4 uses
  %i.jj = load ptr, ptr %i.aj, align 8, !tbaa !60 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #21
  %i.jk = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 6 uses
  store ptr %i.jk, ptr %65, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 22, ptr %i.b, align 8, !tbaa !36
  %i.jl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %bb.dc unwind label %bb.je     ; 2 uses

bb.dc:                                            ; preds = %.noexc.i313
  store ptr %i.jl, ptr %65, align 8, !tbaa !34
  %i.jm = load i64, ptr %i.b, align 8, !tbaa !36  ; 3 uses
  store i64 %i.jm, ptr %i.jk, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.jl, ptr noundef nonnull align 1 dereferenceable(22) @.str.44, i64 22, i1 false)
  %i.jn = getelementptr inbounds nuw i8, ptr %65, i64 8
  store i64 %i.jm, ptr %i.jn, align 8, !tbaa !35
  %i.jo = load ptr, ptr %65, align 8, !tbaa !34
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jm
  store i8 0, ptr %i.jp, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.jq = load ptr, ptr %i.jj, align 8, !tbaa !52
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  %i.js = load ptr, ptr %i.jr, align 8
  %i.jt = invoke noundef ptr %i.js(ptr noundef nonnull align 8 dereferenceable(8) %i.jj, ptr noundef nonnull align 8 dereferenceable(32) %65)
          to label %bb.dd unwind label %bb.jf     ; 2 uses

bb.dd:                                            ; preds = %bb.dc
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ji, i64 8 ; 3 uses
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !176 ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ji, i64 16 ; 2 uses
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !108
  %.not.i.i316 = icmp eq ptr %i.jv, %i.jx
  br i1 %.not.i.i316, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  store ptr %i.jt, ptr %i.jv, align 8, !tbaa !106
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store ptr %i.jy, ptr %i.ju, align 8, !tbaa !176
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit325

bb.df:                                            ; preds = %bb.dd
  %i.jz = load ptr, ptr %i.ji, align 8, !tbaa !109 ; 4 uses
  %i.ka = ptrtoint ptr %i.jv to i64
  %i.kb = ptrtoint ptr %i.jz to i64
  %i.kc = sub i64 %i.ka, %i.kb                    ; 6 uses
  %i.kd = icmp eq i64 %i.kc, 9223372036854775800
  br i1 %i.kd, label %bb.dg, label %_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i317

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #25
          to label %.noexc323 unwind label %bb.jf

.noexc323:                                        ; preds = %bb.dg
  unreachable

_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i317: ; preds = %bb.df
  %i.ke = ashr exact i64 %i.kc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i318 = call i64 @llvm.umax.i64(i64 %i.ke, i64 1)
  %i.kf = add nsw i64 %.sroa.speculated.i.i.i.i318, %i.ke ; 2 uses
  %i.kg = icmp ult i64 %i.kf, %i.ke
  %i.kh = call i64 @llvm.umin.i64(i64 %i.kf, i64 1152921504606846975)
  %i.ki = select i1 %i.kg, i64 1152921504606846975, i64 %i.kh ; 3 uses
  %.not.i.i.i.i319 = icmp ne i64 %i.ki, 0
  call void @llvm.assume(i1 %.not.i.i.i.i319)
  %i.kj = shl nuw nsw i64 %i.ki, 3
  %i.kk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kj) #24
          to label %.noexc324 unwind label %bb.jf ; 4 uses

.noexc324:                                        ; preds = %_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i317
  %i.kl = getelementptr inbounds i8, ptr %i.kk, i64 %i.kc ; 2 uses
  store ptr %i.jt, ptr %i.kl, align 8, !tbaa !106
  %i.km = icmp sgt i64 %i.kc, 0
  br i1 %i.km, label %bb.dh, label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i320

bb.dh:                                            ; preds = %.noexc324
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kk, ptr align 8 %i.jz, i64 %i.kc, i1 false)
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i320

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i320: ; preds = %bb.dh, %.noexc324
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %.not.i17.i.i.i321 = icmp eq ptr %i.jz, null
  br i1 %.not.i17.i.i.i321, label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i322, label %bb.di

bb.di:                                            ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i320
  call void @_ZdlPvm(ptr noundef nonnull %i.jz, i64 noundef %i.kc) #23
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i322

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i322: ; preds = %bb.di, %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i320
  store ptr %i.kk, ptr %i.ji, align 8, !tbaa !109
  store ptr %i.kn, ptr %i.ju, align 8, !tbaa !176
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %i.ki
  store ptr %i.ko, ptr %i.jw, align 8, !tbaa !108
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit325

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit325: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i322, %bb.de
  %i.kp = load ptr, ptr %65, align 8, !tbaa !34   ; 2 uses
  %i.kq = icmp eq ptr %i.kp, %i.jk
  br i1 %i.kq, label %.noexc.i330, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit325
  %i.kr = load i64, ptr %i.jk, align 8, !tbaa !37
  %i.ks = add i64 %i.kr, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.ks) #23
  br label %.noexc.i330

.noexc.i330:                                      ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit325, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #21
  %i.kt = load ptr, ptr %i.de, align 8, !tbaa !103 ; 4 uses
  %i.ku = load ptr, ptr %i.aj, align 8, !tbaa !60 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #21
  %i.kv = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 6 uses
  store ptr %i.kv, ptr %66, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 16, ptr %i.a, align 8, !tbaa !36
  %i.kw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %66, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %bb.dj unwind label %bb.jg     ; 2 uses

bb.dj:                                            ; preds = %.noexc.i330
  store ptr %i.kw, ptr %66, align 8, !tbaa !34
  %i.kx = load i64, ptr %i.a, align 8, !tbaa !36  ; 3 uses
  store i64 %i.kx, ptr %i.kv, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.kw, ptr noundef nonnull align 1 dereferenceable(16) @.str.45, i64 16, i1 false)
  %i.ky = getelementptr inbounds nuw i8, ptr %66, i64 8
  store i64 %i.kx, ptr %i.ky, align 8, !tbaa !35
  %i.kz = load ptr, ptr %66, align 8, !tbaa !34
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.kx
  store i8 0, ptr %i.la, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.lb = load ptr, ptr %i.ku, align 8, !tbaa !52
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 24
  %i.ld = load ptr, ptr %i.lc, align 8
  %i.le = invoke noundef ptr %i.ld(ptr noundef nonnull align 8 dereferenceable(8) %i.ku, ptr noundef nonnull align 8 dereferenceable(32) %66)
          to label %bb.dk unwind label %bb.jh     ; 2 uses

bb.dk:                                            ; preds = %bb.dj
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kt, i64 8 ; 3 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !176 ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !108
  %.not.i.i333 = icmp eq ptr %i.lg, %i.li
  br i1 %.not.i.i333, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  store ptr %i.le, ptr %i.lg, align 8, !tbaa !106
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  store ptr %i.lj, ptr %i.lf, align 8, !tbaa !176
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit342

bb.dm:                                            ; preds = %bb.dk
  %i.lk = load ptr, ptr %i.kt, align 8, !tbaa !109 ; 4 uses
  %i.ll = ptrtoint ptr %i.lg to i64
  %i.lm = ptrtoint ptr %i.lk to i64
  %i.ln = sub i64 %i.ll, %i.lm                    ; 6 uses
  %i.lo = icmp eq i64 %i.ln, 9223372036854775800
  br i1 %i.lo, label %bb.dn, label %_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i334

bb.dn:                                            ; preds = %bb.dm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #25
          to label %.noexc340 unwind label %bb.jh

.noexc340:                                        ; preds = %bb.dn
  unreachable

_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i334: ; preds = %bb.dm
  %i.lp = ashr exact i64 %i.ln, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i335 = call i64 @llvm.umax.i64(i64 %i.lp, i64 1)
  %i.lq = add nsw i64 %.sroa.speculated.i.i.i.i335, %i.lp ; 2 uses
  %i.lr = icmp ult i64 %i.lq, %i.lp
  %i.ls = call i64 @llvm.umin.i64(i64 %i.lq, i64 1152921504606846975)
  %i.lt = select i1 %i.lr, i64 1152921504606846975, i64 %i.ls ; 3 uses
  %.not.i.i.i.i336 = icmp ne i64 %i.lt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i336)
  %i.lu = shl nuw nsw i64 %i.lt, 3
  %i.lv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lu) #24
          to label %.noexc341 unwind label %bb.jh ; 4 uses

.noexc341:                                        ; preds = %_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i334
  %i.lw = getelementptr inbounds i8, ptr %i.lv, i64 %i.ln ; 2 uses
  store ptr %i.le, ptr %i.lw, align 8, !tbaa !106
  %i.lx = icmp sgt i64 %i.ln, 0
  br i1 %i.lx, label %bb.do, label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i337

bb.do:                                            ; preds = %.noexc341
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lv, ptr align 8 %i.lk, i64 %i.ln, i1 false)
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i337

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i337: ; preds = %bb.do, %.noexc341
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %.not.i17.i.i.i338 = icmp eq ptr %i.lk, null
  br i1 %.not.i17.i.i.i338, label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i339, label %bb.dp

bb.dp:                                            ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i337
  call void @_ZdlPvm(ptr noundef nonnull %i.lk, i64 noundef %i.ln) #23
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i339

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i339: ; preds = %bb.dp, %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i337
  store ptr %i.lv, ptr %i.kt, align 8, !tbaa !109
  store ptr %i.ly, ptr %i.lf, align 8, !tbaa !176
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.lv, i64 %i.lt
  store ptr %i.lz, ptr %i.lh, align 8, !tbaa !108
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit342

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit342: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i339, %bb.dl
  %i.ma = load ptr, ptr %66, align 8, !tbaa !34   ; 2 uses
  %i.mb = icmp eq ptr %i.ma, %i.kv
  br i1 %i.mb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i344, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit342
  %i.mc = load i64, ptr %i.kv, align 8, !tbaa !37
  %i.md = add i64 %i.mc, 1
  call void @_ZdlPvm(ptr noundef %i.ma, i64 noundef %i.md) #23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i344

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i344: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit342, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #21
  %i.me = load ptr, ptr %i.de, align 8, !tbaa !103 ; 4 uses
  %i.mf = load ptr, ptr %i.aj, align 8, !tbaa !60 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #21
  %i.mg = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 6 uses
  store ptr %i.mg, ptr %67, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.mg, ptr noundef nonnull align 1 dereferenceable(14) @.str.46, i64 14, i1 false)
  %i.mh = getelementptr inbounds nuw i8, ptr %67, i64 8
  store i64 14, ptr %i.mh, align 8, !tbaa !35
  %i.mi = getelementptr inbounds nuw i8, ptr %67, i64 30
  store i8 0, ptr %i.mi, align 2, !tbaa !37
  %i.mj = load ptr, ptr %i.mf, align 8, !tbaa !52
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 24
  %i.ml = load ptr, ptr %i.mk, align 8
  %i.mm = invoke noundef ptr %i.ml(ptr noundef nonnull align 8 dereferenceable(8) %i.mf, ptr noundef nonnull align 8 dereferenceable(32) %67)
          to label %bb.dq unwind label %bb.ji     ; 2 uses

bb.dq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i344
  %i.mn = getelementptr inbounds nuw i8, ptr %i.me, i64 8 ; 3 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !176 ; 4 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.me, i64 16 ; 2 uses
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !108
  %.not.i.i350 = icmp eq ptr %i.mo, %i.mq
  br i1 %.not.i.i350, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  store ptr %i.mm, ptr %i.mo, align 8, !tbaa !106
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  store ptr %i.mr, ptr %i.mn, align 8, !tbaa !176
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit359

bb.ds:                                            ; preds = %bb.dq
  %i.ms = load ptr, ptr %i.me, align 8, !tbaa !109 ; 4 uses
  %i.mt = ptrtoint ptr %i.mo to i64
  %i.mu = ptrtoint ptr %i.ms to i64
  %i.mv = sub i64 %i.mt, %i.mu                    ; 6 uses
  %i.mw = icmp eq i64 %i.mv, 9223372036854775800
  br i1 %i.mw, label %bb.dt, label %_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i351

bb.dt:                                            ; preds = %bb.ds
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #25
          to label %.noexc357 unwind label %bb.ji

.noexc357:                                        ; preds = %bb.dt
  unreachable

_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i351: ; preds = %bb.ds
  %i.mx = ashr exact i64 %i.mv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i352 = call i64 @llvm.umax.i64(i64 %i.mx, i64 1)
  %i.my = add nsw i64 %.sroa.speculated.i.i.i.i352, %i.mx ; 2 uses
  %i.mz = icmp ult i64 %i.my, %i.mx
  %i.na = call i64 @llvm.umin.i64(i64 %i.my, i64 1152921504606846975)
  %i.nb = select i1 %i.mz, i64 1152921504606846975, i64 %i.na ; 3 uses
  %.not.i.i.i.i353 = icmp ne i64 %i.nb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i353)
  %i.nc = shl nuw nsw i64 %i.nb, 3
  %i.nd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nc) #24
          to label %.noexc358 unwind label %bb.ji ; 4 uses

.noexc358:                                        ; preds = %_ZNKSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i351
  %i.ne = getelementptr inbounds i8, ptr %i.nd, i64 %i.mv ; 2 uses
  store ptr %i.mm, ptr %i.ne, align 8, !tbaa !106
  %i.nf = icmp sgt i64 %i.mv, 0
  br i1 %i.nf, label %bb.du, label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i354

bb.du:                                            ; preds = %.noexc358
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.nd, ptr align 8 %i.ms, i64 %i.mv, i1 false)
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i354

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i354: ; preds = %bb.du, %.noexc358
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %.not.i17.i.i.i355 = icmp eq ptr %i.ms, null
  br i1 %.not.i17.i.i.i355, label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i356, label %bb.dv

bb.dv:                                            ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i354
  call void @_ZdlPvm(ptr noundef nonnull %i.ms, i64 noundef %i.mv) #23
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i356

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i356: ; preds = %bb.dv, %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i354
  store ptr %i.nd, ptr %i.me, align 8, !tbaa !109
  store ptr %i.ng, ptr %i.mn, align 8, !tbaa !176
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %i.nb
  store ptr %i.nh, ptr %i.mp, align 8, !tbaa !108
  br label %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit359

_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit359: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i356, %bb.dr
  %i.ni = load ptr, ptr %67, align 8, !tbaa !34   ; 2 uses
  %i.nj = icmp eq ptr %i.ni, %i.mg
  br i1 %i.nj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit359
  %i.nk = load i64, ptr %i.mg, align 8, !tbaa !37
  %i.nl = add i64 %i.nk, 1
  call void @_ZdlPvm(ptr noundef %i.ni, i64 noundef %i.nl) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362: ; preds = %_ZNSt6vectorIPKN4i18n12phonenumbers6RegExpESaIS4_EE9push_backEOS4_.exit359, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #21
  ret void

bb.dw:                                            ; preds = %bb.a
  %i.nm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.dx:                                            ; preds = %bb.b
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.dy:                                            ; preds = %bb.c
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.dz:                                            ; preds = %bb.d
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.ea:                                            ; preds = %bb.e
  %i.nq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #21
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %.pn = phi { ptr, i32 } [ %i.nq, %bb.ea ], [ %i.np, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #21
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.dy
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.eb ], [ %i.no, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #21
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.dx
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ec ], [ %i.nn, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #21
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.dw
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ed ], [ %i.nm, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449

bb.ef:                                            ; preds = %bb.f
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446

bb.eg:                                            ; preds = %bb.g
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.eh:                                            ; preds = %bb.h
  %i.nt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

bb.ei:                                            ; preds = %bb.i
  %i.nu = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.ej:                                            ; preds = %bb.j
  %i.nv = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

bb.ek:                                            ; preds = %bb.k
  %i.nw = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.el:                                            ; preds = %bb.l
  %i.nx = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.em:                                            ; preds = %bb.m
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.en:                                            ; preds = %bb.n
  %i.nz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

bb.eo:                                            ; preds = %bb.o
  %i.oa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %12) #21
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %.pn107 = phi { ptr, i32 } [ %i.oa, %bb.eo ], [ %i.nz, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #21
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.em
  %.pn107.pn = phi { ptr, i32 } [ %.pn107, %bb.ep ], [ %i.ny, %bb.em ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #21
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.el
  %.pn107.pn.pn = phi { ptr, i32 } [ %.pn107.pn, %bb.eq ], [ %i.nx, %bb.el ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #21
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.ek
  %.pn107.pn.pn.pn = phi { ptr, i32 } [ %.pn107.pn.pn, %bb.er ], [ %i.nw, %bb.ek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #21
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.ej
  %.pn107.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn107.pn.pn.pn, %bb.es ], [ %i.nv, %bb.ej ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #21
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.ei
  %.pn107.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn107.pn.pn.pn.pn, %bb.et ], [ %i.nu, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #21
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.eh
  %.pn107.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn107.pn.pn.pn.pn.pn, %bb.eu ], [ %i.nt, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #21
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eg
  %.pn107.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn107.pn.pn.pn.pn.pn.pn, %bb.ev ], [ %i.ns, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443

bb.ex:                                            ; preds = %bb.p
  %i.ob = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.ey:                                            ; preds = %bb.q
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

bb.ez:                                            ; preds = %bb.r
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.fa:                                            ; preds = %bb.s
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %bb.fm

bb.fb:                                            ; preds = %bb.t
  %i.of = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

bb.fc:                                            ; preds = %bb.u
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk
end_hunk_0
