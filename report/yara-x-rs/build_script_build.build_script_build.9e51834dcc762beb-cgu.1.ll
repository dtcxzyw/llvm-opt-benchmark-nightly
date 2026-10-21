Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/build_script_build.build_script_build.9e51834dcc762beb-cgu.1?download=true
inline.NumInlined: 160
inline.NumDeleted: 97
begin_hunk_0_@_RINvCseVyiZOR58h4_8globwalk4globNtNtCsexYYUdYSQU6_5alloc6string6StringECsdAIXAMGuHRT_18build_script_build:bb.a
bb.n:                                             ; preds = %bb.l
  %i.ay = extractvalue { ptr, i64 } %i.aw, 0
  %i.az = extractvalue { ptr, i64 } %i.aw, 1
  invoke void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path11to_path_buf(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr %i.ay, i64 %i.az)
          to label %bb.r unwind label %bb.m, !noalias !19

bb.o:                                             ; preds = %bb.m
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !19
  unreachable

.body.i.i.i:                                      ; preds = %bb.m
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs5ir8AFLADJ7_12aho_corasick(ptr nonnull align 8 %i.f) #25
          to label %bb.i unwind label %bb.p, !noalias !18

bb.p:                                             ; preds = %.body.i.i.i, %bb.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !18
  unreachable

bb.q:                                             ; preds = %.noexc.i.i, %bb.h
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.q, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bc, %bb.q ], [ %.pn.i.i.i, %bb.i ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECs5ir8AFLADJ7_12aho_corasick(ptr nonnull align 8 %i.i, i64 1)
          to label %.body.i unwind label %bb.s, !noalias !17

bb.r:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bf, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  store i8 0, ptr %i.bg, align 8, !alias.scope !18
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  store i32 0, ptr %i.bh, align 8, !alias.scope !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !17
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECs5ir8AFLADJ7_12aho_corasick(ptr nonnull align 8 %i.i, i64 1)
          to label %_RINvMs2_CseVyiZOR58h4_8globwalkNtB6_17GlobWalkerBuilder3newReNtNtCsexYYUdYSQU6_5alloc6string6StringECsdAIXAMGuHRT_18build_script_build.exit.i unwind label %bb.e, !noalias !14

bb.s:                                             ; preds = %.body.i.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !17
  unreachable

_RINvMs2_CseVyiZOR58h4_8globwalkNtB6_17GlobWalkerBuilder3newReNtNtCsexYYUdYSQU6_5alloc6string6StringECsdAIXAMGuHRT_18build_script_build.exit.i: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !14
  br label %bb.u

bb.t:                                             ; preds = %bb.g
  invoke void @_RNvMsr_NtCsG258MDvU3F_3std4pathNtB5_7PathBuf3newCsdAIXAMGuHRT_18build_script_build(ptr nonnull sret([24 x i8]) align 8 %i.t)
          to label %bb.v unwind label %bb.e, !noalias !14

bb.u:                                             ; preds = %bb.ak, %_RINvMs2_CseVyiZOR58h4_8globwalkNtB6_17GlobWalkerBuilder3newReNtNtCsexYYUdYSQU6_5alloc6string6StringECsdAIXAMGuHRT_18build_script_build.exit.i
  %.sroa.03.4.i = phi i8 [ 1, %bb.ak ], [ 0, %_RINvMs2_CseVyiZOR58h4_8globwalkNtB6_17GlobWalkerBuilder3newReNtNtCsexYYUdYSQU6_5alloc6string6StringECsdAIXAMGuHRT_18build_script_build.exit.i ] ; 2 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsyeC6ktic4j_8tempfile(ptr nonnull align 8 %i.u)
          to label %bb.al unwind label %bb.c, !noalias !14

bb.v:                                             ; preds = %bb.t
  invoke void @_RNvMsr_NtCsG258MDvU3F_3std4pathNtB5_7PathBuf3newCsdAIXAMGuHRT_18build_script_build(ptr nonnull sret([24 x i8]) align 8 %i.s)
          to label %bb.y unwind label %bb.x, !noalias !14

bb.w:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.x
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp14, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bj, %bb.x ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsyeC6ktic4j_8tempfile(ptr nonnull align 8 %i.t) #25
          to label %.body.i unwind label %bb.aw, !noalias !14

bb.x:                                             ; preds = %bb.aj, %bb.v
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.y:                                             ; preds = %bb.v
  %i.bk = invoke { ptr, i64 } @_RNvXsH_NtCsG258MDvU3F_3std4pathNtB5_7PathBufNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 %i.u)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14 ; 2 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ar, %bb.at, %.critedge.i, %bb.av, %bb.ap, %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit.i, %bb.an, %bb.ad, %.backedge.i, %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit12.i, %bb.ah, %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit15.i, %.invoke.i, %bb.af, %bb.ae, %bb.aa, %bb.z, %bb.y
  %lpad.loopexit.split-lp14 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsyeC6ktic4j_8tempfile(ptr nonnull align 8 %i.s) #25
          to label %bb.w unwind label %bb.aw, !noalias !14

