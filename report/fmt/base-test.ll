Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/base-test?download=true
inline.NumInlined: 14280
inline.NumDeleted: 4340
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN30base_test_format_to_array_Test8TestBodyEv:bb.a
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !43 ; 4 uses
  %.not.i.i307 = icmp eq ptr %i.lx, null
  br i1 %.not.i.i307, label %_ZN7testing15AssertionResultD2Ev.exit311, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !44 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 16 ; 2 uses
  %i.ma = icmp eq ptr %i.ly, %i.lz
  br i1 %i.ma, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i309, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i308

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i308: ; preds = %bb.eg
  %i.mb = load i64, ptr %i.lz, align 8, !tbaa !10
  %i.mc = add i64 %i.mb, 1
  call void @_ZdlPvm(ptr noundef %i.ly, i64 noundef %i.mc) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i309

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i309: ; preds = %bb.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i308
  call void @_ZdlPvm(ptr noundef nonnull %i.lx, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit311

_ZN7testing15AssertionResultD2Ev.exit311:         ; preds = %bb.ef, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i309
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  %i.md = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  store i32 2021161080, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  store i8 65, ptr %10, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i64 0, ptr %4, align 8, !tbaa !603
  %i.mf = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 4, ptr %i.mf, align 8, !tbaa !605
  %i.mg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.a, ptr %i.mg, align 8, !tbaa !19
  %i.mh = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i64 0, ptr %i.mh, align 8, !tbaa !11
  %i.mi = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 4, ptr %i.mi, align 8, !tbaa !16
  %i.mj = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @_ZN3fmt3v126detail15iterator_bufferIPccNS1_19fixed_buffer_traitsEE4growERNS1_6bufferIcEEm, ptr %i.mj, align 8, !tbaa !17
  %i.mk = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %i.a, ptr %i.mk, align 8, !tbaa !606
  call void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %i.mg, ptr nonnull @.str.177, i64 2, i64 8, ptr nonnull %10, ptr null)
  %i.ml = load i64, ptr %i.mh, align 8, !tbaa !11 ; 2 uses
  %i.mm = load i64, ptr %4, align 8, !tbaa !603   ; 2 uses
  %i.mn = load ptr, ptr %i.mg, align 8, !tbaa !19
  %i.mo = load ptr, ptr %i.mk, align 8, !tbaa !606 ; 3 uses
  %i.mp = icmp eq ptr %i.mn, %i.mo
  br i1 %i.mp, label %bb.eh, label %_ZN3fmt3v1212vformat_to_nIPcJETnNSt9enable_ifIXsr6detail18is_output_iteratorIT_cEE5valueEiE4typeELi0EEENS0_18format_to_n_resultIS4_EES4_mNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit316

bb.eh:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit311
  %i.mq = load i64, ptr %i.mf, align 8, !tbaa !605
  %spec.select.i.i.i.i315 = call i64 @llvm.usub.sat.i64(i64 %i.mq, i64 %i.mm)
  %i.mr = call noundef i64 @llvm.umin.i64(i64 %i.ml, i64 %spec.select.i.i.i.i315)
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.mr
  br label %_ZN3fmt3v1212vformat_to_nIPcJETnNSt9enable_ifIXsr6detail18is_output_iteratorIT_cEE5valueEiE4typeELi0EEENS0_18format_to_n_resultIS4_EES4_mNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit316

_ZN3fmt3v1212vformat_to_nIPcJETnNSt9enable_ifIXsr6detail18is_output_iteratorIT_cEE5valueEiE4typeELi0EEENS0_18format_to_n_resultIS4_EES4_mNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit316: ; preds = %_ZN7testing15AssertionResultD2Ev.exit311, %bb.eh
  %i.mt = phi ptr [ %i.mo, %_ZN7testing15AssertionResultD2Ev.exit311 ], [ %i.ms, %bb.eh ] ; 2 uses
  %i.mu = add i64 %i.mm, %i.ml
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.mv = icmp ugt i64 %i.mu, 4
  %i.mw = zext i1 %i.mv to i8
  store ptr %i.mt, ptr %13, align 8, !tbaa !52
  store i8 %i.mw, ptr %i.aj, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  %i.mx = ptrtoint ptr %i.mt to i64
  %i.my = sub i64 %i.mx, %i.al                    ; 2 uses
  store i64 %i.my, ptr %i.h, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28
  store i32 1, ptr %i.i, align 4, !tbaa !93
  %i.mz = icmp eq i64 %i.my, 1
  br i1 %i.mz, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %_ZN3fmt3v1212vformat_to_nIPcJETnNSt9enable_ifIXsr6detail18is_output_iteratorIT_cEE5valueEiE4typeELi0EEENS0_18format_to_n_resultIS4_EES4_mNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit316
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %46)
  br label %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit317

