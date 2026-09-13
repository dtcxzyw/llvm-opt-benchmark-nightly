Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/interpolator?download=true
inline.NumInlined: 4672
inline.NumDeleted: 1822
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN4bzla8bitblast19BitblasterInterfaceINS0_7AigNodeEE13bv_mul_squareERKSt6vectorIS2_SaIS2_EE:bb.a
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !256  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc71, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %i.m, %.noexc71 ] ; 2 uses
  tail call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #22
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !255
  br label %_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exit.i

_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exitthread-pre-split.i, %.noexc71
  %i.p = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exitthread-pre-split.i ], [ %i.m, %.noexc71 ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE7reserveEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exit.i
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !257
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.t) #23
  br label %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE7reserveEm.exit: ; preds = %_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exit.i, %bb.e
  store ptr %i.l, ptr %0, align 8, !tbaa !255
  store ptr %i.l, ptr %i.k, align 8, !tbaa !256
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  store ptr %i.u, ptr %i.j, align 8, !tbaa !257
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.aa = load ptr, ptr %2, align 8, !tbaa !255   ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.04895
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.h
  invoke void @_ZN4bzla8bitblast10AigManager11rewrite_andERKNS0_7AigNodeES4_(ptr dead_on_unwind nonnull writable sret(%"class.bzla::bitblast::AigNode") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE6mk_andERKS2_S5_.exit unwind label %bb.j

_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE6mk_andERKS2_S5_.exit: ; preds = %bb.g
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !256 ; 3 uses
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !257
  %.not.i.i73 = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i.i73, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE6mk_andERKS2_S5_.exit
  invoke void @_ZN4bzla8bitblast7AigNodeC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc74 unwind label %bb.k

.noexc74:                                         ; preds = %bb.h
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !256
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ag, ptr %i.x, align 8, !tbaa !256
  br label %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backEOS2_.exit

bb.i:                                             ; preds = %_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE6mk_andERKS2_S5_.exit
  invoke void @_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backEOS2_.exit unwind label %bb.k

_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backEOS2_.exit: ; preds = %.noexc74, %bb.i
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.ah = add nuw i64 %.04895, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !960

bb.j:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn68 = phi { ptr, i32 } [ %i.aj, %bb.k ], [ %i.ai, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.al

bb.m:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZN4bzla8bitblast7AigNodeC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE8mk_falseEv.exit unwind label %bb.p

_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE8mk_falseEv.exit: ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !256 ; 3 uses
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !257
  %.not.i.i77 = icmp eq ptr %i.am, %i.an
  br i1 %.not.i.i77, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE8mk_falseEv.exit
  invoke void @_ZN4bzla8bitblast7AigNodeC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc78 unwind label %bb.q

.noexc78:                                         ; preds = %bb.n
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !256
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !256
  br label %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backEOS2_.exit80

bb.o:                                             ; preds = %_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE8mk_falseEv.exit
  invoke void @_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.am, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backEOS2_.exit80 unwind label %bb.q

_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backEOS2_.exit80: ; preds = %.noexc78, %bb.o
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %._crit_edge.thread

bb.p:                                             ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #22
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.q ], [ %i.aq, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.al

._crit_edge.thread:                               ; preds = %bb.c, %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backEOS2_.exit80, %._crit_edge
  %i.as = phi i1 [ %i.v, %._crit_edge ], [ %i.v, %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backEOS2_.exit80 ], [ false, %bb.c ]
  %i.at = load ptr, ptr %2, align 8, !tbaa !255
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.h ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !256 ; 3 uses
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !257
  %.not.i = icmp eq ptr %i.aw, %i.ax
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge.thread
  invoke void @_ZN4bzla8bitblast7AigNodeC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.au)
          to label %.noexc81 unwind label %bb.f

.noexc81:                                         ; preds = %bb.s
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !256
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.az, ptr %i.av, align 8, !tbaa !256
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
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store i64 0, ptr %5, align 8, !tbaa !314
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bh = load ptr, ptr %2, align 8, !tbaa !255
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.046103
  invoke void @_ZN4bzla8bitblast7AigNodeC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.bi)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bj = shl nuw i64 %.047102, 1
  %i.bk = sub i64 %i.h, %i.bj                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.bl = load ptr, ptr %0, align 8, !tbaa !255
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bk
  invoke void @_ZN4bzla8bitblast19BitblasterInterfaceINS0_7AigNodeEE10half_adderERKS2_S5_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.717") align 8 %7, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bn = load ptr, ptr %0, align 8, !tbaa !255
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bk
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla8bitblast7AigNodeaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc83 unwind label %bb.z   ; 0 uses

