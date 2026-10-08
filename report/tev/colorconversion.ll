Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/colorconversion?download=true
inline.NumInlined: 3871
inline.NumDeleted: 2231
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN23ColorConversionPipeline18construct_pipelineERK10ColorStateS2_RK29heif_color_conversion_optionsRK33heif_color_conversion_options_ext:bb.a
  store ptr %i.on, ptr %i.od, align 8, !tbaa !651
  %i.op = getelementptr inbounds nuw i8, ptr %i.np, i64 16
  store ptr null, ptr %i.op, align 8, !tbaa !171
  br label %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEE22__construct_one_at_endB8ne180100IJiRKNS_10shared_ptrI24ColorConversionOperationEER10ColorStateRiEEEvDpOT_.exit.i

_ZNSt3__110shared_ptrI24ColorConversionOperationEC2B8ne180100ERKS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.bt
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.or = atomicrmw add ptr %i.oq, i64 1 monotonic, align 8 ; 0 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.np, i64 16 ; 2 uses
  %.pre.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !171 ; 5 uses
  store ptr %i.on, ptr %i.od, align 8, !tbaa !651
  store ptr %i.oo, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !171
  %.not.i2.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i.i, null
  br i1 %.not.i2.i.i.i.i.i.i.i, label %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEE22__construct_one_at_endB8ne180100IJiRKNS_10shared_ptrI24ColorConversionOperationEER10ColorStateRiEEEvDpOT_.exit.i, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt3__110shared_ptrI24ColorConversionOperationEC2B8ne180100ERKS2_.exit.i.i.i.i.i.i.i
  %i.os = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i, i64 8
  %i.ot = atomicrmw add ptr %i.os, i64 -1 acq_rel, align 8
  %i.ou = icmp eq i64 %i.ot, 0
  br i1 %i.ou, label %bb.bv, label %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEE22__construct_one_at_endB8ne180100IJiRKNS_10shared_ptrI24ColorConversionOperationEER10ColorStateRiEEEvDpOT_.exit.i

bb.bv:                                            ; preds = %bb.bu
  %i.ov = load ptr, ptr %.pre.i.i.i.i.i.i, align 8, !tbaa !44
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  %i.ox = load ptr, ptr %i.ow, align 8
  call void %i.ox(ptr noundef nonnull align 8 dereferenceable(24) %.pre.i.i.i.i.i.i) #22, !inline_history !627
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %.pre.i.i.i.i.i.i) #22
  br label %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEE22__construct_one_at_endB8ne180100IJiRKNS_10shared_ptrI24ColorConversionOperationEER10ColorStateRiEEEvDpOT_.exit.i

_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEE22__construct_one_at_endB8ne180100IJiRKNS_10shared_ptrI24ColorConversionOperationEER10ColorStateRiEEEvDpOT_.exit.i: ; preds = %bb.bv, %bb.bu, %_ZNSt3__110shared_ptrI24ColorConversionOperationEC2B8ne180100ERKS2_.exit.i.i.i.i.i.i.i, %_ZNSt3__110shared_ptrI24ColorConversionOperationEC2B8ne180100ERKS2_.exit.i.thread.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.oe, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.0, i64 28, i1 false), !tbaa.struct !175
  %i.oy = getelementptr inbounds nuw i8, ptr %i.np, i64 52
  store i32 %i.nt, ptr %i.oy, align 4, !tbaa !167
  %i.oz = getelementptr inbounds nuw i8, ptr %i.np, i64 56
  br label %bb.cc

bb.bw:                                            ; preds = %._crit_edge308
  %i.pa = load ptr, ptr %6, align 8, !tbaa !163
  %i.pb = ptrtoint ptr %i.np to i64
  %i.pc = ptrtoint ptr %i.pa to i64               ; 2 uses
  %i.pd = sub i64 %i.pb, %i.pc                    ; 2 uses
  %i.pe = sdiv exact i64 %i.pd, 56
  %i.pf = add nsw i64 %i.pe, 1                    ; 2 uses
  %i.pg = icmp ugt i64 %i.pf, 329406144173384850
  br i1 %i.pg, label %bb.bx, label %_ZNKSt3__16vectorI4NodeNS_9allocatorIS1_EEE11__recommendB8ne180100Em.exit.i

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZNKSt3__16vectorI4NodeNS_9allocatorIS1_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #25
          to label %.noexc188 unwind label %.loopexit.split-lp

