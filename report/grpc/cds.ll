Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/cds?download=true
inline.NumInlined: 4497
inline.NumDeleted: 2365
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN9grpc_core17CdsChildNameState6UpdateEPKNS_9XdsConfig13ClusterConfigERKNS2_14EndpointConfigE:bb.a
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oh, i64 56
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !70 ; 3 uses
  %.sroa.speculated.i11.i184 = call i64 @llvm.umin.i64(i64 %i.ou, i64 %i.os) ; 2 uses
  %i.ov = icmp eq i64 %.sroa.speculated.i11.i184, 0
  br i1 %i.ov, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit19.i187, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i185

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i185: ; preds = %bb.bl
  %i.ow = getelementptr inbounds nuw i8, ptr %i.oh, i64 48
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !71
  %i.oy = load ptr, ptr %i.mw, align 8, !tbaa !71
  %i.oz = call i32 @memcmp(ptr noundef %i.oy, ptr noundef %i.ox, i64 noundef %.sroa.speculated.i11.i184) #36 ; 2 uses
  %.not.i13.i186 = icmp eq i32 %i.oz, 0
  br i1 %.not.i13.i186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit19.i187, label %.noexc77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit19.i187: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i185, %bb.bl
  %i.pa = sub i64 %i.os, %i.ou
  %spec.select7.i.i16.i188 = call i64 @llvm.smax.i64(i64 %i.pa, i64 -2147483648)
  %.08.i.i17.i189 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i16.i188, i64 2147483647)
  %.0.i6.i18.i190 = trunc nsw i64 %.08.i.i17.i189 to i32
  %.not10.i191 = icmp eq i64 %i.os, %i.ou
  br i1 %.not10.i191, label %bb.bm, label %.noexc77

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit19.i187
  %i.pb = load i64, ptr %i.mx, align 8, !tbaa !70 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oh, i64 88
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !70 ; 2 uses
  %.sroa.speculated.i20.i192 = call i64 @llvm.umin.i64(i64 %i.pd, i64 %i.pb) ; 2 uses
  %i.pe = icmp eq i64 %.sroa.speculated.i20.i192, 0
  br i1 %i.pe, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i24.i195, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i21.i193

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i21.i193: ; preds = %bb.bm
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oh, i64 80
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !71
  %i.ph = load ptr, ptr %i.my, align 8, !tbaa !71
  %i.pi = call i32 @memcmp(ptr noundef %i.ph, ptr noundef %i.pg, i64 noundef %.sroa.speculated.i20.i192) #36 ; 2 uses
  %.not.i22.i194 = icmp eq i32 %i.pi, 0
  br i1 %.not.i22.i194, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i24.i195, label %.noexc77

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i24.i195: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i21.i193, %bb.bm
  %i.pj = sub i64 %i.pb, %i.pd
  %spec.select7.i.i25.i196 = call i64 @llvm.smax.i64(i64 %i.pj, i64 -2147483648)
  %.08.i.i26.i197 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i25.i196, i64 2147483647)
  %.0.i6.i27.i198 = trunc nsw i64 %.08.i.i26.i197 to i32
  br label %.noexc77

.noexc77:                                         ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i24.i195, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i21.i193, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit19.i187, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i185, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i179, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i176
  %.0.i178 = phi i32 [ %i.oq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i176 ], [ %.0.i6.i.i182, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i179 ], [ %.0.i6.i18.i190, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit19.i187 ], [ %.0.i6.i27.i198, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i24.i195 ], [ %i.pi, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i21.i193 ], [ %i.oz, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i185 ]
  %i.pk = icmp sgt i32 %.0.i178, -1
  br i1 %i.pk, label %bb.bn, label %_ZNSt3mapIPN9grpc_core15XdsLocalityNameEmNS1_4LessESaISt4pairIKS2_mEEE5eraseERS5_.exit95

bb.bn:                                            ; preds = %.noexc77, %.split.i.i
  %i.pl = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !62
  store i64 %i.pm, ptr %9, align 8
  store i8 1, ptr %i.lo, align 8
  %i.pn = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.19.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #36
  call void @_ZdlPvm(ptr noundef nonnull %i.pn, i64 noundef 48) #38
  %i.po = load i64, ptr %i.g, align 8, !tbaa !44
  %i.pp = add i64 %i.po, -1
  store i64 %i.pp, ptr %i.g, align 8, !tbaa !44
  %i.pq = load ptr, ptr %i.i, align 8, !tbaa !41  ; 2 uses
  %.not10.i.i.i.i78 = icmp eq ptr %i.pq, null
  br i1 %.not10.i.i.i.i78, label %.critedge.i89, label %.lr.ph.i.i.i.i79

.lr.ph.i.i.i.i79:                                 ; preds = %bb.bn
  %i.pr = load i64, ptr %9, align 8, !tbaa !62    ; 2 uses
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %.lr.ph.i.i.i.i79
  %.012.i.i.i.i80 = phi ptr [ %i.pq, %.lr.ph.i.i.i.i79 ], [ %.1.i.i.i.i85, %bb.bo ] ; 4 uses
  %.0811.i.i.i.i81 = phi ptr [ %i.h, %.lr.ph.i.i.i.i79 ], [ %.19.i.i.i.i82, %bb.bo ] ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i80, i64 32
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !62
  %i.pu = icmp ult i64 %i.pt, %i.pr               ; 3 uses
  %.19.i.i.i.i82 = select i1 %i.pu, ptr %.0811.i.i.i.i81, ptr %.012.i.i.i.i80 ; 5 uses
  %.1.in.v.i.i.i.i83 = select i1 %i.pu, i64 24, i64 16
  %.1.in.i.i.i.i84 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i80, i64 %.1.in.v.i.i.i.i83
  %.1.i.i.i.i85 = load ptr, ptr %.1.in.i.i.i.i84, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i86 = icmp eq ptr %.1.i.i.i.i85, null
  br i1 %.not.i.i.i.i86, label %_ZNSt3mapImSt3setIPN9grpc_core15XdsLocalityNameENS2_4LessESaIS3_EESt4lessImESaISt4pairIKmS6_EEE11lower_boundERSA_.exit.i87, label %bb.bo, !llvm.loop !242

