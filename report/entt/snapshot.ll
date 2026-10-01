Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/snapshot?download=true
inline.NumInlined: 7869
inline.NumDeleted: 2294
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN44BasicSnapshotLoader_GetTypeWithListener_Test8TestBodyEv:bb.a

bb.bf:                                            ; preds = %bb.bd
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4entt6entityES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %19, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit120 unwind label %bb.bg

_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit120: ; preds = %bb.be, %bb.bf
  %i.ij = load i8, ptr %19, align 8, !tbaa !120, !range !121, !noundef !122
  %i.ik = trunc nuw i8 %i.ij to i1
  br i1 %i.ik, label %bb.bq, label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bh:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit120
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bi unwind label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  %i.im = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !123 ; 2 uses
  %.not.i.i.i121 = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i121, label %_ZNK7testing15AssertionResult15failure_messageEv.exit122, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !81
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit122

_ZNK7testing15AssertionResult15failure_messageEv.exit122: ; preds = %bb.bj, %bb.bi
  %i.ip = phi ptr [ %i.io, %bb.bj ], [ @.str.67, %bb.bi ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 522, ptr noundef %i.ip)
          to label %bb.bk unwind label %bb.bn

bb.bk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit122
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bl unwind label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %i.iq = load ptr, ptr %20, align 8, !tbaa !84   ; 3 uses
  %.not.i.i123 = icmp eq ptr %i.iq, null
  br i1 %.not.i.i123, label %_ZN7testing7MessageD2Ev.exit125, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124: ; preds = %bb.bl
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !64
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = load ptr, ptr %i.is, align 8
  call void %i.it(ptr noundef nonnull align 8 dereferenceable(128) %i.iq) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit125

_ZN7testing7MessageD2Ev.exit125:                  ; preds = %bb.bl, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.bq

bb.bm:                                            ; preds = %bb.bh
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit128

