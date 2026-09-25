Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_workspace-6b434d4691723669.ruff_workspace.2e76c9c9f776d8f1-cgu.15?download=true
inline.NumInlined: 1473
inline.NumDeleted: 563
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs0_NtCs3ZkgueCtkyH_14ruff_workspace13configurationNtB5_13Configuration13into_settings:bb.a
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types13PerFileIgnoreEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB6_9into_iter8IntoIterB12_EB3p_EE9from_iterCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.br, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.bq)
          to label %bb.fl unwind label %bb.fj

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  invoke void @_RNvMsL_NtNtCsEhZmuQNqkz_11ruff_linter8settings5typesNtB5_25CompiledPerFileIgnoreList7resolve(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bs, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.br, i1 noundef zeroext %i.iq)
          to label %bb.fm unwind label %bb.fj

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  %i.pr = load i64, ptr %i.bs, align 8, !range !4, !noundef !3 ; 2 uses
  %i.ps = icmp eq i64 %i.pr, -1
  %i.pt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.pu = load ptr, ptr %i.pt, align 8            ; 2 uses
  br i1 %i.ps, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.pu, ptr %i.pv, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2AWtUsOyxgP_3std4path7PathBufEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(24) %i.bu)
          to label %bb.wc unwind label %bb.wb

bb.fo:                                            ; preds = %bb.fm
  %.sroa.5817.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.sroa.5817.0.copyload = load i64, ptr %.sroa.5817.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  store i64 %i.pr, ptr %i.bt, align 8
  %.sroa.4312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.pu, ptr %.sroa.4312.0..sroa_idx, align 8
  %.sroa.5313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i64 %.sroa.5817.0.copyload, ptr %.sroa.5313.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7315)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  %i.pw = getelementptr inbounds nuw i8, ptr %i.cx, i64 968 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.cx, i64 976
  %i.py = load ptr, ptr %i.px, align 8, !nonnull !3, !noundef !3
  %i.pz = getelementptr inbounds nuw i8, ptr %i.cx, i64 984
  %i.qa = load i64, ptr %i.pz, align 8, !noundef !3
  %i.qb = getelementptr inbounds nuw i8, ptr %i.cx, i64 944 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.cx, i64 952
  %i.qd = load ptr, ptr %i.qc, align 8, !nonnull !3, !noundef !3
  %i.qe = getelementptr inbounds nuw i8, ptr %i.cx, i64 960
  %i.qf = load i64, ptr %i.qe, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  store i8 %i.io, ptr %i.bo, align 1
  %i.qg = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store i8 0, ptr %i.qg, align 1
  invoke void @_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8settings16fix_safety_tableNtB2_14FixSafetyTable19from_rule_selectors(ptr noalias noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %i.bp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.py, i64 noundef %i.qa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.qd, i64 noundef %i.qf, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.bo)
          to label %bb.fq unwind label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.qh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types25CompiledPerFileIgnoreListECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(24) %i.bt) #22
          to label %bb.vz unwind label %bb.kp

bb.fq:                                            ; preds = %bb.fo
  %i.qi = load i64, ptr %i.bp, align 8, !range !10, !noundef !3
  %i.qj = trunc nuw i64 %i.qi to i1
  %i.qk = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  br i1 %i.qj, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7315, ptr noundef nonnull align 8 dereferenceable(64) %i.qk, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ai, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7315, i64 64, i1 false)
  %i.ql = invoke noundef nonnull ptr @_RNvXs_NtCsiXichZnxgbf_6anyhow5errorNtB6_5ErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector19RuleResolutionErrorE4fromCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.ai)
          to label %bb.uv unwind label %bb.fw

bb.fs:                                            ; preds = %bb.fq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.7315, ptr noundef nonnull align 8 dereferenceable(256) %i.qk, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.bn, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.7315, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 2472
  %.sroa.0316.0.copyload = load i64, ptr %i.qm, align 8 ; 2 uses
  %.not1012 = icmp eq i64 %.sroa.0316.0.copyload, -1
  br i1 %.not1012, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %.sroa.5318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2480
  store i64 %.sroa.0316.0.copyload, ptr %i.bm, align 8
  %.sroa.5318.0..sroa_idx319 = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5318.0..sroa_idx319, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5318.0..sroa_idx, i64 16, i1 false)
  br label %bb.fx

bb.fu:                                            ; preds = %bb.fs
  invoke fastcc void @_RNCNvMs0_NtCs3ZkgueCtkyH_14ruff_workspace13configurationNtB7_13Configuration13into_settingss6_0B9_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.fx unwind label %bb.fw

bb.fv:                                            ; preds = %bb.ga, %bb.fw
  %.sroa.0703.17 = phi i8 [ %.sroa.0703.18, %bb.fw ], [ 0, %bb.ga ]
  %.sroa.0670.6 = phi i8 [ 1, %bb.fw ], [ 0, %bb.ga ]
  %.sroa.0661.6 = phi i8 [ 1, %bb.fw ], [ %.sroa.0661.7, %bb.ga ]
  %.sroa.0658.6 = phi i8 [ 1, %bb.fw ], [ %.sroa.0658.7, %bb.ga ]
  %.sroa.0649.6 = phi i8 [ 1, %bb.fw ], [ %.sroa.0649.7, %bb.ga ]
  %.pn1248 = phi { ptr, i32 } [ %i.qn, %bb.fw ], [ %.pn1024.pn.pn.pn.pn, %bb.ga ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types25CompiledPerFileIgnoreListECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(24) %i.bt) #22
          to label %bb.uw unwind label %bb.kp

bb.fw:                                            ; preds = %bb.fu, %bb.fr
  %.sroa.0703.18 = phi i8 [ 1, %bb.fr ], [ 0, %bb.fu ]
  %i.qn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

bb.fx:                                            ; preds = %bb.fu, %bb.ft
  %i.qo = getelementptr inbounds nuw i8, ptr %i.cx, i64 2155
  %i.qp = load i8, ptr %i.qo, align 1, !range !22, !noundef !3 ; 2 uses
  %.not1013 = icmp eq i8 %i.qp, 2
  %.1420 = select i1 %.not1013, i8 0, i8 %i.qp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  %i.qq = getelementptr inbounds nuw i8, ptr %i.cx, i64 1112
  %.sroa.0323.0.copyload = load i64, ptr %i.qq, align 8 ; 2 uses
  %.not1014 = icmp eq i64 %.sroa.0323.0.copyload, -1
  br i1 %.not1014, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %.sroa.5325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 1120
  store i64 %.sroa.0323.0.copyload, ptr %i.bl, align 8
  %.sroa.5325.0..sroa_idx326 = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5325.0..sroa_idx326, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5325.0..sroa_idx, i64 16, i1 false)
  br label %_RNCNvMs0_NtCs3ZkgueCtkyH_14ruff_workspace13configurationNtB7_13Configuration13into_settingss7_0B9_.exit

