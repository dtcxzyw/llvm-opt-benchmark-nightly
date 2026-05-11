inline.NumInlined: 3475
inline.NumDeleted: 1689
begin_hunk_0_@_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE:bb.a
  store ptr %2, ptr %i.l, align 8, !tbaa !332
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.m, i8 0, i64 25, i1 false)
  store ptr %3, ptr %i.o, align 8, !tbaa !333
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE:bb.a

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.f
  %i.y = phi ptr [ %i.bi, %._crit_edge.i.loopexit ], [ null, %bb.f ] ; 4 uses
  %i.z = phi ptr [ %i.bh, %._crit_edge.i.loopexit ], [ null, %bb.f ] ; 8 uses
  %i.aa = phi i1 [ %i.x, %._crit_edge.i.loopexit ], [ false, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !318
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE:bb.a
  br label %common.resume

common.resume:                                    ; preds = %bb.p, %bb.q, %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorD2Ev.exit27
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body98, %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorD2Ev.exit27 ], [ %lpad.phi.i, %bb.q ], [ %lpad.phi.i, %bb.p ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %._crit_edge.i
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE:bb.a

bb.s:                                             ; preds = %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorC2EPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.ce = load ptr, ptr %i.o, align 8, !tbaa !333, !noalias !351 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !211, !noalias !351 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
end_hunk_3
begin_hunk_4_@_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE:bb.a
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %.invoke, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ck = icmp eq ptr %i.z, %i.y
  br i1 %i.ck, label %_ZN5arrow6StatusD2Ev.exit.i.i, label %.lr.ph.i.i
end_hunk_4
begin_hunk_5_@_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE:bb.a

bb.x:                                             ; preds = %bb.v
  %i.da = atomicrmw volatile add ptr %i.cw, i32 1 acq_rel, align 4, !noalias !353 ; 0 uses
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i.i

_ZNK5arrow9ArraySpan9GetBufferEi.exit.i.i:        ; preds = %bb.x, %bb.w, %.critedge.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !318, !noalias !351 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !70, !noalias !351 ; 8 uses
end_hunk_5
begin_hunk_6_@_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE:bb.a
_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %bb.ae, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27, !noalias !351
  invoke fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator15EnsureAllocatedEv(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(65) %8)
          to label %.noexc12 unwind label %.body

.noexc12:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %i.dw = load ptr, ptr %7, align 8, !tbaa !121, !noalias !351 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE:bb.a
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !211, !noalias !351
  br label %.invoke

.invoke:                                          ; preds = %bb.s, %bb.af
  %9 = phi ptr [ %i.dz, %bb.af ], [ %i.cd, %bb.s ]
  %.pn = phi ptr [ %i.ea, %bb.af ], [ %i.ce, %bb.s ]
  %10 = phi i64 [ %i.ec, %bb.af ], [ %i.cg, %bb.s ]
  %.in111 = getelementptr inbounds nuw i8, ptr %.pn, i64 32
  %11 = load i64, ptr %.in111, align 8, !tbaa !272, !noalias !351
  invoke void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %9, i64 noundef %11, i64 noundef %10, i1 noundef zeroext false)
          to label %.sink.split.i.i unwind label %.body

.sink.split.i.i:                                  ; preds = %.invoke, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.z, %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i.i
  store ptr null, ptr %0, align 8, !tbaa !121, !alias.scope !351
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator7ExecuteEv.exit

bb.ag:                                            ; preds = %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorC2EPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE.exit
  %i.ed = load ptr, ptr %i.o, align 8, !tbaa !333, !noalias !345 ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24 ; 3 uses
  store atomic i64 -1, ptr %i.ee seq_cst, align 8, !noalias !345
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 24
end_hunk_7
begin_hunk_8_@_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE:bb.a
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.em = load i64, ptr %i.el, align 8, !tbaa !211, !noalias !345
  invoke void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %i.cd, i64 noundef %i.ek, i64 noundef %i.em, i1 noundef zeroext true)
          to label %.noexc14 unwind label %.body

.noexc14:                                         ; preds = %bb.ai, %bb.ah
  store ptr null, ptr %0, align 8, !tbaa !121, !alias.scope !357
end_hunk_8
begin_hunk_9_@_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE:bb.a
bb.al:                                            ; preds = %bb.ak
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !272, !noalias !363
  br label %_ZN5arrow6StatusD2Ev.exit51.i.i.invoke

bb.am:                                            ; preds = %bb.ak
  %i.fa = icmp eq i64 %i.ex, 0
