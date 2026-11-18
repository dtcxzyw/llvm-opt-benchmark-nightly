Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontbe-61f120808e41ae7e.fontbe.cc431683d7bf4cd5-cgu.03?download=true
inline.NumInlined: 3478
inline.NumDeleted: 1186
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtB4_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE26add_contextual_ignore_ruleB1T_:bb.a

.noexc75:                                         ; preds = %bb.at
  %i.dy = extractvalue { i64, i64 } %i.dx, 0      ; 3 uses
  %.not.i = icmp eq i64 %i.dy, -1
  br i1 %.not.i, label %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtB4_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE40add_lookup_to_current_feature_if_presentB1T_.exit.i, label %bb.au

bb.au:                                            ; preds = %.noexc75
  %i.dz = extractvalue { i64, i64 } %i.dx, 1
  %i.ea = icmp eq i64 %i.dy, 5
  br i1 %i.ea, label %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtB4_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE40add_lookup_to_current_feature_if_presentB1T_.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1464 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !range !11, !alias.scope !9947, !noundef !4
  %.not.i.i72 = icmp eq i64 %i.ec, -2
  br i1 %.not.i.i72, label %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtB4_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE40add_lookup_to_current_feature_if_presentB1T_.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvMs0_NtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB5_13ActiveFeature10add_lookup(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.eb, i64 noundef range(i64 0, 6) %i.dy, i64 %i.dz)
          to label %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtB4_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE40add_lookup_to_current_feature_if_presentB1T_.exit.i unwind label %.body.thread99

_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtB4_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE40add_lookup_to_current_feature_if_presentB1T_.exit.i: ; preds = %bb.aw, %bb.av, %bb.au, %.noexc75, %.noexc74
  %i.ed = load i64, ptr %0, align 8, !range !27, !alias.scope !9946, !noundef !4
  %.not9.i = icmp eq i64 %i.ed, -1
  br i1 %.not9.i, label %bb.ax, label %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtB4_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE26ensure_current_lookup_typeB1T_.exit, !prof !29

bb.ax:                                            ; preds = %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtB4_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE40add_lookup_to_current_feature_if_presentB1T_.exit.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #28
          to label %.noexc77 unwind label %.body.thread99

.noexc77:                                         ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.aq
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassIBw_NtNtNtBK_7compile7lookups8LookupIdEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.ba unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassINtNtB7_3vec3VecNtNtNtBR_7compile7lookups8LookupIdEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.bj unwind label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassINtNtB7_3vec3VecNtNtNtBR_7compile7lookups8LookupIdEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassIBC_NtNtNtB1d_7compile7lookups8LookupIdEEEECshxhuDJfZv4T_6fontbe.exit unwind label %bb.l

