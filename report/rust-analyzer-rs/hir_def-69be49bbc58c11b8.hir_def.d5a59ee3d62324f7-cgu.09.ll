Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.09?download=true
inline.NumInlined: 2294
inline.NumDeleted: 1171
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_RNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSENtB7_5Float10from_str_rCsileJQcQObtj_7hir_def:bb.a
bb.bo:                                            ; preds = %bb.bm
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %.sroa.4.0611754.i
  %i.ph = load i8, ptr %i.pg, align 1, !alias.scope !4709, !noalias !4689, !noundef !295
  %i.pi = icmp sgt i8 %i.ph, -65
  br i1 %i.pi, label %bb.bn, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread505.i, !prof !4586

.thread499.i:                                     ; preds = %bb.bh, %bb.bg
  %i.pj = icmp eq i8 %.sroa.028.0, 1
  br i1 %i.pj, label %bb.ex, label %bb.ew

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit249.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit306.i, %.body.i, %.loopexit.split-lp544.loopexit.split-lp.i, %.loopexit.split-lp544.loopexit.i, %.loopexit543.i
  %.pn203.pn.pn.i = phi { ptr, i32 } [ %.pn203.pn.i, %.body.i ], [ %.pn199.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit306.i ], [ %lpad.loopexit545.i, %.loopexit543.i ], [ %lpad.loopexit548.i, %.loopexit.split-lp544.loopexit.i ], [ %lpad.loopexit.split-lp549.i, %.loopexit.split-lp544.loopexit.split-lp.i ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.y)
          to label %common.resume.i unwind label %bb.ea, !noalias !4689

.loopexit543.i:                                   ; preds = %.lr.ph629.i
  %lpad.loopexit545.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit249.i

.loopexit.split-lp544.loopexit.i:                 ; preds = %bb.ev, %.thread514.i
  %lpad.loopexit548.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit249.i

.loopexit.split-lp544.loopexit.split-lp.i:        ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit307.i, %bb.bx, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread505.i
  %lpad.loopexit.split-lp549.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit249.i

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i: ; preds = %bb.bn
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %reass.sub648.i
  %i.pl = load i8, ptr %i.pk, align 1, !alias.scope !4709, !noalias !4689, !noundef !295
  %i.pm = icmp sgt i8 %i.pl, -65
  br i1 %i.pm, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread505.i, !prof !4587

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread505.i: ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i, %bb.bo, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E13with_capacityCsileJQcQObtj_7hir_def.exit.i
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1, i64 noundef range(i64 1, 0) %.sroa.18.1, i64 noundef %.sroa.4.0611754.i, i64 noundef %reass.sub648.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @185) #46
          to label %bb.bp unwind label %.loopexit.split-lp544.loopexit.split-lp.i, !noalias !4689

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i: ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i, %bb.bn, %bb.bl
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %.sroa.4.0611754.i
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %reass.sub648.i ; 5 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.pq = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  br label %.outer.i

bb.bp:                                            ; preds = %bb.cw, %bb.cv, %bb.bx, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread505.i
  unreachable

.outer.i:                                         ; preds = %.outer.i.backedge, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i
  %.sroa.0373.1.ph.i = phi ptr [ %i.pn, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i ], [ %.sroa.0373.1.ph.i.be, %.outer.i.backedge ]
  %.sroa.053.0.ph.i = phi i128 [ 1, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i ], [ %.sroa.053.0.ph.i.be, %.outer.i.backedge ] ; 3 uses
  %.sroa.049.0.ph.i = phi i128 [ 0, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i ], [ %.sroa.049.0.ph.i.be, %.outer.i.backedge ] ; 2 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bt, %.outer.i
  %.sroa.0373.1.i = phi ptr [ %.sroa.0373.2.ph.i, %bb.bt ], [ %.sroa.0373.1.ph.i, %.outer.i ] ; 6 uses
  %i.ps = icmp eq ptr %.sroa.0373.1.i, %i.po
  br i1 %i.ps, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.0373.1.i, i64 1 ; 3 uses
  %i.pu = load i8, ptr %.sroa.0373.1.i, align 1, !alias.scope !4677, !noalias !4712, !noundef !295 ; 5 uses
  %i.pv = icmp sgt i8 %i.pu, -1
  br i1 %i.pv, label %bb.bs, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit12.i242.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit12.i242.i: ; preds = %bb.br
  %i.pw = and i8 %i.pu, 31
  %i.px = zext nneg i8 %i.pw to i32               ; 3 uses
  %i.py = icmp ne ptr %i.pt, %i.po
  call void @llvm.assume(i1 %i.py)
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.0373.1.i, i64 2 ; 3 uses
  %i.qa = load i8, ptr %i.pt, align 1, !alias.scope !4677, !noalias !4712, !noundef !295
  %i.qb = shl nuw nsw i32 %i.px, 6
  %i.qc = and i8 %i.qa, 63
  %i.qd = zext nneg i8 %i.qc to i32               ; 2 uses
  %i.qe = or disjoint i32 %i.qb, %i.qd
  %i.qf = icmp samesign ugt i8 %i.pu, -33
  br i1 %i.qf, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit14.i245.i, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.qg = zext nneg i8 %i.pu to i32
  br label %bb.bt

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit14.i245.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit12.i242.i
  %i.qh = icmp ne ptr %i.pz, %i.po
  call void @llvm.assume(i1 %i.qh)
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.0373.1.i, i64 3 ; 3 uses
  %i.qj = load i8, ptr %i.pz, align 1, !alias.scope !4677, !noalias !4712, !noundef !295
  %i.qk = shl nuw nsw i32 %i.qd, 6
  %i.ql = and i8 %i.qj, 63
  %i.qm = zext nneg i8 %i.ql to i32
  %i.qn = or disjoint i32 %i.qk, %i.qm            ; 2 uses
  %i.qo = shl nuw nsw i32 %i.px, 12
  %i.qp = or disjoint i32 %i.qn, %i.qo
  %i.qq = icmp samesign ugt i8 %i.pu, -17
  br i1 %i.qq, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit16.i246.i, label %bb.bt

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit16.i246.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit14.i245.i
  %i.qr = icmp ne ptr %i.qi, %i.po
  call void @llvm.assume(i1 %i.qr)
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.0373.1.i, i64 4
  %i.qt = load i8, ptr %i.qi, align 1, !alias.scope !4677, !noalias !4712, !noundef !295
  %i.qu = shl nuw nsw i32 %i.px, 18
  %i.qv = and i32 %i.qu, 1835008
  %i.qw = shl nuw nsw i32 %i.qn, 6
  %i.qx = and i8 %i.qt, 63
  %i.qy = zext nneg i8 %i.qx to i32
  %i.qz = or disjoint i32 %i.qw, %i.qy
  %i.ra = or disjoint i32 %i.qz, %i.qv
  br label %bb.bt

bb.bt:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit16.i246.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit14.i245.i, %bb.bs, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit12.i242.i
  %.sroa.0373.2.ph.i = phi ptr [ %i.pz, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit12.i242.i ], [ %i.qi, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit14.i245.i ], [ %i.qs, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit16.i246.i ], [ %i.pt, %bb.bs ] ; 3 uses
  %.sroa.4.0.i243.ph.i = phi i32 [ %i.qe, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit12.i242.i ], [ %i.qp, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit14.i245.i ], [ %i.ra, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit16.i246.i ], [ %i.qg, %bb.bs ] ; 3 uses
  %i.rb = icmp samesign ult i32 %.sroa.4.0.i243.ph.i, 1114112
  call void @llvm.assume(i1 %i.rb)
  %i.rc = icmp eq i32 %.sroa.4.0.i243.ph.i, 46
  br i1 %i.rc, label %bb.bq, label %bb.bv

bb.bu:                                            ; preds = %bb.bq
  %i.rd = icmp eq i128 %.sroa.053.0.ph.i, 1
  br i1 %i.rd, label %bb.by, label %.thread514.i

bb.bv:                                            ; preds = %bb.bt
  %i.re = add nsw i32 %.sroa.4.0.i243.ph.i, -48   ; 2 uses
  %i.rf = icmp ult i32 %i.re, 10
  br i1 %i.rf, label %bb.bw, label %bb.bx, !prof !7

bb.bw:                                            ; preds = %bb.bv
  %i.rg = mul i128 %.sroa.053.0.ph.i, 10          ; 3 uses
  %i.rh = mul i128 %.sroa.049.0.ph.i, 10
  %i.ri = zext nneg i32 %i.re to i128
  %i.rj = add i128 %i.rh, %i.ri                   ; 2 uses
  %i.rk = icmp ugt i128 %i.rg, 34028236692093846346337460743176821144
  br i1 %i.rk, label %.thread514.i, label %.outer.i.backedge

.outer.i.backedge:                                ; preds = %bb.bw, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCsileJQcQObtj_7hir_def.exit.i, %._crit_edge.i
  %.sroa.0373.1.ph.i.be = phi ptr [ %.sroa.0373.2.ph.i, %bb.bw ], [ %.sroa.0373.2512518.i, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCsileJQcQObtj_7hir_def.exit.i ], [ %.sroa.0373.2512518.i, %._crit_edge.i ]
  %.sroa.053.0.ph.i.be = phi i128 [ %i.rg, %bb.bw ], [ 1, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCsileJQcQObtj_7hir_def.exit.i ], [ 1, %._crit_edge.i ]
  %.sroa.049.0.ph.i.be = phi i128 [ %i.rj, %bb.bw ], [ 0, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCsileJQcQObtj_7hir_def.exit.i ], [ 0, %._crit_edge.i ]
  br label %.outer.i

bb.bx:                                            ; preds = %bb.bv
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #46
          to label %bb.bp unwind label %.loopexit.split-lp544.loopexit.split-lp.i, !noalias !4689

bb.by:                                            ; preds = %bb.bu
  %.sroa.072.0.i = call i32 @llvm.abs.i32(i32 %storemerge.i, i1 false)
  %i.rl = sext i32 %.sroa.072.0.i to i64          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !4703
  %i.rm = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 5 uses
  store i64 0, ptr %i.rm, align 16, !noalias !4703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !4703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4715
  %i.rn = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 0, ptr %i.rn, align 16, !noalias !4715
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4715
  store i64 0, ptr %i.f, align 16, !noalias !4719
  %.sroa.4375.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %.sroa.4375.0..sroa_idx.i, align 8, !noalias !4719
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i128 625, ptr %.sroa.5.0..sroa_idx.i, align 16, !noalias !4719
  invoke void @_RINvXst_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendoE6extendINtNtNtBX_5array4iter8IntoIteroKj1_EECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(32) %i.f)
          to label %bb.cb unwind label %bb.bz, !noalias !4720

bb.bz:                                            ; preds = %bb.by
  %i.ro = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.g)
          to label %.body.i unwind label %bb.ca, !noalias !4720

bb.ca:                                            ; preds = %bb.bz
  %i.rp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !4720
  unreachable

.thread514.i:                                     ; preds = %bb.bw, %bb.bu
  %.sroa.049.1520.i = phi i128 [ %.sroa.049.0.ph.i, %bb.bu ], [ %i.rj, %bb.bw ] ; 2 uses
  %.sroa.053.1519.i = phi i128 [ %.sroa.053.0.ph.i, %bb.bu ], [ %i.rg, %bb.bw ]
  %.sroa.0373.2512518.i = phi ptr [ %i.po, %bb.bu ], [ %.sroa.0373.2.ph.i, %bb.bw ] ; 2 uses
  %i.rq = invoke { ptr, ptr } @_RNvXsO_Csjpcu9PwIgok_8smallvecQINtB5_8SmallVecAoj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.y)
          to label %bb.es unwind label %.loopexit.split-lp544.loopexit.i, !noalias !4689 ; 2 uses

.body.i:                                          ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit254.i, %bb.bz
  %.pn203.pn.i = phi { ptr, i32 } [ %i.ro, %bb.bz ], [ %.pn203.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit254.i ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.s)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit249.i unwind label %bb.ea, !noalias !4689

