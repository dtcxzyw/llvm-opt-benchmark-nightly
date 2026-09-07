Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/testCMExtEnumSet?download=true
inline.NumInlined: 731
inline.NumDeleted: 290
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_Z16testCMExtEnumSetiPPc:bb.a
  br i1 %i.mm, label %bb.bc, label %.loopexit787.i

bb.bc:                                            ; preds = %._crit_edge880.i
  %i.mn = load ptr, ptr %i.ly, align 8, !tbaa !19 ; 2 uses
  %.not6.i.i.i.i.i.i.i411.i = icmp eq ptr %i.mn, %i.lw
  br i1 %.not6.i.i.i.i.i.i.i411.i, label %_ZStneIhSt4lessIhESaIhEEbRKSt3setIT_T0_T1_ES9_.exit418.i, label %.lr.ph.i.i.i.i.preheader.i.i.i412.i

.lr.ph.i.i.i.i.preheader.i.i.i412.i:              ; preds = %bb.bc
  %i.mo = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !19
  br label %.lr.ph.i.i.i.i.i.i.i413.i

.lr.ph.i.i.i.i.i.i.i413.i:                        ; preds = %bb.bd, %.lr.ph.i.i.i.i.preheader.i.i.i412.i
  %.sroa.0.08.i.i.i.i.i.i.i414.i = phi ptr [ %i.mv, %bb.bd ], [ %i.mp, %.lr.ph.i.i.i.i.preheader.i.i.i412.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i415.i = phi ptr [ %i.mu, %bb.bd ], [ %i.mn, %.lr.ph.i.i.i.i.preheader.i.i.i412.i ] ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i415.i, i64 32
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !12
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i414.i, i64 32
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !12
  %.not.i416.i = icmp eq i8 %i.mr, %i.mt
  br i1 %.not.i416.i, label %bb.bd, label %.loopexit787.i

bb.bd:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i413.i
  %i.mu = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.07.i.i.i.i.i.i.i415.i) #15 ; 2 uses
  %i.mv = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.08.i.i.i.i.i.i.i414.i) #15
  %.not.i.i.i.i.i.i.i417.i = icmp eq ptr %i.mu, %i.lw
  br i1 %.not.i.i.i.i.i.i.i417.i, label %_ZStneIhSt4lessIhESaIhEEbRKSt3setIT_T0_T1_ES9_.exit418.i, label %.lr.ph.i.i.i.i.i.i.i413.i, !llvm.loop !28

bb.be:                                            ; preds = %bb.aw, %bb.aq, %bb.ap, %bb.al
  %.pn141.pn.i = phi { ptr, i32 } [ %i.kx, %bb.aw ], [ %i.jc, %bb.al ], [ %i.jv, %bb.ap ], [ %i.jw, %bb.aq ]
  call void @_ZNSt3setIhSt4lessIhESaIhEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @_ZNSt3setIhSt4lessIhESaIhEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #14
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.af
  %.pn141.pn.pn.i = phi { ptr, i32 } [ %.pn141.pn.i, %bb.be ], [ %i.ht, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %common.resume

bb.bg:                                            ; preds = %_ZN2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE6insertINS_17enum_set_iteratorIKS3_EEEEvT_S8_.exit.i
  %i.mw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %bb.cc

.lr.ph879.i:                                      ; preds = %.lr.ph879.i.preheader, %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit448.i
  %i.mx = phi i64 [ %i.nq, %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit448.i ], [ 0, %.lr.ph879.i.preheader ]
  %.sroa.0719.0878.i = phi i64 [ %.lcssa933.i, %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit448.i ], [ %.sroa.0719.0878.i.ph, %.lr.ph879.i.preheader ] ; 4 uses
  %i.my = trunc i64 %.sroa.0719.0878.i to i8      ; 4 uses
  %.02022.i.i.i419.i = load ptr, ptr %i.lx, align 8, !tbaa !23 ; 2 uses
  %.not23.i.i.i420.i = icmp eq ptr %.02022.i.i.i419.i, null
  br i1 %.not23.i.i.i420.i, label %._crit_edge.thread.i.i.i437.i, label %.lr.ph.i.i.i421.i

.lr.ph.i.i.i421.i:                                ; preds = %.lr.ph879.i, %.lr.ph.i.i.i421.i
  %.02024.i.i.i422.i = phi ptr [ %.020.i.i.i425.i, %.lr.ph.i.i.i421.i ], [ %.02022.i.i.i419.i, %.lr.ph879.i ] ; 4 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.02024.i.i.i422.i, i64 32
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !12  ; 2 uses
  %i.nb = icmp ugt i8 %i.na, %i.my                ; 2 uses
  %.in.v.i.i.i423.i = select i1 %i.nb, i64 16, i64 24
  %.in.i.i.i424.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i422.i, i64 %.in.v.i.i.i423.i
  %.020.i.i.i425.i = load ptr, ptr %.in.i.i.i424.i, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i426.i = icmp eq ptr %.020.i.i.i425.i, null
  br i1 %.not.i.i.i426.i, label %._crit_edge.i.i.i427.i, label %.lr.ph.i.i.i421.i, !llvm.loop !0

._crit_edge.i.i.i427.i:                           ; preds = %.lr.ph.i.i.i421.i
  br i1 %i.nb, label %._crit_edge.thread.i.i.i437.i, label %bb.bi

._crit_edge.thread.i.i.i437.i:                    ; preds = %._crit_edge.i.i.i427.i, %.lr.ph879.i
  %.019.lcssa29.i.i.i438.i = phi ptr [ %.02024.i.i.i422.i, %._crit_edge.i.i.i427.i ], [ %i.lw, %.lr.ph879.i ] ; 4 uses
  %i.nc = load ptr, ptr %i.ly, align 8, !tbaa !19
  %i.nd = icmp eq ptr %.019.lcssa29.i.i.i438.i, %i.nc
  br i1 %i.nd, label %select.unfold.i.i434.i, label %bb.bh

bb.bh:                                            ; preds = %._crit_edge.thread.i.i.i437.i
  %i.ne = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i438.i) #15
  %.phi.trans.insert.i.i439.i = getelementptr inbounds nuw i8, ptr %i.ne, i64 32
  %.pre.i.i440.i = load i8, ptr %.phi.trans.insert.i.i439.i, align 1, !tbaa !12
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %._crit_edge.i.i.i427.i
  %i.nf = phi i8 [ %.pre.i.i440.i, %bb.bh ], [ %i.na, %._crit_edge.i.i.i427.i ]
  %.019.lcssa28.i.i.i428.i = phi ptr [ %.019.lcssa29.i.i.i438.i, %bb.bh ], [ %.02024.i.i.i422.i, %._crit_edge.i.i.i427.i ]
  %i.ng = icmp ult i8 %i.nf, %i.my
  br i1 %i.ng, label %select.unfold.i.i434.i, label %bb.bk

