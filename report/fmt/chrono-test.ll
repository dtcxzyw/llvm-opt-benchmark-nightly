Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/chrono-test?download=true
inline.NumInlined: 21374
inline.NumDeleted: 3955
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 160
loop-unroll.NumUnrolled: 225
begin_hunk_0_@_ZN23chrono_test_locale_Test8TestBodyEv:bb.a
  %i.gm = load ptr, ptr %36, align 8, !tbaa !53   ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit203
  %i.gp = load i64, ptr %i.gn, align 8, !tbaa !65
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit203, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #30
  %i.gr = load ptr, ptr %34, align 8, !tbaa !53   ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.gt = icmp eq ptr %i.gr, %i.gs
  br i1 %i.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206
  %i.gu = load i64, ptr %i.gs, align 8, !tbaa !65
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gv) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  %i.gw = load i8, ptr %33, align 8, !tbaa !81, !range !90, !noundef !91
  %i.gx = trunc nuw i8 %i.gw to i1
  br i1 %i.gx, label %bb.cc, label %bb.bt

bb.bn:                                            ; preds = %_ZN7testing7MessageD2Ev.exit191, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183
  %.pn72.pn.pn = phi { ptr, i32 } [ %.pn72.pn, %_ZN7testing7MessageD2Ev.exit191 ], [ %.pn68.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #30
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.av
  %.pn72.pn.pn.pn = phi { ptr, i32 } [ %.pn72.pn.pn, %bb.bn ], [ %i.er, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  br label %bb.dw

bb.bp:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit196
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.bq:                                            ; preds = %bb.bk
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

bb.br:                                            ; preds = %.noexc110
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212

bb.bs:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i197, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i200
  %i.hb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hc = load ptr, ptr %36, align 8, !tbaa !53   ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210: ; preds = %bb.bs
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !65
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210, %bb.br
  %.pn77 = phi { ptr, i32 } [ %i.ha, %bb.br ], [ %i.hb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210 ], [ %i.hb, %bb.bs ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #30
  %i.hh = load ptr, ptr %34, align 8, !tbaa !53   ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.hj = icmp eq ptr %i.hh, %i.hi
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212
  %i.hk = load i64, ptr %i.hi, align 8, !tbaa !65
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hl) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213, %bb.bq
  %.pn77.pn.pn = phi { ptr, i32 } [ %i.gz, %bb.bq ], [ %.pn77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213 ], [ %.pn77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  br label %bb.ch

bb.bt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %38)
          to label %bb.bu unwind label %bb.by

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #30
  %i.hm = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !92 ; 2 uses
  %.not.i.i216 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i216, label %_ZNK7testing15AssertionResult15failure_messageEv.exit217, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !53
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit217

_ZNK7testing15AssertionResult15failure_messageEv.exit217: ; preds = %bb.bv, %bb.bu
  %i.hp = phi ptr [ %i.ho, %bb.bv ], [ @.str.1057, %bb.bu ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %39, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 567, ptr noundef %i.hp)
          to label %bb.bw unwind label %bb.bz

bb.bw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit217
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull align 8 dereferenceable(8) %38)
          to label %bb.bx unwind label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %39) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #30
  %i.hq = load ptr, ptr %38, align 8, !tbaa !93   ; 3 uses
  %.not.i.i218 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i218, label %_ZN7testing7MessageD2Ev.exit220, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i219

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i219: ; preds = %bb.bx
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !37
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(128) %i.hq) #30, !inline_history !95
  br label %_ZN7testing7MessageD2Ev.exit220

_ZN7testing7MessageD2Ev.exit220:                  ; preds = %bb.bx, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i219
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #30
  br label %bb.cc

bb.by:                                            ; preds = %bb.bt
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit223

bb.bz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit217
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bw
  %i.hw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %39) #30
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.pn81 = phi { ptr, i32 } [ %i.hw, %bb.ca ], [ %i.hv, %bb.bz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #30
  %i.hx = load ptr, ptr %38, align 8, !tbaa !93   ; 3 uses
  %.not.i.i221 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i221, label %_ZN7testing7MessageD2Ev.exit223, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i222

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i222: ; preds = %bb.cb
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !37
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8
  call void %i.ia(ptr noundef nonnull align 8 dereferenceable(128) %i.hx) #30, !inline_history !95
  br label %_ZN7testing7MessageD2Ev.exit223

_ZN7testing7MessageD2Ev.exit223:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i222, %bb.cb, %bb.by
  %.pn81.pn = phi { ptr, i32 } [ %i.hu, %bb.by ], [ %.pn81, %bb.cb ], [ %.pn81, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i222 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #30
  br label %bb.ch

bb.cc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, %_ZN7testing7MessageD2Ev.exit220
  %i.ib = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !92 ; 4 uses
  %.not.i.i224 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i224, label %_ZN7testing15AssertionResultD2Ev.exit228, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !53 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 16 ; 2 uses
  %i.if = icmp eq ptr %i.id, %i.ie
  br i1 %i.if, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i226, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i225

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i225: ; preds = %bb.cd
  %i.ig = load i64, ptr %i.ie, align 8, !tbaa !65
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ih) #32
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i226

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i226: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i225
  call void @_ZdlPvm(ptr noundef nonnull %i.ic, i64 noundef 32) #32
  br label %_ZN7testing15AssertionResultD2Ev.exit228

_ZN7testing15AssertionResultD2Ev.exit228:         ; preds = %bb.cc, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i226
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #30
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #30
  %i.ii = getelementptr inbounds nuw i8, ptr %40, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.ii, i8 0, i64 40, i1 false), !alias.scope !2698
  store <4 x i32> <i32 45, i32 25, i32 3, i32 1>, ptr %40, align 16, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #30
  store i64 12345, ptr %41, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #30
  invoke void @_ZNSt6localeC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef nonnull @.str.465)
          to label %bb.ce unwind label %bb.cj