bb.ej:                                            ; preds = %_ZN3fmt3v1212vformat_to_nIPcJETnNSt9enable_ifIXsr6detail18is_output_iteratorIT_cEE5valueEiE4typeELi0EEENS0_18format_to_n_resultIS4_EES4_mNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit316
  call void @_ZN7testing8internal18CmpHelperEQFailureIliEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %46, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.207, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  br label %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit317

_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit317: ; preds = %bb.ei, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  %i.na = load i8, ptr %46, align 8, !tbaa !31, !range !41, !noundef !42
  %i.nb = trunc nuw i8 %i.na to i1
  br i1 %i.nb, label %bb.et, label %bb.ek

bb.ek:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit317
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %bb.el unwind label %bb.ep

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #28
  %i.nc = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !43 ; 2 uses
  %.not.i.i318 = icmp eq ptr %i.nd, null
  br i1 %.not.i.i318, label %_ZNK7testing15AssertionResult15failure_messageEv.exit319, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !44
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit319

_ZNK7testing15AssertionResult15failure_messageEv.exit319: ; preds = %bb.em, %bb.el
  %i.nf = phi ptr [ %i.ne, %bb.em ], [ @.str.146, %bb.el ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %48, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 727, ptr noundef %i.nf)
          to label %bb.en unwind label %bb.eq

bb.en:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit319
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %bb.eo unwind label %bb.er

bb.eo:                                            ; preds = %bb.en
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %48) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #28
  %i.ng = load ptr, ptr %47, align 8, !tbaa !47   ; 3 uses
  %.not.i.i320 = icmp eq ptr %i.ng, null
  br i1 %.not.i.i320, label %_ZN7testing7MessageD2Ev.exit322, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i321

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i321: ; preds = %bb.eo
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !20
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nj = load ptr, ptr %i.ni, align 8
  call void %i.nj(ptr noundef nonnull align 8 dereferenceable(128) %i.ng) #28, !inline_history !49
  br label %_ZN7testing7MessageD2Ev.exit322

_ZN7testing7MessageD2Ev.exit322:                  ; preds = %bb.eo, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i321
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #28
  br label %bb.et

bb.ep:                                            ; preds = %bb.ek
  %i.nk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit325

bb.eq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit319
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.er:                                            ; preds = %bb.en
  %i.nm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %48) #28
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %.pn120 = phi { ptr, i32 } [ %i.nm, %bb.er ], [ %i.nl, %bb.eq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #28
  %i.nn = load ptr, ptr %47, align 8, !tbaa !47   ; 3 uses
  %.not.i.i323 = icmp eq ptr %i.nn, null
  br i1 %.not.i.i323, label %_ZN7testing7MessageD2Ev.exit325, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i324

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i324: ; preds = %bb.es
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !20
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nq = load ptr, ptr %i.np, align 8
  call void %i.nq(ptr noundef nonnull align 8 dereferenceable(128) %i.nn) #28, !inline_history !49
  br label %_ZN7testing7MessageD2Ev.exit325

_ZN7testing7MessageD2Ev.exit325:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i324, %bb.es, %bb.ep
  %.pn120.pn = phi { ptr, i32 } [ %i.nk, %bb.ep ], [ %.pn120, %bb.es ], [ %.pn120, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i324 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %46) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #28
  br label %common.resume

bb.et:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit317, %_ZN7testing7MessageD2Ev.exit322
  %i.nr = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !43 ; 4 uses
  %.not.i.i326 = icmp eq ptr %i.ns, null
  br i1 %.not.i.i326, label %_ZN7testing15AssertionResultD2Ev.exit330, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !44 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ns, i64 16 ; 2 uses
  %i.nv = icmp eq ptr %i.nt, %i.nu
  br i1 %i.nv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i327

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i327: ; preds = %bb.eu
  %i.nw = load i64, ptr %i.nu, align 8, !tbaa !10
  %i.nx = add i64 %i.nw, 1
  call void @_ZdlPvm(ptr noundef %i.nt, i64 noundef %i.nx) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i328

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i328: ; preds = %bb.eu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i327
  call void @_ZdlPvm(ptr noundef nonnull %i.ns, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit330

_ZN7testing15AssertionResultD2Ev.exit330:         ; preds = %bb.et, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i328
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #28
  %i.ny = load i8, ptr %i.aj, align 8, !tbaa !622, !range !41, !noundef !42 ; 2 uses
  %i.nz = xor i8 %i.ny, 1
  store i8 %i.nz, ptr %49, align 8, !tbaa !31
  %i.oa = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 2 uses
  store ptr null, ptr %i.oa, align 8, !tbaa !608
  %.not = trunc nuw i8 %i.ny to i1
  br i1 %.not, label %bb.ev, label %_ZN7testing15AssertionResultD2Ev.exit347

bb.ev:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit330
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %50)
          to label %bb.ew unwind label %bb.fa

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %52, ptr noundef nonnull align 8 dereferenceable(16) %49, ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32)
          to label %bb.ex unwind label %bb.fb