.noexc83:                                         ; preds = %bb.w
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla8bitblast7AigNodeaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.bd)
          to label %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit unwind label %bb.z ; 0 uses

_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit: ; preds = %.noexc83
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bd) #22
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.br = sub i64 %i.g, %i.bk                     ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.g
  br i1 %i.bs, label %.lr.ph100, label %._crit_edge101

._crit_edge101:                                   ; preds = %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit91, %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bt = add nuw nsw i64 %.047102, 1             ; 2 uses
  %i.bu = add i64 %.046103, -1
  %exitcond107.not = icmp eq i64 %i.bt, %umax
  br i1 %exitcond107.not, label %._crit_edge105, label %bb.u, !llvm.loop !961

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
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bd) #22
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %7) #22
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn61 = phi { ptr, i32 } [ %i.bx, %bb.z ], [ %i.bw, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.aj

.lr.ph100:                                        ; preds = %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit, %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit91
  %.04599.in = phi i64 [ %.04599, %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit91 ], [ %i.bk, %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit ]
  %.098 = phi i64 [ %i.ci, %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit91 ], [ %.046103, %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit ] ; 3 uses
  %.04497 = phi i64 [ %i.ch, %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit91 ], [ %i.br, %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit ]
  %.04599 = add i64 %.04599.in, -1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.by = icmp eq i64 %.098, %.046103
  br i1 %i.by, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph100
  invoke void @_ZN4bzla8bitblast7AigNodeC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
          to label %_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE8mk_falseEv.exit86 unwind label %bb.ae

bb.ac:                                            ; preds = %.lr.ph100
  %i.bz = load ptr, ptr %2, align 8, !tbaa !255
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.098
  invoke void @_ZN4bzla8bitblast10AigManager11rewrite_andERKNS0_7AigNodeES4_(ptr dead_on_unwind nonnull writable sret(%"class.bzla::bitblast::AigNode") align 8 %8, ptr noundef nonnull align 8 dereferenceable(112) %i.be, ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE8mk_falseEv.exit86 unwind label %bb.ae

_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE8mk_falseEv.exit86: ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.cb = load ptr, ptr %0, align 8, !tbaa !255
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.04599
  invoke void @_ZN4bzla8bitblast19BitblasterInterfaceINS0_7AigNodeEE10full_adderERKS2_S5_S5_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.717") align 8 %9, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %_ZN4bzla8bitblast12BitInterfaceINS0_7AigNodeEE8mk_falseEv.exit86
  %i.cd = load ptr, ptr %0, align 8, !tbaa !255
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.04599
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla8bitblast7AigNodeaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %.noexc89 unwind label %bb.ag  ; 0 uses

.noexc89:                                         ; preds = %bb.ad
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla8bitblast7AigNodeaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.bg)
          to label %_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit91 unwind label %bb.ag ; 0 uses

_ZNSt5tupleIJRN4bzla8bitblast7AigNodeES3_EEaSIS2_S2_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS4_E4typeEOSt4pairIS7_S8_E.exit91: ; preds = %.noexc89
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bg) #22
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.ch = add i64 %.04497, 1                      ; 2 uses
  %i.ci = add i64 %.098, -1
  %exitcond106.not = icmp eq i64 %i.ch, %i.g
  br i1 %exitcond106.not, label %._crit_edge101, label %.lr.ph100, !llvm.loop !962

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
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bg) #22
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %9) #22
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn63 = phi { ptr, i32 } [ %i.cl, %bb.ag ], [ %i.ck, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #22
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %.pn63.pn = phi { ptr, i32 } [ %.pn63, %bb.ah ], [ %i.cj, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.aa
  %.pn63.pn.pn = phi { ptr, i32 } [ %.pn63.pn, %bb.ai ], [ %.pn61, %bb.aa ]
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.x
  %.pn63.pn.pn.pn = phi { ptr, i32 } [ %.pn63.pn.pn, %bb.aj ], [ %i.bv, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.r, %bb.l, %bb.f
  %.pn68.pn = phi { ptr, i32 } [ %.pn68, %bb.l ], [ %.pn63.pn.pn.pn, %bb.ak ], [ %i.z, %bb.f ], [ %.pn, %bb.r ]
  call void @_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #22
  resume { ptr, i32 } %.pn68.pn

._crit_edge105:                                   ; preds = %._crit_edge101, %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE9push_backERKS2_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4bzla8bitblast19BitblasterInterfaceINS0_7AigNodeEE6bv_iteES2_RKSt6vectorIS2_SaIS2_EES8_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.345") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.bzla::bitblast::AigNode", align 8 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !256  ; 2 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !255    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #25
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
  %i.l = load ptr, ptr %0, align 8, !tbaa !255    ; 3 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !256  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc16, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %i.l, %.noexc16 ] ; 2 uses
  tail call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #22
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.m
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !255
end_hunk_0
begin_hunk_1_@_ZSt16__do_uninit_copyIPKSt4pairIN4bzla4NodeES2_EPS3_ET0_T_S8_S7_:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.01217, i64 8
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZSt10_ConstructISt4pairIN4bzla4NodeES2_EJRKS3_EEvPT_DpOT0_.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %.018) #22
  br label %.body

_ZSt10_ConstructISt4pairIN4bzla4NodeES2_EJRKS3_EEvPT_DpOT0_.exit: ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %.01217, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.018, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.d, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1271

bb.c:                                             ; preds = %.lr.ph
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.c, %bb.b ]
  %i.g = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.h = tail call ptr @__cxa_begin_catch(ptr %i.g) #22 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairIN4bzla4NodeES2_EEvT_S5_(ptr noundef %2, ptr noundef nonnull %.018)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #25
          to label %bb.h unwind label %bb.e

