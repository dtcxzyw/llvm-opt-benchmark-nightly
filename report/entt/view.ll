Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/view?download=true
inline.NumInlined: 14012
inline.NumDeleted: 4156
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN28ViewMultiStorage_Handle_Test8TestBodyEv:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

bb.cg:                                            ; preds = %bb.ca
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cb
  %i.is = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #26
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.pn105 = phi { ptr, i32 } [ %i.is, %bb.ch ], [ %i.ir, %bb.cg ] ; 2 uses
  %i.it = load ptr, ptr %23, align 8, !tbaa !76   ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.iv = icmp eq ptr %i.it, %i.iu
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280: ; preds = %bb.ci
  %i.iw = load i64, ptr %i.iu, align 8, !tbaa !77
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.ix) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280, %bb.cf
  %.pn105.pn = phi { ptr, i32 } [ %i.iq, %bb.cf ], [ %.pn105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280 ], [ %.pn105, %bb.ci ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  %i.iy = load ptr, ptr %21, align 8, !tbaa !79   ; 3 uses
  %.not.i.i283 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i283, label %_ZN7testing7MessageD2Ev.exit285, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i284

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i284: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !43
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(128) %i.iy) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit285

_ZN7testing7MessageD2Ev.exit285:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i284, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, %bb.ce
  %.pn105.pn.pn = phi { ptr, i32 } [ %i.ip, %bb.ce ], [ %.pn105.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282 ], [ %.pn105.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i284 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.gv

_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm0EE6handleEv.exit292: ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit268
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %.sroa.speculated618 = select i1 %i.as, ptr %1, ptr %i.u ; 2 uses
  store ptr %.sroa.speculated618, ptr %i.c, align 8, !tbaa !126
  %i.jc = icmp eq ptr %i.gc, %.sroa.speculated618
  br i1 %i.jc, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm0EE6handleEv.exit292
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %24)
          to label %_ZN7testing8internal8EqHelper7CompareIPKN4entt16basic_sparse_setINS3_6entityESaIS5_EEES9_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit295 unwind label %bb.cl

bb.ck:                                            ; preds = %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm0EE6handleEv.exit292
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIPKN4entt16basic_sparse_setINS2_6entityESaIS4_EEES8_EENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %24, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.66, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN7testing8internal8EqHelper7CompareIPKN4entt16basic_sparse_setINS3_6entityESaIS5_EEES9_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit295 unwind label %bb.cl

_ZN7testing8internal8EqHelper7CompareIPKN4entt16basic_sparse_setINS3_6entityESaIS5_EEES9_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit295: ; preds = %bb.cj, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.jd = load i8, ptr %24, align 8, !tbaa !91, !range !92, !noundef !93
  %i.je = trunc nuw i8 %i.jd to i1
  br i1 %i.je, label %.critedge154, label %bb.cm

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.jf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.cy

bb.cm:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIPKN4entt16basic_sparse_setINS3_6entityESaIS5_EEES9_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit295
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.cn unwind label %bb.cs

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  %i.jg = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i296 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i296, label %_ZNK7testing15AssertionResult15failure_messageEv.exit297, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit297

_ZNK7testing15AssertionResult15failure_messageEv.exit297: ; preds = %bb.co, %bb.cn
  %i.jj = phi ptr [ %i.ji, %bb.co ], [ @.str.319, %bb.cn ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %26, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 812, ptr noundef %i.jj)
          to label %bb.cp unwind label %bb.ct

bb.cp:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit297
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.cq unwind label %bb.cu

bb.cq:                                            ; preds = %bb.cp
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  %i.jk = load ptr, ptr %25, align 8, !tbaa !79   ; 3 uses
  %.not.i.i298 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i298, label %_ZN7testing7MessageD2Ev.exit300, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i299

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i299: ; preds = %bb.cq
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !43
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8
  call void %i.jn(ptr noundef nonnull align 8 dereferenceable(128) %i.jk) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit300