bb.cb:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.r, ptr noundef nonnull align 16 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !4721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4715
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4703
  %i.rr = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 5 uses
  store i64 0, ptr %i.rr, align 16, !noalias !4703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4703
  %i.rs = and i64 %i.rl, 7
  %4 = getelementptr inbounds nuw [16 x i8], ptr @187, i64 %i.rs
  %i.rt = load i128, ptr %4, align 16, !noalias !4703, !noundef !295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4722
  %i.ru = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 0, ptr %i.ru, align 16, !noalias !4722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4722
  store i64 0, ptr %i.d, align 16, !noalias !4726
  %.sroa.4377.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %.sroa.4377.0..sroa_idx.i, align 8, !noalias !4726
  %.sroa.5378.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i128 %i.rt, ptr %.sroa.5378.0..sroa_idx.i, align 16, !noalias !4726
  invoke void @_RINvXst_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendoE6extendINtNtNtBX_5array4iter8IntoIteroKj1_EECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(32) %i.d)
          to label %bb.ce unwind label %bb.cc, !noalias !4727

bb.cc:                                            ; preds = %bb.cb
  %i.rv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.e)
          to label %.body251.i unwind label %bb.cd, !noalias !4727

bb.cd:                                            ; preds = %bb.cc
  %i.rw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !4727
  unreachable

.body251.i:                                       ; preds = %bb.eb, %bb.cc
  %.pn203.i = phi { ptr, i32 } [ %i.rv, %bb.cc ], [ %i.yz, %bb.eb ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.q)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit254.i unwind label %bb.ea, !noalias !4689

bb.ce:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4722
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.p, ptr noundef nonnull align 16 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !4728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4722
  %i.rx = lshr i64 %i.rl, 3                       ; 2 uses
  %.not191643.i = icmp eq i64 %i.rx, 0
  br i1 %.not191643.i, label %._crit_edge647.i, label %.lr.ph646.i

.lr.ph646.i:                                      ; preds = %bb.ce
  %i.ry = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 4 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  br label %bb.ec

._crit_edge647.i:                                 ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit354.i, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !4703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.w, ptr noundef nonnull align 16 dereferenceable(48) %i.p, i64 48, i1 false), !noalias !4703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !4703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.v, ptr noundef nonnull align 16 dereferenceable(48) %i.q, i64 48, i1 false), !noalias !4703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !4703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.u, ptr noundef nonnull align 16 dereferenceable(48) %i.r, i64 48, i1 false), !noalias !4703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !4703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull align 16 dereferenceable(48) %i.s, i64 48, i1 false), !noalias !4703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !4703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !4703
  %i.se = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.sf = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.sg = icmp sgt i32 %storemerge.i, -1
  %i.sh = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 7 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 7 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 3 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %.off215.i = add nsw i8 %.sroa.028.0, -1
  %switch216.i = icmp ult i8 %.off215.i, 3
  br label %bb.cg

.loopexit.i:                                      ; preds = %._crit_edge, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB1J_9IeeeFloatNtB1J_5HalfSE19from_decimal_strings_0ECsileJQcQObtj_7hir_def.exit.i, %bb.dh, %bb.dg, %bb.da, %bb.cq, %bb.cp, %bb.ck, %bb.cj, %bb.ch, %bb.cg
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

.loopexit.split-lp.i:                             ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.i, %.thread524.i, %bb.cw, %bb.cv
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.cf:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.t)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit258.i unwind label %bb.ea, !noalias !4689

bb.cg:                                            ; preds = %bb.do, %._crit_edge647.i
  %.sroa.077.0.i = phi i32 [ 0, %._crit_edge647.i ], [ %i.sr, %bb.do ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4703
  %i.sn = and i32 %.sroa.077.0.i, 63
  %i.so = zext nneg i32 %i.sn to i64
  %i.sp = shl i64 128, %i.so                      ; 3 uses
  %i.sq = add i64 %i.sp, -1                       ; 6 uses
  store i64 %i.sq, ptr %i.m, align 8, !noalias !4703
  %i.sr = add i32 %.sroa.077.0.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4703
  %i.ss = load i64, ptr %i.pq, align 16, !alias.scope !4729, !noalias !4732, !noundef !295 ; 2 uses
  %i.st = icmp ugt i64 %i.ss, 2                   ; 2 uses
  %i.su = load ptr, ptr %i.y, align 16, !alias.scope !4729, !noalias !4732, !nonnull !295
  %i.sv = load i64, ptr %i.pr, align 8, !alias.scope !4729, !noalias !4732
  %.sink11.i255.i = select i1 %i.st, ptr %i.su, ptr %i.y
  %.sink10.i256.i = select i1 %i.st, i64 %i.sv, i64 %i.ss
  %i.sw = invoke fastcc { i32, i8 } @_RNCNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5HalfSE19from_decimal_string0CsileJQcQObtj_7hir_def(ptr nonnull %i.m, ptr noalias nofree noundef align 16 dereferenceable(48) %i.u, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %.sink11.i255.i, i64 noundef %.sink10.i256.i)
          to label %bb.ch unwind label %.loopexit.i, !noalias !4689 ; 2 uses

bb.ch:                                            ; preds = %bb.cg
  %i.sx = load i64, ptr %i.se, align 16, !alias.scope !4734, !noalias !4737, !noundef !295 ; 2 uses
  %i.sy = icmp ugt i64 %i.sx, 2                   ; 2 uses
  %i.sz = load ptr, ptr %i.w, align 16, !alias.scope !4734, !noalias !4737, !nonnull !295
  %i.ta = load i64, ptr %i.sf, align 8, !alias.scope !4734, !noalias !4737
  %.sink11.i259.i = select i1 %i.sy, ptr %i.sz, ptr %i.w
  %.sink10.i260.i = select i1 %i.sy, i64 %i.ta, i64 %i.sx
  %i.tb = invoke fastcc { i32, i8 } @_RNCNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5HalfSE19from_decimal_string0CsileJQcQObtj_7hir_def(ptr nonnull %i.m, ptr noalias nofree noundef align 16 dereferenceable(48) %i.v, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %.sink11.i259.i, i64 noundef %.sink10.i260.i)
          to label %bb.ci unwind label %.loopexit.i, !noalias !4689 ; 2 uses

bb.ci:                                            ; preds = %bb.ch
  %i.tc = extractvalue { i32, i8 } %i.sw, 0
  %i.td = extractvalue { i32, i8 } %i.sw, 1
  %i.te = extractvalue { i32, i8 } %i.tb, 0       ; 2 uses
  %i.tf = extractvalue { i32, i8 } %i.tb, 1       ; 2 uses
  %i.tg = add i32 %i.tc, %storemerge.i            ; 2 uses
  %i.th = add i64 %i.sp, -12                      ; 3 uses
  %i.ti = icmp ne i8 %i.td, 0
  %i.tj = zext i1 %i.ti to i128
  br i1 %i.sg, label %bb.cp, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.tk = sub i32 %i.tg, %i.te
  store i32 %i.tk, ptr %i.l, align 4, !noalias !4703
  %i.tl = load i64, ptr %i.sh, align 16, !alias.scope !4739, !noalias !4742, !noundef !295 ; 2 uses
  %i.tm = icmp ugt i64 %i.tl, 2
  %i.tn = load i64, ptr %i.si, align 8, !alias.scope !4739, !noalias !4742
  %.sink10.i263.i = select i1 %i.tm, i64 %i.tn, i64 %i.tl
  invoke void @_RNvMsf_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6resizeCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.t, i64 noundef %.sink10.i263.i, i128 noundef 0)
          to label %bb.ck unwind label %.loopexit.i, !noalias !4689

bb.ck:                                            ; preds = %bb.cj
  %i.to = load i64, ptr %i.sj, align 16, !alias.scope !4744, !noalias !4747, !noundef !295 ; 2 uses
  %i.tp = icmp ugt i64 %i.to, 2                   ; 2 uses
  %i.tq = load ptr, ptr %i.t, align 16, !alias.scope !4744, !noalias !4747, !nonnull !295
  %.sink10.i268.i = select i1 %i.tp, ptr %i.tq, ptr %i.t
  %.val532.i = load i64, ptr %i.sk, align 8, !noalias !4703
  %i.tr = select i1 %i.tp, i64 %.val532.i, i64 %i.to
  %i.ts = load i64, ptr %i.sh, align 16, !alias.scope !4749, !noalias !4752, !noundef !295 ; 2 uses
  %i.tt = icmp ugt i64 %i.ts, 2                   ; 2 uses
  %i.tu = load ptr, ptr %i.u, align 16, !alias.scope !4749, !noalias !4752, !nonnull !295
  %.sink10.i270.i = select i1 %i.tt, ptr %i.tu, ptr %i.u
  %.val534.i = load i64, ptr %i.si, align 8, !noalias !4703
  %i.tv = select i1 %i.tt, i64 %.val534.i, i64 %i.ts
  %i.tw = load i64, ptr %i.sl, align 16, !alias.scope !4754, !noalias !4757, !noundef !295 ; 2 uses
  %i.tx = icmp ugt i64 %i.tw, 2                   ; 2 uses
  %i.ty = load ptr, ptr %i.v, align 16, !alias.scope !4754, !noalias !4757, !nonnull !295
  %.sink10.i273.i = select i1 %i.tx, ptr %i.ty, ptr %i.v
  %.val536.i = load i64, ptr %i.sm, align 8, !noalias !4703
  %i.tz = select i1 %i.tx, i64 %.val536.i, i64 %i.tw
  %i.ua = invoke fastcc noundef i8 @_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div(ptr noalias nofree noundef nonnull align 16 %.sink10.i268.i, i64 noundef %i.tr, ptr noalias nofree noundef align 4 dereferenceable(4) %i.l, ptr noalias nofree noundef nonnull align 16 %.sink10.i270.i, i64 noundef %i.tv, ptr noalias nofree noundef nonnull align 16 %.sink10.i273.i, i64 noundef %i.tz, i64 noundef %i.sq)
          to label %bb.cl unwind label %.loopexit.i, !noalias !4689 ; 2 uses

bb.cl:                                            ; preds = %bb.ck
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsileJQcQObtj_7hir_def(ptr noundef nonnull %i.u, ptr noundef nonnull %i.t, i64 noundef 6)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit.i unwind label %bb.cm, !noalias !4689

bb.cm:                                            ; preds = %bb.cl
  %i.ub = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #44, !noalias !4689
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.cl
  %i.uc = load i32, ptr %i.l, align 4, !noalias !4703, !noundef !295 ; 2 uses
  %i.ud = icmp slt i32 %i.uc, -14
  br i1 %i.ud, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit.i
  %i.ue = sub nuw nsw i32 -14, %i.uc
  %i.uf = zext nneg i32 %i.ue to i64
  %i.ug = add i64 %i.th, %i.uf                    ; 2 uses
  %i.uh = call i64 @llvm.usub.sat.i64(i64 %i.sq, i64 %i.ug)
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit.i
  %.sroa.094.0.i = phi i64 [ %i.uh, %bb.cn ], [ 11, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit.i ]
  %.sroa.085.0.i = phi i64 [ %i.ug, %bb.cn ], [ %i.th, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit.i ]
  %i.ui = or i8 %i.ua, %i.tf
  %i.uj = icmp eq i8 %i.ui, 0
  %.sroa.099.0.i = select i1 %i.uj, i128 0, i128 2
  br label %bb.ct

bb.cp:                                            ; preds = %bb.ci
  %i.uk = add i32 %i.te, %i.tg
  store i32 %i.uk, ptr %i.l, align 4, !noalias !4703
  %i.ul = load i64, ptr %i.sh, align 16, !alias.scope !4759, !noalias !4762, !noundef !295 ; 2 uses
  %i.um = icmp ugt i64 %i.ul, 2
  %i.un = load i64, ptr %i.si, align 8, !alias.scope !4759, !noalias !4762
  %.sink10.i266.i = select i1 %i.um, i64 %i.un, i64 %i.ul
  %i.uo = load i64, ptr %i.sl, align 16, !alias.scope !4764, !noalias !4767, !noundef !295 ; 2 uses
  %i.up = icmp ugt i64 %i.uo, 2
  %i.uq = load i64, ptr %i.sm, align 8, !alias.scope !4764, !noalias !4767
  %.sink10.i280.i = select i1 %i.up, i64 %i.uq, i64 %i.uo
