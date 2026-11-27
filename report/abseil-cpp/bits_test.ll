Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/bits_test?download=true
inline.NumInlined: 3139
inline.NumDeleted: 629
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4absl12lts_2026052612_GLOBAL__N_130IntegralPowersOfTwo_Floor_Test8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIjiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !30
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(128) %i.gh) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit215

_ZN7testing7MessageD2Ev.exit215:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214, %bb.ch, %bb.ce
  %.pn80.pn = phi { ptr, i32 } [ %i.ge, %bb.ce ], [ %.pn80, %bb.ch ], [ %.pn80, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  br label %bb.hr

bb.ci:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIjiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit207, %_ZN7testing7MessageD2Ev.exit212
  %i.gl = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !53 ; 4 uses
  %.not.i.i216 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i216, label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !20 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 16 ; 2 uses
  %i.gp = icmp eq ptr %i.gn, %i.go
  br i1 %i.gp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i217: ; preds = %bb.cj
  %i.gq = load i64, ptr %i.go, align 8, !tbaa !21
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gr) #25
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i218

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i218: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i217
  call void @_ZdlPvm(ptr noundef nonnull %i.gm, i64 noundef 32) #25
  br label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.ci, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i218
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %25)
  %i.gs = load i8, ptr %25, align 8, !tbaa !50, !range !51, !noundef !52
  %i.gt = trunc nuw i8 %i.gs to i1
  br i1 %i.gt, label %bb.ct, label %bb.ck

bb.ck:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.cl unwind label %bb.cp

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21
  %i.gu = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !53 ; 2 uses
  %.not.i.i221 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i221, label %_ZNK7testing15AssertionResult15failure_messageEv.exit222, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !20
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit222

_ZNK7testing15AssertionResult15failure_messageEv.exit222: ; preds = %bb.cm, %bb.cl
  %i.gx = phi ptr [ %i.gw, %bb.cm ], [ @.str, %bb.cl ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %27, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 570, ptr noundef %i.gx)
          to label %bb.cn unwind label %bb.cq

bb.cn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit222
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.co unwind label %bb.cr

bb.co:                                            ; preds = %bb.cn
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  %i.gy = load ptr, ptr %26, align 8, !tbaa !55   ; 3 uses
  %.not.i.i223 = icmp eq ptr %i.gy, null
  br i1 %.not.i.i223, label %_ZN7testing7MessageD2Ev.exit225, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i224

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i224: ; preds = %bb.co
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !30
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(128) %i.gy) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit225

_ZN7testing7MessageD2Ev.exit225:                  ; preds = %bb.co, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i224
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  br label %bb.ct

bb.cp:                                            ; preds = %bb.ck
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit228

bb.cq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit222
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cn
  %i.he = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #21
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.pn83 = phi { ptr, i32 } [ %i.he, %bb.cr ], [ %i.hd, %bb.cq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  %i.hf = load ptr, ptr %26, align 8, !tbaa !55   ; 3 uses
  %.not.i.i226 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i226, label %_ZN7testing7MessageD2Ev.exit228, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227: ; preds = %bb.cs
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !30
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(128) %i.hf) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit228

_ZN7testing7MessageD2Ev.exit228:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227, %bb.cs, %bb.cp
  %.pn83.pn = phi { ptr, i32 } [ %i.hc, %bb.cp ], [ %.pn83, %bb.cs ], [ %.pn83, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %25) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  br label %bb.hr

bb.ct:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit225
  %i.hj = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !53 ; 4 uses
  %.not.i.i229 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i229, label %_ZN7testing15AssertionResultD2Ev.exit233, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !20 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 16 ; 2 uses
  %i.hn = icmp eq ptr %i.hl, %i.hm
  br i1 %i.hn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i230: ; preds = %bb.cu
  %i.ho = load i64, ptr %i.hm, align 8, !tbaa !21
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.hp) #25
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i230
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef 32) #25
  br label %_ZN7testing15AssertionResultD2Ev.exit233

_ZN7testing15AssertionResultD2Ev.exit233:         ; preds = %bb.ct, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  %i.hq = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 1, ptr %i.a, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %28)
  %i.hs = load i8, ptr %28, align 8, !tbaa !50, !range !51, !noundef !52
  %i.ht = trunc nuw i8 %i.hs to i1
  br i1 %i.ht, label %bb.da, label %bb.cv

bb.cv:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit233
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.cw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #21
  %i.hu = load ptr, ptr %i.hq, align 8, !tbaa !53 ; 2 uses
  %.not.i.i234.peel = icmp eq ptr %i.hu, null
  br i1 %.not.i.i234.peel, label %_ZNK7testing15AssertionResult15failure_messageEv.exit235.peel, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !20
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit235.peel

_ZNK7testing15AssertionResult15failure_messageEv.exit235.peel: ; preds = %bb.cx, %bb.cw
  %i.hw = phi ptr [ %i.hv, %bb.cx ], [ @.str, %bb.cw ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %30, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 574, ptr noundef %i.hw)
          to label %bb.cy unwind label %.loopexit.split-lp354.loopexit.split-lp.loopexit.split-lp

bb.cy:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit235.peel
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.cz unwind label %.loopexit.split-lp359.loopexit.split-lp.loopexit.split-lp

bb.cz:                                            ; preds = %bb.cy
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  %i.hx = load ptr, ptr %29, align 8, !tbaa !55   ; 3 uses
  %.not.i.i236.peel = icmp eq ptr %i.hx, null
  br i1 %.not.i.i236.peel, label %_ZN7testing7MessageD2Ev.exit238.peel, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i237.peel

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i237.peel: ; preds = %bb.cz
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !30
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8
  call void %i.ia(ptr noundef nonnull align 8 dereferenceable(128) %i.hx) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit238.peel

