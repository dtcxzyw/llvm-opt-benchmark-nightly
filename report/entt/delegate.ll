Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/delegate?download=true
inline.NumInlined: 2377
inline.NumDeleted: 765
begin_hunk_0_@_ZN29Delegate_Functionalities_Test8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit

_ZN7testing7MessageD2Ev.exit482:                  ; preds = %bb.bq, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i481
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  %i.fw = load ptr, ptr %i.fo, align 8, !tbaa !44 ; 4 uses
  %.not.i.i483 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i483, label %_ZN7testing15AssertionResultD2Ev.exit487, label %bb.br

bb.br:                                            ; preds = %_ZN7testing7MessageD2Ev.exit482
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !48 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i485, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i484

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i484: ; preds = %bb.br
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !51
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i485

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i485: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i484
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit487

_ZN7testing15AssertionResultD2Ev.exit487:         ; preds = %_ZN7testing7MessageD2Ev.exit482, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i485
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %bb.hf

bb.bs:                                            ; preds = %bb.bm
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit490

bb.bt:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit479
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bp
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #28
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.pn173 = phi { ptr, i32 } [ %i.ge, %bb.bu ], [ %i.gd, %bb.bt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  %i.gf = load ptr, ptr %22, align 8, !tbaa !50   ; 3 uses
  %.not.i.i488 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i488, label %_ZN7testing7MessageD2Ev.exit490, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i489

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i489: ; preds = %bb.bv
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !20
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8
  call void %i.gi(ptr noundef nonnull align 8 dereferenceable(128) %i.gf) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit490

_ZN7testing7MessageD2Ev.exit490:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i489, %bb.bv, %bb.bs
  %.pn173.pn = phi { ptr, i32 } [ %i.gc, %bb.bs ], [ %.pn173, %bb.bv ], [ %.pn173, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i489 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %bb.hg

.critedge240:                                     ; preds = %_ZN7testing8internal11CmpHelperNEIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_.exit
  %i.gj = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !44 ; 4 uses
  %.not.i.i491 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i491, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %.critedge240
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !48 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 16 ; 2 uses
  %i.gn = icmp eq ptr %i.gl, %i.gm
  br i1 %i.gn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i493, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i492

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i492: ; preds = %bb.bw
  %i.go = load i64, ptr %i.gm, align 8, !tbaa !51
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.gp) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i493

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i493: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i492
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef 32) #29
  br label %bb.bx

bb.bx:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i493, %.critedge240
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  %i.gq = load ptr, ptr %i.aj, align 8, !tbaa !54, !noalias !101
  %i.gr = icmp eq ptr %i.gq, null
  %i.gs = load ptr, ptr %3, align 8, !noalias !101
  %i.gt = icmp eq ptr %i.gs, null
  %i.gu = select i1 %i.gr, i1 %i.gt, i1 false
  br i1 %i.gu, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %24)
  br label %_ZN7testing8internal11CmpHelperNEIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_.exit496

bb.bz:                                            ; preds = %bb.bx
  call void @_ZN7testing8internal18CmpHelperOpFailureIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_S8_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %24, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.14, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull @.str.132)
  br label %_ZN7testing8internal11CmpHelperNEIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_.exit496

_ZN7testing8internal11CmpHelperNEIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_.exit496: ; preds = %bb.by, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  %i.gv = load i8, ptr %24, align 8, !tbaa !42, !range !43, !noundef !55
  %i.gw = trunc nuw i8 %i.gv to i1
  br i1 %i.gw, label %bb.cj, label %bb.ca

bb.ca:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_.exit496
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.cb unwind label %bb.cf

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  %i.gx = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i497 = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.i497, label %_ZNK7testing15AssertionResult15failure_messageEv.exit498, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit498

_ZNK7testing15AssertionResult15failure_messageEv.exit498: ; preds = %bb.cc, %bb.cb
  %i.ha = phi ptr [ %i.gz, %bb.cc ], [ @.str.20, %bb.cb ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %27, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 92, ptr noundef %i.ha)
          to label %bb.cd unwind label %bb.cg

bb.cd:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit498
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.ce unwind label %bb.ch

bb.ce:                                            ; preds = %bb.cd
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  %i.hb = load ptr, ptr %26, align 8, !tbaa !50   ; 3 uses
  %.not.i.i499 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i499, label %_ZN7testing7MessageD2Ev.exit501, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i500

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i500: ; preds = %bb.ce
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !20
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.he = load ptr, ptr %i.hd, align 8
  call void %i.he(ptr noundef nonnull align 8 dereferenceable(128) %i.hb) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit501

_ZN7testing7MessageD2Ev.exit501:                  ; preds = %bb.ce, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i500
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  br label %bb.hf

bb.cf:                                            ; preds = %bb.ca
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit504

bb.cg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit498
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cd
  %i.hh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #28
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.pn176 = phi { ptr, i32 } [ %i.hh, %bb.ch ], [ %i.hg, %bb.cg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  %i.hi = load ptr, ptr %26, align 8, !tbaa !50   ; 3 uses
  %.not.i.i502 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i502, label %_ZN7testing7MessageD2Ev.exit504, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i503

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i503: ; preds = %bb.ci
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !20
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(128) %i.hi) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit504

_ZN7testing7MessageD2Ev.exit504:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i503, %bb.ci, %bb.cf
  %.pn176.pn = phi { ptr, i32 } [ %i.hf, %bb.cf ], [ %.pn176, %bb.ci ], [ %.pn176, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i503 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  br label %bb.hg

bb.cj:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_.exit496
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #28
  %i.hm = load <2 x ptr>, ptr %1, align 16, !noalias !102
  %i.hn = load <2 x ptr>, ptr %2, align 16, !noalias !102
  %i.ho = icmp eq <2 x ptr> %i.hm, %i.hn          ; 2 uses
  %70 = extractelement <2 x i1> %i.ho, i64 0
  %71 = extractelement <2 x i1> %i.ho, i64 1
  %72 = select i1 %71, i1 %70, i1 false
  br i1 %72, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %28)
  br label %_ZN7testing8internal11CmpHelperNEIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_.exit505

bb.cl:                                            ; preds = %bb.cj
  call void @_ZN7testing8internal18CmpHelperOpFailureIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_S8_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %28, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.132)
  br label %_ZN7testing8internal11CmpHelperNEIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_.exit505

_ZN7testing8internal11CmpHelperNEIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_.exit505: ; preds = %bb.ck, %bb.cl
  %i.hp = load i8, ptr %28, align 8, !tbaa !42, !range !43, !noundef !55
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %bb.cv, label %bb.cm

bb.cm:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_.exit505
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.cn unwind label %bb.cr

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #28
  %i.hr = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i506 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i506, label %_ZNK7testing15AssertionResult15failure_messageEv.exit507, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit507

_ZNK7testing15AssertionResult15failure_messageEv.exit507: ; preds = %bb.co, %bb.cn
  %i.hu = phi ptr [ %i.ht, %bb.co ], [ @.str.20, %bb.cn ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %30, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 94, ptr noundef %i.hu)
          to label %bb.cp unwind label %bb.cs

bb.cp:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit507
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.cq unwind label %bb.ct

bb.cq:                                            ; preds = %bb.cp
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  %i.hv = load ptr, ptr %29, align 8, !tbaa !50   ; 3 uses
  %.not.i.i508 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i508, label %_ZN7testing7MessageD2Ev.exit510, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i509

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i509: ; preds = %bb.cq
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !20
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(128) %i.hv) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit510

_ZN7testing7MessageD2Ev.exit510:                  ; preds = %bb.cq, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i509
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %28) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  br label %bb.hf

bb.cr:                                            ; preds = %bb.cm
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit513

bb.cs:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit507
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cp
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #28
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.pn179 = phi { ptr, i32 } [ %i.ib, %bb.ct ], [ %i.ia, %bb.cs ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  %i.ic = load ptr, ptr %29, align 8, !tbaa !50   ; 3 uses
  %.not.i.i511 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i511, label %_ZN7testing7MessageD2Ev.exit513, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i512

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i512: ; preds = %bb.cu
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !20
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(128) %i.ic) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit513

_ZN7testing7MessageD2Ev.exit513:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i512, %bb.cu, %bb.cr
  %.pn179.pn = phi { ptr, i32 } [ %i.hz, %bb.cr ], [ %.pn179, %bb.cu ], [ %.pn179, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i512 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %28) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  br label %bb.hg

bb.cv:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_.exit505
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %28) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #28
  call void @_ZN7testing8internal11CmpHelperNEIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %31, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.ig = load i8, ptr %31, align 8, !tbaa !42, !range !43, !noundef !55
  %i.ih = trunc nuw i8 %i.ig to i1
  br i1 %i.ih, label %bb.df, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.cx unwind label %bb.db

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  %i.ii = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i514 = icmp eq ptr %i.ij, null
  br i1 %.not.i.i.i514, label %_ZNK7testing15AssertionResult15failure_messageEv.exit515, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit515

_ZNK7testing15AssertionResult15failure_messageEv.exit515: ; preds = %bb.cy, %bb.cx
  %i.il = phi ptr [ %i.ik, %bb.cy ], [ @.str.20, %bb.cx ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %33, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 95, ptr noundef %i.il)
          to label %bb.cz unwind label %bb.dc

bb.cz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit515
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.da unwind label %bb.dd

bb.da:                                            ; preds = %bb.cz
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  %i.im = load ptr, ptr %32, align 8, !tbaa !50   ; 3 uses
  %.not.i.i516 = icmp eq ptr %i.im, null
  br i1 %.not.i.i516, label %_ZN7testing7MessageD2Ev.exit518, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i517

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i517: ; preds = %bb.da
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !20
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.ip = load ptr, ptr %i.io, align 8
  call void %i.ip(ptr noundef nonnull align 8 dereferenceable(128) %i.im) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit518

_ZN7testing7MessageD2Ev.exit518:                  ; preds = %bb.da, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i517
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %31) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  br label %bb.hf

bb.db:                                            ; preds = %bb.cw
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit521

bb.dc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit515
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.dd:                                            ; preds = %bb.cz
  %i.is = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #28
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.pn182 = phi { ptr, i32 } [ %i.is, %bb.dd ], [ %i.ir, %bb.dc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  %i.it = load ptr, ptr %32, align 8, !tbaa !50   ; 3 uses
  %.not.i.i519 = icmp eq ptr %i.it, null
  br i1 %.not.i.i519, label %_ZN7testing7MessageD2Ev.exit521, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i520

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i520: ; preds = %bb.de
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !20
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8
  call void %i.iw(ptr noundef nonnull align 8 dereferenceable(128) %i.it) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit521

_ZN7testing7MessageD2Ev.exit521:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i520, %bb.de, %bb.db
  %.pn182.pn = phi { ptr, i32 } [ %i.iq, %bb.db ], [ %.pn182, %bb.de ], [ %.pn182, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i520 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %31) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  br label %bb.hg

bb.df:                                            ; preds = %bb.cv
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %31) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  call void @_ZN7testing8internal11CmpHelperNEIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %34, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.ix = load i8, ptr %34, align 8, !tbaa !42, !range !43, !noundef !55
  %i.iy = trunc nuw i8 %i.ix to i1
  br i1 %i.iy, label %bb.dp, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %35)
end_hunk_0
begin_hunk_1_@_ZN29Delegate_Functionalities_Test8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit
  call void %i.po(ptr noundef nonnull align 8 dereferenceable(128) %i.pl) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit602

_ZN7testing7MessageD2Ev.exit602:                  ; preds = %bb.gp, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i601
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %64) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #28
  br label %bb.hf

bb.gq:                                            ; preds = %bb.gl
  %i.pp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit605

bb.gr:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit599
  %i.pq = landingpad { ptr, i32 }
          cleanup
  br label %bb.gt

bb.gs:                                            ; preds = %bb.go
  %i.pr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %66) #28
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %.pn212 = phi { ptr, i32 } [ %i.pr, %bb.gs ], [ %i.pq, %bb.gr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #28
  %i.ps = load ptr, ptr %65, align 8, !tbaa !50   ; 3 uses
  %.not.i.i603 = icmp eq ptr %i.ps, null
  br i1 %.not.i.i603, label %_ZN7testing7MessageD2Ev.exit605, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i604

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i604: ; preds = %bb.gt
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !20
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %i.pv = load ptr, ptr %i.pu, align 8
  call void %i.pv(ptr noundef nonnull align 8 dereferenceable(128) %i.ps) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit605

_ZN7testing7MessageD2Ev.exit605:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i604, %bb.gt, %bb.gq
  %.pn212.pn = phi { ptr, i32 } [ %i.pp, %bb.gq ], [ %.pn212, %bb.gt ], [ %.pn212, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i604 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %64) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #28
  br label %bb.hg

bb.gu:                                            ; preds = %bb.gk
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %64) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #28
  call void @_ZN7testing8internal11CmpHelperNEIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %67, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.pw = load i8, ptr %67, align 8, !tbaa !42, !range !43, !noundef !55
  %i.px = trunc nuw i8 %i.pw to i1
  br i1 %i.px, label %bb.he, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %68)
          to label %bb.gw unwind label %bb.ha

bb.gw:                                            ; preds = %bb.gv
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #28
  %i.py = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i606 = icmp eq ptr %i.pz, null
  br i1 %.not.i.i.i606, label %_ZNK7testing15AssertionResult15failure_messageEv.exit607, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit607

_ZNK7testing15AssertionResult15failure_messageEv.exit607: ; preds = %bb.gx, %bb.gw
  %i.qb = phi ptr [ %i.qa, %bb.gx ], [ @.str.20, %bb.gw ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %69, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 110, ptr noundef %i.qb)
          to label %bb.gy unwind label %bb.hb

bb.gy:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit607
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %69, ptr noundef nonnull align 8 dereferenceable(8) %68)
          to label %bb.gz unwind label %bb.hc

bb.gz:                                            ; preds = %bb.gy
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %69) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #28
  %i.qc = load ptr, ptr %68, align 8, !tbaa !50   ; 3 uses
  %.not.i.i608 = icmp eq ptr %i.qc, null
  br i1 %.not.i.i608, label %_ZN7testing7MessageD2Ev.exit610, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i609

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i609: ; preds = %bb.gz
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !20
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %i.qf = load ptr, ptr %i.qe, align 8
  call void %i.qf(ptr noundef nonnull align 8 dereferenceable(128) %i.qc) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit610

_ZN7testing7MessageD2Ev.exit610:                  ; preds = %bb.gz, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i609
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #28
  br label %bb.he

bb.ha:                                            ; preds = %bb.gv
  %i.qg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit613

bb.hb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit607
  %i.qh = landingpad { ptr, i32 }
          cleanup
  br label %bb.hd

bb.hc:                                            ; preds = %bb.gy
  %i.qi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %69) #28
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %.pn215 = phi { ptr, i32 } [ %i.qi, %bb.hc ], [ %i.qh, %bb.hb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #28
  %i.qj = load ptr, ptr %68, align 8, !tbaa !50   ; 3 uses
  %.not.i.i611 = icmp eq ptr %i.qj, null
  br i1 %.not.i.i611, label %_ZN7testing7MessageD2Ev.exit613, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i612

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i612: ; preds = %bb.hd
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !20
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.qm = load ptr, ptr %i.ql, align 8
  call void %i.qm(ptr noundef nonnull align 8 dereferenceable(128) %i.qj) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit613

_ZN7testing7MessageD2Ev.exit613:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i612, %bb.hd, %bb.ha
  %.pn215.pn = phi { ptr, i32 } [ %i.qg, %bb.ha ], [ %.pn215, %bb.hd ], [ %.pn215, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i612 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %67) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #28
  br label %bb.hg

bb.he:                                            ; preds = %bb.gu, %_ZN7testing7MessageD2Ev.exit610
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %67) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #28
  br label %bb.hf

bb.hf:                                            ; preds = %_ZN7testing7MessageD2Ev.exit602, %_ZN7testing7MessageD2Ev.exit594, %_ZN7testing7MessageD2Ev.exit586, %_ZN7testing7MessageD2Ev.exit578, %_ZN7testing7MessageD2Ev.exit570, %_ZN7testing7MessageD2Ev.exit559, %_ZN7testing7MessageD2Ev.exit547, %_ZN7testing7MessageD2Ev.exit535, %_ZN7testing7MessageD2Ev.exit526, %_ZN7testing7MessageD2Ev.exit518, %_ZN7testing7MessageD2Ev.exit510, %_ZN7testing7MessageD2Ev.exit501, %_ZN7testing15AssertionResultD2Ev.exit487, %_ZN7testing15AssertionResultD2Ev.exit469, %_ZN7testing15AssertionResultD2Ev.exit428, %_ZN7testing15AssertionResultD2Ev.exit409, %_ZN7testing15AssertionResultD2Ev.exit390, %_ZN7testing15AssertionResultD2Ev.exit306, %bb.he
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void

bb.hg:                                            ; preds = %_ZN7testing7MessageD2Ev.exit613, %_ZN7testing7MessageD2Ev.exit605, %_ZN7testing7MessageD2Ev.exit597, %_ZN7testing7MessageD2Ev.exit589, %_ZN7testing7MessageD2Ev.exit581, %_ZN7testing7MessageD2Ev.exit573, %_ZN7testing7MessageD2Ev.exit565, %_ZN7testing7MessageD2Ev.exit553, %_ZN7testing7MessageD2Ev.exit541, %_ZN7testing7MessageD2Ev.exit529, %_ZN7testing7MessageD2Ev.exit521, %_ZN7testing7MessageD2Ev.exit513, %_ZN7testing7MessageD2Ev.exit504, %_ZN7testing7MessageD2Ev.exit490, %_ZN7testing7MessageD2Ev.exit472, %_ZN7testing7MessageD2Ev.exit431, %_ZN7testing7MessageD2Ev.exit412, %_ZN7testing7MessageD2Ev.exit393, %_ZN7testing7MessageD2Ev.exit309
  %.pn215.pn.pn = phi { ptr, i32 } [ %.pn215.pn, %_ZN7testing7MessageD2Ev.exit613 ], [ %.pn212.pn, %_ZN7testing7MessageD2Ev.exit605 ], [ %.pn209.pn, %_ZN7testing7MessageD2Ev.exit597 ], [ %.pn206.pn, %_ZN7testing7MessageD2Ev.exit589 ], [ %.pn203.pn, %_ZN7testing7MessageD2Ev.exit581 ], [ %.pn200.pn, %_ZN7testing7MessageD2Ev.exit573 ], [ %.pn196.pn.pn, %_ZN7testing7MessageD2Ev.exit565 ], [ %.pn192.pn.pn, %_ZN7testing7MessageD2Ev.exit553 ], [ %.pn188.pn.pn, %_ZN7testing7MessageD2Ev.exit541 ], [ %.pn185.pn, %_ZN7testing7MessageD2Ev.exit529 ], [ %.pn182.pn, %_ZN7testing7MessageD2Ev.exit521 ], [ %.pn179.pn, %_ZN7testing7MessageD2Ev.exit513 ], [ %.pn176.pn, %_ZN7testing7MessageD2Ev.exit504 ], [ %.pn173.pn, %_ZN7testing7MessageD2Ev.exit490 ], [ %.pn170.pn, %_ZN7testing7MessageD2Ev.exit472 ], [ %.pn142.pn, %_ZN7testing7MessageD2Ev.exit309 ], [ %.pn163.pn, %_ZN7testing7MessageD2Ev.exit431 ], [ %.pn160.pn, %_ZN7testing7MessageD2Ev.exit412 ], [ %.pn157.pn, %_ZN7testing7MessageD2Ev.exit393 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %.pn215.pn.pn
}

declare void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !51
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #29
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load <2 x ptr>, ptr %3, align 8, !noalias !105
  %i.b = load <2 x ptr>, ptr %4, align 8, !noalias !105
  %i.c = icmp eq <2 x ptr> %i.a, %i.b             ; 2 uses
  %5 = extractelement <2 x i1> %i.c, i64 0
  %6 = extractelement <2 x i1> %i.c, i64 1
  %7 = select i1 %6, i1 %5, i1 false
  br i1 %7, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %_ZN7testing8internal11CmpHelperEQIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN7testing8internal18CmpHelperEQFailureIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %_ZN7testing8internal11CmpHelperEQIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_.exit

_ZN7testing8internal11CmpHelperEQIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11CmpHelperNEIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = load <2 x ptr>, ptr %3, align 8
  %i.b = load <2 x ptr>, ptr %4, align 8
  %i.c = icmp eq <2 x ptr> %i.a, %i.b             ; 2 uses
  %5 = extractelement <2 x i1> %i.c, i64 0
  %6 = extractelement <2 x i1> %i.c, i64 1
  %7 = select i1 %6, i1 %5, i1 false
  br i1 %7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN7testing8internal18CmpHelperOpFailureIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_S8_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.132)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN43DelegateDeathTest_DISABLED_InvokeEmpty_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %1 = alloca %"class.testing::Matcher", align 8  ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  %5 = alloca %"class.testing::Matcher", align 8  ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.c = tail call noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
  br i1 %i.c, label %bb.b, label %bb.af

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %1, ptr noundef nonnull @.str.20)
  %i.d = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.19, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.2, i32 noundef 117, ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %1, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !62
  %.not.i.i77 = icmp eq ptr %i.h, null
  br i1 %.not.i.i77, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !51
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.e, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !51
  invoke void %i.o(ptr noundef %i.p)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.f, !inline_history !1

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #30, !inline_history !63
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.c, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.d, %bb.e
  br i1 %i.d, label %bb.h, label %bb.ad

bb.g:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #28
  br label %bb.ae

bb.h:                                             ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !108  ; 9 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.am, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  switch i32 %i.x, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread [
    i32 0, label %bb.l
    i32 1, label %bb.p
  ]

bb.k:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit84

bb.l:                                             ; preds = %bb.j
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !108  ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef i32 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.ae = invoke noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %i.ad)
          to label %bb.n unwind label %bb.k

bb.n:                                             ; preds = %bb.m
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = invoke noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i1 noundef zeroext %i.ae)
          to label %bb.o unwind label %bb.k

bb.o:                                             ; preds = %bb.n
  br i1 %i.ai, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit

bb.p:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %i.ak = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %_ZNK4entt8delegateIFiiEEclEi.exit unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.al = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  %i.an = extractvalue { ptr, i32 } %i.al, 1
  %i.ao = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #28
  %i.ap = icmp eq i32 %i.an, %i.ao
  %i.aq = call ptr @__cxa_begin_catch(ptr %i.am) #28 ; 2 uses
  br i1 %i.ap, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.2, i32 noundef 117)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.as = load ptr, ptr %2, align 8, !tbaa !48
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call noundef ptr %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.aq) #28
  %i.ax = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ar, ptr noundef nonnull @.str.21, ptr noundef %i.as, ptr noundef %i.aw) #31 ; 0 uses
  %i.ay = load ptr, ptr %2, align 8, !tbaa !48    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.s
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !51
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.bd = load ptr, ptr @stderr, align 8, !tbaa !110
  %i.be = call i32 @fflush(ptr noundef %i.bd)     ; 0 uses
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8
  invoke void %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, i32 noundef 1)
          to label %.invoke unwind label %bb.y

_ZNK4entt8delegateIFiiEEclEi.exit:                ; preds = %bb.p, %.invoke
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !20
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8
  invoke void %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, i32 noundef 2)
          to label %bb.t unwind label %bb.z

bb.t:                                             ; preds = %_ZNK4entt8delegateIFiiEEclEi.exit
  %i.bn = load ptr, ptr %i.aj, align 8, !tbaa !20
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke void %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #30
  unreachable

bb.v:                                             ; preds = %bb.q
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN24Delegate_Comparison_Test8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit
  %164 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %165 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %166 = alloca %"class.testing::Message", align 8 ; 7 uses
  %167 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %168 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %169 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %170 = alloca %"class.testing::Message", align 8 ; 7 uses
  %171 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %172 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %173 = alloca %"class.entt::delegate", align 8  ; 5 uses
  %174 = alloca %"class.testing::Message", align 8 ; 7 uses
  %175 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %176 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %177 = alloca %"class.testing::Message", align 8 ; 7 uses
  %178 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %179 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %180 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %181 = alloca %"class.testing::Message", align 8 ; 7 uses
  %182 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %183 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %184 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %185 = alloca %"class.testing::Message", align 8 ; 7 uses
  %186 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %187 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %188 = alloca %"class.entt::delegate", align 8  ; 4 uses
  %189 = alloca %"class.testing::Message", align 8 ; 7 uses
  %190 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %191 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %192 = alloca %"class.testing::Message", align 8 ; 7 uses
  %193 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %194 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %195 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %196 = alloca %"class.testing::Message", align 8 ; 7 uses
  %197 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %198 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %199 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %200 = alloca %"class.testing::Message", align 8 ; 7 uses
  %201 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %202 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %203 = alloca %"class.entt::delegate", align 8  ; 4 uses
  %204 = alloca %"class.testing::Message", align 8 ; 7 uses
  %205 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %206 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %207 = alloca %"class.testing::Message", align 8 ; 7 uses
  %208 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %209 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %210 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %211 = alloca %"class.testing::Message", align 8 ; 7 uses
  %212 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %213 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %214 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %215 = alloca %"class.testing::Message", align 8 ; 7 uses
  %216 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store i32 4, ptr %3, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i32 4, ptr %4, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
  %.pre = load i8, ptr %5, align 8, !tbaa !42, !range !43
  %i.o = trunc nuw i8 %.pre to i1
  br i1 %i.o, label %.critedge, label %bb.a

bb.a:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !44   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.c, %bb.b
  %i.s = phi ptr [ %i.r, %bb.c ], [ @.str.20, %bb.b ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 137, ptr noundef %i.s)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.t = load ptr, ptr %6, align 8, !tbaa !50     ; 3 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.e
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(128) %i.t) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.e, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !44   ; 4 uses
  %.not.i.i675 = icmp eq ptr %i.x, null
  br i1 %.not.i.i675, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !48   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !51
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.xc

bb.g:                                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit678

bb.h:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.af, %bb.i ], [ %i.ae, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.ag = load ptr, ptr %6, align 8, !tbaa !50    ; 3 uses
  %.not.i.i676 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i676, label %_ZN7testing7MessageD2Ev.exit678, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i677

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i677: ; preds = %bb.j
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(128) %i.ag) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit678

_ZN7testing7MessageD2Ev.exit678:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i677, %bb.j, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %.pn, %bb.j ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i677 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.xd

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !44 ; 4 uses
  %.not.i.i679 = icmp eq ptr %i.al, null
  br i1 %.not.i.i679, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !48 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i681, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i680

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i680: ; preds = %bb.k
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !51
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i681

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i681: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i680
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 32) #29
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i681, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.as = load <2 x ptr>, ptr %1, align 16
  %i.at = load <2 x ptr>, ptr %2, align 16
  %i.au = icmp eq <2 x ptr> %i.as, %i.at          ; 2 uses
  %217 = extractelement <2 x i1> %i.au, i64 0
  %218 = extractelement <2 x i1> %i.au, i64 1
  %219 = select i1 %218, i1 %217, i1 false        ; 2 uses
  %i.av = zext i1 %219 to i8
  store i8 %i.av, ptr %8, align 8, !tbaa !42
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr null, ptr %i.aw, align 8, !tbaa !56
  br i1 %219, label %_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit725, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.ax = load ptr, ptr %11, align 8, !tbaa !48
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 138, ptr noundef %i.ax)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #28
  %i.ay = load ptr, ptr %11, align 8, !tbaa !48   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !51
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.bd = load ptr, ptr %9, align 8, !tbaa !50    ; 3 uses
  %.not.i.i684 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i684, label %_ZN7testing7MessageD2Ev.exit686, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i685

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i685: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !20
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit686

_ZN7testing7MessageD2Ev.exit686:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i685
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.bh = load ptr, ptr %i.aw, align 8, !tbaa !44 ; 4 uses
  %.not.i.i687 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i687, label %_ZN7testing15AssertionResultD2Ev.exit691, label %bb.r

bb.r:                                             ; preds = %_ZN7testing7MessageD2Ev.exit686
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !48 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i689, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i688

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i688: ; preds = %bb.r
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !51
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i689

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i689: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i688
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit691

_ZN7testing15AssertionResultD2Ev.exit691:         ; preds = %_ZN7testing7MessageD2Ev.exit686, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i689
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.xc

bb.s:                                             ; preds = %bb.m
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit697

bb.t:                                             ; preds = %bb.n
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit694

bb.u:                                             ; preds = %bb.o
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.p
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #28
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn341 = phi { ptr, i32 } [ %i.bq, %bb.v ], [ %i.bp, %bb.u ] ; 2 uses
  %i.br = load ptr, ptr %11, align 8, !tbaa !48   ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit694, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i692

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i692: ; preds = %bb.w
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !51
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit694

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit694: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i692, %bb.t
  %.pn341.pn = phi { ptr, i32 } [ %i.bo, %bb.t ], [ %.pn341, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i692 ], [ %.pn341, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.bw = load ptr, ptr %9, align 8, !tbaa !50    ; 3 uses
  %.not.i.i695 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i695, label %_ZN7testing7MessageD2Ev.exit697, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i696

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i696: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit694
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !20
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(128) %i.bw) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit697

_ZN7testing7MessageD2Ev.exit697:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i696, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit694, %bb.s
  %.pn341.pn.pn = phi { ptr, i32 } [ %i.bn, %bb.s ], [ %.pn341.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit694 ], [ %.pn341.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i696 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.xd

_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit725: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12)
  %.pre1459 = load i8, ptr %12, align 8, !tbaa !42, !range !43
  %i.ca = trunc nuw i8 %.pre1459 to i1
  br i1 %i.ca, label %.critedge558, label %bb.x