bb.bn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit122
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bk
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #26
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn39 = phi { ptr, i32 } [ %i.iw, %bb.bo ], [ %i.iv, %bb.bn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %i.ix = load ptr, ptr %20, align 8, !tbaa !84   ; 3 uses
  %.not.i.i126 = icmp eq ptr %i.ix, null
  br i1 %.not.i.i126, label %_ZN7testing7MessageD2Ev.exit128, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i127

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i127: ; preds = %bb.bp
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8
  call void %i.ja(ptr noundef nonnull align 8 dereferenceable(128) %i.ix) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit128

_ZN7testing7MessageD2Ev.exit128:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i127, %bb.bp, %bb.bm
  %.pn39.pn = phi { ptr, i32 } [ %i.iu, %bb.bm ], [ %.pn39, %bb.bp ], [ %.pn39, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i127 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #26
  br label %bb.bw

bb.bq:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit120, %_ZN7testing7MessageD2Ev.exit125
  %i.jb = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !123 ; 4 uses
  %.not.i.i129 = icmp eq ptr %i.jc, null
  br i1 %.not.i.i129, label %_ZN7testing15AssertionResultD2Ev.exit133, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !81 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 16 ; 2 uses
  %i.jf = icmp eq ptr %i.jd, %i.je
  br i1 %i.jf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i130: ; preds = %bb.br
  %i.jg = load i64, ptr %i.je, align 8, !tbaa !82
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jh) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i131

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i131: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i130
  call void @_ZdlPvm(ptr noundef nonnull %i.jc, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit133

_ZN7testing15AssertionResultD2Ev.exit133:         ; preds = %bb.bq, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.bs

bb.bs:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit106, %_ZN7testing15AssertionResultD2Ev.exit68, %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing15AssertionResultD2Ev.exit133
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.ji = load ptr, ptr %4, align 8, !tbaa !109   ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !108 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ji, %i.jk
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4entt9basic_anyILm16ELm8EEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i134

.lr.ph.i.i.i134:                                  ; preds = %bb.bs, %_ZSt8_DestroyIN4entt9basic_anyILm16ELm8EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.jp, %_ZSt8_DestroyIN4entt9basic_anyILm16ELm8EEEEvPT_.exit.i.i.i ], [ %i.ji, %bb.bs ] ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !164 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.jm, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4entt9basic_anyILm16ELm8EEEEvPT_.exit.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph.i.i.i134
  invoke void %i.jm(ptr noundef nonnull align 8 dereferenceable(37) %.05.i.i.i)
          to label %_ZSt8_DestroyIN4entt9basic_anyILm16ELm8EEEEvPT_.exit.i.i.i unwind label %bb.bu, !inline_history !5

bb.bu:                                            ; preds = %bb.bt
  %i.jn = landingpad { ptr, i32 }
          catch ptr null
  %i.jo = extractvalue { ptr, i32 } %i.jn, 0
  call void @__clang_call_terminate(ptr %i.jo) #28
  unreachable

_ZSt8_DestroyIN4entt9basic_anyILm16ELm8EEEEvPT_.exit.i.i.i: ; preds = %bb.bt, %.lr.ph.i.i.i134
  %i.jp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i135 = icmp eq ptr %i.jp, %i.jk
  br i1 %.not.i.i.i135, label %_ZSt8_DestroyIPN4entt9basic_anyILm16ELm8EEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i134, !llvm.loop !6

_ZSt8_DestroyIPN4entt9basic_anyILm16ELm8EEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4entt9basic_anyILm16ELm8EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !109
  br label %_ZSt8_DestroyIPN4entt9basic_anyILm16ELm8EEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4entt9basic_anyILm16ELm8EEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4entt9basic_anyILm16ELm8EEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.bs
  %i.jq = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4entt9basic_anyILm16ELm8EEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.ji, %bb.bs ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.jq, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4entt9basic_anyILm16ELm8EEESaIS2_EED2Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %_ZSt8_DestroyIPN4entt9basic_anyILm16ELm8EEES2_EvT_S4_RSaIT0_E.exit.i
  %i.jr = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !166
  %i.jt = ptrtoint ptr %i.js to i64
  %i.ju = ptrtoint ptr %i.jq to i64
  %i.jv = sub i64 %i.jt, %i.ju
  call void @_ZdlPvm(ptr noundef nonnull %i.jq, i64 noundef %i.jv) #27
  br label %_ZNSt6vectorIN4entt9basic_anyILm16ELm8EEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4entt9basic_anyILm16ELm8EEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4entt9basic_anyILm16ELm8EEES2_EvT_S4_RSaIT0_E.exit.i, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.bw:                                            ; preds = %_ZN7testing7MessageD2Ev.exit128, %bb.bg
  %.pn39.pn.pn = phi { ptr, i32 } [ %.pn39.pn, %_ZN7testing7MessageD2Ev.exit128 ], [ %i.il, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.bw, %_ZN7testing7MessageD2Ev.exit112, %bb.ar, %bb.aq, %bb.an, %_ZN7testing7MessageD2Ev.exit54
  %.pn39.pn.pn.pn = phi { ptr, i32 } [ %.pn39.pn.pn, %bb.bw ], [ %.pn35.pn.pn, %_ZN7testing7MessageD2Ev.exit112 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit54 ], [ %i.hb, %bb.ar ], [ %.pn33, %bb.aq ], [ %.pn29.pn.pn, %bb.an ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit146, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit149, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @_ZNSt6vectorIN4entt9basic_anyILm16ELm8EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn39.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIN18SnapshotCommonBase6shadowEEEEE7connectITnDaXadL_ZNS9_8listenerERS3_S6_S3_EES3_EENS_10connectionERT0_(ptr dead_on_unwind noalias writable sret(%"class.entt::connection") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !571    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !163  ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !159  ; 3 uses
  %.not9.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not9.i.i, label %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIN18SnapshotCommonBase6shadowEEEEE10disconnectITnDaXadL_ZNS9_8listenerERS3_S6_S3_EES3_EEvRT0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = sub i64 %i.f, %i.e
  %i.h = ashr exact i64 %i.g, 4
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %i.t, %bb.d ] ; 2 uses
  %3 = phi ptr [ %i.d, %.lr.ph.i.i ], [ %5, %bb.d ] ; 2 uses
  %.010.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ %4, %bb.d ]
  %4 = add i64 %.010.i.i, -1                      ; 3 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %4 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !161
  %i.m = icmp eq ptr %i.l, @_ZZN4entt8delegateIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_EE7connectITnDaXadL_ZN18SnapshotCommonBase6shadow8listenerERS2_S5_S2_EES2_EEvRT0_ENUlPKvS5_S2_E_8__invokeESF_S5_S2_
  %i.n = load ptr, ptr %i.j, align 8
  %i.o = icmp eq ptr %i.n, %2
  %i.p = select i1 %i.m, i1 %i.o, i1 false
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds i8, ptr %i.i, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !259
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !163
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -16 ; 2 uses
  store ptr %i.s, ptr %i.b, align 8, !tbaa !163
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !159
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = phi ptr [ %i.s, %bb.c ], [ %i.i, %bb.b ]
  %5 = phi ptr [ %.pre.i.i, %bb.c ], [ %3, %bb.b ]
  %.not.i.i = icmp eq i64 %4, 0
  br i1 %.not.i.i, label %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIN18SnapshotCommonBase6shadowEEEEE10disconnectITnDaXadL_ZNS9_8listenerERS3_S6_S3_EES3_EEvRT0_.exit.loopexit, label %bb.b, !llvm.loop !19

_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIN18SnapshotCommonBase6shadowEEEEE10disconnectITnDaXadL_ZNS9_8listenerERS3_S6_S3_EES3_EEvRT0_.exit.loopexit: ; preds = %bb.d
  %.pre = load ptr, ptr %1, align 8, !tbaa !571   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre9 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !163
  br label %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIN18SnapshotCommonBase6shadowEEEEE10disconnectITnDaXadL_ZNS9_8listenerERS3_S6_S3_EES3_EEvRT0_.exit

_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIN18SnapshotCommonBase6shadowEEEEE10disconnectITnDaXadL_ZNS9_8listenerERS3_S6_S3_EES3_EEvRT0_.exit: ; preds = %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIN18SnapshotCommonBase6shadowEEEEE10disconnectITnDaXadL_ZNS9_8listenerERS3_S6_S3_EES3_EEvRT0_.exit.loopexit, %bb.a
  %i.u = phi ptr [ %.pre9, %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIN18SnapshotCommonBase6shadowEEEEE10disconnectITnDaXadL_ZNS9_8listenerERS3_S6_S3_EES3_EEvRT0_.exit.loopexit ], [ %i.c, %bb.a ] ; 6 uses
  %i.v = phi ptr [ %.pre, %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIN18SnapshotCommonBase6shadowEEEEE10disconnectITnDaXadL_ZNS9_8listenerERS3_S6_S3_EES3_EEvRT0_.exit.loopexit ], [ %i.a, %bb.a ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !260
  %.not.i.i4 = icmp eq ptr %i.u, %i.y
  br i1 %.not.i.i4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIN18SnapshotCommonBase6shadowEEEEE10disconnectITnDaXadL_ZNS9_8listenerERS3_S6_S3_EES3_EEvRT0_.exit
  store ptr %2, ptr %i.u, align 8, !tbaa !165
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_ZZN4entt8delegateIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_EE7connectITnDaXadL_ZN18SnapshotCommonBase6shadow8listenerERS2_S5_S2_EES2_EEvRT0_ENUlPKvS5_S2_E_8__invokeESF_S5_S2_, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !165
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !163
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !163
  br label %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE9push_backEOS8_.exit

bb.f:                                             ; preds = %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIN18SnapshotCommonBase6shadowEEEEE10disconnectITnDaXadL_ZNS9_8listenerERS3_S6_S3_EES3_EEvRT0_.exit
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !159 ; 5 uses
  %i.ac = ptrtoint ptr %i.u to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775792
  br i1 %i.af, label %bb.g, label %_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.134) #29
  unreachable

_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ag = ashr exact i64 %i.ae, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 576460752303423487)
  %i.ak = select i1 %i.ai, i64 576460752303423487, i64 %i.aj ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.al = shl nuw nsw i64 %i.ak, 4
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #30 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae ; 2 uses
  store ptr %2, ptr %i.an, align 8, !tbaa !165
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @_ZZN4entt8delegateIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_EE7connectITnDaXadL_ZN18SnapshotCommonBase6shadow8listenerERS2_S5_S2_EES2_EEvRT0_ENUlPKvS5_S2_E_8__invokeESF_S5_S2_, ptr %.sroa.7.0..sroa_idx7, align 8, !tbaa !165
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.u
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %i.am, %_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i ], [ %i.ab, %_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !259, !alias.scope !572
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.u
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !568

_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.am, %_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ap, %.lr.ph.i.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ae) #27
  br label %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i

