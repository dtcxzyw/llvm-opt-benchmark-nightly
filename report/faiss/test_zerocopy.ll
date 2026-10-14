Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/test_zerocopy?download=true
inline.NumInlined: 1217
inline.NumDeleted: 534
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN36TestZeroCopy_zerocopy_flatcodes_Test8TestBodyEv:bb.a
  br i1 %i.gq, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %21)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.cc

bb.by:                                            ; preds = %bb.bw
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %21, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.cc

_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.gr = load i8, ptr %21, align 8, !tbaa !33, !range !34, !noundef !35
  %i.gs = trunc nuw i8 %i.gr to i1
  br i1 %i.gs, label %.critedge186, label %bb.cd

bb.bz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit262, %bb.bi
  %.pn113.pn.pn = phi { ptr, i32 } [ %.pn113.pn, %_ZN7testing7MessageD2Ev.exit262 ], [ %i.et, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %bb.jx

bb.ca:                                            ; preds = %bb.bu
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.jv

bb.cb:                                            ; preds = %bb.bv
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit526

bb.cc:                                            ; preds = %bb.by, %bb.bx
  %i.gv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.cy

bb.cd:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.ce unwind label %bb.cj

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  %i.gw = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !36 ; 2 uses
  %.not.i.i270 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i270, label %_ZNK7testing15AssertionResult15failure_messageEv.exit271, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !41
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit271

_ZNK7testing15AssertionResult15failure_messageEv.exit271: ; preds = %bb.cf, %bb.ce
  %i.gz = phi ptr [ %i.gy, %bb.cf ], [ @.str.38, %bb.ce ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %23, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 100, ptr noundef %i.gz)
          to label %bb.cg unwind label %bb.ck

bb.cg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit271
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.ch unwind label %bb.cl

bb.ch:                                            ; preds = %bb.cg
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  %i.ha = load ptr, ptr %22, align 8, !tbaa !43   ; 3 uses
  %.not.i.i272 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i272, label %_ZN7testing7MessageD2Ev.exit274, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i273

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i273: ; preds = %bb.ch
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !45
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8
  call void %i.hd(ptr noundef nonnull align 8 dereferenceable(128) %i.ha) #21, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit274

_ZN7testing7MessageD2Ev.exit274:                  ; preds = %bb.ch, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i273
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  %i.he = load ptr, ptr %i.gw, align 8, !tbaa !36 ; 4 uses
  %.not.i.i275 = icmp eq ptr %i.he, null
  br i1 %.not.i.i275, label %_ZN7testing15AssertionResultD2Ev.exit279, label %bb.ci

bb.ci:                                            ; preds = %_ZN7testing7MessageD2Ev.exit274
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !41 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 16 ; 2 uses
  %i.hh = icmp eq ptr %i.hf, %i.hg
  br i1 %i.hh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i277, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i276

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i276: ; preds = %bb.ci
  %i.hi = load i64, ptr %i.hg, align 8, !tbaa !46
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hj) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i277

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i277: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i276
  call void @_ZdlPvm(ptr noundef nonnull %i.he, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit279

_ZN7testing15AssertionResultD2Ev.exit279:         ; preds = %_ZN7testing7MessageD2Ev.exit274, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i277
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.cj:                                            ; preds = %bb.cd
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit282

bb.ck:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit271
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cg
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #21
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.pn117 = phi { ptr, i32 } [ %i.hm, %bb.cl ], [ %i.hl, %bb.ck ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  %i.hn = load ptr, ptr %22, align 8, !tbaa !43   ; 3 uses
  %.not.i.i280 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i280, label %_ZN7testing7MessageD2Ev.exit282, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i281

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i281: ; preds = %bb.cm
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !45
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(128) %i.hn) #21, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit282

_ZN7testing7MessageD2Ev.exit282:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i281, %bb.cm, %bb.cj
  %.pn117.pn = phi { ptr, i32 } [ %i.hk, %bb.cj ], [ %.pn117, %bb.cm ], [ %.pn117, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i281 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #21
  br label %bb.cy

.critedge186:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.hr = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !36 ; 4 uses
  %.not.i.i283 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i283, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %.critedge186
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !41 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 16 ; 2 uses
  %i.hv = icmp eq ptr %i.ht, %i.hu
  br i1 %i.hv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i285, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i284

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i284: ; preds = %bb.cn
  %i.hw = load i64, ptr %i.hu, align 8, !tbaa !46
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hx) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i285

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i285: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i284
  call void @_ZdlPvm(ptr noundef nonnull %i.hs, i64 noundef 32) #22
  br label %bb.co

bb.co:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i285, %.critedge186
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  %i.hy = load ptr, ptr %i.ge, align 8, !tbaa !56 ; 2 uses
  %i.hz = load ptr, ptr %i.fz, align 8, !tbaa !57 ; 3 uses
  %i.ia = ptrtoint ptr %i.hy to i64               ; 2 uses
  %i.ib = ptrtoint ptr %i.hz to i64               ; 2 uses
  %i.ic = sub i64 %i.ia, %i.ib                    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.hy, %i.hz
  br i1 %.not.i.i.i.i, label %.noexc289, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.id = icmp slt i64 %i.ic, 0
  br i1 %i.id, label %.noexc.i.i, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, !prof !59

.noexc.i.i:                                       ; preds = %bb.cp
  invoke void @_ZSt17__throw_bad_allocv() #24
          to label %.noexc288 unwind label %bb.cz

.noexc288:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.cp
  %i.ie = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ic) #23
          to label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i..noexc289_crit_edge unwind label %bb.cz

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i..noexc289_crit_edge: ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.fz, align 8, !tbaa !60 ; 3 uses
  %.pre568 = load ptr, ptr %i.ge, align 8, !tbaa !60 ; 2 uses
  %.pre569 = ptrtoint ptr %.pre568 to i64
  %.pre570 = ptrtoint ptr %.pre to i64
  %i.if = icmp eq ptr %.pre568, %.pre
  br label %.noexc289

.noexc289:                                        ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i..noexc289_crit_edge, %bb.co
  %.pre-phi571 = phi i64 [ %.pre570, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i..noexc289_crit_edge ], [ %i.ib, %bb.co ] ; 5 uses
  %.pre-phi = phi i64 [ %.pre569, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i..noexc289_crit_edge ], [ %i.ia, %bb.co ] ; 5 uses
  %.not = phi i1 [ %i.if, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i..noexc289_crit_edge ], [ true, %bb.co ] ; 2 uses
  %i.ig = phi ptr [ %.pre, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i..noexc289_crit_edge ], [ %i.hz, %bb.co ] ; 2 uses
  %i.ih = phi ptr [ %i.ie, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i..noexc289_crit_edge ], [ null, %bb.co ] ; 22 uses
  %53 = ptrtoaddr ptr %i.ih to i64                ; 2 uses
  %i.ii = sub i64 %.pre-phi, %.pre-phi571         ; 20 uses
  %i.ij = icmp sgt i64 %i.ii, 1
  br i1 %i.ij, label %bb.cq, label %bb.cr, !prof !61

bb.cq:                                            ; preds = %.noexc289
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ih, ptr align 1 %i.ig, i64 %i.ii, i1 false)
  br label %bb.ct

bb.cr:                                            ; preds = %.noexc289
  %i.ik = icmp eq i64 %i.ii, 1
  br i1 %i.ik, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.il = load i8, ptr %i.ig, align 1, !tbaa !46
  store i8 %i.il, ptr %i.ih, align 1, !tbaa !46
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  invoke void @_ZN5faiss16ZeroCopyIOReaderC1EPKhm(ptr noundef nonnull align 8 dereferenceable(64) %24, ptr noundef %i.ih, i64 noundef %i.ii)
          to label %bb.cu unwind label %bb.da

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  invoke void @_ZN5faiss13read_index_upEPNS_8IOReaderEi(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.32") align 8 %25, ptr noundef nonnull %24, i32 noundef 0)
          to label %bb.cv unwind label %bb.db

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store ptr null, ptr %i.c, align 8, !tbaa !63
  %i.im = load ptr, ptr %25, align 8, !tbaa !65, !noalias !147
  %.not.i.i290 = icmp eq ptr %i.im, null
  br i1 %.not.i.i290, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %26)
          to label %_ZN7testing8internal11CmpHelperNEISt10unique_ptrIN5faiss5IndexESt14default_deleteIS4_EEDnEENS_15AssertionResultEPKcSA_RKT_RKT0_.exit unwind label %bb.dc

bb.cx:                                            ; preds = %bb.cv
  invoke void @_ZN7testing8internal18CmpHelperOpFailureISt10unique_ptrIN5faiss5IndexESt14default_deleteIS4_EEDnEENS_15AssertionResultEPKcSA_RKT_RKT0_SA_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %26, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.26)
          to label %_ZN7testing8internal11CmpHelperNEISt10unique_ptrIN5faiss5IndexESt14default_deleteIS4_EEDnEENS_15AssertionResultEPKcSA_RKT_RKT0_.exit unwind label %bb.dc

_ZN7testing8internal11CmpHelperNEISt10unique_ptrIN5faiss5IndexESt14default_deleteIS4_EEDnEENS_15AssertionResultEPKcSA_RKT_RKT0_.exit: ; preds = %bb.cw, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.in = load i8, ptr %26, align 8, !tbaa !33, !range !34, !noundef !35
  %i.io = trunc nuw i8 %i.in to i1
  br i1 %i.io, label %.critedge188, label %bb.dd

bb.cy:                                            ; preds = %_ZN7testing7MessageD2Ev.exit282, %bb.cc
  %.pn117.pn.pn = phi { ptr, i32 } [ %.pn117.pn, %_ZN7testing7MessageD2Ev.exit282 ], [ %i.gv, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit526

bb.cz:                                            ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit526

bb.da:                                            ; preds = %bb.ct
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.js

bb.db:                                            ; preds = %bb.cu
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit524

bb.dc:                                            ; preds = %bb.cx, %bb.cw
  %i.is = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.dt

bb.dd:                                            ; preds = %_ZN7testing8internal11CmpHelperNEISt10unique_ptrIN5faiss5IndexESt14default_deleteIS4_EEDnEENS_15AssertionResultEPKcSA_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.de unwind label %bb.dj

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21
  %i.it = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !36 ; 2 uses
  %.not.i.i293 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i293, label %_ZNK7testing15AssertionResult15failure_messageEv.exit294, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !41
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit294

_ZNK7testing15AssertionResult15failure_messageEv.exit294: ; preds = %bb.df, %bb.de
  %i.iw = phi ptr [ %i.iv, %bb.df ], [ @.str.38, %bb.de ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %28, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 109, ptr noundef %i.iw)
          to label %bb.dg unwind label %bb.dk

bb.dg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit294
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.dh unwind label %bb.dl

bb.dh:                                            ; preds = %bb.dg
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  %i.ix = load ptr, ptr %27, align 8, !tbaa !43   ; 3 uses
  %.not.i.i295 = icmp eq ptr %i.ix, null
  br i1 %.not.i.i295, label %_ZN7testing7MessageD2Ev.exit297, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i296

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i296: ; preds = %bb.dh
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !45
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8
  call void %i.ja(ptr noundef nonnull align 8 dereferenceable(128) %i.ix) #21, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit297

_ZN7testing7MessageD2Ev.exit297:                  ; preds = %bb.dh, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i296
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  %i.jb = load ptr, ptr %i.it, align 8, !tbaa !36 ; 4 uses
  %.not.i.i298 = icmp eq ptr %i.jb, null
  br i1 %.not.i.i298, label %_ZN7testing15AssertionResultD2Ev.exit302, label %bb.di

bb.di:                                            ; preds = %_ZN7testing7MessageD2Ev.exit297
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !41 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 16 ; 2 uses
  %i.je = icmp eq ptr %i.jc, %i.jd
  br i1 %i.je, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i300, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i299

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i299: ; preds = %bb.di
  %i.jf = load i64, ptr %i.jd, align 8, !tbaa !46
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jg) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i300

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i300: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i299
  call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit302

_ZN7testing15AssertionResultD2Ev.exit302:         ; preds = %_ZN7testing7MessageD2Ev.exit297, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i300
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  br label %bb.ie

bb.dj:                                            ; preds = %bb.dd
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit305

bb.dk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit294
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dg
  %i.jj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #21
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.pn121 = phi { ptr, i32 } [ %i.jj, %bb.dl ], [ %i.ji, %bb.dk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  %i.jk = load ptr, ptr %27, align 8, !tbaa !43   ; 3 uses
  %.not.i.i303 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i303, label %_ZN7testing7MessageD2Ev.exit305, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i304

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i304: ; preds = %bb.dm
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !45
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8
  call void %i.jn(ptr noundef nonnull align 8 dereferenceable(128) %i.jk) #21, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit305

_ZN7testing7MessageD2Ev.exit305:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i304, %bb.dm, %bb.dj
  %.pn121.pn = phi { ptr, i32 } [ %i.jh, %bb.dj ], [ %.pn121, %bb.dm ], [ %.pn121, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i304 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %26) #21
  br label %bb.dt

.critedge188:                                     ; preds = %_ZN7testing8internal11CmpHelperNEISt10unique_ptrIN5faiss5IndexESt14default_deleteIS4_EEDnEENS_15AssertionResultEPKcSA_RKT_RKT0_.exit
  %i.jo = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !36 ; 4 uses
  %.not.i.i306 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i306, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %.critedge188
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !41 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 16 ; 2 uses
  %i.js = icmp eq ptr %i.jq, %i.jr
  br i1 %i.js, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i308, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i307

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i307: ; preds = %bb.dn
  %i.jt = load i64, ptr %i.jr, align 8, !tbaa !46
  %i.ju = add i64 %i.jt, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.ju) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i308

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i308: ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i307
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef 32) #22
  br label %bb.do