_ZN7testing7MessageD2Ev.exit300:                  ; preds = %bb.cq, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i299
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  %i.jo = load ptr, ptr %i.jg, align 8, !tbaa !94 ; 4 uses
  %.not.i.i301 = icmp eq ptr %i.jo, null
  br i1 %.not.i.i301, label %_ZN7testing15AssertionResultD2Ev.exit305, label %bb.cr

bb.cr:                                            ; preds = %_ZN7testing7MessageD2Ev.exit300
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !76 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 16 ; 2 uses
  %i.jr = icmp eq ptr %i.jp, %i.jq
  br i1 %i.jr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i303, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i302

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i302: ; preds = %bb.cr
  %i.js = load i64, ptr %i.jq, align 8, !tbaa !77
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jp, i64 noundef %i.jt) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i303

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i303: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i302
  call void @_ZdlPvm(ptr noundef nonnull %i.jo, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit305

_ZN7testing15AssertionResultD2Ev.exit305:         ; preds = %_ZN7testing7MessageD2Ev.exit300, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i303
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %bb.gs

bb.cs:                                            ; preds = %bb.cm
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit308

bb.ct:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit297
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cp
  %i.jw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #26
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.pn109 = phi { ptr, i32 } [ %i.jw, %bb.cu ], [ %i.jv, %bb.ct ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  %i.jx = load ptr, ptr %25, align 8, !tbaa !79   ; 3 uses
  %.not.i.i306 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i306, label %_ZN7testing7MessageD2Ev.exit308, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i307

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i307: ; preds = %bb.cv
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !43
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8
  call void %i.ka(ptr noundef nonnull align 8 dereferenceable(128) %i.jx) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit308

_ZN7testing7MessageD2Ev.exit308:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i307, %bb.cv, %bb.cs
  %.pn109.pn = phi { ptr, i32 } [ %i.ju, %bb.cs ], [ %.pn109, %bb.cv ], [ %.pn109, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i307 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %24) #26
  br label %bb.cy

.critedge154:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareIPKN4entt16basic_sparse_setINS3_6entityESaIS5_EEES9_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit295
  %i.kb = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !94 ; 4 uses
  %.not.i.i309 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i309, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %.critedge154
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !76 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 16 ; 2 uses
  %i.kf = icmp eq ptr %i.kd, %i.ke
  br i1 %i.kf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i311, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i310

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i310: ; preds = %bb.cw
  %i.kg = load i64, ptr %i.ke, align 8, !tbaa !77
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kh) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i311

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i311: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i310
  call void @_ZdlPvm(ptr noundef nonnull %i.kc, i64 noundef 32) #27
  br label %bb.cx

bb.cx:                                            ; preds = %.critedge154, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i311
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  %i.ki = load ptr, ptr %i.af, align 8, !tbaa !80
  %i.kj = load ptr, ptr %i.ae, align 8, !tbaa !81
  %i.kk = ptrtoint ptr %i.ki to i64
  %i.kl = ptrtoint ptr %i.kj to i64
  %i.km = sub i64 %i.kk, %i.kl
  %i.kn = load ptr, ptr %i.am, align 8, !tbaa !80
  %i.ko = load ptr, ptr %i.al, align 8, !tbaa !81
  %i.kp = ptrtoint ptr %i.kn to i64
  %i.kq = ptrtoint ptr %i.ko to i64
  %i.kr = sub i64 %i.kp, %i.kq
  %i.ks = icmp ult i64 %i.km, %i.kr               ; 2 uses
  %spec.select614 = select i1 %i.ks, ptr %1, ptr %i.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store ptr %spec.select614, ptr %i.d, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %27)
          to label %_ZN7testing8internal11CmpHelperNEIPKN4entt16basic_sparse_setINS2_6entityESaIS4_EEEDnEENS_15AssertionResultEPKcSB_RKT_RKT0_.exit320 unwind label %bb.cz

