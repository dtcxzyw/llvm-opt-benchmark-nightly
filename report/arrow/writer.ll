Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/writer?download=true
inline.NumInlined: 5023
inline.NumDeleted: 1781
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a
bb.bkg:                                           ; preds = %bb.bkf, %bb.bke
  %.pn30.pn.i = phi { ptr, i32 } [ %i.hov, %bb.bkf ], [ %i.hou, %bb.bke ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #28, !noalias !1611
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #28, !noalias !1611
  br label %bb.bkh

.critedge36.i.loopexit:                           ; preds = %bb.bju
  %.pre = load i64, ptr %i.hna, align 8, !tbaa !127, !noalias !1611
  %i.how = add nsw i64 %.pre, 1
  br label %.critedge36.i

.critedge36.i:                                    ; preds = %.critedge36.i.loopexit, %bb.bjt
  %i.hox = phi i64 [ %i.how, %.critedge36.i.loopexit ], [ %i.hnb, %bb.bjt ]
  store i64 %i.hox, ptr %i.hna, align 8, !tbaa !127, !noalias !1611
  store ptr null, ptr %0, align 8, !tbaa !70, !alias.scope !1612
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitERKNS_16SparseUnionArrayE.exit

bb.bkh:                                           ; preds = %bb.bkg, %bb.bjv, %bb.bjs
  %.pn30.pn.pn.i = phi { ptr, i32 } [ %.pn30.pn.i, %bb.bkg ], [ %i.hnz, %bb.bjv ], [ %i.hmv, %bb.bjs ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %47) #28, !inline_history !1313
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #28, !noalias !1611
  br label %common.resume

_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitERKNS_16SparseUnionArrayE.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1671, %_ZN5arrow6StatusD2Ev.exit1679, %.critedge36.i
  %i.hoy = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.hoz = load ptr, ptr %i.hoy, align 8, !tbaa !143 ; 8 uses
  %.not.i.i1658 = icmp eq ptr %i.hoz, null
  br i1 %.not.i.i1658, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1662, label %bb.bki

bb.bki:                                           ; preds = %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitERKNS_16SparseUnionArrayE.exit
  %i.hpa = getelementptr inbounds nuw i8, ptr %i.hoz, i64 8 ; 4 uses
  %i.hpb = load atomic i64, ptr %i.hpa acquire, align 8 ; 2 uses
  %i.hpc = icmp eq i64 %i.hpb, 4294967297
  %i.hpd = trunc i64 %i.hpb to i32                ; 2 uses
  br i1 %i.hpc, label %bb.bkj, label %bb.bkk

bb.bkj:                                           ; preds = %bb.bki
  store i32 0, ptr %i.hpa, align 8, !tbaa !151
  %i.hpe = getelementptr inbounds nuw i8, ptr %i.hoz, i64 12
  store i32 0, ptr %i.hpe, align 4, !tbaa !152
  %i.hpf = load ptr, ptr %i.hoz, align 8, !tbaa !85
  %i.hpg = getelementptr inbounds nuw i8, ptr %i.hpf, i64 16
  %i.hph = load ptr, ptr %i.hpg, align 8
  call void %i.hph(ptr noundef nonnull align 8 dereferenceable(16) %i.hoz) #28, !inline_history !1318
  %i.hpi = load ptr, ptr %i.hoz, align 8, !tbaa !85
  %i.hpj = getelementptr inbounds nuw i8, ptr %i.hpi, i64 24
  %i.hpk = load ptr, ptr %i.hpj, align 8
  call void %i.hpk(ptr noundef nonnull align 8 dereferenceable(16) %i.hoz) #28, !inline_history !1318
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1662

bb.bkk:                                           ; preds = %bb.bki
  %i.hpl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !136
  %.not.i.i.i1659 = icmp eq i8 %i.hpl, 0
  br i1 %.not.i.i.i1659, label %bb.bkm, label %bb.bkl

bb.bkl:                                           ; preds = %bb.bkk
  %i.hpm = add nsw i32 %i.hpd, -1
  store i32 %i.hpm, ptr %i.hpa, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1660

bb.bkm:                                           ; preds = %bb.bkk
  %i.hpn = atomicrmw volatile add ptr %i.hpa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1660

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1660: ; preds = %bb.bkm, %bb.bkl
  %.0.i.i.i.i1661 = phi i32 [ %i.hpd, %bb.bkl ], [ %i.hpn, %bb.bkm ]
  %i.hpo = icmp eq i32 %.0.i.i.i.i1661, 1
  br i1 %i.hpo, label %bb.bkn, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1662, !prof !153

bb.bkn:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1660
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hoz) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1662

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1662: ; preds = %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitERKNS_16SparseUnionArrayE.exit, %bb.bkj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1660, %bb.bkn
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #28, !noalias !1611
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_13ListViewArrayEEENSt9enable_ifIXsr17is_list_view_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.bko:                                           ; preds = %tailrecurse
  %i.hpp = getelementptr inbounds nuw i8, ptr %.tr1800, i64 8 ; 2 uses
  %i.hpq = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.hpr = load i64, ptr %i.hpq, align 8, !tbaa !319, !noalias !1613 ; 3 uses
  %i.hps = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.hpt = load i64, ptr %i.hps, align 8, !tbaa !173, !noalias !1613 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28, !noalias !1613
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, i8 0, i64 16, i1 false), !noalias !1613
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28, !noalias !1613
  %i.hpu = load ptr, ptr %i.hpp, align 8, !tbaa !142, !noalias !1613
  %i.hpv = getelementptr inbounds nuw i8, ptr %i.hpu, i64 40
  %i.hpw = load ptr, ptr %i.hpv, align 8, !tbaa !74, !noalias !1613
  %i.hpx = getelementptr inbounds nuw i8, ptr %i.hpw, i64 16
  %i.hpy = getelementptr inbounds nuw i8, ptr %2, i64 104
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_118GetTruncatedBufferElliRKSt10shared_ptrINS_6BufferEEPNS_10MemoryPoolEPS4_(ptr dead_on_unwind noalias writable align 8 %34, i64 noundef %i.hpr, i64 noundef %i.hpt, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %i.hpx, ptr noundef %33)
          to label %_ZN5arrow6StatusD2Ev.exit1728 unwind label %bb.bkp, !noalias !1613, !inline_history !1321

