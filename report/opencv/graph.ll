Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/graph?download=true
inline.NumInlined: 816
inline.NumDeleted: 514
begin_hunk_0_@_ZN3ade5Graph10createEdgeEPNS_4NodeES2_:bb.a
  br label %_ZNSt12__shared_ptrIN3ade4EdgeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit27

bb.ak:                                            ; preds = %bb.ai
  %i.cp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i24 = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i.i24, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cq = add nsw i32 %i.ch, -1
  store i32 %i.cq, ptr %i.ce, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i25

bb.am:                                            ; preds = %bb.ak
  %i.cr = atomicrmw volatile add ptr %i.ce, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i25

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i25: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i26 = phi i32 [ %i.ch, %bb.al ], [ %i.cr, %bb.am ]
  %i.cs = icmp eq i32 %.0.i.i.i.i26, 1
  br i1 %i.cs, label %bb.an, label %_ZNSt12__shared_ptrIN3ade4EdgeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit27, !prof !56

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i25
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #24
  br label %_ZNSt12__shared_ptrIN3ade4EdgeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit27

_ZNSt12__shared_ptrIN3ade4EdgeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit27: ; preds = %_ZNSt12__shared_ptrIN3ade4EdgeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i25, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.ao:                                            ; preds = %_ZN3ade6HandleINS_4EdgeEED2Ev.exit18, %bb.u
  %.pn = phi { ptr, i32 } [ %i.av, %_ZN3ade6HandleINS_4EdgeEED2Ev.exit18 ], [ %i.au, %bb.u ]
  call void @_ZNSt12__shared_ptrIN3ade4EdgeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZNSt12__shared_ptrIN3ade4EdgeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #24
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ao ], [ %i.at, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3ade5Graph4linkERKNS_6HandleINS_4EdgeEEERKNS1_INS_4NodeEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.ade::Handle.35") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.ade::Handle", align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79, !noalias !166 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZNK3ade6HandleINS_4EdgeEE3getEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 7 uses
  %i.d = load atomic i32, ptr %i.c monotonic, align 8, !noalias !166
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i = phi i32 [ %i.d, %bb.b ], [ %i.h, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i, label %_ZNK3ade6HandleINS_4EdgeEE3getEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.f = cmpxchg weak ptr %i.c, i32 %.06.i.i.i.i.i.i, i32 %i.e acq_rel monotonic, align 8, !noalias !166 ; 2 uses
  %i.g = extractvalue { i32, i1 } %i.f, 1
  %i.h = extractvalue { i32, i1 } %i.f, 0
  br i1 %i.g, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i, label %bb.c, !llvm.loop !1

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i: ; preds = %bb.d
  %i.i = load atomic i32, ptr %i.c monotonic, align 8, !noalias !166
  %.not.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNKSt8weak_ptrIN3ade4EdgeEE4lockEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.j = load ptr, ptr %2, align 8, !tbaa !85, !noalias !166
  br label %_ZNKSt8weak_ptrIN3ade4EdgeEE4lockEv.exit.i

_ZNKSt8weak_ptrIN3ade4EdgeEE4lockEv.exit.i:       ; preds = %bb.e, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.k = phi ptr [ %i.j, %bb.e ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i ] ; 3 uses
  %i.l = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt8weak_ptrIN3ade4EdgeEE4lockEv.exit.i
  store i32 0, ptr %i.c, align 8, !tbaa !51
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !52
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !4
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !4
  br label %_ZNK3ade6HandleINS_4EdgeEE3getEv.exit

bb.g:                                             ; preds = %_ZNKSt8weak_ptrIN3ade4EdgeEE4lockEv.exit.i
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i1.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i1.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.c, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.x = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i = phi i32 [ %i.n, %bb.h ], [ %i.x, %bb.i ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.y, label %bb.j, label %_ZNK3ade6HandleINS_4EdgeEE3getEv.exit, !prof !56

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNK3ade6HandleINS_4EdgeEE3getEv.exit

_ZNK3ade6HandleINS_4EdgeEE3getEv.exit:            ; preds = %bb.c, %bb.a, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.j
  %i.z = phi ptr [ %i.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i ], [ %i.k, %bb.j ], [ %i.k, %bb.f ], [ null, %bb.a ], [ null, %bb.c ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !79, !noalias !167 ; 8 uses
  %.not.i.i.i.i.i12 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i12, label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK3ade6HandleINS_4EdgeEE3getEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 7 uses
  %i.ad = load atomic i32, ptr %i.ac monotonic, align 8, !noalias !167
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.06.i.i.i.i.i.i13 = phi i32 [ %i.ad, %bb.k ], [ %i.ah, %bb.m ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i14 = icmp eq i32 %.06.i.i.i.i.i.i13, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i14, label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = add nsw i32 %.06.i.i.i.i.i.i13, 1
  %i.af = cmpxchg weak ptr %i.ac, i32 %.06.i.i.i.i.i.i13, i32 %i.ae acq_rel monotonic, align 8, !noalias !167 ; 2 uses
  %i.ag = extractvalue { i32, i1 } %i.af, 1
  %i.ah = extractvalue { i32, i1 } %i.af, 0
  br i1 %i.ag, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i15, label %bb.l, !llvm.loop !1

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i15: ; preds = %bb.m
  %i.ai = load atomic i32, ptr %i.ac monotonic, align 8, !noalias !167
  %.not.i.i.i.i16 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i.i16, label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i15
  %i.aj = load ptr, ptr %3, align 8, !tbaa !81, !noalias !167
  br label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i

_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i:       ; preds = %bb.n, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i15
  %i.ak = phi ptr [ %i.aj, %bb.n ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i15 ] ; 3 uses
  %i.al = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i
  store i32 0, ptr %i.ac, align 8, !tbaa !51
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !52
  %i.ap = load ptr, ptr %i.ab, align 8, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #24, !inline_history !2
  %i.as = load ptr, ptr %i.ab, align 8, !tbaa !54
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #24, !inline_history !2
  br label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit

bb.p:                                             ; preds = %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i1.i17 = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i1.i17, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ac, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i18

bb.r:                                             ; preds = %bb.p
  %i.ax = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i18

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i18: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i19 = phi i32 [ %i.an, %bb.q ], [ %i.ax, %bb.r ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i19, 1
  br i1 %i.ay, label %bb.s, label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit, !prof !56

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i18
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #24
  br label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit

_ZNK3ade6HandleINS_4NodeEE3getEv.exit:            ; preds = %bb.l, %_ZNK3ade6HandleINS_4EdgeEE3getEv.exit, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i18, %bb.s
  %i.az = phi ptr [ %i.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i18 ], [ %i.ak, %bb.s ], [ %i.ak, %bb.o ], [ null, %_ZNK3ade6HandleINS_4EdgeEE3getEv.exit ], [ null, %bb.l ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z), "nonnull"(ptr %i.az) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !77 ; 3 uses
  %.not = icmp eq ptr %i.bb, null
  br i1 %.not, label %bb.ae, label %bb.t

bb.t:                                             ; preds = %_ZNK3ade6HandleINS_4NodeEE3getEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNK3ade4Edge7srcNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.ade::Handle") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !54
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.be = load ptr, ptr %i.bd, align 8
  invoke void %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !79 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 12 ; 3 uses
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i20 = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i20, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !55 ; 2 uses
  %i.bk = add nsw i32 %i.bj, -1
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i21

bb.x:                                             ; preds = %bb.v
  %i.bl = atomicrmw volatile add ptr %i.bh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i21

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i21: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i22 = phi i32 [ %i.bj, %bb.w ], [ %i.bl, %bb.x ]
  %i.bm = icmp eq i32 %.0.i.i.i.i.i22, 1
  br i1 %i.bm, label %bb.y, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i21
  %i.bn = load ptr, ptr %i.bg, align 8, !tbaa !54
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #24, !inline_history !3
  br label %_ZN3ade6HandleINS_4NodeEED2Ev.exit

_ZN3ade6HandleINS_4NodeEED2Ev.exit:               ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i21, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.ae

bb.z:                                             ; preds = %bb.t
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !79 ; 4 uses
  %.not.i.i.i23 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i23, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit27, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 12 ; 3 uses
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i24 = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i.i24, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !55 ; 2 uses
  %i.bw = add nsw i32 %i.bv, -1
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i25

bb.ac:                                            ; preds = %bb.aa
  %i.bx = atomicrmw volatile add ptr %i.bt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i25

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i25: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i26 = phi i32 [ %i.bv, %bb.ab ], [ %i.bx, %bb.ac ]
  %i.by = icmp eq i32 %.0.i.i.i.i.i26, 1
  br i1 %i.by, label %bb.ad, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit27

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i25
  %i.bz = load ptr, ptr %i.bs, align 8, !tbaa !54
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #24, !inline_history !3
  br label %_ZN3ade6HandleINS_4NodeEED2Ev.exit27

_ZN3ade6HandleINS_4NodeEED2Ev.exit27:             ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i25, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %i.bq

bb.ae:                                            ; preds = %_ZN3ade6HandleINS_4NodeEED2Ev.exit, %_ZNK3ade6HandleINS_4NodeEE3getEv.exit
  call void @_ZN3ade4Edge13resetNextNodeEPNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull %i.az)
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !79  ; 2 uses
  %i.cd = load <2 x ptr>, ptr %2, align 8, !tbaa !63
  store <2 x ptr> %i.cd, ptr %0, align 8, !tbaa !63
  %.not.i.i.i.i28 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i28, label %_ZN3ade6HandleINS_4EdgeEEC2ERKS2_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 12 ; 3 uses
  %i.cf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i.i29 = icmp eq i8 %i.cf, 0
  br i1 %.not.i.i.i.i.i29, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !55
  %i.ch = add nsw i32 %i.cg, 1
  store i32 %i.ch, ptr %i.ce, align 4, !tbaa !55
  br label %_ZN3ade6HandleINS_4EdgeEEC2ERKS2_.exit

bb.ah:                                            ; preds = %bb.af
  %i.ci = atomicrmw volatile add ptr %i.ce, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN3ade6HandleINS_4EdgeEEC2ERKS2_.exit

_ZN3ade6HandleINS_4EdgeEEC2ERKS2_.exit:           ; preds = %bb.ae, %bb.ag, %bb.ah
  ret void
}

declare void @_ZNK3ade4Edge7srcNodeEv(ptr dead_on_unwind writable sret(%"class.ade::Handle") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare void @_ZN3ade4Edge13resetNextNodeEPNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3ade5Graph4linkERKNS_6HandleINS_4NodeEEERKNS1_INS_4EdgeEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.ade::Handle.35") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.ade::Handle", align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79, !noalias !172 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZNK3ade6HandleINS_4EdgeEE3getEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 7 uses
  %i.d = load atomic i32, ptr %i.c monotonic, align 8, !noalias !172
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i = phi i32 [ %i.d, %bb.b ], [ %i.h, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i, label %_ZNK3ade6HandleINS_4EdgeEE3getEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.f = cmpxchg weak ptr %i.c, i32 %.06.i.i.i.i.i.i, i32 %i.e acq_rel monotonic, align 8, !noalias !172 ; 2 uses
  %i.g = extractvalue { i32, i1 } %i.f, 1
  %i.h = extractvalue { i32, i1 } %i.f, 0
  br i1 %i.g, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i, label %bb.c, !llvm.loop !1

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i: ; preds = %bb.d
  %i.i = load atomic i32, ptr %i.c monotonic, align 8, !noalias !172
  %.not.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNKSt8weak_ptrIN3ade4EdgeEE4lockEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.j = load ptr, ptr %3, align 8, !tbaa !85, !noalias !172
  br label %_ZNKSt8weak_ptrIN3ade4EdgeEE4lockEv.exit.i

_ZNKSt8weak_ptrIN3ade4EdgeEE4lockEv.exit.i:       ; preds = %bb.e, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.k = phi ptr [ %i.j, %bb.e ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i ] ; 3 uses
  %i.l = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt8weak_ptrIN3ade4EdgeEE4lockEv.exit.i
  store i32 0, ptr %i.c, align 8, !tbaa !51
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !52
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !4
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !4
  br label %_ZNK3ade6HandleINS_4EdgeEE3getEv.exit

bb.g:                                             ; preds = %_ZNKSt8weak_ptrIN3ade4EdgeEE4lockEv.exit.i
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i1.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i1.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.c, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.x = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i = phi i32 [ %i.n, %bb.h ], [ %i.x, %bb.i ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.y, label %bb.j, label %_ZNK3ade6HandleINS_4EdgeEE3getEv.exit, !prof !56

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNK3ade6HandleINS_4EdgeEE3getEv.exit

_ZNK3ade6HandleINS_4EdgeEE3getEv.exit:            ; preds = %bb.c, %bb.a, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.j
  %i.z = phi ptr [ %i.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i ], [ %i.k, %bb.j ], [ %i.k, %bb.f ], [ null, %bb.a ], [ null, %bb.c ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !79, !noalias !173 ; 8 uses
  %.not.i.i.i.i.i12 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i12, label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK3ade6HandleINS_4EdgeEE3getEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 7 uses
  %i.ad = load atomic i32, ptr %i.ac monotonic, align 8, !noalias !173
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.06.i.i.i.i.i.i13 = phi i32 [ %i.ad, %bb.k ], [ %i.ah, %bb.m ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i14 = icmp eq i32 %.06.i.i.i.i.i.i13, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i14, label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = add nsw i32 %.06.i.i.i.i.i.i13, 1
  %i.af = cmpxchg weak ptr %i.ac, i32 %.06.i.i.i.i.i.i13, i32 %i.ae acq_rel monotonic, align 8, !noalias !173 ; 2 uses
  %i.ag = extractvalue { i32, i1 } %i.af, 1
  %i.ah = extractvalue { i32, i1 } %i.af, 0
  br i1 %i.ag, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i15, label %bb.l, !llvm.loop !1

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i15: ; preds = %bb.m
  %i.ai = load atomic i32, ptr %i.ac monotonic, align 8, !noalias !173
  %.not.i.i.i.i16 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i.i16, label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i15
  %i.aj = load ptr, ptr %2, align 8, !tbaa !81, !noalias !173
  br label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i

_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i:       ; preds = %bb.n, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i15
  %i.ak = phi ptr [ %i.aj, %bb.n ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i15 ] ; 3 uses
  %i.al = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i
  store i32 0, ptr %i.ac, align 8, !tbaa !51
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !52
  %i.ap = load ptr, ptr %i.ab, align 8, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #24, !inline_history !2
  %i.as = load ptr, ptr %i.ab, align 8, !tbaa !54
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #24, !inline_history !2
  br label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit

bb.p:                                             ; preds = %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i1.i17 = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i1.i17, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ac, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i18

bb.r:                                             ; preds = %bb.p
  %i.ax = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i18

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i18: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i19 = phi i32 [ %i.an, %bb.q ], [ %i.ax, %bb.r ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i19, 1
  br i1 %i.ay, label %bb.s, label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit, !prof !56

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i18
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #24
  br label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit

_ZNK3ade6HandleINS_4NodeEE3getEv.exit:            ; preds = %bb.l, %_ZNK3ade6HandleINS_4EdgeEE3getEv.exit, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i18, %bb.s
  %i.az = phi ptr [ %i.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i18 ], [ %i.ak, %bb.s ], [ %i.ak, %bb.o ], [ null, %_ZNK3ade6HandleINS_4EdgeEE3getEv.exit ], [ null, %bb.l ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z), "nonnull"(ptr %i.az) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !77 ; 3 uses
  %.not = icmp eq ptr %i.bb, null
  br i1 %.not, label %bb.ae, label %bb.t

bb.t:                                             ; preds = %_ZNK3ade6HandleINS_4NodeEE3getEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNK3ade4Edge7dstNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.ade::Handle") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !54
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.be = load ptr, ptr %i.bd, align 8
  invoke void %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !79 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 12 ; 3 uses
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i20 = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i20, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !55 ; 2 uses
  %i.bk = add nsw i32 %i.bj, -1
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i21

bb.x:                                             ; preds = %bb.v
  %i.bl = atomicrmw volatile add ptr %i.bh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i21

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i21: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i22 = phi i32 [ %i.bj, %bb.w ], [ %i.bl, %bb.x ]
  %i.bm = icmp eq i32 %.0.i.i.i.i.i22, 1
  br i1 %i.bm, label %bb.y, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i21
  %i.bn = load ptr, ptr %i.bg, align 8, !tbaa !54
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #24, !inline_history !3
  br label %_ZN3ade6HandleINS_4NodeEED2Ev.exit

_ZN3ade6HandleINS_4NodeEED2Ev.exit:               ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i21, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.ae

bb.z:                                             ; preds = %bb.t
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !79 ; 4 uses
  %.not.i.i.i23 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i23, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit27, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 12 ; 3 uses
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i24 = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i.i24, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !55 ; 2 uses
  %i.bw = add nsw i32 %i.bv, -1
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i25

bb.ac:                                            ; preds = %bb.aa
  %i.bx = atomicrmw volatile add ptr %i.bt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i25

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i25: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i26 = phi i32 [ %i.bv, %bb.ab ], [ %i.bx, %bb.ac ]
  %i.by = icmp eq i32 %.0.i.i.i.i.i26, 1
  br i1 %i.by, label %bb.ad, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit27

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i25
  %i.bz = load ptr, ptr %i.bs, align 8, !tbaa !54
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #24, !inline_history !3
  br label %_ZN3ade6HandleINS_4NodeEED2Ev.exit27

_ZN3ade6HandleINS_4NodeEED2Ev.exit27:             ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i25, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %i.bq

bb.ae:                                            ; preds = %_ZN3ade6HandleINS_4NodeEED2Ev.exit, %_ZNK3ade6HandleINS_4NodeEE3getEv.exit
  call void @_ZN3ade4Edge13resetPrevNodeEPNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull %i.az)
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !79  ; 2 uses
  %i.cd = load <2 x ptr>, ptr %3, align 8, !tbaa !63
  store <2 x ptr> %i.cd, ptr %0, align 8, !tbaa !63
  %.not.i.i.i.i28 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i28, label %_ZN3ade6HandleINS_4EdgeEEC2ERKS2_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 12 ; 3 uses
  %i.cf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i.i29 = icmp eq i8 %i.cf, 0
  br i1 %.not.i.i.i.i.i29, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !55
  %i.ch = add nsw i32 %i.cg, 1
  store i32 %i.ch, ptr %i.ce, align 4, !tbaa !55
  br label %_ZN3ade6HandleINS_4EdgeEEC2ERKS2_.exit

bb.ah:                                            ; preds = %bb.af
  %i.ci = atomicrmw volatile add ptr %i.ce, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN3ade6HandleINS_4EdgeEEC2ERKS2_.exit

_ZN3ade6HandleINS_4EdgeEEC2ERKS2_.exit:           ; preds = %bb.ae, %bb.ag, %bb.ah
  ret void
}

declare void @_ZNK3ade4Edge7dstNodeEv(ptr dead_on_unwind writable sret(%"class.ade::Handle") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare void @_ZN3ade4Edge13resetPrevNodeEPNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN3ade5Graph5nodesEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.ade::util::Range::MapRange") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !82
  store <2 x ptr> %i.a, ptr %0, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZNK3ade5Graph5nodesEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.ade::util::Range::MapRange.39") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !82
  store <2 x ptr> %i.a, ptr %0, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden ptr @_ZNK3ade5Graph13getMetadataIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.ade::details::MetadataId", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N3ade5Graph2IdEESaISC_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  call void @_ZN3ade7details10MetadataIdC1EPv(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.c)
  %i.d = load ptr, ptr %2, align 8
  ret ptr %i.d
}

declare void @_ZN3ade7details10MetadataIdC1EPv(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(64) ptr @_ZN3ade5Graph8metadataEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK3ade5Graph14geMetadataImplEPv(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(64) ptr @_ZNK3ade5Graph14geMetadataImplEPv(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.72", align 8 ; 5 uses
  %3 = alloca %"struct.std::pair.82", align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load i64, ptr %i.b, align 8, !tbaa !89
  %.not.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.d, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !34 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %_ZNSt13unordered_mapIPvSt10unique_ptrIN3ade7details8MetadataESt14default_deleteIS4_EESt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_S7_EEE4findERSD_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.g = icmp eq ptr %1, %i.f
  br i1 %i.g, label %_ZNSt13unordered_mapIPvSt10unique_ptrIN3ade7details8MetadataESt14default_deleteIS4_EESt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_S7_EEE4findERSD_.exit, label %bb.c, !llvm.loop !174

bb.e:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %1 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load i64, ptr %i.i, align 8, !tbaa !32   ; 2 uses
  %i.k = urem i64 %i.h, %i.j                      ; 2 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !90   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapIPvSt10unique_ptrIN3ade7details8MetadataESt14default_deleteIS4_EESt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_S7_EEE4findERSD_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_0