._crit_edge:                                      ; preds = %_ZSt10_ConstructISt4pairIN4bzla4NodeES2_EJRKS3_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.e, %_ZSt10_ConstructISt4pairIN4bzla4NodeES2_EJRKS3_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.e:                                             ; preds = %bb.d, %.body
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.i

bb.g:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #26
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIN4bzla4NodeES2_ESaIS3_EE17_M_realloc_insertIJRKS2_RS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !290  ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !292    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIN4bzla4NodeES2_ESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #25
  unreachable

_ZNKSt6vectorISt4pairIN4bzla4NodeES2_ESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc unwind label %.body.thread42

.noexc:                                           ; preds = %_ZNKSt6vectorISt4pairIN4bzla4NodeES2_ESaIS3_EE12_M_check_lenEmPKc.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZNSt16allocator_traitsISaISt4pairIN4bzla4NodeES2_EEE9constructIS3_JRKS2_RS2_EEEvRS4_PT_DpOT0_.exit unwind label %.body.thread

.body.thread:                                     ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %i.q) #22
  br label %bb.e

_ZNSt16allocator_traitsISaISt4pairIN4bzla4NodeES2_EEE9constructIS3_JRKS2_RS2_EEEvRS4_PT_DpOT0_.exit: ; preds = %.noexc
  %i.t = invoke noundef ptr @_ZSt16__do_uninit_copyIPKSt4pairIN4bzla4NodeES2_EPS3_ET0_T_S8_S7_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.p)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4bzla4NodeES2_ES4_SaIS3_EET0_T_S7_S6_RT1_.exit unwind label %bb.d

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4bzla4NodeES2_ES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %_ZNSt16allocator_traitsISaISt4pairIN4bzla4NodeES2_EEE9constructIS3_JRKS2_RS2_EEEvRS4_PT_DpOT0_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.v = invoke noundef ptr @_ZSt16__do_uninit_copyIPKSt4pairIN4bzla4NodeES2_EPS3_ET0_T_S8_S7_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.u)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4bzla4NodeES2_ES4_SaIS3_EET0_T_S7_S6_RT1_.exit31 unwind label %.body.thread42

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4bzla4NodeES2_ES4_SaIS3_EET0_T_S7_S6_RT1_.exit31: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4bzla4NodeES2_ES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIN4bzla4NodeES2_EEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4bzla4NodeES2_ES4_SaIS3_EET0_T_S7_S6_RT1_.exit31, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.x, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4bzla4NodeES2_ES4_SaIS3_EET0_T_S7_S6_RT1_.exit31 ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #22
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %.05.i.i) #22
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairIN4bzla4NodeES2_EEvT_S5_.exit, label %.lr.ph.i.i, !llvm.loop !15

