Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/MatrixOp?download=true
inline.NumInlined: 525
inline.NumDeleted: 277
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_114MatrixOffsetOp11combineWithERNS_10OpRcPtrVecERSt10shared_ptrIKNS_2OpEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.am

bb.s:                                             ; preds = %bb.q, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #17
  br label %bb.am

bb.t:                                             ; preds = %bb.q, %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !32 ; 8 uses
  %.not.i.i17 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i17, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.as, align 8, !tbaa !25
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !26
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !28
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #17, !inline_history !0
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !28
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #17, !inline_history !0
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i18 = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i18, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !36
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19

bb.y:                                             ; preds = %bb.w
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i20 = phi i32 [ %i.av, %bb.x ], [ %i.bf, %bb.y ]
  %i.bg = icmp eq i32 %.0.i.i.i.i20, 1
  br i1 %i.bg, label %bb.z, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #17
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.t, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !32 ; 8 uses
  %.not.i.i21 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i21, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit25, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 4 uses
  %i.bk = load atomic i64, ptr %i.bj acquire, align 8 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 4294967297
  %i.bm = trunc i64 %i.bk to i32                  ; 2 uses
  br i1 %i.bl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.bj, align 8, !tbaa !25
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i32 0, ptr %i.bn, align 4, !tbaa !26
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !28
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #17, !inline_history !7
  %i.br = load ptr, ptr %i.bi, align 8, !tbaa !28
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #17, !inline_history !7
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit25

bb.ac:                                            ; preds = %bb.aa
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i22 = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i22, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bv = add nsw i32 %i.bm, -1
  store i32 %i.bv, ptr %i.bj, align 8, !tbaa !36
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23

bb.ae:                                            ; preds = %bb.ac
  %i.bw = atomicrmw volatile add ptr %i.bj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i24 = phi i32 [ %i.bm, %bb.ad ], [ %i.bw, %bb.ae ]
  %i.bx = icmp eq i32 %.0.i.i.i.i24, 1
  br i1 %i.bx, label %bb.af, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit25, !prof !37

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #17
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit25

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit25: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %.not.i.i26 = icmp eq ptr %.val13, null
  br i1 %.not.i.i26, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512_GLOBAL__N_114MatrixOffsetOpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit25
  %i.by = getelementptr inbounds nuw i8, ptr %.val13, i64 8 ; 4 uses
  %i.bz = load atomic i64, ptr %i.by acquire, align 8 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 4294967297
  %i.cb = trunc i64 %i.bz to i32                  ; 2 uses
  br i1 %i.ca, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.by, align 8, !tbaa !25
  %i.cc = getelementptr inbounds nuw i8, ptr %.val13, i64 12
  store i32 0, ptr %i.cc, align 4, !tbaa !26
  %i.cd = load ptr, ptr %.val13, align 8, !tbaa !28
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %.val13) #17, !inline_history !8
  %i.cg = load ptr, ptr %.val13, align 8, !tbaa !28
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %.val13) #17, !inline_history !8
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512_GLOBAL__N_114MatrixOffsetOpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ai:                                            ; preds = %bb.ag
  %i.cj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i27 = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i.i27, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ck = add nsw i32 %i.cb, -1
  store i32 %i.ck, ptr %i.by, align 8, !tbaa !36
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28

bb.ak:                                            ; preds = %bb.ai
  %i.cl = atomicrmw volatile add ptr %i.by, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i29 = phi i32 [ %i.cb, %bb.aj ], [ %i.cl, %bb.ak ]
  %i.cm = icmp eq i32 %.0.i.i.i.i29, 1
  br i1 %i.cm, label %bb.al, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512_GLOBAL__N_114MatrixOffsetOpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val13) #17
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512_GLOBAL__N_114MatrixOffsetOpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512_GLOBAL__N_114MatrixOffsetOpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit25, %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28, %bb.al
  ret void