_ZN5arrow6StatusD2Ev.exit1728:                    ; preds = %bb.bko
  %i.hpz = load ptr, ptr %34, align 8, !tbaa !70  ; 2 uses
  store ptr %i.hpz, ptr %0, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28, !noalias !1613
  %i.hqa = icmp eq ptr %i.hpz, null
  br i1 %i.hqa, label %_ZN5arrow6StatusD2Ev.exit1724, label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitERKNS_15DenseUnionArrayE.exit

bb.bkp:                                           ; preds = %bb.bko
  %i.hqb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28, !noalias !1613
  br label %bb.bmz

_ZN5arrow6StatusD2Ev.exit1724:                    ; preds = %_ZN5arrow6StatusD2Ev.exit1728
  %i.hqc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.hqd = load ptr, ptr %i.hqc, align 8, !tbaa !114, !noalias !1613
  %i.hqe = getelementptr inbounds nuw i8, ptr %i.hqd, i64 24
  %i.hqf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.hqe, ptr noundef nonnull align 8 dereferenceable(16) %33)
          to label %bb.bkq unwind label %bb.bkr, !inline_history !1321 ; 0 uses

bb.bkq:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1724
  %i.hqg = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %i.hqh = load i64, ptr %i.hqg, align 8, !tbaa !127, !noalias !1613
  %i.hqi = add nsw i64 %i.hqh, -1
  store i64 %i.hqi, ptr %i.hqg, align 8, !tbaa !127, !noalias !1613
  %i.hqj = load ptr, ptr %i.hpp, align 8, !tbaa !142 ; 2 uses
  %i.hqk = load ptr, ptr %i.hqj, align 8, !tbaa !240 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #28, !noalias !1613
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %35, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #28, !noalias !1613
  %i.hql = getelementptr inbounds nuw i8, ptr %i.hqj, i64 40
  %i.hqm = load ptr, ptr %i.hql, align 8, !tbaa !74
  %i.hqn = getelementptr inbounds nuw i8, ptr %i.hqm, i64 32
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_118GetTruncatedBufferElliRKSt10shared_ptrINS_6BufferEEPNS_10MemoryPoolEPS4_(ptr dead_on_unwind noalias writable align 8 %36, i64 noundef %i.hpr, i64 noundef %i.hpt, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(16) %i.hqn, ptr noundef %35)
          to label %_ZN5arrow6StatusD2Ev.exit1722 unwind label %bb.bks, !inline_history !1321