bb.fz:                                            ; preds = %bb.fx
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB21_5slice4iter4IterReENvYB37_NtB14_8ToString9to_stringEE9from_iterCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bl, ptr noundef nonnull @55, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @55, i64 48))
          to label %_RNCNvMs0_NtCs3ZkgueCtkyH_14ruff_workspace13configurationNtB7_13Configuration13into_settingss7_0B9_.exit unwind label %bb.gb

bb.ga:                                            ; preds = %bb.uu, %bb.gb
  %.sroa.0661.7 = phi i8 [ 0, %bb.uu ], [ 1, %bb.gb ]
  %.sroa.0658.7 = phi i8 [ %.sroa.0658.8, %bb.uu ], [ 1, %bb.gb ]
  %.sroa.0649.7 = phi i8 [ %.sroa.0649.8, %bb.uu ], [ 1, %bb.gb ]
  %.pn1024.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn1024.pn.pn.pn, %bb.uu ], [ %i.qr, %bb.gb ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2AWtUsOyxgP_3std4path7PathBufEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(24) %i.bm) #22
          to label %bb.fv unwind label %bb.kp

bb.gb:                                            ; preds = %bb.fz
  %i.qr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

_RNCNvMs0_NtCs3ZkgueCtkyH_14ruff_workspace13configurationNtB7_13Configuration13into_settingss7_0B9_.exit: ; preds = %bb.fz, %bb.fy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  %i.qs = getelementptr inbounds nuw i8, ptr %i.cx, i64 1088
  %.sroa.0327.0.copyload = load i64, ptr %i.qs, align 8 ; 2 uses
  %.not1015 = icmp eq i64 %.sroa.0327.0.copyload, -1
  %i.qt = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  br i1 %.not1015, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %_RNCNvMs0_NtCs3ZkgueCtkyH_14ruff_workspace13configurationNtB7_13Configuration13into_settingss7_0B9_.exit
  %.sroa.5329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 1096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qt, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5329.0..sroa_idx, i64 16, i1 false)
  br label %bb.ge

bb.gd:                                            ; preds = %_RNCNvMs0_NtCs3ZkgueCtkyH_14ruff_workspace13configurationNtB7_13Configuration13into_settingss7_0B9_.exit
  store ptr inttoptr (i64 8 to ptr), ptr %i.qt, align 8
  %i.qu = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 0, ptr %i.qu, align 8
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %.sroa.0327.0.copyload.sink = phi i64 [ 0, %bb.gd ], [ %.sroa.0327.0.copyload, %bb.gc ]
  store i64 %.sroa.0327.0.copyload.sink, ptr %i.bk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  %i.qv = getelementptr inbounds nuw i8, ptr %i.cx, i64 1136
  %.sroa.0331.0.copyload = load i64, ptr %i.qv, align 8 ; 2 uses
  %.not1016 = icmp eq i64 %.sroa.0331.0.copyload, -1
  %i.qw = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  br i1 %.not1016, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %.sroa.5333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 1144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qw, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5333.0..sroa_idx, i64 16, i1 false)
  br label %bb.gh

bb.gg:                                            ; preds = %bb.ge
  store ptr inttoptr (i64 8 to ptr), ptr %i.qw, align 8
  %i.qx = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 0, ptr %i.qx, align 8
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %.sroa.0331.0.copyload.sink = phi i64 [ 0, %bb.gg ], [ %.sroa.0331.0.copyload, %bb.gf ]
  store i64 %.sroa.0331.0.copyload.sink, ptr %i.bj, align 8
  %i.qy = getelementptr inbounds nuw i8, ptr %i.cx, i64 2159
  %.sroa.0350.0.copyload = load i8, ptr %i.qy, align 1 ; 2 uses
  %.not1017 = icmp eq i8 %.sroa.0350.0.copyload, -1
  br i1 %.not1017, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %.sroa.6352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 2160
  %.sroa.6352.0.copyload = load i32, ptr %.sroa.6352.0..sroa_idx, align 8
  %.sroa.0945.0.insert.ext = zext i8 %.sroa.0350.0.copyload to i40
  %.sroa.0945.1.insert.ext = zext i32 %.sroa.6352.0.copyload to i40
  %.sroa.0945.1.insert.shift = shl nuw i40 %.sroa.0945.1.insert.ext, 8
  %.sroa.0945.1.insert.insert = or disjoint i40 %.sroa.0945.1.insert.shift, %.sroa.0945.0.insert.ext
  %i.qz = call fastcc noundef i40 @_RNvMs1_NtCs3ZkgueCtkyH_14ruff_workspace7optionsNtB5_24Flake8AnnotationsOptions13into_settings(i40 noundef %.sroa.0945.1.insert.insert) ; 2 uses
  %.sroa.0947.3.extract.shift = lshr i40 %i.qz, 32
  %.sroa.0947.3.extract.trunc = trunc nuw i40 %.sroa.0947.3.extract.shift to i8
  %4 = bitcast i40 %i.qz to <5 x i8>
  %5 = shufflevector <5 x i8> %4, <5 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gh, %bb.gi
  %.sroa.11341.0 = phi i8 [ %.sroa.0947.3.extract.trunc, %bb.gi ], [ 0, %bb.gh ]
  %6 = phi <4 x i8> [ %5, %bb.gi ], [ zeroinitializer, %bb.gh ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  %i.ra = getelementptr inbounds nuw i8, ptr %i.cx, i64 1160
  %.sroa.0355.0.copyload = load i64, ptr %i.ra, align 8 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.cx, i64 2056 ; 3 uses
  %.not1018 = icmp eq i64 %.sroa.0355.0.copyload, -2
  br i1 %.not1018, label %bb.gn, label %bb.gm

bb.gk:                                            ; preds = %bb.gq, %bb.gl
  %.sroa.0658.8 = phi i8 [ 0, %bb.gq ], [ 1, %bb.gl ]
  %.sroa.0649.8 = phi i8 [ %.sroa.0649.11, %bb.gq ], [ 1, %bb.gl ]
  %.pn1024.pn.pn.pn = phi { ptr, i32 } [ %.pn1024, %bb.gq ], [ %i.rc, %bb.gl ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(24) %i.bj) #22
          to label %bb.ut unwind label %bb.kp

bb.gl:                                            ; preds = %bb.gm, %bb.gn
  %i.rc = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

bb.gm:                                            ; preds = %bb.gj
  %.sroa.6357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 1168
  %.sroa.4826.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4826.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6357.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 %.sroa.0355.0.copyload, ptr %i.ag, align 8
  %i.rd = load i64, ptr %i.rb, align 8, !range !5, !alias.scope !1527, !noalias !1528, !noundef !3
  %.not.i1451 = icmp eq i64 %i.rd, -2
  %..i = select i1 %.not.i1451, ptr null, ptr %i.rb
  invoke void @_RNvMs2_NtCs3ZkgueCtkyH_14ruff_workspace7optionsNtB5_19Flake8BanditOptions13into_settings(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ah, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) %..i)
          to label %_RNCNvMs0_NtCs3ZkgueCtkyH_14ruff_workspace13configurationNtB7_13Configuration13into_settingss8_0B9_.exit unwind label %bb.gl