end_hunk_0
begin_hunk_1_@_RNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSENtB7_5Float10from_str_rCsileJQcQObtj_7hir_def:bb.a
bb.bo:                                            ; preds = %bb.bm
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %.sroa.4.0611754.i
  %i.ph = load i8, ptr %i.pg, align 1, !alias.scope !4981, !noalias !4962, !noundef !295
  %i.pi = icmp sgt i8 %i.ph, -65
  br i1 %i.pi, label %bb.bn, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread505.i, !prof !4586

.thread499.i:                                     ; preds = %bb.bh, %bb.bg
  %i.pj = icmp eq i8 %.sroa.028.0, 1
  br i1 %i.pj, label %bb.ex, label %bb.ew

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit249.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit306.i, %.body.i, %.loopexit.split-lp544.loopexit.split-lp.i, %.loopexit.split-lp544.loopexit.i, %.loopexit543.i
  %.pn203.pn.pn.i = phi { ptr, i32 } [ %.pn203.pn.i, %.body.i ], [ %.pn199.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit306.i ], [ %lpad.loopexit545.i, %.loopexit543.i ], [ %lpad.loopexit548.i, %.loopexit.split-lp544.loopexit.i ], [ %lpad.loopexit.split-lp549.i, %.loopexit.split-lp544.loopexit.split-lp.i ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.y)
          to label %common.resume.i unwind label %bb.ea, !noalias !4962

.loopexit543.i:                                   ; preds = %.lr.ph629.i
  %lpad.loopexit545.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit249.i

.loopexit.split-lp544.loopexit.i:                 ; preds = %bb.ev, %.thread514.i
  %lpad.loopexit548.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit249.i

.loopexit.split-lp544.loopexit.split-lp.i:        ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit307.i, %bb.bx, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread505.i
  %lpad.loopexit.split-lp549.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit249.i

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i: ; preds = %bb.bn
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %reass.sub648.i
  %i.pl = load i8, ptr %i.pk, align 1, !alias.scope !4981, !noalias !4962, !noundef !295
  %i.pm = icmp sgt i8 %i.pl, -65
  br i1 %i.pm, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread505.i, !prof !4587

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread505.i: ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i, %bb.bo, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E13with_capacityCsileJQcQObtj_7hir_def.exit.i
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1, i64 noundef range(i64 1, 0) %.sroa.18.1, i64 noundef %.sroa.4.0611754.i, i64 noundef %reass.sub648.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @185) #46
          to label %bb.bp unwind label %.loopexit.split-lp544.loopexit.split-lp.i, !noalias !4962

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i: ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i, %bb.bn, %bb.bl
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %.sroa.4.0611754.i
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %reass.sub648.i ; 5 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.pq = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  br label %.outer.i

bb.bp:                                            ; preds = %bb.cw, %bb.cv, %bb.bx, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread505.i
  unreachable

.outer.i:                                         ; preds = %.outer.i.backedge, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i
  %.sroa.0373.1.ph.i = phi ptr [ %i.pn, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i ], [ %.sroa.0373.1.ph.i.be, %.outer.i.backedge ]
  %.sroa.053.0.ph.i = phi i128 [ 1, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i ], [ %.sroa.053.0.ph.i.be, %.outer.i.backedge ] ; 3 uses
  %.sroa.049.0.ph.i = phi i128 [ 0, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i ], [ %.sroa.049.0.ph.i.be, %.outer.i.backedge ] ; 2 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bt, %.outer.i
  %.sroa.0373.1.i = phi ptr [ %.sroa.0373.2.ph.i, %bb.bt ], [ %.sroa.0373.1.ph.i, %.outer.i ] ; 6 uses
  %i.ps = icmp eq ptr %.sroa.0373.1.i, %i.po
  br i1 %i.ps, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.0373.1.i, i64 1 ; 3 uses
  %i.pu = load i8, ptr %.sroa.0373.1.i, align 1, !alias.scope !4950, !noalias !4984, !noundef !295 ; 5 uses
  %i.pv = icmp sgt i8 %i.pu, -1
  br i1 %i.pv, label %bb.bs, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit12.i242.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit12.i242.i: ; preds = %bb.br
  %i.pw = and i8 %i.pu, 31
  %i.px = zext nneg i8 %i.pw to i32               ; 3 uses
  %i.py = icmp ne ptr %i.pt, %i.po
  call void @llvm.assume(i1 %i.py)
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.0373.1.i, i64 2 ; 3 uses
  %i.qa = load i8, ptr %i.pt, align 1, !alias.scope !4950, !noalias !4984, !noundef !295
  %i.qb = shl nuw nsw i32 %i.px, 6
  %i.qc = and i8 %i.qa, 63
  %i.qd = zext nneg i8 %i.qc to i32               ; 2 uses
  %i.qe = or disjoint i32 %i.qb, %i.qd
  %i.qf = icmp samesign ugt i8 %i.pu, -33
  br i1 %i.qf, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit14.i245.i, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.qg = zext nneg i8 %i.pu to i32
  br label %bb.bt

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit14.i245.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit12.i242.i
  %i.qh = icmp ne ptr %i.pz, %i.po
  call void @llvm.assume(i1 %i.qh)
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.0373.1.i, i64 3 ; 3 uses
  %i.qj = load i8, ptr %i.pz, align 1, !alias.scope !4950, !noalias !4984, !noundef !295
  %i.qk = shl nuw nsw i32 %i.qd, 6
  %i.ql = and i8 %i.qj, 63
  %i.qm = zext nneg i8 %i.ql to i32
  %i.qn = or disjoint i32 %i.qk, %i.qm            ; 2 uses
  %i.qo = shl nuw nsw i32 %i.px, 12
  %i.qp = or disjoint i32 %i.qn, %i.qo
  %i.qq = icmp samesign ugt i8 %i.pu, -17
  br i1 %i.qq, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit16.i246.i, label %bb.bt

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit16.i246.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit14.i245.i
  %i.qr = icmp ne ptr %i.qi, %i.po
  call void @llvm.assume(i1 %i.qr)
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.0373.1.i, i64 4
  %i.qt = load i8, ptr %i.qi, align 1, !alias.scope !4950, !noalias !4984, !noundef !295
  %i.qu = shl nuw nsw i32 %i.px, 18
  %i.qv = and i32 %i.qu, 1835008
  %i.qw = shl nuw nsw i32 %i.qn, 6
  %i.qx = and i8 %i.qt, 63
  %i.qy = zext nneg i8 %i.qx to i32
  %i.qz = or disjoint i32 %i.qw, %i.qy
  %i.ra = or disjoint i32 %i.qz, %i.qv
  br label %bb.bt

bb.bt:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit16.i246.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit14.i245.i, %bb.bs, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit12.i242.i
  %.sroa.0373.2.ph.i = phi ptr [ %i.pz, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit12.i242.i ], [ %i.qi, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit14.i245.i ], [ %i.qs, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit16.i246.i ], [ %i.pt, %bb.bs ] ; 3 uses
  %.sroa.4.0.i243.ph.i = phi i32 [ %i.qe, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit12.i242.i ], [ %i.qp, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit14.i245.i ], [ %i.ra, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit16.i246.i ], [ %i.qg, %bb.bs ] ; 3 uses
  %i.rb = icmp samesign ult i32 %.sroa.4.0.i243.ph.i, 1114112
  call void @llvm.assume(i1 %i.rb)
  %i.rc = icmp eq i32 %.sroa.4.0.i243.ph.i, 46
  br i1 %i.rc, label %bb.bq, label %bb.bv

bb.bu:                                            ; preds = %bb.bq
  %i.rd = icmp eq i128 %.sroa.053.0.ph.i, 1
  br i1 %i.rd, label %bb.by, label %.thread514.i

bb.bv:                                            ; preds = %bb.bt
  %i.re = add nsw i32 %.sroa.4.0.i243.ph.i, -48   ; 2 uses
  %i.rf = icmp ult i32 %i.re, 10
  br i1 %i.rf, label %bb.bw, label %bb.bx, !prof !7

bb.bw:                                            ; preds = %bb.bv
  %i.rg = mul i128 %.sroa.053.0.ph.i, 10          ; 3 uses
  %i.rh = mul i128 %.sroa.049.0.ph.i, 10
  %i.ri = zext nneg i32 %i.re to i128
  %i.rj = add i128 %i.rh, %i.ri                   ; 2 uses
  %i.rk = icmp ugt i128 %i.rg, 34028236692093846346337460743176821144
  br i1 %i.rk, label %.thread514.i, label %.outer.i.backedge

.outer.i.backedge:                                ; preds = %bb.bw, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCsileJQcQObtj_7hir_def.exit.i, %._crit_edge.i
  %.sroa.0373.1.ph.i.be = phi ptr [ %.sroa.0373.2.ph.i, %bb.bw ], [ %.sroa.0373.2512518.i, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCsileJQcQObtj_7hir_def.exit.i ], [ %.sroa.0373.2512518.i, %._crit_edge.i ]
  %.sroa.053.0.ph.i.be = phi i128 [ %i.rg, %bb.bw ], [ 1, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCsileJQcQObtj_7hir_def.exit.i ], [ 1, %._crit_edge.i ]
  %.sroa.049.0.ph.i.be = phi i128 [ %i.rj, %bb.bw ], [ 0, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCsileJQcQObtj_7hir_def.exit.i ], [ 0, %._crit_edge.i ]
  br label %.outer.i

bb.bx:                                            ; preds = %bb.bv
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #46
          to label %bb.bp unwind label %.loopexit.split-lp544.loopexit.split-lp.i, !noalias !4962

bb.by:                                            ; preds = %bb.bu
  %.sroa.072.0.i = call i32 @llvm.abs.i32(i32 %storemerge.i, i1 false)
  %i.rl = sext i32 %.sroa.072.0.i to i64          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !4976
  %i.rm = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 5 uses
  store i64 0, ptr %i.rm, align 16, !noalias !4976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !4976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4987
  %i.rn = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 0, ptr %i.rn, align 16, !noalias !4987
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4987
  store i64 0, ptr %i.f, align 16, !noalias !4991
  %.sroa.4375.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %.sroa.4375.0..sroa_idx.i, align 8, !noalias !4991
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i128 625, ptr %.sroa.5.0..sroa_idx.i, align 16, !noalias !4991
  invoke void @_RINvXst_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendoE6extendINtNtNtBX_5array4iter8IntoIteroKj1_EECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(32) %i.f)
          to label %bb.cb unwind label %bb.bz, !noalias !4992

bb.bz:                                            ; preds = %bb.by
  %i.ro = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.g)
          to label %.body.i unwind label %bb.ca, !noalias !4992

bb.ca:                                            ; preds = %bb.bz
  %i.rp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !4992
  unreachable

.thread514.i:                                     ; preds = %bb.bw, %bb.bu
  %.sroa.049.1520.i = phi i128 [ %.sroa.049.0.ph.i, %bb.bu ], [ %i.rj, %bb.bw ] ; 2 uses
  %.sroa.053.1519.i = phi i128 [ %.sroa.053.0.ph.i, %bb.bu ], [ %i.rg, %bb.bw ]
  %.sroa.0373.2512518.i = phi ptr [ %i.po, %bb.bu ], [ %.sroa.0373.2.ph.i, %bb.bw ] ; 2 uses
  %i.rq = invoke { ptr, ptr } @_RNvXsO_Csjpcu9PwIgok_8smallvecQINtB5_8SmallVecAoj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.y)
          to label %bb.es unwind label %.loopexit.split-lp544.loopexit.i, !noalias !4962 ; 2 uses

.body.i:                                          ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit254.i, %bb.bz
  %.pn203.pn.i = phi { ptr, i32 } [ %i.ro, %bb.bz ], [ %.pn203.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit254.i ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.s)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit249.i unwind label %bb.ea, !noalias !4962

