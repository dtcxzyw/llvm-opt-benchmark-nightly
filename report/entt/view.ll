Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/view?download=true
inline.NumInlined: 14012
inline.NumDeleted: 4156
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN31ViewMultiStorage_FrontBack_Test8TestBodyEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #26
  br label %bb.bv

.critedge44:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit107
  %i.hn = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !94 ; 4 uses
  %.not.i.i121 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i121, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.critedge44
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !76 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 16 ; 2 uses
  %i.hr = icmp eq ptr %i.hp, %i.hq
  br i1 %i.hr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i122: ; preds = %bb.br
  %i.hs = load i64, ptr %i.hq, align 8, !tbaa !77
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.ht) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i123

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i123: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i122
  call void @_ZdlPvm(ptr noundef nonnull %i.ho, i64 noundef 32) #27
  br label %bb.bs

bb.bs:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i123, %.critedge44
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.hu = call noundef i32 @_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm0EE4backEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #26 ; 2 uses
  store i32 %i.hu, ptr %i.f, align 4, !tbaa !102
  %i.hv = load i32, ptr %7, align 4, !tbaa !102, !noalias !1901
  %i.hw = icmp eq i32 %i.hu, %i.hv
  br i1 %i.hw, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit128 unwind label %bb.bw

bb.bu:                                            ; preds = %bb.bs
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4entt6entityES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.90, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit128 unwind label %bb.bw

_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit128: ; preds = %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  %i.hx = load i8, ptr %17, align 8, !tbaa !91, !range !92, !noundef !93
  %i.hy = trunc nuw i8 %i.hx to i1
  br i1 %i.hy, label %bb.cg, label %bb.bx

bb.bv:                                            ; preds = %_ZN7testing7MessageD2Ev.exit120, %bb.bg
  %.pn32.pn.pn = phi { ptr, i32 } [ %.pn32.pn, %_ZN7testing7MessageD2Ev.exit120 ], [ %i.gr, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.ck

bb.bw:                                            ; preds = %bb.bu, %bb.bt
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  br label %bb.cj

bb.bx:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit128
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.ia = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i129 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i129, label %_ZNK7testing15AssertionResult15failure_messageEv.exit130, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit130

_ZNK7testing15AssertionResult15failure_messageEv.exit130: ; preds = %bb.bz, %bb.by
  %i.id = phi ptr [ %i.ic, %bb.bz ], [ @.str.319, %bb.by ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1225, ptr noundef %i.id)
          to label %bb.ca unwind label %bb.cd

bb.ca:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit130
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.cb unwind label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.ie = load ptr, ptr %18, align 8, !tbaa !79   ; 3 uses
  %.not.i.i131 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i131, label %_ZN7testing7MessageD2Ev.exit133, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132: ; preds = %bb.cb
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !43
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(128) %i.ie) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit133

_ZN7testing7MessageD2Ev.exit133:                  ; preds = %bb.cb, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.cg

bb.cc:                                            ; preds = %bb.bx
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit136

bb.cd:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit130
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ce:                                            ; preds = %bb.ca
  %i.ik = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #26
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.pn36 = phi { ptr, i32 } [ %i.ik, %bb.ce ], [ %i.ij, %bb.cd ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.il = load ptr, ptr %18, align 8, !tbaa !79   ; 3 uses
  %.not.i.i134 = icmp eq ptr %i.il, null
  br i1 %.not.i.i134, label %_ZN7testing7MessageD2Ev.exit136, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i135

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i135: ; preds = %bb.cf
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !43
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load ptr, ptr %i.in, align 8
  call void %i.io(ptr noundef nonnull align 8 dereferenceable(128) %i.il) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit136

_ZN7testing7MessageD2Ev.exit136:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i135, %bb.cf, %bb.cc
  %.pn36.pn = phi { ptr, i32 } [ %i.ii, %bb.cc ], [ %.pn36, %bb.cf ], [ %.pn36, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i135 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #26
  br label %bb.cj

bb.cg:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit128, %_ZN7testing7MessageD2Ev.exit133
  %i.ip = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !94 ; 4 uses
  %.not.i.i137 = icmp eq ptr %i.iq, null
  br i1 %.not.i.i137, label %_ZN7testing15AssertionResultD2Ev.exit141, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !76 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 16 ; 2 uses
  %i.it = icmp eq ptr %i.ir, %i.is
  br i1 %i.it, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i138: ; preds = %bb.ch
  %i.iu = load i64, ptr %i.is, align 8, !tbaa !77
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iv) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i139

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i139: ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i138
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit141

_ZN7testing15AssertionResultD2Ev.exit141:         ; preds = %bb.cg, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.ci

bb.ci:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit117, %_ZN7testing15AssertionResultD2Ev.exit70, %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing15AssertionResultD2Ev.exit141
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZN4entt13basic_storageIiNS_6entityESaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.t) #26
  call void @_ZN4entt13basic_storageIcNS_6entityESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(208) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

