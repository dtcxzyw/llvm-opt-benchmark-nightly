Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/cert_issuer_source_static_unittest?download=true
inline.NumInlined: 2701
inline.NumDeleted: 998
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4bssl24CertIssuerSourceSyncTestINS_12_GLOBAL__N_134CertIssuerSourceStaticTestDelegateEE5SetUpEv:._crit_edge.i.i
  br label %_ZN7testing7MessageD2Ev.exit389

_ZN7testing7MessageD2Ev.exit389:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i388
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #30
  br label %bb.fv

bb.fq:                                            ; preds = %bb.fl
  %i.py = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit395

bb.fr:                                            ; preds = %bb.fm
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392

bb.fs:                                            ; preds = %bb.fn
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

bb.ft:                                            ; preds = %bb.fo
  %i.qb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %61) #30
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %.pn149 = phi { ptr, i32 } [ %i.qb, %bb.ft ], [ %i.qa, %bb.fs ] ; 2 uses
  %i.qc = load ptr, ptr %62, align 8, !tbaa !134  ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 2 uses
  %i.qe = icmp eq ptr %i.qc, %i.qd
  br i1 %i.qe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390: ; preds = %bb.fu
  %i.qf = load i64, ptr %i.qd, align 8, !tbaa !137
  %i.qg = add i64 %i.qf, 1
  call void @_ZdlPvm(ptr noundef %i.qc, i64 noundef %i.qg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392: ; preds = %bb.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390, %bb.fr
  %.pn149.pn = phi { ptr, i32 } [ %i.pz, %bb.fr ], [ %.pn149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390 ], [ %.pn149, %bb.fu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #30
  %i.qh = load ptr, ptr %60, align 8, !tbaa !142  ; 3 uses
  %.not.i.i393 = icmp eq ptr %i.qh, null
  br i1 %.not.i.i393, label %_ZN7testing7MessageD2Ev.exit395, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i394

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i394: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !144
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  %i.qk = load ptr, ptr %i.qj, align 8
  call void %i.qk(ptr noundef nonnull align 8 dereferenceable(128) %i.qh) #30, !call_target !153, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit395

_ZN7testing7MessageD2Ev.exit395:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i394, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392, %bb.fq
  %.pn149.pn.pn = phi { ptr, i32 } [ %i.py, %bb.fq ], [ %.pn149.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392 ], [ %.pn149.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i394 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %57) #30
  br label %bb.fx

bb.fv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380, %_ZN7testing7MessageD2Ev.exit389
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %57) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #30
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fe, %bb.en, %bb.dw, %bb.df, %bb.co, %bb.bx, %_ZN7testing15AssertionResultD2Ev.exit269, %_ZN7testing15AssertionResultD2Ev.exit242, %_ZN7testing15AssertionResultD2Ev.exit215, %_ZN7testing15AssertionResultD2Ev.exit, %bb.fv
  ret void

bb.fx:                                            ; preds = %_ZN7testing7MessageD2Ev.exit395, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383
  %.pn149.pn.pn.pn = phi { ptr, i32 } [ %.pn149.pn.pn, %_ZN7testing7MessageD2Ev.exit395 ], [ %.pn147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #30
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fi, %bb.er, %bb.ea, %bb.dj, %bb.cs, %bb.cb, %bb.bk, %bb.at, %bb.ae, %bb.p
  %.pn149.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn149.pn.pn.pn, %bb.fx ], [ %.pn142.pn.pn.pn, %bb.fi ], [ %.pn135.pn.pn.pn, %bb.er ], [ %.pn128.pn.pn.pn, %bb.ea ], [ %.pn121.pn.pn.pn, %bb.dj ], [ %.pn114.pn.pn.pn, %bb.cs ], [ %.pn107.pn.pn.pn, %bb.cb ], [ %.pn100.pn.pn.pn, %bb.bk ], [ %.pn93.pn.pn.pn, %bb.at ], [ %.pn86.pn.pn.pn, %bb.ae ], [ %.pn79.pn.pn.pn, %bb.p ]
  resume { ptr, i32 } %.pn149.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4bssl37gtest_suite_CertIssuerSourceSyncTest_7NoMatchINS_12_GLOBAL__N_134CertIssuerSourceStaticTestDelegateEE8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %3 = alloca %"class.std::shared_ptr", align 8   ; 4 uses
  %4 = alloca %"class.std::vector.35", align 8    ; 3 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !193  ; 2 uses
  %i.e = load <2 x ptr>, ptr %i.a, align 8, !tbaa !209
  store <2 x ptr> %i.e, ptr %1, align 16, !tbaa !209
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN4bssl17ParsedCertificateEEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !137
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !203
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !203
  br label %_ZNSt10shared_ptrIKN4bssl17ParsedCertificateEEC2ERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN4bssl17ParsedCertificateEEC2ERKS3_.exit

_ZNSt10shared_ptrIKN4bssl17ParsedCertificateEEC2ERKS3_.exit: ; preds = %bb.a, %bb.c, %bb.d
  invoke fastcc void @_ZN4bssl24CertIssuerSourceSyncTestINS_12_GLOBAL__N_134CertIssuerSourceStaticTestDelegateEE7AddCertESt10shared_ptrIKNS_17ParsedCertificateEE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef align 8 %1)
          to label %bb.e unwind label %bb.u

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN4bssl17ParsedCertificateEEC2ERKS3_.exit
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !193  ; 8 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.l, align 8, !tbaa !195
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !196
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !144
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #30, !call_target !201, !inline_history !5
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !144
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #30, !call_target !202, !inline_history !5
  br label %_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !137
  %.not.i.i.i12 = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i12, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !203
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.o, %bb.i ], [ %i.y, %bb.j ]
  %i.z = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.z, label %bb.k, label %_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !204

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #30
  br label %_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !180 ; 3 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !180
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !193 ; 3 uses
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !193
  %.not.i.i.i13 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i13, label %_ZNSt10shared_ptrIKN4bssl17ParsedCertificateEEC2ERKS3_.exit15, label %bb.l

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !137
  %.not.i.i.i.i14 = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i14, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !203
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !203
  br label %_ZNSt10shared_ptrIKN4bssl17ParsedCertificateEEC2ERKS3_.exit15

