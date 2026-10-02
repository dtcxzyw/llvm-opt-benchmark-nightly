Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.093?download=true
inline.NumInlined: 733
inline.NumDeleted: 323
begin_hunk_0_@_RNvMNtCsl8OoimOLbh_6qdrant9consensusNtB2_9Consensus5start:bb.a
bb.js:                                            ; preds = %bb.jr, %bb.jg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1660
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.pk, i64 24, i1 false), !noalias !1664
  store i64 0, ptr %i.pk, align 8, !alias.scope !1659, !noalias !1664
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.484.0..sroa_idx.i.i, align 8, !alias.scope !1659, !noalias !1664
  store i64 0, ptr %.sroa.585.0..sroa_idx.i.i, align 8, !alias.scope !1659, !noalias !1664
  %i.aef = load i64, ptr %i.pl, align 8, !noalias !1660, !noundef !7 ; 3 uses
  %i.aeg = icmp ult i64 %i.aef, 128102389400760776
  call void @llvm.assume(i1 %i.aeg)
  %i.aeh = icmp eq i64 %i.aef, 0                  ; 2 uses
  %i.aei = and i1 %.sroa.0.3.i.i, %i.aeh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1660
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1660
  %i.aej = load ptr, ptr %i.pm, align 8, !noalias !1660, !nonnull !7, !noundef !7 ; 2 uses
  %.val98.i.i = load ptr, ptr %i.bj, align 8, !noalias !1660 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1690)
  call void @llvm.experimental.noalias.scope.decl(metadata !1691)
  br i1 %i.aeh, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.aek = getelementptr [72 x i8], ptr %i.aej, i64 %i.aef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1692
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val98.i.i) ]
  %i.ael = getelementptr inbounds nuw i8, ptr %.val98.i.i, i64 16 ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aej, i64 56
  %i.aen = load i64, ptr %i.aem, align 8, !alias.scope !1691, !noalias !1693, !noundef !7
  %i.aeo = getelementptr i8, ptr %i.aek, i64 -16
  %i.aep = load i64, ptr %i.aeo, align 8, !alias.scope !1691, !noalias !1693, !noundef !7
  invoke void @_RNvMs_NtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_managerINtB4_16ConsensusManagerNtNtB6_3toc14TableOfContentE21set_unapplied_entriesCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, ptr noundef nonnull align 8 %i.ael, i64 noundef %i.aen, i64 noundef %i.aep)
          to label %.noexc117.i.i unwind label %bb.jz, !noalias !1670

.noexc117.i.i:                                    ; preds = %bb.jt
  %i.aeq = load i64, ptr %i.u, align 8, !range !24, !noalias !1692, !noundef !7
  %.not5.i.i.i = icmp eq i64 %i.aeq, -1
  br i1 %.not5.i.i.i, label %bb.jw, label %bb.jv

bb.ju:                                            ; preds = %bb.jy, %bb.js
  %.sroa.04.0.i.i.i = phi i8 [ %i.aev, %bb.jy ], [ 0, %bb.js ]
  store i8 %.sroa.04.0.i.i.i, ptr %i.pq, align 1, !alias.scope !1690, !noalias !1694
  store i8 0, ptr %i.ad, align 8, !alias.scope !1690, !noalias !1694
  br label %_RNvNtCsl8OoimOLbh_6qdrant9consensus24handle_committed_entries.exit.i.i

bb.jv:                                            ; preds = %.noexc117.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1692
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false), !noalias !1692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1692
  %i.aer = invoke noundef nonnull ptr @_RNvXs_NtCscxI0zlRnmiB_6anyhow5errorNtB6_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtCs3r24GR8eSjc_4raft6errors5ErrorE4fromCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.s)
          to label %.noexc118.i.i unwind label %bb.jz, !noalias !1670

.noexc118.i.i:                                    ; preds = %bb.jv
  store ptr %i.aer, ptr %i.pn, align 8, !alias.scope !1690, !noalias !1694
  store i8 1, ptr %i.ad, align 8, !alias.scope !1690, !noalias !1694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1692
  br label %_RNvNtCsl8OoimOLbh_6qdrant9consensus24handle_committed_entries.exit.i.i

bb.jw:                                            ; preds = %.noexc117.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1692
  invoke void @_RINvMs_NtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_managerINtB5_16ConsensusManagerNtNtB7_3toc14TableOfContentE13apply_entriesNtB5_17ConsensusStateRefECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.t, ptr noundef nonnull align 8 %i.ael, ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %0)
          to label %.noexc119.i.i unwind label %bb.jz, !noalias !1670