select.unfold.i.i434.i:                           ; preds = %bb.bi, %._crit_edge.thread.i.i.i437.i
  %.sroa.4.0.i.ph.i.i435.i = phi ptr [ %.019.lcssa29.i.i.i438.i, %._crit_edge.thread.i.i.i437.i ], [ %.019.lcssa28.i.i.i428.i, %bb.bi ] ; 3 uses
  %i.nh = icmp eq ptr %.sroa.4.0.i.ph.i.i435.i, %i.lw
  br i1 %i.nh, label %_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i436.i, label %bb.bj

bb.bj:                                            ; preds = %select.unfold.i.i434.i
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i435.i, i64 32
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !12
  %i.nk = icmp ugt i8 %i.nj, %i.my
  br label %_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i436.i

_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i436.i: ; preds = %bb.bj, %select.unfold.i.i434.i
  %i.nl = phi i1 [ %i.nk, %bb.bj ], [ true, %select.unfold.i.i434.i ]
  %i.nm = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #16
          to label %.noexc442.i unwind label %bb.bm ; 2 uses

.noexc442.i:                                      ; preds = %_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i436.i
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 32
  store i8 %i.my, ptr %i.nn, align 1, !tbaa !12
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.nl, ptr noundef nonnull %i.nm, ptr noundef nonnull %.sroa.4.0.i.ph.i.i435.i, ptr noundef nonnull align 8 dereferenceable(32) %i.lw) #14
  %i.no = load i64, ptr %i.ma, align 8, !tbaa !21
  %i.np = add i64 %i.no, 1                        ; 2 uses
  store i64 %i.np, ptr %i.ma, align 8, !tbaa !21
  br label %bb.bk

bb.bk:                                            ; preds = %.noexc442.i, %bb.bi
  %i.nq = phi i64 [ %i.np, %.noexc442.i ], [ %i.mx, %bb.bi ] ; 2 uses
  %i.nr = add i64 %.sroa.0719.0878.i, 1
  %umax958.i = call i64 @llvm.umax.i64(i64 %i.nr, i64 8) ; 3 uses
  %i.ns = add i64 %umax958.i, -1                  ; 2 uses
  %exitcond959.not.i255 = icmp eq i64 %.sroa.0719.0878.i, %i.ns
  br i1 %exitcond959.not.i255, label %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit448.i, label %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i445.i

bb.bl:                                            ; preds = %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i445.i
  %exitcond959.not.i = icmp eq i64 %i.nu, %i.ns
  br i1 %exitcond959.not.i, label %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit448.i, label %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i445.i, !llvm.loop !40

_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i445.i: ; preds = %bb.bk, %bb.bl
  %i.nt = phi i64 [ %i.nu, %bb.bl ], [ %.sroa.0719.0878.i, %bb.bk ]
  %i.nu = add i64 %i.nt, 1                        ; 4 uses
  %i.nv = shl nuw nsw i64 1, %i.nu
  %i.nw = and i64 %i.nv, %spec.select.i
  %.not.i447.i = icmp eq i64 %i.nw, 0
  br i1 %.not.i447.i, label %bb.bl, label %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i445.i._ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit448.i_crit_edge, !llvm.loop !40

