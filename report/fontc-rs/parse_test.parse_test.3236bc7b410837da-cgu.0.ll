Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/parse_test.parse_test.3236bc7b410837da-cgu.0?download=true
inline.NumInlined: 218
inline.NumDeleted: 130
begin_hunk_0_@_RNvCs4jhN2sci4pa_10parse_test4main:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  call void @llvm.experimental.noalias.scope.decl(metadata !346)
  %i.gn = load ptr, ptr %i.w, align 8, !alias.scope !347, !noalias !340, !nonnull !6, !noundef !6
  %i.go = atomicrmw add ptr %i.gn, i64 -1 release, align 8, !noalias !347
  %i.gp = icmp eq i64 %i.go, 1
  br i1 %i.gp, label %bb.bj, label %.body.i

bb.bj:                                            ; preds = %.body93.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs5Xr050g3D4S_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.w) #23
          to label %.body.i unwind label %bb.cl

bb.bk:                                            ; preds = %bb.bi
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %.body93.i

bb.bl:                                            ; preds = %bb.bi
  %i.gr = load i64, ptr %i.v, align 8, !range !11, !noalias !340, !noundef !6
  %i.gs = trunc nuw i64 %i.gr to i1
  br i1 %i.gs, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %.sroa.03.0.copyload.i = load ptr, ptr %i.fo, align 8, !noalias !340 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !340 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !340
  %i.gt = icmp eq ptr %.sroa.03.0.copyload.i, null
  br i1 %i.gt, label %bb.cr, label %bb.ct

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  call void @llvm.experimental.noalias.scope.decl(metadata !351)
  %i.gu = load ptr, ptr %i.w, align 8, !alias.scope !352, !noalias !340, !nonnull !6, !noundef !6
  %i.gv = atomicrmw add ptr %i.gu, i64 -1 release, align 8, !noalias !352
  %i.gw = icmp eq i64 %i.gv, 1
  br i1 %i.gw, label %bb.bo, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs7ReadDirECs4jhN2sci4pa_10parse_test.exit80.i

bb.bo:                                            ; preds = %bb.bn
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs5Xr050g3D4S_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.w) #23
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs7ReadDirECs4jhN2sci4pa_10parse_test.exit80.i unwind label %bb.bf

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs7ReadDirECs4jhN2sci4pa_10parse_test.exit80.i: ; preds = %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !340
  %i.gx = load i64, ptr %i.z, align 8, !noalias !340, !noundef !6
  %i.gy = icmp ult i64 %i.gm, 288230376151711744
  call void @llvm.assume(i1 %i.gy)
  %i.gz = sub i64 %i.gx, %i.gm
  store i64 %i.gz, ptr %i.n, align 8, !noalias !340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !340
  store ptr %i.n, ptr %i.m, align 8, !noalias !340
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.443.0..sroa_idx.i, align 8, !noalias !340
  %i.ha = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.z, ptr %i.ha, align 8, !noalias !340
  %.sroa.447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.447.0..sroa_idx.i, align 8, !noalias !340
  invoke void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio6__print(ptr noundef nonnull @2, ptr noundef nonnull %i.m)
          to label %bb.bp unwind label %bb.bf

bb.bp:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs7ReadDirECs4jhN2sci4pa_10parse_test.exit80.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !340
  %i.hb = icmp eq i64 %i.gm, 0                    ; 2 uses
  br i1 %i.hb, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio6__print(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 23 to ptr))
          to label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs4jhN2sci4pa_10parse_test.exit.lr.ph.i unwind label %bb.bf