bb.z:                                             ; preds = %bb.y
  %i.bl = extractvalue { ptr, i64 } %i.bk, 0
  %i.bm = extractvalue { ptr, i64 } %i.bk, 1
  invoke void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr nonnull sret([64 x i8]) align 8 %i.q, ptr %i.bl, i64 %i.bm)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectNtNtCsG258MDvU3F_3std4path10ComponentsNtB2_12IntoIterator9into_iterCsk8L13k0QrCg_5which(ptr nonnull sret([64 x i8]) align 8 %i.r, ptr nonnull align 8 %i.q)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false), !noalias !14
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.ab
  %.sroa.0.0.i = phi i1 [ false, %bb.ab ], [ %.sroa.0.0.i.be, %.backedge.i.backedge ]
  invoke void @_RNvXsi_NtCsG258MDvU3F_3std4pathNtB5_10ComponentsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr nonnull sret([56 x i8]) align 8 %i.o, ptr nonnull align 8 %i.p)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14

bb.ac:                                            ; preds = %.backedge.i
  %i.bq = load i8, ptr %i.o, align 8, !noalias !14
  %.not.i = icmp eq i8 %i.bq, -1
  br i1 %.not.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 56, i1 false), !noalias !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 56, i1 false), !noalias !14
  %i.br = invoke { ptr, i64 } @_RNvMs4_NtCsG258MDvU3F_3std4pathNtB5_9Component9as_os_strCsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 %i.l)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14 ; 2 uses

bb.ae:                                            ; preds = %bb.ac
  %i.bs = invoke { ptr, i64 } @_RNvXsH_NtCsG258MDvU3F_3std4pathNtB5_7PathBufNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 %i.s)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14 ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.bt = extractvalue { ptr, i64 } %i.bs, 0
  %i.bu = extractvalue { ptr, i64 } %i.bs, 1
  %i.bv = invoke { ptr, i64 } @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path6to_strCsdAIXAMGuHRT_18build_script_build(ptr %i.bt, i64 %i.bu)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14 ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %i.bw = extractvalue { ptr, i64 } %i.bv, 0      ; 2 uses
  %.not.i13.i = icmp eq ptr %i.bw, null
  br i1 %.not.i13.i, label %.invoke.i, label %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit15.i

.invoke.i:                                        ; preds = %bb.ao, %bb.ai, %bb.ag
  %i.bx = phi ptr [ @3, %bb.ai ], [ @2, %bb.ag ], [ @4, %bb.ao ]
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr nonnull align 8 %i.bx) #27
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit15.i: ; preds = %bb.ag
  %i.by = extractvalue { ptr, i64 } %i.bv, 1
  %i.bz = invoke { ptr, i64 } @_RNvXsH_NtCsG258MDvU3F_3std4pathNtB5_7PathBufNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 %i.t)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14 ; 2 uses

bb.ah:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit15.i
  %i.ca = extractvalue { ptr, i64 } %i.bz, 0
  %i.cb = extractvalue { ptr, i64 } %i.bz, 1
  %i.cc = invoke { ptr, i64 } @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path6to_strCsdAIXAMGuHRT_18build_script_build(ptr %i.ca, i64 %i.cb)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14 ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  %i.cd = extractvalue { ptr, i64 } %i.cc, 0      ; 2 uses
  %.not.i10.i = icmp eq ptr %i.cd, null
  br i1 %.not.i10.i, label %.invoke.i, label %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit12.i