_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i445.i._ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit448.i_crit_edge: ; preds = %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i445.i
  br label %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit448.i, !llvm.loop !40

_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit448.i: ; preds = %bb.bl, %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i445.i._ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit448.i_crit_edge, %bb.bk
  %.lcssa933.i = phi i64 [ %umax958.i, %bb.bk ], [ %i.nu, %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i445.i._ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit448.i_crit_edge ], [ %umax958.i, %bb.bl ] ; 2 uses
  %.not770.i = icmp eq i64 %.lcssa933.i, 8
  br i1 %.not770.i, label %._crit_edge880.i, label %.lr.ph879.i

bb.bm:                                            ; preds = %_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i436.i
  %i.nx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

.loopexit787.i:                                   ; preds = %.lr.ph.i.i.i.i.i.i.i413.i, %._crit_edge880.i
  %i.ny = load i32, ptr @_ZN12_GLOBAL__N_16failedE, align 4, !tbaa !72
  %i.nz = add nsw i32 %i.ny, 1
  store i32 %i.nz, ptr @_ZN12_GLOBAL__N_16failedE, align 4, !tbaa !72
  br label %_ZStneIhSt4lessIhESaIhEEbRKSt3setIT_T0_T1_ES9_.exit418.i

_ZStneIhSt4lessIhESaIhEEbRKSt3setIT_T0_T1_ES9_.exit418.i: ; preds = %bb.bd, %.loopexit787.i, %bb.bc
  %i.oa = and i64 %spec.select.i, 230             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  store i8 0, ptr %i.e, align 1, !tbaa !12
  %i.ob = invoke noundef i64 @_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE5eraseERKh(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
          to label %_ZNSt3setIhSt4lessIhESaIhEE5eraseERKh.exit450.i unwind label %bb.bq ; 0 uses

_ZNSt3setIhSt4lessIhESaIhEE5eraseERKh.exit450.i:  ; preds = %_ZStneIhSt4lessIhESaIhEEbRKSt3setIT_T0_T1_ES9_.exit418.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  store i8 3, ptr %i.f, align 1, !tbaa !12
  %i.oc = invoke noundef i64 @_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE5eraseERKh(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.f)
          to label %_ZNSt3setIhSt4lessIhESaIhEE5eraseERKh.exit452.i unwind label %bb.br ; 0 uses

_ZNSt3setIhSt4lessIhESaIhEE5eraseERKh.exit452.i:  ; preds = %_ZNSt3setIhSt4lessIhESaIhEE5eraseERKh.exit450.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  store i8 4, ptr %i.g, align 1, !tbaa !12
  %i.od = invoke noundef i64 @_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE5eraseERKh(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
          to label %_ZNSt3setIhSt4lessIhESaIhEE5eraseERKh.exit454.i unwind label %bb.bs ; 0 uses

_ZNSt3setIhSt4lessIhESaIhEE5eraseERKh.exit454.i:  ; preds = %_ZNSt3setIhSt4lessIhESaIhEE5eraseERKh.exit452.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  %i.oe = load ptr, ptr %i.lx, align 8, !tbaa !18
  invoke void @_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE8_M_eraseEPSt13_Rb_tree_nodeIhE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %i.oe)
          to label %_ZNSt3setIhSt4lessIhESaIhEE5clearEv.exit455.i unwind label %bb.bn

bb.bn:                                            ; preds = %_ZNSt3setIhSt4lessIhESaIhEE5eraseERKh.exit454.i
  %i.of = landingpad { ptr, i32 }
          catch ptr null
  %i.og = extractvalue { ptr, i32 } %i.of, 0
  call void @__clang_call_terminate(ptr %i.og) #17
  unreachable

_ZNSt3setIhSt4lessIhESaIhEE5clearEv.exit455.i:    ; preds = %_ZNSt3setIhSt4lessIhESaIhEE5eraseERKh.exit454.i
  store ptr null, ptr %i.lx, align 8, !tbaa !18
  store ptr %i.lw, ptr %i.ly, align 8, !tbaa !19
  store ptr %i.lw, ptr %i.lz, align 8, !tbaa !20
  store i64 0, ptr %i.ma, align 8, !tbaa !21
  %.not.i.i.i.i457.i = icmp eq i64 %i.oa, 0
  br i1 %.not.i.i.i.i457.i, label %._crit_edge884.i, label %.preheader.i.1.i463.i

.preheader.i.1.i463.i:                            ; preds = %_ZNSt3setIhSt4lessIhESaIhEE5clearEv.exit455.i
  %i.oh = and i64 %spec.select.i, 2
  %.not3.i.1.i464.i = icmp eq i64 %i.oh, 0
  br i1 %.not3.i.1.i464.i, label %.preheader.i.2.i465.i, label %.lr.ph883.i.preheader

.lr.ph883.i.preheader:                            ; preds = %.preheader.i.7.i475.i, %.preheader.i.6.i473.i, %.preheader.i.5.i471.i, %.preheader.i.2.i465.i, %.preheader.i.1.i463.i
  %.sroa.0711.0882.i.ph = phi i64 [ 2, %.preheader.i.2.i465.i ], [ 5, %.preheader.i.5.i471.i ], [ 6, %.preheader.i.6.i473.i ], [ 7, %.preheader.i.7.i475.i ], [ 1, %.preheader.i.1.i463.i ]
  br label %.lr.ph883.i

.preheader.i.2.i465.i:                            ; preds = %.preheader.i.1.i463.i
  %i.oi = and i64 %spec.select.i, 4
  %.not3.i.2.i466.i = icmp eq i64 %i.oi, 0
  br i1 %.not3.i.2.i466.i, label %.preheader.i.5.i471.i, label %.lr.ph883.i.preheader

.preheader.i.5.i471.i:                            ; preds = %.preheader.i.2.i465.i
  %i.oj = and i64 %spec.select.i, 32
  %.not3.i.5.i472.i = icmp eq i64 %i.oj, 0
  br i1 %.not3.i.5.i472.i, label %.preheader.i.6.i473.i, label %.lr.ph883.i.preheader

.preheader.i.6.i473.i:                            ; preds = %.preheader.i.5.i471.i
  %i.ok = and i64 %spec.select.i, 64
  %.not3.i.6.i474.i = icmp eq i64 %i.ok, 0
  br i1 %.not3.i.6.i474.i, label %.preheader.i.7.i475.i, label %.lr.ph883.i.preheader

.preheader.i.7.i475.i:                            ; preds = %.preheader.i.6.i473.i
  %i.ol = and i64 %spec.select.i, 128
  %.not3.i.7.i476.i = icmp eq i64 %i.ol, 0
  br i1 %.not3.i.7.i476.i, label %._crit_edge884.i, label %.lr.ph883.i.preheader

._crit_edge884.i:                                 ; preds = %bb.bw, %bb.bx, %.preheader.i.7.i475.i, %_ZNSt3setIhSt4lessIhESaIhEE5clearEv.exit455.i
  %18 = phi i64 [ 0, %.preheader.i.7.i475.i ], [ 0, %_ZNSt3setIhSt4lessIhESaIhEE5clearEv.exit455.i ], [ %i.pt, %bb.bx ], [ %i.pt, %bb.bw ]
  %i.om = load i64, ptr %i.mk, align 8, !tbaa !21
  %i.on = icmp eq i64 %18, %i.om
  br i1 %i.on, label %bb.bo, label %.loopexit786.i

bb.bo:                                            ; preds = %._crit_edge884.i
  %i.oo = load ptr, ptr %i.ly, align 8, !tbaa !19 ; 2 uses
  %.not6.i.i.i.i.i.i.i481.i = icmp eq ptr %i.oo, %i.lw
  br i1 %.not6.i.i.i.i.i.i.i481.i, label %_ZStneIhSt4lessIhESaIhEEbRKSt3setIT_T0_T1_ES9_.exit488.i, label %.lr.ph.i.i.i.i.preheader.i.i.i482.i

.lr.ph.i.i.i.i.preheader.i.i.i482.i:              ; preds = %bb.bo
  %i.op = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !19
  br label %.lr.ph.i.i.i.i.i.i.i483.i

.lr.ph.i.i.i.i.i.i.i483.i:                        ; preds = %bb.bp, %.lr.ph.i.i.i.i.preheader.i.i.i482.i
  %.sroa.0.08.i.i.i.i.i.i.i484.i = phi ptr [ %i.ow, %bb.bp ], [ %i.oq, %.lr.ph.i.i.i.i.preheader.i.i.i482.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i485.i = phi ptr [ %i.ov, %bb.bp ], [ %i.oo, %.lr.ph.i.i.i.i.preheader.i.i.i482.i ] ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i485.i, i64 32
  %i.os = load i8, ptr %i.or, align 1, !tbaa !12
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i484.i, i64 32
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !12
  %.not.i486.i = icmp eq i8 %i.os, %i.ou
  br i1 %.not.i486.i, label %bb.bp, label %.loopexit786.i

bb.bp:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i483.i
  %i.ov = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.07.i.i.i.i.i.i.i485.i) #15 ; 2 uses
  %i.ow = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.08.i.i.i.i.i.i.i484.i) #15
  %.not.i.i.i.i.i.i.i487.i = icmp eq ptr %i.ov, %i.lw
  br i1 %.not.i.i.i.i.i.i.i487.i, label %_ZStneIhSt4lessIhESaIhEEbRKSt3setIT_T0_T1_ES9_.exit488.i, label %.lr.ph.i.i.i.i.i.i.i483.i, !llvm.loop !28