bb.br:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEEECs4jhN2sci4pa_10parse_test.exit.i, %bb.bp
  %i.hc = phi i64 [ %i.gj, %bb.bp ], [ %.pre309.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEEECs4jhN2sci4pa_10parse_test.exit.i ] ; 2 uses
  %i.hd = phi ptr [ %i.gk, %bb.bp ], [ %.pre.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEEECs4jhN2sci4pa_10parse_test.exit.i ] ; 2 uses
  %.sroa.029.2.i = phi i8 [ 1, %bb.bp ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEEECs4jhN2sci4pa_10parse_test.exit.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %.idx.i.i = shl nuw nsw i64 %i.hc, 6
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %.idx.i.i
  %i.hf = icmp eq i64 %i.hc, 0
  br i1 %i.hf, label %_RNvCs4jhN2sci4pa_10parse_test25look_at_nodes_if_you_want.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.br
  %.sroa.08.sroa.0.sroa.0.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %.sroa.08.sroa.0.sroa.0.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.08.sroa.0.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %.sroa.08.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %.sroa.08.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %.sroa.08.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.hg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.bs

bb.bs:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMs_NtCscScJTt9VrQp_6fea_rs10token_treeNtB1m_4Node11iter_tokens0EECs4jhN2sci4pa_10parse_test.exit31.i.i, %.lr.ph.i.i
  %.sroa.0.032.i.i = phi ptr [ %i.hd, %.lr.ph.i.i ], [ %i.hh, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMs_NtCscScJTt9VrQp_6fea_rs10token_treeNtB1m_4Node11iter_tokens0EECs4jhN2sci4pa_10parse_test.exit31.i.i ] ; 5 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i.i, i64 64 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i.i, i64 40
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i.i, i64 48
  %i.hk = load i32, ptr %i.hj, align 8, !alias.scope !353, !noundef !6
  %i.hl = zext i32 %i.hk to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !354
  store i64 0, ptr %i.g, align 8, !noalias !354
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.08.sroa.0.sroa.0.sroa.2.0..sroa_idx.i.i, align 8, !noalias !354
  store i64 0, ptr %.sroa.08.sroa.0.sroa.0.sroa.3.0..sroa_idx.i.i, align 8, !noalias !354
  store i64 0, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx.i.i, align 8, !noalias !354
  store ptr %i.hi, ptr %.sroa.08.sroa.2.0..sroa_idx.i.i, align 8, !noalias !354
  store i64 0, ptr %.sroa.08.sroa.3.0..sroa_idx.i.i, align 8, !noalias !354
  store i8 1, ptr %.sroa.08.sroa.4.0..sroa_idx.i.i, align 8, !noalias !354
  store i64 %i.hl, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !354
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i.i, i64 8
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i.i, i64 16
  br label %.outer

.outer:                                           ; preds = %bb.cd, %bb.bs
  %.sroa.03.0.i.i.ph = phi i1 [ true, %bb.cd ], [ false, %bb.bs ]
  br label %bb.bt

bb.bt:                                            ; preds = %.outer, %bb.bw
  %i.ho = invoke noundef align 8 ptr @_RNvMNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursorNtB2_6Cursor10next_token(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.g)
          to label %bb.bv unwind label %.loopexit.split-lp ; 3 uses

.loopexit.split-lp:                               ; preds = %bb.bt, %bb.ca, %bb.cb
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val29.i.i = load i64, ptr %i.g, align 8, !noalias !354 ; 2 uses
  %i.hp = icmp eq i64 %.val29.i.i, 0
  br i1 %i.hp, label %.body.i, label %bb.bu

bb.bu:                                            ; preds = %.loopexit.split-lp
  %.val30.i.i = load ptr, ptr %.sroa.08.sroa.0.sroa.0.sroa.2.0..sroa_idx.i.i, align 8, !noalias !354, !nonnull !6, !noundef !6
  %i.hq = mul nuw i64 %.val29.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val30.i.i, i64 noundef %i.hq, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %.body.i

bb.bv:                                            ; preds = %bb.bt
  %.not.i.i = icmp eq ptr %i.ho, null
  br i1 %.not.i.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 28
  %i.hs = load i16, ptr %i.hr, align 4, !range !355, !noundef !6
  %i.ht = icmp eq i16 %i.hs, 119
  br i1 %i.ht, label %bb.bz, label %bb.bt

bb.bx:                                            ; preds = %bb.bv
  %.val.i.i = load i64, ptr %i.g, align 8, !noalias !354 ; 2 uses
  %i.hu = icmp eq i64 %.val.i.i, 0
  br i1 %i.hu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMs_NtCscScJTt9VrQp_6fea_rs10token_treeNtB1m_4Node11iter_tokens0EECs4jhN2sci4pa_10parse_test.exit31.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %.val28.i.i = load ptr, ptr %.sroa.08.sroa.0.sroa.0.sroa.2.0..sroa_idx.i.i, align 8, !noalias !354, !nonnull !6, !noundef !6
  %i.hv = mul nuw i64 %.val.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val28.i.i, i64 noundef %i.hv, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMs_NtCscScJTt9VrQp_6fea_rs10token_treeNtB1m_4Node11iter_tokens0EECs4jhN2sci4pa_10parse_test.exit31.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMs_NtCscScJTt9VrQp_6fea_rs10token_treeNtB1m_4Node11iter_tokens0EECs4jhN2sci4pa_10parse_test.exit31.i.i: ; preds = %bb.by, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !354
  %i.hw = icmp eq ptr %i.hh, %i.he
  br i1 %i.hw, label %_RNvCs4jhN2sci4pa_10parse_test25look_at_nodes_if_you_want.exit.i, label %bb.bs

bb.bz:                                            ; preds = %bb.bw
  br i1 %.sroa.03.0.i.i.ph, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !354
  %i.hx = load ptr, ptr %i.hm, align 8, !alias.scope !353, !nonnull !6, !noundef !6
  %i.hy = load i64, ptr %i.hn, align 8, !alias.scope !353, !noundef !6
  store ptr %i.hx, ptr %i.f, align 8, !noalias !354
  store i64 %i.hy, ptr %i.hg, align 8, !noalias !354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !354
  store ptr %i.f, ptr %i.e, align 8, !noalias !354
  store ptr @_RNvXs1b_NtCs5Xr050g3D4S_3std4pathNtB6_7DisplayNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.420.0..sroa_idx.i.i, align 8, !noalias !354
  invoke void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio6__print(ptr noundef nonnull @11, ptr noundef nonnull %i.e)
          to label %bb.cc unwind label %.loopexit.split-lp

bb.cb:                                            ; preds = %bb.cc, %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !354
  store ptr %i.ho, ptr %i.d, align 8, !noalias !354
  store ptr @_RNvXsg_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !noalias !354
  invoke void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio6__print(ptr noundef nonnull @13, ptr noundef nonnull %i.d)
          to label %bb.cd unwind label %.loopexit.split-lp

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !354
  br label %bb.cb

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !354
  br label %.outer

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs4jhN2sci4pa_10parse_test.exit.lr.ph.i: ; preds = %bb.bq
  %i.hz = load i64, ptr %i.y, align 8, !range !7, !noalias !340, !noundef !6 ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.gm, 5
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gl, i64 %.idx.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !340
  store ptr %i.gl, ptr %i.l, align 8, !noalias !340
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  store ptr %i.gl, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !340
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.hz, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !340
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.ia, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !340
  %i.ib = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.451.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs4jhN2sci4pa_10parse_test.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit.i: ; preds = %bb.ci, %bb.ch
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEEECs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef align 8 dereferenceable(32) %i.l) #21
  br label %.body.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs4jhN2sci4pa_10parse_test.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit81.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs4jhN2sci4pa_10parse_test.exit.lr.ph.i
  %i.ie = phi ptr [ %i.gl, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs4jhN2sci4pa_10parse_test.exit.lr.ph.i ], [ %i.if, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit81.i ] ; 5 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 32 ; 7 uses
  %.sroa.0169.0.copyload.i = load i64, ptr %i.ie, align 8, !noalias !356 ; 5 uses
  %.sroa.7171.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %.sroa.7171.sroa.0.0.copyload.i = load ptr, ptr %.sroa.7171.0..sroa_idx.i, align 8, !noalias !356 ; 4 uses
  %.not.i9 = icmp eq i64 %.sroa.0169.0.copyload.i, -1
  br i1 %.not.i9, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs4jhN2sci4pa_10parse_test.exit.thread.i, label %bb.ce

