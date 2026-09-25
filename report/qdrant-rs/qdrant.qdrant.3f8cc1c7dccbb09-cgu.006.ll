Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.006?download=true
inline.NumInlined: 9333
inline.NumDeleted: 3748
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtB6_15ShardReplicaSet6update0Csl8OoimOLbh_6qdrant:bb.a
  %i.ayw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !13503
  unreachable

_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %.noexc143
  %i.ayx = load <4 x i8>, ptr %i.h, align 8, !noalias !13504
  %.sroa.726.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ayy = load <2 x i8>, ptr %.sroa.726.0..sroa_idx.i, align 4, !noalias !13504
  %.sroa.928.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 6
  %.sroa.928.0.copyload.i = load i16, ptr %.sroa.928.0..sroa_idx.i, align 2, !noalias !13504
  %.sroa.1029.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ayz = load <2 x i64>, ptr %.sroa.1029.0..sroa_idx.i, align 8, !noalias !13504
  %.sroa.1231.24.copyload.i = load i64, ptr %i.g, align 8, !noalias !13504
  %.sroa.1432.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.1432.24.copyload.i = load i8, ptr %.sroa.1432.24..sroa_idx.i, align 8, !noalias !13504
  %.sroa.1533.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.7.sroa.0.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.1533.24..sroa_idx.i, i64 15, i1 false), !noalias !13437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13502
  br label %_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.ue:                                            ; preds = %bb.ua
  call void @llvm.experimental.noalias.scope.decl(metadata !13505)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13506
  %i.aza = getelementptr inbounds nuw i8, ptr %1, i64 432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13507
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aza)
          to label %.noexc144 unwind label %bb.vi

.noexc144:                                        ; preds = %bb.ue
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13507
  %i.azb = getelementptr inbounds nuw i8, ptr %1, i64 456
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.azb)
          to label %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i unwind label %bb.uf, !noalias !13508

bb.uf:                                            ; preds = %.noexc144
  %i.azc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #24
          to label %.body126 unwind label %bb.ug, !noalias !13508

bb.ug:                                            ; preds = %bb.uf
  %i.azd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !13508
  unreachable

_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %.noexc144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !13509
  %i.aze = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aze, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !13509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13507
  switch i64 %i.ayr, label %bb.uh [
    i64 -2, label %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
    i64 -1, label %bb.uz
  ]

bb.uh:                                            ; preds = %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !13510)
  %i.azf = icmp ne i64 %i.ayr, 6
  call void @llvm.assume(i1 %i.azf)
  %i.azg = add nsw i64 %i.ayr, -2
  %i.azh = icmp samesign ugt i64 %i.ayr, 1
  %i.azi = select i1 %i.azh, i64 %i.azg, i64 4
  switch i64 %i.azi, label %bb.ui [
    i64 0, label %bb.uj
    i64 1, label %bb.uk
    i64 2, label %bb.ul
    i64 3, label %bb.um
    i64 4, label %bb.un
    i64 5, label %bb.uw
    i64 6, label %bb.ux
    i64 7, label %bb.uy
  ]

bb.ui:                                            ; preds = %bb.uh
  unreachable