.noexc188:                                        ; preds = %bb.bx
  unreachable

_ZNKSt3__16vectorI4NodeNS_9allocatorIS1_EEE11__recommendB8ne180100Em.exit.i: ; preds = %bb.bw
  %i.ph = ptrtoint ptr %i.ob to i64
  %i.pi = sub i64 %i.ph, %i.pc
  %i.pj = sdiv exact i64 %i.pi, 56                ; 2 uses
  %.not.i.i183 = icmp ult i64 %i.pj, 164703072086692425
  %i.pk = shl nuw nsw i64 %i.pj, 1
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.pk, i64 %i.pf)
  %.0.i.i = select i1 %.not.i.i183, i64 %.sroa.speculated.i.i, i64 329406144173384850 ; 4 uses
  %i.pl = icmp ne i64 %.0.i.i, 0
  call void @llvm.assume(i1 %i.pl)
  %i.pm = icmp ugt i64 %.0.i.i, 329406144173384850
  br i1 %i.pm, label %bb.by, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorI4NodeEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m.exit.i.i

bb.by:                                            ; preds = %_ZNKSt3__16vectorI4NodeNS_9allocatorIS1_EEE11__recommendB8ne180100Em.exit.i
  invoke void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #25
          to label %.noexc189 unwind label %.loopexit.split-lp

.noexc189:                                        ; preds = %bb.by
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorI4NodeEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m.exit.i.i: ; preds = %_ZNKSt3__16vectorI4NodeNS_9allocatorIS1_EEE11__recommendB8ne180100Em.exit.i
  %i.pn = mul nuw i64 %.0.i.i, 56
  %i.po = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pn) #24
          to label %.noexc190 unwind label %.loopexit ; 2 uses

.noexc190:                                        ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorI4NodeEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m.exit.i.i
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.pd ; 8 uses
  %i.pq = getelementptr inbounds nuw [56 x i8], ptr %i.po, i64 %.0.i.i
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pp, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pr, i8 0, i64 16, i1 false)
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 24
  store i32 %i.oa, ptr %i.pp, align 8, !tbaa !169
  %i.pt = load ptr, ptr %.sroa.0232.0315, align 8, !tbaa !49
  %i.pu = load ptr, ptr %i.jk, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i.i.i.i.i184 = icmp eq ptr %i.pu, null
  br i1 %.not.i.i.i.i.i.i.i184, label %_ZNSt3__110shared_ptrI24ColorConversionOperationEC2B8ne180100ERKS2_.exit.i.thread.i.i.i.i.i, label %_ZNSt3__110shared_ptrI24ColorConversionOperationEC2B8ne180100ERKS2_.exit.i.i.i.i.i.i

_ZNSt3__110shared_ptrI24ColorConversionOperationEC2B8ne180100ERKS2_.exit.i.i.i.i.i.i: ; preds = %.noexc190
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  %i.pw = atomicrmw add ptr %i.pv, i64 1 monotonic, align 8 ; 0 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  store ptr %i.pu, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !171
  br label %_ZNSt3__110shared_ptrI24ColorConversionOperationEC2B8ne180100ERKS2_.exit.i.thread.i.i.i.i.i

_ZNSt3__110shared_ptrI24ColorConversionOperationEC2B8ne180100ERKS2_.exit.i.thread.i.i.i.i.i: ; preds = %.noexc190, %_ZNSt3__110shared_ptrI24ColorConversionOperationEC2B8ne180100ERKS2_.exit.i.i.i.i.i.i
  store ptr %i.pt, ptr %i.pr, align 8, !tbaa !651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ps, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.0, i64 28, i1 false), !tbaa.struct !175
  %i.px = getelementptr inbounds nuw i8, ptr %i.pp, i64 52
  store i32 %i.nt, ptr %i.px, align 4, !tbaa !167
  %i.py = getelementptr inbounds nuw i8, ptr %i.pp, i64 56 ; 3 uses
  %i.pz = load ptr, ptr %i.at, align 8, !tbaa !164 ; 3 uses
  %i.qa = load ptr, ptr %6, align 8, !tbaa !163   ; 3 uses
  %.not12.i.i.i = icmp eq ptr %i.pz, %i.qa
  br i1 %.not12.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i185

