Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/normalize?download=true
inline.NumInlined: 5543
inline.NumDeleted: 2030
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZN4bzla8bitblast19BitblasterInterfaceINS0_7AigNodeEE13bv_mul_squareERKSt6vectorIS2_SaIS2_EE:bb.a
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !78   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc71, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %i.m, %.noexc71 ] ; 2 uses
  tail call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #25
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exit.i

_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exitthread-pre-split.i, %.noexc71
  %i.p = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exitthread-pre-split.i ], [ %i.m, %.noexc71 ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE7reserveEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exit.i
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !79
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.t) #26
  br label %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE7reserveEm.exit: ; preds = %_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exit.i, %bb.e
  store ptr %i.l, ptr %0, align 8, !tbaa !77
  store ptr %i.l, ptr %i.k, align 8, !tbaa !78
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  store ptr %i.u, ptr %i.j, align 8, !tbaa !79
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.aa = load ptr, ptr %2, align 8, !tbaa !77    ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.04895
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.h
  invoke void @_ZN4bzla8bitblast10AigManager11rewrite_andERKNS0_7AigNodeES4_(ptr dead_on_unwind nonnull writable sret(%"class.bzla::bitblast::AigNode") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE6mk_andERKS2_S5_.exit unwind label %bb.j

_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE6mk_andERKS2_S5_.exit: ; preds = %bb.g
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !78  ; 3 uses
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !79
  %.not.i.i73 = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i.i73, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE6mk_andERKS2_S5_.exit
  invoke void @_ZN4bzla8bitblast7AigNodeC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc74 unwind label %bb.k

.noexc74:                                         ; preds = %bb.h
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !78
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ag, ptr %i.x, align 8, !tbaa !78
  br label %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backEOS2_.exit

bb.i:                                             ; preds = %_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE6mk_andERKS2_S5_.exit
  invoke void @_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backEOS2_.exit unwind label %bb.k

_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backEOS2_.exit: ; preds = %.noexc74, %bb.i
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.ah = add nuw i64 %.04895, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !329

bb.j:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn68 = phi { ptr, i32 } [ %i.aj, %bb.k ], [ %i.ai, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.al

bb.m:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZN4bzla8bitblast7AigNodeC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE8mk_falseEv.exit unwind label %bb.p

_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE8mk_falseEv.exit: ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !78 ; 3 uses
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !79
  %.not.i.i77 = icmp eq ptr %i.am, %i.an
  br i1 %.not.i.i77, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE8mk_falseEv.exit
  invoke void @_ZN4bzla8bitblast7AigNodeC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc78 unwind label %bb.q

.noexc78:                                         ; preds = %bb.n
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !78
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !78
  br label %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backEOS2_.exit80

bb.o:                                             ; preds = %_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE8mk_falseEv.exit
  invoke void @_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.am, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backEOS2_.exit80 unwind label %bb.q

_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backEOS2_.exit80: ; preds = %.noexc78, %bb.o
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %._crit_edge.thread

bb.p:                                             ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.q ], [ %i.aq, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.al

._crit_edge.thread:                               ; preds = %bb.c, %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backEOS2_.exit80, %._crit_edge
  %i.as = phi i1 [ %i.v, %._crit_edge ], [ %i.v, %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backEOS2_.exit80 ], [ false, %bb.c ]
  %i.at = load ptr, ptr %2, align 8, !tbaa !77
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.h ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !78 ; 3 uses
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !79
  %.not.i = icmp eq ptr %i.aw, %i.ax
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge.thread
  invoke void @_ZN4bzla8bitblast7AigNodeC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.au)
          to label %.noexc81 unwind label %bb.f

.noexc81:                                         ; preds = %bb.s
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !78
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.az, ptr %i.av, align 8, !tbaa !78
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
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i64 0, ptr %5, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.bh = load ptr, ptr %2, align 8, !tbaa !77
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.046103
  invoke void @_ZN4bzla8bitblast7AigNodeC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.bi)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bj = shl nuw i64 %.047102, 1
  %i.bk = sub i64 %i.h, %i.bj                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.bl = load ptr, ptr %0, align 8, !tbaa !77
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bk
  invoke void @_ZN4bzla8bitblast19BitblasterInterfaceINS0_7AigNodeEE10half_adderERKS2_S5_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.529") align 8 %7, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bn = load ptr, ptr %0, align 8, !tbaa !77
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bk
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla8bitblast7AigNodeaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc83 unwind label %bb.z   ; 0 uses

.noexc83:                                         ; preds = %bb.w
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla8bitblast7AigNodeaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.bd)
          to label %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit unwind label %bb.z ; 0 uses

_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit: ; preds = %.noexc83
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bd) #25
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.br = sub i64 %i.g, %i.bk                     ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.g
  br i1 %i.bs, label %.lr.ph100, label %._crit_edge101