bb.uj:                                            ; preds = %bb.uh
  %i.azj = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.azk = getelementptr inbounds nuw i8, ptr %1, i64 340
  %i.azl = load i8, ptr %i.azk, align 4, !range !59, !alias.scope !13511, !noalias !13512, !noundef !17
  %i.azm = load <4 x i8>, ptr %i.azj, align 8, !alias.scope !13511, !noalias !13512
  %i.azn = insertelement <2 x i8> <i8 poison, i8 undef>, i8 %i.azl, i64 0
  br label %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.uk:                                            ; preds = %bb.uh
  %i.azo = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.azp = load <4 x i8>, ptr %i.azo, align 8, !alias.scope !13511, !noalias !13512
  %i.azq = getelementptr inbounds nuw i8, ptr %1, i64 340
  %i.azr = load <2 x i8>, ptr %i.azq, align 4, !alias.scope !13511, !noalias !13512
  br label %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.ul:                                            ; preds = %bb.uh
  %i.azs = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.azt = load <4 x i8>, ptr %i.azs, align 8, !alias.scope !13511, !noalias !13512
  br label %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.um:                                            ; preds = %bb.uh
  %i.azu = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.azv = getelementptr inbounds nuw i8, ptr %1, i64 338
  %i.azw = load i8, ptr %i.azv, align 2, !range !59, !alias.scope !13511, !noalias !13512, !noundef !17
  %i.azx = load <2 x i8>, ptr %i.azu, align 8, !alias.scope !13511, !noalias !13512
  %i.azy = shufflevector <2 x i8> %i.azx, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.azz = insertelement <4 x i8> poison, i8 %i.azw, i64 0
  %i.baa = shufflevector <4 x i8> %i.azz, <4 x i8> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.bab = shufflevector <4 x i8> %i.azy, <4 x i8> %i.baa, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.un:                                            ; preds = %bb.uh
  call void @llvm.experimental.noalias.scope.decl(metadata !13513)
  %i.bac = getelementptr inbounds nuw i8, ptr %1, i64 429
  %i.bad = load i8, ptr %i.bac, align 1, !range !21, !alias.scope !13514, !noalias !13515, !noundef !17
  %i.bae = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.baf = load i64, ptr %i.bae, align 8, !alias.scope !13514, !noalias !13515
  %i.bag = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.bah = load i64, ptr %i.bag, align 8, !range !20, !alias.scope !13514, !noalias !13515, !noundef !17 ; 2 uses
  %i.bai = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.baj = load i64, ptr %i.bai, align 8, !alias.scope !13514, !noalias !13515
  %i.bak = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.bal = load <2 x i8>, ptr %i.bak, align 8, !alias.scope !13514, !noalias !13515
  %i.bam = getelementptr inbounds nuw i8, ptr %1, i64 426
  %i.ban = load i8, ptr %i.bam, align 2, !range !33, !alias.scope !13514, !noalias !13515, !noundef !17
  %i.bao = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.bap = load i64, ptr %i.bao, align 8, !range !26, !alias.scope !13514, !noalias !13515, !noundef !17 ; 3 uses
  switch i64 %i.bap, label %bb.uo [
    i64 -1, label %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i
    i64 2, label %bb.uv
  ]

bb.uo:                                            ; preds = %bb.un
  call void @llvm.experimental.noalias.scope.decl(metadata !13516)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13517
  %i.baq = trunc nuw i64 %i.bap to i1             ; 2 uses
  br i1 %i.baq, label %bb.up, label %.noexc.i.i.i

bb.up:                                            ; preds = %bb.uo
  %i.bar = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.bas = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_RNvXs0_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNtNtB7_7set_val9SetValZSTENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bas, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bar)
          to label %.noexc.i.i.i unwind label %bb.va, !noalias !13518

.noexc.i.i.i:                                     ; preds = %bb.up, %bb.uo
  %.sroa.0.0.copyload.i.i.i.i.i = phi i64 [ 0, %bb.uo ], [ 1, %bb.up ] ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.c, align 8, !noalias !13517
  %i.bat = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.bau = load i64, ptr %i.bat, align 8, !range !20, !alias.scope !13519, !noalias !13520, !noundef !17
  %i.bav = trunc nuw i64 %i.bau to i1
  br i1 %i.bav, label %bb.uq, label %_RNvXs2M_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_12StopwordsSetNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.uq:                                            ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13517
  %i.baw = getelementptr inbounds nuw i8, ptr %1, i64 400
  invoke void @_RNvXs0_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.baw)
          to label %bb.ut unwind label %bb.ur, !noalias !13520

bb.ur:                                            ; preds = %bb.uq
  %i.bax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.baq, label %bb.us, label %.body.i.i17.i

bb.us:                                            ; preds = %bb.ur
  %i.bay = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNtNtB4_7set_val9SetValZSTENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bay)
          to label %.body.i.i17.i unwind label %bb.uu, !noalias !13520

bb.ut:                                            ; preds = %bb.uq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !13437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13517
  br label %_RNvXs2M_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_12StopwordsSetNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.uu:                                            ; preds = %bb.us
  %i.baz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !13520
  unreachable