_ZN7testing8internal11CmpHelperNEIPKN4entt16basic_sparse_setINS2_6entityESaIS4_EEEDnEENS_15AssertionResultEPKcSB_RKT_RKT0_.exit320: ; preds = %bb.cx
  %i.kt = load i8, ptr %27, align 8, !tbaa !91, !range !92, !noundef !93
  %i.ku = trunc nuw i8 %i.kt to i1
  br i1 %i.ku, label %.critedge156, label %bb.da

bb.cy:                                            ; preds = %_ZN7testing7MessageD2Ev.exit308, %bb.cl
  %.pn109.pn.pn = phi { ptr, i32 } [ %.pn109.pn, %_ZN7testing7MessageD2Ev.exit308 ], [ %i.jf, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %bb.gv

bb.cz:                                            ; preds = %bb.cx
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.da:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIPKN4entt16basic_sparse_setINS2_6entityESaIS4_EEEDnEENS_15AssertionResultEPKcSB_RKT_RKT0_.exit320
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.db unwind label %bb.dg

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26
  %i.kw = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i321 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i321, label %_ZNK7testing15AssertionResult15failure_messageEv.exit322, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit322

_ZNK7testing15AssertionResult15failure_messageEv.exit322: ; preds = %bb.dc, %bb.db
  %i.kz = phi ptr [ %i.ky, %bb.dc ], [ @.str.319, %bb.db ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %29, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 817, ptr noundef %i.kz)
          to label %bb.dd unwind label %bb.dh

bb.dd:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit322
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.de unwind label %bb.di

bb.de:                                            ; preds = %bb.dd
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  %i.la = load ptr, ptr %28, align 8, !tbaa !79   ; 3 uses
  %.not.i.i323 = icmp eq ptr %i.la, null
  br i1 %.not.i.i323, label %_ZN7testing7MessageD2Ev.exit325, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i324

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i324: ; preds = %bb.de
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !43
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8
  call void %i.ld(ptr noundef nonnull align 8 dereferenceable(128) %i.la) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit325

_ZN7testing7MessageD2Ev.exit325:                  ; preds = %bb.de, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i324
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  %i.le = load ptr, ptr %i.kw, align 8, !tbaa !94 ; 4 uses
  %.not.i.i326 = icmp eq ptr %i.le, null
  br i1 %.not.i.i326, label %_ZN7testing15AssertionResultD2Ev.exit330, label %bb.df

bb.df:                                            ; preds = %_ZN7testing7MessageD2Ev.exit325
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !76 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 16 ; 2 uses
  %i.lh = icmp eq ptr %i.lf, %i.lg
  br i1 %i.lh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i327

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i327: ; preds = %bb.df
  %i.li = load i64, ptr %i.lg, align 8, !tbaa !77
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.lj) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i328

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i328: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i327
  call void @_ZdlPvm(ptr noundef nonnull %i.le, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit330

_ZN7testing15AssertionResultD2Ev.exit330:         ; preds = %_ZN7testing7MessageD2Ev.exit325, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i328
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  br label %bb.gr

bb.dg:                                            ; preds = %bb.da
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit333

bb.dh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit322
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.di:                                            ; preds = %bb.dd
  %i.lm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #26
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.pn113 = phi { ptr, i32 } [ %i.lm, %bb.di ], [ %i.ll, %bb.dh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  %i.ln = load ptr, ptr %28, align 8, !tbaa !79   ; 3 uses
  %.not.i.i331 = icmp eq ptr %i.ln, null
  br i1 %.not.i.i331, label %_ZN7testing7MessageD2Ev.exit333, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i332

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i332: ; preds = %bb.dj
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !43
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8
  call void %i.lq(ptr noundef nonnull align 8 dereferenceable(128) %i.ln) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit333

_ZN7testing7MessageD2Ev.exit333:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i332, %bb.dj, %bb.dg
  %.pn113.pn = phi { ptr, i32 } [ %i.lk, %bb.dg ], [ %.pn113, %bb.dj ], [ %.pn113, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i332 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %27) #26
  br label %bb.dm

.critedge156:                                     ; preds = %_ZN7testing8internal11CmpHelperNEIPKN4entt16basic_sparse_setINS2_6entityESaIS4_EEEDnEENS_15AssertionResultEPKcSB_RKT_RKT0_.exit320
  %i.lr = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !94 ; 4 uses
  %.not.i.i334 = icmp eq ptr %i.ls, null
  br i1 %.not.i.i334, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %.critedge156
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !76 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 16 ; 2 uses
  %i.lv = icmp eq ptr %i.lt, %i.lu
  br i1 %i.lv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i336, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i335

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i335: ; preds = %bb.dk
  %i.lw = load i64, ptr %i.lu, align 8, !tbaa !77
  %i.lx = add i64 %i.lw, 1
  call void @_ZdlPvm(ptr noundef %i.lt, i64 noundef %i.lx) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i336

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i336: ; preds = %bb.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i335
  call void @_ZdlPvm(ptr noundef nonnull %i.ls, i64 noundef 32) #27
  br label %bb.dl

bb.dl:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i336, %.critedge156
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26
  %i.ly = load ptr, ptr %i.d, align 8, !tbaa !126 ; 5 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 32
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !99
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ly, i64 40
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !99
  %i.md = icmp eq ptr %i.ma, %i.mc                ; 2 uses
  %i.me = zext i1 %i.md to i8
  store i8 %i.me, ptr %30, align 8, !tbaa !91
  %i.mf = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  store ptr null, ptr %i.mf, align 8, !tbaa !100
  br i1 %i.md, label %bb.dy, label %bb.dn

bb.dm:                                            ; preds = %_ZN7testing7MessageD2Ev.exit333, %bb.cz
  %.pn113.pn.pn = phi { ptr, i32 } [ %.pn113.pn, %_ZN7testing7MessageD2Ev.exit333 ], [ %i.kv, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  br label %bb.gu

bb.dn:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.do unwind label %bb.dt

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.dp unwind label %bb.du

bb.dp:                                            ; preds = %bb.do
  %i.mg = load ptr, ptr %33, align 8, !tbaa !76
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %32, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 819, ptr noundef %i.mg)
          to label %bb.dq unwind label %bb.dv

bb.dq:                                            ; preds = %bb.dp
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.dr unwind label %bb.dw

bb.dr:                                            ; preds = %bb.dq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #26
  %i.mh = load ptr, ptr %33, align 8, !tbaa !76   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt11_Tuple_implILm1EJN4entt13basic_storageIdNS0_6entityESaIdEEENS1_IN4test8internal10empty_typeES2_SaIS7_EEENS1_INS6_20pointer_stable_mixinINS6_10value_typeIiEEEES2_SaISD_EEENS1_IfS2_SaIfEEEEEC2Ev:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIN4test8internal10empty_typeEEERKNS_9type_infoEvE8instance) #26
  %.not.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11_Tuple_implILm2EJN4entt13basic_storageIN4test8internal10empty_typeENS0_6entityESaIS4_EEENS1_INS3_20pointer_stable_mixinINS3_10value_typeIiEEEES5_SaISB_EEENS1_IfS5_SaIfEEEEEC2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IN4test8internal10empty_typeEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIN4test8internal10empty_typeEEERKNS_9type_infoEvE8instance) #26
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIN4test8internal10empty_typeEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIN4test8internal10empty_typeEEERKNS_9type_infoEvE8instance) #26
  br label %_ZNSt11_Tuple_implILm2EJN4entt13basic_storageIN4test8internal10empty_typeENS0_6entityESaIS4_EEENS1_INS3_20pointer_stable_mixinINS3_10value_typeIiEEEES5_SaISB_EEENS1_IfS5_SaIfEEEEEC2Ev.exit