_ZN7testing7MessageD2Ev.exit238.peel:             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i237.peel, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  br label %bb.da

bb.da:                                            ; preds = %_ZN7testing7MessageD2Ev.exit238.peel, %_ZN7testing15AssertionResultD2Ev.exit233
  %i.ib = load ptr, ptr %i.hq, align 8, !tbaa !53 ; 4 uses
  %.not.i.i242.peel = icmp eq ptr %i.ib, null
  br i1 %.not.i.i242.peel, label %_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.peel.next, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !20 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 16 ; 2 uses
  %i.ie = icmp eq ptr %i.ic, %i.id
  br i1 %i.ie, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i244.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i243.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i243.peel: ; preds = %bb.db
  %i.if = load i64, ptr %i.id, align 8, !tbaa !21
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.ig) #25
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i244.peel

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i244.peel: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i243.peel
  call void @_ZdlPvm(ptr noundef nonnull %i.ib, i64 noundef 32) #25
  br label %_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.peel.next

_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.peel.next: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i244.peel, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

.preheader347:                                    ; preds = %bb.eg
  %i.ih = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i16 1, ptr %i.c, align 2, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #21
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %34)
  %i.ij = load i8, ptr %34, align 8, !tbaa !50, !range !51, !noundef !52
  %i.ik = trunc nuw i8 %i.ij to i1
  br i1 %i.ik, label %bb.dh, label %bb.dc

bb.dc:                                            ; preds = %.preheader347
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.dd unwind label %.loopexit.split-lp381.loopexit.split-lp.loopexit.split-lp

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #21
  %i.il = load ptr, ptr %i.ih, align 8, !tbaa !53 ; 2 uses
  %.not.i.i263.peel = icmp eq ptr %i.il, null
  br i1 %.not.i.i263.peel, label %_ZNK7testing15AssertionResult15failure_messageEv.exit264.peel, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !20
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit264.peel

_ZNK7testing15AssertionResult15failure_messageEv.exit264.peel: ; preds = %bb.de, %bb.dd
  %i.in = phi ptr [ %i.im, %bb.de ], [ @.str, %bb.dd ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %36, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 582, ptr noundef %i.in)
          to label %bb.df unwind label %.loopexit.split-lp386.loopexit.split-lp.loopexit.split-lp

bb.df:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit264.peel
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.dg unwind label %.loopexit.split-lp391.loopexit.split-lp.loopexit.split-lp

bb.dg:                                            ; preds = %bb.df
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21
  %i.io = load ptr, ptr %35, align 8, !tbaa !55   ; 3 uses
  %.not.i.i265.peel = icmp eq ptr %i.io, null
  br i1 %.not.i.i265.peel, label %_ZN7testing7MessageD2Ev.exit267.peel, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i266.peel

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i266.peel: ; preds = %bb.dg
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !30
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8
  call void %i.ir(ptr noundef nonnull align 8 dereferenceable(128) %i.io) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit267.peel

_ZN7testing7MessageD2Ev.exit267.peel:             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i266.peel, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21
  br label %bb.dh

bb.dh:                                            ; preds = %_ZN7testing7MessageD2Ev.exit267.peel, %.preheader347
  %i.is = load ptr, ptr %i.ih, align 8, !tbaa !53 ; 4 uses
  %.not.i.i271.peel = icmp eq ptr %i.is, null
  br i1 %.not.i.i271.peel, label %_ZN7testing8internal8EqHelper7CompareIttTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.peel.next, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !20 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 16 ; 2 uses
  %i.iv = icmp eq ptr %i.it, %i.iu
  br i1 %i.iv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i273.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i272.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i272.peel: ; preds = %bb.di
  %i.iw = load i64, ptr %i.iu, align 8, !tbaa !21
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.ix) #25
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i273.peel

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i273.peel: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i272.peel
  call void @_ZdlPvm(ptr noundef nonnull %i.is, i64 noundef 32) #25
  br label %_ZN7testing8internal8EqHelper7CompareIttTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.peel.next

_ZN7testing8internal8EqHelper7CompareIttTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.peel.next: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i273.peel, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %_ZN7testing8internal8EqHelper7CompareIttTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.peel.next, %bb.eg
  %.019348 = phi i32 [ 1, %_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.peel.next ], [ %i.kx, %bb.eg ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.iy = shl nuw nsw i32 1, %.019348
  %i.iz = trunc nuw i32 %i.iy to i8
  store i8 %i.iz, ptr %i.a, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %28)
  %i.ja = load i8, ptr %28, align 8, !tbaa !50, !range !51, !noundef !52
  %i.jb = trunc nuw i8 %i.ja to i1
  br i1 %i.jb, label %bb.dp, label %bb.dj

bb.dj:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.dk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #21
  %i.jc = load ptr, ptr %i.hq, align 8, !tbaa !53 ; 2 uses
  %.not.i.i234 = icmp eq ptr %i.jc, null
  br i1 %.not.i.i234, label %_ZNK7testing15AssertionResult15failure_messageEv.exit235, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !20
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit235

_ZNK7testing15AssertionResult15failure_messageEv.exit235: ; preds = %bb.dl, %bb.dk
  %i.je = phi ptr [ %i.jd, %bb.dl ], [ @.str, %bb.dk ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %30, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 574, ptr noundef %i.je)
          to label %bb.dm unwind label %.loopexit.split-lp354.loopexit.split-lp.loopexit.split-lp