_ZNSt3mapImSt3setIPN9grpc_core15XdsLocalityNameENS2_4LessESaIS3_EESt4lessImESaISt4pairIKmS6_EEE11lower_boundERSA_.exit.i87: ; preds = %bb.bo
  %i.pv = icmp eq ptr %.19.i.i.i.i82, %i.h
  br i1 %i.pv, label %.critedge.i89, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt3mapImSt3setIPN9grpc_core15XdsLocalityNameENS2_4LessESaIS3_EESt4lessImESaISt4pairIKmS6_EEE11lower_boundERSA_.exit.i87
  %.19.i.i.i.i82.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.pu, ptr %.0811.i.i.i.i81, ptr %.012.i.i.i.i80
  %.19.i.i.i.i82.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i82.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.pw = load i64, ptr %.19.i.i.i.i82.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !62
  %i.px = icmp ult i64 %i.pr, %i.pw
  br i1 %i.px, label %.critedge.i89, label %bb.bw

.critedge.i89:                                    ; preds = %bb.bp, %_ZNSt3mapImSt3setIPN9grpc_core15XdsLocalityNameENS2_4LessESaIS3_EESt4lessImESaISt4pairIKmS6_EEE11lower_boundERSA_.exit.i87, %bb.bn
  %.08.lcssa.i.i.i11.i90 = phi ptr [ %.19.i.i.i.i82, %bb.bp ], [ %.19.i.i.i.i82, %_ZNSt3mapImSt3setIPN9grpc_core15XdsLocalityNameENS2_4LessESaIS3_EESt4lessImESaISt4pairIKmS6_EEE11lower_boundERSA_.exit.i87 ], [ %i.h, %bb.bn ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %8, ptr %3, align 8, !tbaa !73
  %i.py = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #37
          to label %.noexc231 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 11 uses

.noexc231:                                        ; preds = %.critedge.i89
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 32 ; 3 uses
  %i.qa = load i64, ptr %9, align 8, !tbaa !62
  store i64 %i.qa, ptr %i.pz, align 8, !tbaa !80
  %i.qb = getelementptr inbounds nuw i8, ptr %i.py, i64 40 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.py, i64 48 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.py, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qb, i8 0, i64 24, i1 false)
  store ptr %i.qc, ptr %i.qd, align 8, !tbaa !42
  %i.qe = getelementptr inbounds nuw i8, ptr %i.py, i64 72
  store ptr %i.qc, ptr %i.qe, align 8, !tbaa !43
  %i.qf = getelementptr inbounds nuw i8, ptr %i.py, i64 80
  store i64 0, ptr %i.qf, align 8, !tbaa !44
  store ptr %i.py, ptr %i.lp, align 8, !tbaa !83
  %i.qg = invoke { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmSt3setIPN9grpc_core15XdsLocalityNameENS4_4LessESaIS5_EEESt10_Select1stIS9_ESt4lessImESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr %.08.lcssa.i.i.i11.i90, ptr noundef nonnull align 8 dereferenceable(8) %i.pz)
          to label %bb.bq unwind label %bb.bt     ; 2 uses

bb.bq:                                            ; preds = %.noexc231
  %i.qh = extractvalue { ptr, ptr } %i.qg, 0      ; 2 uses
  %i.qi = extractvalue { ptr, ptr } %i.qg, 1      ; 4 uses
  %.not.i225 = icmp eq ptr %i.qi, null
  br i1 %.not.i225, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.not.i.i.i226 = icmp ne ptr %i.qh, null
  %i.qj = icmp eq ptr %i.qi, %i.h
  %or.cond.i.i.i227 = or i1 %.not.i.i.i226, %i.qj
  br i1 %or.cond.i.i.i227, label %.thread.i228, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 32
  %i.ql = load i64, ptr %i.pz, align 8, !tbaa !62
  %i.qm = load i64, ptr %i.qk, align 8, !tbaa !62
  %i.qn = icmp ult i64 %i.ql, %i.qm
  br label %.thread.i228

.thread.i228:                                     ; preds = %bb.bs, %bb.br
  %i.qo = phi i1 [ %i.qn, %bb.bs ], [ true, %bb.br ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.qo, ptr noundef nonnull %i.py, ptr noundef nonnull %i.qi, ptr noundef nonnull align 8 dereferenceable(32) %i.h) #36
  %i.qp = load i64, ptr %i.l, align 8, !tbaa !44
  %i.qq = add i64 %i.qp, 1
  store i64 %i.qq, ptr %i.l, align 8, !tbaa !44
  br label %.noexc91

bb.bt:                                            ; preds = %.noexc231
  %i.qr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeImSt4pairIKmSt3setIPN9grpc_core15XdsLocalityNameENS4_4LessESaIS5_EEESt10_Select1stIS9_ESt4lessImESaIS9_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %.body72

bb.bu:                                            ; preds = %bb.bq
  %i.qs = getelementptr inbounds nuw i8, ptr %i.py, i64 56
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !41
  invoke void @_ZNSt8_Rb_treeIPN9grpc_core15XdsLocalityNameES2_St9_IdentityIS2_ENS1_4LessESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.qb, ptr noundef %i.qt)
          to label %_ZNSt8_Rb_treeImSt4pairIKmSt3setIPN9grpc_core15XdsLocalityNameENS4_4LessESaIS5_EEESt10_Select1stIS9_ESt4lessImESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i.i230 unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.qu = landingpad { ptr, i32 }
          catch ptr null
  %i.qv = extractvalue { ptr, i32 } %i.qu, 0
  call void @__clang_call_terminate(ptr %i.qv) #39
  unreachable

_ZNSt8_Rb_treeImSt4pairIKmSt3setIPN9grpc_core15XdsLocalityNameENS4_4LessESaIS5_EEESt10_Select1stIS9_ESt4lessImESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i.i230: ; preds = %bb.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.py, i64 noundef 88) #38
  br label %.noexc91

