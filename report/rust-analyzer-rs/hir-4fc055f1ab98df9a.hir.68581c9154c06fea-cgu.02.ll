Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir-4fc055f1ab98df9a.hir.68581c9154c06fea-cgu.02?download=true
inline.NumInlined: 2591
inline.NumDeleted: 990
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB6_13SemanticsImpl24descend_into_macros_implNtNtCshzWfHUSfYae_4core7convert10InfallibleEB8_:bb.a
bb.fk:                                            ; preds = %._crit_edge.i.i.i
  %i.tj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBN_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherB1q_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEj2_ENtNtNtB2k_3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.ap)
          to label %.body92.i.i.i unwind label %bb.fm, !noalias !258

bb.fl:                                            ; preds = %._crit_edge.i.i.i
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBN_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherB1q_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEj2_ENtNtNtB2k_3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.ap)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterATNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtB1g_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1T_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEj2_EECs8Xq8PKFYOms_3hir.exit.i.i.i unwind label %.loopexit97, !noalias !258

bb.fm:                                            ; preds = %bb.fk
  %i.tk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26, !noalias !258
  unreachable

.thread147.i.i.i:                                 ; preds = %.body190, %bb.fu, %.body101.i.i.i, %bb.fs
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body191, %.body190 ], [ %i.uq, %bb.fs ], [ %eh.lpad-body102.i.i.i, %bb.fu ], [ %eh.lpad-body102.i.i.i, %.body101.i.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterATNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtB1g_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1T_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEj2_EECs8Xq8PKFYOms_3hir(ptr noalias nofree noundef align 8 dereferenceable(104) %i.ap) #27
          to label %.body92.i.i.i unwind label %bb.ga, !noalias !258

.lr.ph.i.i.i:                                     ; preds = %bb.fj, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECs8Xq8PKFYOms_3hir.exit97.i.i.i
  %i.tl = phi i64 [ %i.vr, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECs8Xq8PKFYOms_3hir.exit97.i.i.i ], [ %i.tg, %bb.fj ] ; 2 uses
  %i.tm = add i64 %i.tl, 1
  store i64 %i.tm, ptr %i.gi, align 8, !noalias !257
  %i.tn = load i64, ptr %i.gk, align 8, !alias.scope !267, !noalias !257, !noundef !6
  %i.to = icmp ugt i64 %i.tn, 2
  %i.tp = load ptr, ptr %i.ap, align 8, !alias.scope !267, !noalias !257, !nonnull !6
  %.sink11.i.i.i.i = select i1 %i.to, ptr %i.tp, ptr %i.ap
  %i.tq = getelementptr inbounds nuw [40 x i8], ptr %.sink11.i.i.i.i, i64 %i.tl ; 3 uses
  %.sroa.036.0.copyload.i.i.i = load i32, ptr %i.tq, align 8, !noalias !258
  %.sroa.437.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.tq, i64 4
  %.sroa.437.0.copyload.i.i.i = load i32, ptr %.sroa.437.0..sroa_idx.i.i.i, align 4, !noalias !258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !257
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.tr, i64 24, i1 false), !noalias !258
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ts = load ptr, ptr %i.ge, align 16, !alias.scope !268, !noalias !258, !nonnull !6, !align !8, !noundef !6
  %i.tt = load ptr, ptr %i.at, align 16, !alias.scope !268, !noalias !258, !nonnull !6, !noundef !6
  %i.tu = load ptr, ptr %i.gd, align 8, !alias.scope !268, !noalias !258, !nonnull !6, !align !8, !noundef !6
  %i.tv = invoke noundef nonnull align 8 ptr @_RNvMNtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB2_16SourceToDefCache23get_or_insert_expansion(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.ts, ptr noundef nonnull %i.tt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %i.tu, i32 noundef range(i32 1, 0) %.sroa.036.0.copyload.i.i.i, i32 noundef %.sroa.437.0.copyload.i.i.i)
          to label %.noexc188 unwind label %bb.gb ; 3 uses

.noexc188:                                        ; preds = %.lr.ph.i.i.i
  %.sroa.03.0.copyload.i = load i32, ptr %i.cc, align 16, !noalias !270 ; 2 uses
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..0.val.sroa_idx.i193, align 4, !noalias !270 ; 2 uses
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..0.val.sroa_idx.i195, align 8, !noalias !270 ; 2 uses
  %.sroa.64.0.copyload.i = load i32, ptr %.sroa.64.0..0.val.sroa_idx.i197, align 4, !noalias !270
  %.sroa.64.0.copyload.i.i.i.i.fr = freeze i32 %.sroa.64.0.copyload.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !271), !noalias !258
  %i.tw = icmp eq i32 %.sroa.64.0.copyload.i.i.i.i.fr, -1610612736
  br i1 %i.tw, label %.split.preheader.i.preheader.i.i.i, label %bb.fn