bb.bq:                                            ; preds = %_ZStneIhSt4lessIhESaIhEEbRKSt3setIT_T0_T1_ES9_.exit418.i
  %i.ox = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %bb.cb

bb.br:                                            ; preds = %_ZNSt3setIhSt4lessIhESaIhEE5eraseERKh.exit450.i
  %i.oy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %bb.cb

bb.bs:                                            ; preds = %_ZNSt3setIhSt4lessIhESaIhEE5eraseERKh.exit452.i
  %i.oz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  br label %bb.cb

.lr.ph883.i:                                      ; preds = %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i515.i, %.lr.ph883.i.preheader
  %i.pa = phi i64 [ 0, %.lr.ph883.i.preheader ], [ %i.pt, %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i515.i ]
  %.sroa.0711.0882.i = phi i64 [ %.sroa.0711.0882.i.ph, %.lr.ph883.i.preheader ], [ %i.pv, %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i515.i ] ; 3 uses
  %i.pb = trunc nuw nsw i64 %.sroa.0711.0882.i to i8 ; 4 uses
  %.02022.i.i.i489.i = load ptr, ptr %i.lx, align 8, !tbaa !23 ; 2 uses
  %.not23.i.i.i490.i = icmp eq ptr %.02022.i.i.i489.i, null
  br i1 %.not23.i.i.i490.i, label %._crit_edge.thread.i.i.i507.i, label %.lr.ph.i.i.i491.i