_ZN5arrow6StatusD2Ev.exit1722:                    ; preds = %bb.bkq
  %i.hqo = load ptr, ptr %36, align 8, !tbaa !70  ; 2 uses
  store ptr %i.hqo, ptr %0, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28, !noalias !1613
  %i.hqp = icmp eq ptr %i.hqo, null
  br i1 %i.hqp, label %_ZN5arrow6StatusD2Ev.exit1718, label %.critedge121.i

bb.bkr:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1724
  %i.hqq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bmz

bb.bks:                                           ; preds = %bb.bkq
  %i.hqr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28, !noalias !1613
  br label %bb.bmy

_ZN5arrow6StatusD2Ev.exit1718:                    ; preds = %_ZN5arrow6StatusD2Ev.exit1722
  %i.hqs = getelementptr inbounds nuw i8, ptr %i.hqk, i64 72 ; 2 uses
  %i.hqt = load ptr, ptr %i.hqs, align 8, !tbaa !1614 ; 7 uses
  %i.hqu = getelementptr inbounds nuw i8, ptr %i.hqk, i64 80
  %i.hqv = load ptr, ptr %i.hqu, align 8, !tbaa !1614 ; 3 uses
  %i.hqw = icmp eq ptr %i.hqt, %i.hqv
  br i1 %i.hqw, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %_ZN5arrow6StatusD2Ev.exit1718
  %i.hqx = ptrtoaddr ptr %i.hqv to i64
  %i.hqy = ptrtoaddr ptr %i.hqt to i64
  %i.hqz = sub i64 %i.hqx, %i.hqy                 ; 7 uses
  %min.iters.check = icmp ult i64 %i.hqz, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2777 = icmp ult i64 %i.hqz, 32
  br i1 %min.iters.check2777, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hra = and i64 %i.hqz, 24
  %n.vec = and i64 %i.hqz, -32                    ; 4 uses
  %i.hrb = getelementptr i8, ptr %i.hqt, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.hrd, %vector.body ]
  %vec.phi2778 = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.hre, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.hqt, i64 %index ; 2 uses
  %i.hrc = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !136
  %wide.load2779 = load <16 x i8>, ptr %i.hrc, align 1, !tbaa !136
  %i.hrd = call <16 x i8> @llvm.smax.v16i8(<16 x i8> %wide.load, <16 x i8> %vec.phi) ; 2 uses
  %i.hre = call <16 x i8> @llvm.smax.v16i8(<16 x i8> %wide.load2779, <16 x i8> %vec.phi2778) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hrf = icmp eq i64 %index.next, %n.vec
  br i1 %i.hrf, label %middle.block, label %vector.body, !llvm.loop !1322

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.hrd, <16 x i8> %i.hre)
  %i.hrg = call i8 @llvm.vector.reduce.smax.v16i8(<16 x i8> %rdx.minmax) ; 3 uses
  %cmp.n = icmp eq i64 %i.hqz, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hra, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !1615

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.hrg, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> poison, <8 x i32> zeroinitializer
  %n.vec2780 = and i64 %i.hqz, -8                 ; 3 uses
  %186 = getelementptr i8, ptr %i.hqt, i64 %n.vec2780
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index2781 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next2785, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi2782 = phi <8 x i8> [ %broadcast.splat, %vec.epilog.ph ], [ %i.hrh, %vec.epilog.vector.body ]
  %next.gep2783 = getelementptr i8, ptr %i.hqt, i64 %index2781
  %wide.load2784 = load <8 x i8>, ptr %next.gep2783, align 1, !tbaa !136
  %i.hrh = call <8 x i8> @llvm.smax.v8i8(<8 x i8> %wide.load2784, <8 x i8> %vec.phi2782) ; 2 uses
  %index.next2785 = add nuw i64 %index2781, 8     ; 2 uses
  %i.hri = icmp eq i64 %index.next2785, %n.vec2780
  br i1 %i.hri, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1323

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.hrj = call i8 @llvm.vector.reduce.smax.v8i8(<8 x i8> %i.hrh) ; 2 uses
  %cmp.n2786 = icmp eq i64 %i.hqz, %n.vec2780
  br i1 %cmp.n2786, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.074.i1970.ph = phi i8 [ 0, %iter.check ], [ %i.hrg, %vec.epilog.iter.check ], [ %i.hrj, %vec.epilog.middle.block ]
  %.sroa.01771.01969.ph = phi ptr [ %i.hqt, %iter.check ], [ %i.hrb, %vec.epilog.iter.check ], [ %186, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %spec.select.i.lcssa = phi i8 [ %i.hrj, %vec.epilog.middle.block ], [ %i.hrg, %middle.block ], [ %spec.select.i, %.lr.ph ]
  %i.hrk = zext nneg i8 %spec.select.i.lcssa to i64
  %i.hrl = add nuw nsw i64 %i.hrk, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN5arrow6StatusD2Ev.exit1718
  %.074.i.lcssa = phi i64 [ 1, %_ZN5arrow6StatusD2Ev.exit1718 ], [ %i.hrl, %._crit_edge.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #28, !noalias !1613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #28, !noalias !1613
  store i32 -1, ptr %i.n, align 4, !tbaa !43, !noalias !1613
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #28, !noalias !1613
  invoke void @_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %37, i64 noundef %.074.i.lcssa, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 1 dereferenceable(1) %38)
          to label %bb.bkt unwind label %bb.bky, !inline_history !1321

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.074.i1970 = phi i8 [ %spec.select.i, %.lr.ph ], [ %.074.i1970.ph, %.lr.ph.preheader ]
  %.sroa.01771.01969 = phi ptr [ %i.hrn, %.lr.ph ], [ %.sroa.01771.01969.ph, %.lr.ph.preheader ] ; 2 uses
  %i.hrm = load i8, ptr %.sroa.01771.01969, align 1, !tbaa !136
  %spec.select.i = call i8 @llvm.smax.i8(i8 %i.hrm, i8 %.074.i1970) ; 2 uses
  %i.hrn = getelementptr inbounds nuw i8, ptr %.sroa.01771.01969, i64 1 ; 2 uses
  %i.hro = icmp eq ptr %i.hrn, %i.hqv
  br i1 %i.hro, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1324

bb.bkt:                                           ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28, !noalias !1613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #28, !noalias !1613
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #28, !noalias !1613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #28, !noalias !1613
  store i32 0, ptr %i.o, align 4, !tbaa !43, !noalias !1613
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #28, !noalias !1613
  invoke void @_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %39, i64 noundef %.074.i.lcssa, ptr noundef nonnull align 4 dereferenceable(4) %i.o, ptr noundef nonnull align 1 dereferenceable(1) %40)
          to label %bb.bku unwind label %bb.bkz, !inline_history !1321

