Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/resource?download=true
inline.NumInlined: 1495
inline.NumDeleted: 523
begin_hunk_0_@_ZN29Resource_Functionalities_Test8TestBodyEv:bb.a
bb.cf:                                            ; preds = %bb.cd
  %i.gt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i384 = icmp eq i8 %i.gt, 0
  br i1 %.not.i.i.i384, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.gu = add nsw i32 %i.gl, -1
  store i32 %i.gu, ptr %i.gi, align 8, !tbaa !62
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i385

bb.ch:                                            ; preds = %bb.cf
  %i.gv = atomicrmw volatile add ptr %i.gi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i385

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i385: ; preds = %bb.ch, %bb.cg
  %.0.i.i.i.i386 = phi i32 [ %i.gl, %bb.cg ], [ %i.gv, %bb.ch ]
  %i.gw = icmp eq i32 %.0.i.i.i.i386, 1
  br i1 %i.gw, label %bb.ci, label %_ZNSt12__shared_ptrI7derivedLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit387, !prof !66

bb.ci:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i385
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gh) #18
  br label %_ZNSt12__shared_ptrI7derivedLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit387

_ZNSt12__shared_ptrI7derivedLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit387: ; preds = %_ZN7testing8internal8EqHelper7CompareIllTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit382, %bb.ce, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i385, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  %i.gx = load i8, ptr %20, align 8, !tbaa !43, !range !44, !noundef !45
  %i.gy = trunc nuw i8 %i.gx to i1
  br i1 %i.gy, label %.critedge210, label %bb.cl

bb.cj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit369, %bb.bo
  %.pn141.pn.pn = phi { ptr, i32 } [ %.pn141.pn, %_ZN7testing7MessageD2Ev.exit369 ], [ %i.eu, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %bb.kj

bb.ck:                                            ; preds = %bb.cc, %bb.cb
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @_ZNSt12__shared_ptrI7derivedLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  br label %bb.da

bb.cl:                                            ; preds = %_ZNSt12__shared_ptrI7derivedLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit387
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.cm unwind label %bb.cr

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  %i.ha = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i388 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i388, label %_ZNK7testing15AssertionResult15failure_messageEv.exit389, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit389

_ZNK7testing15AssertionResult15failure_messageEv.exit389: ; preds = %bb.cn, %bb.cm
  %i.hd = phi ptr [ %i.hc, %bb.cn ], [ @.str.48, %bb.cm ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %23, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 45, ptr noundef %i.hd)
          to label %bb.co unwind label %bb.cs

bb.co:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit389
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.cp unwind label %bb.ct

bb.cp:                                            ; preds = %bb.co
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  %i.he = load ptr, ptr %22, align 8, !tbaa !52   ; 3 uses
  %.not.i.i390 = icmp eq ptr %i.he, null
  br i1 %.not.i.i390, label %_ZN7testing7MessageD2Ev.exit392, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i391

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i391: ; preds = %bb.cp
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !22
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(128) %i.he) #18, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit392

_ZN7testing7MessageD2Ev.exit392:                  ; preds = %bb.cp, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i391
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  %i.hi = load ptr, ptr %i.ha, align 8, !tbaa !46 ; 4 uses
  %.not.i.i393 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i393, label %_ZN7testing15AssertionResultD2Ev.exit397, label %bb.cq

bb.cq:                                            ; preds = %_ZN7testing7MessageD2Ev.exit392
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !50 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 16 ; 2 uses
  %i.hl = icmp eq ptr %i.hj, %i.hk
  br i1 %i.hl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i395, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i394

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i394: ; preds = %bb.cq
  %i.hm = load i64, ptr %i.hk, align 8, !tbaa !53
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hn) #19
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i395

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i395: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i394
  call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef 32) #19
  br label %_ZN7testing15AssertionResultD2Ev.exit397

_ZN7testing15AssertionResultD2Ev.exit397:         ; preds = %_ZN7testing7MessageD2Ev.exit392, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i395
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.jn

bb.cr:                                            ; preds = %bb.cl
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit400

bb.cs:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit389
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ct:                                            ; preds = %bb.co
  %i.hq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #18
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.pn145 = phi { ptr, i32 } [ %i.hq, %bb.ct ], [ %i.hp, %bb.cs ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  %i.hr = load ptr, ptr %22, align 8, !tbaa !52   ; 3 uses
  %.not.i.i398 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i398, label %_ZN7testing7MessageD2Ev.exit400, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i399

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i399: ; preds = %bb.cu
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !22
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(128) %i.hr) #18, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit400