._crit_edge101:                                   ; preds = %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit91, %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.bt = add nuw nsw i64 %.047102, 1             ; 2 uses
  %i.bu = add i64 %.046103, -1
  %exitcond107.not = icmp eq i64 %i.bt, %umax
  br i1 %exitcond107.not, label %._crit_edge105, label %bb.u, !llvm.loop !330

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
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bd) #25
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %7) #25
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn61 = phi { ptr, i32 } [ %i.bx, %bb.z ], [ %i.bw, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.aj

.lr.ph100:                                        ; preds = %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit, %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit91
  %.04599.in = phi i64 [ %.04599, %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit91 ], [ %i.bk, %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit ]
  %.098 = phi i64 [ %i.ci, %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit91 ], [ %.046103, %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit ] ; 3 uses
  %.04497 = phi i64 [ %i.ch, %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit91 ], [ %i.br, %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit ]
  %.04599 = add i64 %.04599.in, -1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.by = icmp eq i64 %.098, %.046103
  br i1 %i.by, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph100
  invoke void @_ZN4bzla8bitblast7AigNodeC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
          to label %_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE8mk_falseEv.exit86 unwind label %bb.ae

bb.ac:                                            ; preds = %.lr.ph100
  %i.bz = load ptr, ptr %2, align 8, !tbaa !77
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.098
  invoke void @_ZN4bzla8bitblast10AigManager11rewrite_andERKNS0_7AigNodeES4_(ptr dead_on_unwind nonnull writable sret(%"class.bzla::bitblast::AigNode") align 8 %8, ptr noundef nonnull align 8 dereferenceable(112) %i.be, ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE8mk_falseEv.exit86 unwind label %bb.ae

_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE8mk_falseEv.exit86: ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.cb = load ptr, ptr %0, align 8, !tbaa !77
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.04599
  invoke void @_ZN4bzla8bitblast19BitblasterInterfaceINS0_7AigNodeEE10full_adderERKS2_S5_S5_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.529") align 8 %9, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE8mk_falseEv.exit86
  %i.cd = load ptr, ptr %0, align 8, !tbaa !77
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.04599
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla8bitblast7AigNodeaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %.noexc89 unwind label %bb.ag  ; 0 uses

.noexc89:                                         ; preds = %bb.ad
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla8bitblast7AigNodeaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.bg)
          to label %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit91 unwind label %bb.ag ; 0 uses

_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit91: ; preds = %.noexc89
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bg) #25
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.ch = add i64 %.04497, 1                      ; 2 uses
  %i.ci = add i64 %.098, -1
  %exitcond106.not = icmp eq i64 %i.ch, %i.g
  br i1 %exitcond106.not, label %._crit_edge101, label %.lr.ph100, !llvm.loop !331

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
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bg) #25
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %9) #25
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn63 = phi { ptr, i32 } [ %i.cl, %bb.ag ], [ %i.ck, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #25
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %.pn63.pn = phi { ptr, i32 } [ %.pn63, %bb.ah ], [ %i.cj, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.aa
  %.pn63.pn.pn = phi { ptr, i32 } [ %.pn63.pn, %bb.ai ], [ %.pn61, %bb.aa ]
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.x
  %.pn63.pn.pn.pn = phi { ptr, i32 } [ %.pn63.pn.pn, %bb.aj ], [ %i.bv, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.r, %bb.l, %bb.f
  %.pn68.pn = phi { ptr, i32 } [ %.pn68, %bb.l ], [ %.pn63.pn.pn.pn, %bb.ak ], [ %i.z, %bb.f ], [ %.pn, %bb.r ]
  call void @_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #25
  resume { ptr, i32 } %.pn68.pn

._crit_edge105:                                   ; preds = %._crit_edge101, %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backERKS2_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4bzla8bitblast19BitblasterInterfaceINS0_7AigNodeEE6bv_mulERKSt6vectorIS2_SaIS2_EES8_(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !80     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80   ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !80     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !80   ; 2 uses
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp slt i64 %i.l, %i.i
  %i.n = getelementptr inbounds i8, ptr %i.a, i64 %i.l
  %i.o = select i1 %i.m, ptr %i.n, ptr %i.c       ; 2 uses
  %.not35.i.i.i.i.i.i.i = icmp eq ptr %i.a, %i.o
  br i1 %.not35.i.i.i.i.i.i.i, label %_ZStgtIN4bzla8bitblast7AigNodeESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.a, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPKN4bzla8bitblast7AigNodeES7_EEbT_T0_.exit24.thread.i.i.i.i.i.i.i
  %.01937.i.i.i.i.i.i.i = phi ptr [ %i.bb, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPKN4bzla8bitblast7AigNodeES7_EEbT_T0_.exit24.thread.i.i.i.i.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %.02036.i.i.i.i.i.i.i = phi ptr [ %i.ba, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPKN4bzla8bitblast7AigNodeES7_EEbT_T0_.exit24.thread.i.i.i.i.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.p = load i64, ptr %.02036.i.i.i.i.i.i.i, align 8, !tbaa !89 ; 7 uses
  %i.q = icmp eq i64 %i.p, 0                      ; 2 uses
  br i1 %i.q, label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit.i.i.thread.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.r = trunc i64 %i.p to i1                     ; 2 uses
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = and i64 %i.p, -2
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !93
  %i.w = sub nsw i64 0, %i.v
  br label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.x = inttoptr i64 %i.p to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !93
  br label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit.i.i.i.i.i.i.i.i.i

_ZNK4bzla8bitblast7AigNode6get_idEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt4pairIN4bzla4NodeEmESaIS3_EE17_M_realloc_insertIJRKS2_mEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4bzla4NodeEmES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !941

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.z) #25 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.p, %.016.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4bzla4NodeEmEEvT_S5_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %bb.e ] ; 2 uses
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %.05.i.i.i.i.i.i.i) #25
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ab, %.016.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4bzla4NodeEmEEvT_S5_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !18

_ZSt8_DestroyIPSt4pairIN4bzla4NodeEmEEvT_S5_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.e
  invoke void @__cxa_rethrow() #23
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4bzla4NodeEmEEvT_S5_.exit.i.i.i.i.i
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPSt4pairIN4bzla4NodeEmES3_EvT_S5_RSaIT0_E.exit.thread unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #28
  unreachable

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4bzla4NodeEmEEvT_S5_.exit.i.i.i.i.i
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4bzla4NodeEmES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %bb.d, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.x, %bb.d ] ; 4 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 3 uses
  %.not14.i.i.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i29, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4bzla4NodeEmES4_SaIS3_EET0_T_S7_S6_RT1_.exit43, label %.lr.ph.i.i.i.i.i30

.lr.ph.i.i.i.i.i30:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4bzla4NodeEmES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %bb.i
  %.016.i.i.i.i.i31.idx = phi i64 [ %.016.i.i.i.i.i31.add, %bb.i ], [ 16, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4bzla4NodeEmES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 3 uses
  %.01215.i.i.i.i.i32 = phi ptr [ %i.ai, %bb.i ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4bzla4NodeEmES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 3 uses
  %.016.i.i.i.i.i31.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i31.idx ; 3 uses
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %.016.i.i.i.i.i31.ptr, ptr noundef nonnull align 8 dereferenceable(16) %.01215.i.i.i.i.i32)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i30
  %i.af = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i31.ptr, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i32, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !179
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !179
  %i.ai = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i32, i64 16 ; 2 uses
  %.016.i.i.i.i.i31.add = add nuw nsw i64 %.016.i.i.i.i.i31.idx, 16 ; 2 uses
  %.not.i.i.i.i.i38 = icmp eq ptr %i.ai, %i.b
  br i1 %.not.i.i.i.i.i38, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4bzla4NodeEmES4_SaIS3_EET0_T_S7_S6_RT1_.exit43.loopexit, label %.lr.ph.i.i.i.i.i30, !llvm.loop !941

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i30
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  %i.al = tail call ptr @__cxa_begin_catch(ptr %i.ak) #25 ; 0 uses
  %.not4.i.i.i.i.i.i.i33 = icmp eq i64 %.016.i.i.i.i.i31.idx, 16
  br i1 %.not4.i.i.i.i.i.i.i33, label %_ZSt8_DestroyIPSt4pairIN4bzla4NodeEmEEvT_S5_.exit.i.i.i.i.i37, label %.lr.ph.i.i.i.i.i.i.i34

.lr.ph.i.i.i.i.i.i.i34:                           ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i34
  %.05.i.i.i.i.i.i.i35 = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i34 ], [ %.ptr, %bb.j ] ; 2 uses
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %.05.i.i.i.i.i.i.i35) #25
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i35, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i36 = icmp eq ptr %i.am, %.016.i.i.i.i.i31.ptr
  br i1 %.not.i.i.i.i.i.i.i36, label %_ZSt8_DestroyIPSt4pairIN4bzla4NodeEmEEvT_S5_.exit.i.i.i.i.i37, label %.lr.ph.i.i.i.i.i.i.i34, !llvm.loop !18

_ZSt8_DestroyIPSt4pairIN4bzla4NodeEmEEvT_S5_.exit.i.i.i.i.i37: ; preds = %.lr.ph.i.i.i.i.i.i.i34, %bb.j
  invoke void @__cxa_rethrow() #23
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4bzla4NodeEmEEvT_S5_.exit.i.i.i.i.i37
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #28
  unreachable

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4bzla4NodeEmEEvT_S5_.exit.i.i.i.i.i37
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4bzla4NodeEmES4_SaIS3_EET0_T_S7_S6_RT1_.exit43.loopexit: ; preds = %bb.i
  %.ptr60.le = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i31.add
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4bzla4NodeEmES4_SaIS3_EET0_T_S7_S6_RT1_.exit43

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4bzla4NodeEmES4_SaIS3_EET0_T_S7_S6_RT1_.exit43: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4bzla4NodeEmES4_SaIS3_EET0_T_S7_S6_RT1_.exit43.loopexit, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4bzla4NodeEmES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %.0.lcssa.i.i.i.i.i39 = phi ptr [ %.ptr, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4bzla4NodeEmES4_SaIS3_EET0_T_S7_S6_RT1_.exit ], [ %.ptr60.le, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4bzla4NodeEmES4_SaIS3_EET0_T_S7_S6_RT1_.exit43.loopexit ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIN4bzla4NodeEmEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4bzla4NodeEmES4_SaIS3_EET0_T_S7_S6_RT1_.exit43, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.aq, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4bzla4NodeEmES4_SaIS3_EET0_T_S7_S6_RT1_.exit43 ] ; 2 uses
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %.05.i.i) #25
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aq, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairIN4bzla4NodeEmEEvT_S5_.exit, label %.lr.ph.i.i, !llvm.loop !18

_ZSt8_DestroyIPSt4pairIN4bzla4NodeEmEEvT_S5_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4bzla4NodeEmES4_SaIS3_EET0_T_S7_S6_RT1_.exit43
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i44 = icmp eq ptr %i.c, null
  br i1 %.not.i44, label %_ZNSt12_Vector_baseISt4pairIN4bzla4NodeEmESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4bzla4NodeEmEEvT_S5_.exit
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !182
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.au) #26
  br label %_ZNSt12_Vector_baseISt4pairIN4bzla4NodeEmESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt4pairIN4bzla4NodeEmESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN4bzla4NodeEmEEvT_S5_.exit, %bb.n
  store ptr %i.p, ptr %0, align 8, !tbaa !207
  store ptr %.0.lcssa.i.i.i.i.i39, ptr %i.a, align 8, !tbaa !181
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.av, ptr %i.ar, align 8, !tbaa !182
  ret void