_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit12.i: ; preds = %bb.ai
  %i.ce = extractvalue { ptr, i64 } %i.cc, 1
  invoke fastcc void @_RINvMs2_CseVyiZOR58h4_8globwalkNtB6_17GlobWalkerBuilder3newReBV_ECsdAIXAMGuHRT_18build_script_build(ptr noalias nonnull align 8 %i.w, ptr nonnull %i.cd, i64 %i.ce, ptr nonnull %i.bw, i64 %i.by)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit12.i
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsyeC6ktic4j_8tempfile(ptr nonnull align 8 %i.s)
          to label %bb.ak unwind label %bb.x, !noalias !14

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsyeC6ktic4j_8tempfile(ptr nonnull align 8 %i.t)
          to label %bb.u unwind label %bb.e, !noalias !14

bb.al:                                            ; preds = %bb.u
  %i.cf = trunc nuw i8 %.sroa.03.4.i to i1
  br i1 %i.cf, label %bb.am, label %_RINvCseVyiZOR58h4_8globwalk12glob_builderNtNtCsexYYUdYSQU6_5alloc6string6StringECsdAIXAMGuHRT_18build_script_build.exit

bb.am:                                            ; preds = %bb.al
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5ir8AFLADJ7_12aho_corasick(ptr nonnull align 8 %i.v), !noalias !14
  br label %_RINvCseVyiZOR58h4_8globwalk12glob_builderNtNtCsexYYUdYSQU6_5alloc6string6StringECsdAIXAMGuHRT_18build_script_build.exit

bb.an:                                            ; preds = %bb.ad
  %i.cg = extractvalue { ptr, i64 } %i.br, 0
  %i.ch = extractvalue { ptr, i64 } %i.br, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14
  invoke void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %i.cg, i64 %i.ch)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14

bb.ao:                                            ; preds = %bb.an
  %i.ci = load i64, ptr %i.a, align 8, !noalias !14
  %i.cj = trunc nuw i64 %i.ci to i1               ; 2 uses
  %i.ck = load ptr, ptr %i.bn, align 8, !noalias !14 ; 2 uses
  %i.cl = load i64, ptr %i.bo, align 8, !noalias !14
  %.sroa.3.0.i.i = select i1 %i.cj, i64 undef, i64 %i.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14
  %.not.i20.i = icmp eq ptr %i.ck, null
  %.not.i.i = select i1 %i.cj, i1 true, i1 %.not.i20.i
  br i1 %.not.i.i, label %.invoke.i, label %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit.i

_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit.i: ; preds = %bb.ao
  %i.cm = invoke { ptr, i64 } @_RNvXsd_NtCskKLDkoKarTP_4core5arrayARej3_INtNtNtB7_3ops5index5IndexNtNtBH_5range9RangeFullE5indexCsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 @8, ptr nonnull align 8 @9)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14 ; 2 uses

bb.ap:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit.i
  %i.cn = extractvalue { ptr, i64 } %i.cm, 0
  %i.co = extractvalue { ptr, i64 } %i.cm, 1
  %i.cp = invoke { ptr, ptr } @_RNvXs_NtNtCskKLDkoKarTP_4core5slice4iterRSReNtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterCs7w4qHFuqA31_14iana_time_zone(ptr align 8 %i.cn, i64 %i.co)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14 ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  %i.cq = extractvalue { ptr, ptr } %i.cp, 0
  %i.cr = extractvalue { ptr, ptr } %i.cp, 1
  store ptr %i.cq, ptr %i.m, align 8, !noalias !14
  store ptr %i.cr, ptr %i.bp, align 8, !noalias !14
  br label %bb.ar

bb.ar:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core3stre8containsRReECsdAIXAMGuHRT_18build_script_build.exit.i, %bb.aq
  %i.cs = invoke align 8 ptr @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5YNYYMCeUDn_8protobuf(ptr nonnull align 8 %i.m)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14 ; 2 uses

bb.as:                                            ; preds = %bb.ar
  %.not6.i = icmp eq ptr %i.cs, null
  br i1 %.not6.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ct = invoke zeroext i1 @_RNvXss_NtNtCskKLDkoKarTP_4core3str7patternRReNtB5_7Pattern15is_contained_inCsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 %i.cs, ptr %i.ck, i64 %.sroa.3.0.i.i) #24
          to label %_RINvMNtCskKLDkoKarTP_4core3stre8containsRReECsdAIXAMGuHRT_18build_script_build.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14

bb.au:                                            ; preds = %bb.as
  br i1 %.sroa.0.0.i, label %.critedge.i, label %bb.av