bb.cb:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4987
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.r, ptr noundef nonnull align 16 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !4993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4987
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4976
  %i.rr = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 5 uses
  store i64 0, ptr %i.rr, align 16, !noalias !4976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4976
  %i.rs = and i64 %i.rl, 7
  %4 = getelementptr inbounds nuw [16 x i8], ptr @187, i64 %i.rs
  %i.rt = load i128, ptr %4, align 16, !noalias !4976, !noundef !295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4994
  %i.ru = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 0, ptr %i.ru, align 16, !noalias !4994
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4994
  store i64 0, ptr %i.d, align 16, !noalias !4998
  %.sroa.4377.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %.sroa.4377.0..sroa_idx.i, align 8, !noalias !4998
  %.sroa.5378.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i128 %i.rt, ptr %.sroa.5378.0..sroa_idx.i, align 16, !noalias !4998
  invoke void @_RINvXst_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendoE6extendINtNtNtBX_5array4iter8IntoIteroKj1_EECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(32) %i.d)
          to label %bb.ce unwind label %bb.cc, !noalias !4999

bb.cc:                                            ; preds = %bb.cb
  %i.rv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.e)
          to label %.body251.i unwind label %bb.cd, !noalias !4999

bb.cd:                                            ; preds = %bb.cc
  %i.rw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !4999
  unreachable

.body251.i:                                       ; preds = %bb.eb, %bb.cc
  %.pn203.i = phi { ptr, i32 } [ %i.rv, %bb.cc ], [ %i.yz, %bb.eb ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.q)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit254.i unwind label %bb.ea, !noalias !4962

bb.ce:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4994
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.p, ptr noundef nonnull align 16 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !5000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4994
  %i.rx = lshr i64 %i.rl, 3                       ; 2 uses
  %.not191643.i = icmp eq i64 %i.rx, 0
  br i1 %.not191643.i, label %._crit_edge647.i, label %.lr.ph646.i

.lr.ph646.i:                                      ; preds = %bb.ce
  %i.ry = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 4 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  br label %bb.ec

._crit_edge647.i:                                 ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit354.i, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !4976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.w, ptr noundef nonnull align 16 dereferenceable(48) %i.p, i64 48, i1 false), !noalias !4976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !4976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.v, ptr noundef nonnull align 16 dereferenceable(48) %i.q, i64 48, i1 false), !noalias !4976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !4976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.u, ptr noundef nonnull align 16 dereferenceable(48) %i.r, i64 48, i1 false), !noalias !4976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !4976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull align 16 dereferenceable(48) %i.s, i64 48, i1 false), !noalias !4976
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4976
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4976
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !4976
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !4976
  %i.se = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.sf = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.sg = icmp sgt i32 %storemerge.i, -1
  %i.sh = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 7 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 7 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 3 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %.off215.i = add nsw i8 %.sroa.028.0, -1
  %switch216.i = icmp ult i8 %.off215.i, 3
  br label %bb.cg

.loopexit.i:                                      ; preds = %._crit_edge, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB1J_9IeeeFloatNtB1J_5QuadSE19from_decimal_strings_0ECsileJQcQObtj_7hir_def.exit.i, %bb.dh, %bb.dg, %bb.da, %bb.cq, %bb.cp, %bb.ck, %bb.cj, %bb.ch, %bb.cg
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

.loopexit.split-lp.i:                             ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.i, %.thread524.i, %bb.cw, %bb.cv
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.cf:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.t)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit258.i unwind label %bb.ea, !noalias !4962

bb.cg:                                            ; preds = %bb.do, %._crit_edge647.i
  %.sroa.077.0.i = phi i32 [ 0, %._crit_edge647.i ], [ %i.sr, %bb.do ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4976
  %i.sn = and i32 %.sroa.077.0.i, 63
  %i.so = zext nneg i32 %i.sn to i64
  %i.sp = shl i64 128, %i.so                      ; 3 uses
  %i.sq = add i64 %i.sp, -1                       ; 6 uses
  store i64 %i.sq, ptr %i.m, align 8, !noalias !4976
  %i.sr = add i32 %.sroa.077.0.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4976
  %i.ss = load i64, ptr %i.pq, align 16, !alias.scope !5001, !noalias !5004, !noundef !295 ; 2 uses
  %i.st = icmp ugt i64 %i.ss, 2                   ; 2 uses
  %i.su = load ptr, ptr %i.y, align 16, !alias.scope !5001, !noalias !5004, !nonnull !295
  %i.sv = load i64, ptr %i.pr, align 8, !alias.scope !5001, !noalias !5004
  %.sink11.i255.i = select i1 %i.st, ptr %i.su, ptr %i.y
  %.sink10.i256.i = select i1 %i.st, i64 %i.sv, i64 %i.ss
  %i.sw = invoke fastcc { i32, i8 } @_RNCNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5QuadSE19from_decimal_string0CsileJQcQObtj_7hir_def(ptr nonnull %i.m, ptr noalias nofree noundef align 16 dereferenceable(48) %i.u, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %.sink11.i255.i, i64 noundef %.sink10.i256.i)
          to label %bb.ch unwind label %.loopexit.i, !noalias !4962 ; 2 uses

bb.ch:                                            ; preds = %bb.cg
  %i.sx = load i64, ptr %i.se, align 16, !alias.scope !5006, !noalias !5009, !noundef !295 ; 2 uses
  %i.sy = icmp ugt i64 %i.sx, 2                   ; 2 uses
  %i.sz = load ptr, ptr %i.w, align 16, !alias.scope !5006, !noalias !5009, !nonnull !295
  %i.ta = load i64, ptr %i.sf, align 8, !alias.scope !5006, !noalias !5009
  %.sink11.i259.i = select i1 %i.sy, ptr %i.sz, ptr %i.w
  %.sink10.i260.i = select i1 %i.sy, i64 %i.ta, i64 %i.sx
  %i.tb = invoke fastcc { i32, i8 } @_RNCNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5QuadSE19from_decimal_string0CsileJQcQObtj_7hir_def(ptr nonnull %i.m, ptr noalias nofree noundef align 16 dereferenceable(48) %i.v, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %.sink11.i259.i, i64 noundef %.sink10.i260.i)
          to label %bb.ci unwind label %.loopexit.i, !noalias !4962 ; 2 uses

bb.ci:                                            ; preds = %bb.ch
  %i.tc = extractvalue { i32, i8 } %i.sw, 0
  %i.td = extractvalue { i32, i8 } %i.sw, 1
  %i.te = extractvalue { i32, i8 } %i.tb, 0       ; 2 uses
  %i.tf = extractvalue { i32, i8 } %i.tb, 1       ; 2 uses
  %i.tg = add i32 %i.tc, %storemerge.i            ; 2 uses
  %i.th = add i64 %i.sp, -114                     ; 3 uses
  %i.ti = icmp ne i8 %i.td, 0
  %i.tj = zext i1 %i.ti to i128
  br i1 %i.sg, label %bb.cp, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.tk = sub i32 %i.tg, %i.te
  store i32 %i.tk, ptr %i.l, align 4, !noalias !4976
  %i.tl = load i64, ptr %i.sh, align 16, !alias.scope !5011, !noalias !5014, !noundef !295 ; 2 uses
  %i.tm = icmp ugt i64 %i.tl, 2
  %i.tn = load i64, ptr %i.si, align 8, !alias.scope !5011, !noalias !5014
  %.sink10.i263.i = select i1 %i.tm, i64 %i.tn, i64 %i.tl
  invoke void @_RNvMsf_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6resizeCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.t, i64 noundef %.sink10.i263.i, i128 noundef 0)
          to label %bb.ck unwind label %.loopexit.i, !noalias !4962

bb.ck:                                            ; preds = %bb.cj
  %i.to = load i64, ptr %i.sj, align 16, !alias.scope !5016, !noalias !5019, !noundef !295 ; 2 uses
  %i.tp = icmp ugt i64 %i.to, 2                   ; 2 uses
  %i.tq = load ptr, ptr %i.t, align 16, !alias.scope !5016, !noalias !5019, !nonnull !295
  %.sink10.i268.i = select i1 %i.tp, ptr %i.tq, ptr %i.t
  %.val532.i = load i64, ptr %i.sk, align 8, !noalias !4976
  %i.tr = select i1 %i.tp, i64 %.val532.i, i64 %i.to
  %i.ts = load i64, ptr %i.sh, align 16, !alias.scope !5021, !noalias !5024, !noundef !295 ; 2 uses
  %i.tt = icmp ugt i64 %i.ts, 2                   ; 2 uses
  %i.tu = load ptr, ptr %i.u, align 16, !alias.scope !5021, !noalias !5024, !nonnull !295
  %.sink10.i270.i = select i1 %i.tt, ptr %i.tu, ptr %i.u
  %.val534.i = load i64, ptr %i.si, align 8, !noalias !4976
  %i.tv = select i1 %i.tt, i64 %.val534.i, i64 %i.ts
  %i.tw = load i64, ptr %i.sl, align 16, !alias.scope !5026, !noalias !5029, !noundef !295 ; 2 uses
  %i.tx = icmp ugt i64 %i.tw, 2                   ; 2 uses
  %i.ty = load ptr, ptr %i.v, align 16, !alias.scope !5026, !noalias !5029, !nonnull !295
  %.sink10.i273.i = select i1 %i.tx, ptr %i.ty, ptr %i.v
  %.val536.i = load i64, ptr %i.sm, align 8, !noalias !4976
  %i.tz = select i1 %i.tx, i64 %.val536.i, i64 %i.tw
  %i.ua = invoke fastcc noundef i8 @_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div(ptr noalias nofree noundef nonnull align 16 %.sink10.i268.i, i64 noundef %i.tr, ptr noalias nofree noundef align 4 dereferenceable(4) %i.l, ptr noalias nofree noundef nonnull align 16 %.sink10.i270.i, i64 noundef %i.tv, ptr noalias nofree noundef nonnull align 16 %.sink10.i273.i, i64 noundef %i.tz, i64 noundef %i.sq)
          to label %bb.cl unwind label %.loopexit.i, !noalias !4962 ; 2 uses

bb.cl:                                            ; preds = %bb.ck
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsileJQcQObtj_7hir_def(ptr noundef nonnull %i.u, ptr noundef nonnull %i.t, i64 noundef 6)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit.i unwind label %bb.cm, !noalias !4962

bb.cm:                                            ; preds = %bb.cl
  %i.ub = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #44, !noalias !4962
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.cl
  %i.uc = load i32, ptr %i.l, align 4, !noalias !4976, !noundef !295 ; 2 uses
  %i.ud = icmp slt i32 %i.uc, -16382
  br i1 %i.ud, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit.i
  %i.ue = sub nuw nsw i32 -16382, %i.uc
  %i.uf = zext nneg i32 %i.ue to i64
  %i.ug = add i64 %i.th, %i.uf                    ; 2 uses
  %i.uh = call i64 @llvm.usub.sat.i64(i64 %i.sq, i64 %i.ug)
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit.i
  %.sroa.094.0.i = phi i64 [ %i.uh, %bb.cn ], [ 113, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit.i ]
  %.sroa.085.0.i = phi i64 [ %i.ug, %bb.cn ], [ %i.th, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit.i ]
  %i.ui = or i8 %i.ua, %i.tf
  %i.uj = icmp eq i8 %i.ui, 0
  %.sroa.099.0.i = select i1 %i.uj, i128 0, i128 2
  br label %bb.ct

bb.cp:                                            ; preds = %bb.ci
  %i.uk = add i32 %i.te, %i.tg
  store i32 %i.uk, ptr %i.l, align 4, !noalias !4976
  %i.ul = load i64, ptr %i.sh, align 16, !alias.scope !5031, !noalias !5034, !noundef !295 ; 2 uses
  %i.um = icmp ugt i64 %i.ul, 2
  %i.un = load i64, ptr %i.si, align 8, !alias.scope !5031, !noalias !5034
  %.sink10.i266.i = select i1 %i.um, i64 %i.un, i64 %i.ul
  %i.uo = load i64, ptr %i.sl, align 16, !alias.scope !5036, !noalias !5039, !noundef !295 ; 2 uses
  %i.up = icmp ugt i64 %i.uo, 2
  %i.uq = load i64, ptr %i.sm, align 8, !alias.scope !5036, !noalias !5039
  %.sink10.i280.i = select i1 %i.up, i64 %i.uq, i64 %i.uo
