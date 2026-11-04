Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/parser?download=true
inline.NumInlined: 5128
inline.NumDeleted: 1457
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4bzla6parser4smt26Parser25parse_command_declare_funEb:.noexc.i
bb.bi:                                            ; preds = %bb.bh
  %i.no = load ptr, ptr %i.mu, align 8, !tbaa !253 ; 2 uses
  %i.np = load <2 x ptr>, ptr %15, align 16, !tbaa !265
  store <2 x ptr> %i.np, ptr %i.nm, align 8, !tbaa !265
  %.not.i.i.i.i.i = icmp eq ptr %i.no, null
  br i1 %.not.i.i.i.i.i, label %_ZN8bitwuzla4SortC2ERKS0_.exit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 8 ; 3 uses
  %i.nr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i.i = icmp eq i8 %i.nr, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ns = load i32, ptr %i.nq, align 4, !tbaa !254
  %i.nt = add nsw i32 %i.ns, 1
  store i32 %i.nt, ptr %i.nq, align 4, !tbaa !254
  br label %_ZN8bitwuzla4SortC2ERKS0_.exit.i

bb.bl:                                            ; preds = %bb.bj
  %i.nu = atomicrmw volatile add ptr %i.nq, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i152 = load ptr, ptr %i.ms, align 8, !tbaa !273
  br label %_ZN8bitwuzla4SortC2ERKS0_.exit.i

_ZN8bitwuzla4SortC2ERKS0_.exit.i:                 ; preds = %bb.bl, %bb.bk, %bb.bi
  %i.nv = phi ptr [ %i.nm, %bb.bi ], [ %i.nm, %bb.bk ], [ %.pre.i152, %bb.bl ]
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  store ptr %i.nw, ptr %i.ms, align 8, !tbaa !273
  br label %_ZN4bzla6parser4smt26Parser10parse_lparEv.exit.backedge

bb.bm:                                            ; preds = %bb.bh
  invoke void @_ZNSt6vectorIN8bitwuzla4SortESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr %i.nm, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZN4bzla6parser4smt26Parser10parse_lparEv.exit.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4bzla6parser4smt26Parser10parse_lparEv.exit.backedge: ; preds = %bb.bm, %_ZN8bitwuzla4SortC2ERKS0_.exit.i
  br label %_ZN4bzla6parser4smt26Parser10parse_lparEv.exit

.critedge:                                        ; preds = %bb.be, %_ZN4bzla6parser4smt26Parser12pop_node_argEb.exit
  %i.nx = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser10parse_sortERN8bitwuzla4SortEbNS1_5TokenE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(16) %15, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.bn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bn:                                            ; preds = %.critedge
  br i1 %i.nx, label %bb.bo, label %.loopexit199

bb.bo:                                            ; preds = %bb.bn
  %i.ny = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !273
  %i.oa = load ptr, ptr %16, align 8, !tbaa !275
  %.not26 = icmp eq ptr %i.nz, %i.oa
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %.not26, label %bb.cl, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !246, !nonnull !209, !align !210 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  invoke void @_ZN8bitwuzla11TermManager11mk_fun_sortERKSt6vectorINS_4SortESaIS2_EERKS2_(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %i.oc, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %bb.bq unwind label %bb.cg

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  %i.od = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.oe = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  store ptr %i.oe, ptr %19, align 8, !tbaa !51
  %i.of = load ptr, ptr %i.od, align 8, !tbaa !154 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !53 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 %i.oh, ptr %i.b, align 8, !tbaa !164
  %i.oi = icmp ugt i64 %i.oh, 15
  br i1 %i.oi, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.bq
  %i.oj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc154 unwind label %bb.ch ; 2 uses

.noexc154:                                        ; preds = %.noexc.i.i.i.i.i.i.i
  store ptr %i.oj, ptr %19, align 8, !tbaa !154
  %i.ok = load i64, ptr %i.b, align 8, !tbaa !164
  store i64 %i.ok, ptr %i.oe, align 8, !tbaa !54
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc154, %bb.bq
  %i.ol = phi ptr [ %i.oj, %.noexc154 ], [ %i.oe, %bb.bq ] ; 2 uses
  switch i64 %i.oh, label %bb.bs [
    i64 1, label %bb.br
    i64 0, label %bb.bt
  ]

bb.br:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.om = load i8, ptr %i.of, align 1, !tbaa !54
  store i8 %i.om, ptr %i.ol, align 1, !tbaa !54
  br label %bb.bt

bb.bs:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ol, ptr align 1 %i.of, i64 %i.oh, i1 false)
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %._crit_edge.i.i.i.i.i.i.i.i
  %i.on = load i64, ptr %i.b, align 8, !tbaa !164 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %i.on, ptr %i.oo, align 8, !tbaa !53
  %i.op = load ptr, ptr %19, align 8, !tbaa !154
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 %i.on
  store i8 0, ptr %i.oq, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.or = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 5 uses
  store i8 1, ptr %i.or, align 8, !tbaa !314
  invoke void @_ZN8bitwuzla11TermManager8mk_constERKNS_4SortERKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Term") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.oc, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(40) %19)
          to label %bb.bu unwind label %bb.ci

bb.bu:                                            ; preds = %bb.bt
  %i.os = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ot = load ptr, ptr %17, align 8, !tbaa !258
  store ptr %i.ot, ptr %i.os, align 8, !tbaa !258
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ag, i64 72 ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !253 ; 4 uses
  %i.ox = load ptr, ptr %i.ou, align 8, !tbaa !253 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ow, %i.ox
  br i1 %.not.i.i.i.i, label %_ZN8bitwuzla4TermaSERKS0_.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %.not7.i.i.i.i = icmp eq ptr %i.ow, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ow, i64 8 ; 3 uses
  %i.oz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i155 = icmp eq i8 %i.oz, 0
  br i1 %.not.i.i.i.i.i155, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.pa = load i32, ptr %i.oy, align 4, !tbaa !254
  %i.pb = add nsw i32 %i.pa, 1
  store i32 %i.pb, ptr %i.oy, align 4, !tbaa !254
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.by:                                            ; preds = %bb.bw
  %i.pc = atomicrmw volatile add ptr %i.oy, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.ou, align 8, !tbaa !253
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.by, %bb.bx, %bb.bv
  %i.pd = phi ptr [ %i.ox, %bb.bv ], [ %i.ox, %bb.bx ], [ %.pr.pre.i.i.i.i, %bb.by ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.pd, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 8 ; 4 uses
  %i.pf = load atomic i64, ptr %i.pe acquire, align 8 ; 2 uses
  %i.pg = icmp eq i64 %i.pf, 4294967297
  %i.ph = trunc i64 %i.pf to i32                  ; 2 uses
  br i1 %i.pg, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store i32 0, ptr %i.pe, align 8, !tbaa !248
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pd, i64 12
  store i32 0, ptr %i.pi, align 4, !tbaa !249
  %i.pj = load ptr, ptr %i.pd, align 8, !tbaa !33
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  %i.pl = load ptr, ptr %i.pk, align 8
  call void %i.pl(ptr noundef nonnull align 8 dereferenceable(16) %i.pd) #30, !inline_history !5
  %i.pm = load ptr, ptr %i.pd, align 8, !tbaa !33
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 24
  %i.po = load ptr, ptr %i.pn, align 8
  call void %i.po(ptr noundef nonnull align 8 dereferenceable(16) %i.pd) #30, !inline_history !5
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.cb:                                            ; preds = %bb.bz
  %i.pp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i9.i.i.i.i = icmp eq i8 %i.pp, 0
  br i1 %.not.i9.i.i.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.pq = add nsw i32 %i.ph, -1
  store i32 %i.pq, ptr %i.pe, align 8, !tbaa !254
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.cd:                                            ; preds = %bb.cb
  %i.pr = atomicrmw volatile add ptr %i.pe, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.cd, %bb.cc
  %.0.i.i.i.i.i.i = phi i32 [ %i.ph, %bb.cc ], [ %i.pr, %bb.cd ]
  %i.ps = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ps, label %bb.ce, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !255

bb.ce:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pd) #30
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.ce, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ca, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.ow, ptr %i.ou, align 8, !tbaa !253
  br label %_ZN8bitwuzla4TermaSERKS0_.exit

_ZN8bitwuzla4TermaSERKS0_.exit:                   ; preds = %bb.bu, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #30
  %i.pt = load i8, ptr %i.or, align 8, !tbaa !314, !range !211, !noundef !209
  %i.pu = trunc nuw i8 %i.pt to i1
  br i1 %i.pu, label %bb.cf, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.cf:                                            ; preds = %_ZN8bitwuzla4TermaSERKS0_.exit
  store i8 0, ptr %i.or, align 8, !tbaa !314
  %i.pv = load ptr, ptr %19, align 8, !tbaa !154  ; 2 uses
  %i.pw = icmp eq ptr %i.pv, %i.oe
  br i1 %i.pw, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.cf
  %i.px = load i64, ptr %i.oe, align 8, !tbaa !54
  %i.py = add i64 %i.px, 1
  call void @_ZdlPvm(ptr noundef %i.pv, i64 noundef %i.py) #28
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.cf, %_ZN8bitwuzla4TermaSERKS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %bb.de

bb.cg:                                            ; preds = %bb.bp
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.ch:                                            ; preds = %.noexc.i.i.i.i.i.i.i
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit158

bb.ci:                                            ; preds = %bb.bt
  %i.qb = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.qc = load i8, ptr %i.or, align 8, !tbaa !314, !range !211, !noundef !209
  %i.qd = trunc nuw i8 %i.qc to i1
  br i1 %i.qd, label %bb.cj, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit158

bb.cj:                                            ; preds = %bb.ci
  store i8 0, ptr %i.or, align 8, !tbaa !314
  %i.qe = load ptr, ptr %19, align 8, !tbaa !154  ; 2 uses
  %i.qf = icmp eq ptr %i.qe, %i.oe
  br i1 %i.qf, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i156: ; preds = %bb.cj
  %i.qg = load i64, ptr %i.oe, align 8, !tbaa !54
  %i.qh = add i64 %i.qg, 1
  call void @_ZdlPvm(ptr noundef %i.qe, i64 noundef %i.qh) #28
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit158

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit158: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i156, %bb.ci, %bb.ch
  %.pn29 = phi { ptr, i32 } [ %i.qa, %bb.ch ], [ %i.qb, %bb.ci ], [ %i.qb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i156 ], [ %i.qb, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #30
  br label %bb.ck

bb.ck:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit158, %bb.cg
  %.pn29.pn = phi { ptr, i32 } [ %.pn29, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit158 ], [ %i.pz, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %.body

bb.cl:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  %i.qi = load ptr, ptr %i.ob, align 8, !tbaa !246, !nonnull !209, !align !210
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  %i.qj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.qk = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  store ptr %i.qk, ptr %21, align 8, !tbaa !51
  %i.ql = load ptr, ptr %i.qj, align 8, !tbaa !154 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.qn = load i64, ptr %i.qm, align 8, !tbaa !53 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.qn, ptr %i.a, align 8, !tbaa !164
  %i.qo = icmp ugt i64 %i.qn, 15
  br i1 %i.qo, label %.noexc.i.i.i.i.i.i.i160, label %._crit_edge.i.i.i.i.i.i.i.i159

.noexc.i.i.i.i.i.i.i160:                          ; preds = %bb.cl
  %i.qp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc161 unwind label %bb.db ; 2 uses

.noexc161:                                        ; preds = %.noexc.i.i.i.i.i.i.i160
  store ptr %i.qp, ptr %21, align 8, !tbaa !154
  %i.qq = load i64, ptr %i.a, align 8, !tbaa !164
  store i64 %i.qq, ptr %i.qk, align 8, !tbaa !54
  br label %._crit_edge.i.i.i.i.i.i.i.i159

._crit_edge.i.i.i.i.i.i.i.i159:                   ; preds = %.noexc161, %bb.cl
  %i.qr = phi ptr [ %i.qp, %.noexc161 ], [ %i.qk, %bb.cl ] ; 2 uses
  switch i64 %i.qn, label %bb.cn [
    i64 1, label %bb.cm
    i64 0, label %bb.co
  ]

bb.cm:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i159
  %i.qs = load i8, ptr %i.ql, align 1, !tbaa !54
  store i8 %i.qs, ptr %i.qr, align 1, !tbaa !54
  br label %bb.co

bb.cn:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i159
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qr, ptr align 1 %i.ql, i64 %i.qn, i1 false)
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm, %._crit_edge.i.i.i.i.i.i.i.i159
  %i.qt = load i64, ptr %i.a, align 8, !tbaa !164 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.qt, ptr %i.qu, align 8, !tbaa !53
  %i.qv = load ptr, ptr %21, align 8, !tbaa !154
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 %i.qt
  store i8 0, ptr %i.qw, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.qx = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 5 uses
  store i8 1, ptr %i.qx, align 8, !tbaa !314
  invoke void @_ZN8bitwuzla11TermManager8mk_constERKNS_4SortERKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Term") align 8 %20, ptr noundef nonnull align 8 dereferenceable(8) %i.qi, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(40) %21)
          to label %bb.cp unwind label %bb.dc

bb.cp:                                            ; preds = %bb.co
  %i.qy = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.qz = load ptr, ptr %20, align 8, !tbaa !258
  store ptr %i.qz, ptr %i.qy, align 8, !tbaa !258
  %i.ra = getelementptr inbounds nuw i8, ptr %i.ag, i64 72 ; 3 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !253 ; 4 uses
  %i.rd = load ptr, ptr %i.ra, align 8, !tbaa !253 ; 3 uses
  %.not.i.i.i.i163 = icmp eq ptr %i.rc, %i.rd
  br i1 %.not.i.i.i.i163, label %_ZN8bitwuzla4TermaSERKS0_.exit173, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %.not7.i.i.i.i164 = icmp eq ptr %i.rc, null
  br i1 %.not7.i.i.i.i164, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i166, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.re = getelementptr inbounds nuw i8, ptr %i.rc, i64 8 ; 3 uses
  %i.rf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i165 = icmp eq i8 %i.rf, 0
  br i1 %.not.i.i.i.i.i165, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.rg = load i32, ptr %i.re, align 4, !tbaa !254
  %i.rh = add nsw i32 %i.rg, 1
  store i32 %i.rh, ptr %i.re, align 4, !tbaa !254
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i166

bb.ct:                                            ; preds = %bb.cr
  %i.ri = atomicrmw volatile add ptr %i.re, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i172 = load ptr, ptr %i.ra, align 8, !tbaa !253
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i166

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i166: ; preds = %bb.ct, %bb.cs, %bb.cq
  %i.rj = phi ptr [ %i.rd, %bb.cq ], [ %i.rd, %bb.cs ], [ %.pr.pre.i.i.i.i172, %bb.ct ] ; 8 uses
  %.not8.i.i.i.i167 = icmp eq ptr %i.rj, null
  br i1 %.not8.i.i.i.i167, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i171, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i166
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 8 ; 4 uses
  %i.rl = load atomic i64, ptr %i.rk acquire, align 8 ; 2 uses
  %i.rm = icmp eq i64 %i.rl, 4294967297
  %i.rn = trunc i64 %i.rl to i32                  ; 2 uses
  br i1 %i.rm, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  store i32 0, ptr %i.rk, align 8, !tbaa !248
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rj, i64 12
  store i32 0, ptr %i.ro, align 4, !tbaa !249
  %i.rp = load ptr, ptr %i.rj, align 8, !tbaa !33
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  %i.rr = load ptr, ptr %i.rq, align 8
  call void %i.rr(ptr noundef nonnull align 8 dereferenceable(16) %i.rj) #30, !inline_history !5
  %i.rs = load ptr, ptr %i.rj, align 8, !tbaa !33
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 24
  %i.ru = load ptr, ptr %i.rt, align 8
  call void %i.ru(ptr noundef nonnull align 8 dereferenceable(16) %i.rj) #30, !inline_history !5
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i171

bb.cw:                                            ; preds = %bb.cu
  %i.rv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i9.i.i.i.i168 = icmp eq i8 %i.rv, 0
  br i1 %.not.i9.i.i.i.i168, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.rw = add nsw i32 %i.rn, -1
  store i32 %i.rw, ptr %i.rk, align 8, !tbaa !254
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i169

bb.cy:                                            ; preds = %bb.cw
  %i.rx = atomicrmw volatile add ptr %i.rk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i169

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i169: ; preds = %bb.cy, %bb.cx
  %.0.i.i.i.i.i.i170 = phi i32 [ %i.rn, %bb.cx ], [ %i.rx, %bb.cy ]
  %i.ry = icmp eq i32 %.0.i.i.i.i.i.i170, 1
  br i1 %i.ry, label %bb.cz, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i171, !prof !255

bb.cz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i169
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rj) #30
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i171

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i171: ; preds = %bb.cz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i169, %bb.cv, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i166
  store ptr %i.rc, ptr %i.ra, align 8, !tbaa !253
  br label %_ZN8bitwuzla4TermaSERKS0_.exit173