_ZSt8_DestroyIPSt4pairIN4bzla4NodeES2_EEvT_S5_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4bzla4NodeES2_ES4_SaIS3_EET0_T_S7_S6_RT1_.exit31
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i32 = icmp eq ptr %i.c, null
  br i1 %.not.i32, label %_ZNSt12_Vector_baseISt4pairIN4bzla4NodeES2_ESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4bzla4NodeES2_EEvT_S5_.exit
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !291
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #23
  br label %_ZNSt12_Vector_baseISt4pairIN4bzla4NodeES2_ESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt4pairIN4bzla4NodeES2_ESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN4bzla4NodeES2_EEvT_S5_.exit, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !292
  store ptr %i.v, ptr %i.a, align 8, !tbaa !290
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !291
  ret void

.body.thread42:                                   ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4bzla4NodeES2_ES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %_ZNKSt6vectorISt4pairIN4bzla4NodeES2_ESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.ph = phi ptr [ %i.p, %_ZNKSt6vectorISt4pairIN4bzla4NodeES2_ESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.u, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4bzla4NodeES2_ES4_SaIS3_EET0_T_S7_S6_RT1_.exit ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt16allocator_traitsISaISt4pairIN4bzla4NodeES2_EEE9constructIS3_JRKS2_RS2_EEEvRS4_PT_DpOT0_.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.ae = tail call ptr @__cxa_begin_catch(ptr %i.ad) #22 ; 0 uses
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.r) #22
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %i.q) #22
  br label %bb.g

bb.e:                                             ; preds = %.body.thread42, %.body.thread
  %lpad.thr_comm.sink = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread42 ], [ %i.s, %.body.thread ]
  %.0.lpad-body41 = phi ptr [ %.0.ph, %.body.thread42 ], [ %i.p, %.body.thread ]
  %i.af = extractvalue { ptr, i32 } %lpad.thr_comm.sink, 0
  %i.ag = tail call ptr @__cxa_begin_catch(ptr %i.af) #22 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairIN4bzla4NodeES2_EEvT_S5_(ptr noundef nonnull %i.p, ptr noundef nonnull %.0.lpad-body41)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %bb.d, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #23
  invoke void @__cxa_rethrow() #25
          to label %bb.j unwind label %bb.f

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.ah

bb.i:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #26
  unreachable

bb.j:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeES4_ESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_12Interpolator11extract_cmpERKS7_IS4_SaIS4_EEE3$_0EEEvT_SK_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %4 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %5 = alloca %"struct.std::pair.703", align 8    ; 9 uses
  %6 = alloca %"struct.std::pair.703", align 8    ; 8 uses
  %7 = alloca %"struct.std::pair.703", align 8    ; 9 uses
  %8 = alloca %"struct.std::pair.703", align 8    ; 8 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12Interpolator11extract_cmpERKS7_IS4_SaIS4_EEE3$_0EEEvT_SK_SK_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph91

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12Interpolator11extract_cmpERKS7_IS4_SaIS4_EEE3$_0EEET_SK_SK_T0_.exit"
  %i.h = icmp eq i64 %i.aj, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph91, !llvm.loop !1272

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa81 = phi i64 [ %i.d, %.lr.ph ], [ %i.br, %bb.b ] ; 2 uses
  %storemerge44.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.i = add nsw i64 %.lcssa81, -2
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %._crit_edge
  %.012.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.q, %bb.f ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.m = getelementptr inbounds [16 x i8], ptr %0, i64 %.012.i.i.i ; 2 uses
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  invoke void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_ZNSt4pairIN4bzla4NodeES1_EC2EOS2_.exit.i.i.i unwind label %bb.d

common.resume:                                    ; preds = %bb.t, %bb.v, %bb.i, %.body.i, %bb.d, %.body.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %.pn.i.i.i, %.body.i.i.i ], [ %i.o, %bb.d ], [ %i.y, %bb.i ], [ %i.bj, %bb.t ], [ %i.bo, %bb.v ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %7) #22
  br label %common.resume

_ZNSt4pairIN4bzla4NodeES1_EC2EOS2_.exit.i.i.i:    ; preds = %bb.c
  invoke void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc.i.i.i unwind label %bb.g