bb.cj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit136, %bb.bw
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %_ZN7testing7MessageD2Ev.exit136 ], [ %i.hz, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.bv, %bb.bf, %bb.be, %bb.ad
  %.pn36.pn.pn.pn = phi { ptr, i32 } [ %.pn36.pn.pn, %bb.cj ], [ %.pn32.pn.pn, %bb.bv ], [ %i.gq, %bb.bf ], [ %.pn28.pn.pn, %bb.be ], [ %.pn.pn.pn, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZN4entt13basic_storageIiNS_6entityESaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.t) #26
  call void @_ZN4entt13basic_storageIcNS_6entityESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(208) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn36.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm0EE4backEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !209
  %.fr = freeze i64 %i.b                          ; 3 uses
  %.not = icmp eq i64 %.fr, 2
  br i1 %.not, label %.critedge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.idx = shl nuw nsw i64 %.fr, 3                 ; 2 uses
  %.ptr39 = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.c = load ptr, ptr %.ptr39, align 8, !tbaa !126 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.f = load i8, ptr %i.e, align 8, !tbaa !69
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !70
  br label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm0EE6offsetEv.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !80
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 2
  br label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm0EE6offsetEv.exit

_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm0EE6offsetEv.exit: ; preds = %bb.c, %bb.d
  %i.q = phi i64 [ %i.i, %bb.c ], [ %i.p, %bb.d ] ; 3 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm0EE6offsetEv.exit
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !81   ; 2 uses
  switch i64 %.fr, label %.critedge.thread [
    i64 0, label %.lr.ph.i10.us.preheader
    i64 1, label %.lr.ph.i.us.preheader
  ]

.lr.ph.i10.us.preheader:                          ; preds = %.lr.ph
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.07.i11.ptr.us.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre67 = load ptr, ptr %.07.i11.ptr.us.phi.trans.insert, align 8, !tbaa !126 ; 2 uses
  %.phi.trans.insert68 = getelementptr inbounds nuw i8, ptr %.pre67, i64 16
  %.pre69 = load ptr, ptr %.phi.trans.insert68, align 8, !tbaa !127
  %.phi.trans.insert70 = getelementptr inbounds nuw i8, ptr %.pre67, i64 8
  %.pre71 = load ptr, ptr %.phi.trans.insert70, align 8, !tbaa !103 ; 2 uses
  %i.t = ptrtoint ptr %.pre69 to i64
  %i.u = ptrtoint ptr %.pre71 to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3
  br label %.lr.ph.i10.us

.lr.ph.i10.us:                                    ; preds = %.lr.ph.i10.us.preheader, %.critedge4.loopexit.us
  %.sroa.8.046.us = phi i64 [ %i.al, %.critedge4.loopexit.us ], [ 0, %.lr.ph.i10.us.preheader ] ; 2 uses
  %i.x = getelementptr [4 x i8], ptr %i.s, i64 %.sroa.8.046.us
  %i.y = load i32, ptr %i.x, align 4, !tbaa !102  ; 3 uses
  %i.z = and i32 %i.y, 1048575
  %i.aa = zext nneg i32 %i.z to i64               ; 2 uses
  %i.ab = and i64 %i.aa, 4095
  %i.ac = lshr i64 %i.aa, 12                      ; 2 uses
  %i.ad = and i32 %i.y, -1048576
  %i.ae = icmp ult i64 %i.ac, %i.w
  br i1 %i.ae, label %bb.e, label %.critedge4.loopexit.us

bb.e:                                             ; preds = %.lr.ph.i10.us
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.pre71, i64 %i.ac
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i13.us = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i13.us, label %.critedge4.loopexit.us, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i14.us

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i14.us: ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ab
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !102
  %i.aj = xor i32 %i.ai, %i.ad
  %i.ak = icmp ult i32 %i.aj, 1048575
  br i1 %i.ak, label %.critedge.thread, label %.critedge4.loopexit.us

.critedge4.loopexit.us:                           ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i14.us, %bb.e, %.lr.ph.i10.us
  %i.al = add nuw nsw i64 %.sroa.8.046.us, 1      ; 2 uses
  %i.am = icmp eq i64 %i.al, %i.q
  br i1 %i.am, label %.critedge.thread, label %.lr.ph.i10.us, !llvm.loop !1902

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph
  %.pre = load ptr, ptr %0, align 8, !tbaa !126   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre64 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !127
  %.phi.trans.insert65 = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre66 = load ptr, ptr %.phi.trans.insert65, align 8, !tbaa !103 ; 2 uses
  %i.an = ptrtoint ptr %.pre64 to i64
  %i.ao = ptrtoint ptr %.pre66 to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.critedge4
  %.sroa.8.046.us48 = phi i64 [ %i.bf, %.critedge4 ], [ 0, %.lr.ph.i.us.preheader ] ; 2 uses
  %i.ar = getelementptr [4 x i8], ptr %i.s, i64 %.sroa.8.046.us48
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !102 ; 3 uses
  %i.at = and i32 %i.as, 1048575
  %i.au = zext nneg i32 %i.at to i64              ; 2 uses
  %i.av = and i64 %i.au, 4095
  %i.aw = lshr i64 %i.au, 12                      ; 2 uses
  %i.ax = and i32 %i.as, -1048576
  %i.ay = icmp ult i64 %i.aw, %i.aq
  br i1 %i.ay, label %bb.f, label %.critedge4

bb.f:                                             ; preds = %.lr.ph.i.us
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.pre66, i64 %i.aw
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i13 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i13, label %.critedge4, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i14

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i14: ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.av
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !102
  %i.bd = xor i32 %i.bc, %i.ax
  %i.be = icmp ult i32 %i.bd, 1048575
  br i1 %i.be, label %.critedge.thread, label %.critedge4

.critedge4:                                       ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i14, %bb.f, %.lr.ph.i.us
  %i.bf = add nuw nsw i64 %.sroa.8.046.us48, 1    ; 2 uses
  %i.bg = icmp eq i64 %i.bf, %i.q
  br i1 %i.bg, label %.critedge.thread, label %.lr.ph.i.us, !llvm.loop !1902

.critedge.thread:                                 ; preds = %.critedge4, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i14, %.critedge4.loopexit.us, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i14.us, %.lr.ph, %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm0EE6offsetEv.exit, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %.critedge4.loopexit.us ], [ -1, %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm0EE6offsetEv.exit ], [ -1, %.lr.ph ], [ %i.y, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i14.us ], [ -1, %.critedge4 ], [ %i.as, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i14 ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN33ViewMultiStorage_ExtendedGet_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
  %i.a = load i8, ptr %1, align 8, !tbaa !91, !range !92, !noundef !93
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.j, label %bb.a

bb.a:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.c, %bb.b
  %i.f = phi ptr [ %i.e, %bb.c ], [ @.str.319, %bb.b ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1231, ptr noundef %i.f)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.g = load ptr, ptr %2, align 8, !tbaa !79     ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(128) %i.g) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.e, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit9