bb.ce:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs4jhN2sci4pa_10parse_test.exit.i
  %.sroa.7171.sroa.5.0..sroa.7171.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %.sroa.7171.sroa.5.0.copyload.i = load i64, ptr %.sroa.7171.sroa.5.0..sroa.7171.0..sroa_idx.sroa_idx.i, align 8, !noalias !356
  %.sroa.7173.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  %.sroa.7173.0.copyload.i = load i8, ptr %.sroa.7173.0..sroa_idx.i, align 8, !noalias !356
  %i.ig = trunc nuw i8 %.sroa.7173.0.copyload.i to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !340
  %spec.select.i = select i1 %i.ig, ptr @5, ptr @4
  store ptr %spec.select.i, ptr %i.k, align 8, !noalias !340
  store i64 5, ptr %i.ib, align 8, !noalias !340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !340
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7171.sroa.0.0.copyload.i) ]
  store ptr %.sroa.7171.sroa.0.0.copyload.i, ptr %i.j, align 8, !noalias !340
  store i64 %.sroa.7171.sroa.5.0.copyload.i, ptr %i.ic, align 8, !noalias !340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !340
  store ptr %i.k, ptr %i.i, align 8, !noalias !340
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCs4jhN2sci4pa_10parse_test, ptr %.sroa.451.0..sroa_idx.i, align 8, !noalias !340
  store ptr %i.j, ptr %i.id, align 8, !noalias !340
  store ptr @_RNvXs1b_NtCs5Xr050g3D4S_3std4pathNtB6_7DisplayNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !340
  invoke void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio6__print(ptr noundef nonnull @6, ptr noundef nonnull %i.i)
          to label %bb.cj unwind label %bb.ch

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs4jhN2sci4pa_10parse_test.exit.thread.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit81.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs4jhN2sci4pa_10parse_test.exit.i
  store ptr %i.if, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !340
  %i.ih = ptrtoint ptr %i.ia to i64
  %i.ii = ptrtoint ptr %i.if to i64
  %i.ij = sub nuw i64 %i.ih, %i.ii
  %i.ik = lshr exact i64 %i.ij, 5
  call void @llvm.experimental.noalias.scope.decl(metadata !357)
  %i.il = icmp eq ptr %i.ia, %i.if
  br i1 %i.il, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs4jhN2sci4pa_10parse_test.exit.thread.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i.i
  %.sroa.0.011.i.i.i.i = phi i64 [ %i.in, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i.i ], [ 0, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs4jhN2sci4pa_10parse_test.exit.thread.i ] ; 2 uses
  %i.im = getelementptr inbounds nuw [32 x i8], ptr %i.if, i64 %.sroa.0.011.i.i.i.i ; 2 uses
  %i.in = add nuw nsw i64 %.sroa.0.011.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.im, align 8, !alias.scope !357, !noalias !358 ; 2 uses
  %i.io = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.io, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ip = getelementptr i8, ptr %i.im, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.ip, align 8, !alias.scope !357, !noalias !358, !nonnull !6, !noundef !6
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %.val8.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !359
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i.i: ; preds = %bb.cf, %.lr.ph.i.i.i.i
  %i.iq = icmp eq i64 %i.in, %i.ik
  br i1 %i.iq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i, label %.lr.ph.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs4jhN2sci4pa_10parse_test.exit.thread.i
  %i.ir = icmp eq i64 %i.hz, 0
  br i1 %i.ir, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEEECs4jhN2sci4pa_10parse_test.exit.i, label %bb.cg