bb.x:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit725
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.cb = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i726 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i726, label %_ZNK7testing15AssertionResult15failure_messageEv.exit727, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit727

_ZNK7testing15AssertionResult15failure_messageEv.exit727: ; preds = %bb.z, %bb.y
  %i.ce = phi ptr [ %i.cd, %bb.z ], [ @.str.20, %bb.y ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 140, ptr noundef %i.ce)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit727
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.cf = load ptr, ptr %13, align 8, !tbaa !50   ; 3 uses
  %.not.i.i728 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i728, label %_ZN7testing7MessageD2Ev.exit730, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i729

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i729: ; preds = %bb.ab
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !20
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(128) %i.cf) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit730

_ZN7testing7MessageD2Ev.exit730:                  ; preds = %bb.ab, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i729
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %i.cj = load ptr, ptr %i.cb, align 8, !tbaa !44 ; 4 uses
  %.not.i.i731 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i731, label %_ZN7testing15AssertionResultD2Ev.exit735, label %bb.ac

bb.ac:                                            ; preds = %_ZN7testing7MessageD2Ev.exit730
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !48 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i733, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i732

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i732: ; preds = %bb.ac
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !51
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i733

end_hunk_2
begin_hunk_3_@_ZN24Delegate_Comparison_Test8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit
  br label %bb.xc

bb.bo:                                            ; preds = %bb.bi
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit819

bb.bp:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit808
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bq:                                            ; preds = %bb.bl
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #28
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pn363 = phi { ptr, i32 } [ %i.gl, %bb.bq ], [ %i.gk, %bb.bp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  %i.gm = load ptr, ptr %23, align 8, !tbaa !50   ; 3 uses
  %.not.i.i817 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i817, label %_ZN7testing7MessageD2Ev.exit819, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i818

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i818: ; preds = %bb.br
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !20
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load ptr, ptr %i.go, align 8
  call void %i.gp(ptr noundef nonnull align 8 dereferenceable(128) %i.gm) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit819

_ZN7testing7MessageD2Ev.exit819:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i818, %bb.br, %bb.bo
  %.pn363.pn = phi { ptr, i32 } [ %i.gj, %bb.bo ], [ %.pn363, %bb.br ], [ %.pn363, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i818 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %bb.xd

.critedge566:                                     ; preds = %_ZN7testing8internal11CmpHelperNEIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_.exit
  %i.gq = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !44 ; 4 uses
  %.not.i.i820 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i820, label %_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit825, label %bb.bs

bb.bs:                                            ; preds = %.critedge566
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !48 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 16 ; 2 uses
  %i.gu = icmp eq ptr %i.gs, %i.gt
  br i1 %i.gu, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i822, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i821

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i821: ; preds = %bb.bs
  %i.gv = load i64, ptr %i.gt, align 8, !tbaa !51
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gw) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i822

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i822: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i821
  call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef 32) #29
  br label %_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit825

_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit825: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i822, %.critedge566
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  store ptr null, ptr %2, align 16, !tbaa !53
  store ptr @_ZZN4entt8delegateIFiiEE7connectITnDaXadL_Z12power_of_twoRKiEEEEvvENUlPKviE_8__invokeES7_i, ptr %i.ar, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %25)
  %i.gx = load i8, ptr %25, align 8, !tbaa !42, !range !43, !noundef !55
  %i.gy = trunc nuw i8 %i.gx to i1
  br i1 %i.gy, label %.critedge568, label %bb.bt

bb.bt:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit825
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.bu unwind label %bb.bz

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  %i.gz = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i826 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i826, label %_ZNK7testing15AssertionResult15failure_messageEv.exit827, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit827

_ZNK7testing15AssertionResult15failure_messageEv.exit827: ; preds = %bb.bv, %bb.bu
  %i.hc = phi ptr [ %i.hb, %bb.bv ], [ @.str.20, %bb.bu ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %27, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 151, ptr noundef %i.hc)
          to label %bb.bw unwind label %bb.ca

bb.bw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit827
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  %i.hd = load ptr, ptr %26, align 8, !tbaa !50   ; 3 uses
  %.not.i.i828 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i828, label %_ZN7testing7MessageD2Ev.exit830, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i829

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i829: ; preds = %bb.bx
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !20
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8
  call void %i.hg(ptr noundef nonnull align 8 dereferenceable(128) %i.hd) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit830

_ZN7testing7MessageD2Ev.exit830:                  ; preds = %bb.bx, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i829
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  %i.hh = load ptr, ptr %i.gz, align 8, !tbaa !44 ; 4 uses
  %.not.i.i831 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i831, label %_ZN7testing15AssertionResultD2Ev.exit835, label %bb.by

bb.by:                                            ; preds = %_ZN7testing7MessageD2Ev.exit830
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !48 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 2 uses
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i833, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i832

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i832: ; preds = %bb.by
  %i.hl = load i64, ptr %i.hj, align 8, !tbaa !51
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hm) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i833

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i833: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i832
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit835

_ZN7testing15AssertionResultD2Ev.exit835:         ; preds = %_ZN7testing7MessageD2Ev.exit830, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i833
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  br label %bb.xc

bb.bz:                                            ; preds = %bb.bt
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit838

bb.ca:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit827
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bw
  %i.hp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #28
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.pn366 = phi { ptr, i32 } [ %i.hp, %bb.cb ], [ %i.ho, %bb.ca ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  %i.hq = load ptr, ptr %26, align 8, !tbaa !50   ; 3 uses
  %.not.i.i836 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i836, label %_ZN7testing7MessageD2Ev.exit838, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i837

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i837: ; preds = %bb.cc
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !20
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(128) %i.hq) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit838

_ZN7testing7MessageD2Ev.exit838:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i837, %bb.cc, %bb.bz
  %.pn366.pn = phi { ptr, i32 } [ %i.hn, %bb.bz ], [ %.pn366, %bb.cc ], [ %.pn366, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i837 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %25) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  br label %bb.xd

.critedge568:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit825
  %i.hu = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !44 ; 4 uses
  %.not.i.i839 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i839, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %.critedge568
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !48 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 16 ; 2 uses
  %i.hy = icmp eq ptr %i.hw, %i.hx
  br i1 %i.hy, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i841, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i840

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i840: ; preds = %bb.cd
  %i.hz = load i64, ptr %i.hx, align 8, !tbaa !51
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.ia) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i841

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i841: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i840
  call void @_ZdlPvm(ptr noundef nonnull %i.hv, i64 noundef 32) #29
  br label %bb.ce

bb.ce:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i841, %.critedge568
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #28
  %i.ib = load <2 x ptr>, ptr %1, align 16
  %i.ic = load <2 x ptr>, ptr %2, align 16
  %i.id = icmp eq <2 x ptr> %i.ib, %i.ic          ; 2 uses
  %220 = extractelement <2 x i1> %i.id, i64 0
  %221 = extractelement <2 x i1> %i.id, i64 1
  %222 = select i1 %221, i1 %220, i1 false        ; 2 uses
  %i.ie = zext i1 %222 to i8
  store i8 %i.ie, ptr %28, align 8, !tbaa !42
  %i.if = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  store ptr null, ptr %i.if, align 8, !tbaa !56
  br i1 %222, label %_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit888, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.cg unwind label %bb.cl

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.ch unwind label %bb.cm

bb.ch:                                            ; preds = %bb.cg
  %i.ig = load ptr, ptr %31, align 8, !tbaa !48
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %30, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 152, ptr noundef %i.ig)
          to label %bb.ci unwind label %bb.cn

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.cj unwind label %bb.co

bb.cj:                                            ; preds = %bb.ci
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #28
  %i.ih = load ptr, ptr %31, align 8, !tbaa !48   ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.ij = icmp eq ptr %i.ih, %i.ii
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit846, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i844

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i844: ; preds = %bb.cj
  %i.ik = load i64, ptr %i.ii, align 8, !tbaa !51
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.il) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit846

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit846: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i844
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  %i.im = load ptr, ptr %29, align 8, !tbaa !50   ; 3 uses
  %.not.i.i847 = icmp eq ptr %i.im, null
  br i1 %.not.i.i847, label %_ZN7testing7MessageD2Ev.exit849, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i848

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i848: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit846
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !20
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.ip = load ptr, ptr %i.io, align 8
  call void %i.ip(ptr noundef nonnull align 8 dereferenceable(128) %i.im) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit849

_ZN7testing7MessageD2Ev.exit849:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit846, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i848
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  %i.iq = load ptr, ptr %i.if, align 8, !tbaa !44 ; 4 uses
  %.not.i.i850 = icmp eq ptr %i.iq, null
  br i1 %.not.i.i850, label %_ZN7testing15AssertionResultD2Ev.exit854, label %bb.ck

bb.ck:                                            ; preds = %_ZN7testing7MessageD2Ev.exit849
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !48 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 16 ; 2 uses
  %i.it = icmp eq ptr %i.ir, %i.is
  br i1 %i.it, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i852, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i851

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i851: ; preds = %bb.ck
  %i.iu = load i64, ptr %i.is, align 8, !tbaa !51
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iv) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i852

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i852: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i851
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit854

_ZN7testing15AssertionResultD2Ev.exit854:         ; preds = %_ZN7testing7MessageD2Ev.exit849, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i852
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  br label %bb.xc

bb.cl:                                            ; preds = %bb.cf
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit860

bb.cm:                                            ; preds = %bb.cg
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857

bb.cn:                                            ; preds = %bb.ch
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.co:                                            ; preds = %bb.ci
  %i.iz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #28
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.pn369 = phi { ptr, i32 } [ %i.iz, %bb.co ], [ %i.iy, %bb.cn ] ; 2 uses
  %i.ja = load ptr, ptr %31, align 8, !tbaa !48   ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.jc = icmp eq ptr %i.ja, %i.jb
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i855

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i855: ; preds = %bb.cp
  %i.jd = load i64, ptr %i.jb, align 8, !tbaa !51
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.je) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i855, %bb.cm
  %.pn369.pn = phi { ptr, i32 } [ %i.ix, %bb.cm ], [ %.pn369, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i855 ], [ %.pn369, %bb.cp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  %i.jf = load ptr, ptr %29, align 8, !tbaa !50   ; 3 uses
  %.not.i.i858 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i858, label %_ZN7testing7MessageD2Ev.exit860, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i859

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i859: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !20
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(128) %i.jf) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit860

_ZN7testing7MessageD2Ev.exit860:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i859, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857, %bb.cl
  %.pn369.pn.pn = phi { ptr, i32 } [ %i.iw, %bb.cl ], [ %.pn369.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857 ], [ %.pn369.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i859 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %28) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  br label %bb.xd

_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit888: ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #28
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %32)
  %.pre1461 = load i8, ptr %32, align 8, !tbaa !42, !range !43
  %i.jj = trunc nuw i8 %.pre1461 to i1
  br i1 %i.jj, label %.critedge574, label %bb.cq

bb.cq:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit888
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.cr unwind label %bb.cw

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  %i.jk = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i889 = icmp eq ptr %i.jl, null
  br i1 %.not.i.i.i889, label %_ZNK7testing15AssertionResult15failure_messageEv.exit890, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit890

_ZNK7testing15AssertionResult15failure_messageEv.exit890: ; preds = %bb.cs, %bb.cr
  %i.jn = phi ptr [ %i.jm, %bb.cs ], [ @.str.20, %bb.cr ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %34, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 154, ptr noundef %i.jn)
          to label %bb.ct unwind label %bb.cx

bb.ct:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit890
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.cu unwind label %bb.cy

bb.cu:                                            ; preds = %bb.ct
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  %i.jo = load ptr, ptr %33, align 8, !tbaa !50   ; 3 uses
  %.not.i.i891 = icmp eq ptr %i.jo, null
  br i1 %.not.i.i891, label %_ZN7testing7MessageD2Ev.exit893, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i892

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i892: ; preds = %bb.cu
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !20
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.jr = load ptr, ptr %i.jq, align 8
  call void %i.jr(ptr noundef nonnull align 8 dereferenceable(128) %i.jo) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit893

_ZN7testing7MessageD2Ev.exit893:                  ; preds = %bb.cu, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i892
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  %i.js = load ptr, ptr %i.jk, align 8, !tbaa !44 ; 4 uses
  %.not.i.i894 = icmp eq ptr %i.js, null
  br i1 %.not.i.i894, label %_ZN7testing15AssertionResultD2Ev.exit898, label %bb.cv

bb.cv:                                            ; preds = %_ZN7testing7MessageD2Ev.exit893
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !48 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 16 ; 2 uses
  %i.jv = icmp eq ptr %i.jt, %i.ju
  br i1 %i.jv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i896, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i895

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i895: ; preds = %bb.cv
  %i.jw = load i64, ptr %i.ju, align 8, !tbaa !51
  %i.jx = add i64 %i.jw, 1
  call void @_ZdlPvm(ptr noundef %i.jt, i64 noundef %i.jx) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i896

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i896: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i895
  call void @_ZdlPvm(ptr noundef nonnull %i.js, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit898

_ZN7testing15AssertionResultD2Ev.exit898:         ; preds = %_ZN7testing7MessageD2Ev.exit893, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i896
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  br label %bb.xc

bb.cw:                                            ; preds = %bb.cq
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit901

bb.cx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit890
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.cy:                                            ; preds = %bb.ct
  %i.ka = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #28
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.pn377 = phi { ptr, i32 } [ %i.ka, %bb.cy ], [ %i.jz, %bb.cx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  %i.kb = load ptr, ptr %33, align 8, !tbaa !50   ; 3 uses
  %.not.i.i899 = icmp eq ptr %i.kb, null
  br i1 %.not.i.i899, label %_ZN7testing7MessageD2Ev.exit901, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i900

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i900: ; preds = %bb.cz
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !20
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8
  call void %i.ke(ptr noundef nonnull align 8 dereferenceable(128) %i.kb) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit901

_ZN7testing7MessageD2Ev.exit901:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i900, %bb.cz, %bb.cw
  %.pn377.pn = phi { ptr, i32 } [ %i.jy, %bb.cw ], [ %.pn377, %bb.cz ], [ %.pn377, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i900 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %32) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  br label %bb.xd

.critedge574:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit888
  %i.kf = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !44 ; 4 uses
  %.not.i.i902 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i902, label %_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit907, label %bb.da

bb.da:                                            ; preds = %.critedge574
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !48 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i904, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i903

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i903: ; preds = %bb.da
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !51
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i904

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i904: ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i903
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef 32) #29
  br label %_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit907

_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit907: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i904, %.critedge574
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  store ptr %i.a, ptr %1, align 16, !tbaa !53
  store ptr @_ZZN4entt8delegateIFiiEE7connectITnDaXadL_Z12sum_with_refRKiiEES4_EEvRT0_ENUlPKviE_8__invokeES9_i, ptr %i.n, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #28
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %35)
  %i.km = load i8, ptr %35, align 8, !tbaa !42, !range !43, !noundef !55
  %i.kn = trunc nuw i8 %i.km to i1
  br i1 %i.kn, label %bb.dk, label %bb.db

bb.db:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit907
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %bb.dc unwind label %bb.dg

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #28
  %i.ko = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i908 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i.i908, label %_ZNK7testing15AssertionResult15failure_messageEv.exit909, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit909

_ZNK7testing15AssertionResult15failure_messageEv.exit909: ; preds = %bb.dd, %bb.dc
  %i.kr = phi ptr [ %i.kq, %bb.dd ], [ @.str.20, %bb.dc ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %37, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 158, ptr noundef %i.kr)
          to label %bb.de unwind label %bb.dh

bb.de:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit909
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %bb.df unwind label %bb.di

bb.df:                                            ; preds = %bb.de
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  %i.ks = load ptr, ptr %36, align 8, !tbaa !50   ; 3 uses
  %.not.i.i910 = icmp eq ptr %i.ks, null
  br i1 %.not.i.i910, label %_ZN7testing7MessageD2Ev.exit912, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i911

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i911: ; preds = %bb.df
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !20
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8
  call void %i.kv(ptr noundef nonnull align 8 dereferenceable(128) %i.ks) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit912

_ZN7testing7MessageD2Ev.exit912:                  ; preds = %bb.df, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i911
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %35) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  br label %bb.xc

bb.dg:                                            ; preds = %bb.db
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit915

bb.dh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit909
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.di:                                            ; preds = %bb.de
  %i.ky = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #28
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.pn380 = phi { ptr, i32 } [ %i.ky, %bb.di ], [ %i.kx, %bb.dh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  %i.kz = load ptr, ptr %36, align 8, !tbaa !50   ; 3 uses
  %.not.i.i913 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i913, label %_ZN7testing7MessageD2Ev.exit915, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i914

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i914: ; preds = %bb.dj
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !20
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8
  call void %i.lc(ptr noundef nonnull align 8 dereferenceable(128) %i.kz) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit915

_ZN7testing7MessageD2Ev.exit915:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i914, %bb.dj, %bb.dg
  %.pn380.pn = phi { ptr, i32 } [ %i.kw, %bb.dg ], [ %.pn380, %bb.dj ], [ %.pn380, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i914 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %35) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  br label %bb.xd

bb.dk:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit907
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %35) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #28
  %i.ld = load <2 x ptr>, ptr %1, align 16
  %i.le = load <2 x ptr>, ptr %2, align 16
  %i.lf = icmp ne <2 x ptr> %i.ld, %i.le          ; 2 uses
  %223 = extractelement <2 x i1> %i.lf, i64 0
  %224 = extractelement <2 x i1> %i.lf, i64 1
  %.not1432 = select i1 %224, i1 true, i1 %223    ; 2 uses
  %i.lg = zext i1 %.not1432 to i8
  store i8 %i.lg, ptr %38, align 8, !tbaa !42
  %i.lh = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr null, ptr %i.lh, align 8, !tbaa !56
  br i1 %.not1432, label %bb.dv, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.dm unwind label %bb.dq

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %41, ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4)
          to label %bb.dn unwind label %bb.dr

bb.dn:                                            ; preds = %bb.dm
  %i.li = load ptr, ptr %41, align 8, !tbaa !48
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %40, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 159, ptr noundef %i.li)
          to label %bb.do unwind label %bb.ds

bb.do:                                            ; preds = %bb.dn
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.dp unwind label %bb.dt

bb.dp:                                            ; preds = %bb.do
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #28
  %i.lj = load ptr, ptr %41, align 8, !tbaa !48   ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.ll = icmp eq ptr %i.lj, %i.lk
  br i1 %i.ll, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit918, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i916

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i916: ; preds = %bb.dp
  %i.lm = load i64, ptr %i.lk, align 8, !tbaa !51
  %i.ln = add i64 %i.lm, 1
  call void @_ZdlPvm(ptr noundef %i.lj, i64 noundef %i.ln) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit918

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit918: ; preds = %bb.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i916
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  %i.lo = load ptr, ptr %39, align 8, !tbaa !50   ; 3 uses
  %.not.i.i919 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i919, label %_ZN7testing7MessageD2Ev.exit921, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i920

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i920: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit918
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !20
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.lr = load ptr, ptr %i.lq, align 8
  call void %i.lr(ptr noundef nonnull align 8 dereferenceable(128) %i.lo) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit921

_ZN7testing7MessageD2Ev.exit921:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit918, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i920
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %38) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %bb.xc

bb.dq:                                            ; preds = %bb.dl
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit927

bb.dr:                                            ; preds = %bb.dm
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit924

bb.ds:                                            ; preds = %bb.dn
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.dt:                                            ; preds = %bb.do
  %i.lv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #28
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.pn383 = phi { ptr, i32 } [ %i.lv, %bb.dt ], [ %i.lu, %bb.ds ] ; 2 uses
  %i.lw = load ptr, ptr %41, align 8, !tbaa !48   ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.ly = icmp eq ptr %i.lw, %i.lx
  br i1 %i.ly, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit924, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i922

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i922: ; preds = %bb.du
  %i.lz = load i64, ptr %i.lx, align 8, !tbaa !51
  %i.ma = add i64 %i.lz, 1
  call void @_ZdlPvm(ptr noundef %i.lw, i64 noundef %i.ma) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit924

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit924: ; preds = %bb.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i922, %bb.dr
  %.pn383.pn = phi { ptr, i32 } [ %i.lt, %bb.dr ], [ %.pn383, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i922 ], [ %.pn383, %bb.du ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  %i.mb = load ptr, ptr %39, align 8, !tbaa !50   ; 3 uses
  %.not.i.i925 = icmp eq ptr %i.mb, null
  br i1 %.not.i.i925, label %_ZN7testing7MessageD2Ev.exit927, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i926

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i926: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit924
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !20
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.me = load ptr, ptr %i.md, align 8
  call void %i.me(ptr noundef nonnull align 8 dereferenceable(128) %i.mb) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit927

_ZN7testing7MessageD2Ev.exit927:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i926, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit924, %bb.dq
  %.pn383.pn.pn = phi { ptr, i32 } [ %i.ls, %bb.dq ], [ %.pn383.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit924 ], [ %.pn383.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i926 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %38) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %bb.xd

bb.dv:                                            ; preds = %bb.dk
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %38) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #28
  %i.mf = load <2 x ptr>, ptr %1, align 16
  %i.mg = load <2 x ptr>, ptr %2, align 16
  %i.mh = icmp ne <2 x ptr> %i.mf, %i.mg          ; 2 uses
  %225 = extractelement <2 x i1> %i.mh, i64 0
  %226 = extractelement <2 x i1> %i.mh, i64 1
  %.not1434 = select i1 %226, i1 true, i1 %225    ; 2 uses
  %i.mi = zext i1 %.not1434 to i8
  store i8 %i.mi, ptr %42, align 8, !tbaa !42
  %i.mj = getelementptr inbounds nuw i8, ptr %42, i64 8
  store ptr null, ptr %i.mj, align 8, !tbaa !56
  br i1 %.not1434, label %bb.eg, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %43)
          to label %bb.dx unwind label %bb.eb

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %45, ptr noundef nonnull align 8 dereferenceable(16) %42, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.dy unwind label %bb.ec

bb.dy:                                            ; preds = %bb.dx
  %i.mk = load ptr, ptr %45, align 8, !tbaa !48
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %44, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 160, ptr noundef %i.mk)
          to label %bb.dz unwind label %bb.ed

bb.dz:                                            ; preds = %bb.dy
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef nonnull align 8 dereferenceable(8) %43)
          to label %bb.ea unwind label %bb.ee

bb.ea:                                            ; preds = %bb.dz
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %44) #28
  %i.ml = load ptr, ptr %45, align 8, !tbaa !48   ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.mn = icmp eq ptr %i.ml, %i.mm
  br i1 %i.mn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit930, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i928

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i928: ; preds = %bb.ea
  %i.mo = load i64, ptr %i.mm, align 8, !tbaa !51
  %i.mp = add i64 %i.mo, 1
  call void @_ZdlPvm(ptr noundef %i.ml, i64 noundef %i.mp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit930

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit930: ; preds = %bb.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i928
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #28
  %i.mq = load ptr, ptr %43, align 8, !tbaa !50   ; 3 uses
  %.not.i.i931 = icmp eq ptr %i.mq, null
  br i1 %.not.i.i931, label %_ZN7testing7MessageD2Ev.exit933, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i932

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i932: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit930
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !20
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mt = load ptr, ptr %i.ms, align 8
  call void %i.mt(ptr noundef nonnull align 8 dereferenceable(128) %i.mq) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit933

_ZN7testing7MessageD2Ev.exit933:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit930, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i932
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %42) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  br label %bb.xc

bb.eb:                                            ; preds = %bb.dw
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit939

bb.ec:                                            ; preds = %bb.dx
  %i.mv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936

bb.ed:                                            ; preds = %bb.dy
  %i.mw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.ee:                                            ; preds = %bb.dz
  %i.mx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %44) #28
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %.pn387 = phi { ptr, i32 } [ %i.mx, %bb.ee ], [ %i.mw, %bb.ed ] ; 2 uses
  %i.my = load ptr, ptr %45, align 8, !tbaa !48   ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.na = icmp eq ptr %i.my, %i.mz
  br i1 %i.na, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i934

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i934: ; preds = %bb.ef
  %i.nb = load i64, ptr %i.mz, align 8, !tbaa !51
  %i.nc = add i64 %i.nb, 1
  call void @_ZdlPvm(ptr noundef %i.my, i64 noundef %i.nc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936: ; preds = %bb.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i934, %bb.ec
  %.pn387.pn = phi { ptr, i32 } [ %i.mv, %bb.ec ], [ %.pn387, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i934 ], [ %.pn387, %bb.ef ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #28
  %i.nd = load ptr, ptr %43, align 8, !tbaa !50   ; 3 uses
  %.not.i.i937 = icmp eq ptr %i.nd, null
  br i1 %.not.i.i937, label %_ZN7testing7MessageD2Ev.exit939, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i938

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i938: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !20
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.ng = load ptr, ptr %i.nf, align 8
  call void %i.ng(ptr noundef nonnull align 8 dereferenceable(128) %i.nd) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit939

_ZN7testing7MessageD2Ev.exit939:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i938, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936, %bb.eb
  %.pn387.pn.pn = phi { ptr, i32 } [ %i.mu, %bb.eb ], [ %.pn387.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.pn387.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i938 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %42) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  br label %bb.xd

bb.eg:                                            ; preds = %bb.dv
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %42) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #28
  call void @_ZN7testing8internal11CmpHelperNEIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %46, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.32, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.nh = load i8, ptr %46, align 8, !tbaa !42, !range !43, !noundef !55
  %i.ni = trunc nuw i8 %i.nh to i1
  br i1 %i.ni, label %bb.eq, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %bb.ei unwind label %bb.em

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #28
  %i.nj = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i940 = icmp eq ptr %i.nk, null
  br i1 %.not.i.i.i940, label %_ZNK7testing15AssertionResult15failure_messageEv.exit941, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit941

_ZNK7testing15AssertionResult15failure_messageEv.exit941: ; preds = %bb.ej, %bb.ei
  %i.nm = phi ptr [ %i.nl, %bb.ej ], [ @.str.20, %bb.ei ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %48, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 161, ptr noundef %i.nm)
          to label %bb.ek unwind label %bb.en

bb.ek:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit941
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %bb.el unwind label %bb.eo

bb.el:                                            ; preds = %bb.ek
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %48) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #28
  %i.nn = load ptr, ptr %47, align 8, !tbaa !50   ; 3 uses
  %.not.i.i942 = icmp eq ptr %i.nn, null
  br i1 %.not.i.i942, label %_ZN7testing7MessageD2Ev.exit944, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i943

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i943: ; preds = %bb.el
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !20
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nq = load ptr, ptr %i.np, align 8
  call void %i.nq(ptr noundef nonnull align 8 dereferenceable(128) %i.nn) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit944

_ZN7testing7MessageD2Ev.exit944:                  ; preds = %bb.el, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i943
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %46) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #28
  br label %bb.xc

bb.em:                                            ; preds = %bb.eh
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit947

bb.en:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit941
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

bb.eo:                                            ; preds = %bb.ek
  %i.nt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %48) #28
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %.pn391 = phi { ptr, i32 } [ %i.nt, %bb.eo ], [ %i.ns, %bb.en ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #28
  %i.nu = load ptr, ptr %47, align 8, !tbaa !50   ; 3 uses
  %.not.i.i945 = icmp eq ptr %i.nu, null
  br i1 %.not.i.i945, label %_ZN7testing7MessageD2Ev.exit947, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i946

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i946: ; preds = %bb.ep
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !20
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  %i.nx = load ptr, ptr %i.nw, align 8
  call void %i.nx(ptr noundef nonnull align 8 dereferenceable(128) %i.nu) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit947

_ZN7testing7MessageD2Ev.exit947:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i946, %bb.ep, %bb.em
  %.pn391.pn = phi { ptr, i32 } [ %i.nr, %bb.em ], [ %.pn391, %bb.ep ], [ %.pn391, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i946 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %46) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #28
  br label %bb.xd

bb.eq:                                            ; preds = %bb.eg
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %46) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #28
  store ptr %i.a, ptr %2, align 16, !tbaa !53
  store ptr @_ZZN4entt8delegateIFiiEE7connectITnDaXadL_Z12sum_with_refRKiiEES4_EEvRT0_ENUlPKviE_8__invokeES9_i, ptr %i.ar, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #28
  %i.ny = getelementptr inbounds nuw i8, ptr %50, i64 8
  store ptr %i.a, ptr %50, align 8, !tbaa !53
  store ptr @_ZZN4entt8delegateIFiiEE7connectITnDaXadL_Z12sum_with_refRKiiEES4_EEvRT0_ENUlPKviE_8__invokeES9_i, ptr %i.ny, align 8, !tbaa !54
  call void @_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %49, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.34, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %50)
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #28
  %i.nz = load i8, ptr %49, align 8, !tbaa !42, !range !43, !noundef !55
  %i.oa = trunc nuw i8 %i.nz to i1
  br i1 %i.oa, label %bb.fa, label %bb.er

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %51)
          to label %bb.es unwind label %bb.ew

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #28
  %i.ob = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i948 = icmp eq ptr %i.oc, null
  br i1 %.not.i.i.i948, label %_ZNK7testing15AssertionResult15failure_messageEv.exit949, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit949

_ZNK7testing15AssertionResult15failure_messageEv.exit949: ; preds = %bb.et, %bb.es
  %i.oe = phi ptr [ %i.od, %bb.et ], [ @.str.20, %bb.es ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %52, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 165, ptr noundef %i.oe)
          to label %bb.eu unwind label %bb.ex

bb.eu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit949
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef nonnull align 8 dereferenceable(8) %51)
          to label %bb.ev unwind label %bb.ey