.noexc.i.i.i:                                     ; preds = %_ZNSt4pairIN4bzla4NodeES1_EC2EOS2_.exit.i.i.i
  invoke void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %_ZNSt4pairIN4bzla4NodeES1_EC2EOS2_.exit14.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %8) #22
  br label %.body.i.i.i

_ZNSt4pairIN4bzla4NodeES1_EC2EOS2_.exit14.i.i.i:  ; preds = %.noexc.i.i.i
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeES4_ESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_12Interpolator11extract_cmpERKS7_IS4_SaIS4_EEE3$_0EEEvT_T0_SL_T1_T2_"(ptr nonnull %0, i64 noundef %.012.i.i.i, i64 noundef %.lcssa81, ptr noundef align 8 %8)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZNSt4pairIN4bzla4NodeES1_EC2EOS2_.exit14.i.i.i
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #22
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %8) #22
  %.not.i.i.i = icmp eq i64 %.012.i.i.i, 0
  %i.q = add nsw i64 %.012.i.i.i, -1
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #22
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %.not.i.i.i, label %.lr.ph.i9.i.preheader, label %bb.c, !llvm.loop !1273

bb.g:                                             ; preds = %_ZNSt4pairIN4bzla4NodeES1_EC2EOS2_.exit.i.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.h:                                             ; preds = %_ZNSt4pairIN4bzla4NodeES1_EC2EOS2_.exit14.i.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #22
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %8) #22
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.h, %bb.g, %bb.e
  %.pn.i.i.i = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.r, %bb.g ], [ %i.p, %bb.e ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #22
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %common.resume

.lr.ph.i9.i.preheader:                            ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.preheader, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12Interpolator11extract_cmpERKS7_IS4_SaIS4_EEE3$_0EEEvT_SK_SK_RT0_.exit"
  %.sroa.0.03.i.i = phi ptr [ %i.w, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12Interpolator11extract_cmpERKS7_IS4_SaIS4_EEE3$_0EEEvT_SK_SK_RT0_.exit" ], [ %storemerge44.lcssa, %.lr.ph.i9.i.preheader ] ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.w)
  %i.x = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 2 uses
  invoke void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %_ZNSt4pairIN4bzla4NodeES1_EC2EOS2_.exit.i unwind label %bb.i

bb.i:                                             ; preds = %.lr.ph.i9.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %5) #22
  br label %common.resume

_ZNSt4pairIN4bzla4NodeES1_EC2EOS2_.exit.i:        ; preds = %.lr.ph.i9.i
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %.noexc.i unwind label %bb.k   ; 0 uses

.noexc.i:                                         ; preds = %_ZNSt4pairIN4bzla4NodeES1_EC2EOS2_.exit.i
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %_ZNSt4pairIN4bzla4NodeES1_EaSEOS2_.exit.i unwind label %bb.k ; 0 uses

_ZNSt4pairIN4bzla4NodeES1_EaSEOS2_.exit.i:        ; preds = %.noexc.i
  %i.ab = ptrtoint ptr %i.w to i64
  %i.ac = sub i64 %i.ab, %i.a                     ; 2 uses
  %i.ad = ashr exact i64 %i.ac, 4
  invoke void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc6.i unwind label %bb.k

.noexc6.i:                                        ; preds = %_ZNSt4pairIN4bzla4NodeES1_EaSEOS2_.exit.i
  invoke void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %_ZNSt4pairIN4bzla4NodeES1_EC2EOS2_.exit7.i unwind label %bb.j

bb.j:                                             ; preds = %.noexc6.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %6) #22
  br label %.body.i

_ZNSt4pairIN4bzla4NodeES1_EC2EOS2_.exit7.i:       ; preds = %.noexc6.i
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeES4_ESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_12Interpolator11extract_cmpERKS7_IS4_SaIS4_EEE3$_0EEEvT_T0_SL_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.ad, ptr noundef align 8 %6)
          to label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12Interpolator11extract_cmpERKS7_IS4_SaIS4_EEE3$_0EEEvT_SK_SK_RT0_.exit" unwind label %bb.l