bb.ce:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit228
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #30
  invoke void @_Z9format_tmB5cxx11RK2tmN3fmt3v1217basic_string_viewIcEERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %44, ptr noundef nonnull align 8 dereferenceable(56) %40, ptr nonnull @.str.484, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %.noexc114 unwind label %bb.ck

.noexc114:                                        ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30, !noalias !2701
  store ptr %41, ptr %1, align 16, !tbaa !65
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.ij, align 8, !tbaa !65
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_10locale_refENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %45, ptr nonnull %42, ptr nonnull @.str.485, i64 6, i64 15, ptr nonnull %1)
          to label %bb.cf unwind label %bb.cl

bb.cf:                                            ; preds = %.noexc114
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30, !noalias !2701
  %i.ik = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !56, !noalias !2704 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.in = load i64, ptr %i.im, align 8, !tbaa !56, !noalias !2704
  %i.io = icmp eq i64 %i.il, %i.in
  br i1 %i.io, label %bb.cg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i229

bb.cg:                                            ; preds = %bb.cf
  %i.ip = icmp eq i64 %i.il, 0
  br i1 %i.ip, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i232, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i230

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i230: ; preds = %bb.cg
  %i.iq = load ptr, ptr %45, align 8, !tbaa !53, !noalias !2704
  %i.ir = load ptr, ptr %44, align 8, !tbaa !53, !noalias !2704
  %bcmp.i.i.i231 = call i32 @bcmp(ptr %i.ir, ptr %i.iq, i64 %i.il), !noalias !2704
  %i.is = icmp eq i32 %bcmp.i.i.i231, 0
  br i1 %i.is, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i232, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i229

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i232: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i230, %bb.cg
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %43)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit235 unwind label %bb.cm

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i229: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i230, %bb.cf
  invoke void @_ZN7testing8internal18CmpHelperEQFailureINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EENS_15AssertionResultEPKcSA_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %43, ptr noundef nonnull @.str.482, ptr noundef nonnull @.str.483, ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull align 8 dereferenceable(32) %45)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit235 unwind label %bb.cm

_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit235: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i232, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i229
  %i.it = load ptr, ptr %45, align 8, !tbaa !53   ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.iv = icmp eq ptr %i.it, %i.iu
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit235
  %i.iw = load i64, ptr %i.iu, align 8, !tbaa !65
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.ix) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit235, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #30
  %i.iy = load ptr, ptr %44, align 8, !tbaa !53   ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  %i.ja = icmp eq ptr %i.iy, %i.iz
  br i1 %i.ja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238
  %i.jb = load i64, ptr %i.iz, align 8, !tbaa !65
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #30
  %i.jd = load i8, ptr %43, align 8, !tbaa !81, !range !90, !noundef !91
  %i.je = trunc nuw i8 %i.jd to i1
  br i1 %i.je, label %bb.cw, label %bb.cn

bb.ch:                                            ; preds = %_ZN7testing7MessageD2Ev.exit223, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  %.pn81.pn.pn = phi { ptr, i32 } [ %.pn81.pn, %_ZN7testing7MessageD2Ev.exit223 ], [ %.pn77.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #30
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #30
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.bp
  %.pn81.pn.pn.pn = phi { ptr, i32 } [ %.pn81.pn.pn, %bb.ch ], [ %i.gy, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  br label %bb.dw

bb.cj:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit228
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.ck:                                            ; preds = %bb.ce
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

bb.cl:                                            ; preds = %.noexc114
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

bb.cm:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i229, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i232
  %i.ji = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jj = load ptr, ptr %45, align 8, !tbaa !53   ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.jl = icmp eq ptr %i.jj, %i.jk
  br i1 %i.jl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242: ; preds = %bb.cm
  %i.jm = load i64, ptr %i.jk, align 8, !tbaa !65
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jn) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242, %bb.cl
  %.pn86 = phi { ptr, i32 } [ %i.jh, %bb.cl ], [ %i.ji, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242 ], [ %i.ji, %bb.cm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #30
  %i.jo = load ptr, ptr %44, align 8, !tbaa !53   ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !65
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245, %bb.ck
  %.pn86.pn = phi { ptr, i32 } [ %i.jg, %bb.ck ], [ %.pn86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245 ], [ %.pn86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #30
  br label %bb.db

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %46)
          to label %bb.co unwind label %bb.cs

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #30
  %i.jt = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !92 ; 2 uses
  %.not.i.i248 = icmp eq ptr %i.ju, null
  br i1 %.not.i.i248, label %_ZNK7testing15AssertionResult15failure_messageEv.exit249, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !53
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit249

_ZNK7testing15AssertionResult15failure_messageEv.exit249: ; preds = %bb.cp, %bb.co
  %i.jw = phi ptr [ %i.jv, %bb.cp ], [ @.str.1057, %bb.co ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %47, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 573, ptr noundef %i.jw)
          to label %bb.cq unwind label %bb.ct

bb.cq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit249
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef nonnull align 8 dereferenceable(8) %46)
          to label %bb.cr unwind label %bb.cu

bb.cr:                                            ; preds = %bb.cq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %47) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #30
  %i.jx = load ptr, ptr %46, align 8, !tbaa !93   ; 3 uses
  %.not.i.i250 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i250, label %_ZN7testing7MessageD2Ev.exit252, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i251

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i251: ; preds = %bb.cr
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !37
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8
  call void %i.ka(ptr noundef nonnull align 8 dereferenceable(128) %i.jx) #30, !inline_history !95
  br label %_ZN7testing7MessageD2Ev.exit252

_ZN7testing7MessageD2Ev.exit252:                  ; preds = %bb.cr, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i251
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #30
  br label %bb.cw

bb.cs:                                            ; preds = %bb.cn
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit255