bb.ev:                                            ; preds = %bb.eu
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %52) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #28
  %i.of = load ptr, ptr %51, align 8, !tbaa !50   ; 3 uses
  %.not.i.i950 = icmp eq ptr %i.of, null
  br i1 %.not.i.i950, label %_ZN7testing7MessageD2Ev.exit952, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i951

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i951: ; preds = %bb.ev
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !20
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %i.oi = load ptr, ptr %i.oh, align 8
  call void %i.oi(ptr noundef nonnull align 8 dereferenceable(128) %i.of) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit952

_ZN7testing7MessageD2Ev.exit952:                  ; preds = %bb.ev, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i951
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %49) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #28
  br label %bb.xc

bb.ew:                                            ; preds = %bb.er
  %i.oj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit955

bb.ex:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit949
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.ey:                                            ; preds = %bb.eu
  %i.ol = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %52) #28
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %.pn394 = phi { ptr, i32 } [ %i.ol, %bb.ey ], [ %i.ok, %bb.ex ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #28
  %i.om = load ptr, ptr %51, align 8, !tbaa !50   ; 3 uses
  %.not.i.i953 = icmp eq ptr %i.om, null
  br i1 %.not.i.i953, label %_ZN7testing7MessageD2Ev.exit955, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i954

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i954: ; preds = %bb.ez
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !20
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %i.op = load ptr, ptr %i.oo, align 8
  call void %i.op(ptr noundef nonnull align 8 dereferenceable(128) %i.om) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit955

_ZN7testing7MessageD2Ev.exit955:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i954, %bb.ez, %bb.ew
  %.pn394.pn = phi { ptr, i32 } [ %i.oj, %bb.ew ], [ %.pn394, %bb.ez ], [ %.pn394, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i954 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %49) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #28
  br label %bb.xd

bb.fa:                                            ; preds = %bb.eq
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %49) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #28
  %i.oq = load <2 x ptr>, ptr %1, align 16
  %i.or = load <2 x ptr>, ptr %2, align 16
  %i.os = icmp eq <2 x ptr> %i.oq, %i.or          ; 2 uses
  %227 = extractelement <2 x i1> %i.os, i64 0
  %228 = extractelement <2 x i1> %i.os, i64 1
  %229 = select i1 %228, i1 %227, i1 false        ; 2 uses
  %i.ot = zext i1 %229 to i8
  store i8 %i.ot, ptr %53, align 8, !tbaa !42
  %i.ou = getelementptr inbounds nuw i8, ptr %53, i64 8
  store ptr null, ptr %i.ou, align 8, !tbaa !56
  br i1 %229, label %bb.fl, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %54)
          to label %bb.fc unwind label %bb.fg

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %56, ptr noundef nonnull align 8 dereferenceable(16) %53, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.fd unwind label %bb.fh

bb.fd:                                            ; preds = %bb.fc
  %i.ov = load ptr, ptr %56, align 8, !tbaa !48
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %55, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 166, ptr noundef %i.ov)
          to label %bb.fe unwind label %bb.fi

bb.fe:                                            ; preds = %bb.fd
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef nonnull align 8 dereferenceable(8) %54)
          to label %bb.ff unwind label %bb.fj

bb.ff:                                            ; preds = %bb.fe
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %55) #28
  %i.ow = load ptr, ptr %56, align 8, !tbaa !48   ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 2 uses
  %i.oy = icmp eq ptr %i.ow, %i.ox
  br i1 %i.oy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit958, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i956

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i956: ; preds = %bb.ff
  %i.oz = load i64, ptr %i.ox, align 8, !tbaa !51
  %i.pa = add i64 %i.oz, 1
  call void @_ZdlPvm(ptr noundef %i.ow, i64 noundef %i.pa) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit958

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit958: ; preds = %bb.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i956
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #28
  %i.pb = load ptr, ptr %54, align 8, !tbaa !50   ; 3 uses
  %.not.i.i959 = icmp eq ptr %i.pb, null
  br i1 %.not.i.i959, label %_ZN7testing7MessageD2Ev.exit961, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i960

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i960: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit958
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !20
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pe = load ptr, ptr %i.pd, align 8
  call void %i.pe(ptr noundef nonnull align 8 dereferenceable(128) %i.pb) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit961

_ZN7testing7MessageD2Ev.exit961:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit958, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i960
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %53) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #28
  br label %bb.xc

bb.fg:                                            ; preds = %bb.fb
  %i.pf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit967

bb.fh:                                            ; preds = %bb.fc
  %i.pg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit964

bb.fi:                                            ; preds = %bb.fd
  %i.ph = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fe
  %i.pi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %55) #28
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %.pn397 = phi { ptr, i32 } [ %i.pi, %bb.fj ], [ %i.ph, %bb.fi ] ; 2 uses
  %i.pj = load ptr, ptr %56, align 8, !tbaa !48   ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 2 uses
  %i.pl = icmp eq ptr %i.pj, %i.pk
  br i1 %i.pl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit964, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i962

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i962: ; preds = %bb.fk
  %i.pm = load i64, ptr %i.pk, align 8, !tbaa !51
  %i.pn = add i64 %i.pm, 1
  call void @_ZdlPvm(ptr noundef %i.pj, i64 noundef %i.pn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit964

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit964: ; preds = %bb.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i962, %bb.fh
  %.pn397.pn = phi { ptr, i32 } [ %i.pg, %bb.fh ], [ %.pn397, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i962 ], [ %.pn397, %bb.fk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #28
  %i.po = load ptr, ptr %54, align 8, !tbaa !50   ; 3 uses
  %.not.i.i965 = icmp eq ptr %i.po, null
  br i1 %.not.i.i965, label %_ZN7testing7MessageD2Ev.exit967, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i966

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i966: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit964
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !20
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.pr = load ptr, ptr %i.pq, align 8
  call void %i.pr(ptr noundef nonnull align 8 dereferenceable(128) %i.po) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit967

_ZN7testing7MessageD2Ev.exit967:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i966, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit964, %bb.fg
  %.pn397.pn.pn = phi { ptr, i32 } [ %i.pf, %bb.fg ], [ %.pn397.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit964 ], [ %.pn397.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i966 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %53) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #28
  br label %bb.xd

bb.fl:                                            ; preds = %bb.fa
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %53) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #28
  %i.ps = load <2 x ptr>, ptr %1, align 16
  %i.pt = load <2 x ptr>, ptr %2, align 16
  %i.pu = icmp eq <2 x ptr> %i.ps, %i.pt          ; 2 uses
  %230 = extractelement <2 x i1> %i.pu, i64 0
  %231 = extractelement <2 x i1> %i.pu, i64 1
  %232 = select i1 %231, i1 %230, i1 false        ; 2 uses
  %i.pv = zext i1 %232 to i8
  store i8 %i.pv, ptr %57, align 8, !tbaa !42
  %i.pw = getelementptr inbounds nuw i8, ptr %57, i64 8
  store ptr null, ptr %i.pw, align 8, !tbaa !56
  br i1 %232, label %bb.fw, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %58)
          to label %bb.fn unwind label %bb.fr

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %60, ptr noundef nonnull align 8 dereferenceable(16) %57, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4)
          to label %bb.fo unwind label %bb.fs

bb.fo:                                            ; preds = %bb.fn
  %i.px = load ptr, ptr %60, align 8, !tbaa !48
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %59, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 167, ptr noundef %i.px)
          to label %bb.fp unwind label %bb.ft

bb.fp:                                            ; preds = %bb.fo
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %59, ptr noundef nonnull align 8 dereferenceable(8) %58)
          to label %bb.fq unwind label %bb.fu

bb.fq:                                            ; preds = %bb.fp
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %59) #28
  %i.py = load ptr, ptr %60, align 8, !tbaa !48   ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 2 uses
  %i.qa = icmp eq ptr %i.py, %i.pz
  br i1 %i.qa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit970, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i968

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i968: ; preds = %bb.fq
  %i.qb = load i64, ptr %i.pz, align 8, !tbaa !51
  %i.qc = add i64 %i.qb, 1
  call void @_ZdlPvm(ptr noundef %i.py, i64 noundef %i.qc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit970

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit970: ; preds = %bb.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i968
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #28
  %i.qd = load ptr, ptr %58, align 8, !tbaa !50   ; 3 uses
  %.not.i.i971 = icmp eq ptr %i.qd, null
  br i1 %.not.i.i971, label %_ZN7testing7MessageD2Ev.exit973, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i972

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i972: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit970
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !20
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %i.qg = load ptr, ptr %i.qf, align 8
  call void %i.qg(ptr noundef nonnull align 8 dereferenceable(128) %i.qd) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit973

_ZN7testing7MessageD2Ev.exit973:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit970, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i972
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %57) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #28
  br label %bb.xc

bb.fr:                                            ; preds = %bb.fm
  %i.qh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit979

bb.fs:                                            ; preds = %bb.fn
  %i.qi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit976

bb.ft:                                            ; preds = %bb.fo
  %i.qj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

bb.fu:                                            ; preds = %bb.fp
  %i.qk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %59) #28
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %.pn401 = phi { ptr, i32 } [ %i.qk, %bb.fu ], [ %i.qj, %bb.ft ] ; 2 uses
  %i.ql = load ptr, ptr %60, align 8, !tbaa !48   ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 2 uses
  %i.qn = icmp eq ptr %i.ql, %i.qm
  br i1 %i.qn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit976, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i974

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i974: ; preds = %bb.fv
  %i.qo = load i64, ptr %i.qm, align 8, !tbaa !51
  %i.qp = add i64 %i.qo, 1
  call void @_ZdlPvm(ptr noundef %i.ql, i64 noundef %i.qp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit976

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit976: ; preds = %bb.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i974, %bb.fs
  %.pn401.pn = phi { ptr, i32 } [ %i.qi, %bb.fs ], [ %.pn401, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i974 ], [ %.pn401, %bb.fv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #28
  %i.qq = load ptr, ptr %58, align 8, !tbaa !50   ; 3 uses
  %.not.i.i977 = icmp eq ptr %i.qq, null
  br i1 %.not.i.i977, label %_ZN7testing7MessageD2Ev.exit979, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i978

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i978: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit976
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !20
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %i.qt = load ptr, ptr %i.qs, align 8
  call void %i.qt(ptr noundef nonnull align 8 dereferenceable(128) %i.qq) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit979

_ZN7testing7MessageD2Ev.exit979:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit976, %bb.fr
  %.pn401.pn.pn = phi { ptr, i32 } [ %i.qh, %bb.fr ], [ %.pn401.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit976 ], [ %.pn401.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i978 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %57) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #28
  br label %bb.xd

bb.fw:                                            ; preds = %bb.fl
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %57) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #28
  call void @_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %61, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.32, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.qu = load i8, ptr %61, align 8, !tbaa !42, !range !43, !noundef !55
  %i.qv = trunc nuw i8 %i.qu to i1
  br i1 %i.qv, label %bb.gg, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %62)
          to label %bb.fy unwind label %bb.gc

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #28
  %i.qw = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i980 = icmp eq ptr %i.qx, null
  br i1 %.not.i.i.i980, label %_ZNK7testing15AssertionResult15failure_messageEv.exit981, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit981

_ZNK7testing15AssertionResult15failure_messageEv.exit981: ; preds = %bb.fz, %bb.fy
  %i.qz = phi ptr [ %i.qy, %bb.fz ], [ @.str.20, %bb.fy ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %63, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 168, ptr noundef %i.qz)
          to label %bb.ga unwind label %bb.gd

bb.ga:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit981
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef nonnull align 8 dereferenceable(8) %62)
          to label %bb.gb unwind label %bb.ge

bb.gb:                                            ; preds = %bb.ga
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %63) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #28
  %i.ra = load ptr, ptr %62, align 8, !tbaa !50   ; 3 uses
  %.not.i.i982 = icmp eq ptr %i.ra, null
  br i1 %.not.i.i982, label %_ZN7testing7MessageD2Ev.exit984, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i983

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i983: ; preds = %bb.gb
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !20
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.rd = load ptr, ptr %i.rc, align 8
  call void %i.rd(ptr noundef nonnull align 8 dereferenceable(128) %i.ra) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit984

_ZN7testing7MessageD2Ev.exit984:                  ; preds = %bb.gb, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i983
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %61) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #28
  br label %bb.xc

bb.gc:                                            ; preds = %bb.fx
  %i.re = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit987

bb.gd:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit981
  %i.rf = landingpad { ptr, i32 }
          cleanup
  br label %bb.gf

bb.ge:                                            ; preds = %bb.ga
  %i.rg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %63) #28
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %.pn405 = phi { ptr, i32 } [ %i.rg, %bb.ge ], [ %i.rf, %bb.gd ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #28
  %i.rh = load ptr, ptr %62, align 8, !tbaa !50   ; 3 uses
  %.not.i.i985 = icmp eq ptr %i.rh, null
  br i1 %.not.i.i985, label %_ZN7testing7MessageD2Ev.exit987, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i986

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i986: ; preds = %bb.gf
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !20
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  %i.rk = load ptr, ptr %i.rj, align 8
  call void %i.rk(ptr noundef nonnull align 8 dereferenceable(128) %i.rh) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit987

_ZN7testing7MessageD2Ev.exit987:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i986, %bb.gf, %bb.gc
  %.pn405.pn = phi { ptr, i32 } [ %i.re, %bb.gc ], [ %.pn405, %bb.gf ], [ %.pn405, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i986 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %61) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #28
  br label %bb.xd

bb.gg:                                            ; preds = %bb.fw
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %61) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #28
  store ptr %i.a, ptr %1, align 16, !tbaa !53
  store ptr @_ZZN4entt8delegateIFiiEE7connectITnDaXadL_Z12sum_with_ptrPKiiEES4_EEvPT0_ENUlPKviE_8__invokeES9_i, ptr %i.n, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #28
  %i.rl = getelementptr inbounds nuw i8, ptr %65, i64 8
  store ptr %i.a, ptr %65, align 8, !tbaa !53
  store ptr @_ZZN4entt8delegateIFiiEE7connectITnDaXadL_Z12sum_with_ptrPKiiEES4_EEvPT0_ENUlPKviE_8__invokeES9_i, ptr %i.rl, align 8, !tbaa !54
  call void @_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %64, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.35, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %65)
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #28
  %i.rm = load i8, ptr %64, align 8, !tbaa !42, !range !43, !noundef !55
  %i.rn = trunc nuw i8 %i.rm to i1
  br i1 %i.rn, label %bb.gq, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %66)
          to label %bb.gi unwind label %bb.gm

bb.gi:                                            ; preds = %bb.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #28
  %i.ro = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i988 = icmp eq ptr %i.rp, null
  br i1 %.not.i.i.i988, label %_ZNK7testing15AssertionResult15failure_messageEv.exit989, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit989

_ZNK7testing15AssertionResult15failure_messageEv.exit989: ; preds = %bb.gj, %bb.gi
  %i.rr = phi ptr [ %i.rq, %bb.gj ], [ @.str.20, %bb.gi ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %67, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 172, ptr noundef %i.rr)
          to label %bb.gk unwind label %bb.gn

bb.gk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit989
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef nonnull align 8 dereferenceable(8) %66)
          to label %bb.gl unwind label %bb.go

bb.gl:                                            ; preds = %bb.gk
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %67) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #28
  %i.rs = load ptr, ptr %66, align 8, !tbaa !50   ; 3 uses
  %.not.i.i990 = icmp eq ptr %i.rs, null
  br i1 %.not.i.i990, label %_ZN7testing7MessageD2Ev.exit992, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i991

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i991: ; preds = %bb.gl
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !20
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  %i.rv = load ptr, ptr %i.ru, align 8
  call void %i.rv(ptr noundef nonnull align 8 dereferenceable(128) %i.rs) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit992

_ZN7testing7MessageD2Ev.exit992:                  ; preds = %bb.gl, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i991
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %64) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #28
  br label %bb.xc

bb.gm:                                            ; preds = %bb.gh
  %i.rw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit995

bb.gn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit989
  %i.rx = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

bb.go:                                            ; preds = %bb.gk
  %i.ry = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %67) #28
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %.pn408 = phi { ptr, i32 } [ %i.ry, %bb.go ], [ %i.rx, %bb.gn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #28
  %i.rz = load ptr, ptr %66, align 8, !tbaa !50   ; 3 uses
  %.not.i.i993 = icmp eq ptr %i.rz, null
  br i1 %.not.i.i993, label %_ZN7testing7MessageD2Ev.exit995, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i994

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i994: ; preds = %bb.gp
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !20
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  %i.sc = load ptr, ptr %i.sb, align 8
  call void %i.sc(ptr noundef nonnull align 8 dereferenceable(128) %i.rz) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit995

_ZN7testing7MessageD2Ev.exit995:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i994, %bb.gp, %bb.gm
  %.pn408.pn = phi { ptr, i32 } [ %i.rw, %bb.gm ], [ %.pn408, %bb.gp ], [ %.pn408, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i994 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %64) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #28
  br label %bb.xd

bb.gq:                                            ; preds = %bb.gg
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %64) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #28
  %i.sd = load <2 x ptr>, ptr %1, align 16
  %i.se = load <2 x ptr>, ptr %2, align 16
  %i.sf = icmp ne <2 x ptr> %i.sd, %i.se          ; 2 uses
  %233 = extractelement <2 x i1> %i.sf, i64 0
  %234 = extractelement <2 x i1> %i.sf, i64 1
  %.not1436 = select i1 %234, i1 true, i1 %233    ; 2 uses
  %i.sg = zext i1 %.not1436 to i8
  store i8 %i.sg, ptr %68, align 8, !tbaa !42
  %i.sh = getelementptr inbounds nuw i8, ptr %68, i64 8
  store ptr null, ptr %i.sh, align 8, !tbaa !56
  br i1 %.not1436, label %bb.hb, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %69)
          to label %bb.gs unwind label %bb.gw

bb.gs:                                            ; preds = %bb.gr
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %71, ptr noundef nonnull align 8 dereferenceable(16) %68, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4)
          to label %bb.gt unwind label %bb.gx

bb.gt:                                            ; preds = %bb.gs
  %i.si = load ptr, ptr %71, align 8, !tbaa !48
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %70, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 173, ptr noundef %i.si)
          to label %bb.gu unwind label %bb.gy

bb.gu:                                            ; preds = %bb.gt
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %70, ptr noundef nonnull align 8 dereferenceable(8) %69)
          to label %bb.gv unwind label %bb.gz

bb.gv:                                            ; preds = %bb.gu
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %70) #28
  %i.sj = load ptr, ptr %71, align 8, !tbaa !48   ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 2 uses
  %i.sl = icmp eq ptr %i.sj, %i.sk
  br i1 %i.sl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit998, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i996

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i996: ; preds = %bb.gv
  %i.sm = load i64, ptr %i.sk, align 8, !tbaa !51
  %i.sn = add i64 %i.sm, 1
  call void @_ZdlPvm(ptr noundef %i.sj, i64 noundef %i.sn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit998

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit998: ; preds = %bb.gv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i996
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #28
  %i.so = load ptr, ptr %69, align 8, !tbaa !50   ; 3 uses
  %.not.i.i999 = icmp eq ptr %i.so, null
  br i1 %.not.i.i999, label %_ZN7testing7MessageD2Ev.exit1001, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1000

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1000: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit998
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !20
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  %i.sr = load ptr, ptr %i.sq, align 8
  call void %i.sr(ptr noundef nonnull align 8 dereferenceable(128) %i.so) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1001

_ZN7testing7MessageD2Ev.exit1001:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit998, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1000
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %68) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #28
  br label %bb.xc

bb.gw:                                            ; preds = %bb.gr
  %i.ss = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1007

bb.gx:                                            ; preds = %bb.gs
  %i.st = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1004

bb.gy:                                            ; preds = %bb.gt
  %i.su = landingpad { ptr, i32 }
          cleanup
  br label %bb.ha

bb.gz:                                            ; preds = %bb.gu
  %i.sv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %70) #28
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %.pn411 = phi { ptr, i32 } [ %i.sv, %bb.gz ], [ %i.su, %bb.gy ] ; 2 uses
  %i.sw = load ptr, ptr %71, align 8, !tbaa !48   ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 2 uses
  %i.sy = icmp eq ptr %i.sw, %i.sx
  br i1 %i.sy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1004, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1002

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1002: ; preds = %bb.ha
  %i.sz = load i64, ptr %i.sx, align 8, !tbaa !51
  %i.ta = add i64 %i.sz, 1
  call void @_ZdlPvm(ptr noundef %i.sw, i64 noundef %i.ta) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1004

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1004: ; preds = %bb.ha, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1002, %bb.gx
  %.pn411.pn = phi { ptr, i32 } [ %i.st, %bb.gx ], [ %.pn411, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1002 ], [ %.pn411, %bb.ha ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #28
  %i.tb = load ptr, ptr %69, align 8, !tbaa !50   ; 3 uses
  %.not.i.i1005 = icmp eq ptr %i.tb, null
  br i1 %.not.i.i1005, label %_ZN7testing7MessageD2Ev.exit1007, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1006

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1006: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1004
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !20
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  %i.te = load ptr, ptr %i.td, align 8
  call void %i.te(ptr noundef nonnull align 8 dereferenceable(128) %i.tb) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1007

_ZN7testing7MessageD2Ev.exit1007:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1006, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1004, %bb.gw
  %.pn411.pn.pn = phi { ptr, i32 } [ %i.ss, %bb.gw ], [ %.pn411.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1004 ], [ %.pn411.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1006 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %68) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #28
  br label %bb.xd

bb.hb:                                            ; preds = %bb.gq
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %68) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #28
  %i.tf = load <2 x ptr>, ptr %1, align 16
  %i.tg = load <2 x ptr>, ptr %2, align 16
  %i.th = icmp ne <2 x ptr> %i.tf, %i.tg          ; 2 uses
  %235 = extractelement <2 x i1> %i.th, i64 0
  %236 = extractelement <2 x i1> %i.th, i64 1
  %.not1438 = select i1 %236, i1 true, i1 %235    ; 2 uses
  %i.ti = zext i1 %.not1438 to i8
  store i8 %i.ti, ptr %72, align 8, !tbaa !42
  %i.tj = getelementptr inbounds nuw i8, ptr %72, i64 8
  store ptr null, ptr %i.tj, align 8, !tbaa !56
  br i1 %.not1438, label %bb.hm, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %73)
          to label %bb.hd unwind label %bb.hh

bb.hd:                                            ; preds = %bb.hc
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %75, ptr noundef nonnull align 8 dereferenceable(16) %72, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.he unwind label %bb.hi

bb.he:                                            ; preds = %bb.hd
  %i.tk = load ptr, ptr %75, align 8, !tbaa !48
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %74, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 174, ptr noundef %i.tk)
          to label %bb.hf unwind label %bb.hj

bb.hf:                                            ; preds = %bb.he
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %74, ptr noundef nonnull align 8 dereferenceable(8) %73)
          to label %bb.hg unwind label %bb.hk

bb.hg:                                            ; preds = %bb.hf
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %74) #28
  %i.tl = load ptr, ptr %75, align 8, !tbaa !48   ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 2 uses
  %i.tn = icmp eq ptr %i.tl, %i.tm
  br i1 %i.tn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1010, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1008

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1008: ; preds = %bb.hg
  %i.to = load i64, ptr %i.tm, align 8, !tbaa !51
  %i.tp = add i64 %i.to, 1
  call void @_ZdlPvm(ptr noundef %i.tl, i64 noundef %i.tp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1010

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1010: ; preds = %bb.hg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1008
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #28
  %i.tq = load ptr, ptr %73, align 8, !tbaa !50   ; 3 uses
  %.not.i.i1011 = icmp eq ptr %i.tq, null
  br i1 %.not.i.i1011, label %_ZN7testing7MessageD2Ev.exit1013, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1012

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1012: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1010
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !20
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %i.tt = load ptr, ptr %i.ts, align 8
  call void %i.tt(ptr noundef nonnull align 8 dereferenceable(128) %i.tq) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1013

_ZN7testing7MessageD2Ev.exit1013:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1010, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1012
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %72) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #28
  br label %bb.xc

bb.hh:                                            ; preds = %bb.hc
  %i.tu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1019

bb.hi:                                            ; preds = %bb.hd
  %i.tv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016

bb.hj:                                            ; preds = %bb.he
  %i.tw = landingpad { ptr, i32 }
          cleanup
  br label %bb.hl

bb.hk:                                            ; preds = %bb.hf
  %i.tx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %74) #28
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %.pn415 = phi { ptr, i32 } [ %i.tx, %bb.hk ], [ %i.tw, %bb.hj ] ; 2 uses
  %i.ty = load ptr, ptr %75, align 8, !tbaa !48   ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 2 uses
  %i.ua = icmp eq ptr %i.ty, %i.tz
  br i1 %i.ua, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1014

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1014: ; preds = %bb.hl
  %i.ub = load i64, ptr %i.tz, align 8, !tbaa !51
  %i.uc = add i64 %i.ub, 1
  call void @_ZdlPvm(ptr noundef %i.ty, i64 noundef %i.uc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016: ; preds = %bb.hl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1014, %bb.hi
  %.pn415.pn = phi { ptr, i32 } [ %i.tv, %bb.hi ], [ %.pn415, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1014 ], [ %.pn415, %bb.hl ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #28
  %i.ud = load ptr, ptr %73, align 8, !tbaa !50   ; 3 uses
  %.not.i.i1017 = icmp eq ptr %i.ud, null
  br i1 %.not.i.i1017, label %_ZN7testing7MessageD2Ev.exit1019, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1018

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1018: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !20
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  %i.ug = load ptr, ptr %i.uf, align 8
  call void %i.ug(ptr noundef nonnull align 8 dereferenceable(128) %i.ud) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1019

_ZN7testing7MessageD2Ev.exit1019:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1018, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016, %bb.hh
  %.pn415.pn.pn = phi { ptr, i32 } [ %i.tu, %bb.hh ], [ %.pn415.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016 ], [ %.pn415.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1018 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %72) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #28
  br label %bb.xd

bb.hm:                                            ; preds = %bb.hb
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %72) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #28
  call void @_ZN7testing8internal11CmpHelperNEIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %76, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.32, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.uh = load i8, ptr %76, align 8, !tbaa !42, !range !43, !noundef !55
  %i.ui = trunc nuw i8 %i.uh to i1
  br i1 %i.ui, label %bb.hw, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %bb.ho unwind label %bb.hs

bb.ho:                                            ; preds = %bb.hn
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #28
  %i.uj = getelementptr inbounds nuw i8, ptr %76, i64 8
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i1020 = icmp eq ptr %i.uk, null
  br i1 %.not.i.i.i1020, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1021, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1021

_ZNK7testing15AssertionResult15failure_messageEv.exit1021: ; preds = %bb.hp, %bb.ho
  %i.um = phi ptr [ %i.ul, %bb.hp ], [ @.str.20, %bb.ho ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %78, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 175, ptr noundef %i.um)
          to label %bb.hq unwind label %bb.ht

bb.hq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1021
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %78, ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %bb.hr unwind label %bb.hu

bb.hr:                                            ; preds = %bb.hq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %78) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #28
  %i.un = load ptr, ptr %77, align 8, !tbaa !50   ; 3 uses
  %.not.i.i1022 = icmp eq ptr %i.un, null
  br i1 %.not.i.i1022, label %_ZN7testing7MessageD2Ev.exit1024, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1023

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1023: ; preds = %bb.hr
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !20
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
  %i.uq = load ptr, ptr %i.up, align 8
  call void %i.uq(ptr noundef nonnull align 8 dereferenceable(128) %i.un) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1024

_ZN7testing7MessageD2Ev.exit1024:                 ; preds = %bb.hr, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1023
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %76) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #28
  br label %bb.xc

bb.hs:                                            ; preds = %bb.hn
  %i.ur = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1027

bb.ht:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1021
  %i.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.hv

bb.hu:                                            ; preds = %bb.hq
  %i.ut = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %78) #28
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %.pn419 = phi { ptr, i32 } [ %i.ut, %bb.hu ], [ %i.us, %bb.ht ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #28
  %i.uu = load ptr, ptr %77, align 8, !tbaa !50   ; 3 uses
  %.not.i.i1025 = icmp eq ptr %i.uu, null
  br i1 %.not.i.i1025, label %_ZN7testing7MessageD2Ev.exit1027, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1026

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1026: ; preds = %bb.hv
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !20
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 8
  %i.ux = load ptr, ptr %i.uw, align 8
  call void %i.ux(ptr noundef nonnull align 8 dereferenceable(128) %i.uu) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1027

_ZN7testing7MessageD2Ev.exit1027:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1026, %bb.hv, %bb.hs
  %.pn419.pn = phi { ptr, i32 } [ %i.ur, %bb.hs ], [ %.pn419, %bb.hv ], [ %.pn419, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1026 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %76) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #28
  br label %bb.xd

bb.hw:                                            ; preds = %bb.hm
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %76) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #28
  store ptr %i.a, ptr %2, align 16, !tbaa !53
  store ptr @_ZZN4entt8delegateIFiiEE7connectITnDaXadL_Z12sum_with_ptrPKiiEES4_EEvPT0_ENUlPKviE_8__invokeES9_i, ptr %i.ar, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #28
  %i.uy = getelementptr inbounds nuw i8, ptr %80, i64 8
  store ptr %i.a, ptr %80, align 8, !tbaa !53
  store ptr @_ZZN4entt8delegateIFiiEE7connectITnDaXadL_Z12sum_with_ptrPKiiEES4_EEvPT0_ENUlPKviE_8__invokeES9_i, ptr %i.uy, align 8, !tbaa !54
  call void @_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %79, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.35, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %80)
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #28
  %i.uz = load i8, ptr %79, align 8, !tbaa !42, !range !43, !noundef !55
  %i.va = trunc nuw i8 %i.uz to i1
  br i1 %i.va, label %bb.ig, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %81)
          to label %bb.hy unwind label %bb.ic