_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  store ptr %i.am, ptr %i.v, align 8, !tbaa !159
  store ptr %i.aq, ptr %i.w, align 8, !tbaa !163
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.ar, ptr %i.x, align 8, !tbaa !260
  br label %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE9push_backEOS8_.exit

_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE9push_backEOS8_.exit: ; preds = %bb.e, %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i
  %i.as = load ptr, ptr %1, align 8, !tbaa !571
  store ptr %2, ptr %0, align 8, !tbaa !165
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS8_EEES8_ESaIN18SnapshotCommonBase6shadowEEEEE7releaseITnDaXadL_ZNSE_8listenerERS8_SB_S8_EESJ_EEvT0_S1_EES8_EEvRSK_ENUlPKvS1_E_8__invokeESN_S1_, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !165
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.as, ptr %i.at, align 8, !tbaa !575
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN32BasicSnapshotLoader_Orphans_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"class.std::allocator.37", align 1 ; 3 uses
  %2 = alloca %"class.entt::basic_registry", align 8 ; 25 uses
  %3 = alloca %"class.std::vector.48", align 8    ; 24 uses
  %4 = alloca %"struct.std::array.106", align 8   ; 11 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %18 = alloca %"class.testing::Message", align 8 ; 7 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %22 = alloca %"class.testing::Message", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %26 = alloca %"class.testing::Message", align 8 ; 7 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(336) %2, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i64 8589934592, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 3, ptr %i.b, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !173  ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !172  ; 4 uses
  %.not = icmp eq ptr %i.h, %i.i
  br i1 %.not, label %_ZNK4entt14basic_registryINS_6entityESaIS1_EE5validES1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !165  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNK4entt14basic_registryINS_6entityESaIS1_EE5validES1_.exit.thread, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i.i

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i.i: ; preds = %bb.b
  %i.k = load i32, ptr %i.j, align 4, !tbaa !158  ; 2 uses
  %i.l = icmp ult i32 %i.k, 1048575
  br i1 %i.l, label %_ZNK4entt14basic_registryINS_6entityESaIS1_EE5validES1_.exit, label %_ZNK4entt14basic_registryINS_6entityESaIS1_EE5validES1_.exit.thread

