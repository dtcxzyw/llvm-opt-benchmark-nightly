Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/abstraction_module?download=true
inline.NumInlined: 6597
inline.NumDeleted: 2288
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_ZN4bzla8bitblast19BitblasterInterfaceINS0_7AigNodeEE13bv_mul_squareERKSt6vectorIS2_SaIS2_EE:bb.a
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
  %i.bj = shl nuw nsw i64 %.047102, 1
  %i.bk = sub nsw i64 %i.h, %i.bj                 ; 4 uses
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
  br label %_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exit.i
end_hunk_0