bb.ct:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit249
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cq
  %i.kd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %47) #30
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
end_hunk_0
begin_hunk_1_@_ZN33chrono_test_glibc_extensions_Test8TestBodyEv:bb.a

bb.gm:                                            ; preds = %bb.gl
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !53 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tp, i64 16 ; 2 uses
  %i.ts = icmp eq ptr %i.tq, %i.tr
  br i1 %i.ts, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i657, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i656

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i656: ; preds = %bb.gm
  %i.tt = load i64, ptr %i.tr, align 8, !tbaa !65
  %i.tu = add i64 %i.tt, 1
  call void @_ZdlPvm(ptr noundef %i.tq, i64 noundef %i.tu) #32
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i657

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i657: ; preds = %bb.gm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i656
  call void @_ZdlPvm(ptr noundef nonnull %i.tp, i64 noundef 32) #32
  br label %_ZN7testing15AssertionResultD2Ev.exit659

_ZN7testing15AssertionResultD2Ev.exit659:         ; preds = %bb.gl, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i657
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30, !noalias !3824
  store ptr %63, ptr %22, align 16, !tbaa !65, !noalias !3824
  %i.tv = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.tv, align 8, !tbaa !65, !noalias !3824
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %89, ptr nonnull @.str.933, i64 22, i64 15, ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30, !noalias !3824
  %i.tw = getelementptr inbounds nuw i8, ptr %89, i64 8
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !56, !noalias !3827
  %i.ty = icmp eq i64 %i.tx, 7
  br i1 %i.ty, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i661, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i660

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i661: ; preds = %_ZN7testing15AssertionResultD2Ev.exit659
  %i.tz = load ptr, ptr %89, align 8, !tbaa !53, !noalias !3827 ; 2 uses
  %i.ua = load i32, ptr %i.tz, align 1
  %i.ub = xor i32 %i.ua, 741420081
  %i.uc = getelementptr i8, ptr %i.tz, i64 3
  %i.ud = load i32, ptr %i.uc, align 1
  %i.ue = xor i32 %i.ud, 858534444
  %i.uf = or i32 %i.ub, %i.ue
  %i.ug = icmp ne i32 %i.uf, 0
  %i.uh = zext i1 %i.ug to i32
  %i.ui = icmp eq i32 %i.uh, 0
  br i1 %i.ui, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i663, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i660

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i663: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i661
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %88)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA8_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit666 unwind label %bb.go

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i660: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i661, %_ZN7testing15AssertionResultD2Ev.exit659
  invoke void @_ZN7testing8internal18CmpHelperEQFailureINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA8_cEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %88, ptr noundef nonnull @.str.932, ptr noundef nonnull @.str.921, ptr noundef nonnull align 8 dereferenceable(32) %89, ptr noundef nonnull align 1 dereferenceable(8) @.str.923)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA8_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit666 unwind label %bb.go

_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA8_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit666: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i663, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i660
  %i.uj = load ptr, ptr %89, align 8, !tbaa !53   ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %89, i64 16 ; 2 uses
  %i.ul = icmp eq ptr %i.uj, %i.uk
  br i1 %i.ul, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i667

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i667: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA8_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit666
  %i.um = load i64, ptr %i.uk, align 8, !tbaa !65
  %i.un = add i64 %i.um, 1
  call void @_ZdlPvm(ptr noundef %i.uj, i64 noundef %i.un) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA8_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit666, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i667
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #30
  %i.uo = load i8, ptr %88, align 8, !tbaa !81, !range !90, !noundef !91
  %i.up = trunc nuw i8 %i.uo to i1
  br i1 %i.up, label %bb.gy, label %bb.gp

bb.gn:                                            ; preds = %_ZN7testing7MessageD2Ev.exit654, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit646
  %.pn265.pn.pn = phi { ptr, i32 } [ %.pn265.pn, %_ZN7testing7MessageD2Ev.exit654 ], [ %i.st, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit646 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #30
  br label %bb.hb

bb.go:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i660, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i663
  %i.uq = landingpad { ptr, i32 }
          cleanup
  %i.ur = load ptr, ptr %89, align 8, !tbaa !53   ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %89, i64 16 ; 2 uses
  %i.ut = icmp eq ptr %i.ur, %i.us
  br i1 %i.ut, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit672, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i670

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i670: ; preds = %bb.go
  %i.uu = load i64, ptr %i.us, align 8, !tbaa !65
  %i.uv = add i64 %i.uu, 1
  call void @_ZdlPvm(ptr noundef %i.ur, i64 noundef %i.uv) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit672

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit672: ; preds = %bb.go, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i670
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #30
  br label %bb.ha

bb.gp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %90)
          to label %bb.gq unwind label %bb.gu

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #30
  %i.uw = getelementptr inbounds nuw i8, ptr %88, i64 8
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !92 ; 2 uses
  %.not.i.i673 = icmp eq ptr %i.ux, null
  br i1 %.not.i.i673, label %_ZNK7testing15AssertionResult15failure_messageEv.exit674, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !53
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit674

_ZNK7testing15AssertionResult15failure_messageEv.exit674: ; preds = %bb.gr, %bb.gq
  %i.uz = phi ptr [ %i.uy, %bb.gr ], [ @.str.1057, %bb.gq ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %91, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 914, ptr noundef %i.uz)
          to label %bb.gs unwind label %bb.gv

bb.gs:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit674
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %91, ptr noundef nonnull align 8 dereferenceable(8) %90)
          to label %bb.gt unwind label %bb.gw

bb.gt:                                            ; preds = %bb.gs
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %91) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #30
  %i.va = load ptr, ptr %90, align 8, !tbaa !93   ; 3 uses
  %.not.i.i675 = icmp eq ptr %i.va, null
  br i1 %.not.i.i675, label %_ZN7testing7MessageD2Ev.exit677, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i676

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i676: ; preds = %bb.gt
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !37
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  %i.vd = load ptr, ptr %i.vc, align 8
  call void %i.vd(ptr noundef nonnull align 8 dereferenceable(128) %i.va) #30, !inline_history !95
  br label %_ZN7testing7MessageD2Ev.exit677