bb.fn:                                            ; preds = %.noexc188
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tv, i64 56
  %i.ty = load ptr, ptr %i.tx, align 8, !alias.scope !271, !noalias !270, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  %i.ua = load ptr, ptr %i.tz, align 8, !noalias !272, !nonnull !6, !noundef !6 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ty, i64 16
  %i.uc = load i64, ptr %i.ub, align 8, !noalias !272, !noundef !6
  %i.ud = getelementptr inbounds nuw [24 x i8], ptr %i.ua, i64 %i.uc
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tv, i64 40
  store i64 0, ptr %i.g, align 8, !noalias !270
  store i64 0, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !270
  store ptr %i.ua, ptr %.sroa.825.0..sroa_idx.i, align 8, !noalias !270
  store ptr %i.ud, ptr %.sroa.926.0..sroa_idx.i, align 8, !noalias !270
  store i64 0, ptr %.sroa.1027.0..sroa_idx.i, align 8, !noalias !270
  store ptr %i.ty, ptr %.sroa.1128.0..sroa_idx.i, align 8, !noalias !270
  store i32 %.sroa.03.0.copyload.i, ptr %.sroa.1229.0..sroa_idx.i, align 8, !noalias !270
  store i32 %.sroa.4.0.copyload.i, ptr %.sroa.1330.0..sroa_idx.i, align 4, !noalias !270
  store i32 %.sroa.5.0.copyload.i, ptr %.sroa.1431.0..sroa_idx.i, align 8, !noalias !270
  store i32 %.sroa.64.0.copyload.i.i.i.i.fr, ptr %.sroa.1532.0..sroa_idx.i, align 4, !noalias !270
  store ptr %i.tv, ptr %.sroa.1633.0..sroa_idx.i, align 8, !noalias !270
  %i.uf = load <2 x i32>, ptr %i.ue, align 8, !alias.scope !271, !noalias !270
  store <2 x i32> %i.uf, ptr %.sroa.1734.0..sroa_idx.i, align 8, !noalias !270
  invoke void @_RINvMs6_NtCs33K2ylI4knu_10hir_expand5filesINtB6_13InFileWrapperNtB8_11MacroCallIdINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlatMapINtNtB1m_10filter_map9FilterMapINtNtB1m_9enumerate9EnumerateINtNtNtB1q_5slice4iter4IterTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEENCNvMNtB4k_3mapNtB4Q_7SpanMap16ranges_with_span0EINtNtB1q_6option6OptionTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtB4k_7hygiene13SyntaxContextEENCNvMsd_B8_NtB8_13ExpansionInfo14map_range_down0EE3mapINvYINtCsjpcu9PwIgok_8smallvec8SmallVecAB5V_j2_EINtNtNtB1o_6traits7collect12FromIteratorB5V_E9from_iterB1h_EB8W_ECs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %i.g)
          to label %.noexc189 unwind label %bb.gb

.noexc189:                                        ; preds = %bb.fn
  %.sroa.554.0.copyload.i = load i64, ptr %.sroa.554.0..sroa_idx.i, align 8, !noalias !270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !270
  store i32 1, ptr %i.f, align 8, !noalias !270
  %i.ug = load <2 x i32>, ptr %i.e, align 8, !noalias !270
  store <2 x i32> %i.ug, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !270
  %i.uh = load <2 x i64>, ptr %i.gr, align 8, !noalias !270
  store <2 x i64> %i.uh, ptr %i.gs, align 8, !noalias !270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.559.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gq, i64 16, i1 false), !noalias !270
  store i64 %.sroa.554.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !270
  %i.ui = load i64, ptr %i.dx, align 8, !alias.scope !273, !noalias !258, !noundef !6 ; 3 uses
  %i.uj = load i64, ptr %i.ca, align 8, !range !13, !alias.scope !273, !noalias !258, !noundef !6
  %i.uk = icmp eq i64 %i.ui, %i.uj
  br i1 %i.uk, label %bb.fo, label %bb.fr

bb.fo:                                            ; preds = %.noexc189
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtCs33K2ylI4knu_10hir_expand9HirFileIdINtCsjpcu9PwIgok_8smallvec8SmallVecATINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEj2_EEE8grow_oneCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ca)
          to label %bb.fr unwind label %bb.fp, !noalias !274

bb.fp:                                            ; preds = %bb.fo
  %i.ul = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.gs)
          to label %.body190 unwind label %bb.fq, !noalias !275

bb.fq:                                            ; preds = %bb.fp
  %i.um = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26, !noalias !275
  unreachable

bb.fr:                                            ; preds = %bb.fo, %.noexc189
  %i.un = load ptr, ptr %i.dw, align 8, !alias.scope !273, !noalias !258, !nonnull !6, !noundef !6
  %i.uo = getelementptr inbounds nuw [56 x i8], ptr %i.un, i64 %i.ui
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.uo, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !275
  %i.up = add i64 %i.ui, 1
  store i64 %i.up, ptr %i.dx, align 8, !alias.scope !273, !noalias !258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !270
  br label %.split.preheader.i.preheader.i.i.i

bb.fs:                                            ; preds = %_RNvXsI_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEINtB22_8IntoIterB2l_EENtNtNtB9_6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit.thread.i.i.i
  %i.uq = landingpad { ptr, i32 }
          cleanup
  br label %.thread147.i.i.i

.split.preheader.i.preheader.i.i.i:               ; preds = %bb.fr, %.noexc188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ur = load ptr, ptr %i.gl, align 8, !noalias !257, !nonnull !6, !noundef !6 ; 5 uses
  %i.us = load i64, ptr %i.ao, align 8, !range !13, !noalias !257, !noundef !6
  %i.ut = load i64, ptr %i.gm, align 8, !noalias !257, !noundef !6 ; 2 uses
  %i.uu = icmp ult i64 %i.ut, 768614336404564651
  call void @llvm.assume(i1 %i.uu)
  %i.uv = getelementptr inbounds nuw [12 x i8], ptr %i.ur, i64 %i.ut ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !257
  store ptr %i.ur, ptr %i.an, align 8, !noalias !257
  store ptr %i.ur, ptr %.sroa.049.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !257
  store i64 %i.us, ptr %.sroa.049.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !257
  store ptr %i.uv, ptr %.sroa.049.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !257
  store i32 -1, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !257
  store i32 -1, ptr %.sroa.450.0..sroa_idx.i.i.i, align 4, !noalias !257
  %i.uw = icmp eq i32 %.sroa.64.0.copyload.i.i.i.i.fr, -1610612736
  br i1 %i.uw, label %.split.preheader.i.i.i.i.us, label %.split.preheader.i.i.i.i