end_hunk_1
begin_hunk_2_@_RNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7DoubleSENtB7_5Float10from_str_rCsileJQcQObtj_7hir_def:bb.a
bb.bo:                                            ; preds = %bb.bm
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %.sroa.4.0611754.i
  %i.ph = load i8, ptr %i.pg, align 1, !alias.scope !5250, !noalias !5231, !noundef !295
  %i.pi = icmp sgt i8 %i.ph, -65
  br i1 %i.pi, label %bb.bn, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread505.i, !prof !4586

.thread499.i:                                     ; preds = %bb.bh, %bb.bg
  %i.pj = icmp eq i8 %.sroa.028.0, 1
  br i1 %i.pj, label %bb.ex, label %bb.ew

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit249.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit306.i, %.body.i, %.loopexit.split-lp544.loopexit.split-lp.i, %.loopexit.split-lp544.loopexit.i, %.loopexit543.i
  %.pn203.pn.pn.i = phi { ptr, i32 } [ %.pn203.pn.i, %.body.i ], [ %.pn199.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit306.i ], [ %lpad.loopexit545.i, %.loopexit543.i ], [ %lpad.loopexit548.i, %.loopexit.split-lp544.loopexit.i ], [ %lpad.loopexit.split-lp549.i, %.loopexit.split-lp544.loopexit.split-lp.i ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.y)
          to label %common.resume.i unwind label %bb.ea, !noalias !5231

.loopexit543.i:                                   ; preds = %.lr.ph629.i
  %lpad.loopexit545.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit249.i

.loopexit.split-lp544.loopexit.i:                 ; preds = %bb.ev, %.thread514.i
  %lpad.loopexit548.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit249.i

.loopexit.split-lp544.loopexit.split-lp.i:        ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit307.i, %bb.bx, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread505.i
  %lpad.loopexit.split-lp549.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit249.i

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i: ; preds = %bb.bn
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %reass.sub648.i
  %i.pl = load i8, ptr %i.pk, align 1, !alias.scope !5250, !noalias !5231, !noundef !295
  %i.pm = icmp sgt i8 %i.pl, -65
  br i1 %i.pm, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread505.i, !prof !4587

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread505.i: ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i, %bb.bo, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E13with_capacityCsileJQcQObtj_7hir_def.exit.i
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1, i64 noundef range(i64 1, 0) %.sroa.18.1, i64 noundef %.sroa.4.0611754.i, i64 noundef %reass.sub648.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @185) #46
          to label %bb.bp unwind label %.loopexit.split-lp544.loopexit.split-lp.i, !noalias !5231

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i: ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i, %bb.bn, %bb.bl
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %.sroa.4.0611754.i
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %reass.sub648.i ; 5 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.pq = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  br label %.outer.i

bb.bp:                                            ; preds = %bb.cw, %bb.cv, %bb.bx, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread505.i
  unreachable

.outer.i:                                         ; preds = %.outer.i.backedge, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i
  %.sroa.0373.1.ph.i = phi ptr [ %i.pn, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i ], [ %.sroa.0373.1.ph.i.be, %.outer.i.backedge ]
  %.sroa.053.0.ph.i = phi i128 [ 1, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i ], [ %.sroa.053.0.ph.i.be, %.outer.i.backedge ] ; 3 uses
  %.sroa.049.0.ph.i = phi i128 [ 0, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i ], [ %.sroa.049.0.ph.i.be, %.outer.i.backedge ] ; 2 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bt, %.outer.i
  %.sroa.0373.1.i = phi ptr [ %.sroa.0373.2.ph.i, %bb.bt ], [ %.sroa.0373.1.ph.i, %.outer.i ] ; 6 uses
  %i.ps = icmp eq ptr %.sroa.0373.1.i, %i.po
  br i1 %i.ps, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.0373.1.i, i64 1 ; 3 uses
  %i.pu = load i8, ptr %.sroa.0373.1.i, align 1, !alias.scope !5219, !noalias !5253, !noundef !295 ; 5 uses
  %i.pv = icmp sgt i8 %i.pu, -1
  br i1 %i.pv, label %bb.bs, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit12.i242.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit12.i242.i: ; preds = %bb.br
  %i.pw = and i8 %i.pu, 31
  %i.px = zext nneg i8 %i.pw to i32               ; 3 uses
  %i.py = icmp ne ptr %i.pt, %i.po
  call void @llvm.assume(i1 %i.py)
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.0373.1.i, i64 2 ; 3 uses
  %i.qa = load i8, ptr %i.pt, align 1, !alias.scope !5219, !noalias !5253, !noundef !295
  %i.qb = shl nuw nsw i32 %i.px, 6
  %i.qc = and i8 %i.qa, 63
  %i.qd = zext nneg i8 %i.qc to i32               ; 2 uses
  %i.qe = or disjoint i32 %i.qb, %i.qd
  %i.qf = icmp samesign ugt i8 %i.pu, -33
  br i1 %i.qf, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit14.i245.i, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.qg = zext nneg i8 %i.pu to i32
  br label %bb.bt

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit14.i245.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit12.i242.i
  %i.qh = icmp ne ptr %i.pz, %i.po
  call void @llvm.assume(i1 %i.qh)
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.0373.1.i, i64 3 ; 3 uses
  %i.qj = load i8, ptr %i.pz, align 1, !alias.scope !5219, !noalias !5253, !noundef !295
  %i.qk = shl nuw nsw i32 %i.qd, 6
  %i.ql = and i8 %i.qj, 63
  %i.qm = zext nneg i8 %i.ql to i32
  %i.qn = or disjoint i32 %i.qk, %i.qm            ; 2 uses
  %i.qo = shl nuw nsw i32 %i.px, 12
  %i.qp = or disjoint i32 %i.qn, %i.qo
  %i.qq = icmp samesign ugt i8 %i.pu, -17
  br i1 %i.qq, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit16.i246.i, label %bb.bt

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit16.i246.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit14.i245.i
  %i.qr = icmp ne ptr %i.qi, %i.po
  call void @llvm.assume(i1 %i.qr)
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.0373.1.i, i64 4
  %i.qt = load i8, ptr %i.qi, align 1, !alias.scope !5219, !noalias !5253, !noundef !295
  %i.qu = shl nuw nsw i32 %i.px, 18
  %i.qv = and i32 %i.qu, 1835008
  %i.qw = shl nuw nsw i32 %i.qn, 6
  %i.qx = and i8 %i.qt, 63
  %i.qy = zext nneg i8 %i.qx to i32
  %i.qz = or disjoint i32 %i.qw, %i.qy
  %i.ra = or disjoint i32 %i.qz, %i.qv
  br label %bb.bt

bb.bt:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit16.i246.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit14.i245.i, %bb.bs, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit12.i242.i
  %.sroa.0373.2.ph.i = phi ptr [ %i.pz, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit12.i242.i ], [ %i.qi, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit14.i245.i ], [ %i.qs, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit16.i246.i ], [ %i.pt, %bb.bs ] ; 3 uses
  %.sroa.4.0.i243.ph.i = phi i32 [ %i.qe, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit12.i242.i ], [ %i.qp, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit14.i245.i ], [ %i.ra, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit16.i246.i ], [ %i.qg, %bb.bs ] ; 3 uses
  %i.rb = icmp samesign ult i32 %.sroa.4.0.i243.ph.i, 1114112
  call void @llvm.assume(i1 %i.rb)
  %i.rc = icmp eq i32 %.sroa.4.0.i243.ph.i, 46
  br i1 %i.rc, label %bb.bq, label %bb.bv

bb.bu:                                            ; preds = %bb.bq
  %i.rd = icmp eq i128 %.sroa.053.0.ph.i, 1
  br i1 %i.rd, label %bb.by, label %.thread514.i

bb.bv:                                            ; preds = %bb.bt
  %i.re = add nsw i32 %.sroa.4.0.i243.ph.i, -48   ; 2 uses
  %i.rf = icmp ult i32 %i.re, 10
  br i1 %i.rf, label %bb.bw, label %bb.bx, !prof !7

bb.bw:                                            ; preds = %bb.bv
  %i.rg = mul i128 %.sroa.053.0.ph.i, 10          ; 3 uses
  %i.rh = mul i128 %.sroa.049.0.ph.i, 10
  %i.ri = zext nneg i32 %i.re to i128
  %i.rj = add i128 %i.rh, %i.ri                   ; 2 uses
  %i.rk = icmp ugt i128 %i.rg, 34028236692093846346337460743176821144
  br i1 %i.rk, label %.thread514.i, label %.outer.i.backedge

.outer.i.backedge:                                ; preds = %bb.bw, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCsileJQcQObtj_7hir_def.exit.i, %._crit_edge.i
  %.sroa.0373.1.ph.i.be = phi ptr [ %.sroa.0373.2.ph.i, %bb.bw ], [ %.sroa.0373.2512518.i, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCsileJQcQObtj_7hir_def.exit.i ], [ %.sroa.0373.2512518.i, %._crit_edge.i ]
  %.sroa.053.0.ph.i.be = phi i128 [ %i.rg, %bb.bw ], [ 1, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCsileJQcQObtj_7hir_def.exit.i ], [ 1, %._crit_edge.i ]
  %.sroa.049.0.ph.i.be = phi i128 [ %i.rj, %bb.bw ], [ 0, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCsileJQcQObtj_7hir_def.exit.i ], [ 0, %._crit_edge.i ]
  br label %.outer.i

bb.bx:                                            ; preds = %bb.bv
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #46
          to label %bb.bp unwind label %.loopexit.split-lp544.loopexit.split-lp.i, !noalias !5231

bb.by:                                            ; preds = %bb.bu
  %.sroa.072.0.i = call i32 @llvm.abs.i32(i32 %storemerge.i, i1 false)
  %i.rl = sext i32 %.sroa.072.0.i to i64          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !5245
  %i.rm = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 5 uses
  store i64 0, ptr %i.rm, align 16, !noalias !5245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5256
  %i.rn = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 0, ptr %i.rn, align 16, !noalias !5256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5256
  store i64 0, ptr %i.f, align 16, !noalias !5260
  %.sroa.4375.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %.sroa.4375.0..sroa_idx.i, align 8, !noalias !5260
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i128 625, ptr %.sroa.5.0..sroa_idx.i, align 16, !noalias !5260
  invoke void @_RINvXst_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendoE6extendINtNtNtBX_5array4iter8IntoIteroKj1_EECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(32) %i.f)
          to label %bb.cb unwind label %bb.bz, !noalias !5261

bb.bz:                                            ; preds = %bb.by
  %i.ro = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.g)
          to label %.body.i unwind label %bb.ca, !noalias !5261

bb.ca:                                            ; preds = %bb.bz
  %i.rp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !5261
  unreachable

.thread514.i:                                     ; preds = %bb.bw, %bb.bu
  %.sroa.049.1520.i = phi i128 [ %.sroa.049.0.ph.i, %bb.bu ], [ %i.rj, %bb.bw ] ; 2 uses
  %.sroa.053.1519.i = phi i128 [ %.sroa.053.0.ph.i, %bb.bu ], [ %i.rg, %bb.bw ]
  %.sroa.0373.2512518.i = phi ptr [ %i.po, %bb.bu ], [ %.sroa.0373.2.ph.i, %bb.bw ] ; 2 uses
  %i.rq = invoke { ptr, ptr } @_RNvXsO_Csjpcu9PwIgok_8smallvecQINtB5_8SmallVecAoj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.y)
          to label %bb.es unwind label %.loopexit.split-lp544.loopexit.i, !noalias !5231 ; 2 uses

.body.i:                                          ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit254.i, %bb.bz
  %.pn203.pn.i = phi { ptr, i32 } [ %i.ro, %bb.bz ], [ %.pn203.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit254.i ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.s)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit249.i unwind label %bb.ea, !noalias !5231