bb.do:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i308, %.critedge188
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
end_hunk_0
begin_hunk_1_@_ZN36TestZeroCopy_zerocopy_flatcodes_Test8TestBodyEv:bb.a
  %i.ly = icmp eq ptr %i.lw, %i.lx
  br i1 %i.ly, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i332, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i331

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i331: ; preds = %bb.ei
  %i.lz = load i64, ptr %i.lx, align 8, !tbaa !46
  %i.ma = add i64 %i.lz, 1
  call void @_ZdlPvm(ptr noundef %i.lw, i64 noundef %i.ma) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i332

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i332: ; preds = %bb.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i331
  call void @_ZdlPvm(ptr noundef nonnull %i.lv, i64 noundef 32) #22
  br label %bb.ej

bb.ej:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i332, %.critedge190
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #21
  %i.mb = load ptr, ptr %i.bi, align 8, !tbaa !19, !noalias !149 ; 3 uses
  %i.mc = load ptr, ptr %8, align 8, !tbaa !20, !noalias !149 ; 3 uses
  %i.md = ptrtoint ptr %i.mb to i64
  %i.me = ptrtoint ptr %i.mc to i64
  %i.mf = sub i64 %i.md, %i.me
  %i.mg = load ptr, ptr %i.jy, align 8, !tbaa !19, !noalias !149
  %i.mh = load ptr, ptr %29, align 8, !tbaa !20, !noalias !149 ; 2 uses
  %i.mi = ptrtoint ptr %i.mg to i64
  %i.mj = ptrtoint ptr %i.mh to i64
  %i.mk = sub i64 %i.mi, %i.mj
  %i.ml = icmp eq i64 %i.mf, %i.mk
  br i1 %i.ml, label %bb.ek, label %_ZSteqIfSaIfEEbRKSt6vectorIT_T0_ES6_.exit.i.i

bb.ek:                                            ; preds = %bb.ej
  %.not9.i.i.i.i.i.i.i335 = icmp eq ptr %i.mc, %i.mb
  br i1 %.not9.i.i.i.i.i.i.i335, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ek, %bb.el
  %.011.i.i.i.i.i.i.i = phi ptr [ %i.mq, %bb.el ], [ %i.mh, %bb.ek ] ; 2 uses
  %.0810.i.i.i.i.i.i.i = phi ptr [ %i.mp, %bb.el ], [ %i.mc, %bb.ek ] ; 2 uses
  %i.mm = load float, ptr %.0810.i.i.i.i.i.i.i, align 4, !tbaa !22, !noalias !149
  %i.mn = load float, ptr %.011.i.i.i.i.i.i.i, align 4, !tbaa !22, !noalias !149
  %i.mo = fcmp oeq float %i.mm, %i.mn
  br i1 %i.mo, label %bb.el, label %_ZSteqIfSaIfEEbRKSt6vectorIT_T0_ES6_.exit.i.i

bb.el:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.mp = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.mp, %i.mb
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !103

.loopexit.i.i:                                    ; preds = %bb.el, %bb.ek
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %34)
          to label %_ZN7testing8internal8EqHelper7CompareISt6vectorIfSaIfEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.en

_ZSteqIfSaIfEEbRKSt6vectorIT_T0_ES6_.exit.i.i:    ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.ej
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt6vectorIfSaIfEES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %34, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.21, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %29)
          to label %_ZN7testing8internal8EqHelper7CompareISt6vectorIfSaIfEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.en

_ZN7testing8internal8EqHelper7CompareISt6vectorIfSaIfEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit: ; preds = %.loopexit.i.i, %_ZSteqIfSaIfEEbRKSt6vectorIT_T0_ES6_.exit.i.i
  %i.mr = load i8, ptr %34, align 8, !tbaa !33, !range !34, !noundef !35
  %i.ms = trunc nuw i8 %i.mr to i1
  br i1 %i.ms, label %.critedge192, label %bb.eo

bb.em:                                            ; preds = %_ZN7testing7MessageD2Ev.exit329, %bb.dx
  %.pn125.pn.pn = phi { ptr, i32 } [ %.pn125.pn, %_ZN7testing7MessageD2Ev.exit329 ], [ %i.ky, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  br label %bb.jo

bb.en:                                            ; preds = %_ZSteqIfSaIfEEbRKSt6vectorIT_T0_ES6_.exit.i.i, %.loopexit.i.i
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.eo:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt6vectorIfSaIfEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.ep unwind label %bb.eu

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #21
  %i.mu = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !36 ; 2 uses
  %.not.i.i338 = icmp eq ptr %i.mv, null
  br i1 %.not.i.i338, label %_ZNK7testing15AssertionResult15failure_messageEv.exit339, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !41
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit339

_ZNK7testing15AssertionResult15failure_messageEv.exit339: ; preds = %bb.eq, %bb.ep
  %i.mx = phi ptr [ %i.mw, %bb.eq ], [ @.str.38, %bb.ep ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %36, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 118, ptr noundef %i.mx)
          to label %bb.er unwind label %bb.ev

bb.er:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit339
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.es unwind label %bb.ew

bb.es:                                            ; preds = %bb.er
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21
  %i.my = load ptr, ptr %35, align 8, !tbaa !43   ; 3 uses
  %.not.i.i340 = icmp eq ptr %i.my, null
  br i1 %.not.i.i340, label %_ZN7testing7MessageD2Ev.exit342, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i341

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i341: ; preds = %bb.es
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !45
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.nb = load ptr, ptr %i.na, align 8
  call void %i.nb(ptr noundef nonnull align 8 dereferenceable(128) %i.my) #21, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit342

_ZN7testing7MessageD2Ev.exit342:                  ; preds = %bb.es, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i341
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21
  %i.nc = load ptr, ptr %i.mu, align 8, !tbaa !36 ; 4 uses
  %.not.i.i343 = icmp eq ptr %i.nc, null
  br i1 %.not.i.i343, label %_ZN7testing15AssertionResultD2Ev.exit347, label %bb.et

bb.et:                                            ; preds = %_ZN7testing7MessageD2Ev.exit342
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !41 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 16 ; 2 uses
  %i.nf = icmp eq ptr %i.nd, %i.ne
  br i1 %i.nf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i345, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i344

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i344: ; preds = %bb.et
  %i.ng = load i64, ptr %i.ne, align 8, !tbaa !46
  %i.nh = add i64 %i.ng, 1
  call void @_ZdlPvm(ptr noundef %i.nd, i64 noundef %i.nh) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i345

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i345: ; preds = %bb.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i344
  call void @_ZdlPvm(ptr noundef nonnull %i.nc, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit347

_ZN7testing15AssertionResultD2Ev.exit347:         ; preds = %_ZN7testing7MessageD2Ev.exit342, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i345
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  br label %bb.ib

bb.eu:                                            ; preds = %bb.eo
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit350

bb.ev:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit339
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.ew:                                            ; preds = %bb.er
  %i.nk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #21
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %.pn129 = phi { ptr, i32 } [ %i.nk, %bb.ew ], [ %i.nj, %bb.ev ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21
  %i.nl = load ptr, ptr %35, align 8, !tbaa !43   ; 3 uses
  %.not.i.i348 = icmp eq ptr %i.nl, null
  br i1 %.not.i.i348, label %_ZN7testing7MessageD2Ev.exit350, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i349

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i349: ; preds = %bb.ex
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !45
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %i.no = load ptr, ptr %i.nn, align 8
  call void %i.no(ptr noundef nonnull align 8 dereferenceable(128) %i.nl) #21, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit350

_ZN7testing7MessageD2Ev.exit350:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i349, %bb.ex, %bb.eu
  %.pn129.pn = phi { ptr, i32 } [ %i.ni, %bb.eu ], [ %.pn129, %bb.ex ], [ %.pn129, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i349 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #21
  br label %bb.fa

.critedge192:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareISt6vectorIfSaIfEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  %i.np = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !36 ; 4 uses
  %.not.i.i351 = icmp eq ptr %i.nq, null
  br i1 %.not.i.i351, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %.critedge192
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !41 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 16 ; 2 uses
  %i.nt = icmp eq ptr %i.nr, %i.ns
  br i1 %i.nt, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i353, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i352

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i352: ; preds = %bb.ey
  %i.nu = load i64, ptr %i.ns, align 8, !tbaa !46
  %i.nv = add i64 %i.nu, 1
  call void @_ZdlPvm(ptr noundef %i.nr, i64 noundef %i.nv) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i353

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i353: ; preds = %bb.ey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i352
  call void @_ZdlPvm(ptr noundef nonnull %i.nq, i64 noundef 32) #22
  br label %bb.ez

bb.ez:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i353, %.critedge192
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.ez
  %i.nw = load ptr, ptr %i.gd, align 8, !tbaa !57 ; 8 uses
  %min.iters.check = icmp ult i64 %i.ii, 4
  %i.nx = ptrtoaddr ptr %i.nw to i64
  %i.ny = sub i64 %i.nx, %53
  %diff.check = icmp ugt i64 %i.ny, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check736 = icmp ult i64 %i.ii, 32
  br i1 %min.iters.check736, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.nz = and i64 %i.ii, 28
  %n.vec = and i64 %i.ii, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nw, i64 %index ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  %wide.load = load <16 x i8>, ptr %i.oa, align 1, !tbaa !46
  %wide.load737 = load <16 x i8>, ptr %i.ob, align 1, !tbaa !46
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ih, i64 %index ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  store <16 x i8> %wide.load, ptr %i.oc, align 1, !tbaa !46
  store <16 x i8> %wide.load737, ptr %i.od, align 1, !tbaa !46
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.oe = icmp eq i64 %index.next, %n.vec
  br i1 %i.oe, label %middle.block, label %vector.body, !llvm.loop !118

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ii, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.nz, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec738 = and i64 %i.ii, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index739 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next741, %vec.epilog.vector.body ] ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.nw, i64 %index739
  %wide.load740 = load <4 x i8>, ptr %i.of, align 1, !tbaa !46
  %i.og = getelementptr inbounds nuw i8, ptr %i.ih, i64 %index739
  store <4 x i8> %wide.load740, ptr %i.og, align 1, !tbaa !46
  %index.next741 = add nuw i64 %index739, 4       ; 2 uses
  %i.oh = icmp eq i64 %index.next741, %n.vec738
  br i1 %i.oh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !119

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n742 = icmp eq i64 %i.ii, %n.vec738
  br i1 %cmp.n742, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030561.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec738, %vec.epilog.middle.block ] ; 3 uses
  %i.oi = sub i64 %.pre-phi, %.pre-phi571
  %xtraiter = and i64 %i.oi, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.030561.prol = phi i64 [ %i.om, %vec.epilog.scalar.ph.prol ], [ %.030561.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nw, i64 %.030561.prol
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !46
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.030561.prol
  store i8 %i.ok, ptr %i.ol, align 1, !tbaa !46
  %i.om = add nuw i64 %.030561.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !120

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.030561.unr = phi i64 [ %.030561.ph, %vec.epilog.scalar.ph.preheader ], [ %i.om, %vec.epilog.scalar.ph.prol ]
  %i.on = sub i64 %.030561.ph, %.pre-phi
  %i.oo = add i64 %i.on, %.pre-phi571
  %i.op = icmp ugt i64 %i.oo, -4
  br i1 %i.op, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #21
  %i.oq = invoke noalias noundef nonnull dereferenceable(1000) ptr @_Znwm(i64 noundef 1000) #23
          to label %bb.fb unwind label %bb.ff     ; 3 uses

bb.fa:                                            ; preds = %_ZN7testing7MessageD2Ev.exit350, %bb.en
  %.pn129.pn.pn = phi { ptr, i32 } [ %.pn129.pn, %_ZN7testing7MessageD2Ev.exit350 ], [ %i.mt, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  br label %bb.jo

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.030561 = phi i64 [ %i.pg, %vec.epilog.scalar.ph ], [ %.030561.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.nw, i64 %.030561
  %i.os = load i8, ptr %i.or, align 1, !tbaa !46
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.030561
  store i8 %i.os, ptr %i.ot, align 1, !tbaa !46
  %i.ou = add nuw i64 %.030561, 1                 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.nw, i64 %i.ou
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !46
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ou
  store i8 %i.ow, ptr %i.ox, align 1, !tbaa !46
  %i.oy = add nuw i64 %.030561, 2                 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.nw, i64 %i.oy
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !46
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.oy
  store i8 %i.pa, ptr %i.pb, align 1, !tbaa !46
  %i.pc = add nuw i64 %.030561, 3                 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.nw, i64 %i.pc
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !46
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.pc
  store i8 %i.pe, ptr %i.pf, align 1, !tbaa !46
  %i.pg = add nuw i64 %.030561, 4                 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.pg, %i.ii
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !121

bb.fb:                                            ; preds = %._crit_edge
  store ptr %i.oq, ptr %37, align 8, !tbaa !20
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oq, i64 1000 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 3 uses
  store ptr %i.ph, ptr %i.pi, align 8, !tbaa !47
  %i.pj = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1000) %i.oq, i8 0, i64 1000, i1 false)
  store ptr %i.ph, ptr %i.pj, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #21
  %i.pk = invoke noalias noundef nonnull dereferenceable(2000) ptr @_Znwm(i64 noundef 2000) #23
          to label %bb.fc unwind label %bb.fg     ; 4 uses

bb.fc:                                            ; preds = %bb.fb
  store ptr %i.pk, ptr %38, align 8, !tbaa !50
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 2000 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 3 uses
  store ptr %i.pl, ptr %i.pm, align 8, !tbaa !51
  %i.pn = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2000) %i.pk, i8 0, i64 2000, i1 false)
  store ptr %i.pl, ptr %i.pn, align 8, !tbaa !52
  %i.po = load ptr, ptr %25, align 8, !tbaa !65   ; 2 uses
  %i.pp = load ptr, ptr %37, align 8, !tbaa !20
  %i.pq = load ptr, ptr %i.po, align 8, !tbaa !45
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 72
  %i.ps = load ptr, ptr %i.pr, align 8
  invoke void %i.ps(ptr noundef nonnull align 8 dereferenceable(36) %i.po, i64 noundef 10, ptr noundef %i.bn, i64 noundef 25, ptr noundef %i.pp, ptr noundef nonnull %i.pk, ptr noundef null)
          to label %bb.fd unwind label %bb.fh

bb.fd:                                            ; preds = %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #21
  %i.pt = load ptr, ptr %i.bz, align 8, !tbaa !52, !noalias !150 ; 2 uses
  %i.pu = load ptr, ptr %12, align 8, !tbaa !50, !noalias !150 ; 3 uses
  %i.pv = ptrtoint ptr %i.pt to i64
  %i.pw = ptrtoint ptr %i.pu to i64
  %i.px = sub i64 %i.pv, %i.pw                    ; 2 uses
  %i.py = load ptr, ptr %i.pn, align 8, !tbaa !52, !noalias !150
  %i.pz = load ptr, ptr %38, align 8, !tbaa !50, !noalias !150 ; 2 uses
  %i.qa = ptrtoint ptr %i.py to i64
  %i.qb = ptrtoint ptr %i.pz to i64
  %i.qc = sub i64 %i.qa, %i.qb
  %i.qd = icmp eq i64 %i.px, %i.qc
  br i1 %i.qd, label %bb.fe, label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i360

bb.fe:                                            ; preds = %bb.fd
  %.not.not.i.i.i.i.i.i.i361 = icmp eq ptr %i.pt, %i.pu
  br i1 %.not.not.i.i.i.i.i.i.i361, label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i365, label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.i.i362

_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.i.i362: ; preds = %bb.fe
  %bcmp.i.i.i.i.i.i.i363 = call i32 @bcmp(ptr %i.pu, ptr %i.pz, i64 %i.px), !noalias !150
  %.not9.i.i.i.i.i.i.i364 = icmp eq i32 %bcmp.i.i.i.i.i.i.i363, 0
  br i1 %.not9.i.i.i.i.i.i.i364, label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i365, label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i360

_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i365: ; preds = %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.i.i362, %bb.fe
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %39)
          to label %_ZN7testing8internal8EqHelper7CompareISt6vectorIlSaIlEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit368 unwind label %bb.fi