_ZN7testing7MessageD2Ev.exit677:                  ; preds = %bb.gt, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i676
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #30
  br label %bb.gy

bb.gu:                                            ; preds = %bb.gp
  %i.ve = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit680

bb.gv:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit674
  %i.vf = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

bb.gw:                                            ; preds = %bb.gs
  %i.vg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %91) #30
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %.pn269 = phi { ptr, i32 } [ %i.vg, %bb.gw ], [ %i.vf, %bb.gv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #30
  %i.vh = load ptr, ptr %90, align 8, !tbaa !93   ; 3 uses
  %.not.i.i678 = icmp eq ptr %i.vh, null
  br i1 %.not.i.i678, label %_ZN7testing7MessageD2Ev.exit680, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i679

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i679: ; preds = %bb.gx
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !37
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 8
  %i.vk = load ptr, ptr %i.vj, align 8
  call void %i.vk(ptr noundef nonnull align 8 dereferenceable(128) %i.vh) #30, !inline_history !95
  br label %_ZN7testing7MessageD2Ev.exit680

_ZN7testing7MessageD2Ev.exit680:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i679, %bb.gx, %bb.gu
  %.pn269.pn = phi { ptr, i32 } [ %i.ve, %bb.gu ], [ %.pn269, %bb.gx ], [ %.pn269, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i679 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %88) #30
  br label %bb.ha

bb.gy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669, %_ZN7testing7MessageD2Ev.exit677
  %i.vl = getelementptr inbounds nuw i8, ptr %88, i64 8
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !92 ; 4 uses
  %.not.i.i681 = icmp eq ptr %i.vm, null
  br i1 %.not.i.i681, label %_ZN7testing15AssertionResultD2Ev.exit685, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !53 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vm, i64 16 ; 2 uses
  %i.vp = icmp eq ptr %i.vn, %i.vo
  br i1 %i.vp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i683, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i682

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i682: ; preds = %bb.gz
  %i.vq = load i64, ptr %i.vo, align 8, !tbaa !65
  %i.vr = add i64 %i.vq, 1
  call void @_ZdlPvm(ptr noundef %i.vn, i64 noundef %i.vr) #32
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i683

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i683: ; preds = %bb.gz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i682
  call void @_ZdlPvm(ptr noundef nonnull %i.vm, i64 noundef 32) #32
  br label %_ZN7testing15AssertionResultD2Ev.exit685

_ZN7testing15AssertionResultD2Ev.exit685:         ; preds = %bb.gy, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i683
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #30
  %i.vs = getelementptr inbounds nuw i8, ptr %92, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.vs, i8 0, i64 40, i1 false)
  store <4 x i32> <i32 3, i32 2, i32 1, i32 1>, ptr %92, align 16
  %i.vt = getelementptr inbounds nuw i8, ptr %92, i64 20
  store i32 70, ptr %i.vt, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30, !noalias !3832
  store ptr %92, ptr %10, align 16, !tbaa !65, !noalias !3832
  %i.vu = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customI2tmEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.vu, align 8, !tbaa !65, !noalias !3832
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %94, ptr nonnull @.str.914, i64 14, i64 15, ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30, !noalias !3832
  %i.vv = getelementptr inbounds nuw i8, ptr %94, i64 8
  %i.vw = load i64, ptr %i.vv, align 8, !tbaa !56, !noalias !3835
  %i.vx = icmp eq i64 %i.vw, 11
  br i1 %i.vx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i687, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i686

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i687: ; preds = %_ZN7testing15AssertionResultD2Ev.exit685
  %i.vy = load ptr, ptr %94, align 8, !tbaa !53, !noalias !3835 ; 2 uses
  %i.vz = load i64, ptr %i.vy, align 1
  %i.wa = xor i64 %i.vz, 3616439090551730480
  %i.wb = getelementptr i8, ptr %i.vy, i64 3
  %i.wc = load i64, ptr %i.wb, align 1
  %i.wd = xor i64 %i.wc, 3688496688884625712
  %i.we = or i64 %i.wa, %i.wd
  %i.wf = icmp ne i64 %i.we, 0
  %i.wg = zext i1 %i.wf to i32
  %i.wh = icmp eq i32 %i.wg, 0
  br i1 %i.wh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i689, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i686

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i689: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i687
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %93)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA12_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit692 unwind label %bb.hc

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i686: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i687, %_ZN7testing15AssertionResultD2Ev.exit685
  invoke void @_ZN7testing8internal18CmpHelperEQFailureINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA12_cEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %93, ptr noundef nonnull @.str.934, ptr noundef nonnull @.str.913, ptr noundef nonnull align 8 dereferenceable(32) %94, ptr noundef nonnull align 1 dereferenceable(12) @.str.915)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA12_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit692 unwind label %bb.hc

