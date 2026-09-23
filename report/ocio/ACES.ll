Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/ACES?download=true
inline.NumInlined: 1453
inline.NumDeleted: 624
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN16OpenColorIO_v2_511ACES_OUTPUT30Generate_hdr_primary_clamp_opsERNS_10OpRcPtrVecERKNS_9PrimariesE:bb.a
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.c, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !20
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !0
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !0
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.k ], [ %i.p, %bb.l ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.m, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !25

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.g, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !17   ; 8 uses
  %.not.i.i15 = icmp eq ptr %i.s, null
  br i1 %.not.i.i15, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit19, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.t, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !20
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #21, !inline_history !0
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #21, !inline_history !0
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit19

bb.p:                                             ; preds = %bb.n
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i16 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i16, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17

bb.r:                                             ; preds = %bb.p
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i18 = phi i32 [ %i.w, %bb.q ], [ %i.ag, %bb.r ]
  %i.ah = icmp eq i32 %.0.i.i.i.i18, 1
  br i1 %i.ah, label %bb.s, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit19, !prof !25

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #21
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit19

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit19: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !17 ; 8 uses
  %.not.i.i20 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i20, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit24, label %bb.t

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit19
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.ak, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !20
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !22
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #21, !inline_history !0
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !22
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #21, !inline_history !0
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit24

bb.v:                                             ; preds = %bb.t
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i21 = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i21, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22

bb.x:                                             ; preds = %bb.v
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i23 = phi i32 [ %i.an, %bb.w ], [ %i.ax, %bb.x ]
  %i.ay = icmp eq i32 %.0.i.i.i.i23, 1
  br i1 %i.ay, label %bb.y, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit24, !prof !25

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #21
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit24

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit24: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit19, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.z:                                             ; preds = %bb.b, %bb.a
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.aa:                                            ; preds = %bb.c
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ab:                                            ; preds = %bb.d
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ac:                                            ; preds = %bb.e
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.f
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #21
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.ad ], [ %i.bc, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ae ], [ %i.bb, %bb.ab ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #21
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.aa
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.af ], [ %i.ba, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.z
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ag ], [ %i.az, %bb.z ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare void @_ZN16OpenColorIO_v2_520build_vonkries_adaptERKNS_12MatrixOpData7OffsetsES3_NS_16AdaptationMethodE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_511ACES_OUTPUT30Generate_nit_normalization_opsERNS_10OpRcPtrVecEd(ptr noundef nonnull align 8 dereferenceable(144) %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 7 uses
  %2 = fmul double %1, 1.000000e-02               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store double %2, ptr %i.a, align 16, !tbaa !45
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %2, ptr %3, align 8, !tbaa !45
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %2, ptr %4, align 16, !tbaa !45
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double 1.000000e+00, ptr %5, align 8, !tbaa !45
  call void @_ZN16OpenColorIO_v2_513CreateScaleOpERNS_10OpRcPtrVecEPKdNS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %i.a, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

declare void @_ZN16OpenColorIO_v2_513CreateScaleOpERNS_10OpRcPtrVecEPKdNS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_511ACES_OUTPUT27Generate_roll_white_d60_opsERNS_10OpRcPtrVecE(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::function", align 8     ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFfdEZN16OpenColorIO_v2_511ACES_OUTPUT27Generate_roll_white_d60_opsERNS1_10OpRcPtrVecEE3$_0E9_M_invokeERKSt9_Any_dataOd", ptr %i.b, align 8, !tbaa !32
  store ptr @"_ZNSt17_Function_handlerIFfdEZN16OpenColorIO_v2_511ACES_OUTPUT27Generate_roll_white_d60_opsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation", ptr %i.a, align 8, !tbaa !33
  invoke void @_ZN16OpenColorIO_v2_513CreateHalfLutERNS_10OpRcPtrVecESt8functionIFfdEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  ret void

bb.e:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %.not.i2 = icmp eq ptr %i.h, null
  br i1 %.not.i2, label %_ZNSt14_Function_baseD2Ev.exit3, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit3:                  ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_511ACES_OUTPUT27Generate_roll_white_d65_opsERNS_10OpRcPtrVecE(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::function", align 8     ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFfdEZN16OpenColorIO_v2_511ACES_OUTPUT27Generate_roll_white_d65_opsERNS1_10OpRcPtrVecEE3$_0E9_M_invokeERKSt9_Any_dataOd", ptr %i.b, align 8, !tbaa !32
  store ptr @"_ZNSt17_Function_handlerIFfdEZN16OpenColorIO_v2_511ACES_OUTPUT27Generate_roll_white_d65_opsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation", ptr %i.a, align 8, !tbaa !33
  invoke void @_ZN16OpenColorIO_v2_513CreateHalfLutERNS_10OpRcPtrVecESt8functionIFfdEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  ret void

bb.e:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %.not.i2 = icmp eq ptr %i.h, null
  br i1 %.not.i2, label %_ZNSt14_Function_baseD2Ev.exit3, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit3:                  ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_512ACES2_OUTPUT25Generate_output_transformERNS_10OpRcPtrVecEfRKNS_9PrimariesES5_fb(ptr noundef nonnull align 8 dereferenceable(144) %0, float noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, float noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::shared_ptr", align 8   ; 8 uses
  %7 = alloca %"class.std::vector.13", align 8    ; 12 uses
  %8 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %9 = alloca %"class.OpenColorIO_v2_5::MatrixOpData::Offsets", align 8 ; 9 uses
  %10 = alloca %"class.OpenColorIO_v2_5::MatrixOpData::Offsets", align 8 ; 5 uses
  %i.a = alloca [4 x double], align 16            ; 5 uses
  %i.b = alloca [4 x double], align 16            ; 8 uses
  %11 = alloca %"class.std::shared_ptr", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZN16OpenColorIO_v2_523build_conversion_matrixERKNS_9PrimariesES2_NS_16AdaptationMethodE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(64) @_ZN16OpenColorIO_v2_58ACES_AP09primariesE, ptr noundef nonnull align 8 dereferenceable(64) @_ZN16OpenColorIO_v2_58ACES_AP19primariesE, i32 noundef 0)
  invoke void @_ZN16OpenColorIO_v2_514CreateMatrixOpERNS_10OpRcPtrVecERSt10shared_ptrINS_12MatrixOpData11MatrixArrayEENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef 0)
          to label %bb.b unwind label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.c = fdiv float %1, 1.000000e+02              ; 2 uses
  %i.d = call noundef float @logf(float noundef %i.c) #21
  %i.e = fdiv float %i.d, f0x40935D8E
  %i.f = call float @llvm.fmuladd.f32(float %i.e, float 7.680000e+02, float 1.280000e+02)
  %i.g = fmul float %i.f, 8.000000e+00
  %i.h = fpext float %i.g to double               ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_513CreateRangeOpERNS_10OpRcPtrVecEddddNS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %0, double noundef 0.000000e+00, double noundef %i.h, double noundef 0.000000e+00, double noundef %i.h, i32 noundef 0)
          to label %bb.c unwind label %bb.x

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN16OpenColorIO_v2_514CreateMatrixOpERNS_10OpRcPtrVecERSt10shared_ptrINS_12MatrixOpData11MatrixArrayEENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef 1)
          to label %bb.d unwind label %bb.x

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.i = load <2 x double>, ptr %2, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load <2 x double>, ptr %i.j, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.m = load <2 x double>, ptr %i.l, align 8, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.o = load <2 x double>, ptr %i.n, align 8, !tbaa !45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.p = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #24
          to label %bb.g unwind label %bb.e       ; 7 uses

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %7, align 8, !tbaa !28     ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i4.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !29
  br label %.body.sink.split

bb.g:                                             ; preds = %bb.d
  %i.u = fpext float %1 to double
  store ptr %i.p, ptr %7, align 8, !tbaa !28
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 72 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !29
  store double %i.u, ptr %i.p, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store <2 x double> %i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store <2 x double> %i.k, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store <2 x double> %i.m, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store <2 x double> %i.o, ptr %.sroa.11.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.v, ptr %i.x, align 8, !tbaa !46
  invoke void @_ZN16OpenColorIO_v2_521CreateFixedFunctionOpERNS_10OpRcPtrVecENS_19FixedFunctionOpData5StyleERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef 28, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.h unwind label %bb.y

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %7, align 8, !tbaa !28     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !29
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #22
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit
end_hunk_0