_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i360: ; preds = %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.i.i362, %bb.fd
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt6vectorIlSaIlEES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %39, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.22, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %38)
          to label %_ZN7testing8internal8EqHelper7CompareISt6vectorIlSaIlEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit368 unwind label %bb.fi

_ZN7testing8internal8EqHelper7CompareISt6vectorIlSaIlEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit368: ; preds = %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i365, %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i360
  %i.qe = load i8, ptr %39, align 8, !tbaa !33, !range !34, !noundef !35
  %i.qf = trunc nuw i8 %i.qe to i1
  br i1 %i.qf, label %.critedge194, label %bb.fj

bb.ff:                                            ; preds = %._crit_edge
  %i.qg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit517

bb.fg:                                            ; preds = %bb.fb
  %i.qh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit515

bb.fh:                                            ; preds = %bb.fc
  %i.qi = landingpad { ptr, i32 }
          cleanup
  br label %bb.jl

bb.fi:                                            ; preds = %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i360, %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i365
  %i.qj = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_ZN36TestZeroCopy_zerocopy_flatcodes_Test8TestBodyEv:bb.a
  %i.rj = icmp eq ptr %i.rh, %i.ri
  br i1 %i.rj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i384, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i383

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i383: ; preds = %bb.ft
  %i.rk = load i64, ptr %i.ri, align 8, !tbaa !46
  %i.rl = add i64 %i.rk, 1
  call void @_ZdlPvm(ptr noundef %i.rh, i64 noundef %i.rl) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i384

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i384: ; preds = %bb.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i383
  call void @_ZdlPvm(ptr noundef nonnull %i.rg, i64 noundef 32) #22
  br label %bb.fu

bb.fu:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i384, %.critedge194
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #21
  %i.rm = load ptr, ptr %i.bv, align 8, !tbaa !19, !noalias !151 ; 3 uses
  %i.rn = load ptr, ptr %11, align 8, !tbaa !20, !noalias !151 ; 3 uses
  %i.ro = ptrtoint ptr %i.rm to i64
  %i.rp = ptrtoint ptr %i.rn to i64
  %i.rq = sub i64 %i.ro, %i.rp
  %i.rr = load ptr, ptr %i.pj, align 8, !tbaa !19, !noalias !151
  %i.rs = load ptr, ptr %37, align 8, !tbaa !20, !noalias !151 ; 2 uses
  %i.rt = ptrtoint ptr %i.rr to i64
  %i.ru = ptrtoint ptr %i.rs to i64
  %i.rv = sub i64 %i.rt, %i.ru
  %i.rw = icmp eq i64 %i.rq, %i.rv
  br i1 %i.rw, label %bb.fv, label %_ZSteqIfSaIfEEbRKSt6vectorIT_T0_ES6_.exit.i.i387

bb.fv:                                            ; preds = %bb.fu
  %.not9.i.i.i.i.i.i.i388 = icmp eq ptr %i.rn, %i.rm
  br i1 %.not9.i.i.i.i.i.i.i388, label %.loopexit.i.i393, label %.lr.ph.i.i.i.i.i.i.i389

.lr.ph.i.i.i.i.i.i.i389:                          ; preds = %bb.fv, %bb.fw
  %.011.i.i.i.i.i.i.i390 = phi ptr [ %i.sb, %bb.fw ], [ %i.rs, %bb.fv ] ; 2 uses
  %.0810.i.i.i.i.i.i.i391 = phi ptr [ %i.sa, %bb.fw ], [ %i.rn, %bb.fv ] ; 2 uses
  %i.rx = load float, ptr %.0810.i.i.i.i.i.i.i391, align 4, !tbaa !22, !noalias !151
  %i.ry = load float, ptr %.011.i.i.i.i.i.i.i390, align 4, !tbaa !22, !noalias !151
  %i.rz = fcmp oeq float %i.rx, %i.ry
  br i1 %i.rz, label %bb.fw, label %_ZSteqIfSaIfEEbRKSt6vectorIT_T0_ES6_.exit.i.i387

bb.fw:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i389
  %i.sa = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i391, i64 4 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i390, i64 4
  %.not.i.i.i.i.i.i.i392 = icmp eq ptr %i.sa, %i.rm
  br i1 %.not.i.i.i.i.i.i.i392, label %.loopexit.i.i393, label %.lr.ph.i.i.i.i.i.i.i389, !llvm.loop !103

.loopexit.i.i393:                                 ; preds = %bb.fw, %bb.fv
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %42)
          to label %_ZN7testing8internal8EqHelper7CompareISt6vectorIfSaIfEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit396 unwind label %bb.fy

_ZSteqIfSaIfEEbRKSt6vectorIT_T0_ES6_.exit.i.i387: ; preds = %.lr.ph.i.i.i.i.i.i.i389, %bb.fu
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt6vectorIfSaIfEES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %42, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.23, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %37)
          to label %_ZN7testing8internal8EqHelper7CompareISt6vectorIfSaIfEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit396 unwind label %bb.fy

_ZN7testing8internal8EqHelper7CompareISt6vectorIfSaIfEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit396: ; preds = %.loopexit.i.i393, %_ZSteqIfSaIfEEbRKSt6vectorIT_T0_ES6_.exit.i.i387
  %i.sc = load i8, ptr %42, align 8, !tbaa !33, !range !34, !noundef !35
  %i.sd = trunc nuw i8 %i.sc to i1
  br i1 %i.sd, label %.critedge196, label %bb.fz

bb.fx:                                            ; preds = %_ZN7testing7MessageD2Ev.exit381, %bb.fi
  %.pn133.pn.pn = phi { ptr, i32 } [ %.pn133.pn, %_ZN7testing7MessageD2Ev.exit381 ], [ %i.qj, %bb.fi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  br label %bb.jl

bb.fy:                                            ; preds = %_ZSteqIfSaIfEEbRKSt6vectorIT_T0_ES6_.exit.i.i387, %.loopexit.i.i393
  %i.se = landingpad { ptr, i32 }
          cleanup
  br label %bb.gl

bb.fz:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt6vectorIfSaIfEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit396
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %43)
          to label %bb.ga unwind label %bb.gf

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #21
  %i.sf = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !36 ; 2 uses
  %.not.i.i397 = icmp eq ptr %i.sg, null
  br i1 %.not.i.i397, label %_ZNK7testing15AssertionResult15failure_messageEv.exit398, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !41
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit398

_ZNK7testing15AssertionResult15failure_messageEv.exit398: ; preds = %bb.gb, %bb.ga
  %i.si = phi ptr [ %i.sh, %bb.gb ], [ @.str.38, %bb.ga ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %44, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 132, ptr noundef %i.si)
          to label %bb.gc unwind label %bb.gg

bb.gc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit398
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef nonnull align 8 dereferenceable(8) %43)
          to label %bb.gd unwind label %bb.gh

bb.gd:                                            ; preds = %bb.gc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %44) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #21
  %i.sj = load ptr, ptr %43, align 8, !tbaa !43   ; 3 uses
  %.not.i.i399 = icmp eq ptr %i.sj, null
  br i1 %.not.i.i399, label %_ZN7testing7MessageD2Ev.exit401, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i400

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i400: ; preds = %bb.gd
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !45
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %i.sm = load ptr, ptr %i.sl, align 8
  call void %i.sm(ptr noundef nonnull align 8 dereferenceable(128) %i.sj) #21, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit401

_ZN7testing7MessageD2Ev.exit401:                  ; preds = %bb.gd, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i400
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  %i.sn = load ptr, ptr %i.sf, align 8, !tbaa !36 ; 4 uses
  %.not.i.i402 = icmp eq ptr %i.sn, null
  br i1 %.not.i.i402, label %_ZN7testing15AssertionResultD2Ev.exit406, label %bb.ge