bb.dm:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit235
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.dn unwind label %.loopexit.split-lp359.loopexit.split-lp.loopexit.split-lp

bb.dn:                                            ; preds = %bb.dm
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  %i.jf = load ptr, ptr %29, align 8, !tbaa !55   ; 3 uses
  %.not.i.i236 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i236, label %_ZN7testing7MessageD2Ev.exit238, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i237

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i237: ; preds = %bb.dn
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !30
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(128) %i.jf) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit238

_ZN7testing7MessageD2Ev.exit238:                  ; preds = %bb.dn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i237
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  br label %bb.dp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dj, %bb.cv
  %lpad.loopexit.split-lp683 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit241

.loopexit.split-lp354.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit235, %_ZNK7testing15AssertionResult15failure_messageEv.exit235.peel
  %lpad.loopexit.split-lp686 = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

.loopexit.split-lp359.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dm, %bb.cy
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #21
  br label %bb.do

bb.do:                                            ; preds = %.loopexit.split-lp354.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp359.loopexit.split-lp.loopexit.split-lp
  %.pn109 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp359.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp686, %.loopexit.split-lp354.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  %i.jj = load ptr, ptr %29, align 8, !tbaa !55   ; 3 uses
  %.not.i.i239 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i239, label %_ZN7testing7MessageD2Ev.exit241, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i240

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i240: ; preds = %bb.do
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !30
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jm = load ptr, ptr %i.jl, align 8
  call void %i.jm(ptr noundef nonnull align 8 dereferenceable(128) %i.jj) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit241

_ZN7testing7MessageD2Ev.exit241:                  ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i240, %bb.do
  %.pn109.pn = phi { ptr, i32 } [ %.pn109, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i240 ], [ %.pn109, %bb.do ], [ %lpad.loopexit.split-lp683, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %28) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  br label %bb.eh

bb.dp:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit238
  %i.jn = load ptr, ptr %i.hq, align 8, !tbaa !53 ; 4 uses
  %.not.i.i242 = icmp eq ptr %i.jn, null
  br i1 %.not.i.i242, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !20 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i243: ; preds = %bb.dq
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !21
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #25
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i244

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i244: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i243
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef 32) #25
  br label %bb.dr

bb.dr:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i244, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.jt = load i8, ptr %i.a, align 1, !tbaa !21   ; 2 uses
  %i.ju = add i8 %i.jt, 1                         ; 2 uses
  %i.jv = icmp eq i8 %i.ju, 0
  br i1 %i.jv, label %_ZN4absl12lts_202605269bit_floorIhEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueES3_E4typeES3_.exit, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.jw = zext i8 %i.ju to i16
  %i.jx = call range(i16 8, 17) i16 @llvm.ctlz.i16(i16 %i.jw, i1 true)
  %narrow.i.i247 = sub nuw nsw i16 16, %i.jx
  %i.jy = zext nneg i16 %narrow.i.i247 to i32
  %i.jz = add nsw i32 %i.jy, -1
  %i.ka = shl nuw nsw i32 1, %i.jz
  %i.kb = trunc nuw i32 %i.ka to i8
  br label %_ZN4absl12lts_202605269bit_floorIhEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueES3_E4typeES3_.exit

_ZN4absl12lts_202605269bit_floorIhEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueES3_E4typeES3_.exit: ; preds = %bb.dr, %bb.ds
  %i.kc = phi i8 [ %i.kb, %bb.ds ], [ 0, %bb.dr ] ; 2 uses
  store i8 %i.kc, ptr %i.b, align 1, !tbaa !21
  %i.kd = icmp eq i8 %i.kc, %i.jt
  br i1 %i.kd, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %_ZN4absl12lts_202605269bit_floorIhEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueES3_E4typeES3_.exit
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %31)
  br label %_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit248

bb.du:                                            ; preds = %_ZN4absl12lts_202605269bit_floorIhEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueES3_E4typeES3_.exit
  call void @_ZN7testing8internal18CmpHelperEQFailureIhhEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %31, ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.238, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  br label %_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit248

_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit248: ; preds = %bb.dt, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.ke = load i8, ptr %31, align 8, !tbaa !50, !range !51, !noundef !52
  %i.kf = trunc nuw i8 %i.ke to i1
  br i1 %i.kf, label %bb.ee, label %bb.dv

bb.dv:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit248
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.dw unwind label %bb.ea

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #21
  %i.kg = load ptr, ptr %i.hr, align 8, !tbaa !53 ; 2 uses
  %.not.i.i249 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i249, label %_ZNK7testing15AssertionResult15failure_messageEv.exit250, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !20
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit250

_ZNK7testing15AssertionResult15failure_messageEv.exit250: ; preds = %bb.dx, %bb.dw
  %i.ki = phi ptr [ %i.kh, %bb.dx ], [ @.str, %bb.dw ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %33, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 576, ptr noundef %i.ki)
          to label %bb.dy unwind label %bb.eb

bb.dy:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit250
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.dz unwind label %bb.ec

bb.dz:                                            ; preds = %bb.dy
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  %i.kj = load ptr, ptr %32, align 8, !tbaa !55   ; 3 uses
  %.not.i.i251 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i251, label %_ZN7testing7MessageD2Ev.exit253, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i252

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i252: ; preds = %bb.dz
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !30
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load ptr, ptr %i.kl, align 8
  call void %i.km(ptr noundef nonnull align 8 dereferenceable(128) %i.kj) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit253

_ZN7testing7MessageD2Ev.exit253:                  ; preds = %bb.dz, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i252
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  br label %bb.ee