bb.n:                                             ; preds = %bb.l
  %i.aj = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4 ; 0 uses
  %.val.pre = load ptr, ptr %3, align 8
  br label %_ZNSt10shared_ptrIKN4bssl17ParsedCertificateEEC2ERKS3_.exit15

_ZNSt10shared_ptrIKN4bssl17ParsedCertificateEEC2ERKS3_.exit15: ; preds = %_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.m, %bb.n
  %.val = phi ptr [ %i.ab, %_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.ab, %bb.m ], [ %.val.pre, %bb.n ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.ak = invoke fastcc noundef zeroext i1 @_ZN4bssl24CertIssuerSourceSyncTestINS_12_GLOBAL__N_134CertIssuerSourceStaticTestDelegateEE12IssuersMatchESt10shared_ptrIKNS_17ParsedCertificateEESt6vectorIS7_SaIS7_EE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %.val, ptr noundef align 8 %4)
          to label %_ZNSt6vectorISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EED2Ev.exit unwind label %bb.v ; 2 uses

_ZNSt6vectorISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIKN4bssl17ParsedCertificateEEC2ERKS3_.exit15
  %i.al = zext i1 %i.ak to i8
  store i8 %i.al, ptr %2, align 8, !tbaa !188
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr null, ptr %i.am, align 8, !tbaa !189
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !193 ; 8 uses
  %.not.i.i17 = icmp eq ptr %i.an, null
  br i1 %.not.i.i17, label %_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EED2Ev.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 4294967297
  %i.ar = trunc i64 %i.ap to i32                  ; 2 uses
  br i1 %i.aq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.ao, align 8, !tbaa !195
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 0, ptr %i.as, align 4, !tbaa !196
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !144
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #30, !call_target !201, !inline_history !5
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !144
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #30, !call_target !202, !inline_history !5
  br label %_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21.a

bb.q:                                             ; preds = %bb.o
  %i.az = load i8, ptr @__libc_single_threaded, align 1, !tbaa !137
  %.not.i.i.i18 = icmp eq i8 %i.az, 0
  br i1 %.not.i.i.i18, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = add nsw i32 %i.ar, -1
  store i32 %i.ba, ptr %i.ao, align 8, !tbaa !203
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19

bb.s:                                             ; preds = %bb.q
  %i.bb = atomicrmw volatile add ptr %i.ao, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i20 = phi i32 [ %i.ar, %bb.r ], [ %i.bb, %bb.s ]
  %i.bc = icmp eq i32 %.0.i.i.i.i20, 1
  br i1 %i.bc, label %bb.t, label %_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21.a, !prof !204

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #30
  br label %_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21.a

_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21.a: ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19, %bb.p
  %i.bd = load i8, ptr %2, align 8, !tbaa !188
  %i.be = trunc nuw i8 %i.bd to i1
  br label %_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21

_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21: ; preds = %_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21.a, %_ZNSt6vectorISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EED2Ev.exit
  %8 = phi i1 [ %i.be, %_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21.a ], [ %i.ak, %_ZNSt6vectorISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EED2Ev.exit ]
  br i1 %8, label %bb.ag, label %bb.w

bb.u:                                             ; preds = %_ZNSt10shared_ptrIKN4bssl17ParsedCertificateEEC2ERKS3_.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #30
  br label %bb.aj

bb.v:                                             ; preds = %_ZNSt10shared_ptrIKN4bssl17ParsedCertificateEEC2ERKS3_.exit15
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #30
  call void @_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #30
  br label %bb.ai

