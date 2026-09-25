Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.01?download=true
inline.NumInlined: 4381
inline.NumDeleted: 1899
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config10completion:bb.a
  %i.apx = shufflevector <16 x i8> %i.apw, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gj, %.noexc462
  %.sroa.9.0.i.i.i.i450 = phi i64 [ 0, %.noexc462 ], [ %i.aqo, %bb.gj ]
  %.pn.i.i.i451 = phi i64 [ %i.apt, %.noexc462 ], [ %i.aqp, %bb.gj ]
  %.sroa.01.0.i.i.i.i452 = and i64 %.pn.i.i.i451, %i.apm ; 3 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apn, i64 %.sroa.01.0.i.i.i.i452
  %.sroa.0.0.copyload.i24.i.i.i453 = load <16 x i8>, ptr %i.apy, align 1, !noalias !3929 ; 2 uses
  %i.apz = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i453, %i.apx
  %i.aqa = bitcast <16 x i1> %i.apz to i16        ; 2 uses
  %.not.i.not30.i.i.i454 = icmp eq i16 %i.aqa, 0
  br i1 %.not.i.not30.i.i.i454, label %._crit_edge.i.i.i458, label %.lr.ph.i.i.i455

.lr.ph.i.i.i455:                                  ; preds = %bb.gh, %bb.gi
  %.sroa.06.0.i31.i.i.i456 = phi i16 [ %i.aqn, %bb.gi ], [ %i.aqa, %bb.gh ] ; 3 uses
  %i.aqb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i456, i1 true)
  %i.aqc = zext nneg i16 %i.aqb to i64
  %i.aqd = add i64 %.sroa.01.0.i.i.i.i452, %i.aqc
  %i.aqe = and i64 %i.aqd, %i.apm
  %i.aqf = sub nsw i64 0, %i.aqe
  %i.aqg = getelementptr inbounds [1088 x i8], ptr %i.apn, i64 %i.aqf ; 6 uses
  %i.aqh = getelementptr inbounds i8, ptr %i.aqg, i64 -1088
  %i.aqi = invoke noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtB2_10EquivalentBq_E10equivalentCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %.sroa.05.136.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1088) %i.aqh)
          to label %.noexc463 unwind label %.loopexit.split-lp553.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc463:                                        ; preds = %.lr.ph.i.i.i455
  br i1 %i.aqi, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB1B_12ConfigErrorsENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i461, label %bb.gi, !prof !15

._crit_edge.i.i.i458:                             ; preds = %bb.gi, %bb.gh
  %i.aqj = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i453, splat (i8 -1)
  %i.aqk = bitcast <16 x i1> %i.aqj to i16
  %i.aql = icmp eq i16 %i.aqk, 0
  br i1 %i.aql, label %bb.gj, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB1B_12ConfigErrorsENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.thread.i459, !prof !7

bb.gi:                                            ; preds = %.noexc463
  %i.aqm = add i16 %.sroa.06.0.i31.i.i.i456, -1
  %i.aqn = and i16 %i.aqm, %.sroa.06.0.i31.i.i.i456 ; 2 uses
  %.not.i.not.i.i.i457 = icmp eq i16 %i.aqn, 0
  br i1 %.not.i.not.i.i.i457, label %._crit_edge.i.i.i458, label %.lr.ph.i.i.i455

bb.gj:                                            ; preds = %._crit_edge.i.i.i458
  %i.aqo = add i64 %.sroa.9.0.i.i.i.i450, 16      ; 2 uses
  %i.aqp = add i64 %.sroa.01.0.i.i.i.i452, %i.aqo
  br label %bb.gh

select.unfold._crit_edge.i445:                    ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB1B_12ConfigErrorsENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.thread.i459, %._crit_edge.i.i22.i, %.loopexit579
  %i.aqq = getelementptr inbounds nuw i8, ptr %1, i64 1352
  %i.aqr = load i64, ptr %i.aqq, align 8, !range !4, !alias.scope !3926, !noundef !5
  %i.aqs = trunc nuw i64 %i.aqr to i1
  br i1 %i.aqs, label %bb.gs, label %bb.gt

_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB1B_12ConfigErrorsENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i461: ; preds = %.noexc463
  %i.aqt = getelementptr inbounds i8, ptr %i.aqg, i64 -1080
  %i.aqu = load i64, ptr %i.aqt, align 8, !range !8, !noundef !5
  %i.aqv = icmp eq i64 %i.aqu, 2
  br i1 %i.aqv, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB1B_12ConfigErrorsENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i461
  %i.aqw = getelementptr inbounds i8, ptr %i.aqg, i64 -1056
  %i.aqx = load i64, ptr %i.aqw, align 8, !range !4, !noundef !5
  %i.aqy = trunc nuw i64 %i.aqx to i1
  br i1 %i.aqy, label %bb.gn, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB1B_12ConfigErrorsENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.thread.i459

bb.gl:                                            ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB1B_12ConfigErrorsENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i461
  %i.aqz = getelementptr inbounds i8, ptr %i.aqg, i64 -248
  %i.ara = load i64, ptr %i.aqz, align 8, !range !4, !noundef !5
  %i.arb = trunc nuw i64 %i.ara to i1
  br i1 %i.arb, label %bb.gm, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB1B_12ConfigErrorsENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.thread.i459

bb.gm:                                            ; preds = %bb.gl
  %i.arc = getelementptr inbounds i8, ptr %i.aqg, i64 -240
  br label %bb.gw

bb.gn:                                            ; preds = %bb.gk
  %i.ard = getelementptr inbounds i8, ptr %i.aqg, i64 -1048
  br label %bb.gw

_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB1B_12ConfigErrorsENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.thread.i459: ; preds = %._crit_edge.i.i.i458, %bb.gl, %bb.gk, %bb.gf
  %i.are = load i64, ptr %i.app, align 8, !alias.scope !3930, !noalias !3931, !noundef !5
  %i.arf = icmp eq i64 %i.are, 0
  br i1 %i.arf, label %select.unfold._crit_edge.i445, label %bb.go

bb.go:                                            ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB1B_12ConfigErrorsENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.thread.i459
  %i.arg = invoke noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.apr, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %.sroa.05.136.i)
          to label %.noexc464 unwind label %.loopexit.split-lp553.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc464:                                        ; preds = %bb.go
  call void @llvm.experimental.noalias.scope.decl(metadata !3932)
  call void @llvm.experimental.noalias.scope.decl(metadata !3933)
  %i.arh = lshr i64 %i.arg, 57
  %i.ari = trunc nuw nsw i64 %i.arh to i8
  %i.arj = load i64, ptr %i.aps, align 8, !alias.scope !3934, !noalias !3935, !noundef !5 ; 2 uses
  %i.ark = load ptr, ptr %i.apq, align 8, !alias.scope !3934, !noalias !3935, !nonnull !5, !noundef !5 ; 2 uses
  %i.arl = insertelement <16 x i8> poison, i8 %i.ari, i64 0
  %i.arm = shufflevector <16 x i8> %i.arl, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.gp