.noexc91:                                         ; preds = %_ZNSt8_Rb_treeImSt4pairIKmSt3setIPN9grpc_core15XdsLocalityNameENS4_4LessESaIS5_EEESt10_Select1stIS9_ESt4lessImESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i.i230, %.thread.i228
  %.sroa.0.010.i229 = phi ptr [ %i.py, %.thread.i228 ], [ %i.qh, %_ZNSt8_Rb_treeImSt4pairIKmSt3setIPN9grpc_core15XdsLocalityNameENS4_4LessESaIS5_EEESt10_Select1stIS9_ESt4lessImESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i.i230 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.bw

bb.bw:                                            ; preds = %.noexc91, %bb.bp
  %.sroa.06.0.i88 = phi ptr [ %.sroa.0.010.i229, %.noexc91 ], [ %.19.i.i.i.i82, %bb.bp ] ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i88, i64 64
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !42 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i88, i64 48 ; 2 uses
  %.not647714 = icmp eq ptr %i.qx, %i.qy
  br i1 %.not647714, label %_ZNSt3mapIPN9grpc_core15XdsLocalityNameEmNS1_4LessESaISt4pairIKS2_mEEE5eraseERS5_.exit95, label %.lr.ph717

.lr.ph717:                                        ; preds = %bb.bw, %_ZNSt3mapIPN9grpc_core15XdsLocalityNameEmNS1_4LessESaISt4pairIKS2_mEEE5eraseERS5_.exit
  %.sroa.0598.0715 = phi ptr [ %i.ws, %_ZNSt3mapIPN9grpc_core15XdsLocalityNameEmNS1_4LessESaISt4pairIKS2_mEEE5eraseERS5_.exit ], [ %i.qx, %bb.bw ] ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.sroa.0598.0715, i64 32
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !65
  %.fr = freeze ptr %i.ra                         ; 9 uses
  %.050.i = load ptr, ptr %i.d, align 8, !tbaa !66 ; 3 uses
  %.not51.i = icmp eq ptr %.050.i, null
  br i1 %.not51.i, label %.noexc237, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph717
  %i.rb = icmp eq ptr %.fr, null                  ; 3 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.fr, i64 24 ; 4 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.fr, i64 16 ; 4 uses
  %i.re = getelementptr inbounds nuw i8, ptr %.fr, i64 56 ; 4 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.fr, i64 48 ; 4 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %.fr, i64 88 ; 4 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.fr, i64 80 ; 4 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.ci
  %.053.i = phi ptr [ %.0.i331, %bb.ci ], [ %.050.i, %.lr.ph.i.preheader ] ; 8 uses
  %.02252.i = phi ptr [ %.123.i, %bb.ci ], [ %i.c, %.lr.ph.i.preheader ] ; 4 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.053.i, i64 32
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !65 ; 14 uses
  %i.rk = icmp eq ptr %i.rj, null
  %or.cond.i.i321 = or i1 %i.rb, %i.rk
  br i1 %or.cond.i.i321, label %.split.i333, label %_ZNK9grpc_core15XdsLocalityName4LessclEPKS0_S3_.exit.i322

.split.i333:                                      ; preds = %.lr.ph.i
  %.not45.i = icmp eq ptr %.fr, %i.rj
  br i1 %.not45.i, label %.split44.i, label %bb.ci

_ZNK9grpc_core15XdsLocalityName4LessclEPKS0_S3_.exit.i322: ; preds = %.lr.ph.i
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rj, i64 24
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !70 ; 3 uses
  %i.rn = load i64, ptr %i.rc, align 8, !tbaa !70 ; 3 uses
  %.sroa.speculated.i.i468 = call i64 @llvm.umin.i64(i64 %i.rn, i64 %i.rm) ; 2 uses
  %i.ro = icmp eq i64 %.sroa.speculated.i.i468, 0
  br i1 %i.ro, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i472, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i469

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i469: ; preds = %_ZNK9grpc_core15XdsLocalityName4LessclEPKS0_S3_.exit.i322
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rj, i64 16
  %i.rq = load ptr, ptr %i.rd, align 8, !tbaa !71
  %i.rr = load ptr, ptr %i.rp, align 8, !tbaa !71
  %i.rs = call i32 @memcmp(ptr noundef %i.rr, ptr noundef %i.rq, i64 noundef %.sroa.speculated.i.i468) #36 ; 2 uses
  %.not.i.i470 = icmp eq i32 %i.rs, 0
  br i1 %.not.i.i470, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i472, label %.noexc334

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i472: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i469, %_ZNK9grpc_core15XdsLocalityName4LessclEPKS0_S3_.exit.i322
  %i.rt = sub i64 %i.rm, %i.rn
  %spec.select7.i.i.i473 = call i64 @llvm.smax.i64(i64 %i.rt, i64 -2147483648)
  %.08.i.i.i474 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i473, i64 2147483647)
  %.0.i6.i.i475 = trunc nsw i64 %.08.i.i.i474 to i32
  %.not.i476 = icmp eq i64 %i.rm, %i.rn
  br i1 %.not.i476, label %bb.bx, label %.noexc334

bb.bx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i472
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rj, i64 56
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !70 ; 3 uses
  %i.rw = load i64, ptr %i.re, align 8, !tbaa !70 ; 3 uses
  %.sroa.speculated.i11.i477 = call i64 @llvm.umin.i64(i64 %i.rw, i64 %i.rv) ; 2 uses
  %i.rx = icmp eq i64 %.sroa.speculated.i11.i477, 0
  br i1 %i.rx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit19.i480, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i478

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i478: ; preds = %bb.bx
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rj, i64 48
  %i.rz = load ptr, ptr %i.rf, align 8, !tbaa !71
  %i.sa = load ptr, ptr %i.ry, align 8, !tbaa !71
  %i.sb = call i32 @memcmp(ptr noundef %i.sa, ptr noundef %i.rz, i64 noundef %.sroa.speculated.i11.i477) #36 ; 2 uses
  %.not.i13.i479 = icmp eq i32 %i.sb, 0
  br i1 %.not.i13.i479, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit19.i480, label %.noexc334

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit19.i480: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i478, %bb.bx
  %i.sc = sub i64 %i.rv, %i.rw
  %spec.select7.i.i16.i481 = call i64 @llvm.smax.i64(i64 %i.sc, i64 -2147483648)
  %.08.i.i17.i482 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i16.i481, i64 2147483647)
  %.0.i6.i18.i483 = trunc nsw i64 %.08.i.i17.i482 to i32
  %.not10.i484 = icmp eq i64 %i.rv, %i.rw
  br i1 %.not10.i484, label %bb.by, label %.noexc334

bb.by:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit19.i480
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rj, i64 88
  %i.se = load i64, ptr %i.sd, align 8, !tbaa !70 ; 2 uses
  %i.sf = load i64, ptr %i.rg, align 8, !tbaa !70 ; 2 uses
  %.sroa.speculated.i20.i485 = call i64 @llvm.umin.i64(i64 %i.sf, i64 %i.se) ; 2 uses
  %i.sg = icmp eq i64 %.sroa.speculated.i20.i485, 0
  br i1 %i.sg, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i24.i488, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i21.i486

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i21.i486: ; preds = %bb.by
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rj, i64 80
  %i.si = load ptr, ptr %i.rh, align 8, !tbaa !71
  %i.sj = load ptr, ptr %i.sh, align 8, !tbaa !71
  %i.sk = call i32 @memcmp(ptr noundef %i.sj, ptr noundef %i.si, i64 noundef %.sroa.speculated.i20.i485) #36 ; 2 uses
  %.not.i22.i487 = icmp eq i32 %i.sk, 0
  br i1 %.not.i22.i487, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i24.i488, label %.noexc334

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i24.i488: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i21.i486, %bb.by
  %i.sl = sub i64 %i.se, %i.sf
  %spec.select7.i.i25.i489 = call i64 @llvm.smax.i64(i64 %i.sl, i64 -2147483648)
  %.08.i.i26.i490 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i25.i489, i64 2147483647)
  %.0.i6.i27.i491 = trunc nsw i64 %.08.i.i26.i490 to i32
  br label %.noexc334