_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA12_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit692: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i689, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i686
  %i.wi = load ptr, ptr %94, align 8, !tbaa !53   ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %94, i64 16 ; 2 uses
  %i.wk = icmp eq ptr %i.wi, %i.wj
  br i1 %i.wk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit695, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i693

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i693: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA12_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit692
  %i.wl = load i64, ptr %i.wj, align 8, !tbaa !65
  %i.wm = add i64 %i.wl, 1
  call void @_ZdlPvm(ptr noundef %i.wi, i64 noundef %i.wm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit695

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit695: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA12_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit692, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i693
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #30
  %i.wn = load i8, ptr %93, align 8, !tbaa !81, !range !90, !noundef !91
  %i.wo = trunc nuw i8 %i.wn to i1
  br i1 %i.wo, label %bb.hm, label %bb.hd

bb.ha:                                            ; preds = %_ZN7testing7MessageD2Ev.exit680, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit672
  %.pn269.pn.pn = phi { ptr, i32 } [ %.pn269.pn, %_ZN7testing7MessageD2Ev.exit680 ], [ %i.uq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit672 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #30
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gn, %bb.ga, %bb.fn, %bb.fa, %bb.en, %bb.ea
  %.pn269.pn.pn.pn = phi { ptr, i32 } [ %.pn269.pn.pn, %bb.ha ], [ %.pn265.pn.pn, %bb.gn ], [ %.pn261.pn.pn, %bb.ga ], [ %.pn257.pn.pn, %bb.fn ], [ %.pn253.pn.pn, %bb.fa ], [ %.pn249.pn.pn, %bb.en ], [ %.pn245.pn.pn, %bb.ea ]
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #30
  br label %bb.wx

bb.hc:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i686, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i689
  %i.wp = landingpad { ptr, i32 }
          cleanup
  %i.wq = load ptr, ptr %94, align 8, !tbaa !53   ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %94, i64 16 ; 2 uses
  %i.ws = icmp eq ptr %i.wq, %i.wr
  br i1 %i.ws, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit698, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i696

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i696: ; preds = %bb.hc
  %i.wt = load i64, ptr %i.wr, align 8, !tbaa !65
  %i.wu = add i64 %i.wt, 1
  call void @_ZdlPvm(ptr noundef %i.wq, i64 noundef %i.wu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit698

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit698: ; preds = %bb.hc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i696
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #30
  br label %bb.ho

bb.hd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit695
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %95)
          to label %bb.he unwind label %bb.hi

bb.he:                                            ; preds = %bb.hd
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #30
  %i.wv = getelementptr inbounds nuw i8, ptr %93, i64 8
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !92 ; 2 uses
  %.not.i.i699 = icmp eq ptr %i.ww, null
  br i1 %.not.i.i699, label %_ZNK7testing15AssertionResult15failure_messageEv.exit700, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !53
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit700

_ZNK7testing15AssertionResult15failure_messageEv.exit700: ; preds = %bb.hf, %bb.he
  %i.wy = phi ptr [ %i.wx, %bb.hf ], [ @.str.1057, %bb.he ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %96, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 919, ptr noundef %i.wy)
          to label %bb.hg unwind label %bb.hj

bb.hg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit700
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %96, ptr noundef nonnull align 8 dereferenceable(8) %95)
          to label %bb.hh unwind label %bb.hk

bb.hh:                                            ; preds = %bb.hg
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %96) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #30
  %i.wz = load ptr, ptr %95, align 8, !tbaa !93   ; 3 uses
  %.not.i.i701 = icmp eq ptr %i.wz, null
  br i1 %.not.i.i701, label %_ZN7testing7MessageD2Ev.exit703, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i702

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i702: ; preds = %bb.hh
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !37
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 8
  %i.xc = load ptr, ptr %i.xb, align 8
  call void %i.xc(ptr noundef nonnull align 8 dereferenceable(128) %i.wz) #30, !inline_history !95
  br label %_ZN7testing7MessageD2Ev.exit703

_ZN7testing7MessageD2Ev.exit703:                  ; preds = %bb.hh, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i702
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #30
  br label %bb.hm

bb.hi:                                            ; preds = %bb.hd
  %i.xd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit706

bb.hj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit700
  %i.xe = landingpad { ptr, i32 }
          cleanup
  br label %bb.hl