bb.gp:                                            ; preds = %bb.gr, %.noexc464
  %.sroa.9.0.i.i.i14.i = phi i64 [ 0, %.noexc464 ], [ %i.asd, %bb.gr ]
  %.pn.i.i15.i = phi i64 [ %i.arg, %.noexc464 ], [ %i.ase, %bb.gr ]
  %.sroa.01.0.i.i.i16.i = and i64 %.pn.i.i15.i, %i.arj ; 3 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %i.ark, i64 %.sroa.01.0.i.i.i16.i
  %.sroa.0.0.copyload.i24.i.i17.i = load <16 x i8>, ptr %i.arn, align 1, !noalias !3936 ; 2 uses
  %i.aro = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i17.i, %i.arm
  %i.arp = bitcast <16 x i1> %i.aro to i16        ; 2 uses
  %.not.i.not30.i.i18.i = icmp eq i16 %i.arp, 0
  br i1 %.not.i.not30.i.i18.i, label %._crit_edge.i.i22.i, label %.lr.ph.i.i19.i

.lr.ph.i.i19.i:                                   ; preds = %bb.gp, %bb.gq
  %.sroa.06.0.i31.i.i20.i = phi i16 [ %i.asc, %bb.gq ], [ %i.arp, %bb.gp ] ; 3 uses
  %i.arq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i20.i, i1 true)
  %i.arr = zext nneg i16 %i.arq to i64
  %i.ars = add i64 %.sroa.01.0.i.i.i16.i, %i.arr
  %i.art = and i64 %i.ars, %i.arj
  %i.aru = sub nsw i64 0, %i.art
  %i.arv = getelementptr inbounds [8 x i8], ptr %i.ark, i64 %i.aru ; 2 uses
  %i.arw = getelementptr inbounds i8, ptr %i.arv, i64 -8
  %i.arx = invoke noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtB2_10EquivalentBq_E10equivalentCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %.sroa.05.136.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.arw)
          to label %.noexc465 unwind label %.loopexit.split-lp553.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc465:                                        ; preds = %.lr.ph.i.i19.i
  br i1 %i.arx, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdBO_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECs6u1mgJOKDyY_13rust_analyzer.exit.i460, label %bb.gq, !prof !15

._crit_edge.i.i22.i:                              ; preds = %bb.gq, %bb.gp
  %i.ary = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i17.i, splat (i8 -1)
  %i.arz = bitcast <16 x i1> %i.ary to i16
  %i.asa = icmp eq i16 %i.arz, 0
  br i1 %i.asa, label %bb.gr, label %select.unfold._crit_edge.i445, !prof !7

bb.gq:                                            ; preds = %.noexc465
  %i.asb = add i16 %.sroa.06.0.i31.i.i20.i, -1
  %i.asc = and i16 %i.asb, %.sroa.06.0.i31.i.i20.i ; 2 uses
  %.not.i.not.i.i21.i = icmp eq i16 %i.asc, 0
  br i1 %.not.i.not.i.i21.i, label %._crit_edge.i.i22.i, label %.lr.ph.i.i19.i

bb.gr:                                            ; preds = %._crit_edge.i.i22.i
  %i.asd = add i64 %.sroa.9.0.i.i.i14.i, 16       ; 2 uses
  %i.ase = add i64 %.sroa.01.0.i.i.i16.i, %i.asd
  br label %bb.gp

_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdBO_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECs6u1mgJOKDyY_13rust_analyzer.exit.i460: ; preds = %.noexc465
  %i.asf = getelementptr inbounds i8, ptr %i.arv, i64 -4
  br label %bb.gf

bb.gs:                                            ; preds = %select.unfold._crit_edge.i445
  %i.asg = getelementptr inbounds nuw i8, ptr %1, i64 1360
  br label %bb.gw

bb.gt:                                            ; preds = %select.unfold._crit_edge.i445
  %i.ash = getelementptr inbounds nuw i8, ptr %1, i64 1608
  %i.asi = load i64, ptr %i.ash, align 8, !range !8, !alias.scope !3926, !noundef !5
  %.not10.i446 = icmp ne i64 %i.asi, 2
  %i.asj = getelementptr inbounds nuw i8, ptr %1, i64 2144
  %i.ask = load i64, ptr %i.asj, align 8, !range !4, !alias.scope !3926
  %i.asl = trunc nuw i64 %i.ask to i1
  %or.cond.i447 = select i1 %.not10.i446, i1 %i.asl, i1 false
  br i1 %or.cond.i447, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.asm = getelementptr inbounds nuw i8, ptr %1, i64 4592
  %i.asn = load ptr, ptr %i.asm, align 8, !alias.scope !3926, !nonnull !5, !align !10, !noundef !5
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asn, i64 696
  br label %bb.gw

bb.gv:                                            ; preds = %bb.gt
  %i.asp = getelementptr inbounds nuw i8, ptr %1, i64 2152
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gu, %bb.gs, %bb.gn, %bb.gm
  %.sroa.0.1.i448 = phi ptr [ %i.aso, %bb.gu ], [ %i.asg, %bb.gs ], [ %i.asp, %bb.gv ], [ %i.ard, %bb.gn ], [ %i.arc, %bb.gm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.asq = load i64, ptr %.sroa.0.1.i448, align 8, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !3937)
  %i.asr = getelementptr inbounds nuw i8, ptr %1, i64 3376
  %i.ass = load i64, ptr %i.asr, align 8, !range !14, !alias.scope !3937, !noundef !5
  %.not.i = icmp ne i64 %i.ass, -1
  %i.ast = getelementptr inbounds nuw i8, ptr %1, i64 3392
  %i.asu = load i64, ptr %i.ast, align 8, !alias.scope !3937
  %i.asv = icmp eq i64 %i.asu, 6
  %or.cond.i466 = select i1 %.not.i, i1 %i.asv, i1 false
  br i1 %or.cond.i466, label %_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config16client_is_neovim.exit, label %_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config16client_is_neovim.exit.thread