bb.bb:                                            ; preds = %bb.az
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtB4_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE26ensure_current_lookup_typeB1T_.exit: ; preds = %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtB4_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE40add_lookup_to_current_feature_if_presentB1T_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @_RNvMsb_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_10SomeLookup19add_contextual_rule(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.bc

bb.bc:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassEECshxhuDJfZv4T_6fontbe.exit85, %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtB4_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE26ensure_current_lookup_typeB1T_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassIBC_NtNtNtB1d_7compile7lookups8LookupIdEEEECshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.be unwind label %bb.bd

bb.bd:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassIBC_NtNtNtB1d_7compile7lookups8LookupIdEEEECshxhuDJfZv4T_6fontbe.exit
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.bk unwind label %bb.bf

bb.be:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassIBC_NtNtNtB1d_7compile7lookups8LookupIdEEEECshxhuDJfZv4T_6fontbe.exit
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassEECshxhuDJfZv4T_6fontbe.exit unwind label %bb.f

bb.bf:                                            ; preds = %bb.bd
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassEECshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassEECshxhuDJfZv4T_6fontbe.exit85 unwind label %bb.bg

bb.bg:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassEECshxhuDJfZv4T_6fontbe.exit
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %common.resume unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.bk, %bb.d, %bb.c, %bb.bg
  %common.resume.op = phi { ptr, i32 } [ %i.ei, %bb.bg ], [ %.pn58.ph, %bb.bk ], [ %i.aj, %bb.c ], [ %i.aj, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassEECshxhuDJfZv4T_6fontbe.exit85: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassEECshxhuDJfZv4T_6fontbe.exit
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %bb.bc

.body.thread:                                     ; preds = %bb.r, %.body.i, %.body.thread99
  %eh.lpad-body98 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread99 ], [ %.pn17.pn.i, %.body.i ], [ %.pn17.pn.i, %bb.r ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassIBC_NtNtNtB1d_7compile7lookups8LookupIdEEEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #23
          to label %bb.bj unwind label %bb.bi

bb.bi:                                            ; preds = %bb.o, %bb.i, %bb.d, %bb.bk, %bb.bj, %.body.thread
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.bj:                                            ; preds = %.body.thread, %bb.l, %bb.o, %bb.n, %bb.az
  %.pn.ph = phi { ptr, i32 } [ %i.bh, %bb.n ], [ %eh.lpad-body98, %.body.thread ], [ %i.bc, %bb.l ], [ %i.bh, %bb.o ], [ %i.ee, %bb.az ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #23
          to label %bb.bk unwind label %bb.bi

bb.bk:                                            ; preds = %bb.bj, %bb.f, %bb.i, %bb.h, %bb.bd
  %.pn58.ph = phi { ptr, i32 } [ %i.av, %bb.h ], [ %.pn.ph, %bb.bj ], [ %i.aq, %bb.f ], [ %i.av, %bb.i ], [ %i.eg, %bb.bd ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #23
          to label %common.resume unwind label %bb.bi
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtB4_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE26ensure_current_lookup_typeB1T_(ptr noalias nofree noundef returned align 8 dereferenceable(2152) %0, i16 noundef range(i16 0, 251) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMs7_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_10AllLookups16has_current_kind(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %0, i16 noundef %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2136
  %.sroa.05.0.copyload = load i48, ptr %i.b, align 8
  %i.c = tail call noundef zeroext i1 @_RNvMs7_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_10AllLookups14has_same_flags(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %0, i48 %.sroa.05.0.copyload)
  br i1 %i.c, label %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtB4_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE40add_lookup_to_current_feature_if_presentB1T_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2136
  %.sroa.08.0.copyload = load i48, ptr %i.d, align 8
  %i.e = tail call { i64, i64 } @_RNvMs7_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_10AllLookups12start_lookup(ptr noalias nofree noundef nonnull align 8 dereferenceable(320) %0, i16 noundef %1, i48 %.sroa.08.0.copyload, i64 noundef %2, i64 noundef %3) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0        ; 3 uses
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtB4_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE40add_lookup_to_current_feature_if_presentB1T_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = extractvalue { i64, i64 } %i.e, 1
  %i.h = icmp eq i64 %i.f, 5
  br i1 %i.h, label %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtB4_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE40add_lookup_to_current_feature_if_presentB1T_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1464 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !11, !alias.scope !9950, !noundef !4
  %.not.i = icmp eq i64 %i.j, -2
  br i1 %.not.i, label %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtB4_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE40add_lookup_to_current_feature_if_presentB1T_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvMs0_NtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB5_13ActiveFeature10add_lookup(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.i, i64 noundef range(i64 0, 6) %i.f, i64 %i.g)
  br label %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtB4_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE40add_lookup_to_current_feature_if_presentB1T_.exit

_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtB4_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE40add_lookup_to_current_feature_if_presentB1T_.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.k = load i64, ptr %0, align 8, !range !27, !noundef !4
  %.not9 = icmp eq i64 %i.k, -1
  br i1 %.not9, label %bb.h, label %bb.g, !prof !29

bb.g:                                             ; preds = %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtB4_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE40add_lookup_to_current_feature_if_presentB1T_.exit
  ret ptr %0

bb.h:                                             ; preds = %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtB4_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE40add_lookup_to_current_feature_if_presentB1T_.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtB4_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE26validate_single_sub_inputsB1T_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(2152) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 11 uses
  %.sroa.3 = alloca [16 x i8], align 8            ; 2 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtB4_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE22resolve_glyph_or_classB1T_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(2152) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2)
  %.not = icmp eq ptr %3, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtB4_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE22resolve_glyph_or_classB1T_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(2152) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassECshxhuDJfZv4T_6fontbe.exit unwind label %bb.an

bb.c:                                             ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassECshxhuDJfZv4T_6fontbe.exit
  %i.l = phi i64 [ %.sroa.0100.0.copyload, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassECshxhuDJfZv4T_6fontbe.exit ], [ -9223372036854775806, %bb.a ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 9 uses
  store i64 %i.l, ptr %i.m, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3, i64 16, i1 false)
  %i.n = load i64, ptr %i.j, align 8, !range !17, !noundef !4 ; 3 uses
  %i.o = icmp ne i64 %i.n, -9223372036854775807
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.n, -9223372036854775808
  %i.q = icmp slt i64 %i.n, 0
  %i.r = select i1 %i.q, i64 %i.p, i64 1
  switch i64 %i.r, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassECshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.b
  %.sroa.0100.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = icmp ne i64 %i.l, -9223372036854775807
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp sgt i64 %i.l, -1
  br i1 %i.t, label %bb.h, label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.u = icmp ne i64 %i.l, -9223372036854775807
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i64 %i.l, -1
  br i1 %i.v, label %bb.o, label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.w = invoke { i64, i64 } @_RNvXs8K_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB6_12GlyphOrClassNtB6_7AstNode5range(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2)
          to label %.invoke unwind label %bb.l

bb.h:                                             ; preds = %bb.e
  br i1 %.not, label %bb.k, label %bb.j, !prof !29

bb.i:                                             ; preds = %bb.q, %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassECshxhuDJfZv4T_6fontbe.exit59

bb.j:                                             ; preds = %bb.h
  %i.x = invoke { i64, i64 } @_RNvXs8K_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB6_12GlyphOrClassNtB6_7AstNode5range(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3)
          to label %.invoke unwind label %bb.l

bb.k:                                             ; preds = %bb.h
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #27
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.invoke, %bb.g, %bb.j, %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load i64, ptr %i.j, align 8, !range !17, !noundef !4 ; 2 uses
  %i.aa = icmp ne i64 %i.z, -9223372036854775807
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp sgt i64 %i.z, -1
  br i1 %i.ab, label %bb.al, label %bb.ak

bb.m:                                             ; preds = %bb.y, %4, %bb.k
  unreachable

.invoke:                                          ; preds = %bb.j, %bb.g
  %.sink102 = phi { i64, i64 } [ %i.w, %bb.g ], [ %i.x, %bb.j ] ; 2 uses
  %i.ac = phi ptr [ @141, %bb.g ], [ @137, %bb.j ]
  %i.ad = phi i64 [ 39, %bb.g ], [ 31, %bb.j ]
  %i.ae = extractvalue { i64, i64 } %.sink102, 0
  %i.af = extractvalue { i64, i64 } %.sink102, 1
  invoke void @_RINvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB3_14CompilationCtxNtNtB5_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE5errorReEB1U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(2152) %1, i64 noundef %i.ae, i64 noundef %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ad)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %.invoke
  store i64 -1, ptr %0, align 8
  %i.ag = load i64, ptr %i.m, align 8, !range !17, !noundef !4 ; 2 uses
  %i.ah = icmp ne i64 %i.ag, -9223372036854775807
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp sgt i64 %i.ag, -1
  br i1 %i.ai, label %bb.ah, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassECshxhuDJfZv4T_6fontbe.exit59

bb.o:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !4 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 4611686018427387904
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i64 %i.ak, 1
  br i1 %i.am, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !noundef !4
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %4, label %bb.r, !prof !29

bb.q:                                             ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !4 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 4611686018427387904
  tail call void @llvm.assume(i1 %i.as)
  %.not28 = icmp eq i64 %i.ar, %i.ak
  br i1 %.not28, label %bb.i, label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !4, !noundef !4
  %i.av = load i16, ptr %i.au, align 2, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -9223372036854775808, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 %i.av, ptr %.sroa.511.0..sroa_idx, align 8
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i.a unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.thread67 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i.a: ; preds = %bb.r
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassECshxhuDJfZv4T_6fontbe.exit59

4:                                                ; preds = %bb.p
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @138) #27
          to label %bb.m unwind label %bb.u

bb.u:                                             ; preds = %4
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #23
          to label %.thread88 unwind label %bb.v

bb.v:                                             ; preds = %bb.an, %bb.am, %bb.al, %.body43, %bb.z, %.thread88, %bb.u
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

.thread88:                                        ; preds = %bb.u
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #23
          to label %.thread67 unwind label %bb.v

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  br i1 %.not, label %bb.y, label %bb.x, !prof !29

bb.x:                                             ; preds = %bb.w
  %i.ba = invoke { i64, i64 } @_RNvXs8K_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB6_12GlyphOrClassNtB6_7AstNode5range(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3)
          to label %bb.aa unwind label %bb.z      ; 2 uses

bb.y:                                             ; preds = %bb.w
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #27
          to label %bb.m unwind label %bb.z

bb.z:                                             ; preds = %bb.aa, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshxhuDJfZv4T_6fontbe.exit, %bb.y, %bb.x
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #23
          to label %.body43 unwind label %bb.v

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !4 ; 2 uses
  store i64 %i.bd, ptr %i.d, align 8
  %i.be = icmp ult i64 %i.bd, 4611686018427387904
  tail call void @llvm.assume(i1 %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !4 ; 2 uses
  store i64 %i.bg, ptr %i.c, align 8
  %i.bh = icmp ult i64 %i.bg, 4611686018427387904
  tail call void @llvm.assume(i1 %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.419.0..sroa_idx, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.bi, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.423.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @140, ptr noundef nonnull %i.b)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshxhuDJfZv4T_6fontbe.exit unwind label %bb.z

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.aa
  %i.bj = extractvalue { i64, i64 } %i.ba, 1
  %i.bk = extractvalue { i64, i64 } %i.ba, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB3_14CompilationCtxNtNtB5_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE5errorNtNtCsgCecv3eZDcN_5alloc6string6StringEB1U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(2152) %1, i64 noundef %i.bk, i64 noundef %i.bj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.ab unwind label %bb.z

bb.ab:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshxhuDJfZv4T_6fontbe.exit
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i42 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body43 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i42: ; preds = %bb.ab
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassECshxhuDJfZv4T_6fontbe.exit46 unwind label %bb.ae

.body43:                                          ; preds = %bb.ae, %bb.ac, %bb.z
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.z ], [ %i.bn, %bb.ae ], [ %i.bl, %bb.ac ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #23
          to label %.thread67 unwind label %bb.v

bb.ae:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i42
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body43

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassECshxhuDJfZv4T_6fontbe.exit46: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i48.a unwind label %bb.af

bb.af:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassECshxhuDJfZv4T_6fontbe.exit46
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.thread67 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i48.a: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassECshxhuDJfZv4T_6fontbe.exit46
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassECshxhuDJfZv4T_6fontbe.exit59

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassECshxhuDJfZv4T_6fontbe.exit59: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i54.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i48.a, %bb.n, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.ah:                                            ; preds = %bb.n
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i54.a unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.thread67 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i54.a: ; preds = %bb.ah
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassECshxhuDJfZv4T_6fontbe.exit59

bb.ak:                                            ; preds = %bb.al, %bb.l
  %i.bs = load i64, ptr %i.m, align 8, !range !17, !noundef !4 ; 2 uses
  %i.bt = icmp ne i64 %i.bs, -9223372036854775807
  call void @llvm.assume(i1 %i.bt)
  %i.bu = icmp sgt i64 %i.bs, -1
  br i1 %i.bu, label %bb.am, label %.thread67

bb.al:                                            ; preds = %bb.l
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #23
          to label %bb.ak unwind label %bb.v

bb.am:                                            ; preds = %bb.ak
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #23
          to label %.thread67 unwind label %bb.v

.thread67:                                        ; preds = %.thread88, %.body43, %bb.s, %bb.af, %bb.ak, %bb.am, %bb.ai, %bb.an
  %.pn3462 = phi { ptr, i32 } [ %i.bq, %bb.ai ], [ %lpad.thr_comm, %bb.an ], [ %i.y, %bb.am ], [ %i.y, %bb.ak ], [ %i.bo, %bb.af ], [ %i.aw, %bb.s ], [ %.pn, %.body43 ], [ %i.ay, %.thread88 ]
  resume { ptr, i32 } %.pn3462

bb.an:                                            ; preds = %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #23
          to label %.thread67 unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtB4_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE27resolve_glyph_class_literalB1T_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(2152) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [72 x i8], align 8                ; 12 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [2 x i8], align 2                 ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [2 x i8], align 2                 ; 3 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 9 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [32 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 13 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 6 uses
  %i.w = alloca [32 x i8], align 8                ; 6 uses
  %i.x = alloca [184 x i8], align 8               ; 20 uses
  %i.y = alloca [24 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  store ptr inttoptr (i64 2 to ptr), ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 8 uses
  store i64 0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !noundef !4
  %i.ad = zext i32 %i.ac to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i64 0, ptr %i.x, align 8
  %.sroa.06.sroa.0.sroa.0.sroa.0.sroa.0.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.06.sroa.0.sroa.0.sroa.0.sroa.0.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.0.sroa.0.sroa.0.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 0, ptr %.sroa.06.sroa.0.sroa.0.sroa.0.sroa.0.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.0.sroa.0.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  store i64 0, ptr %.sroa.06.sroa.0.sroa.0.sroa.0.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.0.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  store ptr %2, ptr %.sroa.06.sroa.0.sroa.0.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.0.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  store i64 0, ptr %.sroa.06.sroa.0.sroa.0.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.0.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 144
  store i8 1, ptr %.sroa.06.sroa.0.sroa.0.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 152
  store i64 %i.ad, ptr %.sroa.06.sroa.0.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 160
  store i8 0, ptr %.sroa.06.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.06.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 168
  store i64 1, ptr %.sroa.06.sroa.2.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 176
  store i8 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 184
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 12 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 2096
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 2104
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 2112
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.0.sroa.5.sroa.6.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.0.sroa.7.sroa.5.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.sroa.7.sroa.6.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.be = invoke fastcc noundef align 8 ptr @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtB8_10skip_while9SkipWhileNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNCNvMs7_NtB1Z_5typedNtB2Q_17GlyphClassLiteral5items0EENCB2K_s_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3K_4find5checkRNtB1Z_11NodeOrTokenQNCB2K_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB4O_EECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(184) %i.x, ptr noundef nonnull %i.ae)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

.body45:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bk, %bb.bl, %bb.aw, %.body66, %bb.ax, %bb.ap, %bb.aq, %.loopexit.split-lp87.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w, %bb.x, %.loopexit.split-lp82.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.m, %bb.n
  %.pn40 = phi { ptr, i32 } [ %.pn, %bb.aw ], [ %lpad.loopexit.split-lp150, %.loopexit.split-lp87.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.dl, %bb.ap ], [ %lpad.loopexit.split-lp147, %.loopexit.split-lp82.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.fa, %bb.bk ], [ %lpad.loopexit.split-lp147, %bb.n ], [ %lpad.loopexit.split-lp147, %bb.m ], [ %lpad.loopexit.split-lp150, %bb.x ], [ %lpad.loopexit.split-lp150, %bb.w ], [ %i.dl, %bb.aq ], [ %.pn, %bb.ax ], [ %.pn, %.body66 ], [ %i.fa, %bb.bl ], [ %lpad.loopexit.split-lp145, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBG_10take_while9TakeWhileINtNtBG_4skip4SkipINtNtBG_10skip_while9SkipWhileNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNCNvMs7_NtB2x_5typedNtB3o_17GlyphClassLiteral5items0EENCB3i_s_0ENCB3i_s0_0EECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(184) %i.x) #23
          to label %.body unwind label %bb.as

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bu, %bb.bs, %bb.bn, %bb.bg, %bb.ar, %bb.aa, %bb.q, %bb.av, %bb.ao, %bb.ac, %bb.s, %bb.d, %bb.b, %bb.bp
  %lpad.loopexit.split-lp145 = landingpad { ptr, i32 }
          cleanup
  br label %.body45

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %i.be, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RNvXs1J_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB6_9GlyphNameNtB6_7AstNode4cast(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.be)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.c
  %i.bf = load i64, ptr %i.x, align 8, !range !8, !alias.scope !10087, !noundef !4
  %i.bg = icmp eq i64 %i.bf, -1
  br i1 %i.bg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBG_10take_while9TakeWhileINtNtBG_4skip4SkipINtNtBG_10skip_while9SkipWhileNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNCNvMs7_NtB2x_5typedNtB3o_17GlyphClassLiteral5items0EENCB3i_s_0ENCB3i_s0_0EECshxhuDJfZv4T_6fontbe.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor7NodeRefENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.x)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor6CursorECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor7NodeRefENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.x)
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor6CursorECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor7NodeRefENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.x)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBG_10take_while9TakeWhileINtNtBG_4skip4SkipINtNtBG_10skip_while9SkipWhileNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNCNvMs7_NtB2x_5typedNtB3o_17GlyphClassLiteral5items0EENCB3i_s_0ENCB3i_s0_0EECshxhuDJfZv4T_6fontbe.exit unwind label %bb.i

.body:                                            ; preds = %bb.i, %bb.g, %.body45
  %.pn40.pn = phi { ptr, i32 } [ %.pn40, %.body45 ], [ %i.bj, %bb.i ], [ %i.bh, %bb.g ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #23
          to label %bb.bv unwind label %bb.as

bb.i:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor6CursorECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBG_10take_while9TakeWhileINtNtBG_4skip4SkipINtNtBG_10skip_while9SkipWhileNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNCNvMs7_NtB2x_5typedNtB3o_17GlyphClassLiteral5items0EENCB3i_s_0ENCB3i_s0_0EECshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor6CursorECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  ret void

bb.j:                                             ; preds = %bb.d
  %i.bk = load i16, ptr %i.af, align 4, !range !23, !noundef !4
  %.not33 = icmp eq i16 %i.bk, -1
  br i1 %.not33, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false)
  %.val = load ptr, ptr %i.ag, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bl = invoke { i16, i16 } @_RINvMNtNtCscScJTt9VrQp_6fea_rs6common9glyph_mapNtB3_8GlyphMap3getNtCs9NoVXegZYB5_8smol_str7SmolStrECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
          to label %.noexc.i unwind label %.loopexit.split-lp82.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc.i:                                         ; preds = %bb.k
  %i.bm = extractvalue { i16, i16 } %i.bl, 0
  %i.bn = trunc i16 %i.bm to i1
  br i1 %i.bn, label %bb.o, label %bb.l, !prof !33

bb.l:                                             ; preds = %.noexc.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #28
          to label %.noexc1.i unwind label %.loopexit.split-lp82.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1.i:                                        ; preds = %bb.l
  unreachable

.loopexit.split-lp82.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.k, %bb.l
  %lpad.loopexit.split-lp147 = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10088)
  call void @llvm.experimental.noalias.scope.decl(metadata !10089)
  call void @llvm.experimental.noalias.scope.decl(metadata !10090)
  call void @llvm.experimental.noalias.scope.decl(metadata !10091)
  %i.bo = load i8, ptr %i.l, align 8, !range !19, !alias.scope !10092, !noundef !4
end_hunk_0
begin_hunk_1_@_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1a_16FeaVariationInfoE26add_contextual_ignore_ruleB1c_:bb.a

.noexc75:                                         ; preds = %bb.at
  %i.dy = extractvalue { i64, i64 } %i.dx, 0      ; 3 uses
  %.not.i = icmp eq i64 %i.dy, -1
  br i1 %.not.i, label %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1a_16FeaVariationInfoE40add_lookup_to_current_feature_if_presentB1c_.exit.i, label %bb.au

bb.au:                                            ; preds = %.noexc75
  %i.dz = extractvalue { i64, i64 } %i.dx, 1
  %i.ea = icmp eq i64 %i.dy, 5
  br i1 %i.ea, label %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1a_16FeaVariationInfoE40add_lookup_to_current_feature_if_presentB1c_.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1464 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !range !11, !alias.scope !19604, !noundef !4
  %.not.i.i72 = icmp eq i64 %i.ec, -2
  br i1 %.not.i.i72, label %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1a_16FeaVariationInfoE40add_lookup_to_current_feature_if_presentB1c_.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvMs0_NtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB5_13ActiveFeature10add_lookup(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.eb, i64 noundef range(i64 0, 6) %i.dy, i64 %i.dz)
          to label %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1a_16FeaVariationInfoE40add_lookup_to_current_feature_if_presentB1c_.exit.i unwind label %.body.thread99

_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1a_16FeaVariationInfoE40add_lookup_to_current_feature_if_presentB1c_.exit.i: ; preds = %bb.aw, %bb.av, %bb.au, %.noexc75, %.noexc74
  %i.ed = load i64, ptr %0, align 8, !range !27, !alias.scope !19603, !noundef !4
  %.not9.i = icmp eq i64 %i.ed, -1
  br i1 %.not9.i, label %bb.ax, label %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1a_16FeaVariationInfoE26ensure_current_lookup_typeB1c_.exit, !prof !29

bb.ax:                                            ; preds = %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1a_16FeaVariationInfoE40add_lookup_to_current_feature_if_presentB1c_.exit.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #28
          to label %.noexc77 unwind label %.body.thread99

.noexc77:                                         ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.aq
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassIBw_NtNtNtBK_7compile7lookups8LookupIdEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.ba unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassINtNtB7_3vec3VecNtNtNtBR_7compile7lookups8LookupIdEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.bj unwind label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassINtNtB7_3vec3VecNtNtNtBR_7compile7lookups8LookupIdEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassIBC_NtNtNtB1d_7compile7lookups8LookupIdEEEECshxhuDJfZv4T_6fontbe.exit unwind label %bb.l

bb.bb:                                            ; preds = %bb.az
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1a_16FeaVariationInfoE26ensure_current_lookup_typeB1c_.exit: ; preds = %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1a_16FeaVariationInfoE40add_lookup_to_current_feature_if_presentB1c_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @_RNvMsb_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_10SomeLookup19add_contextual_rule(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.bc

bb.bc:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassEECshxhuDJfZv4T_6fontbe.exit85, %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1a_16FeaVariationInfoE26ensure_current_lookup_typeB1c_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassIBC_NtNtNtB1d_7compile7lookups8LookupIdEEEECshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.be unwind label %bb.bd

bb.bd:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassIBC_NtNtNtB1d_7compile7lookups8LookupIdEEEECshxhuDJfZv4T_6fontbe.exit
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.bk unwind label %bb.bf

bb.be:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassIBC_NtNtNtB1d_7compile7lookups8LookupIdEEEECshxhuDJfZv4T_6fontbe.exit
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassEECshxhuDJfZv4T_6fontbe.exit unwind label %bb.f

bb.bf:                                            ; preds = %bb.bd
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassEECshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassEECshxhuDJfZv4T_6fontbe.exit85 unwind label %bb.bg

bb.bg:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassEECshxhuDJfZv4T_6fontbe.exit
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %common.resume unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.bk, %bb.d, %bb.c, %bb.bg
  %common.resume.op = phi { ptr, i32 } [ %i.ei, %bb.bg ], [ %.pn58.ph, %bb.bk ], [ %i.aj, %bb.c ], [ %i.aj, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassEECshxhuDJfZv4T_6fontbe.exit85: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassEECshxhuDJfZv4T_6fontbe.exit
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %bb.bc

.body.thread:                                     ; preds = %bb.r, %.body.i, %.body.thread99
  %eh.lpad-body98 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread99 ], [ %.pn17.pn.i, %.body.i ], [ %.pn17.pn.i, %bb.r ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassIBC_NtNtNtB1d_7compile7lookups8LookupIdEEEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #23
          to label %bb.bj unwind label %bb.bi

bb.bi:                                            ; preds = %bb.o, %bb.i, %bb.d, %bb.bk, %bb.bj, %.body.thread
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.bj:                                            ; preds = %.body.thread, %bb.l, %bb.o, %bb.n, %bb.az
  %.pn.ph = phi { ptr, i32 } [ %i.bh, %bb.n ], [ %eh.lpad-body98, %.body.thread ], [ %i.bc, %bb.l ], [ %i.bh, %bb.o ], [ %i.ee, %bb.az ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #23
          to label %bb.bk unwind label %bb.bi

bb.bk:                                            ; preds = %bb.bj, %bb.f, %bb.i, %bb.h, %bb.bd
  %.pn58.ph = phi { ptr, i32 } [ %i.av, %bb.h ], [ %.pn.ph, %bb.bj ], [ %i.aq, %bb.f ], [ %i.av, %bb.i ], [ %i.eg, %bb.bd ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #23
          to label %common.resume unwind label %bb.bi
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1a_16FeaVariationInfoE26ensure_current_lookup_typeB1c_(ptr noalias nofree noundef returned align 8 dereferenceable(2152) %0, i16 noundef range(i16 0, 251) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMs7_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_10AllLookups16has_current_kind(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %0, i16 noundef %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2136
  %.sroa.05.0.copyload = load i48, ptr %i.b, align 8
  %i.c = tail call noundef zeroext i1 @_RNvMs7_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_10AllLookups14has_same_flags(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %0, i48 %.sroa.05.0.copyload)
  br i1 %i.c, label %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1a_16FeaVariationInfoE40add_lookup_to_current_feature_if_presentB1c_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2136
  %.sroa.08.0.copyload = load i48, ptr %i.d, align 8
  %i.e = tail call { i64, i64 } @_RNvMs7_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_10AllLookups12start_lookup(ptr noalias nofree noundef nonnull align 8 dereferenceable(320) %0, i16 noundef %1, i48 %.sroa.08.0.copyload, i64 noundef %2, i64 noundef %3) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0        ; 3 uses
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1a_16FeaVariationInfoE40add_lookup_to_current_feature_if_presentB1c_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = extractvalue { i64, i64 } %i.e, 1
  %i.h = icmp eq i64 %i.f, 5
  br i1 %i.h, label %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1a_16FeaVariationInfoE40add_lookup_to_current_feature_if_presentB1c_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1464 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !11, !alias.scope !19607, !noundef !4
  %.not.i = icmp eq i64 %i.j, -2
  br i1 %.not.i, label %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1a_16FeaVariationInfoE40add_lookup_to_current_feature_if_presentB1c_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvMs0_NtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB5_13ActiveFeature10add_lookup(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.i, i64 noundef range(i64 0, 6) %i.f, i64 %i.g)
  br label %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1a_16FeaVariationInfoE40add_lookup_to_current_feature_if_presentB1c_.exit

_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1a_16FeaVariationInfoE40add_lookup_to_current_feature_if_presentB1c_.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.k = load i64, ptr %0, align 8, !range !27, !noundef !4
  %.not9 = icmp eq i64 %i.k, -1
  br i1 %.not9, label %bb.h, label %bb.g, !prof !29

bb.g:                                             ; preds = %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1a_16FeaVariationInfoE40add_lookup_to_current_feature_if_presentB1c_.exit
  ret ptr %0

bb.h:                                             ; preds = %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1a_16FeaVariationInfoE40add_lookup_to_current_feature_if_presentB1c_.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1a_16FeaVariationInfoE26validate_single_sub_inputsB1c_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(2152) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 11 uses
  %.sroa.3 = alloca [16 x i8], align 8            ; 2 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1a_16FeaVariationInfoE22resolve_glyph_or_classB1c_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(2152) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2)
  %.not = icmp eq ptr %3, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1a_16FeaVariationInfoE22resolve_glyph_or_classB1c_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(2152) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassECshxhuDJfZv4T_6fontbe.exit unwind label %bb.an

bb.c:                                             ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassECshxhuDJfZv4T_6fontbe.exit
  %i.l = phi i64 [ %.sroa.0100.0.copyload, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassECshxhuDJfZv4T_6fontbe.exit ], [ -9223372036854775806, %bb.a ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 9 uses
  store i64 %i.l, ptr %i.m, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3, i64 16, i1 false)
  %i.n = load i64, ptr %i.j, align 8, !range !17, !noundef !4 ; 3 uses
  %i.o = icmp ne i64 %i.n, -9223372036854775807
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.n, -9223372036854775808
  %i.q = icmp slt i64 %i.n, 0
  %i.r = select i1 %i.q, i64 %i.p, i64 1
  switch i64 %i.r, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassECshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.b
  %.sroa.0100.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = icmp ne i64 %i.l, -9223372036854775807
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp sgt i64 %i.l, -1
  br i1 %i.t, label %bb.h, label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.u = icmp ne i64 %i.l, -9223372036854775807
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i64 %i.l, -1
  br i1 %i.v, label %bb.o, label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.w = invoke { i64, i64 } @_RNvXs8K_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB6_12GlyphOrClassNtB6_7AstNode5range(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2)
          to label %.invoke unwind label %bb.l

bb.h:                                             ; preds = %bb.e
  br i1 %.not, label %bb.k, label %bb.j, !prof !29

bb.i:                                             ; preds = %bb.q, %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassECshxhuDJfZv4T_6fontbe.exit59

bb.j:                                             ; preds = %bb.h
  %i.x = invoke { i64, i64 } @_RNvXs8K_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB6_12GlyphOrClassNtB6_7AstNode5range(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3)
          to label %.invoke unwind label %bb.l

bb.k:                                             ; preds = %bb.h
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #27
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.invoke, %bb.g, %bb.j, %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load i64, ptr %i.j, align 8, !range !17, !noundef !4 ; 2 uses
  %i.aa = icmp ne i64 %i.z, -9223372036854775807
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp sgt i64 %i.z, -1
  br i1 %i.ab, label %bb.al, label %bb.ak

bb.m:                                             ; preds = %bb.y, %4, %bb.k
  unreachable

.invoke:                                          ; preds = %bb.j, %bb.g
  %.sink102 = phi { i64, i64 } [ %i.w, %bb.g ], [ %i.x, %bb.j ] ; 2 uses
  %i.ac = phi ptr [ @141, %bb.g ], [ @137, %bb.j ]
  %i.ad = phi i64 [ 39, %bb.g ], [ 31, %bb.j ]
  %i.ae = extractvalue { i64, i64 } %.sink102, 0
  %i.af = extractvalue { i64, i64 } %.sink102, 1
  invoke void @_RINvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB3_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1b_16FeaVariationInfoE5errorReEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(2152) %1, i64 noundef %i.ae, i64 noundef %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ad)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %.invoke
  store i64 -1, ptr %0, align 8
  %i.ag = load i64, ptr %i.m, align 8, !range !17, !noundef !4 ; 2 uses
  %i.ah = icmp ne i64 %i.ag, -9223372036854775807
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp sgt i64 %i.ag, -1
  br i1 %i.ai, label %bb.ah, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassECshxhuDJfZv4T_6fontbe.exit59

bb.o:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !4 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 4611686018427387904
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i64 %i.ak, 1
  br i1 %i.am, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !noundef !4
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %4, label %bb.r, !prof !29

bb.q:                                             ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !4 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 4611686018427387904
  tail call void @llvm.assume(i1 %i.as)
  %.not28 = icmp eq i64 %i.ar, %i.ak
  br i1 %.not28, label %bb.i, label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !4, !noundef !4
  %i.av = load i16, ptr %i.au, align 2, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -9223372036854775808, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 %i.av, ptr %.sroa.511.0..sroa_idx, align 8
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i.a unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.thread67 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i.a: ; preds = %bb.r
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassECshxhuDJfZv4T_6fontbe.exit59

4:                                                ; preds = %bb.p
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @138) #27
          to label %bb.m unwind label %bb.u

bb.u:                                             ; preds = %4
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #23
          to label %.thread88 unwind label %bb.v

bb.v:                                             ; preds = %bb.an, %bb.am, %bb.al, %.body43, %bb.z, %.thread88, %bb.u
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

.thread88:                                        ; preds = %bb.u
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #23
          to label %.thread67 unwind label %bb.v

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  br i1 %.not, label %bb.y, label %bb.x, !prof !29

bb.x:                                             ; preds = %bb.w
  %i.ba = invoke { i64, i64 } @_RNvXs8K_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB6_12GlyphOrClassNtB6_7AstNode5range(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3)
          to label %bb.aa unwind label %bb.z      ; 2 uses

bb.y:                                             ; preds = %bb.w
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #27
          to label %bb.m unwind label %bb.z

bb.z:                                             ; preds = %bb.aa, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshxhuDJfZv4T_6fontbe.exit, %bb.y, %bb.x
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #23
          to label %.body43 unwind label %bb.v

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !4 ; 2 uses
  store i64 %i.bd, ptr %i.d, align 8
  %i.be = icmp ult i64 %i.bd, 4611686018427387904
  tail call void @llvm.assume(i1 %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !4 ; 2 uses
  store i64 %i.bg, ptr %i.c, align 8
  %i.bh = icmp ult i64 %i.bg, 4611686018427387904
  tail call void @llvm.assume(i1 %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.419.0..sroa_idx, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.bi, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.423.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @140, ptr noundef nonnull %i.b)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshxhuDJfZv4T_6fontbe.exit unwind label %bb.z

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.aa
  %i.bj = extractvalue { i64, i64 } %i.ba, 1
  %i.bk = extractvalue { i64, i64 } %i.ba, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB3_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1b_16FeaVariationInfoE5errorNtNtCsgCecv3eZDcN_5alloc6string6StringEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(2152) %1, i64 noundef %i.bk, i64 noundef %i.bj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.ab unwind label %bb.z

bb.ab:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshxhuDJfZv4T_6fontbe.exit
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i42 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body43 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i42: ; preds = %bb.ab
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassECshxhuDJfZv4T_6fontbe.exit46 unwind label %bb.ae

.body43:                                          ; preds = %bb.ae, %bb.ac, %bb.z
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.z ], [ %i.bn, %bb.ae ], [ %i.bl, %bb.ac ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #23
          to label %.thread67 unwind label %bb.v

bb.ae:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i42
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body43

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassECshxhuDJfZv4T_6fontbe.exit46: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i48.a unwind label %bb.af

bb.af:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassECshxhuDJfZv4T_6fontbe.exit46
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.thread67 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i48.a: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassECshxhuDJfZv4T_6fontbe.exit46
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassECshxhuDJfZv4T_6fontbe.exit59

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassECshxhuDJfZv4T_6fontbe.exit59: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i54.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i48.a, %bb.n, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.ah:                                            ; preds = %bb.n
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i54.a unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.thread67 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i54.a: ; preds = %bb.ah
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassECshxhuDJfZv4T_6fontbe.exit59

bb.ak:                                            ; preds = %bb.al, %bb.l
  %i.bs = load i64, ptr %i.m, align 8, !range !17, !noundef !4 ; 2 uses
  %i.bt = icmp ne i64 %i.bs, -9223372036854775807
  call void @llvm.assume(i1 %i.bt)
  %i.bu = icmp sgt i64 %i.bs, -1
  br i1 %i.bu, label %bb.am, label %.thread67

bb.al:                                            ; preds = %bb.l
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #23
          to label %bb.ak unwind label %bb.v

bb.am:                                            ; preds = %bb.ak
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #23
          to label %.thread67 unwind label %bb.v

.thread67:                                        ; preds = %.thread88, %.body43, %bb.s, %bb.af, %bb.ak, %bb.am, %bb.ai, %bb.an
  %.pn3462 = phi { ptr, i32 } [ %i.bq, %bb.ai ], [ %lpad.thr_comm, %bb.an ], [ %i.y, %bb.am ], [ %i.y, %bb.ak ], [ %i.bo, %bb.af ], [ %i.aw, %bb.s ], [ %.pn, %.body43 ], [ %i.ay, %.thread88 ]
  resume { ptr, i32 } %.pn3462

bb.an:                                            ; preds = %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #23
          to label %.thread67 unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB2_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1a_16FeaVariationInfoE27resolve_glyph_class_literalB1c_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(2152) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [72 x i8], align 8                ; 12 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [2 x i8], align 2                 ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [2 x i8], align 2                 ; 3 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 9 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [32 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 13 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 6 uses
  %i.w = alloca [32 x i8], align 8                ; 6 uses
  %i.x = alloca [184 x i8], align 8               ; 20 uses
  %i.y = alloca [24 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  store ptr inttoptr (i64 2 to ptr), ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 8 uses
  store i64 0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !noundef !4
  %i.ad = zext i32 %i.ac to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i64 0, ptr %i.x, align 8
  %.sroa.06.sroa.0.sroa.0.sroa.0.sroa.0.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.06.sroa.0.sroa.0.sroa.0.sroa.0.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.0.sroa.0.sroa.0.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 0, ptr %.sroa.06.sroa.0.sroa.0.sroa.0.sroa.0.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.0.sroa.0.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  store i64 0, ptr %.sroa.06.sroa.0.sroa.0.sroa.0.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.0.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  store ptr %2, ptr %.sroa.06.sroa.0.sroa.0.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.0.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  store i64 0, ptr %.sroa.06.sroa.0.sroa.0.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.0.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 144
  store i8 1, ptr %.sroa.06.sroa.0.sroa.0.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 152
  store i64 %i.ad, ptr %.sroa.06.sroa.0.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 160
  store i8 0, ptr %.sroa.06.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.06.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 168
  store i64 1, ptr %.sroa.06.sroa.2.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 176
  store i8 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 184
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 12 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 2096
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 2104
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 2112
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.0.sroa.5.sroa.6.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.0.sroa.7.sroa.5.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.sroa.7.sroa.6.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.be = invoke fastcc noundef align 8 ptr @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtB8_10skip_while9SkipWhileNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNCNvMs7_NtB1Z_5typedNtB2Q_17GlyphClassLiteral5items0EENCB2K_s_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3K_4find5checkRNtB1Z_11NodeOrTokenQNCB2K_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB4O_EECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(184) %i.x, ptr noundef nonnull %i.ae)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

.body45:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bk, %bb.bl, %bb.aw, %.body66, %bb.ax, %bb.ap, %bb.aq, %.loopexit.split-lp87.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w, %bb.x, %.loopexit.split-lp82.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.m, %bb.n
  %.pn40 = phi { ptr, i32 } [ %.pn, %bb.aw ], [ %lpad.loopexit.split-lp150, %.loopexit.split-lp87.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.dl, %bb.ap ], [ %lpad.loopexit.split-lp147, %.loopexit.split-lp82.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.fa, %bb.bk ], [ %lpad.loopexit.split-lp147, %bb.n ], [ %lpad.loopexit.split-lp147, %bb.m ], [ %lpad.loopexit.split-lp150, %bb.x ], [ %lpad.loopexit.split-lp150, %bb.w ], [ %i.dl, %bb.aq ], [ %.pn, %bb.ax ], [ %.pn, %.body66 ], [ %i.fa, %bb.bl ], [ %lpad.loopexit.split-lp145, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBG_10take_while9TakeWhileINtNtBG_4skip4SkipINtNtBG_10skip_while9SkipWhileNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNCNvMs7_NtB2x_5typedNtB3o_17GlyphClassLiteral5items0EENCB3i_s_0ENCB3i_s0_0EECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(184) %i.x) #23
          to label %.body unwind label %bb.as

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bu, %bb.bs, %bb.bn, %bb.bg, %bb.ar, %bb.aa, %bb.q, %bb.av, %bb.ao, %bb.ac, %bb.s, %bb.d, %bb.b, %bb.bp
  %lpad.loopexit.split-lp145 = landingpad { ptr, i32 }
          cleanup
  br label %.body45

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %i.be, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RNvXs1J_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB6_9GlyphNameNtB6_7AstNode4cast(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.be)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.c
  %i.bf = load i64, ptr %i.x, align 8, !range !8, !alias.scope !19744, !noundef !4
  %i.bg = icmp eq i64 %i.bf, -1
  br i1 %i.bg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBG_10take_while9TakeWhileINtNtBG_4skip4SkipINtNtBG_10skip_while9SkipWhileNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNCNvMs7_NtB2x_5typedNtB3o_17GlyphClassLiteral5items0EENCB3i_s_0ENCB3i_s0_0EECshxhuDJfZv4T_6fontbe.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor7NodeRefENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.x)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor6CursorECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor7NodeRefENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.x)
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor6CursorECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor7NodeRefENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.x)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBG_10take_while9TakeWhileINtNtBG_4skip4SkipINtNtBG_10skip_while9SkipWhileNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNCNvMs7_NtB2x_5typedNtB3o_17GlyphClassLiteral5items0EENCB3i_s_0ENCB3i_s0_0EECshxhuDJfZv4T_6fontbe.exit unwind label %bb.i

.body:                                            ; preds = %bb.i, %bb.g, %.body45
  %.pn40.pn = phi { ptr, i32 } [ %.pn40, %.body45 ], [ %i.bj, %bb.i ], [ %i.bh, %bb.g ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #23
          to label %bb.bv unwind label %bb.as

bb.i:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor6CursorECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBG_10take_while9TakeWhileINtNtBG_4skip4SkipINtNtBG_10skip_while9SkipWhileNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNCNvMs7_NtB2x_5typedNtB3o_17GlyphClassLiteral5items0EENCB3i_s_0ENCB3i_s0_0EECshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor6CursorECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  ret void

bb.j:                                             ; preds = %bb.d
  %i.bk = load i16, ptr %i.af, align 4, !range !23, !noundef !4
  %.not33 = icmp eq i16 %i.bk, -1
  br i1 %.not33, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false)
  %.val = load ptr, ptr %i.ag, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bl = invoke { i16, i16 } @_RINvMNtNtCscScJTt9VrQp_6fea_rs6common9glyph_mapNtB3_8GlyphMap3getNtCs9NoVXegZYB5_8smol_str7SmolStrECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
          to label %.noexc.i unwind label %.loopexit.split-lp82.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc.i:                                         ; preds = %bb.k
  %i.bm = extractvalue { i16, i16 } %i.bl, 0
  %i.bn = trunc i16 %i.bm to i1
  br i1 %i.bn, label %bb.o, label %bb.l, !prof !33

bb.l:                                             ; preds = %.noexc.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #28
          to label %.noexc1.i unwind label %.loopexit.split-lp82.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1.i:                                        ; preds = %bb.l
  unreachable

.loopexit.split-lp82.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.k, %bb.l
  %lpad.loopexit.split-lp147 = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19745)
  call void @llvm.experimental.noalias.scope.decl(metadata !19746)
  call void @llvm.experimental.noalias.scope.decl(metadata !19747)
  call void @llvm.experimental.noalias.scope.decl(metadata !19748)
  %i.bo = load i8, ptr %i.l, align 8, !range !19, !alias.scope !19749, !noundef !4
end_hunk_1