bb.ex:                                            ; preds = %bb.ew
  %i.ob = load ptr, ptr %52, align 8, !tbaa !44
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %51, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 728, ptr noundef %i.ob)
          to label %bb.ey unwind label %bb.fc

bb.ey:                                            ; preds = %bb.ex
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %51, ptr noundef nonnull align 8 dereferenceable(8) %50)
          to label %bb.ez unwind label %bb.fd

bb.ez:                                            ; preds = %bb.ey
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %51) #28
  %i.oc = load ptr, ptr %52, align 8, !tbaa !44   ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 2 uses
  %i.oe = icmp eq ptr %i.oc, %i.od
  br i1 %i.oe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331: ; preds = %bb.ez
  %i.of = load i64, ptr %i.od, align 8, !tbaa !10
  %i.og = add i64 %i.of, 1
  call void @_ZdlPvm(ptr noundef %i.oc, i64 noundef %i.og) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333: ; preds = %bb.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #28
  %i.oh = load ptr, ptr %50, align 8, !tbaa !47   ; 3 uses
  %.not.i.i334 = icmp eq ptr %i.oh, null
  br i1 %.not.i.i334, label %bb.ff, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i335

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i335: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !20
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  %i.ok = load ptr, ptr %i.oj, align 8
  call void %i.ok(ptr noundef nonnull align 8 dereferenceable(128) %i.oh) #28, !inline_history !49
  br label %bb.ff

bb.fa:                                            ; preds = %bb.ev
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit342

bb.fb:                                            ; preds = %bb.ew
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339