end_hunk_9
begin_hunk_10_@_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE:bb.a

bb.ar:                                            ; preds = %bb.ap
  %i.fk = atomicrmw volatile add ptr %i.fg, i32 1 acq_rel, align 4, !noalias !364 ; 0 uses
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i5.i

bb.as:                                            ; preds = %bb.an
end_hunk_10
begin_hunk_11_@_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE:bb.a

bb.at:                                            ; preds = %bb.as
  %i.fm = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29
          to label %.noexc16 unwind label %.body  ; 6 uses

.noexc16:                                         ; preds = %bb.at
  %i.fn = getelementptr inbounds nuw i8, ptr %i.er, i64 40
end_hunk_11
begin_hunk_12_@_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE:bb.a
  %i.fs = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef 96) #31, !noalias !367
  br label %.body.thread

_ZNK5arrow9ArraySpan9GetBufferEi.exit.i5.i:       ; preds = %.noexc16, %bb.as, %bb.ar, %bb.aq, %bb.ao
  %.sroa.053.0.i.i = phi ptr [ %i.fq, %.noexc16 ], [ %i.fd, %bb.aq ], [ %i.fd, %bb.ao ], [ %i.fd, %bb.ar ], [ null, %bb.as ]
  %.sroa.8.0.i.i = phi ptr [ %i.fm, %.noexc16 ], [ %i.ff, %bb.aq ], [ null, %bb.ao ], [ %i.ff, %bb.ar ], [ null, %bb.as ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !318, !noalias !363 ; 2 uses
  store ptr %.sroa.053.0.i.i, ptr %i.fu, align 8, !tbaa !370, !noalias !363
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE:bb.a
bb.bh:                                            ; preds = %bb.bg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %i.gz = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29
          to label %.noexc17 unwind label %.body  ; 6 uses

.noexc17:                                         ; preds = %bb.bh
  %i.ha = getelementptr inbounds nuw i8, ptr %i.er, i64 40
end_hunk_13
begin_hunk_14_@_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE:bb.a
  %i.hf = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gz, i64 noundef 96) #31, !noalias !379
  br label %.body.thread

_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_.exit.i30.i.i: ; preds = %.noexc17
  %i.hg = getelementptr inbounds nuw i8, ptr %5, i64 8
end_hunk_14
begin_hunk_15_@_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE:bb.a
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !363
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !318, !noalias !363 ; 2 uses
  store ptr %i.hs, ptr %i.hu, align 8, !tbaa !370, !noalias !363
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 2 uses
end_hunk_15
begin_hunk_16_@_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE:bb.a
.body.i.i:                                        ; preds = %bb.bw, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.jd, %bb.bw ], [ %i.hr, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #27, !noalias !363
  br label %.body.thread

_ZN5arrow6StatusD2Ev.exit.i1.i:                   ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27, !noalias !363
  invoke fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator15EnsureAllocatedEv(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(65) %8)
          to label %.noexc18 unwind label %.body

.noexc18:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit.i1.i
  %i.je = load ptr, ptr %6, align 8, !tbaa !121, !noalias !363 ; 2 uses
end_hunk_16
begin_hunk_17_@_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE:bb.a
  %i.jg = load i64, ptr %i.ew, align 8, !tbaa !292, !noalias !363
  %i.jh = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !344, !noalias !363
  br label %_ZN5arrow6StatusD2Ev.exit51.i.i.invoke

_ZN5arrow6StatusD2Ev.exit51.i.i.invoke:           ; preds = %bb.al, %_ZN5arrow6StatusD2Ev.exit51.i.i
  %12 = phi i64 [ %i.jg, %_ZN5arrow6StatusD2Ev.exit51.i.i ], [ %i.ex, %bb.al ]
  %13 = phi ptr [ %i.ji, %_ZN5arrow6StatusD2Ev.exit51.i.i ], [ %i.cd, %bb.al ]
  %14 = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit51.i.i ], [ %i.ez, %bb.al ]
  %.in = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %15 = load i64, ptr %.in, align 8, !tbaa !293, !noalias !363
  invoke void @_ZN5arrow8internal10CopyBitmapEPKhllPhl(ptr noundef %i.et, i64 noundef %12, i64 noundef %15, ptr noundef %13, i64 noundef %14)
          to label %.critedge.sink.split.i.i unwind label %.body