bb.hy:                                            ; preds = %bb.hx
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #28
  %i.vb = getelementptr inbounds nuw i8, ptr %79, i64 8
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i1028 = icmp eq ptr %i.vc, null
  br i1 %.not.i.i.i1028, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1029, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1029

_ZNK7testing15AssertionResult15failure_messageEv.exit1029: ; preds = %bb.hz, %bb.hy
  %i.ve = phi ptr [ %i.vd, %bb.hz ], [ @.str.20, %bb.hy ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %82, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 179, ptr noundef %i.ve)
          to label %bb.ia unwind label %bb.id

bb.ia:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1029
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %82, ptr noundef nonnull align 8 dereferenceable(8) %81)
          to label %bb.ib unwind label %bb.ie

bb.ib:                                            ; preds = %bb.ia
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %82) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #28
  %i.vf = load ptr, ptr %81, align 8, !tbaa !50   ; 3 uses
  %.not.i.i1030 = icmp eq ptr %i.vf, null
  br i1 %.not.i.i1030, label %_ZN7testing7MessageD2Ev.exit1032, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1031

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1031: ; preds = %bb.ib
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !20
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 8
  %i.vi = load ptr, ptr %i.vh, align 8
  call void %i.vi(ptr noundef nonnull align 8 dereferenceable(128) %i.vf) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1032

_ZN7testing7MessageD2Ev.exit1032:                 ; preds = %bb.ib, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1031
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %79) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #28
  br label %bb.xc

bb.ic:                                            ; preds = %bb.hx
  %i.vj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1035

bb.id:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1029
  %i.vk = landingpad { ptr, i32 }
          cleanup
  br label %bb.if

bb.ie:                                            ; preds = %bb.ia
  %i.vl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %82) #28
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id
  %.pn422 = phi { ptr, i32 } [ %i.vl, %bb.ie ], [ %i.vk, %bb.id ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #28
  %i.vm = load ptr, ptr %81, align 8, !tbaa !50   ; 3 uses
  %.not.i.i1033 = icmp eq ptr %i.vm, null
  br i1 %.not.i.i1033, label %_ZN7testing7MessageD2Ev.exit1035, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1034

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1034: ; preds = %bb.if
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !20
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  %i.vp = load ptr, ptr %i.vo, align 8
  call void %i.vp(ptr noundef nonnull align 8 dereferenceable(128) %i.vm) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1035

_ZN7testing7MessageD2Ev.exit1035:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1034, %bb.if, %bb.ic
  %.pn422.pn = phi { ptr, i32 } [ %i.vj, %bb.ic ], [ %.pn422, %bb.if ], [ %.pn422, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1034 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %79) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #28
  br label %bb.xd

bb.ig:                                            ; preds = %bb.hw
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %79) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #28
  %i.vq = load <2 x ptr>, ptr %1, align 16
  %i.vr = load <2 x ptr>, ptr %2, align 16
  %i.vs = icmp eq <2 x ptr> %i.vq, %i.vr          ; 2 uses
  %237 = extractelement <2 x i1> %i.vs, i64 0
  %238 = extractelement <2 x i1> %i.vs, i64 1
  %239 = select i1 %238, i1 %237, i1 false        ; 2 uses
  %i.vt = zext i1 %239 to i8
  store i8 %i.vt, ptr %83, align 8, !tbaa !42
  %i.vu = getelementptr inbounds nuw i8, ptr %83, i64 8
  store ptr null, ptr %i.vu, align 8, !tbaa !56
  br i1 %239, label %bb.ir, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %84)
          to label %bb.ii unwind label %bb.im

bb.ii:                                            ; preds = %bb.ih
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %86, ptr noundef nonnull align 8 dereferenceable(16) %83, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.ij unwind label %bb.in

bb.ij:                                            ; preds = %bb.ii
  %i.vv = load ptr, ptr %86, align 8, !tbaa !48
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %85, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 180, ptr noundef %i.vv)
          to label %bb.ik unwind label %bb.io

bb.ik:                                            ; preds = %bb.ij
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef nonnull align 8 dereferenceable(8) %84)
          to label %bb.il unwind label %bb.ip

bb.il:                                            ; preds = %bb.ik
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %85) #28
  %i.vw = load ptr, ptr %86, align 8, !tbaa !48   ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %86, i64 16 ; 2 uses
  %i.vy = icmp eq ptr %i.vw, %i.vx
  br i1 %i.vy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1038, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1036

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1036: ; preds = %bb.il
  %i.vz = load i64, ptr %i.vx, align 8, !tbaa !51
  %i.wa = add i64 %i.vz, 1
  call void @_ZdlPvm(ptr noundef %i.vw, i64 noundef %i.wa) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1038

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1038: ; preds = %bb.il, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1036
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #28
  %i.wb = load ptr, ptr %84, align 8, !tbaa !50   ; 3 uses
  %.not.i.i1039 = icmp eq ptr %i.wb, null
  br i1 %.not.i.i1039, label %_ZN7testing7MessageD2Ev.exit1041, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1040

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1040: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1038
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !20
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 8
  %i.we = load ptr, ptr %i.wd, align 8
  call void %i.we(ptr noundef nonnull align 8 dereferenceable(128) %i.wb) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1041

_ZN7testing7MessageD2Ev.exit1041:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1038, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1040
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %83) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #28
  br label %bb.xc

bb.im:                                            ; preds = %bb.ih
  %i.wf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1047

bb.in:                                            ; preds = %bb.ii
  %i.wg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1044

bb.io:                                            ; preds = %bb.ij
  %i.wh = landingpad { ptr, i32 }
          cleanup
  br label %bb.iq

bb.ip:                                            ; preds = %bb.ik
  %i.wi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %85) #28
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.io
  %.pn425 = phi { ptr, i32 } [ %i.wi, %bb.ip ], [ %i.wh, %bb.io ] ; 2 uses
  %i.wj = load ptr, ptr %86, align 8, !tbaa !48   ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %86, i64 16 ; 2 uses
  %i.wl = icmp eq ptr %i.wj, %i.wk
  br i1 %i.wl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1044, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1042

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1042: ; preds = %bb.iq
  %i.wm = load i64, ptr %i.wk, align 8, !tbaa !51
  %i.wn = add i64 %i.wm, 1
  call void @_ZdlPvm(ptr noundef %i.wj, i64 noundef %i.wn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1044

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1044: ; preds = %bb.iq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1042, %bb.in
  %.pn425.pn = phi { ptr, i32 } [ %i.wg, %bb.in ], [ %.pn425, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1042 ], [ %.pn425, %bb.iq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #28
  %i.wo = load ptr, ptr %84, align 8, !tbaa !50   ; 3 uses
  %.not.i.i1045 = icmp eq ptr %i.wo, null
  br i1 %.not.i.i1045, label %_ZN7testing7MessageD2Ev.exit1047, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1046

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1046: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1044
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !20
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 8
  %i.wr = load ptr, ptr %i.wq, align 8
  call void %i.wr(ptr noundef nonnull align 8 dereferenceable(128) %i.wo) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1047

_ZN7testing7MessageD2Ev.exit1047:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1046, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1044, %bb.im
  %.pn425.pn.pn = phi { ptr, i32 } [ %i.wf, %bb.im ], [ %.pn425.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1044 ], [ %.pn425.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1046 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %83) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #28
  br label %bb.xd

bb.ir:                                            ; preds = %bb.ig
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %83) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #28
  %i.ws = load <2 x ptr>, ptr %1, align 16
  %i.wt = load <2 x ptr>, ptr %2, align 16
  %i.wu = icmp eq <2 x ptr> %i.ws, %i.wt          ; 2 uses
  %240 = extractelement <2 x i1> %i.wu, i64 0
  %241 = extractelement <2 x i1> %i.wu, i64 1
  %242 = select i1 %241, i1 %240, i1 false        ; 2 uses
  %i.wv = zext i1 %242 to i8
  store i8 %i.wv, ptr %87, align 8, !tbaa !42
  %i.ww = getelementptr inbounds nuw i8, ptr %87, i64 8
  store ptr null, ptr %i.ww, align 8, !tbaa !56
  br i1 %242, label %bb.jc, label %bb.is

bb.is:                                            ; preds = %bb.ir
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %88)
          to label %bb.it unwind label %bb.ix

bb.it:                                            ; preds = %bb.is
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %90, ptr noundef nonnull align 8 dereferenceable(16) %87, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4)
          to label %bb.iu unwind label %bb.iy

bb.iu:                                            ; preds = %bb.it
  %i.wx = load ptr, ptr %90, align 8, !tbaa !48
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %89, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 181, ptr noundef %i.wx)
          to label %bb.iv unwind label %bb.iz

bb.iv:                                            ; preds = %bb.iu
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef nonnull align 8 dereferenceable(8) %88)
          to label %bb.iw unwind label %bb.ja

bb.iw:                                            ; preds = %bb.iv
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %89) #28
  %i.wy = load ptr, ptr %90, align 8, !tbaa !48   ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %90, i64 16 ; 2 uses
  %i.xa = icmp eq ptr %i.wy, %i.wz
  br i1 %i.xa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1050, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1048

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1048: ; preds = %bb.iw
  %i.xb = load i64, ptr %i.wz, align 8, !tbaa !51
  %i.xc = add i64 %i.xb, 1
  call void @_ZdlPvm(ptr noundef %i.wy, i64 noundef %i.xc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1050

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1050: ; preds = %bb.iw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1048
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #28
  %i.xd = load ptr, ptr %88, align 8, !tbaa !50   ; 3 uses
  %.not.i.i1051 = icmp eq ptr %i.xd, null
  br i1 %.not.i.i1051, label %_ZN7testing7MessageD2Ev.exit1053, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1052

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1052: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1050
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !20
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  %i.xg = load ptr, ptr %i.xf, align 8
  call void %i.xg(ptr noundef nonnull align 8 dereferenceable(128) %i.xd) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1053

_ZN7testing7MessageD2Ev.exit1053:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1050, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1052
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %87) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #28
  br label %bb.xc

bb.ix:                                            ; preds = %bb.is
  %i.xh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1059

bb.iy:                                            ; preds = %bb.it
  %i.xi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1056

bb.iz:                                            ; preds = %bb.iu
  %i.xj = landingpad { ptr, i32 }
          cleanup
  br label %bb.jb

bb.ja:                                            ; preds = %bb.iv
  %i.xk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %89) #28
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz
  %.pn429 = phi { ptr, i32 } [ %i.xk, %bb.ja ], [ %i.xj, %bb.iz ] ; 2 uses
  %i.xl = load ptr, ptr %90, align 8, !tbaa !48   ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %90, i64 16 ; 2 uses
  %i.xn = icmp eq ptr %i.xl, %i.xm
  br i1 %i.xn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1056, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1054

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1054: ; preds = %bb.jb
  %i.xo = load i64, ptr %i.xm, align 8, !tbaa !51
  %i.xp = add i64 %i.xo, 1
  call void @_ZdlPvm(ptr noundef %i.xl, i64 noundef %i.xp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1056

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1056: ; preds = %bb.jb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1054, %bb.iy
  %.pn429.pn = phi { ptr, i32 } [ %i.xi, %bb.iy ], [ %.pn429, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1054 ], [ %.pn429, %bb.jb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #28
  %i.xq = load ptr, ptr %88, align 8, !tbaa !50   ; 3 uses
  %.not.i.i1057 = icmp eq ptr %i.xq, null
  br i1 %.not.i.i1057, label %_ZN7testing7MessageD2Ev.exit1059, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1058

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1058: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1056
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !20
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 8
  %i.xt = load ptr, ptr %i.xs, align 8
  call void %i.xt(ptr noundef nonnull align 8 dereferenceable(128) %i.xq) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1059

_ZN7testing7MessageD2Ev.exit1059:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1058, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1056, %bb.ix
  %.pn429.pn.pn = phi { ptr, i32 } [ %i.xh, %bb.ix ], [ %.pn429.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1056 ], [ %.pn429.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1058 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %87) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #28
  br label %bb.xd

bb.jc:                                            ; preds = %bb.ir
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %87) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #28
  call void @_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %91, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.32, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.xu = load i8, ptr %91, align 8, !tbaa !42, !range !43, !noundef !55
  %i.xv = trunc nuw i8 %i.xu to i1
  br i1 %i.xv, label %bb.jm, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %92)
          to label %bb.je unwind label %bb.ji

bb.je:                                            ; preds = %bb.jd
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #28
  %i.xw = getelementptr inbounds nuw i8, ptr %91, i64 8
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i1060 = icmp eq ptr %i.xx, null
  br i1 %.not.i.i.i1060, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1061, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1061

_ZNK7testing15AssertionResult15failure_messageEv.exit1061: ; preds = %bb.jf, %bb.je
  %i.xz = phi ptr [ %i.xy, %bb.jf ], [ @.str.20, %bb.je ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %93, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 182, ptr noundef %i.xz)
          to label %bb.jg unwind label %bb.jj

bb.jg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1061
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %93, ptr noundef nonnull align 8 dereferenceable(8) %92)
          to label %bb.jh unwind label %bb.jk

bb.jh:                                            ; preds = %bb.jg
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %93) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #28
  %i.ya = load ptr, ptr %92, align 8, !tbaa !50   ; 3 uses
  %.not.i.i1062 = icmp eq ptr %i.ya, null
  br i1 %.not.i.i1062, label %_ZN7testing7MessageD2Ev.exit1064, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1063

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1063: ; preds = %bb.jh
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !20
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 8
  %i.yd = load ptr, ptr %i.yc, align 8
  call void %i.yd(ptr noundef nonnull align 8 dereferenceable(128) %i.ya) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1064

_ZN7testing7MessageD2Ev.exit1064:                 ; preds = %bb.jh, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1063
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %91) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #28
  br label %bb.xc

bb.ji:                                            ; preds = %bb.jd
  %i.ye = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1067

bb.jj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1061
  %i.yf = landingpad { ptr, i32 }
          cleanup
  br label %bb.jl

bb.jk:                                            ; preds = %bb.jg
  %i.yg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %93) #28
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.jj
  %.pn433 = phi { ptr, i32 } [ %i.yg, %bb.jk ], [ %i.yf, %bb.jj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #28
  %i.yh = load ptr, ptr %92, align 8, !tbaa !50   ; 3 uses
  %.not.i.i1065 = icmp eq ptr %i.yh, null
  br i1 %.not.i.i1065, label %_ZN7testing7MessageD2Ev.exit1067, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1066

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1066: ; preds = %bb.jl
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !20
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 8
  %i.yk = load ptr, ptr %i.yj, align 8
  call void %i.yk(ptr noundef nonnull align 8 dereferenceable(128) %i.yh) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1067

_ZN7testing7MessageD2Ev.exit1067:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1066, %bb.jl, %bb.ji
  %.pn433.pn = phi { ptr, i32 } [ %i.ye, %bb.ji ], [ %.pn433, %bb.jl ], [ %.pn433, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1066 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %91) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #28
  br label %bb.xd

bb.jm:                                            ; preds = %bb.jc
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %91) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #28
  store ptr %3, ptr %1, align 16, !tbaa !53
  store ptr @_ZZN4entt8delegateIFiiEE7connectITnDaXadL_ZN16delegate_functorclEiEES4_EEvRT0_ENUlPKviE_8__invokeES8_i, ptr %i.n, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #28
  %i.yl = getelementptr inbounds nuw i8, ptr %95, i64 8
  store ptr %3, ptr %95, align 8, !tbaa !53
  store ptr @_ZZN4entt8delegateIFiiEE7connectITnDaXadL_ZN16delegate_functorclEiEES4_EEvRT0_ENUlPKviE_8__invokeES8_i, ptr %i.yl, align 8, !tbaa !54
  call void @_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %94, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.36, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %95)
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #28
  %i.ym = load i8, ptr %94, align 8, !tbaa !42, !range !43, !noundef !55
  %i.yn = trunc nuw i8 %i.ym to i1
  br i1 %i.yn, label %bb.jw, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %96)
          to label %bb.jo unwind label %bb.js

bb.jo:                                            ; preds = %bb.jn
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #28
  %i.yo = getelementptr inbounds nuw i8, ptr %94, i64 8
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i1068 = icmp eq ptr %i.yp, null
  br i1 %.not.i.i.i1068, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1069, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1069

_ZNK7testing15AssertionResult15failure_messageEv.exit1069: ; preds = %bb.jp, %bb.jo
  %i.yr = phi ptr [ %i.yq, %bb.jp ], [ @.str.20, %bb.jo ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %97, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 186, ptr noundef %i.yr)
          to label %bb.jq unwind label %bb.jt

bb.jq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1069
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %97, ptr noundef nonnull align 8 dereferenceable(8) %96)
          to label %bb.jr unwind label %bb.ju

bb.jr:                                            ; preds = %bb.jq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %97) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #28
  %i.ys = load ptr, ptr %96, align 8, !tbaa !50   ; 3 uses
  %.not.i.i1070 = icmp eq ptr %i.ys, null
  br i1 %.not.i.i1070, label %_ZN7testing7MessageD2Ev.exit1072, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1071

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1071: ; preds = %bb.jr
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !20
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 8
  %i.yv = load ptr, ptr %i.yu, align 8
  call void %i.yv(ptr noundef nonnull align 8 dereferenceable(128) %i.ys) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1072

_ZN7testing7MessageD2Ev.exit1072:                 ; preds = %bb.jr, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1071
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %94) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #28
  br label %bb.xc

bb.js:                                            ; preds = %bb.jn
  %i.yw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1075

bb.jt:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1069
  %i.yx = landingpad { ptr, i32 }
          cleanup
  br label %bb.jv

bb.ju:                                            ; preds = %bb.jq
  %i.yy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %97) #28
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jt
  %.pn436 = phi { ptr, i32 } [ %i.yy, %bb.ju ], [ %i.yx, %bb.jt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #28
  %i.yz = load ptr, ptr %96, align 8, !tbaa !50   ; 3 uses
  %.not.i.i1073 = icmp eq ptr %i.yz, null
  br i1 %.not.i.i1073, label %_ZN7testing7MessageD2Ev.exit1075, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1074

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1074: ; preds = %bb.jv
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !20
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  %i.zc = load ptr, ptr %i.zb, align 8
  call void %i.zc(ptr noundef nonnull align 8 dereferenceable(128) %i.yz) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1075

_ZN7testing7MessageD2Ev.exit1075:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1074, %bb.jv, %bb.js
  %.pn436.pn = phi { ptr, i32 } [ %i.yw, %bb.js ], [ %.pn436, %bb.jv ], [ %.pn436, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1074 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %94) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #28
  br label %bb.xd

bb.jw:                                            ; preds = %bb.jm
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %94) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #28
  %i.zd = load <2 x ptr>, ptr %1, align 16
  %i.ze = load <2 x ptr>, ptr %2, align 16
  %i.zf = icmp ne <2 x ptr> %i.zd, %i.ze          ; 2 uses
  %243 = extractelement <2 x i1> %i.zf, i64 0
  %244 = extractelement <2 x i1> %i.zf, i64 1
  %.not1440 = select i1 %244, i1 true, i1 %243    ; 2 uses
  %i.zg = zext i1 %.not1440 to i8
  store i8 %i.zg, ptr %98, align 8, !tbaa !42
  %i.zh = getelementptr inbounds nuw i8, ptr %98, i64 8
  store ptr null, ptr %i.zh, align 8, !tbaa !56
  br i1 %.not1440, label %bb.kh, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %99)
          to label %bb.jy unwind label %bb.kc

bb.jy:                                            ; preds = %bb.jx
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %101, ptr noundef nonnull align 8 dereferenceable(16) %98, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4)
          to label %bb.jz unwind label %bb.kd

bb.jz:                                            ; preds = %bb.jy
  %i.zi = load ptr, ptr %101, align 8, !tbaa !48
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %100, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 187, ptr noundef %i.zi)
          to label %bb.ka unwind label %bb.ke

bb.ka:                                            ; preds = %bb.jz
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %100, ptr noundef nonnull align 8 dereferenceable(8) %99)
          to label %bb.kb unwind label %bb.kf

bb.kb:                                            ; preds = %bb.ka
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %100) #28
  %i.zj = load ptr, ptr %101, align 8, !tbaa !48  ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %101, i64 16 ; 2 uses
  %i.zl = icmp eq ptr %i.zj, %i.zk
  br i1 %i.zl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1078, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1076

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1076: ; preds = %bb.kb
  %i.zm = load i64, ptr %i.zk, align 8, !tbaa !51
  %i.zn = add i64 %i.zm, 1
  call void @_ZdlPvm(ptr noundef %i.zj, i64 noundef %i.zn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1078

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1078: ; preds = %bb.kb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1076
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #28
  %i.zo = load ptr, ptr %99, align 8, !tbaa !50   ; 3 uses
  %.not.i.i1079 = icmp eq ptr %i.zo, null
  br i1 %.not.i.i1079, label %_ZN7testing7MessageD2Ev.exit1081, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1080

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1080: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1078
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !20
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 8
  %i.zr = load ptr, ptr %i.zq, align 8
  call void %i.zr(ptr noundef nonnull align 8 dereferenceable(128) %i.zo) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1081

_ZN7testing7MessageD2Ev.exit1081:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1078, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1080
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %98) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #28
  br label %bb.xc

bb.kc:                                            ; preds = %bb.jx
  %i.zs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1087

bb.kd:                                            ; preds = %bb.jy
  %i.zt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1084

bb.ke:                                            ; preds = %bb.jz
  %i.zu = landingpad { ptr, i32 }
          cleanup
  br label %bb.kg

bb.kf:                                            ; preds = %bb.ka
  %i.zv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %100) #28
  br label %bb.kg

bb.kg:                                            ; preds = %bb.kf, %bb.ke
  %.pn439 = phi { ptr, i32 } [ %i.zv, %bb.kf ], [ %i.zu, %bb.ke ] ; 2 uses
  %i.zw = load ptr, ptr %101, align 8, !tbaa !48  ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %101, i64 16 ; 2 uses
  %i.zy = icmp eq ptr %i.zw, %i.zx
  br i1 %i.zy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1084, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1082

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1082: ; preds = %bb.kg
  %i.zz = load i64, ptr %i.zx, align 8, !tbaa !51
  %i.aaa = add i64 %i.zz, 1
  call void @_ZdlPvm(ptr noundef %i.zw, i64 noundef %i.aaa) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1084

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1084: ; preds = %bb.kg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1082, %bb.kd
  %.pn439.pn = phi { ptr, i32 } [ %i.zt, %bb.kd ], [ %.pn439, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1082 ], [ %.pn439, %bb.kg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #28
  %i.aab = load ptr, ptr %99, align 8, !tbaa !50  ; 3 uses
  %.not.i.i1085 = icmp eq ptr %i.aab, null
  br i1 %.not.i.i1085, label %_ZN7testing7MessageD2Ev.exit1087, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1086

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1086: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1084
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !20
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 8
  %i.aae = load ptr, ptr %i.aad, align 8
  call void %i.aae(ptr noundef nonnull align 8 dereferenceable(128) %i.aab) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1087

_ZN7testing7MessageD2Ev.exit1087:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1086, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1084, %bb.kc
  %.pn439.pn.pn = phi { ptr, i32 } [ %i.zs, %bb.kc ], [ %.pn439.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1084 ], [ %.pn439.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1086 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %98) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #28
  br label %bb.xd

bb.kh:                                            ; preds = %bb.jw
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %98) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %102) #28
  %i.aaf = load <2 x ptr>, ptr %1, align 16
  %i.aag = load <2 x ptr>, ptr %2, align 16
  %i.aah = icmp ne <2 x ptr> %i.aaf, %i.aag       ; 2 uses
  %245 = extractelement <2 x i1> %i.aah, i64 0
  %246 = extractelement <2 x i1> %i.aah, i64 1
  %.not1442 = select i1 %246, i1 true, i1 %245    ; 2 uses
  %i.aai = zext i1 %.not1442 to i8
  store i8 %i.aai, ptr %102, align 8, !tbaa !42
  %i.aaj = getelementptr inbounds nuw i8, ptr %102, i64 8
  store ptr null, ptr %i.aaj, align 8, !tbaa !56
  br i1 %.not1442, label %bb.ks, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %103)
          to label %bb.kj unwind label %bb.kn

bb.kj:                                            ; preds = %bb.ki
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %105, ptr noundef nonnull align 8 dereferenceable(16) %102, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.kk unwind label %bb.ko

bb.kk:                                            ; preds = %bb.kj
  %i.aak = load ptr, ptr %105, align 8, !tbaa !48
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %104, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 188, ptr noundef %i.aak)
          to label %bb.kl unwind label %bb.kp

bb.kl:                                            ; preds = %bb.kk
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %104, ptr noundef nonnull align 8 dereferenceable(8) %103)
          to label %bb.km unwind label %bb.kq

bb.km:                                            ; preds = %bb.kl
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %104) #28
  %i.aal = load ptr, ptr %105, align 8, !tbaa !48 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %105, i64 16 ; 2 uses
  %i.aan = icmp eq ptr %i.aal, %i.aam
  br i1 %i.aan, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1090, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1088

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1088: ; preds = %bb.km
  %i.aao = load i64, ptr %i.aam, align 8, !tbaa !51
  %i.aap = add i64 %i.aao, 1
  call void @_ZdlPvm(ptr noundef %i.aal, i64 noundef %i.aap) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1090

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1090: ; preds = %bb.km, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1088
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #28
  %i.aaq = load ptr, ptr %103, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1091 = icmp eq ptr %i.aaq, null
  br i1 %.not.i.i1091, label %_ZN7testing7MessageD2Ev.exit1093, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1092

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1092: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1090
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !20
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 8
  %i.aat = load ptr, ptr %i.aas, align 8
  call void %i.aat(ptr noundef nonnull align 8 dereferenceable(128) %i.aaq) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1093

_ZN7testing7MessageD2Ev.exit1093:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1090, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1092
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %102) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #28
  br label %bb.xc

bb.kn:                                            ; preds = %bb.ki
  %i.aau = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1099

bb.ko:                                            ; preds = %bb.kj
  %i.aav = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1096

bb.kp:                                            ; preds = %bb.kk
  %i.aaw = landingpad { ptr, i32 }
          cleanup
  br label %bb.kr

bb.kq:                                            ; preds = %bb.kl
  %i.aax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %104) #28
  br label %bb.kr

bb.kr:                                            ; preds = %bb.kq, %bb.kp
  %.pn443 = phi { ptr, i32 } [ %i.aax, %bb.kq ], [ %i.aaw, %bb.kp ] ; 2 uses
  %i.aay = load ptr, ptr %105, align 8, !tbaa !48 ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %105, i64 16 ; 2 uses
  %i.aba = icmp eq ptr %i.aay, %i.aaz
  br i1 %i.aba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1096, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1094

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1094: ; preds = %bb.kr
  %i.abb = load i64, ptr %i.aaz, align 8, !tbaa !51
  %i.abc = add i64 %i.abb, 1
  call void @_ZdlPvm(ptr noundef %i.aay, i64 noundef %i.abc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1096

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1096: ; preds = %bb.kr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1094, %bb.ko
  %.pn443.pn = phi { ptr, i32 } [ %i.aav, %bb.ko ], [ %.pn443, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1094 ], [ %.pn443, %bb.kr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #28
  %i.abd = load ptr, ptr %103, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1097 = icmp eq ptr %i.abd, null
  br i1 %.not.i.i1097, label %_ZN7testing7MessageD2Ev.exit1099, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1098

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1098: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1096
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !20
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 8
  %i.abg = load ptr, ptr %i.abf, align 8
  call void %i.abg(ptr noundef nonnull align 8 dereferenceable(128) %i.abd) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1099

_ZN7testing7MessageD2Ev.exit1099:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1098, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1096, %bb.kn
  %.pn443.pn.pn = phi { ptr, i32 } [ %i.aau, %bb.kn ], [ %.pn443.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1096 ], [ %.pn443.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1098 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %102) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #28
  br label %bb.xd

bb.ks:                                            ; preds = %bb.kh
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %102) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %106) #28
  call void @_ZN7testing8internal11CmpHelperNEIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %106, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.32, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.abh = load i8, ptr %106, align 8, !tbaa !42, !range !43, !noundef !55
  %i.abi = trunc nuw i8 %i.abh to i1
  br i1 %i.abi, label %bb.lc, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  call void @llvm.lifetime.start.p0(ptr nonnull %107) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %107)
          to label %bb.ku unwind label %bb.ky

bb.ku:                                            ; preds = %bb.kt
  call void @llvm.lifetime.start.p0(ptr nonnull %108) #28
  %i.abj = getelementptr inbounds nuw i8, ptr %106, i64 8
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i1100 = icmp eq ptr %i.abk, null
  br i1 %.not.i.i.i1100, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1101, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1101

_ZNK7testing15AssertionResult15failure_messageEv.exit1101: ; preds = %bb.kv, %bb.ku
  %i.abm = phi ptr [ %i.abl, %bb.kv ], [ @.str.20, %bb.ku ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %108, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 189, ptr noundef %i.abm)
          to label %bb.kw unwind label %bb.kz

bb.kw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1101
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %108, ptr noundef nonnull align 8 dereferenceable(8) %107)
          to label %bb.kx unwind label %bb.la

bb.kx:                                            ; preds = %bb.kw
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %108) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #28
  %i.abn = load ptr, ptr %107, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1102 = icmp eq ptr %i.abn, null
  br i1 %.not.i.i1102, label %_ZN7testing7MessageD2Ev.exit1104, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1103

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1103: ; preds = %bb.kx
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !20
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 8
  %i.abq = load ptr, ptr %i.abp, align 8
  call void %i.abq(ptr noundef nonnull align 8 dereferenceable(128) %i.abn) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1104

