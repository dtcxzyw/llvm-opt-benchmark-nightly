Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/path_builder_unittest?download=true
inline.NumInlined: 10761
inline.NumDeleted: 1850
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN4bssl12_GLOBAL__N_162PathBuilderKeyRolloverTest_TestRolloverOnlyOldRootTrusted_Test8TestBodyEv:bb.a
  %i.pt = phi ptr [ %i.ps, %bb.gr ], [ @.str.136, %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %41, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1154, ptr noundef %i.pt)
          to label %bb.gs unwind label %bb.gw

bb.gs:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit286
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %bb.gt unwind label %bb.gx

bb.gt:                                            ; preds = %bb.gs
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %41) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #29
  %i.pu = load ptr, ptr %40, align 8, !tbaa !428  ; 3 uses
  %.not.i.i287 = icmp eq ptr %i.pu, null
  br i1 %.not.i.i287, label %_ZN7testing7MessageD2Ev.exit289, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i288

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i288: ; preds = %bb.gt
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !355
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %i.px = load ptr, ptr %i.pw, align 8
  call void %i.px(ptr noundef nonnull align 8 dereferenceable(128) %i.pu) #29, !call_target !437, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit289

_ZN7testing7MessageD2Ev.exit289:                  ; preds = %bb.gt, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i288
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #29
  br label %bb.ha

bb.gu:                                            ; preds = %bb.go
  %i.py = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit292

bb.gv:                                            ; preds = %bb.gq, %bb.gp
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %bb.gz

bb.gw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit286
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %bb.gy