_RNvXs2M_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_12StopwordsSetNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i: ; preds = %bb.ut, %.noexc.i.i.i
  %.sroa.0.0.i.i.i.i.i.i113 = phi i64 [ 1, %bb.ut ], [ 0, %.noexc.i.i.i ]
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !13521
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.7.sroa.0.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.0..sroa_idx.i.i.i.i.i, i64 23, i1 false), !noalias !13437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13517
  br label %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.uv:                                            ; preds = %bb.un
  %i.bba = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.bbb = load i8, ptr %i.bba, align 8, !range !13522, !alias.scope !13514, !noalias !13515, !noundef !17
  br label %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %bb.uv, %_RNvXs2M_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_12StopwordsSetNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i, %bb.un
  %.sroa.58.sroa.4.sroa.4.0.i.i.i.i.i = phi i64 [ undef, %bb.un ], [ undef, %bb.uv ], [ %.sroa.0.0.i.i.i.i.i.i113, %_RNvXs2M_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_12StopwordsSetNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ]
  %.sroa.58.sroa.0.0.i.i.i.i.i = phi i8 [ undef, %bb.un ], [ %i.bbb, %bb.uv ], [ %.sroa.4.0.copyload.i.i.i.i.i, %_RNvXs2M_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_12StopwordsSetNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ]
  %.sroa.06.0.i.i.i.i16.i = phi i64 [ %i.bap, %bb.un ], [ 2, %bb.uv ], [ %.sroa.0.0.copyload.i.i.i.i.i, %_RNvXs2M_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_12StopwordsSetNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ]
  %i.bbc = trunc nuw i64 %i.bah to i1
  %.sroa.52.0.i.i.i.i.i = select i1 %i.bbc, i64 %i.baj, i64 undef
  %i.bbd = trunc nuw i64 %i.ayr to i1
  %i.bbe = getelementptr inbounds nuw i8, ptr %1, i64 427
  %i.bbf = getelementptr inbounds nuw i8, ptr %1, i64 430
  %i.bbg = load <2 x i8>, ptr %i.bbf, align 2, !alias.scope !13514, !noalias !13515
  %i.bbh = load <2 x i8>, ptr %i.bbe, align 1, !alias.scope !13514, !noalias !13515
  %.sroa.5.0.i.i.i.i.i = select i1 %i.bbd, i64 %i.baf, i64 undef ; 7 uses
  %.sroa.11.sroa.26.0.extract.shift.i.i.i = lshr i64 %.sroa.5.0.i.i.i.i.i, 24
  %.sroa.11.sroa.19.0.extract.shift.i.i.i = lshr i64 %.sroa.5.0.i.i.i.i.i, 16
  %.sroa.11.sroa.11.0.extract.shift.i.i.i = lshr i64 %.sroa.5.0.i.i.i.i.i, 8
  %.sroa.11.sroa.0.0.extract.trunc.i.i.i = trunc i64 %.sroa.5.0.i.i.i.i.i to i8
  %.sroa.11.sroa.11.0.extract.trunc.i.i.i = trunc i64 %.sroa.11.sroa.11.0.extract.shift.i.i.i to i8
  %.sroa.11.sroa.19.0.extract.trunc.i.i.i = trunc i64 %.sroa.11.sroa.19.0.extract.shift.i.i.i to i8
  %.sroa.11.sroa.26.0.extract.trunc.i.i.i = trunc i64 %.sroa.11.sroa.26.0.extract.shift.i.i.i to i8
  %.sroa.11.sroa.33.0.extract.shift.i.i.i = lshr i64 %.sroa.5.0.i.i.i.i.i, 40
  %.sroa.11.sroa.31.0.extract.shift.i.i.i = lshr i64 %.sroa.5.0.i.i.i.i.i, 32
  %.sroa.11.sroa.31.0.extract.trunc.i.i.i = trunc i64 %.sroa.11.sroa.31.0.extract.shift.i.i.i to i8
  %.sroa.11.sroa.33.0.extract.trunc.i.i.i = trunc i64 %.sroa.11.sroa.33.0.extract.shift.i.i.i to i8
  %.sroa.11.sroa.34.0.extract.shift.i.i.i = lshr i64 %.sroa.5.0.i.i.i.i.i, 48
  %.sroa.11.sroa.34.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.11.sroa.34.0.extract.shift.i.i.i to i16
  %3 = insertelement <4 x i8> poison, i8 %.sroa.11.sroa.0.0.extract.trunc.i.i.i, i64 0
  %4 = insertelement <4 x i8> %3, i8 %.sroa.11.sroa.11.0.extract.trunc.i.i.i, i64 1
  %5 = insertelement <4 x i8> %4, i8 %.sroa.11.sroa.19.0.extract.trunc.i.i.i, i64 2
  %6 = insertelement <4 x i8> %5, i8 %.sroa.11.sroa.26.0.extract.trunc.i.i.i, i64 3
  %i.bbi = insertelement <2 x i64> poison, i64 %i.bah, i64 0
  %i.bbj = insertelement <2 x i64> %i.bbi, i64 %.sroa.52.0.i.i.i.i.i, i64 1
  %7 = insertelement <2 x i8> poison, i8 %.sroa.11.sroa.31.0.extract.trunc.i.i.i, i64 0
  %8 = insertelement <2 x i8> %7, i8 %.sroa.11.sroa.33.0.extract.trunc.i.i.i, i64 1
  %i.bbk = shufflevector <2 x i8> %i.bal, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bbl = shufflevector <2 x i8> %i.bbh, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bbm = shufflevector <2 x i8> %i.bbg, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.uw:                                            ; preds = %bb.uh
  %i.bbn = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.bbo = getelementptr inbounds nuw i8, ptr %1, i64 338
  %i.bbp = load i8, ptr %i.bbo, align 2, !range !59, !alias.scope !13511, !noalias !13512, !noundef !17
  %i.bbq = load <2 x i8>, ptr %i.bbn, align 8, !alias.scope !13511, !noalias !13512
  %i.bbr = shufflevector <2 x i8> %i.bbq, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bbs = insertelement <4 x i8> poison, i8 %i.bbp, i64 0
  %i.bbt = shufflevector <4 x i8> %i.bbs, <4 x i8> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.bbu = shufflevector <4 x i8> %i.bbr, <4 x i8> %i.bbt, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.ux:                                            ; preds = %bb.uh
  %i.bbv = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.bbw = load <4 x i8>, ptr %i.bbv, align 8, !alias.scope !13511, !noalias !13512
  br label %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.uy:                                            ; preds = %bb.uh
  %i.bbx = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.bby = load <4 x i8>, ptr %i.bbx, align 8, !alias.scope !13511, !noalias !13512
  br label %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.uz:                                            ; preds = %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i
  %i.bbz = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.bca = load i8, ptr %i.bbz, align 8, !range !46, !alias.scope !13523, !noalias !13518, !noundef !17
  %i.bcb = insertelement <4 x i8> <i8 poison, i8 undef, i8 undef, i8 undef>, i8 %i.bca, i64 0
  br label %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.va:                                            ; preds = %bb.up
  %i.bcc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i17.i