_RINvMNtCskKLDkoKarTP_4core3stre8containsRReECsdAIXAMGuHRT_18build_script_build.exit.i: ; preds = %bb.at
  br i1 %i.ct, label %.critedge.i, label %bb.ar

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %i.n, i64 56, i1 false), !noalias !14
  invoke void @_RINvMsr_NtCsG258MDvU3F_3std4pathNtB6_7PathBuf4pushNtB6_9ComponentECsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.k)
          to label %.backedge.i.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14

.critedge.i:                                      ; preds = %_RINvMNtCskKLDkoKarTP_4core3stre8containsRReECsdAIXAMGuHRT_18build_script_build.exit.i, %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %i.n, i64 56, i1 false), !noalias !14
  invoke void @_RINvMsr_NtCsG258MDvU3F_3std4pathNtB6_7PathBuf4pushNtB6_9ComponentECsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.j)
          to label %.backedge.i.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14

.backedge.i.backedge:                             ; preds = %.critedge.i, %bb.av
  %.sroa.0.0.i.be = phi i1 [ true, %.critedge.i ], [ false, %bb.av ]
  br label %.backedge.i

bb.aw:                                            ; preds = %bb.ay, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w, %.body.i
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !14
  unreachable

bb.ax:                                            ; preds = %bb.ay, %bb.b
  resume { ptr, i32 } %.pn.pn.pn.i

bb.ay:                                            ; preds = %bb.b
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5ir8AFLADJ7_12aho_corasick(ptr nonnull align 8 %i.v) #25
          to label %bb.ax unwind label %bb.aw, !noalias !14

_RINvCseVyiZOR58h4_8globwalk12glob_builderNtNtCsexYYUdYSQU6_5alloc6string6StringECsdAIXAMGuHRT_18build_script_build.exit: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @_RNvMs2_CseVyiZOR58h4_8globwalkNtB5_17GlobWalkerBuilder5build(ptr sret([288 x i8]) align 8 %0, ptr nonnull align 8 %i.w)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvCseVyiZOR58h4_8globwalk4globReECsdAIXAMGuHRT_18build_script_build(ptr sret([288 x i8]) align 8 %0, ptr %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [56 x i8], align 8                ; 5 uses
  %i.g = alloca [56 x i8], align 8                ; 6 uses
  %i.h = alloca [64 x i8], align 8                ; 4 uses
  %i.i = alloca [64 x i8], align 8                ; 4 uses
  %i.j = alloca [64 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [136 x i8], align 8               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %1, ptr %i.n, align 8, !noalias !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store i64 %2, ptr %i.p, align 8, !noalias !22
  %i.q = call { ptr, i64 } @_RNvXNtCskKLDkoKarTP_4core7convertReINtB2_5AsRefeE6as_refCs9Fz3Nxyg3zf_14protobuf_parse(ptr nonnull align 8 %i.n) #24, !noalias !22 ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0
  %i.s = extractvalue { ptr, i64 } %i.q, 1
  call void @_RNvXsz_NtCsG258MDvU3F_3std4pathNtB5_7PathBufINtNtCskKLDkoKarTP_4core7convert4FromReE4fromCsfLixTUEF4oz_6ignore(ptr nonnull sret([24 x i8]) align 8 %i.m, ptr %i.r, i64 %i.s) #24, !noalias !22
  %i.t = invoke { ptr, i64 } @_RNvXsH_NtCsG258MDvU3F_3std4pathNtB5_7PathBufNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 %i.m)
          to label %bb.d unwind label %bb.c, !noalias !22 ; 2 uses

bb.b:                                             ; preds = %bb.i, %bb.c
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.i ], [ %i.u, %bb.c ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsyeC6ktic4j_8tempfile(ptr nonnull align 8 %i.m) #25
          to label %bb.ah unwind label %bb.ag, !noalias !22

bb.c:                                             ; preds = %bb.w, %bb.g, %bb.f, %bb.d, %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.v = extractvalue { ptr, i64 } %i.t, 0
  %i.w = extractvalue { ptr, i64 } %i.t, 1
  %i.x = invoke zeroext i1 @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path11is_absolute(ptr %i.v, i64 %i.w)
          to label %bb.e unwind label %bb.c, !noalias !22

bb.e:                                             ; preds = %bb.d
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.n, align 8, !noalias !22
  %i.z = load i64, ptr %i.p, align 8, !noalias !22
  invoke fastcc void @_RINvMs2_CseVyiZOR58h4_8globwalkNtB6_17GlobWalkerBuilder3newReBV_ECsdAIXAMGuHRT_18build_script_build(ptr noalias nonnull align 8 %i.o, ptr nonnull @1, i64 1, ptr %i.y, i64 %i.z)
          to label %_RINvCseVyiZOR58h4_8globwalk12glob_builderReECsdAIXAMGuHRT_18build_script_build.exit unwind label %bb.c

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvMsr_NtCsG258MDvU3F_3std4pathNtB5_7PathBuf3newCsdAIXAMGuHRT_18build_script_build(ptr nonnull sret([24 x i8]) align 8 %i.l)
          to label %bb.h unwind label %bb.c, !noalias !22

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMsr_NtCsG258MDvU3F_3std4pathNtB5_7PathBuf3newCsdAIXAMGuHRT_18build_script_build(ptr nonnull sret([24 x i8]) align 8 %i.k)
          to label %bb.k unwind label %bb.j, !noalias !22

bb.i:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp14, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.aa, %bb.j ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsyeC6ktic4j_8tempfile(ptr nonnull align 8 %i.l) #25
          to label %bb.b unwind label %bb.ag, !noalias !22

bb.j:                                             ; preds = %bb.v, %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  %i.ab = invoke { ptr, i64 } @_RNvXsH_NtCsG258MDvU3F_3std4pathNtB5_7PathBufNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 %i.m)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !22 ; 2 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ab, %bb.ad, %.critedge.i, %bb.af, %bb.z, %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit.i, %bb.x, %bb.p, %.backedge.i, %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit10.i, %bb.t, %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit13.i, %.invoke.i, %bb.r, %bb.q, %bb.m, %bb.l, %bb.k
  %lpad.loopexit.split-lp14 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsyeC6ktic4j_8tempfile(ptr nonnull align 8 %i.k) #25
          to label %bb.i unwind label %bb.ag, !noalias !22

