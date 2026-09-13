Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/duration_test?download=true
inline.NumInlined: 12490
inline.NumDeleted: 1106
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_130Duration_SmallConversions_Test8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
bb.cy:                                            ; preds = %bb.cx
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !46
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit916

_ZNK7testing15AssertionResult15failure_messageEv.exit916: ; preds = %bb.cy, %bb.cx
  %i.gy = phi ptr [ %i.gx, %bb.cy ], [ @.str.113, %bb.cx ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %51, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1399, ptr noundef %i.gy)
          to label %bb.cz unwind label %bb.dc

bb.cz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit916
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %51, ptr noundef nonnull align 8 dereferenceable(8) %50)
          to label %bb.da unwind label %bb.dd

bb.da:                                            ; preds = %bb.cz
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %51) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #24
  %i.gz = load ptr, ptr %50, align 8, !tbaa !48   ; 3 uses
  %.not.i.i917 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i917, label %_ZN7testing7MessageD2Ev.exit919, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i918

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i918: ; preds = %bb.da
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !19
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(128) %i.gz) #24, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit919

_ZN7testing7MessageD2Ev.exit919:                  ; preds = %bb.da, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i918
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #24
  br label %bb.df

bb.db:                                            ; preds = %bb.cw
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit922

bb.dc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit916
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.dd:                                            ; preds = %bb.cz
  %i.hf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %51) #24
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.pn631 = phi { ptr, i32 } [ %i.hf, %bb.dd ], [ %i.he, %bb.dc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #24
  %i.hg = load ptr, ptr %50, align 8, !tbaa !48   ; 3 uses
  %.not.i.i920 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i920, label %_ZN7testing7MessageD2Ev.exit922, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i921

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i921: ; preds = %bb.de
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !19
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(128) %i.hg) #24, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit922

_ZN7testing7MessageD2Ev.exit922:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i921, %bb.de, %bb.db
  %.pn631.pn = phi { ptr, i32 } [ %i.hd, %bb.db ], [ %.pn631, %bb.de ], [ %.pn631, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i921 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %49) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #24
  br label %bb.nx

bb.df:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit914, %_ZN7testing7MessageD2Ev.exit919
  %i.hk = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !42 ; 4 uses
  %.not.i.i923 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i923, label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit936, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !46 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 16 ; 2 uses
  %i.ho = icmp eq ptr %i.hm, %i.hn
  br i1 %i.ho, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i925, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i924

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i924: ; preds = %bb.dg
  %i.hp = load i64, ptr %i.hn, align 8, !tbaa !49
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hq) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i925

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i925: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i924
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef 32) #26
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit936

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit936: ; preds = %bb.df, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i925
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #24
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %52)
  %i.hr = load i8, ptr %52, align 8, !tbaa !40, !range !41, !noundef !51
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %bb.dq, label %bb.dh

bb.dh:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit936
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %53)
          to label %bb.di unwind label %bb.dm

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #24
  %i.ht = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !42 ; 2 uses
  %.not.i.i937 = icmp eq ptr %i.hu, null
  br i1 %.not.i.i937, label %_ZNK7testing15AssertionResult15failure_messageEv.exit938, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !46
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit938

_ZNK7testing15AssertionResult15failure_messageEv.exit938: ; preds = %bb.dj, %bb.di
  %i.hw = phi ptr [ %i.hv, %bb.dj ], [ @.str.113, %bb.di ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %54, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1400, ptr noundef %i.hw)
          to label %bb.dk unwind label %bb.dn

bb.dk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit938
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef nonnull align 8 dereferenceable(8) %53)
          to label %bb.dl unwind label %bb.do

bb.dl:                                            ; preds = %bb.dk
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %54) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #24
  %i.hx = load ptr, ptr %53, align 8, !tbaa !48   ; 3 uses
  %.not.i.i939 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i939, label %_ZN7testing7MessageD2Ev.exit941, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i940

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i940: ; preds = %bb.dl
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !19
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8
  call void %i.ia(ptr noundef nonnull align 8 dereferenceable(128) %i.hx) #24, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit941

_ZN7testing7MessageD2Ev.exit941:                  ; preds = %bb.dl, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i940
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #24
  br label %bb.dq

bb.dm:                                            ; preds = %bb.dh
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit944

bb.dn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit938
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.do:                                            ; preds = %bb.dk
  %i.id = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %54) #24
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.pn634 = phi { ptr, i32 } [ %i.id, %bb.do ], [ %i.ic, %bb.dn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #24
  %i.ie = load ptr, ptr %53, align 8, !tbaa !48   ; 3 uses
  %.not.i.i942 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i942, label %_ZN7testing7MessageD2Ev.exit944, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i943

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i943: ; preds = %bb.dp
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !19
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(128) %i.ie) #24, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit944

_ZN7testing7MessageD2Ev.exit944:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i943, %bb.dp, %bb.dm
  %.pn634.pn = phi { ptr, i32 } [ %i.ib, %bb.dm ], [ %.pn634, %bb.dp ], [ %.pn634, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i943 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %52) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #24
  br label %bb.nx

bb.dq:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit936, %_ZN7testing7MessageD2Ev.exit941
  %i.ii = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !42 ; 4 uses
  %.not.i.i945 = icmp eq ptr %i.ij, null
  br i1 %.not.i.i945, label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit963, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !46 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 16 ; 2 uses
  %i.im = icmp eq ptr %i.ik, %i.il
  br i1 %i.im, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i947, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i946

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i946: ; preds = %bb.dr
  %i.in = load i64, ptr %i.il, align 8, !tbaa !49
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.io) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i947

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i947: ; preds = %bb.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i946
  call void @_ZdlPvm(ptr noundef nonnull %i.ij, i64 noundef 32) #26
  br label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit963

_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit963: ; preds = %bb.dq, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i947
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #24
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %55)
  %i.ip = load i8, ptr %55, align 8, !tbaa !40, !range !41, !noundef !51
  %i.iq = trunc nuw i8 %i.ip to i1
  br i1 %i.iq, label %bb.eb, label %bb.ds

bb.ds:                                            ; preds = %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit963
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %bb.dt unwind label %bb.dx

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #24
  %i.ir = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !42 ; 2 uses
  %.not.i.i972 = icmp eq ptr %i.is, null
  br i1 %.not.i.i972, label %_ZNK7testing15AssertionResult15failure_messageEv.exit973, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !46
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit973

_ZNK7testing15AssertionResult15failure_messageEv.exit973: ; preds = %bb.du, %bb.dt
  %i.iu = phi ptr [ %i.it, %bb.du ], [ @.str.113, %bb.dt ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %57, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1402, ptr noundef %i.iu)
          to label %bb.dv unwind label %bb.dy

bb.dv:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit973
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %57, ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %bb.dw unwind label %bb.dz

bb.dw:                                            ; preds = %bb.dv
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %57) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #24
  %i.iv = load ptr, ptr %56, align 8, !tbaa !48   ; 3 uses
  %.not.i.i974 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i974, label %_ZN7testing7MessageD2Ev.exit976, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i975

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i975: ; preds = %bb.dw
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !19
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(128) %i.iv) #24, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit976

_ZN7testing7MessageD2Ev.exit976:                  ; preds = %bb.dw, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i975
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #24
  br label %bb.eb

bb.dx:                                            ; preds = %bb.ds
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit979

bb.dy:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit973
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dv
  %i.jb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %57) #24
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.pn637 = phi { ptr, i32 } [ %i.jb, %bb.dz ], [ %i.ja, %bb.dy ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #24
  %i.jc = load ptr, ptr %56, align 8, !tbaa !48   ; 3 uses
  %.not.i.i977 = icmp eq ptr %i.jc, null
  br i1 %.not.i.i977, label %_ZN7testing7MessageD2Ev.exit979, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i978

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i978: ; preds = %bb.ea
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !19
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = load ptr, ptr %i.je, align 8
  call void %i.jf(ptr noundef nonnull align 8 dereferenceable(128) %i.jc) #24, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit979

_ZN7testing7MessageD2Ev.exit979:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i978, %bb.ea, %bb.dx
  %.pn637.pn = phi { ptr, i32 } [ %i.iz, %bb.dx ], [ %.pn637, %bb.ea ], [ %.pn637, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i978 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %55) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #24
  br label %bb.nx

bb.eb:                                            ; preds = %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit963, %_ZN7testing7MessageD2Ev.exit976
  %i.jg = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !42 ; 4 uses
  %.not.i.i980 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i980, label %_ZN4absl12lts_20260526ngENS0_8DurationE.exit, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !46 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 16 ; 2 uses
  %i.jk = icmp eq ptr %i.ji, %i.jj
  br i1 %i.jk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i982, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i981

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i981: ; preds = %bb.ec
  %i.jl = load i64, ptr %i.jj, align 8, !tbaa !49
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jm) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i982

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i982: ; preds = %bb.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i981
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef 32) #26
  br label %_ZN4absl12lts_20260526ngENS0_8DurationE.exit