.lr.ph.i.i.i491.i:                                ; preds = %.lr.ph883.i, %.lr.ph.i.i.i491.i
  %.02024.i.i.i492.i = phi ptr [ %.020.i.i.i495.i, %.lr.ph.i.i.i491.i ], [ %.02022.i.i.i489.i, %.lr.ph883.i ] ; 4 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.02024.i.i.i492.i, i64 32
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !12  ; 2 uses
  %i.pe = icmp ugt i8 %i.pd, %i.pb                ; 2 uses
  %.in.v.i.i.i493.i = select i1 %i.pe, i64 16, i64 24
  %.in.i.i.i494.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i492.i, i64 %.in.v.i.i.i493.i
  %.020.i.i.i495.i = load ptr, ptr %.in.i.i.i494.i, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i496.i = icmp eq ptr %.020.i.i.i495.i, null
  br i1 %.not.i.i.i496.i, label %._crit_edge.i.i.i497.i, label %.lr.ph.i.i.i491.i, !llvm.loop !0

._crit_edge.i.i.i497.i:                           ; preds = %.lr.ph.i.i.i491.i
  br i1 %i.pe, label %._crit_edge.thread.i.i.i507.i, label %bb.bu

._crit_edge.thread.i.i.i507.i:                    ; preds = %._crit_edge.i.i.i497.i, %.lr.ph883.i
  %.019.lcssa29.i.i.i508.i = phi ptr [ %.02024.i.i.i492.i, %._crit_edge.i.i.i497.i ], [ %i.lw, %.lr.ph883.i ] ; 4 uses
  %i.pf = load ptr, ptr %i.ly, align 8, !tbaa !19
  %i.pg = icmp eq ptr %.019.lcssa29.i.i.i508.i, %i.pf
  br i1 %i.pg, label %select.unfold.i.i504.i, label %bb.bt

bb.bt:                                            ; preds = %._crit_edge.thread.i.i.i507.i
  %i.ph = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i508.i) #15
  %.phi.trans.insert.i.i509.i = getelementptr inbounds nuw i8, ptr %i.ph, i64 32
  %.pre.i.i510.i = load i8, ptr %.phi.trans.insert.i.i509.i, align 1, !tbaa !12
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %._crit_edge.i.i.i497.i
  %i.pi = phi i8 [ %.pre.i.i510.i, %bb.bt ], [ %i.pd, %._crit_edge.i.i.i497.i ]
  %.019.lcssa28.i.i.i498.i = phi ptr [ %.019.lcssa29.i.i.i508.i, %bb.bt ], [ %.02024.i.i.i492.i, %._crit_edge.i.i.i497.i ]
  %i.pj = icmp ult i8 %i.pi, %i.pb
  br i1 %i.pj, label %select.unfold.i.i504.i, label %bb.bw

select.unfold.i.i504.i:                           ; preds = %bb.bu, %._crit_edge.thread.i.i.i507.i
  %.sroa.4.0.i.ph.i.i505.i = phi ptr [ %.019.lcssa29.i.i.i508.i, %._crit_edge.thread.i.i.i507.i ], [ %.019.lcssa28.i.i.i498.i, %bb.bu ] ; 3 uses
  %i.pk = icmp eq ptr %.sroa.4.0.i.ph.i.i505.i, %i.lw
  br i1 %i.pk, label %_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i506.i, label %bb.bv

bb.bv:                                            ; preds = %select.unfold.i.i504.i
  %i.pl = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i505.i, i64 32
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !12
  %i.pn = icmp ugt i8 %i.pm, %i.pb
  br label %_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i506.i

_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i506.i: ; preds = %bb.bv, %select.unfold.i.i504.i
  %i.po = phi i1 [ %i.pn, %bb.bv ], [ true, %select.unfold.i.i504.i ]
  %i.pp = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #16
          to label %.noexc512.i unwind label %bb.by ; 2 uses

