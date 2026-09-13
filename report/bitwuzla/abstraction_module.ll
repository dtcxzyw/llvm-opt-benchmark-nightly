Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/abstraction_module?download=true
inline.NumInlined: 6597
inline.NumDeleted: 2288
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_ZN4bzla8bitblast19BitblasterInterfaceINS0_7AigNodeEE13bv_mul_squareERKSt6vectorIS2_SaIS2_EE:bb.a
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !266  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc71, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %i.m, %.noexc71 ] ; 2 uses
  tail call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #24
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !20

_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !265
  br label %_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exit.i

_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exitthread-pre-split.i, %.noexc71
  %i.p = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exitthread-pre-split.i ], [ %i.m, %.noexc71 ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE7reserveEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exit.i
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !267
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.t) #25
  br label %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE7reserveEm.exit: ; preds = %_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exit.i, %bb.e
  store ptr %i.l, ptr %0, align 8, !tbaa !265
  store ptr %i.l, ptr %i.k, align 8, !tbaa !266
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  store ptr %i.u, ptr %i.j, align 8, !tbaa !267
  %i.v = icmp samesign ugt i64 %i.g, 2            ; 3 uses
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE7reserveEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.g

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backEOS2_.exit, %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE7reserveEm.exit
  %i.y = icmp ugt i64 %i.g, 1
  br i1 %i.y, label %bb.m, label %._crit_edge.thread

bb.f:                                             ; preds = %bb.t, %bb.s, %bb.d, %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backEOS2_.exit
  %.04895 = phi i64 [ 1, %.lr.ph ], [ %i.ah, %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.aa = load ptr, ptr %2, align 8, !tbaa !265   ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.04895
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.h
  invoke void @_ZN4bzla8bitblast10AigManager11rewrite_andERKNS0_7AigNodeES4_(ptr dead_on_unwind nonnull writable sret(%"class.bzla::bitblast::AigNode") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE6mk_andERKS2_S5_.exit unwind label %bb.j

_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE6mk_andERKS2_S5_.exit: ; preds = %bb.g
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !266 ; 3 uses
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !267
  %.not.i.i73 = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i.i73, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE6mk_andERKS2_S5_.exit
  invoke void @_ZN4bzla8bitblast7AigNodeC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc74 unwind label %bb.k

.noexc74:                                         ; preds = %bb.h
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !266
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ag, ptr %i.x, align 8, !tbaa !266
  br label %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backEOS2_.exit

bb.i:                                             ; preds = %_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE6mk_andERKS2_S5_.exit
  invoke void @_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backEOS2_.exit unwind label %bb.k

_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backEOS2_.exit: ; preds = %.noexc74, %bb.i
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ah = add nuw i64 %.04895, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !1730

bb.j:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn68 = phi { ptr, i32 } [ %i.aj, %bb.k ], [ %i.ai, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.al

bb.m:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZN4bzla8bitblast7AigNodeC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE8mk_falseEv.exit unwind label %bb.p

_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE8mk_falseEv.exit: ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !266 ; 3 uses
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !267
  %.not.i.i77 = icmp eq ptr %i.am, %i.an
  br i1 %.not.i.i77, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE8mk_falseEv.exit
  invoke void @_ZN4bzla8bitblast7AigNodeC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc78 unwind label %bb.q

.noexc78:                                         ; preds = %bb.n
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !266
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !266
  br label %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backEOS2_.exit80

bb.o:                                             ; preds = %_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE8mk_falseEv.exit
  invoke void @_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.am, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backEOS2_.exit80 unwind label %bb.q

_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backEOS2_.exit80: ; preds = %.noexc78, %bb.o
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %._crit_edge.thread

bb.p:                                             ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #24
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.q ], [ %i.aq, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.al

._crit_edge.thread:                               ; preds = %bb.c, %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backEOS2_.exit80, %._crit_edge
  %i.as = phi i1 [ %i.v, %._crit_edge ], [ %i.v, %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backEOS2_.exit80 ], [ false, %bb.c ]
  %i.at = load ptr, ptr %2, align 8, !tbaa !265
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.h ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !266 ; 3 uses
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !267
  %.not.i = icmp eq ptr %i.aw, %i.ax
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge.thread
  invoke void @_ZN4bzla8bitblast7AigNodeC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.au)
          to label %.noexc81 unwind label %bb.f

.noexc81:                                         ; preds = %bb.s
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !266
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.az, ptr %i.av, align 8, !tbaa !266
  br label %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backERKS2_.exit

bb.t:                                             ; preds = %._crit_edge.thread
  invoke void @_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.au)
          to label %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backERKS2_.exit unwind label %bb.f

_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backERKS2_.exit: ; preds = %.noexc81, %bb.t
  br i1 %i.as, label %.lr.ph104, label %._crit_edge105

.lr.ph104:                                        ; preds = %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backERKS2_.exit
  %i.ba = add nuw nsw i64 %i.g, 1
  %i.bb = lshr i64 %i.ba, 1
  %i.bc = add nsw i64 %i.g, -2
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.bb, i64 2)
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph104, %._crit_edge101
  %.046103 = phi i64 [ %i.bc, %.lr.ph104 ], [ %i.bu, %._crit_edge101 ] ; 4 uses
  %.047102 = phi i64 [ 1, %.lr.ph104 ], [ %i.bt, %._crit_edge101 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store i64 0, ptr %5, align 8, !tbaa !293
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.bh = load ptr, ptr %2, align 8, !tbaa !265
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.046103
  invoke void @_ZN4bzla8bitblast7AigNodeC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.bi)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bj = shl nuw i64 %.047102, 1
  %i.bk = sub i64 %i.h, %i.bj                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.bl = load ptr, ptr %0, align 8, !tbaa !265
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bk
  invoke void @_ZN4bzla8bitblast19BitblasterInterfaceINS0_7AigNodeEE10half_adderERKS2_S5_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.706") align 8 %7, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bn = load ptr, ptr %0, align 8, !tbaa !265
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bk
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla8bitblast7AigNodeaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc83 unwind label %bb.z   ; 0 uses

.noexc83:                                         ; preds = %bb.w
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla8bitblast7AigNodeaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.bd)
          to label %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit unwind label %bb.z ; 0 uses

_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit: ; preds = %.noexc83
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bd) #24
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.br = sub i64 %i.g, %i.bk                     ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.g
  br i1 %i.bs, label %.lr.ph100, label %._crit_edge101

._crit_edge101:                                   ; preds = %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit91, %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.bt = add nuw nsw i64 %.047102, 1             ; 2 uses
  %i.bu = add i64 %.046103, -1
  %exitcond107.not = icmp eq i64 %i.bt, %umax
  br i1 %exitcond107.not, label %._crit_edge105, label %bb.u, !llvm.loop !1731