bb.cg:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i
  %i.is = shl nuw i64 %i.hz, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gl, i64 noundef %i.is, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !358
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEEECs4jhN2sci4pa_10parse_test.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEEECs4jhN2sci4pa_10parse_test.exit.i: ; preds = %bb.cg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !340
  %.pre.i = load ptr, ptr %i.fh, align 8, !noalias !340
  %.pre309.i = load i64, ptr %i.fi, align 8, !noalias !340
  br label %bb.br

bb.ch:                                            ; preds = %bb.ce
  %i.it = landingpad { ptr, i32 }
          cleanup
  store ptr %i.if, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !340
  %i.iu = icmp eq i64 %.sroa.0169.0.copyload.i, 0
  br i1 %i.iu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7171.sroa.0.0.copyload.i, i64 noundef %.sroa.0169.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit.i

bb.cj:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !340
  %i.iv = icmp eq i64 %.sroa.0169.0.copyload.i, 0
  br i1 %i.iv, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit81.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7171.sroa.0.0.copyload.i, i64 noundef %.sroa.0169.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit81.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit81.i: ; preds = %bb.ck, %bb.cj
  %i.iw = icmp eq ptr %i.if, %i.ia
  br i1 %i.iw, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs4jhN2sci4pa_10parse_test.exit.thread.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs4jhN2sci4pa_10parse_test.exit.i