bb.gx:                                            ; preds = %bb.gs
  %i.qb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %41) #29
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %.pn98 = phi { ptr, i32 } [ %i.qb, %bb.gx ], [ %i.qa, %bb.gw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #29
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gv
  %.pn98.pn = phi { ptr, i32 } [ %.pn98, %bb.gy ], [ %i.pz, %bb.gv ] ; 2 uses
  %i.qc = load ptr, ptr %40, align 8, !tbaa !428  ; 3 uses
  %.not.i.i290 = icmp eq ptr %i.qc, null
  br i1 %.not.i.i290, label %_ZN7testing7MessageD2Ev.exit292, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i291

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i291: ; preds = %bb.gz
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !355
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %i.qf = load ptr, ptr %i.qe, align 8
  call void %i.qf(ptr noundef nonnull align 8 dereferenceable(128) %i.qc) #29, !call_target !437, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit292

_ZN7testing7MessageD2Ev.exit292:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i291, %bb.gz, %bb.gu
  %.pn98.pn.pn = phi { ptr, i32 } [ %i.py, %bb.gu ], [ %.pn98.pn, %bb.gz ], [ %.pn98.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i291 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %39) #29
  br label %bb.hd

bb.ha:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4bssl11VerifyError10StatusCodeES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit, %_ZN7testing7MessageD2Ev.exit289
  %i.qg = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !438 ; 4 uses
  %.not.i.i293 = icmp eq ptr %i.qh, null
  br i1 %.not.i.i293, label %_ZN7testing15AssertionResultD2Ev.exit297, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !351 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qh, i64 16 ; 2 uses
  %i.qk = icmp eq ptr %i.qi, %i.qj
  br i1 %i.qk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i295, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i294

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i294: ; preds = %bb.hb
  %i.ql = load i64, ptr %i.qj, align 8, !tbaa !352
  %i.qm = add i64 %i.ql, 1
  call void @_ZdlPvm(ptr noundef %i.qi, i64 noundef %i.qm) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i295

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i295: ; preds = %bb.hb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i294
  call void @_ZdlPvm(ptr noundef nonnull %i.qh, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit297

_ZN7testing15AssertionResultD2Ev.exit297:         ; preds = %bb.ha, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i295
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #29
  %i.qn = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !351 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %38, i64 32 ; 2 uses
  %i.qq = icmp eq ptr %i.qo, %i.qp
  br i1 %i.qq, label %_ZN4bssl11VerifyErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit297
  %i.qr = load i64, ptr %i.qp, align 8, !tbaa !352
  %i.qs = add i64 %i.qr, 1
  call void @_ZdlPvm(ptr noundef %i.qo, i64 noundef %i.qs) #31
  br label %_ZN4bssl11VerifyErrorD2Ev.exit

_ZN4bssl11VerifyErrorD2Ev.exit:                   ; preds = %_ZN7testing15AssertionResultD2Ev.exit297, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #29
  br label %bb.hc

bb.hc:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit210, %_ZN7testing15AssertionResultD2Ev.exit156, %_ZN4bssl11VerifyErrorD2Ev.exit
  call void @_ZN4bssl15CertPathBuilder6ResultD1Ev(ptr noundef nonnull align 8 dead_on_return(42) dereferenceable(42) %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @_ZN4bssl15CertPathBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @_ZN4bssl22CertIssuerSourceStaticD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @_ZN4bssl18TrustStoreInMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  ret void

bb.hd:                                            ; preds = %_ZN7testing7MessageD2Ev.exit292, %bb.gn
  %.pn98.pn.pn.pn = phi { ptr, i32 } [ %.pn98.pn.pn, %_ZN7testing7MessageD2Ev.exit292 ], [ %.pn96, %bb.gn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #29
  %i.qt = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !351 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %38, i64 32 ; 2 uses
  %i.qw = icmp eq ptr %i.qu, %i.qv
  br i1 %i.qw, label %_ZN4bssl11VerifyErrorD2Ev.exit300, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i298

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i298: ; preds = %bb.hd
  %i.qx = load i64, ptr %i.qv, align 8, !tbaa !352
  %i.qy = add i64 %i.qx, 1
  call void @_ZdlPvm(ptr noundef %i.qu, i64 noundef %i.qy) #31
  br label %_ZN4bssl11VerifyErrorD2Ev.exit300

_ZN4bssl11VerifyErrorD2Ev.exit300:                ; preds = %bb.hd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i298, %bb.gk
  %.pn98.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pg, %bb.gk ], [ %.pn98.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i298 ], [ %.pn98.pn.pn.pn, %bb.hd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #29
  br label %bb.he

bb.he:                                            ; preds = %bb.ct, %bb.dj, %bb.dz, %bb.eo, %bb.fd, %bb.fs, %bb.gj, %_ZN4bssl11VerifyErrorD2Ev.exit300, %bb.cf, %bb.bp
  %.pn98.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.bp ], [ %.pn63.pn.pn, %bb.cf ], [ %.pn98.pn.pn.pn.pn, %_ZN4bssl11VerifyErrorD2Ev.exit300 ], [ %.pn92.pn.pn, %bb.gj ], [ %.pn88.pn.pn, %bb.fs ], [ %.pn84.pn.pn, %bb.fd ], [ %.pn80.pn.pn, %bb.eo ], [ %.pn76.pn.pn, %bb.dz ], [ %.pn71.pn.pn.pn, %bb.dj ], [ %.pn67.pn.pn, %bb.ct ]
  call void @_ZN4bssl15CertPathBuilder6ResultD1Ev(ptr noundef nonnull align 8 dead_on_return(42) dereferenceable(42) %8) #29
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.az
  %.pn98.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn98.pn.pn.pn.pn.pn.pn, %bb.he ], [ %i.dz, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.ay
  %.pn98.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn98.pn.pn.pn.pn.pn.pn.pn, %bb.hf ], [ %i.dy, %bb.ay ]
  call void @_ZN4bssl15CertPathBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %6) #29
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.ax
  %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn98.pn.pn.pn.pn.pn.pn.pn.pn, %bb.hg ], [ %i.dx, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.aw, %bb.av
  %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.hh ], [ %i.dw, %bb.aw ], [ %i.dv, %bb.av ]
  call void @_ZN4bssl22CertIssuerSourceStaticD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #29
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.au
  %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.hi ], [ %i.du, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.at
  %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.hj ], [ %i.dt, %bb.at ]
  call void @_ZN4bssl18TrustStoreInMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  resume { ptr, i32 } %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN4bssl25SimplePathBuilderDelegateC1EmNS0_12DigestPolicyE(ptr noundef nonnull align 8 dereferenceable(20), i64 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: cold inlinehint mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define internal void @_ZN4bssl12_GLOBAL__N_126PathBuilderKeyRolloverTestD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

declare void @_ZN4bssl19VerifyCertChainTestC1Ev(ptr noundef nonnull align 8 dereferenceable(188)) unnamed_addr #0

declare noundef zeroext i1 @_ZN4bssl31ReadVerifyCertChainTestFromFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19VerifyCertChainTestE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.au, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !514  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !515    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !552
  %i.j = load ptr, ptr %0, align 8, !tbaa !515    ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE11_M_allocateEm.exit.i, !prof !508

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

_ZNSt12_Vector_baseISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #32 ; 3 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructISt10shared_ptrIKN4bssl17ParsedCertificateEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructISt10shared_ptrIKN4bssl17ParsedCertificateEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.y, %_ZSt10_ConstructISt10shared_ptrIKN4bssl17ParsedCertificateEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !439  ; 2 uses
  %i.s = load <2 x ptr>, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !440
  store <2 x ptr> %i.s, ptr %.09.i.i.i.i.i, align 8, !tbaa !440
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIKN4bssl17ParsedCertificateEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !352
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.t, align 4, !tbaa !441
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !441
  br label %_ZSt10_ConstructISt10shared_ptrIKN4bssl17ParsedCertificateEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIKN4bssl17ParsedCertificateEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIKN4bssl17ParsedCertificateEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !8733

_ZNSt6vectorISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIKN4bssl17ParsedCertificateEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.aa = load ptr, ptr %0, align 8, !tbaa !515   ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !514 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIKN4bssl17ParsedCertificateEEEvT_S6_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit, %_ZSt8_DestroyISt10shared_ptrIKN4bssl17ParsedCertificateEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.au, %_ZSt8_DestroyISt10shared_ptrIKN4bssl17ParsedCertificateEEEvPT_.exit.i.i ], [ %i.aa, %_ZNSt6vectorISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !439 ; 8 uses
  %.not.i.i.i.i.i25 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i25, label %_ZSt8_DestroyISt10shared_ptrIKN4bssl17ParsedCertificateEEEvPT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.af, align 8, !tbaa !443
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !444
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !355
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #29, !call_target !449, !inline_history !91
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !355
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #29, !call_target !463, !inline_history !91
  br label %_ZSt8_DestroyISt10shared_ptrIKN4bssl17ParsedCertificateEEEvPT_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !352
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !441
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ai, %bb.k ], [ %i.as, %bb.l ]
  %i.at = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.at, label %bb.m, label %_ZSt8_DestroyISt10shared_ptrIKN4bssl17ParsedCertificateEEEvPT_.exit.i.i, !prof !508

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #29
  br label %_ZSt8_DestroyISt10shared_ptrIKN4bssl17ParsedCertificateEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIKN4bssl17ParsedCertificateEEEvPT_.exit.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.i, %.lr.ph.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i26 = icmp eq ptr %i.au, %i.ac
  br i1 %.not.i.i26, label %_ZSt8_DestroyIPSt10shared_ptrIKN4bssl17ParsedCertificateEEEvT_S6_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !90