bb.ea:                                            ; preds = %bb.dv
  %lpad.loopexit365 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit256

bb.eb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit250
  %lpad.loopexit370 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.ec:                                            ; preds = %bb.dy
  %lpad.loopexit375 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #21
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %.pn113 = phi { ptr, i32 } [ %lpad.loopexit375, %bb.ec ], [ %lpad.loopexit370, %bb.eb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  %i.kn = load ptr, ptr %32, align 8, !tbaa !55   ; 3 uses
  %.not.i.i254 = icmp eq ptr %i.kn, null
  br i1 %.not.i.i254, label %_ZN7testing7MessageD2Ev.exit256, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i255

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i255: ; preds = %bb.ed
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !30
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8
  call void %i.kq(ptr noundef nonnull align 8 dereferenceable(128) %i.kn) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit256

_ZN7testing7MessageD2Ev.exit256:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i255, %bb.ed, %bb.ea
  %.pn113.pn = phi { ptr, i32 } [ %lpad.loopexit365, %bb.ea ], [ %.pn113, %bb.ed ], [ %.pn113, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i255 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %31) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  br label %bb.eh

bb.ee:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit248, %_ZN7testing7MessageD2Ev.exit253
  %i.kr = load ptr, ptr %i.hr, align 8, !tbaa !53 ; 4 uses
  %.not.i.i257 = icmp eq ptr %i.kr, null
  br i1 %.not.i.i257, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !20 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 16 ; 2 uses
  %i.ku = icmp eq ptr %i.ks, %i.kt
  br i1 %i.ku, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i259, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i258: ; preds = %bb.ef
  %i.kv = load i64, ptr %i.kt, align 8, !tbaa !21
  %i.kw = add i64 %i.kv, 1
  call void @_ZdlPvm(ptr noundef %i.ks, i64 noundef %i.kw) #25
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i259

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i259: ; preds = %bb.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i258
  call void @_ZdlPvm(ptr noundef nonnull %i.kr, i64 noundef 32) #25
  br label %bb.eg

bb.eg:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i259, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.kx = add nuw nsw i32 %.019348, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.kx, 8
  br i1 %exitcond.not, label %.preheader347, label %_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, !llvm.loop !208

bb.eh:                                            ; preds = %_ZN7testing7MessageD2Ev.exit256, %_ZN7testing7MessageD2Ev.exit241
  %.pn113.pn.pn = phi { ptr, i32 } [ %.pn113.pn, %_ZN7testing7MessageD2Ev.exit256 ], [ %.pn109.pn, %_ZN7testing7MessageD2Ev.exit241 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.hr

.preheader346:                                    ; preds = %bb.fm
  %i.ky = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store i32 1, ptr %i.e, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #21
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %40)
  %i.la = load i8, ptr %40, align 8, !tbaa !50, !range !51, !noundef !52
  %i.lb = trunc nuw i8 %i.la to i1
  br i1 %i.lb, label %bb.en, label %bb.ei

bb.ei:                                            ; preds = %.preheader346
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %41)
          to label %bb.ej unwind label %.loopexit.split-lp413.loopexit.split-lp.loopexit.split-lp

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #21
  %i.lc = load ptr, ptr %i.ky, align 8, !tbaa !53 ; 2 uses
  %.not.i.i291.peel = icmp eq ptr %i.lc, null
  br i1 %.not.i.i291.peel, label %_ZNK7testing15AssertionResult15failure_messageEv.exit292.peel, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !20
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit292.peel

_ZNK7testing15AssertionResult15failure_messageEv.exit292.peel: ; preds = %bb.ek, %bb.ej
  %i.le = phi ptr [ %i.ld, %bb.ek ], [ @.str, %bb.ej ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %42, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 590, ptr noundef %i.le)
          to label %bb.el unwind label %.loopexit.split-lp418.loopexit.split-lp.loopexit.split-lp

bb.el:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit292.peel
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef nonnull align 8 dereferenceable(8) %41)
          to label %bb.em unwind label %.loopexit.split-lp423.loopexit.split-lp.loopexit.split-lp

bb.em:                                            ; preds = %bb.el
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %42) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #21
  %i.lf = load ptr, ptr %41, align 8, !tbaa !55   ; 3 uses
  %.not.i.i293.peel = icmp eq ptr %i.lf, null
  br i1 %.not.i.i293.peel, label %_ZN7testing7MessageD2Ev.exit295.peel, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i294.peel

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i294.peel: ; preds = %bb.em
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !30
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.li = load ptr, ptr %i.lh, align 8
  call void %i.li(ptr noundef nonnull align 8 dereferenceable(128) %i.lf) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit295.peel

_ZN7testing7MessageD2Ev.exit295.peel:             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i294.peel, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  br label %bb.en

bb.en:                                            ; preds = %_ZN7testing7MessageD2Ev.exit295.peel, %.preheader346
  %i.lj = load ptr, ptr %i.ky, align 8, !tbaa !53 ; 4 uses
  %.not.i.i299.peel = icmp eq ptr %i.lj, null
  br i1 %.not.i.i299.peel, label %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.peel.next, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !20 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 16 ; 2 uses
  %i.lm = icmp eq ptr %i.lk, %i.ll
  br i1 %i.lm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i301.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i300.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i300.peel: ; preds = %bb.eo
  %i.ln = load i64, ptr %i.ll, align 8, !tbaa !21
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef %i.lo) #25
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i301.peel

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i301.peel: ; preds = %bb.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i300.peel
  call void @_ZdlPvm(ptr noundef nonnull %i.lj, i64 noundef 32) #25
  br label %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.peel.next