bb.bku:                                           ; preds = %bb.bkt
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28, !noalias !1613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #28, !noalias !1613
  %.not.i1212 = icmp eq i64 %i.hpr, 0             ; 2 uses
  br i1 %.not.i1212, label %bb.blk, label %bb.bkv

bb.bkv:                                           ; preds = %bb.bku
  %i.hrp = getelementptr inbounds nuw i8, ptr %.tr1800, i64 56
  %i.hrq = load ptr, ptr %i.hrp, align 8, !tbaa !1626
  %i.hrr = getelementptr inbounds nuw i8, ptr %.tr1800, i64 32
  %i.hrs = load ptr, ptr %i.hrr, align 8, !tbaa !1627
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #28, !noalias !1613
  %i.hrt = shl i64 %i.hpt, 2
  %i.hru = load ptr, ptr %i.hpy, align 8, !tbaa !187, !noalias !1613, !nonnull !188, !align !189
  %i.hrv = getelementptr inbounds nuw i8, ptr %i.hru, i64 16
  %i.hrw = load ptr, ptr %i.hrv, align 8, !tbaa !246
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.82") align 8 %41, i64 noundef %i.hrt, ptr noundef %i.hrw)
          to label %bb.bkw unwind label %bb.bla, !inline_history !1321

bb.bkw:                                           ; preds = %bb.bkv
  %i.hrx = load ptr, ptr %41, align 8, !tbaa !70
  %i.hry = icmp eq ptr %i.hrx, null
  br i1 %i.hry, label %bb.blc, label %bb.bkx, !prof !209