_ZNSt11_Tuple_implILm2EJN4entt13basic_storageIN4test8internal10empty_typeENS0_6entityESaIS4_EEENS1_INS3_20pointer_stable_mixinINS3_10value_typeIiEEEES5_SaISB_EEENS1_IfS5_SaIfEEEEEC2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i8 0, i64 48, i1 false)
  store ptr @_ZZN4entt7type_idIN4test8internal10empty_typeEEERKNS_9type_infoEvE8instance, ptr %i.g, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i8 0, ptr %i.h, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 1048575, ptr %i.i, align 8, !tbaa !70
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt13basic_storageIN4test8internal10empty_typeENS_6entityESaIS3_EEE, i64 16), ptr %i.e, align 8, !tbaa !43
  %i.j = load atomic i8, ptr @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.f, !prof !55

bb.d:                                             ; preds = %_ZNSt11_Tuple_implILm2EJN4entt13basic_storageIN4test8internal10empty_typeENS0_6entityESaIS4_EEENS1_INS3_20pointer_stable_mixinINS3_10value_typeIiEEEES5_SaISB_EEENS1_IfS5_SaIfEEEEEC2Ev.exit
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  %.not.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4entt9type_infoC2IdEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  %i.m = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZNSt11_Tuple_implILm2EJN4entt13basic_storageIN4test8internal10empty_typeENS0_6entityESaIS4_EEENS1_INS3_20pointer_stable_mixinINS3_10value_typeIiEEEES5_SaISB_EEENS1_IfS5_SaIfEEEEEC2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i8 0, i64 48, i1 false)
  store ptr @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance, ptr %i.p, align 8, !tbaa !68
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i8 0, ptr %i.q, align 8, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 1048575, ptr %i.r, align 8, !tbaa !70
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt13basic_storageIdNS_6entityESaIdEEE, i64 16), ptr %i.n, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt11_Tuple_implILm3EJN4entt13basic_storageIN4test8internal20pointer_stable_mixinINS3_10value_typeIiEEEENS0_6entityESaIS7_EEENS1_IfS8_SaIfEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt7type_idIfEERKNS_9type_infoEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZNSt11_Tuple_implILm4EJN4entt13basic_storageIfNS0_6entityESaIfEEEEEC2Ev.exit, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIfEERKNS_9type_infoEvE8instance) #26
  %.not.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11_Tuple_implILm4EJN4entt13basic_storageIfNS0_6entityESaIfEEEEEC2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IfEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIfEERKNS_9type_infoEvE8instance) #26
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIfEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIfEERKNS_9type_infoEvE8instance) #26
  br label %_ZNSt11_Tuple_implILm4EJN4entt13basic_storageIfNS0_6entityESaIfEEEEEC2Ev.exit