.lr.ph.i.i.i185:                                  ; preds = %_ZNSt3__110shared_ptrI24ColorConversionOperationEC2B8ne180100ERKS2_.exit.i.thread.i.i.i.i.i, %.lr.ph.i.i.i185
  %i.qb = phi ptr [ %i.qc, %.lr.ph.i.i.i185 ], [ %i.pp, %_ZNSt3__110shared_ptrI24ColorConversionOperationEC2B8ne180100ERKS2_.exit.i.thread.i.i.i.i.i ] ; 3 uses
  %.sroa.18.013.i.i.i = phi ptr [ %i.qd, %.lr.ph.i.i.i185 ], [ %i.pz, %_ZNSt3__110shared_ptrI24ColorConversionOperationEC2B8ne180100ERKS2_.exit.i.thread.i.i.i.i.i ] ; 3 uses
  %i.qc = getelementptr inbounds i8, ptr %i.qb, i64 -56 ; 3 uses
  %i.qd = getelementptr inbounds i8, ptr %.sroa.18.013.i.i.i, i64 -56 ; 3 uses
  %i.qe = load i32, ptr %i.qd, align 8, !tbaa !169
  store i32 %i.qe, ptr %i.qc, align 8, !tbaa !169
  %i.qf = getelementptr inbounds i8, ptr %i.qb, i64 -48
  %i.qg = getelementptr inbounds i8, ptr %.sroa.18.013.i.i.i, i64 -48 ; 2 uses
  %i.qh = load <2 x ptr>, ptr %i.qg, align 8, !tbaa !170
  store <2 x ptr> %i.qh, ptr %i.qf, align 8, !tbaa !170
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qg, i8 0, i64 16, i1 false)
  %i.qi = getelementptr inbounds i8, ptr %i.qb, i64 -32
  %i.qj = getelementptr inbounds i8, ptr %.sroa.18.013.i.i.i, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.qi, ptr noundef nonnull align 8 dereferenceable(32) %i.qj, i64 32, i1 false)
  %.not.i.i.i186 = icmp eq ptr %i.qd, %i.qa
  br i1 %.not.i.i.i186, label %.loopexit.loopexit.i, label %.lr.ph.i.i.i185, !llvm.loop !1

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i.i.i185
  %.pre.i187 = load ptr, ptr %6, align 8, !tbaa !168
  %.pre13.i = load ptr, ptr %i.at, align 8, !tbaa !168
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %_ZNSt3__110shared_ptrI24ColorConversionOperationEC2B8ne180100ERKS2_.exit.i.thread.i.i.i.i.i
  %i.qk = phi ptr [ %i.pz, %_ZNSt3__110shared_ptrI24ColorConversionOperationEC2B8ne180100ERKS2_.exit.i.thread.i.i.i.i.i ], [ %.pre13.i, %.loopexit.loopexit.i ] ; 2 uses
  %i.ql = phi ptr [ %i.qa, %_ZNSt3__110shared_ptrI24ColorConversionOperationEC2B8ne180100ERKS2_.exit.i.thread.i.i.i.i.i ], [ %.pre.i187, %.loopexit.loopexit.i ] ; 5 uses
  %.sroa.2.0.copyload.i.i.i = phi ptr [ %i.pp, %_ZNSt3__110shared_ptrI24ColorConversionOperationEC2B8ne180100ERKS2_.exit.i.thread.i.i.i.i.i ], [ %i.qc, %.loopexit.loopexit.i ]
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %6, align 8, !tbaa !168
  store ptr %i.py, ptr %i.at, align 8, !tbaa !168
  %i.qm = load ptr, ptr %i.au, align 8, !tbaa !168
  store ptr %i.pq, ptr %i.au, align 8, !tbaa !168
  %.not2.i.i.i.i.i = icmp eq ptr %i.ql, %i.qk
  br i1 %.not2.i.i.i.i.i, label %_ZNSt3__114__split_bufferI4NodeRNS_9allocatorIS1_EEE5clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.loopexit.i, %_ZNSt3__116allocator_traitsINS_9allocatorI4NodeEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i.i
  %i.qn = phi ptr [ %i.qo, %_ZNSt3__116allocator_traitsINS_9allocatorI4NodeEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i.i ], [ %i.qk, %.loopexit.i ] ; 2 uses
  %i.qo = getelementptr inbounds i8, ptr %i.qn, i64 -56 ; 2 uses
  %i.qp = getelementptr inbounds i8, ptr %i.qn, i64 -40
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !42 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.qq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorI4NodeEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.qs = atomicrmw add ptr %i.qr, i64 -1 acq_rel, align 8
  %i.qt = icmp eq i64 %i.qs, 0
  br i1 %i.qt, label %bb.ca, label %_ZNSt3__116allocator_traitsINS_9allocatorI4NodeEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.qu = load ptr, ptr %i.qq, align 8, !tbaa !44
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  %i.qw = load ptr, ptr %i.qv, align 8
  call void %i.qw(ptr noundef nonnull align 8 dereferenceable(24) %i.qq) #22, !inline_history !628
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.qq) #22
  br label %_ZNSt3__116allocator_traitsINS_9allocatorI4NodeEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorI4NodeEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i.i: ; preds = %bb.ca, %bb.bz, %.lr.ph.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq ptr %i.ql, %i.qo
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__114__split_bufferI4NodeRNS_9allocatorIS1_EEE5clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i.i