.body.i.i17.i:                                    ; preds = %bb.va, %bb.us, %bb.ur
  %eh.lpad-body.i.i18.i = phi { ptr, i32 } [ %i.bcc, %bb.va ], [ %i.bax, %bb.us ], [ %i.bax, %bb.ur ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.f) #24
          to label %.body126 unwind label %bb.vb, !noalias !13518

bb.vb:                                            ; preds = %.body.i.i17.i
  %i.bcd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !13518
  unreachable

_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.uz, %bb.uy, %bb.ux, %bb.uw, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, %bb.um, %bb.ul, %bb.uk, %bb.uj, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i
  %.sroa.5.sroa.4.sroa.21.0.i.i.i = phi i8 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.uz ], [ undef, %bb.uj ], [ undef, %bb.uk ], [ undef, %bb.ul ], [ undef, %bb.um ], [ %i.bad, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.uw ], [ undef, %bb.ux ], [ undef, %bb.uy ]
  %.sroa.5.sroa.4.sroa.18.0.i.i.i = phi i8 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.uz ], [ undef, %bb.uj ], [ undef, %bb.uk ], [ undef, %bb.ul ], [ undef, %bb.um ], [ %i.ban, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.uw ], [ undef, %bb.ux ], [ undef, %bb.uy ]
  %.sroa.5.sroa.4.sroa.14.0.i.i.i = phi i64 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.uz ], [ undef, %bb.uj ], [ undef, %bb.uk ], [ undef, %bb.ul ], [ undef, %bb.um ], [ %.sroa.58.sroa.4.sroa.4.0.i.i.i.i.i, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.uw ], [ undef, %bb.ux ], [ undef, %bb.uy ]
  %.sroa.5.sroa.4.sroa.12.0.i.i.i = phi i8 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.uz ], [ undef, %bb.uj ], [ undef, %bb.uk ], [ undef, %bb.ul ], [ undef, %bb.um ], [ %.sroa.58.sroa.0.0.i.i.i.i.i, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.uw ], [ undef, %bb.ux ], [ undef, %bb.uy ]
  %.sroa.5.sroa.4.sroa.11.0.i.i.i = phi i64 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.uz ], [ undef, %bb.uj ], [ undef, %bb.uk ], [ undef, %bb.ul ], [ undef, %bb.um ], [ %.sroa.06.0.i.i.i.i16.i, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.uw ], [ undef, %bb.ux ], [ undef, %bb.uy ]
  %.sroa.5.sroa.4.sroa.8.0.i.i.i = phi i16 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.uz ], [ undef, %bb.uj ], [ undef, %bb.uk ], [ undef, %bb.ul ], [ undef, %bb.um ], [ %.sroa.11.sroa.34.0.extract.trunc.i.i.i, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.uw ], [ undef, %bb.ux ], [ undef, %bb.uy ]
  %.sroa.0.0.i.i12.i = phi i64 [ %i.ayr, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ -1, %bb.uz ], [ 2, %bb.uj ], [ 3, %bb.uk ], [ 4, %bb.ul ], [ 5, %bb.um ], [ %i.ayr, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ 7, %bb.uw ], [ 8, %bb.ux ], [ 9, %bb.uy ]
  %i.bce = phi <4 x i8> [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.bcb, %bb.uz ], [ %i.azm, %bb.uj ], [ %i.azp, %bb.uk ], [ %i.azt, %bb.ul ], [ %i.bab, %bb.um ], [ %6, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %i.bbu, %bb.uw ], [ %i.bbw, %bb.ux ], [ %i.bby, %bb.uy ]
  %i.bcf = phi <2 x i64> [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.uz ], [ undef, %bb.uj ], [ undef, %bb.uk ], [ undef, %bb.ul ], [ undef, %bb.um ], [ %i.bbj, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.uw ], [ undef, %bb.ux ], [ undef, %bb.uy ]
  %i.bcg = phi <2 x i8> [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.uz ], [ %i.azn, %bb.uj ], [ %i.azr, %bb.uk ], [ undef, %bb.ul ], [ undef, %bb.um ], [ %8, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.uw ], [ undef, %bb.ux ], [ undef, %bb.uy ]
  %i.bch = phi <8 x i8> [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.uz ], [ undef, %bb.uj ], [ undef, %bb.uk ], [ undef, %bb.ul ], [ undef, %bb.um ], [ %i.bbk, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.uw ], [ undef, %bb.ux ], [ undef, %bb.uy ]
  %i.bci = phi <8 x i8> [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.uz ], [ undef, %bb.uj ], [ undef, %bb.uk ], [ undef, %bb.ul ], [ undef, %bb.um ], [ %i.bbl, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.uw ], [ undef, %bb.ux ], [ undef, %bb.uy ]
  %i.bcj = phi <8 x i8> [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.uz ], [ undef, %bb.uj ], [ undef, %bb.uk ], [ undef, %bb.ul ], [ undef, %bb.um ], [ %i.bbm, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.uw ], [ undef, %bb.ux ], [ undef, %bb.uy ]
  %.sroa.28.i.sroa.0.0.copyload = load i64, ptr %i.f, align 8, !noalias !13524
  %.sroa.28.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.28.i.sroa.4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.28.i.sroa.4.0..sroa_idx, i64 24, i1 false), !noalias !13524
  %.sroa.28.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.i.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.i.sroa.5.0..sroa_idx, i64 16, i1 false), !noalias !13524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13506
  %i.bck = insertelement <8 x i8> %i.bch, i8 %.sroa.5.sroa.4.sroa.18.0.i.i.i, i64 2
  %i.bcl = shufflevector <8 x i8> %i.bck, <8 x i8> %i.bci, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 poison, i32 poison, i32 poison>
  %i.bcm = insertelement <8 x i8> %i.bcl, i8 %.sroa.5.sroa.4.sroa.21.0.i.i.i, i64 5
  %i.bcn = shufflevector <8 x i8> %i.bcm, <8 x i8> %i.bcj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  br label %_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  %.sroa.28.i.sroa.0.0 = phi i64 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.28.i.sroa.0.0.copyload, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.18.0.i = phi i64 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.5.sroa.4.sroa.14.0.i.i.i, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.16.0.i = phi i8 [ %.sroa.1432.24.copyload.i, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.5.sroa.4.sroa.12.0.i.i.i, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.15.0.i = phi i64 [ %.sroa.1231.24.copyload.i, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.5.sroa.4.sroa.11.0.i.i.i, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.12.0.i = phi i16 [ %.sroa.928.0.copyload.i, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.5.sroa.4.sroa.8.0.i.i.i, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.020.0.i = phi i64 [ -3, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0.0.i.i12.i, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %i.bco = phi <8 x i8> [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ %i.bcn, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %i.bcp = phi <4 x i8> [ %i.ayx, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ %i.bce, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %i.bcq = phi <2 x i64> [ %i.ayz, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ %i.bcf, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %i.bcr = phi <2 x i8> [ %i.ayy, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ %i.bcg, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.27, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.7.sroa.0.i.i.i.i.i, i64 23, i1 false), !noalias !13435
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.29, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i.i.i, i64 24, i1 false), !noalias !13435
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.38.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.28.i.sroa.4, i64 24, i1 false), !noalias !13435
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.i.sroa.5, i64 16, i1 false), !noalias !13435
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.28.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.28.i.sroa.5)
  br label %bb.vj

bb.vc:                                            ; preds = %bb.rb
  %i.bcs = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !13437
  call void @llvm.experimental.noalias.scope.decl(metadata !13525)
  call void @llvm.experimental.noalias.scope.decl(metadata !13526)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13437
  %i.bct = load i64, ptr %i.bcs, align 8, !range !23, !alias.scope !13527, !noalias !13528, !noundef !17
  %i.bcu = icmp eq i64 %i.bct, -1
  br i1 %i.bcu, label %bb.vd, label %bb.ve

bb.vd:                                            ; preds = %bb.vc
  %i.bcv = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bcw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bcv)
          to label %.noexc145 unwind label %bb.vi

.noexc145:                                        ; preds = %bb.vd
  %.sroa.22.8..sroa_idx319.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.22.8.copyload320.pre = load i64, ptr %.sroa.22.8..sroa_idx319.phi.trans.insert, align 8, !noalias !13435
  br label %_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.ve:                                            ; preds = %bb.vc
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bcs)
          to label %.noexc146 unwind label %bb.vi

.noexc146:                                        ; preds = %bb.ve
  %i.bcx = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.bcy = getelementptr inbounds nuw i8, ptr %1, i64 362
  %i.bcz = load i8, ptr %i.bcy, align 2, !range !33, !alias.scope !13527, !noalias !13528, !noundef !17 ; 2 uses
  %i.bda = icmp eq i8 %i.bcz, 2
  %.sroa.06.0.copyload.i.i = load i64, ptr %i.bcx, align 8, !alias.scope !13527, !noalias !13528 ; 2 uses
  br i1 %i.bda, label %bb.vf, label %bb.vg

bb.vf:                                            ; preds = %.noexc146
  %.sroa.58.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 360
  %.sroa.58.0.copyload.i.i = load i8, ptr %.sroa.58.0..sroa_idx.i.i, align 8, !alias.scope !13527, !noalias !13528
  %.sroa.611.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 361
  %.sroa.611.0.copyload.i.i = load i8, ptr %.sroa.611.0..sroa_idx.i.i, align 1, !alias.scope !13527, !noalias !13528
  %.sroa.8.0..sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %1, i64 363
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.8.i.i, ptr noundef nonnull readonly align 1 dereferenceable(5) %.sroa.8.0..sroa_idx.i19.i, i64 5, i1 false), !noalias !13528
  br label %bb.vh