_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.peel.next: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i301.peel, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br label %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareIttTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %_ZN7testing8internal8EqHelper7CompareIttTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.peel.next, %bb.fm
  %.018349 = phi i32 [ 1, %_ZN7testing8internal8EqHelper7CompareIttTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.peel.next ], [ %i.nn, %bb.fm ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.lp = shl nuw nsw i32 1, %.018349
  %i.lq = trunc nuw i32 %i.lp to i16
  store i16 %i.lq, ptr %i.c, align 2, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #21
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %34)
  %i.lr = load i8, ptr %34, align 8, !tbaa !50, !range !51, !noundef !52
  %i.ls = trunc nuw i8 %i.lr to i1
  br i1 %i.ls, label %bb.ev, label %bb.ep

bb.ep:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIttTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.eq unwind label %.loopexit.split-lp381.loopexit.split-lp.loopexit.split-lp

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #21
  %i.lt = load ptr, ptr %i.ih, align 8, !tbaa !53 ; 2 uses
  %.not.i.i263 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i263, label %_ZNK7testing15AssertionResult15failure_messageEv.exit264, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !20
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit264

_ZNK7testing15AssertionResult15failure_messageEv.exit264: ; preds = %bb.er, %bb.eq
  %i.lv = phi ptr [ %i.lu, %bb.er ], [ @.str, %bb.eq ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %36, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 582, ptr noundef %i.lv)
          to label %bb.es unwind label %.loopexit.split-lp386.loopexit.split-lp.loopexit.split-lp

bb.es:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit264
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.et unwind label %.loopexit.split-lp391.loopexit.split-lp.loopexit.split-lp

bb.et:                                            ; preds = %bb.es
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21
  %i.lw = load ptr, ptr %35, align 8, !tbaa !55   ; 3 uses
  %.not.i.i265 = icmp eq ptr %i.lw, null
  br i1 %.not.i.i265, label %_ZN7testing7MessageD2Ev.exit267, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i266

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i266: ; preds = %bb.et
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !30
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8
  call void %i.lz(ptr noundef nonnull align 8 dereferenceable(128) %i.lw) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit267

_ZN7testing7MessageD2Ev.exit267:                  ; preds = %bb.et, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i266
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21
  br label %bb.ev

.loopexit.split-lp381.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ep, %bb.dc
  %lpad.loopexit.split-lp674 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit270

.loopexit.split-lp386.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit264, %_ZNK7testing15AssertionResult15failure_messageEv.exit264.peel
  %lpad.loopexit.split-lp677 = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

.loopexit.split-lp391.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.es, %bb.df
  %lpad.loopexit.split-lp680 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #21
  br label %bb.eu

bb.eu:                                            ; preds = %.loopexit.split-lp386.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp391.loopexit.split-lp.loopexit.split-lp
  %.pn101 = phi { ptr, i32 } [ %lpad.loopexit.split-lp680, %.loopexit.split-lp391.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp677, %.loopexit.split-lp386.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21
  %i.ma = load ptr, ptr %35, align 8, !tbaa !55   ; 3 uses
  %.not.i.i268 = icmp eq ptr %i.ma, null
  br i1 %.not.i.i268, label %_ZN7testing7MessageD2Ev.exit270, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i269

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i269: ; preds = %bb.eu
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !30
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.md = load ptr, ptr %i.mc, align 8
  call void %i.md(ptr noundef nonnull align 8 dereferenceable(128) %i.ma) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit270

_ZN7testing7MessageD2Ev.exit270:                  ; preds = %.loopexit.split-lp381.loopexit.split-lp.loopexit.split-lp, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i269, %bb.eu
  %.pn101.pn = phi { ptr, i32 } [ %.pn101, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i269 ], [ %.pn101, %bb.eu ], [ %lpad.loopexit.split-lp674, %.loopexit.split-lp381.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  br label %bb.fn

bb.ev:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIttTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit267
  %i.me = load ptr, ptr %i.ih, align 8, !tbaa !53 ; 4 uses
  %.not.i.i271 = icmp eq ptr %i.me, null
  br i1 %.not.i.i271, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !20 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 16 ; 2 uses
  %i.mh = icmp eq ptr %i.mf, %i.mg
  br i1 %i.mh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i273, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i272

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i272: ; preds = %bb.ew
  %i.mi = load i64, ptr %i.mg, align 8, !tbaa !21
  %i.mj = add i64 %i.mi, 1
  call void @_ZdlPvm(ptr noundef %i.mf, i64 noundef %i.mj) #25
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i273

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i273: ; preds = %bb.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i272
  call void @_ZdlPvm(ptr noundef nonnull %i.me, i64 noundef 32) #25
  br label %bb.ex

bb.ex:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i273, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.mk = load i16, ptr %i.c, align 2, !tbaa !62  ; 2 uses
  %i.ml = add i16 %i.mk, 1                        ; 2 uses
  %i.mm = icmp eq i16 %i.ml, 0
  br i1 %i.mm, label %_ZN4absl12lts_202605269bit_floorItEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueES3_E4typeES3_.exit, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.mn = call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.ml, i1 true)
  %narrow.i.i276 = sub nuw nsw i16 16, %i.mn
  %i.mo = zext nneg i16 %narrow.i.i276 to i32
  %i.mp = add nsw i32 %i.mo, -1
  %i.mq = shl nuw nsw i32 1, %i.mp
  %i.mr = trunc nuw i32 %i.mq to i16
  br label %_ZN4absl12lts_202605269bit_floorItEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueES3_E4typeES3_.exit

_ZN4absl12lts_202605269bit_floorItEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueES3_E4typeES3_.exit: ; preds = %bb.ex, %bb.ey
  %i.ms = phi i16 [ %i.mr, %bb.ey ], [ 0, %bb.ex ] ; 2 uses
  store i16 %i.ms, ptr %i.d, align 2, !tbaa !62
  %i.mt = icmp eq i16 %i.ms, %i.mk
  br i1 %i.mt, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %_ZN4absl12lts_202605269bit_floorItEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueES3_E4typeES3_.exit
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %37)
  br label %_ZN7testing8internal8EqHelper7CompareIttTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit277