bb.cb:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.r, ptr noundef nonnull align 16 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !5262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5245
  %i.rr = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 5 uses
  store i64 0, ptr %i.rr, align 16, !noalias !5245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5245
  %i.rs = and i64 %i.rl, 7
  %4 = getelementptr inbounds nuw [16 x i8], ptr @187, i64 %i.rs
  %i.rt = load i128, ptr %4, align 16, !noalias !5245, !noundef !295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5263
  %i.ru = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 0, ptr %i.ru, align 16, !noalias !5263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5263
  store i64 0, ptr %i.d, align 16, !noalias !5267
  %.sroa.4377.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %.sroa.4377.0..sroa_idx.i, align 8, !noalias !5267
  %.sroa.5378.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i128 %i.rt, ptr %.sroa.5378.0..sroa_idx.i, align 16, !noalias !5267
  invoke void @_RINvXst_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendoE6extendINtNtNtBX_5array4iter8IntoIteroKj1_EECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(32) %i.d)
          to label %bb.ce unwind label %bb.cc, !noalias !5268

bb.cc:                                            ; preds = %bb.cb
  %i.rv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.e)
          to label %.body251.i unwind label %bb.cd, !noalias !5268

bb.cd:                                            ; preds = %bb.cc
  %i.rw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !5268
  unreachable

.body251.i:                                       ; preds = %bb.eb, %bb.cc
  %.pn203.i = phi { ptr, i32 } [ %i.rv, %bb.cc ], [ %i.yz, %bb.eb ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.q)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit254.i unwind label %bb.ea, !noalias !5231

bb.ce:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.p, ptr noundef nonnull align 16 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !5269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5263
  %i.rx = lshr i64 %i.rl, 3                       ; 2 uses
  %.not191643.i = icmp eq i64 %i.rx, 0
  br i1 %.not191643.i, label %._crit_edge647.i, label %.lr.ph646.i

.lr.ph646.i:                                      ; preds = %bb.ce
  %i.ry = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 4 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  br label %bb.ec

._crit_edge647.i:                                 ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit354.i, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !5245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.w, ptr noundef nonnull align 16 dereferenceable(48) %i.p, i64 48, i1 false), !noalias !5245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !5245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.v, ptr noundef nonnull align 16 dereferenceable(48) %i.q, i64 48, i1 false), !noalias !5245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !5245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.u, ptr noundef nonnull align 16 dereferenceable(48) %i.r, i64 48, i1 false), !noalias !5245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !5245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull align 16 dereferenceable(48) %i.s, i64 48, i1 false), !noalias !5245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !5245
  %i.se = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.sf = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.sg = icmp sgt i32 %storemerge.i, -1
  %i.sh = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 7 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 7 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 3 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %.off215.i = add nsw i8 %.sroa.028.0, -1
  %switch216.i = icmp ult i8 %.off215.i, 3
  br label %bb.cg

.loopexit.i:                                      ; preds = %._crit_edge, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB1J_9IeeeFloatNtB1J_7DoubleSE19from_decimal_strings_0ECsileJQcQObtj_7hir_def.exit.i, %bb.dh, %bb.dg, %bb.da, %bb.cq, %bb.cp, %bb.ck, %bb.cj, %bb.ch, %bb.cg
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

.loopexit.split-lp.i:                             ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.i, %.thread524.i, %bb.cw, %bb.cv
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.cf:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.t)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit258.i unwind label %bb.ea, !noalias !5231

bb.cg:                                            ; preds = %bb.do, %._crit_edge647.i
  %.sroa.077.0.i = phi i32 [ 0, %._crit_edge647.i ], [ %i.sr, %bb.do ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5245
  %i.sn = and i32 %.sroa.077.0.i, 63
  %i.so = zext nneg i32 %i.sn to i64
  %i.sp = shl i64 128, %i.so                      ; 3 uses
  %i.sq = add i64 %i.sp, -1                       ; 6 uses
  store i64 %i.sq, ptr %i.m, align 8, !noalias !5245
  %i.sr = add i32 %.sroa.077.0.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5245
  %i.ss = load i64, ptr %i.pq, align 16, !alias.scope !5270, !noalias !5273, !noundef !295 ; 2 uses
  %i.st = icmp ugt i64 %i.ss, 2                   ; 2 uses
  %i.su = load ptr, ptr %i.y, align 16, !alias.scope !5270, !noalias !5273, !nonnull !295
  %i.sv = load i64, ptr %i.pr, align 8, !alias.scope !5270, !noalias !5273
  %.sink11.i255.i = select i1 %i.st, ptr %i.su, ptr %i.y
  %.sink10.i256.i = select i1 %i.st, i64 %i.sv, i64 %i.ss
  %i.sw = invoke fastcc { i32, i8 } @_RNCNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_7DoubleSE19from_decimal_string0CsileJQcQObtj_7hir_def(ptr nonnull %i.m, ptr noalias nofree noundef align 16 dereferenceable(48) %i.u, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %.sink11.i255.i, i64 noundef %.sink10.i256.i)
          to label %bb.ch unwind label %.loopexit.i, !noalias !5231 ; 2 uses

bb.ch:                                            ; preds = %bb.cg
  %i.sx = load i64, ptr %i.se, align 16, !alias.scope !5275, !noalias !5278, !noundef !295 ; 2 uses
  %i.sy = icmp ugt i64 %i.sx, 2                   ; 2 uses
  %i.sz = load ptr, ptr %i.w, align 16, !alias.scope !5275, !noalias !5278, !nonnull !295
  %i.ta = load i64, ptr %i.sf, align 8, !alias.scope !5275, !noalias !5278
  %.sink11.i259.i = select i1 %i.sy, ptr %i.sz, ptr %i.w
  %.sink10.i260.i = select i1 %i.sy, i64 %i.ta, i64 %i.sx
  %i.tb = invoke fastcc { i32, i8 } @_RNCNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_7DoubleSE19from_decimal_string0CsileJQcQObtj_7hir_def(ptr nonnull %i.m, ptr noalias nofree noundef align 16 dereferenceable(48) %i.v, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %.sink11.i259.i, i64 noundef %.sink10.i260.i)
          to label %bb.ci unwind label %.loopexit.i, !noalias !5231 ; 2 uses

bb.ci:                                            ; preds = %bb.ch
  %i.tc = extractvalue { i32, i8 } %i.sw, 0
  %i.td = extractvalue { i32, i8 } %i.sw, 1
  %i.te = extractvalue { i32, i8 } %i.tb, 0       ; 2 uses
  %i.tf = extractvalue { i32, i8 } %i.tb, 1       ; 2 uses
  %i.tg = add i32 %i.tc, %storemerge.i            ; 2 uses
  %i.th = add i64 %i.sp, -54                      ; 3 uses
  %i.ti = icmp ne i8 %i.td, 0
  %i.tj = zext i1 %i.ti to i128
  br i1 %i.sg, label %bb.cp, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.tk = sub i32 %i.tg, %i.te
  store i32 %i.tk, ptr %i.l, align 4, !noalias !5245
  %i.tl = load i64, ptr %i.sh, align 16, !alias.scope !5280, !noalias !5283, !noundef !295 ; 2 uses
  %i.tm = icmp ugt i64 %i.tl, 2
  %i.tn = load i64, ptr %i.si, align 8, !alias.scope !5280, !noalias !5283
  %.sink10.i263.i = select i1 %i.tm, i64 %i.tn, i64 %i.tl
  invoke void @_RNvMsf_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6resizeCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.t, i64 noundef %.sink10.i263.i, i128 noundef 0)
          to label %bb.ck unwind label %.loopexit.i, !noalias !5231

bb.ck:                                            ; preds = %bb.cj
  %i.to = load i64, ptr %i.sj, align 16, !alias.scope !5285, !noalias !5288, !noundef !295 ; 2 uses
  %i.tp = icmp ugt i64 %i.to, 2                   ; 2 uses
  %i.tq = load ptr, ptr %i.t, align 16, !alias.scope !5285, !noalias !5288, !nonnull !295
  %.sink10.i268.i = select i1 %i.tp, ptr %i.tq, ptr %i.t
  %.val532.i = load i64, ptr %i.sk, align 8, !noalias !5245
  %i.tr = select i1 %i.tp, i64 %.val532.i, i64 %i.to
  %i.ts = load i64, ptr %i.sh, align 16, !alias.scope !5290, !noalias !5293, !noundef !295 ; 2 uses
  %i.tt = icmp ugt i64 %i.ts, 2                   ; 2 uses
  %i.tu = load ptr, ptr %i.u, align 16, !alias.scope !5290, !noalias !5293, !nonnull !295
  %.sink10.i270.i = select i1 %i.tt, ptr %i.tu, ptr %i.u
  %.val534.i = load i64, ptr %i.si, align 8, !noalias !5245
  %i.tv = select i1 %i.tt, i64 %.val534.i, i64 %i.ts
  %i.tw = load i64, ptr %i.sl, align 16, !alias.scope !5295, !noalias !5298, !noundef !295 ; 2 uses
  %i.tx = icmp ugt i64 %i.tw, 2                   ; 2 uses
  %i.ty = load ptr, ptr %i.v, align 16, !alias.scope !5295, !noalias !5298, !nonnull !295
  %.sink10.i273.i = select i1 %i.tx, ptr %i.ty, ptr %i.v
  %.val536.i = load i64, ptr %i.sm, align 8, !noalias !5245
  %i.tz = select i1 %i.tx, i64 %.val536.i, i64 %i.tw
  %i.ua = invoke fastcc noundef i8 @_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div(ptr noalias nofree noundef nonnull align 16 %.sink10.i268.i, i64 noundef %i.tr, ptr noalias nofree noundef align 4 dereferenceable(4) %i.l, ptr noalias nofree noundef nonnull align 16 %.sink10.i270.i, i64 noundef %i.tv, ptr noalias nofree noundef nonnull align 16 %.sink10.i273.i, i64 noundef %i.tz, i64 noundef %i.sq)
          to label %bb.cl unwind label %.loopexit.i, !noalias !5231 ; 2 uses

bb.cl:                                            ; preds = %bb.ck
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsileJQcQObtj_7hir_def(ptr noundef nonnull %i.u, ptr noundef nonnull %i.t, i64 noundef 6)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit.i unwind label %bb.cm, !noalias !5231

bb.cm:                                            ; preds = %bb.cl
  %i.ub = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #44, !noalias !5231
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.cl
  %i.uc = load i32, ptr %i.l, align 4, !noalias !5245, !noundef !295 ; 2 uses
  %i.ud = icmp slt i32 %i.uc, -1022
  br i1 %i.ud, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit.i
  %i.ue = sub nuw nsw i32 -1022, %i.uc
  %i.uf = zext nneg i32 %i.ue to i64
  %i.ug = add i64 %i.th, %i.uf                    ; 2 uses
  %i.uh = call i64 @llvm.usub.sat.i64(i64 %i.sq, i64 %i.ug)
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit.i
  %.sroa.094.0.i = phi i64 [ %i.uh, %bb.cn ], [ 53, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit.i ]
  %.sroa.085.0.i = phi i64 [ %i.ug, %bb.cn ], [ %i.th, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit.i ]
  %i.ui = or i8 %i.ua, %i.tf
  %i.uj = icmp eq i8 %i.ui, 0
  %.sroa.099.0.i = select i1 %i.uj, i128 0, i128 2
  br label %bb.ct

bb.cp:                                            ; preds = %bb.ci
  %i.uk = add i32 %i.te, %i.tg
  store i32 %i.uk, ptr %i.l, align 4, !noalias !5245
  %i.ul = load i64, ptr %i.sh, align 16, !alias.scope !5300, !noalias !5303, !noundef !295 ; 2 uses
  %i.um = icmp ugt i64 %i.ul, 2
  %i.un = load i64, ptr %i.si, align 8, !alias.scope !5300, !noalias !5303
  %.sink10.i266.i = select i1 %i.um, i64 %i.un, i64 %i.ul
  %i.uo = load i64, ptr %i.sl, align 16, !alias.scope !5305, !noalias !5308, !noundef !295 ; 2 uses
  %i.up = icmp ugt i64 %i.uo, 2
  %i.uq = load i64, ptr %i.sm, align 8, !alias.scope !5305, !noalias !5308
  %.sink10.i280.i = select i1 %i.up, i64 %i.uq, i64 %i.uo