.critedge.sink.split.i.i:                         ; preds = %_ZN5arrow6StatusD2Ev.exit51.i.i.invoke, %bb.bv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i, %bb.br, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41.i.i, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i6.i, %bb.av, %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i5.i
  store ptr null, ptr %0, align 8, !tbaa !121, !alias.scope !363
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator15PropagateSingleEv.exit.i

end_hunk_17
begin_hunk_18_@_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !391
  invoke fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator15EnsureAllocatedEv(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(65) %8)
          to label %.noexc20 unwind label %.body

.noexc20:                                         ; preds = %bb.bx
  %i.jj = load ptr, ptr %4, align 8, !tbaa !121, !noalias !391 ; 2 uses
end_hunk_18
begin_hunk_19_@_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE:bb.a
  br i1 %i.jk, label %bb.by, label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator7ExecuteEv.exit

bb.by:                                            ; preds = %.noexc20
  %i.jl = load ptr, ptr %i.m, align 8, !tbaa !392, !noalias !391 ; 5 uses
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !336, !noalias !391 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !312, !noalias !391
end_hunk_19
begin_hunk_20_@_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE:bb.a
  %i.jz = getelementptr i8, ptr %.val10.val.i.i, i64 32 ; 2 uses
  %.val10.val.val14.i.i = load i64, ptr %i.jz, align 8, !tbaa !272, !noalias !391
  invoke void @_ZN5arrow8internal9BitmapAndEPKhlS2_lllPh(ptr noundef %i.jo, i64 noundef %i.jq, ptr noundef %i.ju, i64 noundef %i.jw, i64 noundef %.val10.val.val.i.i, i64 noundef %.val10.val.val14.i.i, ptr noundef %.val10.val11.i.i)
          to label %.noexc21 unwind label %.body

.noexc21:                                         ; preds = %bb.by
  %i.ka = load ptr, ptr %i.ef, align 8, !tbaa !393, !noalias !391
end_hunk_20
begin_hunk_21_@_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE:bb.a
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !292, !noalias !391
  %.val.val.val.i.i = load i64, ptr %i.jy, align 8, !tbaa !211, !noalias !391
  invoke void @_ZN5arrow8internal9BitmapAndEPKhlS2_lllPh(ptr noundef %.val10.val11.i.i, i64 noundef %i.kg, ptr noundef %i.kk, i64 noundef %i.km, i64 noundef %.val.val.val.i.i, i64 noundef %i.kg, ptr noundef %.val10.val11.i.i)
          to label %.noexc22 unwind label %.loopexit.a

.noexc22:                                         ; preds = %.lr.ph.i9.i
  %i.kn = add nuw i64 %.019.i.i, 1                ; 2 uses
end_hunk_21
begin_hunk_22_@_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.ca

.loopexit.a:                                      ; preds = %.lr.ph.i9.i
  %lpad.loopexit.a = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body:                                            ; preds = %.invoke, %_ZN5arrow6StatusD2Ev.exit51.i.i.invoke, %bb.by, %bb.bx, %_ZN5arrow6StatusD2Ev.exit.i1.i, %bb.bh, %bb.at, %bb.ai, %_ZN5arrow6StatusD2Ev.exit.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.pre = load ptr, ptr %i.m, align 8, !tbaa !392 ; 2 uses
  %.not.i.i.i.i25 = icmp eq ptr %.val.pre, null
  br i1 %.not.i.i.i.i25, label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorD2Ev.exit27, label %.body.thread

.body.thread:                                     ; preds = %.loopexit.a, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i29.i.i, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i, %.body.i.i, %.body
  %eh.lpad-body97 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.body ], [ %lpad.loopexit.a, %.loopexit.a ], [ %i.hf, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i29.i.i ], [ %i.fs, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i ], [ %eh.lpad-body.i.i, %.body.i.i ]
  %.val96 = phi ptr [ %.val.pre, %.body ], [ %i.jl, %.loopexit.a ], [ %i.z, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i29.i.i ], [ %i.z, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i ], [ %i.z, %.body.i.i ] ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.val7 = load ptr, ptr %i.ks, align 8
  %i.kt = ptrtoint ptr %.val7 to i64
  %i.ku = ptrtoint ptr %.val96 to i64
  %i.kv = sub i64 %i.kt, %i.ku
  call void @_ZdlPvm(ptr noundef nonnull %.val96, i64 noundef %i.kv) #31
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorD2Ev.exit27

_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorD2Ev.exit27: ; preds = %.body, %.body.thread
  %eh.lpad-body98 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.body ], [ %eh.lpad-body97, %.body.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %common.resume

end_hunk_22