.noexc512.i:                                      ; preds = %_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i506.i
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 32
  store i8 %i.pb, ptr %i.pq, align 1, !tbaa !12
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.po, ptr noundef nonnull %i.pp, ptr noundef nonnull %.sroa.4.0.i.ph.i.i505.i, ptr noundef nonnull align 8 dereferenceable(32) %i.lw) #14
  %i.pr = load i64, ptr %i.ma, align 8, !tbaa !21
  %i.ps = add i64 %i.pr, 1                        ; 2 uses
  store i64 %i.ps, ptr %i.ma, align 8, !tbaa !21
  br label %bb.bw

bb.bw:                                            ; preds = %.noexc512.i, %bb.bu
  %i.pt = phi i64 [ %i.ps, %.noexc512.i ], [ %i.pa, %bb.bu ] ; 3 uses
  %exitcond961.not.i258 = icmp eq i64 %.sroa.0711.0882.i, 7
  br i1 %exitcond961.not.i258, label %._crit_edge884.i, label %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i515.i

bb.bx:                                            ; preds = %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i515.i
  %exitcond961.not.i = icmp eq i64 %i.pv, 7
  br i1 %exitcond961.not.i, label %._crit_edge884.i, label %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i515.i, !llvm.loop !40

_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i515.i: ; preds = %bb.bw, %bb.bx
  %i.pu = phi i64 [ %i.pv, %bb.bx ], [ %.sroa.0711.0882.i, %bb.bw ] ; 2 uses
  %i.pv = add nuw nsw i64 %i.pu, 1                ; 3 uses
  %i.pw = shl nuw nsw i64 2, %i.pu
  %i.px = and i64 %i.pw, %i.oa
  %.not.i517.i = icmp eq i64 %i.px, 0
  br i1 %.not.i517.i, label %bb.bx, label %.lr.ph883.i, !llvm.loop !40

bb.by:                                            ; preds = %_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i506.i
  %i.py = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

.loopexit786.i:                                   ; preds = %.lr.ph.i.i.i.i.i.i.i483.i, %._crit_edge884.i
  %i.pz = load i32, ptr @_ZN12_GLOBAL__N_16failedE, align 4, !tbaa !72
  %i.qa = add nsw i32 %i.pz, 1
  store i32 %i.qa, ptr @_ZN12_GLOBAL__N_16failedE, align 4, !tbaa !72
  br label %_ZStneIhSt4lessIhESaIhEEbRKSt3setIT_T0_T1_ES9_.exit488.i

_ZStneIhSt4lessIhESaIhEEbRKSt3setIT_T0_T1_ES9_.exit488.i: ; preds = %bb.bp, %.loopexit786.i, %bb.bo
  %i.qb = load ptr, ptr %i.lx, align 8, !tbaa !18
  invoke void @_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE8_M_eraseEPSt13_Rb_tree_nodeIhE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %i.qb)
          to label %_ZNSt3setIhSt4lessIhESaIhEED2Ev.exit519.i unwind label %bb.bz

bb.bz:                                            ; preds = %_ZStneIhSt4lessIhESaIhEEbRKSt3setIT_T0_T1_ES9_.exit488.i
  %i.qc = landingpad { ptr, i32 }
          catch ptr null
  %i.qd = extractvalue { ptr, i32 } %i.qc, 0
  call void @__clang_call_terminate(ptr %i.qd) #17
  unreachable

_ZNSt3setIhSt4lessIhESaIhEED2Ev.exit519.i:        ; preds = %_ZStneIhSt4lessIhESaIhEEbRKSt3setIT_T0_T1_ES9_.exit488.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.qe = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !18
  invoke void @_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE8_M_eraseEPSt13_Rb_tree_nodeIhE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.qf)
          to label %bb.cd unwind label %bb.ca

bb.ca:                                            ; preds = %_ZNSt3setIhSt4lessIhESaIhEED2Ev.exit519.i
  %i.qg = landingpad { ptr, i32 }
          catch ptr null
  %i.qh = extractvalue { ptr, i32 } %i.qg, 0
  call void @__clang_call_terminate(ptr %i.qh) #17
  unreachable