bb.cl:                                            ; preds = %.thread225.i, %bb.ep, %bb.en, %bb.em, %.body109.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit128.i, %bb.bj, %.body.i
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNvCs4jhN2sci4pa_10parse_test25look_at_nodes_if_you_want.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMs_NtCscScJTt9VrQp_6fea_rs10token_treeNtB1m_4Node11iter_tokens0EECs4jhN2sci4pa_10parse_test.exit31.i.i, %bb.br
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeEEECs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x)
          to label %bb.co unwind label %bb.cn

bb.cm:                                            ; preds = %bb.cn, %.body.i
  %.sroa.029.3.i = phi i8 [ %.sroa.029.4.i, %bb.cn ], [ %.sroa.029.0.i, %.body.i ]
  %.pn69.i = phi { ptr, i32 } [ %i.iz, %bb.cn ], [ %.pn67.i, %.body.i ] ; 2 uses
  %i.iy = trunc nuw i8 %.sroa.029.3.i to i1
  br i1 %i.iy, label %bb.ev, label %.body

bb.cn:                                            ; preds = %bb.es, %_RNvCs4jhN2sci4pa_10parse_test25look_at_nodes_if_you_want.exit.i
  %.sroa.029.4.i = phi i8 [ 1, %bb.es ], [ %.sroa.029.2.i, %_RNvCs4jhN2sci4pa_10parse_test25look_at_nodes_if_you_want.exit.i ]
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.co:                                            ; preds = %_RNvCs4jhN2sci4pa_10parse_test25look_at_nodes_if_you_want.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !340
  %i.ja = trunc nuw i8 %.sroa.029.2.i to i1
  br i1 %i.ja, label %bb.cp, label %.thread

bb.cp:                                            ; preds = %bb.co
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %.val4.i.i = load ptr, ptr %i.ff, align 8, !alias.scope !360, !noalias !340, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  br i1 %i.hb, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i.i, label %.lr.ph.i.i.i82.i

.lr.ph.i.i.i82.i:                                 ; preds = %bb.cp, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i86.i
  %.sroa.0.011.i.i.i83.i = phi i64 [ %i.jc, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i86.i ], [ 0, %bb.cp ] ; 2 uses
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i, i64 %.sroa.0.011.i.i.i83.i ; 2 uses
  %i.jc = add nuw nsw i64 %.sroa.0.011.i.i.i83.i, 1 ; 2 uses
  %.val8.i.i.i84.i = load i64, ptr %i.jb, align 8, !alias.scope !361, !noalias !360 ; 2 uses
  %i.jd = icmp eq i64 %.val8.i.i.i84.i, 0
  br i1 %i.jd, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i86.i, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph.i.i.i82.i
  %i.je = getelementptr i8, ptr %i.jb, i64 8
  %.val9.i.i.i85.i = load ptr, ptr %i.je, align 8, !alias.scope !361, !noalias !360, !nonnull !6, !noundef !6
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i85.i, i64 noundef %.val8.i.i.i84.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !362
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i86.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i86.i: ; preds = %bb.cq, %.lr.ph.i.i.i82.i
  %i.jf = icmp eq i64 %i.jc, %i.gm
  br i1 %i.jf, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i.i, label %.lr.ph.i.i.i82.i

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i86.i, %bb.cp
  %.val.i87.i = load i64, ptr %i.y, align 8, !range !7, !alias.scope !360, !noalias !340, !noundef !6 ; 2 uses
  %i.jg = icmp eq i64 %.val.i87.i, 0
  br i1 %i.jg, label %.thread, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEEECs4jhN2sci4pa_10parse_test.exit138.sink.split.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEEECs4jhN2sci4pa_10parse_test.exit138.sink.split.i: ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i136.i, %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i.i
  %.val.i87.sink.i = phi i64 [ %.val.i137.i, %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i136.i ], [ %.val.i87.i, %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i.i ]
  %.val4.i.sink.i = phi ptr [ %.val4.i129.i, %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i136.i ], [ %.val4.i.i, %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i.i ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.0.1.i, %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i136.i ], [ null, %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i.i ]
  %i.jh = shl nuw i64 %.val.i87.sink.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.sink.i, i64 noundef %i.jh, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !6
  br label %bb.ex