_ZN7testing7MessageD2Ev.exit1104:                 ; preds = %bb.kx, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1103
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %106) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #28
  br label %bb.xc

bb.ky:                                            ; preds = %bb.kt
  %i.abr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1107

bb.kz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1101
  %i.abs = landingpad { ptr, i32 }
          cleanup
  br label %bb.lb

bb.la:                                            ; preds = %bb.kw
  %i.abt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %108) #28
  br label %bb.lb

bb.lb:                                            ; preds = %bb.la, %bb.kz
  %.pn447 = phi { ptr, i32 } [ %i.abt, %bb.la ], [ %i.abs, %bb.kz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #28
  %i.abu = load ptr, ptr %107, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1105 = icmp eq ptr %i.abu, null
  br i1 %.not.i.i1105, label %_ZN7testing7MessageD2Ev.exit1107, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1106

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1106: ; preds = %bb.lb
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !20
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 8
  %i.abx = load ptr, ptr %i.abw, align 8
  call void %i.abx(ptr noundef nonnull align 8 dereferenceable(128) %i.abu) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1107

_ZN7testing7MessageD2Ev.exit1107:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1106, %bb.lb, %bb.ky
end_hunk_3
begin_hunk_4_@_ZN24Delegate_Comparison_Test8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.acq = load ptr, ptr %i.n, align 8, !tbaa !54
  store ptr %i.acq, ptr %i.b, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.acr = load ptr, ptr %i.ar, align 8, !tbaa !54
  store ptr %i.acr, ptr %i.c, align 8, !tbaa !68
  call void @_ZN7testing8internal8EqHelper7CompareIPFiPKviES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %113, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.acs = load i8, ptr %113, align 8, !tbaa !42, !range !43, !noundef !55
  %i.act = trunc nuw i8 %i.acs to i1
  br i1 %i.act, label %bb.lw, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  call void @llvm.lifetime.start.p0(ptr nonnull %114) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %114)
          to label %bb.lo unwind label %bb.ls

bb.lo:                                            ; preds = %bb.ln
  call void @llvm.lifetime.start.p0(ptr nonnull %115) #28
  %i.acu = getelementptr inbounds nuw i8, ptr %113, i64 8
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i1116 = icmp eq ptr %i.acv, null
  br i1 %.not.i.i.i1116, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1117, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1117

_ZNK7testing15AssertionResult15failure_messageEv.exit1117: ; preds = %bb.lp, %bb.lo
  %i.acx = phi ptr [ %i.acw, %bb.lp ], [ @.str.20, %bb.lo ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %115, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 194, ptr noundef %i.acx)
          to label %bb.lq unwind label %bb.lt

bb.lq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1117
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %115, ptr noundef nonnull align 8 dereferenceable(8) %114)
          to label %bb.lr unwind label %bb.lu

bb.lr:                                            ; preds = %bb.lq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %115) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #28
  %i.acy = load ptr, ptr %114, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1118 = icmp eq ptr %i.acy, null
  br i1 %.not.i.i1118, label %_ZN7testing7MessageD2Ev.exit1120, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1119

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1119: ; preds = %bb.lr
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !20
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 8
  %i.adb = load ptr, ptr %i.ada, align 8
  call void %i.adb(ptr noundef nonnull align 8 dereferenceable(128) %i.acy) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1120

_ZN7testing7MessageD2Ev.exit1120:                 ; preds = %bb.lr, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1119
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %113) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #28
  br label %bb.xc

bb.ls:                                            ; preds = %bb.ln
  %i.adc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1123

bb.lt:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1117
  %i.add = landingpad { ptr, i32 }
          cleanup
  br label %bb.lv

bb.lu:                                            ; preds = %bb.lq
  %i.ade = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %115) #28
  br label %bb.lv

bb.lv:                                            ; preds = %bb.lu, %bb.lt
  %.pn453 = phi { ptr, i32 } [ %i.ade, %bb.lu ], [ %i.add, %bb.lt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #28
  %i.adf = load ptr, ptr %114, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1121 = icmp eq ptr %i.adf, null
  br i1 %.not.i.i1121, label %_ZN7testing7MessageD2Ev.exit1123, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1122

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1122: ; preds = %bb.lv
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !20
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 8
  %i.adi = load ptr, ptr %i.adh, align 8
  call void %i.adi(ptr noundef nonnull align 8 dereferenceable(128) %i.adf) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1123

_ZN7testing7MessageD2Ev.exit1123:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1122, %bb.lv, %bb.ls
  %.pn453.pn = phi { ptr, i32 } [ %i.adc, %bb.ls ], [ %.pn453, %bb.lv ], [ %.pn453, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1122 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %113) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #28
  br label %bb.xd

bb.lw:                                            ; preds = %bb.lm
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %113) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.adj = load ptr, ptr %1, align 16, !tbaa !53
  store ptr %i.adj, ptr %i.d, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  %i.adk = load ptr, ptr %2, align 16, !tbaa !53
  store ptr %i.adk, ptr %i.e, align 8, !tbaa !68
  call void @_ZN7testing8internal8EqHelper7CompareIPKvS4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %116, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  %i.adl = load i8, ptr %116, align 8, !tbaa !42, !range !43, !noundef !55
  %i.adm = trunc nuw i8 %i.adl to i1
  br i1 %i.adm, label %bb.mg, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  call void @llvm.lifetime.start.p0(ptr nonnull %117) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %117)
          to label %bb.ly unwind label %bb.mc

bb.ly:                                            ; preds = %bb.lx
  call void @llvm.lifetime.start.p0(ptr nonnull %118) #28
  %i.adn = getelementptr inbounds nuw i8, ptr %116, i64 8
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i1124 = icmp eq ptr %i.ado, null
  br i1 %.not.i.i.i1124, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1125, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  %i.adp = load ptr, ptr %i.ado, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1125

_ZNK7testing15AssertionResult15failure_messageEv.exit1125: ; preds = %bb.lz, %bb.ly
  %i.adq = phi ptr [ %i.adp, %bb.lz ], [ @.str.20, %bb.ly ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %118, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 195, ptr noundef %i.adq)
          to label %bb.ma unwind label %bb.md

bb.ma:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1125
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %118, ptr noundef nonnull align 8 dereferenceable(8) %117)
          to label %bb.mb unwind label %bb.me

bb.mb:                                            ; preds = %bb.ma
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %118) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %118) #28
  %i.adr = load ptr, ptr %117, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1126 = icmp eq ptr %i.adr, null
  br i1 %.not.i.i1126, label %_ZN7testing7MessageD2Ev.exit1128, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1127

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1127: ; preds = %bb.mb
  %i.ads = load ptr, ptr %i.adr, align 8, !tbaa !20
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 8
  %i.adu = load ptr, ptr %i.adt, align 8
  call void %i.adu(ptr noundef nonnull align 8 dereferenceable(128) %i.adr) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1128

_ZN7testing7MessageD2Ev.exit1128:                 ; preds = %bb.mb, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1127
  call void @llvm.lifetime.end.p0(ptr nonnull %117) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %116) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #28
  br label %bb.xc

bb.mc:                                            ; preds = %bb.lx
  %i.adv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1131

bb.md:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1125
  %i.adw = landingpad { ptr, i32 }
          cleanup
  br label %bb.mf

bb.me:                                            ; preds = %bb.ma
  %i.adx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %118) #28
  br label %bb.mf

bb.mf:                                            ; preds = %bb.me, %bb.md
  %.pn456 = phi { ptr, i32 } [ %i.adx, %bb.me ], [ %i.adw, %bb.md ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %118) #28
  %i.ady = load ptr, ptr %117, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1129 = icmp eq ptr %i.ady, null
  br i1 %.not.i.i1129, label %_ZN7testing7MessageD2Ev.exit1131, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1130

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1130: ; preds = %bb.mf
  %i.adz = load ptr, ptr %i.ady, align 8, !tbaa !20
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 8
  %i.aeb = load ptr, ptr %i.aea, align 8
  call void %i.aeb(ptr noundef nonnull align 8 dereferenceable(128) %i.ady) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1131

_ZN7testing7MessageD2Ev.exit1131:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1130, %bb.mf, %bb.mc
  %.pn456.pn = phi { ptr, i32 } [ %i.adv, %bb.mc ], [ %.pn456, %bb.mf ], [ %.pn456, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1130 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %117) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %116) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #28
  br label %bb.xd

bb.mg:                                            ; preds = %bb.lw
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %116) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %119) #28
  %i.aec = load <2 x ptr>, ptr %1, align 16
  %i.aed = load <2 x ptr>, ptr %2, align 16
  %i.aee = icmp eq <2 x ptr> %i.aec, %i.aed       ; 2 uses
  %247 = extractelement <2 x i1> %i.aee, i64 0
  %248 = extractelement <2 x i1> %i.aee, i64 1
  %249 = select i1 %248, i1 %247, i1 false        ; 2 uses
  %i.aef = zext i1 %249 to i8
  store i8 %i.aef, ptr %119, align 8, !tbaa !42
  %i.aeg = getelementptr inbounds nuw i8, ptr %119, i64 8
  store ptr null, ptr %i.aeg, align 8, !tbaa !56
  br i1 %249, label %bb.mr, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %120)
          to label %bb.mi unwind label %bb.mm

bb.mi:                                            ; preds = %bb.mh
  call void @llvm.lifetime.start.p0(ptr nonnull %121) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %122) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %122, ptr noundef nonnull align 8 dereferenceable(16) %119, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.mj unwind label %bb.mn

bb.mj:                                            ; preds = %bb.mi
  %i.aeh = load ptr, ptr %122, align 8, !tbaa !48
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %121, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 196, ptr noundef %i.aeh)
          to label %bb.mk unwind label %bb.mo

bb.mk:                                            ; preds = %bb.mj
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %121, ptr noundef nonnull align 8 dereferenceable(8) %120)
          to label %bb.ml unwind label %bb.mp

bb.ml:                                            ; preds = %bb.mk
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %121) #28
  %i.aei = load ptr, ptr %122, align 8, !tbaa !48 ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %122, i64 16 ; 2 uses
  %i.aek = icmp eq ptr %i.aei, %i.aej
  br i1 %i.aek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1132: ; preds = %bb.ml
  %i.ael = load i64, ptr %i.aej, align 8, !tbaa !51
  %i.aem = add i64 %i.ael, 1
  call void @_ZdlPvm(ptr noundef %i.aei, i64 noundef %i.aem) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1134: ; preds = %bb.ml, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1132
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #28
  %i.aen = load ptr, ptr %120, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1135 = icmp eq ptr %i.aen, null
  br i1 %.not.i.i1135, label %_ZN7testing7MessageD2Ev.exit1137, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1136

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1136: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1134
  %i.aeo = load ptr, ptr %i.aen, align 8, !tbaa !20
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 8
  %i.aeq = load ptr, ptr %i.aep, align 8
  call void %i.aeq(ptr noundef nonnull align 8 dereferenceable(128) %i.aen) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1137

_ZN7testing7MessageD2Ev.exit1137:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1134, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1136
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %119) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #28
  br label %bb.xc

bb.mm:                                            ; preds = %bb.mh
  %i.aer = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1143

bb.mn:                                            ; preds = %bb.mi
  %i.aes = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1140

bb.mo:                                            ; preds = %bb.mj
  %i.aet = landingpad { ptr, i32 }
          cleanup
  br label %bb.mq

bb.mp:                                            ; preds = %bb.mk
  %i.aeu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %121) #28
  br label %bb.mq

bb.mq:                                            ; preds = %bb.mp, %bb.mo
  %.pn459 = phi { ptr, i32 } [ %i.aeu, %bb.mp ], [ %i.aet, %bb.mo ] ; 2 uses
  %i.aev = load ptr, ptr %122, align 8, !tbaa !48 ; 2 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %122, i64 16 ; 2 uses
  %i.aex = icmp eq ptr %i.aev, %i.aew
  br i1 %i.aex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1138: ; preds = %bb.mq
  %i.aey = load i64, ptr %i.aew, align 8, !tbaa !51
  %i.aez = add i64 %i.aey, 1
  call void @_ZdlPvm(ptr noundef %i.aev, i64 noundef %i.aez) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1140: ; preds = %bb.mq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1138, %bb.mn
  %.pn459.pn = phi { ptr, i32 } [ %i.aes, %bb.mn ], [ %.pn459, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1138 ], [ %.pn459, %bb.mq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #28
  %i.afa = load ptr, ptr %120, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1141 = icmp eq ptr %i.afa, null
  br i1 %.not.i.i1141, label %_ZN7testing7MessageD2Ev.exit1143, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1142

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1140
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !20
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 8
  %i.afd = load ptr, ptr %i.afc, align 8
  call void %i.afd(ptr noundef nonnull align 8 dereferenceable(128) %i.afa) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1143

_ZN7testing7MessageD2Ev.exit1143:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1142, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1140, %bb.mm
  %.pn459.pn.pn = phi { ptr, i32 } [ %i.aer, %bb.mm ], [ %.pn459.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1140 ], [ %.pn459.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %119) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #28
  br label %bb.xd

bb.mr:                                            ; preds = %bb.mg
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %119) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %123) #28
  %i.afe = load <2 x ptr>, ptr %1, align 16
  %i.aff = load <2 x ptr>, ptr %2, align 16
  %i.afg = icmp eq <2 x ptr> %i.afe, %i.aff       ; 2 uses
  %250 = extractelement <2 x i1> %i.afg, i64 0
  %251 = extractelement <2 x i1> %i.afg, i64 1
  %252 = select i1 %251, i1 %250, i1 false        ; 2 uses
  %i.afh = zext i1 %252 to i8
  store i8 %i.afh, ptr %123, align 8, !tbaa !42
  %i.afi = getelementptr inbounds nuw i8, ptr %123, i64 8
  store ptr null, ptr %i.afi, align 8, !tbaa !56
  br i1 %252, label %bb.nc, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  call void @llvm.lifetime.start.p0(ptr nonnull %124) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %124)
          to label %bb.mt unwind label %bb.mx

bb.mt:                                            ; preds = %bb.ms
  call void @llvm.lifetime.start.p0(ptr nonnull %125) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %126) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %126, ptr noundef nonnull align 8 dereferenceable(16) %123, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4)
          to label %bb.mu unwind label %bb.my

bb.mu:                                            ; preds = %bb.mt
  %i.afj = load ptr, ptr %126, align 8, !tbaa !48
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %125, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 197, ptr noundef %i.afj)
          to label %bb.mv unwind label %bb.mz

bb.mv:                                            ; preds = %bb.mu
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %125, ptr noundef nonnull align 8 dereferenceable(8) %124)
          to label %bb.mw unwind label %bb.na

bb.mw:                                            ; preds = %bb.mv
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %125) #28
  %i.afk = load ptr, ptr %126, align 8, !tbaa !48 ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %126, i64 16 ; 2 uses
  %i.afm = icmp eq ptr %i.afk, %i.afl
  br i1 %i.afm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1144: ; preds = %bb.mw
  %i.afn = load i64, ptr %i.afl, align 8, !tbaa !51
  %i.afo = add i64 %i.afn, 1
  call void @_ZdlPvm(ptr noundef %i.afk, i64 noundef %i.afo) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1146: ; preds = %bb.mw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1144
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #28
  %i.afp = load ptr, ptr %124, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1147 = icmp eq ptr %i.afp, null
  br i1 %.not.i.i1147, label %_ZN7testing7MessageD2Ev.exit1149, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1148

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1146
  %i.afq = load ptr, ptr %i.afp, align 8, !tbaa !20
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 8
  %i.afs = load ptr, ptr %i.afr, align 8
  call void %i.afs(ptr noundef nonnull align 8 dereferenceable(128) %i.afp) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1149

_ZN7testing7MessageD2Ev.exit1149:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1146, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1148
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %123) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #28
  br label %bb.xc

bb.mx:                                            ; preds = %bb.ms
  %i.aft = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1155

bb.my:                                            ; preds = %bb.mt
  %i.afu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1152

bb.mz:                                            ; preds = %bb.mu
  %i.afv = landingpad { ptr, i32 }
          cleanup
  br label %bb.nb

bb.na:                                            ; preds = %bb.mv
  %i.afw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %125) #28
  br label %bb.nb

bb.nb:                                            ; preds = %bb.na, %bb.mz
  %.pn463 = phi { ptr, i32 } [ %i.afw, %bb.na ], [ %i.afv, %bb.mz ] ; 2 uses
  %i.afx = load ptr, ptr %126, align 8, !tbaa !48 ; 2 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %126, i64 16 ; 2 uses
  %i.afz = icmp eq ptr %i.afx, %i.afy
  br i1 %i.afz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1150: ; preds = %bb.nb
  %i.aga = load i64, ptr %i.afy, align 8, !tbaa !51
  %i.agb = add i64 %i.aga, 1
  call void @_ZdlPvm(ptr noundef %i.afx, i64 noundef %i.agb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1152: ; preds = %bb.nb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1150, %bb.my
  %.pn463.pn = phi { ptr, i32 } [ %i.afu, %bb.my ], [ %.pn463, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1150 ], [ %.pn463, %bb.nb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #28
  %i.agc = load ptr, ptr %124, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1153 = icmp eq ptr %i.agc, null
  br i1 %.not.i.i1153, label %_ZN7testing7MessageD2Ev.exit1155, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1154

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1154: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1152
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !20
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 8
  %i.agf = load ptr, ptr %i.age, align 8
  call void %i.agf(ptr noundef nonnull align 8 dereferenceable(128) %i.agc) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1155

_ZN7testing7MessageD2Ev.exit1155:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1152, %bb.mx
  %.pn463.pn.pn = phi { ptr, i32 } [ %i.aft, %bb.mx ], [ %.pn463.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1152 ], [ %.pn463.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1154 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %123) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #28
  br label %bb.xd

bb.nc:                                            ; preds = %bb.mr
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %123) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %127) #28
  call void @_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %127, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.32, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.agg = load i8, ptr %127, align 8, !tbaa !42, !range !43, !noundef !55
  %i.agh = trunc nuw i8 %i.agg to i1
  br i1 %i.agh, label %bb.nm, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  call void @llvm.lifetime.start.p0(ptr nonnull %128) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %128)
          to label %bb.ne unwind label %bb.ni

bb.ne:                                            ; preds = %bb.nd
  call void @llvm.lifetime.start.p0(ptr nonnull %129) #28
  %i.agi = getelementptr inbounds nuw i8, ptr %127, i64 8
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i1156 = icmp eq ptr %i.agj, null
  br i1 %.not.i.i.i1156, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1157, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  %i.agk = load ptr, ptr %i.agj, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1157

_ZNK7testing15AssertionResult15failure_messageEv.exit1157: ; preds = %bb.nf, %bb.ne
  %i.agl = phi ptr [ %i.agk, %bb.nf ], [ @.str.20, %bb.ne ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %129, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 198, ptr noundef %i.agl)
          to label %bb.ng unwind label %bb.nj

bb.ng:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1157
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %129, ptr noundef nonnull align 8 dereferenceable(8) %128)
          to label %bb.nh unwind label %bb.nk

bb.nh:                                            ; preds = %bb.ng
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %129) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #28
  %i.agm = load ptr, ptr %128, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1158 = icmp eq ptr %i.agm, null
  br i1 %.not.i.i1158, label %_ZN7testing7MessageD2Ev.exit1160, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1159

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1159: ; preds = %bb.nh
  %i.agn = load ptr, ptr %i.agm, align 8, !tbaa !20
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 8
  %i.agp = load ptr, ptr %i.ago, align 8
  call void %i.agp(ptr noundef nonnull align 8 dereferenceable(128) %i.agm) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1160

_ZN7testing7MessageD2Ev.exit1160:                 ; preds = %bb.nh, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1159
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %127) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #28
  br label %bb.xc

bb.ni:                                            ; preds = %bb.nd
  %i.agq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1163

bb.nj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1157
  %i.agr = landingpad { ptr, i32 }
          cleanup
  br label %bb.nl

bb.nk:                                            ; preds = %bb.ng
  %i.ags = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %129) #28
  br label %bb.nl

bb.nl:                                            ; preds = %bb.nk, %bb.nj
  %.pn467 = phi { ptr, i32 } [ %i.ags, %bb.nk ], [ %i.agr, %bb.nj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #28
  %i.agt = load ptr, ptr %128, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1161 = icmp eq ptr %i.agt, null
  br i1 %.not.i.i1161, label %_ZN7testing7MessageD2Ev.exit1163, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1162

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1162: ; preds = %bb.nl
  %i.agu = load ptr, ptr %i.agt, align 8, !tbaa !20
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 8
  %i.agw = load ptr, ptr %i.agv, align 8
  call void %i.agw(ptr noundef nonnull align 8 dereferenceable(128) %i.agt) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1163

_ZN7testing7MessageD2Ev.exit1163:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1162, %bb.nl, %bb.ni
end_hunk_4
begin_hunk_5_@_ZN24Delegate_Comparison_Test8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  %i.ahp = load ptr, ptr %i.n, align 8, !tbaa !54
  store ptr %i.ahp, ptr %i.f, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  %i.ahq = load ptr, ptr %i.ar, align 8, !tbaa !54
  store ptr %i.ahq, ptr %i.g, align 8, !tbaa !68
  call void @_ZN7testing8internal8EqHelper7CompareIPFiPKviES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %134, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  %i.ahr = load i8, ptr %134, align 8, !tbaa !42, !range !43, !noundef !55
  %i.ahs = trunc nuw i8 %i.ahr to i1
  br i1 %i.ahs, label %bb.og, label %bb.nx

bb.nx:                                            ; preds = %bb.nw
  call void @llvm.lifetime.start.p0(ptr nonnull %135) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %135)
          to label %bb.ny unwind label %bb.oc

bb.ny:                                            ; preds = %bb.nx
  call void @llvm.lifetime.start.p0(ptr nonnull %136) #28
  %i.aht = getelementptr inbounds nuw i8, ptr %134, i64 8
  %i.ahu = load ptr, ptr %i.aht, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i1172 = icmp eq ptr %i.ahu, null
  br i1 %.not.i.i.i1172, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1173, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1173

_ZNK7testing15AssertionResult15failure_messageEv.exit1173: ; preds = %bb.nz, %bb.ny
  %i.ahw = phi ptr [ %i.ahv, %bb.nz ], [ @.str.20, %bb.ny ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %136, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 203, ptr noundef %i.ahw)
          to label %bb.oa unwind label %bb.od

bb.oa:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1173
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %136, ptr noundef nonnull align 8 dereferenceable(8) %135)
          to label %bb.ob unwind label %bb.oe

bb.ob:                                            ; preds = %bb.oa
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %136) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #28
  %i.ahx = load ptr, ptr %135, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1174 = icmp eq ptr %i.ahx, null
  br i1 %.not.i.i1174, label %_ZN7testing7MessageD2Ev.exit1176, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1175

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1175: ; preds = %bb.ob
  %i.ahy = load ptr, ptr %i.ahx, align 8, !tbaa !20
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 8
  %i.aia = load ptr, ptr %i.ahz, align 8
  call void %i.aia(ptr noundef nonnull align 8 dereferenceable(128) %i.ahx) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1176

_ZN7testing7MessageD2Ev.exit1176:                 ; preds = %bb.ob, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1175
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %134) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #28
  br label %bb.xc

bb.oc:                                            ; preds = %bb.nx
  %i.aib = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1179

bb.od:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1173
  %i.aic = landingpad { ptr, i32 }
          cleanup
  br label %bb.of

bb.oe:                                            ; preds = %bb.oa
  %i.aid = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %136) #28
  br label %bb.of

bb.of:                                            ; preds = %bb.oe, %bb.od
  %.pn473 = phi { ptr, i32 } [ %i.aid, %bb.oe ], [ %i.aic, %bb.od ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #28
  %i.aie = load ptr, ptr %135, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1177 = icmp eq ptr %i.aie, null
  br i1 %.not.i.i1177, label %_ZN7testing7MessageD2Ev.exit1179, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1178

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1178: ; preds = %bb.of
  %i.aif = load ptr, ptr %i.aie, align 8, !tbaa !20
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 8
  %i.aih = load ptr, ptr %i.aig, align 8
  call void %i.aih(ptr noundef nonnull align 8 dereferenceable(128) %i.aie) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1179

_ZN7testing7MessageD2Ev.exit1179:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1178, %bb.of, %bb.oc
  %.pn473.pn = phi { ptr, i32 } [ %i.aib, %bb.oc ], [ %.pn473, %bb.of ], [ %.pn473, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1178 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %134) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #28
  br label %bb.xd

bb.og:                                            ; preds = %bb.nw
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %134) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %137) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  %i.aii = load ptr, ptr %1, align 16, !tbaa !53
  store ptr %i.aii, ptr %i.h, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28
  %i.aij = load ptr, ptr %2, align 16, !tbaa !53
  store ptr %i.aij, ptr %i.i, align 8, !tbaa !68
  call void @_ZN7testing8internal11CmpHelperNEIPKvS3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %137, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  %i.aik = load i8, ptr %137, align 8, !tbaa !42, !range !43, !noundef !55
  %i.ail = trunc nuw i8 %i.aik to i1
  br i1 %i.ail, label %bb.oq, label %bb.oh

bb.oh:                                            ; preds = %bb.og
  call void @llvm.lifetime.start.p0(ptr nonnull %138) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %138)
          to label %bb.oi unwind label %bb.om

bb.oi:                                            ; preds = %bb.oh
  call void @llvm.lifetime.start.p0(ptr nonnull %139) #28
  %i.aim = getelementptr inbounds nuw i8, ptr %137, i64 8
  %i.ain = load ptr, ptr %i.aim, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i1180 = icmp eq ptr %i.ain, null
  br i1 %.not.i.i.i1180, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1181, label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  %i.aio = load ptr, ptr %i.ain, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1181

_ZNK7testing15AssertionResult15failure_messageEv.exit1181: ; preds = %bb.oj, %bb.oi
  %i.aip = phi ptr [ %i.aio, %bb.oj ], [ @.str.20, %bb.oi ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %139, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 204, ptr noundef %i.aip)
          to label %bb.ok unwind label %bb.on

bb.ok:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1181
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %139, ptr noundef nonnull align 8 dereferenceable(8) %138)
          to label %bb.ol unwind label %bb.oo

bb.ol:                                            ; preds = %bb.ok
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %139) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #28
  %i.aiq = load ptr, ptr %138, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1182 = icmp eq ptr %i.aiq, null
  br i1 %.not.i.i1182, label %_ZN7testing7MessageD2Ev.exit1184, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1183

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1183: ; preds = %bb.ol
  %i.air = load ptr, ptr %i.aiq, align 8, !tbaa !20
  %i.ais = getelementptr inbounds nuw i8, ptr %i.air, i64 8
  %i.ait = load ptr, ptr %i.ais, align 8
  call void %i.ait(ptr noundef nonnull align 8 dereferenceable(128) %i.aiq) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1184

_ZN7testing7MessageD2Ev.exit1184:                 ; preds = %bb.ol, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1183
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %137) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #28
  br label %bb.xc

bb.om:                                            ; preds = %bb.oh
  %i.aiu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1187

bb.on:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1181
  %i.aiv = landingpad { ptr, i32 }
          cleanup
  br label %bb.op

bb.oo:                                            ; preds = %bb.ok
  %i.aiw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %139) #28
  br label %bb.op

bb.op:                                            ; preds = %bb.oo, %bb.on
  %.pn476 = phi { ptr, i32 } [ %i.aiw, %bb.oo ], [ %i.aiv, %bb.on ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #28
  %i.aix = load ptr, ptr %138, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1185 = icmp eq ptr %i.aix, null
  br i1 %.not.i.i1185, label %_ZN7testing7MessageD2Ev.exit1187, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1186

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1186: ; preds = %bb.op
  %i.aiy = load ptr, ptr %i.aix, align 8, !tbaa !20
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 8
  %i.aja = load ptr, ptr %i.aiz, align 8
  call void %i.aja(ptr noundef nonnull align 8 dereferenceable(128) %i.aix) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1187

_ZN7testing7MessageD2Ev.exit1187:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1186, %bb.op, %bb.om
  %.pn476.pn = phi { ptr, i32 } [ %i.aiu, %bb.om ], [ %.pn476, %bb.op ], [ %.pn476, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1186 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %137) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #28
  br label %bb.xd

bb.oq:                                            ; preds = %bb.og
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %137) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %140) #28
  %i.ajb = load <2 x ptr>, ptr %1, align 16
  %i.ajc = load <2 x ptr>, ptr %2, align 16
  %i.ajd = icmp ne <2 x ptr> %i.ajb, %i.ajc       ; 2 uses
  %253 = extractelement <2 x i1> %i.ajd, i64 0
  %254 = extractelement <2 x i1> %i.ajd, i64 1
  %.not1444 = select i1 %254, i1 true, i1 %253    ; 2 uses
  %i.aje = zext i1 %.not1444 to i8
  store i8 %i.aje, ptr %140, align 8, !tbaa !42
  %i.ajf = getelementptr inbounds nuw i8, ptr %140, i64 8
  store ptr null, ptr %i.ajf, align 8, !tbaa !56
  br i1 %.not1444, label %bb.pb, label %bb.or

bb.or:                                            ; preds = %bb.oq
  call void @llvm.lifetime.start.p0(ptr nonnull %141) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %141)
          to label %bb.os unwind label %bb.ow

bb.os:                                            ; preds = %bb.or
  call void @llvm.lifetime.start.p0(ptr nonnull %142) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %143) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %143, ptr noundef nonnull align 8 dereferenceable(16) %140, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4)
          to label %bb.ot unwind label %bb.ox