bb.vg:                                            ; preds = %.noexc146
  %i.bdb = getelementptr inbounds nuw i8, ptr %1, i64 361
  %i.bdc = load i8, ptr %i.bdb, align 1, !range !21, !alias.scope !13527, !noalias !13528, !noundef !17
  %i.bdd = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.bde = load i8, ptr %i.bdd, align 8, !range !73, !alias.scope !13527, !noalias !13528, !noundef !17
  br label %bb.vh

bb.vh:                                            ; preds = %bb.vg, %bb.vf
  %.sroa.611.0.i.i = phi i8 [ %.sroa.611.0.copyload.i.i, %bb.vf ], [ %i.bdc, %bb.vg ]
  %.sroa.58.0.i.i = phi i8 [ %.sroa.58.0.copyload.i.i, %bb.vf ], [ %i.bde, %bb.vg ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !13529
  %.sroa.419.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 %.sroa.06.0.copyload.i.i, ptr %.sroa.419.0..sroa_idx.i.i, align 8, !alias.scope !13525, !noalias !13529
  %.sroa.520.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store i8 %.sroa.58.0.i.i, ptr %.sroa.520.0..sroa_idx.i.i, align 8, !alias.scope !13525, !noalias !13529
  %.sroa.621.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 33
  store i8 %.sroa.611.0.i.i, ptr %.sroa.621.0..sroa_idx.i.i, align 1, !alias.scope !13525, !noalias !13529
  %.sroa.722.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 34
  store i8 %i.bcz, ptr %.sroa.722.0..sroa_idx.i.i, align 2, !alias.scope !13525, !noalias !13529
  %.sroa.823.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.823.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.8.i.i, i64 5, i1 false), !noalias !13529
  %.sroa.9.8.copyload291.pre = load i64, ptr %i.y, align 8, !noalias !13435
  br label %_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %bb.vh, %.noexc145
  %.sroa.22.8.copyload320 = phi i64 [ %.sroa.06.0.copyload.i.i, %bb.vh ], [ %.sroa.22.8.copyload320.pre, %.noexc145 ]
  %.sroa.9.8.copyload291 = phi i64 [ %.sroa.9.8.copyload291.pre, %bb.vh ], [ -1, %.noexc145 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13437
  %.sroa.13.8..sroa_idx293 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bdf = load <4 x i8>, ptr %.sroa.13.8..sroa_idx293, align 8, !noalias !13435
  %.sroa.18.8..sroa_idx307 = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.bdg = load <2 x i8>, ptr %.sroa.18.8..sroa_idx307, align 4, !noalias !13435
  %.sroa.20.8..sroa_idx313 = getelementptr inbounds nuw i8, ptr %i.y, i64 14
  %.sroa.20.8.copyload314 = load i16, ptr %.sroa.20.8..sroa_idx313, align 2, !noalias !13435
  %.sroa.21.8..sroa_idx316 = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.bdh = load <2 x i64>, ptr %.sroa.21.8..sroa_idx316, align 8
  %.sroa.23.8..sroa_idx322 = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.sroa.23.8.copyload323 = load i64, ptr %.sroa.23.8..sroa_idx322, align 8, !noalias !13435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !13437
  %i.bdi = insertelement <2 x i64> %i.bdh, i64 %.sroa.22.8.copyload320, i64 1
  br label %bb.vj

bb.vi:                                            ; preds = %bb.ve, %bb.vd, %bb.ue, %bb.ub, %bb.tz, %bb.ty, %bb.tx, %bb.tm, %bb.tl, %bb.te, %bb.sg, %bb.sb, %bb.rz, %bb.rv, %bb.rr, %bb.rq, %bb.ro, %bb.rm, %bb.rl, %bb.ri, %bb.rh
  %i.bdj = landingpad { ptr, i32 }
          cleanup
  br label %.body126

.body126:                                         ; preds = %bb.rj, %bb.sd, %.body.i.i.i, %bb.tf, %bb.ti, %bb.tq, %bb.uc, %bb.uf, %.body.i.i17.i, %bb.vi
  %eh.lpad-body127 = phi { ptr, i32 } [ %i.bdj, %bb.vi ], [ %.pn.i.i.i, %bb.tq ], [ %i.atv, %bb.rj ], [ %i.axp, %bb.ti ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.avc, %bb.sd ], [ %i.axj, %bb.tf ], [ %i.ayv, %bb.uc ], [ %i.azc, %bb.uf ], [ %eh.lpad-body.i.i18.i, %.body.i.i17.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.29)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.38.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.38.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.39)
  br label %bb.vp