_ZN7testing7MessageD2Ev.exit400:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i399, %bb.cu, %bb.cr
  %.pn145.pn = phi { ptr, i32 } [ %i.ho, %bb.cr ], [ %.pn145, %bb.cu ], [ %.pn145, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i399 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #18
  br label %bb.da

.critedge210:                                     ; preds = %_ZNSt12__shared_ptrI7derivedLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit387
  %i.hv = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !46 ; 4 uses
  %.not.i.i401 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i401, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %.critedge210
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !50 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 16 ; 2 uses
  %i.hz = icmp eq ptr %i.hx, %i.hy
  br i1 %i.hz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i403, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i402

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i402: ; preds = %bb.cv
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !53
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ib) #19
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i403

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i403: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i402
  call void @_ZdlPvm(ptr noundef nonnull %i.hw, i64 noundef 32) #19
  br label %bb.cw

bb.cw:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i403, %.critedge210
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  %i.ic = load ptr, ptr %1, align 8, !tbaa !64    ; 3 uses
  store ptr %i.ic, ptr %24, align 8, !tbaa !64
  %i.id = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 7 uses
  %i.ie = load ptr, ptr %i.an, align 8, !tbaa !59 ; 3 uses
  store ptr %i.ie, ptr %i.id, align 8, !tbaa !59
  %.not.i.i.i.i406 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i.i406, label %_ZN4entt8resourceI7derivedEC2ERKS2_.exit, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8 ; 3 uses
  %i.ig = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i.i407 = icmp eq i8 %i.ig, 0
  br i1 %.not.i.i.i.i.i407, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ih = load i32, ptr %i.if, align 4, !tbaa !62
  %i.ii = add nsw i32 %i.ih, 1
  store i32 %i.ii, ptr %i.if, align 4, !tbaa !62
  br label %_ZN4entt8resourceI7derivedEC2ERKS2_.exit

bb.cz:                                            ; preds = %bb.cx
  %i.ij = atomicrmw volatile add ptr %i.if, i32 1 acq_rel, align 4 ; 0 uses
  %.pre621 = load ptr, ptr %24, align 8, !tbaa !64
  br label %_ZN4entt8resourceI7derivedEC2ERKS2_.exit

_ZN4entt8resourceI7derivedEC2ERKS2_.exit:         ; preds = %bb.cw, %bb.cy, %bb.cz
  %i.ik = phi ptr [ %i.ic, %bb.cw ], [ %i.ic, %bb.cy ], [ %.pre621, %bb.cz ]
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #18
  %i.il = load ptr, ptr %10, align 8, !tbaa !64   ; 4 uses
  store ptr %i.il, ptr %25, align 8, !tbaa !64
  %i.im = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 5 uses
  %i.in = load ptr, ptr %i.cg, align 8, !tbaa !59 ; 3 uses
  store ptr null, ptr %i.cg, align 8, !tbaa !59
  store ptr %i.in, ptr %i.im, align 8, !tbaa !59
  store ptr null, ptr %10, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #18
  %.not = icmp eq ptr %i.ik, null                 ; 2 uses
  %i.io = zext i1 %.not to i8
  store i8 %i.io, ptr %26, align 8, !tbaa !43
  %i.ip = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  store ptr null, ptr %i.ip, align 8, !tbaa !67
  br i1 %.not, label %bb.dm, label %bb.db

bb.da:                                            ; preds = %_ZN7testing7MessageD2Ev.exit400, %bb.ck
  %.pn145.pn.pn = phi { ptr, i32 } [ %.pn145.pn, %_ZN7testing7MessageD2Ev.exit400 ], [ %i.gz, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.kj

bb.db:                                            ; preds = %_ZN4entt8resourceI7derivedEC2ERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.dc unwind label %bb.dh

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #18
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.dd unwind label %bb.di

bb.dd:                                            ; preds = %bb.dc
  %i.iq = load ptr, ptr %29, align 8, !tbaa !50
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %28, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 50, ptr noundef %i.iq)
          to label %bb.de unwind label %bb.dj

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.df unwind label %bb.dk

bb.df:                                            ; preds = %bb.de
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #18
  %i.ir = load ptr, ptr %29, align 8, !tbaa !50   ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.it = icmp eq ptr %i.ir, %i.is
  br i1 %i.it, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i408

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i408: ; preds = %bb.df
  %i.iu = load i64, ptr %i.is, align 8, !tbaa !53
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iv) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i408
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  %i.iw = load ptr, ptr %27, align 8, !tbaa !52   ; 3 uses
  %.not.i.i411 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i411, label %_ZN7testing7MessageD2Ev.exit413, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i412

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i412: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !22
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(128) %i.iw) #18, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit413