_ZN4absl12lts_20260526ngENS0_8DurationE.exit:     ; preds = %bb.eb, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i982
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 -1, ptr %9, align 8
  %.sroa.22.0..sroa_idx.i986 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 -294967300, ptr %.sroa.22.0..sroa_idx.i986, align 8
  %i.jn = call noundef nonnull align 4 dereferenceable(12) ptr @_ZN4absl12lts_202605268DurationdVEl(ptr noundef nonnull align 4 dereferenceable(12) %9, i64 noundef 4) #24 ; 2 uses
  %.sroa.03.0.copyload.i987 = load i64, ptr %i.jn, align 4 ; 3 uses
  %.sroa.24.0..sroa_idx.i988 = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %.sroa.24.0.copyload.i989 = load i32, ptr %.sroa.24.0..sroa_idx.i988, align 4, !tbaa !50 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  store i64 %.sroa.03.0.copyload.i987, ptr %59, align 8
  %.sroa.2386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %59, i64 8
  store i32 %.sroa.24.0.copyload.i989, ptr %.sroa.2386.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #24
  store i64 -1, ptr %60, align 8
  %.sroa.2382.0..sroa_idx = getelementptr inbounds nuw i8, ptr %60, i64 8
  store i32 -294967297, ptr %.sroa.2382.0..sroa_idx, align 8
  %i.jo = icmp eq i64 %.sroa.03.0.copyload.i987, -1
  %i.jp = icmp eq i32 %.sroa.24.0.copyload.i989, -294967297
  %spec.select.i.i.i999 = select i1 %i.jo, i1 %i.jp, i1 false ; 2 uses
  br i1 %spec.select.i.i.i999, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %_ZN4absl12lts_20260526ngENS0_8DurationE.exit
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %58)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit1000

bb.ee:                                            ; preds = %_ZN4absl12lts_20260526ngENS0_8DurationE.exit
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %58, ptr noundef nonnull @.str.991, ptr noundef nonnull @.str.992, ptr noundef nonnull align 4 dereferenceable(12) %59, ptr noundef nonnull align 4 dereferenceable(12) %60)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit1000

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit1000: ; preds = %bb.ed, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #24
  %i.jq = load i8, ptr %58, align 8, !tbaa !40, !range !41, !noundef !51
  %i.jr = trunc nuw i8 %i.jq to i1
  br i1 %i.jr, label %bb.eo, label %bb.ef

bb.ef:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit1000
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %61)
          to label %bb.eg unwind label %bb.ek

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #24
  %i.js = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !42 ; 2 uses
  %.not.i.i1001 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i1001, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1002, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !46
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1002

_ZNK7testing15AssertionResult15failure_messageEv.exit1002: ; preds = %bb.eh, %bb.eg
  %i.jv = phi ptr [ %i.ju, %bb.eh ], [ @.str.113, %bb.eg ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %62, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1403, ptr noundef %i.jv)
          to label %bb.ei unwind label %bb.el

bb.ei:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1002
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef nonnull align 8 dereferenceable(8) %61)
          to label %bb.ej unwind label %bb.em

bb.ej:                                            ; preds = %bb.ei
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %62) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #24
  %i.jw = load ptr, ptr %61, align 8, !tbaa !48   ; 3 uses
  %.not.i.i1003 = icmp eq ptr %i.jw, null
  br i1 %.not.i.i1003, label %_ZN7testing7MessageD2Ev.exit1005, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1004

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1004: ; preds = %bb.ej
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !19
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(128) %i.jw) #24, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1005

_ZN7testing7MessageD2Ev.exit1005:                 ; preds = %bb.ej, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1004
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #24
  br label %bb.eo

bb.ek:                                            ; preds = %bb.ef
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1008

bb.el:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1002
  %i.kb = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_143Duration_ToDoubleSecondsCheckEdgeCases_Test8TestBodyEv:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bn = load i64, ptr %i.e, align 8, !tbaa !49, !noalias !2990
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #26
  br label %_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_.exit

bb.ab:                                            ; preds = %bb.z
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

bb.ac:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_202605268DurationES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = load ptr, ptr %8, align 8, !tbaa !46, !noalias !2990 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.d
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %bb.ac
  %i.bt = load i64, ptr %i.d, align 8, !tbaa !49, !noalias !2990
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i, %bb.ab
  %.pn.i307.a = phi { ptr, i32 } [ %i.bp, %bb.ab ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i ], [ %i.bq, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !2990
  %i.bv = load ptr, ptr %7, align 8, !tbaa !46, !noalias !2990 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.e
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i
  %i.bx = load i64, ptr %i.e, align 8, !tbaa !49, !noalias !2990
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i

common.resume:                                    ; preds = %bb.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i325, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i311, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i307.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i ], [ %.pn.i309, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i311 ], [ %.pn.i323, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i325 ], [ %.pn.i337, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i339 ], [ %.pn149.pn.pn.pn.pn, %bb.di ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !2990
  br label %common.resume

_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !2990
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit: ; preds = %bb.y, %_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  %i.bz = load i8, ptr %20, align 8, !tbaa !40, !range !41, !noundef !51
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.an, label %bb.ad

bb.ad:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  %i.cb = load ptr, ptr %i.f, align 8, !tbaa !42  ; 2 uses
  %.not.i.i182 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i182, label %_ZNK7testing15AssertionResult15failure_messageEv.exit183, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !46
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit183

_ZNK7testing15AssertionResult15failure_messageEv.exit183: ; preds = %bb.af, %bb.ae
  %i.cd = phi ptr [ %i.cc, %bb.af ], [ @.str.113, %bb.ae ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %23, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1486, ptr noundef %i.cd)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit183
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  %i.ce = load ptr, ptr %22, align 8, !tbaa !48   ; 3 uses
  %.not.i.i184 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i184, label %_ZN7testing7MessageD2Ev.exit186, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185: ; preds = %bb.ah
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !19
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(128) %i.ce) #24, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit186

_ZN7testing7MessageD2Ev.exit186:                  ; preds = %bb.ah, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %bb.an

bb.ai:                                            ; preds = %bb.ad
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit189

bb.aj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit183
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %bb.ag
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #24
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn140 = phi { ptr, i32 } [ %i.ck, %bb.ak ], [ %i.cj, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  %i.cl = load ptr, ptr %22, align 8, !tbaa !48   ; 3 uses
  %.not.i.i187 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i187, label %_ZN7testing7MessageD2Ev.exit189, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188: ; preds = %bb.al
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !19
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(128) %i.cl) #24, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit189