.noexc119.i.i:                                    ; preds = %bb.jw
  %i.aes = load i8, ptr %i.t, align 8, !range !25, !noalias !1692, !noundef !7
  %i.aet = trunc nuw i8 %i.aes to i1
  br i1 %i.aet, label %bb.jx, label %bb.jy

bb.jx:                                            ; preds = %.noexc119.i.i
  %i.aeu = load ptr, ptr %i.pp, align 8, !noalias !1692, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1692
  store ptr %i.aeu, ptr %i.pn, align 8, !alias.scope !1690, !noalias !1694
  store i8 1, ptr %i.ad, align 8, !alias.scope !1690, !noalias !1694
  br label %_RNvNtCsl8OoimOLbh_6qdrant9consensus24handle_committed_entries.exit.i.i

bb.jy:                                            ; preds = %.noexc119.i.i
  %i.aev = load i8, ptr %i.po, align 1, !range !25, !noalias !1692, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1692
  br label %bb.ju

bb.jz:                                            ; preds = %bb.kd, %_RNvNtCsl8OoimOLbh_6qdrant9consensus24handle_committed_entries.exit.i.i, %bb.jw, %bb.jv, %bb.jt
  %.sroa.039.2.i.i = phi i1 [ false, %bb.kd ], [ true, %_RNvNtCsl8OoimOLbh_6qdrant9consensus24handle_committed_entries.exit.i.i ], [ true, %bb.jw ], [ true, %bb.jt ], [ true, %bb.jv ]
  %i.aew = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb5EntryEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af) #20
          to label %.body.i.i44 unwind label %bb.ii, !noalias !1670

_RNvNtCsl8OoimOLbh_6qdrant9consensus24handle_committed_entries.exit.i.i: ; preds = %bb.jx, %.noexc118.i.i, %bb.ju
  invoke void @_RINvXNtCscxI0zlRnmiB_6anyhow7contextINtNtCskKLDkoKarTP_4core6result6ResultbNtB5_5ErrorEINtB5_7ContextbB1b_E7contextReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 34)
          to label %bb.ka unwind label %bb.jz, !noalias !1670

bb.ka:                                            ; preds = %_RNvNtCsl8OoimOLbh_6qdrant9consensus24handle_committed_entries.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1660
  %i.aex = load i8, ptr %i.ae, align 8, !range !25, !noalias !1660, !noundef !7
  %i.aey = trunc nuw i8 %i.aex to i1
  br i1 %i.aey, label %bb.kb, label %bb.kc

bb.kb:                                            ; preds = %bb.ka
  %i.aez = load ptr, ptr %i.ps, align 8, !noalias !1660, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1660
  br label %bb.kj

bb.kc:                                            ; preds = %bb.ka
  %i.afa = load i8, ptr %i.pr, align 1, !range !25, !noalias !1660, !noundef !7
  %i.afb = trunc nuw i8 %i.afa to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1660
  br i1 %i.afb, label %bb.kj, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1660
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1660
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.ab, ptr noundef nonnull align 8 dereferenceable(320) %i.bo, i64 320, i1 false), !noalias !1664
  invoke void @_RNvMs0_NtCs3r24GR8eSjc_4raft8raw_nodeINtB5_7RawNodeNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefE7advanceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(320) %i.ab)
          to label %bb.ke unwind label %bb.jz, !noalias !1670

bb.ke:                                            ; preds = %bb.kd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1660
  %.sroa.0.0.copyload.i = load i64, ptr %i.ac, align 8, !noalias !1695
  %.sroa.11.0.copyload.i = load ptr, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !1695
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.17.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.17.0..sroa_idx.i, i64 48, i1 false), !noalias !1695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1660
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb5EntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %bb.kg unwind label %bb.kf, !noalias !1670

bb.kf:                                            ; preds = %bb.ke
  %i.afc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb5EntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body.i.i44 unwind label %bb.kh, !noalias !1670

bb.kg:                                            ; preds = %bb.ke
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb5EntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb5EntryEECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.gn, !noalias !1670