_ZN8bitwuzla4TermaSERKS0_.exit173:                ; preds = %bb.cp, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i171
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #30
  %i.rz = load i8, ptr %i.qx, align 8, !tbaa !314, !range !211, !noundef !209
  %i.sa = trunc nuw i8 %i.rz to i1
  br i1 %i.sa, label %bb.da, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit176

bb.da:                                            ; preds = %_ZN8bitwuzla4TermaSERKS0_.exit173
  store i8 0, ptr %i.qx, align 8, !tbaa !314
  %i.sb = load ptr, ptr %21, align 8, !tbaa !154  ; 2 uses
  %i.sc = icmp eq ptr %i.sb, %i.qk
  br i1 %i.sc, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i174: ; preds = %bb.da
  %i.sd = load i64, ptr %i.qk, align 8, !tbaa !54
  %i.se = add i64 %i.sd, 1
  call void @_ZdlPvm(ptr noundef %i.sb, i64 noundef %i.se) #28
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit176

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit176: ; preds = %bb.da, %_ZN8bitwuzla4TermaSERKS0_.exit173, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %bb.de

bb.db:                                            ; preds = %.noexc.i.i.i.i.i.i.i160
  %i.sf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit179

bb.dc:                                            ; preds = %bb.co
  %i.sg = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.sh = load i8, ptr %i.qx, align 8, !tbaa !314, !range !211, !noundef !209
  %i.si = trunc nuw i8 %i.sh to i1
  br i1 %i.si, label %bb.dd, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit179

bb.dd:                                            ; preds = %bb.dc
  store i8 0, ptr %i.qx, align 8, !tbaa !314
  %i.sj = load ptr, ptr %21, align 8, !tbaa !154  ; 2 uses
  %i.sk = icmp eq ptr %i.sj, %i.qk
  br i1 %i.sk, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i177: ; preds = %bb.dd
  %i.sl = load i64, ptr %i.qk, align 8, !tbaa !54
  %i.sm = add i64 %i.sl, 1
  call void @_ZdlPvm(ptr noundef %i.sj, i64 noundef %i.sm) #28
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit179

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit179: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i177, %bb.dc, %bb.db
  %.pn27 = phi { ptr, i32 } [ %i.sf, %bb.db ], [ %i.sg, %bb.dc ], [ %i.sg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i177 ], [ %i.sg, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %.body

bb.de:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit176, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.sn = invoke noundef i32 @_ZN4bzla6parser4smt26Parser10next_tokenEb(ptr noundef nonnull align 8 dereferenceable(2056) %0, i1 noundef zeroext false)
          to label %.noexc188 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc188:                                        ; preds = %bb.de
  %.not.i180 = icmp eq i32 %i.sn, 4
  br i1 %.not.i180, label %bb.dh, label %._crit_edge.i.i.i181

._crit_edge.i.i.i181:                             ; preds = %.noexc188
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.so = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.so, ptr %2, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.so, ptr noundef nonnull align 1 dereferenceable(11) @.str.83, i64 11, i1 false)
  %i.sp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 11, ptr %i.sp, align 8, !tbaa !53
  %i.sq = getelementptr inbounds nuw i8, ptr %2, i64 27
  store i8 0, ptr %i.sq, align 1, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.sr = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.sr, align 8, !tbaa !219
  %i.ss = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.df unwind label %bb.dg     ; 0 uses

bb.df:                                            ; preds = %._crit_edge.i.i.i181
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.st = load ptr, ptr %2, align 8, !tbaa !154   ; 2 uses
  %i.su = icmp eq ptr %i.st, %i.so
  br i1 %i.su, label %_ZN4bzla6parser4smt26Parser10parse_rparEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i185: ; preds = %bb.df
  %i.sv = load i64, ptr %i.so, align 8, !tbaa !54
  %i.sw = add i64 %i.sv, 1
  call void @_ZdlPvm(ptr noundef %i.st, i64 noundef %i.sw) #28
  br label %_ZN4bzla6parser4smt26Parser10parse_rparEv.exit

bb.dg:                                            ; preds = %._crit_edge.i.i.i181
  %i.sx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.sy = load ptr, ptr %2, align 8, !tbaa !154   ; 2 uses
  %i.sz = icmp eq ptr %i.sy, %i.so
  br i1 %i.sz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i182: ; preds = %bb.dg
  %i.ta = load i64, ptr %i.so, align 8, !tbaa !54
  %i.tb = add i64 %i.ta, 1
  call void @_ZdlPvm(ptr noundef %i.sy, i64 noundef %i.tb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i183: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %.body

_ZN4bzla6parser4smt26Parser10parse_rparEv.exit:   ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %.loopexit199

bb.dh:                                            ; preds = %.noexc188
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 1504 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 1512 ; 3 uses
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !315 ; 4 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 1520 ; 3 uses
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !187
  %.not.i.i = icmp eq ptr %i.te, %i.tg
  br i1 %.not.i.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  store ptr %i.ag, ptr %i.te, align 8, !tbaa !270
  %i.th = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  store ptr %i.th, ptr %i.td, align 8, !tbaa !315
  br label %_ZN4bzla9backtrack6vectorIPNS_6parser4smt211SymbolTable4NodeEE9push_backERKS6_.exit

bb.dj:                                            ; preds = %bb.dh
  %i.ti = load ptr, ptr %i.tc, align 8, !tbaa !186 ; 4 uses
  %i.tj = ptrtoint ptr %i.te to i64
  %i.tk = ptrtoint ptr %i.ti to i64               ; 2 uses
  %i.tl = sub i64 %i.tj, %i.tk                    ; 5 uses
  %i.tm = icmp eq i64 %i.tl, 9223372036854775800
  br i1 %i.tm, label %bb.dk, label %_ZNKSt6vectorIPN4bzla6parser4smt211SymbolTable4NodeESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.dk:                                            ; preds = %bb.dj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.200) #29
          to label %.noexc192 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc192:                                        ; preds = %bb.dk
  unreachable

_ZNKSt6vectorIPN4bzla6parser4smt211SymbolTable4NodeESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.dj
  %i.tn = ashr exact i64 %i.tl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.tn, i64 1)
  %i.to = add nsw i64 %.sroa.speculated.i.i.i.i, %i.tn ; 2 uses
  %i.tp = icmp ult i64 %i.to, %i.tn
  %i.tq = call i64 @llvm.umin.i64(i64 %i.to, i64 1152921504606846975)
  %i.tr = select i1 %i.tp, i64 1152921504606846975, i64 %i.tq ; 3 uses
  %.not.i.i.i.i191 = icmp ne i64 %i.tr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i191)
  %i.ts = shl nuw nsw i64 %i.tr, 3
  %i.tt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ts) #27
          to label %.noexc193 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc193:                                        ; preds = %_ZNKSt6vectorIPN4bzla6parser4smt211SymbolTable4NodeESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.tu = getelementptr inbounds i8, ptr %i.tt, i64 %i.tl ; 2 uses
  store ptr %i.ag, ptr %i.tu, align 8, !tbaa !270
  %i.tv = icmp sgt i64 %i.tl, 0
  br i1 %i.tv, label %bb.dl, label %_ZNSt6vectorIPN4bzla6parser4smt211SymbolTable4NodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i

bb.dl:                                            ; preds = %.noexc193
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.tt, ptr align 8 %i.ti, i64 %i.tl, i1 false)
  br label %_ZNSt6vectorIPN4bzla6parser4smt211SymbolTable4NodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i

_ZNSt6vectorIPN4bzla6parser4smt211SymbolTable4NodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i: ; preds = %bb.dl, %.noexc193
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ti, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4bzla6parser4smt211SymbolTable4NodeESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorIPN4bzla6parser4smt211SymbolTable4NodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i
  %i.tx = load ptr, ptr %i.tf, align 8, !tbaa !187
  %i.ty = ptrtoint ptr %i.tx to i64
  %i.tz = sub i64 %i.ty, %i.tk
  call void @_ZdlPvm(ptr noundef nonnull %i.ti, i64 noundef %i.tz) #28
  br label %_ZNSt6vectorIPN4bzla6parser4smt211SymbolTable4NodeESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4bzla6parser4smt211SymbolTable4NodeESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.dm, %_ZNSt6vectorIPN4bzla6parser4smt211SymbolTable4NodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i
  store ptr %i.tt, ptr %i.tc, align 8, !tbaa !186
  store ptr %i.tw, ptr %i.td, align 8, !tbaa !315
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %i.tr
  store ptr %i.ua, ptr %i.tf, align 8, !tbaa !187
  br label %_ZN4bzla9backtrack6vectorIPNS_6parser4smt211SymbolTable4NodeEE9push_backERKS6_.exit

_ZN4bzla9backtrack6vectorIPNS_6parser4smt211SymbolTable4NodeEE9push_backERKS6_.exit: ; preds = %_ZNSt6vectorIPN4bzla6parser4smt211SymbolTable4NodeESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.di
  invoke void @_ZN4bzla6parser4smt26Parser13print_successEv(ptr noundef nonnull align 8 dereferenceable(2056) %0)
          to label %.loopexit199 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit199:                                     ; preds = %bb.bg, %_ZN4bzla6parser4smt26Parser10parse_rparEv.exit, %_ZN4bzla6parser4smt26Parser10parse_lparEv.exit.thread, %_ZN4bzla9backtrack6vectorIPNS_6parser4smt211SymbolTable4NodeEE9push_backERKS6_.exit, %bb.bn
  %.122 = phi i1 [ false, %_ZN4bzla6parser4smt26Parser10parse_rparEv.exit ], [ false, %bb.bn ], [ false, %_ZN4bzla6parser4smt26Parser10parse_lparEv.exit.thread ], [ true, %_ZN4bzla9backtrack6vectorIPNS_6parser4smt211SymbolTable4NodeEE9push_backERKS6_.exit ], [ false, %bb.bg ]
  %i.ub = load ptr, ptr %16, align 8, !tbaa !275  ; 3 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !273 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ub, %i.ud
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN8bitwuzla4SortES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit199, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ue, %.lr.ph.i.i.i ], [ %i.ub, %.loopexit199 ] ; 2 uses
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.05.i.i.i) #30
  %i.ue = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ue, %i.ud
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN8bitwuzla4SortES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPN8bitwuzla4SortES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %16, align 8, !tbaa !275
  br label %_ZSt8_DestroyIPN8bitwuzla4SortES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN8bitwuzla4SortES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN8bitwuzla4SortES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %.loopexit199
  %i.uf = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN8bitwuzla4SortES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ub, %.loopexit199 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.uf, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN8bitwuzla4SortESaIS1_EED2Ev.exit, label %bb.dn