bb.gn:                                            ; preds = %bb.gj
  invoke void @_RNvXNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_bandit8settingsNtB2_8SettingsNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.bi)
          to label %bb.go unwind label %bb.gl

bb.go:                                            ; preds = %bb.gn, %_RNCNvMs0_NtCs3ZkgueCtkyH_14ruff_workspace13configurationNtB7_13Configuration13into_settingss8_0B9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  %i.re = getelementptr inbounds nuw i8, ptr %i.cx, i64 1264
  %.sroa.0359.0.copyload = load i64, ptr %i.re, align 8 ; 3 uses
  %.not1019 = icmp eq i64 %.sroa.0359.0.copyload, -2
  br i1 %.not1019, label %bb.gp, label %bb.gr

_RNCNvMs0_NtCs3ZkgueCtkyH_14ruff_workspace13configurationNtB7_13Configuration13into_settingss8_0B9_.exit: ; preds = %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bi, ptr noundef nonnull align 8 dereferenceable(80) %i.ah, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.go

bb.gp:                                            ; preds = %bb.go, %bb.gr
  %.sroa.0.0.i1454.sink = phi i64 [ %.sroa.0.0.i1454, %bb.gr ], [ 0, %bb.go ]
  %.sroa.5.0.i.sink = phi ptr [ %.sroa.5.0.i, %bb.gr ], [ inttoptr (i64 8 to ptr), %bb.go ]
  %.sroa.6.0.i.sink = phi i64 [ %.sroa.6.0.i, %bb.gr ], [ 0, %bb.go ]
  store i64 %.sroa.0.0.i1454.sink, ptr %i.bh, align 8
  %i.rf = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %.sroa.5.0.i.sink, ptr %i.rf, align 8
  %i.rg = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %.sroa.6.0.i.sink, ptr %i.rg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  %i.rh = getelementptr inbounds nuw i8, ptr %i.cx, i64 1288
  %.sroa.0363.0.copyload = load i64, ptr %i.rh, align 8 ; 3 uses
  %.not1020 = icmp eq i64 %.sroa.0363.0.copyload, -2
  br i1 %.not1020, label %bb.gs, label %bb.gu

bb.gq:                                            ; preds = %bb.gt
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_bandit8settings8SettingsECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(80) %i.bi) #22
          to label %bb.gk unwind label %bb.kp

bb.gr:                                            ; preds = %bb.go
  %.sroa.6361.sroa.5.0..sroa.6361.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 1280
  %.sroa.6361.sroa.5.0.copyload = load i64, ptr %.sroa.6361.sroa.5.0..sroa.6361.0..sroa_idx.sroa_idx, align 8
  %.sroa.6361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 1272
  %.sroa.6361.sroa.0.0.copyload = load ptr, ptr %.sroa.6361.0..sroa_idx, align 8
  %.not.i1453 = icmp eq i64 %.sroa.0359.0.copyload, -1 ; 3 uses
  %.sroa.6.0.i = select i1 %.not.i1453, i64 0, i64 %.sroa.6361.sroa.5.0.copyload
  %.sroa.5.0.i = select i1 %.not.i1453, ptr inttoptr (i64 8 to ptr), ptr %.sroa.6361.sroa.0.0.copyload
  %.sroa.0.0.i1454 = select i1 %.not.i1453, i64 0, i64 %.sroa.0359.0.copyload
  br label %bb.gp

bb.gs:                                            ; preds = %bb.gp, %bb.gu
  %.sroa.0.0.i1463.sink = phi i64 [ %.sroa.0.0.i1463, %bb.gu ], [ 0, %bb.gp ]
  %.sroa.5.0.i1462.sink = phi ptr [ %.sroa.5.0.i1462, %bb.gu ], [ inttoptr (i64 8 to ptr), %bb.gp ]
  %.sroa.6.0.i1461.sink = phi i64 [ %.sroa.6.0.i1461, %bb.gu ], [ 0, %bb.gp ]
  store i64 %.sroa.0.0.i1463.sink, ptr %i.bg, align 8
  %i.ri = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %.sroa.5.0.i1462.sink, ptr %i.ri, align 8
  %i.rj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 %.sroa.6.0.i1461.sink, ptr %i.rj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  %i.rk = getelementptr inbounds nuw i8, ptr %i.cx, i64 1312
  %.sroa.0367.0.copyload = load i64, ptr %i.rk, align 8 ; 2 uses
  %.not1021 = icmp eq i64 %.sroa.0367.0.copyload, -2
  br i1 %.not1021, label %bb.gw, label %bb.gv

bb.gt:                                            ; preds = %bb.gy
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_boolean_trap8settings8SettingsECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(24) %i.bh) #22
          to label %bb.gq unwind label %bb.kp

bb.gu:                                            ; preds = %bb.gp
  %.sroa.6365.sroa.5.0..sroa.6365.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 1304
  %.sroa.6365.sroa.5.0.copyload = load i64, ptr %.sroa.6365.sroa.5.0..sroa.6365.0..sroa_idx.sroa_idx, align 8
  %.sroa.6365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 1296
  %.sroa.6365.sroa.0.0.copyload = load ptr, ptr %.sroa.6365.0..sroa_idx, align 8
  %.not.i1456 = icmp eq i64 %.sroa.0363.0.copyload, -1 ; 3 uses
  %.sroa.6.0.i1461 = select i1 %.not.i1456, i64 0, i64 %.sroa.6365.sroa.5.0.copyload
  %.sroa.5.0.i1462 = select i1 %.not.i1456, ptr inttoptr (i64 8 to ptr), ptr %.sroa.6365.sroa.0.0.copyload
  %.sroa.0.0.i1463 = select i1 %.not.i1456, i64 0, i64 %.sroa.0363.0.copyload
  br label %bb.gs