bb.k:                                             ; preds = %_ZNSt4pairIN4bzla4NodeES1_EaSEOS2_.exit.i, %.noexc.i, %_ZNSt4pairIN4bzla4NodeES1_EC2EOS2_.exit.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.l:                                             ; preds = %_ZNSt4pairIN4bzla4NodeES1_EC2EOS2_.exit7.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #22
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %6) #22
  br label %.body.i

.body.i:                                          ; preds = %bb.l, %bb.k, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.ag, %bb.l ], [ %i.af, %bb.k ], [ %i.ae, %bb.j ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.t) #22
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.resume

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12Interpolator11extract_cmpERKS7_IS4_SaIS4_EEE3$_0EEEvT_SK_SK_RT0_.exit": ; preds = %_ZNSt4pairIN4bzla4NodeES1_EC2EOS2_.exit7.i
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #22
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %6) #22
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.t) #22
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ah = icmp sgt i64 %i.ac, 16
  br i1 %i.ah, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12Interpolator11extract_cmpERKS7_IS4_SaIS4_EEE3$_0EEEvT_SK_SK_T0_.exit", !llvm.loop !1274

.lr.ph91:                                         ; preds = %.lr.ph, %bb.b
  %storemerge4490 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.04589 = phi i64 [ %i.aj, %bb.b ], [ %2, %.lr.ph ]
  %i.ai = phi i64 [ %i.br, %bb.b ], [ %i.d, %.lr.ph ]
  %i.aj = add nsw i64 %.04589, -1                 ; 3 uses
  %i.ak = lshr i64 %i.ai, 1
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ak ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %storemerge4490, i64 -16 ; 4 uses
  %i.an = call noundef i64 @_ZNK4bzla4Node5indexEm(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 noundef 0)
  %i.ao = call noundef i64 @_ZNK4bzla4Node5indexEm(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 noundef 0)
  %i.ap = icmp ult i64 %i.an, %i.ao
  br i1 %i.ap, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph91
  %i.aq = call noundef i64 @_ZNK4bzla4Node5indexEm(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 noundef 0)
  %i.ar = call noundef i64 @_ZNK4bzla4Node5indexEm(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 noundef 0)
  %i.as = icmp ult i64 %i.aq, %i.ar
  br i1 %i.as, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12Interpolator11extract_cmpERKS7_IS4_SaIS4_EEE3$_0EEEvT_SK_SK_SK_T0_.exit.i", label %.sink.split.i.i

bb.n:                                             ; preds = %.lr.ph91
  %i.at = call noundef i64 @_ZNK4bzla4Node5indexEm(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 noundef 0)
  %i.au = call noundef i64 @_ZNK4bzla4Node5indexEm(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 noundef 0)
  %i.av = icmp ult i64 %i.at, %i.au
  br i1 %i.av, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12Interpolator11extract_cmpERKS7_IS4_SaIS4_EEE3$_0EEEvT_SK_SK_SK_T0_.exit.i", label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.n, %bb.m
  %.sink31.i.i = phi ptr [ %i.f, %bb.m ], [ %i.al, %bb.n ] ; 2 uses
  %i.aw = call noundef i64 @_ZNK4bzla4Node5indexEm(ptr noundef nonnull align 8 dereferenceable(16) %.sink31.i.i, i64 noundef 0)
  %i.ax = call noundef i64 @_ZNK4bzla4Node5indexEm(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 noundef 0)
  %i.ay = icmp ult i64 %i.aw, %i.ax
  %.26.i.i = select i1 %i.ay, ptr %i.am, ptr %.sink31.i.i
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12Interpolator11extract_cmpERKS7_IS4_SaIS4_EEE3$_0EEEvT_SK_SK_SK_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12Interpolator11extract_cmpERKS7_IS4_SaIS4_EEE3$_0EEEvT_SK_SK_SK_T0_.exit.i": ; preds = %.sink.split.i.i, %bb.n, %bb.m
  %.sink.i.i = phi ptr [ %i.al, %bb.m ], [ %i.f, %bb.n ], [ %.26.i.i, %.sink.split.i.i ]
  call void @_ZNSt4pairIN4bzla4NodeES1_E4swapERS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sink.i.i)
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt4pairIN4bzla4NodeES1_E4swapERS2_.exit, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12Interpolator11extract_cmpERKS7_IS4_SaIS4_EEE3$_0EEEvT_SK_SK_SK_T0_.exit.i"
  %.sroa.010.0.i.i = phi ptr [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12Interpolator11extract_cmpERKS7_IS4_SaIS4_EEE3$_0EEEvT_SK_SK_SK_T0_.exit.i" ], [ %i.bc, %_ZNSt4pairIN4bzla4NodeES1_E4swapERS2_.exit ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge4490, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12Interpolator11extract_cmpERKS7_IS4_SaIS4_EEE3$_0EEEvT_SK_SK_SK_T0_.exit.i" ], [ %.sroa.0.1.i.i, %_ZNSt4pairIN4bzla4NodeES1_E4swapERS2_.exit ]
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %bb.o ], [ %i.bc, %bb.p ] ; 10 uses
  %i.az = call noundef i64 @_ZNK4bzla4Node5indexEm(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.1.i.i, i64 noundef 0)
  %i.ba = call noundef i64 @_ZNK4bzla4Node5indexEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 0)
  %i.bb = icmp ult i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16 ; 2 uses
  br i1 %i.bb, label %bb.p, label %.preheader.i.i, !llvm.loop !1275

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.p ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 6 uses
  %i.bd = call noundef i64 @_ZNK4bzla4Node5indexEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 0)
  %i.be = call noundef i64 @_ZNK4bzla4Node5indexEm(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, i64 noundef 0)
  %i.bf = icmp ult i64 %i.bd, %i.be
  br i1 %i.bf, label %.preheader.i.i, label %bb.q, !llvm.loop !1276