bb.hk:                                            ; preds = %bb.hg
  %i.xf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %96) #30
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %.pn274 = phi { ptr, i32 } [ %i.xf, %bb.hk ], [ %i.xe, %bb.hj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #30
  %i.xg = load ptr, ptr %95, align 8, !tbaa !93   ; 3 uses
  %.not.i.i704 = icmp eq ptr %i.xg, null
  br i1 %.not.i.i704, label %_ZN7testing7MessageD2Ev.exit706, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i705

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i705: ; preds = %bb.hl
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !37
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 8
  %i.xj = load ptr, ptr %i.xi, align 8
  call void %i.xj(ptr noundef nonnull align 8 dereferenceable(128) %i.xg) #30, !inline_history !95
  br label %_ZN7testing7MessageD2Ev.exit706

_ZN7testing7MessageD2Ev.exit706:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i705, %bb.hl, %bb.hi
  %.pn274.pn = phi { ptr, i32 } [ %i.xd, %bb.hi ], [ %.pn274, %bb.hl ], [ %.pn274, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i705 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %93) #30
  br label %bb.ho

bb.hm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit695, %_ZN7testing7MessageD2Ev.exit703
  %i.xk = getelementptr inbounds nuw i8, ptr %93, i64 8
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !92 ; 4 uses
  %.not.i.i707 = icmp eq ptr %i.xl, null
  br i1 %.not.i.i707, label %_ZN7testing15AssertionResultD2Ev.exit711, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !53 ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xl, i64 16 ; 2 uses
  %i.xo = icmp eq ptr %i.xm, %i.xn
  br i1 %i.xo, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i709, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i708

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i708: ; preds = %bb.hn
  %i.xp = load i64, ptr %i.xn, align 8, !tbaa !65
  %i.xq = add i64 %i.xp, 1
  call void @_ZdlPvm(ptr noundef %i.xm, i64 noundef %i.xq) #32
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i709

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i709: ; preds = %bb.hn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i708
  call void @_ZdlPvm(ptr noundef nonnull %i.xl, i64 noundef 32) #32
  br label %_ZN7testing15AssertionResultD2Ev.exit711

_ZN7testing15AssertionResultD2Ev.exit711:         ; preds = %bb.hm, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i709
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30, !noalias !3840
  store ptr %92, ptr %11, align 16, !tbaa !65, !noalias !3840
  %i.xr = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customI2tmEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.xr, align 8, !tbaa !65, !noalias !3840
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %98, ptr nonnull @.str.918, i64 18, i64 15, ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30, !noalias !3840
  %i.xs = getelementptr inbounds nuw i8, ptr %98, i64 8
  %i.xt = load i64, ptr %i.xs, align 8, !tbaa !56, !noalias !3843
  %i.xu = icmp eq i64 %i.xt, 11
  br i1 %i.xu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i713, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i712

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i713: ; preds = %_ZN7testing15AssertionResultD2Ev.exit711
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEfTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS0_10locale_refE:bb.a
  store i64 1, ptr %i.az, align 8, !tbaa !4244
  store i8 %i.bf, ptr %i.ba, align 8, !tbaa !65
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.04.0.copyload = load i64, ptr %8, align 16
  %.sroa.2.0.copyload = load i64, ptr %i.a, align 8
  invoke void @_ZN3fmt3v126detail15format_hexfloatIdTnNSt9enable_ifIXntsr16is_double_doubleIT_EE5valueEiE4typeELi0EEEvS4_NS0_12format_specsERNS1_6bufferIcEE(double noundef %i.g, i64 %.sroa.04.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bg = load ptr, ptr %11, align 8, !tbaa !4228
  %i.bh = load i64, ptr %i.az, align 8, !tbaa !4244 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.bg, ptr %5, align 8, !tbaa !214
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bh, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !212
  %i.bi = invoke ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_11write_bytesIcLS3_2ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 noundef %i.bh, i64 noundef %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit unwind label %bb.r

_ZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.ae

bb.r:                                             ; preds = %bb.q, %bb.t, %bb.p
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.s:                                             ; preds = %bb.m
  %i.bk = icmp eq i32 %.037, 2147483647
  br i1 %i.bk, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.1073) #31
          to label %bb.u unwind label %bb.r

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.bl = add nuw nsw i32 %.037, 1                ; 2 uses
  %.not47 = icmp eq i32 %i.as, 0
  br i1 %.not47, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = or i32 %.pre61, 8192
  store i32 %i.bm, ptr %8, align 16, !tbaa !4193
  br label %bb.aa

bb.x:                                             ; preds = %bb.m
  %.not46 = icmp eq i32 %i.as, 0
  br i1 %.not46, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bn = or i32 %.pre61, 8192
  store i32 %i.bn, ptr %8, align 16, !tbaa !4193
  br label %bb.aa

bb.z:                                             ; preds = %bb.m
  %spec.store.select = call i32 @llvm.umax.i32(i32 %.037, i32 1)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.v, %bb.w
  %.1 = phi i32 [ %i.bl, %bb.w ], [ %i.bl, %bb.v ], [ %.037, %bb.y ], [ %.037, %bb.x ], [ %spec.store.select, %bb.z ] ; 2 uses
  %i.bo = invoke noundef i32 @_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE(double noundef %i.g, i32 noundef %.1, ptr noundef nonnull align 4 dereferenceable(16) %8, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 %.1, ptr %i.ar, align 4, !tbaa !4195
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.bp = load ptr, ptr %11, align 8, !tbaa !4228
  store ptr %i.bp, ptr %12, align 8, !tbaa !5340
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.br = load i64, ptr %i.az, align 8, !tbaa !4244
  %i.bs = trunc i64 %i.br to i32
  store i32 %i.bs, ptr %i.bq, align 8, !tbaa !5342
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 %i.bo, ptr %i.bt, align 4, !tbaa !5343
  %i.bu = invoke ptr @_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef %.0, i32 noundef 7, ptr %4)
          to label %_ZN3fmt3v126detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE.exit unwind label %bb.ad

_ZN3fmt3v126detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE.exit: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.ag

bb.ae:                                            ; preds = %_ZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit, %_ZN3fmt3v126detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE.exit
  %.sroa.036.0 = phi ptr [ %i.bu, %_ZN3fmt3v126detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE.exit ], [ %i.bi, %_ZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit ]
  %i.bx = load ptr, ptr %11, align 8, !tbaa !4228 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bx, %i.ba
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @free(ptr noundef %i.bx) #30
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ac, %bb.ad, %bb.r
  %.pn50 = phi { ptr, i32 } [ %i.bj, %bb.r ], [ %i.bv, %bb.ac ], [ %i.bw, %bb.ad ]
  %i.by = load ptr, ptr %11, align 8, !tbaa !4228 ; 2 uses
  %.not.i.i54 = icmp eq ptr %i.by, %i.ba
  br i1 %.not.i.i54, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit55, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @free(ptr noundef %i.by) #30
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit55

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit55: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  resume { ptr, i32 } %.pn50

bb.ai:                                            ; preds = %bb.b, %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, %bb.l
  %.sroa.036.3 = phi ptr [ %i.aw, %bb.l ], [ %i.x, %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit ], [ %.sroa.036.0, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit ], [ %0, %bb.b ]
  ret ptr %.sroa.036.3
}