bb.dn:                                            ; preds = %_ZSt8_DestroyIPN8bitwuzla4SortES1_EvT_S3_RSaIT0_E.exit.i
  %i.ug = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !274
  %i.ui = ptrtoint ptr %i.uh to i64
  %i.uj = ptrtoint ptr %i.uf to i64
  %i.uk = sub i64 %i.ui, %i.uj
  call void @_ZdlPvm(ptr noundef nonnull %i.uf, i64 noundef %i.uk) #28
  br label %_ZNSt6vectorIN8bitwuzla4SortESaIS1_EED2Ev.exit

_ZNSt6vectorIN8bitwuzla4SortESaIS1_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIPN8bitwuzla4SortES1_EvT_S3_RSaIT0_E.exit.i, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %bb.do

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i183, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit179, %bb.ck
  %.pn32 = phi { ptr, i32 } [ %.pn27, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit179 ], [ %.pn29.pn, %bb.ck ], [ %i.ne, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i ], [ %i.sx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i183 ], [ %lpad.loopexit.split-lp338, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIN8bitwuzla4SortESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %common.resume

bb.do:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt6vectorIN8bitwuzla4SortESaIS1_EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  %.223 = phi i1 [ %.122, %_ZNSt6vectorIN8bitwuzla4SortESaIS1_EED2Ev.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  ret i1 %.223
}
end_hunk_0
begin_hunk_1_@_ZN4bzla6parser4smt26Parser26parse_command_declare_sortEv:.noexc.i
  %i.mt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc137 unwind label %bb.bd ; 3 uses

.noexc137:                                        ; preds = %.noexc.i136
  store ptr %i.mt, ptr %12, align 8, !tbaa !154
  %i.mu = load i64, ptr %i.b, align 8, !tbaa !164 ; 3 uses
  store i64 %i.mu, ptr %i.ms, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.mt, ptr noundef nonnull align 1 dereferenceable(41) @.str.36, i64 41, i1 false)
  %i.mv = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.mu, ptr %i.mv, align 8, !tbaa !53
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.mu
  store i8 0, ptr %i.mw, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.mx = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i8 0, ptr %i.mx, align 8, !tbaa !219
  %i.my = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.bc unwind label %bb.be     ; 0 uses

bb.bc:                                            ; preds = %.noexc137
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %i.mz = load ptr, ptr %12, align 8, !tbaa !154  ; 2 uses
  %i.na = icmp eq ptr %i.mz, %i.ms
  br i1 %i.na, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %bb.bc
  %i.nb = load i64, ptr %i.ms, align 8, !tbaa !54
  %i.nc = add i64 %i.nb, 1
  call void @_ZdlPvm(ptr noundef %i.mz, i64 noundef %i.nc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.bz

bb.bd:                                            ; preds = %.noexc.i136
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

bb.be:                                            ; preds = %.noexc137
  %i.ne = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %i.nf = load ptr, ptr %12, align 8, !tbaa !154  ; 2 uses
  %i.ng = icmp eq ptr %i.nf, %i.ms
  br i1 %i.ng, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %bb.be
  %i.nh = load i64, ptr %i.ms, align 8, !tbaa !54
  %i.ni = add i64 %i.nh, 1
  call void @_ZdlPvm(ptr noundef %i.nf, i64 noundef %i.ni) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142, %bb.bd
  %.pn17 = phi { ptr, i32 } [ %i.nd, %bb.bd ], [ %i.ne, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ], [ %i.ne, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.ca

bb.bf:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !246, !nonnull !209, !align !210
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.nl = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.nm = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  store ptr %i.nm, ptr %15, align 8, !tbaa !51
  %i.nn = load ptr, ptr %i.nl, align 8, !tbaa !154 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.np = load i64, ptr %i.no, align 8, !tbaa !53 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.np, ptr %i.a, align 8, !tbaa !164
  %i.nq = icmp ugt i64 %i.np, 15
  br i1 %i.nq, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.bf
  %i.nr = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.nr, ptr %15, align 8, !tbaa !154
  %i.ns = load i64, ptr %i.a, align 8, !tbaa !164
  store i64 %i.ns, ptr %i.nm, align 8, !tbaa !54
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc.i.i.i.i.i.i.i, %bb.bf
  %i.nt = phi ptr [ %i.nr, %.noexc.i.i.i.i.i.i.i ], [ %i.nm, %bb.bf ] ; 2 uses
  switch i64 %i.np, label %bb.bh [
    i64 1, label %bb.bg
    i64 0, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISB_ISt10in_place_tSI_EESt16is_constructibleIS5_JSE_EESt14is_convertibleISE_S5_EEEbE4typeELb1EEEOSE_.exit
  ]

bb.bg:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.nu = load i8, ptr %i.nn, align 1, !tbaa !54
  store i8 %i.nu, ptr %i.nt, align 1, !tbaa !54
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISB_ISt10in_place_tSI_EESt16is_constructibleIS5_JSE_EESt14is_convertibleISE_S5_EEEbE4typeELb1EEEOSE_.exit

bb.bh:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nt, ptr align 1 %i.nn, i64 %i.np, i1 false)
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISB_ISt10in_place_tSI_EESt16is_constructibleIS5_JSE_EESt14is_convertibleISE_S5_EEEbE4typeELb1EEEOSE_.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISB_ISt10in_place_tSI_EESt16is_constructibleIS5_JSE_EESt14is_convertibleISE_S5_EEEbE4typeELb1EEEOSE_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %bb.bg, %bb.bh
  %i.nv = load i64, ptr %i.a, align 8, !tbaa !164 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.nv, ptr %i.nw, align 8, !tbaa !53
  %i.nx = load ptr, ptr %15, align 8, !tbaa !154
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.nv
  store i8 0, ptr %i.ny, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.nz = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 5 uses
  store i8 1, ptr %i.nz, align 8, !tbaa !314
  invoke void @_ZN8bitwuzla11TermManager21mk_uninterpreted_sortERKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.nk, ptr noundef nonnull align 8 dereferenceable(40) %15)
          to label %bb.bi unwind label %bb.bw

bb.bi:                                            ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISB_ISt10in_place_tSI_EESt16is_constructibleIS5_JSE_EESt14is_convertibleISE_S5_EEEbE4typeELb1EEEOSE_.exit
  %i.oa = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.ob = load ptr, ptr %14, align 8, !tbaa !268
  store ptr %i.ob, ptr %i.oa, align 8, !tbaa !268
  %i.oc = getelementptr inbounds nuw i8, ptr %i.af, i64 88 ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !253 ; 4 uses
  %i.of = load ptr, ptr %i.oc, align 8, !tbaa !253 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.oe, %i.of
  br i1 %.not.i.i.i.i, label %_ZN8bitwuzla4SortaSERKS0_.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %.not7.i.i.i.i = icmp eq ptr %i.oe, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 8 ; 3 uses
  %i.oh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i = icmp eq i8 %i.oh, 0
  br i1 %.not.i.i.i.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.oi = load i32, ptr %i.og, align 4, !tbaa !254
  %i.oj = add nsw i32 %i.oi, 1
  store i32 %i.oj, ptr %i.og, align 4, !tbaa !254
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.bm:                                            ; preds = %bb.bk
  %i.ok = atomicrmw volatile add ptr %i.og, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.oc, align 8, !tbaa !253
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.bm, %bb.bl, %bb.bj
  %i.ol = phi ptr [ %i.of, %bb.bj ], [ %i.of, %bb.bl ], [ %.pr.pre.i.i.i.i, %bb.bm ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.ol, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 8 ; 4 uses
  %i.on = load atomic i64, ptr %i.om acquire, align 8 ; 2 uses
  %i.oo = icmp eq i64 %i.on, 4294967297
  %i.op = trunc i64 %i.on to i32                  ; 2 uses
  br i1 %i.oo, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store i32 0, ptr %i.om, align 8, !tbaa !248
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ol, i64 12
  store i32 0, ptr %i.oq, align 4, !tbaa !249
  %i.or = load ptr, ptr %i.ol, align 8, !tbaa !33
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  %i.ot = load ptr, ptr %i.os, align 8
  call void %i.ot(ptr noundef nonnull align 8 dereferenceable(16) %i.ol) #30, !inline_history !6
  %i.ou = load ptr, ptr %i.ol, align 8, !tbaa !33
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 24
  %i.ow = load ptr, ptr %i.ov, align 8
  call void %i.ow(ptr noundef nonnull align 8 dereferenceable(16) %i.ol) #30, !inline_history !6
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.bp:                                            ; preds = %bb.bn
  %i.ox = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i9.i.i.i.i = icmp eq i8 %i.ox, 0
  br i1 %.not.i9.i.i.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.oy = add nsw i32 %i.op, -1
  store i32 %i.oy, ptr %i.om, align 8, !tbaa !254
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.br:                                            ; preds = %bb.bp
  %i.oz = atomicrmw volatile add ptr %i.om, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.br, %bb.bq
  %.0.i.i.i.i.i.i = phi i32 [ %i.op, %bb.bq ], [ %i.oz, %bb.br ]
  %i.pa = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.pa, label %bb.bs, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !255

bb.bs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ol) #30
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.bs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bo, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.oe, ptr %i.oc, align 8, !tbaa !253
  br label %_ZN8bitwuzla4SortaSERKS0_.exit

_ZN8bitwuzla4SortaSERKS0_.exit:                   ; preds = %bb.bi, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #30
  %i.pb = load i8, ptr %i.nz, align 8, !tbaa !314, !range !211, !noundef !209
  %i.pc = trunc nuw i8 %i.pb to i1
  br i1 %i.pc, label %bb.bt, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.bt:                                            ; preds = %_ZN8bitwuzla4SortaSERKS0_.exit
  store i8 0, ptr %i.nz, align 8, !tbaa !314
  %i.pd = load ptr, ptr %15, align 8, !tbaa !154  ; 2 uses
  %i.pe = icmp eq ptr %i.pd, %i.nm
  br i1 %i.pe, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.bt
  %i.pf = load i64, ptr %i.nm, align 8, !tbaa !54
  %i.pg = add i64 %i.pf, 1
  call void @_ZdlPvm(ptr noundef %i.pd, i64 noundef %i.pg) #28
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.bt, %_ZN8bitwuzla4SortaSERKS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  %i.ph = call noundef i32 @_ZN4bzla6parser4smt26Parser10next_tokenEb(ptr noundef nonnull align 8 dereferenceable(2056) %0, i1 noundef zeroext false)
  %.not.i145 = icmp eq i32 %i.ph, 4
  br i1 %.not.i145, label %bb.by, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.pi, ptr %1, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.pi, ptr noundef nonnull align 1 dereferenceable(11) @.str.83, i64 11, i1 false)
  %i.pj = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 11, ptr %i.pj, align 8, !tbaa !53
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 0, ptr %i.pk, align 1, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.pl = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 0, ptr %i.pl, align 8, !tbaa !219
  %i.pm = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.bu unwind label %bb.bv     ; 0 uses

bb.bu:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.pn = load ptr, ptr %1, align 8, !tbaa !154   ; 2 uses
  %i.po = icmp eq ptr %i.pn, %i.pi
  br i1 %i.po, label %_ZN4bzla6parser4smt26Parser10parse_rparEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bu
  %i.pp = load i64, ptr %i.pi, align 8, !tbaa !54
  %i.pq = add i64 %i.pp, 1
  call void @_ZdlPvm(ptr noundef %i.pn, i64 noundef %i.pq) #28
  br label %_ZN4bzla6parser4smt26Parser10parse_rparEv.exit