bb.kh:                                            ; preds = %bb.kf
  %i.afd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !1670
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb5EntryEECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.kg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1660
  call void @llvm.experimental.noalias.scope.decl(metadata !1696)
  call void @llvm.experimental.noalias.scope.decl(metadata !1697)
  call void @llvm.experimental.noalias.scope.decl(metadata !1698)
  %i.afe = load ptr, ptr %i.bj, align 8, !alias.scope !1699, !noalias !1660, !nonnull !7, !noundef !7
  %i.aff = atomicrmw sub ptr %i.afe, i64 1 release, align 8, !noalias !1700
  %i.afg = icmp eq i64 %i.aff, 1
  br i1 %i.afg, label %bb.ki, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefECsl8OoimOLbh_6qdrant.exit125.i.i

bb.ki:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb5EntryEECsl8OoimOLbh_6qdrant.exit.i.i
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager16ConsensusManagerNtNtBL_3toc14TableOfContentEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bj) #18, !noalias !1670
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefECsl8OoimOLbh_6qdrant.exit125.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.gm, %.body.i.i44
  br i1 %.sroa.039.0.i.i, label %bb.kn, label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefECsl8OoimOLbh_6qdrant.exit125.i.i: ; preds = %bb.ki, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb5EntryEECsl8OoimOLbh_6qdrant.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !1660
  br label %_RNvMNtCsl8OoimOLbh_6qdrant9consensusNtB2_9Consensus13process_ready.exit.i

bb.kj:                                            ; preds = %bb.kc, %bb.kb
  %.sroa.11.1.i = phi ptr [ %i.aez, %bb.kb ], [ undef, %bb.kc ]
  %.sroa.0.1.i = phi i64 [ -1, %bb.kb ], [ 2, %bb.kc ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb5EntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %bb.kl unwind label %bb.kk, !noalias !1670

bb.kk:                                            ; preds = %bb.kj
  %i.afh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb5EntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body.i.i44 unwind label %bb.km, !noalias !1670

bb.kl:                                            ; preds = %bb.kj
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb5EntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb5EntryEECsl8OoimOLbh_6qdrant.exit131.i.i unwind label %bb.gn, !noalias !1670

bb.km:                                            ; preds = %bb.kk
  %i.afi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !1670
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb5EntryEECsl8OoimOLbh_6qdrant.exit131.i.i: ; preds = %bb.kl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1660
  br label %bb.iq

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefECsl8OoimOLbh_6qdrant.exit115.i.i: ; preds = %bb.ir, %bb.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !1660
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3r24GR8eSjc_4raft8raw_node5ReadyECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(320) %i.bo), !noalias !1670
  br label %_RNvMNtCsl8OoimOLbh_6qdrant9consensusNtB2_9Consensus13process_ready.exit.i

bb.kn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefECsl8OoimOLbh_6qdrant.exit.i.i, %.split.thread.i.i50
  %.pn96133.i.i = phi { ptr, i32 } [ %i.adb, %.split.thread.i.i50 ], [ %.pn94.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefECsl8OoimOLbh_6qdrant.exit.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3r24GR8eSjc_4raft8raw_node5ReadyECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(320) %i.bo) #20
          to label %common.resume unwind label %bb.ii, !noalias !1670

_RNvMNtCsl8OoimOLbh_6qdrant9consensusNtB2_9Consensus13process_ready.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefECsl8OoimOLbh_6qdrant.exit115.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefECsl8OoimOLbh_6qdrant.exit125.i.i
  %.sroa.21.2.i = phi i1 [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefECsl8OoimOLbh_6qdrant.exit115.i.i ], [ %i.aei, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefECsl8OoimOLbh_6qdrant.exit125.i.i ]
  %.sroa.18.2.i = phi i8 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefECsl8OoimOLbh_6qdrant.exit115.i.i ], [ %i.adk, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefECsl8OoimOLbh_6qdrant.exit125.i.i ]
  %.sroa.11.2.i = phi ptr [ %.sroa.11.0.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefECsl8OoimOLbh_6qdrant.exit115.i.i ], [ %.sroa.11.0.copyload.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefECsl8OoimOLbh_6qdrant.exit125.i.i ] ; 4 uses
  %.sroa.0.2.i = phi i64 [ %.sroa.0.0.i46, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefECsl8OoimOLbh_6qdrant.exit115.i.i ], [ %.sroa.0.0.copyload.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefECsl8OoimOLbh_6qdrant.exit125.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1647
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.8.i.i)
  %i.afj = icmp eq i64 %.sroa.0.2.i, -1
  br i1 %i.afj, label %bb.ko, label %bb.kp