bb.q:                                             ; preds = %.preheader.i.i
  %i.bg = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.bg, label %bb.r, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12Interpolator11extract_cmpERKS7_IS4_SaIS4_EEE3$_0EEET_SK_SK_T0_.exit"

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.1.i.i)
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i)
          to label %bb.s unwind label %bb.t       ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZSt4swapIN4bzla4NodeEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit.i unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume

_ZSt4swapIN4bzla4NodeEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit.i: ; preds = %bb.s
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.bk)
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %i.bl)
          to label %bb.u unwind label %bb.v       ; 0 uses

bb.u:                                             ; preds = %_ZSt4swapIN4bzla4NodeEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit.i
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZNSt4pairIN4bzla4NodeES1_E4swapERS2_.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u, %_ZSt4swapIN4bzla4NodeEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %common.resume

_ZNSt4pairIN4bzla4NodeES1_E4swapERS2_.exit:       ; preds = %bb.u
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.o, !llvm.loop !1277

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12Interpolator11extract_cmpERKS7_IS4_SaIS4_EEE3$_0EEET_SK_SK_T0_.exit": ; preds = %bb.q
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeES4_ESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_12Interpolator11extract_cmpERKS7_IS4_SaIS4_EEE3$_0EEEvT_SK_T0_T1_"(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge4490, i64 noundef %i.aj)
  %i.bp = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.bq = sub i64 %i.bp, %i.a
  %i.br = ashr exact i64 %i.bq, 4                 ; 3 uses
  %i.bs = icmp sgt i64 %i.br, 16
  br i1 %i.bs, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12Interpolator11extract_cmpERKS7_IS4_SaIS4_EEE3$_0EEEvT_SK_SK_T0_.exit", !llvm.loop !1272

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12Interpolator11extract_cmpERKS7_IS4_SaIS4_EEE3$_0EEEvT_SK_SK_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12Interpolator11extract_cmpERKS7_IS4_SaIS4_EEE3$_0EEET_SK_SK_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12Interpolator11extract_cmpERKS7_IS4_SaIS4_EEE3$_0EEEvT_SK_SK_RT0_.exit", %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeES4_ESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_12Interpolator11extract_cmpERKS7_IS4_SaIS4_EEE3$_0EEEvT_T0_SL_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::pair.703", align 8    ; 6 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.040 = phi i64 [ %spec.select, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.040, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [16 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [16 x i8], ptr %0, i64 %i.g
  %i.i = tail call noundef i64 @_ZNK4bzla4Node5indexEm(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 noundef 0)
  %i.j = tail call noundef i64 @_ZNK4bzla4Node5indexEm(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 noundef 0)
  %i.k = icmp ult i64 %i.i, %i.j
  %spec.select = select i1 %i.k, i64 %i.g, i64 %i.e ; 4 uses
  %i.l = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select ; 2 uses
  %i.m = getelementptr inbounds [16 x i8], ptr %0, i64 %.040 ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.l) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.o) ; 0 uses
  %i.r = icmp slt i64 %spec.select, %i.b
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !1278

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
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %i.ac) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.y, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  invoke void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %_ZNSt4pairIN4bzla4NodeES1_EC2EOS2_.exit unwind label %bb.e