bb.bv:                                            ; preds = %._crit_edge.i.i.i
  %i.pr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.ps = load ptr, ptr %1, align 8, !tbaa !154   ; 2 uses
  %i.pt = icmp eq ptr %i.ps, %i.pi
  br i1 %i.pt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.bv
  %i.pu = load i64, ptr %i.pi, align 8, !tbaa !54
  %i.pv = add i64 %i.pu, 1
  call void @_ZdlPvm(ptr noundef %i.ps, i64 noundef %i.pv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %common.resume

_ZN4bzla6parser4smt26Parser10parse_rparEv.exit:   ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.bz

bb.bw:                                            ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISB_ISt10in_place_tSI_EESt16is_constructibleIS5_JSE_EESt14is_convertibleISE_S5_EEEbE4typeELb1EEEOSE_.exit
  %i.pw = landingpad { ptr, i32 }
          cleanup
  %i.px = load i8, ptr %i.nz, align 8, !tbaa !314, !range !211, !noundef !209
  %i.py = trunc nuw i8 %i.px to i1
  br i1 %i.py, label %bb.bx, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit148

bb.bx:                                            ; preds = %bb.bw
  store i8 0, ptr %i.nz, align 8, !tbaa !314
  %i.pz = load ptr, ptr %15, align 8, !tbaa !154  ; 2 uses
  %i.qa = icmp eq ptr %i.pz, %i.nm
  br i1 %i.qa, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i146: ; preds = %bb.bx
  %i.qb = load i64, ptr %i.nm, align 8, !tbaa !54
  %i.qc = add i64 %i.qb, 1
  call void @_ZdlPvm(ptr noundef %i.pz, i64 noundef %i.qc) #28
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit148

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit148: ; preds = %bb.bx, %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %bb.ca

bb.by:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 1528
  call void @_ZN4bzla9backtrack6vectorIPNS_6parser4smt211SymbolTable4NodeEE9push_backERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.qd, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @_ZN4bzla6parser4smt26Parser13print_successEv(ptr noundef nonnull align 8 dereferenceable(2056) %0)
  br label %bb.bz

bb.bz:                                            ; preds = %_ZN4bzla6parser4smt26Parser10parse_rparEv.exit, %_ZN4bzla6parser4smt26Parser12pop_node_argEb.exit, %bb.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %.013 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ], [ true, %bb.by ], [ false, %_ZN4bzla6parser4smt26Parser12pop_node_argEb.exit ], [ false, %_ZN4bzla6parser4smt26Parser10parse_rparEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  br label %bb.cb

bb.ca:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit148, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  %.pn17.pn = phi { ptr, i32 } [ %.pn17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %i.pw, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit148 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  br label %common.resume

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %.114 = phi i1 [ %.013, %bb.bz ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  ret i1 %.114
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4bzla6parser4smt26Parser26parse_command_define_constEv(ptr noundef nonnull align 8 dereferenceable(2056) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::optional", align 8     ; 5 uses
  %3 = alloca %"class.std::optional", align 8     ; 5 uses
  %4 = alloca %"class.std::optional", align 8     ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %13 = alloca %"class.bitwuzla::Sort", align 8   ; 9 uses
  %14 = alloca %"class.bitwuzla::Term", align 8   ; 10 uses
  %15 = alloca %"class.bitwuzla::Sort", align 8   ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %21 = alloca %"class.bitwuzla::Sort", align 8   ; 7 uses
  tail call void @_ZN4bzla6parser4smt26Parser10init_logicEv(ptr noundef nonnull align 8 dereferenceable(2056) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 20, ptr %i.a, align 8, !tbaa !164
  %i.c = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.b     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.c, ptr %5, align 8, !tbaa !154
  %i.d = load i64, ptr %i.a, align 8, !tbaa !164  ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.c, ptr noundef nonnull align 1 dereferenceable(20) @.str.37, i64 20, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !53
  %i.f = load ptr, ptr %5, align 8, !tbaa !154
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.h = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser12parse_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbbbNS1_5TokenE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %.noexc
  %i.i = load ptr, ptr %5, align 8, !tbaa !154    ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.b, align 8, !tbaa !54
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %i.h, label %bb.d, label %bb.df

bb.b:                                             ; preds = %.noexc.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.c:                                             ; preds = %.noexc
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %5, align 8, !tbaa !154    ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.c
  %i.q = load i64, ptr %i.b, align 8, !tbaa !54
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.b
  %.pn = phi { ptr, i32 } [ %i.m, %bb.b ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.n, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %common.resume

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 10 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !260  ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -112 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !244
  switch i8 %i.v, label %bb.e [
    i8 0, label %_ZNK4bzla6parser4smt26Parser13peek_node_argEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !261

bb.e:                                             ; preds = %bb.d
  %i.w = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.w, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @.str.202, ptr %i.x, align 8, !tbaa !264
  call void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.d
  %i.y = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.y, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @.str.201, ptr %i.z, align 8, !tbaa !264
  call void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29
  unreachable

_ZNK4bzla6parser4smt26Parser13peek_node_argEv.exit: ; preds = %bb.d
  %i.aa = getelementptr inbounds i8, ptr %i.t, i64 -128 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !270 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !311
  %.not = icmp eq i64 %i.ad, 0
  br i1 %.not, label %_ZN4bzla6parser4smt26Parser12pop_node_argEb.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK4bzla6parser4smt26Parser13peek_node_argEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.ae = load i8, ptr %i.u, align 8, !tbaa !244
  switch i8 %i.ae, label %bb.g [
    i8 0, label %_ZNK4bzla6parser4smt26Parser13peek_node_argEv.exit54
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i53
  ], !prof !261

bb.g:                                             ; preds = %bb.f
  %i.af = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.af, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @.str.202, ptr %i.ag, align 8, !tbaa !264
  call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i53:   ; preds = %bb.f
  %i.ah = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ah, align 8, !tbaa !33
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @.str.201, ptr %i.ai, align 8, !tbaa !264
  call void @__cxa_throw(ptr nonnull %i.ah, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29
  unreachable

_ZNK4bzla6parser4smt26Parser13peek_node_argEv.exit54: ; preds = %bb.f
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !270 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !537)
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !154, !noalias !537
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !53, !noalias !537 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 8 uses
  store ptr %i.ao, ptr %10, align 8, !tbaa !51, !alias.scope !538
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !53, !alias.scope !538
  store i8 0, ptr %i.ao, align 8, !tbaa !54, !alias.scope !538
  %i.aq = add i64 %i.an, 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.aq)
end_hunk_1
begin_hunk_2_@_ZN4bzla6parser4smt26Parser24parse_command_define_funEv:.noexc.i

bb.cb:                                            ; preds = %bb.ca
  br i1 %i.rc, label %bb.cc, label %.critedge

.loopexit.split-lp308.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt6vectorIN8bitwuzla4TermESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit, %bb.cy, %bb.cc, %bb.bn, %bb.ca, %.invoke, %bb.de, %bb.dc
  %lpad.loopexit.split-lp543 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cc:                                            ; preds = %bb.cb
  %i.rd = invoke noundef i32 @_ZN4bzla6parser4smt26Parser10next_tokenEb(ptr noundef nonnull align 8 dereferenceable(2056) %0, i1 noundef zeroext false)
          to label %.noexc256 unwind label %.loopexit.split-lp308.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc256:                                        ; preds = %bb.cc
  %.not.i248 = icmp eq i32 %i.rd, 4
  br i1 %.not.i248, label %_ZN4bzla6parser4smt26Parser10parse_rparEv.exit, label %._crit_edge.i.i.i249

._crit_edge.i.i.i249:                             ; preds = %.noexc256
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store ptr %i.nj, ptr %2, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.nj, ptr noundef nonnull align 1 dereferenceable(11) @.str.83, i64 11, i1 false)
  store i64 11, ptr %i.nk, align 8, !tbaa !53
  store i8 0, ptr %i.nl, align 1, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store i8 0, ptr %i.nm, align 8, !tbaa !219
  %i.re = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.cd unwind label %bb.ce     ; 0 uses

bb.cd:                                            ; preds = %._crit_edge.i.i.i249
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.rf = load ptr, ptr %2, align 8, !tbaa !154   ; 2 uses
  %i.rg = icmp eq ptr %i.rf, %i.nj
  br i1 %i.rg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i253: ; preds = %bb.cd
  %i.rh = load i64, ptr %i.nj, align 8, !tbaa !54
  %i.ri = add i64 %i.rh, 1
  call void @_ZdlPvm(ptr noundef %i.rf, i64 noundef %i.ri) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i254

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i254: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i253
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %_ZN4bzla6parser4smt26Parser10parse_rparEv.exit

bb.ce:                                            ; preds = %._crit_edge.i.i.i249
  %i.rj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.rk = load ptr, ptr %2, align 8, !tbaa !154   ; 2 uses
  %i.rl = icmp eq ptr %i.rk, %i.nj
  br i1 %i.rl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i250

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i250: ; preds = %bb.ce
  %i.rm = load i64, ptr %i.nj, align 8, !tbaa !54
  %i.rn = add i64 %i.rm, 1
  call void @_ZdlPvm(ptr noundef %i.rk, i64 noundef %i.rn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i251: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i250
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %.body

_ZN4bzla6parser4smt26Parser10parse_rparEv.exit:   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i254, %.noexc256
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #30
  %i.ro = load ptr, ptr %i.nn, align 8, !tbaa !246, !nonnull !209, !align !210
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #30
  store ptr %i.no, ptr %29, align 8, !tbaa !51
  %i.rp = load ptr, ptr %i.pb, align 8, !tbaa !154 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !53 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.rr, ptr %i.a, align 8, !tbaa !164
  %i.rs = icmp ugt i64 %i.rr, 15
  br i1 %i.rs, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN4bzla6parser4smt26Parser10parse_rparEv.exit
  %i.rt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc257 unwind label %bb.cz ; 2 uses

.noexc257:                                        ; preds = %.noexc.i.i.i.i.i.i.i
  store ptr %i.rt, ptr %29, align 8, !tbaa !154
  %i.ru = load i64, ptr %i.a, align 8, !tbaa !164
  store i64 %i.ru, ptr %i.no, align 8, !tbaa !54
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc257, %_ZN4bzla6parser4smt26Parser10parse_rparEv.exit
  %i.rv = phi ptr [ %i.rt, %.noexc257 ], [ %i.no, %_ZN4bzla6parser4smt26Parser10parse_rparEv.exit ] ; 2 uses
  switch i64 %i.rr, label %bb.cg [
    i64 1, label %bb.cf
    i64 0, label %bb.ch
  ]

bb.cf:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.rw = load i8, ptr %i.rp, align 1, !tbaa !54
  store i8 %i.rw, ptr %i.rv, align 1, !tbaa !54
  br label %bb.ch

bb.cg:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rv, ptr align 1 %i.rp, i64 %i.rr, i1 false)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %._crit_edge.i.i.i.i.i.i.i.i
  %i.rx = load i64, ptr %i.a, align 8, !tbaa !164 ; 2 uses
  store i64 %i.rx, ptr %i.np, align 8, !tbaa !53
  %i.ry = load ptr, ptr %29, align 8, !tbaa !154
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.rx
  store i8 0, ptr %i.rz, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  store i8 1, ptr %i.nq, align 8, !tbaa !314
  invoke void @_ZN8bitwuzla11TermManager6mk_varERKNS_4SortERKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Term") align 8 %28, ptr noundef nonnull align 8 dereferenceable(8) %i.ro, ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(40) %29)
          to label %bb.ci unwind label %bb.da

bb.ci:                                            ; preds = %bb.ch
  %i.sa = getelementptr inbounds nuw i8, ptr %i.pa, i64 64 ; 3 uses
  %i.sb = load ptr, ptr %28, align 8, !tbaa !258
  store ptr %i.sb, ptr %i.sa, align 8, !tbaa !258
  %i.sc = getelementptr inbounds nuw i8, ptr %i.pa, i64 72 ; 4 uses
  %i.sd = load ptr, ptr %i.nr, align 8, !tbaa !253 ; 4 uses
  %i.se = load ptr, ptr %i.sc, align 8, !tbaa !253 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.sd, %i.se
  br i1 %.not.i.i.i.i, label %_ZN8bitwuzla4TermaSERKS0_.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %.not7.i.i.i.i = icmp eq ptr %i.sd, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sd, i64 8 ; 3 uses
  %i.sg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i = icmp eq i8 %i.sg, 0
  br i1 %.not.i.i.i.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.sh = load i32, ptr %i.sf, align 4, !tbaa !254
  %i.si = add nsw i32 %i.sh, 1
  store i32 %i.si, ptr %i.sf, align 4, !tbaa !254
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.cm:                                            ; preds = %bb.ck
  %i.sj = atomicrmw volatile add ptr %i.sf, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.sc, align 8, !tbaa !253
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.cm, %bb.cl, %bb.cj
  %i.sk = phi ptr [ %i.se, %bb.cj ], [ %i.se, %bb.cl ], [ %.pr.pre.i.i.i.i, %bb.cm ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.sk, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 8 ; 4 uses
  %i.sm = load atomic i64, ptr %i.sl acquire, align 8 ; 2 uses
  %i.sn = icmp eq i64 %i.sm, 4294967297
  %i.so = trunc i64 %i.sm to i32                  ; 2 uses
  br i1 %i.sn, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  store i32 0, ptr %i.sl, align 8, !tbaa !248
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sk, i64 12
  store i32 0, ptr %i.sp, align 4, !tbaa !249
  %i.sq = load ptr, ptr %i.sk, align 8, !tbaa !33
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  %i.ss = load ptr, ptr %i.sr, align 8
  call void %i.ss(ptr noundef nonnull align 8 dereferenceable(16) %i.sk) #30, !inline_history !5
  %i.st = load ptr, ptr %i.sk, align 8, !tbaa !33
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 24
  %i.sv = load ptr, ptr %i.su, align 8
  call void %i.sv(ptr noundef nonnull align 8 dereferenceable(16) %i.sk) #30, !inline_history !5
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.cp:                                            ; preds = %bb.cn
  %i.sw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i9.i.i.i.i = icmp eq i8 %i.sw, 0
  br i1 %.not.i9.i.i.i.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.sx = add nsw i32 %i.so, -1
  store i32 %i.sx, ptr %i.sl, align 8, !tbaa !254
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.cr:                                            ; preds = %bb.cp
  %i.sy = atomicrmw volatile add ptr %i.sl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.cr, %bb.cq
  %.0.i.i.i.i.i.i = phi i32 [ %i.so, %bb.cq ], [ %i.sy, %bb.cr ]
  %i.sz = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.sz, label %bb.cs, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !255

bb.cs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.sk) #30
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.cs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.co, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.sd, ptr %i.sc, align 8, !tbaa !253
  br label %_ZN8bitwuzla4TermaSERKS0_.exit

_ZN8bitwuzla4TermaSERKS0_.exit:                   ; preds = %bb.ci, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %28) #30
  %i.ta = load i8, ptr %i.nq, align 8, !tbaa !314, !range !211, !noundef !209
  %i.tb = trunc nuw i8 %i.ta to i1
  br i1 %i.tb, label %bb.ct, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.ct:                                            ; preds = %_ZN8bitwuzla4TermaSERKS0_.exit
  store i8 0, ptr %i.nq, align 8, !tbaa !314
  %i.tc = load ptr, ptr %29, align 8, !tbaa !154  ; 2 uses
  %i.td = icmp eq ptr %i.tc, %i.no
  br i1 %i.td, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.ct
  %i.te = load i64, ptr %i.no, align 8, !tbaa !54
  %i.tf = add i64 %i.te, 1
  call void @_ZdlPvm(ptr noundef %i.tc, i64 noundef %i.tf) #28
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.ct, %_ZN8bitwuzla4TermaSERKS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #30
  %i.tg = load ptr, ptr %i.ns, align 8, !tbaa !278 ; 5 uses
  %i.th = load ptr, ptr %i.nt, align 8, !tbaa !279
  %.not.i258 = icmp eq ptr %i.tg, %i.th
  br i1 %.not.i258, label %bb.cy, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.ti = load ptr, ptr %i.sc, align 8, !tbaa !253 ; 2 uses
  %i.tj = load <2 x ptr>, ptr %i.sa, align 8, !tbaa !265
  store <2 x ptr> %i.tj, ptr %i.tg, align 8, !tbaa !265
  %.not.i.i.i.i.i259 = icmp eq ptr %i.ti, null
  br i1 %.not.i.i.i.i.i259, label %_ZN8bitwuzla4TermC2ERKS0_.exit.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ti, i64 8 ; 3 uses
  %i.tl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i.i = icmp eq i8 %i.tl, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.tm = load i32, ptr %i.tk, align 4, !tbaa !254
  %i.tn = add nsw i32 %i.tm, 1
  store i32 %i.tn, ptr %i.tk, align 4, !tbaa !254
  br label %_ZN8bitwuzla4TermC2ERKS0_.exit.i

bb.cx:                                            ; preds = %bb.cv
  %i.to = atomicrmw volatile add ptr %i.tk, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i260 = load ptr, ptr %i.ns, align 8, !tbaa !278
  br label %_ZN8bitwuzla4TermC2ERKS0_.exit.i

_ZN8bitwuzla4TermC2ERKS0_.exit.i:                 ; preds = %bb.cx, %bb.cw, %bb.cu
  %i.tp = phi ptr [ %i.tg, %bb.cu ], [ %i.tg, %bb.cw ], [ %.pre.i260, %bb.cx ]
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  store ptr %i.tq, ptr %i.ns, align 8, !tbaa !278
  br label %_ZNSt6vectorIN8bitwuzla4TermESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit.backedge

bb.cy:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  invoke void @_ZNSt6vectorIN8bitwuzla4TermESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr %i.tg, ptr noundef nonnull align 8 dereferenceable(16) %i.sa)
          to label %_ZNSt6vectorIN8bitwuzla4TermESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit.backedge unwind label %.loopexit.split-lp308.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIN8bitwuzla4TermESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit.backedge: ; preds = %bb.cy, %_ZN8bitwuzla4TermC2ERKS0_.exit.i
  br label %_ZNSt6vectorIN8bitwuzla4TermESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit, !llvm.loop !564

bb.cz:                                            ; preds = %.noexc.i.i.i.i.i.i.i
  %i.tr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit264

bb.da:                                            ; preds = %bb.ch
  %i.ts = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.tt = load i8, ptr %i.nq, align 8, !tbaa !314, !range !211, !noundef !209
  %i.tu = trunc nuw i8 %i.tt to i1
  br i1 %i.tu, label %bb.db, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit264

bb.db:                                            ; preds = %bb.da
  store i8 0, ptr %i.nq, align 8, !tbaa !314
  %i.tv = load ptr, ptr %29, align 8, !tbaa !154  ; 2 uses
  %i.tw = icmp eq ptr %i.tv, %i.no
  br i1 %i.tw, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit264, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i262

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i262: ; preds = %bb.db
  %i.tx = load i64, ptr %i.no, align 8, !tbaa !54
  %i.ty = add i64 %i.tx, 1
  call void @_ZdlPvm(ptr noundef %i.tv, i64 noundef %i.ty) #28
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit264

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit264: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i262, %bb.da, %bb.cz
  %.pn64 = phi { ptr, i32 } [ %i.tr, %bb.cz ], [ %i.ts, %bb.da ], [ %i.ts, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i262 ], [ %i.ts, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #30
  br label %.body

bb.dc:                                            ; preds = %bb.be
  %i.tz = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser10parse_sortERN8bitwuzla4SortEbNS1_5TokenE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(16) %17, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.dd unwind label %.loopexit.split-lp308.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dd:                                            ; preds = %bb.dc
  br i1 %i.tz, label %bb.de, label %.critedge

bb.de:                                            ; preds = %bb.dd
  %i.ua = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser10parse_termEbNS1_5TokenE(ptr noundef nonnull align 8 dereferenceable(2056) %0, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.df unwind label %.loopexit.split-lp308.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.df:                                            ; preds = %bb.de
  br i1 %i.ua, label %bb.dg, label %.critedge

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #30
  invoke void @_ZN4bzla6parser4smt26Parser12pop_term_argEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Term") align 8 %30, ptr noundef nonnull align 8 dereferenceable(2056) %0)
          to label %bb.dh unwind label %bb.ds

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #30
  invoke void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %31, ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %bb.di unwind label %bb.dt

bb.di:                                            ; preds = %bb.dh
  %i.ub = invoke noundef zeroext i1 @_ZN8bitwuzlaneERKNS_4SortES2_(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %bb.dj unwind label %bb.du

bb.dj:                                            ; preds = %bb.di
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %31) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  br i1 %i.ub, label %bb.dk, label %bb.ee

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #30
  invoke void @_ZNK8bitwuzla4Sort3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %bb.dl unwind label %bb.dw

bb.dl:                                            ; preds = %bb.dk
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %34, ptr noundef nonnull @.str.38, ptr noundef nonnull align 8 dereferenceable(32) %35)
          to label %bb.dm unwind label %bb.dx

bb.dm:                                            ; preds = %bb.dl
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @.str.39)
          to label %bb.dn unwind label %bb.dy

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #30
  invoke void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %37, ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %bb.do unwind label %bb.dz

bb.do:                                            ; preds = %bb.dn
  invoke void @_ZNK8bitwuzla4Sort3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %36, ptr noundef nonnull align 8 dereferenceable(16) %37)
          to label %bb.dp unwind label %bb.ea

bb.dp:                                            ; preds = %bb.do
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %32, ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %bb.dq unwind label %bb.eb

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.uc = load ptr, ptr %i.t, align 8, !tbaa !260
  %i.ud = getelementptr inbounds i8, ptr %i.uc, i64 -144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ud, i64 16, i1 false), !tbaa.struct !241
  %i.ue = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 1, ptr %i.ue, align 8, !tbaa !219
  %i.uf = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.dr unwind label %bb.ec     ; 0 uses

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.ug = load ptr, ptr %32, align 8, !tbaa !154  ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.ui = icmp eq ptr %i.ug, %i.uh
  br i1 %i.ui, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267: ; preds = %bb.dr
  %i.uj = load i64, ptr %i.uh, align 8, !tbaa !54
  %i.uk = add i64 %i.uj, 1
  call void @_ZdlPvm(ptr noundef %i.ug, i64 noundef %i.uk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269: ; preds = %bb.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267
  %i.ul = load ptr, ptr %36, align 8, !tbaa !154  ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.un = icmp eq ptr %i.ul, %i.um
  br i1 %i.un, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269
  %i.uo = load i64, ptr %i.um, align 8, !tbaa !54
  %i.up = add i64 %i.uo, 1
  call void @_ZdlPvm(ptr noundef %i.ul, i64 noundef %i.up) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %37) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #30
  %i.uq = load ptr, ptr %33, align 8, !tbaa !154  ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.us = icmp eq ptr %i.uq, %i.ur
  br i1 %i.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272
  %i.ut = load i64, ptr %i.ur, align 8, !tbaa !54
  %i.uu = add i64 %i.ut, 1
  call void @_ZdlPvm(ptr noundef %i.uq, i64 noundef %i.uu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273
  %i.uv = load ptr, ptr %34, align 8, !tbaa !154  ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.ux = icmp eq ptr %i.uv, %i.uw
  br i1 %i.ux, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275
  %i.uy = load i64, ptr %i.uw, align 8, !tbaa !54
  %i.uz = add i64 %i.uy, 1
  call void @_ZdlPvm(ptr noundef %i.uv, i64 noundef %i.uz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276
  %i.va = load ptr, ptr %35, align 8, !tbaa !154  ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.vc = icmp eq ptr %i.va, %i.vb
  br i1 %i.vc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278
  %i.vd = load i64, ptr %i.vb, align 8, !tbaa !54
  %i.ve = add i64 %i.vd, 1
  call void @_ZdlPvm(ptr noundef %i.va, i64 noundef %i.ve) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  br label %bb.es

bb.ds:                                            ; preds = %bb.dg
  %i.vf = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

bb.dt:                                            ; preds = %bb.dh
  %i.vg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.du:                                            ; preds = %bb.di
  %i.vh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %31) #30
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.pn72 = phi { ptr, i32 } [ %i.vh, %bb.du ], [ %i.vg, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  br label %.loopexit.split-lp

bb.dw:                                            ; preds = %bb.dk
  %i.vi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296

bb.dx:                                            ; preds = %bb.dl
  %i.vj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293

bb.dy:                                            ; preds = %bb.dm
  %i.vk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290

bb.dz:                                            ; preds = %bb.dn
  %i.vl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed
end_hunk_2
begin_hunk_3_@_ZN4bzla6parser4smt26Parser15parse_open_termENS1_5TokenE:bb.a
  %i.ex = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ex, align 8, !tbaa !33
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store ptr @.str.202, ptr %i.ey, align 8, !tbaa !264
  call void @__cxa_throw(ptr nonnull %i.ex, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i131:  ; preds = %bb.aa
  %i.ez = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ez, align 8, !tbaa !33
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store ptr @.str.201, ptr %i.fa, align 8, !tbaa !264
  call void @__cxa_throw(ptr nonnull %i.ez, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29
  unreachable

_ZNK4bzla6parser4smt26Parser13peek_node_argEv.exit132: ; preds = %bb.aa
  %i.fb = load ptr, ptr %i.do, align 8, !tbaa !153
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %i.fd = getelementptr inbounds i8, ptr %i.eu, i64 -128
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !270
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ff, ptr noundef nonnull align 8 dereferenceable(16) %i.fc, i64 16, i1 false), !tbaa.struct !241
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @_ZN8bitwuzla4SortC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %8)
  %i.fg = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser10parse_sortERN8bitwuzla4SortEbNS1_5TokenE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(16) %8, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.ac unwind label %bb.ay

bb.ac:                                            ; preds = %_ZNK4bzla6parser4smt26Parser13peek_node_argEv.exit132
  br i1 %i.fg, label %bb.ad, label %bb.ax

bb.ad:                                            ; preds = %bb.ac
  %i.fh = load ptr, ptr %i.ds, align 8, !tbaa !260 ; 2 uses
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 -112
  %i.fj = load i8, ptr %i.fi, align 8, !tbaa !244
  switch i8 %i.fj, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i133.invoke [
    i8 0, label %bb.ae
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i133
  ], !prof !261

_ZSt26__throw_bad_variant_accessb.exit.i.i.i133:  ; preds = %bb.ad
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i133.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i133.invoke: ; preds = %bb.ad, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i133
  %.str.202.sink = phi ptr [ @.str.201, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i133 ], [ @.str.202, %bb.ad ]
  %i.fk = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.fk, align 8, !tbaa !33
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr %.str.202.sink, ptr %i.fl, align 8, !tbaa !264
  invoke void @__cxa_throw(ptr nonnull %i.fk, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i133.cont unwind label %bb.ay

_ZSt26__throw_bad_variant_accessb.exit.i.i.i133.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i133.invoke
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.fm = getelementptr inbounds i8, ptr %i.fh, i64 -128
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !270 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !246, !nonnull !209, !align !210
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.fr, ptr %10, align 8, !tbaa !51
  %i.fs = load ptr, ptr %i.fq, align 8, !tbaa !154 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !53 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store i64 %i.fu, ptr %i.d, align 8, !tbaa !164
  %i.fv = icmp ugt i64 %i.fu, 15
  br i1 %i.fv, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.ae
  %i.fw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc137 unwind label %bb.az ; 2 uses

.noexc137:                                        ; preds = %.noexc.i.i.i.i.i.i.i
  store ptr %i.fw, ptr %10, align 8, !tbaa !154
  %i.fx = load i64, ptr %i.d, align 8, !tbaa !164
  store i64 %i.fx, ptr %i.fr, align 8, !tbaa !54
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc137, %bb.ae
  %i.fy = phi ptr [ %i.fw, %.noexc137 ], [ %i.fr, %bb.ae ] ; 2 uses
  switch i64 %i.fu, label %bb.ag [
    i64 1, label %bb.af
    i64 0, label %bb.ah
  ]

bb.af:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.fz = load i8, ptr %i.fs, align 1, !tbaa !54
  store i8 %i.fz, ptr %i.fy, align 1, !tbaa !54
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fy, ptr align 1 %i.fs, i64 %i.fu, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %._crit_edge.i.i.i.i.i.i.i.i
  %i.ga = load i64, ptr %i.d, align 8, !tbaa !164 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.ga, ptr %i.gb, align 8, !tbaa !53
  %i.gc = load ptr, ptr %10, align 8, !tbaa !154
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.ga
  store i8 0, ptr %i.gd, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  %i.ge = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 5 uses
  store i8 1, ptr %i.ge, align 8, !tbaa !314
  invoke void @_ZN8bitwuzla11TermManager6mk_varERKNS_4SortERKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Term") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.fp, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %bb.ai unwind label %bb.ba

bb.ai:                                            ; preds = %bb.ah
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fn, i64 64 ; 2 uses
  %i.gg = load ptr, ptr %9, align 8, !tbaa !258
  store ptr %i.gg, ptr %i.gf, align 8, !tbaa !258
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fn, i64 72 ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !253 ; 4 uses
  %i.gk = load ptr, ptr %i.gh, align 8, !tbaa !253 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.gj, %i.gk
  br i1 %.not.i.i.i.i, label %_ZN8bitwuzla4TermaSERKS0_.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not7.i.i.i.i = icmp eq ptr %i.gj, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 3 uses
  %i.gm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i = icmp eq i8 %i.gm, 0
  br i1 %.not.i.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gn = load i32, ptr %i.gl, align 4, !tbaa !254
  %i.go = add nsw i32 %i.gn, 1
  store i32 %i.go, ptr %i.gl, align 4, !tbaa !254
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.gp = atomicrmw volatile add ptr %i.gl, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.gh, align 8, !tbaa !253
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.am, %bb.al, %bb.aj
  %i.gq = phi ptr [ %i.gk, %bb.aj ], [ %i.gk, %bb.al ], [ %.pr.pre.i.i.i.i, %bb.am ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.gq, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 4 uses
  %i.gs = load atomic i64, ptr %i.gr acquire, align 8 ; 2 uses
  %i.gt = icmp eq i64 %i.gs, 4294967297
  %i.gu = trunc i64 %i.gs to i32                  ; 2 uses
  br i1 %i.gt, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.gr, align 8, !tbaa !248
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 12
  store i32 0, ptr %i.gv, align 4, !tbaa !249
  %i.gw = load ptr, ptr %i.gq, align 8, !tbaa !33
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #30, !inline_history !5
  %i.gz = load ptr, ptr %i.gq, align 8, !tbaa !33
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #30, !inline_history !5
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.hc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i9.i.i.i.i = icmp eq i8 %i.hc, 0
  br i1 %.not.i9.i.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hd = add nsw i32 %i.gu, -1
  store i32 %i.hd, ptr %i.gr, align 8, !tbaa !254
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.he = atomicrmw volatile add ptr %i.gr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i.i.i = phi i32 [ %i.gu, %bb.aq ], [ %i.he, %bb.ar ]
  %i.hf = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.hf, label %bb.as, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !255

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #30
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ao, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.gj, ptr %i.gh, align 8, !tbaa !253
  br label %_ZN8bitwuzla4TermaSERKS0_.exit

_ZN8bitwuzla4TermaSERKS0_.exit:                   ; preds = %bb.ai, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #30
  %i.hg = load i8, ptr %i.ge, align 8, !tbaa !314, !range !211, !noundef !209
  %i.hh = trunc nuw i8 %i.hg to i1
  br i1 %i.hh, label %bb.at, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.at:                                            ; preds = %_ZN8bitwuzla4TermaSERKS0_.exit
  store i8 0, ptr %i.ge, align 8, !tbaa !314
  %i.hi = load ptr, ptr %10, align 8, !tbaa !154  ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.fr
  br i1 %i.hj, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.at
  %i.hk = load i64, ptr %i.fr, align 8, !tbaa !54
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #28
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.at, %_ZN8bitwuzla4TermaSERKS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.hm = load ptr, ptr %i.ds, align 8, !tbaa !260 ; 2 uses
  %i.hn = getelementptr inbounds i8, ptr %i.hm, i64 -152
  %i.ho = load ptr, ptr %i.gh, align 8, !tbaa !253 ; 2 uses
  %i.hp = load <2 x ptr>, ptr %i.gf, align 8, !tbaa !265
  store <2 x ptr> %i.hp, ptr %11, align 16, !tbaa !265
  %.not.i.i.i.i138 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i.i138, label %.thread242, label %bb.au

bb.au:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 3 uses
  %i.hr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i139 = icmp eq i8 %i.hr, 0
  br i1 %.not.i.i.i.i.i139, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hs = load i32, ptr %i.hq, align 4, !tbaa !254
  %i.ht = add nsw i32 %i.hs, 1
  store i32 %i.ht, ptr %i.hq, align 4, !tbaa !254
  br label %.thread242

bb.aw:                                            ; preds = %bb.au
  %i.hu = atomicrmw volatile add ptr %i.hq, i32 1 acq_rel, align 4 ; 0 uses
  br label %.thread242

.thread242:                                       ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %bb.av, %bb.aw
  store i32 8, ptr %i.hn, align 8, !tbaa !240
  %i.hv = getelementptr inbounds i8, ptr %i.hm, i64 -128
  %i.hw = call noundef nonnull align 8 dereferenceable(17) ptr @_ZNSt7variantIJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEEaSIRS8_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS5_S7_S8_EE4typeEE18is_constructible_vISH_SE_E15is_assignable_vIRSH_SE_EERS9_E4typeESF_(ptr noundef nonnull align 8 dereferenceable(17) %i.hv, ptr noundef nonnull align 8 dereferenceable(16) %11) #30 ; 0 uses
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #30
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.dq

bb.ax:                                            ; preds = %bb.ac
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.dr

bb.ay:                                            ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i133.invoke, %_ZNK4bzla6parser4smt26Parser13peek_node_argEv.exit132
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.az:                                            ; preds = %.noexc.i.i.i.i.i.i.i
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit142

bb.ba:                                            ; preds = %bb.ah
  %i.hz = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ia = load i8, ptr %i.ge, align 8, !tbaa !314, !range !211, !noundef !209
  %i.ib = trunc nuw i8 %i.ia to i1
  br i1 %i.ib, label %bb.bb, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit142

bb.bb:                                            ; preds = %bb.ba
  store i8 0, ptr %i.ge, align 8, !tbaa !314
  %i.ic = load ptr, ptr %10, align 8, !tbaa !154  ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.fr
  br i1 %i.id, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i140: ; preds = %bb.bb
  %i.ie = load i64, ptr %i.fr, align 8, !tbaa !54
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.if) #28
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit142

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit142: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i140, %bb.ba, %bb.az
  %.pn88 = phi { ptr, i32 } [ %i.hy, %bb.az ], [ %i.hz, %bb.ba ], [ %i.hz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i140 ], [ %i.hz, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ay, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit142
  %.pn88.pn.pn = phi { ptr, i32 } [ %i.hx, %bb.ay ], [ %.pn88, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit142 ]
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %common.resume

bb.bd:                                            ; preds = %bb.a
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 1649
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !198, !range !211, !noundef !209
  %i.ii = trunc nuw i8 %i.ih to i1
  br i1 %i.ii, label %.noexc.i144, label %bb.bh

.noexc.i144:                                      ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.ij = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.ij, ptr %12, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i64 25, ptr %i.c, align 8, !tbaa !164
  %i.ik = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc145 unwind label %bb.bf ; 2 uses

.noexc145:                                        ; preds = %.noexc.i144
  store ptr %i.ik, ptr %12, align 8, !tbaa !154
  %i.il = load i64, ptr %i.c, align 8, !tbaa !164 ; 3 uses
  store i64 %i.il, ptr %i.ij, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.ik, ptr noundef nonnull align 1 dereferenceable(25) @.str.85, i64 25, i1 false)
  %i.im = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.il, ptr %i.im, align 8, !tbaa !53
  %i.in = load ptr, ptr %12, align 8, !tbaa !154
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.il
  store i8 0, ptr %i.io, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.ip = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i8 0, ptr %i.ip, align 8, !tbaa !219
  %i.iq = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.be unwind label %bb.bg     ; 0 uses

bb.be:                                            ; preds = %.noexc145
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %i.ir = load ptr, ptr %12, align 8, !tbaa !154  ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.ij
  br i1 %i.is, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %bb.be
  %i.it = load i64, ptr %i.ij, align 8, !tbaa !54
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.dr

bb.bf:                                            ; preds = %.noexc.i144
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

bb.bg:                                            ; preds = %.noexc145
  %i.iw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %i.ix = load ptr, ptr %12, align 8, !tbaa !154  ; 2 uses
  %i.iy = icmp eq ptr %i.ix, %i.ij
  br i1 %i.iy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %bb.bg
  %i.iz = load i64, ptr %i.ij, align 8, !tbaa !54
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.ja) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150, %bb.bf
  %.pn84 = phi { ptr, i32 } [ %i.iv, %bb.bf ], [ %i.iw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150 ], [ %i.iw, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %common.resume

bb.bh:                                            ; preds = %bb.bd
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.jc = load i8, ptr %i.jb, align 8, !tbaa !197, !range !211, !noundef !209
  %i.jd = trunc nuw i8 %i.jc to i1
  br i1 %i.jd, label %.noexc.i154, label %bb.bl

.noexc.i154:                                      ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.je = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.je, ptr %14, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 24, ptr %i.b, align 8, !tbaa !164
  %i.jf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc155 unwind label %bb.bj ; 2 uses

.noexc155:                                        ; preds = %.noexc.i154
  store ptr %i.jf, ptr %14, align 8, !tbaa !154
  %i.jg = load i64, ptr %i.b, align 8, !tbaa !164 ; 3 uses
  store i64 %i.jg, ptr %i.je, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.jf, ptr noundef nonnull align 1 dereferenceable(24) @.str.86, i64 24, i1 false)
  %i.jh = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.jg, ptr %i.jh, align 8, !tbaa !53
  %i.ji = load ptr, ptr %14, align 8, !tbaa !154
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.jg
  store i8 0, ptr %i.jj, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.jk = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i8 0, ptr %i.jk, align 8, !tbaa !219
  %i.jl = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.bi unwind label %bb.bk     ; 0 uses

bb.bi:                                            ; preds = %.noexc155
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  %i.jm = load ptr, ptr %14, align 8, !tbaa !154  ; 2 uses
  %i.jn = icmp eq ptr %i.jm, %i.je
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157: ; preds = %bb.bi
  %i.jo = load i64, ptr %i.je, align 8, !tbaa !54
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %bb.dr

bb.bj:                                            ; preds = %.noexc.i154
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

bb.bk:                                            ; preds = %.noexc155
  %i.jr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  %i.js = load ptr, ptr %14, align 8, !tbaa !154  ; 2 uses
  %i.jt = icmp eq ptr %i.js, %i.je
  br i1 %i.jt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %bb.bk
  %i.ju = load i64, ptr %i.je, align 8, !tbaa !54
  %i.jv = add i64 %i.ju, 1
  call void @_ZdlPvm(ptr noundef %i.js, i64 noundef %i.jv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160, %bb.bj
  %.pn82 = phi { ptr, i32 } [ %i.jq, %bb.bj ], [ %i.jr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160 ], [ %i.jr, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %common.resume

bb.bl:                                            ; preds = %bb.bh
  switch i32 %1, label %bb.ci [
    i32 2065, label %.noexc.i164
    i32 6, label %bb.cg
  ]

.noexc.i164:                                      ; preds = %bb.bl
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 1713
  store i8 0, ptr %i.jw, align 1, !tbaa !199
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 1720
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !146
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !153
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 32
  %i.kc = tail call noundef nonnull align 8 dereferenceable(145) ptr @_ZN4bzla6parser4smt26Parser9push_itemIPNS1_11SymbolTable4NodeEEERNS2_10ParsedItemENS1_5TokenET_RKNS1_5Lexer10CoordinateE(ptr noundef nonnull align 8 dereferenceable(2056) %0, i32 noundef 5, ptr noundef %i.jy, ptr noundef nonnull align 8 dereferenceable(16) %i.kb) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.kd = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.kd, ptr %16, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 28, ptr %i.a, align 8, !tbaa !164
  %i.ke = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc165 unwind label %bb.bn ; 2 uses

.noexc165:                                        ; preds = %.noexc.i164
  store ptr %i.ke, ptr %16, align 8, !tbaa !154
  %i.kf = load i64, ptr %i.a, align 8, !tbaa !164 ; 3 uses
  store i64 %i.kf, ptr %i.kd, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.ke, ptr noundef nonnull align 1 dereferenceable(28) @.str.87, i64 28, i1 false)
  %i.kg = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.kf, ptr %i.kg, align 8, !tbaa !53
  %i.kh = load ptr, ptr %16, align 8, !tbaa !154
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.kf
  store i8 0, ptr %i.ki, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
end_hunk_3
begin_hunk_4_@_ZN4bzla6parser4smt26Parser18parse_open_term_asEv:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.es = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %i.eg, i64 noundef %i.eh)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.af ; 0 uses

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread75
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eu = load ptr, ptr %14, align 8, !tbaa !154, !alias.scope !732 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.ei
  br i1 %i.ev, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.af
  %i.ew = load i64, ptr %i.ei, align 8, !tbaa !54, !alias.scope !732
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %i.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ %.pn23.pn, %.body ], [ %i.et, %bb.af ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !733)
  %i.ey = load i64, ptr %i.ej, align 8, !tbaa !53, !noalias !733
  %i.ez = icmp eq i64 %i.ey, 4611686018427387903
  br i1 %i.ez, label %bb.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.ag:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.199) #29
          to label %.noexc53 unwind label %bb.ak

.noexc53:                                         ; preds = %bb.ag
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.fa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %.noexc54 unwind label %bb.ak  ; 6 uses

.noexc54:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.fb = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.fb, ptr %13, align 8, !tbaa !51, !alias.scope !733
  %i.fc = load ptr, ptr %i.fa, align 8, !tbaa !154 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 5 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %bb.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

bb.ah:                                            ; preds = %.noexc54
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !53 ; 3 uses
  %i.fh = icmp ult i64 %i.fg, 16
  call void @llvm.assume(i1 %i.fh)
  %i.fi = add nuw nsw i64 %i.fg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fb, ptr noundef nonnull align 8 dereferenceable(1) %i.fd, i64 %i.fi, i1 false)
  br label %bb.ai

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %.noexc54
  store ptr %i.fc, ptr %13, align 8, !tbaa !154, !alias.scope !733
  %i.fj = load i64, ptr %i.fd, align 8, !tbaa !54
  store i64 %i.fj, ptr %i.fb, align 8, !tbaa !54, !alias.scope !733
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !53
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52, %bb.ah
  %i.fk = phi i64 [ %i.fg, %bb.ah ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ]
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.fk, ptr %i.fm, align 8, !tbaa !53, !alias.scope !733
  store ptr %i.fd, ptr %i.fa, align 8, !tbaa !154
  store i64 0, ptr %i.fl, align 8, !tbaa !53
  store i8 0, ptr %i.fd, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.fn = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i8 0, ptr %i.fn, align 8, !tbaa !219
  %i.fo = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.aj unwind label %bb.al     ; 0 uses

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  %i.fp = load ptr, ptr %13, align 8, !tbaa !154  ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.fb
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.aj
  %i.fr = load i64, ptr %i.fb, align 8, !tbaa !54
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  %i.ft = load ptr, ptr %14, align 8, !tbaa !154  ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.ei
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.fv = load i64, ptr %i.ei, align 8, !tbaa !54
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit.thread

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.ag
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