bb.cb:                                            ; preds = %bb.by, %bb.bs, %bb.br, %bb.bq, %bb.bm
  %.pn135.pn.i = phi { ptr, i32 } [ %i.ox, %bb.bq ], [ %i.nx, %bb.bm ], [ %i.py, %bb.by ], [ %i.oz, %bb.bs ], [ %i.oy, %bb.br ]
  call void @_ZNSt3setIhSt4lessIhESaIhEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @_ZNSt3setIhSt4lessIhESaIhEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #14
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bg
  %.pn135.pn.pn.i = phi { ptr, i32 } [ %.pn135.pn.i, %bb.cb ], [ %i.mw, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %common.resume

bb.cd:                                            ; preds = %_ZNSt3setIhSt4lessIhESaIhEED2Ev.exit519.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  store i8 1, ptr %i.h, align 1, !tbaa !12
  %i.qi = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store i8 4, ptr %i.qi, align 1, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  invoke void @_ZNSt3setIhSt4lessIhESaIhEEC2ESt16initializer_listIhERKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr nonnull %i.h, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %.lr.ph894.preheader.i unwind label %bb.cg

.lr.ph894.preheader.i:                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  %i.qj = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 8 uses
  store i32 0, ptr %i.qj, align 8, !tbaa !17
  %i.qk = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr null, ptr %i.qk, align 8, !tbaa !18
  %i.ql = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  store ptr %i.qj, ptr %i.ql, align 8, !tbaa !19
  %i.qm = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %i.qj, ptr %i.qm, align 8, !tbaa !20
  %i.qn = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 3 uses
  store i64 0, ptr %i.qn, align 8, !tbaa !21
  br label %.lr.ph894.i

._crit_edge895.i:                                 ; preds = %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit593.i
  %i.qo = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.qp = load i64, ptr %i.qo, align 8, !tbaa !21
  %i.qq = icmp eq i64 %i.ru, %i.qp
  br i1 %i.qq, label %bb.ce, label %.loopexit.i24

bb.ce:                                            ; preds = %._crit_edge895.i
  %i.qr = load ptr, ptr %i.ql, align 8, !tbaa !19 ; 2 uses
  %.not6.i.i.i.i.i.i.i556.i = icmp eq ptr %i.qr, %i.qj
  br i1 %.not6.i.i.i.i.i.i.i556.i, label %_ZStneIhSt4lessIhESaIhEEbRKSt3setIT_T0_T1_ES9_.exit563.i, label %.lr.ph.i.i.i.i.preheader.i.i.i557.i

.lr.ph.i.i.i.i.preheader.i.i.i557.i:              ; preds = %bb.ce
  %i.qs = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !19
  br label %.lr.ph.i.i.i.i.i.i.i558.i

.lr.ph.i.i.i.i.i.i.i558.i:                        ; preds = %bb.cf, %.lr.ph.i.i.i.i.preheader.i.i.i557.i
  %.sroa.0.08.i.i.i.i.i.i.i559.i = phi ptr [ %i.qz, %bb.cf ], [ %i.qt, %.lr.ph.i.i.i.i.preheader.i.i.i557.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i560.i = phi ptr [ %i.qy, %bb.cf ], [ %i.qr, %.lr.ph.i.i.i.i.preheader.i.i.i557.i ] ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i560.i, i64 32
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !12
  %i.qw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i559.i, i64 32
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !12
  %.not.i561.i = icmp eq i8 %i.qv, %i.qx
  br i1 %.not.i561.i, label %bb.cf, label %.loopexit.i24

bb.cf:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i558.i
  %i.qy = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.07.i.i.i.i.i.i.i560.i) #15 ; 2 uses
  %i.qz = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.08.i.i.i.i.i.i.i559.i) #15
  %.not.i.i.i.i.i.i.i562.i = icmp eq ptr %i.qy, %i.qj
  br i1 %.not.i.i.i.i.i.i.i562.i, label %_ZStneIhSt4lessIhESaIhEEbRKSt3setIT_T0_T1_ES9_.exit563.i, label %.lr.ph.i.i.i.i.i.i.i558.i, !llvm.loop !28

bb.cg:                                            ; preds = %bb.cd
  %i.ra = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  br label %bb.cp

.lr.ph894.i:                                      ; preds = %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit593.i, %.lr.ph894.preheader.i
  %i.rb = phi i64 [ %i.ru, %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit593.i ], [ 0, %.lr.ph894.preheader.i ]
  %.sroa.0703.0893.i = phi i64 [ %.lcssa921.i, %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit593.i ], [ 1, %.lr.ph894.preheader.i ] ; 4 uses
  %i.rc = trunc i64 %.sroa.0703.0893.i to i8      ; 4 uses
  %.02022.i.i.i564.i = load ptr, ptr %i.qk, align 8, !tbaa !23 ; 2 uses
  %.not23.i.i.i565.i = icmp eq ptr %.02022.i.i.i564.i, null
  br i1 %.not23.i.i.i565.i, label %._crit_edge.thread.i.i.i582.i, label %.lr.ph.i.i.i566.i

.lr.ph.i.i.i566.i:                                ; preds = %.lr.ph894.i, %.lr.ph.i.i.i566.i
  %.02024.i.i.i567.i = phi ptr [ %.020.i.i.i570.i, %.lr.ph.i.i.i566.i ], [ %.02022.i.i.i564.i, %.lr.ph894.i ] ; 4 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.02024.i.i.i567.i, i64 32
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !12  ; 2 uses
  %i.rf = icmp ugt i8 %i.re, %i.rc                ; 2 uses
  %.in.v.i.i.i568.i = select i1 %i.rf, i64 16, i64 24
  %.in.i.i.i569.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i567.i, i64 %.in.v.i.i.i568.i
  %.020.i.i.i570.i = load ptr, ptr %.in.i.i.i569.i, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i571.i = icmp eq ptr %.020.i.i.i570.i, null
  br i1 %.not.i.i.i571.i, label %._crit_edge.i.i.i572.i, label %.lr.ph.i.i.i566.i, !llvm.loop !0