common.resume:                                    ; preds = %bb.g, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.e ], [ %lpad.phi, %bb.g ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %4) #22
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt4pairIN4bzla4NodeES1_EC2EOS2_.exit:          ; preds = %bb.d
  %i.ai = icmp sgt i64 %.1, %1
  br i1 %i.ai, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNSt4pairIN4bzla4NodeES1_EC2EOS2_.exit, %.noexc27
  %.010.i = phi i64 [ %.0911.i, %.noexc27 ], [ %.1, %_ZNSt4pairIN4bzla4NodeES1_EC2EOS2_.exit ] ; 3 uses
  %.0911.in.i = add nsw i64 %.010.i, -1
  %.0911.i = sdiv i64 %.0911.in.i, 2              ; 4 uses
  %i.aj = getelementptr inbounds [16 x i8], ptr %0, i64 %.0911.i ; 3 uses
  %i.ak = invoke noundef i64 @_ZNK4bzla4Node5indexEm(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 noundef 0)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %.lr.ph.i
  %i.al = invoke noundef i64 @_ZNK4bzla4Node5indexEm(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 0)
          to label %.noexc25 unwind label %.loopexit

.noexc25:                                         ; preds = %.noexc
  %i.am = icmp ult i64 %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %.noexc25
  %i.an = getelementptr inbounds [16 x i8], ptr %0, i64 %.010.i ; 2 uses
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.aj)
          to label %.noexc26 unwind label %.loopexit ; 0 uses

.noexc26:                                         ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %.noexc27 unwind label %.loopexit ; 0 uses

.noexc27:                                         ; preds = %.noexc26
  %i.as = icmp sgt i64 %.0911.i, %1
  br i1 %i.as, label %.lr.ph.i, label %.critedge.i, !llvm.loop !1279

.critedge.i:                                      ; preds = %.noexc27, %.noexc25, %_ZNSt4pairIN4bzla4NodeES1_EC2EOS2_.exit
  %.0.lcssa.i = phi i64 [ %.1, %_ZNSt4pairIN4bzla4NodeES1_EC2EOS2_.exit ], [ %.010.i, %.noexc25 ], [ %.0911.i, %.noexc27 ]
  %i.at = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i ; 2 uses
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %.noexc28 unwind label %.loopexit.split-lp ; 0 uses

.noexc28:                                         ; preds = %.critedge.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeES4_ESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS3_12Interpolator11extract_cmpERKS7_IS4_SaIS4_EEE3$_0EEEvT_T0_SL_T1_RT2_.exit" unwind label %.loopexit.split-lp ; 0 uses

"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeES4_ESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS3_12Interpolator11extract_cmpERKS7_IS4_SaIS4_EEE3$_0EEEvT_T0_SL_T1_RT2_.exit": ; preds = %.noexc28
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.af) #22
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %4) #22
  ret void

.loopexit:                                        ; preds = %.lr.ph.i, %.noexc, %bb.f, %.noexc26
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %.critedge.i, %.noexc28
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.af) #22
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt4pairIN4bzla4NodeES1_E4swapERS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %3 = alloca %"class.bzla::Node", align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZSt4swapIN4bzla4NodeEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit unwind label %bb.c ; 0 uses

common.resume:                                    ; preds = %bb.e, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %common.resume

_ZSt4swapIN4bzla4NodeEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit: ; preds = %bb.b
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %_ZSt4swapIN4bzla4NodeEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZSt4swapIN4bzla4NodeEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit3 unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d, %_ZSt4swapIN4bzla4NodeEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %common.resume

_ZSt4swapIN4bzla4NodeEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit3: ; preds = %bb.d
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12Interpolator11extract_cmpERKS7_IS4_SaIS4_EEE3$_0EEEvT_SK_T0_"(ptr %0, ptr nofree readnone captures(address) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.703", align 8    ; 9 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit20, label %.preheader

.preheader:                                       ; preds = %bb.a
end_hunk_1