bb.gv:                                            ; preds = %bb.gs
  %.sroa.6369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 1320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i64 %.sroa.0367.0.copyload, ptr %i.af, align 8
  %.sroa.6369.0..sroa_idx370 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6369.0..sroa_idx370, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6369.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  invoke void @_RNvMs5_NtCs3ZkgueCtkyH_14ruff_workspace7optionsNtB5_21Flake8BuiltinsOptions13into_settings(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ae, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.af)
          to label %bb.ha unwind label %bb.gz

bb.gw:                                            ; preds = %bb.gs
  store i64 0, ptr %i.bf, align 8
  %.sroa.4834.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4834.0..sroa_idx, align 8
  %.sroa.5835.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.sroa.4837.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5835.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4837.0..sroa_idx, align 8
  %.sroa.5838.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  store i64 0, ptr %.sroa.5838.0..sroa_idx, align 8
  %i.rl = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  store i8 0, ptr %i.rl, align 8
  br label %bb.gx

bb.gx:                                            ; preds = %bb.ha, %bb.gw
  %i.rm = getelementptr inbounds nuw i8, ptr %i.cx, i64 2164
  %i.rn = load i8, ptr %i.rm, align 4, !range !23, !noundef !3 ; 2 uses
  %.not1022 = icmp eq i8 %i.rn, -1
  %i.ro = and i8 %i.rn, 1
  %.sroa.0371.0 = select i1 %.not1022, i8 0, i8 %i.ro
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8410)
  %i.rp = getelementptr inbounds nuw i8, ptr %i.cx, i64 136
  %.sroa.0412.0.copyload = load i64, ptr %i.rp, align 8 ; 2 uses
  %.not1023 = icmp eq i64 %.sroa.0412.0.copyload, 2
  br i1 %.not1023, label %bb.hd, label %bb.hc

bb.gy:                                            ; preds = %bb.hb, %bb.gz
  %.sroa.0649.11 = phi i8 [ 0, %bb.hb ], [ 1, %bb.gz ]
  %.pn1024 = phi { ptr, i32 } [ %i.rr, %bb.hb ], [ %i.rq, %bb.gz ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules14flake8_bugbear8settings8SettingsECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(24) %i.bg) #22
          to label %bb.gt unwind label %bb.kp

bb.gz:                                            ; preds = %bb.gv
  %i.rq = landingpad { ptr, i32 }
          cleanup
  br label %bb.gy

bb.ha:                                            ; preds = %bb.gv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bf, ptr noundef nonnull align 8 dereferenceable(56) %i.ae, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.gx

bb.hb:                                            ; preds = %bb.hc
  %i.rr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_builtins8settings8SettingsECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(56) %i.bf) #22
          to label %bb.gy unwind label %bb.kp

bb.hc:                                            ; preds = %bb.gx
  %.sroa.6414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 %.sroa.0412.0.copyload, ptr %i.ad, align 8
  %.sroa.6414.0..sroa_idx415 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6414.0..sroa_idx415, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6414.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  invoke void @_RNvMs7_NtCs3ZkgueCtkyH_14ruff_workspace7optionsNtB5_22Flake8CopyrightOptions17try_into_settings(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ac, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.ad)
          to label %bb.hh unwind label %bb.hb

bb.hd:                                            ; preds = %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8410)
  invoke void @_RNvXNtNtNtCsEhZmuQNqkz_11ruff_linter5rules16flake8_copyright8settingsNtB2_8SettingsNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.be)
          to label %bb.hg unwind label %bb.hf

bb.he:                                            ; preds = %bb.hk, %bb.hf
  %.sroa.0629.2 = phi i1 [ false, %bb.hk ], [ true, %bb.hf ]
  %.pn1033.pn = phi { ptr, i32 } [ %i.sh, %bb.hk ], [ %i.rs, %bb.hf ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_builtins8settings8SettingsECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(56) %i.bf) #22
          to label %bb.sr unwind label %bb.kp

bb.hf:                                            ; preds = %bb.hd
  %i.rs = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

bb.hg:                                            ; preds = %bb.hd, %bb.hj
  %i.rt = getelementptr inbounds nuw i8, ptr %i.cx, i64 200
  %i.ru = load i64, ptr %i.rt, align 8, !range !8, !noundef !3
  %i.rv = getelementptr inbounds nuw i8, ptr %i.cx, i64 208
  %i.rw = load i64, ptr %i.rv, align 8
end_hunk_0
begin_hunk_1_@_RNvMs0_NtCs3ZkgueCtkyH_14ruff_workspace13configurationNtB5_13Configuration13into_settings:bb.a
          to label %bb.js unwind label %bb.jq

bb.jo:                                            ; preds = %bb.jk
  invoke void @_RNvXs0_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingsNtB5_8SettingsNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.at)
          to label %bb.jr unwind label %bb.jq

bb.jp:                                            ; preds = %bb.jt, %bb.jq
  %.sroa.0739.5 = phi i1 [ false, %bb.jt ], [ true, %bb.jq ]
  %.pn1057 = phi { ptr, i32 } [ %i.uj, %bb.jt ], [ %i.uf, %bb.jq ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules8pyflakes8settings8SettingsECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(48) %i.au) #22
          to label %bb.jl unwind label %bb.kp

bb.jq:                                            ; preds = %bb.jo, %bb.jn
  %i.uf = landingpad { ptr, i32 }
          cleanup
  br label %bb.jp

bb.jr:                                            ; preds = %bb.jo, %bb.js
  %i.ug = getelementptr inbounds nuw i8, ptr %i.cx, i64 2168
  %i.uh = load i8, ptr %i.ug, align 8, !range !23, !noundef !3 ; 2 uses
  %.not1055 = icmp eq i8 %i.uh, -1
  %i.ui = and i8 %i.uh, 1
  %.sroa.0614.0 = select i1 %.not1055, i8 0, i8 %i.ui
  %.sroa.0622.0.copyload = load i64, ptr %i.rb, align 8 ; 2 uses
  %.not1056 = icmp eq i64 %.sroa.0622.0.copyload, -2
  br i1 %.not1056, label %bb.jv, label %bb.ju

bb.js:                                            ; preds = %bb.jn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.at, ptr noundef nonnull align 8 dereferenceable(136) %i.l, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.jr

bb.jt:                                            ; preds = %bb.ju
  %i.uj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settings8SettingsECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(136) %i.at) #22
          to label %bb.jp unwind label %bb.kp