bb.ge:                                            ; preds = %_ZN7testing7MessageD2Ev.exit401
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !41 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sn, i64 16 ; 2 uses
  %i.sq = icmp eq ptr %i.so, %i.sp
  br i1 %i.sq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i404, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i403

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i403: ; preds = %bb.ge
  %i.sr = load i64, ptr %i.sp, align 8, !tbaa !46
  %i.ss = add i64 %i.sr, 1
  call void @_ZdlPvm(ptr noundef %i.so, i64 noundef %i.ss) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i404

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i404: ; preds = %bb.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i403
  call void @_ZdlPvm(ptr noundef nonnull %i.sn, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit406

_ZN7testing15AssertionResultD2Ev.exit406:         ; preds = %_ZN7testing7MessageD2Ev.exit401, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i404
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #21
  br label %bb.hy

bb.gf:                                            ; preds = %bb.fz
  %i.st = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit409

bb.gg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit398
  %i.su = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

bb.gh:                                            ; preds = %bb.gc
  %i.sv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %44) #21
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %.pn137 = phi { ptr, i32 } [ %i.sv, %bb.gh ], [ %i.su, %bb.gg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #21
  %i.sw = load ptr, ptr %43, align 8, !tbaa !43   ; 3 uses
  %.not.i.i407 = icmp eq ptr %i.sw, null
  br i1 %.not.i.i407, label %_ZN7testing7MessageD2Ev.exit409, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i408

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i408: ; preds = %bb.gi
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !45
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %i.sz = load ptr, ptr %i.sy, align 8
  call void %i.sz(ptr noundef nonnull align 8 dereferenceable(128) %i.sw) #21, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit409

_ZN7testing7MessageD2Ev.exit409:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i408, %bb.gi, %bb.gf
  %.pn137.pn = phi { ptr, i32 } [ %i.st, %bb.gf ], [ %.pn137, %bb.gi ], [ %.pn137, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i408 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %42) #21
  br label %bb.gl

.critedge196:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareISt6vectorIfSaIfEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit396
  %i.ta = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !36 ; 4 uses
  %.not.i.i410 = icmp eq ptr %i.tb, null
  br i1 %.not.i.i410, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %.critedge196
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !41 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 16 ; 2 uses
  %i.te = icmp eq ptr %i.tc, %i.td
  br i1 %i.te, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i412, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i411

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i411: ; preds = %bb.gj
  %i.tf = load i64, ptr %i.td, align 8, !tbaa !46
  %i.tg = add i64 %i.tf, 1
  call void @_ZdlPvm(ptr noundef %i.tc, i64 noundef %i.tg) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i412

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i412: ; preds = %bb.gj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i411
  call void @_ZdlPvm(ptr noundef nonnull %i.tb, i64 noundef 32) #22
  br label %bb.gk

bb.gk:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i412, %.critedge196
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #21
  br i1 %.not, label %._crit_edge565, label %iter.check758

iter.check758:                                    ; preds = %bb.gk
  %i.th = load ptr, ptr %i.fz, align 8, !tbaa !57 ; 8 uses
  %min.iters.check745 = icmp ult i64 %i.ii, 4
  %i.ti = ptrtoaddr ptr %i.th to i64
  %i.tj = sub i64 %i.ti, %53
  %diff.check744 = icmp ugt i64 %i.tj, -32
  %or.cond773 = select i1 %min.iters.check745, i1 true, i1 %diff.check744
  br i1 %or.cond773, label %vec.epilog.scalar.ph759.preheader, label %vector.main.loop.iter.check746

vector.main.loop.iter.check746:                   ; preds = %iter.check758
  %min.iters.check747 = icmp ult i64 %i.ii, 32
  br i1 %min.iters.check747, label %vec.epilog.ph762, label %vector.ph748

vector.ph748:                                     ; preds = %vector.main.loop.iter.check746
  %i.tk = and i64 %i.ii, 28
  %n.vec749 = and i64 %i.ii, -32                  ; 4 uses
  br label %vector.body750

vector.body750:                                   ; preds = %vector.ph748, %vector.body750
  %index751 = phi i64 [ 0, %vector.ph748 ], [ %index.next754, %vector.body750 ] ; 3 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.th, i64 %index751 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  %wide.load752 = load <16 x i8>, ptr %i.tl, align 1, !tbaa !46
  %wide.load753 = load <16 x i8>, ptr %i.tm, align 1, !tbaa !46
  %i.tn = getelementptr inbounds nuw i8, ptr %i.ih, i64 %index751 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 16
  store <16 x i8> %wide.load752, ptr %i.tn, align 1, !tbaa !46
  store <16 x i8> %wide.load753, ptr %i.to, align 1, !tbaa !46
  %index.next754 = add nuw i64 %index751, 32      ; 2 uses
  %i.tp = icmp eq i64 %index.next754, %n.vec749
  br i1 %i.tp, label %middle.block755, label %vector.body750, !llvm.loop !130

middle.block755:                                  ; preds = %vector.body750
  %cmp.n756 = icmp eq i64 %i.ii, %n.vec749
  br i1 %cmp.n756, label %._crit_edge565, label %vec.epilog.iter.check760

vec.epilog.iter.check760:                         ; preds = %middle.block755
  %min.epilog.iters.check761 = icmp eq i64 %i.tk, 0
  br i1 %min.epilog.iters.check761, label %vec.epilog.scalar.ph759.preheader, label %vec.epilog.ph762, !prof !68

vec.epilog.ph762:                                 ; preds = %vector.main.loop.iter.check746, %vec.epilog.iter.check760
  %vec.epilog.resume.val757 = phi i64 [ %n.vec749, %vec.epilog.iter.check760 ], [ 0, %vector.main.loop.iter.check746 ]
  %n.vec763 = and i64 %i.ii, -4                   ; 3 uses
  br label %vec.epilog.vector.body764

vec.epilog.vector.body764:                        ; preds = %vec.epilog.vector.body764, %vec.epilog.ph762
  %index765 = phi i64 [ %vec.epilog.resume.val757, %vec.epilog.ph762 ], [ %index.next767, %vec.epilog.vector.body764 ] ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.th, i64 %index765
  %wide.load766 = load <4 x i8>, ptr %i.tq, align 1, !tbaa !46
  %i.tr = getelementptr inbounds nuw i8, ptr %i.ih, i64 %index765
  store <4 x i8> %wide.load766, ptr %i.tr, align 1, !tbaa !46
  %index.next767 = add nuw i64 %index765, 4       ; 2 uses
  %i.ts = icmp eq i64 %index.next767, %n.vec763
  br i1 %i.ts, label %vec.epilog.middle.block768, label %vec.epilog.vector.body764, !llvm.loop !131

vec.epilog.middle.block768:                       ; preds = %vec.epilog.vector.body764
  %cmp.n769 = icmp eq i64 %i.ii, %n.vec763
  br i1 %cmp.n769, label %._crit_edge565, label %vec.epilog.scalar.ph759.preheader

vec.epilog.scalar.ph759.preheader:                ; preds = %iter.check758, %vec.epilog.iter.check760, %vec.epilog.middle.block768
  %.0562.ph = phi i64 [ 0, %iter.check758 ], [ %n.vec749, %vec.epilog.iter.check760 ], [ %n.vec763, %vec.epilog.middle.block768 ] ; 3 uses
  %i.tt = sub i64 %.pre-phi, %.pre-phi571
  %xtraiter774 = and i64 %i.tt, 3                 ; 2 uses
  %lcmp.mod775.not = icmp eq i64 %xtraiter774, 0
  br i1 %lcmp.mod775.not, label %vec.epilog.scalar.ph759.prol.loopexit, label %vec.epilog.scalar.ph759.prol

vec.epilog.scalar.ph759.prol:                     ; preds = %vec.epilog.scalar.ph759.preheader, %vec.epilog.scalar.ph759.prol
  %.0562.prol = phi i64 [ %i.tx, %vec.epilog.scalar.ph759.prol ], [ %.0562.ph, %vec.epilog.scalar.ph759.preheader ] ; 3 uses
  %prol.iter776 = phi i64 [ %prol.iter776.next, %vec.epilog.scalar.ph759.prol ], [ 0, %vec.epilog.scalar.ph759.preheader ]
  %i.tu = getelementptr inbounds nuw i8, ptr %i.th, i64 %.0562.prol
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !46
  %i.tw = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.0562.prol
  store i8 %i.tv, ptr %i.tw, align 1, !tbaa !46
  %i.tx = add nuw i64 %.0562.prol, 1              ; 2 uses
  %prol.iter776.next = add i64 %prol.iter776, 1   ; 2 uses
  %prol.iter776.cmp.not = icmp eq i64 %prol.iter776.next, %xtraiter774
  br i1 %prol.iter776.cmp.not, label %vec.epilog.scalar.ph759.prol.loopexit, label %vec.epilog.scalar.ph759.prol, !llvm.loop !132

vec.epilog.scalar.ph759.prol.loopexit:            ; preds = %vec.epilog.scalar.ph759.prol, %vec.epilog.scalar.ph759.preheader
  %.0562.unr = phi i64 [ %.0562.ph, %vec.epilog.scalar.ph759.preheader ], [ %i.tx, %vec.epilog.scalar.ph759.prol ]
  %i.ty = sub i64 %.0562.ph, %.pre-phi
  %i.tz = add i64 %i.ty, %.pre-phi571
  %i.ua = icmp ugt i64 %i.tz, -4
  br i1 %i.ua, label %._crit_edge565, label %vec.epilog.scalar.ph759

._crit_edge565:                                   ; preds = %vec.epilog.scalar.ph759.prol.loopexit, %vec.epilog.scalar.ph759, %middle.block755, %vec.epilog.middle.block768, %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #21
  %i.ub = invoke noalias noundef nonnull dereferenceable(1000) ptr @_Znwm(i64 noundef 1000) #23
          to label %bb.gm unwind label %bb.gq     ; 3 uses

bb.gl:                                            ; preds = %_ZN7testing7MessageD2Ev.exit409, %bb.fy
  %.pn137.pn.pn = phi { ptr, i32 } [ %.pn137.pn, %_ZN7testing7MessageD2Ev.exit409 ], [ %i.se, %bb.fy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #21
  br label %bb.jl

vec.epilog.scalar.ph759:                          ; preds = %vec.epilog.scalar.ph759.prol.loopexit, %vec.epilog.scalar.ph759
  %.0562 = phi i64 [ %i.ur, %vec.epilog.scalar.ph759 ], [ %.0562.unr, %vec.epilog.scalar.ph759.prol.loopexit ] ; 6 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.th, i64 %.0562
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !46
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.0562
  store i8 %i.ud, ptr %i.ue, align 1, !tbaa !46
  %i.uf = add nuw i64 %.0562, 1                   ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.th, i64 %i.uf
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !46
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.uf
  store i8 %i.uh, ptr %i.ui, align 1, !tbaa !46
  %i.uj = add nuw i64 %.0562, 2                   ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.th, i64 %i.uj
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !46
  %i.um = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.uj
  store i8 %i.ul, ptr %i.um, align 1, !tbaa !46
  %i.un = add nuw i64 %.0562, 3                   ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.th, i64 %i.un
  %i.up = load i8, ptr %i.uo, align 1, !tbaa !46
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.un
  store i8 %i.up, ptr %i.uq, align 1, !tbaa !46
  %i.ur = add nuw i64 %.0562, 4                   ; 2 uses
  %exitcond567.not.3 = icmp eq i64 %i.ur, %i.ii
  br i1 %exitcond567.not.3, label %._crit_edge565, label %vec.epilog.scalar.ph759, !llvm.loop !133

bb.gm:                                            ; preds = %._crit_edge565
  store ptr %i.ub, ptr %45, align 8, !tbaa !20
  %i.us = getelementptr inbounds nuw i8, ptr %i.ub, i64 1000 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 3 uses
  store ptr %i.us, ptr %i.ut, align 8, !tbaa !47
  %i.uu = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1000) %i.ub, i8 0, i64 1000, i1 false)
  store ptr %i.us, ptr %i.uu, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #21
  %i.uv = invoke noalias noundef nonnull dereferenceable(2000) ptr @_Znwm(i64 noundef 2000) #23
          to label %bb.gn unwind label %bb.gr     ; 4 uses

bb.gn:                                            ; preds = %bb.gm
  store ptr %i.uv, ptr %46, align 8, !tbaa !50
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 2000 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 3 uses
  store ptr %i.uw, ptr %i.ux, align 8, !tbaa !51
  %i.uy = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2000) %i.uv, i8 0, i64 2000, i1 false)
  store ptr %i.uw, ptr %i.uy, align 8, !tbaa !52
  %i.uz = load ptr, ptr %25, align 8, !tbaa !65   ; 2 uses
  %i.va = load ptr, ptr %45, align 8, !tbaa !20
  %i.vb = load ptr, ptr %i.uz, align 8, !tbaa !45
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 72
  %i.vd = load ptr, ptr %i.vc, align 8
  invoke void %i.vd(ptr noundef nonnull align 8 dereferenceable(36) %i.uz, i64 noundef 10, ptr noundef %i.bn, i64 noundef 25, ptr noundef %i.va, ptr noundef nonnull %i.uv, ptr noundef null)
          to label %bb.go unwind label %bb.gs

bb.go:                                            ; preds = %bb.gn
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #21
  %i.ve = load ptr, ptr %i.bm, align 8, !tbaa !52, !noalias !152 ; 2 uses
  %i.vf = load ptr, ptr %9, align 8, !tbaa !50, !noalias !152 ; 3 uses
  %i.vg = ptrtoint ptr %i.ve to i64
  %i.vh = ptrtoint ptr %i.vf to i64
  %i.vi = sub i64 %i.vg, %i.vh                    ; 2 uses
  %i.vj = load ptr, ptr %i.uy, align 8, !tbaa !52, !noalias !152
  %i.vk = load ptr, ptr %46, align 8, !tbaa !50, !noalias !152 ; 2 uses
  %i.vl = ptrtoint ptr %i.vj to i64
  %i.vm = ptrtoint ptr %i.vk to i64
  %i.vn = sub i64 %i.vl, %i.vm
  %i.vo = icmp eq i64 %i.vi, %i.vn
  br i1 %i.vo, label %bb.gp, label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i419

bb.gp:                                            ; preds = %bb.go
  %.not.not.i.i.i.i.i.i.i420 = icmp eq ptr %i.ve, %i.vf
  br i1 %.not.not.i.i.i.i.i.i.i420, label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i424, label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.i.i421

_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.i.i421: ; preds = %bb.gp
  %bcmp.i.i.i.i.i.i.i422 = call i32 @bcmp(ptr %i.vf, ptr %i.vk, i64 %i.vi), !noalias !152
  %.not9.i.i.i.i.i.i.i423 = icmp eq i32 %bcmp.i.i.i.i.i.i.i422, 0
  br i1 %.not9.i.i.i.i.i.i.i423, label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i424, label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i419

_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i424: ; preds = %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.i.i421, %bb.gp
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %47)
          to label %_ZN7testing8internal8EqHelper7CompareISt6vectorIlSaIlEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit427 unwind label %bb.gt

_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i419: ; preds = %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.i.i421, %bb.go
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt6vectorIlSaIlEES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %47, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.24, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %46)
          to label %_ZN7testing8internal8EqHelper7CompareISt6vectorIlSaIlEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit427 unwind label %bb.gt

_ZN7testing8internal8EqHelper7CompareISt6vectorIlSaIlEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit427: ; preds = %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i424, %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i419
  %i.vp = load i8, ptr %47, align 8, !tbaa !33, !range !34, !noundef !35
  %i.vq = trunc nuw i8 %i.vp to i1
  br i1 %i.vq, label %.critedge198, label %bb.gu

bb.gq:                                            ; preds = %._crit_edge565
  %i.vr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit513

bb.gr:                                            ; preds = %bb.gm
  %i.vs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit511

bb.gs:                                            ; preds = %bb.gn
  %i.vt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ji

bb.gt:                                            ; preds = %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i419, %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i424
  %i.vu = landingpad { ptr, i32 }
          cleanup
  br label %bb.hi