bb.ko:                                            ; preds = %_RNvMNtCsl8OoimOLbh_6qdrant9consensusNtB2_9Consensus13process_ready.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.2.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i)
  br label %bb.nh

bb.kp:                                            ; preds = %_RNvMNtCsl8OoimOLbh_6qdrant9consensusNtB2_9Consensus13process_ready.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.430.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.17.i, i64 48, i1 false), !noalias !1647
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i)
  %.not.i47 = icmp eq i64 %.sroa.0.2.i, 2
  br i1 %.not.i47, label %.thread, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !1647
  store i64 %.sroa.0.2.i, ptr %i.bn, align 8, !noalias !1647
  store ptr %.sroa.11.2.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !1647
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.430.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.430.i, i64 48, i1 false), !noalias !1647
  call void @llvm.experimental.noalias.scope.decl(metadata !1701)
  call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1703
  %i.afk = load ptr, ptr %i.ey, align 8, !alias.scope !1704, !noalias !1705, !nonnull !7, !noundef !7 ; 3 uses
  %i.afl = atomicrmw add ptr %i.afk, i64 1 monotonic, align 8, !noalias !1706
  %i.afm = icmp slt i64 %i.afl, 0
  %i.afn = ptrtoint ptr %.sroa.11.2.i to i64      ; 2 uses
  br i1 %i.afm, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  store ptr %i.afk, ptr %i.r, align 8, !noalias !1703
  %i.afo = trunc nuw i64 %.sroa.0.2.i to i1       ; 2 uses
  br i1 %i.afo, label %bb.kv, label %bb.lb

bb.ks:                                            ; preds = %bb.kq
  call void @llvm.trap()
  unreachable

.body.i41.i:                                      ; preds = %bb.ls, %bb.ln, %bb.lk, %bb.ku
  %.pn.i42.i = phi { ptr, i32 } [ %i.ags, %bb.lk ], [ %i.agw, %bb.ln ], [ %i.afs, %bb.ku ], [ %i.aha, %bb.ls ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1707)
  call void @llvm.experimental.noalias.scope.decl(metadata !1708)
  call void @llvm.experimental.noalias.scope.decl(metadata !1709)
  %i.afp = load ptr, ptr %i.r, align 8, !alias.scope !1710, !noalias !1703, !nonnull !7, !noundef !7
  %i.afq = atomicrmw sub ptr %i.afp, i64 1 release, align 8, !noalias !1711
  %i.afr = icmp eq i64 %i.afq, 1
  br i1 %i.afr, label %bb.kt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefECsl8OoimOLbh_6qdrant.exit.i43.i

bb.kt:                                            ; preds = %.body.i41.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager16ConsensusManagerNtNtBL_3toc14TableOfContentEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefECsl8OoimOLbh_6qdrant.exit.i43.i unwind label %bb.lw, !noalias !1705

bb.ku:                                            ; preds = %bb.lt, %bb.lo, %bb.lb, %bb.kz, %bb.kx, %bb.kw
  %i.afs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i41.i

bb.kv:                                            ; preds = %bb.kr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1703
  store i64 %i.afn, ptr %i.q, align 8, !noalias !1703
  %i.aft = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1703 ; 2 uses
  %i.afu = icmp ult i64 %i.aft, 6
  call void @llvm.assume(i1 %i.afu)
  %i.afv = icmp samesign ugt i64 %i.aft, 3
  br i1 %i.afv, label %bb.kw, label %bb.kx

bb.kw:                                            ; preds = %bb.kv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1703
  store ptr %i.q, ptr %i.p, align 8, !noalias !1703
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.411.0..sroa_idx.i.i, align 8, !noalias !1703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1703
  store ptr @3, ptr %i.o, align 8, !noalias !1703
  store i64 17, ptr %i.pt, align 8, !noalias !1703
  store ptr @3, ptr %i.pu, align 8, !noalias !1703
  store i64 17, ptr %i.pv, align 8, !noalias !1703
  store ptr @60, ptr %i.pw, align 8, !noalias !1703
  invoke void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsl8OoimOLbh_6qdrant(ptr noundef nonnull @59, ptr noundef nonnull %i.p, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.o)
          to label %bb.ky unwind label %bb.ku, !noalias !1705