.noexc334:                                        ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i24.i488, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i21.i486, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit19.i480, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i478, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i472, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i469
  %.0.i471 = phi i32 [ %i.rs, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i469 ], [ %.0.i6.i.i475, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i472 ], [ %.0.i6.i18.i483, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit19.i480 ], [ %.0.i6.i27.i491, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i24.i488 ], [ %i.sk, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i21.i486 ], [ %i.sb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i478 ]
  %i.sm = icmp slt i32 %.0.i471, 0
  br i1 %i.sm, label %bb.ci, label %_ZNK9grpc_core15XdsLocalityName4LessclEPKS0_S3_.exit26.i

_ZNK9grpc_core15XdsLocalityName4LessclEPKS0_S3_.exit26.i: ; preds = %.noexc334
  %i.sn = load i64, ptr %i.rc, align 8, !tbaa !70 ; 3 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.rj, i64 24
  %i.sp = load i64, ptr %i.so, align 8, !tbaa !70 ; 3 uses
  %.sroa.speculated.i.i443 = call i64 @llvm.umin.i64(i64 %i.sp, i64 %i.sn) ; 2 uses
  %i.sq = icmp eq i64 %.sroa.speculated.i.i443, 0
  br i1 %i.sq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i447, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i444

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i444: ; preds = %_ZNK9grpc_core15XdsLocalityName4LessclEPKS0_S3_.exit26.i
  %i.sr = getelementptr inbounds nuw i8, ptr %i.rj, i64 16
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !71
  %i.st = load ptr, ptr %i.rd, align 8, !tbaa !71
  %i.su = call i32 @memcmp(ptr noundef %i.st, ptr noundef %i.ss, i64 noundef %.sroa.speculated.i.i443) #36 ; 2 uses
  %.not.i.i445 = icmp eq i32 %i.su, 0
  br i1 %.not.i.i445, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i447, label %.noexc335

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i447: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i444, %_ZNK9grpc_core15XdsLocalityName4LessclEPKS0_S3_.exit26.i
  %i.sv = sub i64 %i.sn, %i.sp
  %spec.select7.i.i.i448 = call i64 @llvm.smax.i64(i64 %i.sv, i64 -2147483648)
  %.08.i.i.i449 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i448, i64 2147483647)
  %.0.i6.i.i450 = trunc nsw i64 %.08.i.i.i449 to i32
  %.not.i451 = icmp eq i64 %i.sn, %i.sp
  br i1 %.not.i451, label %bb.bz, label %.noexc335

bb.bz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i447
  %i.sw = load i64, ptr %i.re, align 8, !tbaa !70 ; 3 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.rj, i64 56
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !70 ; 3 uses
  %.sroa.speculated.i11.i452 = call i64 @llvm.umin.i64(i64 %i.sy, i64 %i.sw) ; 2 uses
  %i.sz = icmp eq i64 %.sroa.speculated.i11.i452, 0
  br i1 %i.sz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit19.i455, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i453

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i453: ; preds = %bb.bz
  %i.ta = getelementptr inbounds nuw i8, ptr %i.rj, i64 48
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !71
  %i.tc = load ptr, ptr %i.rf, align 8, !tbaa !71
  %i.td = call i32 @memcmp(ptr noundef %i.tc, ptr noundef %i.tb, i64 noundef %.sroa.speculated.i11.i452) #36 ; 2 uses
  %.not.i13.i454 = icmp eq i32 %i.td, 0
  br i1 %.not.i13.i454, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit19.i455, label %.noexc335

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit19.i455: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i453, %bb.bz
  %i.te = sub i64 %i.sw, %i.sy
  %spec.select7.i.i16.i456 = call i64 @llvm.smax.i64(i64 %i.te, i64 -2147483648)
  %.08.i.i17.i457 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i16.i456, i64 2147483647)
  %.0.i6.i18.i458 = trunc nsw i64 %.08.i.i17.i457 to i32
  %.not10.i459 = icmp eq i64 %i.sw, %i.sy
  br i1 %.not10.i459, label %bb.ca, label %.noexc335

bb.ca:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit19.i455
  %i.tf = load i64, ptr %i.rg, align 8, !tbaa !70 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.rj, i64 88
  %i.th = load i64, ptr %i.tg, align 8, !tbaa !70 ; 2 uses
  %.sroa.speculated.i20.i460 = call i64 @llvm.umin.i64(i64 %i.th, i64 %i.tf) ; 2 uses
  %i.ti = icmp eq i64 %.sroa.speculated.i20.i460, 0
  br i1 %i.ti, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i24.i463, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i21.i461

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i21.i461: ; preds = %bb.ca
  %i.tj = getelementptr inbounds nuw i8, ptr %i.rj, i64 80
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !71
  %i.tl = load ptr, ptr %i.rh, align 8, !tbaa !71
  %i.tm = call i32 @memcmp(ptr noundef %i.tl, ptr noundef %i.tk, i64 noundef %.sroa.speculated.i20.i460) #36 ; 2 uses
  %.not.i22.i462 = icmp eq i32 %i.tm, 0
  br i1 %.not.i22.i462, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i24.i463, label %.noexc335

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i24.i463: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i21.i461, %bb.ca
  %i.tn = sub i64 %i.tf, %i.th
  %spec.select7.i.i25.i464 = call i64 @llvm.smax.i64(i64 %i.tn, i64 -2147483648)
  %.08.i.i26.i465 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i25.i464, i64 2147483647)
  %.0.i6.i27.i466 = trunc nsw i64 %.08.i.i26.i465 to i32
  br label %.noexc335

.noexc335:                                        ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i24.i463, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i21.i461, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit19.i455, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i453, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i447, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i444
  %.0.i446 = phi i32 [ %i.su, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i444 ], [ %.0.i6.i.i450, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i447 ], [ %.0.i6.i18.i458, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit19.i455 ], [ %.0.i6.i27.i466, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i24.i463 ], [ %i.tm, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i21.i461 ], [ %i.td, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i453 ]
  %i.to = icmp slt i32 %.0.i446, 0
  br i1 %i.to, label %bb.ci, label %.split44.i

.split44.i:                                       ; preds = %.noexc335, %.split.i333
  %i.tp = getelementptr inbounds nuw i8, ptr %.053.i, i64 16
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !89 ; 3 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.053.i, i64 24
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !90 ; 2 uses
  %.not11.i.i.a = icmp eq ptr %i.tq, null
  br i1 %.not11.i.i.a, label %_ZNSt8_Rb_treeIPN9grpc_core15XdsLocalityNameESt4pairIKS2_mESt10_Select1stIS5_ENS1_4LessESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i, label %.lr.ph.i.i323.preheader