_ZSt8_DestroyIPSt10shared_ptrIKN4bssl17ParsedCertificateEEEvT_S6_.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIKN4bssl17ParsedCertificateEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !515
  br label %_ZSt8_DestroyIPSt10shared_ptrIKN4bssl17ParsedCertificateEEEvT_S6_.exit

_ZSt8_DestroyIPSt10shared_ptrIKN4bssl17ParsedCertificateEEEvT_S6_.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN4bssl17ParsedCertificateEEEvT_S6_.exitthread-pre-split, %_ZNSt6vectorISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit
  %i.av = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIKN4bssl17ParsedCertificateEEEvT_S6_.exitthread-pre-split ], [ %i.aa, %_ZNSt6vectorISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN4bssl17ParsedCertificateEEEvT_S6_.exit
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !552
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.az) #31
  br label %_ZNSt12_Vector_baseISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN4bssl17ParsedCertificateEEEvT_S6_.exit, %bb.n
  store ptr %i.p, ptr %0, align 8, !tbaa !515
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.ba, ptr %i.h, align 8, !tbaa !552
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIKN4bssl17ParsedCertificateEESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit

bb.o:                                             ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !514 ; 3 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.be, %i.f
  br i1 %.not24, label %bb.ag, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = icmp sgt i64 %i.g, 0
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIKN4bssl17ParsedCertificateEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