.split.preheader.i.i.i.i.us:                      ; preds = %.split.preheader.i.preheader.i.i.i, %.backedge.i.i.i.us
  %i.ux = phi ptr [ %i.vh, %.backedge.i.i.i.us ], [ %i.uv, %.split.preheader.i.preheader.i.i.i ] ; 2 uses
  %i.uy = phi ptr [ %i.vi, %.backedge.i.i.i.us ], [ %i.ur, %.split.preheader.i.preheader.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %.promoted.i94.i.i.i.us = load ptr, ptr %.sroa.049.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !276, !noalias !257
  br label %.split.i.i.i.i.us

.split.i.i.i.i.us:                                ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEINtB5_8FuseImplBY_E4nextCs8Xq8PKFYOms_3hir.exit.i.i.i.i.us, %.split.preheader.i.i.i.i.us
  %i.uz = phi ptr [ %i.vb, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEINtB5_8FuseImplBY_E4nextCs8Xq8PKFYOms_3hir.exit.i.i.i.i.us ], [ %.promoted.i94.i.i.i.us, %.split.preheader.i.i.i.i.us ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !277)
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.va = icmp eq ptr %i.uz, %i.ux
  br i1 %i.va, label %_RNvXsI_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEINtB22_8IntoIterB2l_EENtNtNtB9_6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit.thread.i.i.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEINtB5_8FuseImplBY_E4nextCs8Xq8PKFYOms_3hir.exit.i.i.i.i.us

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEINtB5_8FuseImplBY_E4nextCs8Xq8PKFYOms_3hir.exit.i.i.i.i.us: ; preds = %.split.i.i.i.i.us
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uz, i64 12 ; 2 uses
  store ptr %i.vb, ptr %.sroa.049.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !279, !noalias !257
  %.sroa.0.0.copyload2.i.i.i.i.us = load i32, ptr %i.uz, align 4, !noalias !280 ; 2 uses
  switch i32 %.sroa.0.0.copyload2.i.i.i.i.us, label %_RNvXsI_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEINtB22_8IntoIterB2l_EENtNtNtB9_6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit.i.i.i.us [
    i32 -1, label %_RNvXsI_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEINtB22_8IntoIterB2l_EENtNtNtB9_6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit.thread.i.i.i
    i32 2, label %.split.i.i.i.i.us
  ]

_RNvXsI_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEINtB22_8IntoIterB2l_EENtNtNtB9_6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit.i.i.i.us: ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEINtB5_8FuseImplBY_E4nextCs8Xq8PKFYOms_3hir.exit.i.i.i.i.us
  %i.vc = trunc i32 %.sroa.0.0.copyload2.i.i.i.i.us to i1
  br i1 %i.vc, label %.backedge.i.i.i.us, label %bb.ft

bb.ft:                                            ; preds = %_RNvXsI_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEINtB22_8IntoIterB2l_EENtNtNtB9_6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit.i.i.i.us
  %.sroa.9.0..sroa_idx3.le.i.i.i.i.us = getelementptr inbounds nuw i8, ptr %i.uz, i64 4
  %.sroa.9.0.copyload4.le.i.i.i.i.us = load i64, ptr %.sroa.9.0..sroa_idx3.le.i.i.i.i.us, align 4, !noalias !280 ; 2 uses
  %.sroa.7.8.extract.shift.i.i.i.us = lshr i64 %.sroa.9.0.copyload4.le.i.i.i.i.us, 32
  %.sroa.7.8.extract.trunc.i.i.i.us = trunc nuw i64 %.sroa.7.8.extract.shift.i.i.i.us to i32
  %.sroa.7.4.extract.trunc.i.i.i.us = trunc i64 %.sroa.9.0.copyload4.le.i.i.i.i.us to i32
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  call void @llvm.experimental.noalias.scope.decl(metadata !282)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !257
  %i.vd = load ptr, ptr %i.ge, align 16, !alias.scope !283, !noalias !255, !nonnull !6, !align !8, !noundef !6
  %i.ve = load ptr, ptr %i.at, align 16, !alias.scope !283, !noalias !255, !nonnull !6, !noundef !6
  %i.vf = load ptr, ptr %i.gd, align 8, !alias.scope !283, !noalias !255, !nonnull !6, !align !8, !noundef !6
  %i.vg = invoke noundef nonnull align 8 ptr @_RNvMNtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB2_16SourceToDefCache23get_or_insert_expansion(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.vd, ptr noundef nonnull %i.ve, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %i.vf, i32 noundef range(i32 1, 0) %.sroa.7.4.extract.trunc.i.i.i.us, i32 noundef %.sroa.7.8.extract.trunc.i.i.i.us)
          to label %.noexc99.i.i.i.us unwind label %.split.loopexit.split-lp, !noalias !258 ; 0 uses

.noexc99.i.i.i.us:                                ; preds = %bb.ft
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !257
  %.pre.i.i.i.us = load ptr, ptr %i.an, align 8, !alias.scope !285, !noalias !257
  %.pre186.i.i.i.us = load ptr, ptr %.sroa.049.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !286, !noalias !257
  br label %.backedge.i.i.i.us

.backedge.i.i.i.us:                               ; preds = %.noexc99.i.i.i.us, %_RNvXsI_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEINtB22_8IntoIterB2l_EENtNtNtB9_6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit.i.i.i.us
  %i.vh = phi ptr [ %.pre186.i.i.i.us, %.noexc99.i.i.i.us ], [ %i.ux, %_RNvXsI_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEINtB22_8IntoIterB2l_EENtNtNtB9_6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit.i.i.i.us ]
  %i.vi = phi ptr [ %.pre.i.i.i.us, %.noexc99.i.i.i.us ], [ %i.uy, %_RNvXsI_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEINtB22_8IntoIterB2l_EENtNtNtB9_6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit.i.i.i.us ] ; 2 uses
  %.not.i.i.i.i154.i.us = icmp eq ptr %i.vi, null
  br i1 %.not.i.i.i.i154.i.us, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECs8Xq8PKFYOms_3hir.exit97.i.i.i, label %.split.preheader.i.i.i.i.us

.split.preheader.i.i.i.i:                         ; preds = %.split.preheader.i.preheader.i.i.i, %.backedge.i.i.i
  %i.vj = phi ptr [ %i.wr, %.backedge.i.i.i ], [ %i.uv, %.split.preheader.i.preheader.i.i.i ] ; 2 uses
  %i.vk = phi ptr [ %i.ws, %.backedge.i.i.i ], [ %i.ur, %.split.preheader.i.preheader.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %.promoted.i94.i.i.i = load ptr, ptr %.sroa.049.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !276, !noalias !257
  br label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEINtB5_8FuseImplBY_E4nextCs8Xq8PKFYOms_3hir.exit.i.i.i.i, %.split.preheader.i.i.i.i
  %i.vl = phi ptr [ %i.vn, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEINtB5_8FuseImplBY_E4nextCs8Xq8PKFYOms_3hir.exit.i.i.i.i ], [ %.promoted.i94.i.i.i, %.split.preheader.i.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !277)
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.vm = icmp eq ptr %i.vl, %i.vj
  br i1 %i.vm, label %_RNvXsI_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEINtB22_8IntoIterB2l_EENtNtNtB9_6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit.thread.i.i.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEINtB5_8FuseImplBY_E4nextCs8Xq8PKFYOms_3hir.exit.i.i.i.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEINtB5_8FuseImplBY_E4nextCs8Xq8PKFYOms_3hir.exit.i.i.i.i: ; preds = %.split.i.i.i.i
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vl, i64 12 ; 2 uses
  store ptr %i.vn, ptr %.sroa.049.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !279, !noalias !257
  %.sroa.0.0.copyload2.i.i.i.i = load i32, ptr %i.vl, align 4, !noalias !280 ; 2 uses
  switch i32 %.sroa.0.0.copyload2.i.i.i.i, label %_RNvXsI_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEINtB22_8IntoIterB2l_EENtNtNtB9_6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit.i.i.i [
    i32 -1, label %_RNvXsI_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEINtB22_8IntoIterB2l_EENtNtNtB9_6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit.thread.i.i.i
    i32 2, label %.split.i.i.i.i
  ]

.split.loopexit.split-lp:                         ; preds = %bb.ft, %bb.fv, %.noexc99.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body101.i.i.i

.body101.i.i.i:                                   ; preds = %.split.loopexit.split-lp, %bb.fx
  %eh.lpad-body102.i.i.i = phi { ptr, i32 } [ %i.wm, %bb.fx ], [ %lpad.loopexit.split-lp, %.split.loopexit.split-lp ] ; 2 uses
  %i.vo = load ptr, ptr %i.an, align 8, !alias.scope !287, !noalias !257, !noundef !6
  %i.vp = icmp eq ptr %i.vo, null
  br i1 %i.vp, label %.thread147.i.i.i, label %bb.fu

bb.fu:                                            ; preds = %.body101.i.i.i
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEENtNtNtB11_3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.an)
          to label %.thread147.i.i.i unwind label %bb.ga, !noalias !258

_RNvXsI_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEINtB22_8IntoIterB2l_EENtNtNtB9_6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit.i.i.i: ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEINtB5_8FuseImplBY_E4nextCs8Xq8PKFYOms_3hir.exit.i.i.i.i
  %i.vq = trunc i32 %.sroa.0.0.copyload2.i.i.i.i to i1
  br i1 %i.vq, label %.backedge.i.i.i, label %bb.fv

_RNvXsI_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEINtB22_8IntoIterB2l_EENtNtNtB9_6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit.thread.i.i.i: ; preds = %.split.i.i.i.i, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEINtB5_8FuseImplBY_E4nextCs8Xq8PKFYOms_3hir.exit.i.i.i.i, %.split.i.i.i.i.us, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEINtB5_8FuseImplBY_E4nextCs8Xq8PKFYOms_3hir.exit.i.i.i.i.us
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEENtNtNtB11_3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.an)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECs8Xq8PKFYOms_3hir.exit97.i.i.i unwind label %bb.fs, !noalias !258

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECs8Xq8PKFYOms_3hir.exit97.i.i.i: ; preds = %.backedge.i.i.i, %.backedge.i.i.i.us, %_RNvXsI_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEINtB22_8IntoIterB2l_EENtNtNtB9_6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !257
  %i.vr = load i64, ptr %i.gi, align 8, !noalias !257, !noundef !6 ; 2 uses
  %i.vs = load i64, ptr %i.gj, align 8, !noalias !257, !noundef !6
  %i.vt = icmp eq i64 %i.vr, %i.vs
  br i1 %i.vt, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.fv:                                            ; preds = %_RNvXsI_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEINtB22_8IntoIterB2l_EENtNtNtB9_6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit.i.i.i
  %.sroa.9.0..sroa_idx3.le.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.vl, i64 4
  %.sroa.9.0.copyload4.le.i.i.i.i = load i64, ptr %.sroa.9.0..sroa_idx3.le.i.i.i.i, align 4, !noalias !280 ; 2 uses
  %.sroa.7.8.extract.shift.i.i.i = lshr i64 %.sroa.9.0.copyload4.le.i.i.i.i, 32
  %.sroa.7.8.extract.trunc.i.i.i = trunc nuw i64 %.sroa.7.8.extract.shift.i.i.i to i32
  %.sroa.7.4.extract.trunc.i.i.i = trunc i64 %.sroa.9.0.copyload4.le.i.i.i.i to i32
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  call void @llvm.experimental.noalias.scope.decl(metadata !282)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !257
  %i.vu = load ptr, ptr %i.ge, align 16, !alias.scope !283, !noalias !255, !nonnull !6, !align !8, !noundef !6
  %i.vv = load ptr, ptr %i.at, align 16, !alias.scope !283, !noalias !255, !nonnull !6, !noundef !6
  %i.vw = load ptr, ptr %i.gd, align 8, !alias.scope !283, !noalias !255, !nonnull !6, !align !8, !noundef !6
  %i.vx = invoke noundef nonnull align 8 ptr @_RNvMNtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB2_16SourceToDefCache23get_or_insert_expansion(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.vu, ptr noundef nonnull %i.vv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %i.vw, i32 noundef range(i32 1, 0) %.sroa.7.4.extract.trunc.i.i.i, i32 noundef %.sroa.7.8.extract.trunc.i.i.i)
          to label %.noexc99.i.i.i unwind label %.split.loopexit.split-lp, !noalias !258 ; 3 uses