bb.x:                                             ; preds = %bb.u
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.y:                                             ; preds = %bb.v
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %.noexc83, %bb.w
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bd) #24
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %7) #24
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn61 = phi { ptr, i32 } [ %i.bx, %bb.z ], [ %i.bw, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.aj

.lr.ph100:                                        ; preds = %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit, %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit91
  %.04599.in = phi i64 [ %.04599, %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit91 ], [ %i.bk, %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit ]
  %.098 = phi i64 [ %i.ci, %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit91 ], [ %.046103, %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit ] ; 3 uses
  %.04497 = phi i64 [ %i.ch, %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit91 ], [ %i.br, %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit ]
  %.04599 = add i64 %.04599.in, -1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.by = icmp eq i64 %.098, %.046103
  br i1 %i.by, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph100
  invoke void @_ZN4bzla8bitblast7AigNodeC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
          to label %_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE8mk_falseEv.exit86 unwind label %bb.ae

bb.ac:                                            ; preds = %.lr.ph100
  %i.bz = load ptr, ptr %2, align 8, !tbaa !265
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.098
  invoke void @_ZN4bzla8bitblast10AigManager11rewrite_andERKNS0_7AigNodeES4_(ptr dead_on_unwind nonnull writable sret(%"class.bzla::bitblast::AigNode") align 8 %8, ptr noundef nonnull align 8 dereferenceable(112) %i.be, ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE8mk_falseEv.exit86 unwind label %bb.ae

_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE8mk_falseEv.exit86: ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.cb = load ptr, ptr %0, align 8, !tbaa !265
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.04599
  invoke void @_ZN4bzla8bitblast19BitblasterInterfaceINS0_7AigNodeEE10full_adderERKS2_S5_S5_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.706") align 8 %9, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE8mk_falseEv.exit86
  %i.cd = load ptr, ptr %0, align 8, !tbaa !265
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.04599
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla8bitblast7AigNodeaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %.noexc89 unwind label %bb.ag  ; 0 uses

.noexc89:                                         ; preds = %bb.ad
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla8bitblast7AigNodeaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.bg)
          to label %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit91 unwind label %bb.ag ; 0 uses

_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit91: ; preds = %.noexc89
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bg) #24
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.ch = add i64 %.04497, 1                      ; 2 uses
  %i.ci = add i64 %.098, -1
  %exitcond106.not = icmp eq i64 %i.ch, %i.g
  br i1 %exitcond106.not, label %._crit_edge101, label %.lr.ph100, !llvm.loop !1732

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.af:                                            ; preds = %_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE8mk_falseEv.exit86
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %.noexc89, %bb.ad
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bg) #24
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %9) #24
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn63 = phi { ptr, i32 } [ %i.cl, %bb.ag ], [ %i.ck, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #24
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %.pn63.pn = phi { ptr, i32 } [ %.pn63, %bb.ah ], [ %i.cj, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.aa
  %.pn63.pn.pn = phi { ptr, i32 } [ %.pn63.pn, %bb.ai ], [ %.pn61, %bb.aa ]
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #24
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.x
  %.pn63.pn.pn.pn = phi { ptr, i32 } [ %.pn63.pn.pn, %bb.aj ], [ %i.bv, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.r, %bb.l, %bb.f
  %.pn68.pn = phi { ptr, i32 } [ %.pn68, %bb.l ], [ %.pn63.pn.pn.pn, %bb.ak ], [ %i.z, %bb.f ], [ %.pn, %bb.r ]
  call void @_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #24
  resume { ptr, i32 } %.pn68.pn

._crit_edge105:                                   ; preds = %._crit_edge101, %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backERKS2_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4bzla8bitblast19BitblasterInterfaceINS0_7AigNodeEE6bv_iteES2_RKSt6vectorIS2_SaIS2_EES8_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.530") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.bzla::bitblast::AigNode", align 8 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !266  ; 2 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !265    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #27
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not30 = icmp eq ptr %i.b, %i.c
  br i1 %.not30, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = invoke noundef ptr @_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g, ptr noundef null, ptr noundef null)
          to label %.noexc16 unwind label %bb.f   ; 3 uses

.noexc16:                                         ; preds = %bb.d
  %i.l = load ptr, ptr %0, align 8, !tbaa !265    ; 3 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !266  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc16, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %i.l, %.noexc16 ] ; 2 uses
  tail call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #24
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.m
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !20

_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !265
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableIN4bzla4node4KindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm:bb.a
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #24 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !258
  invoke void @__cxa_rethrow() #27
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #28
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIN4bzla4node4KindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !241
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIN4bzla4node4KindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIN4bzla4node4KindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !240    ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !116  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !117
  store ptr %i.w, ptr %3, align 8, !tbaa !117
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !116
  store ptr %3, ptr %i.x, align 8, !tbaa !117
  br label %_ZNSt10_HashtableIN4bzla4node4KindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !262
  store ptr %i.z, ptr %3, align 8, !tbaa !117
  store ptr %3, ptr %i.y, align 8, !tbaa !262
  %i.aa = load ptr, ptr %3, align 8, !tbaa !117   ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !241
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !119
  %i.ae = zext i8 %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !116
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !116
  br label %_ZNSt10_HashtableIN4bzla4node4KindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb0EEE.exit

_ZNSt10_HashtableIN4bzla4node4KindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !1971
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !1971
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIN4bzla4node4KindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !189

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !1973
  br label %_ZNSt10_HashtableIN4bzla4node4KindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4node4KindEmELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !189

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4node4KindEmELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #26 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIN4bzla4node4KindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN4bzla4node4KindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4node4KindEmELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4node4KindEmELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !262  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !262
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN4bzla4node4KindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIN4bzla4node4KindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIN4bzla4node4KindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !117 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i8, ptr %i.j, align 8, !tbaa !119
  %i.l = zext i8 %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !116  ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !262
  store ptr %i.p, ptr %.02530, align 8, !tbaa !117
  store ptr %.02530, ptr %i.g, align 8, !tbaa !262
  store ptr %i.g, ptr %i.n, align 8, !tbaa !116
  %i.q = load ptr, ptr %.02530, align 8, !tbaa !117
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8, !tbaa !116
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !117
  store ptr %i.s, ptr %.02530, align 8, !tbaa !117
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !116
  store ptr %.02530, ptr %i.t, align 8, !tbaa !117
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1972

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIN4bzla4node4KindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !240    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIN4bzla4node4KindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !241
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #25
  br label %_ZNSt10_HashtableIN4bzla4node4KindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN4bzla4node4KindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !241
  store ptr %.0.i, ptr %0, align 8, !tbaa !240
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_SH_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #17 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i.i25 = freeze i64 %i.c                    ; 2 uses
  %i.d = ashr exact i64 %.fr.i.i25, 4             ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_SH_SH_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 8          ; 14 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph46

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEET_SH_SH_T0_.exit"
  %i.j = icmp eq i64 %i.cw, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph46, !llvm.loop !1974

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i28.lcssa = phi i64 [ %.fr.i.i25, %.lr.ph ], [ %.fr.i.i, %bb.b ] ; 2 uses
  %storemerge26.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i.i28.lcssa, 4             ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = and i64 %.fr.i.i28.lcssa, 16
  %i.q = icmp eq i64 %i.p, 0
  %i.r = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i", %._crit_edge
  %.011.i.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.ba, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %0, i64 %.011.i.i.i ; 2 uses
  %.sroa.04.0.copyload.i.i.i = load i32, ptr %i.w, align 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %i.x = icmp slt i64 %.011.i.i.i, %i.o
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.011.i.i.i, %bb.c ] ; 2 uses
  %i.y = shl i64 %.038.i.i.i.i, 1                 ; 2 uses
  %i.z = add i64 %i.y, 2                          ; 2 uses
  %i.aa = getelementptr inbounds [16 x i8], ptr %0, i64 %i.z
  %i.ab = or disjoint i64 %i.y, 1                 ; 2 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.aa, i64 8
  %.val.i.i.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !255
  %i.ae = getelementptr i8, ptr %i.ac, i64 8
  %.val1.i.i.i.i.i = load i64, ptr %i.ae, align 8, !tbaa !255
  %i.af = icmp ult i64 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.af, i64 %i.ab, i64 %i.z ; 4 uses
  %i.ag = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i.i ; 2 uses
  %i.ah = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i.i.i.i ; 2 uses
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !157
  store i32 %i.ai, ptr %i.ah, align 8, !tbaa !254
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !63
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !255
  %i.am = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.am, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1975

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.011.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.an = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  %or.cond.i.i.i = select i1 %i.q, i1 %i.an, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ao = load i32, ptr %i.s, align 4, !tbaa !157
  store i32 %i.ao, ptr %i.t, align 8, !tbaa !254
  %i.ap = load i64, ptr %i.u, align 8, !tbaa !63
  store i64 %i.ap, ptr %i.v, align 8, !tbaa !255
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.aq = icmp sgt i64 %.1.i.i.i.i, %.011.i.i.i
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.011.i.i.i.i.i = phi i64 [ %.0912.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0912.in.i.i.i.i.i = add nsw i64 %.011.i.i.i.i.i, -1
  %.0912.i.i.i.i.i = sdiv i64 %.0912.in.i.i.i.i.i, 2 ; 4 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0912.i.i.i.i.i ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %.val.i.i.i.i.i.i = load i64, ptr %i.as, align 8, !tbaa !255 ; 2 uses
  %i.at = icmp ult i64 %.val.i.i.i.i.i.i, %.sroa.5.0.copyload.i.i.i
  br i1 %i.at, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.011.i.i.i.i.i ; 2 uses
  %i.av = load i32, ptr %i.ar, align 8, !tbaa !157
  store i32 %i.av, ptr %i.au, align 8, !tbaa !254
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %.val.i.i.i.i.i.i, ptr %i.aw, align 8, !tbaa !255
  %i.ax = icmp sgt i64 %.0912.i.i.i.i.i, %.011.i.i.i
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i", !llvm.loop !1976

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.011.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0912.i.i.i.i.i, %bb.f ]
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload.i.i.i, ptr %i.ay, align 8, !tbaa !254
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %.sroa.5.0.copyload.i.i.i, ptr %i.az, align 8, !tbaa !255
  %.not.i.i.i = icmp eq i64 %.011.i.i.i, 0
  %i.ba = add nsw i64 %.011.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.c, !llvm.loop !1977

.lr.ph.i9.i:                                      ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_SH_SH_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.bb, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_SH_SH_RT0_.exit.i.i" ], [ %storemerge26.lcssa, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i" ] ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16 ; 4 uses
  %.sroa.04.0.copyload.i.i10.i = load i32, ptr %i.bb, align 8
  %.sroa.5.0..sroa_idx.i.i11.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 2 uses
  %.sroa.5.0.copyload.i.i12.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i11.i, align 8 ; 2 uses
  %i.bc = load i32, ptr %0, align 4, !tbaa !157
  store i32 %i.bc, ptr %i.bb, align 8, !tbaa !254
  %i.bd = load i64, ptr %i.h, align 8, !tbaa !63
  store i64 %i.bd, ptr %.sroa.5.0..sroa_idx.i.i11.i, align 8, !tbaa !255
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = sub i64 %i.be, %i.a                     ; 3 uses
  %i.bg = ashr exact i64 %i.bf, 4                 ; 3 uses
  %i.bh = add nsw i64 %i.bg, -1
  %i.bi = lshr i64 %i.bh, 1
  %i.bj = icmp sgt i64 %i.bg, 2
  br i1 %i.bj, label %.lr.ph.i.i.i21.i, label %._crit_edge.i.i.i13.i