end_hunk_2
begin_hunk_3_@_RNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7SingleSENtB7_5Float10from_str_rCsileJQcQObtj_7hir_def:bb.a
bb.bo:                                            ; preds = %bb.bm
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %.sroa.4.0611754.i
  %i.ph = load i8, ptr %i.pg, align 1, !alias.scope !5519, !noalias !5500, !noundef !295
  %i.pi = icmp sgt i8 %i.ph, -65
  br i1 %i.pi, label %bb.bn, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread505.i, !prof !4586

.thread499.i:                                     ; preds = %bb.bh, %bb.bg
  %i.pj = icmp eq i8 %.sroa.028.0, 1
  br i1 %i.pj, label %bb.ex, label %bb.ew

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit249.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit306.i, %.body.i, %.loopexit.split-lp544.loopexit.split-lp.i, %.loopexit.split-lp544.loopexit.i, %.loopexit543.i
  %.pn203.pn.pn.i = phi { ptr, i32 } [ %.pn203.pn.i, %.body.i ], [ %.pn199.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit306.i ], [ %lpad.loopexit545.i, %.loopexit543.i ], [ %lpad.loopexit548.i, %.loopexit.split-lp544.loopexit.i ], [ %lpad.loopexit.split-lp549.i, %.loopexit.split-lp544.loopexit.split-lp.i ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.y)
          to label %common.resume.i unwind label %bb.ea, !noalias !5500

.loopexit543.i:                                   ; preds = %.lr.ph629.i
  %lpad.loopexit545.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit249.i

.loopexit.split-lp544.loopexit.i:                 ; preds = %bb.ev, %.thread514.i
  %lpad.loopexit548.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit249.i

.loopexit.split-lp544.loopexit.split-lp.i:        ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit307.i, %bb.bx, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread505.i
  %lpad.loopexit.split-lp549.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit249.i

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i: ; preds = %bb.bn
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %reass.sub648.i
  %i.pl = load i8, ptr %i.pk, align 1, !alias.scope !5519, !noalias !5500, !noundef !295
  %i.pm = icmp sgt i8 %i.pl, -65
  br i1 %i.pm, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread505.i, !prof !4587

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread505.i: ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i, %bb.bo, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E13with_capacityCsileJQcQObtj_7hir_def.exit.i
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1, i64 noundef range(i64 1, 0) %.sroa.18.1, i64 noundef %.sroa.4.0611754.i, i64 noundef %reass.sub648.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @185) #46
          to label %bb.bp unwind label %.loopexit.split-lp544.loopexit.split-lp.i, !noalias !5500

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i: ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i, %bb.bn, %bb.bl
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %.sroa.4.0611754.i
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %reass.sub648.i ; 5 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.pq = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  br label %.outer.i

bb.bp:                                            ; preds = %bb.cw, %bb.cv, %bb.bx, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread505.i
  unreachable

.outer.i:                                         ; preds = %.outer.i.backedge, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i
  %.sroa.0373.1.ph.i = phi ptr [ %i.pn, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i ], [ %.sroa.0373.1.ph.i.be, %.outer.i.backedge ]
  %.sroa.053.0.ph.i = phi i128 [ 1, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i ], [ %.sroa.053.0.ph.i.be, %.outer.i.backedge ] ; 3 uses
  %.sroa.049.0.ph.i = phi i128 [ 0, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i ], [ %.sroa.049.0.ph.i.be, %.outer.i.backedge ] ; 2 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bt, %.outer.i
  %.sroa.0373.1.i = phi ptr [ %.sroa.0373.2.ph.i, %bb.bt ], [ %.sroa.0373.1.ph.i, %.outer.i ] ; 6 uses
  %i.ps = icmp eq ptr %.sroa.0373.1.i, %i.po
  br i1 %i.ps, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.0373.1.i, i64 1 ; 3 uses
  %i.pu = load i8, ptr %.sroa.0373.1.i, align 1, !alias.scope !5488, !noalias !5522, !noundef !295 ; 5 uses
  %i.pv = icmp sgt i8 %i.pu, -1
  br i1 %i.pv, label %bb.bs, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit12.i242.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit12.i242.i: ; preds = %bb.br
  %i.pw = and i8 %i.pu, 31
  %i.px = zext nneg i8 %i.pw to i32               ; 3 uses
  %i.py = icmp ne ptr %i.pt, %i.po
  call void @llvm.assume(i1 %i.py)
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.0373.1.i, i64 2 ; 3 uses
  %i.qa = load i8, ptr %i.pt, align 1, !alias.scope !5488, !noalias !5522, !noundef !295
  %i.qb = shl nuw nsw i32 %i.px, 6
  %i.qc = and i8 %i.qa, 63
  %i.qd = zext nneg i8 %i.qc to i32               ; 2 uses
  %i.qe = or disjoint i32 %i.qb, %i.qd
  %i.qf = icmp samesign ugt i8 %i.pu, -33
  br i1 %i.qf, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit14.i245.i, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.qg = zext nneg i8 %i.pu to i32
  br label %bb.bt

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit14.i245.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit12.i242.i
  %i.qh = icmp ne ptr %i.pz, %i.po
  call void @llvm.assume(i1 %i.qh)
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.0373.1.i, i64 3 ; 3 uses
  %i.qj = load i8, ptr %i.pz, align 1, !alias.scope !5488, !noalias !5522, !noundef !295
  %i.qk = shl nuw nsw i32 %i.qd, 6
  %i.ql = and i8 %i.qj, 63
  %i.qm = zext nneg i8 %i.ql to i32
  %i.qn = or disjoint i32 %i.qk, %i.qm            ; 2 uses
  %i.qo = shl nuw nsw i32 %i.px, 12
  %i.qp = or disjoint i32 %i.qn, %i.qo
  %i.qq = icmp samesign ugt i8 %i.pu, -17
  br i1 %i.qq, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit16.i246.i, label %bb.bt

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit16.i246.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit14.i245.i
  %i.qr = icmp ne ptr %i.qi, %i.po
  call void @llvm.assume(i1 %i.qr)
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.0373.1.i, i64 4
  %i.qt = load i8, ptr %i.qi, align 1, !alias.scope !5488, !noalias !5522, !noundef !295
  %i.qu = shl nuw nsw i32 %i.px, 18
  %i.qv = and i32 %i.qu, 1835008
  %i.qw = shl nuw nsw i32 %i.qn, 6
  %i.qx = and i8 %i.qt, 63
  %i.qy = zext nneg i8 %i.qx to i32
  %i.qz = or disjoint i32 %i.qw, %i.qy
  %i.ra = or disjoint i32 %i.qz, %i.qv
  br label %bb.bt

bb.bt:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit16.i246.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit14.i245.i, %bb.bs, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit12.i242.i
  %.sroa.0373.2.ph.i = phi ptr [ %i.pz, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit12.i242.i ], [ %i.qi, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit14.i245.i ], [ %i.qs, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit16.i246.i ], [ %i.pt, %bb.bs ] ; 3 uses
  %.sroa.4.0.i243.ph.i = phi i32 [ %i.qe, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit12.i242.i ], [ %i.qp, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit14.i245.i ], [ %i.ra, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit16.i246.i ], [ %i.qg, %bb.bs ] ; 3 uses
  %i.rb = icmp samesign ult i32 %.sroa.4.0.i243.ph.i, 1114112
  call void @llvm.assume(i1 %i.rb)
  %i.rc = icmp eq i32 %.sroa.4.0.i243.ph.i, 46
  br i1 %i.rc, label %bb.bq, label %bb.bv

bb.bu:                                            ; preds = %bb.bq
  %i.rd = icmp eq i128 %.sroa.053.0.ph.i, 1
  br i1 %i.rd, label %bb.by, label %.thread514.i

bb.bv:                                            ; preds = %bb.bt
  %i.re = add nsw i32 %.sroa.4.0.i243.ph.i, -48   ; 2 uses
  %i.rf = icmp ult i32 %i.re, 10
  br i1 %i.rf, label %bb.bw, label %bb.bx, !prof !7

bb.bw:                                            ; preds = %bb.bv
  %i.rg = mul i128 %.sroa.053.0.ph.i, 10          ; 3 uses
  %i.rh = mul i128 %.sroa.049.0.ph.i, 10
  %i.ri = zext nneg i32 %i.re to i128
  %i.rj = add i128 %i.rh, %i.ri                   ; 2 uses
  %i.rk = icmp ugt i128 %i.rg, 34028236692093846346337460743176821144
  br i1 %i.rk, label %.thread514.i, label %.outer.i.backedge

.outer.i.backedge:                                ; preds = %bb.bw, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCsileJQcQObtj_7hir_def.exit.i, %._crit_edge.i
  %.sroa.0373.1.ph.i.be = phi ptr [ %.sroa.0373.2.ph.i, %bb.bw ], [ %.sroa.0373.2512518.i, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCsileJQcQObtj_7hir_def.exit.i ], [ %.sroa.0373.2512518.i, %._crit_edge.i ]
  %.sroa.053.0.ph.i.be = phi i128 [ %i.rg, %bb.bw ], [ 1, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCsileJQcQObtj_7hir_def.exit.i ], [ 1, %._crit_edge.i ]
  %.sroa.049.0.ph.i.be = phi i128 [ %i.rj, %bb.bw ], [ 0, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCsileJQcQObtj_7hir_def.exit.i ], [ 0, %._crit_edge.i ]
  br label %.outer.i

bb.bx:                                            ; preds = %bb.bv
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #46
          to label %bb.bp unwind label %.loopexit.split-lp544.loopexit.split-lp.i, !noalias !5500

bb.by:                                            ; preds = %bb.bu
  %.sroa.072.0.i = call i32 @llvm.abs.i32(i32 %storemerge.i, i1 false)
  %i.rl = sext i32 %.sroa.072.0.i to i64          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !5514
  %i.rm = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 5 uses
  store i64 0, ptr %i.rm, align 16, !noalias !5514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5525
  %i.rn = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 0, ptr %i.rn, align 16, !noalias !5525
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5525
  store i64 0, ptr %i.f, align 16, !noalias !5529
  %.sroa.4375.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %.sroa.4375.0..sroa_idx.i, align 8, !noalias !5529
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i128 625, ptr %.sroa.5.0..sroa_idx.i, align 16, !noalias !5529
  invoke void @_RINvXst_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendoE6extendINtNtNtBX_5array4iter8IntoIteroKj1_EECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(32) %i.f)
          to label %bb.cb unwind label %bb.bz, !noalias !5530

bb.bz:                                            ; preds = %bb.by
  %i.ro = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.g)
          to label %.body.i unwind label %bb.ca, !noalias !5530

bb.ca:                                            ; preds = %bb.bz
  %i.rp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !5530
  unreachable

.thread514.i:                                     ; preds = %bb.bw, %bb.bu
  %.sroa.049.1520.i = phi i128 [ %.sroa.049.0.ph.i, %bb.bu ], [ %i.rj, %bb.bw ] ; 2 uses
  %.sroa.053.1519.i = phi i128 [ %.sroa.053.0.ph.i, %bb.bu ], [ %i.rg, %bb.bw ]
  %.sroa.0373.2512518.i = phi ptr [ %i.po, %bb.bu ], [ %.sroa.0373.2.ph.i, %bb.bw ] ; 2 uses
  %i.rq = invoke { ptr, ptr } @_RNvXsO_Csjpcu9PwIgok_8smallvecQINtB5_8SmallVecAoj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.y)
          to label %bb.es unwind label %.loopexit.split-lp544.loopexit.i, !noalias !5500 ; 2 uses

.body.i:                                          ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit254.i, %bb.bz
  %.pn203.pn.i = phi { ptr, i32 } [ %i.ro, %bb.bz ], [ %.pn203.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit254.i ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.s)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit249.i unwind label %bb.ea, !noalias !5500