bb.al:                                            ; preds = %bb.ai
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  %i.fz = load ptr, ptr %13, align 8, !tbaa !154  ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.fb
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.al
  %i.gb = load i64, ptr %i.fb, align 8, !tbaa !54
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.fx, %bb.ak ], [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ], [ %i.fy, %bb.al ]
  %i.gd = load ptr, ptr %14, align 8, !tbaa !154  ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.ei
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.gf = load i64, ptr %i.ei, align 8, !tbaa !54
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %common.resume

_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit.thread: ; preds = %bb.c, %bb.b, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.2 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ], [ %.0, %bb.ad ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.2
}

declare noundef zeroext i1 @_ZNK8bitwuzla4Sort8is_arrayEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt6vectorIN4bzla6parser4smt26Parser10ParsedItemESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !260    ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !260  ; 4 uses
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %_ZNSt6vectorIN4bzla6parser4smt26Parser10ParsedItemESaIS4_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS4_S6_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZNSt6vectorIN4bzla6parser4smt26Parser10ParsedItemESaIS4_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS4_S6_EE.exit

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.b
  %i.m = udiv exact i64 %i.k, 152
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.e, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %i.f, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(145) ptr @_ZN4bzla6parser4smt26Parser10ParsedItemaSEOS3_(ptr noundef nonnull align 8 dereferenceable(145) %.0811.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(145) %.0910.i.i.i.i.i.i) #30 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 152
  %i.p = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 152
  %i.q = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.r = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.r, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4bzla6parser4smt26Parser10ParsedItemESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit.i, !llvm.loop !18

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4bzla6parser4smt26Parser10ParsedItemESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !184
  br label %_ZNSt6vectorIN4bzla6parser4smt26Parser10ParsedItemESaIS4_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS4_S6_EE.exit