_ZN7testing7MessageD2Ev.exit189:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188, %bb.al, %bb.ai
  %.pn140.pn = phi { ptr, i32 } [ %i.ci, %bb.ai ], [ %.pn140, %bb.al ], [ %.pn140, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  %i.cp = load ptr, ptr %i.f, align 8, !tbaa !42  ; 4 uses
  %.not.i.i190 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i190, label %_ZN7testing15AssertionResultD2Ev.exit194, label %bb.am

bb.am:                                            ; preds = %_ZN7testing7MessageD2Ev.exit189
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !46 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i191: ; preds = %bb.am
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !49
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i191
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit194

_ZN7testing15AssertionResultD2Ev.exit194:         ; preds = %_ZN7testing7MessageD2Ev.exit189, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %bb.di

bb.an:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit, %_ZN7testing7MessageD2Ev.exit186
  %i.cv = load ptr, ptr %i.f, align 8, !tbaa !42  ; 4 uses
  %.not.i.i195 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i195, label %_ZN7testing15AssertionResultD2Ev.exit199, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !46 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i196: ; preds = %bb.ao
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !49
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i197

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i197: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i196
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit199

_ZN7testing15AssertionResultD2Ev.exit199:         ; preds = %bb.an, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i197
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  %.sroa.031.0.copyload = load i64, ptr %15, align 8 ; 2 uses
  %.sroa.232.0.copyload = load i32, ptr %.sroa.262.0..sroa_idx, align 8, !tbaa !50 ; 2 uses
  %i.db = call noundef double @_ZN4absl12lts_2026052615ToDoubleSecondsENS0_8DurationE(i64 %.sroa.031.0.copyload, i32 %.sroa.232.0.copyload) #30 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  %i.dc = fcmp ult double %i.db, 0.000000e+00
  br i1 %i.dc, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit199
  %i.dd = fcmp ult double %i.db, f0x43E0000000000000
  br i1 %i.dd, label %bb.aq, label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit

bb.aq:                                            ; preds = %bb.ap
  %i.de = fptosi double %i.db to i64              ; 2 uses
  %i.df = sitofp i64 %i.de to double
  %i.dg = fsub nnan double %i.db, %i.df
  %i.dh = fmul nnan double %i.dg, 4.000000e+09
  %i.di = call double @llvm.round.f64(double %i.dh)
  %i.dj = fptoui double %i.di to i32              ; 3 uses
  %i.dk = icmp ugt i32 %i.dj, -294967297          ; 2 uses
  %i.dl = add nsw i32 %i.dj, 294967296
  %i.dm = zext i1 %i.dk to i64
  %.pn17.i.i = add nuw nsw i64 %i.dm, %i.de
  %.pn15.i.i = select i1 %i.dk, i32 %i.dl, i32 %i.dj
  %.fca.0.insert.i.pn.i.i = insertvalue { i64, i32 } poison, i64 %.pn17.i.i, 0
  %.pn.i.i = insertvalue { i64, i32 } %.fca.0.insert.i.pn.i.i, i32 %.pn15.i.i, 1
  br label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit

bb.ar:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit199
  %i.dn = fcmp ord double %i.db, 0.000000e+00
  %i.do = fcmp ugt double %i.db, f0xC3E0000000000000
  %or.cond.i = and i1 %i.dn, %i.do
  br i1 %or.cond.i, label %bb.as, label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit

bb.as:                                            ; preds = %bb.ar
  %i.dp = fneg double %i.db                       ; 2 uses
  %i.dq = fptosi double %i.dp to i64              ; 2 uses
  %i.dr = sitofp i64 %i.dq to double
  %i.ds = fsub nnan double %i.dp, %i.dr
  %i.dt = fmul nnan double %i.ds, 4.000000e+09
  %i.du = call double @llvm.round.f64(double %i.dt)
  %i.dv = fptoui double %i.du to i32              ; 3 uses
  %i.dw = icmp ugt i32 %i.dv, -294967297          ; 2 uses
  %i.dx = add nsw i32 %i.dv, 294967296
  %i.dy = zext i1 %i.dw to i64
  %.pn17.i58.i = add nuw nsw i64 %i.dy, %i.dq     ; 2 uses
  %.pn15.i59.i = select i1 %i.dw, i32 %i.dx, i32 %i.dv ; 2 uses
  switch i32 %.pn15.i59.i, label %bb.au [
    i32 0, label %bb.at
    i32 -1, label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit
  ]

bb.at:                                            ; preds = %bb.as
  %i.dz = sub nsw i64 0, %.pn17.i58.i
  %.fca.0.insert.i.i64.i = insertvalue { i64, i32 } poison, i64 %i.dz, 0
  %.fca.1.insert.i.i65.i = insertvalue { i64, i32 } %.fca.0.insert.i.i64.i, i32 0, 1
  br label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit

bb.au:                                            ; preds = %bb.as
  %i.ea = xor i64 %.pn17.i58.i, -1
  %i.eb = sub i32 -294967296, %.pn15.i59.i
  %.fca.0.insert.i.i.i66.i = insertvalue { i64, i32 } poison, i64 %i.ea, 0
  %.fca.1.insert.i.i.i67.i = insertvalue { i64, i32 } %.fca.0.insert.i.i.i66.i, i32 %i.eb, 1
  br label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit

_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit: ; preds = %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au
  %.pn.i200 = phi { i64, i32 } [ %.fca.1.insert.i.i65.i, %bb.at ], [ %.pn.i.i, %bb.aq ], [ { i64 9223372036854775807, i32 -1 }, %bb.ap ], [ { i64 -9223372036854775808, i32 -1 }, %bb.ar ], [ %.fca.1.insert.i.i.i67.i, %bb.au ], [ { i64 -9223372036854775808, i32 -1 }, %bb.as ] ; 2 uses
  %.fca.0.extract25 = extractvalue { i64, i32 } %.pn.i200, 0 ; 2 uses
  %.fca.1.extract26 = extractvalue { i64, i32 } %.pn.i200, 1 ; 2 uses
  store i64 %.fca.0.extract25, ptr %25, align 8
  store i32 %.fca.1.extract26, ptr %.sroa.228.0..sroa_idx, align 8
  %i.ec = icmp eq i64 %.sroa.031.0.copyload, %.fca.0.extract25
  %i.ed = icmp eq i32 %.sroa.232.0.copyload, %.fca.1.extract26
  %spec.select.i.i.i207 = select i1 %i.ec, i1 %i.ed, i1 false
  br i1 %spec.select.i.i.i207, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %24)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit208

bb.aw:                                            ; preds = %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !2991
  call void @_ZN7testing13PrintToStringIN4absl12lts_202605268DurationEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 4 dereferenceable(12) %15), !noalias !2991
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !2991
  invoke void @_ZN7testing13PrintToStringIN4absl12lts_202605268DurationEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(12) %25)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_202605268DurationES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i313 unwind label %bb.ay, !noalias !2991

_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_202605268DurationES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i313: ; preds = %bb.aw
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %24, ptr noundef nonnull @.str.1017, ptr noundef nonnull @.str.1021, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_202605268DurationES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i313
  %i.ee = load ptr, ptr %6, align 8, !tbaa !46, !noalias !2991 ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.g
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i317, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i316

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i316: ; preds = %bb.ax
  %i.eg = load i64, ptr %i.g, align 8, !tbaa !49, !noalias !2991
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i317

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i317: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i316
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !2991
  %i.ei = load ptr, ptr %5, align 8, !tbaa !46, !noalias !2991 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.h
  br i1 %i.ej, label %_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_.exit321, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i318

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i318: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i317
  %i.ek = load i64, ptr %i.h, align 8, !tbaa !49, !noalias !2991
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #26
  br label %_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_.exit321

bb.ay:                                            ; preds = %bb.aw
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i308

bb.az:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_202605268DurationES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i313
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = load ptr, ptr %6, align 8, !tbaa !46, !noalias !2991 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.g
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i308, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i314

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i314: ; preds = %bb.az
  %i.eq = load i64, ptr %i.g, align 8, !tbaa !49, !noalias !2991
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i308

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i308: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i314, %bb.ay
  %.pn.i309 = phi { ptr, i32 } [ %i.em, %bb.ay ], [ %i.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i314 ], [ %i.en, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !2991
  %i.es = load ptr, ptr %5, align 8, !tbaa !46, !noalias !2991 ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.h
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i311, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i310

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i310: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i308
  %i.eu = load i64, ptr %i.h, align 8, !tbaa !49, !noalias !2991
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i311

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i311: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i308, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i310
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !2991
  br label %common.resume

_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_.exit321: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i317, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i318
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !2991
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit208

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit208: ; preds = %bb.av, %_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_.exit321
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  %i.ew = load i8, ptr %24, align 8, !tbaa !40, !range !41, !noundef !51
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.bk, label %bb.ba

bb.ba:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit208
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.bb unwind label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  %i.ey = load ptr, ptr %i.i, align 8, !tbaa !42  ; 2 uses
  %.not.i.i209 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i209, label %_ZNK7testing15AssertionResult15failure_messageEv.exit210, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !46
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit210

_ZNK7testing15AssertionResult15failure_messageEv.exit210: ; preds = %bb.bc, %bb.bb
  %i.fa = phi ptr [ %i.ez, %bb.bc ], [ @.str.113, %bb.bb ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %27, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1489, ptr noundef %i.fa)
          to label %bb.bd unwind label %bb.bg

bb.bd:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit210
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.be unwind label %bb.bh

bb.be:                                            ; preds = %bb.bd
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  %i.fb = load ptr, ptr %26, align 8, !tbaa !48   ; 3 uses
  %.not.i.i211 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i211, label %_ZN7testing7MessageD2Ev.exit213, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i212

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i212: ; preds = %bb.be
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !19
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(128) %i.fb) #24, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit213

_ZN7testing7MessageD2Ev.exit213:                  ; preds = %bb.be, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i212
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  br label %bb.bk