.thread:                                          ; preds = %_ZNKSt6vectorISt4pairIN4bzla4NodeEmESaIS3_EE12_M_check_lenEmPKc.exit
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  %i.ay = tail call ptr @__cxa_begin_catch(ptr %i.ax) #25 ; 0 uses
  br label %_ZSt8_DestroyIPSt4pairIN4bzla4NodeEmES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt4pairIN4bzla4NodeEmES3_EvT_S5_RSaIT0_E.exit.thread: ; preds = %bb.f
  %i.az = extractvalue { ptr, i32 } %i.ac, 0
  %i.ba = tail call ptr @__cxa_begin_catch(ptr %i.az) #25 ; 0 uses
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %i.q) #25
  br label %_ZSt8_DestroyIPSt4pairIN4bzla4NodeEmES3_EvT_S5_RSaIT0_E.exit

bb.o:                                             ; preds = %bb.k
  %i.bb = extractvalue { ptr, i32 } %i.an, 0
  %i.bc = tail call ptr @__cxa_begin_catch(ptr %i.bb) #25 ; 0 uses
  %.not4.i.i45 = icmp eq ptr %i.p, %.ptr
  br i1 %.not4.i.i45, label %_ZSt8_DestroyIPSt4pairIN4bzla4NodeEmES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i46

.lr.ph.i.i46:                                     ; preds = %bb.o, %.lr.ph.i.i46
  %.05.i.i47 = phi ptr [ %i.bd, %.lr.ph.i.i46 ], [ %i.p, %bb.o ] ; 3 uses
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %.05.i.i47) #25
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i.i47, i64 16
  %.not.i.i48 = icmp eq ptr %.05.i.i47, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i48, label %_ZSt8_DestroyIPSt4pairIN4bzla4NodeEmES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i46, !llvm.loop !18

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4bzla4NodeEmES3_EvT_S5_RSaIT0_E.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

_ZSt8_DestroyIPSt4pairIN4bzla4NodeEmES3_EvT_S5_RSaIT0_E.exit: ; preds = %.lr.ph.i.i46, %.thread, %bb.o, %_ZSt8_DestroyIPSt4pairIN4bzla4NodeEmES3_EvT_S5_RSaIT0_E.exit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #26
  invoke void @__cxa_rethrow() #23
          to label %bb.s unwind label %bb.p

bb.q:                                             ; preds = %bb.p
  resume { ptr, i32 } %i.be

bb.r:                                             ; preds = %bb.p
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #28
  unreachable

bb.s:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4bzla4NodeEmES3_EvT_S5_RSaIT0_E.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::pair.396", align 8    ; 8 uses
  %4 = alloca %"struct.std::pair.396", align 8    ; 7 uses
  %5 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %6 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %7 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %8 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %9 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %10 = alloca %"class.bzla::Node", align 8       ; 7 uses
  %11 = alloca %"class.bzla::Node", align 8       ; 7 uses
  %12 = alloca %"struct.std::pair.396", align 8   ; 8 uses
  %13 = alloca %"struct.std::pair.396", align 8   ; 7 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 24         ; 5 uses
  %i.h = getelementptr i8, ptr %0, i64 8          ; 14 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph149

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEET_SN_SN_T0_.exit"
  %i.j = icmp eq i64 %i.ak, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph149, !llvm.loop !942

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa129 = phi i64 [ %i.d, %.lr.ph ], [ %i.co, %bb.b ] ; 2 uses
  %storemerge57.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.k = add nsw i64 %.lcssa129, -2
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %._crit_edge
  %.012.i.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.s, %bb.e ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.o = getelementptr inbounds [16 x i8], ptr %0, i64 %.012.i.i.i ; 2 uses
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !179
  store i64 %i.q, ptr %i.m, align 8, !tbaa !179
  invoke void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.r = load i64, ptr %i.m, align 8, !tbaa !179
  store i64 %i.r, ptr %i.n, align 8, !tbaa !179
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_T0_SO_T1_T2_"(ptr nonnull %0, i64 noundef %.012.i.i.i, i64 noundef %.lcssa129, ptr noundef align 8 %13)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %13) #25
  %.not.i.i.i = icmp eq i64 %.012.i.i.i, 0
  %i.s = add nsw i64 %.012.i.i.i, -1
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br i1 %.not.i.i.i, label %.lr.ph.i9.i.preheader, label %bb.c, !llvm.loop !943

bb.f:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %13) #25
  br label %bb.h

common.resume:                                    ; preds = %bb.q, %bb.u, %bb.x, %bb.ab, %bb.af, %bb.ai, %bb.an, %bb.m, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i.i, %bb.h ], [ %.pn.i, %bb.m ], [ %i.cj, %bb.an ], [ %i.au, %bb.q ], [ %i.ba, %bb.u ], [ %i.bf, %bb.x ], [ %i.bl, %bb.ab ], [ %i.br, %bb.af ], [ %i.bw, %bb.ai ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn.i.i.i = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.t, %bb.f ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %common.resume

.lr.ph.i9.i.preheader:                            ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.preheader, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_RT0_.exit"
  %.sroa.0.03.i.i = phi ptr [ %i.x, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_RT0_.exit" ], [ %storemerge57.lcssa, %.lr.ph.i9.i.preheader ] ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.x)
  %i.y = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !179
  store i64 %i.z, ptr %i.v, align 8, !tbaa !179
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.i unwind label %bb.k       ; 0 uses

bb.i:                                             ; preds = %.lr.ph.i9.i
  %i.ab = load i64, ptr %i.h, align 8, !tbaa !166
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !179
  invoke void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = ptrtoint ptr %i.x to i64
  %i.ad = sub i64 %i.ac, %i.a                     ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 4
  %i.af = load i64, ptr %i.v, align 8, !tbaa !179
  store i64 %i.af, ptr %i.w, align 8, !tbaa !179
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_T0_SO_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.ae, ptr noundef align 8 %4)
          to label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_RT0_.exit" unwind label %bb.l

bb.k:                                             ; preds = %bb.i, %.lr.ph.i9.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %4) #25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %i.ag, %bb.k ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %common.resume

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_RT0_.exit": ; preds = %bb.j
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %4) #25
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ai = icmp sgt i64 %i.ad, 16
  br i1 %i.ai, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_T0_.exit", !llvm.loop !944