_ZNSt6vectorIN4bzla6parser4smt26Parser10ParsedItemESaIS4_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS4_S6_EE.exit: ; preds = %bb.a, %bb.b, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4bzla6parser4smt26Parser10ParsedItemESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit.i
  %i.s = phi ptr [ %.pre.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4bzla6parser4smt26Parser10ParsedItemESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit.i ], [ %i.h, %bb.b ], [ %i.h, %bb.a ]
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -152 ; 2 uses
  store ptr %i.t, ptr %i.g, align 8, !tbaa !184
  tail call void @_ZN4bzla6parser4smt26Parser10ParsedItemD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %i.t) #30
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4bzla6parser4smt26Parser23parse_open_term_indexedEv(ptr noundef nonnull align 8 dereferenceable(2056) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.bitwuzla::Term", align 16   ; 11 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::optional", align 8     ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::optional", align 8     ; 4 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::optional", align 8     ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::optional", align 8    ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %16 = alloca %"class.std::optional", align 8    ; 5 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::optional", align 8    ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %25 = alloca %"class.std::optional", align 8    ; 5 uses
  %26 = alloca %"class.bitwuzla::Term", align 8   ; 14 uses
  %27 = alloca %"class.bitwuzla::Sort", align 8   ; 11 uses
  %28 = alloca %"class.bitwuzla::Term", align 8   ; 6 uses
  %29 = alloca %"class.bitwuzla::Term", align 8   ; 6 uses
  %30 = alloca %"class.bitwuzla::Term", align 8   ; 6 uses
  %31 = alloca %"class.bitwuzla::Term", align 8   ; 6 uses
  %32 = alloca %"class.bitwuzla::Term", align 8   ; 6 uses
  %33 = alloca %"class.bitwuzla::Sort", align 8   ; 7 uses
  %34 = alloca %"class.bitwuzla::Term", align 8   ; 6 uses
  %35 = alloca %"class.std::optional.222", align 16 ; 8 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %37 = alloca %"class.std::optional", align 8    ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !153
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %.sroa.0.0.copyload = load <2 x i64>, ptr %i.i, align 8, !tbaa !164
  %i.j = tail call noundef i32 @_ZN4bzla6parser4smt26Parser10next_tokenEb(ptr noundef nonnull align 8 dereferenceable(2056) %0, i1 noundef zeroext false) ; 6 uses
  switch i32 %i.j, label %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_ZN4bzla6parser4smt26Parser9error_eofEv(ptr noundef nonnull align 8 dereferenceable(2056) %0) ; 0 uses
  br label %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !153
  %i.m = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4bzla6parser4smt25Lexer9error_msgB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(176) %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.n, align 8, !tbaa !219
  %i.o = call noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit.thread

_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 6 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !316
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !164
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !183
  %i.v = getelementptr inbounds nuw [152 x i8], ptr %i.u, i64 %i.t ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1720
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !146
  store ptr %i.x, ptr %i.e, align 8, !tbaa !270
  %i.y = icmp eq i32 %i.j, 5
  %spec.select = select i1 %i.y, i32 16385, i32 %i.j
  switch i32 %i.j, label %bb.am [
    i32 16399, label %bb.bc
    i32 16402, label %bb.bc
    i32 16403, label %bb.bc
    i32 16408, label %bb.bc
    i32 16422, label %bb.bc
    i32 16391, label %bb.d
    i32 32814, label %bb.e
    i32 32815, label %bb.e
    i32 32804, label %bb.f
    i32 32806, label %bb.f
    i32 32807, label %bb.f
    i32 32808, label %bb.f
    i32 32809, label %bb.f
    i32 32816, label %bb.g
    i32 32817, label %bb.g
    i32 5, label %bb.h
  ]

bb.d:                                             ; preds = %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit
  br label %bb.bc

bb.e:                                             ; preds = %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit, %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit, %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit, %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit, %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit, %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit
  %i.z = phi i1 [ false, %bb.e ], [ true, %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit ], [ true, %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit ], [ true, %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit ], [ true, %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit ], [ true, %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit ]
  br label %bb.bc

bb.g:                                             ; preds = %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit, %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit
  br label %bb.bc

bb.h:                                             ; preds = %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !153
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !159 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  store ptr %i.ad, ptr %5, align 8, !tbaa !51
  %i.ae = icmp eq ptr %i.ac, null
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.204) #29
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.af = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ac) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store i64 %i.af, ptr %i.d, align 8, !tbaa !164
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.j
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc139 unwind label %bb.s  ; 2 uses