.lr.ph.i.i323.preheader:                          ; preds = %.split44.i
  br i1 %i.rb, label %.lr.ph.i.i323.us, label %.lr.ph.i.i323

.lr.ph.i.i323.us:                                 ; preds = %.lr.ph.i.i323.preheader, %.lr.ph.i.i323.us
  %.013.i.i.us = phi ptr [ %.1.i.i.us, %.lr.ph.i.i323.us ], [ %i.tq, %.lr.ph.i.i323.preheader ] ; 3 uses
  %.0812.i.i.us = phi ptr [ %spec.select734, %.lr.ph.i.i323.us ], [ %.053.i, %.lr.ph.i.i323.preheader ]
  %i.tt = getelementptr inbounds nuw i8, ptr %.013.i.i.us, i64 32
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !65
  %.not10.i.i.us = icmp eq ptr %i.tu, null        ; 2 uses
  %spec.select733 = select i1 %.not10.i.i.us, i64 16, i64 24
  %spec.select734 = select i1 %.not10.i.i.us, ptr %.013.i.i.us, ptr %.0812.i.i.us ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.013.i.i.us, i64 %spec.select733
  %.1.i.i.us = load ptr, ptr %i.tv, align 8, !tbaa !66 ; 2 uses
  %.not.i.i326.us = icmp eq ptr %.1.i.i.us, null
  br i1 %.not.i.i326.us, label %_ZNSt8_Rb_treeIPN9grpc_core15XdsLocalityNameESt4pairIKS2_mESt10_Select1stIS5_ENS1_4LessESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i, label %.lr.ph.i.i323.us, !llvm.loop !241

.lr.ph.i.i323:                                    ; preds = %.lr.ph.i.i323.preheader, %bb.cd
  %.013.i.i = phi ptr [ %.1.i.i, %bb.cd ], [ %i.tq, %.lr.ph.i.i323.preheader ] ; 3 uses
  %.0812.i.i = phi ptr [ %.19.i.i, %bb.cd ], [ %.053.i, %.lr.ph.i.i323.preheader ]
  %i.tw = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 32
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !65 ; 7 uses
  %i.ty = icmp eq ptr %i.tx, null
  br i1 %i.ty, label %.split.i.i330, label %_ZNK9grpc_core15XdsLocalityName4LessclEPKS0_S3_.exit.i.i325

_ZNK9grpc_core15XdsLocalityName4LessclEPKS0_S3_.exit.i.i325: ; preds = %.lr.ph.i.i323
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tx, i64 24
  %i.ua = load i64, ptr %i.tz, align 8, !tbaa !70 ; 3 uses
  %i.ub = load i64, ptr %i.rc, align 8, !tbaa !70 ; 3 uses
  %.sroa.speculated.i.i418 = call i64 @llvm.umin.i64(i64 %i.ub, i64 %i.ua) ; 2 uses
  %i.uc = icmp eq i64 %.sroa.speculated.i.i418, 0
  br i1 %i.uc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i422, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i419

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i419: ; preds = %_ZNK9grpc_core15XdsLocalityName4LessclEPKS0_S3_.exit.i.i325
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tx, i64 16
  %i.ue = load ptr, ptr %i.rd, align 8, !tbaa !71
  %i.uf = load ptr, ptr %i.ud, align 8, !tbaa !71
  %i.ug = call i32 @memcmp(ptr noundef %i.uf, ptr noundef %i.ue, i64 noundef %.sroa.speculated.i.i418) #36 ; 2 uses
  %.not.i.i420 = icmp eq i32 %i.ug, 0
  br i1 %.not.i.i420, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i422, label %.noexc336

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i422: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i419, %_ZNK9grpc_core15XdsLocalityName4LessclEPKS0_S3_.exit.i.i325
  %i.uh = sub i64 %i.ua, %i.ub
  %spec.select7.i.i.i423 = call i64 @llvm.smax.i64(i64 %i.uh, i64 -2147483648)
  %.08.i.i.i424 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i423, i64 2147483647)
  %.0.i6.i.i425 = trunc nsw i64 %.08.i.i.i424 to i32
  %.not.i426 = icmp eq i64 %i.ua, %i.ub
  br i1 %.not.i426, label %bb.cb, label %.noexc336

bb.cb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i422
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tx, i64 56
  %i.uj = load i64, ptr %i.ui, align 8, !tbaa !70 ; 3 uses
  %i.uk = load i64, ptr %i.re, align 8, !tbaa !70 ; 3 uses
  %.sroa.speculated.i11.i427 = call i64 @llvm.umin.i64(i64 %i.uk, i64 %i.uj) ; 2 uses
  %i.ul = icmp eq i64 %.sroa.speculated.i11.i427, 0
  br i1 %i.ul, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit19.i430, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i428

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i428: ; preds = %bb.cb
  %i.um = getelementptr inbounds nuw i8, ptr %i.tx, i64 48
  %i.un = load ptr, ptr %i.rf, align 8, !tbaa !71
  %i.uo = load ptr, ptr %i.um, align 8, !tbaa !71
  %i.up = call i32 @memcmp(ptr noundef %i.uo, ptr noundef %i.un, i64 noundef %.sroa.speculated.i11.i427) #36 ; 2 uses
  %.not.i13.i429 = icmp eq i32 %i.up, 0
  br i1 %.not.i13.i429, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit19.i430, label %.noexc336

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit19.i430: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i428, %bb.cb
  %i.uq = sub i64 %i.uj, %i.uk
  %spec.select7.i.i16.i431 = call i64 @llvm.smax.i64(i64 %i.uq, i64 -2147483648)
  %.08.i.i17.i432 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i16.i431, i64 2147483647)
  %.0.i6.i18.i433 = trunc nsw i64 %.08.i.i17.i432 to i32
  %.not10.i434 = icmp eq i64 %i.uj, %i.uk
  br i1 %.not10.i434, label %bb.cc, label %.noexc336