bb.g:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.l, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.n = load ptr, ptr %2, align 8, !tbaa !79     ; 3 uses
  %.not.i.i7 = icmp eq ptr %i.n, null
  br i1 %.not.i.i7, label %_ZN7testing7MessageD2Ev.exit9, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i8

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i8: ; preds = %bb.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(128) %i.n) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit9

_ZN7testing7MessageD2Ev.exit9:                    ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i8, %bb.i, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.k, %bb.f ], [ %.pn, %bb.i ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i8 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %.pn.pn

bb.j:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !94   ; 4 uses
  %.not.i.i10 = icmp eq ptr %i.s, null
  br i1 %.not.i.i10, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !76   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.k
  %i.w = load i64, ptr %i.u, align 8, !tbaa !77
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.j, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN36ViewMultiStorage_DeductionGuide_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #13 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN56ViewMultiStorage_IterableViewAlgorithmCompatibility_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.entt::internal::extended_view_iterator.238", align 8 ; 9 uses
  %2 = alloca %"class.entt::internal::view_iterator.179", align 8 ; 9 uses
  %3 = alloca %"class.entt::internal::view_iterator.179", align 8 ; 8 uses
  %4 = alloca %"class.std::tuple.158", align 8    ; 28 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %6 = alloca %"class.std::tuple.249", align 8    ; 6 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.b = load atomic i8, ptr @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZNSt11_Tuple_implILm1EJN4entt13basic_storageIcNS0_6entityESaIcEEEEEC2Ev.exit.i, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  %.not.i.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11_Tuple_implILm1EJN4entt13basic_storageIcNS0_6entityESaIcEEEEEC2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IcEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  br label %_ZNSt11_Tuple_implILm1EJN4entt13basic_storageIcNS0_6entityESaIcEEEEEC2Ev.exit.i

_ZNSt11_Tuple_implILm1EJN4entt13basic_storageIcNS0_6entityESaIcEEEEEC2Ev.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i8 0, i64 48, i1 false)
  store ptr @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance, ptr %i.g, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i8 0, ptr %i.h, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 1048575, ptr %i.i, align 8, !tbaa !70
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt13basic_storageIcNS_6entityESaIcEEE, i64 16), ptr %4, align 8, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.k = load atomic i8, ptr @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance acquire, align 8
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZNSt11_Tuple_implILm0EJN4entt13basic_storageIiNS0_6entityESaIiEEENS1_IcS2_SaIcEEEEEC2Ev.exit, !prof !55