bb.l:                                             ; preds = %bb.k
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0
  %i.ad = extractvalue { ptr, i64 } %i.ab, 1
  invoke void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr nonnull sret([64 x i8]) align 8 %i.i, ptr %i.ac, i64 %i.ad)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !22

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectNtNtCsG258MDvU3F_3std4path10ComponentsNtB2_12IntoIterator9into_iterCsk8L13k0QrCg_5which(ptr nonnull sret([64 x i8]) align 8 %i.j, ptr nonnull align 8 %i.i)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !22

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false), !noalias !22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.n
  %.sroa.0.0.i = phi i1 [ false, %bb.n ], [ %.sroa.0.0.i.be, %.backedge.i.backedge ]
  invoke void @_RNvXsi_NtCsG258MDvU3F_3std4pathNtB5_10ComponentsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr nonnull sret([56 x i8]) align 8 %i.g, ptr nonnull align 8 %i.h)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !22

bb.o:                                             ; preds = %.backedge.i
  %i.ah = load i8, ptr %i.g, align 8, !noalias !22
  %.not.i = icmp eq i8 %i.ah, -1
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !noalias !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !noalias !22
  %i.ai = invoke { ptr, i64 } @_RNvMs4_NtCsG258MDvU3F_3std4pathNtB5_9Component9as_os_strCsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 %i.d)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !22 ; 2 uses

bb.q:                                             ; preds = %bb.o
  %i.aj = invoke { ptr, i64 } @_RNvXsH_NtCsG258MDvU3F_3std4pathNtB5_7PathBufNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 %i.k)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !22 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  %i.am = invoke { ptr, i64 } @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path6to_strCsdAIXAMGuHRT_18build_script_build(ptr %i.ak, i64 %i.al)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !22 ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.an = extractvalue { ptr, i64 } %i.am, 0      ; 2 uses
  %.not.i11.i = icmp eq ptr %i.an, null
  br i1 %.not.i11.i, label %.invoke.i, label %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit13.i

.invoke.i:                                        ; preds = %bb.y, %bb.u, %bb.s
  %i.ao = phi ptr [ @3, %bb.u ], [ @2, %bb.s ], [ @4, %bb.y ]
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr nonnull align 8 %i.ao) #27
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !22

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit13.i: ; preds = %bb.s
  %i.ap = extractvalue { ptr, i64 } %i.am, 1
  %i.aq = invoke { ptr, i64 } @_RNvXsH_NtCsG258MDvU3F_3std4pathNtB5_7PathBufNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 %i.l)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !22 ; 2 uses