bb.cc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit19.i430
  %i.ur = getelementptr inbounds nuw i8, ptr %i.tx, i64 88
  %i.us = load i64, ptr %i.ur, align 8, !tbaa !70 ; 2 uses
  %i.ut = load i64, ptr %i.rg, align 8, !tbaa !70 ; 2 uses
  %.sroa.speculated.i20.i435 = call i64 @llvm.umin.i64(i64 %i.ut, i64 %i.us) ; 2 uses
  %i.uu = icmp eq i64 %.sroa.speculated.i20.i435, 0
  br i1 %i.uu, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i24.i438, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i21.i436

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i21.i436: ; preds = %bb.cc
  %i.uv = getelementptr inbounds nuw i8, ptr %i.tx, i64 80
  %i.uw = load ptr, ptr %i.rh, align 8, !tbaa !71
  %i.ux = load ptr, ptr %i.uv, align 8, !tbaa !71
  %i.uy = call i32 @memcmp(ptr noundef %i.ux, ptr noundef %i.uw, i64 noundef %.sroa.speculated.i20.i435) #36 ; 2 uses
  %.not.i22.i437 = icmp eq i32 %i.uy, 0
  br i1 %.not.i22.i437, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i24.i438, label %.noexc336

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i24.i438: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i21.i436, %bb.cc
  %i.uz = sub i64 %i.us, %i.ut
  %spec.select7.i.i25.i439 = call i64 @llvm.smax.i64(i64 %i.uz, i64 -2147483648)
  %.08.i.i26.i440 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i25.i439, i64 2147483647)
  %.0.i6.i27.i441 = trunc nsw i64 %.08.i.i26.i440 to i32
  br label %.noexc336

.noexc336:                                        ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i24.i438, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i21.i436, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit19.i430, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i428, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i422, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i419
  %.0.i421 = phi i32 [ %i.ug, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i419 ], [ %.0.i6.i.i425, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i422 ], [ %.0.i6.i18.i433, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit19.i430 ], [ %.0.i6.i27.i441, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i24.i438 ], [ %i.uy, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i21.i436 ], [ %i.up, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i428 ]
  %i.va = icmp slt i32 %.0.i421, 0
  br i1 %i.va, label %.split.i.i330, label %bb.cd

.split.i.i330:                                    ; preds = %.lr.ph.i.i323, %.noexc336
  br label %bb.cd

bb.cd:                                            ; preds = %.split.i.i330, %.noexc336
  %.sink.i.i = phi i64 [ 24, %.split.i.i330 ], [ 16, %.noexc336 ]
  %.19.i.i = phi ptr [ %.0812.i.i, %.split.i.i330 ], [ %.013.i.i, %.noexc336 ] ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 %.sink.i.i
  %.1.i.i = load ptr, ptr %i.vb, align 8, !tbaa !66 ; 2 uses
  %.not.i.i326 = icmp eq ptr %.1.i.i, null
  br i1 %.not.i.i326, label %_ZNSt8_Rb_treeIPN9grpc_core15XdsLocalityNameESt4pairIKS2_mESt10_Select1stIS5_ENS1_4LessESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i, label %.lr.ph.i.i323, !llvm.loop !241

_ZNSt8_Rb_treeIPN9grpc_core15XdsLocalityNameESt4pairIKS2_mESt10_Select1stIS5_ENS1_4LessESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i: ; preds = %bb.cd, %.lr.ph.i.i323.us, %.split44.i
  %.08.lcssa.i.i = phi ptr [ %.053.i, %.split44.i ], [ %spec.select734, %.lr.ph.i.i323.us ], [ %.19.i.i, %bb.cd ] ; 2 uses
  %.not11.i27.i = icmp eq ptr %i.ts, null
  br i1 %.not11.i27.i, label %.noexc237, label %.lr.ph.i28.i

.lr.ph.i28.i:                                     ; preds = %_ZNSt8_Rb_treeIPN9grpc_core15XdsLocalityNameESt4pairIKS2_mESt10_Select1stIS5_ENS1_4LessESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i, %bb.ch
  %.013.i29.i = phi ptr [ %.1.i35.i, %bb.ch ], [ %i.ts, %_ZNSt8_Rb_treeIPN9grpc_core15XdsLocalityNameESt4pairIKS2_mESt10_Select1stIS5_ENS1_4LessESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i ] ; 4 uses
  %.0812.i30.i = phi ptr [ %.19.i34.i, %bb.ch ], [ %.02252.i, %_ZNSt8_Rb_treeIPN9grpc_core15XdsLocalityNameESt4pairIKS2_mESt10_Select1stIS5_ENS1_4LessESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i ]
  %i.vc = getelementptr inbounds nuw i8, ptr %.013.i29.i, i64 32
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !65 ; 8 uses
  %i.ve = icmp eq ptr %i.vd, null
  %or.cond.i.i31.i = or i1 %i.rb, %i.ve
  br i1 %or.cond.i.i31.i, label %.split.i38.i, label %_ZNK9grpc_core15XdsLocalityName4LessclEPKS0_S3_.exit.i32.i

.split.i38.i:                                     ; preds = %.lr.ph.i28.i
  %.not10.i39.i = icmp eq ptr %i.vd, %.fr
  br i1 %.not10.i39.i, label %bb.cg, label %bb.ch

_ZNK9grpc_core15XdsLocalityName4LessclEPKS0_S3_.exit.i32.i: ; preds = %.lr.ph.i28.i
  %i.vf = load i64, ptr %i.rc, align 8, !tbaa !70 ; 3 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vd, i64 24
  %i.vh = load i64, ptr %i.vg, align 8, !tbaa !70 ; 3 uses
  %.sroa.speculated.i.i393 = call i64 @llvm.umin.i64(i64 %i.vh, i64 %i.vf) ; 2 uses
  %i.vi = icmp eq i64 %.sroa.speculated.i.i393, 0
  br i1 %i.vi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i397, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i394

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i394: ; preds = %_ZNK9grpc_core15XdsLocalityName4LessclEPKS0_S3_.exit.i32.i
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vd, i64 16
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !71
  %i.vl = load ptr, ptr %i.rd, align 8, !tbaa !71
  %i.vm = call i32 @memcmp(ptr noundef %i.vl, ptr noundef %i.vk, i64 noundef %.sroa.speculated.i.i393) #36 ; 2 uses
  %.not.i.i395 = icmp eq i32 %i.vm, 0
  br i1 %.not.i.i395, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i397, label %.noexc337

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i397: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i394, %_ZNK9grpc_core15XdsLocalityName4LessclEPKS0_S3_.exit.i32.i
  %i.vn = sub i64 %i.vf, %i.vh
  %spec.select7.i.i.i398 = call i64 @llvm.smax.i64(i64 %i.vn, i64 -2147483648)
  %.08.i.i.i399 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i398, i64 2147483647)
  %.0.i6.i.i400 = trunc nsw i64 %.08.i.i.i399 to i32
  %.not.i401 = icmp eq i64 %i.vf, %i.vh
  br i1 %.not.i401, label %bb.ce, label %.noexc337