_ZNSt11_Tuple_implILm4EJN4entt13basic_storageIfNS0_6entityESaIfEEEEEC2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  store ptr @_ZZN4entt7type_idIfEERKNS_9type_infoEvE8instance, ptr %i.f, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.g, align 8, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 1048575, ptr %i.h, align 8, !tbaa !70
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt13basic_storageIfNS_6entityESaIfEEE, i64 16), ptr %0, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.j = load atomic i8, ptr @_ZGVZN4entt7type_idIN4test8internal20pointer_stable_mixinINS2_10value_typeIiEEEEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.f, !prof !55

bb.d:                                             ; preds = %_ZNSt11_Tuple_implILm4EJN4entt13basic_storageIfNS0_6entityESaIfEEEEEC2Ev.exit
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIN4test8internal20pointer_stable_mixinINS2_10value_typeIiEEEEEERKNS_9type_infoEvE8instance) #26
  %.not.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4entt9type_infoC2IN4test8internal20pointer_stable_mixinINS3_10value_typeIiEEEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIN4test8internal20pointer_stable_mixinINS2_10value_typeIiEEEEEERKNS_9type_infoEvE8instance) #26
  %i.m = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIN4test8internal20pointer_stable_mixinINS2_10value_typeIiEEEEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIN4test8internal20pointer_stable_mixinINS2_10value_typeIiEEEEEERKNS_9type_infoEvE8instance) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZNSt11_Tuple_implILm4EJN4entt13basic_storageIfNS0_6entityESaIfEEEEEC2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i8 0, i64 48, i1 false)
  store ptr @_ZZN4entt7type_idIN4test8internal20pointer_stable_mixinINS2_10value_typeIiEEEEEERKNS_9type_infoEvE8instance, ptr %i.p, align 8, !tbaa !68
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 1, ptr %i.q, align 8, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 1048575, ptr %i.r, align 8, !tbaa !70
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt13basic_storageIN4test8internal20pointer_stable_mixinINS2_10value_typeIiEEEENS_6entityESaIS6_EEE, i64 16), ptr %i.n, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt7type_idIvEERKNS_9type_infoEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt7type_idIvEERKNS_9type_infoEv.exit, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIvEERKNS_9type_infoEvE8instance) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt7type_idIvEERKNS_9type_infoEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IvEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIvEERKNS_9type_infoEvE8instance) #26
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIvEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIvEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIvEERKNS_9type_infoEv.exit