_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config16client_is_neovim.exit: ; preds = %bb.gw
  %i.asw = getelementptr inbounds nuw i8, ptr %1, i64 3384
  %i.asx = load ptr, ptr %i.asw, align 8, !alias.scope !3937, !nonnull !5, !noundef !5 ; 2 uses
  %i.asy = load i32, ptr %i.asx, align 1
  %i.asz = xor i32 %i.asy, 1987011918
  %i.ata = getelementptr i8, ptr %i.asx, i64 4
  %i.atb = load i16, ptr %i.ata, align 1
  %i.atc = zext i16 %i.atb to i32
  %i.atd = xor i32 %i.atc, 28009
  %i.ate = or i32 %i.asz, %i.atd
  %i.atf = icmp ne i32 %i.ate, 0
  %i.atg = zext i1 %i.atf to i32
  %i.ath = icmp eq i32 %i.atg, 0
  br i1 %i.ath, label %bb.gy, label %_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config16client_is_neovim.exit.thread

_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config16client_is_neovim.exit.thread: ; preds = %bb.gw, %_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config16client_is_neovim.exit
  %i.ati = invoke i56 @_RNvMCsf8NQSppxkmK_14ide_completionNtB2_25CompletionFieldsToResolve24from_client_capabilities(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v)
          to label %bb.gx unwind label %.loopexit.split-lp553.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

bb.gx:                                            ; preds = %_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config16client_is_neovim.exit.thread
  %.sroa.023.0.extract.trunc = trunc i56 %i.ati to i8
  %.sroa.023.1.extract.shift = lshr i56 %i.ati, 8
  %.sroa.023.1.extract.trunc = trunc i56 %.sroa.023.1.extract.shift to i8
  %.sroa.023.2.extract.shift = lshr i56 %i.ati, 16
  %.sroa.023.2.extract.trunc = trunc i56 %.sroa.023.2.extract.shift to i8
  %.sroa.023.3.extract.shift = lshr i56 %i.ati, 24
  %.sroa.023.3.extract.trunc = trunc i56 %.sroa.023.3.extract.shift to i8
  %.sroa.023.4.extract.shift = lshr i56 %i.ati, 32
  %.sroa.023.4.extract.trunc = trunc i56 %.sroa.023.4.extract.shift to i8
  %.sroa.023.5.extract.shift = lshr i56 %i.ati, 40
  %.sroa.023.5.extract.trunc = trunc i56 %.sroa.023.5.extract.shift to i8
  %.sroa.023.6.extract.shift = lshr i56 %i.ati, 48
  %.sroa.023.6.extract.trunc = trunc nuw i56 %.sroa.023.6.extract.shift to i8
  br label %bb.gy

bb.gy:                                            ; preds = %_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config16client_is_neovim.exit, %bb.gx
  %.sroa.10.0 = phi i8 [ %.sroa.023.6.extract.trunc, %bb.gx ], [ 0, %_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config16client_is_neovim.exit ]
  %.sroa.9.0.a = phi i8 [ %.sroa.023.5.extract.trunc, %bb.gx ], [ 0, %_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config16client_is_neovim.exit ]
  %.sroa.8.0.a = phi i8 [ %.sroa.023.4.extract.trunc, %bb.gx ], [ 0, %_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config16client_is_neovim.exit ]
  %.sroa.7.0 = phi i8 [ %.sroa.023.3.extract.trunc, %bb.gx ], [ 0, %_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config16client_is_neovim.exit ]
  %.sroa.6.0 = phi i8 [ %.sroa.023.2.extract.trunc, %bb.gx ], [ 0, %_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config16client_is_neovim.exit ]
  %.sroa.56.0 = phi i8 [ %.sroa.023.1.extract.trunc, %bb.gx ], [ 0, %_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config16client_is_neovim.exit ]
  %.sroa.04.0 = phi i8 [ %.sroa.023.0.extract.trunc, %bb.gx ], [ 0, %_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config16client_is_neovim.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !3938)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %2, ptr %i.b, align 4, !noalias !3938
  %i.atj = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 %3, ptr %i.atj, align 4, !noalias !3938
  br i1 %i.y, label %.lr.ph.i474, label %select.unfold._crit_edge.i467

.lr.ph.i474:                                      ; preds = %bb.gy
  %i.atk = getelementptr inbounds nuw i8, ptr %1, i64 4624
  %i.atl = load i64, ptr %i.atk, align 8, !alias.scope !3939, !noalias !3940, !noundef !5
  %i.atm = icmp eq i64 %i.atl, 0
  %i.atn = getelementptr inbounds nuw i8, ptr %1, i64 4600
  %i.ato = getelementptr inbounds nuw i8, ptr %1, i64 4632 ; 2 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %1, i64 4608
  %i.atq = load i64, ptr %i.atp, align 8, !alias.scope !3938 ; 2 uses
  %i.atr = load ptr, ptr %i.atn, align 8, !alias.scope !3938, !nonnull !5 ; 2 uses
  %i.ats = load ptr, ptr %i.ato, align 8, !alias.scope !3938, !nonnull !5 ; 4 uses
  %i.att = getelementptr inbounds nuw i8, ptr %i.ats, i64 32
  %i.atu = getelementptr inbounds nuw i8, ptr %i.ats, i64 8
  %i.atv = getelementptr inbounds nuw i8, ptr %i.ats, i64 40
  %i.atw = getelementptr inbounds nuw i8, ptr %i.ats, i64 16
  br label %bb.gz

bb.gz:                                            ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdBO_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECs6u1mgJOKDyY_13rust_analyzer.exit.i495, %.lr.ph.i474
  %.sroa.05.141.i475 = phi ptr [ %i.atj, %.lr.ph.i474 ], [ %i.awe, %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdBO_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECs6u1mgJOKDyY_13rust_analyzer.exit.i495 ] ; 4 uses
  br i1 %i.atm, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB1B_12ConfigErrorsENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.thread.i485, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.atx = invoke noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ato, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %.sroa.05.141.i475)
          to label %.noexc501 unwind label %.loopexit.split-lp553.loopexit.split-lp.loopexit ; 2 uses

.noexc501:                                        ; preds = %bb.ha
  %i.aty = lshr i64 %i.atx, 57
  %i.atz = trunc nuw nsw i64 %i.aty to i8
  %i.aua = insertelement <16 x i8> poison, i8 %i.atz, i64 0
  %i.aub = shufflevector <16 x i8> %i.aua, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.hb