.lr.ph.i.i.i21.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i21.i
  %.038.i.i.i22.i = phi i64 [ %spec.select.i.i.i25.i, %.lr.ph.i.i.i21.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bk = shl i64 %.038.i.i.i22.i, 1              ; 2 uses
  %i.bl = add i64 %i.bk, 2                        ; 2 uses
  %i.bm = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bl
  %i.bn = or disjoint i64 %i.bk, 1                ; 2 uses
  %i.bo = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bm, i64 8
  %.val.i.i.i.i23.i = load i64, ptr %i.bp, align 8, !tbaa !255
  %i.bq = getelementptr i8, ptr %i.bo, i64 8
  %.val1.i.i.i.i24.i = load i64, ptr %i.bq, align 8, !tbaa !255
  %i.br = icmp ult i64 %.val.i.i.i.i23.i, %.val1.i.i.i.i24.i
  %spec.select.i.i.i25.i = select i1 %i.br, i64 %i.bn, i64 %i.bl ; 4 uses
  %i.bs = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i25.i ; 2 uses
  %i.bt = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i.i.i22.i ; 2 uses
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !157
  store i32 %i.bu, ptr %i.bt, align 8, !tbaa !254
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !63
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !255
  %i.by = icmp slt i64 %spec.select.i.i.i25.i, %i.bi
  br i1 %i.by, label %.lr.ph.i.i.i21.i, label %._crit_edge.i.i.i13.i, !llvm.loop !1975

._crit_edge.i.i.i13.i:                            ; preds = %.lr.ph.i.i.i21.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i14.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i25.i, %.lr.ph.i.i.i21.i ] ; 5 uses
  %i.bz = and i64 %i.bf, 16
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i13.i
  %i.cb = add nsw i64 %i.bg, -2
  %i.cc = ashr exact i64 %i.cb, 1
  %i.cd = icmp eq i64 %.0.lcssa.i.i.i14.i, %i.cc
  br i1 %i.cd, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.ce = shl nuw nsw i64 %.0.lcssa.i.i.i14.i, 1
  %i.cf = or disjoint i64 %i.ce, 1                ; 2 uses
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i14.i ; 2 uses
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !157
  store i32 %i.ci, ptr %i.ch, align 8, !tbaa !254
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !63
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !255
  br label %.lr.ph.i.i.i.i16.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i13.i
  %.not.i.i15.i = icmp eq i64 %.0.lcssa.i.i.i14.i, 0
  br i1 %.not.i.i15.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_SH_SH_RT0_.exit.i.i", label %.lr.ph.i.i.i.i16.i.preheader

.lr.ph.i.i.i.i16.i.preheader:                     ; preds = %bb.h, %.thread.i.i.i
  %.011.i.i.i.i17.i.ph = phi i64 [ %.0.lcssa.i.i.i14.i, %bb.h ], [ %i.cf, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %.lr.ph.i.i.i.i16.i.preheader, %bb.i
  %.011.i.i.i.i17.i = phi i64 [ %.0912.i.i56.i.i.i, %bb.i ], [ %.011.i.i.i.i17.i.ph, %.lr.ph.i.i.i.i16.i.preheader ] ; 3 uses
  %.0912.in.i.i.i.i18.i = add nsw i64 %.011.i.i.i.i17.i, -1
  %.0912.i.i56.i.i.i = lshr i64 %.0912.in.i.i.i.i18.i, 1 ; 3 uses
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0912.i.i56.i.i.i ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 8
  %.val.i.i.i.i.i19.i = load i64, ptr %i.cn, align 8, !tbaa !255 ; 2 uses
  %i.co = icmp ult i64 %.val.i.i.i.i.i19.i, %.sroa.5.0.copyload.i.i12.i
  br i1 %i.co, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_SH_SH_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i16.i
  %i.cp = getelementptr inbounds [16 x i8], ptr %0, i64 %.011.i.i.i.i17.i ; 2 uses
  %i.cq = load i32, ptr %i.cm, align 8, !tbaa !157
  store i32 %i.cq, ptr %i.cp, align 8, !tbaa !254
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %.val.i.i.i.i.i19.i, ptr %i.cr, align 8, !tbaa !255
  %.not7.i.i.i = icmp eq i64 %.0912.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_SH_SH_RT0_.exit.i.i", label %.lr.ph.i.i.i.i16.i, !llvm.loop !1976

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_SH_SH_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i16.i, %bb.h
  %.0.lcssa.i.i.i.i20.i = phi i64 [ 0, %bb.h ], [ %.011.i.i.i.i17.i, %.lr.ph.i.i.i.i16.i ], [ 0, %bb.i ]
  %i.cs = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i20.i ; 2 uses
  store i32 %.sroa.04.0.copyload.i.i10.i, ptr %i.cs, align 8, !tbaa !254
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i64 %.sroa.5.0.copyload.i.i12.i, ptr %i.ct, align 8, !tbaa !255
  %i.cu = icmp sgt i64 %i.bf, 16
  br i1 %i.cu, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_SH_SH_T0_.exit", !llvm.loop !1978

.lr.ph46:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2645 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02744 = phi i64 [ %i.cw, %bb.b ], [ %2, %.lr.ph ]
  %i.cv = phi i64 [ %i.ej, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cw = add nsw i64 %.02744, -1                 ; 3 uses
  %i.cx = lshr i64 %i.cv, 1
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cx ; 5 uses
  %i.cz = getelementptr inbounds i8, ptr %storemerge2645, i64 -16 ; 4 uses
  %.val.i.i.i = load i64, ptr %i.g, align 8, !tbaa !255 ; 5 uses
  %i.da = getelementptr i8, ptr %i.cy, i64 8      ; 3 uses
  %.val1.i.i.i = load i64, ptr %i.da, align 8, !tbaa !255 ; 5 uses
  %i.db = icmp ult i64 %.val.i.i.i, %.val1.i.i.i
  %i.dc = getelementptr i8, ptr %storemerge2645, i64 -8 ; 3 uses
  %.val1.i27.i.i = load i64, ptr %i.dc, align 8, !tbaa !255 ; 6 uses
  br i1 %i.db, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph46
  %i.dd = icmp ult i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.dd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.de = load i32, ptr %0, align 8, !tbaa !157
  %i.df = load i32, ptr %i.cy, align 8, !tbaa !157
  store i32 %i.df, ptr %0, align 8, !tbaa !157
  store i32 %i.de, ptr %i.cy, align 8, !tbaa !157
  %i.dg = load i64, ptr %i.h, align 8, !tbaa !63
  store i64 %.val1.i.i.i, ptr %i.h, align 8, !tbaa !63
  store i64 %i.dg, ptr %i.da, align 8, !tbaa !63
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.dh = icmp ult i64 %.val.i.i.i, %.val1.i27.i.i
  %i.di = load i32, ptr %0, align 8, !tbaa !157   ; 2 uses
  br i1 %i.dh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dj = load i32, ptr %i.cz, align 8, !tbaa !157
  store i32 %i.dj, ptr %0, align 8, !tbaa !157
  store i32 %i.di, ptr %i.cz, align 8, !tbaa !157
  %i.dk = load i64, ptr %i.h, align 8, !tbaa !63
  store i64 %.val1.i27.i.i, ptr %i.h, align 8, !tbaa !63
  store i64 %i.dk, ptr %i.dc, align 8, !tbaa !63
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %i.dl = load i32, ptr %i.f, align 8, !tbaa !157
  store i32 %i.dl, ptr %0, align 8, !tbaa !157
  store i32 %i.di, ptr %i.f, align 8, !tbaa !157
  %i.dm = load i64, ptr %i.h, align 8, !tbaa !63
  store i64 %.val.i.i.i, ptr %i.h, align 8, !tbaa !63
  store i64 %i.dm, ptr %i.g, align 8, !tbaa !63
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph46
  %i.dn = icmp ult i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.dn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.do = load i32, ptr %0, align 8, !tbaa !157
  %i.dp = load i32, ptr %i.f, align 8, !tbaa !157
  store i32 %i.dp, ptr %0, align 8, !tbaa !157
  store i32 %i.do, ptr %i.f, align 8, !tbaa !157
  %i.dq = load i64, ptr %i.h, align 8, !tbaa !63
  store i64 %.val.i.i.i, ptr %i.h, align 8, !tbaa !63
  store i64 %i.dq, ptr %i.g, align 8, !tbaa !63
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.dr = icmp ult i64 %.val1.i.i.i, %.val1.i27.i.i
  %i.ds = load i32, ptr %0, align 8, !tbaa !157   ; 2 uses
  br i1 %i.dr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dt = load i32, ptr %i.cz, align 8, !tbaa !157
  store i32 %i.dt, ptr %0, align 8, !tbaa !157
  store i32 %i.ds, ptr %i.cz, align 8, !tbaa !157
  %i.du = load i64, ptr %i.h, align 8, !tbaa !63
  store i64 %.val1.i27.i.i, ptr %i.h, align 8, !tbaa !63
  store i64 %i.du, ptr %i.dc, align 8, !tbaa !63
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  %i.dv = load i32, ptr %i.cy, align 8, !tbaa !157
  store i32 %i.dv, ptr %0, align 8, !tbaa !157
  store i32 %i.ds, ptr %i.cy, align 8, !tbaa !157
  %i.dw = load i64, ptr %i.h, align 8, !tbaa !63
  store i64 %.val1.i.i.i, ptr %i.h, align 8, !tbaa !63
  store i64 %i.dw, ptr %i.da, align 8, !tbaa !63
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader", %bb.v
  %.sroa.012.0.i.i = phi ptr [ %i.dz, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2645, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader" ]
  %.val1.i.i13.i = load i64, ptr %i.h, align 8, !tbaa !255 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i" ], [ %i.dz, %bb.t ] ; 10 uses
  %i.dx = getelementptr i8, ptr %.sroa.012.1.i.i, i64 8
  %.val.i.i14.i = load i64, ptr %i.dx, align 8, !tbaa !255 ; 2 uses
  %i.dy = icmp ult i64 %.val.i.i14.i, %.val1.i.i13.i
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16 ; 2 uses
  br i1 %i.dy, label %bb.t, label %.preheader.i.i.preheader, !llvm.loop !1979

.preheader.i.i.preheader:                         ; preds = %bb.t
  %i.ea = getelementptr i8, ptr %.sroa.012.1.i.i, i64 8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %.preheader.i.i.preheader ] ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.eb = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %.val1.i9.i.i = load i64, ptr %i.eb, align 8, !tbaa !255 ; 2 uses
  %i.ec = icmp ult i64 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.ec, label %.preheader.i.i, label %bb.u, !llvm.loop !1980

bb.u:                                             ; preds = %.preheader.i.i
  %i.ed = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ed, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEET_SH_SH_T0_.exit"

bb.v:                                             ; preds = %bb.u
  %i.ee = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %i.ef = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !157
  %i.eg = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !157
  store i32 %i.eg, ptr %.sroa.012.1.i.i, align 4, !tbaa !157
  store i32 %i.ef, ptr %.sroa.0.1.i.i, align 4, !tbaa !157
  store i64 %.val1.i9.i.i, ptr %i.ea, align 8, !tbaa !63
  store i64 %.val.i.i14.i, ptr %i.ee, align 8, !tbaa !63
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i", !llvm.loop !1981

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEET_SH_SH_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_SH_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2645, i64 noundef %i.cw)
  %i.eh = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.ei = sub i64 %i.eh, %i.a
  %.fr.i.i = freeze i64 %i.ei                     ; 2 uses
  %i.ej = ashr exact i64 %.fr.i.i, 4              ; 2 uses
  %i.ek = icmp sgt i64 %i.ej, 16
  br i1 %i.ek, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_SH_SH_T0_.exit", !llvm.loop !1974

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_SH_SH_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEET_SH_SH_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla8abstract9LemmaKindEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_0EEEvT_SH_SH_RT0_.exit.i.i", %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRS4_RKmEEES3_INS7_14_Node_iteratorIS5_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 6 uses
  store ptr null, ptr %i.a, align 8, !tbaa !117
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %1, align 4, !tbaa !157    ; 6 uses
  store i32 %i.c, ptr %i.b, align 8, !tbaa !226
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %2, align 8, !tbaa !63
  store i64 %i.e, ptr %i.d, align 8, !tbaa !227
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !259
  %.not.not = icmp eq i64 %i.g, 0
  br i1 %.not.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.h = zext i32 %i.c to i64                     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !223  ; 2 uses
  %i.k = urem i64 %i.h, %i.j                      ; 5 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !224
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !116  ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %.critedge28, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.035.0.in = phi ptr [ %i.o, %bb.b ], [ %.sroa.035.0, %bb.d ]
  %.sroa.035.0 = load ptr, ptr %.sroa.035.0.in, align 8, !tbaa !117 ; 4 uses
  %.not = icmp eq ptr %.sroa.035.0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.035.0, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !157
  %i.r = icmp eq i32 %i.c, %i.q
  br i1 %i.r, label %_ZNKSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS4_m.exit, label %bb.c, !llvm.loop !1982

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.c to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !223
  %i.v = urem i64 %i.s, %i.u
  br label %.critedge28

bb.f:                                             ; preds = %.thread
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !117  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !157
  %i.z = icmp eq i32 %i.c, %i.y
  br i1 %i.z, label %_ZNKSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS4_m.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.aa = icmp eq i32 %i.c, %i.ad
  br i1 %i.aa, label %_ZNKSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS4_m.exit, label %.lr.ph.i.i, !llvm.loop !14

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.ab, %bb.g ], [ %i.w, %bb.f ]
  %i.ab = load ptr, ptr %.020.i.i, align 8, !tbaa !117 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.ab, null
  br i1 %.not18.i.i, label %.critedge28, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !157 ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = urem i64 %i.ae, %i.j
  %.not19.i.i = icmp eq i64 %i.af, %i.k
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !14

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge28, !llvm.loop !14