_ZNK4entt14basic_registryINS_6entityESaIS1_EE5validES1_.exit.thread: ; preds = %bb.b, %bb.a, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 240
  br label %bb.n

_ZNK4entt14basic_registryINS_6entityESaIS1_EE5validES1_.exit: ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i.i
  %i.n = zext nneg i32 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !146
  %i.q = icmp ule i64 %i.p, %i.n                  ; 2 uses
  %i.r = zext i1 %i.q to i8
  store i8 %i.r, ptr %5, align 8, !tbaa !120
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr null, ptr %i.s, align 8, !tbaa !237
  br i1 %i.q, label %bb.n, label %bb.c

bb.c:                                             ; preds = %_ZNK4entt14basic_registryINS_6entityESaIS1_EE5validES1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %8, align 8, !tbaa !81
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 537, ptr noundef %i.t)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #26
  %i.u = load ptr, ptr %8, align 8, !tbaa !81     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.x = load i64, ptr %i.v, align 8, !tbaa !82
end_hunk_0
begin_hunk_1_@_ZN4entt16basic_sparse_setINS_6entityESaIS1_EED2Ev:bb.a
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPN4entt6entityESaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !301
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #27
  br label %_ZNSt6vectorIPN4entt6entityESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4entt6entityESaIS2_EED2Ev.exit:    ; preds = %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2IN4test8internal10empty_typeEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexIN4test8internal10empty_typeEE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexIN4test8internal10empty_typeEE5valueEv.exit, !prof !310

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexIN4test8internal10empty_typeEE5valueEvE5value) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexIN4test8internal10empty_typeEE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !87 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !87
  store i32 %i.d, ptr @_ZZN4entt10type_indexIN4test8internal10empty_typeEE5valueEvE5value, align 4, !tbaa !87
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexIN4test8internal10empty_typeEE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexIN4test8internal10empty_typeEE5valueEvE5value) #26
  br label %_ZN4entt10type_indexIN4test8internal10empty_typeEE5valueEv.exit