bb.hb:                                            ; preds = %bb.hd, %.noexc501
  %.sroa.9.0.i.i.i.i476 = phi i64 [ 0, %.noexc501 ], [ %i.aus, %bb.hd ]
  %.pn.i.i.i477 = phi i64 [ %i.atx, %.noexc501 ], [ %i.aut, %bb.hd ]
  %.sroa.01.0.i.i.i.i478 = and i64 %.pn.i.i.i477, %i.atq ; 3 uses
  %i.auc = getelementptr inbounds nuw i8, ptr %i.atr, i64 %.sroa.01.0.i.i.i.i478
  %.sroa.0.0.copyload.i24.i.i.i479 = load <16 x i8>, ptr %i.auc, align 1, !noalias !3941 ; 2 uses
  %i.aud = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i479, %i.aub
  %i.aue = bitcast <16 x i1> %i.aud to i16        ; 2 uses
  %.not.i.not30.i.i.i480 = icmp eq i16 %i.aue, 0
  br i1 %.not.i.not30.i.i.i480, label %._crit_edge.i.i.i484, label %.lr.ph.i.i.i481

.lr.ph.i.i.i481:                                  ; preds = %bb.hb, %bb.hc
  %.sroa.06.0.i31.i.i.i482 = phi i16 [ %i.aur, %bb.hc ], [ %i.aue, %bb.hb ] ; 3 uses
  %i.auf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i482, i1 true)
  %i.aug = zext nneg i16 %i.auf to i64
  %i.auh = add i64 %.sroa.01.0.i.i.i.i478, %i.aug
  %i.aui = and i64 %i.auh, %i.atq
  %i.auj = sub nsw i64 0, %i.aui
  %i.auk = getelementptr inbounds [1088 x i8], ptr %i.atr, i64 %i.auj ; 6 uses
  %i.aul = getelementptr inbounds i8, ptr %i.auk, i64 -1088
  %i.aum = invoke noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtB2_10EquivalentBq_E10equivalentCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %.sroa.05.141.i475, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1088) %i.aul)
          to label %.noexc502 unwind label %.loopexit.split-lp553.loopexit

.noexc502:                                        ; preds = %.lr.ph.i.i.i481
  br i1 %i.aum, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB1B_12ConfigErrorsENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i496, label %bb.hc, !prof !15

._crit_edge.i.i.i484:                             ; preds = %bb.hc, %bb.hb
  %i.aun = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i479, splat (i8 -1)
  %i.auo = bitcast <16 x i1> %i.aun to i16
  %i.aup = icmp eq i16 %i.auo, 0
  br i1 %i.aup, label %bb.hd, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB1B_12ConfigErrorsENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.thread.i485, !prof !7

bb.hc:                                            ; preds = %.noexc502
  %i.auq = add i16 %.sroa.06.0.i31.i.i.i482, -1
  %i.aur = and i16 %i.auq, %.sroa.06.0.i31.i.i.i482 ; 2 uses
  %.not.i.not.i.i.i483 = icmp eq i16 %i.aur, 0
  br i1 %.not.i.not.i.i.i483, label %._crit_edge.i.i.i484, label %.lr.ph.i.i.i481

bb.hd:                                            ; preds = %._crit_edge.i.i.i484
  %i.aus = add i64 %.sroa.9.0.i.i.i.i476, 16      ; 2 uses
  %i.aut = add i64 %.sroa.01.0.i.i.i.i478, %i.aus
  br label %bb.hb

select.unfold._crit_edge.i467:                    ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB1B_12ConfigErrorsENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.thread.i485, %._crit_edge.i.i25.i494, %bb.gy
  %i.auu = getelementptr inbounds nuw i8, ptr %1, i64 1384 ; 2 uses
  %i.auv = load i64, ptr %i.auu, align 8, !range !14, !alias.scope !3938, !noundef !5
  %.not10.i468 = icmp eq i64 %i.auv, -1
  br i1 %.not10.i468, label %bb.hk, label %.loopexit561

_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB1B_12ConfigErrorsENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i496: ; preds = %.noexc502
  %i.auw = getelementptr inbounds i8, ptr %i.auk, i64 -1080
  %i.aux = load i64, ptr %i.auw, align 8, !range !8, !noundef !5
  %i.auy = icmp eq i64 %i.aux, 2
  br i1 %i.auy, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB1B_12ConfigErrorsENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i496
  %i.auz = getelementptr inbounds i8, ptr %i.auk, i64 -1024
  %i.ava = load i64, ptr %i.auz, align 8, !range !14, !noundef !5
  %.not15.i499 = icmp eq i64 %i.ava, -1
  br i1 %.not15.i499, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB1B_12ConfigErrorsENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.thread.i485, label %.loopexit561.loopexit.split.loop.exit

bb.hf:                                            ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB1B_12ConfigErrorsENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i496
  %i.avb = getelementptr inbounds i8, ptr %i.auk, i64 -216
  %i.avc = load i64, ptr %i.avb, align 8, !range !14, !noundef !5
  %.not14.i497 = icmp eq i64 %i.avc, -1
  br i1 %.not14.i497, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB1B_12ConfigErrorsENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.thread.i485, label %.loopexit561.loopexit.split.loop.exit1195

_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB1B_12ConfigErrorsENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.thread.i485: ; preds = %._crit_edge.i.i.i484, %bb.hf, %bb.he, %bb.gz
  %i.avd = load i64, ptr %i.att, align 8, !alias.scope !3942, !noalias !3943, !noundef !5
  %i.ave = icmp eq i64 %i.avd, 0
  br i1 %i.ave, label %select.unfold._crit_edge.i467, label %bb.hg

bb.hg:                                            ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB1B_12ConfigErrorsENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.thread.i485
  %i.avf = invoke noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.atv, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %.sroa.05.141.i475)
          to label %.noexc503 unwind label %.loopexit.split-lp553.loopexit.split-lp.loopexit ; 2 uses

.noexc503:                                        ; preds = %bb.hg
  call void @llvm.experimental.noalias.scope.decl(metadata !3944)
  call void @llvm.experimental.noalias.scope.decl(metadata !3945)
  %i.avg = lshr i64 %i.avf, 57
  %i.avh = trunc nuw nsw i64 %i.avg to i8
  %i.avi = load i64, ptr %i.atw, align 8, !alias.scope !3946, !noalias !3947, !noundef !5 ; 2 uses
  %i.avj = load ptr, ptr %i.atu, align 8, !alias.scope !3946, !noalias !3947, !nonnull !5, !noundef !5 ; 2 uses
  %i.avk = insertelement <16 x i8> poison, i8 %i.avh, i64 0
  %i.avl = shufflevector <16 x i8> %i.avk, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hj, %.noexc503
  %.sroa.9.0.i.i.i17.i486 = phi i64 [ 0, %.noexc503 ], [ %i.awc, %bb.hj ]
  %.pn.i.i18.i487 = phi i64 [ %i.avf, %.noexc503 ], [ %i.awd, %bb.hj ]
  %.sroa.01.0.i.i.i19.i488 = and i64 %.pn.i.i18.i487, %i.avi ; 3 uses
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avj, i64 %.sroa.01.0.i.i.i19.i488
  %.sroa.0.0.copyload.i24.i.i20.i489 = load <16 x i8>, ptr %i.avm, align 1, !noalias !3948 ; 2 uses
  %i.avn = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i20.i489, %i.avl
  %i.avo = bitcast <16 x i1> %i.avn to i16        ; 2 uses
  %.not.i.not30.i.i21.i490 = icmp eq i16 %i.avo, 0
  br i1 %.not.i.not30.i.i21.i490, label %._crit_edge.i.i25.i494, label %.lr.ph.i.i22.i491