.lr.ph149:                                        ; preds = %.lr.ph, %bb.b
  %storemerge57148 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.058147 = phi i64 [ %i.ak, %bb.b ], [ %2, %.lr.ph ]
  %i.aj = phi i64 [ %i.co, %bb.b ], [ %i.d, %.lr.ph ]
  %i.ak = add nsw i64 %.058147, -1                ; 3 uses
  %i.al = lshr i64 %i.aj, 1
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.al ; 5 uses
  %i.an = getelementptr inbounds i8, ptr %storemerge57148, i64 -16 ; 4 uses
  %.val.i.i.i = load i64, ptr %i.g, align 8, !tbaa !179 ; 3 uses
  %i.ao = getelementptr i8, ptr %i.am, i64 8      ; 5 uses
  %.val1.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !179 ; 3 uses
  %i.ap = icmp ugt i64 %.val.i.i.i, %.val1.i.i.i
  %i.aq = getelementptr i8, ptr %storemerge57148, i64 -8 ; 5 uses
  %.val1.i27.i.i = load i64, ptr %i.aq, align 8, !tbaa !179 ; 4 uses
  br i1 %i.ap, label %bb.n, label %bb.y

bb.n:                                             ; preds = %.lr.ph149
  %i.ar = icmp ugt i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.ar, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.am)
          to label %bb.p unwind label %bb.q       ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i: ; preds = %bb.p
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.av = load i64, ptr %i.h, align 8, !tbaa !166
  %i.aw = load i64, ptr %i.ao, align 8, !tbaa !166
  store i64 %i.aw, ptr %i.h, align 8, !tbaa !166
  store i64 %i.av, ptr %i.ao, align 8, !tbaa !166
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader"

bb.r:                                             ; preds = %bb.n
  %i.ax = icmp ugt i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.ax, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.an)
          to label %bb.t unwind label %bb.u       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit30.i.i unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit30.i.i: ; preds = %bb.t
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.bb = load i64, ptr %i.h, align 8, !tbaa !166
  %i.bc = load i64, ptr %i.aq, align 8, !tbaa !166
  store i64 %i.bc, ptr %i.h, align 8, !tbaa !166
  store i64 %i.bb, ptr %i.aq, align 8, !tbaa !166
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader"

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %bb.w unwind label %bb.x       ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit31.i.i unwind label %bb.x ; 0 uses

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit31.i.i: ; preds = %bb.w
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.bg = load i64, ptr %i.h, align 8, !tbaa !166
  %i.bh = load i64, ptr %i.g, align 8, !tbaa !166
  store i64 %i.bh, ptr %i.h, align 8, !tbaa !166
  store i64 %i.bg, ptr %i.g, align 8, !tbaa !166
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader"

bb.y:                                             ; preds = %.lr.ph149
  %i.bi = icmp ugt i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.bi, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %bb.aa unwind label %bb.ab     ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit34.i.i unwind label %bb.ab ; 0 uses

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit34.i.i: ; preds = %bb.aa
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.bm = load i64, ptr %i.h, align 8, !tbaa !166
  %i.bn = load i64, ptr %i.g, align 8, !tbaa !166
  store i64 %i.bn, ptr %i.h, align 8, !tbaa !166
  store i64 %i.bm, ptr %i.g, align 8, !tbaa !166
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader"

bb.ac:                                            ; preds = %bb.y
  %i.bo = icmp ugt i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.bo, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.an)
          to label %bb.ae unwind label %bb.af     ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit37.i.i unwind label %bb.af ; 0 uses

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit37.i.i: ; preds = %bb.ae
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.bs = load i64, ptr %i.h, align 8, !tbaa !166
  %i.bt = load i64, ptr %i.aq, align 8, !tbaa !166
  store i64 %i.bt, ptr %i.h, align 8, !tbaa !166
  store i64 %i.bs, ptr %i.aq, align 8, !tbaa !166
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader"

bb.ag:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.am)
          to label %bb.ah unwind label %bb.ai     ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit38.i.i unwind label %bb.ai ; 0 uses

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit38.i.i: ; preds = %bb.ah
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.bx = load i64, ptr %i.h, align 8, !tbaa !166
  %i.by = load i64, ptr %i.ao, align 8, !tbaa !166
  store i64 %i.by, ptr %i.h, align 8, !tbaa !166
  store i64 %i.bx, ptr %i.ao, align 8, !tbaa !166
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader": ; preds = %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit38.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit37.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit34.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit31.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit30.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_SN_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_SN_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader", %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i15.i
  %.sroa.012.0.i.i = phi ptr [ %i.cb, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i15.i ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i15.i ], [ %storemerge57148, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader" ]
  %.val1.i.i13.i = load i64, ptr %i.h, align 8, !tbaa !179 ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_SN_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_SN_T0_.exit.i" ], [ %i.cb, %bb.aj ] ; 10 uses
  %i.bz = getelementptr i8, ptr %.sroa.012.1.i.i, i64 8
  %.val.i.i14.i = load i64, ptr %i.bz, align 8, !tbaa !179
  %i.ca = icmp ugt i64 %.val.i.i14.i, %.val1.i.i13.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16 ; 2 uses
  br i1 %i.ca, label %bb.aj, label %.preheader.i.i.preheader, !llvm.loop !945

.preheader.i.i.preheader:                         ; preds = %bb.aj
  %i.cc = getelementptr i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %.preheader.i.i.preheader ] ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.cd = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %.val1.i9.i.i = load i64, ptr %i.cd, align 8, !tbaa !179
  %i.ce = icmp ugt i64 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.ce, label %.preheader.i.i, label %bb.ak, !llvm.loop !946

bb.ak:                                            ; preds = %.preheader.i.i
  %i.cf = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %i.cg = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cg, label %bb.al, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEET_SN_SN_T0_.exit"

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.012.1.i.i)
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i)
          to label %bb.am unwind label %bb.an     ; 0 uses

bb.am:                                            ; preds = %bb.al
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i15.i unwind label %bb.an ; 0 uses

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i15.i: ; preds = %bb.am
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ck = load i64, ptr %i.cc, align 8, !tbaa !166
  %i.cl = load i64, ptr %i.cf, align 8, !tbaa !166
  store i64 %i.cl, ptr %i.cc, align 8, !tbaa !166
  store i64 %i.ck, ptr %i.cf, align 8, !tbaa !166
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_SN_T0_.exit.i", !llvm.loop !947

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEET_SN_SN_T0_.exit": ; preds = %bb.ak
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge57148, i64 noundef %i.ak)
  %i.cm = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cn = sub i64 %i.cm, %i.a
  %i.co = ashr exact i64 %i.cn, 4                 ; 3 uses
  %i.cp = icmp sgt i64 %i.co, 16
  br i1 %i.cp, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_T0_.exit", !llvm.loop !942

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEET_SN_SN_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_RT0_.exit", %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_T0_SO_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::pair.396", align 8    ; 5 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.037 = phi i64 [ %spec.select, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.037, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [16 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [16 x i8], ptr %0, i64 %i.g
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %.val.i = load i64, ptr %i.i, align 8, !tbaa !179
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %.val1.i = load i64, ptr %i.j, align 8, !tbaa !179
  %i.k = icmp ugt i64 %.val.i, %.val1.i
  %spec.select = select i1 %i.k, i64 %i.g, i64 %i.e ; 4 uses
  %i.l = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select ; 2 uses
  %i.m = getelementptr inbounds [16 x i8], ptr %0, i64 %.037 ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.l) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !166
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !179
  %i.r = icmp slt i64 %spec.select, %i.b
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !948

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %.lr.ph ] ; 5 uses
  %i.s = and i64 %2, 1
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.u = add nsw i64 %2, -2
  %i.v = ashr exact i64 %i.u, 1
  %i.w = icmp eq i64 %.0.lcssa, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = shl nsw i64 %.0.lcssa, 1
  %i.y = or disjoint i64 %i.x, 1                  ; 2 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %0, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa ; 2 uses
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.z) ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !166
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !179
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.y, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !179
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !179
  %i.ai = icmp sgt i64 %.1, %1
  br i1 %i.ai, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.d, %.noexc
  %.010.i = phi i64 [ %.0911.i, %.noexc ], [ %.1, %bb.d ] ; 3 uses
  %.0911.in.i = add nsw i64 %.010.i, -1
  %.0911.i = sdiv i64 %.0911.in.i, 2              ; 4 uses
  %i.aj = getelementptr inbounds [16 x i8], ptr %0, i64 %.0911.i ; 2 uses
  %.val.i25 = load i64, ptr %i.af, align 8, !tbaa !179
  %i.ak = getelementptr i8, ptr %i.aj, i64 8      ; 2 uses
  %.val.i.i = load i64, ptr %i.ak, align 8, !tbaa !179
  %i.al = icmp ugt i64 %.val.i.i, %.val.i25
  br i1 %i.al, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.am = getelementptr inbounds [16 x i8], ptr %0, i64 %.010.i ; 2 uses
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.aj)
          to label %.noexc unwind label %.loopexit ; 0 uses