bb.fa:                                            ; preds = %_ZN4absl12lts_202605269bit_floorItEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueES3_E4typeES3_.exit
  call void @_ZN7testing8internal18CmpHelperEQFailureIttEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %37, ptr noundef nonnull @.str.240, ptr noundef nonnull @.str.238, ptr noundef nonnull align 2 dereferenceable(2) %i.d, ptr noundef nonnull align 2 dereferenceable(2) %i.c)
  br label %_ZN7testing8internal8EqHelper7CompareIttTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit277

_ZN7testing8internal8EqHelper7CompareIttTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit277: ; preds = %bb.ez, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  %i.mu = load i8, ptr %37, align 8, !tbaa !50, !range !51, !noundef !52
  %i.mv = trunc nuw i8 %i.mu to i1
  br i1 %i.mv, label %bb.fk, label %bb.fb

bb.fb:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIttTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit277
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %38)
          to label %bb.fc unwind label %bb.fg

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #21
  %i.mw = load ptr, ptr %i.ii, align 8, !tbaa !53 ; 2 uses
  %.not.i.i278 = icmp eq ptr %i.mw, null
  br i1 %.not.i.i278, label %_ZNK7testing15AssertionResult15failure_messageEv.exit279, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !20
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit279

_ZNK7testing15AssertionResult15failure_messageEv.exit279: ; preds = %bb.fd, %bb.fc
  %i.my = phi ptr [ %i.mx, %bb.fd ], [ @.str, %bb.fc ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %39, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 584, ptr noundef %i.my)
          to label %bb.fe unwind label %bb.fh

bb.fe:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit279
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull align 8 dereferenceable(8) %38)
          to label %bb.ff unwind label %bb.fi

bb.ff:                                            ; preds = %bb.fe
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %39) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  %i.mz = load ptr, ptr %38, align 8, !tbaa !55   ; 3 uses
  %.not.i.i280 = icmp eq ptr %i.mz, null
  br i1 %.not.i.i280, label %_ZN7testing7MessageD2Ev.exit282, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i281

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i281: ; preds = %bb.ff
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !30
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nc = load ptr, ptr %i.nb, align 8
  call void %i.nc(ptr noundef nonnull align 8 dereferenceable(128) %i.mz) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit282

_ZN7testing7MessageD2Ev.exit282:                  ; preds = %bb.ff, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i281
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21
  br label %bb.fk

bb.fg:                                            ; preds = %bb.fb
  %lpad.loopexit397 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit285

bb.fh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit279
  %lpad.loopexit402 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fe
  %lpad.loopexit407 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %39) #21
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %.pn105 = phi { ptr, i32 } [ %lpad.loopexit407, %bb.fi ], [ %lpad.loopexit402, %bb.fh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  %i.nd = load ptr, ptr %38, align 8, !tbaa !55   ; 3 uses
  %.not.i.i283 = icmp eq ptr %i.nd, null
  br i1 %.not.i.i283, label %_ZN7testing7MessageD2Ev.exit285, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i284

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i284: ; preds = %bb.fj
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !30
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.ng = load ptr, ptr %i.nf, align 8
  call void %i.ng(ptr noundef nonnull align 8 dereferenceable(128) %i.nd) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit285

_ZN7testing7MessageD2Ev.exit285:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i284, %bb.fj, %bb.fg
  %.pn105.pn = phi { ptr, i32 } [ %lpad.loopexit397, %bb.fg ], [ %.pn105, %bb.fj ], [ %.pn105, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i284 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %37) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #21
  br label %bb.fn

bb.fk:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIttTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit277, %_ZN7testing7MessageD2Ev.exit282
  %i.nh = load ptr, ptr %i.ii, align 8, !tbaa !53 ; 4 uses
  %.not.i.i286 = icmp eq ptr %i.nh, null
  br i1 %.not.i.i286, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !20 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 16 ; 2 uses
  %i.nk = icmp eq ptr %i.ni, %i.nj
  br i1 %i.nk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i288, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i287

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i287: ; preds = %bb.fl
  %i.nl = load i64, ptr %i.nj, align 8, !tbaa !21
  %i.nm = add i64 %i.nl, 1
  call void @_ZdlPvm(ptr noundef %i.ni, i64 noundef %i.nm) #25
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i288

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i288: ; preds = %bb.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i287
  call void @_ZdlPvm(ptr noundef nonnull %i.nh, i64 noundef 32) #25
  br label %bb.fm

bb.fm:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i288, %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.nn = add nuw nsw i32 %.018349, 1             ; 2 uses
  %exitcond378.not = icmp eq i32 %i.nn, 16
  br i1 %exitcond378.not, label %.preheader346, label %_ZN7testing8internal8EqHelper7CompareIttTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, !llvm.loop !209

bb.fn:                                            ; preds = %_ZN7testing7MessageD2Ev.exit285, %_ZN7testing7MessageD2Ev.exit270
  %.pn105.pn.pn = phi { ptr, i32 } [ %.pn105.pn, %_ZN7testing7MessageD2Ev.exit285 ], [ %.pn101.pn, %_ZN7testing7MessageD2Ev.exit270 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.hr

.preheader:                                       ; preds = %bb.gr
  %i.no = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 4 uses
  %i.np = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  store i64 1, ptr %i.g, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #21
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %46)
  %i.nq = load i8, ptr %46, align 8, !tbaa !50, !range !51, !noundef !52
  %i.nr = trunc nuw i8 %i.nq to i1
  br i1 %i.nr, label %bb.ft, label %bb.fo

bb.fo:                                            ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %bb.fp unwind label %.loopexit.split-lp446.loopexit.split-lp.loopexit.split-lp

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #21
  %i.ns = load ptr, ptr %i.no, align 8, !tbaa !53 ; 2 uses
  %.not.i.i319.peel = icmp eq ptr %i.ns, null
  br i1 %.not.i.i319.peel, label %_ZNK7testing15AssertionResult15failure_messageEv.exit320.peel, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !20
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit320.peel

_ZNK7testing15AssertionResult15failure_messageEv.exit320.peel: ; preds = %bb.fq, %bb.fp
  %i.nu = phi ptr [ %i.nt, %bb.fq ], [ @.str, %bb.fp ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %48, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 598, ptr noundef %i.nu)
          to label %bb.fr unwind label %.loopexit.split-lp451.loopexit.split-lp.loopexit.split-lp

bb.fr:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit320.peel
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %bb.fs unwind label %.loopexit.split-lp456.loopexit.split-lp.loopexit.split-lp

bb.fs:                                            ; preds = %bb.fr
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %48) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #21
  %i.nv = load ptr, ptr %47, align 8, !tbaa !55   ; 3 uses
  %.not.i.i321.peel = icmp eq ptr %i.nv, null
  br i1 %.not.i.i321.peel, label %_ZN7testing7MessageD2Ev.exit323.peel, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i322.peel

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i322.peel: ; preds = %bb.fs
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !30
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8
  call void %i.ny(ptr noundef nonnull align 8 dereferenceable(128) %i.nv) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit323.peel