.critedge28:                                      ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread
  %i.ag = phi i64 [ %i.v, %bb.e ], [ %i.k, %.thread ], [ %i.k, %..loopexit_crit_edge21.i.i ], [ %i.k, %.lr.ph.i.i ]
  %i.ah = phi i64 [ %i.s, %bb.e ], [ %i.h, %.thread ], [ %i.h, %..loopexit_crit_edge21.i.i ], [ %i.h, %.lr.ph.i.i ]
  %i.ai = invoke ptr @_ZNSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ag, i64 noundef %i.ah, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZNSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %_ZNSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit30

_ZNSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit30: ; preds = %.critedge28
  %i.aj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #25
  resume { ptr, i32 } %i.aj

_ZNKSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS4_m.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.043.0.ph = phi ptr [ %.sroa.035.0, %bb.d ], [ %i.w, %bb.f ], [ %i.ab, %bb.g ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #25
  br label %_ZNSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.critedge28, %_ZNKSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS4_m.exit
  %.sroa.444.056 = phi i8 [ 0, %_ZNKSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS4_m.exit ], [ 1, %.critedge28 ]
  %.sroa.043.054 = phi ptr [ %.sroa.043.0.ph, %_ZNKSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS4_m.exit ], [ %i.ai, %.critedge28 ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.043.054, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.444.056, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEEvT_SJ_T0_T1_"(ptr %0, ptr %1, i64 noundef %2, ptr %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.783", align 8 ; 8 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEEvT_SJ_SJ_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 20 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 32 uses
  %i.m = icmp eq i64 %2, 0
  br i1 %i.m, label %._crit_edge, label %.lr.ph484

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEET_SJ_SJ_T0_.exit"
  %i.n = icmp eq i64 %i.au, 0
  br i1 %i.n, label %._crit_edge, label %.lr.ph484, !llvm.loop !1983

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.d, %.lr.ph ], [ %i.nf, %bb.b ] ; 2 uses
  %storemerge142.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.0122.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.o = add nsw i64 %.lcssa, -2
  %i.p = lshr i64 %i.o, 1
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EED2Ev.exit13.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.p, %._crit_edge ], [ %i.w, %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EED2Ev.exit13.i.i.i ] ; 4 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %0, i64 %.010.i.i.i ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !134
  store ptr null, ptr %i.q, align 8, !tbaa !134
  store i64 %i.r, ptr %6, align 8, !tbaa !134
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEEvT_T0_SK_T1_T2_"(ptr nonnull %0, i64 noundef %.010.i.i.i, i64 noundef %.lcssa, ptr noundef align 8 %6, ptr %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %6, align 8, !tbaa !134    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EED2Ev.exit13.i.i.i, label %_ZNKSt14default_deleteIN4bzla8abstract16AbstractionLemmaEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4bzla8abstract16AbstractionLemmaEEclEPS2_.exit.i.i.i.i: ; preds = %bb.d
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(20) %i.s) #24, !inline_history !1984
  br label %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EED2Ev.exit13.i.i.i

_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EED2Ev.exit13.i.i.i: ; preds = %_ZNKSt14default_deleteIN4bzla8abstract16AbstractionLemmaEEclEPS2_.exit.i.i.i.i, %bb.d
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.w = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEEvT_SJ_RT0_.exit.i.i", label %bb.c, !llvm.loop !1985

bb.e:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %6, align 8, !tbaa !134    ; 2 uses
  %.not.i14.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i14.i.i.i, label %common.resume, label %common.resume.sink.split.i