bb.t:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit13.i
  %i.ar = extractvalue { ptr, i64 } %i.aq, 0
  %i.as = extractvalue { ptr, i64 } %i.aq, 1
  %i.at = invoke { ptr, i64 } @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path6to_strCsdAIXAMGuHRT_18build_script_build(ptr %i.ar, i64 %i.as)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !22 ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.au = extractvalue { ptr, i64 } %i.at, 0      ; 2 uses
  %.not.i8.i = icmp eq ptr %i.au, null
  br i1 %.not.i8.i, label %.invoke.i, label %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit10.i

_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit10.i: ; preds = %bb.u
  %i.av = extractvalue { ptr, i64 } %i.at, 1
  invoke fastcc void @_RINvMs2_CseVyiZOR58h4_8globwalkNtB6_17GlobWalkerBuilder3newReBV_ECsdAIXAMGuHRT_18build_script_build(ptr noalias nonnull align 8 %i.o, ptr nonnull %i.au, i64 %i.av, ptr nonnull %i.an, i64 %i.ap)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit10.i
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsyeC6ktic4j_8tempfile(ptr nonnull align 8 %i.k)
          to label %bb.w unwind label %bb.j, !noalias !22

bb.w:                                             ; preds = %bb.v
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsyeC6ktic4j_8tempfile(ptr nonnull align 8 %i.l)
          to label %_RINvCseVyiZOR58h4_8globwalk12glob_builderReECsdAIXAMGuHRT_18build_script_build.exit unwind label %bb.c, !noalias !22

bb.x:                                             ; preds = %bb.p
  %i.aw = extractvalue { ptr, i64 } %i.ai, 0
  %i.ax = extractvalue { ptr, i64 } %i.ai, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22
  invoke void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %i.aw, i64 %i.ax)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !22

bb.y:                                             ; preds = %bb.x
  %i.ay = load i64, ptr %i.a, align 8, !noalias !22
  %i.az = trunc nuw i64 %i.ay to i1               ; 2 uses
  %i.ba = load ptr, ptr %i.ae, align 8, !noalias !22 ; 2 uses
  %i.bb = load i64, ptr %i.af, align 8, !noalias !22
  %.sroa.3.0.i.i = select i1 %i.az, i64 undef, i64 %i.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22
  %.not.i16.i = icmp eq ptr %i.ba, null
  %.not.i.i = select i1 %i.az, i1 true, i1 %.not.i16.i
  br i1 %.not.i.i, label %.invoke.i, label %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit.i

_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit.i: ; preds = %bb.y
  %i.bc = invoke { ptr, i64 } @_RNvXsd_NtCskKLDkoKarTP_4core5arrayARej3_INtNtNtB7_3ops5index5IndexNtNtBH_5range9RangeFullE5indexCsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 @8, ptr nonnull align 8 @9)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !22 ; 2 uses

bb.z:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit.i
  %i.bd = extractvalue { ptr, i64 } %i.bc, 0
  %i.be = extractvalue { ptr, i64 } %i.bc, 1
  %i.bf = invoke { ptr, ptr } @_RNvXs_NtNtCskKLDkoKarTP_4core5slice4iterRSReNtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterCs7w4qHFuqA31_14iana_time_zone(ptr align 8 %i.bd, i64 %i.be)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !22 ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.bg = extractvalue { ptr, ptr } %i.bf, 0
  %i.bh = extractvalue { ptr, ptr } %i.bf, 1
  store ptr %i.bg, ptr %i.e, align 8, !noalias !22
  store ptr %i.bh, ptr %i.ag, align 8, !noalias !22
  br label %bb.ab

bb.ab:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core3stre8containsRReECsdAIXAMGuHRT_18build_script_build.exit.i, %bb.aa
  %i.bi = invoke align 8 ptr @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5YNYYMCeUDn_8protobuf(ptr nonnull align 8 %i.e)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !22 ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %.not5.i = icmp eq ptr %i.bi, null
  br i1 %.not5.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bj = invoke zeroext i1 @_RNvXss_NtNtCskKLDkoKarTP_4core3str7patternRReNtB5_7Pattern15is_contained_inCsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 %i.bi, ptr %i.ba, i64 %.sroa.3.0.i.i) #24
          to label %_RINvMNtCskKLDkoKarTP_4core3stre8containsRReECsdAIXAMGuHRT_18build_script_build.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !22

bb.ae:                                            ; preds = %bb.ac
  br i1 %.sroa.0.0.i, label %.critedge.i, label %bb.af