.noexc99.i.i.i:                                   ; preds = %bb.fv
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 56
  %i.vz = load ptr, ptr %i.vy, align 8, !alias.scope !284, !noalias !288, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 8
  %i.wb = load ptr, ptr %i.wa, align 8, !noalias !289, !nonnull !6, !noundef !6 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vz, i64 16
  %i.wd = load i64, ptr %i.wc, align 8, !noalias !289, !noundef !6
  %i.we = getelementptr inbounds nuw [24 x i8], ptr %i.wb, i64 %i.wd
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vx, i64 40
  store i64 0, ptr %i.af, align 8, !noalias !290
  store i64 0, ptr %.sroa.623.0..sroa_idx.i.i.i.i, align 8, !noalias !290
  store ptr %i.wb, ptr %.sroa.825.0..sroa_idx.i.i.i.i, align 8, !noalias !290
  store ptr %i.we, ptr %.sroa.926.0..sroa_idx.i.i.i.i, align 8, !noalias !290
  store i64 0, ptr %.sroa.1027.0..sroa_idx.i.i.i.i, align 8, !noalias !290
  store ptr %i.vz, ptr %.sroa.1128.0..sroa_idx.i.i.i.i, align 8, !noalias !290
  store i32 %.sroa.03.0.copyload.i, ptr %.sroa.1229.0..sroa_idx.i.i.i.i, align 8, !noalias !290
  store i32 %.sroa.4.0.copyload.i, ptr %.sroa.1330.0..sroa_idx.i.i.i.i, align 4, !noalias !290
  store i32 %.sroa.5.0.copyload.i, ptr %.sroa.1431.0..sroa_idx.i.i.i.i, align 8, !noalias !290
  store i32 %.sroa.64.0.copyload.i.i.i.i.fr, ptr %.sroa.1532.0..sroa_idx.i.i.i.i, align 4, !noalias !290
  store ptr %i.vx, ptr %.sroa.1633.0..sroa_idx.i.i.i.i, align 8, !noalias !290
  %i.wg = load <2 x i32>, ptr %i.wf, align 8, !alias.scope !284, !noalias !288
  store <2 x i32> %i.wg, ptr %.sroa.1734.0..sroa_idx.i.i.i.i, align 8, !noalias !290
  invoke void @_RINvMs6_NtCs33K2ylI4knu_10hir_expand5filesINtB6_13InFileWrapperNtB8_11MacroCallIdINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlatMapINtNtB1m_10filter_map9FilterMapINtNtB1m_9enumerate9EnumerateINtNtNtB1q_5slice4iter4IterTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEENCNvMNtB4k_3mapNtB4Q_7SpanMap16ranges_with_span0EINtNtB1q_6option6OptionTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtB4k_7hygiene13SyntaxContextEENCNvMsd_B8_NtB8_13ExpansionInfo14map_range_down0EE3mapINvYINtCsjpcu9PwIgok_8smallvec8SmallVecAB5V_j2_EINtNtNtB1o_6traits7collect12FromIteratorB5V_E9from_iterB1h_EB8W_ECs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %i.af)
          to label %.noexc100.i.i.i unwind label %.split.loopexit.split-lp, !noalias !258