bb.fc:                                            ; preds = %bb.ex
  %i.on = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.fd:                                            ; preds = %bb.ey
  %i.oo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %51) #28
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %.pn123 = phi { ptr, i32 } [ %i.oo, %bb.fd ], [ %i.on, %bb.fc ] ; 2 uses
  %i.op = load ptr, ptr %52, align 8, !tbaa !44   ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 2 uses
  %i.or = icmp eq ptr %i.op, %i.oq
  br i1 %i.or, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337: ; preds = %bb.fe
  %i.os = load i64, ptr %i.oq, align 8, !tbaa !10
  %i.ot = add i64 %i.os, 1
  call void @_ZdlPvm(ptr noundef %i.op, i64 noundef %i.ot) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339: ; preds = %bb.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337, %bb.fb
  %.pn123.pn = phi { ptr, i32 } [ %i.om, %bb.fb ], [ %.pn123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337 ], [ %.pn123, %bb.fe ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #28
  %i.ou = load ptr, ptr %50, align 8, !tbaa !47   ; 3 uses
  %.not.i.i340 = icmp eq ptr %i.ou, null
  br i1 %.not.i.i340, label %_ZN7testing7MessageD2Ev.exit342, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i341

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i341: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !20
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.ox = load ptr, ptr %i.ow, align 8
  call void %i.ox(ptr noundef nonnull align 8 dereferenceable(128) %i.ou) #28, !inline_history !49
  br label %_ZN7testing7MessageD2Ev.exit342

_ZN7testing7MessageD2Ev.exit342:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i341, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339, %bb.fa
  %.pn123.pn.pn = phi { ptr, i32 } [ %i.ol, %bb.fa ], [ %.pn123.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339 ], [ %.pn123.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i341 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %49) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #28
  br label %common.resume

bb.ff:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i335, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #28
  %.pr598 = load ptr, ptr %i.oa, align 8, !tbaa !43 ; 4 uses
  %.not.i.i343 = icmp eq ptr %.pr598, null
  br i1 %.not.i.i343, label %_ZN7testing15AssertionResultD2Ev.exit347, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.oy = load ptr, ptr %.pr598, align 8, !tbaa !44 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.pr598, i64 16 ; 2 uses
  %i.pa = icmp eq ptr %i.oy, %i.oz
  br i1 %i.pa, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i345, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i344

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i344: ; preds = %bb.fg
  %i.pb = load i64, ptr %i.oz, align 8, !tbaa !10
  %i.pc = add i64 %i.pb, 1
  call void @_ZdlPvm(ptr noundef %i.oy, i64 noundef %i.pc) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i345

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i345: ; preds = %bb.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i344
  call void @_ZdlPvm(ptr noundef nonnull %.pr598, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit347

_ZN7testing15AssertionResultD2Ev.exit347:         ; preds = %_ZN7testing15AssertionResultD2Ev.exit330, %bb.ff, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i345
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #28
  store ptr %i.md, ptr %i.j, align 8, !tbaa !52
  %i.pd = load ptr, ptr %13, align 8, !tbaa !52, !noalias !624
  %i.pe = icmp eq ptr %i.pd, %i.md
  br i1 %i.pe, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit347
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %53)
  br label %_ZN7testing8internal8EqHelper7CompareIPcS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit348

bb.fi:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit347
  call void @_ZN7testing8internal18CmpHelperEQFailureIPcS2_EENS_15AssertionResultEPKcS5_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %53, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.208, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_ZN7testing8internal8EqHelper7CompareIPcS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit348

_ZN7testing8internal8EqHelper7CompareIPcS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit348: ; preds = %bb.fh, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28
  %i.pf = load i8, ptr %53, align 8, !tbaa !31, !range !41, !noundef !42
  %i.pg = trunc nuw i8 %i.pf to i1
  br i1 %i.pg, label %bb.fs, label %bb.fj

bb.fj:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIPcS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit348
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %54)
          to label %bb.fk unwind label %bb.fo

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #28
  %i.ph = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !43 ; 2 uses
  %.not.i.i349 = icmp eq ptr %i.pi, null
  br i1 %.not.i.i349, label %_ZNK7testing15AssertionResult15failure_messageEv.exit350, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !44
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit350

_ZNK7testing15AssertionResult15failure_messageEv.exit350: ; preds = %bb.fl, %bb.fk
  %i.pk = phi ptr [ %i.pj, %bb.fl ], [ @.str.146, %bb.fk ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %55, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 729, ptr noundef %i.pk)
          to label %bb.fm unwind label %bb.fp

bb.fm:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit350
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef nonnull align 8 dereferenceable(8) %54)
          to label %bb.fn unwind label %bb.fq

bb.fn:                                            ; preds = %bb.fm
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %55) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #28
  %i.pl = load ptr, ptr %54, align 8, !tbaa !47   ; 3 uses
  %.not.i.i351 = icmp eq ptr %i.pl, null
  br i1 %.not.i.i351, label %_ZN7testing7MessageD2Ev.exit353, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i352

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i352: ; preds = %bb.fn
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !20
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  %i.po = load ptr, ptr %i.pn, align 8
  call void %i.po(ptr noundef nonnull align 8 dereferenceable(128) %i.pl) #28, !inline_history !49
  br label %_ZN7testing7MessageD2Ev.exit353

_ZN7testing7MessageD2Ev.exit353:                  ; preds = %bb.fn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i352
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #28
  br label %bb.fs

bb.fo:                                            ; preds = %bb.fj
  %i.pp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit356