bb.ot:                                            ; preds = %bb.os
  %i.ajg = load ptr, ptr %143, align 8, !tbaa !48
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %142, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 205, ptr noundef %i.ajg)
          to label %bb.ou unwind label %bb.oy

bb.ou:                                            ; preds = %bb.ot
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %142, ptr noundef nonnull align 8 dereferenceable(8) %141)
          to label %bb.ov unwind label %bb.oz

bb.ov:                                            ; preds = %bb.ou
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %142) #28
  %i.ajh = load ptr, ptr %143, align 8, !tbaa !48 ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %143, i64 16 ; 2 uses
  %i.ajj = icmp eq ptr %i.ajh, %i.aji
  br i1 %i.ajj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1188: ; preds = %bb.ov
  %i.ajk = load i64, ptr %i.aji, align 8, !tbaa !51
  %i.ajl = add i64 %i.ajk, 1
  call void @_ZdlPvm(ptr noundef %i.ajh, i64 noundef %i.ajl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1190: ; preds = %bb.ov, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1188
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #28
  %i.ajm = load ptr, ptr %141, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1191 = icmp eq ptr %i.ajm, null
  br i1 %.not.i.i1191, label %_ZN7testing7MessageD2Ev.exit1193, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1192

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1192: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1190
  %i.ajn = load ptr, ptr %i.ajm, align 8, !tbaa !20
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 8
  %i.ajp = load ptr, ptr %i.ajo, align 8
  call void %i.ajp(ptr noundef nonnull align 8 dereferenceable(128) %i.ajm) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1193

_ZN7testing7MessageD2Ev.exit1193:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1190, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1192
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %140) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #28
  br label %bb.xc

bb.ow:                                            ; preds = %bb.or
  %i.ajq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1199

bb.ox:                                            ; preds = %bb.os
  %i.ajr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1196

bb.oy:                                            ; preds = %bb.ot
  %i.ajs = landingpad { ptr, i32 }
          cleanup
  br label %bb.pa

bb.oz:                                            ; preds = %bb.ou
  %i.ajt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %142) #28
  br label %bb.pa

bb.pa:                                            ; preds = %bb.oz, %bb.oy
  %.pn479 = phi { ptr, i32 } [ %i.ajt, %bb.oz ], [ %i.ajs, %bb.oy ] ; 2 uses
  %i.aju = load ptr, ptr %143, align 8, !tbaa !48 ; 2 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %143, i64 16 ; 2 uses
  %i.ajw = icmp eq ptr %i.aju, %i.ajv
  br i1 %i.ajw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1194: ; preds = %bb.pa
  %i.ajx = load i64, ptr %i.ajv, align 8, !tbaa !51
  %i.ajy = add i64 %i.ajx, 1
  call void @_ZdlPvm(ptr noundef %i.aju, i64 noundef %i.ajy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1196: ; preds = %bb.pa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1194, %bb.ox
  %.pn479.pn = phi { ptr, i32 } [ %i.ajr, %bb.ox ], [ %.pn479, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1194 ], [ %.pn479, %bb.pa ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #28
  %i.ajz = load ptr, ptr %141, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1197 = icmp eq ptr %i.ajz, null
  br i1 %.not.i.i1197, label %_ZN7testing7MessageD2Ev.exit1199, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1198

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1198: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1196
  %i.aka = load ptr, ptr %i.ajz, align 8, !tbaa !20
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 8
  %i.akc = load ptr, ptr %i.akb, align 8
  call void %i.akc(ptr noundef nonnull align 8 dereferenceable(128) %i.ajz) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1199

_ZN7testing7MessageD2Ev.exit1199:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1198, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1196, %bb.ow
  %.pn479.pn.pn = phi { ptr, i32 } [ %i.ajq, %bb.ow ], [ %.pn479.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1196 ], [ %.pn479.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1198 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %140) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #28
  br label %bb.xd

bb.pb:                                            ; preds = %bb.oq
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %140) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %144) #28
  %i.akd = load <2 x ptr>, ptr %1, align 16
  %i.ake = load <2 x ptr>, ptr %2, align 16
  %i.akf = icmp ne <2 x ptr> %i.akd, %i.ake       ; 2 uses
  %255 = extractelement <2 x i1> %i.akf, i64 0
  %256 = extractelement <2 x i1> %i.akf, i64 1
  %.not1446 = select i1 %256, i1 true, i1 %255    ; 2 uses
  %i.akg = zext i1 %.not1446 to i8
  store i8 %i.akg, ptr %144, align 8, !tbaa !42
  %i.akh = getelementptr inbounds nuw i8, ptr %144, i64 8
  store ptr null, ptr %i.akh, align 8, !tbaa !56
  br i1 %.not1446, label %bb.pm, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  call void @llvm.lifetime.start.p0(ptr nonnull %145) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %145)
          to label %bb.pd unwind label %bb.ph

bb.pd:                                            ; preds = %bb.pc
  call void @llvm.lifetime.start.p0(ptr nonnull %146) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %147) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %147, ptr noundef nonnull align 8 dereferenceable(16) %144, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.pe unwind label %bb.pi

bb.pe:                                            ; preds = %bb.pd
  %i.aki = load ptr, ptr %147, align 8, !tbaa !48
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %146, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 206, ptr noundef %i.aki)
          to label %bb.pf unwind label %bb.pj

bb.pf:                                            ; preds = %bb.pe
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %146, ptr noundef nonnull align 8 dereferenceable(8) %145)
          to label %bb.pg unwind label %bb.pk

bb.pg:                                            ; preds = %bb.pf
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %146) #28
  %i.akj = load ptr, ptr %147, align 8, !tbaa !48 ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %147, i64 16 ; 2 uses
  %i.akl = icmp eq ptr %i.akj, %i.akk
  br i1 %i.akl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1200: ; preds = %bb.pg
  %i.akm = load i64, ptr %i.akk, align 8, !tbaa !51
  %i.akn = add i64 %i.akm, 1
  call void @_ZdlPvm(ptr noundef %i.akj, i64 noundef %i.akn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1202: ; preds = %bb.pg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1200
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #28
  %i.ako = load ptr, ptr %145, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1203 = icmp eq ptr %i.ako, null
  br i1 %.not.i.i1203, label %_ZN7testing7MessageD2Ev.exit1205, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1204

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1204: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1202
  %i.akp = load ptr, ptr %i.ako, align 8, !tbaa !20
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 8
  %i.akr = load ptr, ptr %i.akq, align 8
  call void %i.akr(ptr noundef nonnull align 8 dereferenceable(128) %i.ako) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1205

_ZN7testing7MessageD2Ev.exit1205:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1202, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1204
  call void @llvm.lifetime.end.p0(ptr nonnull %145) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %144) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #28
  br label %bb.xc

bb.ph:                                            ; preds = %bb.pc
  %i.aks = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1211

bb.pi:                                            ; preds = %bb.pd
  %i.akt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1208

bb.pj:                                            ; preds = %bb.pe
  %i.aku = landingpad { ptr, i32 }
          cleanup
  br label %bb.pl

bb.pk:                                            ; preds = %bb.pf
  %i.akv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %146) #28
  br label %bb.pl

bb.pl:                                            ; preds = %bb.pk, %bb.pj
  %.pn483 = phi { ptr, i32 } [ %i.akv, %bb.pk ], [ %i.aku, %bb.pj ] ; 2 uses
  %i.akw = load ptr, ptr %147, align 8, !tbaa !48 ; 2 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %147, i64 16 ; 2 uses
  %i.aky = icmp eq ptr %i.akw, %i.akx
  br i1 %i.aky, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1206: ; preds = %bb.pl
  %i.akz = load i64, ptr %i.akx, align 8, !tbaa !51
  %i.ala = add i64 %i.akz, 1
  call void @_ZdlPvm(ptr noundef %i.akw, i64 noundef %i.ala) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1208: ; preds = %bb.pl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1206, %bb.pi
  %.pn483.pn = phi { ptr, i32 } [ %i.akt, %bb.pi ], [ %.pn483, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1206 ], [ %.pn483, %bb.pl ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #28
  %i.alb = load ptr, ptr %145, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1209 = icmp eq ptr %i.alb, null
  br i1 %.not.i.i1209, label %_ZN7testing7MessageD2Ev.exit1211, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1210

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1210: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1208
  %i.alc = load ptr, ptr %i.alb, align 8, !tbaa !20
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 8
  %i.ale = load ptr, ptr %i.ald, align 8
  call void %i.ale(ptr noundef nonnull align 8 dereferenceable(128) %i.alb) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1211

_ZN7testing7MessageD2Ev.exit1211:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1210, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1208, %bb.ph
  %.pn483.pn.pn = phi { ptr, i32 } [ %i.aks, %bb.ph ], [ %.pn483.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1208 ], [ %.pn483.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1210 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %145) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %144) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #28
  br label %bb.xd

bb.pm:                                            ; preds = %bb.pb
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %144) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %148) #28
  call void @_ZN7testing8internal11CmpHelperNEIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %148, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.32, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.alf = load i8, ptr %148, align 8, !tbaa !42, !range !43, !noundef !55
  %i.alg = trunc nuw i8 %i.alf to i1
  br i1 %i.alg, label %bb.pw, label %bb.pn

bb.pn:                                            ; preds = %bb.pm
  call void @llvm.lifetime.start.p0(ptr nonnull %149) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %149)
          to label %bb.po unwind label %bb.ps

bb.po:                                            ; preds = %bb.pn
  call void @llvm.lifetime.start.p0(ptr nonnull %150) #28
  %i.alh = getelementptr inbounds nuw i8, ptr %148, i64 8
  %i.ali = load ptr, ptr %i.alh, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i1212 = icmp eq ptr %i.ali, null
  br i1 %.not.i.i.i1212, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1213, label %bb.pp

bb.pp:                                            ; preds = %bb.po
  %i.alj = load ptr, ptr %i.ali, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1213

_ZNK7testing15AssertionResult15failure_messageEv.exit1213: ; preds = %bb.pp, %bb.po
  %i.alk = phi ptr [ %i.alj, %bb.pp ], [ @.str.20, %bb.po ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %150, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 207, ptr noundef %i.alk)
          to label %bb.pq unwind label %bb.pt

bb.pq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1213
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %150, ptr noundef nonnull align 8 dereferenceable(8) %149)
          to label %bb.pr unwind label %bb.pu

bb.pr:                                            ; preds = %bb.pq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %150) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #28
  %i.all = load ptr, ptr %149, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1214 = icmp eq ptr %i.all, null
  br i1 %.not.i.i1214, label %_ZN7testing7MessageD2Ev.exit1216, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1215

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1215: ; preds = %bb.pr
  %i.alm = load ptr, ptr %i.all, align 8, !tbaa !20
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alm, i64 8
  %i.alo = load ptr, ptr %i.aln, align 8
  call void %i.alo(ptr noundef nonnull align 8 dereferenceable(128) %i.all) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1216

_ZN7testing7MessageD2Ev.exit1216:                 ; preds = %bb.pr, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1215
  call void @llvm.lifetime.end.p0(ptr nonnull %149) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %148) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #28
  br label %bb.xc

bb.ps:                                            ; preds = %bb.pn
  %i.alp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1219

bb.pt:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1213
  %i.alq = landingpad { ptr, i32 }
          cleanup
  br label %bb.pv

bb.pu:                                            ; preds = %bb.pq
  %i.alr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %150) #28
  br label %bb.pv

bb.pv:                                            ; preds = %bb.pu, %bb.pt
  %.pn487 = phi { ptr, i32 } [ %i.alr, %bb.pu ], [ %i.alq, %bb.pt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #28
  %i.als = load ptr, ptr %149, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1217 = icmp eq ptr %i.als, null
  br i1 %.not.i.i1217, label %_ZN7testing7MessageD2Ev.exit1219, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1218

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1218: ; preds = %bb.pv
  %i.alt = load ptr, ptr %i.als, align 8, !tbaa !20
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 8
  %i.alv = load ptr, ptr %i.alu, align 8
  call void %i.alv(ptr noundef nonnull align 8 dereferenceable(128) %i.als) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1219

_ZN7testing7MessageD2Ev.exit1219:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1218, %bb.pv, %bb.ps
end_hunk_5
begin_hunk_6_@_ZN24Delegate_Comparison_Test8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #28
  %i.amo = load ptr, ptr %i.n, align 8, !tbaa !54
  store ptr %i.amo, ptr %i.j, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #28
  %i.amp = load ptr, ptr %i.ar, align 8, !tbaa !54
  store ptr %i.amp, ptr %i.k, align 8, !tbaa !68
  call void @_ZN7testing8internal11CmpHelperNEIPFiPKviES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %155, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28
  %i.amq = load i8, ptr %155, align 8, !tbaa !42, !range !43, !noundef !55
  %i.amr = trunc nuw i8 %i.amq to i1
  br i1 %i.amr, label %bb.qq, label %bb.qh

bb.qh:                                            ; preds = %bb.qg
  call void @llvm.lifetime.start.p0(ptr nonnull %156) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %156)
          to label %bb.qi unwind label %bb.qm

bb.qi:                                            ; preds = %bb.qh
  call void @llvm.lifetime.start.p0(ptr nonnull %157) #28
  %i.ams = getelementptr inbounds nuw i8, ptr %155, i64 8
  %i.amt = load ptr, ptr %i.ams, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i1228 = icmp eq ptr %i.amt, null
  br i1 %.not.i.i.i1228, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1229, label %bb.qj

bb.qj:                                            ; preds = %bb.qi
  %i.amu = load ptr, ptr %i.amt, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1229

_ZNK7testing15AssertionResult15failure_messageEv.exit1229: ; preds = %bb.qj, %bb.qi
  %i.amv = phi ptr [ %i.amu, %bb.qj ], [ @.str.20, %bb.qi ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %157, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 212, ptr noundef %i.amv)
          to label %bb.qk unwind label %bb.qn

bb.qk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1229
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %157, ptr noundef nonnull align 8 dereferenceable(8) %156)
          to label %bb.ql unwind label %bb.qo

bb.ql:                                            ; preds = %bb.qk
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %157) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #28
  %i.amw = load ptr, ptr %156, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1230 = icmp eq ptr %i.amw, null
  br i1 %.not.i.i1230, label %_ZN7testing7MessageD2Ev.exit1232, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1231

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1231: ; preds = %bb.ql
  %i.amx = load ptr, ptr %i.amw, align 8, !tbaa !20
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 8
  %i.amz = load ptr, ptr %i.amy, align 8
  call void %i.amz(ptr noundef nonnull align 8 dereferenceable(128) %i.amw) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1232

_ZN7testing7MessageD2Ev.exit1232:                 ; preds = %bb.ql, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1231
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %155) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #28
  br label %bb.xc

bb.qm:                                            ; preds = %bb.qh
  %i.ana = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1235

bb.qn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1229
  %i.anb = landingpad { ptr, i32 }
          cleanup
  br label %bb.qp

bb.qo:                                            ; preds = %bb.qk
  %i.anc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %157) #28
  br label %bb.qp

bb.qp:                                            ; preds = %bb.qo, %bb.qn
  %.pn493 = phi { ptr, i32 } [ %i.anc, %bb.qo ], [ %i.anb, %bb.qn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #28
  %i.and = load ptr, ptr %156, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1233 = icmp eq ptr %i.and, null
  br i1 %.not.i.i1233, label %_ZN7testing7MessageD2Ev.exit1235, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1234

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1234: ; preds = %bb.qp
  %i.ane = load ptr, ptr %i.and, align 8, !tbaa !20
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 8
  %i.ang = load ptr, ptr %i.anf, align 8
  call void %i.ang(ptr noundef nonnull align 8 dereferenceable(128) %i.and) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1235

_ZN7testing7MessageD2Ev.exit1235:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1234, %bb.qp, %bb.qm
  %.pn493.pn = phi { ptr, i32 } [ %i.ana, %bb.qm ], [ %.pn493, %bb.qp ], [ %.pn493, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1234 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %155) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #28
  br label %bb.xd

bb.qq:                                            ; preds = %bb.qg
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %155) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %158) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #28
  %i.anh = load ptr, ptr %1, align 16, !tbaa !53
  store ptr %i.anh, ptr %i.l, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #28
  %i.ani = load ptr, ptr %2, align 16, !tbaa !53
  store ptr %i.ani, ptr %i.m, align 8, !tbaa !68
  call void @_ZN7testing8internal8EqHelper7CompareIPKvS4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %158, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #28
  %i.anj = load i8, ptr %158, align 8, !tbaa !42, !range !43, !noundef !55
  %i.ank = trunc nuw i8 %i.anj to i1
  br i1 %i.ank, label %bb.ra, label %bb.qr

bb.qr:                                            ; preds = %bb.qq
  call void @llvm.lifetime.start.p0(ptr nonnull %159) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %159)
          to label %bb.qs unwind label %bb.qw

bb.qs:                                            ; preds = %bb.qr
  call void @llvm.lifetime.start.p0(ptr nonnull %160) #28
  %i.anl = getelementptr inbounds nuw i8, ptr %158, i64 8
  %i.anm = load ptr, ptr %i.anl, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i1236 = icmp eq ptr %i.anm, null
  br i1 %.not.i.i.i1236, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1237, label %bb.qt

bb.qt:                                            ; preds = %bb.qs
  %i.ann = load ptr, ptr %i.anm, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1237

_ZNK7testing15AssertionResult15failure_messageEv.exit1237: ; preds = %bb.qt, %bb.qs
  %i.ano = phi ptr [ %i.ann, %bb.qt ], [ @.str.20, %bb.qs ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %160, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 213, ptr noundef %i.ano)
          to label %bb.qu unwind label %bb.qx

bb.qu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1237
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %160, ptr noundef nonnull align 8 dereferenceable(8) %159)
          to label %bb.qv unwind label %bb.qy

bb.qv:                                            ; preds = %bb.qu
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %160) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %160) #28
  %i.anp = load ptr, ptr %159, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1238 = icmp eq ptr %i.anp, null
  br i1 %.not.i.i1238, label %_ZN7testing7MessageD2Ev.exit1240, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1239

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1239: ; preds = %bb.qv
  %i.anq = load ptr, ptr %i.anp, align 8, !tbaa !20
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anq, i64 8
  %i.ans = load ptr, ptr %i.anr, align 8
  call void %i.ans(ptr noundef nonnull align 8 dereferenceable(128) %i.anp) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1240

_ZN7testing7MessageD2Ev.exit1240:                 ; preds = %bb.qv, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1239
  call void @llvm.lifetime.end.p0(ptr nonnull %159) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %158) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #28
  br label %bb.xc

bb.qw:                                            ; preds = %bb.qr
  %i.ant = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1243

bb.qx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1237
  %i.anu = landingpad { ptr, i32 }
          cleanup
  br label %bb.qz

bb.qy:                                            ; preds = %bb.qu
  %i.anv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %160) #28
  br label %bb.qz

bb.qz:                                            ; preds = %bb.qy, %bb.qx
  %.pn496 = phi { ptr, i32 } [ %i.anv, %bb.qy ], [ %i.anu, %bb.qx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %160) #28
  %i.anw = load ptr, ptr %159, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1241 = icmp eq ptr %i.anw, null
  br i1 %.not.i.i1241, label %_ZN7testing7MessageD2Ev.exit1243, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1242

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1242: ; preds = %bb.qz
  %i.anx = load ptr, ptr %i.anw, align 8, !tbaa !20
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 8
  %i.anz = load ptr, ptr %i.any, align 8
  call void %i.anz(ptr noundef nonnull align 8 dereferenceable(128) %i.anw) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1243

_ZN7testing7MessageD2Ev.exit1243:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1242, %bb.qz, %bb.qw
  %.pn496.pn = phi { ptr, i32 } [ %i.ant, %bb.qw ], [ %.pn496, %bb.qz ], [ %.pn496, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1242 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %159) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %158) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #28
  br label %bb.xd

bb.ra:                                            ; preds = %bb.qq
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %158) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %161) #28
  %i.aoa = load <2 x ptr>, ptr %1, align 16
  %i.aob = load <2 x ptr>, ptr %2, align 16
  %i.aoc = icmp ne <2 x ptr> %i.aoa, %i.aob       ; 2 uses
  %257 = extractelement <2 x i1> %i.aoc, i64 0
  %258 = extractelement <2 x i1> %i.aoc, i64 1
  %.not1448 = select i1 %258, i1 true, i1 %257    ; 2 uses
  %i.aod = zext i1 %.not1448 to i8
  store i8 %i.aod, ptr %161, align 8, !tbaa !42
  %i.aoe = getelementptr inbounds nuw i8, ptr %161, i64 8
  store ptr null, ptr %i.aoe, align 8, !tbaa !56
  br i1 %.not1448, label %bb.rl, label %bb.rb

bb.rb:                                            ; preds = %bb.ra
  call void @llvm.lifetime.start.p0(ptr nonnull %162) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %162)
          to label %bb.rc unwind label %bb.rg

bb.rc:                                            ; preds = %bb.rb
  call void @llvm.lifetime.start.p0(ptr nonnull %163) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %164) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %164, ptr noundef nonnull align 8 dereferenceable(16) %161, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4)
          to label %bb.rd unwind label %bb.rh

bb.rd:                                            ; preds = %bb.rc
  %i.aof = load ptr, ptr %164, align 8, !tbaa !48
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %163, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 214, ptr noundef %i.aof)
          to label %bb.re unwind label %bb.ri

bb.re:                                            ; preds = %bb.rd
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %163, ptr noundef nonnull align 8 dereferenceable(8) %162)
          to label %bb.rf unwind label %bb.rj

bb.rf:                                            ; preds = %bb.re
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %163) #28
  %i.aog = load ptr, ptr %164, align 8, !tbaa !48 ; 2 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %164, i64 16 ; 2 uses
  %i.aoi = icmp eq ptr %i.aog, %i.aoh
  br i1 %i.aoi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1244

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1244: ; preds = %bb.rf
  %i.aoj = load i64, ptr %i.aoh, align 8, !tbaa !51
  %i.aok = add i64 %i.aoj, 1
  call void @_ZdlPvm(ptr noundef %i.aog, i64 noundef %i.aok) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1246

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1246: ; preds = %bb.rf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1244
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %163) #28
  %i.aol = load ptr, ptr %162, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1247 = icmp eq ptr %i.aol, null
  br i1 %.not.i.i1247, label %_ZN7testing7MessageD2Ev.exit1249, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1248

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1248: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1246
  %i.aom = load ptr, ptr %i.aol, align 8, !tbaa !20
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 8
  %i.aoo = load ptr, ptr %i.aon, align 8
  call void %i.aoo(ptr noundef nonnull align 8 dereferenceable(128) %i.aol) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1249

_ZN7testing7MessageD2Ev.exit1249:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1246, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1248
  call void @llvm.lifetime.end.p0(ptr nonnull %162) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %161) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %161) #28
  br label %bb.xc

bb.rg:                                            ; preds = %bb.rb
  %i.aop = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1255

bb.rh:                                            ; preds = %bb.rc
  %i.aoq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1252

bb.ri:                                            ; preds = %bb.rd
  %i.aor = landingpad { ptr, i32 }
          cleanup
  br label %bb.rk

bb.rj:                                            ; preds = %bb.re
  %i.aos = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %163) #28
  br label %bb.rk

bb.rk:                                            ; preds = %bb.rj, %bb.ri
  %.pn499 = phi { ptr, i32 } [ %i.aos, %bb.rj ], [ %i.aor, %bb.ri ] ; 2 uses
  %i.aot = load ptr, ptr %164, align 8, !tbaa !48 ; 2 uses
  %i.aou = getelementptr inbounds nuw i8, ptr %164, i64 16 ; 2 uses
  %i.aov = icmp eq ptr %i.aot, %i.aou
  br i1 %i.aov, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1252, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1250

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1250: ; preds = %bb.rk
  %i.aow = load i64, ptr %i.aou, align 8, !tbaa !51
  %i.aox = add i64 %i.aow, 1
  call void @_ZdlPvm(ptr noundef %i.aot, i64 noundef %i.aox) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1252

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1252: ; preds = %bb.rk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1250, %bb.rh
  %.pn499.pn = phi { ptr, i32 } [ %i.aoq, %bb.rh ], [ %.pn499, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1250 ], [ %.pn499, %bb.rk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %163) #28
  %i.aoy = load ptr, ptr %162, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1253 = icmp eq ptr %i.aoy, null
  br i1 %.not.i.i1253, label %_ZN7testing7MessageD2Ev.exit1255, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1254

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1254: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1252
  %i.aoz = load ptr, ptr %i.aoy, align 8, !tbaa !20
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aoz, i64 8
  %i.apb = load ptr, ptr %i.apa, align 8
  call void %i.apb(ptr noundef nonnull align 8 dereferenceable(128) %i.aoy) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1255

_ZN7testing7MessageD2Ev.exit1255:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1254, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1252, %bb.rg
  %.pn499.pn.pn = phi { ptr, i32 } [ %i.aop, %bb.rg ], [ %.pn499.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1252 ], [ %.pn499.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1254 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %162) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %161) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %161) #28
  br label %bb.xd

bb.rl:                                            ; preds = %bb.ra
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %161) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %161) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %165) #28
  %i.apc = load <2 x ptr>, ptr %1, align 16
  %i.apd = load <2 x ptr>, ptr %2, align 16
  %i.ape = icmp ne <2 x ptr> %i.apc, %i.apd       ; 2 uses
  %259 = extractelement <2 x i1> %i.ape, i64 0
  %260 = extractelement <2 x i1> %i.ape, i64 1
  %.not1450 = select i1 %260, i1 true, i1 %259    ; 2 uses
  %i.apf = zext i1 %.not1450 to i8
  store i8 %i.apf, ptr %165, align 8, !tbaa !42
  %i.apg = getelementptr inbounds nuw i8, ptr %165, i64 8
  store ptr null, ptr %i.apg, align 8, !tbaa !56
  br i1 %.not1450, label %bb.rw, label %bb.rm

bb.rm:                                            ; preds = %bb.rl
  call void @llvm.lifetime.start.p0(ptr nonnull %166) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %166)
          to label %bb.rn unwind label %bb.rr

bb.rn:                                            ; preds = %bb.rm
  call void @llvm.lifetime.start.p0(ptr nonnull %167) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %168) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %168, ptr noundef nonnull align 8 dereferenceable(16) %165, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.ro unwind label %bb.rs

bb.ro:                                            ; preds = %bb.rn
  %i.aph = load ptr, ptr %168, align 8, !tbaa !48
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %167, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 215, ptr noundef %i.aph)
          to label %bb.rp unwind label %bb.rt

bb.rp:                                            ; preds = %bb.ro
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %167, ptr noundef nonnull align 8 dereferenceable(8) %166)
          to label %bb.rq unwind label %bb.ru

bb.rq:                                            ; preds = %bb.rp
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %167) #28
  %i.api = load ptr, ptr %168, align 8, !tbaa !48 ; 2 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %168, i64 16 ; 2 uses
  %i.apk = icmp eq ptr %i.api, %i.apj
  br i1 %i.apk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1258, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1256

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1256: ; preds = %bb.rq
  %i.apl = load i64, ptr %i.apj, align 8, !tbaa !51
  %i.apm = add i64 %i.apl, 1
  call void @_ZdlPvm(ptr noundef %i.api, i64 noundef %i.apm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1258

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1258: ; preds = %bb.rq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1256
  call void @llvm.lifetime.end.p0(ptr nonnull %168) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %167) #28
  %i.apn = load ptr, ptr %166, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1259 = icmp eq ptr %i.apn, null
  br i1 %.not.i.i1259, label %_ZN7testing7MessageD2Ev.exit1261, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1260

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1260: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1258
  %i.apo = load ptr, ptr %i.apn, align 8, !tbaa !20
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 8
  %i.apq = load ptr, ptr %i.app, align 8
  call void %i.apq(ptr noundef nonnull align 8 dereferenceable(128) %i.apn) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1261

_ZN7testing7MessageD2Ev.exit1261:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1258, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1260
  call void @llvm.lifetime.end.p0(ptr nonnull %166) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %165) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %165) #28
  br label %bb.xc

bb.rr:                                            ; preds = %bb.rm
  %i.apr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1267

bb.rs:                                            ; preds = %bb.rn
  %i.aps = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1264

bb.rt:                                            ; preds = %bb.ro
  %i.apt = landingpad { ptr, i32 }
          cleanup
  br label %bb.rv

bb.ru:                                            ; preds = %bb.rp
  %i.apu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %167) #28
  br label %bb.rv

bb.rv:                                            ; preds = %bb.ru, %bb.rt
  %.pn503 = phi { ptr, i32 } [ %i.apu, %bb.ru ], [ %i.apt, %bb.rt ] ; 2 uses
  %i.apv = load ptr, ptr %168, align 8, !tbaa !48 ; 2 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %168, i64 16 ; 2 uses
  %i.apx = icmp eq ptr %i.apv, %i.apw
  br i1 %i.apx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1264, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1262

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1262: ; preds = %bb.rv
  %i.apy = load i64, ptr %i.apw, align 8, !tbaa !51
  %i.apz = add i64 %i.apy, 1
  call void @_ZdlPvm(ptr noundef %i.apv, i64 noundef %i.apz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1264

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1264: ; preds = %bb.rv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1262, %bb.rs
  %.pn503.pn = phi { ptr, i32 } [ %i.aps, %bb.rs ], [ %.pn503, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1262 ], [ %.pn503, %bb.rv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %168) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %167) #28
  %i.aqa = load ptr, ptr %166, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1265 = icmp eq ptr %i.aqa, null
  br i1 %.not.i.i1265, label %_ZN7testing7MessageD2Ev.exit1267, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1266

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1266: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1264
  %i.aqb = load ptr, ptr %i.aqa, align 8, !tbaa !20
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aqb, i64 8
  %i.aqd = load ptr, ptr %i.aqc, align 8
  call void %i.aqd(ptr noundef nonnull align 8 dereferenceable(128) %i.aqa) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1267