_ZN4entt10type_indexIN4test8internal10empty_typeEE5valueEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexIN4test8internal10empty_typeEE5valueEvE5value, align 4, !tbaa !87
  store i32 %i.g, ptr %0, align 8, !tbaa !316
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -2094409354, ptr %i.h, align 4, !tbaa !317
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 26, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.169, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN4entt16basic_sigh_mixinINS_13basic_storageINS_6entityES2_SaIS2_EEENS_14basic_registryIS2_S3_EEE8generateEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !146  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !133
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !134  ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2
  %i.k = icmp eq i64 %i.b, %i.j
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !240  ; 3 uses
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.n, 1048575                    ; 3 uses
  %i.p = icmp ne i32 %i.o, 1048575
  %i.q = zext i1 %i.p to i64
  %i.r = add i64 %i.m, %i.q                       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !173
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !172  ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3                   ; 2 uses
  %i.aa = and i64 %i.m, 1048575                   ; 2 uses
  %i.ab = lshr i64 %i.aa, 12                      ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.z
  br i1 %i.ac, label %.lr.ph.i.i, label %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %i.ad = phi i64 [ %i.ar, %bb.c ], [ %i.ab, %bb.b ]
  %i.ae = phi i64 [ %i.aq, %bb.c ], [ %i.aa, %bb.b ]
  %.05.i.i = phi i32 [ %i.am, %bb.c ], [ %i.o, %bb.b ] ; 3 uses
  %storemerge4.i.i = phi i64 [ %i.ap, %bb.c ], [ %i.r, %bb.b ] ; 5 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ad
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !165 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i, label %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit.i, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit.i.i

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ah = and i64 %i.ae, 4095
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !158
  %.not.i.i = icmp ugt i32 %i.aj, -1048577
  %i.ak = icmp eq i32 %.05.i.i, 1048575
  %or.cond.i.i = or i1 %i.ak, %.not.i.i
  br i1 %or.cond.i.i, label %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit.i.i
  %i.al = trunc i64 %storemerge4.i.i to i32
  %i.am = and i32 %i.al, 1048575                  ; 3 uses
  %i.an = icmp ne i32 %i.am, 1048575
  %i.ao = zext i1 %i.an to i64
  %i.ap = add i64 %storemerge4.i.i, %i.ao         ; 2 uses
  %i.aq = and i64 %storemerge4.i.i, 1048575       ; 2 uses
  %i.ar = lshr i64 %i.aq, 12                      ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.z
  br i1 %i.as, label %.lr.ph.i.i, label %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit.i, !llvm.loop !37