bb.ju:                                            ; preds = %bb.jr
  %.sroa.6624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 2064
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %.sroa.0622.0.copyload, ptr %i.k, align 8
  %.sroa.6624.0..sroa_idx625 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6624.0..sroa_idx625, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6624.0..sroa_idx, i64 48, i1 false)
  %i.uk = invoke { i1, i1 } @_RNvMsv_NtCs3ZkgueCtkyH_14ruff_workspace7optionsNtB5_11RuffOptions13into_settings(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.k)
          to label %bb.jw unwind label %bb.jt     ; 2 uses

bb.jv:                                            ; preds = %bb.jr, %bb.jw
  %.sroa.5619.0 = phi i8 [ %i.ur, %bb.jw ], [ 0, %bb.jr ]
  %.sroa.0618.0 = phi i8 [ %i.uq, %bb.jw ], [ 0, %bb.jr ]
  %i.ul = getelementptr inbounds nuw i8, ptr %i.cx, i64 2157
  %i.um = load i8, ptr %i.ul, align 1, !range !22, !noundef !3 ; 2 uses
  %.not1061 = icmp eq i8 %i.um, 2
  %.1421 = select i1 %.not1061, i8 1, i8 %i.um
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0253, ptr noundef nonnull align 8 dereferenceable(64) %i.ce, i64 64, i1 false)
  %.sroa.0253.1672..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0253, i64 1672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0253.1672..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.cb, i64 32, i1 false)
  %.sroa.0253.64..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0253, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0253.64..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i64 24, i1 false)
  %.sroa.0177.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0177.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.sroa.0, i64 24, i1 false)
  %.sroa.0177.sroa.10.sroa.8.0..sroa.0177.sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.0177.sroa.10.sroa.8.0..sroa.0177.sroa.10.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.3.sroa.4, i64 216, i1 false)
  %.sroa.0253.88..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0253, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0253.88..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false)
  %.sroa.0177.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.0177.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(256) %i.bn, i64 256, i1 false)
  %.sroa.0177.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(3) %.sroa.0177.sroa.19.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %i.ds, i64 3, i1 false)
  %.sroa.0253.112..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0253, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0253.112..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i64 24, i1 false)
  %.sroa.0253.1704..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0253, i64 1704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0253.1704..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.by, i64 32, i1 false)
  %.sroa.0253.136..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0253, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0253.136..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false)
  %.sroa.0253.1736..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0253, i64 1736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0253.1736..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.bw, i64 32, i1 false)
  %.sroa.0253.160..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0253, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0253.160..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false)
  %.sroa.0253.184..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0253, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0253.184..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false)
  %.sroa.0253.208..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0253, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0253.208..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false)
  %.sroa.0253.232..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0253, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0253.232..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false)
  %.sroa.0253.256..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0253, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0253.256..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false)
  %.sroa.0253.280..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0253, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0253.280..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false)
  %.sroa.0253.304..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0253, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0253.304..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %i.bi, i64 80, i1 false)
  %.sroa.0253.384..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0253, i64 384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0253.384..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false)
  %.sroa.0253.408..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0253, i64 408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0253.408..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false)
  %.sroa.0253.432..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0253, i64 432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0253.432..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.bf, i64 56, i1 false)
  %.sroa.0253.1552..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0253, i64 1552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0253.1552..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %i.be, i64 64, i1 false)
  %.sroa.0253.488..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0253, i64 488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0253.488..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false)
  %.sroa.0253.1768..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0253, i64 1768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0253.1768..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %i.bd, i64 96, i1 false)
  %.sroa.0253.512..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0253, i64 512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0253.512..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %i.bc, i64 104, i1 false)
  %.sroa.0253.616..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0253, i64 616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0253.616..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false)
  %.sroa.0253.640..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0253, i64 640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.0253.640..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %i.ba, i64 160, i1 false)
  %.sroa.0253.800..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0253, i64 800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0253.800..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %i.az, i64 80, i1 false)
  %.sroa.0253.880..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0253, i64 880
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %.sroa.0253.880..sroa_idx, ptr noundef nonnull align 8 dereferenceable(384) %i.ax, i64 384, i1 false)
  %.sroa.0253.1264..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0253, i64 1264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0253.1264..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %i.aw, i64 104, i1 false)
  %.sroa.0253.1616..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0253, i64 1616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0253.1616..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.av, i64 56, i1 false)
  %.sroa.0253.1368..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0253, i64 1368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0253.1368..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.au, i64 48, i1 false)
  %.sroa.0253.1416..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0253, i64 1416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.0253.1416..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %i.at, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  %.sroa.0177.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.0177.sroa.33.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %i.dl, i64 136, i1 false)
  %.sroa.0177.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2880
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.0177.sroa.34.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %i.de, i64 144, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0177.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i64 24, i1 false)
  %.sroa.0177.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0177.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.0177.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(288) %i.cs, i64 288, i1 false)
  %.sroa.0177.sroa.0.312..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0177.sroa.0, i64 312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1864) %.sroa.0177.sroa.0.312..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1864) %.sroa.0253, i64 1864, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0253)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2176) %0, ptr noundef nonnull align 8 dereferenceable(2176) %.sroa.0177.sroa.0, i64 2176, i1 false)
  %.sroa.0177.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2176
  store ptr %i.ix, ptr %.sroa.0177.sroa.9.0..sroa_idx, align 8
  %.sroa.0177.sroa.10.sroa.7.0..sroa.0177.sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2208
  store i64 %.sroa.4768.sroa.4.0.copyload, ptr %.sroa.0177.sroa.10.sroa.7.0..sroa.0177.sroa.10.0..sroa_idx.sroa_idx, align 8
  %.sroa.0177.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2688
  store i64 %.sroa.0419.0, ptr %.sroa.0177.sroa.12.0..sroa_idx, align 8
  %.sroa.0177.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2696
  store i64 %.sroa.0546.0, ptr %.sroa.0177.sroa.13.0..sroa_idx, align 8
  %.sroa.0177.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2704
  store i32 %.sroa.9477.0, ptr %.sroa.0177.sroa.14.0..sroa_idx, align 8
  %.sroa.0177.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2708
  store i8 %.sroa.0618.0, ptr %.sroa.0177.sroa.15.0..sroa_idx, align 4
  %.sroa.0177.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2709
  store i8 %.sroa.5619.0, ptr %.sroa.0177.sroa.16.0..sroa_idx, align 1
  %.sroa.0177.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2710
  store i16 %.sroa.0590.0, ptr %.sroa.0177.sroa.17.0..sroa_idx, align 2
  %.sroa.0177.sroa.17.sroa.7.0..sroa.0177.sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2712
  store i16 %.sroa.5592.0, ptr %.sroa.0177.sroa.17.sroa.7.0..sroa.0177.sroa.17.0..sroa_idx.sroa_idx, align 8
  %.sroa.0177.sroa.17.sroa.8.0..sroa.0177.sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2714
  store i8 %.sroa.6594.0, ptr %.sroa.0177.sroa.17.sroa.8.0..sroa.0177.sroa.17.0..sroa_idx.sroa_idx, align 2
  %.sroa.0177.sroa.17.sroa.9.0..sroa.0177.sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2715
  store i8 0, ptr %.sroa.0177.sroa.17.sroa.9.0..sroa.0177.sroa.17.0..sroa_idx.sroa_idx, align 1
  %.sroa.0177.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2716
  store i16 %.sroa.094.0, ptr %.sroa.0177.sroa.18.0..sroa_idx, align 4
  %.sroa.0177.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2721
  store i8 %i.io, ptr %.sroa.0177.sroa.20.0..sroa_idx, align 1
  %.sroa.0177.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2722
  store i8 %.1420, ptr %.sroa.0177.sroa.21.0..sroa_idx, align 2
  %.sroa.0177.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2723
  store i8 %.1419, ptr %.sroa.0177.sroa.22.0..sroa_idx, align 1
  %.sroa.0177.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2724
  store i8 %.1421, ptr %.sroa.0177.sroa.23.0..sroa_idx, align 4
  %.sroa.0177.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2725
  store i8 %.1415, ptr %.sroa.0177.sroa.24.0..sroa_idx, align 1
  %.sroa.0177.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2726
  store <4 x i8> %6, ptr %.sroa.0177.sroa.25.0..sroa_idx, align 2
  %.sroa.0177.sroa.25.sroa.10.0..sroa.0177.sroa.25.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2730
  store i8 %.sroa.11341.0, ptr %.sroa.0177.sroa.25.sroa.10.0..sroa.0177.sroa.25.0..sroa_idx.sroa_idx, align 2
  %.sroa.0177.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2731
  store i8 %.sroa.0371.0, ptr %.sroa.0177.sroa.26.0..sroa_idx, align 1
  %.sroa.0177.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2732
  store i8 %i.sb, ptr %.sroa.0177.sroa.27.0..sroa_idx, align 4
  %.sroa.0177.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2733
  store i8 %.sroa.0538.0, ptr %.sroa.0177.sroa.28.0..sroa_idx, align 1
  %.sroa.0177.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2734
  store i8 %.sroa.0598.0, ptr %.sroa.0177.sroa.29.0..sroa_idx, align 2
  %.sroa.0177.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2735
  store i8 %.sroa.0614.0, ptr %.sroa.0177.sroa.30.0..sroa_idx, align 1
  %.sroa.0177.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2736
  store i8 %.sroa.0292.0, ptr %.sroa.0177.sroa.31.0..sroa_idx, align 8
  %.sroa.11178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3024
  store i8 %.1416, ptr %.sroa.11178.0..sroa_idx, align 8
  %.sroa.12179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3025
  store i8 %.sroa.0184.0, ptr %.sroa.12179.0..sroa_idx, align 1
  %.sroa.13180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3026
  store i8 %.sroa.0193.0, ptr %.sroa.13180.0..sroa_idx, align 2
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3027
  store i8 %.sroa.0196.0, ptr %.sroa.14.0..sroa_idx, align 1
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3028
  store i8 %.sroa.0187.0, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3029
  store i8 %.sroa.0190.0, ptr %.sroa.16.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8557)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7315)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0177.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  %i.un = getelementptr inbounds nuw i8, ptr %i.cx, i64 920
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs3ZkgueCtkyH_14ruff_workspace13configuration13RuleSelectionEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.un)
          to label %bb.jy unwind label %bb.jx