.lr.ph.i.i22.i491:                                ; preds = %bb.hh, %bb.hi
  %.sroa.06.0.i31.i.i23.i492 = phi i16 [ %i.awb, %bb.hi ], [ %i.avo, %bb.hh ] ; 3 uses
  %i.avp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i23.i492, i1 true)
  %i.avq = zext nneg i16 %i.avp to i64
  %i.avr = add i64 %.sroa.01.0.i.i.i19.i488, %i.avq
  %i.avs = and i64 %i.avr, %i.avi
  %i.avt = sub nsw i64 0, %i.avs
  %i.avu = getelementptr inbounds [8 x i8], ptr %i.avj, i64 %i.avt ; 2 uses
  %i.avv = getelementptr inbounds i8, ptr %i.avu, i64 -8
  %i.avw = invoke noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtB2_10EquivalentBq_E10equivalentCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %.sroa.05.141.i475, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.avv)
          to label %.noexc504 unwind label %.loopexit552

.noexc504:                                        ; preds = %.lr.ph.i.i22.i491
  br i1 %i.avw, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdBO_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECs6u1mgJOKDyY_13rust_analyzer.exit.i495, label %bb.hi, !prof !15

._crit_edge.i.i25.i494:                           ; preds = %bb.hi, %bb.hh
  %i.avx = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i20.i489, splat (i8 -1)
  %i.avy = bitcast <16 x i1> %i.avx to i16
  %i.avz = icmp eq i16 %i.avy, 0
  br i1 %i.avz, label %bb.hj, label %select.unfold._crit_edge.i467, !prof !7

bb.hi:                                            ; preds = %.noexc504
  %i.awa = add i16 %.sroa.06.0.i31.i.i23.i492, -1
  %i.awb = and i16 %i.awa, %.sroa.06.0.i31.i.i23.i492 ; 2 uses
  %.not.i.not.i.i24.i493 = icmp eq i16 %i.awb, 0
  br i1 %.not.i.not.i.i24.i493, label %._crit_edge.i.i25.i494, label %.lr.ph.i.i22.i491

bb.hj:                                            ; preds = %._crit_edge.i.i25.i494
  %i.awc = add i64 %.sroa.9.0.i.i.i17.i486, 16    ; 2 uses
  %i.awd = add i64 %.sroa.01.0.i.i.i19.i488, %i.awc
  br label %bb.hh

_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdBO_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECs6u1mgJOKDyY_13rust_analyzer.exit.i495: ; preds = %.noexc504
  %i.awe = getelementptr inbounds i8, ptr %i.avu, i64 -4
  br label %bb.gz

bb.hk:                                            ; preds = %select.unfold._crit_edge.i467
  %i.awf = getelementptr inbounds nuw i8, ptr %1, i64 1608
  %i.awg = load i64, ptr %i.awf, align 8, !range !8, !alias.scope !3938, !noundef !5
  %.not11.i471 = icmp eq i64 %i.awg, 2
  %i.awh = getelementptr inbounds nuw i8, ptr %1, i64 2176 ; 2 uses
  %i.awi = load i64, ptr %i.awh, align 8, !range !14, !alias.scope !3938
  %.not12.i472 = icmp eq i64 %i.awi, -1
  %or.cond.i473 = select i1 %.not11.i471, i1 true, i1 %.not12.i472
  br i1 %or.cond.i473, label %bb.hl, label %.loopexit561

bb.hl:                                            ; preds = %bb.hk
  %i.awj = getelementptr inbounds nuw i8, ptr %1, i64 4592
  %i.awk = load ptr, ptr %i.awj, align 8, !alias.scope !3938, !nonnull !5, !align !10, !noundef !5
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 528
  br label %.loopexit561

.loopexit561.loopexit.split.loop.exit:            ; preds = %bb.he
  %i.awm = getelementptr inbounds i8, ptr %i.auk, i64 -1024
  br label %.loopexit561

.loopexit561.loopexit.split.loop.exit1195:        ; preds = %bb.hf
  %i.awn = getelementptr inbounds i8, ptr %i.auk, i64 -216
  br label %.loopexit561