.noexc:                                           ; preds = %bb.e
  %i.ao = load i64, ptr %i.ak, align 8, !tbaa !166
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !179
  %i.aq = icmp sgt i64 %.0911.i, %1
  br i1 %i.aq, label %.lr.ph.i, label %.critedge.i, !llvm.loop !949

.critedge.i:                                      ; preds = %.noexc, %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi i64 [ %.1, %bb.d ], [ %.010.i, %.lr.ph.i ], [ %.0911.i, %.noexc ]
  %i.ar = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i ; 2 uses
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.f unwind label %.loopexit.split-lp ; 0 uses

bb.f:                                             ; preds = %.critedge.i
  %i.at = load i64, ptr %i.af, align 8, !tbaa !166
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !179
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %4) #25
  ret void

.loopexit:                                        ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %.critedge.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %4) #25
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_T0_"(ptr %0, ptr nofree readnone captures(address) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.396", align 8    ; 8 uses
  %3 = alloca %"struct.std::pair.396", align 8    ; 8 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit19, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.021 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not22 = icmp eq ptr %.sroa.0.021, %1
  br i1 %.not22, label %.loopexit19, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.0.024 = phi ptr [ %.sroa.0.021, %.lr.ph ], [ %.sroa.0.0, %bb.i ] ; 8 uses
  %.pn23 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.024, %bb.i ] ; 3 uses
  %i.f = getelementptr i8, ptr %.pn23, i64 24     ; 3 uses
  %.val.i = load i64, ptr %i.f, align 8, !tbaa !179
  %.val1.i = load i64, ptr %i.b, align 8, !tbaa !179
  %i.g = icmp ugt i64 %.val.i, %.val1.i
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.024)
  %i.h = load i64, ptr %i.f, align 8, !tbaa !179
  store i64 %i.h, ptr %i.d, align 8, !tbaa !179
  %i.i = ptrtoint ptr %.sroa.0.024 to i64
  %i.j = sub i64 %i.i, %i.e
  %i.k = ashr exact i64 %i.j, 4                   ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph.i.i.i.i.i.preheader, label %.loopexit18

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.pn23, i64 32
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.noexc
  %.010.i.i.i.i.i = phi i64 [ %i.t, %.noexc ], [ %i.k, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.o, %.noexc ], [ %i.m, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.078.i.i.i.i.i = phi ptr [ %i.n, %.noexc ], [ %.sroa.0.024, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16 ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16 ; 2 uses
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %.noexc unwind label %.loopexit ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i.i.i.i.i
  %i.q = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !166
  %i.s = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !179
  %i.t = add nsw i64 %.010.i.i.i.i.i, -1
  %i.u = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.u, label %.lr.ph.i.i.i.i.i, label %.loopexit18, !llvm.loop !950

.loopexit18:                                      ; preds = %.noexc, %bb.c
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.d unwind label %.loopexit.split-lp ; 0 uses

bb.d:                                             ; preds = %.loopexit18
  %i.w = load i64, ptr %i.d, align 8, !tbaa !166
  store i64 %i.w, ptr %i.b, align 8, !tbaa !179
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.i

common.resume:                                    ; preds = %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi, %bb.e ], [ %lpad.phi.i, %bb.h ]
  resume { ptr, i32 } %common.resume.op

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorImSaImEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS9_10_Hash_nodeIS7_Lb1EEEm:bb.a
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorImSaImEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !257  ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !164  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeESt6vectorImSaImEEELb1EEEEE18_M_deallocate_nodeEPSA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !165
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #26
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeESt6vectorImSaImEEELb1EEEEE18_M_deallocate_nodeEPSA_.exit

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeESt6vectorImSaImEEELb1EEEEE18_M_deallocate_nodeEPSA_.exit: ; preds = %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %i.j) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 48) #26
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeESt6vectorImSaImEEELb1EEEEE18_M_deallocate_nodeEPSA_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeESt6vectorImSaImEEELb1EEEEE16_M_allocate_nodeIJRS5_S8_EEEPSA_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27 ; 6 uses
  store ptr null, ptr %i.a, align 8, !tbaa !68
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load <2 x ptr>, ptr %2, align 8, !tbaa !170
  store <2 x ptr> %i.d, ptr %i.c, align 8, !tbaa !170
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !165
  store ptr %i.g, ptr %i.e, align 8, !tbaa !165
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.i) #25 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #26
  invoke void @__cxa_rethrow() #23
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.k

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #28
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorImSaImEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !221

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !968
  br label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorImSaImEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeESt6vectorImSaImEEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !221

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeESt6vectorImSaImEEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #27 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorImSaImEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorImSaImEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeESt6vectorImSaImEEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeESt6vectorImSaImEEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !205  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !205
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorImSaImEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorImSaImEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorImSaImEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !68 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !74
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72   ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !205
  store ptr %i.o, ptr %.02530, align 8, !tbaa !68
  store ptr %.02530, ptr %i.g, align 8, !tbaa !205
  store ptr %i.g, ptr %i.m, align 8, !tbaa !72
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !68
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !72
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !68
  store ptr %i.r, ptr %.02530, align 8, !tbaa !68
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !72
  store ptr %.02530, ptr %i.s, align 8, !tbaa !68
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !967

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorImSaImEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !192    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorImSaImEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !193
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #26
  br label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorImSaImEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorImSaImEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !193
  store ptr %.0.i, ptr %0, align 8, !tbaa !192
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEEvT_SP_T0_T1_"(ptr %0, ptr %1, i64 noundef %2, ptr %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::pair.415", align 8    ; 9 uses
  %5 = alloca %"struct.std::pair.415", align 8    ; 8 uses
  %6 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %7 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %8 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %9 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %10 = alloca %"class.bzla::Node", align 8       ; 7 uses
  %11 = alloca %"class.bzla::Node", align 8       ; 7 uses
  %12 = alloca %"class.bzla::Node", align 8       ; 7 uses
  %13 = alloca %"struct.std::pair.415", align 8   ; 9 uses
  %14 = alloca %"struct.std::pair.415", align 8   ; 8 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 5                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEEvT_SP_SP_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph149

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEET_SP_SP_T0_.exit"
  %i.j = icmp eq i64 %i.bu, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph149, !llvm.loop !969

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa129 = phi i64 [ %i.d, %.lr.ph ], [ %i.ds, %bb.b ] ; 2 uses
  %storemerge55.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.k = add nsw i64 %.lcssa129, -2
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEED2Ev.exit15.i.i.i, %._crit_edge
  %.012.i.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.ac, %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEED2Ev.exit15.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.q = getelementptr inbounds [32 x i8], ptr %0, i64 %.012.i.i.i ; 3 uses
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.s = load <2 x ptr>, ptr %i.r, align 8, !tbaa !170
  store <2 x ptr> %i.s, ptr %i.m, align 8, !tbaa !170
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !165
  store ptr %i.u, ptr %i.n, align 8, !tbaa !165
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  invoke void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.v = load <2 x ptr>, ptr %i.m, align 8, !tbaa !170
  store <2 x ptr> %i.v, ptr %i.o, align 8, !tbaa !170
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !165
  store ptr %i.w, ptr %i.p, align 8, !tbaa !165
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEEvT_T0_SQ_T1_T2_"(ptr nonnull %0, i64 noundef %.012.i.i.i, i64 noundef %.lcssa129, ptr noundef align 8 %14, ptr %3)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !164  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEED2Ev.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !165
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ab) #26
  br label %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEED2Ev.exit.i.i.i