_RINvMNtCskKLDkoKarTP_4core3stre8containsRReECsdAIXAMGuHRT_18build_script_build.exit.i: ; preds = %bb.ad
  br i1 %i.bj, label %.critedge.i, label %bb.ab

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !22
  invoke void @_RINvMsr_NtCsG258MDvU3F_3std4pathNtB6_7PathBuf4pushNtB6_9ComponentECsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.c)
          to label %.backedge.i.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !22

.critedge.i:                                      ; preds = %_RINvMNtCskKLDkoKarTP_4core3stre8containsRReECsdAIXAMGuHRT_18build_script_build.exit.i, %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !22
  invoke void @_RINvMsr_NtCsG258MDvU3F_3std4pathNtB6_7PathBuf4pushNtB6_9ComponentECsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.b)
          to label %.backedge.i.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !22

.backedge.i.backedge:                             ; preds = %.critedge.i, %bb.af
  %.sroa.0.0.i.be = phi i1 [ true, %.critedge.i ], [ false, %bb.af ]
  br label %.backedge.i

bb.ag:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.i, %bb.b
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !22
  unreachable

bb.ah:                                            ; preds = %bb.b
  resume { ptr, i32 } %.pn.pn.i

_RINvCseVyiZOR58h4_8globwalk12glob_builderReECsdAIXAMGuHRT_18build_script_build.exit: ; preds = %bb.f, %bb.w
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsyeC6ktic4j_8tempfile(ptr nonnull align 8 %i.m), !noalias !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @_RNvMs2_CseVyiZOR58h4_8globwalkNtB5_17GlobWalkerBuilder5build(ptr sret([288 x i8]) align 8 %0, ptr nonnull align 8 %i.o)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden align 8 ptr @_RINvMNtCs9Fz3Nxyg3zf_14protobuf_parse6parserNtB3_6Parser5inputRNtNtCsG258MDvU3F_3std4path4PathECsdAIXAMGuHRT_18build_script_build(ptr returned align 8 %0, ptr %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = call { ptr, i64 } @_RNvXNtCskKLDkoKarTP_4core7convertRNtNtCsG258MDvU3F_3std4path4PathINtB2_5AsRefBw_E6as_refCsyeC6ktic4j_8tempfile(ptr nonnull align 8 %i.b) #24 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  call void @_RNvXsV_NtCsG258MDvU3F_3std4pathNtB5_4PathNtNtCsexYYUdYSQU6_5alloc6borrow7ToOwned8to_ownedCsdAIXAMGuHRT_18build_script_build(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %i.f, i64 %i.g) #24
  call void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsG258MDvU3F_3std4path7PathBufE4pushCs9Fz3Nxyg3zf_14protobuf_parse(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.a) #24
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden align 8 ptr @_RINvMNtCs9Fz3Nxyg3zf_14protobuf_parse6parserNtB3_6Parser7includeRNtNtCsG258MDvU3F_3std4path4PathECsdAIXAMGuHRT_18build_script_build(ptr returned align 8 %0, ptr %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.c, align 8
  %i.d = call { ptr, i64 } @_RNvXNtCskKLDkoKarTP_4core7convertRNtNtCsG258MDvU3F_3std4path4PathINtB2_5AsRefBw_E6as_refCsyeC6ktic4j_8tempfile(ptr nonnull align 8 %i.b) #24 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  call void @_RNvXsV_NtCsG258MDvU3F_3std4pathNtB5_4PathNtNtCsexYYUdYSQU6_5alloc6borrow7ToOwned8to_ownedCsdAIXAMGuHRT_18build_script_build(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %i.e, i64 %i.f) #24
  call void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsG258MDvU3F_3std4path7PathBufE4pushCs9Fz3Nxyg3zf_14protobuf_parse(ptr align 8 %0, ptr nonnull align 8 %i.a) #24
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden align 8 ptr @_RINvMNtCs9Fz3Nxyg3zf_14protobuf_parse6parserNtB3_6Parser7includeReECsdAIXAMGuHRT_18build_script_build(ptr returned align 8 %0, ptr %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.c, align 8
  %i.d = call { ptr, i64 } @_RNvXNtCskKLDkoKarTP_4core7convertReINtB2_5AsRefNtNtCsG258MDvU3F_3std4path4PathE6as_refCs7w4qHFuqA31_14iana_time_zone(ptr nonnull align 8 %i.b) #24 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  call void @_RNvXsV_NtCsG258MDvU3F_3std4pathNtB5_4PathNtNtCsexYYUdYSQU6_5alloc6borrow7ToOwned8to_ownedCsdAIXAMGuHRT_18build_script_build(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %i.e, i64 %i.f) #24
  call void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsG258MDvU3F_3std4path7PathBufE4pushCs9Fz3Nxyg3zf_14protobuf_parse(ptr align 8 %0, ptr nonnull align 8 %i.a) #24
  ret ptr %0
}

; Function Attrs: cold nonlazybind uwtable
define hidden noalias nonnull ptr @_RINvMNtCsgQ5TqoB4KuO_6anyhow5errorNtB5_5Error22construct_from_contextNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCskKLDkoKarTP_4core2io5error5ErrorECsdAIXAMGuHRT_18build_script_build(ptr nofree readonly align 8 captures(none) %0, ptr %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %1, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.c = call fastcc ptr @_RINvMNtCsgQ5TqoB4KuO_6anyhow5errorNtB5_5Error9constructINtB3_12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEECsdAIXAMGuHRT_18build_script_build(ptr align 8 %i.b, ptr align 8 %i.a)
  ret ptr %i.c
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias nonnull ptr @_RINvMNtCsgQ5TqoB4KuO_6anyhow5errorNtB5_5Error9constructINtB3_12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEECsdAIXAMGuHRT_18build_script_build(ptr nofree nonnull readonly align 8 captures(none) %0, ptr nofree nonnull readonly align 8 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 5 uses
  store ptr @10, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.d = tail call align 8 dereferenceable_or_null(88) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 range(i64 32, 89) 88, i64 8) #28 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtCsgQ5TqoB4KuO_6anyhow5error9ErrorImplINtBH_12ContextErrorNtNtB4_6string6StringNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEEE3newCsdAIXAMGuHRT_18build_script_build.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 8, i64 88) #29
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgQ5TqoB4KuO_6anyhow5error9ErrorImplINtBE_12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtB4_2io5error5ErrorEEECsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 %i.a) #25
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtCsgQ5TqoB4KuO_6anyhow5error9ErrorImplINtBH_12ContextErrorNtNtB4_6string6StringNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEEE3newCsdAIXAMGuHRT_18build_script_build.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs2_CseVyiZOR58h4_8globwalkNtB6_17GlobWalkerBuilder3newReBV_ECsdAIXAMGuHRT_18build_script_build(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr %1, i64 %2, ptr %3, i64 %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 3 uses
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %4, ptr %i.i, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %1, ptr %i.g, align 8, !noalias !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store i64 %2, ptr %i.j, align 8, !noalias !27
  %i.k = call { ptr, i64 } @_RNvXNtCskKLDkoKarTP_4core7convertReINtB2_5AsRefNtNtCsG258MDvU3F_3std4path4PathE6as_refCs7w4qHFuqA31_14iana_time_zone(ptr nonnull align 8 %i.g) #24, !noalias !27 ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  %i.m = extractvalue { ptr, i64 } %i.k, 1
  call void @_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsG258MDvU3F_3std4path4PathINtB5_4IntoNtBB_7PathBufE4intoCsyeC6ktic4j_8tempfile(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr %i.l, i64 %i.m, ptr nonnull align 8 @11) #24, !noalias !27
  %i.n = invoke { ptr, ptr } @_RNvMNtCskKLDkoKarTP_4core5sliceSRe4iterCsandaSeMDuta_14regex_automata(ptr nonnull align 8 %i.h, i64 1)
          to label %bb.d unwind label %bb.c, !noalias !27 ; 2 uses

bb.b:                                             ; preds = %.body.i, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.z, %.body.i ], [ %i.o, %bb.c ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsyeC6ktic4j_8tempfile(ptr nonnull align 8 %i.f) #25
          to label %bb.j unwind label %bb.i, !noalias !27

bb.c:                                             ; preds = %bb.d, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.p = extractvalue { ptr, ptr } %i.n, 0
  %i.q = extractvalue { ptr, ptr } %i.n, 1
  invoke void @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterReEINvNvMs2_CseVyiZOR58h4_8globwalkNtB1t_17GlobWalkerBuilder13from_patterns17normalize_patternRB1h_EENtNtNtBa_6traits8iterator8Iterator7collectINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB3F_6string6StringEECsdAIXAMGuHRT_18build_script_build(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr %i.p, ptr %i.q)
          to label %bb.e unwind label %bb.c, !noalias !27

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.g, align 8, !noalias !27
end_hunk_0