.loopexit561:                                     ; preds = %.loopexit561.loopexit.split.loop.exit, %.loopexit561.loopexit.split.loop.exit1195, %bb.hl, %bb.hk, %select.unfold._crit_edge.i467
  %.sroa.0.1.i470 = phi ptr [ %i.awl, %bb.hl ], [ %i.awh, %bb.hk ], [ %i.auu, %select.unfold._crit_edge.i467 ], [ %i.awm, %.loopexit561.loopexit.split.loop.exit ], [ %i.awn, %.loopexit561.loopexit.split.loop.exit1195 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
end_hunk_0
begin_hunk_1_@_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config10completion:bb.a
  %i.ayg = getelementptr inbounds i8, ptr %i.axu, i64 -1080
  %i.ayh = load i64, ptr %i.ayg, align 8, !range !8, !noundef !5
  %i.ayi = icmp eq i64 %i.ayh, 2
  br i1 %i.ayi, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB1B_12ConfigErrorsENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i534
  %i.ayj = getelementptr inbounds i8, ptr %i.axu, i64 -1000
  %i.ayk = load i64, ptr %i.ayj, align 8, !range !14, !noundef !5
  %.not15.i537 = icmp eq i64 %i.ayk, -1
  br i1 %.not15.i537, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB1B_12ConfigErrorsENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.thread.i523, label %.loopexit550.loopexit.split.loop.exit

bb.ht:                                            ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB1B_12ConfigErrorsENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i534
  %i.ayl = getelementptr inbounds i8, ptr %i.axu, i64 -192
  %i.aym = load i64, ptr %i.ayl, align 8, !range !14, !noundef !5
  %.not14.i535 = icmp eq i64 %i.aym, -1
  br i1 %.not14.i535, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB1B_12ConfigErrorsENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.thread.i523, label %.loopexit550.loopexit.split.loop.exit1198

_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB1B_12ConfigErrorsENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.thread.i523: ; preds = %._crit_edge.i.i.i522, %bb.ht, %bb.hs, %bb.hn
  %i.ayn = load i64, ptr %i.axd, align 8, !alias.scope !3953, !noalias !3954, !noundef !5
  %i.ayo = icmp eq i64 %i.ayn, 0
  br i1 %i.ayo, label %select.unfold._crit_edge.i505, label %bb.hu

bb.hu:                                            ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdTNtNtCs6u1mgJOKDyY_13rust_analyzer6config10RatomlFileNtB1B_12ConfigErrorsENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.thread.i523
  %i.ayp = invoke noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.axf, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %.sroa.05.141.i513)
          to label %.noexc541 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc541:                                        ; preds = %bb.hu
  call void @llvm.experimental.noalias.scope.decl(metadata !3955)
  call void @llvm.experimental.noalias.scope.decl(metadata !3956)
  %i.ayq = lshr i64 %i.ayp, 57
  %i.ayr = trunc nuw nsw i64 %i.ayq to i8
  %i.ays = load i64, ptr %i.axg, align 8, !alias.scope !3957, !noalias !3958, !noundef !5 ; 2 uses
  %i.ayt = load ptr, ptr %i.axe, align 8, !alias.scope !3957, !noalias !3958, !nonnull !5, !noundef !5 ; 2 uses
  %i.ayu = insertelement <16 x i8> poison, i8 %i.ayr, i64 0
  %i.ayv = shufflevector <16 x i8> %i.ayu, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hx, %.noexc541
  %.sroa.9.0.i.i.i17.i524 = phi i64 [ 0, %.noexc541 ], [ %i.azm, %bb.hx ]
  %.pn.i.i18.i525 = phi i64 [ %i.ayp, %.noexc541 ], [ %i.azn, %bb.hx ]
  %.sroa.01.0.i.i.i19.i526 = and i64 %.pn.i.i18.i525, %i.ays ; 3 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayt, i64 %.sroa.01.0.i.i.i19.i526
  %.sroa.0.0.copyload.i24.i.i20.i527 = load <16 x i8>, ptr %i.ayw, align 1, !noalias !3959 ; 2 uses
  %i.ayx = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i20.i527, %i.ayv
  %i.ayy = bitcast <16 x i1> %i.ayx to i16        ; 2 uses
  %.not.i.not30.i.i21.i528 = icmp eq i16 %i.ayy, 0
  br i1 %.not.i.not30.i.i21.i528, label %._crit_edge.i.i25.i532, label %.lr.ph.i.i22.i529

.lr.ph.i.i22.i529:                                ; preds = %bb.hv, %bb.hw
  %.sroa.06.0.i31.i.i23.i530 = phi i16 [ %i.azl, %bb.hw ], [ %i.ayy, %bb.hv ] ; 3 uses
  %i.ayz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i23.i530, i1 true)
  %i.aza = zext nneg i16 %i.ayz to i64
  %i.azb = add i64 %.sroa.01.0.i.i.i19.i526, %i.aza
  %i.azc = and i64 %i.azb, %i.ays
  %i.azd = sub nsw i64 0, %i.azc
  %i.aze = getelementptr inbounds [8 x i8], ptr %i.ayt, i64 %i.azd ; 2 uses
  %i.azf = getelementptr inbounds i8, ptr %i.aze, i64 -8
  %i.azg = invoke noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtB2_10EquivalentBq_E10equivalentCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %.sroa.05.141.i513, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.azf)
          to label %.noexc542 unwind label %.loopexit

.noexc542:                                        ; preds = %.lr.ph.i.i22.i529
  br i1 %i.azg, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdBO_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECs6u1mgJOKDyY_13rust_analyzer.exit.i533, label %bb.hw, !prof !15

._crit_edge.i.i25.i532:                           ; preds = %bb.hw, %bb.hv
  %i.azh = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i20.i527, splat (i8 -1)
  %i.azi = bitcast <16 x i1> %i.azh to i16
  %i.azj = icmp eq i16 %i.azi, 0
  br i1 %i.azj, label %bb.hx, label %select.unfold._crit_edge.i505, !prof !7

bb.hw:                                            ; preds = %.noexc542
  %i.azk = add i16 %.sroa.06.0.i31.i.i23.i530, -1
  %i.azl = and i16 %i.azk, %.sroa.06.0.i31.i.i23.i530 ; 2 uses
  %.not.i.not.i.i24.i531 = icmp eq i16 %i.azl, 0
  br i1 %.not.i.not.i.i24.i531, label %._crit_edge.i.i25.i532, label %.lr.ph.i.i22.i529

bb.hx:                                            ; preds = %._crit_edge.i.i25.i532
  %i.azm = add i64 %.sroa.9.0.i.i.i17.i524, 16    ; 2 uses
  %i.azn = add i64 %.sroa.01.0.i.i.i19.i526, %i.azm
  br label %bb.hv

_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdBO_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECs6u1mgJOKDyY_13rust_analyzer.exit.i533: ; preds = %.noexc542
  %i.azo = getelementptr inbounds i8, ptr %i.aze, i64 -4
  br label %bb.hn

bb.hy:                                            ; preds = %select.unfold._crit_edge.i505
  %i.azp = getelementptr inbounds nuw i8, ptr %1, i64 1608
  %i.azq = load i64, ptr %i.azp, align 8, !range !8, !alias.scope !3949, !noundef !5
  %.not11.i509 = icmp eq i64 %i.azq, 2
  %i.azr = getelementptr inbounds nuw i8, ptr %1, i64 2200 ; 2 uses
  %i.azs = load i64, ptr %i.azr, align 8, !range !14, !alias.scope !3949
  %.not12.i510 = icmp eq i64 %i.azs, -1
  %or.cond.i511 = select i1 %.not11.i509, i1 true, i1 %.not12.i510
  br i1 %or.cond.i511, label %bb.hz, label %.loopexit550

bb.hz:                                            ; preds = %bb.hy
  %i.azt = getelementptr inbounds nuw i8, ptr %1, i64 4592
  %i.azu = load ptr, ptr %i.azt, align 8, !alias.scope !3949, !nonnull !5, !align !10, !noundef !5
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azu, i64 552
  br label %.loopexit550

.loopexit:                                        ; preds = %.lr.ph.i.i22.i529
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i.i.i519
  %lpad.loopexit547 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.hu, %bb.ho
  %lpad.loopexit.split-lp548 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit547, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp548, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtBG_6string6StringNtNtCsf8NQSppxkmK_14ide_completion6config23AutoImportExclusionTypeEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #31
          to label %.loopexit.split-lp553 unwind label %bb.if