bb.kx:                                            ; preds = %bb.ky, %bb.kv
  %i.afw = phi i64 [ %i.afn, %bb.kv ], [ %.pre35.i.i, %bb.ky ]
  %i.afx = phi ptr [ %i.afk, %bb.kv ], [ %.pre.i50.i, %bb.ky ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1703
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 16
  invoke void @_RNvMs_NtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_managerINtB4_16ConsensusManagerNtNtB6_3toc14TableOfContentE16set_commit_indexCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.n, ptr noundef nonnull align 8 %i.afy, i64 noundef %i.afw)
          to label %bb.kz unwind label %bb.ku, !noalias !1705

bb.ky:                                            ; preds = %bb.kw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1703
  %.pre.i50.i = load ptr, ptr %i.r, align 8, !noalias !1703
  %.pre35.i.i = load i64, ptr %i.q, align 8, !noalias !1703
  br label %bb.kx

bb.kz:                                            ; preds = %bb.kx
  %i.afz = invoke noundef ptr @_RINvXNtCscxI0zlRnmiB_6anyhow7contextINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEINtB5_7ContextuB1b_E7contextReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 26)
          to label %bb.la unwind label %bb.ku, !noalias !1705 ; 2 uses

bb.la:                                            ; preds = %bb.kz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1703
  %.not.i49.i = icmp eq ptr %i.afz, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1703
  br i1 %.not.i49.i, label %bb.lb, label %bb.lc

bb.lb:                                            ; preds = %bb.la, %bb.kr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.px, i64 24, i1 false), !noalias !1712
  store i64 0, ptr %i.px, align 8, !alias.scope !1702, !noalias !1712
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.413.0..sroa_idx.i.i, align 8, !alias.scope !1702, !noalias !1712
  store i64 0, ptr %.sroa.514.0..sroa_idx.i.i, align 8, !alias.scope !1702, !noalias !1712
  invoke fastcc void @_RNvMNtCsl8OoimOLbh_6qdrant9consensusNtB2_9Consensus13send_messages(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m)
          to label %bb.ld unwind label %bb.ku, !noalias !1705

bb.lc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb5EntryEECsl8OoimOLbh_6qdrant.exit.i47.i, %bb.la
  %.sroa.1160.1.i = phi ptr [ %i.agv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb5EntryEECsl8OoimOLbh_6qdrant.exit.i47.i ], [ %i.afz, %bb.la ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1713)
  call void @llvm.experimental.noalias.scope.decl(metadata !1714)
  call void @llvm.experimental.noalias.scope.decl(metadata !1715)
  %i.aga = load ptr, ptr %i.r, align 8, !alias.scope !1716, !noalias !1703, !nonnull !7, !noundef !7
  %i.agb = atomicrmw sub ptr %i.aga, i64 1 release, align 8, !noalias !1717
  %i.agc = icmp eq i64 %i.agb, 1
  br i1 %i.agc, label %.invoke.i.i, label %_RNvMNtCsl8OoimOLbh_6qdrant9consensusNtB2_9Consensus19process_light_ready.exit.thread.i

_RNvMNtCsl8OoimOLbh_6qdrant9consensusNtB2_9Consensus19process_light_ready.exit.thread.i: ; preds = %bb.lc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1703
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3r24GR8eSjc_4raft8raw_node10LightReadyECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bn), !noalias !1718
  br label %.loopexit

bb.ld:                                            ; preds = %bb.lb
  %.sroa.0.0.i.i48 = xor i1 %i.afo, true
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.430.0..sroa_idx.i, i64 24, i1 false), !noalias !1712
  store i64 0, ptr %.sroa.430.0..sroa_idx.i, align 8, !alias.scope !1702, !noalias !1712
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.416.0..sroa_idx.i.i, align 8, !alias.scope !1702, !noalias !1712
  store i64 0, ptr %.sroa.517.0..sroa_idx.i.i, align 8, !alias.scope !1702, !noalias !1712
  %i.agd = load i64, ptr %i.py, align 8, !noalias !1703, !noundef !7 ; 3 uses
  %i.age = icmp ult i64 %i.agd, 128102389400760776
  call void @llvm.assume(i1 %i.age)
  %2 = icmp eq i64 %i.agd, 0                      ; 2 uses
  %3 = and i1 %2, %.sroa.0.0.i.i48                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1703
  %i.agf = load ptr, ptr %i.pz, align 8, !noalias !1703, !nonnull !7, !noundef !7 ; 2 uses
  %.val.i44.i = load ptr, ptr %i.r, align 8, !noalias !1703 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1719)
  call void @llvm.experimental.noalias.scope.decl(metadata !1720)
  br i1 %2, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.agg = getelementptr [72 x i8], ptr %i.agf, i64 %i.agd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1721
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i44.i) ]
  %i.agh = getelementptr inbounds nuw i8, ptr %.val.i44.i, i64 16 ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agf, i64 56
  %i.agj = load i64, ptr %i.agi, align 8, !alias.scope !1720, !noalias !1722, !noundef !7
  %i.agk = getelementptr i8, ptr %i.agg, i64 -16
  %i.agl = load i64, ptr %i.agk, align 8, !alias.scope !1720, !noalias !1722, !noundef !7
  invoke void @_RNvMs_NtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_managerINtB4_16ConsensusManagerNtNtB6_3toc14TableOfContentE21set_unapplied_entriesCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noundef nonnull align 8 %i.agh, i64 noundef %i.agj, i64 noundef %i.agl)
          to label %.noexc24.i.i unwind label %bb.lk, !noalias !1705