bb.ce:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i397
  %i.vo = load i64, ptr %i.re, align 8, !tbaa !70 ; 3 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vd, i64 56
  %i.vq = load i64, ptr %i.vp, align 8, !tbaa !70 ; 3 uses
  %.sroa.speculated.i11.i402 = call i64 @llvm.umin.i64(i64 %i.vq, i64 %i.vo) ; 2 uses
  %i.vr = icmp eq i64 %.sroa.speculated.i11.i402, 0
  br i1 %i.vr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit19.i405, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i403

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i403: ; preds = %bb.ce
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vd, i64 48
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !71
  %i.vu = load ptr, ptr %i.rf, align 8, !tbaa !71
  %i.vv = call i32 @memcmp(ptr noundef %i.vu, ptr noundef %i.vt, i64 noundef %.sroa.speculated.i11.i402) #36 ; 2 uses
  %.not.i13.i404 = icmp eq i32 %i.vv, 0
  br i1 %.not.i13.i404, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit19.i405, label %.noexc337

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit19.i405: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i403, %bb.ce
  %i.vw = sub i64 %i.vo, %i.vq
  %spec.select7.i.i16.i406 = call i64 @llvm.smax.i64(i64 %i.vw, i64 -2147483648)
  %.08.i.i17.i407 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i16.i406, i64 2147483647)
  %.0.i6.i18.i408 = trunc nsw i64 %.08.i.i17.i407 to i32
  %.not10.i409 = icmp eq i64 %i.vo, %i.vq
  br i1 %.not10.i409, label %bb.cf, label %.noexc337

bb.cf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit19.i405
  %i.vx = load i64, ptr %i.rg, align 8, !tbaa !70 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vd, i64 88
  %i.vz = load i64, ptr %i.vy, align 8, !tbaa !70 ; 2 uses
  %.sroa.speculated.i20.i410 = call i64 @llvm.umin.i64(i64 %i.vz, i64 %i.vx) ; 2 uses
  %i.wa = icmp eq i64 %.sroa.speculated.i20.i410, 0
  br i1 %i.wa, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i24.i413, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i21.i411

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i21.i411: ; preds = %bb.cf
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vd, i64 80
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !71
  %i.wd = load ptr, ptr %i.rh, align 8, !tbaa !71
  %i.we = call i32 @memcmp(ptr noundef %i.wd, ptr noundef %i.wc, i64 noundef %.sroa.speculated.i20.i410) #36 ; 2 uses
  %.not.i22.i412 = icmp eq i32 %i.we, 0
  br i1 %.not.i22.i412, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i24.i413, label %.noexc337

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i24.i413: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i21.i411, %bb.cf
  %i.wf = sub i64 %i.vx, %i.vz
  %spec.select7.i.i25.i414 = call i64 @llvm.smax.i64(i64 %i.wf, i64 -2147483648)
  %.08.i.i26.i415 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i25.i414, i64 2147483647)
  %.0.i6.i27.i416 = trunc nsw i64 %.08.i.i26.i415 to i32
  br label %.noexc337

.noexc337:                                        ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i24.i413, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i21.i411, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit19.i405, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i403, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i397, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i394
  %.0.i396 = phi i32 [ %i.vm, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i394 ], [ %.0.i6.i.i400, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i397 ], [ %.0.i6.i18.i408, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit19.i405 ], [ %.0.i6.i27.i416, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i24.i413 ], [ %i.we, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i21.i411 ], [ %i.vv, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i403 ]
  %i.wg = icmp slt i32 %.0.i396, 0
  br i1 %i.wg, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %.noexc337, %.split.i38.i
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.noexc337, %.split.i38.i
  %.sink.i33.i = phi i64 [ 24, %bb.cg ], [ 16, %.split.i38.i ], [ 16, %.noexc337 ]
  %.19.i34.i = phi ptr [ %.0812.i30.i, %bb.cg ], [ %.013.i29.i, %.split.i38.i ], [ %.013.i29.i, %.noexc337 ] ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %.013.i29.i, i64 %.sink.i33.i
  %.1.i35.i = load ptr, ptr %i.wh, align 8, !tbaa !66 ; 2 uses
  %.not.i36.i = icmp eq ptr %.1.i35.i, null
  br i1 %.not.i36.i, label %.noexc237, label %.lr.ph.i28.i, !llvm.loop !244

bb.ci:                                            ; preds = %.noexc335, %.noexc334, %.split.i333
  %.sink.i = phi i64 [ 24, %.noexc334 ], [ 24, %.split.i333 ], [ 16, %.noexc335 ]
  %.123.i = phi ptr [ %.02252.i, %.noexc334 ], [ %.02252.i, %.split.i333 ], [ %.053.i, %.noexc335 ] ; 3 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %.053.i, i64 %.sink.i
  %.0.i331 = load ptr, ptr %i.wi, align 8, !tbaa !66 ; 2 uses
  %.not.i332 = icmp eq ptr %.0.i331, null
  br i1 %.not.i332, label %.noexc237, label %.lr.ph.i, !llvm.loop !245

.noexc237:                                        ; preds = %bb.ci, %bb.ch, %_ZNSt8_Rb_treeIPN9grpc_core15XdsLocalityNameESt4pairIKS2_mESt10_Select1stIS5_ENS1_4LessESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i, %.lr.ph717
  %.sroa.043.0.i = phi ptr [ %.08.lcssa.i.i, %bb.ch ], [ %.08.lcssa.i.i, %_ZNSt8_Rb_treeIPN9grpc_core15XdsLocalityNameESt4pairIKS2_mESt10_Select1stIS5_ENS1_4LessESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i ], [ %i.c, %.lr.ph717 ], [ %.123.i, %bb.ci ] ; 3 uses
  %.sroa.3.0.i327 = phi ptr [ %.19.i34.i, %bb.ch ], [ %.02252.i, %_ZNSt8_Rb_treeIPN9grpc_core15XdsLocalityNameESt4pairIKS2_mESt10_Select1stIS5_ENS1_4LessESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i ], [ %i.c, %.lr.ph717 ], [ %.123.i, %bb.ci ] ; 3 uses
  %i.wj = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.wk = icmp eq ptr %.sroa.043.0.i, %i.wj
  %i.wl = icmp eq ptr %.sroa.3.0.i327, %i.c
  %or.cond640 = select i1 %i.wk, i1 %i.wl, i1 false
  br i1 %or.cond640, label %bb.cj, label %.critedge.i.i