common.resume.sink.split.i:                       ; preds = %bb.g, %bb.e
  %.sink31.i = phi ptr [ %i.ar, %bb.g ], [ %i.y, %bb.e ] ; 2 uses
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.aq, %bb.g ], [ %i.x, %bb.e ]
  %i.z = load ptr, ptr %.sink31.i, align 8, !tbaa !42
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(20) %.sink31.i) #24, !inline_history !1986
  br label %common.resume

common.resume:                                    ; preds = %bb.e, %common.resume.sink.split.i, %bb.g, %common.resume.i.i
  %common.resume.op = phi { ptr, i32 } [ %common.resume.op.i.i, %common.resume.i.i ], [ %i.aq, %bb.g ], [ %i.x, %bb.e ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEEvT_SJ_RT0_.exit.i.i": ; preds = %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EED2Ev.exit13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEEvT_SJ_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEEvT_SJ_SJ_RT0_.exit.i16.i"
  %.sroa.0.03.i.i = phi ptr [ %i.ac, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEEvT_SJ_SJ_RT0_.exit.i16.i" ], [ %storemerge142.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEEvT_SJ_RT0_.exit.i.i" ]
  %i.ac = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !134
  store ptr null, ptr %i.ac, align 8, !tbaa !134
  %i.ae = load ptr, ptr %0, align 8, !tbaa !134
  store ptr null, ptr %0, align 8, !tbaa !134
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !134 ; 3 uses
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !134
  %.not.i.i.i.i.i.i10.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i10.i, label %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EEaSEOS5_.exit.i.i12.i, label %_ZNKSt14default_deleteIN4bzla8abstract16AbstractionLemmaEEclEPS2_.exit.i.i.i.i.i.i11.i

_ZNKSt14default_deleteIN4bzla8abstract16AbstractionLemmaEEclEPS2_.exit.i.i.i.i.i.i11.i: ; preds = %.lr.ph.i9.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !42
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(20) %i.af) #24, !inline_history !1987
  br label %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EEaSEOS5_.exit.i.i12.i

_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EEaSEOS5_.exit.i.i12.i: ; preds = %_ZNKSt14default_deleteIN4bzla8abstract16AbstractionLemmaEEclEPS2_.exit.i.i.i.i.i.i11.i, %.lr.ph.i9.i
  %i.aj = ptrtoint ptr %i.ac to i64
  %i.ak = sub i64 %i.aj, %i.a                     ; 2 uses
  %i.al = ashr exact i64 %i.ak, 3
  store i64 %i.ad, ptr %5, align 8, !tbaa !134
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEEvT_T0_SK_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.al, ptr noundef align 8 %5, ptr %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EEaSEOS5_.exit.i.i12.i
  %i.am = load ptr, ptr %5, align 8, !tbaa !134   ; 3 uses
  %.not.i.i.i14.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i14.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEEvT_SJ_SJ_RT0_.exit.i16.i", label %_ZNKSt14default_deleteIN4bzla8abstract16AbstractionLemmaEEclEPS2_.exit.i.i.i15.i

_ZNKSt14default_deleteIN4bzla8abstract16AbstractionLemmaEEclEPS2_.exit.i.i.i15.i: ; preds = %bb.f
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !42
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(20) %i.am) #24, !inline_history !1988
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEEvT_SJ_SJ_RT0_.exit.i16.i"

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EEaSEOS5_.exit.i.i12.i
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %5, align 8, !tbaa !134   ; 2 uses
  %.not.i6.i.i13.i = icmp eq ptr %i.ar, null
  br i1 %.not.i6.i.i13.i, label %common.resume, label %common.resume.sink.split.i

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEEvT_SJ_SJ_RT0_.exit.i16.i": ; preds = %_ZNKSt14default_deleteIN4bzla8abstract16AbstractionLemmaEEclEPS2_.exit.i.i.i15.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.as = icmp sgt i64 %i.ak, 8
  br i1 %i.as, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEEvT_SJ_SJ_T0_.exit", !llvm.loop !1989