_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEED2Ev.exit.i.i.i: ; preds = %bb.f, %bb.e
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %14) #25
  %.not.i.i.i = icmp eq i64 %.012.i.i.i, 0
  %i.ac = add nsw i64 %.012.i.i.i, -1
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !164 ; 3 uses
  %.not.i.i.i.i14.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i14.i.i.i, label %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEED2Ev.exit15.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEED2Ev.exit.i.i.i
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !165
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ah) #26
  br label %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEED2Ev.exit15.i.i.i

_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEED2Ev.exit15.i.i.i: ; preds = %bb.g, %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEED2Ev.exit.i.i.i
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br i1 %.not.i.i.i, label %.lr.ph.i9.i.preheader, label %bb.c, !llvm.loop !970

bb.h:                                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %14) #25
  br label %bb.j

common.resume:                                    ; preds = %bb.v, %bb.z, %bb.ac, %bb.ag, %bb.ak, %bb.an, %bb.at, %bb.r, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i.i, %bb.j ], [ %.pn.i, %bb.r ], [ %i.dh, %bb.at ], [ %i.cc, %bb.v ], [ %i.cg, %bb.z ], [ %i.cj, %bb.ac ], [ %i.cn, %bb.ag ], [ %i.cr, %bb.ak ], [ %i.cu, %bb.an ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn.i.i.i = phi { ptr, i32 } [ %i.aj, %bb.i ], [ %i.ai, %bb.h ]
  call void @_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %common.resume

.lr.ph.i9.i.preheader:                            ; preds = %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEED2Ev.exit15.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.preheader, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEEvT_SP_SP_RT0_.exit"
  %.sroa.0.05.i.i = phi ptr [ %i.ao, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEEvT_SP_SP_RT0_.exit" ], [ %storemerge55.lcssa, %.lr.ph.i9.i.preheader ] ; 3 uses
  %i.ao = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ao)
  %i.ap = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -24 ; 4 uses
  %i.aq = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !170
  store <2 x ptr> %i.aq, ptr %i.ak, align 8, !tbaa !170
  %i.ar = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !165
  store ptr %i.as, ptr %i.al, align 8, !tbaa !165
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %.noexc.i unwind label %bb.p   ; 0 uses

.noexc.i:                                         ; preds = %.lr.ph.i9.i
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !164 ; 3 uses
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !165
  %i.aw = load <2 x ptr>, ptr %i.g, align 8, !tbaa !170
  store <2 x ptr> %i.aw, ptr %i.ap, align 8, !tbaa !170
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !165
  store ptr %i.ax, ptr %i.ar, align 8, !tbaa !165
  %.not.i.i.i.i.i.i.i14 = icmp eq ptr %i.au, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i14, label %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEEaSEOS5_.exit.i, label %bb.k

bb.k:                                             ; preds = %.noexc.i
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = ptrtoint ptr %i.au to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ba) #26
  br label %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEEaSEOS5_.exit.i

_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEEaSEOS5_.exit.i: ; preds = %bb.k, %.noexc.i
  invoke void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEEaSEOS5_.exit.i
  %i.bb = ptrtoint ptr %i.ao to i64
  %i.bc = sub i64 %i.bb, %i.a                     ; 2 uses
  %i.bd = ashr exact i64 %i.bc, 5
  %i.be = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !170
  store <2 x ptr> %i.be, ptr %i.am, align 8, !tbaa !170
  %i.bf = load ptr, ptr %i.al, align 8, !tbaa !165
  store ptr %i.bf, ptr %i.an, align 8, !tbaa !165
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEEvT_T0_SQ_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.bd, ptr noundef align 8 %5, ptr %3)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bg = load ptr, ptr %i.am, align 8, !tbaa !164 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = load ptr, ptr %i.an, align 8, !tbaa !165
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bk) #26
  br label %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEED2Ev.exit.i

_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEED2Ev.exit.i: ; preds = %bb.n, %bb.m
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %5) #25
  %i.bl = load ptr, ptr %i.ak, align 8, !tbaa !164 ; 3 uses
  %.not.i.i.i.i6.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i6.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEEvT_SP_SP_RT0_.exit", label %bb.o

bb.o:                                             ; preds = %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEED2Ev.exit.i
  %i.bm = load ptr, ptr %i.al, align 8, !tbaa !165
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bl to i64
  %i.bp = sub i64 %i.bn, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bp) #26
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEEvT_SP_SP_RT0_.exit"

bb.p:                                             ; preds = %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEEaSEOS5_.exit.i, %.lr.ph.i9.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #25
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn.i = phi { ptr, i32 } [ %i.br, %bb.q ], [ %i.bq, %bb.p ]
  call void @_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %common.resume

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEEvT_SP_SP_RT0_.exit": ; preds = %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEED2Ev.exit.i, %bb.o
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bs = icmp sgt i64 %i.bc, 32
  br i1 %i.bs, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEEvT_SP_SP_T0_.exit", !llvm.loop !971

.lr.ph149:                                        ; preds = %.lr.ph, %bb.b
  %storemerge55148 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.056147 = phi i64 [ %i.bu, %bb.b ], [ %2, %.lr.ph ]
  %i.bt = phi i64 [ %i.ds, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bu = add nsw i64 %.056147, -1                ; 3 uses
  %i.bv = lshr i64 %i.bt, 1
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bv ; 9 uses
  %i.bx = getelementptr inbounds i8, ptr %storemerge55148, i64 -32 ; 10 uses
  %i.by = call fastcc noundef zeroext i1 @"_ZZN4bzla10preprocess4pass13PassNormalize16normalize_addersERKSt6vectorINS_4NodeESaIS4_EERS6_ENK3$_1clISt4pairIS4_S3_ImSaImEEESF_EEDaRKT_RKT0_"(ptr %3, ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.bw)
  br i1 %i.by, label %bb.s, label %bb.ad

bb.s:                                             ; preds = %.lr.ph149
  %i.bz = call fastcc noundef zeroext i1 @"_ZZN4bzla10preprocess4pass13PassNormalize16normalize_addersERKSt6vectorINS_4NodeESaIS4_EERS6_ENK3$_1clISt4pairIS4_S3_ImSaImEEESF_EEDaRKT_RKT0_"(ptr %3, ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %i.bx)
  br i1 %i.bz, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bw)
          to label %bb.u unwind label %bb.v       ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEESC_EvT_T0_.exit.i.i unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEESC_EvT_T0_.exit.i.i: ; preds = %bb.u
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEEvT_SP_SP_SP_T0_.exit.i"