bb.d:                                             ; preds = %_ZNSt11_Tuple_implILm1EJN4entt13basic_storageIcNS0_6entityESaIcEEEEEC2Ev.exit.i
  %i.m = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  %.not.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11_Tuple_implILm0EJN4entt13basic_storageIiNS0_6entityESaIiEEENS1_IcS2_SaIcEEEEEC2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4entt9type_infoC2IiEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  %i.n = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  br label %_ZNSt11_Tuple_implILm0EJN4entt13basic_storageIiNS0_6entityESaIiEEENS1_IcS2_SaIcEEEEEC2Ev.exit

_ZNSt11_Tuple_implILm0EJN4entt13basic_storageIiNS0_6entityESaIiEEENS1_IcS2_SaIcEEEEEC2Ev.exit: ; preds = %_ZNSt11_Tuple_implILm1EJN4entt13basic_storageIcNS0_6entityESaIcEEEEEC2Ev.exit.i, %bb.d, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i8 0, i64 48, i1 false)
  store ptr @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance, ptr %i.q, align 8, !tbaa !68
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 168
  store i8 0, ptr %i.r, align 8, !tbaa !69
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 176
  store i64 1048575, ptr %i.s, align 8, !tbaa !70
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt13basic_storageIiNS_6entityESaIiEEE, i64 16), ptr %i.o, align 8, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.u = load atomic i8, ptr @_ZGVZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.f, label %_ZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_v.exit.i.i, !prof !55

end_hunk_0