.lr.ph484:                                        ; preds = %.lr.ph, %bb.b
  %storemerge142483 = phi ptr [ %.sroa.0122.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.0143482 = phi i64 [ %i.au, %bb.b ], [ %2, %.lr.ph ]
  %i.at = phi i64 [ %i.nf, %bb.b ], [ %i.d, %.lr.ph ]
  %i.au = add nsw i64 %.0143482, -1               ; 3 uses
  %i.av = lshr i64 %i.at, 1
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.av ; 7 uses
  %i.ax = getelementptr inbounds i8, ptr %storemerge142483, i64 -8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !134
  %i.ay = getelementptr i8, ptr %.val.i.i.i, i64 16
  %.val.val.i.i.i = load i32, ptr %i.ay, align 8, !tbaa !130
  %i.az = call fastcc noundef zeroext i1 @"_ZZN4bzla8abstract17AbstractionModule27rank_lemmas_by_circuit_sizeEvENK3$_1clISt10unique_ptrINS0_16AbstractionLemmaESt14default_deleteIS5_EES8_EEDaRKT_RKT0_"(ptr noundef nonnull readonly align 8 dereferenceable(8) %4, i32 %.val.val.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.aw)
  br i1 %i.az, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph484
  %.val.i26.i.i = load ptr, ptr %i.aw, align 8, !tbaa !134
  %i.ba = getelementptr i8, ptr %.val.i26.i.i, i64 16
  %.val.val.i27.i.i = load i32, ptr %i.ba, align 8, !tbaa !130
  %i.bb = call fastcc noundef zeroext i1 @"_ZZN4bzla8abstract17AbstractionModule27rank_lemmas_by_circuit_sizeEvENK3$_1clISt10unique_ptrINS0_16AbstractionLemmaESt14default_deleteIS5_EES8_EEDaRKT_RKT0_"(ptr noundef nonnull readonly align 8 dereferenceable(8) %4, i32 %.val.val.i27.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.ax)
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bc = load ptr, ptr %0, align 8, !tbaa !134
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !134
  store ptr %i.bd, ptr %0, align 8, !tbaa !134
  store ptr %i.bc, ptr %i.aw, align 8, !tbaa !134
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEEvT_SJ_SJ_SJ_T0_.exit.i"

bb.j:                                             ; preds = %bb.h
  %.val.i28.i.i = load ptr, ptr %i.f, align 8, !tbaa !134
  %i.be = getelementptr i8, ptr %.val.i28.i.i, i64 16
  %.val.val.i29.i.i = load i32, ptr %i.be, align 8, !tbaa !130
  %i.bf = call fastcc noundef zeroext i1 @"_ZZN4bzla8abstract17AbstractionModule27rank_lemmas_by_circuit_sizeEvENK3$_1clISt10unique_ptrINS0_16AbstractionLemmaESt14default_deleteIS5_EES8_EEDaRKT_RKT0_"(ptr noundef nonnull readonly align 8 dereferenceable(8) %4, i32 %.val.val.i29.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.ax)
  %i.bg = load ptr, ptr %0, align 8, !tbaa !134   ; 2 uses
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bh = load ptr, ptr %i.ax, align 8, !tbaa !134
  store ptr %i.bh, ptr %0, align 8, !tbaa !134
  store ptr %i.bg, ptr %i.ax, align 8, !tbaa !134
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEEvT_SJ_SJ_SJ_T0_.exit.i"

bb.l:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %i.f, align 8, !tbaa !134
  store ptr %i.bi, ptr %0, align 8, !tbaa !134
  store ptr %i.bg, ptr %i.f, align 8, !tbaa !134
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEEvT_SJ_SJ_SJ_T0_.exit.i"

bb.m:                                             ; preds = %.lr.ph484
  %.val.i30.i.i = load ptr, ptr %i.f, align 8, !tbaa !134
  %i.bj = getelementptr i8, ptr %.val.i30.i.i, i64 16
  %.val.val.i31.i.i = load i32, ptr %i.bj, align 8, !tbaa !130
  %i.bk = call fastcc noundef zeroext i1 @"_ZZN4bzla8abstract17AbstractionModule27rank_lemmas_by_circuit_sizeEvENK3$_1clISt10unique_ptrINS0_16AbstractionLemmaESt14default_deleteIS5_EES8_EEDaRKT_RKT0_"(ptr noundef nonnull readonly align 8 dereferenceable(8) %4, i32 %.val.val.i31.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.ax)
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = load <2 x ptr>, ptr %0, align 8, !tbaa !134
  %i.bm = shufflevector <2 x ptr> %i.bl, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.bm, ptr %0, align 8, !tbaa !134
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEEvT_SJ_SJ_SJ_T0_.exit.i"

bb.o:                                             ; preds = %bb.m
  %.val.i32.i.i = load ptr, ptr %i.aw, align 8, !tbaa !134
  %i.bn = getelementptr i8, ptr %.val.i32.i.i, i64 16
  %.val.val.i33.i.i = load i32, ptr %i.bn, align 8, !tbaa !130
  %i.bo = call fastcc noundef zeroext i1 @"_ZZN4bzla8abstract17AbstractionModule27rank_lemmas_by_circuit_sizeEvENK3$_1clISt10unique_ptrINS0_16AbstractionLemmaESt14default_deleteIS5_EES8_EEDaRKT_RKT0_"(ptr noundef nonnull readonly align 8 dereferenceable(8) %4, i32 %.val.val.i33.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.ax)
  %i.bp = load ptr, ptr %0, align 8, !tbaa !134   ; 2 uses
  br i1 %i.bo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bq = load ptr, ptr %i.ax, align 8, !tbaa !134
  store ptr %i.bq, ptr %0, align 8, !tbaa !134
  store ptr %i.bp, ptr %i.ax, align 8, !tbaa !134
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEEvT_SJ_SJ_SJ_T0_.exit.i"

bb.q:                                             ; preds = %bb.o
  %i.br = load ptr, ptr %i.aw, align 8, !tbaa !134
  store ptr %i.br, ptr %0, align 8, !tbaa !134
  store ptr %i.bp, ptr %i.aw, align 8, !tbaa !134
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEEvT_SJ_SJ_SJ_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEEvT_SJ_SJ_SJ_T0_.exit.i": ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre.pre.i.i = load ptr, ptr %3, align 8, !tbaa !224
  br label %bb.r

bb.r:                                             ; preds = %bb.db, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEEvT_SJ_SJ_SJ_T0_.exit.i"
  %.pre.i.i = phi ptr [ %.pre.pre.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEEvT_SJ_SJ_SJ_T0_.exit.i" ], [ %.pre275.i.i, %bb.db ] ; 2 uses
  %.sroa.0119.0.i.i = phi ptr [ %storemerge142483, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEEvT_SJ_SJ_SJ_T0_.exit.i" ], [ %.sroa.0119.1.i.i, %bb.db ]
  %.sroa.0122.0.i.i = phi ptr [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEEvT_SJ_SJ_SJ_T0_.exit.i" ], [ %i.nc, %bb.db ]
  br label %bb.s

bb.s:                                             ; preds = %bb.bj, %bb.r
  %.pre280.i.i = phi ptr [ %.pre.i.i, %bb.r ], [ %.pre278.i.i, %bb.bj ] ; 2 uses
  %i.bs = phi ptr [ %.pre.i.i, %bb.r ], [ %i.hf, %bb.bj ] ; 3 uses
  %.sroa.0122.1.i.i = phi ptr [ %.sroa.0122.0.i.i, %bb.r ], [ %i.hi, %bb.bj ] ; 10 uses
  %.val.i.i12.i = load ptr, ptr %.sroa.0122.1.i.i, align 8, !tbaa !134
  %i.bt = getelementptr i8, ptr %.val.i.i12.i, i64 16
  %.val.val.i.i13.i = load i32, ptr %i.bt, align 8, !tbaa !130 ; 4 uses
  %i.bu = zext i32 %.val.val.i.i13.i to i64       ; 2 uses
  %i.bv = load i64, ptr %i.g, align 8, !tbaa !223 ; 4 uses
  %i.bw = urem i64 %i.bu, %i.bv                   ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !116 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !117 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !157
  %i.cc = icmp eq i32 %.val.val.i.i13.i, %i.cb
  br i1 %i.cc, label %_ZNSt13unordered_mapIN4bzla8abstract9LemmaKindEmSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_mEEEixEOS2_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.v
  %i.cd = icmp eq i32 %.val.val.i.i13.i, %i.cg
  br i1 %i.cd, label %_ZNSt13unordered_mapIN4bzla8abstract9LemmaKindEmSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_mEEEixEOS2_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.t, %bb.u
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.ce, %bb.u ], [ %i.bz, %bb.t ]
  %i.ce = load ptr, ptr %.020.i.i.i.i.i.i.i, align 8, !tbaa !117 ; 4 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not18.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !157 ; 2 uses
  %i.ch = zext i32 %i.cg to i64
  %i.ci = urem i64 %i.ch, %i.bv
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.ci, %i.bw
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.u, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !14

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.v
  br label %.loopexit.i.i.i.i.i, !llvm.loop !14

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i.i.i, %bb.s
  %i.cj = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 11 uses
  store ptr null, ptr %i.cj, align 8, !tbaa !117
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i32 %.val.val.i.i13.i, ptr %i.ck, align 8, !tbaa !226
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store i64 0, ptr %i.cl, align 8, !tbaa !227
  %i.cm = load i64, ptr %i.i, align 8, !tbaa !258
  %i.cn = load i64, ptr %i.g, align 8, !tbaa !223
  %i.co = load i64, ptr %i.j, align 8, !tbaa !259
end_hunk_1
begin_hunk_2_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEEvT_SJ_T0_T1_":bb.a

bb.ck:                                            ; preds = %bb.ci
  %i.lg = icmp ugt i64 %i.le, 1152921504606846975
  br i1 %i.lg, label %bb.cl, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla8abstract9LemmaKindEmELb0EEEEE19_M_allocate_bucketsEm.exit.i.i82.i.i, !prof !189

bb.cl:                                            ; preds = %bb.ck
  %i.lh = icmp ugt i64 %i.le, 2305843009213693951
  br i1 %i.lh, label %.noexc.i.i.i95.i.i, label %.noexc7.i.i.i94.i.i

.noexc.i.i.i95.i.i:                               ; preds = %bb.cl
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc96.i.i unwind label %.loopexit.split-lp126.i.i

.noexc96.i.i:                                     ; preds = %.noexc.i.i.i95.i.i
  unreachable

.noexc7.i.i.i94.i.i:                              ; preds = %bb.cl
  invoke void @_ZSt17__throw_bad_allocv() #27
          to label %.noexc97.i.i unwind label %.loopexit.split-lp126.i.i

.noexc97.i.i:                                     ; preds = %.noexc7.i.i.i94.i.i
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla8abstract9LemmaKindEmELb0EEEEE19_M_allocate_bucketsEm.exit.i.i82.i.i: ; preds = %bb.ck
  %i.li = shl nuw nsw i64 %i.le, 3                ; 2 uses
  %i.lj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.li) #26
          to label %.noexc98.i.i unwind label %.loopexit125.i.i ; 2 uses

.noexc98.i.i:                                     ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla8abstract9LemmaKindEmELb0EEEEE19_M_allocate_bucketsEm.exit.i.i82.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.lj, i8 0, i64 %i.li, i1 false)
  br label %_ZNSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i83.i.i

_ZNSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i83.i.i: ; preds = %.noexc98.i.i, %bb.cj
  %.0.i.i84.i.i = phi ptr [ %i.k, %bb.cj ], [ %i.lj, %.noexc98.i.i ] ; 4 uses
  %i.lk = load ptr, ptr %i.l, align 8, !tbaa !261 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !261
  %.not29.i85.i.i = icmp eq ptr %i.lk, null
  br i1 %.not29.i85.i.i, label %._crit_edge.i92.i.i, label %.lr.ph.i86.i.i

.lr.ph.i86.i.i:                                   ; preds = %_ZNSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i83.i.i, %bb.cp
  %.031.i87.i.i = phi i64 [ %.1.i90.i.i, %bb.cp ], [ 0, %_ZNSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i83.i.i ] ; 2 uses
  %.02530.i88.i.i = phi ptr [ %i.ll, %bb.cp ], [ %i.lk, %_ZNSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i83.i.i ] ; 8 uses
  %i.ll = load ptr, ptr %.02530.i88.i.i, align 8, !tbaa !117 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.02530.i88.i.i, i64 8
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !157
  %i.lo = zext i32 %i.ln to i64
  %i.lp = urem i64 %i.lo, %i.le                   ; 3 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i84.i.i, i64 %i.lp ; 3 uses
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !116 ; 2 uses
  %.not27.i89.i.i = icmp eq ptr %i.lr, null
  br i1 %.not27.i89.i.i, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %.lr.ph.i86.i.i
  %i.ls = load ptr, ptr %i.l, align 8, !tbaa !261
  store ptr %i.ls, ptr %.02530.i88.i.i, align 8, !tbaa !117
  store ptr %.02530.i88.i.i, ptr %i.l, align 8, !tbaa !261
  store ptr %i.l, ptr %i.lq, align 8, !tbaa !116
  %i.lt = load ptr, ptr %.02530.i88.i.i, align 8, !tbaa !117
  %.not28.i93.i.i = icmp eq ptr %i.lt, null
  br i1 %.not28.i93.i.i, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i84.i.i, i64 %.031.i87.i.i
  store ptr %.02530.i88.i.i, ptr %i.lu, align 8, !tbaa !116
  br label %bb.cp

bb.co:                                            ; preds = %.lr.ph.i86.i.i
  %i.lv = load ptr, ptr %i.lr, align 8, !tbaa !117
  store ptr %i.lv, ptr %.02530.i88.i.i, align 8, !tbaa !117
  %i.lw = load ptr, ptr %i.lq, align 8, !tbaa !116
  store ptr %.02530.i88.i.i, ptr %i.lw, align 8, !tbaa !117
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cm
  %.1.i90.i.i = phi i64 [ %.031.i87.i.i, %bb.co ], [ %i.lp, %bb.cn ], [ %i.lp, %bb.cm ]
  %.not.i91.i.i = icmp eq ptr %i.ll, null
  br i1 %.not.i91.i.i, label %._crit_edge.i92.i.i, label %.lr.ph.i86.i.i, !llvm.loop !16

._crit_edge.i92.i.i:                              ; preds = %bb.cp, %_ZNSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i83.i.i
  %i.lx = load ptr, ptr %3, align 8, !tbaa !224   ; 2 uses
  %i.ly = icmp eq ptr %i.lx, %i.k
  br i1 %i.ly, label %_ZNSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i50.i.i, label %bb.cq

bb.cq:                                            ; preds = %._crit_edge.i92.i.i
  %i.lz = load i64, ptr %i.g, align 8, !tbaa !223
  %i.ma = shl i64 %i.lz, 3
  tail call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef %i.ma) #25
  br label %_ZNSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i50.i.i