._crit_edge.i.i.i572.i:                           ; preds = %.lr.ph.i.i.i566.i
  br i1 %i.rf, label %._crit_edge.thread.i.i.i582.i, label %bb.ci

._crit_edge.thread.i.i.i582.i:                    ; preds = %._crit_edge.i.i.i572.i, %.lr.ph894.i
  %.019.lcssa29.i.i.i583.i = phi ptr [ %.02024.i.i.i567.i, %._crit_edge.i.i.i572.i ], [ %i.qj, %.lr.ph894.i ] ; 4 uses
  %i.rg = load ptr, ptr %i.ql, align 8, !tbaa !19
  %i.rh = icmp eq ptr %.019.lcssa29.i.i.i583.i, %i.rg
  br i1 %i.rh, label %select.unfold.i.i579.i, label %bb.ch

bb.ch:                                            ; preds = %._crit_edge.thread.i.i.i582.i
  %i.ri = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i583.i) #15
  %.phi.trans.insert.i.i584.i = getelementptr inbounds nuw i8, ptr %i.ri, i64 32
  %.pre.i.i585.i = load i8, ptr %.phi.trans.insert.i.i584.i, align 1, !tbaa !12
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %._crit_edge.i.i.i572.i
  %i.rj = phi i8 [ %.pre.i.i585.i, %bb.ch ], [ %i.re, %._crit_edge.i.i.i572.i ]
  %.019.lcssa28.i.i.i573.i = phi ptr [ %.019.lcssa29.i.i.i583.i, %bb.ch ], [ %.02024.i.i.i567.i, %._crit_edge.i.i.i572.i ]
  %i.rk = icmp ult i8 %i.rj, %i.rc
  br i1 %i.rk, label %select.unfold.i.i579.i, label %bb.ck

select.unfold.i.i579.i:                           ; preds = %bb.ci, %._crit_edge.thread.i.i.i582.i
  %.sroa.4.0.i.ph.i.i580.i = phi ptr [ %.019.lcssa29.i.i.i583.i, %._crit_edge.thread.i.i.i582.i ], [ %.019.lcssa28.i.i.i573.i, %bb.ci ] ; 3 uses
  %i.rl = icmp eq ptr %.sroa.4.0.i.ph.i.i580.i, %i.qj
  br i1 %i.rl, label %_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i581.i, label %bb.cj

bb.cj:                                            ; preds = %select.unfold.i.i579.i
  %i.rm = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i580.i, i64 32
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !12
  %i.ro = icmp ugt i8 %i.rn, %i.rc
  br label %_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i581.i

_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i581.i: ; preds = %bb.cj, %select.unfold.i.i579.i
  %i.rp = phi i1 [ %i.ro, %bb.cj ], [ true, %select.unfold.i.i579.i ]
  %i.rq = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #16
          to label %.noexc587.i unwind label %bb.cm ; 2 uses

.noexc587.i:                                      ; preds = %_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i581.i
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 32
  store i8 %i.rc, ptr %i.rr, align 1, !tbaa !12
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.rp, ptr noundef nonnull %i.rq, ptr noundef nonnull %.sroa.4.0.i.ph.i.i580.i, ptr noundef nonnull align 8 dereferenceable(32) %i.qj) #14
  %i.rs = load i64, ptr %i.qn, align 8, !tbaa !21
  %i.rt = add i64 %i.rs, 1                        ; 2 uses
  store i64 %i.rt, ptr %i.qn, align 8, !tbaa !21
  br label %bb.ck

bb.ck:                                            ; preds = %.noexc587.i, %bb.ci
  %i.ru = phi i64 [ %i.rt, %.noexc587.i ], [ %i.rb, %bb.ci ] ; 2 uses
  %i.rv = add i64 %.sroa.0703.0893.i, 1
  %umax962.i = call i64 @llvm.umax.i64(i64 %i.rv, i64 8) ; 3 uses
  %i.rw = add i64 %umax962.i, -1                  ; 2 uses
  %exitcond963.not.i262 = icmp eq i64 %.sroa.0703.0893.i, %i.rw
  br i1 %exitcond963.not.i262, label %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit593.i, label %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i590.i

bb.cl:                                            ; preds = %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i590.i
  %exitcond963.not.i = icmp eq i64 %i.ry, %i.rw
  br i1 %exitcond963.not.i, label %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit593.i, label %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i590.i, !llvm.loop !40

_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i590.i: ; preds = %bb.ck, %bb.cl
  %i.rx = phi i64 [ %i.ry, %bb.cl ], [ %.sroa.0703.0893.i, %bb.ck ]
  %i.ry = add i64 %i.rx, 1                        ; 4 uses
  %i.rz = shl nuw nsw i64 1, %i.ry
end_hunk_0