.noexc24.i.i:                                     ; preds = %bb.le
  %i.agm = load i64, ptr %i.i, align 8, !range !24, !noalias !1721, !noundef !7
  %.not5.i.i45.i = icmp eq i64 %i.agm, -1
  br i1 %.not5.i.i45.i, label %bb.lh, label %bb.lg

bb.lf:                                            ; preds = %bb.lj, %bb.ld
  %.sroa.04.0.i.i48.i = phi i8 [ %i.agr, %bb.lj ], [ 0, %bb.ld ]
  store i8 %.sroa.04.0.i.i48.i, ptr %i.qd, align 1, !alias.scope !1719, !noalias !1723
  store i8 0, ptr %i.j, align 8, !alias.scope !1719, !noalias !1723
  br label %_RNvNtCsl8OoimOLbh_6qdrant9consensus24handle_committed_entries.exit.i46.i

bb.lg:                                            ; preds = %.noexc24.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !1721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1721
  %i.agn = invoke noundef nonnull ptr @_RNvXs_NtCscxI0zlRnmiB_6anyhow5errorNtB6_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtCs3r24GR8eSjc_4raft6errors5ErrorE4fromCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.noexc25.i.i unwind label %bb.lk, !noalias !1705

.noexc25.i.i:                                     ; preds = %bb.lg
  store ptr %i.agn, ptr %i.qa, align 8, !alias.scope !1719, !noalias !1723
  store i8 1, ptr %i.j, align 8, !alias.scope !1719, !noalias !1723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1721
  br label %_RNvNtCsl8OoimOLbh_6qdrant9consensus24handle_committed_entries.exit.i46.i

bb.lh:                                            ; preds = %.noexc24.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1721
  invoke void @_RINvMs_NtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_managerINtB5_16ConsensusManagerNtNtB7_3toc14TableOfContentE13apply_entriesNtB5_17ConsensusStateRefECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.h, ptr noundef nonnull align 8 %i.agh, ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %0)
          to label %.noexc26.i.i unwind label %bb.lk, !noalias !1705

.noexc26.i.i:                                     ; preds = %bb.lh
  %i.ago = load i8, ptr %i.h, align 8, !range !25, !noalias !1721, !noundef !7
  %i.agp = trunc nuw i8 %i.ago to i1
  br i1 %i.agp, label %bb.li, label %bb.lj

bb.li:                                            ; preds = %.noexc26.i.i
  %i.agq = load ptr, ptr %i.qc, align 8, !noalias !1721, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1721
  store ptr %i.agq, ptr %i.qa, align 8, !alias.scope !1719, !noalias !1723
  store i8 1, ptr %i.j, align 8, !alias.scope !1719, !noalias !1723
  br label %_RNvNtCsl8OoimOLbh_6qdrant9consensus24handle_committed_entries.exit.i46.i

bb.lj:                                            ; preds = %.noexc26.i.i
  %i.agr = load i8, ptr %i.qb, align 1, !range !25, !noalias !1721, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1721
  br label %bb.lf

bb.lk:                                            ; preds = %bb.lq, %_RNvNtCsl8OoimOLbh_6qdrant9consensus24handle_committed_entries.exit.i46.i, %bb.lh, %bb.lg, %bb.le
  %i.ags = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb5EntryEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #20
          to label %.body.i41.i unwind label %bb.lw, !noalias !1705