_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit.i: ; preds = %bb.c, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit.i.i, %.lr.ph.i.i, %bb.b
  %storemerge.lcssa.i.i = phi i64 [ %i.r, %bb.b ], [ %storemerge4.i.i, %.lr.ph.i.i ], [ %i.ap, %bb.c ], [ %storemerge4.i.i, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit.i.i ]
  %.0.lcssa.i.i = phi i32 [ %i.o, %bb.b ], [ %.05.i.i, %.lr.ph.i.i ], [ %i.am, %bb.c ], [ %.05.i.i, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit.i.i ]
  store i64 %storemerge.lcssa.i.i, ptr %i.l, align 8, !tbaa !240
  br label %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE8generateEv.exit

bb.d:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.b
  %i.au = load i32, ptr %i.at, align 4, !tbaa !158
  br label %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE8generateEv.exit

_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE8generateEv.exit: ; preds = %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit.i, %bb.d
  %i.av = phi i32 [ %.0.lcssa.i.i, %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit.i ], [ %i.au, %bb.d ]
  %i.aw = tail call { ptr, i64 } @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE11try_emplaceES1_bPKv(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %i.av, i1 noundef zeroext true, ptr noundef null) ; 2 uses
  %i.ax = extractvalue { ptr, i64 } %i.aw, 0
  %i.ay = extractvalue { ptr, i64 } %i.aw, 1
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !134
  %i.ba = getelementptr [4 x i8], ptr %i.az, i64 %i.ay
  %i.bb = getelementptr i8, ptr %i.ba, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !158 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !155
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !163 ; 2 uses
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !159 ; 2 uses
  %.not5.i = icmp eq ptr %i.bh, %i.bi
  br i1 %.not5.i, label %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ES3_E7publishES5_S2_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE8generateEv.exit
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.06.i = phi i64 [ %i.bn, %.lr.ph.i ], [ %i.bm, %.lr.ph.preheader.i ]
  %i.bn = add i64 %.06.i, -1                      ; 3 uses
  %i.bo = load ptr, ptr %i.bd, align 8, !tbaa !159
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bn ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !161
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !162
  tail call void %i.br(ptr noundef %i.bs, ptr noundef nonnull align 8 dereferenceable(336) %i.bf, i32 noundef %i.bc), !inline_history !36
  %.not.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i, label %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ES3_E7publishES5_S2_.exit, label %.lr.ph.i, !llvm.loop !4