bb.bkx:                                           ; preds = %bb.bkw
  store ptr null, ptr %0, align 8, !tbaa !70
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %41)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.thread unwind label %bb.blb

_ZN5arrow6StatusC2ERKS0_.exit.thread:             ; preds = %bb.bkx
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %41) #28, !inline_history !1321
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28, !noalias !1613
  br label %bb.bms

bb.bky:                                           ; preds = %._crit_edge
  %i.hrz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28, !noalias !1613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #28, !noalias !1613
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.bkz:                                           ; preds = %bb.bkt
  %i.hsa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28, !noalias !1613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #28, !noalias !1613
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit1687

bb.bla:                                           ; preds = %bb.blk, %bb.bkv
  %i.hsb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bmv

bb.blb:                                           ; preds = %bb.bkx
  %i.hsc = landingpad { ptr, i32 }
          cleanup
  br label %bb.blj

bb.blc:                                           ; preds = %bb.bkw
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #28, !noalias !1613
  call void @llvm.experimental.noalias.scope.decl(metadata !1628)
  call void @llvm.experimental.noalias.scope.decl(metadata !1629)
  %i.hsd = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.hse = load i64, ptr %i.hsd, align 8, !tbaa !243, !noalias !1630 ; 2 uses
  store i64 %i.hse, ptr %42, align 8, !tbaa !243, !alias.scope !1630
  store ptr null, ptr %i.hsd, align 8, !tbaa !243, !noalias !1630
  %.cast = inttoptr i64 %i.hse to ptr
  %i.hsf = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.hsg = load ptr, ptr %i.hsf, align 8
  %i.hsh = icmp sgt i64 %i.hpt, 0
  br i1 %i.hsh, label %.lr.ph1973, label %._crit_edge1974

.lr.ph1973:                                       ; preds = %bb.blc
  %i.hsi = load ptr, ptr %37, align 8, !tbaa !271
  %i.hsj = load ptr, ptr %39, align 8, !tbaa !271
  br label %bb.ble