bb.jw:                                            ; preds = %bb.ju
  %i.uo = extractvalue { i1, i1 } %i.uk, 0
  %i.up = extractvalue { i1, i1 } %i.uk, 1
  %i.uq = zext i1 %i.uo to i8
  %i.ur = zext i1 %i.up to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.jv

bb.jx:                                            ; preds = %bb.jv
  %i.us = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(24) %i.qb) #22
          to label %bb.jz unwind label %bb.kp

bb.jy:                                            ; preds = %bb.jv
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(24) %i.qb)
          to label %bb.kb unwind label %bb.ka

bb.jz:                                            ; preds = %bb.ka, %bb.jx
  %.pn1062 = phi { ptr, i32 } [ %i.ut, %bb.ka ], [ %i.us, %bb.jx ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(24) %i.pw) #22
          to label %.body1615 unwind label %bb.kp

bb.ka:                                            ; preds = %bb.jy
  %i.ut = landingpad { ptr, i32 }
          cleanup
  br label %bb.jz

bb.kb:                                            ; preds = %bb.jy
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(24) %i.pw)
          to label %bb.kd unwind label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.uu = landingpad { ptr, i32 }
          cleanup
  br label %.body1615

bb.kd:                                            ; preds = %bb.kb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types14FilePatternSetECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(64) %i.df)
          to label %bb.kf unwind label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.uv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types8LanguageEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.hd)
          to label %.body1628 unwind label %bb.kp