end_hunk_2
begin_hunk_3_@_ZN43TestZeroCopy_zerocopy_binary_flatcodes_Test8TestBodyEv:bb.a
  br i1 %i.iv, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %26)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.cm

bb.ci:                                            ; preds = %bb.cg
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %26, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.cm

_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.ch, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.iw = load i8, ptr %26, align 8, !tbaa !33, !range !34, !noundef !35
  %i.ix = trunc nuw i8 %i.iw to i1
  br i1 %i.ix, label %.critedge186, label %bb.cn

bb.cj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit274, %bb.bs
  %.pn113.pn.pn = phi { ptr, i32 } [ %.pn113.pn, %_ZN7testing7MessageD2Ev.exit274 ], [ %i.gy, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %bb.ka

bb.ck:                                            ; preds = %bb.ce
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.jy

bb.cl:                                            ; preds = %bb.cf
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit536

bb.cm:                                            ; preds = %bb.ci, %bb.ch
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.di

bb.cn:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.co unwind label %bb.ct

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21
  %i.jb = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !36 ; 2 uses
  %.not.i.i282 = icmp eq ptr %i.jc, null
  br i1 %.not.i.i282, label %_ZNK7testing15AssertionResult15failure_messageEv.exit283, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !41
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit283

_ZNK7testing15AssertionResult15failure_messageEv.exit283: ; preds = %bb.cp, %bb.co
  %i.je = phi ptr [ %i.jd, %bb.cp ], [ @.str.38, %bb.co ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %28, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 195, ptr noundef %i.je)
          to label %bb.cq unwind label %bb.cu

bb.cq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit283
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.cr unwind label %bb.cv

bb.cr:                                            ; preds = %bb.cq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  %i.jf = load ptr, ptr %27, align 8, !tbaa !43   ; 3 uses
  %.not.i.i284 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i284, label %_ZN7testing7MessageD2Ev.exit286, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i285

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i285: ; preds = %bb.cr
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !45
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(128) %i.jf) #21, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit286

_ZN7testing7MessageD2Ev.exit286:                  ; preds = %bb.cr, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i285
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  %i.jj = load ptr, ptr %i.jb, align 8, !tbaa !36 ; 4 uses
  %.not.i.i287 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i287, label %_ZN7testing15AssertionResultD2Ev.exit291, label %bb.cs

bb.cs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit286
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !41 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 16 ; 2 uses
  %i.jm = icmp eq ptr %i.jk, %i.jl
  br i1 %i.jm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i289, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i288

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i288: ; preds = %bb.cs
  %i.jn = load i64, ptr %i.jl, align 8, !tbaa !46
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jo) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i289

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i289: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i288
  call void @_ZdlPvm(ptr noundef nonnull %i.jj, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit291

_ZN7testing15AssertionResultD2Ev.exit291:         ; preds = %_ZN7testing7MessageD2Ev.exit286, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i289
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.ct:                                            ; preds = %bb.cn
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit294

bb.cu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit283
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cv:                                            ; preds = %bb.cq
  %i.jr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #21
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.pn117 = phi { ptr, i32 } [ %i.jr, %bb.cv ], [ %i.jq, %bb.cu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  %i.js = load ptr, ptr %27, align 8, !tbaa !43   ; 3 uses
  %.not.i.i292 = icmp eq ptr %i.js, null
  br i1 %.not.i.i292, label %_ZN7testing7MessageD2Ev.exit294, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i293

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i293: ; preds = %bb.cw
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !45
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8
  call void %i.jv(ptr noundef nonnull align 8 dereferenceable(128) %i.js) #21, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit294

_ZN7testing7MessageD2Ev.exit294:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i293, %bb.cw, %bb.ct
  %.pn117.pn = phi { ptr, i32 } [ %i.jp, %bb.ct ], [ %.pn117, %bb.cw ], [ %.pn117, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i293 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %26) #21
  br label %bb.di

.critedge186:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.jw = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !36 ; 4 uses
  %.not.i.i295 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i295, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %.critedge186
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !41 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 16 ; 2 uses
  %i.ka = icmp eq ptr %i.jy, %i.jz
  br i1 %i.ka, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i296

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i296: ; preds = %bb.cx
  %i.kb = load i64, ptr %i.jz, align 8, !tbaa !46
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kc) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i297

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i297: ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i296
  call void @_ZdlPvm(ptr noundef nonnull %i.jx, i64 noundef 32) #22
  br label %bb.cy

bb.cy:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i297, %.critedge186
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  %i.kd = load ptr, ptr %i.ij, align 8, !tbaa !56 ; 2 uses
  %i.ke = load ptr, ptr %i.ie, align 8, !tbaa !57 ; 3 uses
  %i.kf = ptrtoint ptr %i.kd to i64               ; 2 uses
  %i.kg = ptrtoint ptr %i.ke to i64               ; 2 uses
  %i.kh = sub i64 %i.kf, %i.kg                    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.kd, %i.ke
  br i1 %.not.i.i.i.i, label %.noexc301, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ki = icmp slt i64 %i.kh, 0
  br i1 %i.ki, label %.noexc.i.i, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, !prof !59

.noexc.i.i:                                       ; preds = %bb.cz
  invoke void @_ZSt17__throw_bad_allocv() #24
          to label %.noexc300 unwind label %bb.dj

.noexc300:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.cz
  %i.kj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kh) #23
          to label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i..noexc301_crit_edge unwind label %bb.dj

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i..noexc301_crit_edge: ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.ie, align 8, !tbaa !60 ; 3 uses
  %.pre586 = load ptr, ptr %i.ij, align 8, !tbaa !60 ; 2 uses
  %.pre587 = ptrtoint ptr %.pre586 to i64
  %.pre588 = ptrtoint ptr %.pre to i64
  %i.kk = icmp eq ptr %.pre586, %.pre
  br label %.noexc301

.noexc301:                                        ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i..noexc301_crit_edge, %bb.cy
  %.pre-phi589 = phi i64 [ %.pre588, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i..noexc301_crit_edge ], [ %i.kg, %bb.cy ] ; 5 uses
  %.pre-phi = phi i64 [ %.pre587, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i..noexc301_crit_edge ], [ %i.kf, %bb.cy ] ; 5 uses
  %.not = phi i1 [ %i.kk, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i..noexc301_crit_edge ], [ true, %bb.cy ] ; 2 uses
  %i.kl = phi ptr [ %.pre, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i..noexc301_crit_edge ], [ %i.ke, %bb.cy ] ; 2 uses
  %i.km = phi ptr [ %i.kj, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i..noexc301_crit_edge ], [ null, %bb.cy ] ; 22 uses
  %58 = ptrtoaddr ptr %i.km to i64                ; 2 uses
  %i.kn = sub i64 %.pre-phi, %.pre-phi589         ; 20 uses
  %i.ko = icmp sgt i64 %i.kn, 1
  br i1 %i.ko, label %bb.da, label %bb.db, !prof !61

bb.da:                                            ; preds = %.noexc301
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.km, ptr align 1 %i.kl, i64 %i.kn, i1 false)
  br label %bb.dd

bb.db:                                            ; preds = %.noexc301
  %i.kp = icmp eq i64 %i.kn, 1
  br i1 %i.kp, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.kq = load i8, ptr %i.kl, align 1, !tbaa !46
  store i8 %i.kq, ptr %i.km, align 1, !tbaa !46
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #21
  invoke void @_ZN5faiss16ZeroCopyIOReaderC1EPKhm(ptr noundef nonnull align 8 dereferenceable(64) %29, ptr noundef %i.km, i64 noundef %i.kn)
          to label %bb.de unwind label %bb.dk

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #21
  invoke void @_ZN5faiss20read_index_binary_upEPNS_8IOReaderEi(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.54") align 8 %30, ptr noundef nonnull %29, i32 noundef 0)
          to label %bb.df unwind label %bb.dl

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store ptr null, ptr %i.c, align 8, !tbaa !63
  %i.kr = load ptr, ptr %30, align 8, !tbaa !85, !noalias !213
  %.not.i.i302 = icmp eq ptr %i.kr, null
  br i1 %.not.i.i302, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %31)
          to label %_ZN7testing8internal11CmpHelperNEISt10unique_ptrIN5faiss11IndexBinaryESt14default_deleteIS4_EEDnEENS_15AssertionResultEPKcSA_RKT_RKT0_.exit unwind label %bb.dm

bb.dh:                                            ; preds = %bb.df
  invoke void @_ZN7testing8internal18CmpHelperOpFailureISt10unique_ptrIN5faiss11IndexBinaryESt14default_deleteIS4_EEDnEENS_15AssertionResultEPKcSA_RKT_RKT0_SA_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %31, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.26)
          to label %_ZN7testing8internal11CmpHelperNEISt10unique_ptrIN5faiss11IndexBinaryESt14default_deleteIS4_EEDnEENS_15AssertionResultEPKcSA_RKT_RKT0_.exit unwind label %bb.dm

_ZN7testing8internal11CmpHelperNEISt10unique_ptrIN5faiss11IndexBinaryESt14default_deleteIS4_EEDnEENS_15AssertionResultEPKcSA_RKT_RKT0_.exit: ; preds = %bb.dg, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.ks = load i8, ptr %31, align 8, !tbaa !33, !range !34, !noundef !35
  %i.kt = trunc nuw i8 %i.ks to i1
  br i1 %i.kt, label %.critedge188, label %bb.dn

bb.di:                                            ; preds = %_ZN7testing7MessageD2Ev.exit294, %bb.cm
  %.pn117.pn.pn = phi { ptr, i32 } [ %.pn117.pn, %_ZN7testing7MessageD2Ev.exit294 ], [ %i.ja, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit536

bb.dj:                                            ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit536

bb.dk:                                            ; preds = %bb.dd
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %bb.jv

bb.dl:                                            ; preds = %bb.de
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5faiss11IndexBinaryESt14default_deleteIS1_EED2Ev.exit534

bb.dm:                                            ; preds = %bb.dh, %bb.dg
  %i.kx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.ed

bb.dn:                                            ; preds = %_ZN7testing8internal11CmpHelperNEISt10unique_ptrIN5faiss11IndexBinaryESt14default_deleteIS4_EEDnEENS_15AssertionResultEPKcSA_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.do unwind label %bb.dt

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #21
  %i.ky = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !36 ; 2 uses
  %.not.i.i305 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i305, label %_ZNK7testing15AssertionResult15failure_messageEv.exit306, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !41
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit306

_ZNK7testing15AssertionResult15failure_messageEv.exit306: ; preds = %bb.dp, %bb.do
  %i.lb = phi ptr [ %i.la, %bb.dp ], [ @.str.38, %bb.do ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %33, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 204, ptr noundef %i.lb)
          to label %bb.dq unwind label %bb.du

bb.dq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit306
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.dr unwind label %bb.dv

bb.dr:                                            ; preds = %bb.dq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  %i.lc = load ptr, ptr %32, align 8, !tbaa !43   ; 3 uses
  %.not.i.i307 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i307, label %_ZN7testing7MessageD2Ev.exit309, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i308

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i308: ; preds = %bb.dr
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !45
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lf = load ptr, ptr %i.le, align 8
  call void %i.lf(ptr noundef nonnull align 8 dereferenceable(128) %i.lc) #21, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit309

_ZN7testing7MessageD2Ev.exit309:                  ; preds = %bb.dr, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i308
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  %i.lg = load ptr, ptr %i.ky, align 8, !tbaa !36 ; 4 uses
  %.not.i.i310 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i310, label %_ZN7testing15AssertionResultD2Ev.exit314, label %bb.ds

bb.ds:                                            ; preds = %_ZN7testing7MessageD2Ev.exit309
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !41 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 16 ; 2 uses
  %i.lj = icmp eq ptr %i.lh, %i.li
  br i1 %i.lj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i312, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i311

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i311: ; preds = %bb.ds
  %i.lk = load i64, ptr %i.li, align 8, !tbaa !46
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.lh, i64 noundef %i.ll) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i312

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i312: ; preds = %bb.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i311
  call void @_ZdlPvm(ptr noundef nonnull %i.lg, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit314

_ZN7testing15AssertionResultD2Ev.exit314:         ; preds = %_ZN7testing7MessageD2Ev.exit309, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i312
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  br label %bb.il

bb.dt:                                            ; preds = %bb.dn
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit317

bb.du:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit306
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.dv:                                            ; preds = %bb.dq
  %i.lo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #21
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %.pn121 = phi { ptr, i32 } [ %i.lo, %bb.dv ], [ %i.ln, %bb.du ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  %i.lp = load ptr, ptr %32, align 8, !tbaa !43   ; 3 uses
  %.not.i.i315 = icmp eq ptr %i.lp, null
  br i1 %.not.i.i315, label %_ZN7testing7MessageD2Ev.exit317, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i316

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i316: ; preds = %bb.dw
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !45
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8
  call void %i.ls(ptr noundef nonnull align 8 dereferenceable(128) %i.lp) #21, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit317

_ZN7testing7MessageD2Ev.exit317:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i316, %bb.dw, %bb.dt
  %.pn121.pn = phi { ptr, i32 } [ %i.lm, %bb.dt ], [ %.pn121, %bb.dw ], [ %.pn121, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i316 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %31) #21
  br label %bb.ed

.critedge188:                                     ; preds = %_ZN7testing8internal11CmpHelperNEISt10unique_ptrIN5faiss11IndexBinaryESt14default_deleteIS4_EEDnEENS_15AssertionResultEPKcSA_RKT_RKT0_.exit
  %i.lt = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !36 ; 4 uses
  %.not.i.i318 = icmp eq ptr %i.lu, null
  br i1 %.not.i.i318, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %.critedge188
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !41 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 16 ; 2 uses
  %i.lx = icmp eq ptr %i.lv, %i.lw
  br i1 %i.lx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i320, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i319: ; preds = %bb.dx
  %i.ly = load i64, ptr %i.lw, align 8, !tbaa !46
  %i.lz = add i64 %i.ly, 1
  call void @_ZdlPvm(ptr noundef %i.lv, i64 noundef %i.lz) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i320

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i320: ; preds = %bb.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i319
  call void @_ZdlPvm(ptr noundef nonnull %i.lu, i64 noundef 32) #22
  br label %bb.dy

bb.dy:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i320, %.critedge188
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
end_hunk_3
begin_hunk_4_@_ZN43TestZeroCopy_zerocopy_binary_flatcodes_Test8TestBodyEv:bb.a
.critedge190:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareISt6vectorIlSaIlEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  %i.nz = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !36 ; 4 uses
  %.not.i.i342 = icmp eq ptr %i.oa, null
  br i1 %.not.i.i342, label %bb.et, label %bb.es

bb.es:                                            ; preds = %.critedge190
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !41 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 16 ; 2 uses
  %i.od = icmp eq ptr %i.ob, %i.oc
  br i1 %i.od, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i344, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i343

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i343: ; preds = %bb.es
  %i.oe = load i64, ptr %i.oc, align 8, !tbaa !46
  %i.of = add i64 %i.oe, 1
  call void @_ZdlPvm(ptr noundef %i.ob, i64 noundef %i.of) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i344

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i344: ; preds = %bb.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i343
  call void @_ZdlPvm(ptr noundef nonnull %i.oa, i64 noundef 32) #22
  br label %bb.et

bb.et:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i344, %.critedge190
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #21
  %i.og = load ptr, ptr %i.du, align 8, !tbaa !210, !noalias !215 ; 2 uses
  %i.oh = load ptr, ptr %13, align 8, !tbaa !208, !noalias !215 ; 3 uses
  %i.oi = ptrtoint ptr %i.og to i64
  %i.oj = ptrtoint ptr %i.oh to i64
  %i.ok = sub i64 %i.oi, %i.oj                    ; 2 uses
  %i.ol = load ptr, ptr %i.md, align 8, !tbaa !210, !noalias !215
  %i.om = load ptr, ptr %34, align 8, !tbaa !208, !noalias !215 ; 2 uses
  %i.on = ptrtoint ptr %i.ol to i64
  %i.oo = ptrtoint ptr %i.om to i64
  %i.op = sub i64 %i.on, %i.oo
  %i.oq = icmp eq i64 %i.ok, %i.op
  br i1 %i.oq, label %bb.eu, label %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i

bb.eu:                                            ; preds = %bb.et
  %.not.not.i.i.i.i.i.i.i347 = icmp eq ptr %i.og, %i.oh
  br i1 %.not.not.i.i.i.i.i.i.i347, label %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i, label %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.i.i

_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.i.i:    ; preds = %bb.eu
  %bcmp.i.i.i.i.i.i.i348 = call i32 @bcmp(ptr %i.oh, ptr %i.om, i64 %i.ok), !noalias !215
  %.not9.i.i.i.i.i.i.i349 = icmp eq i32 %bcmp.i.i.i.i.i.i.i348, 0
  br i1 %.not9.i.i.i.i.i.i.i349, label %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i, label %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i

_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i: ; preds = %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.i.i, %bb.eu
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %39)
          to label %_ZN7testing8internal8EqHelper7CompareISt6vectorIiSaIiEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.ew

_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i: ; preds = %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.i.i, %bb.et
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt6vectorIiSaIiEES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %39, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.21, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %34)
          to label %_ZN7testing8internal8EqHelper7CompareISt6vectorIiSaIiEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.ew