._crit_edge1974:                                  ; preds = %bb.blh, %bb.blc
  %i.hsk = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIN5arrow6BufferEEaSIS1_St14default_deleteIS1_EEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EESt10unique_ptrIT_T0_EEE5valueERS2_E4typeEOSF_(ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %bb.bli unwind label %bb.bld, !inline_history !1321 ; 0 uses

bb.bld:                                           ; preds = %._crit_edge1974
  %i.hsl = landingpad { ptr, i32 }
          cleanup
  %i.hsm = load ptr, ptr %42, align 8, !tbaa !243 ; 3 uses
  %.not.i1713 = icmp eq ptr %i.hsm, null
  br i1 %.not.i1713, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit1715, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i1714

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i1714: ; preds = %bb.bld
  %i.hsn = load ptr, ptr %i.hsm, align 8, !tbaa !85
  %i.hso = getelementptr inbounds nuw i8, ptr %i.hsn, i64 8
  %i.hsp = load ptr, ptr %i.hso, align 8
  call void %i.hsp(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.hsm) #28, !inline_history !1329
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit1715

bb.ble:                                           ; preds = %.lr.ph1973, %bb.blh
  %.073.i1971 = phi i64 [ 0, %.lr.ph1973 ], [ %i.htd, %bb.blh ] ; 4 uses
  %i.hsq = getelementptr inbounds nuw i8, ptr %i.hrs, i64 %.073.i1971
  %i.hsr = load i8, ptr %i.hsq, align 1, !tbaa !136
  %i.hss = zext i8 %i.hsr to i64                  ; 2 uses
  %i.hst = getelementptr inbounds nuw [4 x i8], ptr %i.hsi, i64 %i.hss ; 2 uses
  %i.hsu = load i32, ptr %i.hst, align 4, !tbaa !43 ; 2 uses
  %i.hsv = icmp eq i32 %i.hsu, -1
  %i.hsw = getelementptr inbounds nuw [4 x i8], ptr %i.hrq, i64 %.073.i1971
  %i.hsx = load i32, ptr %i.hsw, align 4, !tbaa !43 ; 2 uses
  br i1 %i.hsv, label %bb.blf, label %bb.blg

bb.blf:                                           ; preds = %bb.ble
  store i32 %i.hsx, ptr %i.hst, align 4, !tbaa !43
  br label %bb.blh

bb.blg:                                           ; preds = %bb.ble
  %i.hsy = sub nsw i32 %i.hsx, %i.hsu
  br label %bb.blh

bb.blh:                                           ; preds = %bb.blg, %bb.blf
  %.sink = phi i32 [ 0, %bb.blf ], [ %i.hsy, %bb.blg ] ; 2 uses
  %i.hsz = getelementptr inbounds nuw [4 x i8], ptr %i.hsg, i64 %.073.i1971
  store i32 %.sink, ptr %i.hsz, align 4, !tbaa !43
  %i.hta = getelementptr inbounds nuw [4 x i8], ptr %i.hsj, i64 %i.hss ; 2 uses
  %i.htb = add nsw i32 %.sink, 1
  %i.htc = load i32, ptr %i.hta, align 4, !tbaa !43
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.htc, i32 %i.htb)
  store i32 %.sroa.speculated, ptr %i.hta, align 4, !tbaa !43
  %i.htd = add nuw nsw i64 %.073.i1971, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.htd, %i.hpt
  br i1 %exitcond.not, label %._crit_edge1974, label %bb.ble, !llvm.loop !1330

bb.bli:                                           ; preds = %._crit_edge1974
  %i.hte = load ptr, ptr %42, align 8, !tbaa !243 ; 3 uses
  %.not.i1712 = icmp eq ptr %i.hte, null
  br i1 %.not.i1712, label %_ZN5arrow6StatusC2ERKS0_.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.bli
  %i.htf = load ptr, ptr %i.hte, align 8, !tbaa !85
  %i.htg = getelementptr inbounds nuw i8, ptr %i.htf, i64 8
  %i.hth = load ptr, ptr %i.htg, align 8
  call void %i.hth(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.hte) #28, !inline_history !1329
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i, %bb.bli
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28, !noalias !1613
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %41) #28, !inline_history !1321
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28, !noalias !1613
end_hunk_0