.loopexit550.loopexit.split.loop.exit:            ; preds = %bb.hs
  %i.azw = getelementptr inbounds i8, ptr %i.axu, i64 -1000
  br label %.loopexit550

.loopexit550.loopexit.split.loop.exit1198:        ; preds = %bb.ht
  %i.azx = getelementptr inbounds i8, ptr %i.axu, i64 -192
  br label %.loopexit550

.loopexit550:                                     ; preds = %.loopexit550.loopexit.split.loop.exit, %.loopexit550.loopexit.split.loop.exit1198, %bb.hz, %bb.hy, %select.unfold._crit_edge.i505
  %.sroa.0.1.i508 = phi ptr [ %i.azv, %bb.hz ], [ %i.azr, %bb.hy ], [ %i.aye, %select.unfold._crit_edge.i505 ], [ %i.azw, %.loopexit550.loopexit.split.loop.exit ], [ %i.azx, %.loopexit550.loopexit.split.loop.exit1198 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.azy = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i508, i64 8
  %i.azz = load ptr, ptr %i.azy, align 8, !nonnull !5, !noundef !5
  %i.baa = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i508, i64 16
  %i.bab = load i64, ptr %i.baa, align 8, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !3960)
  %i.bac = getelementptr inbounds nuw i8, ptr %1, i64 1561
  %i.bad = load i8, ptr %i.bac, align 1, !range !25, !alias.scope !3961, !noalias !3962, !noundef !5 ; 2 uses
  %.not10.i.i = icmp eq i8 %i.bad, 2
  br i1 %.not10.i.i, label %bb.ia, label %_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config10ra_fixture.exit

bb.ia:                                            ; preds = %.loopexit550
  %i.bae = getelementptr inbounds nuw i8, ptr %1, i64 1608
  %i.baf = load i64, ptr %i.bae, align 8, !range !8, !alias.scope !3961, !noalias !3962, !noundef !5
  %.not11.i.i = icmp eq i64 %i.baf, 2
  %i.bag = getelementptr inbounds nuw i8, ptr %1, i64 2353
  %i.bah = load i8, ptr %i.bag, align 1, !range !25, !alias.scope !3961, !noalias !3962 ; 2 uses
  %.not12.i.i = icmp eq i8 %i.bah, 2
  %or.cond.i.i = select i1 %.not11.i.i, i1 true, i1 %.not12.i.i
  br i1 %or.cond.i.i, label %bb.ib, label %_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config10ra_fixture.exit

bb.ib:                                            ; preds = %bb.ia
  %i.bai = getelementptr inbounds nuw i8, ptr %1, i64 4592
  %i.baj = load ptr, ptr %i.bai, align 8, !alias.scope !3961, !noalias !3962, !nonnull !5, !align !10, !noundef !5
  %i.bak = getelementptr inbounds nuw i8, ptr %i.baj, i64 721
  %.pre.i = load i8, ptr %i.bak, align 1, !range !27, !noalias !3963
  br label %_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config10ra_fixture.exit

_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config10ra_fixture.exit: ; preds = %bb.ib, %bb.ia, %.loopexit550
  %i.bal = phi i8 [ %.pre.i, %bb.ib ], [ %i.bah, %bb.ia ], [ %i.bad, %.loopexit550 ]
  %i.bam = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %i.dd, ptr %i.bam, align 8
  %i.ban = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 %.sroa.0.0, ptr %i.ban, align 1
  %i.bao = getelementptr inbounds nuw i8, ptr %0, i64 114
  store i8 %i.js, ptr %i.bao, align 2
  %i.bap = getelementptr inbounds nuw i8, ptr %0, i64 115
  store i8 %i.my, ptr %i.bap, align 1
  %i.baq = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i8 %i.qe, ptr %i.baq, align 4
  %i.bar = getelementptr inbounds nuw i8, ptr %0, i64 117
  store i8 %i.tk, ptr %i.bar, align 1
  %i.bas = getelementptr inbounds nuw i8, ptr %0, i64 118
  store i8 %i.ape, ptr %i.bas, align 2
  %i.bat = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.asq, ptr %i.bat, align 8
  %i.bau = getelementptr inbounds nuw i8, ptr %0, i64 119
  store i8 %i.wq, ptr %i.bau, align 1
  %i.bav = getelementptr inbounds nuw i8, ptr %0, i64 138
  store i8 %i.zw, ptr %i.bav, align 2
  %i.baw = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %i.adc, ptr %i.baw, align 8
  %i.bax = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 %i.agi, ptr %i.bax, align 1
  %i.bay = getelementptr inbounds nuw i8, ptr %0, i64 122
  store i8 %., ptr %i.bay, align 2
  %i.baz = getelementptr inbounds nuw i8, ptr %0, i64 123
  store i40 %i.agk, ptr %i.baz, align 1
  %i.bba = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 %i.agm, ptr %i.bba, align 8
  %i.bbb = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 %i.ago, ptr %i.bbb, align 1
  %i.bbc = getelementptr inbounds nuw i8, ptr %0, i64 130
  store i8 %i.agq, ptr %i.bbc, align 2
  %i.bbd = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bbd, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  store i64 %.sroa.03.0, ptr %0, align 8
  %i.bbe = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %i.bbe, align 8
  %i.bbf = getelementptr inbounds nuw i8, ptr %0, i64 131
  store i8 %.sroa.04.0, ptr %i.bbf, align 1
  %.sroa.56.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i8 %.sroa.56.0, ptr %.sroa.56.0..sroa_idx7, align 4
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 133
  store i8 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx9, align 1
  %.sroa.7.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 134
  store i8 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx11, align 2
  %.sroa.8.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 135
  store i8 %.sroa.8.0.a, ptr %.sroa.8.0..sroa_idx13, align 1
  %.sroa.9.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 %.sroa.9.0.a, ptr %.sroa.9.0..sroa_idx15, align 8
  %.sroa.10.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %0, i64 137
  store i8 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx17, align 1
  %i.bbg = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bbg, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.bbh = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.azz, ptr %i.bbh, align 8
  %i.bbi = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.bab, ptr %i.bbi, align 8
  %i.bbj = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %4, ptr %i.bbj, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %5, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %i.bal, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsf8NQSppxkmK_14ide_completion7snippet7SnippetENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.id unwind label %bb.ic

bb.ic:                                            ; preds = %_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config10ra_fixture.exit
  %i.bbk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsf8NQSppxkmK_14ide_completion7snippet7SnippetENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body544 unwind label %bb.ie