bb.fp:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit350
  %i.pq = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZN30base_test_format_to_array_Test8TestBodyEv:bb.a
  %i.qv = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !43 ; 4 uses
  %.not.i.i376 = icmp eq ptr %i.qw, null
  br i1 %.not.i.i376, label %_ZN7testing15AssertionResultD2Ev.exit380, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !44 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 16 ; 2 uses
  %i.qz = icmp eq ptr %i.qx, %i.qy
  br i1 %i.qz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i378, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i377

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i377: ; preds = %bb.gg
  %i.ra = load i64, ptr %i.qy, align 8, !tbaa !10
  %i.rb = add i64 %i.ra, 1
  call void @_ZdlPvm(ptr noundef %i.qx, i64 noundef %i.rb) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i378

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i378: ; preds = %bb.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i377
  call void @_ZdlPvm(ptr noundef nonnull %i.qw, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit380

_ZN7testing15AssertionResultD2Ev.exit380:         ; preds = %bb.gf, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i378
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  store i8 66, ptr %9, align 16, !tbaa !10
  %i.rc = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 67, ptr %i.rc, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store i64 0, ptr %3, align 8, !tbaa !603
  %i.rd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 4, ptr %i.rd, align 8, !tbaa !605
  %i.re = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %i.re, align 8, !tbaa !19
  %i.rf = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i64 0, ptr %i.rf, align 8, !tbaa !11
  %i.rg = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 4, ptr %i.rg, align 8, !tbaa !16
  %i.rh = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr @_ZN3fmt3v126detail15iterator_bufferIPccNS1_19fixed_buffer_traitsEE4growERNS1_6bufferIcEEm, ptr %i.rh, align 8, !tbaa !17
  %i.ri = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr %i.a, ptr %i.ri, align 8, !tbaa !606
  call void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %i.re, ptr nonnull @.str.211, i64 5, i64 136, ptr nonnull %9, ptr null)
  %i.rj = load i64, ptr %i.rf, align 8, !tbaa !11 ; 2 uses
  %i.rk = load i64, ptr %3, align 8, !tbaa !603   ; 2 uses
  %i.rl = load ptr, ptr %i.re, align 8, !tbaa !19
  %i.rm = load ptr, ptr %i.ri, align 8, !tbaa !606 ; 3 uses
  %i.rn = icmp eq ptr %i.rl, %i.rm
  br i1 %i.rn, label %bb.gh, label %_ZN3fmt3v1212vformat_to_nIPcJETnNSt9enable_ifIXsr6detail18is_output_iteratorIT_cEE5valueEiE4typeELi0EEENS0_18format_to_n_resultIS4_EES4_mNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit385

bb.gh:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit380
  %i.ro = load i64, ptr %i.rd, align 8, !tbaa !605
  %spec.select.i.i.i.i384 = call i64 @llvm.usub.sat.i64(i64 %i.ro, i64 %i.rk)
  %i.rp = call noundef i64 @llvm.umin.i64(i64 %i.rj, i64 %spec.select.i.i.i.i384)
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rm, i64 %i.rp
  br label %_ZN3fmt3v1212vformat_to_nIPcJETnNSt9enable_ifIXsr6detail18is_output_iteratorIT_cEE5valueEiE4typeELi0EEENS0_18format_to_n_resultIS4_EES4_mNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit385

_ZN3fmt3v1212vformat_to_nIPcJETnNSt9enable_ifIXsr6detail18is_output_iteratorIT_cEE5valueEiE4typeELi0EEENS0_18format_to_n_resultIS4_EES4_mNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit385: ; preds = %_ZN7testing15AssertionResultD2Ev.exit380, %bb.gh
  %i.rr = phi ptr [ %i.rm, %_ZN7testing15AssertionResultD2Ev.exit380 ], [ %i.rq, %bb.gh ] ; 2 uses
  %i.rs = add i64 %i.rk, %i.rj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.rt = icmp ugt i64 %i.rs, 4
  %i.ru = zext i1 %i.rt to i8
  store ptr %i.rr, ptr %13, align 8, !tbaa !52
  store i8 %i.ru, ptr %i.aj, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #28
  %i.rv = ptrtoint ptr %i.rr to i64
  %i.rw = sub i64 %i.rv, %i.al                    ; 2 uses
  store i64 %i.rw, ptr %i.k, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #28
  store i32 3, ptr %i.l, align 4, !tbaa !93
  %i.rx = icmp eq i64 %i.rw, 3
  br i1 %i.rx, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %_ZN3fmt3v1212vformat_to_nIPcJETnNSt9enable_ifIXsr6detail18is_output_iteratorIT_cEE5valueEiE4typeELi0EEENS0_18format_to_n_resultIS4_EES4_mNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit385
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %60)
  br label %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit386