bb.bf:                                            ; preds = %bb.ba
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit216

bb.bg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit210
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bd
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #24
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.pn143 = phi { ptr, i32 } [ %i.fh, %bb.bh ], [ %i.fg, %bb.bg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  %i.fi = load ptr, ptr %26, align 8, !tbaa !48   ; 3 uses
  %.not.i.i214 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i214, label %_ZN7testing7MessageD2Ev.exit216, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i215

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i215: ; preds = %bb.bi
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !19
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(128) %i.fi) #24, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit216

_ZN7testing7MessageD2Ev.exit216:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i215, %bb.bi, %bb.bf
  %.pn143.pn = phi { ptr, i32 } [ %i.ff, %bb.bf ], [ %.pn143, %bb.bi ], [ %.pn143, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i215 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  %i.fm = load ptr, ptr %i.i, align 8, !tbaa !42  ; 4 uses
  %.not.i.i217 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i217, label %_ZN7testing15AssertionResultD2Ev.exit221, label %bb.bj

bb.bj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit216
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !46 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 16 ; 2 uses
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i218

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i218: ; preds = %bb.bj
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !49
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fr) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i219

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i219: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i218
  call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit221

_ZN7testing15AssertionResultD2Ev.exit221:         ; preds = %_ZN7testing7MessageD2Ev.exit216, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i219
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %bb.di

bb.bk:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit208, %_ZN7testing7MessageD2Ev.exit213
  %i.fs = load ptr, ptr %i.i, align 8, !tbaa !42  ; 4 uses
  %.not.i.i222 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i222, label %_ZN7testing15AssertionResultD2Ev.exit226, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !46 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 16 ; 2 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i224, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i223: ; preds = %bb.bl
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !49
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i224

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i224: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i223
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit226

_ZN7testing15AssertionResultD2Ev.exit226:         ; preds = %bb.bk, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i224
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  %.sroa.019.0.copyload = load i64, ptr %16, align 8 ; 2 uses
  %.sroa.220.0.copyload = load i32, ptr %.sroa.254.0..sroa_idx, align 8, !tbaa !50 ; 2 uses
  %i.fy = call noundef double @_ZN4absl12lts_2026052615ToDoubleSecondsENS0_8DurationE(i64 %.sroa.019.0.copyload, i32 %.sroa.220.0.copyload) #30 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  %i.fz = fcmp ult double %i.fy, 0.000000e+00
  br i1 %i.fz, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit226
  %i.ga = fcmp ult double %i.fy, f0x43E0000000000000
  br i1 %i.ga, label %bb.bn, label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit240

bb.bn:                                            ; preds = %bb.bm
  %i.gb = fptosi double %i.fy to i64              ; 2 uses
  %i.gc = sitofp i64 %i.gb to double
  %i.gd = fsub nnan double %i.fy, %i.gc
  %i.ge = fmul nnan double %i.gd, 4.000000e+09
  %i.gf = call double @llvm.round.f64(double %i.ge)
  %i.gg = fptoui double %i.gf to i32              ; 3 uses
  %i.gh = icmp ugt i32 %i.gg, -294967297          ; 2 uses
  %i.gi = add nsw i32 %i.gg, 294967296
  %i.gj = zext i1 %i.gh to i64
  %.pn17.i.i228 = add nuw nsw i64 %i.gj, %i.gb
  %.pn15.i.i229 = select i1 %i.gh, i32 %i.gi, i32 %i.gg
  %.fca.0.insert.i.pn.i.i230 = insertvalue { i64, i32 } poison, i64 %.pn17.i.i228, 0
  %.pn.i.i231 = insertvalue { i64, i32 } %.fca.0.insert.i.pn.i.i230, i32 %.pn15.i.i229, 1
  br label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit240

bb.bo:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit226
  %i.gk = fcmp ord double %i.fy, 0.000000e+00
  %i.gl = fcmp ugt double %i.fy, f0xC3E0000000000000
  %or.cond.i232 = and i1 %i.gk, %i.gl
  br i1 %or.cond.i232, label %bb.bp, label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit240

bb.bp:                                            ; preds = %bb.bo
  %i.gm = fneg double %i.fy                       ; 2 uses
  %i.gn = fptosi double %i.gm to i64              ; 2 uses
  %i.go = sitofp i64 %i.gn to double
  %i.gp = fsub nnan double %i.gm, %i.go
  %i.gq = fmul nnan double %i.gp, 4.000000e+09
  %i.gr = call double @llvm.round.f64(double %i.gq)
  %i.gs = fptoui double %i.gr to i32              ; 3 uses
  %i.gt = icmp ugt i32 %i.gs, -294967297          ; 2 uses
  %i.gu = add nsw i32 %i.gs, 294967296
  %i.gv = zext i1 %i.gt to i64
  %.pn17.i58.i233 = add nuw nsw i64 %i.gv, %i.gn  ; 2 uses
  %.pn15.i59.i234 = select i1 %i.gt, i32 %i.gu, i32 %i.gs ; 2 uses
  switch i32 %.pn15.i59.i234, label %bb.br [
    i32 0, label %bb.bq
    i32 -1, label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit240
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.gw = sub nsw i64 0, %.pn17.i58.i233
  %.fca.0.insert.i.i64.i236 = insertvalue { i64, i32 } poison, i64 %i.gw, 0
  %.fca.1.insert.i.i65.i237 = insertvalue { i64, i32 } %.fca.0.insert.i.i64.i236, i32 0, 1
  br label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit240

bb.br:                                            ; preds = %bb.bp
  %i.gx = xor i64 %.pn17.i58.i233, -1
  %i.gy = sub i32 -294967296, %.pn15.i59.i234
  %.fca.0.insert.i.i.i66.i238 = insertvalue { i64, i32 } poison, i64 %i.gx, 0
  %.fca.1.insert.i.i.i67.i239 = insertvalue { i64, i32 } %.fca.0.insert.i.i.i66.i238, i32 %i.gy, 1
  br label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit240

_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit240: ; preds = %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br
  %.pn.i227 = phi { i64, i32 } [ %.fca.1.insert.i.i65.i237, %bb.bq ], [ %.pn.i.i231, %bb.bn ], [ { i64 9223372036854775807, i32 -1 }, %bb.bm ], [ { i64 -9223372036854775808, i32 -1 }, %bb.bo ], [ %.fca.1.insert.i.i.i67.i239, %bb.br ], [ { i64 -9223372036854775808, i32 -1 }, %bb.bp ] ; 2 uses
  %.fca.0.extract13 = extractvalue { i64, i32 } %.pn.i227, 0 ; 2 uses
  %.fca.1.extract14 = extractvalue { i64, i32 } %.pn.i227, 1 ; 2 uses
  store i64 %.fca.0.extract13, ptr %29, align 8
  store i32 %.fca.1.extract14, ptr %.sroa.216.0..sroa_idx, align 8
  %i.gz = icmp eq i64 %.sroa.019.0.copyload, %.fca.0.extract13
  %i.ha = icmp eq i32 %.sroa.220.0.copyload, %.fca.1.extract14
  %spec.select.i.i.i247 = select i1 %i.gz, i1 %i.ha, i1 false
  br i1 %spec.select.i.i.i247, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit240
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %28)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit248

bb.bt:                                            ; preds = %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit240
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !2992
  call void @_ZN7testing13PrintToStringIN4absl12lts_202605268DurationEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 4 dereferenceable(12) %16), !noalias !2992
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !2992
  invoke void @_ZN7testing13PrintToStringIN4absl12lts_202605268DurationEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(12) %29)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_202605268DurationES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i327 unwind label %bb.bv, !noalias !2992

_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_202605268DurationES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i327: ; preds = %bb.bt
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %28, ptr noundef nonnull @.str.1018, ptr noundef nonnull @.str.1022, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext false)
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_202605268DurationES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i327
  %i.hb = load ptr, ptr %4, align 8, !tbaa !46, !noalias !2992 ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.j
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i331, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i330

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i330: ; preds = %bb.bu
  %i.hd = load i64, ptr %i.j, align 8, !tbaa !49, !noalias !2992
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.he) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i331

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i331: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i330
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !2992
  %i.hf = load ptr, ptr %3, align 8, !tbaa !46, !noalias !2992 ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.k
  br i1 %i.hg, label %_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_.exit335, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i332

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i332: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i331
  %i.hh = load i64, ptr %i.k, align 8, !tbaa !49, !noalias !2992
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hi) #26
  br label %_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_.exit335