_ZN4entt7type_idIvEERKNS_9type_infoEv.exit:       ; preds = %bb.a, %bb.b, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt16basic_sparse_setINS_6entityESaIS1_EEE, i64 16), ptr %0, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  store ptr @_ZZN4entt7type_idIvEERKNS_9type_infoEvE8instance, ptr %i.f, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.g, align 8, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 1048575, ptr %i.h, align 8, !tbaa !70
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2IvEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexIvE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexIvE5valueEv.exit, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexIvE5valueEvE5value) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexIvE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !98 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !98
  store i32 %i.d, ptr @_ZZN4entt10type_indexIvE5valueEvE5value, align 4, !tbaa !98
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexIvE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexIvE5valueEvE5value) #26
  br label %_ZN4entt10type_indexIvE5valueEv.exit

_ZN4entt10type_indexIvE5valueEv.exit:             ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexIvE5valueEvE5value, align 4, !tbaa !98
  store i32 %i.g, ptr %0, align 8, !tbaa !229
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1219850847, ptr %i.h, align 4, !tbaa !191
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.326, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt8internal9view_packINS_10basic_viewINS_5get_tIJNS_13basic_storageIiNS_6entityESaIiEEEKS7_NS4_IN4test8internal10empty_typeES5_SaISB_EEEEEENS_9exclude_tIJKNS4_IdS5_SaIdEEENS4_IfS5_SaIfEEEEEEEENS2_INS3_IJS7_S8_EEESL_EENS2_INS3_IJSD_EEENSF_IJEEEEEJLm0ELm1EEJLm0ELm1EEJLm0EETpTnmJEEET_RKT0_RKT1_St16integer_sequenceImJXspT2_EEESZ_ImJXspT3_EEESZ_ImJXspT4_EEESZ_ImJXspT5_EEE(ptr dead_on_unwind noalias writable sret(%"class.entt::basic_view.462") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 40, i1 false)
  %i.a = load atomic i8, ptr @_ZGVZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %.lr.ph.preheader.i, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder) #26
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %.lr.ph.preheader.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EED2Ev, ptr nonnull @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder) #26
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a, %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder, ptr %i.f, align 8, !tbaa !230
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store i64 3, ptr %i.g, align 8, !tbaa !223
  %i.h = load ptr, ptr %1, align 8, !tbaa !126    ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !126  ; 4 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !217    ; 4 uses
  store ptr %i.h, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !77
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !167
  %i.o = load <2 x ptr>, ptr %i.l, align 8, !tbaa !126 ; 2 uses
  %i.p = insertelement <2 x ptr> poison, ptr %i.n, i64 0
  %i.q = shufflevector <2 x ptr> %i.p, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.r = icmp eq <2 x ptr> %i.o, %i.q
  %i.s = select <2 x i1> %i.r, <2 x ptr> splat (ptr null), <2 x ptr> %i.o ; 2 uses
  %i.t = icmp eq <2 x ptr> %i.s, splat (ptr null)
  %i.u = select <2 x i1> %i.t, <2 x ptr> <ptr @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder, ptr @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder>, <2 x ptr> %i.s
  store <2 x ptr> %i.u, ptr %i.e, align 8
  %.not4.i = icmp eq ptr %i.h, null
  %.not4.i.1 = icmp eq ptr %i.j, null
  %or.cond = select i1 %.not4.i, i1 true, i1 %.not4.i.1
  %.not4.i.2 = icmp eq ptr %i.k, null
  %or.cond13 = select i1 %or.cond, i1 true, i1 %.not4.i.2
  br i1 %or.cond13, label %_ZN4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm3ELm2EE7refreshEv.exit, label %select.unfold.i.2