declare noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr, ptr noundef byval(%"class.fmt::v12::loc_value") align 16, ptr noundef nonnull align 4 dereferenceable(16), ptr) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @_ZN3fmt3v126detail9dragonbox10to_decimalIfEENS2_10decimal_fpIT_EES5_(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail15format_hexfloatIdTnNSt9enable_ifIXntsr16is_double_doubleIT_EE5valueEiE4typeELi0EEEvS4_NS0_12format_specsERNS1_6bufferIcEE(double noundef %0, i64 %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  %.sroa.081.0.extract.trunc = trunc i64 %1 to i32 ; 2 uses
  %.sroa.6.8.extract.shift = lshr i64 %2, 32
  %.sroa.6.8.extract.trunc = trunc nuw i64 %.sroa.6.8.extract.shift to i32 ; 6 uses
  %i.b = bitcast double %0 to i64                 ; 2 uses
  %i.c = and i64 %i.b, 4503599627370495           ; 2 uses
  %i.d = and i64 %i.b, 9218868437227405312        ; 2 uses
  %i.e = icmp eq i64 %i.d, 0                      ; 2 uses
  %i.f = lshr exact i64 %i.d, 52
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = or disjoint i64 %i.c, 4503599627370496
  %storemerge.i.i = select i1 %i.e, i64 %i.c, i64 %i.h ; 4 uses
  %i.i = add nsw i32 %i.g, -1023                  ; 2 uses
  %i.j = select i1 %i.e, i32 -1022, i32 %i.i      ; 2 uses
  %i.k = icmp sgt i64 %2, -1
  %i.l = icmp slt i32 %.sroa.6.8.extract.trunc, 13
  %or.cond35 = and i1 %i.k, %i.l
  br i1 %or.cond35, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = shl nuw nsw i32 %.sroa.6.8.extract.trunc, 2 ; 2 uses
  %i.n = sub nuw nsw i32 48, %i.m
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 8, %i.o
  %i.q = and i64 %i.p, %storemerge.i.i
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = sub nuw nsw i32 52, %i.m
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl nuw nsw i64 1, %i.s                  ; 2 uses
  %i.u = add nuw nsw i64 %i.t, %storemerge.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = and i64 %i.u, %i.v
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.074.1 = phi i64 [ %storemerge.i.i, %bb.a ], [ %storemerge.i.i, %bb.b ], [ %i.w, %bb.c ]
  %.032 = phi i32 [ 13, %bb.a ], [ %.sroa.6.8.extract.trunc, %bb.b ], [ %.sroa.6.8.extract.trunc, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 48, i64 16, i1 false)
  %i.x = and i32 %.sroa.081.0.extract.trunc, 4096
  %.not88 = icmp eq i32 %i.x, 0                   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %.str.1120..str.1121.i.i = select i1 %.not88, ptr @.str.1121, ptr @.str.1120
  br label %.split.i.i

.split.i.i:                                       ; preds = %.split.i.i, %bb.d
  %.012.i.i = phi i64 [ %i.ad, %.split.i.i ], [ %.sroa.074.1, %bb.d ] ; 2 uses
  %.0.i.i38 = phi ptr [ %i.ac, %.split.i.i ], [ %i.y, %bb.d ]
  %i.z = and i64 %.012.i.i, 15
  %i.aa = getelementptr inbounds nuw i8, ptr %.str.1120..str.1121.i.i, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !65
  %i.ac = getelementptr inbounds i8, ptr %.0.i.i38, i64 -1 ; 2 uses
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !65
  %i.ad = lshr i64 %.012.i.i, 4                   ; 2 uses
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader, label %.split.i.i, !llvm.loop !5344

_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader: ; preds = %.split.i.i
  %.not8990 = icmp eq i32 %.032, 0
  br i1 %.not8990, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader
  %4 = zext i32 %.032 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit
  %indvars.iv = phi i64 [ %4, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !65
  %i.ag = icmp eq i8 %i.af, 48
  br i1 %i.ag, label %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit, label %.critedge.loopexit.split.loop.exit117

_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit: ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %5 = and i64 %indvars.iv.next, 4294967295
  %.not89 = icmp eq i64 %5, 0
  br i1 %.not89, label %.critedge, label %.lr.ph, !llvm.loop !5345

.critedge.loopexit.split.loop.exit117:            ; preds = %.lr.ph
  %6 = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit, %.critedge.loopexit.split.loop.exit117, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader
  %.1.lcssa = phi i32 [ 0, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader ], [ %6, %.critedge.loopexit.split.loop.exit117 ], [ 0, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 27 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !4244 ; 2 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !4229
  %i.am = icmp ugt i64 %i.aj, %i.al
  br i1 %i.am, label %bb.e, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

bb.e:                                             ; preds = %.critedge
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !398
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.aj), !inline_history !4342
  %.pre.i = load i64, ptr %i.ah, align 8, !tbaa !4244 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit:  ; preds = %.critedge, %bb.e
  %.pre-phi.i = phi i64 [ %i.aj, %.critedge ], [ %.pre2.i, %bb.e ]
  %i.ap = phi i64 [ %i.ai, %.critedge ], [ %.pre.i, %bb.e ]
  %i.aq = load ptr, ptr %3, align 8, !tbaa !4228
  store i64 %.pre-phi.i, ptr %i.ah, align 8, !tbaa !4244
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  store i8 48, ptr %i.ar, align 1, !tbaa !65
  %i.as = select i1 %.not88, i8 120, i8 88
  %i.at = load i64, ptr %i.ah, align 8, !tbaa !4244 ; 2 uses
  %i.au = add i64 %i.at, 1                        ; 3 uses
  %i.av = load i64, ptr %i.ak, align 8, !tbaa !4229
  %i.aw = icmp ugt i64 %i.au, %i.av
  br i1 %i.aw, label %bb.f, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42

bb.f:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !398
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.au), !inline_history !4342
  %.pre.i40 = load i64, ptr %i.ah, align 8, !tbaa !4244 ; 2 uses
  %.pre2.i41 = add i64 %.pre.i40, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit, %bb.f
  %.pre-phi.i39 = phi i64 [ %i.au, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %.pre2.i41, %bb.f ]
  %i.az = phi i64 [ %i.at, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %.pre.i40, %bb.f ]
  %i.ba = load ptr, ptr %3, align 8, !tbaa !4228
  store i64 %.pre-phi.i39, ptr %i.ah, align 8, !tbaa !4244
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az
  store i8 %i.as, ptr %i.bb, align 1, !tbaa !65
  %i.bc = load i64, ptr %i.ah, align 8, !tbaa !4244 ; 2 uses
  %i.bd = add i64 %i.bc, 1                        ; 3 uses
  %i.be = load i64, ptr %i.ak, align 8, !tbaa !4229
  %i.bf = icmp ugt i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.g, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46

bb.g:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !398
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bd), !inline_history !4342
  %.pre.i44 = load i64, ptr %i.ah, align 8, !tbaa !4244 ; 2 uses
  %.pre2.i45 = add i64 %.pre.i44, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42, %bb.g
  %.pre-phi.i43 = phi i64 [ %i.bd, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42 ], [ %.pre2.i45, %bb.g ]
  %i.bi = phi i64 [ %i.bc, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42 ], [ %.pre.i44, %bb.g ]
  %i.bj = load i8, ptr %i.a, align 16, !tbaa !65
  %i.bk = load ptr, ptr %3, align 8, !tbaa !4228
  store i64 %.pre-phi.i43, ptr %i.ah, align 8, !tbaa !4244
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  store i8 %i.bj, ptr %i.bl, align 1, !tbaa !65
  %i.bm = and i32 %.sroa.081.0.extract.trunc, 8192
  %i.bn = or i32 %.1.lcssa, %i.bm
  %or.cond = icmp ne i32 %i.bn, 0
  %i.bo = icmp slt i32 %.1.lcssa, %.sroa.6.8.extract.trunc ; 2 uses
  %or.cond37 = or i1 %i.bo, %or.cond
  br i1 %or.cond37, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46
  %i.bp = load i64, ptr %i.ah, align 8, !tbaa !4244 ; 2 uses
  %i.bq = add i64 %i.bp, 1                        ; 3 uses
  %i.br = load i64, ptr %i.ak, align 8, !tbaa !4229
  %i.bs = icmp ugt i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.i, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !398
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bq), !inline_history !4342
  %.pre.i48 = load i64, ptr %i.ah, align 8, !tbaa !4244 ; 2 uses
  %.pre2.i49 = add i64 %.pre.i48, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50: ; preds = %bb.h, %bb.i
  %.pre-phi.i47 = phi i64 [ %i.bq, %bb.h ], [ %.pre2.i49, %bb.i ]
  %i.bv = phi i64 [ %i.bp, %bb.h ], [ %.pre.i48, %bb.i ]
  %i.bw = load ptr, ptr %3, align 8, !tbaa !4228
  store i64 %.pre-phi.i47, ptr %i.ah, align 8, !tbaa !4244
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv
  store i8 46, ptr %i.bx, align 1, !tbaa !65
  br label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.bz = zext nneg i32 %.1.lcssa to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bz ; 2 uses
  %.not31.i = icmp eq i32 %.1.lcssa, 0
  br i1 %.not31.i, label %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %bb.j
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i51 = load i64, ptr %i.ah, align 8, !tbaa !4244
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %.lr.ph34.i
  %i.cd = phi i64 [ %.pre.i51, %.lr.ph34.i ], [ %i.dk, %._crit_edge.i ] ; 3 uses
  %.02732.i = phi ptr [ %i.by, %.lr.ph34.i ], [ %i.dl, %._crit_edge.i ] ; 9 uses
  %i.ce = load i64, ptr %i.ak, align 8, !tbaa !4229
  %i.cf = sub i64 %i.ce, %i.cd
  %i.cg = ptrtoint ptr %.02732.i to i64           ; 2 uses
  %i.ch = sub i64 %i.cb, %i.cg                    ; 4 uses
  %i.ci = icmp ult i64 %i.cf, %i.ch
  br i1 %i.ci, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cj = load ptr, ptr %i.cc, align 8, !tbaa !398
  %i.ck = add i64 %i.ch, %i.cd
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ck), !inline_history !4337
  %i.cl = load i64, ptr %i.ah, align 8, !tbaa !4244 ; 2 uses
  %i.cm = load i64, ptr %i.ak, align 8, !tbaa !4229
  %i.cn = sub i64 %i.cm, %i.cl
  %i.co = call i64 @llvm.umin.i64(i64 %i.ch, i64 %i.cn)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.026.i = phi i64 [ %i.cl, %bb.l ], [ %i.cd, %bb.k ] ; 3 uses
  %.025.i = phi i64 [ %i.co, %bb.l ], [ %i.ch, %bb.k ] ; 13 uses
  %i.cp = load ptr, ptr %3, align 8, !tbaa !4228  ; 2 uses
  %i.cq = ptrtoaddr ptr %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.026.i ; 7 uses
  %.not36.i = icmp eq i64 %.025.i, 0
  br i1 %.not36.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %bb.m
  %min.iters.check = icmp ult i64 %.025.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cs = add i64 %.026.i, %i.cq
  %i.ct = sub i64 %i.cg, %i.cs
  %diff.check = icmp ugt i64 %i.ct, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check117 = icmp ult i64 %.025.i, 32
  br i1 %min.iters.check117, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cu = and i64 %.025.i, 28
  %n.vec = and i64 %.025.i, -32                   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %index ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %wide.load = load <16 x i8>, ptr %i.cv, align 1, !tbaa !65
  %wide.load118 = load <16 x i8>, ptr %i.cw, align 1, !tbaa !65
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 %index ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store <16 x i8> %wide.load, ptr %i.cx, align 1, !tbaa !65
  store <16 x i8> %wide.load118, ptr %i.cy, align 1, !tbaa !65
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !5346

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !4205

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec119 = and i64 %.025.i, -4                 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index120 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next122, %vec.epilog.vector.body ] ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %index120
  %wide.load121 = load <4 x i8>, ptr %i.da, align 1, !tbaa !65
  %i.db = getelementptr inbounds nuw i8, ptr %i.cr, i64 %index120
  store <4 x i8> %wide.load121, ptr %i.db, align 1, !tbaa !65
  %index.next122 = add nuw i64 %index120, 4       ; 2 uses
  %i.dc = icmp eq i64 %index.next122, %n.vec119
  br i1 %i.dc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5347

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n123 = icmp eq i64 %.025.i, %n.vec119
  br i1 %cmp.n123, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader

end_hunk_2