_ZNSt3__114__split_bufferI4NodeRNS_9allocatorIS1_EEE5clearB8ne180100Ev.exit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorI4NodeEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i.i, %.loopexit.i
  %.not.i8.i = icmp eq ptr %i.ql, null
  br i1 %.not.i8.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt3__114__split_bufferI4NodeRNS_9allocatorIS1_EEE5clearB8ne180100Ev.exit.i.i
  %i.qx = ptrtoint ptr %i.qm to i64
  %i.qy = ptrtoint ptr %i.ql to i64
  %i.qz = sub i64 %i.qx, %i.qy
  call void @_ZdlPvm(ptr noundef nonnull %i.ql, i64 noundef %i.qz) #23
  br label %bb.cc

bb.cc:                                            ; preds = %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEE22__construct_one_at_endB8ne180100IJiRKNS_10shared_ptrI24ColorConversionOperationEER10ColorStateRiEEEvDpOT_.exit.i, %bb.cb, %_ZNSt3__114__split_bufferI4NodeRNS_9allocatorIS1_EEE5clearB8ne180100Ev.exit.i.i
  %.0.i144 = phi ptr [ %i.oz, %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEE22__construct_one_at_endB8ne180100IJiRKNS_10shared_ptrI24ColorConversionOperationEER10ColorStateRiEEEvDpOT_.exit.i ], [ %i.py, %bb.cb ], [ %i.py, %_ZNSt3__114__split_bufferI4NodeRNS_9allocatorIS1_EEE5clearB8ne180100Ev.exit.i.i ]
  store ptr %.0.i144, ptr %i.at, align 8, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %.thread251

.loopexit:                                        ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorI4NodeEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

.loopexit.split-lp:                               ; preds = %bb.bx, %bb.by
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cd:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.ce

.thread251:                                       ; preds = %.noexc130, %bb.bd, %_ZN4NodeD2Ev.exit, %_ZNK10ColorStateeqERKS_.exit138, %bb.cc
  %i.ra = getelementptr inbounds nuw i8, ptr %.sroa.0228.0310, i64 32 ; 2 uses
  %.not256 = icmp eq ptr %i.ra, %i.jj
  br i1 %.not256, label %._crit_edge313.loopexit, label %bb.aw

bb.ce:                                            ; preds = %bb.cd, %bb.br, %bb.bf
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.cd ], [ %i.nn, %bb.br ], [ %i.lc, %bb.bf ] ; 2 uses
  %i.rb = load ptr, ptr %7, align 8, !tbaa !644   ; 4 uses
  %.not.i.i146 = icmp eq ptr %i.rb, null
  br i1 %.not.i.i146, label %_ZNSt3__16vectorI18ColorStateWithCostNS_9allocatorIS1_EEED2B8ne180100Ev.exit147, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  store ptr %i.rb, ptr %i.bd, align 8, !tbaa !645
  %i.rc = load ptr, ptr %i.be, align 8, !tbaa !646
  %i.rd = ptrtoint ptr %i.rc to i64
  %i.re = ptrtoint ptr %i.rb to i64
  %i.rf = sub i64 %i.rd, %i.re
  call void @_ZdlPvm(ptr noundef nonnull %i.rb, i64 noundef %i.rf) #23
  br label %_ZNSt3__16vectorI18ColorStateWithCostNS_9allocatorIS1_EEED2B8ne180100Ev.exit147