_ZN7testing7MessageD2Ev.exit323.peel:             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i322.peel, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #21
  br label %bb.ft

bb.ft:                                            ; preds = %_ZN7testing7MessageD2Ev.exit323.peel, %.preheader
  %i.nz = load ptr, ptr %i.no, align 8, !tbaa !53 ; 4 uses
  %.not.i.i327.peel = icmp eq ptr %i.nz, null
  br i1 %.not.i.i327.peel, label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit318.peel.next, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !20 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 16 ; 2 uses
  %i.oc = icmp eq ptr %i.oa, %i.ob
  br i1 %i.oc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i329.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i328.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i328.peel: ; preds = %bb.fu
  %i.od = load i64, ptr %i.ob, align 8, !tbaa !21
  %i.oe = add i64 %i.od, 1
  call void @_ZdlPvm(ptr noundef %i.oa, i64 noundef %i.oe) #25
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i329.peel

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i329.peel: ; preds = %bb.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i328.peel
  call void @_ZdlPvm(ptr noundef nonnull %i.nz, i64 noundef 32) #25
  br label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit318.peel.next

_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit318.peel.next: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i329.peel, %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  br label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit318

_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.peel.next, %bb.gr
  %.017350 = phi i32 [ 1, %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.peel.next ], [ %i.pz, %bb.gr ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  %i.of = shl nuw i32 1, %.017350
  store i32 %i.of, ptr %i.e, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #21
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %40)
  %i.og = load i8, ptr %40, align 8, !tbaa !50, !range !51, !noundef !52
  %i.oh = trunc nuw i8 %i.og to i1
  br i1 %i.oh, label %bb.gb, label %bb.fv

bb.fv:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %41)
          to label %bb.fw unwind label %.loopexit.split-lp413.loopexit.split-lp.loopexit.split-lp

bb.fw:                                            ; preds = %bb.fv
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #21
  %i.oi = load ptr, ptr %i.ky, align 8, !tbaa !53 ; 2 uses
  %.not.i.i291 = icmp eq ptr %i.oi, null
  br i1 %.not.i.i291, label %_ZNK7testing15AssertionResult15failure_messageEv.exit292, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !20
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit292

_ZNK7testing15AssertionResult15failure_messageEv.exit292: ; preds = %bb.fx, %bb.fw
  %i.ok = phi ptr [ %i.oj, %bb.fx ], [ @.str, %bb.fw ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %42, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 590, ptr noundef %i.ok)
          to label %bb.fy unwind label %.loopexit.split-lp418.loopexit.split-lp.loopexit.split-lp

bb.fy:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit292
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef nonnull align 8 dereferenceable(8) %41)
          to label %bb.fz unwind label %.loopexit.split-lp423.loopexit.split-lp.loopexit.split-lp

bb.fz:                                            ; preds = %bb.fy
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %42) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #21
  %i.ol = load ptr, ptr %41, align 8, !tbaa !55   ; 3 uses
  %.not.i.i293 = icmp eq ptr %i.ol, null
  br i1 %.not.i.i293, label %_ZN7testing7MessageD2Ev.exit295, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i294

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i294: ; preds = %bb.fz
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !30
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.oo = load ptr, ptr %i.on, align 8
  call void %i.oo(ptr noundef nonnull align 8 dereferenceable(128) %i.ol) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit295

_ZN7testing7MessageD2Ev.exit295:                  ; preds = %bb.fz, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i294
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  br label %bb.gb