bb.gj:                                            ; preds = %_ZN3fmt3v1212vformat_to_nIPcJETnNSt9enable_ifIXsr6detail18is_output_iteratorIT_cEE5valueEiE4typeELi0EEENS0_18format_to_n_resultIS4_EES4_mNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit385
  call void @_ZN7testing8internal18CmpHelperEQFailureIliEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %60, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.212, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
  br label %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit386

_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit386: ; preds = %bb.gi, %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #28
  %i.ry = load i8, ptr %60, align 8, !tbaa !31, !range !41, !noundef !42
  %i.rz = trunc nuw i8 %i.ry to i1
  br i1 %i.rz, label %bb.gt, label %bb.gk

bb.gk:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit386
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %61)
          to label %bb.gl unwind label %bb.gp

bb.gl:                                            ; preds = %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #28
  %i.sa = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !43 ; 2 uses
  %.not.i.i387 = icmp eq ptr %i.sb, null
  br i1 %.not.i.i387, label %_ZNK7testing15AssertionResult15failure_messageEv.exit388, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !44
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit388

_ZNK7testing15AssertionResult15failure_messageEv.exit388: ; preds = %bb.gm, %bb.gl
  %i.sd = phi ptr [ %i.sc, %bb.gm ], [ @.str.146, %bb.gl ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %62, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 733, ptr noundef %i.sd)
          to label %bb.gn unwind label %bb.gq

bb.gn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit388
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef nonnull align 8 dereferenceable(8) %61)
          to label %bb.go unwind label %bb.gr

bb.go:                                            ; preds = %bb.gn
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %62) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #28
  %i.se = load ptr, ptr %61, align 8, !tbaa !47   ; 3 uses
  %.not.i.i389 = icmp eq ptr %i.se, null
  br i1 %.not.i.i389, label %_ZN7testing7MessageD2Ev.exit391, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i390

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i390: ; preds = %bb.go
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !20
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  %i.sh = load ptr, ptr %i.sg, align 8
  call void %i.sh(ptr noundef nonnull align 8 dereferenceable(128) %i.se) #28, !inline_history !49
  br label %_ZN7testing7MessageD2Ev.exit391

_ZN7testing7MessageD2Ev.exit391:                  ; preds = %bb.go, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i390
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #28
  br label %bb.gt

bb.gp:                                            ; preds = %bb.gk
  %i.si = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit394

bb.gq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit388
  %i.sj = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

bb.gr:                                            ; preds = %bb.gn
  %i.sk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %62) #28
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %.pn133 = phi { ptr, i32 } [ %i.sk, %bb.gr ], [ %i.sj, %bb.gq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #28
  %i.sl = load ptr, ptr %61, align 8, !tbaa !47   ; 3 uses
  %.not.i.i392 = icmp eq ptr %i.sl, null
  br i1 %.not.i.i392, label %_ZN7testing7MessageD2Ev.exit394, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i393

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i393: ; preds = %bb.gs
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !20
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  %i.so = load ptr, ptr %i.sn, align 8
  call void %i.so(ptr noundef nonnull align 8 dereferenceable(128) %i.sl) #28, !inline_history !49
  br label %_ZN7testing7MessageD2Ev.exit394

_ZN7testing7MessageD2Ev.exit394:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i393, %bb.gs, %bb.gp
  %.pn133.pn = phi { ptr, i32 } [ %i.si, %bb.gp ], [ %.pn133, %bb.gs ], [ %.pn133, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i393 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %60) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #28
  br label %common.resume

bb.gt:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit386, %_ZN7testing7MessageD2Ev.exit391
  %i.sp = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !43 ; 4 uses
  %.not.i.i395 = icmp eq ptr %i.sq, null
  br i1 %.not.i.i395, label %_ZN7testing15AssertionResultD2Ev.exit399, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !44 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sq, i64 16 ; 2 uses
  %i.st = icmp eq ptr %i.sr, %i.ss
  br i1 %i.st, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i397, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i396

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i396: ; preds = %bb.gu
  %i.su = load i64, ptr %i.ss, align 8, !tbaa !10
  %i.sv = add i64 %i.su, 1
  call void @_ZdlPvm(ptr noundef %i.sr, i64 noundef %i.sv) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i397

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i397: ; preds = %bb.gu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i396
  call void @_ZdlPvm(ptr noundef nonnull %i.sq, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit399

_ZN7testing15AssertionResultD2Ev.exit399:         ; preds = %bb.gt, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i397
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #28
  %i.sw = load i8, ptr %i.aj, align 8, !tbaa !622, !range !41, !noundef !42 ; 2 uses
  %i.sx = xor i8 %i.sw, 1
  store i8 %i.sx, ptr %63, align 8, !tbaa !31
  %i.sy = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 2 uses
  store ptr null, ptr %i.sy, align 8, !tbaa !608
  %.not611 = trunc nuw i8 %i.sw to i1
  br i1 %.not611, label %bb.gv, label %_ZN7testing15AssertionResultD2Ev.exit416

bb.gv:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit399
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %64)
          to label %bb.gw unwind label %bb.ha

bb.gw:                                            ; preds = %bb.gv
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %66, ptr noundef nonnull align 8 dereferenceable(16) %63, ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32)
          to label %bb.gx unwind label %bb.hb