bb.cr:                                            ; preds = %bb.bm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !340
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  call void @llvm.experimental.noalias.scope.decl(metadata !364)
  call void @llvm.experimental.noalias.scope.decl(metadata !365)
  call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.ji = load ptr, ptr %i.w, align 8, !alias.scope !367, !noalias !340, !nonnull !6, !noundef !6
  %i.jj = atomicrmw add ptr %i.ji, i64 -1 release, align 8, !noalias !367
  %i.jk = icmp eq i64 %i.jj, 1
  br i1 %i.jk, label %bb.cs, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs7ReadDirECs4jhN2sci4pa_10parse_test.exit89.i

bb.cs:                                            ; preds = %bb.cr
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs5Xr050g3D4S_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.w) #23
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs7ReadDirECs4jhN2sci4pa_10parse_test.exit89.i unwind label %bb.bf

bb.ct:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.77.0..sroa_idx.i, i64 24, i1 false), !noalias !340
  store ptr %.sroa.03.0.copyload.i, ptr %i.u, align 8, !noalias !340
  store ptr %.sroa.6.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !340
  invoke void @_RNvMsA_NtCs5Xr050g3D4S_3std2fsNtB5_8DirEntry4path(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.u)
          to label %bb.cu unwind label %.split.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit128.i: ; preds = %bb.er, %bb.eq, %bb.em, %bb.ei, %.split.i, %bb.cv
  %.pn62.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i10, %.split.i ], [ %.pn62.i, %bb.cv ], [ %i.my, %bb.ei ], [ %.pn62196.i, %bb.er ], [ %.pn62196.i, %bb.eq ], [ %i.my, %bb.em ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs8DirEntryECs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef align 8 dereferenceable(40) %i.u) #21
          to label %.body93.i unwind label %bb.cl

bb.cu:                                            ; preds = %bb.ct
  %i.jl = load ptr, ptr %i.fp, align 8, !noalias !340, !nonnull !6, !noundef !6 ; 8 uses
  %i.jm = load i64, ptr %i.fq, align 8, !noalias !340, !noundef !6 ; 5 uses
  %i.jn = invoke { ptr, i64 } @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path9extension(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jl, i64 noundef %i.jm)
          to label %bb.cw unwind label %.split.thread.i ; 2 uses

bb.cv:                                            ; preds = %.thread225.i, %bb.eo, %bb.en
  %.sroa.028.0.i = phi i1 [ %.sroa.028.2212224229.i, %.thread225.i ], [ %.sroa.028.2.i, %bb.eo ], [ %.sroa.028.2211.i, %bb.en ]
  %.pn62.i = phi { ptr, i32 } [ %.pn59216222230.i, %.thread225.i ], [ %.pn59.i, %bb.eo ], [ %.pn59215.i, %bb.en ] ; 2 uses
  br i1 %.sroa.028.0.i, label %bb.eq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit128.i

.split.thread.i:                                  ; preds = %bb.dd, %bb.cu
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

.split.i:                                         ; preds = %bb.el, %bb.dz, %bb.ct
  %lpad.thr_comm.split-lp.i10 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit128.i