bb.w:                                             ; preds = %bb.s
  %i.cd = call fastcc noundef zeroext i1 @"_ZZN4bzla10preprocess4pass13PassNormalize16normalize_addersERKSt6vectorINS_4NodeESaIS4_EERS6_ENK3$_1clISt4pairIS4_S3_ImSaImEEESF_EEDaRKT_RKT0_"(ptr %3, ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.bx)
  br i1 %i.cd, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.ce = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bx)
          to label %bb.y unwind label %bb.z       ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEESC_EvT_T0_.exit30.i.i unwind label %bb.z ; 0 uses

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEESC_EvT_T0_.exit30.i.i: ; preds = %bb.y
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEEvT_SP_SP_SP_T0_.exit.i"

bb.aa:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.ab unwind label %bb.ac     ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEESC_EvT_T0_.exit31.i.i unwind label %bb.ac ; 0 uses

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEESC_EvT_T0_.exit31.i.i: ; preds = %bb.ab
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEEvT_SP_SP_SP_T0_.exit.i"

bb.ad:                                            ; preds = %.lr.ph149
  %i.ck = call fastcc noundef zeroext i1 @"_ZZN4bzla10preprocess4pass13PassNormalize16normalize_addersERKSt6vectorINS_4NodeESaIS4_EERS6_ENK3$_1clISt4pairIS4_S3_ImSaImEEESF_EEDaRKT_RKT0_"(ptr %3, ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.bx)
  br i1 %i.ck, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.af unwind label %bb.ag     ; 0 uses

bb.af:                                            ; preds = %bb.ae
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEESC_EvT_T0_.exit32.i.i unwind label %bb.ag ; 0 uses

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEESC_EvT_T0_.exit32.i.i: ; preds = %bb.af
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEEvT_SP_SP_SP_T0_.exit.i"

bb.ah:                                            ; preds = %bb.ad
  %i.co = call fastcc noundef zeroext i1 @"_ZZN4bzla10preprocess4pass13PassNormalize16normalize_addersERKSt6vectorINS_4NodeESaIS4_EERS6_ENK3$_1clISt4pairIS4_S3_ImSaImEEESF_EEDaRKT_RKT0_"(ptr %3, ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %i.bx)
  br i1 %i.co, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bx)
          to label %bb.aj unwind label %bb.ak     ; 0 uses

bb.aj:                                            ; preds = %bb.ai
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEESC_EvT_T0_.exit33.i.i unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEESC_EvT_T0_.exit33.i.i: ; preds = %bb.aj
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEEvT_SP_SP_SP_T0_.exit.i"

bb.al:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bw)
          to label %bb.am unwind label %bb.an     ; 0 uses

bb.am:                                            ; preds = %bb.al
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEESC_EvT_T0_.exit34.i.i unwind label %bb.an ; 0 uses

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEESC_EvT_T0_.exit34.i.i: ; preds = %bb.am
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEEvT_SP_SP_SP_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEEvT_SP_SP_SP_T0_.exit.i": ; preds = %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEESC_EvT_T0_.exit34.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEESC_EvT_T0_.exit33.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEESC_EvT_T0_.exit32.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEESC_EvT_T0_.exit31.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEESC_EvT_T0_.exit30.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEESC_EvT_T0_.exit.i.i
  %.sink52.i.i = phi ptr [ %i.f, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEESC_EvT_T0_.exit32.i.i ], [ %i.bw, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEESC_EvT_T0_.exit34.i.i ], [ %i.bx, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEESC_EvT_T0_.exit33.i.i ], [ %i.bw, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEESC_EvT_T0_.exit.i.i ], [ %i.f, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEESC_EvT_T0_.exit31.i.i ], [ %i.bx, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEESC_EvT_T0_.exit30.i.i ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sink52.i.i, i64 8 ; 2 uses
  %i.cw = load ptr, ptr %i.h, align 8, !tbaa !165
  %i.cx = load <2 x ptr>, ptr %i.cv, align 8, !tbaa !170
  %i.cy = getelementptr inbounds nuw i8, ptr %.sink52.i.i, i64 24 ; 2 uses
  %i.cz = load <2 x ptr>, ptr %i.g, align 8, !tbaa !170
  store <2 x ptr> %i.cx, ptr %i.g, align 8, !tbaa !170
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !165
  store ptr %i.da, ptr %i.h, align 8, !tbaa !165
  store <2 x ptr> %i.cz, ptr %i.cv, align 8, !tbaa !170
  store ptr %i.cw, ptr %i.cy, align 8, !tbaa !165
  br label %bb.ao

bb.ao:                                            ; preds = %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEESC_EvT_T0_.exit.i12.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEEvT_SP_SP_SP_T0_.exit.i"
  %.sroa.09.0.i.i = phi ptr [ %storemerge55148, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEEvT_SP_SP_SP_T0_.exit.i" ], [ %.sroa.09.1.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEESC_EvT_T0_.exit.i12.i ]
  %.sroa.012.0.i.i = phi ptr [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEEvT_SP_SP_SP_T0_.exit.i" ], [ %i.dc, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEESC_EvT_T0_.exit.i12.i ]
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %bb.ao
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %bb.ao ], [ %i.dc, %bb.ap ] ; 11 uses
  %i.db = call fastcc noundef zeroext i1 @"_ZZN4bzla10preprocess4pass13PassNormalize16normalize_addersERKSt6vectorINS_4NodeESaIS4_EERS6_ENK3$_1clISt4pairIS4_S3_ImSaImEEESF_EEDaRKT_RKT0_"(ptr %3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 32 ; 2 uses
  br i1 %i.db, label %bb.ap, label %.preheader.i.i, !llvm.loop !972

.preheader.i.i:                                   ; preds = %bb.ap, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.ap ] ; 3 uses
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -32 ; 6 uses
  %i.dd = call fastcc noundef zeroext i1 @"_ZZN4bzla10preprocess4pass13PassNormalize16normalize_addersERKSt6vectorINS_4NodeESaIS4_EERS6_ENK3$_1clISt4pairIS4_S3_ImSaImEEESF_EEDaRKT_RKT0_"(ptr %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.1.i.i)
  br i1 %i.dd, label %.preheader.i.i, label %bb.aq, !llvm.loop !973

bb.aq:                                            ; preds = %.preheader.i.i
  %i.de = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.de, label %bb.ar, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEET_SP_SP_T0_.exit"

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.012.1.i.i)
  %i.df = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.1.i.i)
          to label %bb.as unwind label %bb.at     ; 0 uses