.lr.ph.i.i.i.i.i27:                               ; preds = %bb.p, %_ZNSt10shared_ptrIKN4bssl17ParsedCertificateEEaSERKS3_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ci, %_ZNSt10shared_ptrIKN4bssl17ParsedCertificateEEaSERKS3_.exit.i.i.i.i.i ], [ %i.g, %bb.p ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ch, %_ZNSt10shared_ptrIKN4bssl17ParsedCertificateEEaSERKS3_.exit.i.i.i.i.i ], [ %i.j, %bb.p ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cg, %_ZNSt10shared_ptrIKN4bssl17ParsedCertificateEEaSERKS3_.exit.i.i.i.i.i ], [ %i.c, %bb.p ] ; 3 uses
  %i.bg = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !516
  store ptr %i.bg, ptr %.0811.i.i.i.i.i, align 8, !tbaa !516
  %i.bh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !439 ; 4 uses
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !439 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN4bssl17ParsedCertificateEEaSERKS3_.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i27
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !352
  %.not.i.i.i.i.i.i.i.i.i28 = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i28, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !441
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !441
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bp = atomicrmw volatile add ptr %i.bl, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.bh, align 8, !tbaa !439
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.q
  %i.bq = phi ptr [ %i.bk, %bb.q ], [ %i.bk, %bb.s ], [ %.pr.pre.i.i.i.i.i.i.i.i, %bb.t ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not8.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.br, align 8, !tbaa !443
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bv, align 4, !tbaa !444
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !355
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  tail call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #29, !call_target !449, !inline_history !8734
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !355
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #29, !call_target !463, !inline_history !8734
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !352
  %.not.i9.i.i.i.i.i.i.i.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cd = add nsw i32 %i.bu, -1
  store i32 %i.cd, ptr %i.br, align 8, !tbaa !441
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.ce = atomicrmw volatile add ptr %i.br, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bu, %bb.x ], [ %i.ce, %bb.y ]
  %i.cf = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cf, label %bb.z, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, !prof !508

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #29
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.v, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !439
  br label %_ZNSt10shared_ptrIKN4bssl17ParsedCertificateEEaSERKS3_.exit.i.i.i.i.i

_ZNSt10shared_ptrIKN4bssl17ParsedCertificateEEaSERKS3_.exit.i.i.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i27
  %i.cg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 3 uses
  %i.ci = add nsw i64 %.012.i.i.i.i.i, -1
  %i.cj = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIKN4bssl17ParsedCertificateEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.loopexit, !llvm.loop !8735

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIKN4bssl17ParsedCertificateEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.loopexit: ; preds = %_ZNSt10shared_ptrIKN4bssl17ParsedCertificateEEaSERKS3_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.bb, align 8, !tbaa !551
  %.pre66 = ptrtoint ptr %i.ch to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIKN4bssl17ParsedCertificateEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIKN4bssl17ParsedCertificateEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIKN4bssl17ParsedCertificateEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.loopexit, %bb.p
  %.pre-phi67 = phi i64 [ %.pre66, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIKN4bssl17ParsedCertificateEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.loopexit ], [ %i.l, %bb.p ]
  %i.ck = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIKN4bssl17ParsedCertificateEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.loopexit ], [ %i.bc, %bb.p ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.ch, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIKN4bssl17ParsedCertificateEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.loopexit ], [ %i.j, %bb.p ]
end_hunk_0