bb.bv:                                            ; preds = %bb.bt
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i322

bb.bw:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_202605268DurationES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i327
  %i.hk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hl = load ptr, ptr %4, align 8, !tbaa !46, !noalias !2992 ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.j
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i322, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i328

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i328: ; preds = %bb.bw
  %i.hn = load i64, ptr %i.j, align 8, !tbaa !49, !noalias !2992
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.ho) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i322

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i322: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i328, %bb.bv
  %.pn.i323 = phi { ptr, i32 } [ %i.hj, %bb.bv ], [ %i.hk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i328 ], [ %i.hk, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !2992
  %i.hp = load ptr, ptr %3, align 8, !tbaa !46, !noalias !2992 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.k
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i324

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i324: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i322
  %i.hr = load i64, ptr %i.k, align 8, !tbaa !49, !noalias !2992
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.hs) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i325

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i325: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i322, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i324
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !2992
  br label %common.resume

_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_.exit335: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i331, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i332
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !2992
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit248

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit248: ; preds = %bb.bs, %_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_.exit335
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  %i.ht = load i8, ptr %28, align 8, !tbaa !40, !range !41, !noundef !51
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %bb.ch, label %bb.bx

bb.bx:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit248
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #24
  %i.hv = load ptr, ptr %i.l, align 8, !tbaa !42  ; 2 uses
  %.not.i.i249 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i249, label %_ZNK7testing15AssertionResult15failure_messageEv.exit250, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !46
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit250

_ZNK7testing15AssertionResult15failure_messageEv.exit250: ; preds = %bb.bz, %bb.by
  %i.hx = phi ptr [ %i.hw, %bb.bz ], [ @.str.113, %bb.by ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %31, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1492, ptr noundef %i.hx)
          to label %bb.ca unwind label %bb.cd

bb.ca:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit250
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.cb unwind label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %31) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #24
  %i.hy = load ptr, ptr %30, align 8, !tbaa !48   ; 3 uses
  %.not.i.i251 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i251, label %_ZN7testing7MessageD2Ev.exit253, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i252

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i252: ; preds = %bb.cb
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !19
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(128) %i.hy) #24, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit253

_ZN7testing7MessageD2Ev.exit253:                  ; preds = %bb.cb, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i252
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  br label %bb.ch

bb.cc:                                            ; preds = %bb.bx
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit256

bb.cd:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit250
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ce:                                            ; preds = %bb.ca
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %31) #24
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.pn146 = phi { ptr, i32 } [ %i.ie, %bb.ce ], [ %i.id, %bb.cd ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #24
  %i.if = load ptr, ptr %30, align 8, !tbaa !48   ; 3 uses
  %.not.i.i254 = icmp eq ptr %i.if, null
  br i1 %.not.i.i254, label %_ZN7testing7MessageD2Ev.exit256, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i255

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i255: ; preds = %bb.cf
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !19
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8
  call void %i.ii(ptr noundef nonnull align 8 dereferenceable(128) %i.if) #24, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit256

_ZN7testing7MessageD2Ev.exit256:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i255, %bb.cf, %bb.cc
  %.pn146.pn = phi { ptr, i32 } [ %i.ic, %bb.cc ], [ %.pn146, %bb.cf ], [ %.pn146, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i255 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  %i.ij = load ptr, ptr %i.l, align 8, !tbaa !42  ; 4 uses
  %.not.i.i257 = icmp eq ptr %i.ij, null
  br i1 %.not.i.i257, label %_ZN7testing15AssertionResultD2Ev.exit261, label %bb.cg

bb.cg:                                            ; preds = %_ZN7testing7MessageD2Ev.exit256
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !46 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 16 ; 2 uses
  %i.im = icmp eq ptr %i.ik, %i.il
  br i1 %i.im, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i259, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i258: ; preds = %bb.cg
  %i.in = load i64, ptr %i.il, align 8, !tbaa !49
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.io) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i259

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i259: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i258
  call void @_ZdlPvm(ptr noundef nonnull %i.ij, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit261

_ZN7testing15AssertionResultD2Ev.exit261:         ; preds = %_ZN7testing7MessageD2Ev.exit256, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i259
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  br label %bb.di

bb.ch:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit248, %_ZN7testing7MessageD2Ev.exit253
  %i.ip = load ptr, ptr %i.l, align 8, !tbaa !42  ; 4 uses
  %.not.i.i262 = icmp eq ptr %i.ip, null
  br i1 %.not.i.i262, label %_ZN7testing15AssertionResultD2Ev.exit266, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !46 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 16 ; 2 uses
  %i.is = icmp eq ptr %i.iq, %i.ir
  br i1 %i.is, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i264, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i263

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i263: ; preds = %bb.ci
  %i.it = load i64, ptr %i.ir, align 8, !tbaa !49
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.iu) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i264

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i264: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i263
  call void @_ZdlPvm(ptr noundef nonnull %i.ip, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit266

_ZN7testing15AssertionResultD2Ev.exit266:         ; preds = %bb.ch, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i264
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  %i.iv = fsub double %i.fy, %i.db
  %i.iw = fmul double %i.iv, 5.000000e-01
  %i.ix = fadd double %i.db, %i.iw                ; 3 uses
  %i.iy = fcmp oeq double %i.ix, %i.db
  %i.iz = fcmp oeq double %i.ix, %i.fy
  %or.cond366 = or i1 %i.iy, %i.iz
  br i1 %or.cond366, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7testing15AssertionResultD2Ev.exit266, %bb.dh
  %i.ja = phi double [ %i.mb, %bb.dh ], [ %i.ix, %_ZN7testing15AssertionResultD2Ev.exit266 ] ; 9 uses
  %.0130368 = phi double [ %.1131, %bb.dh ], [ %i.db, %_ZN7testing15AssertionResultD2Ev.exit266 ]
  %.0133367 = phi double [ %.1134, %bb.dh ], [ %i.fy, %_ZN7testing15AssertionResultD2Ev.exit266 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #24
  %i.jb = fcmp ult double %i.ja, 0.000000e+00
  br i1 %i.jb, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph
  %i.jc = fcmp ult double %i.ja, f0x43E0000000000000
  br i1 %i.jc, label %bb.ck, label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit280

bb.ck:                                            ; preds = %bb.cj
  %i.jd = fptosi double %i.ja to i64              ; 2 uses
  %i.je = sitofp i64 %i.jd to double
  %i.jf = fsub nnan double %i.ja, %i.je
  %i.jg = fmul nnan double %i.jf, 4.000000e+09
  %i.jh = call double @llvm.round.f64(double %i.jg)
  %i.ji = fptoui double %i.jh to i32              ; 3 uses
  %i.jj = icmp ugt i32 %i.ji, -294967297          ; 2 uses
  %i.jk = add nsw i32 %i.ji, 294967296
  %i.jl = zext i1 %i.jj to i64
  %.pn17.i.i268 = add nuw nsw i64 %i.jl, %i.jd
  %.pn15.i.i269 = select i1 %i.jj, i32 %i.jk, i32 %i.ji
  %.fca.0.insert.i.pn.i.i270 = insertvalue { i64, i32 } poison, i64 %.pn17.i.i268, 0
  %.pn.i.i271 = insertvalue { i64, i32 } %.fca.0.insert.i.pn.i.i270, i32 %.pn15.i.i269, 1
  br label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit280

bb.cl:                                            ; preds = %.lr.ph
  %i.jm = fcmp ord double %i.ja, 0.000000e+00
  %i.jn = fcmp ugt double %i.ja, f0xC3E0000000000000
  %or.cond.i272 = and i1 %i.jm, %i.jn
  br i1 %or.cond.i272, label %bb.cm, label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit280

bb.cm:                                            ; preds = %bb.cl
  %i.jo = fneg double %i.ja                       ; 2 uses
  %i.jp = fptosi double %i.jo to i64              ; 2 uses
  %i.jq = sitofp i64 %i.jp to double
  %i.jr = fsub nnan double %i.jo, %i.jq
  %i.js = fmul nnan double %i.jr, 4.000000e+09
  %i.jt = call double @llvm.round.f64(double %i.js)
  %i.ju = fptoui double %i.jt to i32              ; 3 uses
  %i.jv = icmp ugt i32 %i.ju, -294967297          ; 2 uses
  %i.jw = add nsw i32 %i.ju, 294967296
  %i.jx = zext i1 %i.jv to i64
  %.pn17.i58.i273 = add nuw nsw i64 %i.jx, %i.jp  ; 2 uses
  %.pn15.i59.i274 = select i1 %i.jv, i32 %i.jw, i32 %i.ju ; 2 uses
  switch i32 %.pn15.i59.i274, label %bb.co [
    i32 0, label %bb.cn
    i32 -1, label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit280
  ]

bb.cn:                                            ; preds = %bb.cm
  %i.jy = sub nsw i64 0, %.pn17.i58.i273
  %.fca.0.insert.i.i64.i276 = insertvalue { i64, i32 } poison, i64 %i.jy, 0
  %.fca.1.insert.i.i65.i277 = insertvalue { i64, i32 } %.fca.0.insert.i.i64.i276, i32 0, 1
  br label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit280

bb.co:                                            ; preds = %bb.cm
  %i.jz = xor i64 %.pn17.i58.i273, -1
  %i.ka = sub i32 -294967296, %.pn15.i59.i274
  %.fca.0.insert.i.i.i66.i278 = insertvalue { i64, i32 } poison, i64 %i.jz, 0
  %.fca.1.insert.i.i.i67.i279 = insertvalue { i64, i32 } %.fca.0.insert.i.i.i66.i278, i32 %i.ka, 1
  br label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit280

_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit280: ; preds = %bb.cj, %bb.ck, %bb.cl, %bb.cm, %bb.cn, %bb.co
  %.pn.i266 = phi { i64, i32 } [ %.fca.1.insert.i.i65.i277, %bb.cn ], [ %.pn.i.i271, %bb.ck ], [ { i64 9223372036854775807, i32 -1 }, %bb.cj ], [ { i64 -9223372036854775808, i32 -1 }, %bb.cl ], [ %.fca.1.insert.i.i.i67.i279, %bb.co ], [ { i64 -9223372036854775808, i32 -1 }, %bb.cm ] ; 2 uses
  %.fca.0.extract = extractvalue { i64, i32 } %.pn.i266, 0 ; 3 uses
  %.fca.1.extract = extractvalue { i64, i32 } %.pn.i266, 1 ; 3 uses
  store i64 %.fca.0.extract, ptr %32, align 8
  store i32 %.fca.1.extract, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.03.0.copyload = load i64, ptr %15, align 8
  %.sroa.24.0.copyload = load i32, ptr %.sroa.262.0..sroa_idx, align 8, !tbaa !50
  %i.kb = icmp eq i64 %.fca.0.extract, %.sroa.03.0.copyload
  %i.kc = icmp eq i32 %.fca.1.extract, %.sroa.24.0.copyload
  %spec.select.i = select i1 %i.kb, i1 %i.kc, i1 false
  br i1 %spec.select.i, label %bb.dh, label %bb.cp

bb.cp:                                            ; preds = %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit280
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #24
  %.sroa.03.0.copyload.i.i284 = load i64, ptr %16, align 8, !noalias !2993
  %.sroa.24.0.copyload.i.i286 = load i32, ptr %.sroa.254.0..sroa_idx, align 8, !tbaa !50, !noalias !2993
  %i.kd = icmp eq i64 %.fca.0.extract, %.sroa.03.0.copyload.i.i284
  %i.ke = icmp eq i32 %.fca.1.extract, %.sroa.24.0.copyload.i.i286
  %spec.select.i.i.i287 = select i1 %i.kd, i1 %i.ke, i1 false
  br i1 %spec.select.i.i.i287, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %33)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit288

bb.cr:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24, !noalias !2994
  call void @_ZN7testing13PrintToStringIN4absl12lts_202605268DurationEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 4 dereferenceable(12) %32), !noalias !2994
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !2994
  invoke void @_ZN7testing13PrintToStringIN4absl12lts_202605268DurationEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 4 dereferenceable(12) %16)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_202605268DurationES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i341 unwind label %bb.ct, !noalias !2994