select.unfold.i.2:                                ; preds = %.lr.ph.preheader.i
  store i64 0, ptr %i.g, align 8, !tbaa !223
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !80
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !81
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !80
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !81
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = icmp ult i64 %i.ab, %i.ai
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %select.unfold.i.2
  store i64 1, ptr %i.g, align 8, !tbaa !223
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %select.unfold.i.2
  %.pre-phi9.i.i = phi i64 [ %i.ai, %select.unfold.i.2 ], [ %i.ab, %bb.d ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !80
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !81
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = icmp ult i64 %i.aq, %.pre-phi9.i.i
  br i1 %i.ar, label %bb.f, label %_ZN4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm3ELm2EE7refreshEv.exit

bb.f:                                             ; preds = %bb.e
  store i64 2, ptr %i.g, align 8, !tbaa !223
  br label %_ZN4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm3ELm2EE7refreshEv.exit

_ZN4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm3ELm2EE7refreshEv.exit: ; preds = %.lr.ph.preheader.i, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt8internal9view_packINS_10basic_viewINS_5get_tIJNS_13basic_storageIiNS_6entityESaIiEEEKNS4_IN4test8internal20pointer_stable_mixinINS9_10value_typeIiEEEES5_SaISD_EEEKS7_EEENS_9exclude_tIJKNS4_IdS5_SaIdEEENS4_IfS5_SaIfEEEEEEEENS2_INS3_IJS7_SG_EEENSJ_IJSM_EEEEENS2_INS3_IJSH_EEENSJ_IJSO_EEEEEJLm0ELm1EEJLm0EEJLm0EEJLm0EEEET_RKT0_RKT1_St16integer_sequenceImJXspT2_EEES14_ImJXspT3_EEES14_ImJXspT4_EEES14_ImJXspT5_EEE(ptr dead_on_unwind noalias writable sret(%"class.entt::basic_view.464") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 40, i1 false)
  %i.a = load atomic i8, ptr @_ZGVZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %.lr.ph.preheader.i, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder) #26
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %.lr.ph.preheader.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EED2Ev, ptr nonnull @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder) #26
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a, %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder, ptr %i.f, align 8, !tbaa !230
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store i64 3, ptr %i.g, align 8, !tbaa !223
  %i.h = load ptr, ptr %1, align 8, !tbaa !126    ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !126  ; 4 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !126    ; 4 uses
  store ptr %i.h, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !77
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load <2 x ptr>, ptr %i.l, align 8, !tbaa !126 ; 2 uses
  %i.o = load <2 x ptr>, ptr %i.m, align 8, !tbaa !126 ; 2 uses
  %i.p = shufflevector <2 x ptr> %i.n, <2 x ptr> %i.o, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.q = shufflevector <2 x ptr> %i.n, <2 x ptr> %i.o, <2 x i32> <i32 1, i32 3>
  %i.r = icmp eq <2 x ptr> %i.p, %i.q
  %i.s = select <2 x i1> %i.r, <2 x ptr> splat (ptr null), <2 x ptr> %i.p ; 2 uses
  %i.t = icmp eq <2 x ptr> %i.s, splat (ptr null)
  %i.u = select <2 x i1> %i.t, <2 x ptr> <ptr @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder, ptr @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder>, <2 x ptr> %i.s
  store <2 x ptr> %i.u, ptr %i.e, align 8
  %.not4.i = icmp eq ptr %i.h, null
  %.not4.i.1 = icmp eq ptr %i.j, null
  %or.cond = select i1 %.not4.i, i1 true, i1 %.not4.i.1
  %.not4.i.2 = icmp eq ptr %i.k, null
  %or.cond13 = select i1 %or.cond, i1 true, i1 %.not4.i.2
  br i1 %or.cond13, label %_ZN4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm3ELm2EE7refreshEv.exit, label %select.unfold.i.2