_RNvNtCsl8OoimOLbh_6qdrant9consensus24handle_committed_entries.exit.i46.i: ; preds = %bb.li, %.noexc25.i.i, %bb.lf
  invoke void @_RINvXNtCscxI0zlRnmiB_6anyhow7contextINtNtCskKLDkoKarTP_4core6result6ResultbNtB5_5ErrorEINtB5_7ContextbB1b_E7contextReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 33)
          to label %bb.ll unwind label %bb.lk, !noalias !1705

bb.ll:                                            ; preds = %_RNvNtCsl8OoimOLbh_6qdrant9consensus24handle_committed_entries.exit.i46.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1703
  %i.agt = load i8, ptr %i.k, align 8, !range !25, !noalias !1703, !noundef !7
  %i.agu = trunc nuw i8 %i.agt to i1
  br i1 %i.agu, label %bb.lm, label %bb.lq

bb.lm:                                            ; preds = %bb.ll
  %i.agv = load ptr, ptr %i.qg, align 8, !noalias !1703, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1703
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb5EntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.lo unwind label %bb.ln, !noalias !1705

bb.ln:                                            ; preds = %bb.lm
  %i.agw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb5EntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body.i41.i unwind label %bb.lp, !noalias !1705

bb.lo:                                            ; preds = %bb.lm
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb5EntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb5EntryEECsl8OoimOLbh_6qdrant.exit.i47.i unwind label %bb.ku, !noalias !1705

bb.lp:                                            ; preds = %bb.ln
  %i.agx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !1705
  unreachable

bb.lq:                                            ; preds = %bb.ll
  %i.agy = load i8, ptr %i.qe, align 1, !range !25, !noalias !1703, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1703
  %i.agz = load i64, ptr %i.qf, align 8, !alias.scope !1704, !noalias !1705, !noundef !7
  invoke void @_RNvMs4_NtCs3r24GR8eSjc_4raft4raftINtB5_4RaftNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefE21commit_apply_internalCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %0, i64 noundef %i.agz, i1 noundef zeroext false)
          to label %bb.lr unwind label %bb.lk, !noalias !1705

bb.lr:                                            ; preds = %bb.lq
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb5EntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.lt unwind label %bb.ls, !noalias !1705

bb.ls:                                            ; preds = %bb.lr
  %i.aha = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb5EntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body.i41.i unwind label %bb.lu, !noalias !1705

bb.lt:                                            ; preds = %bb.lr
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb5EntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb5EntryEECsl8OoimOLbh_6qdrant.exit32.i.i unwind label %bb.ku, !noalias !1705

bb.lu:                                            ; preds = %bb.ls
  %i.ahb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !1705
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb5EntryEECsl8OoimOLbh_6qdrant.exit32.i.i: ; preds = %bb.lt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1703
  call void @llvm.experimental.noalias.scope.decl(metadata !1724)
  call void @llvm.experimental.noalias.scope.decl(metadata !1725)
  call void @llvm.experimental.noalias.scope.decl(metadata !1726)
  %i.ahc = load ptr, ptr %i.r, align 8, !alias.scope !1727, !noalias !1703, !nonnull !7, !noundef !7
  %i.ahd = atomicrmw sub ptr %i.ahc, i64 1 release, align 8, !noalias !1728
  %i.ahe = icmp eq i64 %i.ahd, 1
  br i1 %i.ahe, label %.invoke.i.i, label %_RNvMNtCsl8OoimOLbh_6qdrant9consensusNtB2_9Consensus19process_light_ready.exit.thread66.i

_RNvMNtCsl8OoimOLbh_6qdrant9consensusNtB2_9Consensus19process_light_ready.exit.thread66.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb5EntryEECsl8OoimOLbh_6qdrant.exit32.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1703
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3r24GR8eSjc_4raft8raw_node10LightReadyECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bn), !noalias !1718
  br label %bb.lx