.loopexit125.i.i:                                 ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla8abstract9LemmaKindEmELb0EEEEE19_M_allocate_bucketsEm.exit.i.i82.i.i
  %lpad.loopexit127.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.cr

.loopexit.split-lp126.i.i:                        ; preds = %.noexc7.i.i.i94.i.i, %.noexc.i.i.i95.i.i
  %lpad.loopexit.split-lp128.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.cr

bb.cr:                                            ; preds = %.loopexit.split-lp126.i.i, %.loopexit125.i.i
  %lpad.phi129.i.i = phi { ptr, i32 } [ %lpad.loopexit127.i.i, %.loopexit125.i.i ], [ %lpad.loopexit.split-lp128.i.i, %.loopexit.split-lp126.i.i ]
  %i.mb = extractvalue { ptr, i32 } %lpad.phi129.i.i, 0
  %i.mc = tail call ptr @__cxa_begin_catch(ptr %i.mb) #24 ; 0 uses
  store i64 %i.ky, ptr %i.i, align 8, !tbaa !258
  invoke void @__cxa_rethrow() #27
          to label %bb.cu unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.md = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume.i.i unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.me = landingpad { ptr, i32 }
          catch ptr null
  %i.mf = extractvalue { ptr, i32 } %i.me, 0
  tail call void @__clang_call_terminate(ptr %i.mf) #28
  unreachable

bb.cu:                                            ; preds = %bb.cr
  unreachable

_ZNSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i50.i.i: ; preds = %bb.cq, %._crit_edge.i92.i.i
  store i64 %i.le, ptr %i.g, align 8, !tbaa !223
  store ptr %.0.i.i84.i.i, ptr %3, align 8, !tbaa !224
  %i.mg = urem i64 %i.kh, %i.le
  br label %bb.cv

bb.cv:                                            ; preds = %_ZNSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i50.i.i, %.noexc51._crit_edge.i.i
  %i.mh = phi ptr [ %.0.i.i84.i.i, %_ZNSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i50.i.i ], [ %.pre274.i.i, %.noexc51._crit_edge.i.i ] ; 4 uses
  %.0.i47.i.i = phi i64 [ %i.mg, %_ZNSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i50.i.i ], [ %i.ki, %.noexc51._crit_edge.i.i ]
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %.0.i47.i.i ; 3 uses
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !116 ; 2 uses
  %.not.i.i48.i.i = icmp eq ptr %i.mj, null
  br i1 %.not.i.i48.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !117
  store ptr %i.mk, ptr %i.kv, align 8, !tbaa !117
  %i.ml = load ptr, ptr %i.mi, align 8, !tbaa !116
  store ptr %i.kv, ptr %i.ml, align 8, !tbaa !117
  br label %_ZNSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm.exit53.i.i

bb.cx:                                            ; preds = %bb.cv
  %i.mm = load ptr, ptr %i.l, align 8, !tbaa !261 ; 3 uses
  store ptr %i.mm, ptr %i.kv, align 8, !tbaa !117
  store ptr %i.kv, ptr %i.l, align 8, !tbaa !261
  %.not11.i.i49.i.i = icmp eq ptr %i.mm, null
  br i1 %.not11.i.i49.i.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mo = load i64, ptr %i.g, align 8, !tbaa !223
  %i.mp = load i32, ptr %i.mn, align 4, !tbaa !157
  %i.mq = zext i32 %i.mp to i64
  %i.mr = urem i64 %i.mq, %i.mo
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %i.mr
  store ptr %i.kv, ptr %i.ms, align 8, !tbaa !116
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  store ptr %i.l, ptr %i.mi, align 8, !tbaa !116
  br label %_ZNSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm.exit53.i.i

_ZNSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm.exit53.i.i: ; preds = %bb.cz, %bb.cw
  %i.mt = load i64, ptr %i.j, align 8, !tbaa !259
  %i.mu = add i64 %i.mt, 1
  store i64 %i.mu, ptr %i.j, align 8, !tbaa !259
  br label %"_ZZN4bzla8abstract17AbstractionModule27rank_lemmas_by_circuit_sizeEvENK3$_1clISt10unique_ptrINS0_16AbstractionLemmaESt14default_deleteIS5_EES8_EEDaRKT_RKT0_.exit39.i.i"

_ZNSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i10.i36.i.i: ; preds = %.loopexit.i.i9.i35.i.i
  %i.mv = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

"_ZZN4bzla8abstract17AbstractionModule27rank_lemmas_by_circuit_sizeEvENK3$_1clISt10unique_ptrINS0_16AbstractionLemmaESt14default_deleteIS5_EES8_EEDaRKT_RKT0_.exit39.i.i": ; preds = %bb.cg, %_ZNSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm.exit53.i.i, %bb.cf
  %.pre275.i.i = phi ptr [ %i.mh, %_ZNSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm.exit53.i.i ], [ %.pre276.i.i, %bb.cf ], [ %.pre276.i.i, %bb.cg ] ; 2 uses
  %i.mw = phi ptr [ %i.mh, %_ZNSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm.exit53.i.i ], [ %i.kb, %bb.cf ], [ %i.kb, %bb.cg ]
  %.pn.i.i11.i37.i.i = phi ptr [ %i.kv, %_ZNSt10_HashtableIN4bzla8abstract9LemmaKindESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm.exit53.i.i ], [ %i.kl, %bb.cf ], [ %i.kq, %bb.cg ]
  %.1.i.i12.i38.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i11.i37.i.i, i64 16
  %i.mx = load i64, ptr %.1.i.i12.i38.i.i, align 8, !tbaa !63
  %i.my = icmp ult i64 %i.kd, %i.mx
  br i1 %i.my, label %.preheader.i.i, label %bb.da, !llvm.loop !1991

bb.da:                                            ; preds = %"_ZZN4bzla8abstract17AbstractionModule27rank_lemmas_by_circuit_sizeEvENK3$_1clISt10unique_ptrINS0_16AbstractionLemmaESt14default_deleteIS5_EES8_EEDaRKT_RKT0_.exit39.i.i"
  %i.mz = icmp ult ptr %.sroa.0122.1.i.i, %.sroa.0119.1.i.i
  br i1 %i.mz, label %bb.db, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEET_SJ_SJ_T0_.exit"

bb.db:                                            ; preds = %bb.da
  %i.na = load ptr, ptr %.sroa.0122.1.i.i, align 8, !tbaa !134
  %i.nb = load ptr, ptr %.sroa.0119.1.i.i, align 8, !tbaa !134
  store ptr %i.nb, ptr %.sroa.0122.1.i.i, align 8, !tbaa !134
  store ptr %i.na, ptr %.sroa.0119.1.i.i, align 8, !tbaa !134
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.0122.1.i.i, i64 8
  br label %bb.r, !llvm.loop !1992

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEET_SJ_SJ_T0_.exit": ; preds = %bb.da
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEEvT_SJ_T0_T1_"(ptr nonnull %.sroa.0122.1.i.i, ptr %storemerge142483, i64 noundef %i.au, ptr nonnull %3)
  %i.nd = ptrtoint ptr %.sroa.0122.1.i.i to i64
  %i.ne = sub i64 %i.nd, %i.a
  %i.nf = ashr exact i64 %i.ne, 3                 ; 3 uses
  %i.ng = icmp sgt i64 %i.nf, 16
  br i1 %i.ng, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEEvT_SJ_SJ_T0_.exit", !llvm.loop !1983

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEEvT_SJ_SJ_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEET_SJ_SJ_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEEvT_SJ_SJ_RT0_.exit.i16.i", %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNS4_17AbstractionModule27rank_lemmas_by_circuit_sizeEvE3$_1EEEvT_T0_SK_T1_T2_"(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull align 8 captures(none) %3, ptr %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.783", align 8 ; 2 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.784", align 8 ; 5 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 2 uses
  store ptr %4, ptr %5, align 8
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  %i.d = ptrtoint ptr %4 to i64
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EEaSEOS5_.exit
  %.040 = phi i64 [ %spec.select, %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EEaSEOS5_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.e = shl i64 %.040, 1                         ; 2 uses
  %i.f = add i64 %i.e, 2                          ; 2 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %0, i64 %i.f
  %i.h = or disjoint i64 %i.e, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !134
  %i.j = getelementptr i8, ptr %.val.i, i64 16
  %.val.val.i = load i32, ptr %i.j, align 8, !tbaa !130
  %i.k = call fastcc noundef zeroext i1 @"_ZZN4bzla8abstract17AbstractionModule27rank_lemmas_by_circuit_sizeEvENK3$_1clISt10unique_ptrINS0_16AbstractionLemmaESt14default_deleteIS5_EES8_EEDaRKT_RKT0_"(ptr noundef nonnull readonly align 8 dereferenceable(8) %5, i32 %.val.val.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.i)
  %spec.select = select i1 %i.k, i64 %i.h, i64 %i.f ; 4 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %0, i64 %.040 ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !134
  store ptr null, ptr %i.l, align 8, !tbaa !134
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !134  ; 3 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !134
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EEaSEOS5_.exit, label %_ZNKSt14default_deleteIN4bzla8abstract16AbstractionLemmaEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4bzla8abstract16AbstractionLemmaEEclEPS2_.exit.i.i.i.i: ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(20) %i.o) #24, !inline_history !1993
  br label %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EEaSEOS5_.exit

_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EEaSEOS5_.exit: ; preds = %.lr.ph, %_ZNKSt14default_deleteIN4bzla8abstract16AbstractionLemmaEEclEPS2_.exit.i.i.i.i
  %i.s = icmp slt i64 %spec.select, %i.b
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !1994

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EEaSEOS5_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EEaSEOS5_.exit ] ; 5 uses
  %i.t = and i64 %2, 1
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.b, label %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EEaSEOS5_.exit27