_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ES3_E7publishES5_S2_.exit: ; preds = %.lr.ph.i, %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE8generateEv.exit
  ret i32 %i.bc
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt8delegateIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_EE7connectITnDaXadL_ZN18SnapshotCommonBase6shadow8listenerERS2_S5_S2_EES2_EEvRT0_ENUlPKvS5_S2_E_8__invokeESF_S5_S2_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(336) %1, i32 noundef %2) #9 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEN18SnapshotCommonBase6shadowEEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %1, i32 noundef 2015729789) ; 2 uses
  %i.b = and i32 %2, 1048575
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = lshr i64 %i.c, 12
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !172
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !165
  %i.i = and i64 %i.c, 4095
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !158
  %i.l = and i32 %i.k, 1048575
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.o = lshr i64 %i.m, 10
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !291
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !293
  %i.s = and i64 %i.m, 1023
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !249
  store i32 %i.u, ptr %0, align 4, !tbaa !158
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS8_EEES8_ESaIN18SnapshotCommonBase6shadowEEEEE7releaseITnDaXadL_ZNSE_8listenerERS8_SB_S8_EESJ_EEvT0_S1_EES8_EEvRSK_ENUlPKvS1_E_8__invokeESN_S1_(ptr noundef %0, ptr noundef %1) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !159    ; 3 uses
  %.not9.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not9.i.i.i.i, label %_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS8_EEES8_ESaIN18SnapshotCommonBase6shadowEEEEE7releaseITnDaXadL_ZNSE_8listenerERS8_SB_S8_EESJ_EEvT0_S1_EES8_EEvRSK_ENKUlPKvS1_E_clESN_S1_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub i64 %i.e, %i.d
  %i.g = ashr exact i64 %i.f, 4
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.h = phi ptr [ %i.b, %.lr.ph.i.i.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %2 = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %4, %bb.d ] ; 2 uses
  %.010.i.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i.i ], [ %3, %bb.d ]
  %3 = add i64 %.010.i.i.i.i, -1                  ; 3 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %3 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !161
  %i.l = icmp eq ptr %i.k, @_ZZN4entt8delegateIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_EE7connectITnDaXadL_ZN18SnapshotCommonBase6shadow8listenerERS2_S5_S2_EES2_EEvRT0_ENUlPKvS5_S2_E_8__invokeESF_S5_S2_
  %i.m = load ptr, ptr %i.i, align 8
  %i.n = icmp eq ptr %i.m, %0
  %i.o = select i1 %i.l, i1 %i.n, i1 false
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !259
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !163
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -16 ; 2 uses
  store ptr %i.r, ptr %i.a, align 8, !tbaa !163
  %.pre.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !159
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = phi ptr [ %i.r, %bb.c ], [ %i.h, %bb.b ]
  %4 = phi ptr [ %.pre.i.i.i.i, %bb.c ], [ %2, %bb.b ]
  %.not.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i.i.i, label %_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS8_EEES8_ESaIN18SnapshotCommonBase6shadowEEEEE7releaseITnDaXadL_ZNSE_8listenerERS8_SB_S8_EESJ_EEvT0_S1_EES8_EEvRSK_ENKUlPKvS1_E_clESN_S1_.exit, label %bb.b, !llvm.loop !19

_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS8_EEES8_ESaIN18SnapshotCommonBase6shadowEEEEE7releaseITnDaXadL_ZNSE_8listenerERS8_SB_S8_EESJ_EEvT0_S1_EES8_EEvRSK_ENKUlPKvS1_E_clESN_S1_.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN4entt13basic_storageIN18SnapshotCommonBase6shadowENS_6entityESaIS2_EE15emplace_elementIJS2_EEEDaS3_bDpOT_(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE11try_emplaceES1_bPKv(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef null) ; 3 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 1        ; 2 uses
  %i.c = add nsw i64 %i.b, -1                     ; 2 uses
  %i.d = invoke noundef ptr @_ZN4entt13basic_storageIN18SnapshotCommonBase6shadowENS_6entityESaIS2_EE15assure_at_leastEm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %i.c)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %3, align 4, !tbaa !158
  store i32 %i.e, ptr %i.d, align 4, !tbaa !158
  ret { ptr, i64 } %i.a

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %.0 = extractvalue { ptr, i32 } %i.f, 0
  %i.h = tail call ptr @__cxa_begin_catch(ptr %.0) #26 ; 0 uses
  invoke void @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE3popENS_8internal19sparse_set_iteratorISt6vectorIS1_S2_EEES8_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.g, i64 %i.b, ptr %i.g, i64 %i.c)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_rethrow() #29
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.i