bb.gx:                                            ; preds = %bb.gw
  %i.sz = load ptr, ptr %66, align 8, !tbaa !44
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %65, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 734, ptr noundef %i.sz)
          to label %bb.gy unwind label %bb.hc

bb.gy:                                            ; preds = %bb.gx
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef nonnull align 8 dereferenceable(8) %64)
          to label %bb.gz unwind label %bb.hd

bb.gz:                                            ; preds = %bb.gy
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %65) #28
  %i.ta = load ptr, ptr %66, align 8, !tbaa !44   ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 2 uses
  %i.tc = icmp eq ptr %i.ta, %i.tb
  br i1 %i.tc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400: ; preds = %bb.gz
  %i.td = load i64, ptr %i.tb, align 8, !tbaa !10
  %i.te = add i64 %i.td, 1
  call void @_ZdlPvm(ptr noundef %i.ta, i64 noundef %i.te) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402: ; preds = %bb.gz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #28
  %i.tf = load ptr, ptr %64, align 8, !tbaa !47   ; 3 uses
  %.not.i.i403 = icmp eq ptr %i.tf, null
  br i1 %.not.i.i403, label %bb.hf, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i404

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i404: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !20
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.ti = load ptr, ptr %i.th, align 8
  call void %i.ti(ptr noundef nonnull align 8 dereferenceable(128) %i.tf) #28, !inline_history !49
  br label %bb.hf

bb.ha:                                            ; preds = %bb.gv
  %i.tj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit411

bb.hb:                                            ; preds = %bb.gw
  %i.tk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408

bb.hc:                                            ; preds = %bb.gx
  %i.tl = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