.loopexit.split-lp413.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fv, %bb.ei
  %lpad.loopexit.split-lp665 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit298

.loopexit.split-lp418.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit292, %_ZNK7testing15AssertionResult15failure_messageEv.exit292.peel
  %lpad.loopexit.split-lp668 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

.loopexit.split-lp423.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fy, %bb.el
  %lpad.loopexit.split-lp671 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %42) #21
  br label %bb.ga

bb.ga:                                            ; preds = %.loopexit.split-lp418.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp423.loopexit.split-lp.loopexit.split-lp
  %.pn93 = phi { ptr, i32 } [ %lpad.loopexit.split-lp671, %.loopexit.split-lp423.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp668, %.loopexit.split-lp418.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #21
  %i.op = load ptr, ptr %41, align 8, !tbaa !55   ; 3 uses
  %.not.i.i296 = icmp eq ptr %i.op, null
  br i1 %.not.i.i296, label %_ZN7testing7MessageD2Ev.exit298, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i297

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i297: ; preds = %bb.ga
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !30
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  %i.os = load ptr, ptr %i.or, align 8
  call void %i.os(ptr noundef nonnull align 8 dereferenceable(128) %i.op) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit298

_ZN7testing7MessageD2Ev.exit298:                  ; preds = %.loopexit.split-lp413.loopexit.split-lp.loopexit.split-lp, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i297, %bb.ga
  %.pn93.pn = phi { ptr, i32 } [ %.pn93, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i297 ], [ %.pn93, %bb.ga ], [ %lpad.loopexit.split-lp665, %.loopexit.split-lp413.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %40) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  br label %bb.gs

bb.gb:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit295
  %i.ot = load ptr, ptr %i.ky, align 8, !tbaa !53 ; 4 uses
  %.not.i.i299 = icmp eq ptr %i.ot, null
  br i1 %.not.i.i299, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !20 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ot, i64 16 ; 2 uses
  %i.ow = icmp eq ptr %i.ou, %i.ov
  br i1 %i.ow, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i301, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i300

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i300: ; preds = %bb.gc
  %i.ox = load i64, ptr %i.ov, align 8, !tbaa !21
  %i.oy = add i64 %i.ox, 1
  call void @_ZdlPvm(ptr noundef %i.ou, i64 noundef %i.oy) #25
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i301

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i301: ; preds = %bb.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i300
  call void @_ZdlPvm(ptr noundef nonnull %i.ot, i64 noundef 32) #25
  br label %bb.gd

bb.gd:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i301, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  %i.oz = load i32, ptr %i.e, align 4, !tbaa !63  ; 2 uses
  %i.pa = add i32 %i.oz, 1                        ; 2 uses
  %i.pb = icmp eq i32 %i.pa, 0
  %i.pc = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.pa, i1 true)
  %i.pd = lshr exact i32 -2147483648, %i.pc
  %i.pe = select i1 %i.pb, i32 0, i32 %i.pd       ; 2 uses
  store i32 %i.pe, ptr %i.f, align 4, !tbaa !63
  %i.pf = icmp eq i32 %i.pe, %i.oz
  br i1 %i.pf, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %43)
  br label %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit304

bb.gf:                                            ; preds = %bb.gd
  call void @_ZN7testing8internal18CmpHelperEQFailureIjjEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %43, ptr noundef nonnull @.str.241, ptr noundef nonnull @.str.238, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  br label %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit304

_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit304: ; preds = %bb.ge, %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  %i.pg = load i8, ptr %43, align 8, !tbaa !50, !range !51, !noundef !52
  %i.ph = trunc nuw i8 %i.pg to i1
  br i1 %i.ph, label %bb.gp, label %bb.gg

bb.gg:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit304
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %44)
          to label %bb.gh unwind label %bb.gl

bb.gh:                                            ; preds = %bb.gg
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #21
  %i.pi = load ptr, ptr %i.kz, align 8, !tbaa !53 ; 2 uses
  %.not.i.i305 = icmp eq ptr %i.pi, null
  br i1 %.not.i.i305, label %_ZNK7testing15AssertionResult15failure_messageEv.exit306, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !20
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit306

_ZNK7testing15AssertionResult15failure_messageEv.exit306: ; preds = %bb.gi, %bb.gh
  %i.pk = phi ptr [ %i.pj, %bb.gi ], [ @.str, %bb.gh ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %45, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 592, ptr noundef %i.pk)
          to label %bb.gj unwind label %bb.gm

bb.gj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit306
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef nonnull align 8 dereferenceable(8) %44)
          to label %bb.gk unwind label %bb.gn

bb.gk:                                            ; preds = %bb.gj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %45) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21
  %i.pl = load ptr, ptr %44, align 8, !tbaa !55   ; 3 uses
  %.not.i.i307 = icmp eq ptr %i.pl, null
  br i1 %.not.i.i307, label %_ZN7testing7MessageD2Ev.exit309, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i308

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i308: ; preds = %bb.gk
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !30
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  %i.po = load ptr, ptr %i.pn, align 8
  call void %i.po(ptr noundef nonnull align 8 dereferenceable(128) %i.pl) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit309

_ZN7testing7MessageD2Ev.exit309:                  ; preds = %bb.gk, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i308
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #21
  br label %bb.gp

bb.gl:                                            ; preds = %bb.gg
  %lpad.loopexit429 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit312

bb.gm:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit306
  %lpad.loopexit434 = landingpad { ptr, i32 }
          cleanup
  br label %bb.go

bb.gn:                                            ; preds = %bb.gj
end_hunk_0