bb.kf:                                            ; preds = %bb.kd
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types8LanguageEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.hd)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types16ExtensionMappingECs3ZkgueCtkyH_14ruff_workspace.exit1494 unwind label %bb.kg

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types16ExtensionMappingECs3ZkgueCtkyH_14ruff_workspace.exit1492: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1636, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1632, %bb.kg
  %.sroa.0744.3 = phi i1 [ %.sroa.0744.4, %bb.kg ], [ true, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1632 ], [ %.sroa.0744.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1636 ]
  %.sroa.0727.11 = phi i8 [ %.sroa.0698.4, %bb.kg ], [ %.sroa.0698.7, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1632 ], [ %.sroa.0727.9, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1636 ] ; 2 uses
  %.sroa.0724.19 = phi i8 [ %.sroa.0724.20, %bb.kg ], [ %.sroa.0724.58, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1632 ], [ %.sroa.0724.9, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1636 ] ; 2 uses
  %.sroa.0721.19 = phi i8 [ %.sroa.0721.20, %bb.kg ], [ %.sroa.0721.59, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1632 ], [ %.sroa.0721.9, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1636 ] ; 2 uses
  %.sroa.0718.19 = phi i8 [ %.sroa.0718.20, %bb.kg ], [ %.sroa.0718.61, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1632 ], [ %.sroa.0718.9, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1636 ] ; 2 uses
  %.sroa.0715.19 = phi i8 [ %.sroa.0715.20, %bb.kg ], [ %.sroa.0715.63, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1632 ], [ %.sroa.0715.9, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1636 ] ; 2 uses
  %.sroa.0709.21 = phi i8 [ %.sroa.0700.13, %bb.kg ], [ %.sroa.0700.57, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1632 ], [ %.sroa.0709.9, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1636 ] ; 2 uses
  %.sroa.0706.22 = phi i8 [ %.sroa.0700.13, %bb.kg ], [ %.sroa.0700.57, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1632 ], [ %.sroa.0706.9, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1636 ] ; 2 uses
  %.sroa.0703.21 = phi i8 [ %.sroa.0703.22, %bb.kg ], [ %.sroa.0703.78, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1632 ], [ %.sroa.0703.9, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1636 ] ; 2 uses
  %.sroa.0700.12 = phi i8 [ %.sroa.0700.13, %bb.kg ], [ %.sroa.0700.57, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1632 ], [ %.sroa.0700.2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1636 ] ; 2 uses
  %.sroa.0698.3 = phi i8 [ %.sroa.0698.4, %bb.kg ], [ %.sroa.0698.7, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1632 ], [ %.sroa.0696.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1636 ]
  %.pn1372 = phi { ptr, i32 } [ %i.va, %bb.kg ], [ %.pn1370, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1632 ], [ %.pn1368, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1636 ] ; 2 uses
  %i.uw = trunc nuw i8 %.sroa.0698.3 to i1
  %i.ux = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.uy = load i64, ptr %i.ux, align 8, !range !10
  %i.uz = icmp ne i64 %i.uy, 0
  %or.cond2644.not = select i1 %i.uw, i1 %i.uz, i1 false
  br i1 %or.cond2644.not, label %bb.afw, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1V_INtNtB16_3vec3VecNtNtB16_6string6StringEEEEECs3ZkgueCtkyH_14ruff_workspace.exit1638

bb.kg:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1624, %bb.kf
  %.sroa.0744.4 = phi i1 [ true, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1624 ], [ false, %bb.kf ]
  %.sroa.0724.20 = phi i8 [ %.sroa.0724.57, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1624 ], [ 0, %bb.kf ]
  %.sroa.0721.20 = phi i8 [ %.sroa.0721.58, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1624 ], [ 0, %bb.kf ]
  %.sroa.0718.20 = phi i8 [ %.sroa.0718.60, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1624 ], [ 0, %bb.kf ]
  %.sroa.0715.20 = phi i8 [ %.sroa.0715.62, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1624 ], [ 0, %bb.kf ]
  %.sroa.0703.22 = phi i8 [ %.sroa.0703.77, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1624 ], [ 0, %bb.kf ]
  %.sroa.0700.13 = phi i8 [ %.sroa.0700.56, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1624 ], [ 0, %bb.kf ] ; 3 uses
  %.sroa.0698.4 = phi i8 [ %.sroa.0698.6, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1624 ], [ 0, %bb.kf ] ; 2 uses
  %i.va = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types16ExtensionMappingECs3ZkgueCtkyH_14ruff_workspace.exit1492

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types16ExtensionMappingECs3ZkgueCtkyH_14ruff_workspace.exit1494: ; preds = %bb.kf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3ZkgueCtkyH_14ruff_workspace8settings17FormatterSettingsEBF_(ptr noalias noundef align 8 dereferenceable(136) %i.dq)
          to label %bb.kh unwind label %.split

bb.kh:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types16ExtensionMappingECs3ZkgueCtkyH_14ruff_workspace.exit1494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  %i.vb = getelementptr inbounds nuw i8, ptr %i.dr, i64 24 ; 2 uses
  %i.vc = load ptr, ptr %i.vb, align 8, !alias.scope !1529, !noundef !3
  %i.vd = icmp eq ptr %i.vc, null
  br i1 %i.vd, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types16ExtensionMappingEECs3ZkgueCtkyH_14ruff_workspace.exit, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types8LanguageEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.vb)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types16ExtensionMappingEECs3ZkgueCtkyH_14ruff_workspace.exit unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types16ExtensionMappingEECs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %bb.kh, %bb.ki
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std4path7PathBufEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(24) %i.mf)
          to label %bb.kk unwind label %bb.kj

bb.kj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types16ExtensionMappingEECs3ZkgueCtkyH_14ruff_workspace.exit
  %i.ve = landingpad { ptr, i32 }
          cleanup
  %i.vf = getelementptr inbounds nuw i8, ptr %1, i64 2328
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std4path7PathBufEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(24) %i.vf) #22
          to label %bb.kl unwind label %bb.kp

bb.kk:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types16ExtensionMappingEECs3ZkgueCtkyH_14ruff_workspace.exit
  %i.vg = getelementptr inbounds nuw i8, ptr %1, i64 2328
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std4path7PathBufEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(24) %i.vg)
          to label %bb.kn unwind label %bb.km

bb.kl:                                            ; preds = %bb.km, %bb.kj
  %.pn1064 = phi { ptr, i32 } [ %i.vh, %bb.km ], [ %i.ve, %bb.kj ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types15RequiredVersionEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(24) %i.dt) #22
          to label %bb.kq unwind label %bb.kp

bb.km:                                            ; preds = %bb.kk
  %i.vh = landingpad { ptr, i32 }
          cleanup
  br label %bb.kl

bb.kn:                                            ; preds = %bb.kk
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types15RequiredVersionEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(24) %i.dt)
  br label %bb.ko

bb.ko:                                            ; preds = %bb.ain, %bb.aij, %bb.kn
  ret void