.noexc100.i.i.i:                                  ; preds = %.noexc99.i.i.i
  %.sroa.554.0.copyload.i.i.i.i = load i64, ptr %.sroa.554.0..sroa_idx.i.i.i.i, align 8, !noalias !290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !290
  store i32 1, ptr %i.ae, align 8, !noalias !290
  %i.wh = load <2 x i32>, ptr %i.ad, align 8, !noalias !290
  store <2 x i32> %i.wh, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4, !noalias !290
  %i.wi = load <2 x i64>, ptr %i.go, align 8, !noalias !290
  store <2 x i64> %i.wi, ptr %i.gp, align 8, !noalias !290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.559.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gn, i64 16, i1 false), !noalias !290
  store i64 %.sroa.554.0.copyload.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i98.i.i.i, align 8, !noalias !290
  %i.wj = load i64, ptr %i.dx, align 8, !alias.scope !291, !noalias !258, !noundef !6 ; 3 uses
  %i.wk = load i64, ptr %i.ca, align 8, !range !13, !alias.scope !291, !noalias !258, !noundef !6
  %i.wl = icmp eq i64 %i.wj, %i.wk
  br i1 %i.wl, label %bb.fw, label %bb.fz

bb.fw:                                            ; preds = %.noexc100.i.i.i
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtCs33K2ylI4knu_10hir_expand9HirFileIdINtCsjpcu9PwIgok_8smallvec8SmallVecATINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEj2_EEE8grow_oneCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ca)
          to label %bb.fz unwind label %bb.fx, !noalias !292