bb.g:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #28
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt9dense_mapIjSt4pairINS_6entityES2_ESt4hashIjESt8equal_toIvESaIS1_IKjS3_EEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(52) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !280
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !276
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  %i.i = uitofp i64 %i.h to float
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load float, ptr %i.j, align 8, !tbaa !275
  %i.l = fdiv float %i.i, %i.k
  %i.m = fptoui float %i.l to i64
  %i.n = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.m)
  %i.o = tail call i64 @llvm.umax.i64(i64 %i.n, i64 8)
  %i.p = add i64 %i.o, -1
  %i.q = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 false)
  %i.r = sub nuw nsw i64 64, %i.q
  %i.s = shl nuw i64 1, %i.r                      ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !191  ; 4 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !101    ; 5 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3                   ; 4 uses
  %.not = icmp eq i64 %i.s, %i.z
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = icmp ugt i64 %i.s, %i.z
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = sub nuw i64 %i.s, %i.z
  tail call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab)
  %.pre = load ptr, ptr %0, align 8, !tbaa !333
  %.pre26 = load ptr, ptr %i.t, align 8, !tbaa !333
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.ac = icmp ult i64 %i.s, %i.z
  br i1 %i.ac, label %bb.e, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.s ; 3 uses
  %.not.i.i = icmp eq ptr %i.u, %i.ad
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.ad, ptr %i.t, align 8, !tbaa !191
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i
  %i.ae = phi ptr [ %.pre26, %bb.c ], [ %i.u, %bb.d ], [ %i.u, %bb.e ], [ %i.ad, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.af = phi ptr [ %.pre, %bb.c ], [ %i.v, %bb.d ], [ %i.v, %bb.e ], [ %i.v, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ] ; 7 uses
  %i.ag = icmp eq ptr %i.af, %i.ae
  br i1 %i.ag, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.ah = ptrtoaddr ptr %i.ae to i64
  %i.ai = ptrtoaddr ptr %i.af to i64
  %i.aj = add i64 %i.ah, -8
  %i.ak = sub i64 %i.aj, %i.ai
  %i.al = and i64 %i.ak, -8
  %i.am = add i64 %i.al, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.af, i8 -1, i64 %i.am, i1 false), !tbaa !110
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !280 ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !276 ; 5 uses
  %.not25 = icmp eq ptr %i.an, %i.ao
  br i1 %.not25, label %.loopexit, label %.lr.ph24

.lr.ph24:                                         ; preds = %._crit_edge
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 2 uses
  %i.as = sdiv exact i64 %i.ar, 24                ; 3 uses
  %i.at = ptrtoint ptr %i.ae to i64
  %i.au = ptrtoint ptr %i.af to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = lshr exact i64 %i.av, 3
  %i.ax = add nuw nsw i64 %i.aw, 4294967295       ; 3 uses
  %xtraiter = and i64 %i.as, 1
  %i.ay = icmp eq i64 %i.ar, 24
  br i1 %i.ay, label %.epil.preheader, label %.lr.ph24.new

.lr.ph24.new:                                     ; preds = %.lr.ph24
  %unroll_iter = and i64 %i.as, -2
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph24.new
  %.022 = phi i64 [ 0, %.lr.ph24.new ], [ %i.bo, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph24.new ], [ %niter.next.1, %bb.f ]
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.022 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !87
  %i.bc = zext i32 %i.bb to i64
  %i.bd = and i64 %i.ax, %i.bc
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bd ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !110
  store i64 %.022, ptr %i.be, align 8, !tbaa !110
  store i64 %i.bf, ptr %i.az, align 8, !tbaa !288
  %i.bg = or disjoint i64 %.022, 1                ; 2 uses
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !87
  %i.bk = zext i32 %i.bj to i64
  %i.bl = and i64 %i.ax, %i.bk
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bl ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !110
  store i64 %i.bg, ptr %i.bm, align 8, !tbaa !110
  store i64 %i.bn, ptr %i.bh, align 8, !tbaa !288
  %i.bo = add nuw i64 %.022, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !887

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph24
  %.022.epil.init = phi i64 [ 0, %.lr.ph24 ], [ %i.bo, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod32 = trunc i64 %i.as to i1
  tail call void @llvm.assume(i1 %lcmp.mod32)
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.022.epil.init ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !87
  %i.bs = zext i32 %i.br to i64
  %i.bt = and i64 %i.ax, %i.bs
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bt ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !110
  store i64 %.022.epil.init, ptr %i.bu, align 8, !tbaa !110
  store i64 %i.bv, ptr %i.bp, align 8, !tbaa !288
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_1