bb.vj:                                            ; preds = %_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %_RNvXs2_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_10PayloadOpsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
  %.sroa.38.sroa.0.0 = phi i64 [ %.sroa.38.sroa.0.0.copyload449, %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.5.i.i.i.sroa.17.sroa.0.1, %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.38.sroa.0.0.copyload, %_RNvXs2_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_10PayloadOpsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.28.i.sroa.0.0, %_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %.sroa.28.0 = phi i64 [ %.sroa.28.8.copyload, %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.5.i.i.i.sroa.7.1, %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.28.0.copyload, %_RNvXs2_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_10PayloadOpsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.18.0.i, %_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %.sroa.25.0 = phi i8 [ %.sroa.25.8.copyload, %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.5.i.i.i.sroa.0.1, %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.25.0.copyload, %_RNvXs2_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_10PayloadOpsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.16.0.i, %_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %.sroa.23.0 = phi i64 [ %.sroa.23.8.copyload, %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.9.0.i, %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.23.0.copyload, %_RNvXs2_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_10PayloadOpsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.15.0.i, %_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.23.8.copyload323, %_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %.sroa.20.0 = phi i16 [ %.sroa.20.8.copyload, %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.6.i.sroa.11.0, %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.20.0.copyload, %_RNvXs2_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_10PayloadOpsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.12.0.i, %_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.20.8.copyload314, %_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %.sroa.9.0 = phi i64 [ %.sroa.9.8.copyload, %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.auy, %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.9.0.copyload, %_RNvXs2_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_10PayloadOpsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.020.0.i, %_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.9.8.copyload291, %_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %.sroa.0.0 = phi i64 [ 5, %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ 6, %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.atc, %_RNvXs2_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_10PayloadOpsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ 8, %_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ 9, %_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %i.bdk = phi <8 x i8> [ %i.auw, %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.axv, %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.ayp, %_RNvXs2_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_10PayloadOpsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.bco, %_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %i.bdl = phi <4 x i8> [ %i.aut, %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.axw, %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.aym, %_RNvXs2_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_10PayloadOpsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.bcp, %_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.bdf, %_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %i.bdm = phi <2 x i64> [ %i.auv, %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.axx, %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.ayo, %_RNvXs2_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_10PayloadOpsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.bcq, %_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.bdi, %_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %i.bdn = phi <2 x i8> [ %i.auu, %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.axy, %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.ayn, %_RNvXs2_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_10PayloadOpsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.bcr, %_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.bdg, %_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.0.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.sroa.17.sroa.5)
  %i.bdo = getelementptr inbounds nuw i8, ptr %1, i64 643
  %i.bdp = load i8, ptr %i.bdo, align 1, !range !33, !noundef !17
  %i.bdq = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.bdr = load i64, ptr %i.bdq, align 8
  %i.bds = getelementptr inbounds nuw i8, ptr %1, i64 584
  %i.bdt = load i32, ptr %i.bds, align 8, !range !60, !noundef !17
  %i.bdu = getelementptr inbounds nuw i8, ptr %1, i64 644
  %i.bdv = load i8, ptr %i.bdu, align 4, !range !28, !noundef !17
  %i.bdw = getelementptr inbounds nuw i8, ptr %1, i64 592
  call void @llvm.experimental.noalias.scope.decl(metadata !13530)
  %i.bdx = load ptr, ptr %i.bdw, align 8, !alias.scope !13530, !noalias !13531, !nonnull !17, !noundef !17 ; 2 uses
  %i.bdy = atomicrmw add ptr %i.bdx, i64 1 monotonic, align 8, !noalias !13532
  %i.bdz = icmp slt i64 %i.bdy, 0
  br i1 %i.bdz, label %bb.vl, label %bb.vk

bb.vk:                                            ; preds = %bb.vj
  %i.bea = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.beb = load ptr, ptr %i.bea, align 8, !alias.scope !13530, !noalias !13531, !nonnull !17, !noundef !17 ; 2 uses
  %i.bec = atomicrmw add ptr %i.beb, i64 1 monotonic, align 8, !noalias !13532
  %i.bed = icmp slt i64 %i.bec, 0
  br i1 %i.bed, label %bb.vn, label %bb.vm

bb.vl:                                            ; preds = %bb.vj
  call void @llvm.trap()
  unreachable

bb.vm:                                            ; preds = %bb.vk
  %i.bee = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.bef = load i8, ptr %i.bee, align 8, !range !28, !alias.scope !13530, !noalias !13531, !noundef !17
  %i.beg = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.beh = load ptr, ptr %i.beg, align 8, !alias.scope !13530, !noalias !13531, !nonnull !17, !noundef !17 ; 2 uses
  %i.bei = atomicrmw add ptr %i.beh, i64 1 monotonic, align 8, !noalias !13532
  %i.bej = icmp slt i64 %i.bei, 0
  br i1 %i.bej, label %bb.vo, label %.thread433

bb.vn:                                            ; preds = %bb.vk
  call void @llvm.trap()
  unreachable

bb.vo:                                            ; preds = %bb.vm
  call void @llvm.trap()
  unreachable

.thread433:                                       ; preds = %bb.vm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.0196.sroa.20, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.27, i64 23, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0196.sroa.22, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.29, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0196.sroa.31.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.38.sroa.8, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0196.sroa.31.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.sroa.9, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0196.sroa.32, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.39, i64 96, i1 false)
end_hunk_0