_ZNSt3__16vectorI18ColorStateWithCostNS_9allocatorIS1_EEED2B8ne180100Ev.exit147: ; preds = %bb.cf, %bb.ce, %bb.av
  %.pn.pn = phi { ptr, i32 } [ %i.jr, %bb.av ], [ %.pn, %bb.ce ], [ %.pn, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.cm

.loopexit260:                                     ; preds = %.loopexit259.a, %bb.l, %.thread253
  %i.rg = phi i1 [ true, %.thread253 ], [ false, %bb.l ], [ false, %.loopexit259.a ]
  %i.rh = phi ptr [ %.pr, %.thread253 ], [ %.pre, %bb.l ], [ %i.bf, %.loopexit259.a ] ; 5 uses
  %.not.i.i148 = icmp eq ptr %i.rh, null
  br i1 %.not.i.i148, label %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEED2B8ne180100Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %.loopexit260
  %i.ri = load ptr, ptr %i.at, align 8, !tbaa !164 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.rh, %i.ri
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.cg, %_ZNSt3__116allocator_traitsINS_9allocatorI4NodeEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.rj, %_ZNSt3__116allocator_traitsINS_9allocatorI4NodeEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i ], [ %i.ri, %bb.cg ] ; 2 uses
  %i.rj = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -56 ; 2 uses
  %i.rk = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -40
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !42 ; 5 uses
  %.not.i.i.i.i.i.i.i.i149 = icmp eq ptr %i.rl, null
  br i1 %.not.i.i.i.i.i.i.i.i149, label %_ZNSt3__116allocator_traitsINS_9allocatorI4NodeEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph.i.i.i.i
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.rn = atomicrmw add ptr %i.rm, i64 -1 acq_rel, align 8
  %i.ro = icmp eq i64 %i.rn, 0
  br i1 %i.ro, label %bb.ci, label %_ZNSt3__116allocator_traitsINS_9allocatorI4NodeEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.rp = load ptr, ptr %i.rl, align 8, !tbaa !44
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  %i.rr = load ptr, ptr %i.rq, align 8
  call void %i.rr(ptr noundef nonnull align 8 dereferenceable(24) %i.rl) #22, !inline_history !629
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.rl) #22
  br label %_ZNSt3__116allocator_traitsINS_9allocatorI4NodeEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorI4NodeEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i: ; preds = %bb.ci, %bb.ch, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.rh, %i.rj
  br i1 %.not.i.i.i.i, label %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorI4NodeEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i
  %.pre1.i.i = load ptr, ptr %6, align 8, !tbaa !163
  br label %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, %bb.cg
  %i.rs = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.rh, %bb.cg ] ; 2 uses
  store ptr %i.rh, ptr %i.at, align 8, !tbaa !164
  %i.rt = load ptr, ptr %i.au, align 8, !tbaa !168
  %i.ru = ptrtoint ptr %i.rt to i64
  %i.rv = ptrtoint ptr %i.rs to i64
  %i.rw = sub i64 %i.ru, %i.rv
  call void @_ZdlPvm(ptr noundef %i.rs, i64 noundef %i.rw) #23
  br label %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEED2B8ne180100Ev.exit: ; preds = %.loopexit260, %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.rx = load ptr, ptr %5, align 8, !tbaa !163   ; 5 uses
  %.not.i.i150 = icmp eq ptr %i.rx, null
  br i1 %.not.i.i150, label %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEED2B8ne180100Ev.exit160, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEED2B8ne180100Ev.exit
  %i.ry = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !164 ; 2 uses
  %.not6.i.i.i.i151 = icmp eq ptr %i.rx, %i.rz
  br i1 %.not6.i.i.i.i151, label %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i159, label %.lr.ph.i.i.i.i152