.invoke.i.i:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb5EntryEECsl8OoimOLbh_6qdrant.exit32.i.i, %bb.lc
  %.sroa.958.0.i = phi i1 [ undef, %bb.lc ], [ %3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb5EntryEECsl8OoimOLbh_6qdrant.exit32.i.i ]
  %.sroa.7.0.i = phi i8 [ undef, %bb.lc ], [ %i.agy, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb5EntryEECsl8OoimOLbh_6qdrant.exit32.i.i ]
  %.sroa.057.0.i = phi i1 [ true, %bb.lc ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb5EntryEECsl8OoimOLbh_6qdrant.exit32.i.i ]
  %.sroa.1160.0.i = phi ptr [ %.sroa.1160.1.i, %bb.lc ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb5EntryEECsl8OoimOLbh_6qdrant.exit32.i.i ]
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager16ConsensusManagerNtNtBL_3toc14TableOfContentEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #18
          to label %_RNvMNtCsl8OoimOLbh_6qdrant9consensusNtB2_9Consensus19process_light_ready.exit.i unwind label %bb.lv, !noalias !1705

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefECsl8OoimOLbh_6qdrant.exit.i43.i: ; preds = %bb.lv, %bb.kt, %.body.i41.i
  %.pn20.i.i = phi { ptr, i32 } [ %i.ahf, %bb.lv ], [ %.pn.i42.i, %bb.kt ], [ %.pn.i42.i, %.body.i41.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3r24GR8eSjc_4raft8raw_node10LightReadyECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bn) #20
          to label %common.resume unwind label %bb.lw, !noalias !1718

bb.lv:                                            ; preds = %.invoke.i.i
  %i.ahf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefECsl8OoimOLbh_6qdrant.exit.i43.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb5EntryEECsl8OoimOLbh_6qdrant.exit.i47.i: ; preds = %bb.lo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1703
  br label %bb.lc

bb.lw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefECsl8OoimOLbh_6qdrant.exit.i43.i, %bb.lk, %bb.kt
  %i.ahg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !1718
  unreachable

_RNvMNtCsl8OoimOLbh_6qdrant9consensusNtB2_9Consensus19process_light_ready.exit.i: ; preds = %.invoke.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1703
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3r24GR8eSjc_4raft8raw_node10LightReadyECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bn), !noalias !1718
  br i1 %.sroa.057.0.i, label %.loopexit, label %bb.lx

.loopexit:                                        ; preds = %_RNvMNtCsl8OoimOLbh_6qdrant9consensusNtB2_9Consensus19process_light_ready.exit.i, %_RNvMNtCsl8OoimOLbh_6qdrant9consensusNtB2_9Consensus19process_light_ready.exit.thread.i
  %.sroa.1160.265.i = phi ptr [ %.sroa.1160.1.i, %_RNvMNtCsl8OoimOLbh_6qdrant9consensusNtB2_9Consensus19process_light_ready.exit.thread.i ], [ %.sroa.1160.0.i, %_RNvMNtCsl8OoimOLbh_6qdrant9consensusNtB2_9Consensus19process_light_ready.exit.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1160.265.i) ]
  br label %bb.nf

bb.lx:                                            ; preds = %_RNvMNtCsl8OoimOLbh_6qdrant9consensusNtB2_9Consensus19process_light_ready.exit.i, %_RNvMNtCsl8OoimOLbh_6qdrant9consensusNtB2_9Consensus19process_light_ready.exit.thread66.i
  %.sroa.7.172.i = phi i8 [ %i.agy, %_RNvMNtCsl8OoimOLbh_6qdrant9consensusNtB2_9Consensus19process_light_ready.exit.thread66.i ], [ %.sroa.7.0.i, %_RNvMNtCsl8OoimOLbh_6qdrant9consensusNtB2_9Consensus19process_light_ready.exit.i ]
  %.sroa.958.171.i = phi i1 [ %3, %_RNvMNtCsl8OoimOLbh_6qdrant9consensusNtB2_9Consensus19process_light_ready.exit.thread66.i ], [ %.sroa.958.0.i, %_RNvMNtCsl8OoimOLbh_6qdrant9consensusNtB2_9Consensus19process_light_ready.exit.i ]
  switch i8 %.sroa.18.2.i, label %default.unreachable [
    i8 -1, label %_RNvMNtCsl8OoimOLbh_6qdrant9consensusNtB2_9Consensus19process_role_change.exit.i
    i8 0, label %bb.ly
    i8 1, label %bb.lz
    i8 2, label %bb.ly
    i8 3, label %bb.lz
  ]

default.unreachable:                              ; preds = %bb.lx
  unreachable

bb.ly:                                            ; preds = %bb.lx, %bb.lx
  %i.ahh = load i64, ptr %i.qh, align 8, !alias.scope !1645, !noalias !1646, !noundef !7
  %i.ahi = icmp eq i64 %i.ahh, 0
  br i1 %i.ahi, label %bb.ma, label %bb.mb

bb.lz:                                            ; preds = %bb.lx, %bb.lx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1647
end_hunk_0