bb.fx:                                            ; preds = %bb.fw
  %i.wm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.gp)
          to label %.body101.i.i.i unwind label %bb.fy, !noalias !293

bb.fy:                                            ; preds = %bb.fx
  %i.wn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26, !noalias !293
  unreachable

bb.fz:                                            ; preds = %bb.fw, %.noexc100.i.i.i
  %i.wo = load ptr, ptr %i.dw, align 8, !alias.scope !291, !noalias !258, !nonnull !6, !noundef !6
  %i.wp = getelementptr inbounds nuw [56 x i8], ptr %i.wo, i64 %i.wj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.wp, ptr noundef nonnull align 8 dereferenceable(56) %i.ae, i64 56, i1 false), !noalias !293
  %i.wq = add i64 %i.wj, 1
  store i64 %i.wq, ptr %i.dx, align 8, !alias.scope !291, !noalias !258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !257
  %.pre.i.i.i = load ptr, ptr %i.an, align 8, !alias.scope !285, !noalias !257
  %.pre186.i.i.i = load ptr, ptr %.sroa.049.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !286, !noalias !257
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %bb.fz, %_RNvXsI_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEINtB22_8IntoIterB2l_EENtNtNtB9_6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit.i.i.i
  %i.wr = phi ptr [ %.pre186.i.i.i, %bb.fz ], [ %i.vj, %_RNvXsI_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEINtB22_8IntoIterB2l_EENtNtNtB9_6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit.i.i.i ]
  %i.ws = phi ptr [ %.pre.i.i.i, %bb.fz ], [ %i.vk, %_RNvXsI_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEINtB22_8IntoIterB2l_EENtNtNtB9_6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit.i.i.i ] ; 2 uses
  %.not.i.i.i.i154.i = icmp eq ptr %i.ws, null
  br i1 %.not.i.i.i.i154.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECs8Xq8PKFYOms_3hir.exit97.i.i.i, label %.split.preheader.i.i.i.i

bb.ga:                                            ; preds = %bb.gl, %.body190, %bb.fu, %.thread147.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5UnionECs8Xq8PKFYOms_3hir.exit.sink.split.i.i.i.i, %bb.fg
  %i.wt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26, !noalias !258
  unreachable

bb.gb:                                            ; preds = %bb.fn, %.lr.ph.i.i.i
  %i.wu = landingpad { ptr, i32 }
          cleanup
  br label %.body190

.body190:                                         ; preds = %bb.fp, %bb.gb
  %eh.lpad-body191 = phi { ptr, i32 } [ %i.wu, %bb.gb ], [ %i.ul, %bb.fp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEECs8Xq8PKFYOms_3hir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ao) #27
          to label %.thread147.i.i.i unwind label %bb.ga, !noalias !258

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterATNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtB1g_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1T_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEj2_EECs8Xq8PKFYOms_3hir.exit.i.i.i: ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !257
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.sx) ]
  %i.wv = getelementptr inbounds nuw i8, ptr %i.sx, i64 60
  %i.ww = load i8, ptr %i.wv, align 4, !range !9, !noalias !258, !noundef !6
  %i.wx = trunc nuw i8 %i.ww to i1
  br i1 %i.wx, label %bb.gd, label %bb.gc, !prof !10

bb.gc:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterATNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtB1g_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1T_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEj2_EECs8Xq8PKFYOms_3hir.exit.i.i.i
  %i.wy = getelementptr inbounds nuw i8, ptr %i.sx, i64 56
  %i.wz = load i32, ptr %i.wy, align 8, !noalias !258, !noundef !6
  br label %.noexc105.i.i.i

bb.gd:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterATNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtB1g_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1T_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEj2_EECs8Xq8PKFYOms_3hir.exit.i.i.i
  %i.xa = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.sx)
          to label %.noexc105.i.i.i unwind label %.loopexit97, !noalias !258

.noexc105.i.i.i:                                  ; preds = %bb.gd, %bb.gc
  %.sroa.0.0.i103.i.i.i = phi i32 [ %i.wz, %bb.gc ], [ %i.xa, %bb.gd ] ; 3 uses
  %i.xb = load i64, ptr %i.sx, align 8, !range !11, !noalias !258, !noundef !6
  %i.xc = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %i.xd = trunc nuw i64 %i.xb to i1
  %i.xe = load ptr, ptr %i.xc, align 8, !noalias !258, !nonnull !6, !noundef !6 ; 2 uses
  br i1 %i.xd, label %bb.ge, label %bb.gg

bb.ge:                                            ; preds = %.noexc105.i.i.i
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  %i.xg = load i64, ptr %i.xf, align 8, !noalias !258, !noundef !6 ; 2 uses
  %i.xh = icmp ugt i64 %i.xg, 4294967295
  %i.xi = shl nuw i64 %i.xg, 32
  %.sroa.09.0.insert.insert.i.i.i.i.i = select i1 %i.xh, i64 513, i64 %i.xi ; 2 uses
  %i.xj = trunc i64 %.sroa.09.0.insert.insert.i.i.i.i.i to i1
  br i1 %i.xj, label %bb.gf, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.i, !prof !10