_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_202605268DurationES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i341: ; preds = %bb.cr
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %33, ptr noundef nonnull @.str.1023, ptr noundef nonnull @.str.1018, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
          to label %bb.cs unwind label %bb.cu

bb.cs:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_202605268DurationES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i341
  %i.kf = load ptr, ptr %2, align 8, !tbaa !46, !noalias !2994 ; 2 uses
  %i.kg = icmp eq ptr %i.kf, %i.m
  br i1 %i.kg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i345, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i344

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i344: ; preds = %bb.cs
  %i.kh = load i64, ptr %i.m, align 8, !tbaa !49, !noalias !2994
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.ki) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i345

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i345: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i344
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !2994
  %i.kj = load ptr, ptr %1, align 8, !tbaa !46, !noalias !2994 ; 2 uses
  %i.kk = icmp eq ptr %i.kj, %i.n
  br i1 %i.kk, label %_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_.exit349, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i346

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i346: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i345
  %i.kl = load i64, ptr %i.n, align 8, !tbaa !49, !noalias !2994
  %i.km = add i64 %i.kl, 1
  call void @_ZdlPvm(ptr noundef %i.kj, i64 noundef %i.km) #26
  br label %_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_.exit349

bb.ct:                                            ; preds = %bb.cr
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i336

bb.cu:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_202605268DurationES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i341
  %i.ko = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kp = load ptr, ptr %2, align 8, !tbaa !46, !noalias !2994 ; 2 uses
  %i.kq = icmp eq ptr %i.kp, %i.m
  br i1 %i.kq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i336, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i342

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i342: ; preds = %bb.cu
  %i.kr = load i64, ptr %i.m, align 8, !tbaa !49, !noalias !2994
  %i.ks = add i64 %i.kr, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.ks) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i336

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i336: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i342, %bb.ct
  %.pn.i337 = phi { ptr, i32 } [ %i.kn, %bb.ct ], [ %i.ko, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i342 ], [ %i.ko, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !2994
  %i.kt = load ptr, ptr %1, align 8, !tbaa !46, !noalias !2994 ; 2 uses
  %i.ku = icmp eq ptr %i.kt, %i.n
  br i1 %i.ku, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i339, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i338

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i338: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i336
  %i.kv = load i64, ptr %i.n, align 8, !tbaa !49, !noalias !2994
  %i.kw = add i64 %i.kv, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i339

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i339: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i336, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i338
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24, !noalias !2994
  br label %common.resume

_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_.exit349: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i345, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i346
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24, !noalias !2994
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit288

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit288: ; preds = %bb.cq, %_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_.exit349
  %i.kx = load i8, ptr %33, align 8, !tbaa !40, !range !41, !noundef !51
  %i.ky = trunc nuw i8 %i.kx to i1
  br i1 %i.ky, label %bb.df, label %bb.cv

bb.cv:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit288
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %bb.cw unwind label %bb.da

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #24
  %i.kz = load ptr, ptr %i.o, align 8, !tbaa !42  ; 2 uses
  %.not.i.i289.a = icmp eq ptr %i.kz, null
  br i1 %.not.i.i289.a, label %_ZNK7testing15AssertionResult15failure_messageEv.exit290, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !46
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit290

_ZNK7testing15AssertionResult15failure_messageEv.exit290: ; preds = %bb.cx, %bb.cw
  %i.lb = phi ptr [ %i.la, %bb.cx ], [ @.str.113, %bb.cw ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %35, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1501, ptr noundef %i.lb)
          to label %bb.cy unwind label %bb.db

bb.cy:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit290
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %bb.cz unwind label %bb.dc

bb.cz:                                            ; preds = %bb.cy
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  %i.lc = load ptr, ptr %34, align 8, !tbaa !48   ; 3 uses
  %.not.i.i291 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i291, label %_ZN7testing7MessageD2Ev.exit293, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i292

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i292: ; preds = %bb.cz
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !19
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lf = load ptr, ptr %i.le, align 8
  call void %i.lf(ptr noundef nonnull align 8 dereferenceable(128) %i.lc) #24, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit293

_ZN7testing7MessageD2Ev.exit293:                  ; preds = %bb.cz, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i292
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24
  br label %bb.df

bb.da:                                            ; preds = %bb.cv
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit296

bb.db:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit290
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.dc:                                            ; preds = %bb.cy
  %i.li = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #24
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.pn149 = phi { ptr, i32 } [ %i.li, %bb.dc ], [ %i.lh, %bb.db ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  %i.lj = load ptr, ptr %34, align 8, !tbaa !48   ; 3 uses
  %.not.i.i294 = icmp eq ptr %i.lj, null
  br i1 %.not.i.i294, label %_ZN7testing7MessageD2Ev.exit296, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i295

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i295: ; preds = %bb.dd
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !19
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8
  call void %i.lm(ptr noundef nonnull align 8 dereferenceable(128) %i.lj) #24, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit296

_ZN7testing7MessageD2Ev.exit296:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i295, %bb.dd, %bb.da
  %.pn149.pn = phi { ptr, i32 } [ %i.lg, %bb.da ], [ %.pn149, %bb.dd ], [ %.pn149, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i295 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24
  %i.ln = load ptr, ptr %i.o, align 8, !tbaa !42  ; 4 uses
  %.not.i.i297 = icmp eq ptr %i.ln, null
  br i1 %.not.i.i297, label %_ZN7testing15AssertionResultD2Ev.exit301, label %bb.de

bb.de:                                            ; preds = %_ZN7testing7MessageD2Ev.exit296
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !46 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 16 ; 2 uses
  %i.lq = icmp eq ptr %i.lo, %i.lp
  br i1 %i.lq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i299, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i298

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i298: ; preds = %bb.de
  %i.lr = load i64, ptr %i.lp, align 8, !tbaa !49
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %i.lo, i64 noundef %i.ls) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i299

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i299: ; preds = %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i298
  call void @_ZdlPvm(ptr noundef nonnull %i.ln, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit301

_ZN7testing15AssertionResultD2Ev.exit301:         ; preds = %_ZN7testing7MessageD2Ev.exit296, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i299
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  br label %bb.di

bb.df:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit288, %_ZN7testing7MessageD2Ev.exit293
  %i.lt = load ptr, ptr %i.o, align 8, !tbaa !42  ; 4 uses
  %.not.i.i302 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i302, label %_ZN7testing15AssertionResultD2Ev.exit306, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !46 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 16 ; 2 uses
  %i.lw = icmp eq ptr %i.lu, %i.lv
  br i1 %i.lw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i304, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i303

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i303: ; preds = %bb.dg
  %i.lx = load i64, ptr %i.lv, align 8, !tbaa !49
  %i.ly = add i64 %i.lx, 1
  call void @_ZdlPvm(ptr noundef %i.lu, i64 noundef %i.ly) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i304

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i304: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i303
  call void @_ZdlPvm(ptr noundef nonnull %i.lt, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit306

_ZN7testing15AssertionResultD2Ev.exit306:         ; preds = %bb.df, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i304
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  br label %bb.dh

bb.dh:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit306, %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit280
  %.1134 = phi double [ %i.ja, %_ZN7testing15AssertionResultD2Ev.exit306 ], [ %.0133367, %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit280 ] ; 4 uses
  %.1131 = phi double [ %.0130368, %_ZN7testing15AssertionResultD2Ev.exit306 ], [ %i.ja, %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit280 ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  %i.lz = fsub double %.1134, %.1131
  %i.ma = fmul double %i.lz, 5.000000e-01
  %i.mb = fadd double %.1131, %i.ma               ; 3 uses
  %i.mc = fcmp oeq double %i.mb, %.1131
  %i.md = fcmp oeq double %i.mb, %.1134
  %or.cond = or i1 %i.mc, %i.md
  br i1 %or.cond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.dh, %_ZN7testing15AssertionResultD2Ev.exit266
  %.0133.lcssa = phi double [ %i.fy, %_ZN7testing15AssertionResultD2Ev.exit266 ], [ %.1134, %bb.dh ]
  %.0130.lcssa = phi double [ %i.db, %_ZN7testing15AssertionResultD2Ev.exit266 ], [ %.1131, %bb.dh ]
  call fastcc void @_ZN12_GLOBAL__N_121VerifyApproxSameAsMulEdPi(double noundef %.0130.lcssa, ptr noundef %i.a)
  call fastcc void @_ZN12_GLOBAL__N_121VerifyApproxSameAsMulEdPi(double noundef %.0133.lcssa, ptr noundef %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %.0115.add = add nuw nsw i64 %.0115.idx370, 12  ; 2 uses
  %.not137 = icmp eq i64 %.0115.add, 24
  br i1 %.not137, label %bb.i, label %bb.j

bb.di:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit221, %_ZN7testing15AssertionResultD2Ev.exit301, %_ZN7testing15AssertionResultD2Ev.exit261, %_ZN7testing15AssertionResultD2Ev.exit194, %_ZN7testing15AssertionResultD2Ev.exit
  %.pn149.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing15AssertionResultD2Ev.exit ], [ %.pn140.pn, %_ZN7testing15AssertionResultD2Ev.exit194 ], [ %.pn143.pn, %_ZN7testing15AssertionResultD2Ev.exit221 ], [ %.pn149.pn, %_ZN7testing15AssertionResultD2Ev.exit301 ], [ %.pn146.pn, %_ZN7testing15AssertionResultD2Ev.exit261 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_121VerifyApproxSameAsMulEdPi(double noundef %0, ptr noundef nonnull %1) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::Duration", align 8 ; 5 uses
  %3 = alloca %"class.absl::lts_20260526::Duration", align 8 ; 5 uses
  %4 = alloca %"class.absl::lts_20260526::Duration", align 8 ; 6 uses
  %5 = alloca %"class.absl::lts_20260526::Duration", align 8 ; 6 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"class.testing::Message", align 8  ; 8 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %10 = alloca %"class.testing::Message", align 8 ; 9 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.b = fcmp ult double %0, 0.000000e+00
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp ult double %0, f0x43E0000000000000
  br i1 %i.c, label %bb.c, label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit

bb.c:                                             ; preds = %bb.b
  %i.d = fptosi double %0 to i64                  ; 2 uses
  %i.e = sitofp i64 %i.d to double
  %i.f = fsub nnan double %0, %i.e
  %i.g = fmul nnan double %i.f, 4.000000e+09
  %i.h = tail call double @llvm.round.f64(double %i.g)
  %i.i = fptoui double %i.h to i32                ; 3 uses
  %i.j = icmp ugt i32 %i.i, -294967297            ; 2 uses
  %i.k = add nsw i32 %i.i, 294967296
  %i.l = zext i1 %i.j to i64
  %.pn17.i.i = add nuw nsw i64 %i.l, %i.d
  %.pn15.i.i = select i1 %i.j, i32 %i.k, i32 %i.i
  %.fca.0.insert.i.pn.i.i = insertvalue { i64, i32 } poison, i64 %.pn17.i.i, 0
  %.pn.i.i = insertvalue { i64, i32 } %.fca.0.insert.i.pn.i.i, i32 %.pn15.i.i, 1
  br label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit

bb.d:                                             ; preds = %bb.a
  %i.m = fcmp ord double %0, 0.000000e+00
  %i.n = fcmp ugt double %0, f0xC3E0000000000000
  %or.cond.i = and i1 %i.m, %i.n
  br i1 %or.cond.i, label %bb.e, label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit

bb.e:                                             ; preds = %bb.d
  %i.o = fneg double %0                           ; 2 uses
  %i.p = fptosi double %i.o to i64                ; 2 uses
  %i.q = sitofp i64 %i.p to double
  %i.r = fsub nnan double %i.o, %i.q
  %i.s = fmul nnan double %i.r, 4.000000e+09
  %i.t = tail call double @llvm.round.f64(double %i.s)
  %i.u = fptoui double %i.t to i32                ; 3 uses
  %i.v = icmp ugt i32 %i.u, -294967297            ; 2 uses
  %i.w = add nsw i32 %i.u, 294967296
  %i.x = zext i1 %i.v to i64
  %.pn17.i58.i = add nuw nsw i64 %i.x, %i.p       ; 2 uses
  %.pn15.i59.i = select i1 %i.v, i32 %i.w, i32 %i.u ; 2 uses
  switch i32 %.pn15.i59.i, label %bb.g [
    i32 0, label %bb.f
    i32 -1, label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit
  ]

bb.f:                                             ; preds = %bb.e
  %i.y = sub nsw i64 0, %.pn17.i58.i
  %.fca.0.insert.i.i64.i = insertvalue { i64, i32 } poison, i64 %i.y, 0
  %.fca.1.insert.i.i65.i = insertvalue { i64, i32 } %.fca.0.insert.i.i64.i, i32 0, 1
  br label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit

bb.g:                                             ; preds = %bb.e
  %i.z = xor i64 %.pn17.i58.i, -1
  %i.aa = sub i32 -294967296, %.pn15.i59.i
  %.fca.0.insert.i.i.i66.i = insertvalue { i64, i32 } poison, i64 %i.z, 0
  %.fca.1.insert.i.i.i67.i = insertvalue { i64, i32 } %.fca.0.insert.i.i.i66.i, i32 %i.aa, 1
  br label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit

_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.pn.i = phi { i64, i32 } [ %.fca.1.insert.i.i65.i, %bb.f ], [ %.pn.i.i, %bb.c ], [ { i64 9223372036854775807, i32 -1 }, %bb.b ], [ { i64 -9223372036854775808, i32 -1 }, %bb.d ], [ %.fca.1.insert.i.i.i67.i, %bb.g ], [ { i64 -9223372036854775808, i32 -1 }, %bb.e ] ; 2 uses
  %.fca.0.extract42 = extractvalue { i64, i32 } %.pn.i, 0 ; 3 uses
  %.fca.1.extract43 = extractvalue { i64, i32 } %.pn.i, 1 ; 3 uses
  store i64 %.fca.0.extract42, ptr %4, align 8
  %.sroa.245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract43, ptr %.sroa.245.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 1, ptr %3, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %.sroa.22.0..sroa_idx.i, align 8
  %i.ab = call noundef nonnull align 4 dereferenceable(12) ptr @_ZN4absl12lts_202605268DurationmLEd(ptr noundef nonnull align 4 dereferenceable(12) %3, double noundef %0) #24 ; 2 uses
  %.sroa.03.0.copyload.i = load i64, ptr %i.ab, align 4 ; 3 uses
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.24.0.copyload.i = load i32, ptr %.sroa.24.0..sroa_idx.i, align 4, !tbaa !50 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store i64 %.sroa.03.0.copyload.i, ptr %5, align 8
  %.sroa.233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.sroa.24.0.copyload.i, ptr %.sroa.233.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.fca.0.extract42, ptr %2, align 8
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.fca.1.extract43, ptr %.sroa.210.0..sroa_idx.i, align 8
  %i.ac = call noundef nonnull align 4 dereferenceable(12) ptr @_ZN4absl12lts_202605268DurationmIES1_(ptr noundef nonnull align 4 dereferenceable(12) %2, i64 %.sroa.03.0.copyload.i, i32 %.sroa.24.0.copyload.i) #24 ; 2 uses
  %.sroa.011.0.copyload.i = load i64, ptr %i.ac, align 4 ; 5 uses
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.212.0.copyload.i = load i32, ptr %.sroa.212.0..sroa_idx.i, align 4, !tbaa !50 ; 3 uses
  %.fca.0.insert.i66 = insertvalue { i64, i32 } poison, i64 %.sroa.011.0.copyload.i, 0
  %.fca.1.insert.i67 = insertvalue { i64, i32 } %.fca.0.insert.i66, i32 %.sroa.212.0.copyload.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ad = icmp slt i64 %.sroa.011.0.copyload.i, 0
  br i1 %i.ad, label %bb.h, label %_ZN4absl12lts_2026052611AbsDurationENS0_8DurationE.exit

bb.h:                                             ; preds = %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit
  switch i32 %.sroa.212.0.copyload.i, label %bb.k [
    i32 0, label %bb.i
    i32 -1, label %_ZN4absl12lts_2026052611AbsDurationENS0_8DurationE.exit
  ]

bb.i:                                             ; preds = %bb.h
  %i.ae = icmp eq i64 %.sroa.011.0.copyload.i, -9223372036854775808
  br i1 %i.ae, label %_ZN4absl12lts_2026052611AbsDurationENS0_8DurationE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = sub nsw i64 0, %.sroa.011.0.copyload.i
  %.fca.0.insert.i.i.i = insertvalue { i64, i32 } poison, i64 %i.af, 0
  %.fca.1.insert.i.i.i = insertvalue { i64, i32 } %.fca.0.insert.i.i.i, i32 0, 1
  br label %_ZN4absl12lts_2026052611AbsDurationENS0_8DurationE.exit

bb.k:                                             ; preds = %bb.h
  %i.ag = xor i64 %.sroa.011.0.copyload.i, -1
  %i.ah = sub i32 -294967296, %.sroa.212.0.copyload.i
  %.fca.0.insert.i.i.i.i = insertvalue { i64, i32 } poison, i64 %i.ag, 0
  %.fca.1.insert.i.i.i.i = insertvalue { i64, i32 } %.fca.0.insert.i.i.i.i, i32 %i.ah, 1
  br label %_ZN4absl12lts_2026052611AbsDurationENS0_8DurationE.exit

_ZN4absl12lts_2026052611AbsDurationENS0_8DurationE.exit: ; preds = %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit, %bb.h, %bb.i, %bb.j, %bb.k
  %.fca.1.insert.merged.i = phi { i64, i32 } [ { i64 9223372036854775807, i32 -1 }, %bb.h ], [ %.fca.1.insert.i.i.i.i, %bb.k ], [ %.fca.1.insert.i.i.i, %bb.j ], [ { i64 9223372036854775807, i32 -1 }, %bb.i ], [ %.fca.1.insert.i67, %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit ] ; 2 uses
  %.fca.0.extract8 = extractvalue { i64, i32 } %.fca.1.insert.merged.i, 0 ; 2 uses
  %.not.i.i = icmp eq i64 %.fca.0.extract8, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_20260526gtENS0_8DurationES1_.exit, label %.split

.split:                                           ; preds = %_ZN4absl12lts_2026052611AbsDurationENS0_8DurationE.exit
  %i.ai = icmp sgt i64 %.fca.0.extract8, 0
  br i1 %i.ai, label %bb.l, label %bb.au

_ZN4absl12lts_20260526gtENS0_8DurationES1_.exit:  ; preds = %_ZN4absl12lts_2026052611AbsDurationENS0_8DurationE.exit
  %.fca.1.extract9 = extractvalue { i64, i32 } %.fca.1.insert.merged.i, 1
  %i.aj = icmp ugt i32 %.fca.1.extract9, 1
  br i1 %i.aj, label %bb.l, label %bb.au

bb.l:                                             ; preds = %.split, %_ZN4absl12lts_20260526gtENS0_8DurationES1_.exit
  %i.ak = load i32, ptr %1, align 4, !tbaa !50    ; 3 uses
  %i.al = icmp sgt i32 %i.ak, 10
  br i1 %i.al, label %bb.au, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.am = add nsw i32 %i.ak, 1
  store i32 %i.am, ptr %1, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 10, ptr %i.a, align 4, !tbaa !50
  %.not.i = icmp eq i32 %i.ak, 10
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6)
  br label %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit

bb.o:                                             ; preds = %bb.m
  call void @_ZN7testing8internal18CmpHelperOpFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.1024, ptr noundef nonnull @.str.1025, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull @.str.1030)
  br label %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit

_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.an = load i8, ptr %6, align 8, !tbaa !40, !range !41, !noundef !51
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %.critedge, label %bb.p

bb.p:                                             ; preds = %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.ap = load ptr, ptr %7, align 8, !tbaa !48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.1026, i64 noundef 36)
          to label %_ZN7testing7MessagelsIA37_cEERS0_RKT_.exit unwind label %bb.w ; 0 uses

_ZN7testing7MessagelsIA37_cEERS0_RKT_.exit:       ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !42 ; 2 uses
  %.not.i.i68 = icmp eq ptr %i.at, null
  br i1 %.not.i.i68, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.r

bb.r:                                             ; preds = %_ZN7testing7MessagelsIA37_cEERS0_RKT_.exit
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !46
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.r, %_ZN7testing7MessagelsIA37_cEERS0_RKT_.exit
  %i.av = phi ptr [ %i.au, %bb.r ], [ @.str.113, %_ZN7testing7MessagelsIA37_cEERS0_RKT_.exit ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1449, ptr noundef %i.av)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %bb.s
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.aw = load ptr, ptr %7, align 8, !tbaa !48    ; 3 uses
  %.not.i.i69 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i69, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #24, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.t, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.ba = load ptr, ptr %i.as, align 8, !tbaa !42 ; 4 uses
  %.not.i.i70 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i70, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !46 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.u
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !49
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.au

bb.v:                                             ; preds = %bb.p
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit73

bb.w:                                             ; preds = %bb.q
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.x:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.s
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #24
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.y ], [ %i.bi, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.z ], [ %i.bh, %bb.w ] ; 2 uses
  %i.bk = load ptr, ptr %7, align 8, !tbaa !48    ; 3 uses
  %.not.i.i71 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i71, label %_ZN7testing7MessageD2Ev.exit73, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i72
end_hunk_1