_ZN7testing8internal8EqHelper7CompareISt6vectorIiSaIiEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit: ; preds = %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i, %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i
  %i.or = load i8, ptr %39, align 8, !tbaa !33, !range !34, !noundef !35
  %i.os = trunc nuw i8 %i.or to i1
  br i1 %i.os, label %.critedge192, label %bb.ex

bb.ev:                                            ; preds = %_ZN7testing7MessageD2Ev.exit341, %bb.eh
  %.pn125.pn.pn = phi { ptr, i32 } [ %.pn125.pn, %_ZN7testing7MessageD2Ev.exit341 ], [ %i.nd, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21
  br label %bb.jr

bb.ew:                                            ; preds = %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i, %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i
  %i.ot = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.ex:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt6vectorIiSaIiEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %bb.ey unwind label %bb.fd

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #21
  %i.ou = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !36 ; 2 uses
  %.not.i.i352 = icmp eq ptr %i.ov, null
  br i1 %.not.i.i352, label %_ZNK7testing15AssertionResult15failure_messageEv.exit353, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !41
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit353

_ZNK7testing15AssertionResult15failure_messageEv.exit353: ; preds = %bb.ez, %bb.ey
  %i.ox = phi ptr [ %i.ow, %bb.ez ], [ @.str.38, %bb.ey ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %41, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 213, ptr noundef %i.ox)
          to label %bb.fa unwind label %bb.fe

bb.fa:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit353
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %bb.fb unwind label %bb.ff

bb.fb:                                            ; preds = %bb.fa
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %41) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  %i.oy = load ptr, ptr %40, align 8, !tbaa !43   ; 3 uses
  %.not.i.i354 = icmp eq ptr %i.oy, null
  br i1 %.not.i.i354, label %_ZN7testing7MessageD2Ev.exit356, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i355

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i355: ; preds = %bb.fb
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !45
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %i.pb = load ptr, ptr %i.pa, align 8
  call void %i.pb(ptr noundef nonnull align 8 dereferenceable(128) %i.oy) #21, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit356

_ZN7testing7MessageD2Ev.exit356:                  ; preds = %bb.fb, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i355
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  %i.pc = load ptr, ptr %i.ou, align 8, !tbaa !36 ; 4 uses
  %.not.i.i357 = icmp eq ptr %i.pc, null
  br i1 %.not.i.i357, label %_ZN7testing15AssertionResultD2Ev.exit361, label %bb.fc

bb.fc:                                            ; preds = %_ZN7testing7MessageD2Ev.exit356
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !41 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pc, i64 16 ; 2 uses
  %i.pf = icmp eq ptr %i.pd, %i.pe
  br i1 %i.pf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i359, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i358

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i358: ; preds = %bb.fc
  %i.pg = load i64, ptr %i.pe, align 8, !tbaa !46
  %i.ph = add i64 %i.pg, 1
  call void @_ZdlPvm(ptr noundef %i.pd, i64 noundef %i.ph) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i359

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i359: ; preds = %bb.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i358
  call void @_ZdlPvm(ptr noundef nonnull %i.pc, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit361

_ZN7testing15AssertionResultD2Ev.exit361:         ; preds = %_ZN7testing7MessageD2Ev.exit356, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i359
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  br label %bb.ii

bb.fd:                                            ; preds = %bb.ex
  %i.pi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit364

bb.fe:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit353
  %i.pj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fa
  %i.pk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %41) #21
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.pn129 = phi { ptr, i32 } [ %i.pk, %bb.ff ], [ %i.pj, %bb.fe ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  %i.pl = load ptr, ptr %40, align 8, !tbaa !43   ; 3 uses
  %.not.i.i362 = icmp eq ptr %i.pl, null
  br i1 %.not.i.i362, label %_ZN7testing7MessageD2Ev.exit364, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i363

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i363: ; preds = %bb.fg
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !45
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  %i.po = load ptr, ptr %i.pn, align 8
  call void %i.po(ptr noundef nonnull align 8 dereferenceable(128) %i.pl) #21, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit364

_ZN7testing7MessageD2Ev.exit364:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i363, %bb.fg, %bb.fd
  %.pn129.pn = phi { ptr, i32 } [ %i.pi, %bb.fd ], [ %.pn129, %bb.fg ], [ %.pn129, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i363 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %39) #21
  br label %bb.fj

.critedge192:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareISt6vectorIiSaIiEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  %i.pp = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !36 ; 4 uses
  %.not.i.i365 = icmp eq ptr %i.pq, null
  br i1 %.not.i.i365, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %.critedge192
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !41 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pq, i64 16 ; 2 uses
  %i.pt = icmp eq ptr %i.pr, %i.ps
  br i1 %i.pt, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i367, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i366

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i366: ; preds = %bb.fh
  %i.pu = load i64, ptr %i.ps, align 8, !tbaa !46
  %i.pv = add i64 %i.pu, 1
  call void @_ZdlPvm(ptr noundef %i.pr, i64 noundef %i.pv) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i367

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i367: ; preds = %bb.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i366
  call void @_ZdlPvm(ptr noundef nonnull %i.pq, i64 noundef 32) #22
  br label %bb.fi

bb.fi:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i367, %.critedge192
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.fi
  %i.pw = load ptr, ptr %i.ii, align 8, !tbaa !57 ; 8 uses
  %min.iters.check = icmp ult i64 %i.kn, 4
  %i.px = ptrtoaddr ptr %i.pw to i64
  %i.py = sub i64 %i.px, %58
  %diff.check = icmp ugt i64 %i.py, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check748 = icmp ult i64 %i.kn, 32
  br i1 %min.iters.check748, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.pz = and i64 %i.kn, 28
  %n.vec = and i64 %i.kn, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pw, i64 %index ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 16
  %wide.load = load <16 x i8>, ptr %i.qa, align 1, !tbaa !46
  %wide.load749 = load <16 x i8>, ptr %i.qb, align 1, !tbaa !46
  %i.qc = getelementptr inbounds nuw i8, ptr %i.km, i64 %index ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  store <16 x i8> %wide.load, ptr %i.qc, align 1, !tbaa !46
  store <16 x i8> %wide.load749, ptr %i.qd, align 1, !tbaa !46
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.qe = icmp eq i64 %index.next, %n.vec
  br i1 %i.qe, label %middle.block, label %vector.body, !llvm.loop !177

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kn, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.pz, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec750 = and i64 %i.kn, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index751 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next753, %vec.epilog.vector.body ] ; 3 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pw, i64 %index751
  %wide.load752 = load <4 x i8>, ptr %i.qf, align 1, !tbaa !46
  %i.qg = getelementptr inbounds nuw i8, ptr %i.km, i64 %index751
  store <4 x i8> %wide.load752, ptr %i.qg, align 1, !tbaa !46
  %index.next753 = add nuw i64 %index751, 4       ; 2 uses
  %i.qh = icmp eq i64 %index.next753, %n.vec750
  br i1 %i.qh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !178

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n754 = icmp eq i64 %i.kn, %n.vec750
  br i1 %cmp.n754, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030579.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec750, %vec.epilog.middle.block ] ; 3 uses
  %i.qi = sub i64 %.pre-phi, %.pre-phi589
  %xtraiter = and i64 %i.qi, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.030579.prol = phi i64 [ %i.qm, %vec.epilog.scalar.ph.prol ], [ %.030579.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pw, i64 %.030579.prol
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !46
  %i.ql = getelementptr inbounds nuw i8, ptr %i.km, i64 %.030579.prol
  store i8 %i.qk, ptr %i.ql, align 1, !tbaa !46
  %i.qm = add nuw i64 %.030579.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !179

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.030579.unr = phi i64 [ %.030579.ph, %vec.epilog.scalar.ph.preheader ], [ %i.qm, %vec.epilog.scalar.ph.prol ]
  %i.qn = sub i64 %.030579.ph, %.pre-phi
  %i.qo = add i64 %i.qn, %.pre-phi589
  %i.qp = icmp ugt i64 %i.qo, -4
  br i1 %i.qp, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #21
  %i.qq = invoke noalias noundef nonnull dereferenceable(1000) ptr @_Znwm(i64 noundef 1000) #23
          to label %bb.fk unwind label %bb.fo     ; 3 uses

bb.fj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit364, %bb.ew
  %.pn129.pn.pn = phi { ptr, i32 } [ %.pn129.pn, %_ZN7testing7MessageD2Ev.exit364 ], [ %i.ot, %bb.ew ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  br label %bb.jr

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.030579 = phi i64 [ %i.rg, %vec.epilog.scalar.ph ], [ %.030579.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.pw, i64 %.030579
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !46
  %i.qt = getelementptr inbounds nuw i8, ptr %i.km, i64 %.030579
  store i8 %i.qs, ptr %i.qt, align 1, !tbaa !46
  %i.qu = add nuw i64 %.030579, 1                 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.pw, i64 %i.qu
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !46
  %i.qx = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.qu
  store i8 %i.qw, ptr %i.qx, align 1, !tbaa !46
  %i.qy = add nuw i64 %.030579, 2                 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.pw, i64 %i.qy
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !46
  %i.rb = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.qy
  store i8 %i.ra, ptr %i.rb, align 1, !tbaa !46
  %i.rc = add nuw i64 %.030579, 3                 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.pw, i64 %i.rc
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !46
  %i.rf = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.rc
  store i8 %i.re, ptr %i.rf, align 1, !tbaa !46
  %i.rg = add nuw i64 %.030579, 4                 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.rg, %i.kn
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !180

bb.fk:                                            ; preds = %._crit_edge
  store ptr %i.qq, ptr %42, align 8, !tbaa !208
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qq, i64 1000 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 3 uses
  store ptr %i.rh, ptr %i.ri, align 8, !tbaa !209
  %i.rj = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1000) %i.qq, i8 0, i64 1000, i1 false)
  store ptr %i.rh, ptr %i.rj, align 8, !tbaa !210
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #21
  %i.rk = invoke noalias noundef nonnull dereferenceable(2000) ptr @_Znwm(i64 noundef 2000) #23
          to label %bb.fl unwind label %bb.fp     ; 4 uses

bb.fl:                                            ; preds = %bb.fk
  store ptr %i.rk, ptr %43, align 8, !tbaa !50
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 2000 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 3 uses
  store ptr %i.rl, ptr %i.rm, align 8, !tbaa !51
  %i.rn = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2000) %i.rk, i8 0, i64 2000, i1 false)
  store ptr %i.rl, ptr %i.rn, align 8, !tbaa !52
  %i.ro = load ptr, ptr %30, align 8, !tbaa !85   ; 2 uses
  %i.rp = load ptr, ptr %42, align 8, !tbaa !208
  %i.rq = load ptr, ptr %i.ro, align 8, !tbaa !45
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 64
  %i.rs = load ptr, ptr %i.rr, align 8
  invoke void %i.rs(ptr noundef nonnull align 8 dereferenceable(32) %i.ro, i64 noundef 10, ptr noundef nonnull %i.bb, i64 noundef 25, ptr noundef %i.rp, ptr noundef nonnull %i.rk, ptr noundef null)
          to label %bb.fm unwind label %bb.fq

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #21
  %i.rt = load ptr, ptr %i.ej, align 8, !tbaa !52, !noalias !216 ; 2 uses
  %i.ru = load ptr, ptr %17, align 8, !tbaa !50, !noalias !216 ; 3 uses
  %i.rv = ptrtoint ptr %i.rt to i64
  %i.rw = ptrtoint ptr %i.ru to i64
  %i.rx = sub i64 %i.rv, %i.rw                    ; 2 uses
  %i.ry = load ptr, ptr %i.rn, align 8, !tbaa !52, !noalias !216
  %i.rz = load ptr, ptr %43, align 8, !tbaa !50, !noalias !216 ; 2 uses
  %i.sa = ptrtoint ptr %i.ry to i64
  %i.sb = ptrtoint ptr %i.rz to i64
  %i.sc = sub i64 %i.sa, %i.sb
  %i.sd = icmp eq i64 %i.rx, %i.sc
  br i1 %i.sd, label %bb.fn, label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i374