bb.cj:                                            ; preds = %.noexc237
  invoke void @_ZNSt8_Rb_treeIPN9grpc_core15XdsLocalityNameESt4pairIKS2_mESt10_Select1stIS5_ENS1_4LessESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %.050.i)
          to label %_ZNSt8_Rb_treeIPN9grpc_core15XdsLocalityNameESt4pairIKS2_mESt10_Select1stIS5_ENS1_4LessESaIS5_EE5clearEv.exit.i.i unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.wm = landingpad { ptr, i32 }
          catch ptr null
  %i.wn = extractvalue { ptr, i32 } %i.wm, 0
  call void @__clang_call_terminate(ptr %i.wn) #39
  unreachable

_ZNSt8_Rb_treeIPN9grpc_core15XdsLocalityNameESt4pairIKS2_mESt10_Select1stIS5_ENS1_4LessESaIS5_EE5clearEv.exit.i.i: ; preds = %bb.cj
  store ptr null, ptr %i.d, align 8, !tbaa !41
  store <2 x ptr> %i.ls, ptr %i.e, align 8, !tbaa !66
  store i64 0, ptr %i.g, align 8, !tbaa !44
  br label %_ZNSt3mapIPN9grpc_core15XdsLocalityNameEmNS1_4LessESaISt4pairIKS2_mEEE5eraseERS5_.exit

.critedge.i.i:                                    ; preds = %.noexc237
  %.not8.i.i = icmp eq ptr %.sroa.043.0.i, %.sroa.3.0.i327
  br i1 %.not8.i.i, label %_ZNSt3mapIPN9grpc_core15XdsLocalityNameEmNS1_4LessESaISt4pairIKS2_mEEE5eraseERS5_.exit, label %.lr.ph.i.i235

.lr.ph.i.i235:                                    ; preds = %.critedge.i.i, %.lr.ph.i.i235
  %.sroa.06.09.i.i = phi ptr [ %i.wo, %.lr.ph.i.i235 ], [ %.sroa.043.0.i, %.critedge.i.i ] ; 2 uses
  %i.wo = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.09.i.i) #40 ; 2 uses
  %i.wp = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.09.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #36
  call void @_ZdlPvm(ptr noundef nonnull %i.wp, i64 noundef 48) #38
  %i.wq = load i64, ptr %i.g, align 8, !tbaa !44
  %i.wr = add i64 %i.wq, -1
  store i64 %i.wr, ptr %i.g, align 8, !tbaa !44
  %.not.i.i236 = icmp eq ptr %i.wo, %.sroa.3.0.i327
  br i1 %.not.i.i236, label %_ZNSt3mapIPN9grpc_core15XdsLocalityNameEmNS1_4LessESaISt4pairIKS2_mEEE5eraseERS5_.exit, label %.lr.ph.i.i235, !llvm.loop !246

_ZNSt3mapIPN9grpc_core15XdsLocalityNameEmNS1_4LessESaISt4pairIKS2_mEEE5eraseERS5_.exit: ; preds = %.lr.ph.i.i235, %_ZNSt8_Rb_treeIPN9grpc_core15XdsLocalityNameESt4pairIKS2_mESt10_Select1stIS5_ENS1_4LessESaIS5_EE5clearEv.exit.i.i, %.critedge.i.i
  %i.ws = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0598.0715) #40 ; 2 uses
  %.not647 = icmp eq ptr %i.ws, %i.qy
  br i1 %.not647, label %_ZNSt3mapIPN9grpc_core15XdsLocalityNameEmNS1_4LessESaISt4pairIKS2_mEEE5eraseERS5_.exit95, label %.lr.ph717

bb.cl:                                            ; preds = %.lr.ph721
  br i1 %.not51.i339, label %.noexc244, label %.lr.ph.i340.preheader

.lr.ph.i340.preheader:                            ; preds = %bb.cl
  %i.wt = load ptr, ptr %i.mo, align 8, !tbaa !65 ; 10 uses
  %i.wu = icmp eq ptr %i.wt, null                 ; 3 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wt, i64 24 ; 4 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wt, i64 16 ; 4 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wt, i64 56 ; 4 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wt, i64 48 ; 4 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wt, i64 88 ; 4 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wt, i64 80 ; 4 uses
  br label %.lr.ph.i340

.lr.ph.i340:                                      ; preds = %.lr.ph.i340.preheader, %bb.cy
  %.053.i341 = phi ptr [ %.0.i382, %bb.cy ], [ %.050.i338, %.lr.ph.i340.preheader ] ; 7 uses
  %.02252.i342 = phi ptr [ %.123.i381, %bb.cy ], [ %i.c, %.lr.ph.i340.preheader ] ; 4 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %.053.i341, i64 32
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !65 ; 14 uses
  %i.xd = icmp eq ptr %i.xc, null
  %or.cond.i.i343 = or i1 %i.xd, %i.wu
  br i1 %or.cond.i.i343, label %.split.i386, label %_ZNK9grpc_core15XdsLocalityName4LessclEPKS0_S3_.exit.i344

.split.i386:                                      ; preds = %.lr.ph.i340
  %.not45.i387 = icmp eq ptr %i.wt, %i.xc
  br i1 %.not45.i387, label %.split44.i384, label %bb.cy

_ZNK9grpc_core15XdsLocalityName4LessclEPKS0_S3_.exit.i344: ; preds = %.lr.ph.i340
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xc, i64 24
  %i.xf = load i64, ptr %i.xe, align 8, !tbaa !70 ; 3 uses
  %i.xg = load i64, ptr %i.wv, align 8, !tbaa !70 ; 3 uses
  %.sroa.speculated.i.i568 = call i64 @llvm.umin.i64(i64 %i.xg, i64 %i.xf) ; 2 uses
  %i.xh = icmp eq i64 %.sroa.speculated.i.i568, 0
  br i1 %i.xh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i572, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i569

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i569: ; preds = %_ZNK9grpc_core15XdsLocalityName4LessclEPKS0_S3_.exit.i344
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xc, i64 16
  %i.xj = load ptr, ptr %i.ww, align 8, !tbaa !71
  %i.xk = load ptr, ptr %i.xi, align 8, !tbaa !71
  %i.xl = call i32 @memcmp(ptr noundef %i.xk, ptr noundef %i.xj, i64 noundef %.sroa.speculated.i.i568) #36 ; 2 uses
  %.not.i.i570 = icmp eq i32 %i.xl, 0
  br i1 %.not.i.i570, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i572, label %.noexc388

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i572: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i569, %_ZNK9grpc_core15XdsLocalityName4LessclEPKS0_S3_.exit.i344
  %i.xm = sub i64 %i.xf, %i.xg
  %spec.select7.i.i.i573 = call i64 @llvm.smax.i64(i64 %i.xm, i64 -2147483648)
  %.08.i.i.i574 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i573, i64 2147483647)
  %.0.i6.i.i575 = trunc nsw i64 %.08.i.i.i574 to i32
end_hunk_0