.lr.ph.i.i.i.i152:                                ; preds = %bb.cj, %_ZNSt3__116allocator_traitsINS_9allocatorI4NodeEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i155
  %.07.i.i.i.i153 = phi ptr [ %i.sa, %_ZNSt3__116allocator_traitsINS_9allocatorI4NodeEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i155 ], [ %i.rz, %bb.cj ] ; 2 uses
  %i.sa = getelementptr inbounds i8, ptr %.07.i.i.i.i153, i64 -56 ; 2 uses
  %i.sb = getelementptr inbounds i8, ptr %.07.i.i.i.i153, i64 -40
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !42 ; 5 uses
  %.not.i.i.i.i.i.i.i.i154 = icmp eq ptr %i.sc, null
  br i1 %.not.i.i.i.i.i.i.i.i154, label %_ZNSt3__116allocator_traitsINS_9allocatorI4NodeEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i155, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph.i.i.i.i152
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  %i.se = atomicrmw add ptr %i.sd, i64 -1 acq_rel, align 8
  %i.sf = icmp eq i64 %i.se, 0
  br i1 %i.sf, label %bb.cl, label %_ZNSt3__116allocator_traitsINS_9allocatorI4NodeEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i155

bb.cl:                                            ; preds = %bb.ck
  %i.sg = load ptr, ptr %i.sc, align 8, !tbaa !44
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 16
  %i.si = load ptr, ptr %i.sh, align 8
  call void %i.si(ptr noundef nonnull align 8 dereferenceable(24) %i.sc) #22, !inline_history !629
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.sc) #22
  br label %_ZNSt3__116allocator_traitsINS_9allocatorI4NodeEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i155

_ZNSt3__116allocator_traitsINS_9allocatorI4NodeEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i155: ; preds = %bb.cl, %bb.ck, %.lr.ph.i.i.i.i152
  %.not.i.i.i.i156 = icmp eq ptr %i.rx, %i.sa
  br i1 %.not.i.i.i.i156, label %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i157, label %.lr.ph.i.i.i.i152

_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i157: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorI4NodeEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i155
  %.pre1.i.i158 = load ptr, ptr %5, align 8, !tbaa !163
  br label %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i159

_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i159: ; preds = %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i157, %bb.cj
  %i.sj = phi ptr [ %.pre1.i.i158, %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i157 ], [ %i.rx, %bb.cj ] ; 2 uses
  store ptr %i.rx, ptr %i.ry, align 8, !tbaa !164
  %i.sk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !168
  %i.sm = ptrtoint ptr %i.sl to i64
  %i.sn = ptrtoint ptr %i.sj to i64
  %i.so = sub i64 %i.sm, %i.sn
  call void @_ZdlPvm(ptr noundef %i.sj, i64 noundef %i.so) #23
  br label %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEED2B8ne180100Ev.exit160

_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEED2B8ne180100Ev.exit160: ; preds = %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEED2B8ne180100Ev.exit, %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZNK10ColorStateeqERKS_.exit

bb.cm:                                            ; preds = %bb.ad, %bb.aq, %_ZNSt3__16vectorI18ColorStateWithCostNS_9allocatorIS1_EEED2B8ne180100Ev.exit147, %bb.p
  %.pn97.pn = phi { ptr, i32 } [ %i.cm, %bb.p ], [ %i.ik, %bb.aq ], [ %.pn.pn, %_ZNSt3__16vectorI18ColorStateWithCostNS_9allocatorIS1_EEED2B8ne180100Ev.exit147 ], [ %i.fn, %bb.ad ]
  %i.sp = load ptr, ptr %6, align 8, !tbaa !163   ; 5 uses
  %.not.i.i161 = icmp eq ptr %i.sp, null
  br i1 %.not.i.i161, label %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEED2B8ne180100Ev.exit171, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.sq = load ptr, ptr %i.at, align 8, !tbaa !164 ; 2 uses
  %.not6.i.i.i.i162 = icmp eq ptr %i.sp, %i.sq
  br i1 %.not6.i.i.i.i162, label %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i170, label %.lr.ph.i.i.i.i163