bb.fn:                                            ; preds = %bb.fm
  %.not.not.i.i.i.i.i.i.i375 = icmp eq ptr %i.rt, %i.ru
  br i1 %.not.not.i.i.i.i.i.i.i375, label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i379, label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.i.i376

_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.i.i376: ; preds = %bb.fn
  %bcmp.i.i.i.i.i.i.i377 = call i32 @bcmp(ptr %i.ru, ptr %i.rz, i64 %i.rx), !noalias !216
  %.not9.i.i.i.i.i.i.i378 = icmp eq i32 %bcmp.i.i.i.i.i.i.i377, 0
  br i1 %.not9.i.i.i.i.i.i.i378, label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i379, label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i374

_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i379: ; preds = %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.i.i376, %bb.fn
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %44)
          to label %_ZN7testing8internal8EqHelper7CompareISt6vectorIlSaIlEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit382 unwind label %bb.fr

_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i374: ; preds = %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.i.i376, %bb.fm
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt6vectorIlSaIlEES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %44, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.22, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %43)
          to label %_ZN7testing8internal8EqHelper7CompareISt6vectorIlSaIlEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit382 unwind label %bb.fr

_ZN7testing8internal8EqHelper7CompareISt6vectorIlSaIlEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit382: ; preds = %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i379, %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i374
  %i.se = load i8, ptr %44, align 8, !tbaa !33, !range !34, !noundef !35
  %i.sf = trunc nuw i8 %i.se to i1
  br i1 %i.sf, label %.critedge194, label %bb.fs

bb.fo:                                            ; preds = %._crit_edge
  %i.sg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit527

bb.fp:                                            ; preds = %bb.fk
  %i.sh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit525

bb.fq:                                            ; preds = %bb.fl
  %i.si = landingpad { ptr, i32 }
          cleanup
  br label %bb.jo

bb.fr:                                            ; preds = %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i374, %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i379
  %i.sj = landingpad { ptr, i32 }
          cleanup
end_hunk_4
begin_hunk_5_@_ZN43TestZeroCopy_zerocopy_binary_flatcodes_Test8TestBodyEv:bb.a
.critedge194:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareISt6vectorIlSaIlEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit382
  %i.tf = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !36 ; 4 uses
  %.not.i.i396 = icmp eq ptr %i.tg, null
  br i1 %.not.i.i396, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %.critedge194
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !41 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tg, i64 16 ; 2 uses
  %i.tj = icmp eq ptr %i.th, %i.ti
  br i1 %i.tj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i398, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i397

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i397: ; preds = %bb.gc
  %i.tk = load i64, ptr %i.ti, align 8, !tbaa !46
  %i.tl = add i64 %i.tk, 1
  call void @_ZdlPvm(ptr noundef %i.th, i64 noundef %i.tl) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i398

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i398: ; preds = %bb.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i397
  call void @_ZdlPvm(ptr noundef nonnull %i.tg, i64 noundef 32) #22
  br label %bb.gd

bb.gd:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i398, %.critedge194
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #21
  %i.tm = load ptr, ptr %i.ef, align 8, !tbaa !210, !noalias !217 ; 2 uses
  %i.tn = load ptr, ptr %16, align 8, !tbaa !208, !noalias !217 ; 3 uses
  %i.to = ptrtoint ptr %i.tm to i64
  %i.tp = ptrtoint ptr %i.tn to i64
  %i.tq = sub i64 %i.to, %i.tp                    ; 2 uses
  %i.tr = load ptr, ptr %i.rj, align 8, !tbaa !210, !noalias !217
  %i.ts = load ptr, ptr %42, align 8, !tbaa !208, !noalias !217 ; 2 uses
  %i.tt = ptrtoint ptr %i.tr to i64
  %i.tu = ptrtoint ptr %i.ts to i64
  %i.tv = sub i64 %i.tt, %i.tu
  %i.tw = icmp eq i64 %i.tq, %i.tv
  br i1 %i.tw, label %bb.ge, label %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i401

bb.ge:                                            ; preds = %bb.gd
  %.not.not.i.i.i.i.i.i.i402 = icmp eq ptr %i.tm, %i.tn
  br i1 %.not.not.i.i.i.i.i.i.i402, label %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i406, label %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.i.i403

_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.i.i403: ; preds = %bb.ge
  %bcmp.i.i.i.i.i.i.i404 = call i32 @bcmp(ptr %i.tn, ptr %i.ts, i64 %i.tq), !noalias !217
  %.not9.i.i.i.i.i.i.i405 = icmp eq i32 %bcmp.i.i.i.i.i.i.i404, 0
  br i1 %.not9.i.i.i.i.i.i.i405, label %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i406, label %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i401

_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i406: ; preds = %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.i.i403, %bb.ge
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %47)
          to label %_ZN7testing8internal8EqHelper7CompareISt6vectorIiSaIiEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit409 unwind label %bb.gg

_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i401: ; preds = %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.i.i403, %bb.gd
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt6vectorIiSaIiEES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %47, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.23, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %42)
          to label %_ZN7testing8internal8EqHelper7CompareISt6vectorIiSaIiEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit409 unwind label %bb.gg

_ZN7testing8internal8EqHelper7CompareISt6vectorIiSaIiEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit409: ; preds = %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i406, %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i401
  %i.tx = load i8, ptr %47, align 8, !tbaa !33, !range !34, !noundef !35
  %i.ty = trunc nuw i8 %i.tx to i1
  br i1 %i.ty, label %.critedge196, label %bb.gh

bb.gf:                                            ; preds = %_ZN7testing7MessageD2Ev.exit395, %bb.fr
  %.pn133.pn.pn = phi { ptr, i32 } [ %.pn133.pn, %_ZN7testing7MessageD2Ev.exit395 ], [ %i.sj, %bb.fr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #21
  br label %bb.jo

bb.gg:                                            ; preds = %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i401, %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i406
  %i.tz = landingpad { ptr, i32 }
          cleanup
  br label %bb.gt

bb.gh:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt6vectorIiSaIiEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit409
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %48)
          to label %bb.gi unwind label %bb.gn

bb.gi:                                            ; preds = %bb.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #21
  %i.ua = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 2 uses
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !36 ; 2 uses
  %.not.i.i410 = icmp eq ptr %i.ub, null
  br i1 %.not.i.i410, label %_ZNK7testing15AssertionResult15failure_messageEv.exit411, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !41
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit411

_ZNK7testing15AssertionResult15failure_messageEv.exit411: ; preds = %bb.gj, %bb.gi
  %i.ud = phi ptr [ %i.uc, %bb.gj ], [ @.str.38, %bb.gi ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %49, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 227, ptr noundef %i.ud)
          to label %bb.gk unwind label %bb.go

bb.gk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit411
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef nonnull align 8 dereferenceable(8) %48)
          to label %bb.gl unwind label %bb.gp

bb.gl:                                            ; preds = %bb.gk
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %49) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  %i.ue = load ptr, ptr %48, align 8, !tbaa !43   ; 3 uses
  %.not.i.i412 = icmp eq ptr %i.ue, null
  br i1 %.not.i.i412, label %_ZN7testing7MessageD2Ev.exit414, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i413

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i413: ; preds = %bb.gl
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !45
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  %i.uh = load ptr, ptr %i.ug, align 8
  call void %i.uh(ptr noundef nonnull align 8 dereferenceable(128) %i.ue) #21, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit414

_ZN7testing7MessageD2Ev.exit414:                  ; preds = %bb.gl, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i413
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #21
  %i.ui = load ptr, ptr %i.ua, align 8, !tbaa !36 ; 4 uses
  %.not.i.i415 = icmp eq ptr %i.ui, null
  br i1 %.not.i.i415, label %_ZN7testing15AssertionResultD2Ev.exit419, label %bb.gm