bb.gf:                                            ; preds = %bb.ge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !257
  store i8 2, ptr %i.ac, align 1, !noalias !257
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 43, ptr noundef nonnull %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #28
          to label %.noexc106.i.i.i unwind label %.loopexit.split-lp98, !noalias !258

.noexc106.i.i.i:                                  ; preds = %bb.gf
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.i: ; preds = %bb.ge
  %.sroa.6.0.extract.shift.i.i.i.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i.i.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i.i.i to i32
  br label %bb.gh

bb.gg:                                            ; preds = %.noexc105.i.i.i
  %i.xk = load i32, ptr %i.xe, align 8, !noalias !258, !noundef !6
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.i
  %.sroa.02.0.i.i.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.i ], [ %i.xk, %bb.gg ]
  %i.xl = add i32 %.sroa.02.0.i.i.i.i, %.sroa.0.0.i103.i.i.i ; 2 uses
  %.not.i104.i.i.i = icmp ugt i32 %.sroa.0.0.i103.i.i.i, %i.xl
  br i1 %.not.i104.i.i.i, label %bb.gi, label %bb.gj, !prof !10

bb.gi:                                            ; preds = %bb.gh
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #28
          to label %.noexc107.i.i.i unwind label %.loopexit.split-lp98, !noalias !258

.noexc107.i.i.i:                                  ; preds = %bb.gi
  unreachable

bb.gj:                                            ; preds = %bb.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !257
  store i32 %.sroa.0.0.i103.i.i.i, ptr %i.am, align 4, !noalias !257
  store i32 %i.xl, ptr %i.gt, align 4, !noalias !257
  invoke void @_RINvMsd_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecATINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEj2_E6retainNCNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB3o_13SemanticsImpl24descend_into_macros_implNtNtCshzWfHUSfYae_4core7convert10InfallibleEs1_00EB3q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.fo, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.am)
          to label %bb.gk unwind label %.loopexit97, !noalias !258

bb.gk:                                            ; preds = %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !257
  %i.xm = getelementptr inbounds nuw i8, ptr %i.sx, i64 48 ; 2 uses
  %i.xn = load i32, ptr %i.xm, align 8, !noalias !258, !noundef !6
  %i.xo = add i32 %i.xn, -1                       ; 2 uses
  store i32 %i.xo, ptr %i.xm, align 8, !noalias !258
  %i.xp = icmp eq i32 %i.xo, 0
  br i1 %i.xp, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5UnionECs8Xq8PKFYOms_3hir.exit.sink.split.i108.i.i.i, label %_RINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB6_13SemanticsImpl8with_ctxNCNCINvB2_24descend_into_macros_implNtNtCshzWfHUSfYae_4core7convert10InfallibleEs2_0s_0INtNtB1H_6option6OptionuEEB8_.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5UnionECs8Xq8PKFYOms_3hir.exit.sink.split.i108.i.i.i: ; preds = %bb.gk
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.sx) #25
          to label %_RINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB6_13SemanticsImpl8with_ctxNCNCINvB2_24descend_into_macros_implNtNtCshzWfHUSfYae_4core7convert10InfallibleEs2_0s_0INtNtB1H_6option6OptionuEEB8_.exit.i unwind label %.loopexit.split-lp93.loopexit.split-lp, !noalias !255

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3AdtECs8Xq8PKFYOms_3hir.exit.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5UnionECs8Xq8PKFYOms_3hir.exit.sink.split.i.i.i.i, %.body92.i.i.i
  br i1 %.sroa.026.0.i.i.i, label %bb.gl, label %common.resume.sink.split.i

bb.gl:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3AdtECs8Xq8PKFYOms_3hir.exit.i.i.i
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBN_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherB1q_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEj2_ENtNtNtB2k_3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.as)
          to label %common.resume.sink.split.i unwind label %bb.ga, !noalias !258

.invoke2236:                                      ; preds = %bb.ec, %.lr.ph
  invoke void @_RNvNtCshzWfHUSfYae_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #28
          to label %.cont2237 unwind label %.body87.thread74.loopexit.split-lp.loopexit.split-lp

.cont2237:                                        ; preds = %.invoke2236
  unreachable

.loopexit.split-lp93.loopexit.split-lp:           ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5UnionECs8Xq8PKFYOms_3hir.exit.sink.split.i108.i.i.i, %bb.do, %.invoke539.i
  %lpad.loopexit.split-lp2253 = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split.i

_RINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB6_13SemanticsImpl8with_ctxNCNCINvB2_24descend_into_macros_implNtNtCshzWfHUSfYae_4core7convert10InfallibleEs2_0s_0INtNtB1H_6option6OptionuEEB8_.exit.thread.loopexit.i: ; preds = %bb.fd
  %.pre.i85 = load i64, ptr %i.fr, align 8, !noalias !255
  %i.xq = add i64 %.pre.i85, 1
  br label %_RINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB6_13SemanticsImpl8with_ctxNCNCINvB2_24descend_into_macros_implNtNtCshzWfHUSfYae_4core7convert10InfallibleEs2_0s_0INtNtB1H_6option6OptionuEEB8_.exit.thread.i

_RINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB6_13SemanticsImpl8with_ctxNCNCINvB2_24descend_into_macros_implNtNtCshzWfHUSfYae_4core7convert10InfallibleEs2_0s_0INtNtB1H_6option6OptionuEEB8_.exit.thread.i: ; preds = %_RINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB6_13SemanticsImpl8with_ctxNCNCINvB2_24descend_into_macros_implNtNtCshzWfHUSfYae_4core7convert10InfallibleEs2_0s_0INtNtB1H_6option6OptionuEEB8_.exit.thread.loopexit.i, %bb.ed
  %i.xr = phi i64 [ %i.xq, %_RINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB6_13SemanticsImpl8with_ctxNCNCINvB2_24descend_into_macros_implNtNtCshzWfHUSfYae_4core7convert10InfallibleEs2_0s_0INtNtB1H_6option6OptionuEEB8_.exit.thread.loopexit.i ], [ 0, %bb.ed ]
  store i64 %i.xr, ptr %i.fr, align 8, !noalias !255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !255
  br label %bb.ds

_RINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB6_13SemanticsImpl8with_ctxNCNCINvB2_24descend_into_macros_implNtNtCshzWfHUSfYae_4core7convert10InfallibleEs2_0s_0INtNtB1H_6option6OptionuEEB8_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5UnionECs8Xq8PKFYOms_3hir.exit.sink.split.i108.i.i.i, %bb.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !257
  %i.xs = load i64, ptr %i.fr, align 8, !noalias !255, !noundef !6
  %i.xt = add i64 %i.xs, 1
  store i64 %i.xt, ptr %i.fr, align 8, !noalias !255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !255
  br label %.thread77

bb.gm:                                            ; preds = %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters9map_whileINtB6_8MapWhileINtNtB8_3map3MapINtNtNtBa_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B26_B24_6parentENvYINtNtB28_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtBc_7convert4FromB24_E4fromENvYINtCs83ee1IJTiSq_6either6EitherNtNtNtNtB3D_3ast9generated5nodes9TokenTreeNtB5w_4MetaENtB5A_7AstNode4castENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6option6OptionB4Z_EINvNvB6G_4last4someB4Z_EECs8Xq8PKFYOms_3hir.exit.i
  %i.xu = inttoptr i64 %.sroa.4299.0.copyload.i to ptr ; 23 uses
  %.not57.i = icmp eq i64 %.sroa.0298.0.copyload.i, -1
  br i1 %.not57.i, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  br i1 %2, label %bb.nm, label %bb.jd

bb.go:                                            ; preds = %bb.gm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !250
  %i.xv = icmp ne i64 %.sroa.4299.0.copyload.i, 0
  call void @llvm.assume(i1 %i.xv)
  store ptr %i.xu, ptr %i.bv, align 8, !noalias !250
  %i.xw = getelementptr i8, ptr %i.xu, i64 16
  %.val97.i = load ptr, ptr %i.xw, align 8, !noalias !250, !noundef !6 ; 8 uses
  %.not.i158.i = icmp eq ptr %.val97.i, null
  br i1 %.not.i158.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroCallECs8Xq8PKFYOms_3hir.exit.i, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.xx = getelementptr inbounds nuw i8, ptr %.val97.i, i64 48 ; 10 uses
  %i.xy = load i32, ptr %i.xx, align 4, !noalias !250, !noundef !6 ; 2 uses
  %i.xz = icmp eq i32 %i.xy, -1
  br i1 %i.xz, label %bb.gq, label %bb.gs, !prof !10

bb.gq:                                            ; preds = %bb.gp
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #30
          to label %.noexc.i unwind label %.thread330.i.loopexit.split-lp.loopexit.split-lp, !noalias !250

.noexc.i:                                         ; preds = %bb.gq
  unreachable

.body.i:                                          ; preds = %.thread330.i.loopexit.split-lp.loopexit.split-lp, %bb.jc, %.thread310.i, %bb.iy, %.thread325.i, %.body161, %bb.gu, %bb.gt
  %.pn63.i = phi { ptr, i32 } [ %lpad.phi329.i, %bb.iy ], [ %eh.lpad-body171315.i, %.thread310.i ], [ %lpad.phi329.i, %.thread325.i ], [ %i.yg, %bb.gu ], [ %i.yg, %bb.gt ], [ %eh.lpad-body171315.i, %bb.jc ], [ %eh.lpad-body162, %.body161 ], [ %lpad.loopexit.split-lp2271, %.thread330.i.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xu, i64 48 ; 2 uses
  %i.yb = load i32, ptr %i.ya, align 4, !noalias !250, !noundef !6
  %i.yc = add i32 %i.yb, -1                       ; 2 uses
  store i32 %i.yc, ptr %i.ya, align 4, !noalias !250
  %i.yd = icmp eq i32 %i.yc, 0
  br i1 %i.yd, label %bb.gr, label %.body87.thread

bb.gr:                                            ; preds = %.body.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.xu) #25
          to label %.body87.thread unwind label %bb.iz, !noalias !250

bb.gs:                                            ; preds = %bb.gp
  %i.ye = add nuw i32 %i.xy, 1
  store i32 %i.ye, ptr %i.xx, align 4, !noalias !250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !250
  store ptr %.val97.i, ptr %i.ab, align 8, !noalias !250
  %i.yf = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ab)
          to label %bb.gv unwind label %bb.gt, !noalias !250

bb.gt:                                            ; preds = %bb.gs
  %i.yg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yh = load i32, ptr %i.xx, align 4, !noalias !250, !noundef !6
  %i.yi = add i32 %i.yh, -1                       ; 2 uses
  store i32 %i.yi, ptr %i.xx, align 4, !noalias !250
  %i.yj = icmp eq i32 %i.yi, 0
end_hunk_0