bb.as:                                            ; preds = %bb.ar
  %i.dg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.1.i.i, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEESC_EvT_T0_.exit.i12.i unwind label %bb.at ; 0 uses

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEESC_EvT_T0_.exit.i12.i: ; preds = %bb.as
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -24 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 24 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !165
  %i.dm = load <2 x ptr>, ptr %i.dj, align 8, !tbaa !170
  %i.dn = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -8 ; 2 uses
  %i.do = load <2 x ptr>, ptr %i.di, align 8, !tbaa !170
  store <2 x ptr> %i.dm, ptr %i.di, align 8, !tbaa !170
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !165
  store ptr %i.dp, ptr %i.dk, align 8, !tbaa !165
  store <2 x ptr> %i.do, ptr %i.dj, align 8, !tbaa !170
  store ptr %i.dl, ptr %i.dn, align 8, !tbaa !165
  br label %bb.ao, !llvm.loop !974

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEET_SP_SP_T0_.exit": ; preds = %bb.aq
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEEvT_SP_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge55148, i64 noundef %i.bu, ptr %3)
  %i.dq = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.dr = sub i64 %i.dq, %i.a
  %i.ds = ashr exact i64 %i.dr, 5                 ; 3 uses
  %i.dt = icmp sgt i64 %i.ds, 16
  br i1 %i.dt, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEEvT_SP_SP_T0_.exit", !llvm.loop !969

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEEvT_SP_SP_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEET_SP_SP_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEEvT_SP_SP_RT0_.exit", %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEEvT_T0_SQ_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 %3, ptr %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::pair.415", align 8    ; 7 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEEaSEOS5_.exit
  %.042 = phi i64 [ %spec.select, %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEEaSEOS5_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.042, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [32 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [32 x i8], ptr %0, i64 %i.g
  %i.i = tail call fastcc noundef zeroext i1 @"_ZZN4bzla10preprocess4pass13PassNormalize16normalize_addersERKSt6vectorINS_4NodeESaIS4_EERS6_ENK3$_1clISt4pairIS4_S3_ImSaImEEESF_EEDaRKT_RKT0_"(ptr %4, ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  %spec.select = select i1 %i.i, i64 %i.g, i64 %i.e ; 4 uses
  %i.j = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select ; 3 uses
  %i.k = getelementptr inbounds [32 x i8], ptr %0, i64 %.042 ; 3 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.j) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !164  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !165
  %i.r = load <2 x ptr>, ptr %i.m, align 8, !tbaa !170
  store <2 x ptr> %i.r, ptr %i.n, align 8, !tbaa !170
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !165
  store ptr %i.t, ptr %i.p, align 8, !tbaa !165
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEEaSEOS5_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = ptrtoint ptr %i.o to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.w) #26
  br label %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEEaSEOS5_.exit

_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEEaSEOS5_.exit: ; preds = %.lr.ph, %bb.b
  %i.x = icmp slt i64 %spec.select, %i.b
  br i1 %i.x, label %.lr.ph, label %._crit_edge, !llvm.loop !975

._crit_edge:                                      ; preds = %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEEaSEOS5_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEEaSEOS5_.exit ] ; 5 uses
  %i.y = and i64 %2, 1
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.c, label %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEEaSEOS5_.exit28

bb.c:                                             ; preds = %._crit_edge
  %i.aa = add nsw i64 %2, -2
  %i.ab = ashr exact i64 %i.aa, 1
  %i.ac = icmp eq i64 %.0.lcssa, %i.ab
  br i1 %i.ac, label %bb.d, label %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEEaSEOS5_.exit28

bb.d:                                             ; preds = %bb.c
  %i.ad = shl nsw i64 %.0.lcssa, 1
  %i.ae = or disjoint i64 %i.ad, 1                ; 3 uses
  %i.af = getelementptr inbounds [32 x i8], ptr %0, i64 %i.ae ; 3 uses
  %i.ag = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa ; 3 uses
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.af) ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !164 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !165
  %i.an = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !170
  store <2 x ptr> %i.an, ptr %i.aj, align 8, !tbaa !170
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !165
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !165
  %.not.i.i.i.i.i.i27 = icmp eq ptr %i.ak, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i27, label %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEEaSEOS5_.exit28, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = ptrtoint ptr %i.ak to i64
  %i.as = sub i64 %i.aq, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.as) #26
  br label %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEEaSEOS5_.exit28

_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEEaSEOS5_.exit28: ; preds = %bb.e, %bb.d, %bb.c, %._crit_edge
  %.1 = phi i64 [ %.0.lcssa, %._crit_edge ], [ %.0.lcssa, %bb.c ], [ %i.ae, %bb.d ], [ %i.ae, %bb.e ] ; 3 uses
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.av = load <2 x ptr>, ptr %i.au, align 8, !tbaa !170
  store <2 x ptr> %i.av, ptr %i.at, align 8, !tbaa !170
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !165
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !165
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %i.az = icmp sgt i64 %.1, %1
  br i1 %i.az, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEEaSEOS5_.exit28, %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEEaSEOS5_.exit.i
  %.010.i = phi i64 [ %.0911.i, %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEEaSEOS5_.exit.i ], [ %.1, %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEEaSEOS5_.exit28 ] ; 3 uses
  %.0911.in.i = add nsw i64 %.010.i, -1
  %.0911.i = sdiv i64 %.0911.in.i, 2              ; 4 uses
  %i.ba = getelementptr inbounds [32 x i8], ptr %0, i64 %.0911.i ; 4 uses
  %i.bb = invoke fastcc noundef zeroext i1 @"_ZZN4bzla10preprocess4pass13PassNormalize16normalize_addersERKSt6vectorINS_4NodeESaIS4_EERS6_ENK3$_1clISt4pairIS4_S3_ImSaImEEESF_EEDaRKT_RKT0_"(ptr %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %.lr.ph.i
  br i1 %i.bb, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %.noexc
  %i.bc = getelementptr inbounds [32 x i8], ptr %0, i64 %.010.i ; 3 uses
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %.noexc29 unwind label %.loopexit ; 0 uses

.noexc29:                                         ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !164 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !165
  %i.bj = load <2 x ptr>, ptr %i.be, align 8, !tbaa !170
  store <2 x ptr> %i.bj, ptr %i.bf, align 8, !tbaa !170
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !165
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !165
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEEaSEOS5_.exit.i, label %bb.g

bb.g:                                             ; preds = %.noexc29
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = ptrtoint ptr %i.bg to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bo) #26
  br label %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEEaSEOS5_.exit.i

_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEEaSEOS5_.exit.i: ; preds = %bb.g, %.noexc29
  %i.bp = icmp sgt i64 %.0911.i, %1
  br i1 %i.bp, label %.lr.ph.i, label %.critedge.i, !llvm.loop !976

.critedge.i:                                      ; preds = %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEEaSEOS5_.exit.i, %.noexc, %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEEaSEOS5_.exit28
  %.0.lcssa.i = phi i64 [ %.1, %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEEaSEOS5_.exit28 ], [ %.010.i, %.noexc ], [ %.0911.i, %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEEaSEOS5_.exit.i ]
  %i.bq = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa.i ; 3 uses
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc30 unwind label %.loopexit.split-lp ; 0 uses

.noexc30:                                         ; preds = %.critedge.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !164 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !165
  %i.bw = load <2 x ptr>, ptr %i.at, align 8, !tbaa !170
  store <2 x ptr> %i.bw, ptr %i.bs, align 8, !tbaa !170
  %i.bx = load ptr, ptr %i.aw, align 8, !tbaa !165
  store ptr %i.bx, ptr %i.bu, align 8, !tbaa !165
  %.not.i.i.i.i.i.i10.i = icmp eq ptr %i.bt, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i10.i, label %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEED2Ev.exit, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEElS8_NS0_5__ops14_Iter_comp_valIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEEvT_T0_SQ_T1_RT2_.exit"

"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEElS8_NS0_5__ops14_Iter_comp_valIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEEvT_T0_SQ_T1_RT2_.exit": ; preds = %.noexc30
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = ptrtoint ptr %i.bt to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.ca) #26
  %.pr = load ptr, ptr %i.at, align 8, !tbaa !164 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEElS8_NS0_5__ops14_Iter_comp_valIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEEvT_T0_SQ_T1_RT2_.exit"
  %i.cb = load ptr, ptr %i.aw, align 8, !tbaa !165
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %.pr to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.ce) #26
  br label %_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEED2Ev.exit

_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEED2Ev.exit: ; preds = %.noexc30, %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeESt6vectorImSaImEEES5_IS8_SaIS8_EEEElS8_NS0_5__ops14_Iter_comp_valIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS5_IS4_SaIS4_EERSJ_E3$_1EEEvT_T0_SQ_T1_RT2_.exit", %bb.h
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %5) #25
  ret void

.loopexit:                                        ; preds = %.lr.ph.i, %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %.critedge.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt4pairIN4bzla4NodeESt6vectorImSaImEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #25
  resume { ptr, i32 } %lpad.phi
}
end_hunk_2