_ZN7testing7MessageD2Ev.exit1267:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1266, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1264, %bb.rr
  %.pn503.pn.pn = phi { ptr, i32 } [ %i.apr, %bb.rr ], [ %.pn503.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1264 ], [ %.pn503.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1266 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %166) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %165) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %165) #28
  br label %bb.xd

bb.rw:                                            ; preds = %bb.rl
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %165) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %165) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %169) #28
  call void @_ZN7testing8internal11CmpHelperNEIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %169, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.32, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.aqe = load i8, ptr %169, align 8, !tbaa !42, !range !43, !noundef !55
  %i.aqf = trunc nuw i8 %i.aqe to i1
  br i1 %i.aqf, label %bb.sg, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  call void @llvm.lifetime.start.p0(ptr nonnull %170) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %170)
          to label %bb.ry unwind label %bb.sc

bb.ry:                                            ; preds = %bb.rx
  call void @llvm.lifetime.start.p0(ptr nonnull %171) #28
  %i.aqg = getelementptr inbounds nuw i8, ptr %169, i64 8
  %i.aqh = load ptr, ptr %i.aqg, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i1268 = icmp eq ptr %i.aqh, null
  br i1 %.not.i.i.i1268, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1269, label %bb.rz

bb.rz:                                            ; preds = %bb.ry
  %i.aqi = load ptr, ptr %i.aqh, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1269

_ZNK7testing15AssertionResult15failure_messageEv.exit1269: ; preds = %bb.rz, %bb.ry
  %i.aqj = phi ptr [ %i.aqi, %bb.rz ], [ @.str.20, %bb.ry ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %171, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 216, ptr noundef %i.aqj)
          to label %bb.sa unwind label %bb.sd

bb.sa:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1269
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %171, ptr noundef nonnull align 8 dereferenceable(8) %170)
          to label %bb.sb unwind label %bb.se

bb.sb:                                            ; preds = %bb.sa
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %171) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %171) #28
  %i.aqk = load ptr, ptr %170, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1270 = icmp eq ptr %i.aqk, null
  br i1 %.not.i.i1270, label %_ZN7testing7MessageD2Ev.exit1272, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1271

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1271: ; preds = %bb.sb
  %i.aql = load ptr, ptr %i.aqk, align 8, !tbaa !20
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aql, i64 8
  %i.aqn = load ptr, ptr %i.aqm, align 8
  call void %i.aqn(ptr noundef nonnull align 8 dereferenceable(128) %i.aqk) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1272

_ZN7testing7MessageD2Ev.exit1272:                 ; preds = %bb.sb, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1271
  call void @llvm.lifetime.end.p0(ptr nonnull %170) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %169) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %169) #28
  br label %bb.xc

bb.sc:                                            ; preds = %bb.rx
  %i.aqo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1275

bb.sd:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1269
  %i.aqp = landingpad { ptr, i32 }
          cleanup
  br label %bb.sf

bb.se:                                            ; preds = %bb.sa
  %i.aqq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %171) #28
  br label %bb.sf

bb.sf:                                            ; preds = %bb.se, %bb.sd
  %.pn507 = phi { ptr, i32 } [ %i.aqq, %bb.se ], [ %i.aqp, %bb.sd ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %171) #28
  %i.aqr = load ptr, ptr %170, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1273 = icmp eq ptr %i.aqr, null
  br i1 %.not.i.i1273, label %_ZN7testing7MessageD2Ev.exit1275, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1274

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1274: ; preds = %bb.sf
  %i.aqs = load ptr, ptr %i.aqr, align 8, !tbaa !20
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqs, i64 8
  %i.aqu = load ptr, ptr %i.aqt, align 8
  call void %i.aqu(ptr noundef nonnull align 8 dereferenceable(128) %i.aqr) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1275

_ZN7testing7MessageD2Ev.exit1275:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1274, %bb.sf, %bb.sc
  %.pn507.pn = phi { ptr, i32 } [ %i.aqo, %bb.sc ], [ %.pn507, %bb.sf ], [ %.pn507, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1274 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %170) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %169) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %169) #28
  br label %bb.xd

bb.sg:                                            ; preds = %bb.rw
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %169) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %169) #28
  store ptr %3, ptr %2, align 16, !tbaa !53
  store ptr @"_ZZN24Delegate_Comparison_Test8TestBodyEvEN3$_28__invokeEPKvi", ptr %i.ar, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %172) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %173) #28
  %i.aqv = getelementptr inbounds nuw i8, ptr %173, i64 8
  store ptr %3, ptr %173, align 8, !tbaa !53
  store ptr @"_ZZN24Delegate_Comparison_Test8TestBodyEvEN3$_38__invokeEPKvi", ptr %i.aqv, align 8, !tbaa !54
  call void @_ZN7testing8internal11CmpHelperNEIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %172, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.43, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %173)
  call void @llvm.lifetime.end.p0(ptr nonnull %173) #28
  %i.aqw = load i8, ptr %172, align 8, !tbaa !42, !range !43, !noundef !55
  %i.aqx = trunc nuw i8 %i.aqw to i1
  br i1 %i.aqx, label %bb.sq, label %bb.sh

bb.sh:                                            ; preds = %bb.sg
  call void @llvm.lifetime.start.p0(ptr nonnull %174) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %174)
          to label %bb.si unwind label %bb.sm

bb.si:                                            ; preds = %bb.sh
  call void @llvm.lifetime.start.p0(ptr nonnull %175) #28
  %i.aqy = getelementptr inbounds nuw i8, ptr %172, i64 8
  %i.aqz = load ptr, ptr %i.aqy, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i1276 = icmp eq ptr %i.aqz, null
  br i1 %.not.i.i.i1276, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1277, label %bb.sj

bb.sj:                                            ; preds = %bb.si
  %i.ara = load ptr, ptr %i.aqz, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1277

_ZNK7testing15AssertionResult15failure_messageEv.exit1277: ; preds = %bb.sj, %bb.si
  %i.arb = phi ptr [ %i.ara, %bb.sj ], [ @.str.20, %bb.si ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %175, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 220, ptr noundef %i.arb)
          to label %bb.sk unwind label %bb.sn

bb.sk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1277
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %175, ptr noundef nonnull align 8 dereferenceable(8) %174)
          to label %bb.sl unwind label %bb.so

bb.sl:                                            ; preds = %bb.sk
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %175) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %175) #28
  %i.arc = load ptr, ptr %174, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1278 = icmp eq ptr %i.arc, null
  br i1 %.not.i.i1278, label %_ZN7testing7MessageD2Ev.exit1280, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1279

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1279: ; preds = %bb.sl
  %i.ard = load ptr, ptr %i.arc, align 8, !tbaa !20
  %i.are = getelementptr inbounds nuw i8, ptr %i.ard, i64 8
  %i.arf = load ptr, ptr %i.are, align 8
  call void %i.arf(ptr noundef nonnull align 8 dereferenceable(128) %i.arc) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1280

_ZN7testing7MessageD2Ev.exit1280:                 ; preds = %bb.sl, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1279
  call void @llvm.lifetime.end.p0(ptr nonnull %174) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %172) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %172) #28
  br label %bb.xc

bb.sm:                                            ; preds = %bb.sh
  %i.arg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1283

bb.sn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1277
  %i.arh = landingpad { ptr, i32 }
          cleanup
  br label %bb.sp

bb.so:                                            ; preds = %bb.sk
  %i.ari = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %175) #28
  br label %bb.sp

bb.sp:                                            ; preds = %bb.so, %bb.sn
  %.pn510 = phi { ptr, i32 } [ %i.ari, %bb.so ], [ %i.arh, %bb.sn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %175) #28
  %i.arj = load ptr, ptr %174, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1281 = icmp eq ptr %i.arj, null
  br i1 %.not.i.i1281, label %_ZN7testing7MessageD2Ev.exit1283, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1282

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1282: ; preds = %bb.sp
  %i.ark = load ptr, ptr %i.arj, align 8, !tbaa !20
  %i.arl = getelementptr inbounds nuw i8, ptr %i.ark, i64 8
  %i.arm = load ptr, ptr %i.arl, align 8
  call void %i.arm(ptr noundef nonnull align 8 dereferenceable(128) %i.arj) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1283

_ZN7testing7MessageD2Ev.exit1283:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1282, %bb.sp, %bb.sm
  %.pn510.pn = phi { ptr, i32 } [ %i.arg, %bb.sm ], [ %.pn510, %bb.sp ], [ %.pn510, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1282 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %174) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %172) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %172) #28
  br label %bb.xd

bb.sq:                                            ; preds = %bb.sg
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %172) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %172) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %176) #28
  %i.arn = load <2 x ptr>, ptr %1, align 16
  %i.aro = load <2 x ptr>, ptr %2, align 16
  %i.arp = icmp ne <2 x ptr> %i.arn, %i.aro       ; 2 uses
  %261 = extractelement <2 x i1> %i.arp, i64 0
  %262 = extractelement <2 x i1> %i.arp, i64 1
  %.not1452 = select i1 %262, i1 true, i1 %261    ; 2 uses
  %i.arq = zext i1 %.not1452 to i8
  store i8 %i.arq, ptr %176, align 8, !tbaa !42
  %i.arr = getelementptr inbounds nuw i8, ptr %176, i64 8
  store ptr null, ptr %i.arr, align 8, !tbaa !56
  br i1 %.not1452, label %bb.tb, label %bb.sr

bb.sr:                                            ; preds = %bb.sq
  call void @llvm.lifetime.start.p0(ptr nonnull %177) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %177)
          to label %bb.ss unwind label %bb.sw

bb.ss:                                            ; preds = %bb.sr
  call void @llvm.lifetime.start.p0(ptr nonnull %178) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %179) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %179, ptr noundef nonnull align 8 dereferenceable(16) %176, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4)
          to label %bb.st unwind label %bb.sx

bb.st:                                            ; preds = %bb.ss
  %i.ars = load ptr, ptr %179, align 8, !tbaa !48
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %178, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 221, ptr noundef %i.ars)
          to label %bb.su unwind label %bb.sy

bb.su:                                            ; preds = %bb.st
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %178, ptr noundef nonnull align 8 dereferenceable(8) %177)
          to label %bb.sv unwind label %bb.sz

bb.sv:                                            ; preds = %bb.su
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %178) #28
  %i.art = load ptr, ptr %179, align 8, !tbaa !48 ; 2 uses
  %i.aru = getelementptr inbounds nuw i8, ptr %179, i64 16 ; 2 uses
  %i.arv = icmp eq ptr %i.art, %i.aru
  br i1 %i.arv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1286, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1284

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1284: ; preds = %bb.sv
  %i.arw = load i64, ptr %i.aru, align 8, !tbaa !51
  %i.arx = add i64 %i.arw, 1
  call void @_ZdlPvm(ptr noundef %i.art, i64 noundef %i.arx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1286

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1286: ; preds = %bb.sv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1284
  call void @llvm.lifetime.end.p0(ptr nonnull %179) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %178) #28
  %i.ary = load ptr, ptr %177, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1287 = icmp eq ptr %i.ary, null
  br i1 %.not.i.i1287, label %_ZN7testing7MessageD2Ev.exit1289, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1288

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1288: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1286
  %i.arz = load ptr, ptr %i.ary, align 8, !tbaa !20
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arz, i64 8
  %i.asb = load ptr, ptr %i.asa, align 8
  call void %i.asb(ptr noundef nonnull align 8 dereferenceable(128) %i.ary) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1289

_ZN7testing7MessageD2Ev.exit1289:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1286, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1288
  call void @llvm.lifetime.end.p0(ptr nonnull %177) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %176) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %176) #28
  br label %bb.xc

bb.sw:                                            ; preds = %bb.sr
  %i.asc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1295

bb.sx:                                            ; preds = %bb.ss
  %i.asd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1292

bb.sy:                                            ; preds = %bb.st
  %i.ase = landingpad { ptr, i32 }
          cleanup
  br label %bb.ta

bb.sz:                                            ; preds = %bb.su
  %i.asf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %178) #28
  br label %bb.ta

bb.ta:                                            ; preds = %bb.sz, %bb.sy
  %.pn513 = phi { ptr, i32 } [ %i.asf, %bb.sz ], [ %i.ase, %bb.sy ] ; 2 uses
  %i.asg = load ptr, ptr %179, align 8, !tbaa !48 ; 2 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %179, i64 16 ; 2 uses
  %i.asi = icmp eq ptr %i.asg, %i.ash
  br i1 %i.asi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1292, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1290

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1290: ; preds = %bb.ta
  %i.asj = load i64, ptr %i.ash, align 8, !tbaa !51
  %i.ask = add i64 %i.asj, 1
  call void @_ZdlPvm(ptr noundef %i.asg, i64 noundef %i.ask) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1292

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1292: ; preds = %bb.ta, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1290, %bb.sx
  %.pn513.pn = phi { ptr, i32 } [ %i.asd, %bb.sx ], [ %.pn513, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1290 ], [ %.pn513, %bb.ta ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %179) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %178) #28
  %i.asl = load ptr, ptr %177, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1293 = icmp eq ptr %i.asl, null
  br i1 %.not.i.i1293, label %_ZN7testing7MessageD2Ev.exit1295, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1294

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1294: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1292
  %i.asm = load ptr, ptr %i.asl, align 8, !tbaa !20
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asm, i64 8
  %i.aso = load ptr, ptr %i.asn, align 8
  call void %i.aso(ptr noundef nonnull align 8 dereferenceable(128) %i.asl) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1295

_ZN7testing7MessageD2Ev.exit1295:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1294, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1292, %bb.sw
  %.pn513.pn.pn = phi { ptr, i32 } [ %i.asc, %bb.sw ], [ %.pn513.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1292 ], [ %.pn513.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1294 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %177) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %176) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %176) #28
  br label %bb.xd

bb.tb:                                            ; preds = %bb.sq
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %176) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %176) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %180) #28
  %i.asp = load <2 x ptr>, ptr %1, align 16
  %i.asq = load <2 x ptr>, ptr %2, align 16
  %i.asr = icmp ne <2 x ptr> %i.asp, %i.asq       ; 2 uses
  %263 = extractelement <2 x i1> %i.asr, i64 0
  %264 = extractelement <2 x i1> %i.asr, i64 1
  %.not1454 = select i1 %264, i1 true, i1 %263    ; 2 uses
  %i.ass = zext i1 %.not1454 to i8
  store i8 %i.ass, ptr %180, align 8, !tbaa !42
  %i.ast = getelementptr inbounds nuw i8, ptr %180, i64 8
  store ptr null, ptr %i.ast, align 8, !tbaa !56
  br i1 %.not1454, label %bb.tm, label %bb.tc

bb.tc:                                            ; preds = %bb.tb
  call void @llvm.lifetime.start.p0(ptr nonnull %181) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %181)
          to label %bb.td unwind label %bb.th

bb.td:                                            ; preds = %bb.tc
  call void @llvm.lifetime.start.p0(ptr nonnull %182) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %183) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %183, ptr noundef nonnull align 8 dereferenceable(16) %180, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.te unwind label %bb.ti

bb.te:                                            ; preds = %bb.td
  %i.asu = load ptr, ptr %183, align 8, !tbaa !48
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %182, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 222, ptr noundef %i.asu)
          to label %bb.tf unwind label %bb.tj

bb.tf:                                            ; preds = %bb.te
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %182, ptr noundef nonnull align 8 dereferenceable(8) %181)
          to label %bb.tg unwind label %bb.tk

bb.tg:                                            ; preds = %bb.tf
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %182) #28
  %i.asv = load ptr, ptr %183, align 8, !tbaa !48 ; 2 uses
  %i.asw = getelementptr inbounds nuw i8, ptr %183, i64 16 ; 2 uses
  %i.asx = icmp eq ptr %i.asv, %i.asw
  br i1 %i.asx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1298, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1296

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1296: ; preds = %bb.tg
  %i.asy = load i64, ptr %i.asw, align 8, !tbaa !51
  %i.asz = add i64 %i.asy, 1
  call void @_ZdlPvm(ptr noundef %i.asv, i64 noundef %i.asz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1298

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1298: ; preds = %bb.tg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1296
  call void @llvm.lifetime.end.p0(ptr nonnull %183) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %182) #28
  %i.ata = load ptr, ptr %181, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1299 = icmp eq ptr %i.ata, null
  br i1 %.not.i.i1299, label %_ZN7testing7MessageD2Ev.exit1301, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1300

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1300: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1298
  %i.atb = load ptr, ptr %i.ata, align 8, !tbaa !20
  %i.atc = getelementptr inbounds nuw i8, ptr %i.atb, i64 8
  %i.atd = load ptr, ptr %i.atc, align 8
  call void %i.atd(ptr noundef nonnull align 8 dereferenceable(128) %i.ata) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1301

_ZN7testing7MessageD2Ev.exit1301:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1298, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1300
  call void @llvm.lifetime.end.p0(ptr nonnull %181) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %180) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %180) #28
  br label %bb.xc

bb.th:                                            ; preds = %bb.tc
  %i.ate = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1307

bb.ti:                                            ; preds = %bb.td
  %i.atf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1304

bb.tj:                                            ; preds = %bb.te
  %i.atg = landingpad { ptr, i32 }
          cleanup
  br label %bb.tl

bb.tk:                                            ; preds = %bb.tf
  %i.ath = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %182) #28
  br label %bb.tl

bb.tl:                                            ; preds = %bb.tk, %bb.tj
  %.pn517 = phi { ptr, i32 } [ %i.ath, %bb.tk ], [ %i.atg, %bb.tj ] ; 2 uses
  %i.ati = load ptr, ptr %183, align 8, !tbaa !48 ; 2 uses
  %i.atj = getelementptr inbounds nuw i8, ptr %183, i64 16 ; 2 uses
  %i.atk = icmp eq ptr %i.ati, %i.atj
  br i1 %i.atk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1304, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1302

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1302: ; preds = %bb.tl
  %i.atl = load i64, ptr %i.atj, align 8, !tbaa !51
  %i.atm = add i64 %i.atl, 1
  call void @_ZdlPvm(ptr noundef %i.ati, i64 noundef %i.atm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1304

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1304: ; preds = %bb.tl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1302, %bb.ti
  %.pn517.pn = phi { ptr, i32 } [ %i.atf, %bb.ti ], [ %.pn517, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1302 ], [ %.pn517, %bb.tl ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %183) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %182) #28
  %i.atn = load ptr, ptr %181, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1305 = icmp eq ptr %i.atn, null
  br i1 %.not.i.i1305, label %_ZN7testing7MessageD2Ev.exit1307, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1306

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1306: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1304
  %i.ato = load ptr, ptr %i.atn, align 8, !tbaa !20
  %i.atp = getelementptr inbounds nuw i8, ptr %i.ato, i64 8
  %i.atq = load ptr, ptr %i.atp, align 8
  call void %i.atq(ptr noundef nonnull align 8 dereferenceable(128) %i.atn) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1307

_ZN7testing7MessageD2Ev.exit1307:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1306, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1304, %bb.th
  %.pn517.pn.pn = phi { ptr, i32 } [ %i.ate, %bb.th ], [ %.pn517.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1304 ], [ %.pn517.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1306 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %181) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %180) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %180) #28
  br label %bb.xd

bb.tm:                                            ; preds = %bb.tb
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %180) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %180) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %184) #28
  call void @_ZN7testing8internal11CmpHelperNEIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %184, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.32, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.atr = load i8, ptr %184, align 8, !tbaa !42, !range !43, !noundef !55
  %i.ats = trunc nuw i8 %i.atr to i1
  br i1 %i.ats, label %bb.tw, label %bb.tn

bb.tn:                                            ; preds = %bb.tm
  call void @llvm.lifetime.start.p0(ptr nonnull %185) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %185)
          to label %bb.to unwind label %bb.ts

bb.to:                                            ; preds = %bb.tn
  call void @llvm.lifetime.start.p0(ptr nonnull %186) #28
  %i.att = getelementptr inbounds nuw i8, ptr %184, i64 8
  %i.atu = load ptr, ptr %i.att, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i1308 = icmp eq ptr %i.atu, null
  br i1 %.not.i.i.i1308, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1309, label %bb.tp

bb.tp:                                            ; preds = %bb.to
  %i.atv = load ptr, ptr %i.atu, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1309

_ZNK7testing15AssertionResult15failure_messageEv.exit1309: ; preds = %bb.tp, %bb.to
  %i.atw = phi ptr [ %i.atv, %bb.tp ], [ @.str.20, %bb.to ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %186, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 223, ptr noundef %i.atw)
          to label %bb.tq unwind label %bb.tt

bb.tq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1309
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %186, ptr noundef nonnull align 8 dereferenceable(8) %185)
          to label %bb.tr unwind label %bb.tu

bb.tr:                                            ; preds = %bb.tq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %186) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %186) #28
  %i.atx = load ptr, ptr %185, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1310 = icmp eq ptr %i.atx, null
  br i1 %.not.i.i1310, label %_ZN7testing7MessageD2Ev.exit1312, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1311

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1311: ; preds = %bb.tr
  %i.aty = load ptr, ptr %i.atx, align 8, !tbaa !20
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aty, i64 8
  %i.aua = load ptr, ptr %i.atz, align 8
  call void %i.aua(ptr noundef nonnull align 8 dereferenceable(128) %i.atx) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1312

_ZN7testing7MessageD2Ev.exit1312:                 ; preds = %bb.tr, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1311
  call void @llvm.lifetime.end.p0(ptr nonnull %185) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %184) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %184) #28
  br label %bb.xc

bb.ts:                                            ; preds = %bb.tn
  %i.aub = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1315

bb.tt:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1309
  %i.auc = landingpad { ptr, i32 }
          cleanup
  br label %bb.tv

bb.tu:                                            ; preds = %bb.tq
  %i.aud = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %186) #28
  br label %bb.tv

bb.tv:                                            ; preds = %bb.tu, %bb.tt
  %.pn521 = phi { ptr, i32 } [ %i.aud, %bb.tu ], [ %i.auc, %bb.tt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %186) #28
  %i.aue = load ptr, ptr %185, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1313 = icmp eq ptr %i.aue, null
  br i1 %.not.i.i1313, label %_ZN7testing7MessageD2Ev.exit1315, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1314

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1314: ; preds = %bb.tv
  %i.auf = load ptr, ptr %i.aue, align 8, !tbaa !20
  %i.aug = getelementptr inbounds nuw i8, ptr %i.auf, i64 8
  %i.auh = load ptr, ptr %i.aug, align 8
  call void %i.auh(ptr noundef nonnull align 8 dereferenceable(128) %i.aue) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1315

_ZN7testing7MessageD2Ev.exit1315:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1314, %bb.tv, %bb.ts
  %.pn521.pn = phi { ptr, i32 } [ %i.aub, %bb.ts ], [ %.pn521, %bb.tv ], [ %.pn521, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1314 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %185) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %184) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %184) #28
  br label %bb.xd

bb.tw:                                            ; preds = %bb.tm
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %184) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %184) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %187) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %188) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %188, i8 0, i64 16, i1 false)
  call void @_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %187, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.44, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %188)
  call void @llvm.lifetime.end.p0(ptr nonnull %188) #28
  %i.aui = load i8, ptr %187, align 8, !tbaa !42, !range !43, !noundef !55
  %i.auj = trunc nuw i8 %i.aui to i1
  br i1 %i.auj, label %bb.ug, label %bb.tx

bb.tx:                                            ; preds = %bb.tw
  call void @llvm.lifetime.start.p0(ptr nonnull %189) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %189)
          to label %bb.ty unwind label %bb.uc

bb.ty:                                            ; preds = %bb.tx
  call void @llvm.lifetime.start.p0(ptr nonnull %190) #28
  %i.auk = getelementptr inbounds nuw i8, ptr %187, i64 8
  %i.aul = load ptr, ptr %i.auk, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i1316 = icmp eq ptr %i.aul, null
  br i1 %.not.i.i.i1316, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1317, label %bb.tz

bb.tz:                                            ; preds = %bb.ty
  %i.aum = load ptr, ptr %i.aul, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1317

_ZNK7testing15AssertionResult15failure_messageEv.exit1317: ; preds = %bb.tz, %bb.ty
  %i.aun = phi ptr [ %i.aum, %bb.tz ], [ @.str.20, %bb.ty ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %190, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 227, ptr noundef %i.aun)
          to label %bb.ua unwind label %bb.ud

bb.ua:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1317
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %190, ptr noundef nonnull align 8 dereferenceable(8) %189)
          to label %bb.ub unwind label %bb.ue

bb.ub:                                            ; preds = %bb.ua
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %190) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %190) #28
  %i.auo = load ptr, ptr %189, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1318 = icmp eq ptr %i.auo, null
  br i1 %.not.i.i1318, label %_ZN7testing7MessageD2Ev.exit1320, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1319

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1319: ; preds = %bb.ub
  %i.aup = load ptr, ptr %i.auo, align 8, !tbaa !20
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aup, i64 8
  %i.aur = load ptr, ptr %i.auq, align 8
  call void %i.aur(ptr noundef nonnull align 8 dereferenceable(128) %i.auo) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1320

_ZN7testing7MessageD2Ev.exit1320:                 ; preds = %bb.ub, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1319
  call void @llvm.lifetime.end.p0(ptr nonnull %189) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %187) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %187) #28
  br label %bb.xc

bb.uc:                                            ; preds = %bb.tx
  %i.aus = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1323

bb.ud:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1317
  %i.aut = landingpad { ptr, i32 }
          cleanup
  br label %bb.uf

bb.ue:                                            ; preds = %bb.ua
  %i.auu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %190) #28
  br label %bb.uf

bb.uf:                                            ; preds = %bb.ue, %bb.ud
  %.pn524 = phi { ptr, i32 } [ %i.auu, %bb.ue ], [ %i.aut, %bb.ud ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %190) #28
  %i.auv = load ptr, ptr %189, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1321 = icmp eq ptr %i.auv, null
  br i1 %.not.i.i1321, label %_ZN7testing7MessageD2Ev.exit1323, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1322

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1322: ; preds = %bb.uf
  %i.auw = load ptr, ptr %i.auv, align 8, !tbaa !20
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auw, i64 8
  %i.auy = load ptr, ptr %i.aux, align 8
  call void %i.auy(ptr noundef nonnull align 8 dereferenceable(128) %i.auv) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1323

_ZN7testing7MessageD2Ev.exit1323:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1322, %bb.uf, %bb.uc
  %.pn524.pn = phi { ptr, i32 } [ %i.aus, %bb.uc ], [ %.pn524, %bb.uf ], [ %.pn524, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1322 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %189) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %187) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %187) #28
  br label %bb.xd

bb.ug:                                            ; preds = %bb.tw
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %187) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %187) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %191) #28
  %i.auz = load <2 x ptr>, ptr %1, align 16
  %i.ava = load <2 x ptr>, ptr %2, align 16
  %i.avb = icmp ne <2 x ptr> %i.auz, %i.ava       ; 2 uses
  %265 = extractelement <2 x i1> %i.avb, i64 0
  %266 = extractelement <2 x i1> %i.avb, i64 1
  %.not1456 = select i1 %266, i1 true, i1 %265    ; 2 uses
  %i.avc = zext i1 %.not1456 to i8
  store i8 %i.avc, ptr %191, align 8, !tbaa !42
  %i.avd = getelementptr inbounds nuw i8, ptr %191, i64 8
  store ptr null, ptr %i.avd, align 8, !tbaa !56
  br i1 %.not1456, label %bb.ur, label %bb.uh

bb.uh:                                            ; preds = %bb.ug
  call void @llvm.lifetime.start.p0(ptr nonnull %192) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %192)
          to label %bb.ui unwind label %bb.um

bb.ui:                                            ; preds = %bb.uh
  call void @llvm.lifetime.start.p0(ptr nonnull %193) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %194) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %194, ptr noundef nonnull align 8 dereferenceable(16) %191, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4)
          to label %bb.uj unwind label %bb.un

bb.uj:                                            ; preds = %bb.ui
  %i.ave = load ptr, ptr %194, align 8, !tbaa !48
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %193, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 228, ptr noundef %i.ave)
          to label %bb.uk unwind label %bb.uo

bb.uk:                                            ; preds = %bb.uj
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %193, ptr noundef nonnull align 8 dereferenceable(8) %192)
          to label %bb.ul unwind label %bb.up

bb.ul:                                            ; preds = %bb.uk
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %193) #28
  %i.avf = load ptr, ptr %194, align 8, !tbaa !48 ; 2 uses
  %i.avg = getelementptr inbounds nuw i8, ptr %194, i64 16 ; 2 uses
  %i.avh = icmp eq ptr %i.avf, %i.avg
  br i1 %i.avh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1326, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1324

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1324: ; preds = %bb.ul
  %i.avi = load i64, ptr %i.avg, align 8, !tbaa !51
  %i.avj = add i64 %i.avi, 1
  call void @_ZdlPvm(ptr noundef %i.avf, i64 noundef %i.avj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1326

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1326: ; preds = %bb.ul, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1324
  call void @llvm.lifetime.end.p0(ptr nonnull %194) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %193) #28
  %i.avk = load ptr, ptr %192, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1327 = icmp eq ptr %i.avk, null
  br i1 %.not.i.i1327, label %_ZN7testing7MessageD2Ev.exit1329, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1328

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1328: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1326
  %i.avl = load ptr, ptr %i.avk, align 8, !tbaa !20
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avl, i64 8
  %i.avn = load ptr, ptr %i.avm, align 8
  call void %i.avn(ptr noundef nonnull align 8 dereferenceable(128) %i.avk) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1329