_ZN7testing7MessageD2Ev.exit413:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i412
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  %i.ja = load ptr, ptr %i.ip, align 8, !tbaa !46 ; 4 uses
  %.not.i.i414 = icmp eq ptr %i.ja, null
  br i1 %.not.i.i414, label %_ZN7testing15AssertionResultD2Ev.exit418, label %bb.dg

bb.dg:                                            ; preds = %_ZN7testing7MessageD2Ev.exit413
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !50 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 16 ; 2 uses
  %i.jd = icmp eq ptr %i.jb, %i.jc
  br i1 %i.jd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i416, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i415

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i415: ; preds = %bb.dg
  %i.je = load i64, ptr %i.jc, align 8, !tbaa !53
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.jf) #19
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i416

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i416: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i415
  call void @_ZdlPvm(ptr noundef nonnull %i.ja, i64 noundef 32) #19
  br label %_ZN7testing15AssertionResultD2Ev.exit418

_ZN7testing15AssertionResultD2Ev.exit418:         ; preds = %_ZN7testing7MessageD2Ev.exit413, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i416
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  br label %bb.ja

bb.dh:                                            ; preds = %bb.db
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit424

bb.di:                                            ; preds = %bb.dc
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421

bb.dj:                                            ; preds = %bb.dd
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.dk:                                            ; preds = %bb.de
  %i.jj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #18
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.pn149 = phi { ptr, i32 } [ %i.jj, %bb.dk ], [ %i.ji, %bb.dj ] ; 2 uses
  %i.jk = load ptr, ptr %29, align 8, !tbaa !50   ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.jm = icmp eq ptr %i.jk, %i.jl
  br i1 %i.jm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419: ; preds = %bb.dl
  %i.jn = load i64, ptr %i.jl, align 8, !tbaa !53
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jo) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421: ; preds = %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419, %bb.di
  %.pn149.pn = phi { ptr, i32 } [ %i.jh, %bb.di ], [ %.pn149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419 ], [ %.pn149, %bb.dl ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  %i.jp = load ptr, ptr %27, align 8, !tbaa !52   ; 3 uses
  %.not.i.i422 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i422, label %_ZN7testing7MessageD2Ev.exit424, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i423

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i423: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !22
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load ptr, ptr %i.jr, align 8
  call void %i.js(ptr noundef nonnull align 8 dereferenceable(128) %i.jp) #18, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit424

_ZN7testing7MessageD2Ev.exit424:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i423, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421, %bb.dh
  %.pn149.pn.pn = phi { ptr, i32 } [ %i.jg, %bb.dh ], [ %.pn149.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421 ], [ %.pn149.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i423 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %26) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  br label %bb.ki

bb.dm:                                            ; preds = %_ZN4entt8resourceI7derivedEC2ERKS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #18
  %i.jt = icmp ne ptr %i.il, null                 ; 2 uses
  %i.ju = zext i1 %i.jt to i8
  store i8 %i.ju, ptr %30, align 8, !tbaa !43
  %i.jv = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  store ptr null, ptr %i.jv, align 8, !tbaa !67
  br i1 %i.jt, label %bb.dy, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.do unwind label %bb.dt

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #18
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4)
          to label %bb.dp unwind label %bb.du

bb.dp:                                            ; preds = %bb.do
  %i.jw = load ptr, ptr %33, align 8, !tbaa !50
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %32, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 51, ptr noundef %i.jw)
          to label %bb.dq unwind label %bb.dv

bb.dq:                                            ; preds = %bb.dp
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.dr unwind label %bb.dw

bb.dr:                                            ; preds = %bb.dq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #18
  %i.jx = load ptr, ptr %33, align 8, !tbaa !50   ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.jz = icmp eq ptr %i.jx, %i.jy
  br i1 %i.jz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430: ; preds = %bb.dr
  %i.ka = load i64, ptr %i.jy, align 8, !tbaa !53
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.kb) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432: ; preds = %bb.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  %i.kc = load ptr, ptr %31, align 8, !tbaa !52   ; 3 uses
  %.not.i.i433 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i433, label %_ZN7testing7MessageD2Ev.exit435, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i434

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i434: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !22
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
end_hunk_0