bb.b:                                             ; preds = %._crit_edge
  %i.v = add nsw i64 %2, -2
  %i.w = ashr exact i64 %i.v, 1
  %i.x = icmp eq i64 %.0.lcssa, %i.w
  br i1 %i.x, label %bb.c, label %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EEaSEOS5_.exit27

bb.c:                                             ; preds = %bb.b
  %i.y = shl nsw i64 %.0.lcssa, 1
  %i.z = or disjoint i64 %i.y, 1                  ; 3 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa ; 2 uses
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !134
  store ptr null, ptr %i.aa, align 8, !tbaa !134
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !134 ; 3 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !134
  %.not.i.i.i.i25 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i25, label %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EEaSEOS5_.exit27, label %_ZNKSt14default_deleteIN4bzla8abstract16AbstractionLemmaEEclEPS2_.exit.i.i.i.i26

_ZNKSt14default_deleteIN4bzla8abstract16AbstractionLemmaEEclEPS2_.exit.i.i.i.i26: ; preds = %bb.c
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !42
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(20) %i.ad) #24, !inline_history !1993
  br label %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EEaSEOS5_.exit27

_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EEaSEOS5_.exit27: ; preds = %_ZNKSt14default_deleteIN4bzla8abstract16AbstractionLemmaEEclEPS2_.exit.i.i.i.i26, %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %.0.lcssa, %._crit_edge ], [ %.0.lcssa, %bb.b ], [ %i.z, %bb.c ], [ %i.z, %_ZNKSt14default_deleteIN4bzla8abstract16AbstractionLemmaEEclEPS2_.exit.i.i.i.i26 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store i64 %i.d, ptr %6, align 8, !tbaa !1998
  %i.ah = load i64, ptr %3, align 8, !tbaa !134   ; 3 uses
  store i64 %i.ah, ptr %7, align 8, !tbaa !134
  store ptr null, ptr %3, align 8, !tbaa !134
  %i.ai = icmp sgt i64 %.1, %1
  %i.aj = inttoptr i64 %i.ah to ptr               ; 3 uses
  br i1 %i.ai, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EEaSEOS5_.exit27, %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EEaSEOS5_.exit.i
  %.021.i = phi i64 [ %.0922.i, %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EEaSEOS5_.exit.i ], [ %.1, %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EEaSEOS5_.exit27 ] ; 3 uses
  %.0922.in.i = add nsw i64 %.021.i, -1
  %.0922.i = sdiv i64 %.0922.in.i, 2              ; 4 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %0, i64 %.0922.i ; 3 uses
  %.val.i.i = load ptr, ptr %i.ak, align 8, !tbaa !134
  %i.al = getelementptr i8, ptr %.val.i.i, i64 16
  %.val.val.i.i = load i32, ptr %i.al, align 8, !tbaa !130
  %i.am = invoke fastcc noundef zeroext i1 @"_ZZN4bzla8abstract17AbstractionModule27rank_lemmas_by_circuit_sizeEvENK3$_1clISt10unique_ptrINS0_16AbstractionLemmaESt14default_deleteIS5_EES8_EEDaRKT_RKT0_"(ptr noundef nonnull readonly align 8 dereferenceable(8) %6, i32 %.val.val.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %7)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %.lr.ph.i
  br i1 %i.am, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %.noexc
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %.021.i ; 2 uses
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !134
  store ptr null, ptr %i.ak, align 8, !tbaa !134
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !134 ; 3 uses
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !134
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EEaSEOS5_.exit.i, label %_ZNKSt14default_deleteIN4bzla8abstract16AbstractionLemmaEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4bzla8abstract16AbstractionLemmaEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.d
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !42
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(20) %i.ap) #24, !inline_history !1995
  br label %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EEaSEOS5_.exit.i

_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EEaSEOS5_.exit.i: ; preds = %_ZNKSt14default_deleteIN4bzla8abstract16AbstractionLemmaEEclEPS2_.exit.i.i.i.i.i, %bb.d
  %i.at = icmp sgt i64 %.0922.i, %1
  br i1 %i.at, label %.lr.ph.i, label %.critedge.i, !llvm.loop !1996

.critedge.i:                                      ; preds = %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EEaSEOS5_.exit.i, %.noexc, %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EEaSEOS5_.exit27
  %.0.lcssa.i = phi i64 [ %.1, %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EEaSEOS5_.exit27 ], [ %.021.i, %.noexc ], [ %.0922.i, %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EEaSEOS5_.exit.i ]
  %i.au = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !134 ; 3 uses
  store ptr %i.aj, ptr %i.au, align 8, !tbaa !134
  %.not.i.i.i.i10.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i10.i, label %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4bzla8abstract16AbstractionLemmaEEclEPS2_.exit.i.i.i.i11.i

_ZNKSt14default_deleteIN4bzla8abstract16AbstractionLemmaEEclEPS2_.exit.i.i.i.i11.i: ; preds = %.critedge.i
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !42
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(20) %i.av) #24, !inline_history !1995
  br label %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EED2Ev.exit: ; preds = %.critedge.i, %_ZNKSt14default_deleteIN4bzla8abstract16AbstractionLemmaEEclEPS2_.exit.i.i.i.i11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void

bb.e:                                             ; preds = %.lr.ph.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %.not.i28 = icmp eq i64 %i.ah, 0
  br i1 %.not.i28, label %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EED2Ev.exit30, label %_ZNKSt14default_deleteIN4bzla8abstract16AbstractionLemmaEEclEPS2_.exit.i29

_ZNKSt14default_deleteIN4bzla8abstract16AbstractionLemmaEEclEPS2_.exit.i29: ; preds = %bb.e
  %i.ba = load ptr, ptr %i.aj, align 8, !tbaa !42
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(20) %i.aj) #24, !inline_history !1997
  br label %_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EED2Ev.exit30

_ZNSt10unique_ptrIN4bzla8abstract16AbstractionLemmaESt14default_deleteIS2_EED2Ev.exit30: ; preds = %bb.e, %_ZNKSt14default_deleteIN4bzla8abstract16AbstractionLemmaEEclEPS2_.exit.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  resume { ptr, i32 } %i.az
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i1 @"_ZZN4bzla8abstract17AbstractionModule27rank_lemmas_by_circuit_sizeEvENK3$_1clISt10unique_ptrINS0_16AbstractionLemmaESt14default_deleteIS5_EES8_EEDaRKT_RKT0_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 %.0.val.16.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2000, !nonnull !100, !align !115 ; 5 uses
  %i.b = zext i32 %.0.val.16.val to i64           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !223  ; 4 uses
  %i.e = urem i64 %i.b, %i.d                      ; 3 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !224  ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !116  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !117  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !157
  %i.l = icmp eq i32 %.0.val.16.val, %i.k
  br i1 %i.l, label %_ZNSt13unordered_mapIN4bzla8abstract9LemmaKindEmSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_mEEEixEOS2_.exit, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %bb.d
  %i.m = icmp eq i32 %.0.val.16.val, %i.p
  br i1 %i.m, label %_ZNSt13unordered_mapIN4bzla8abstract9LemmaKindEmSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_mEEEixEOS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %.020.i.i.i.i = phi ptr [ %i.n, %bb.c ], [ %i.i, %bb.b ]
  %i.n = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !117 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !157  ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = urem i64 %i.q, %i.d
  %.not19.i.i.i.i = icmp eq i64 %i.r, %i.e
  br i1 %.not19.i.i.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !14

end_hunk_2