bb.cw:                                            ; preds = %bb.cu
  %i.jo = extractvalue { ptr, i64 } %i.jn, 0      ; 3 uses
  %.not58.i = icmp ne ptr %i.jo, null
  %i.jp = extractvalue { ptr, i64 } %i.jn, 1
  %i.jq = icmp eq i64 %i.jp, 3
  %or.cond.i = select i1 %.not58.i, i1 %i.jq, i1 false
  br i1 %or.cond.i, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.jr = load i16, ptr %i.jo, align 1
  %i.js = xor i16 %i.jr, 25958
  %i.jt = getelementptr i8, ptr %i.jo, i64 2
  %i.ju = load i8, ptr %i.jt, align 1
  %i.jv = zext i8 %i.ju to i16
  %i.jw = xor i16 %i.jv, 97
  %i.jx = or i16 %i.js, %i.jw
  %i.jy = icmp ne i16 %i.jx, 0
  %i.jz = zext i1 %i.jy to i32
  %i.ka = icmp eq i32 %i.jz, 0
  br i1 %i.ka, label %bb.dc, label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.val73.i = load i64, ptr %i.t, align 8, !noalias !340 ; 2 uses
  %i.kb = icmp eq i64 %.val73.i, 0
  br i1 %i.kb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit90.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jl, i64 noundef %.val73.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit90.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit90.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic13DiagnosticSetECs4jhN2sci4pa_10parse_test.exit127.i, %bb.cz, %bb.cy
  %i.kc = phi ptr [ %i.gh, %bb.cz ], [ %i.gh, %bb.cy ], [ %i.mz, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic13DiagnosticSetECs4jhN2sci4pa_10parse_test.exit127.i ]
  %i.kd = phi ptr [ %i.gi, %bb.cz ], [ %i.gi, %bb.cy ], [ %i.na, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic13DiagnosticSetECs4jhN2sci4pa_10parse_test.exit127.i ]
  %i.ke = phi i64 [ %i.gj, %bb.cz ], [ %i.gj, %bb.cy ], [ %i.nb, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic13DiagnosticSetECs4jhN2sci4pa_10parse_test.exit127.i ]
  %i.kf = phi ptr [ %i.gk, %bb.cz ], [ %i.gk, %bb.cy ], [ %i.nc, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic13DiagnosticSetECs4jhN2sci4pa_10parse_test.exit127.i ]
  %i.kg = phi ptr [ %i.gl, %bb.cz ], [ %i.gl, %bb.cy ], [ %i.nd, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic13DiagnosticSetECs4jhN2sci4pa_10parse_test.exit127.i ]
  %i.kh = phi i64 [ %i.gm, %bb.cz ], [ %i.gm, %bb.cy ], [ %i.ne, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic13DiagnosticSetECs4jhN2sci4pa_10parse_test.exit127.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !340
  call void @llvm.experimental.noalias.scope.decl(metadata !368)
  call void @llvm.experimental.noalias.scope.decl(metadata !369)
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.ki = load ptr, ptr %i.u, align 8, !alias.scope !372, !noalias !340, !nonnull !6, !noundef !6
  %i.kj = atomicrmw add ptr %i.ki, i64 -1 release, align 8, !noalias !372
  %i.kk = icmp eq i64 %i.kj, 1
  br i1 %i.kk, label %bb.da, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs5Xr050g3D4S_3std3sys2fs4unix12InnerReadDirEECs4jhN2sci4pa_10parse_test.exit.i.i.i

bb.da:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit90.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs5Xr050g3D4S_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.u) #23
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs5Xr050g3D4S_3std3sys2fs4unix12InnerReadDirEECs4jhN2sci4pa_10parse_test.exit.i.i.i unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.kl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i12 = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !373, !noalias !340, !nonnull !6, !noundef !6 ; 2 uses
  %.val3.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !373, !noalias !340 ; 2 uses
  store i8 0, ptr %.val2.i.i.i12, align 1
  %i.km = icmp eq i64 %.val3.i.i.i, 0
  br i1 %i.km, label %.body93.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i5.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i5.i.i.i.i: ; preds = %bb.db
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i12, i64 noundef %.val3.i.i.i, i64 noundef 1) #22
  br label %.body93.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs5Xr050g3D4S_3std3sys2fs4unix12InnerReadDirEECs4jhN2sci4pa_10parse_test.exit.i.i.i: ; preds = %bb.da, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit90.i
  %.val.i.i91.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !373, !noalias !340, !nonnull !6, !noundef !6 ; 2 uses
  %.val1.i.i92.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !373, !noalias !340 ; 2 uses
  store i8 0, ptr %.val.i.i91.i, align 1
  %i.kn = icmp eq i64 %.val1.i.i92.i, 0
  br i1 %i.kn, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs8DirEntryECs4jhN2sci4pa_10parse_test.exit.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i5.i4.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i5.i4.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs5Xr050g3D4S_3std3sys2fs4unix12InnerReadDirEECs4jhN2sci4pa_10parse_test.exit.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i91.i, i64 noundef %.val1.i.i92.i, i64 noundef 1) #22
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs8DirEntryECs4jhN2sci4pa_10parse_test.exit.i

bb.dc:                                            ; preds = %bb.cx
  %i.ko = load i64, ptr %i.z, align 8, !noalias !340, !noundef !6
  %i.kp = add i64 %i.ko, 1
  store i64 %i.kp, ptr %i.z, align 8, !noalias !340
  %i.kq = load atomic i64, ptr @_RNvCsksibNCz2yVN_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !340 ; 2 uses
  %i.kr = icmp ult i64 %i.kq, 6
  call void @llvm.assume(i1 %i.kr)
  %i.ks = icmp samesign ugt i64 %i.kq, 2
end_hunk_0