.noexc139:                                        ; preds = %.noexc.i
  store ptr %i.ah, ptr %5, align 8, !tbaa !154
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !164
  store i64 %i.ai, ptr %i.ad, align 8, !tbaa !54
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc139, %bb.j
  %i.aj = phi ptr [ %i.ah, %.noexc139 ], [ %i.ad, %bb.j ] ; 2 uses
  switch i64 %i.af, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.ak = load i8, ptr %i.ac, align 1, !tbaa !54
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !54
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull align 1 %i.ac, i64 %i.af, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i
  %i.al = load i64, ptr %i.d, align 8, !tbaa !164 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.al, ptr %i.am, align 8, !tbaa !53
  %i.an = load ptr, ptr %5, align 8, !tbaa !154
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  %i.ap = load i64, ptr %i.am, align 8, !tbaa !53
  %i.aq = icmp ult i64 %i.ap, 2
  br i1 %i.aq, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %5, align 8, !tbaa !154   ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !54
  %.not = icmp eq i8 %i.as, 98
  br i1 %.not, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !54
  %.not97 = icmp eq i8 %i.au, 118
  br i1 %.not97, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull @.str.95, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.2)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 0, ptr %i.av, align 8, !tbaa !219
  %i.aw = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %.critedge unwind label %bb.v  ; 0 uses

.critedge:                                        ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ax = load ptr, ptr %6, align 8, !tbaa !154   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !54
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bc = load ptr, ptr %7, align 8, !tbaa !154   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !54
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.bh = load ptr, ptr %5, align 8, !tbaa !154   ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.ad
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142
  %i.bj = load i64, ptr %i.ad, align 8, !tbaa !54
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.ej

bb.s:                                             ; preds = %.noexc.i, %bb.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.t:                                             ; preds = %bb.p
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

bb.u:                                             ; preds = %bb.q
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

bb.v:                                             ; preds = %bb.r
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.bp = load ptr, ptr %6, align 8, !tbaa !154   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

end_hunk_4
begin_hunk_5_@_ZN4bzla6parser4smt26Parser23parse_open_term_indexedEv:bb.a
bb.dc:                                            ; preds = %bb.db
  %i.tg = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8bitwuzla4TermaSERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(16) %29) #30 ; 0 uses
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %29) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  br label %bb.dn

bb.dd:                                            ; preds = %bb.db
  %i.th = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  br label %bb.do

bb.de:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #30
  %i.ti = load ptr, ptr %i.sv, align 8, !tbaa !246, !nonnull !209, !align !210
  invoke void @_ZN8bitwuzla11TermManager13mk_fp_pos_infERKNS_4SortE(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Term") align 8 %30, ptr noundef nonnull align 8 dereferenceable(8) %i.ti, ptr noundef nonnull align 8 dereferenceable(16) %27)
          to label %bb.df unwind label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.tj = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8bitwuzla4TermaSERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(16) %30) #30 ; 0 uses
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %30) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #30
  br label %bb.dn

bb.dg:                                            ; preds = %bb.de
  %i.tk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #30
  br label %bb.do

bb.dh:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #30
  %i.tl = load ptr, ptr %i.sv, align 8, !tbaa !246, !nonnull !209, !align !210
  invoke void @_ZN8bitwuzla11TermManager14mk_fp_neg_zeroERKNS_4SortE(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Term") align 8 %31, ptr noundef nonnull align 8 dereferenceable(8) %i.tl, ptr noundef nonnull align 8 dereferenceable(16) %27)
          to label %bb.di unwind label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.tm = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8bitwuzla4TermaSERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(16) %31) #30 ; 0 uses
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %31) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  br label %bb.dn

bb.dj:                                            ; preds = %bb.dh
  %i.tn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  br label %bb.do

bb.dk:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #30
  %i.to = load ptr, ptr %i.sv, align 8, !tbaa !246, !nonnull !209, !align !210
  invoke void @_ZN8bitwuzla11TermManager14mk_fp_pos_zeroERKNS_4SortE(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Term") align 8 %32, ptr noundef nonnull align 8 dereferenceable(8) %i.to, ptr noundef nonnull align 8 dereferenceable(16) %27)
          to label %bb.dl unwind label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.tp = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8bitwuzla4TermaSERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(16) %32) #30 ; 0 uses
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %32) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dk
  %i.tq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  br label %bb.do

bb.dn:                                            ; preds = %bb.cw, %bb.dc, %bb.di, %bb.dl, %bb.df, %bb.cy
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %27) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #30
  br label %bb.dw

bb.do:                                            ; preds = %bb.dm, %bb.dj, %bb.dg, %bb.dd, %bb.da
  %.pn121 = phi { ptr, i32 } [ %i.te, %bb.da ], [ %i.th, %bb.dd ], [ %i.tk, %bb.dg ], [ %i.tn, %bb.dj ], [ %i.tq, %bb.dm ]
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %27) #30
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.cz
  %.pn121.pn = phi { ptr, i32 } [ %.pn121, %bb.do ], [ %i.td, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #30
  br label %bb.ed

bb.dq:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #30
  %i.tr = load ptr, ptr %i.sv, align 8, !tbaa !246, !nonnull !209, !align !210
  %i.ts = load ptr, ptr %i.gy, align 8, !tbaa !165
  %i.tt = load i64, ptr %i.ts, align 8, !tbaa !164
  invoke void @_ZN8bitwuzla11TermManager10mk_bv_sortEm(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %33, ptr noundef nonnull align 8 dereferenceable(8) %i.tr, i64 noundef %i.tt)
          to label %bb.dr unwind label %bb.dt

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #30
  %i.tu = load ptr, ptr %i.sv, align 8, !tbaa !246, !nonnull !209, !align !210
  %i.tv = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !293
  invoke void @_ZN8bitwuzla11TermManager11mk_bv_valueERKNS_4SortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Term") align 8 %34, ptr noundef nonnull align 8 dereferenceable(8) %i.tu, ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(32) %i.tw, i8 noundef zeroext 10)
          to label %bb.ds unwind label %bb.du

bb.ds:                                            ; preds = %bb.dr
  %i.tx = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8bitwuzla4TermaSERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(16) %34) #30 ; 0 uses
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #30
  br label %bb.dw

bb.dt:                                            ; preds = %bb.dq
  %i.ty = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.du:                                            ; preds = %bb.dr
  %i.tz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #30
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.pn124 = phi { ptr, i32 } [ %i.tz, %bb.du ], [ %i.ty, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #30
  br label %bb.ed

bb.dw:                                            ; preds = %bb.ds, %bb.dn
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 5 uses
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !184
  %i.uc = getelementptr inbounds i8, ptr %i.ub, i64 -152 ; 2 uses
  store ptr %i.uc, ptr %i.ua, align 8, !tbaa !184
  call void @_ZN4bzla6parser4smt26Parser10ParsedItemD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %i.uc) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #30
  %i.ud = load ptr, ptr %26, align 8, !tbaa !258  ; 3 uses
  store ptr %i.ud, ptr %35, align 16, !tbaa !258
  %i.ue = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !253 ; 5 uses
  store ptr %i.ug, ptr %i.ue, align 8, !tbaa !253
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ug, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.thread, label %bb.dx

.thread:                                          ; preds = %bb.dw
  %i.uh = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  store i8 1, ptr %i.uh, align 16, !tbaa !339
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.ui = load ptr, ptr %i.ua, align 8, !tbaa !260 ; 2 uses
  %i.uj = getelementptr inbounds i8, ptr %i.ui, i64 -152
  store ptr %i.ud, ptr %1, align 16, !tbaa !258
  %i.uk = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.uk, align 8, !tbaa !253
  br label %.critedge460