bb.cb:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5525
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.r, ptr noundef nonnull align 16 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !5531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5525
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5514
  %i.rr = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 5 uses
  store i64 0, ptr %i.rr, align 16, !noalias !5514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5514
  %i.rs = and i64 %i.rl, 7
  %4 = getelementptr inbounds nuw [16 x i8], ptr @187, i64 %i.rs
  %i.rt = load i128, ptr %4, align 16, !noalias !5514, !noundef !295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5532
  %i.ru = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 0, ptr %i.ru, align 16, !noalias !5532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5532
  store i64 0, ptr %i.d, align 16, !noalias !5536
  %.sroa.4377.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %.sroa.4377.0..sroa_idx.i, align 8, !noalias !5536
  %.sroa.5378.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i128 %i.rt, ptr %.sroa.5378.0..sroa_idx.i, align 16, !noalias !5536
  invoke void @_RINvXst_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendoE6extendINtNtNtBX_5array4iter8IntoIteroKj1_EECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(32) %i.d)
          to label %bb.ce unwind label %bb.cc, !noalias !5537

bb.cc:                                            ; preds = %bb.cb
  %i.rv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.e)
          to label %.body251.i unwind label %bb.cd, !noalias !5537

bb.cd:                                            ; preds = %bb.cc
  %i.rw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !5537
  unreachable

.body251.i:                                       ; preds = %bb.eb, %bb.cc
  %.pn203.i = phi { ptr, i32 } [ %i.rv, %bb.cc ], [ %i.yz, %bb.eb ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.q)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit254.i unwind label %bb.ea, !noalias !5500

bb.ce:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.p, ptr noundef nonnull align 16 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !5538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5532
  %i.rx = lshr i64 %i.rl, 3                       ; 2 uses
  %.not191643.i = icmp eq i64 %i.rx, 0
  br i1 %.not191643.i, label %._crit_edge647.i, label %.lr.ph646.i

.lr.ph646.i:                                      ; preds = %bb.ce
  %i.ry = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 4 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  br label %bb.ec

._crit_edge647.i:                                 ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit354.i, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !5514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.w, ptr noundef nonnull align 16 dereferenceable(48) %i.p, i64 48, i1 false), !noalias !5514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !5514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.v, ptr noundef nonnull align 16 dereferenceable(48) %i.q, i64 48, i1 false), !noalias !5514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !5514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.u, ptr noundef nonnull align 16 dereferenceable(48) %i.r, i64 48, i1 false), !noalias !5514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !5514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull align 16 dereferenceable(48) %i.s, i64 48, i1 false), !noalias !5514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !5514
  %i.se = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.sf = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.sg = icmp sgt i32 %storemerge.i, -1
  %i.sh = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 7 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 7 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 3 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %.off215.i = add nsw i8 %.sroa.028.0, -1
  %switch216.i = icmp ult i8 %.off215.i, 3
  br label %bb.cg

.loopexit.i:                                      ; preds = %._crit_edge, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB1J_9IeeeFloatNtB1J_7SingleSE19from_decimal_strings_0ECsileJQcQObtj_7hir_def.exit.i, %bb.dh, %bb.dg, %bb.da, %bb.cq, %bb.cp, %bb.ck, %bb.cj, %bb.ch, %bb.cg
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

.loopexit.split-lp.i:                             ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.i, %.thread524.i, %bb.cw, %bb.cv
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.cf:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.t)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit258.i unwind label %bb.ea, !noalias !5500

bb.cg:                                            ; preds = %bb.do, %._crit_edge647.i
  %.sroa.077.0.i = phi i32 [ 0, %._crit_edge647.i ], [ %i.sr, %bb.do ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5514
  %i.sn = and i32 %.sroa.077.0.i, 63
  %i.so = zext nneg i32 %i.sn to i64
  %i.sp = shl i64 128, %i.so                      ; 3 uses
  %i.sq = add i64 %i.sp, -1                       ; 6 uses
  store i64 %i.sq, ptr %i.m, align 8, !noalias !5514
  %i.sr = add i32 %.sroa.077.0.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5514
  %i.ss = load i64, ptr %i.pq, align 16, !alias.scope !5539, !noalias !5542, !noundef !295 ; 2 uses
  %i.st = icmp ugt i64 %i.ss, 2                   ; 2 uses
  %i.su = load ptr, ptr %i.y, align 16, !alias.scope !5539, !noalias !5542, !nonnull !295
  %i.sv = load i64, ptr %i.pr, align 8, !alias.scope !5539, !noalias !5542
  %.sink11.i255.i = select i1 %i.st, ptr %i.su, ptr %i.y
  %.sink10.i256.i = select i1 %i.st, i64 %i.sv, i64 %i.ss
  %i.sw = invoke fastcc { i32, i8 } @_RNCNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_7SingleSE19from_decimal_string0CsileJQcQObtj_7hir_def(ptr nonnull %i.m, ptr noalias nofree noundef align 16 dereferenceable(48) %i.u, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %.sink11.i255.i, i64 noundef %.sink10.i256.i)
          to label %bb.ch unwind label %.loopexit.i, !noalias !5500 ; 2 uses

bb.ch:                                            ; preds = %bb.cg
  %i.sx = load i64, ptr %i.se, align 16, !alias.scope !5544, !noalias !5547, !noundef !295 ; 2 uses
  %i.sy = icmp ugt i64 %i.sx, 2                   ; 2 uses
  %i.sz = load ptr, ptr %i.w, align 16, !alias.scope !5544, !noalias !5547, !nonnull !295
  %i.ta = load i64, ptr %i.sf, align 8, !alias.scope !5544, !noalias !5547
  %.sink11.i259.i = select i1 %i.sy, ptr %i.sz, ptr %i.w
  %.sink10.i260.i = select i1 %i.sy, i64 %i.ta, i64 %i.sx
  %i.tb = invoke fastcc { i32, i8 } @_RNCNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_7SingleSE19from_decimal_string0CsileJQcQObtj_7hir_def(ptr nonnull %i.m, ptr noalias nofree noundef align 16 dereferenceable(48) %i.v, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %.sink11.i259.i, i64 noundef %.sink10.i260.i)
          to label %bb.ci unwind label %.loopexit.i, !noalias !5500 ; 2 uses

bb.ci:                                            ; preds = %bb.ch
  %i.tc = extractvalue { i32, i8 } %i.sw, 0
  %i.td = extractvalue { i32, i8 } %i.sw, 1
  %i.te = extractvalue { i32, i8 } %i.tb, 0       ; 2 uses
  %i.tf = extractvalue { i32, i8 } %i.tb, 1       ; 2 uses
  %i.tg = add i32 %i.tc, %storemerge.i            ; 2 uses
  %i.th = add i64 %i.sp, -25                      ; 3 uses
  %i.ti = icmp ne i8 %i.td, 0
  %i.tj = zext i1 %i.ti to i128
  br i1 %i.sg, label %bb.cp, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.tk = sub i32 %i.tg, %i.te
  store i32 %i.tk, ptr %i.l, align 4, !noalias !5514
  %i.tl = load i64, ptr %i.sh, align 16, !alias.scope !5549, !noalias !5552, !noundef !295 ; 2 uses
  %i.tm = icmp ugt i64 %i.tl, 2
  %i.tn = load i64, ptr %i.si, align 8, !alias.scope !5549, !noalias !5552
  %.sink10.i263.i = select i1 %i.tm, i64 %i.tn, i64 %i.tl
  invoke void @_RNvMsf_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6resizeCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.t, i64 noundef %.sink10.i263.i, i128 noundef 0)
          to label %bb.ck unwind label %.loopexit.i, !noalias !5500

bb.ck:                                            ; preds = %bb.cj
  %i.to = load i64, ptr %i.sj, align 16, !alias.scope !5554, !noalias !5557, !noundef !295 ; 2 uses
  %i.tp = icmp ugt i64 %i.to, 2                   ; 2 uses
  %i.tq = load ptr, ptr %i.t, align 16, !alias.scope !5554, !noalias !5557, !nonnull !295
  %.sink10.i268.i = select i1 %i.tp, ptr %i.tq, ptr %i.t
  %.val532.i = load i64, ptr %i.sk, align 8, !noalias !5514
  %i.tr = select i1 %i.tp, i64 %.val532.i, i64 %i.to
  %i.ts = load i64, ptr %i.sh, align 16, !alias.scope !5559, !noalias !5562, !noundef !295 ; 2 uses
  %i.tt = icmp ugt i64 %i.ts, 2                   ; 2 uses
  %i.tu = load ptr, ptr %i.u, align 16, !alias.scope !5559, !noalias !5562, !nonnull !295
  %.sink10.i270.i = select i1 %i.tt, ptr %i.tu, ptr %i.u
  %.val534.i = load i64, ptr %i.si, align 8, !noalias !5514
  %i.tv = select i1 %i.tt, i64 %.val534.i, i64 %i.ts
  %i.tw = load i64, ptr %i.sl, align 16, !alias.scope !5564, !noalias !5567, !noundef !295 ; 2 uses
  %i.tx = icmp ugt i64 %i.tw, 2                   ; 2 uses
  %i.ty = load ptr, ptr %i.v, align 16, !alias.scope !5564, !noalias !5567, !nonnull !295
  %.sink10.i273.i = select i1 %i.tx, ptr %i.ty, ptr %i.v
  %.val536.i = load i64, ptr %i.sm, align 8, !noalias !5514
  %i.tz = select i1 %i.tx, i64 %.val536.i, i64 %i.tw
  %i.ua = invoke fastcc noundef i8 @_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div(ptr noalias nofree noundef nonnull align 16 %.sink10.i268.i, i64 noundef %i.tr, ptr noalias nofree noundef align 4 dereferenceable(4) %i.l, ptr noalias nofree noundef nonnull align 16 %.sink10.i270.i, i64 noundef %i.tv, ptr noalias nofree noundef nonnull align 16 %.sink10.i273.i, i64 noundef %i.tz, i64 noundef %i.sq)
          to label %bb.cl unwind label %.loopexit.i, !noalias !5500 ; 2 uses

bb.cl:                                            ; preds = %bb.ck
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsileJQcQObtj_7hir_def(ptr noundef nonnull %i.u, ptr noundef nonnull %i.t, i64 noundef 6)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit.i unwind label %bb.cm, !noalias !5500

bb.cm:                                            ; preds = %bb.cl
  %i.ub = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #44, !noalias !5500
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.cl
  %i.uc = load i32, ptr %i.l, align 4, !noalias !5514, !noundef !295 ; 2 uses
  %i.ud = icmp slt i32 %i.uc, -126
  br i1 %i.ud, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit.i
  %i.ue = sub nuw nsw i32 -126, %i.uc
  %i.uf = zext nneg i32 %i.ue to i64
  %i.ug = add i64 %i.th, %i.uf                    ; 2 uses
  %i.uh = call i64 @llvm.usub.sat.i64(i64 %i.sq, i64 %i.ug)
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit.i
  %.sroa.094.0.i = phi i64 [ %i.uh, %bb.cn ], [ 24, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit.i ]
  %.sroa.085.0.i = phi i64 [ %i.ug, %bb.cn ], [ %i.th, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECsileJQcQObtj_7hir_def.exit.i ]
  %i.ui = or i8 %i.ua, %i.tf
  %i.uj = icmp eq i8 %i.ui, 0
  %.sroa.099.0.i = select i1 %i.uj, i128 0, i128 2
  br label %bb.ct

bb.cp:                                            ; preds = %bb.ci
  %i.uk = add i32 %i.te, %i.tg
  store i32 %i.uk, ptr %i.l, align 4, !noalias !5514
  %i.ul = load i64, ptr %i.sh, align 16, !alias.scope !5569, !noalias !5572, !noundef !295 ; 2 uses
  %i.um = icmp ugt i64 %i.ul, 2
  %i.un = load i64, ptr %i.si, align 8, !alias.scope !5569, !noalias !5572
  %.sink10.i266.i = select i1 %i.um, i64 %i.un, i64 %i.ul
  %i.uo = load i64, ptr %i.sl, align 16, !alias.scope !5574, !noalias !5577, !noundef !295 ; 2 uses
  %i.up = icmp ugt i64 %i.uo, 2
  %i.uq = load i64, ptr %i.sm, align 8, !alias.scope !5574, !noalias !5577
  %.sink10.i280.i = select i1 %i.up, i64 %i.uq, i64 %i.uo
end_hunk_3