bb.id:                                            ; preds = %_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config10ra_fixture.exit
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsf8NQSppxkmK_14ide_completion7snippet7SnippetENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsf8NQSppxkmK_14ide_completion7snippet7SnippetEECs6u1mgJOKDyY_13rust_analyzer.exit unwind label %.loopexit.split-lp593.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ie:                                            ; preds = %bb.ic
  %i.bbl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsf8NQSppxkmK_14ide_completion7snippet7SnippetEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTReuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  ret void

bb.if:                                            ; preds = %.body544, %.loopexit.split-lp, %.loopexit.split-lp553, %.body
  %i.bbm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetReNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %.body544
  resume { ptr, i32 } %.pn27
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config10extra_args(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(4640) %0, i32 noundef range(i32 0, 2) %1, i32 %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc noundef nonnull align 8 ptr @_RNvMsD_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config15cargo_extraArgs(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(4640) %0, i32 noundef %1, i32 %2)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config10ra_fixture(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(4640) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1561
  %i.b = load i8, ptr %i.a, align 1, !range !25, !alias.scope !3966, !noundef !5 ; 2 uses
  %.not10.i = icmp eq i8 %i.b, 2
  br i1 %.not10.i, label %bb.b, label %_RNvMsv_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config21disableFixtureSupport.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1608
  %i.d = load i64, ptr %i.c, align 8, !range !8, !alias.scope !3966, !noundef !5
  %.not11.i = icmp eq i64 %i.d, 2
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2353
  %i.f = load i8, ptr %i.e, align 1, !range !25, !alias.scope !3966 ; 2 uses
  %.not12.i = icmp eq i8 %i.f, 2
  %or.cond.i = select i1 %.not11.i, i1 true, i1 %.not12.i
  br i1 %or.cond.i, label %bb.c, label %_RNvMsv_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config21disableFixtureSupport.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4592
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !3966, !nonnull !5, !align !10, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 721
  %.pre = load i8, ptr %i.i, align 1, !range !27
  br label %_RNvMsv_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config21disableFixtureSupport.exit

_RNvMsv_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config21disableFixtureSupport.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i8 [ %.pre, %bb.c ], [ %i.f, %bb.b ], [ %i.b, %bb.a ]
  store ptr %2, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.j, ptr %i.l, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config11diagnostics(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(4640) %1, i32 noundef range(i32 0, 2) %2, i32 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 4 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = tail call fastcc noundef nonnull ptr @_RNvMsv_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config18diagnostics_enable(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(4640) %1, i32 noundef %2, i32 %3)
  %i.f = load i8, ptr %i.e, align 1, !range !27, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4046)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.h = load i8, ptr %i.g, align 8, !range !25, !alias.scope !4046, !noundef !5 ; 3 uses
  %.not.i = icmp eq i8 %i.h, 2                    ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1608
  %i.j = load i64, ptr %i.i, align 8, !range !8, !alias.scope !4046, !noundef !5
  %.not3.i = icmp eq i64 %i.j, 2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2096
  %i.l = load i8, ptr %i.k, align 8, !range !25, !alias.scope !4046 ; 2 uses
  %.not4.i = icmp eq i8 %i.l, 2
  %or.cond.i = select i1 %.not3.i, i1 true, i1 %.not4.i
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4592
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !4046, !nonnull !5, !align !10, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 480
  %.pre.i = load i8, ptr %i.o, align 8, !range !27, !noalias !4046
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.p = phi i8 [ %.pre.i, %bb.c ], [ %i.h, %bb.a ], [ %i.l, %bb.b ]
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.e, label %_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config23expand_proc_attr_macros.exit

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 487
  %i.s = load i8, ptr %i.r, align 1, !range !25, !alias.scope !4046, !noundef !5 ; 2 uses
  %.not5.i = icmp eq i8 %i.s, 2
  br i1 %.not5.i, label %bb.f, label %_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config23expand_proc_attr_macros.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1608
  %i.u = load i64, ptr %i.t, align 8, !range !8, !alias.scope !4046, !noundef !5
  %.not6.i = icmp eq i64 %i.u, 2
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 2095
  %i.w = load i8, ptr %i.v, align 1, !range !25, !alias.scope !4046 ; 2 uses
  %.not7.i = icmp eq i8 %i.w, 2
  %or.cond10.i = select i1 %.not6.i, i1 true, i1 %.not7.i
  br i1 %or.cond10.i, label %bb.g, label %_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config23expand_proc_attr_macros.exit

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4592
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !4046, !nonnull !5, !align !10, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 479
  %.pre11.i = load i8, ptr %i.z, align 1, !range !27, !noalias !4046
  br label %_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config23expand_proc_attr_macros.exit

_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config23expand_proc_attr_macros.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.d
  %.sroa.0.0.i = phi i8 [ 0, %bb.d ], [ %.pre11.i, %bb.g ], [ %i.s, %bb.e ], [ %i.w, %bb.f ]
  br i1 %.not.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config23expand_proc_attr_macros.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1608
  %i.ab = load i64, ptr %i.aa, align 8, !range !8, !noundef !5
  %.not6 = icmp eq i64 %i.ab, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 2096
  %i.ad = load i8, ptr %i.ac, align 8, !range !25 ; 2 uses
  %.not7 = icmp eq i8 %i.ad, 2
  %or.cond = select i1 %.not6, i1 true, i1 %.not7
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4592
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !5, !align !10, !noundef !5
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 480
  %.pre = load i8, ptr %i.ag, align 8, !range !27
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config23expand_proc_attr_macros.exit, %bb.i
  %i.ah = phi i8 [ %.pre, %bb.i ], [ %i.h, %_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config23expand_proc_attr_macros.exit ], [ %i.ad, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4047)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %2, ptr %i.c, align 4, !noalias !4047
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  store i32 %3, ptr %i.ai, align 4, !noalias !4047
  %i.aj = trunc nuw i32 %2 to i1                  ; 3 uses
  br i1 %i.aj, label %.lr.ph.i, label %select.unfold._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4624
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !4048, !noalias !4049, !noundef !5
  %i.am = icmp eq i64 %i.al, 0
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 4600
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 4632 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4608
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !4047 ; 2 uses
  %i.ar = load ptr, ptr %i.an, align 8, !alias.scope !4047, !nonnull !5 ; 2 uses
  %i.as = load ptr, ptr %i.ao, align 8, !alias.scope !4047, !nonnull !5 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  br i1 %i.am, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %i.ax = load i64, ptr %i.at, align 8, !alias.scope !4050, !noalias !4051, !noundef !5
end_hunk_1