bb.dx:                                            ; preds = %bb.dw
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ug, i64 8 ; 3 uses
  %i.um = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.um, 0
  %i.un = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 6 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.dy, label %.thread451

.thread451:                                       ; preds = %bb.dx
  %i.uo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.up = load i32, ptr %i.ul, align 4, !tbaa !254
  %i.uq = add nsw i32 %i.up, 1
  store i32 %i.uq, ptr %i.ul, align 4, !tbaa !254
  store i8 1, ptr %i.un, align 16, !tbaa !339
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.ur = load ptr, ptr %i.ua, align 8, !tbaa !260 ; 2 uses
  %i.us = getelementptr inbounds i8, ptr %i.ur, i64 -152
  store ptr %i.ud, ptr %1, align 16, !tbaa !258
  store ptr %i.ug, ptr %i.uo, align 8, !tbaa !253
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.ut = atomicrmw volatile add ptr %i.ul, i32 1 acq_rel, align 4 ; 0 uses
  store i8 1, ptr %i.un, align 16, !tbaa !339
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.uu = load ptr, ptr %i.ua, align 8, !tbaa !260 ; 3 uses
  %i.uv = getelementptr inbounds i8, ptr %i.uu, i64 -152 ; 2 uses
  %.pre335 = load ptr, ptr %i.ue, align 8, !tbaa !253 ; 2 uses
  %i.uw = load <2 x ptr>, ptr %35, align 16, !tbaa !265
  store <2 x ptr> %i.uw, ptr %1, align 16, !tbaa !265
  %.not.i.i.i.i.i = icmp eq ptr %.pre335, null
  br i1 %.not.i.i.i.i.i, label %.critedge460, label %bb.dz

bb.dz:                                            ; preds = %.thread451, %bb.dy
  %i.ux = phi ptr [ %i.us, %.thread451 ], [ %i.uv, %bb.dy ] ; 2 uses
  %i.uy = phi ptr [ %i.ur, %.thread451 ], [ %i.uu, %bb.dy ] ; 2 uses
  %i.uz = phi ptr [ %i.ug, %.thread451 ], [ %.pre335, %bb.dy ]
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 8 ; 3 uses
  %i.vb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i.i = icmp eq i8 %i.vb, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.vc = load i32, ptr %i.va, align 4, !tbaa !254
  %i.vd = add nsw i32 %i.vc, 1
  store i32 %i.vd, ptr %i.va, align 4, !tbaa !254
  br label %.critedge460

bb.eb:                                            ; preds = %bb.dz
  %i.ve = atomicrmw volatile add ptr %i.va, i32 1 acq_rel, align 4 ; 0 uses
  %.pre336 = load i8, ptr %i.un, align 16, !tbaa !339, !range !211
  %i.vf = trunc nuw i8 %.pre336 to i1
  br label %.critedge460

.critedge460:                                     ; preds = %.thread, %bb.eb, %bb.ea, %bb.dy
  %38 = phi ptr [ %i.ux, %bb.eb ], [ %i.ux, %bb.ea ], [ %i.uv, %bb.dy ], [ %i.uj, %.thread ]
  %39 = phi ptr [ %i.uy, %bb.eb ], [ %i.uy, %bb.ea ], [ %i.uu, %bb.dy ], [ %i.ui, %.thread ]
  %40 = phi ptr [ %i.un, %bb.eb ], [ %i.un, %bb.ea ], [ %i.un, %bb.dy ], [ %i.uh, %.thread ]
  %41 = phi i1 [ %i.vf, %bb.eb ], [ true, %bb.ea ], [ true, %bb.dy ], [ true, %.thread ]
  store i32 8, ptr %38, align 8, !tbaa !240
  %i.vg = getelementptr inbounds i8, ptr %39, i64 -128
  %i.vh = call noundef nonnull align 8 dereferenceable(17) ptr @_ZNSt7variantIJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEEaSIRS8_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS5_S7_S8_EE4typeEE18is_constructible_vISH_SE_E15is_assignable_vIRSH_SE_EERS9_E4typeESF_(ptr noundef nonnull align 8 dereferenceable(17) %i.vg, ptr noundef nonnull align 8 dereferenceable(16) %1) #30 ; 0 uses
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #30
  %i.vi = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.vj = getelementptr inbounds i8, ptr %i.vi, i64 -8
  store ptr %i.vj, ptr %i.q, align 8, !tbaa !162
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br i1 %41, label %bb.ec, label %_ZNSt14_Optional_baseIN8bitwuzla4TermELb0ELb0EED2Ev.exit

bb.ec:                                            ; preds = %.critedge460
  store i8 0, ptr %40, align 8, !tbaa !339
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %35) #30
  br label %_ZNSt14_Optional_baseIN8bitwuzla4TermELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN8bitwuzla4TermELb0ELb0EED2Ev.exit: ; preds = %.critedge460, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %26) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  br label %bb.ej

bb.ed:                                            ; preds = %bb.dv, %bb.dp
  %.pn126 = phi { ptr, i32 } [ %.pn121.pn, %bb.dp ], [ %.pn124, %bb.dv ]
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %26) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  br label %bb.ek

bb.ee:                                            ; preds = %bb.ct
  %i.vk = load ptr, ptr %i.q, align 8, !tbaa !316
  %i.vl = getelementptr inbounds i8, ptr %i.vk, i64 -8
  %i.vm = load i64, ptr %i.vl, align 8, !tbaa !164 ; 5 uses
  %i.vn = icmp ult i64 %i.vm, 2
  br i1 %i.vn, label %.noexc.i300, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.vo = load ptr, ptr %i.p, align 8, !tbaa !183
  %i.vp = getelementptr [152 x i8], ptr %i.vo, i64 %i.vm ; 3 uses
  %i.vq = getelementptr i8, ptr %i.vp, i64 -304
  %i.vr = load i32, ptr %i.vq, align 8, !tbaa !240
  %.not118 = icmp eq i32 %i.vr, 3
  br i1 %.not118, label %bb.ei, label %.noexc.i300

.noexc.i300:                                      ; preds = %bb.ef, %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #30
  %i.vs = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 6 uses
  store ptr %i.vs, ptr %36, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 23, ptr %i.a, align 8, !tbaa !164
  %i.vt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc301 unwind label %bb.eg ; 2 uses

.noexc301:                                        ; preds = %.noexc.i300
  store ptr %i.vt, ptr %36, align 8, !tbaa !154
  %i.vu = load i64, ptr %i.a, align 8, !tbaa !164 ; 3 uses
  store i64 %i.vu, ptr %i.vs, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.vt, ptr noundef nonnull align 1 dereferenceable(23) @.str.101, i64 23, i1 false)
  %i.vv = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 %i.vu, ptr %i.vv, align 8, !tbaa !53
  %i.vw = load ptr, ptr %36, align 8, !tbaa !154
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 %i.vu
  store i8 0, ptr %i.vx, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #30
  %i.vy = load ptr, ptr %i.p, align 8, !tbaa !183
  %i.vz = getelementptr [152 x i8], ptr %i.vy, i64 %i.vm
  %i.wa = getelementptr i8, ptr %i.vz, i64 -144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(16) %i.wa, i64 16, i1 false), !tbaa.struct !241
  %i.wb = getelementptr inbounds nuw i8, ptr %37, i64 16
  store i8 1, ptr %i.wb, align 8, !tbaa !219
  %i.wc = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(24) %37)
          to label %.critedge138 unwind label %bb.eh ; 0 uses

.critedge138:                                     ; preds = %.noexc301
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #30
  %i.wd = load ptr, ptr %36, align 8, !tbaa !154  ; 2 uses
  %i.we = icmp eq ptr %i.wd, %i.vs
  br i1 %i.we, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303: ; preds = %.critedge138
  %i.wf = load i64, ptr %i.vs, align 8, !tbaa !54
  %i.wg = add i64 %i.wf, 1
  call void @_ZdlPvm(ptr noundef %i.wd, i64 noundef %i.wg) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305: ; preds = %.critedge138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #30
  br label %bb.ej

bb.eg:                                            ; preds = %.noexc.i300
  %i.wh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

bb.eh:                                            ; preds = %.noexc301
  %i.wi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #30
  %i.wj = load ptr, ptr %36, align 8, !tbaa !154  ; 2 uses
  %i.wk = icmp eq ptr %i.wj, %i.vs
  br i1 %i.wk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306: ; preds = %bb.eh
  %i.wl = load i64, ptr %i.vs, align 8, !tbaa !54
  %i.wm = add i64 %i.wl, 1
  call void @_ZdlPvm(ptr noundef %i.wj, i64 noundef %i.wm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308: ; preds = %bb.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306, %bb.eg
  %.pn119 = phi { ptr, i32 } [ %i.wh, %bb.eg ], [ %i.wi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306 ], [ %i.wi, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #30
  br label %bb.ek

bb.ei:                                            ; preds = %bb.ef
  store i32 %spec.select, ptr %i.vp, align 8, !tbaa !240
  %i.wn = getelementptr inbounds nuw i8, ptr %i.vp, i64 24
  %i.wo = call noundef nonnull align 8 dereferenceable(17) ptr @_ZNSt7variantIJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEEaSIRS5_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS5_S7_S8_EE4typeEE18is_constructible_vISH_SE_E15is_assignable_vIRSH_SE_EERS9_E4typeESF_(ptr noundef nonnull align 8 dereferenceable(17) %i.wn, ptr noundef nonnull align 8 dereferenceable(8) %i.e) #30 ; 0 uses
  %i.wp = load ptr, ptr %i.p, align 8, !tbaa !183 ; 2 uses
  %i.wq = getelementptr inbounds nuw [152 x i8], ptr %i.wp, i64 %i.vm
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 8
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.wr, align 8, !tbaa !164
  %i.ws = getelementptr inbounds [152 x i8], ptr %i.wp, i64 %i.vm
  %i.wt = getelementptr inbounds i8, ptr %i.ws, i64 -152
  %i.wu = call ptr @_ZNSt6vectorIN4bzla6parser4smt26Parser10ParsedItemESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr nonnull %i.wt) ; 0 uses
  %i.wv = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.ww = getelementptr inbounds i8, ptr %i.wv, i64 -8
  store ptr %i.ww, ptr %i.q, align 8, !tbaa !162
  br label %bb.ej

bb.ej:                                            ; preds = %_ZN4bzla6parser4smt26Parser10parse_rparEv.exit, %.critedge134, %_ZNSt14_Optional_baseIN8bitwuzla4TermELb0ELb0EED2Ev.exit, %bb.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196
  %.7 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196 ], [ false, %_ZN4bzla6parser4smt26Parser10parse_rparEv.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ], [ false, %.critedge134 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ], [ true, %bb.ei ], [ true, %_ZNSt14_Optional_baseIN8bitwuzla4TermELb0ELb0EED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  br label %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit.thread

bb.ek:                                            ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, %bb.ed, %bb.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205
  %.pn128.pn.pn.pn = phi { ptr, i32 } [ %.pn128.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205 ], [ %.pn126, %bb.ed ], [ %.pn119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308 ], [ %.pn114.pn, %bb.cq ], [ %.pn103.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %i.bl, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  br label %common.resume

_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit.thread: ; preds = %bb.c, %bb.b, %bb.ej
  %.8 = phi i1 [ %.7, %bb.ej ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.8
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0EbT_SF_T0_"(ptr %0, ptr %1) unnamed_addr #15 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr i64 %i.c, 2                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.a
  %i.f = and i64 %i.c, -4
  %scevgep.i.i.i = getelementptr i8, ptr %0, i64 %i.f ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.preheader.i.i.i
  %.051.i.i.i = phi i64 [ %i.w, %bb.e ], [ %i.d, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.sroa.031.050.i.i.i = phi ptr [ %i.v, %bb.e ], [ %0, %.lr.ph.preheader.i.i.i ] ; 9 uses
  %i.g = load i8, ptr %.sroa.031.050.i.i.i, align 1, !tbaa !54
  %i.h = sext i8 %i.g to i32
  %i.i = add nsw i32 %i.h, -58
  %isdigit.i.i.i.i.i = icmp ult i32 %i.i, -10
  br i1 %isdigit.i.i.i.i.i, label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !54
  %i.l = sext i8 %i.k to i32
  %i.m = add nsw i32 %i.l, -58
  %isdigit.i.i16.i.i.i = icmp ult i32 %i.m, -10
  br i1 %isdigit.i.i16.i.i.i, label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !54
  %i.p = sext i8 %i.o to i32
  %i.q = add nsw i32 %i.p, -58
  %isdigit.i.i17.i.i.i = icmp ult i32 %i.q, -10
  br i1 %isdigit.i.i17.i.i.i, label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit16", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i, i64 3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !54
  %i.t = sext i8 %i.s to i32
  %i.u = add nsw i32 %i.t, -58
  %isdigit.i.i18.i.i.i = icmp ult i32 %i.u, -10
  br i1 %isdigit.i.i18.i.i.i, label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit18", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i, i64 4
  %i.w = add nsw i64 %.051.i.i.i, -1
  %i.x = icmp sgt i64 %.051.i.i.i, 1
  br i1 %i.x, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !759

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.e
  %.pre.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.b, %bb.a ]
  %.sroa.031.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %0, %bb.a ] ; 5 uses
  %i.y = sub i64 %i.a, %.pre-phi.i.i.i
  switch i64 %i.y, label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit" [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.z = load i8, ptr %.sroa.031.0.lcssa.i.i.i, align 1, !tbaa !54
  %i.aa = sext i8 %i.z to i32
  %i.ab = add nsw i32 %i.aa, -58
  %isdigit.i.i19.i.i.i = icmp ult i32 %i.ab, -10
end_hunk_5