bb.kp:                                            ; preds = %bb.aji, %bb.ajc, %bb.aip, %bb.agf, %bb.afw, %bb.afv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1636, %bb.aft, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufTB1z_INtNtBK_3vec3VecNtNtBK_6string6StringEEEECs3ZkgueCtkyH_14ruff_workspace.exit1632, %bb.aec, %bb.adb, %bb.xe, %bb.xd, %bb.wq, %bb.wj, %bb.vp, %bb.vi, %bb.ui, %bb.ub, %bb.sh, %bb.sa, %bb.pz, %bb.ps, %bb.nj, %bb.nc, %bb.ke, %bb.az, %bb.aj, %bb.akd, %bb.akc, %bb.aka, %bb.ajy, %bb.ajw, %bb.aju, %bb.ajs, %bb.ajq, %bb.ajo, %bb.ajm, %bb.ajk, %bb.ajf, %bb.aje, %bb.ajd, %bb.aja, %bb.aiz, %bb.aiy, %bb.aix, %bb.aiw, %bb.aiv, %bb.aiu, %bb.ait, %bb.ais, %bb.air, %bb.aiq, %.body1651, %.body, %.thread, %bb.afx, %.thread1961, %bb.afl, %bb.afk, %bb.afj, %bb.afi, %bb.afg, %bb.afe, %bb.afc, %bb.afa, %bb.aey, %bb.aew, %bb.aeu, %bb.aes, %bb.aeq, %bb.aeo, %bb.aem, %bb.ael, %.thread2679, %bb.aej, %bb.aei, %bb.aeg, %bb.aee, %bb.aea, %bb.adx, %bb.adw, %bb.adv, %.thread1927.thread2486.thread.thread, %bb.adu, %bb.adt, %bb.ads, %bb.adr, %bb.adq, %bb.adp, %bb.ado, %bb.adn, %bb.adm, %bb.adl, %bb.adk, %bb.adj, %bb.adi, %bb.adh, %bb.adg, %bb.adf, %bb.ade, %bb.add, %bb.adc, %bb.acz, %bb.acy, %.body1551.thread, %bb.acp, %bb.acm, %bb.acj, %bb.ach, %.body1581, %.body1575, %.body1577, %.thread1808, %.thread1866, %bb.yj, %bb.ye, %bb.yd, %bb.xz, %bb.xw, %bb.xv, %bb.xp, %bb.xm, %bb.xl, %bb.xk, %bb.xg, %bb.xf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types16ExtensionMappingECs3ZkgueCtkyH_14ruff_workspace.exit1546, %bb.xc, %bb.xb, %bb.wx, %bb.wu, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types16ExtensionMappingECs3ZkgueCtkyH_14ruff_workspace.exit1540, %bb.wn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetcNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECs3ZkgueCtkyH_14ruff_workspace.exit1536, %bb.wg, %bb.wd, %bb.wa, %bb.vz, %bb.vw, %bb.vt, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types16ExtensionMappingECs3ZkgueCtkyH_14ruff_workspace.exit1532, %bb.vm, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetcNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECs3ZkgueCtkyH_14ruff_workspace.exit1528, %bb.vf, %bb.vc, %bb.uz, %bb.uw, %bb.uu, %bb.ut, %bb.up, %bb.um, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types16ExtensionMappingECs3ZkgueCtkyH_14ruff_workspace.exit1524, %bb.uf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetcNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECs3ZkgueCtkyH_14ruff_workspace.exit1520, %bb.ty, %bb.tv, %bb.ts, %bb.tp, %bb.tm, %bb.tj, %bb.tg, %bb.td, %bb.ta, %bb.sx, %bb.su, %bb.sr, %bb.so, %bb.sl, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types16ExtensionMappingECs3ZkgueCtkyH_14ruff_workspace.exit1516, %bb.se, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetcNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECs3ZkgueCtkyH_14ruff_workspace.exit1512, %bb.rx, %bb.ru, %bb.rr, %bb.ro, %bb.rl, %bb.ri, %bb.rf, %bb.rc, %bb.qz, %bb.qw, %bb.qt, %bb.qq, %bb.qn, %bb.qk, %bb.qg, %bb.qd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types16ExtensionMappingECs3ZkgueCtkyH_14ruff_workspace.exit1508, %bb.pw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetcNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECs3ZkgueCtkyH_14ruff_workspace.exit1504, %bb.pp, %bb.pm, %bb.pj, %bb.pg, %bb.pd, %bb.pa, %bb.ox, %bb.ou, %bb.or, %bb.oo, %bb.ol, %bb.oi, %bb.of, %bb.oc, %bb.nz, %bb.nw, %bb.nv, %bb.nu, %bb.nq, %bb.nn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types16ExtensionMappingECs3ZkgueCtkyH_14ruff_workspace.exit1500, %bb.ng, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetcNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECs3ZkgueCtkyH_14ruff_workspace.exit, %bb.mz, %bb.mw, %bb.mt, %bb.mq, %bb.mn, %bb.mk, %bb.mh, %bb.me, %bb.mb, %bb.ly, %bb.lv, %bb.ls, %bb.lp, %bb.lm, %bb.lj, %bb.lg, %bb.ld, %bb.la, %bb.kx, %bb.ku, %bb.kr, %bb.kl, %bb.kj, %bb.jz, %bb.jx, %bb.jt, %bb.jp, %bb.jl, %bb.jc, %bb.iv, %bb.ip, %bb.il, %bb.if, %bb.hw, %bb.hq, %bb.hn, %bb.hk, %bb.he, %bb.hb, %bb.gy, %bb.gt, %bb.gq, %bb.gk, %bb.ga, %bb.fv, %bb.fp, %bb.fj, %bb.fb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetcNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECs3ZkgueCtkyH_14ruff_workspace.exit1544, %bb.eo, %bb.eh, %bb.ec, %bb.dx, %bb.dr, %bb.dn, %bb.dj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types16ExtensionMappingECs3ZkgueCtkyH_14ruff_workspace.exit1440, %.body1615, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types16ExtensionMappingECs3ZkgueCtkyH_14ruff_workspace.exit, %.body1628, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types16ExtensionMappingEECs3ZkgueCtkyH_14ruff_workspace.exit1648
  %i.vi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.kq:                                            ; preds = %bb.akd, %bb.akb, %bb.aja, %bb.ail, %bb.kl
  %.pn1408.pn = phi { ptr, i32 } [ %.pn1408, %bb.aja ], [ %.pn1408, %bb.ail ], [ %.pn1382, %bb.akd ], [ %.pn1382, %bb.akb ], [ %.pn1064, %bb.kl ]
  resume { ptr, i32 } %.pn1408.pn

bb.kr:                                            ; preds = %bb.ks, %bb.jc
  %.sroa.0742.5 = phi i1 [ true, %bb.ks ], [ false, %bb.jc ]
  %.sroa.0741.4 = phi i1 [ true, %bb.ks ], [ %.sroa.0741.3, %bb.jc ]
  %.sroa.0739.7 = phi i1 [ true, %bb.ks ], [ %.sroa.0739.3, %bb.jc ]
  %.pn1066 = phi { ptr, i32 } [ %i.vj, %bb.ks ], [ %.pn1057.pn.pn, %bb.jc ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settings8SettingsECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(384) %i.ax) #22
          to label %bb.ku unwind label %bb.kp

bb.ks:                                            ; preds = %bb.ja
  %i.vj = landingpad { ptr, i32 }
          cleanup
  br label %bb.kr

bb.kt:                                            ; preds = %bb.ja
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.tp, ptr %i.vk, align 8
end_hunk_1