_ZN7testing7MessageD2Ev.exit1329:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1326, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1328
  call void @llvm.lifetime.end.p0(ptr nonnull %192) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %191) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %191) #28
  br label %bb.xc

bb.um:                                            ; preds = %bb.uh
  %i.avo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1335

bb.un:                                            ; preds = %bb.ui
  %i.avp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1332

bb.uo:                                            ; preds = %bb.uj
  %i.avq = landingpad { ptr, i32 }
          cleanup
  br label %bb.uq

bb.up:                                            ; preds = %bb.uk
  %i.avr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %193) #28
  br label %bb.uq

bb.uq:                                            ; preds = %bb.up, %bb.uo
  %.pn527 = phi { ptr, i32 } [ %i.avr, %bb.up ], [ %i.avq, %bb.uo ] ; 2 uses
  %i.avs = load ptr, ptr %194, align 8, !tbaa !48 ; 2 uses
  %i.avt = getelementptr inbounds nuw i8, ptr %194, i64 16 ; 2 uses
  %i.avu = icmp eq ptr %i.avs, %i.avt
  br i1 %i.avu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1332, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1330

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1330: ; preds = %bb.uq
  %i.avv = load i64, ptr %i.avt, align 8, !tbaa !51
  %i.avw = add i64 %i.avv, 1
  call void @_ZdlPvm(ptr noundef %i.avs, i64 noundef %i.avw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1332

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1332: ; preds = %bb.uq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1330, %bb.un
  %.pn527.pn = phi { ptr, i32 } [ %i.avp, %bb.un ], [ %.pn527, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1330 ], [ %.pn527, %bb.uq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %194) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %193) #28
  %i.avx = load ptr, ptr %192, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1333 = icmp eq ptr %i.avx, null
  br i1 %.not.i.i1333, label %_ZN7testing7MessageD2Ev.exit1335, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1334

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1334: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1332
  %i.avy = load ptr, ptr %i.avx, align 8, !tbaa !20
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avy, i64 8
  %i.awa = load ptr, ptr %i.avz, align 8
  call void %i.awa(ptr noundef nonnull align 8 dereferenceable(128) %i.avx) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1335

_ZN7testing7MessageD2Ev.exit1335:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1334, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1332, %bb.um
  %.pn527.pn.pn = phi { ptr, i32 } [ %i.avo, %bb.um ], [ %.pn527.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1332 ], [ %.pn527.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1334 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %192) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %191) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %191) #28
  br label %bb.xd

bb.ur:                                            ; preds = %bb.ug
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %191) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %191) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %195) #28
  %i.awb = load <2 x ptr>, ptr %1, align 16
  %i.awc = load <2 x ptr>, ptr %2, align 16
  %i.awd = icmp ne <2 x ptr> %i.awb, %i.awc       ; 2 uses
  %267 = extractelement <2 x i1> %i.awd, i64 0
  %268 = extractelement <2 x i1> %i.awd, i64 1
  %.not1458 = select i1 %268, i1 true, i1 %267    ; 2 uses
  %i.awe = zext i1 %.not1458 to i8
  store i8 %i.awe, ptr %195, align 8, !tbaa !42
  %i.awf = getelementptr inbounds nuw i8, ptr %195, i64 8
  store ptr null, ptr %i.awf, align 8, !tbaa !56
  br i1 %.not1458, label %bb.vc, label %bb.us

bb.us:                                            ; preds = %bb.ur
  call void @llvm.lifetime.start.p0(ptr nonnull %196) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %196)
          to label %bb.ut unwind label %bb.ux

bb.ut:                                            ; preds = %bb.us
  call void @llvm.lifetime.start.p0(ptr nonnull %197) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %198) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %198, ptr noundef nonnull align 8 dereferenceable(16) %195, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.uu unwind label %bb.uy

bb.uu:                                            ; preds = %bb.ut
  %i.awg = load ptr, ptr %198, align 8, !tbaa !48
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %197, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 229, ptr noundef %i.awg)
          to label %bb.uv unwind label %bb.uz

bb.uv:                                            ; preds = %bb.uu
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %197, ptr noundef nonnull align 8 dereferenceable(8) %196)
          to label %bb.uw unwind label %bb.va

bb.uw:                                            ; preds = %bb.uv
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %197) #28
  %i.awh = load ptr, ptr %198, align 8, !tbaa !48 ; 2 uses
  %i.awi = getelementptr inbounds nuw i8, ptr %198, i64 16 ; 2 uses
  %i.awj = icmp eq ptr %i.awh, %i.awi
  br i1 %i.awj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1338, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1336

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1336: ; preds = %bb.uw
  %i.awk = load i64, ptr %i.awi, align 8, !tbaa !51
  %i.awl = add i64 %i.awk, 1
  call void @_ZdlPvm(ptr noundef %i.awh, i64 noundef %i.awl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1338

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1338: ; preds = %bb.uw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1336
  call void @llvm.lifetime.end.p0(ptr nonnull %198) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %197) #28
  %i.awm = load ptr, ptr %196, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1339 = icmp eq ptr %i.awm, null
  br i1 %.not.i.i1339, label %_ZN7testing7MessageD2Ev.exit1341, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1340

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1340: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1338
  %i.awn = load ptr, ptr %i.awm, align 8, !tbaa !20
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awn, i64 8
  %i.awp = load ptr, ptr %i.awo, align 8
  call void %i.awp(ptr noundef nonnull align 8 dereferenceable(128) %i.awm) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1341

_ZN7testing7MessageD2Ev.exit1341:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1338, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1340
  call void @llvm.lifetime.end.p0(ptr nonnull %196) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %195) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %195) #28
  br label %bb.xc

bb.ux:                                            ; preds = %bb.us
  %i.awq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1347

bb.uy:                                            ; preds = %bb.ut
  %i.awr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1344

bb.uz:                                            ; preds = %bb.uu
  %i.aws = landingpad { ptr, i32 }
          cleanup
  br label %bb.vb

bb.va:                                            ; preds = %bb.uv
  %i.awt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %197) #28
  br label %bb.vb

bb.vb:                                            ; preds = %bb.va, %bb.uz
  %.pn531 = phi { ptr, i32 } [ %i.awt, %bb.va ], [ %i.aws, %bb.uz ] ; 2 uses
  %i.awu = load ptr, ptr %198, align 8, !tbaa !48 ; 2 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %198, i64 16 ; 2 uses
  %i.aww = icmp eq ptr %i.awu, %i.awv
  br i1 %i.aww, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1344, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1342

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1342: ; preds = %bb.vb
  %i.awx = load i64, ptr %i.awv, align 8, !tbaa !51
  %i.awy = add i64 %i.awx, 1
  call void @_ZdlPvm(ptr noundef %i.awu, i64 noundef %i.awy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1344

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1344: ; preds = %bb.vb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1342, %bb.uy
  %.pn531.pn = phi { ptr, i32 } [ %i.awr, %bb.uy ], [ %.pn531, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1342 ], [ %.pn531, %bb.vb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %198) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %197) #28
  %i.awz = load ptr, ptr %196, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1345 = icmp eq ptr %i.awz, null
  br i1 %.not.i.i1345, label %_ZN7testing7MessageD2Ev.exit1347, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1346

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1346: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1344
  %i.axa = load ptr, ptr %i.awz, align 8, !tbaa !20
  %i.axb = getelementptr inbounds nuw i8, ptr %i.axa, i64 8
  %i.axc = load ptr, ptr %i.axb, align 8
  call void %i.axc(ptr noundef nonnull align 8 dereferenceable(128) %i.awz) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1347

_ZN7testing7MessageD2Ev.exit1347:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1346, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1344, %bb.ux
  %.pn531.pn.pn = phi { ptr, i32 } [ %i.awq, %bb.ux ], [ %.pn531.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1344 ], [ %.pn531.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1346 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %196) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %195) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %195) #28
  br label %bb.xd

bb.vc:                                            ; preds = %bb.ur
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %195) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %195) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %199) #28
  call void @_ZN7testing8internal11CmpHelperNEIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %199, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.32, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.axd = load i8, ptr %199, align 8, !tbaa !42, !range !43, !noundef !55
  %i.axe = trunc nuw i8 %i.axd to i1
  br i1 %i.axe, label %bb.vm, label %bb.vd

bb.vd:                                            ; preds = %bb.vc
  call void @llvm.lifetime.start.p0(ptr nonnull %200) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %200)
          to label %bb.ve unwind label %bb.vi

bb.ve:                                            ; preds = %bb.vd
  call void @llvm.lifetime.start.p0(ptr nonnull %201) #28
  %i.axf = getelementptr inbounds nuw i8, ptr %199, i64 8
  %i.axg = load ptr, ptr %i.axf, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i1348 = icmp eq ptr %i.axg, null
  br i1 %.not.i.i.i1348, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1349, label %bb.vf

bb.vf:                                            ; preds = %bb.ve
  %i.axh = load ptr, ptr %i.axg, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1349

_ZNK7testing15AssertionResult15failure_messageEv.exit1349: ; preds = %bb.vf, %bb.ve
  %i.axi = phi ptr [ %i.axh, %bb.vf ], [ @.str.20, %bb.ve ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %201, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 230, ptr noundef %i.axi)
          to label %bb.vg unwind label %bb.vj

bb.vg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1349
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %201, ptr noundef nonnull align 8 dereferenceable(8) %200)
          to label %bb.vh unwind label %bb.vk

bb.vh:                                            ; preds = %bb.vg
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %201) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %201) #28
  %i.axj = load ptr, ptr %200, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1350 = icmp eq ptr %i.axj, null
  br i1 %.not.i.i1350, label %_ZN7testing7MessageD2Ev.exit1352, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1351

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1351: ; preds = %bb.vh
  %i.axk = load ptr, ptr %i.axj, align 8, !tbaa !20
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axk, i64 8
  %i.axm = load ptr, ptr %i.axl, align 8
  call void %i.axm(ptr noundef nonnull align 8 dereferenceable(128) %i.axj) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1352

_ZN7testing7MessageD2Ev.exit1352:                 ; preds = %bb.vh, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1351
  call void @llvm.lifetime.end.p0(ptr nonnull %200) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %199) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %199) #28
  br label %bb.xc

bb.vi:                                            ; preds = %bb.vd
  %i.axn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1355

bb.vj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1349
  %i.axo = landingpad { ptr, i32 }
          cleanup
  br label %bb.vl

bb.vk:                                            ; preds = %bb.vg
  %i.axp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %201) #28
  br label %bb.vl

bb.vl:                                            ; preds = %bb.vk, %bb.vj
  %.pn535 = phi { ptr, i32 } [ %i.axp, %bb.vk ], [ %i.axo, %bb.vj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %201) #28
  %i.axq = load ptr, ptr %200, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1353 = icmp eq ptr %i.axq, null
  br i1 %.not.i.i1353, label %_ZN7testing7MessageD2Ev.exit1355, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1354

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1354: ; preds = %bb.vl
  %i.axr = load ptr, ptr %i.axq, align 8, !tbaa !20
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axr, i64 8
  %i.axt = load ptr, ptr %i.axs, align 8
  call void %i.axt(ptr noundef nonnull align 8 dereferenceable(128) %i.axq) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1355

_ZN7testing7MessageD2Ev.exit1355:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1354, %bb.vl, %bb.vi
  %.pn535.pn = phi { ptr, i32 } [ %i.axn, %bb.vi ], [ %.pn535, %bb.vl ], [ %.pn535, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1354 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %200) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %199) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %199) #28
  br label %bb.xd

bb.vm:                                            ; preds = %bb.vc
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %199) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %199) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %202) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %203) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %203, i8 0, i64 16, i1 false)
  call void @_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %202, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.44, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %203)
  call void @llvm.lifetime.end.p0(ptr nonnull %203) #28
  %i.axu = load i8, ptr %202, align 8, !tbaa !42, !range !43, !noundef !55
  %i.axv = trunc nuw i8 %i.axu to i1
  br i1 %i.axv, label %bb.vw, label %bb.vn

bb.vn:                                            ; preds = %bb.vm
  call void @llvm.lifetime.start.p0(ptr nonnull %204) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %204)
          to label %bb.vo unwind label %bb.vs

bb.vo:                                            ; preds = %bb.vn
  call void @llvm.lifetime.start.p0(ptr nonnull %205) #28
  %i.axw = getelementptr inbounds nuw i8, ptr %202, i64 8
  %i.axx = load ptr, ptr %i.axw, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i1356 = icmp eq ptr %i.axx, null
  br i1 %.not.i.i.i1356, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1357, label %bb.vp

bb.vp:                                            ; preds = %bb.vo
  %i.axy = load ptr, ptr %i.axx, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1357

_ZNK7testing15AssertionResult15failure_messageEv.exit1357: ; preds = %bb.vp, %bb.vo
  %i.axz = phi ptr [ %i.axy, %bb.vp ], [ @.str.20, %bb.vo ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %205, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 234, ptr noundef %i.axz)
          to label %bb.vq unwind label %bb.vt

bb.vq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1357
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %205, ptr noundef nonnull align 8 dereferenceable(8) %204)
          to label %bb.vr unwind label %bb.vu

bb.vr:                                            ; preds = %bb.vq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %205) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %205) #28
  %i.aya = load ptr, ptr %204, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1358 = icmp eq ptr %i.aya, null
  br i1 %.not.i.i1358, label %_ZN7testing7MessageD2Ev.exit1360, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1359

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1359: ; preds = %bb.vr
  %i.ayb = load ptr, ptr %i.aya, align 8, !tbaa !20
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.ayb, i64 8
  %i.ayd = load ptr, ptr %i.ayc, align 8
  call void %i.ayd(ptr noundef nonnull align 8 dereferenceable(128) %i.aya) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1360

_ZN7testing7MessageD2Ev.exit1360:                 ; preds = %bb.vr, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1359
  call void @llvm.lifetime.end.p0(ptr nonnull %204) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %202) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %202) #28
  br label %bb.xc

bb.vs:                                            ; preds = %bb.vn
  %i.aye = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1363

bb.vt:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1357
  %i.ayf = landingpad { ptr, i32 }
          cleanup
  br label %bb.vv

bb.vu:                                            ; preds = %bb.vq
  %i.ayg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %205) #28
  br label %bb.vv

bb.vv:                                            ; preds = %bb.vu, %bb.vt
  %.pn538 = phi { ptr, i32 } [ %i.ayg, %bb.vu ], [ %i.ayf, %bb.vt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %205) #28
  %i.ayh = load ptr, ptr %204, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1361 = icmp eq ptr %i.ayh, null
  br i1 %.not.i.i1361, label %_ZN7testing7MessageD2Ev.exit1363, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1362

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1362: ; preds = %bb.vv
  %i.ayi = load ptr, ptr %i.ayh, align 8, !tbaa !20
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayi, i64 8
  %i.ayk = load ptr, ptr %i.ayj, align 8
  call void %i.ayk(ptr noundef nonnull align 8 dereferenceable(128) %i.ayh) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1363

_ZN7testing7MessageD2Ev.exit1363:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1362, %bb.vv, %bb.vs
  %.pn538.pn = phi { ptr, i32 } [ %i.aye, %bb.vs ], [ %.pn538, %bb.vv ], [ %.pn538, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1362 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %204) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %202) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %202) #28
  br label %bb.xd

bb.vw:                                            ; preds = %bb.vm
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %202) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %202) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %206) #28
  %i.ayl = load <2 x ptr>, ptr %1, align 16
  %i.aym = load <2 x ptr>, ptr %2, align 16
  %i.ayn = icmp eq <2 x ptr> %i.ayl, %i.aym       ; 2 uses
  %269 = extractelement <2 x i1> %i.ayn, i64 0
  %270 = extractelement <2 x i1> %i.ayn, i64 1
  %271 = select i1 %270, i1 %269, i1 false        ; 2 uses
  %i.ayo = zext i1 %271 to i8
  store i8 %i.ayo, ptr %206, align 8, !tbaa !42
  %i.ayp = getelementptr inbounds nuw i8, ptr %206, i64 8
  store ptr null, ptr %i.ayp, align 8, !tbaa !56
  br i1 %271, label %bb.wh, label %bb.vx

bb.vx:                                            ; preds = %bb.vw
  call void @llvm.lifetime.start.p0(ptr nonnull %207) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %207)
          to label %bb.vy unwind label %bb.wc

bb.vy:                                            ; preds = %bb.vx
  call void @llvm.lifetime.start.p0(ptr nonnull %208) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %209) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %209, ptr noundef nonnull align 8 dereferenceable(16) %206, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.vz unwind label %bb.wd

bb.vz:                                            ; preds = %bb.vy
  %i.ayq = load ptr, ptr %209, align 8, !tbaa !48
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %208, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 235, ptr noundef %i.ayq)
          to label %bb.wa unwind label %bb.we

bb.wa:                                            ; preds = %bb.vz
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %208, ptr noundef nonnull align 8 dereferenceable(8) %207)
          to label %bb.wb unwind label %bb.wf

bb.wb:                                            ; preds = %bb.wa
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %208) #28
  %i.ayr = load ptr, ptr %209, align 8, !tbaa !48 ; 2 uses
  %i.ays = getelementptr inbounds nuw i8, ptr %209, i64 16 ; 2 uses
  %i.ayt = icmp eq ptr %i.ayr, %i.ays
  br i1 %i.ayt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1366, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1364

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1364: ; preds = %bb.wb
  %i.ayu = load i64, ptr %i.ays, align 8, !tbaa !51
  %i.ayv = add i64 %i.ayu, 1
  call void @_ZdlPvm(ptr noundef %i.ayr, i64 noundef %i.ayv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1366

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1366: ; preds = %bb.wb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1364
  call void @llvm.lifetime.end.p0(ptr nonnull %209) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %208) #28
  %i.ayw = load ptr, ptr %207, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1367 = icmp eq ptr %i.ayw, null
  br i1 %.not.i.i1367, label %_ZN7testing7MessageD2Ev.exit1369, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1368

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1368: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1366
  %i.ayx = load ptr, ptr %i.ayw, align 8, !tbaa !20
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayx, i64 8
  %i.ayz = load ptr, ptr %i.ayy, align 8
  call void %i.ayz(ptr noundef nonnull align 8 dereferenceable(128) %i.ayw) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1369

_ZN7testing7MessageD2Ev.exit1369:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1366, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1368
  call void @llvm.lifetime.end.p0(ptr nonnull %207) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %206) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %206) #28
  br label %bb.xc

bb.wc:                                            ; preds = %bb.vx
  %i.aza = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1375

bb.wd:                                            ; preds = %bb.vy
  %i.azb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1372

bb.we:                                            ; preds = %bb.vz
  %i.azc = landingpad { ptr, i32 }
          cleanup
  br label %bb.wg

bb.wf:                                            ; preds = %bb.wa
  %i.azd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %208) #28
  br label %bb.wg

bb.wg:                                            ; preds = %bb.wf, %bb.we
  %.pn541 = phi { ptr, i32 } [ %i.azd, %bb.wf ], [ %i.azc, %bb.we ] ; 2 uses
  %i.aze = load ptr, ptr %209, align 8, !tbaa !48 ; 2 uses
  %i.azf = getelementptr inbounds nuw i8, ptr %209, i64 16 ; 2 uses
  %i.azg = icmp eq ptr %i.aze, %i.azf
  br i1 %i.azg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1372, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1370

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1370: ; preds = %bb.wg
  %i.azh = load i64, ptr %i.azf, align 8, !tbaa !51
  %i.azi = add i64 %i.azh, 1
  call void @_ZdlPvm(ptr noundef %i.aze, i64 noundef %i.azi) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1372

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1372: ; preds = %bb.wg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1370, %bb.wd
  %.pn541.pn = phi { ptr, i32 } [ %i.azb, %bb.wd ], [ %.pn541, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1370 ], [ %.pn541, %bb.wg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %209) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %208) #28
  %i.azj = load ptr, ptr %207, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1373 = icmp eq ptr %i.azj, null
  br i1 %.not.i.i1373, label %_ZN7testing7MessageD2Ev.exit1375, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1374

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1374: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1372
  %i.azk = load ptr, ptr %i.azj, align 8, !tbaa !20
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azk, i64 8
  %i.azm = load ptr, ptr %i.azl, align 8
  call void %i.azm(ptr noundef nonnull align 8 dereferenceable(128) %i.azj) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1375

_ZN7testing7MessageD2Ev.exit1375:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1374, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1372, %bb.wc
  %.pn541.pn.pn = phi { ptr, i32 } [ %i.aza, %bb.wc ], [ %.pn541.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1372 ], [ %.pn541.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1374 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %207) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %206) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %206) #28
  br label %bb.xd

bb.wh:                                            ; preds = %bb.vw
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %206) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %206) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %210) #28
  %i.azn = load <2 x ptr>, ptr %1, align 16
  %i.azo = load <2 x ptr>, ptr %2, align 16
  %i.azp = icmp eq <2 x ptr> %i.azn, %i.azo       ; 2 uses
  %272 = extractelement <2 x i1> %i.azp, i64 0
  %273 = extractelement <2 x i1> %i.azp, i64 1
  %274 = select i1 %273, i1 %272, i1 false        ; 2 uses
  %i.azq = zext i1 %274 to i8
  store i8 %i.azq, ptr %210, align 8, !tbaa !42
  %i.azr = getelementptr inbounds nuw i8, ptr %210, i64 8
  store ptr null, ptr %i.azr, align 8, !tbaa !56
  br i1 %274, label %bb.ws, label %bb.wi

bb.wi:                                            ; preds = %bb.wh
  call void @llvm.lifetime.start.p0(ptr nonnull %211) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %211)
          to label %bb.wj unwind label %bb.wn

bb.wj:                                            ; preds = %bb.wi
  call void @llvm.lifetime.start.p0(ptr nonnull %212) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %213) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %213, ptr noundef nonnull align 8 dereferenceable(16) %210, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4)
          to label %bb.wk unwind label %bb.wo

bb.wk:                                            ; preds = %bb.wj
  %i.azs = load ptr, ptr %213, align 8, !tbaa !48
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %212, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 236, ptr noundef %i.azs)
          to label %bb.wl unwind label %bb.wp

bb.wl:                                            ; preds = %bb.wk
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %212, ptr noundef nonnull align 8 dereferenceable(8) %211)
          to label %bb.wm unwind label %bb.wq

bb.wm:                                            ; preds = %bb.wl
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %212) #28
  %i.azt = load ptr, ptr %213, align 8, !tbaa !48 ; 2 uses
  %i.azu = getelementptr inbounds nuw i8, ptr %213, i64 16 ; 2 uses
  %i.azv = icmp eq ptr %i.azt, %i.azu
  br i1 %i.azv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1378, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1376

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1376: ; preds = %bb.wm
  %i.azw = load i64, ptr %i.azu, align 8, !tbaa !51
  %i.azx = add i64 %i.azw, 1
  call void @_ZdlPvm(ptr noundef %i.azt, i64 noundef %i.azx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1378

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1378: ; preds = %bb.wm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1376
  call void @llvm.lifetime.end.p0(ptr nonnull %213) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %212) #28
  %i.azy = load ptr, ptr %211, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1379 = icmp eq ptr %i.azy, null
  br i1 %.not.i.i1379, label %_ZN7testing7MessageD2Ev.exit1381, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1380

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1380: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1378
  %i.azz = load ptr, ptr %i.azy, align 8, !tbaa !20
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azz, i64 8
  %i.bab = load ptr, ptr %i.baa, align 8
  call void %i.bab(ptr noundef nonnull align 8 dereferenceable(128) %i.azy) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1381

_ZN7testing7MessageD2Ev.exit1381:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1378, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1380
  call void @llvm.lifetime.end.p0(ptr nonnull %211) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %210) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %210) #28
  br label %bb.xc

bb.wn:                                            ; preds = %bb.wi
  %i.bac = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1387

bb.wo:                                            ; preds = %bb.wj
  %i.bad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1384

bb.wp:                                            ; preds = %bb.wk
  %i.bae = landingpad { ptr, i32 }
          cleanup
  br label %bb.wr

bb.wq:                                            ; preds = %bb.wl
  %i.baf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %212) #28
  br label %bb.wr

bb.wr:                                            ; preds = %bb.wq, %bb.wp
  %.pn545 = phi { ptr, i32 } [ %i.baf, %bb.wq ], [ %i.bae, %bb.wp ] ; 2 uses
  %i.bag = load ptr, ptr %213, align 8, !tbaa !48 ; 2 uses
  %i.bah = getelementptr inbounds nuw i8, ptr %213, i64 16 ; 2 uses
  %i.bai = icmp eq ptr %i.bag, %i.bah
  br i1 %i.bai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1384, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1382: ; preds = %bb.wr
  %i.baj = load i64, ptr %i.bah, align 8, !tbaa !51
  %i.bak = add i64 %i.baj, 1
  call void @_ZdlPvm(ptr noundef %i.bag, i64 noundef %i.bak) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1384

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1384: ; preds = %bb.wr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1382, %bb.wo
  %.pn545.pn = phi { ptr, i32 } [ %i.bad, %bb.wo ], [ %.pn545, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1382 ], [ %.pn545, %bb.wr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %213) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %212) #28
  %i.bal = load ptr, ptr %211, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1385 = icmp eq ptr %i.bal, null
  br i1 %.not.i.i1385, label %_ZN7testing7MessageD2Ev.exit1387, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1386

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1386: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1384
  %i.bam = load ptr, ptr %i.bal, align 8, !tbaa !20
  %i.ban = getelementptr inbounds nuw i8, ptr %i.bam, i64 8
  %i.bao = load ptr, ptr %i.ban, align 8
  call void %i.bao(ptr noundef nonnull align 8 dereferenceable(128) %i.bal) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1387

_ZN7testing7MessageD2Ev.exit1387:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1386, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1384, %bb.wn
  %.pn545.pn.pn = phi { ptr, i32 } [ %i.bac, %bb.wn ], [ %.pn545.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1384 ], [ %.pn545.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1386 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %211) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %210) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %210) #28
  br label %bb.xd

bb.ws:                                            ; preds = %bb.wh
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %210) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %210) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %214) #28
  call void @_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %214, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.32, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.bap = load i8, ptr %214, align 8, !tbaa !42, !range !43, !noundef !55
  %i.baq = trunc nuw i8 %i.bap to i1
  br i1 %i.baq, label %.critedge674, label %bb.wt

bb.wt:                                            ; preds = %bb.ws
  call void @llvm.lifetime.start.p0(ptr nonnull %215) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %215)
          to label %bb.wu unwind label %bb.wy

bb.wu:                                            ; preds = %bb.wt
  call void @llvm.lifetime.start.p0(ptr nonnull %216) #28
  %i.bar = getelementptr inbounds nuw i8, ptr %214, i64 8
  %i.bas = load ptr, ptr %i.bar, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i1388 = icmp eq ptr %i.bas, null
  br i1 %.not.i.i.i1388, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1389, label %bb.wv

bb.wv:                                            ; preds = %bb.wu
  %i.bat = load ptr, ptr %i.bas, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1389

_ZNK7testing15AssertionResult15failure_messageEv.exit1389: ; preds = %bb.wv, %bb.wu
  %i.bau = phi ptr [ %i.bat, %bb.wv ], [ @.str.20, %bb.wu ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %216, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 237, ptr noundef %i.bau)
          to label %bb.ww unwind label %bb.wz

bb.ww:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1389
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %216, ptr noundef nonnull align 8 dereferenceable(8) %215)
          to label %bb.wx unwind label %bb.xa

bb.wx:                                            ; preds = %bb.ww
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %216) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %216) #28
  %i.bav = load ptr, ptr %215, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1390 = icmp eq ptr %i.bav, null
  br i1 %.not.i.i1390, label %_ZN7testing7MessageD2Ev.exit1392, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1391

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1391: ; preds = %bb.wx
  %i.baw = load ptr, ptr %i.bav, align 8, !tbaa !20
  %i.bax = getelementptr inbounds nuw i8, ptr %i.baw, i64 8
  %i.bay = load ptr, ptr %i.bax, align 8
  call void %i.bay(ptr noundef nonnull align 8 dereferenceable(128) %i.bav) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1392

_ZN7testing7MessageD2Ev.exit1392:                 ; preds = %bb.wx, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1391
  call void @llvm.lifetime.end.p0(ptr nonnull %215) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %214) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %214) #28
  br label %bb.xc

bb.wy:                                            ; preds = %bb.wt
  %i.baz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1395

bb.wz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1389
  %i.bba = landingpad { ptr, i32 }
          cleanup
  br label %bb.xb

bb.xa:                                            ; preds = %bb.ww
  %i.bbb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %216) #28
  br label %bb.xb

bb.xb:                                            ; preds = %bb.xa, %bb.wz
  %.pn549 = phi { ptr, i32 } [ %i.bbb, %bb.xa ], [ %i.bba, %bb.wz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %216) #28
  %i.bbc = load ptr, ptr %215, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1393 = icmp eq ptr %i.bbc, null
  br i1 %.not.i.i1393, label %_ZN7testing7MessageD2Ev.exit1395, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1394

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1394: ; preds = %bb.xb
  %i.bbd = load ptr, ptr %i.bbc, align 8, !tbaa !20
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.bbd, i64 8
  %i.bbf = load ptr, ptr %i.bbe, align 8
  call void %i.bbf(ptr noundef nonnull align 8 dereferenceable(128) %i.bbc) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1395

_ZN7testing7MessageD2Ev.exit1395:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1394, %bb.xb, %bb.wy
end_hunk_6