bb.hd:                                            ; preds = %bb.gy
  %i.tm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %65) #28
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc
  %.pn136 = phi { ptr, i32 } [ %i.tm, %bb.hd ], [ %i.tl, %bb.hc ] ; 2 uses
  %i.tn = load ptr, ptr %66, align 8, !tbaa !44   ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 2 uses
  %i.tp = icmp eq ptr %i.tn, %i.to
  br i1 %i.tp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406: ; preds = %bb.he
  %i.tq = load i64, ptr %i.to, align 8, !tbaa !10
  %i.tr = add i64 %i.tq, 1
  call void @_ZdlPvm(ptr noundef %i.tn, i64 noundef %i.tr) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408: ; preds = %bb.he, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406, %bb.hb
  %.pn136.pn = phi { ptr, i32 } [ %i.tk, %bb.hb ], [ %.pn136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406 ], [ %.pn136, %bb.he ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #28
  %i.ts = load ptr, ptr %64, align 8, !tbaa !47   ; 3 uses
  %.not.i.i409 = icmp eq ptr %i.ts, null
  br i1 %.not.i.i409, label %_ZN7testing7MessageD2Ev.exit411, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i410

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i410: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !20
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  %i.tv = load ptr, ptr %i.tu, align 8
  call void %i.tv(ptr noundef nonnull align 8 dereferenceable(128) %i.ts) #28, !inline_history !49
  br label %_ZN7testing7MessageD2Ev.exit411

_ZN7testing7MessageD2Ev.exit411:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i410, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408, %bb.ha
  %.pn136.pn.pn = phi { ptr, i32 } [ %i.tj, %bb.ha ], [ %.pn136.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408 ], [ %.pn136.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i410 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %63) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #28
  br label %common.resume

bb.hf:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i404, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #28
  %.pr601 = load ptr, ptr %i.sy, align 8, !tbaa !43 ; 4 uses
  %.not.i.i412 = icmp eq ptr %.pr601, null
  br i1 %.not.i.i412, label %_ZN7testing15AssertionResultD2Ev.exit416, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.tw = load ptr, ptr %.pr601, align 8, !tbaa !44 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %.pr601, i64 16 ; 2 uses
  %i.ty = icmp eq ptr %i.tw, %i.tx
  br i1 %i.ty, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i414, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i413

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i413: ; preds = %bb.hg
  %i.tz = load i64, ptr %i.tx, align 8, !tbaa !10
  %i.ua = add i64 %i.tz, 1
  call void @_ZdlPvm(ptr noundef %i.tw, i64 noundef %i.ua) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i414

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i414: ; preds = %bb.hg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i413
  call void @_ZdlPvm(ptr noundef nonnull %.pr601, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit416

_ZN7testing15AssertionResultD2Ev.exit416:         ; preds = %_ZN7testing15AssertionResultD2Ev.exit399, %bb.hf, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i414
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #28
  store ptr %i.me, ptr %i.m, align 8, !tbaa !52
  %i.ub = load ptr, ptr %13, align 8, !tbaa !52, !noalias !629
  %i.uc = icmp eq ptr %i.ub, %i.me
  br i1 %i.uc, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit416
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %67)
  br label %_ZN7testing8internal8EqHelper7CompareIPcS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit417

bb.hi:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit416
  call void @_ZN7testing8internal18CmpHelperEQFailureIPcS2_EENS_15AssertionResultEPKcS5_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %67, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.213, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  br label %_ZN7testing8internal8EqHelper7CompareIPcS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit417

_ZN7testing8internal8EqHelper7CompareIPcS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit417: ; preds = %bb.hh, %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #28
  %i.ud = load i8, ptr %67, align 8, !tbaa !31, !range !41, !noundef !42
  %i.ue = trunc nuw i8 %i.ud to i1
  br i1 %i.ue, label %bb.hs, label %bb.hj

bb.hj:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIPcS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit417
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %68)
          to label %bb.hk unwind label %bb.ho

bb.hk:                                            ; preds = %bb.hj
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #28
  %i.uf = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !43 ; 2 uses
  %.not.i.i418 = icmp eq ptr %i.ug, null
  br i1 %.not.i.i418, label %_ZNK7testing15AssertionResult15failure_messageEv.exit419, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !44
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit419

_ZNK7testing15AssertionResult15failure_messageEv.exit419: ; preds = %bb.hl, %bb.hk
  %i.ui = phi ptr [ %i.uh, %bb.hl ], [ @.str.146, %bb.hk ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %69, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 735, ptr noundef %i.ui)
          to label %bb.hm unwind label %bb.hp

bb.hm:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit419
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %69, ptr noundef nonnull align 8 dereferenceable(8) %68)
          to label %bb.hn unwind label %bb.hq

bb.hn:                                            ; preds = %bb.hm
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %69) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #28
  %i.uj = load ptr, ptr %68, align 8, !tbaa !47   ; 3 uses
  %.not.i.i420 = icmp eq ptr %i.uj, null
  br i1 %.not.i.i420, label %_ZN7testing7MessageD2Ev.exit422, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i421

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i421: ; preds = %bb.hn
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !20
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 8
  %i.um = load ptr, ptr %i.ul, align 8
  call void %i.um(ptr noundef nonnull align 8 dereferenceable(128) %i.uj) #28, !inline_history !49
  br label %_ZN7testing7MessageD2Ev.exit422

_ZN7testing7MessageD2Ev.exit422:                  ; preds = %bb.hn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i421
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #28
  br label %bb.hs

bb.ho:                                            ; preds = %bb.hj
  %i.un = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit425

bb.hp:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit419
  %i.uo = landingpad { ptr, i32 }
          cleanup
end_hunk_1