bb.am:                                            ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.s ], [ %i.ao, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call fastcc void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512_GLOBAL__N_114MatrixOffsetOpELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr %.val13) #17
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.am ], [ %i.f, %bb.d ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_52Op19hasChannelCrosstalkEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(168) %i.b)
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_52Op12dumpMetadataERSt10shared_ptrINS_17ProcessorMetadataEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 %1) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_114MatrixOffsetOp8finalizeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.37", align 8 ; 6 uses
  %2 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !75, !noalias !181
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val2 = load ptr, ptr %i.b, align 8            ; 4 uses
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %.val, ptr nonnull @_ZTIN16OpenColorIO_v2_56OpDataE, ptr nonnull @_ZTIN16OpenColorIO_v2_512MatrixOpDataE, i64 0) #17, !noalias !182 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val2, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val2, i64 8 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35, !noalias !182
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.d, align 4, !tbaa !36, !noalias !182
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !36, !noalias !182
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.h = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4, !noalias !182 ; 0 uses
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.d, %bb.c, %bb.a
  store ptr %i.c, ptr %1, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %.val2, ptr %i.i, align 8, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.k = load i32, ptr %i.j, align 8, !tbaa !72
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.e, label %bb.t

bb.e:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  invoke void @_ZNK16OpenColorIO_v2_512MatrixOpData12getAsForwardEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(260) %i.c)
          to label %bb.f unwind label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load <2 x ptr>, ptr %2, align 16, !tbaa !38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !32   ; 8 uses
  store <2 x ptr> %i.n, ptr %i.a, align 8, !tbaa !38
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEaSINS0_12MatrixOpDataEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS2_E4typeEOSC_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.p, align 8, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !26
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #17, !inline_history !180
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #17, !inline_history !180
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEaSINS0_12MatrixOpDataEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS2_E4typeEOSC_.exitthread-pre-split

bb.i:                                             ; preds = %bb.g
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !36
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i = phi i32 [ %i.s, %bb.j ], [ %i.ac, %bb.k ]
  %i.ad = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ad, label %bb.l, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEaSINS0_12MatrixOpDataEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS2_E4typeEOSC_.exitthread-pre-split, !prof !37

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #17
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEaSINS0_12MatrixOpDataEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS2_E4typeEOSC_.exitthread-pre-split

_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEaSINS0_12MatrixOpDataEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS2_E4typeEOSC_.exitthread-pre-split: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr15 = load ptr, ptr %i.m, align 8, !tbaa !32
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEaSINS0_12MatrixOpDataEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS2_E4typeEOSC_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEaSINS0_12MatrixOpDataEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS2_E4typeEOSC_.exit: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEaSINS0_12MatrixOpDataEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS2_E4typeEOSC_.exitthread-pre-split, %bb.f
  %i.ae = phi ptr [ %.pr15, %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEaSINS0_12MatrixOpDataEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS2_E4typeEOSC_.exitthread-pre-split ], [ null, %bb.f ] ; 8 uses
  %.not.i.i3 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i3, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit7, label %bb.m

bb.m:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEaSINS0_12MatrixOpDataEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS2_E4typeEOSC_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.af, align 8, !tbaa !25
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !26
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !28
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #17, !inline_history !0
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !28
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #17, !inline_history !0
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit7

bb.o:                                             ; preds = %bb.m
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i4 = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i4, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !36
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5

bb.q:                                             ; preds = %bb.o
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i6 = phi i32 [ %i.ai, %bb.p ], [ %i.as, %bb.q ]
  %i.at = icmp eq i32 %.0.i.i.i.i6, 1
  br i1 %i.at, label %bb.r, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit7, !prof !37

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #17
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit7

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit7: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEaSINS0_12MatrixOpDataEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS2_E4typeEOSC_.exit, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %.pr = load ptr, ptr %i.i, align 8, !tbaa !32
  br label %bb.t

bb.s:                                             ; preds = %bb.e
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %i.au

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit7, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.av = phi ptr [ %.pr, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit7 ], [ %.val2, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 8 uses
  %.not.i.i8 = icmp eq ptr %i.av, null
  br i1 %.not.i.i8, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 4 uses
  %i.ax = load atomic i64, ptr %i.aw acquire, align 8 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 4294967297
  %i.az = trunc i64 %i.ax to i32                  ; 2 uses
  br i1 %i.ay, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.aw, align 8, !tbaa !25
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 0, ptr %i.ba, align 4, !tbaa !26
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !28
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #17, !inline_history !7
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !28
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #17, !inline_history !7
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i9 = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i9, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bi = add nsw i32 %i.az, -1
  store i32 %i.bi, ptr %i.aw, align 8, !tbaa !36
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10

bb.y:                                             ; preds = %bb.w
  %i.bj = atomicrmw volatile add ptr %i.aw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i11 = phi i32 [ %i.az, %bb.x ], [ %i.bj, %bb.y ]
  %i.bk = icmp eq i32 %.0.i.i.i.i11, 1
  br i1 %i.bk, label %bb.z, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #17
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
end_hunk_0