.lr.ph.i.i.i.i163:                                ; preds = %bb.cn, %_ZNSt3__116allocator_traitsINS_9allocatorI4NodeEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i166
  %.07.i.i.i.i164 = phi ptr [ %i.sr, %_ZNSt3__116allocator_traitsINS_9allocatorI4NodeEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i166 ], [ %i.sq, %bb.cn ] ; 2 uses
  %i.sr = getelementptr inbounds i8, ptr %.07.i.i.i.i164, i64 -56 ; 2 uses
  %i.ss = getelementptr inbounds i8, ptr %.07.i.i.i.i164, i64 -40
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !42 ; 5 uses
  %.not.i.i.i.i.i.i.i.i165 = icmp eq ptr %i.st, null
  br i1 %.not.i.i.i.i.i.i.i.i165, label %_ZNSt3__116allocator_traitsINS_9allocatorI4NodeEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i166, label %bb.co

bb.co:                                            ; preds = %.lr.ph.i.i.i.i163
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %i.sv = atomicrmw add ptr %i.su, i64 -1 acq_rel, align 8
  %i.sw = icmp eq i64 %i.sv, 0
  br i1 %i.sw, label %bb.cp, label %_ZNSt3__116allocator_traitsINS_9allocatorI4NodeEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i166

bb.cp:                                            ; preds = %bb.co
  %i.sx = load ptr, ptr %i.st, align 8, !tbaa !44
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 16
  %i.sz = load ptr, ptr %i.sy, align 8
  call void %i.sz(ptr noundef nonnull align 8 dereferenceable(24) %i.st) #22, !inline_history !629
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.st) #22
  br label %_ZNSt3__116allocator_traitsINS_9allocatorI4NodeEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i166

_ZNSt3__116allocator_traitsINS_9allocatorI4NodeEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i166: ; preds = %bb.cp, %bb.co, %.lr.ph.i.i.i.i163
  %.not.i.i.i.i167 = icmp eq ptr %i.sp, %i.sr
  br i1 %.not.i.i.i.i167, label %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i168, label %.lr.ph.i.i.i.i163

_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i168: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorI4NodeEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i166
  %.pre1.i.i169 = load ptr, ptr %6, align 8, !tbaa !163
  br label %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i170

_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i170: ; preds = %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i168, %bb.cn
  %i.ta = phi ptr [ %.pre1.i.i169, %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i168 ], [ %i.sp, %bb.cn ] ; 2 uses
  store ptr %i.sp, ptr %i.at, align 8, !tbaa !164
  %i.tb = load ptr, ptr %i.au, align 8, !tbaa !168
  %i.tc = ptrtoint ptr %i.tb to i64
  %i.td = ptrtoint ptr %i.ta to i64
  %i.te = sub i64 %i.tc, %i.td
  call void @_ZdlPvm(ptr noundef %i.ta, i64 noundef %i.te) #23
  br label %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEED2B8ne180100Ev.exit171

_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEED2B8ne180100Ev.exit171: ; preds = %bb.cm, %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.tf = load ptr, ptr %5, align 8, !tbaa !163   ; 5 uses
  %.not.i.i172 = icmp eq ptr %i.tf, null
  br i1 %.not.i.i172, label %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEED2B8ne180100Ev.exit182, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEED2B8ne180100Ev.exit171
  %i.tg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !164 ; 2 uses
  %.not6.i.i.i.i173 = icmp eq ptr %i.tf, %i.th
  br i1 %.not6.i.i.i.i173, label %_ZNSt3__16vectorI4NodeNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i181, label %.lr.ph.i.i.i.i174

.lr.ph.i.i.i.i174:                                ; preds = %bb.cq, %_ZNSt3__116allocator_traitsINS_9allocatorI4NodeEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i177
  %.07.i.i.i.i175 = phi ptr [ %i.ti, %_ZNSt3__116allocator_traitsINS_9allocatorI4NodeEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i177 ], [ %i.th, %bb.cq ] ; 2 uses
  %i.ti = getelementptr inbounds i8, ptr %.07.i.i.i.i175, i64 -56 ; 2 uses
  %i.tj = getelementptr inbounds i8, ptr %.07.i.i.i.i175, i64 -40
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !42 ; 5 uses
end_hunk_0