bb.w:                                             ; preds = %_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.bh = load ptr, ptr %7, align 8, !tbaa !134
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 148, ptr noundef %i.bh)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #30
  %i.bi = load ptr, ptr %7, align 8, !tbaa !134   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aa
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !137
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.bn = load ptr, ptr %5, align 8, !tbaa !142   ; 3 uses
  %.not.i.i22 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i22, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !144
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(128) %i.bn) #30, !call_target !153, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.ag

bb.ab:                                            ; preds = %bb.w
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit28

bb.ac:                                            ; preds = %bb.x
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

bb.ad:                                            ; preds = %bb.y
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.z
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #30
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.ae ], [ %i.bt, %bb.ad ] ; 2 uses
  %i.bv = load ptr, ptr %7, align 8, !tbaa !134   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.af
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !137
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %i.bs, %bb.ac ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %.pn, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.ca = load ptr, ptr %5, align 8, !tbaa !142   ; 3 uses
  %.not.i.i26 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i26, label %_ZN7testing7MessageD2Ev.exit28, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i27

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !144
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(128) %i.ca) #30, !call_target !153, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit28

_ZN7testing7MessageD2Ev.exit28:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %bb.ab
  %.pn.pn.pn = phi { ptr, i32 } [ %i.br, %bb.ab ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i27 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #30
  br label %bb.ai

bb.ag:                                            ; preds = %_ZNSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21, %_ZN7testing7MessageD2Ev.exit
  %i.ce = load ptr, ptr %i.am, align 8, !tbaa !190 ; 4 uses
  %.not.i.i29 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i29, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !134 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ah
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !137
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 32) #33
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.ag, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.ai:                                            ; preds = %_ZN7testing7MessageD2Ev.exit28, %bb.v
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit28 ], [ %i.bg, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.u
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ai ], [ %i.bf, %bb.u ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: cold inlinehint mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define internal void @_ZN4bssl24CertIssuerSourceSyncTestINS_12_GLOBAL__N_134CertIssuerSourceStaticTestDelegateEED0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #22 align 2 {
bb.a:
  tail call void @llvm.trap() #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4bssl12_GLOBAL__N_112ReadTestCertERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt10shared_ptrIKNS_17ParsedCertificateEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %.0.val, i64 %.8.val, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.testing::Message", align 8  ; 8 uses
  %4 = alloca [1 x %"struct.bssl::PemBlockMapping"], align 16 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 6 uses
  %10 = alloca %"class.bssl::CertErrors", align 8 ; 8 uses
  %11 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %12 = alloca %"class.std::unique_ptr.79", align 8 ; 4 uses
  %13 = alloca %"struct.bssl::ParseCertificateOptions", align 1 ; 5 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !135
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !138
  store i8 0, ptr %i.a, align 8, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.c, ptr %7, align 8, !tbaa !135, !alias.scope !2591
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.d, align 8, !tbaa !138, !alias.scope !2591
  store i8 0, ptr %i.c, align 8, !tbaa !137, !alias.scope !2591
  %i.e = add i64 %.8.val, 44
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.e)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !138, !alias.scope !2591
  %i.g = add i64 %i.f, -4611686018427387860
  %i.h = icmp ult i64 %i.g, 44
  br i1 %i.h, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.i = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.34, i64 noundef 44)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.j = load i64, ptr %i.d, align 8, !tbaa !138, !alias.scope !2591
  %i.k = sub i64 4611686018427387903, %i.j
  %i.l = icmp ult i64 %i.k, %.8.val
  br i1 %i.l, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #32
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %.0.val, i64 noundef %.8.val)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %7, align 8, !tbaa !134, !alias.scope !2591 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.c
  br i1 %i.p, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.q, ptr %8, align 8, !tbaa !135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.q, ptr noundef nonnull align 1 dereferenceable(11) @.str.107, i64 11, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 11, ptr %i.r, align 8, !tbaa !138
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 27
  store i8 0, ptr %i.s, align 1, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !2592
  store ptr %i.q, ptr %4, align 16, !tbaa !2594, !noalias !2592
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %5, ptr %i.t, align 8, !tbaa !2595, !noalias !2592
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.u, align 16, !tbaa !2596, !noalias !2592
  invoke void @_ZN4bssl23ReadTestDataFromPemFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS_15PemBlockMappingEm(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !2592
  %i.v = load ptr, ptr %8, align 8, !tbaa !134    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.q
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.x = load i64, ptr %i.q, align 8, !tbaa !137
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.z = load ptr, ptr %7, align 8, !tbaa !134    ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.c
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !137
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  invoke void @_ZNK7testing15AssertionResultntEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.ad = load i8, ptr %9, align 8, !tbaa !188, !range !128, !noundef !129
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !190 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !134 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !137
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 32) #33
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.e, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br i1 %i.ae, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  invoke void @_ZN7testing15AssertionResultC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.bb unwind label %bb.j

bb.h:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %8, align 8, !tbaa !134   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.q
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.h
  %i.ap = load i64, ptr %i.q, align 8, !tbaa !137
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #33
end_hunk_0