select.unfold.i.2:                                ; preds = %.lr.ph.preheader.i
  store i64 0, ptr %i.g, align 8, !tbaa !223
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !80
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !81
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !80
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !81
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = icmp ult i64 %i.ab, %i.ai
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %select.unfold.i.2
  store i64 1, ptr %i.g, align 8, !tbaa !223
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %select.unfold.i.2
  %.pre-phi9.i.i = phi i64 [ %i.ai, %select.unfold.i.2 ], [ %i.ab, %bb.d ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !80
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !81
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = icmp ult i64 %i.aq, %.pre-phi9.i.i
  br i1 %i.ar, label %bb.f, label %_ZN4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm3ELm2EE7refreshEv.exit

bb.f:                                             ; preds = %bb.e
  store i64 2, ptr %i.g, align 8, !tbaa !223
  br label %_ZN4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm3ELm2EE7refreshEv.exit

_ZN4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm3ELm2EE7refreshEv.exit: ; preds = %.lr.ph.preheader.i, %bb.e, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI22View_PipeNoFilter_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI22View_PipeNoFilter_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV22View_PipeNoFilter_Test, i64 16), ptr %i.a, align 8, !tbaa !43
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #27
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI29View_PipeWithPlaceholder_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI29View_PipeWithPlaceholder_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV29View_PipeWithPlaceholder_Test, i64 16), ptr %i.a, align 8, !tbaa !43
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #27
  resume { ptr, i32 } %i.b
}

declare noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext) local_unnamed_addr #0

declare void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, ptr noundef, i32 noundef) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4)) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4entt13basic_storageIcNS_6entityESaIcEE6get_atEm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = lshr i64 %1, 10
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !106
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !107
  %i.f = and i64 %1, 1023
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  ret ptr %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt13basic_storageIcNS_6entityESaIcEE12swap_or_moveEmm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = lshr i64 %1, 10
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !107
  %i.f = and i64 %1, 1023
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f ; 2 uses
  %i.h = lshr i64 %2, 10
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !107
  %i.k = and i64 %2, 1023
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k ; 2 uses
  %i.m = load i8, ptr %i.g, align 1, !tbaa !77
  %i.n = load i8, ptr %i.l, align 1, !tbaa !77
  store i8 %i.n, ptr %i.g, align 1, !tbaa !77
  store i8 %i.m, ptr %i.l, align 1, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt13basic_storageIcNS_6entityESaIcEE3popENS_8internal19sparse_set_iteratorISt6vectorIS1_SaIS1_EEEES9_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, i64 %2, ptr %3, i64 %4) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %2, %4
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !81
  %.pre9 = load ptr, ptr %i.b, align 8, !tbaa !103
  %.pre10 = load ptr, ptr %i.e, align 8, !tbaa !80
  %.pre11 = load ptr, ptr %i.d, align 8, !tbaa !81
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
end_hunk_1