bb.gm:                                            ; preds = %_ZN7testing7MessageD2Ev.exit414
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !41 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ui, i64 16 ; 2 uses
  %i.ul = icmp eq ptr %i.uj, %i.uk
  br i1 %i.ul, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i417, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i416

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i416: ; preds = %bb.gm
  %i.um = load i64, ptr %i.uk, align 8, !tbaa !46
  %i.un = add i64 %i.um, 1
  call void @_ZdlPvm(ptr noundef %i.uj, i64 noundef %i.un) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i417

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i417: ; preds = %bb.gm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i416
  call void @_ZdlPvm(ptr noundef nonnull %i.ui, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit419

_ZN7testing15AssertionResultD2Ev.exit419:         ; preds = %_ZN7testing7MessageD2Ev.exit414, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i417
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #21
  br label %bb.if

bb.gn:                                            ; preds = %bb.gh
  %i.uo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit422

bb.go:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit411
  %i.up = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

bb.gp:                                            ; preds = %bb.gk
  %i.uq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %49) #21
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %.pn137 = phi { ptr, i32 } [ %i.uq, %bb.gp ], [ %i.up, %bb.go ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  %i.ur = load ptr, ptr %48, align 8, !tbaa !43   ; 3 uses
  %.not.i.i420 = icmp eq ptr %i.ur, null
  br i1 %.not.i.i420, label %_ZN7testing7MessageD2Ev.exit422, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i421

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i421: ; preds = %bb.gq
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !45
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %i.uu = load ptr, ptr %i.ut, align 8
  call void %i.uu(ptr noundef nonnull align 8 dereferenceable(128) %i.ur) #21, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit422

_ZN7testing7MessageD2Ev.exit422:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i421, %bb.gq, %bb.gn
  %.pn137.pn = phi { ptr, i32 } [ %i.uo, %bb.gn ], [ %.pn137, %bb.gq ], [ %.pn137, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i421 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %47) #21
  br label %bb.gt

.critedge196:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareISt6vectorIiSaIiEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit409
  %i.uv = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !36 ; 4 uses
  %.not.i.i423 = icmp eq ptr %i.uw, null
  br i1 %.not.i.i423, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %.critedge196
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !41 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uw, i64 16 ; 2 uses
  %i.uz = icmp eq ptr %i.ux, %i.uy
  br i1 %i.uz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i425, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i424

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i424: ; preds = %bb.gr
  %i.va = load i64, ptr %i.uy, align 8, !tbaa !46
  %i.vb = add i64 %i.va, 1
  call void @_ZdlPvm(ptr noundef %i.ux, i64 noundef %i.vb) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i425

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i425: ; preds = %bb.gr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i424
  call void @_ZdlPvm(ptr noundef nonnull %i.uw, i64 noundef 32) #22
  br label %bb.gs

bb.gs:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i425, %.critedge196
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #21
  br i1 %.not, label %._crit_edge583, label %iter.check770

iter.check770:                                    ; preds = %bb.gs
  %i.vc = load ptr, ptr %i.ie, align 8, !tbaa !57 ; 8 uses
  %min.iters.check757 = icmp ult i64 %i.kn, 4
  %i.vd = ptrtoaddr ptr %i.vc to i64
  %i.ve = sub i64 %i.vd, %58
  %diff.check756 = icmp ugt i64 %i.ve, -32
  %or.cond789 = select i1 %min.iters.check757, i1 true, i1 %diff.check756
  br i1 %or.cond789, label %vec.epilog.scalar.ph771.preheader, label %vector.main.loop.iter.check758

vector.main.loop.iter.check758:                   ; preds = %iter.check770
  %min.iters.check759 = icmp ult i64 %i.kn, 32
  br i1 %min.iters.check759, label %vec.epilog.ph774, label %vector.ph760

vector.ph760:                                     ; preds = %vector.main.loop.iter.check758
  %i.vf = and i64 %i.kn, 28
  %n.vec761 = and i64 %i.kn, -32                  ; 4 uses
  br label %vector.body762

vector.body762:                                   ; preds = %vector.ph760, %vector.body762
  %index763 = phi i64 [ 0, %vector.ph760 ], [ %index.next766, %vector.body762 ] ; 3 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vc, i64 %index763 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  %wide.load764 = load <16 x i8>, ptr %i.vg, align 1, !tbaa !46
  %wide.load765 = load <16 x i8>, ptr %i.vh, align 1, !tbaa !46
  %i.vi = getelementptr inbounds nuw i8, ptr %i.km, i64 %index763 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 16
  store <16 x i8> %wide.load764, ptr %i.vi, align 1, !tbaa !46
  store <16 x i8> %wide.load765, ptr %i.vj, align 1, !tbaa !46
  %index.next766 = add nuw i64 %index763, 32      ; 2 uses
  %i.vk = icmp eq i64 %index.next766, %n.vec761
  br i1 %i.vk, label %middle.block767, label %vector.body762, !llvm.loop !189

middle.block767:                                  ; preds = %vector.body762
  %cmp.n768 = icmp eq i64 %i.kn, %n.vec761
  br i1 %cmp.n768, label %._crit_edge583, label %vec.epilog.iter.check772

vec.epilog.iter.check772:                         ; preds = %middle.block767
  %min.epilog.iters.check773 = icmp eq i64 %i.vf, 0
  br i1 %min.epilog.iters.check773, label %vec.epilog.scalar.ph771.preheader, label %vec.epilog.ph774, !prof !68

vec.epilog.ph774:                                 ; preds = %vector.main.loop.iter.check758, %vec.epilog.iter.check772
  %vec.epilog.resume.val769 = phi i64 [ %n.vec761, %vec.epilog.iter.check772 ], [ 0, %vector.main.loop.iter.check758 ]
  %n.vec775 = and i64 %i.kn, -4                   ; 3 uses
  br label %vec.epilog.vector.body776

vec.epilog.vector.body776:                        ; preds = %vec.epilog.vector.body776, %vec.epilog.ph774
  %index777 = phi i64 [ %vec.epilog.resume.val769, %vec.epilog.ph774 ], [ %index.next779, %vec.epilog.vector.body776 ] ; 3 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vc, i64 %index777
  %wide.load778 = load <4 x i8>, ptr %i.vl, align 1, !tbaa !46
  %i.vm = getelementptr inbounds nuw i8, ptr %i.km, i64 %index777
  store <4 x i8> %wide.load778, ptr %i.vm, align 1, !tbaa !46
  %index.next779 = add nuw i64 %index777, 4       ; 2 uses
  %i.vn = icmp eq i64 %index.next779, %n.vec775
  br i1 %i.vn, label %vec.epilog.middle.block780, label %vec.epilog.vector.body776, !llvm.loop !190

vec.epilog.middle.block780:                       ; preds = %vec.epilog.vector.body776
  %cmp.n781 = icmp eq i64 %i.kn, %n.vec775
  br i1 %cmp.n781, label %._crit_edge583, label %vec.epilog.scalar.ph771.preheader

vec.epilog.scalar.ph771.preheader:                ; preds = %iter.check770, %vec.epilog.iter.check772, %vec.epilog.middle.block780
  %.0580.ph = phi i64 [ 0, %iter.check770 ], [ %n.vec761, %vec.epilog.iter.check772 ], [ %n.vec775, %vec.epilog.middle.block780 ] ; 3 uses
  %i.vo = sub i64 %.pre-phi, %.pre-phi589
  %xtraiter790 = and i64 %i.vo, 3                 ; 2 uses
  %lcmp.mod791.not = icmp eq i64 %xtraiter790, 0
  br i1 %lcmp.mod791.not, label %vec.epilog.scalar.ph771.prol.loopexit, label %vec.epilog.scalar.ph771.prol

vec.epilog.scalar.ph771.prol:                     ; preds = %vec.epilog.scalar.ph771.preheader, %vec.epilog.scalar.ph771.prol
  %.0580.prol = phi i64 [ %i.vs, %vec.epilog.scalar.ph771.prol ], [ %.0580.ph, %vec.epilog.scalar.ph771.preheader ] ; 3 uses
  %prol.iter792 = phi i64 [ %prol.iter792.next, %vec.epilog.scalar.ph771.prol ], [ 0, %vec.epilog.scalar.ph771.preheader ]
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vc, i64 %.0580.prol
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !46
  %i.vr = getelementptr inbounds nuw i8, ptr %i.km, i64 %.0580.prol
  store i8 %i.vq, ptr %i.vr, align 1, !tbaa !46
  %i.vs = add nuw i64 %.0580.prol, 1              ; 2 uses
  %prol.iter792.next = add i64 %prol.iter792, 1   ; 2 uses
  %prol.iter792.cmp.not = icmp eq i64 %prol.iter792.next, %xtraiter790
  br i1 %prol.iter792.cmp.not, label %vec.epilog.scalar.ph771.prol.loopexit, label %vec.epilog.scalar.ph771.prol, !llvm.loop !191

vec.epilog.scalar.ph771.prol.loopexit:            ; preds = %vec.epilog.scalar.ph771.prol, %vec.epilog.scalar.ph771.preheader
  %.0580.unr = phi i64 [ %.0580.ph, %vec.epilog.scalar.ph771.preheader ], [ %i.vs, %vec.epilog.scalar.ph771.prol ]
  %i.vt = sub i64 %.0580.ph, %.pre-phi
  %i.vu = add i64 %i.vt, %.pre-phi589
  %i.vv = icmp ugt i64 %i.vu, -4
  br i1 %i.vv, label %._crit_edge583, label %vec.epilog.scalar.ph771

._crit_edge583:                                   ; preds = %vec.epilog.scalar.ph771.prol.loopexit, %vec.epilog.scalar.ph771, %middle.block767, %vec.epilog.middle.block780, %bb.gs
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #21
  %i.vw = invoke noalias noundef nonnull dereferenceable(1000) ptr @_Znwm(i64 noundef 1000) #23
          to label %bb.gu unwind label %bb.gy     ; 3 uses

bb.gt:                                            ; preds = %_ZN7testing7MessageD2Ev.exit422, %bb.gg
  %.pn137.pn.pn = phi { ptr, i32 } [ %.pn137.pn, %_ZN7testing7MessageD2Ev.exit422 ], [ %i.tz, %bb.gg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #21
  br label %bb.jo

vec.epilog.scalar.ph771:                          ; preds = %vec.epilog.scalar.ph771.prol.loopexit, %vec.epilog.scalar.ph771
  %.0580 = phi i64 [ %i.wm, %vec.epilog.scalar.ph771 ], [ %.0580.unr, %vec.epilog.scalar.ph771.prol.loopexit ] ; 6 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vc, i64 %.0580
  %i.vy = load i8, ptr %i.vx, align 1, !tbaa !46
  %i.vz = getelementptr inbounds nuw i8, ptr %i.km, i64 %.0580
  store i8 %i.vy, ptr %i.vz, align 1, !tbaa !46
  %i.wa = add nuw i64 %.0580, 1                   ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vc, i64 %i.wa
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !46
  %i.wd = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.wa
  store i8 %i.wc, ptr %i.wd, align 1, !tbaa !46
  %i.we = add nuw i64 %.0580, 2                   ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vc, i64 %i.we
  %i.wg = load i8, ptr %i.wf, align 1, !tbaa !46
  %i.wh = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.we
  store i8 %i.wg, ptr %i.wh, align 1, !tbaa !46
  %i.wi = add nuw i64 %.0580, 3                   ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.vc, i64 %i.wi
  %i.wk = load i8, ptr %i.wj, align 1, !tbaa !46
  %i.wl = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.wi
  store i8 %i.wk, ptr %i.wl, align 1, !tbaa !46
  %i.wm = add nuw i64 %.0580, 4                   ; 2 uses
  %exitcond585.not.3 = icmp eq i64 %i.wm, %i.kn
  br i1 %exitcond585.not.3, label %._crit_edge583, label %vec.epilog.scalar.ph771, !llvm.loop !192

bb.gu:                                            ; preds = %._crit_edge583
  store ptr %i.vw, ptr %50, align 8, !tbaa !208
  %i.wn = getelementptr inbounds nuw i8, ptr %i.vw, i64 1000 ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 3 uses
  store ptr %i.wn, ptr %i.wo, align 8, !tbaa !209
  %i.wp = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1000) %i.vw, i8 0, i64 1000, i1 false)
  store ptr %i.wn, ptr %i.wp, align 8, !tbaa !210
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #21
  %i.wq = invoke noalias noundef nonnull dereferenceable(2000) ptr @_Znwm(i64 noundef 2000) #23
          to label %bb.gv unwind label %bb.gz     ; 4 uses

bb.gv:                                            ; preds = %bb.gu
  store ptr %i.wq, ptr %51, align 8, !tbaa !50
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 2000 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 3 uses
  store ptr %i.wr, ptr %i.ws, align 8, !tbaa !51
  %i.wt = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2000) %i.wq, i8 0, i64 2000, i1 false)
  store ptr %i.wr, ptr %i.wt, align 8, !tbaa !52
  %i.wu = load ptr, ptr %30, align 8, !tbaa !85   ; 2 uses
  %i.wv = load ptr, ptr %50, align 8, !tbaa !208
  %i.ww = load ptr, ptr %i.wu, align 8, !tbaa !45
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 64
  %i.wy = load ptr, ptr %i.wx, align 8
  invoke void %i.wy(ptr noundef nonnull align 8 dereferenceable(32) %i.wu, i64 noundef 10, ptr noundef nonnull %i.bb, i64 noundef 25, ptr noundef %i.wv, ptr noundef nonnull %i.wq, ptr noundef null)
          to label %bb.gw unwind label %bb.ha

bb.gw:                                            ; preds = %bb.gv
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #21
  %i.wz = load ptr, ptr %i.dy, align 8, !tbaa !52, !noalias !218 ; 2 uses
  %i.xa = load ptr, ptr %14, align 8, !tbaa !50, !noalias !218 ; 3 uses
  %i.xb = ptrtoint ptr %i.wz to i64
  %i.xc = ptrtoint ptr %i.xa to i64
  %i.xd = sub i64 %i.xb, %i.xc                    ; 2 uses
  %i.xe = load ptr, ptr %i.wt, align 8, !tbaa !52, !noalias !218
  %i.xf = load ptr, ptr %51, align 8, !tbaa !50, !noalias !218 ; 2 uses
  %i.xg = ptrtoint ptr %i.xe to i64
  %i.xh = ptrtoint ptr %i.xf to i64
  %i.xi = sub i64 %i.xg, %i.xh
  %i.xj = icmp eq i64 %i.xd, %i.xi
  br i1 %i.xj, label %bb.gx, label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i432

bb.gx:                                            ; preds = %bb.gw
  %.not.not.i.i.i.i.i.i.i433 = icmp eq ptr %i.wz, %i.xa
  br i1 %.not.not.i.i.i.i.i.i.i433, label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i437, label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.i.i434

_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.i.i434: ; preds = %bb.gx
  %bcmp.i.i.i.i.i.i.i435 = call i32 @bcmp(ptr %i.xa, ptr %i.xf, i64 %i.xd), !noalias !218
  %.not9.i.i.i.i.i.i.i436 = icmp eq i32 %bcmp.i.i.i.i.i.i.i435, 0
  br i1 %.not9.i.i.i.i.i.i.i436, label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i437, label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i432

_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i437: ; preds = %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.i.i434, %bb.gx
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %52)
          to label %_ZN7testing8internal8EqHelper7CompareISt6vectorIlSaIlEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit440 unwind label %bb.hb

_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i432: ; preds = %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.i.i434, %bb.gw
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt6vectorIlSaIlEES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %52, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.24, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %51)
          to label %_ZN7testing8internal8EqHelper7CompareISt6vectorIlSaIlEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit440 unwind label %bb.hb

_ZN7testing8internal8EqHelper7CompareISt6vectorIlSaIlEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit440: ; preds = %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i437, %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i432
  %i.xk = load i8, ptr %52, align 8, !tbaa !33, !range !34, !noundef !35
  %i.xl = trunc nuw i8 %i.xk to i1
  br i1 %i.xl, label %.critedge198, label %bb.hc

bb.gy:                                            ; preds = %._crit_edge583
  %i.xm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit523

bb.gz:                                            ; preds = %bb.gu
  %i.xn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit521

bb.ha:                                            ; preds = %bb.gv
  %i.xo = landingpad { ptr, i32 }
          cleanup
  br label %bb.jl

bb.hb:                                            ; preds = %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i432, %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i437
  %i.xp = landingpad { ptr, i32 }
          cleanup
  br label %bb.hp

end_hunk_5
