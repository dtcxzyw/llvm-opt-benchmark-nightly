Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_workspace-6b434d4691723669.ruff_workspace.2e76c9c9f776d8f1-cgu.10?download=true
inline.NumInlined: 1753
inline.NumDeleted: 830
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2AWtUsOyxgP_3std4path7PathBufEINtB2_18SpecFromIterNestedB10_INtNtCs6Wt4yPw39th_9itertools11unique_impl6UniqueINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB30_5slice4iter4IterB10_EINvNtCsEhZmuQNqkz_11ruff_linter2fs14normalize_pathRB10_EEEE9from_iterCs3ZkgueCtkyH_14ruff_workspace:bb.a
bb.r:                                             ; preds = %bb.s, %bb.f, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6Wt4yPw39th_9itertools11unique_impl6UniqueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5slice4iter4IterNtNtCs2AWtUsOyxgP_3std4path7PathBufEINvNtCsEhZmuQNqkz_11ruff_linter2fs14normalize_pathRB2m_EEEECs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %bb.s, %.body
  %.pn11 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn.ph, %bb.s ]
  resume { ptr, i32 } %.pn11

bb.s:                                             ; preds = %bb.b, %bb.f
  %.pn.ph = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.m, %bb.f ]
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs2AWtUsOyxgP_3std4path7PathBufuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ap)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6Wt4yPw39th_9itertools11unique_impl6UniqueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5slice4iter4IterNtNtCs2AWtUsOyxgP_3std4path7PathBufEINvNtCsEhZmuQNqkz_11ruff_linter2fs14normalize_pathRB2m_EEEECs3ZkgueCtkyH_14ruff_workspace.exit unwind label %bb.r
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB2H_7flatten7FlattenINtNtB2L_6option8IntoIterBQ_EEB3u_EE9from_iterCs3ZkgueCtkyH_14ruff_workspace(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(176) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !2600 {
bb.a:
  %.sroa.7 = alloca i64, align 8                  ; 4 uses
  %.sroa.11 = alloca i64, align 8                 ; 4 uses
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [176 x i8], align 8               ; 20 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [56 x i8], align 8                ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke fastcc void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.g, ptr noalias noundef align 8 dereferenceable(176) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.c:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8, !range !15, !noundef !6
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %1)
  %i.k = load i64, ptr %i.e, align 8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.l = tail call i64 @llvm.uadd.sat.i64(i64 %i.k, i64 1)
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.l, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56)
          to label %.noexc unwind label %bb.i

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.n, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters7flatten7FlattenINtBE_8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(176) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_7flatten7FlattenINtNtB4_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEB1d_EECs3ZkgueCtkyH_14ruff_workspace.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters7flatten7FlattenINtBE_8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(88) %i.p) #26
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %bb.al, %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.f ], [ %.pn.ph, %bb.al ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_7flatten7FlattenINtNtB4_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEB1d_EECs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters7flatten7FlattenINtBE_8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(88) %i.r)
  br label %bb.h

bb.h:                                             ; preds = %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB2o_7flatten7FlattenINtNtB2s_6option8IntoIterBG_EEB3b_EE11spec_extendCs3ZkgueCtkyH_14ruff_workspace.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_7flatten7FlattenINtNtB4_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEB1d_EECs3ZkgueCtkyH_14ruff_workspace.exit
  ret void

bb.i:                                             ; preds = %bb.j, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(56) %i.f) #26
          to label %bb.al unwind label %bb.ak

.noexc:                                           ; preds = %bb.d
  %i.t = load i64, ptr %i.c, align 8, !range !14, !noundef !6
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !27, !noundef !6 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.u, label %bb.j, label %bb.k, !prof !8

bb.j:                                             ; preds = %.noexc
  %i.y = load i64, ptr %i.x, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.w, i64 %i.y) #31
          to label %.noexc5 unwind label %bb.i

.noexc5:                                          ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %.noexc
  %i.z = load ptr, ptr %i.x, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.aa = icmp ule i64 %.sroa.0.0.i, %i.w
  tail call void @llvm.assume(i1 %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false)
  store i64 %i.w, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.z, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.d, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 176, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2602)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 152 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 168 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorE7reserveCs3ZkgueCtkyH_14ruff_workspace.exit.i.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2603
  invoke fastcc void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(176) %i.d)
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.ah, %bb.n
  %.pn.i.i = phi { ptr, i32 } [ %i.cw, %bb.ah ], [ %i.ao, %bb.n ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_7flatten7FlattenINtNtB4_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEB1d_EECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.d) #26
          to label %.body unwind label %bb.ai

bb.n:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.o:                                             ; preds = %bb.l
  %i.ap = load i64, ptr %i.b, align 8, !range !15, !noalias !2603, !noundef !6
  %.not.i.i = icmp eq i64 %i.ap, -1
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2603
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !2603
  %i.aq = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2604, !noundef !6 ; 5 uses
  %i.ar = icmp ult i64 %i.aq, 164703072086692426
  call void @llvm.assume(i1 %i.ar)
  %i.as = load i64, ptr %i.h, align 8, !range !9, !alias.scope !2604, !noundef !6
  %i.at = icmp eq i64 %i.aq, %i.as
  br i1 %i.at, label %bb.t, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorE7reserveCs3ZkgueCtkyH_14ruff_workspace.exit.i.i

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2603
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters7flatten7FlattenINtBE_8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.d)
          to label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB2a_7flatten7FlattenINtNtB2e_6option8IntoIterBv_EEB2X_EECs3ZkgueCtkyH_14ruff_workspace.exit.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters7flatten7FlattenINtBE_8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(88) %i.ab) #26
          to label %.body unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.experimental.noalias.scope.decl(metadata !2605)
  call void @llvm.experimental.noalias.scope.decl(metadata !2606)
  %i.aw = load i64, ptr %i.d, align 8, !range !11, !alias.scope !2606, !noundef !6 ; 3 uses
  %.not.i = icmp eq i64 %i.aw, -3
  %i.ax = load i64, ptr %i.ab, align 8, !range !11, !alias.scope !2606, !noundef !6 ; 3 uses
  %.not8.i = icmp eq i64 %i.ax, -3                ; 2 uses
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = load ptr, ptr %i.ac, align 8, !alias.scope !2606, !noundef !6
  %.not.i.i37.i = icmp eq ptr %i.ay, null         ; 2 uses
  br i1 %.not8.i, label %bb.ae, label %bb.z

bb.v:                                             ; preds = %bb.t
  br i1 %.not8.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs3ZkgueCtkyH_14ruff_workspace.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.az = load ptr, ptr %i.ai, align 8, !alias.scope !2607, !noundef !6
  %.not.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.val.i.i.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !2608, !nonnull !6, !noundef !6
  %.val4.i.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !2608, !nonnull !6, !noundef !6
  %i.ba = ptrtoint ptr %.val4.i.i.i.i to i64
  %i.bb = ptrtoint ptr %.val.i.i.i.i to i64
  %i.bc = sub nuw i64 %i.ba, %i.bb
  %i.bd = udiv exact i64 %i.bc, 56
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i.i: ; preds = %bb.x, %bb.w
  %.sroa.7.0.i.i.i = phi i64 [ %i.bd, %bb.x ], [ 0, %bb.w ]
  %i.be = load ptr, ptr %i.al, align 8, !alias.scope !2607, !noundef !6
  %.not55.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not55.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i.i, label %bb.y

bb.y:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i.i
  %.val.i63.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !2609, !nonnull !6, !noundef !6
  %.val4.i64.i.i.i = load ptr, ptr %i.an, align 8, !alias.scope !2609, !nonnull !6, !noundef !6
  %i.bf = ptrtoint ptr %.val4.i64.i.i.i to i64
  %i.bg = ptrtoint ptr %.val.i63.i.i.i to i64
  %i.bh = sub nuw i64 %i.bf, %i.bg
  %i.bi = udiv exact i64 %i.bh, 56
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i.i: ; preds = %bb.y, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i.i
  %.sroa.8.0.i.i.i = phi i64 [ %i.bi, %bb.y ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i.i ]
  %i.bj = add nuw nsw i64 %.sroa.8.0.i.i.i, %.sroa.7.0.i.i.i
  %switch.i.i.i = icmp ugt i64 %i.ax, -3
  %spec.select = zext i1 %switch.i.i.i to i64
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs3ZkgueCtkyH_14ruff_workspace.exit

bb.z:                                             ; preds = %bb.u
  br i1 %.not.i.i37.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i14.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val.i.i.i12.i = load ptr, ptr %i.ad, align 8, !alias.scope !2610, !nonnull !6, !noundef !6
  %.val4.i.i.i13.i = load ptr, ptr %i.ae, align 8, !alias.scope !2610, !nonnull !6, !noundef !6
  %i.bk = ptrtoint ptr %.val4.i.i.i13.i to i64
  %i.bl = ptrtoint ptr %.val.i.i.i12.i to i64
  %i.bm = sub nuw i64 %i.bk, %i.bl
  %i.bn = udiv exact i64 %i.bm, 56
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i14.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i14.i: ; preds = %bb.aa, %bb.z
  %.sroa.7.0.i.i15.i = phi i64 [ %i.bn, %bb.aa ], [ 0, %bb.z ]
  %i.bo = load ptr, ptr %i.af, align 8, !alias.scope !2611, !noundef !6
  %.not55.i.i16.i = icmp eq ptr %i.bo, null
  br i1 %.not55.i.i16.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i19.i, label %bb.ab

bb.ab:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i14.i
  %.val.i63.i.i17.i = load ptr, ptr %i.ag, align 8, !alias.scope !2612, !nonnull !6, !noundef !6
  %.val4.i64.i.i18.i = load ptr, ptr %i.ah, align 8, !alias.scope !2612, !nonnull !6, !noundef !6
  %i.bp = ptrtoint ptr %.val4.i64.i.i18.i to i64
  %i.bq = ptrtoint ptr %.val.i63.i.i17.i to i64
  %i.br = sub nuw i64 %i.bp, %i.bq
  %i.bs = udiv exact i64 %i.br, 56
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i19.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i19.i: ; preds = %bb.ab, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i14.i
  %.sroa.8.0.i.i20.i = phi i64 [ %i.bs, %bb.ab ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i14.i ]
  %i.bt = add nuw nsw i64 %.sroa.8.0.i.i20.i, %.sroa.7.0.i.i15.i ; 2 uses
  %i.bu = load ptr, ptr %i.ai, align 8, !alias.scope !2613, !noundef !6
  %.not.i.i24.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i24.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i27.i, label %bb.ac

bb.ac:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i19.i
  %.val.i.i.i25.i = load ptr, ptr %i.aj, align 8, !alias.scope !2614, !nonnull !6, !noundef !6
  %.val4.i.i.i26.i = load ptr, ptr %i.ak, align 8, !alias.scope !2614, !nonnull !6, !noundef !6
  %i.bv = ptrtoint ptr %.val4.i.i.i26.i to i64
  %i.bw = ptrtoint ptr %.val.i.i.i25.i to i64
  %i.bx = sub nuw i64 %i.bv, %i.bw
  %i.by = udiv exact i64 %i.bx, 56
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i27.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i27.i: ; preds = %bb.ac, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i19.i
  %.sroa.7.0.i.i28.i = phi i64 [ %i.by, %bb.ac ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i19.i ]
  %i.bz = load ptr, ptr %i.al, align 8, !alias.scope !2613, !noundef !6
  %.not55.i.i29.i = icmp eq ptr %i.bz, null
  br i1 %.not55.i.i29.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i32.i, label %bb.ad

bb.ad:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i27.i
  %.val.i63.i.i30.i = load ptr, ptr %i.am, align 8, !alias.scope !2615, !nonnull !6, !noundef !6
  %.val4.i64.i.i31.i = load ptr, ptr %i.an, align 8, !alias.scope !2615, !nonnull !6, !noundef !6
  %i.ca = ptrtoint ptr %.val4.i64.i.i31.i to i64
  %i.cb = ptrtoint ptr %.val.i63.i.i30.i to i64
  %i.cc = sub nuw i64 %i.ca, %i.cb
  %i.cd = udiv exact i64 %i.cc, 56
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i32.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i32.i: ; preds = %bb.ad, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i27.i
  %.sroa.8.0.i.i33.i = phi i64 [ %i.cd, %bb.ad ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i27.i ]
  %i.ce = add nuw nsw i64 %.sroa.8.0.i.i33.i, %.sroa.7.0.i.i28.i ; 2 uses
  %i.cf = add nuw nsw i64 %i.ce, %i.bt
  %i.cg = and i64 %i.ax, %i.aw
  %or.cond.i = icmp ugt i64 %i.cg, -3
  %i.ch = add nuw nsw i64 %i.ce, %i.bt
  %.sroa.46.0.i = select i1 %or.cond.i, i64 %i.ch, i64 undef
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs3ZkgueCtkyH_14ruff_workspace.exit

bb.ae:                                            ; preds = %bb.u
  br i1 %.not.i.i37.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i40.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.val.i.i.i38.i = load ptr, ptr %i.ad, align 8, !alias.scope !2616, !nonnull !6, !noundef !6
  %.val4.i.i.i39.i = load ptr, ptr %i.ae, align 8, !alias.scope !2616, !nonnull !6, !noundef !6
  %i.ci = ptrtoint ptr %.val4.i.i.i39.i to i64
  %i.cj = ptrtoint ptr %.val.i.i.i38.i to i64
  %i.ck = sub nuw i64 %i.ci, %i.cj
  %i.cl = udiv exact i64 %i.ck, 56
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i40.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i40.i: ; preds = %bb.af, %bb.ae
  %.sroa.7.0.i.i41.i = phi i64 [ %i.cl, %bb.af ], [ 0, %bb.ae ]
  %i.cm = load ptr, ptr %i.af, align 8, !alias.scope !2617, !noundef !6
  %.not55.i.i42.i = icmp eq ptr %i.cm, null
  br i1 %.not55.i.i42.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i45.i, label %bb.ag

bb.ag:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i40.i
  %.val.i63.i.i43.i = load ptr, ptr %i.ag, align 8, !alias.scope !2618, !nonnull !6, !noundef !6
  %.val4.i64.i.i44.i = load ptr, ptr %i.ah, align 8, !alias.scope !2618, !nonnull !6, !noundef !6
  %i.cn = ptrtoint ptr %.val4.i64.i.i44.i to i64
  %i.co = ptrtoint ptr %.val.i63.i.i43.i to i64
  %i.cp = sub nuw i64 %i.cn, %i.co
  %i.cq = udiv exact i64 %i.cp, 56
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i45.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i45.i: ; preds = %bb.ag, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i40.i
  %.sroa.8.0.i.i46.i = phi i64 [ %i.cq, %bb.ag ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i40.i ]
  %i.cr = add nuw nsw i64 %.sroa.8.0.i.i46.i, %.sroa.7.0.i.i41.i
  %switch.i.i47.i = icmp ugt i64 %i.aw, -3
  %spec.select16 = zext i1 %switch.i.i47.i to i64
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs3ZkgueCtkyH_14ruff_workspace.exit

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i45.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i.i, %bb.v, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i32.i
  %.sroa.0.0 = phi i64 [ 0, %bb.v ], [ %i.cf, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i32.i ], [ %i.bj, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i.i ], [ %i.cr, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i45.i ]
  %.sink58.i.sroa.phi = phi ptr [ %.sroa.11, %bb.v ], [ %.sroa.11, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i32.i ], [ %.sroa.7, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i.i ], [ %.sroa.7, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i45.i ]
  %.sroa.46.0.sink.i = phi i64 [ 0, %bb.v ], [ %.sroa.46.0.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i32.i ], [ %spec.select, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i.i ], [ %spec.select16, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i45.i ]
  store i64 %.sroa.46.0.sink.i, ptr %.sink58.i.sroa.phi, align 8, !alias.scope !2605
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  %i.cs = add nuw nsw i64 %.sroa.0.0, 1
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.aq, i64 noundef %i.cs, i64 noundef 8, i64 noundef 56)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorE7reserveCs3ZkgueCtkyH_14ruff_workspace.exit.i.i unwind label %bb.ah

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorE7reserveCs3ZkgueCtkyH_14ruff_workspace.exit.i.i: ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs3ZkgueCtkyH_14ruff_workspace.exit, %bb.p
  %i.ct = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !2604, !nonnull !6, !noundef !6
  %i.cu = getelementptr inbounds nuw [56 x i8], ptr %i.ct, i64 %i.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cu, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  %i.cv = add nuw nsw i64 %i.aq, 1
  store i64 %i.cv, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2603
  br label %bb.l

bb.ah:                                            ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs3ZkgueCtkyH_14ruff_workspace.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(56) %i.a) #26
          to label %bb.m unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.m
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB2a_7flatten7FlattenINtNtB2e_6option8IntoIterBv_EEB2X_EECs3ZkgueCtkyH_14ruff_workspace.exit.i: ; preds = %bb.q
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters7flatten7FlattenINtBE_8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(88) %i.ab)
          to label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB2o_7flatten7FlattenINtNtB2s_6option8IntoIterBG_EEB3b_EE11spec_extendCs3ZkgueCtkyH_14ruff_workspace.exit unwind label %bb.aj

bb.aj:                                            ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB2a_7flatten7FlattenINtNtB2e_6option8IntoIterBv_EEB2X_EECs3ZkgueCtkyH_14ruff_workspace.exit.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.r, %bb.aj
  %eh.lpad-body = phi { ptr, i32 } [ %i.cy, %bb.aj ], [ %i.au, %bb.r ], [ %.pn.i.i, %bb.m ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(24) %i.h) #26
          to label %common.resume unwind label %bb.ak

_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB2o_7flatten7FlattenINtNtB2s_6option8IntoIterBG_EEB3b_EE11spec_extendCs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB2a_7flatten7FlattenINtNtB2e_6option8IntoIterBv_EEB2X_EECs3ZkgueCtkyH_14ruff_workspace.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.h

bb.ak:                                            ; preds = %bb.al, %.body, %bb.i
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.al:                                            ; preds = %bb.i, %bb.b
  %.pn.ph = phi { ptr, i32 } [ %i.i, %bb.b ], [ %i.s, %bb.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_7flatten7FlattenINtNtB4_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEB1d_EECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(176) %1) #26
          to label %common.resume unwind label %bb.ak
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types13PerFileIgnoreEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtB6_6string6StringIBR_NtNtB16_13rule_selector22UnresolvedRuleSelectorEENCNCNvMs1_NtCs3ZkgueCtkyH_14ruff_workspace13configurationNtB5B_17LintConfiguration12from_optionss1_00EE9from_iterB5D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !2637 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [80 x i8], align 8                ; 4 uses
  %i.e = alloca [80 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [80 x i8], align 8                ; 9 uses
  %i.k = alloca [80 x i8], align 8                ; 4 uses
  %i.l = alloca [80 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2638)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvXsE_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCscdodAO9FK5_5alloc6string6StringINtNtBX_3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.n = load i64, ptr %i.i, align 8, !range !10, !noalias !2639, !noundef !6
  %.not.i = icmp eq i64 %i.n, -1
  br i1 %.not.i, label %.thread14, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i = load ptr, ptr %i.o, align 8, !alias.scope !2638, !nonnull !6, !noundef !6
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val1.i = load i64, ptr %i.p, align 8, !alias.scope !2638, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !2639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2640
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !2639
  invoke void @_RNvMsi_NtNtCsEhZmuQNqkz_11ruff_linter8settings5typesNtB5_13PerFileIgnore3new(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 %.val1.i)
          to label %bb.d unwind label %bb.c

.thread14:                                        ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2640
  %.pr = load i64, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.not = icmp eq i64 %.pr, -1
  br i1 %.not, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.thread14, %bb.d
  store i64 0, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.t, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @_RNvXsC_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCscdodAO9FK5_5alloc6string6StringINtNtBX_3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
  br label %bb.f

bb.f:                                             ; preds = %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types13PerFileIgnoreEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtB6_6string6StringIBH_NtNtBW_13rule_selector22UnresolvedRuleSelectorEENCNCNvMs1_NtCs3ZkgueCtkyH_14ruff_workspace13configurationNtB5h_17LintConfiguration12from_optionss1_00EE11spec_extendB5j_.exit, %bb.e
  ret void

bb.g:                                             ; preds = %bb.i, %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types13PerFileIgnoreECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(80) %i.k) #26
          to label %bb.v unwind label %bb.u

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.k, ptr noundef nonnull align 8 dereferenceable(80) %i.l, i64 80, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val = load i64, ptr %i.v, align 8, !noundef !6
  %i.w = call i64 @llvm.uadd.sat.i64(i64 %.val, i64 1)
  %.sroa.0.0.i = call noundef i64 @llvm.umax.i64(i64 %i.w, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 80)
          to label %.noexc6 unwind label %bb.g

.noexc6:                                          ; preds = %bb.h
  %i.x = load i64, ptr %i.f, align 8, !range !14, !noundef !6
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !27, !noundef !6 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.y, label %bb.i, label %bb.j, !prof !8

bb.i:                                             ; preds = %.noexc6
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextCs3ZkgueCtkyH_14ruff_workspace:bb.a
  br i1 %.not6.i, label %bb.c, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtB8_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEB2m_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs3ZkgueCtkyH_14ruff_workspace.exit

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtB8_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEB2m_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs3ZkgueCtkyH_14ruff_workspace.exit.thread: ; preds = %bb.a
  store i64 -1, ptr %i.b, align 8, !alias.scope !3506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3508
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters7flatten7FlattenINtBE_8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(88) %1)
          to label %bb.e unwind label %bb.d, !noalias !3506

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  store i64 -3, ptr %1, align 8, !alias.scope !3507
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(56) %i.a) #26
          to label %common.resume unwind label %bb.f, !noalias !3506

bb.e:                                             ; preds = %bb.c
  store i64 -3, ptr %1, align 8, !alias.scope !3507
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtB8_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEB2m_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs3ZkgueCtkyH_14ruff_workspace.exit

bb.f:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !3506
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.i, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtB8_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEB2m_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %bb.b, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !3507
  %.pr = load i64, ptr %i.b, align 8, !alias.scope !3509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3508
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3511)
  %.not.i1 = icmp eq i64 %.pr, -1
  br i1 %.not.i1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtB8_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEB2m_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs3ZkgueCtkyH_14ruff_workspace.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !alias.scope !3512
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB25_5ChainINtNtB27_7flatten7FlattenINtB3_8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecBI_EEEB2L_ENtNtNtB29_6traits8iterator8Iterator4next0ECs3ZkgueCtkyH_14ruff_workspace.exit

bb.h:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtB8_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEB2m_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs3ZkgueCtkyH_14ruff_workspace.exit.thread, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtB8_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEB2m_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs3ZkgueCtkyH_14ruff_workspace.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3514)
  %i.h = load i64, ptr %i.g, align 8, !range !11, !alias.scope !3515, !noundef !6
  %.not.i.i = icmp eq i64 %i.h, -3
  br i1 %.not.i.i, label %_RNCNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB6_5ChainINtNtB8_7flatten7FlattenINtNtBc_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEB11_ENtNtNtBa_6traits8iterator8Iterator4next0Cs3ZkgueCtkyH_14ruff_workspace.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEENtNtNtB9_6traits8iterator8Iterator4nextCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 dereferenceable(88) %i.g)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB25_5ChainINtNtB27_7flatten7FlattenINtB3_8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecBI_EEEB2L_ENtNtNtB29_6traits8iterator8Iterator4next0ECs3ZkgueCtkyH_14ruff_workspace.exit unwind label %bb.j, !noalias !3509

_RNCNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB6_5ChainINtNtB8_7flatten7FlattenINtNtBc_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEB11_ENtNtNtBa_6traits8iterator8Iterator4next0Cs3ZkgueCtkyH_14ruff_workspace.exit.thread.i: ; preds = %bb.h
  store i64 -1, ptr %0, align 8, !alias.scope !3516
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB25_5ChainINtNtB27_7flatten7FlattenINtB3_8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecBI_EEEB2L_ENtNtNtB29_6traits8iterator8Iterator4next0ECs3ZkgueCtkyH_14ruff_workspace.exit

bb.j:                                             ; preds = %bb.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b) #26
          to label %common.resume unwind label %bb.k, !noalias !3510

bb.k:                                             ; preds = %bb.j
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !3510
  unreachable

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB25_5ChainINtNtB27_7flatten7FlattenINtB3_8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecBI_EEEB2L_ENtNtNtB29_6traits8iterator8Iterator4next0ECs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %bb.i, %bb.g, %_RNCNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB6_5ChainINtNtB8_7flatten7FlattenINtNtBc_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEB11_ENtNtNtBa_6traits8iterator8Iterator4next0Cs3ZkgueCtkyH_14ruff_workspace.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs3ZkgueCtkyH_14ruff_workspace(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(176) %1) unnamed_addr #9 personality ptr @rust_eh_personality !guid !3553 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !11, !noundef !6 ; 4 uses
  %.not = icmp eq i64 %i.a, -3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.c = load i64, ptr %i.b, align 8, !range !11, !noundef !6 ; 4 uses
  %.not8 = icmp eq i64 %i.c, -3                   ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not8, label %bb.o, label %bb.j

bb.c:                                             ; preds = %bb.a
  br i1 %.not8, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3557)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !3558, !noundef !6
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !3559, !nonnull !6, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val4.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !3559, !nonnull !6, !noundef !6
  %i.h = ptrtoint ptr %.val4.i.i.i to i64
  %i.i = ptrtoint ptr %.val.i.i.i to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = udiv exact i64 %i.j, 56
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i: ; preds = %bb.e, %bb.d
  %.sroa.7.0.i.i = phi i64 [ %i.k, %bb.e ], [ 0, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !3558, !noundef !6
  %.not55.i.i = icmp eq ptr %i.m, null
  br i1 %.not55.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.val.i63.i.i = load ptr, ptr %i.n, align 8, !alias.scope !3560, !nonnull !6, !noundef !6
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.val4.i64.i.i = load ptr, ptr %i.o, align 8, !alias.scope !3560, !nonnull !6, !noundef !6
  %i.p = ptrtoint ptr %.val4.i64.i.i to i64
  %i.q = ptrtoint ptr %.val.i63.i.i to i64
  %i.r = sub nuw i64 %i.p, %i.q
  %i.s = udiv exact i64 %i.r, 56
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i: ; preds = %bb.f, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i
  %.sroa.8.0.i.i = phi i64 [ %i.s, %bb.f ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i ]
  %i.t = add nuw nsw i64 %.sroa.8.0.i.i, %.sroa.7.0.i.i ; 2 uses
  %switch.i.i = icmp ugt i64 %i.c, -3
  br i1 %switch.i.i, label %bb.g, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEENtNtNtB9_6traits8iterator8Iterator9size_hintCs3ZkgueCtkyH_14ruff_workspace.exit

bb.g:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.t, ptr %i.u, align 8, !alias.scope !3561
  br label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEENtNtNtB9_6traits8iterator8Iterator9size_hintCs3ZkgueCtkyH_14ruff_workspace.exit

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEENtNtNtB9_6traits8iterator8Iterator9size_hintCs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i, %bb.g
  %.sink.i.i = phi i64 [ 1, %bb.g ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i ]
  store i64 %i.t, ptr %0, align 8, !alias.scope !3561
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.v, align 8
  br label %bb.i

bb.i:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i32, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEENtNtNtB9_6traits8iterator8Iterator9size_hintCs3ZkgueCtkyH_14ruff_workspace.exit49, %bb.h, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEENtNtNtB9_6traits8iterator8Iterator9size_hintCs3ZkgueCtkyH_14ruff_workspace.exit
  %.sink58 = phi i64 [ 16, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i32 ], [ 8, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEENtNtNtB9_6traits8iterator8Iterator9size_hintCs3ZkgueCtkyH_14ruff_workspace.exit49 ], [ 16, %bb.h ], [ 8, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEENtNtNtB9_6traits8iterator8Iterator9size_hintCs3ZkgueCtkyH_14ruff_workspace.exit ]
  %.sroa.46.0.sink = phi i64 [ %.sroa.46.0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i32 ], [ %.sink.i.i48, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEENtNtNtB9_6traits8iterator8Iterator9size_hintCs3ZkgueCtkyH_14ruff_workspace.exit49 ], [ 0, %bb.h ], [ %.sink.i.i, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEENtNtNtB9_6traits8iterator8Iterator9size_hintCs3ZkgueCtkyH_14ruff_workspace.exit ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %.sink58
  store i64 %.sroa.46.0.sink, ptr %i.w, align 8
  ret void

bb.j:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !3562, !noundef !6
  %.not.i.i11 = icmp eq ptr %i.y, null
  br i1 %.not.i.i11, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i14, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i.i12 = load ptr, ptr %i.z, align 8, !alias.scope !3563, !nonnull !6, !noundef !6
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val4.i.i.i13 = load ptr, ptr %i.aa, align 8, !alias.scope !3563, !nonnull !6, !noundef !6
  %i.ab = ptrtoint ptr %.val4.i.i.i13 to i64
  %i.ac = ptrtoint ptr %.val.i.i.i12 to i64
  %i.ad = sub nuw i64 %i.ab, %i.ac
  %i.ae = udiv exact i64 %i.ad, 56
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i14

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i14: ; preds = %bb.k, %bb.j
  %.sroa.7.0.i.i15 = phi i64 [ %i.ae, %bb.k ], [ 0, %bb.j ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !3562, !noundef !6
  %.not55.i.i16 = icmp eq ptr %i.ag, null
  br i1 %.not55.i.i16, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i19, label %bb.l

bb.l:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i14
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i63.i.i17 = load ptr, ptr %i.ah, align 8, !alias.scope !3564, !nonnull !6, !noundef !6
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val4.i64.i.i18 = load ptr, ptr %i.ai, align 8, !alias.scope !3564, !nonnull !6, !noundef !6
  %i.aj = ptrtoint ptr %.val4.i64.i.i18 to i64
  %i.ak = ptrtoint ptr %.val.i63.i.i17 to i64
  %i.al = sub nuw i64 %i.aj, %i.ak
  %i.am = udiv exact i64 %i.al, 56
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i19

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i19: ; preds = %bb.l, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i14
  %.sroa.8.0.i.i20 = phi i64 [ %i.am, %bb.l ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i14 ]
  %i.an = add nuw nsw i64 %.sroa.8.0.i.i20, %.sroa.7.0.i.i15 ; 3 uses
  %switch.i.i21 = icmp ugt i64 %i.a, -3
  %spec.select = select i1 %switch.i.i21, i64 %i.an, i64 undef
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !3565, !noundef !6
  %.not.i.i24 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i24, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i27, label %bb.m

bb.m:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i19
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val.i.i.i25 = load ptr, ptr %i.aq, align 8, !alias.scope !3566, !nonnull !6, !noundef !6
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val4.i.i.i26 = load ptr, ptr %i.ar, align 8, !alias.scope !3566, !nonnull !6, !noundef !6
  %i.as = ptrtoint ptr %.val4.i.i.i26 to i64
  %i.at = ptrtoint ptr %.val.i.i.i25 to i64
  %i.au = sub nuw i64 %i.as, %i.at
  %i.av = udiv exact i64 %i.au, 56
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i27

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i27: ; preds = %bb.m, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i19
  %.sroa.7.0.i.i28 = phi i64 [ %i.av, %bb.m ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i19 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !3565, !noundef !6
  %.not55.i.i29 = icmp eq ptr %i.ax, null
  br i1 %.not55.i.i29, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i32, label %bb.n

bb.n:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i27
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.val.i63.i.i30 = load ptr, ptr %i.ay, align 8, !alias.scope !3567, !nonnull !6, !noundef !6
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.val4.i64.i.i31 = load ptr, ptr %i.az, align 8, !alias.scope !3567, !nonnull !6, !noundef !6
  %i.ba = ptrtoint ptr %.val4.i64.i.i31 to i64
  %i.bb = ptrtoint ptr %.val.i63.i.i30 to i64
  %i.bc = sub nuw i64 %i.ba, %i.bb
  %i.bd = udiv exact i64 %i.bc, 56
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i32

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i32: ; preds = %bb.n, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i27
  %.sroa.8.0.i.i33 = phi i64 [ %i.bd, %bb.n ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i27 ]
  %i.be = add nuw nsw i64 %.sroa.8.0.i.i33, %.sroa.7.0.i.i28 ; 2 uses
  %switch.i.i34 = icmp ugt i64 %i.c, -3
  %spec.select54 = select i1 %switch.i.i34, i64 %i.be, i64 undef
  %i.bf = add nuw nsw i64 %i.be, %i.an
  %i.bg = and i64 %i.c, %i.a
  %or.cond = icmp ugt i64 %i.bg, -3               ; 2 uses
  %i.bh = add i64 %spec.select54, %spec.select    ; 2 uses
  %i.bi = icmp uge i64 %i.bh, %i.an
  %.sroa.46.0 = select i1 %or.cond, i64 %i.bh, i64 undef
  %narrow = select i1 %or.cond, i1 %i.bi, i1 false
  %.sroa.05.0 = zext i1 %narrow to i64
  store i64 %i.bf, ptr %0, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0, ptr %i.bj, align 8
  br label %bb.i

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3571)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !3572, !noundef !6
  %.not.i.i37 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i37, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i40, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i.i38 = load ptr, ptr %i.bm, align 8, !alias.scope !3573, !nonnull !6, !noundef !6
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val4.i.i.i39 = load ptr, ptr %i.bn, align 8, !alias.scope !3573, !nonnull !6, !noundef !6
  %i.bo = ptrtoint ptr %.val4.i.i.i39 to i64
  %i.bp = ptrtoint ptr %.val.i.i.i38 to i64
  %i.bq = sub nuw i64 %i.bo, %i.bp
  %i.br = udiv exact i64 %i.bq, 56
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i40

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i40: ; preds = %bb.p, %bb.o
  %.sroa.7.0.i.i41 = phi i64 [ %i.br, %bb.p ], [ 0, %bb.o ]
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !3572, !noundef !6
  %.not55.i.i42 = icmp eq ptr %i.bt, null
  br i1 %.not55.i.i42, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i45, label %bb.q

bb.q:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i40
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i63.i.i43 = load ptr, ptr %i.bu, align 8, !alias.scope !3574, !nonnull !6, !noundef !6
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val4.i64.i.i44 = load ptr, ptr %i.bv, align 8, !alias.scope !3574, !nonnull !6, !noundef !6
  %i.bw = ptrtoint ptr %.val4.i64.i.i44 to i64
  %i.bx = ptrtoint ptr %.val.i63.i.i43 to i64
  %i.by = sub nuw i64 %i.bw, %i.bx
  %i.bz = udiv exact i64 %i.by, 56
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i45

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i45: ; preds = %bb.q, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i40
  %.sroa.8.0.i.i46 = phi i64 [ %i.bz, %bb.q ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit.i.i40 ]
  %i.ca = add nuw nsw i64 %.sroa.8.0.i.i46, %.sroa.7.0.i.i41 ; 2 uses
  %switch.i.i47 = icmp ugt i64 %i.a, -3
  br i1 %switch.i.i47, label %bb.r, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEENtNtNtB9_6traits8iterator8Iterator9size_hintCs3ZkgueCtkyH_14ruff_workspace.exit49

bb.r:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i45
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ca, ptr %i.cb, align 8, !alias.scope !3575
  br label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEENtNtNtB9_6traits8iterator8Iterator9size_hintCs3ZkgueCtkyH_14ruff_workspace.exit49

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEENtNtNtB9_6traits8iterator8Iterator9size_hintCs3ZkgueCtkyH_14ruff_workspace.exit49: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i45, %bb.r
  %.sink.i.i48 = phi i64 [ 1, %bb.r ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs3ZkgueCtkyH_14ruff_workspace.exit65.i.i45 ]
  store i64 %i.ca, ptr %0, align 8, !alias.scope !3575
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types15CompiledPerFileNtNtCskLngH8kgpZI_15ruff_python_ast14python_version13PythonVersionEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs3ZkgueCtkyH_14ruff_workspace(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !3582 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.013.i = alloca [192 x i8], align 8       ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.h = load i64, ptr %i.e, align 8, !noundef !6 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3583)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3584
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 0, 46116860184273880) %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 200), !noalias !3584
  %i.i = load i64, ptr %i.c, align 8, !range !14, !noalias !3584, !noundef !6
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !27, !noalias !3584, !noundef !6 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3ZkgueCtkyH_14ruff_workspace.exit.i, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !3584
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #31, !noalias !3584
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3ZkgueCtkyH_14ruff_workspace.exit.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !3584, !nonnull !6, !noundef !6 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3584
  store i64 %i.l, ptr %i.d, align 8, !noalias !3584
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !3584
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw [200 x i8], ptr %i.g, i64 %i.h
  %i.t = icmp eq i64 %i.l, 0
  br i1 %i.t, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inINtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types15CompiledPerFileNtNtCskLngH8kgpZI_15ruff_python_ast14python_version13PythonVersionENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs3ZkgueCtkyH_14ruff_workspace.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3ZkgueCtkyH_14ruff_workspace.exit.i
  %.sroa.013.96..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.013.i, i64 96
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.012.043.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.w, %bb.g ] ; 7 uses
  %.sroa.7.042.i = phi i64 [ 0, %.lr.ph.i ], [ %i.x, %bb.g ] ; 3 uses
  %.sroa.10.041.i = phi i64 [ %i.l, %.lr.ph.i ], [ %i.u, %bb.g ]
  %i.u = add i64 %.sroa.10.041.i, -1              ; 2 uses
  %i.v = icmp eq ptr %.sroa.012.043.i, %i.s
  br i1 %i.v, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inINtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types15CompiledPerFileNtNtCskLngH8kgpZI_15ruff_python_ast14python_version13PythonVersionENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs3ZkgueCtkyH_14ruff_workspace.exit, label %bb.d

.loopexit.i:                                      ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.043.i, i64 200
  %i.x = add nuw nsw i64 %.sroa.7.042.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.013.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3585)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3586
  invoke fastcc void @_RNvXsk_NtCs3AS159VDs7t_7globset4globNtB5_11GlobMatcherNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %.sroa.012.043.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !3587

.noexc.i:                                         ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3586
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.043.i, i64 96
  invoke fastcc void @_RNvXsk_NtCs3AS159VDs7t_7globset4globNtB5_11GlobMatcherNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.y)
          to label %bb.g unwind label %bb.e, !noalias !3588

bb.e:                                             ; preds = %.noexc.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3AS159VDs7t_7globset4glob11GlobMatcherECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(96) %i.b) #26
          to label %bb.i unwind label %bb.f, !noalias !3588

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !3588
  unreachable

bb.g:                                             ; preds = %.noexc.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.012.043.i, i64 194
  %i.ac = load i8, ptr %i.ab, align 2, !range !5, !alias.scope !3589, !noundef !6
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.012.043.i, i64 192
  %.val.i.i = load i8, ptr %i.ad, align 2, !alias.scope !3589, !noundef !6
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.012.043.i, i64 193
  %.val2.i.i = load i8, ptr %i.ae, align 1, !alias.scope !3589, !noundef !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.013.i, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false), !noalias !3590
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.013.96..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !noalias !3590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3586
  %i.af = getelementptr inbounds nuw [200 x i8], ptr %i.o, i64 %.sroa.7.042.i ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.af, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.013.i, i64 192, i1 false), !noalias !3587
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 192
  store i8 %.val.i.i, ptr %.sroa.427.0..sroa_idx.i, align 8, !noalias !3587
  %.sroa.528.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 193
  store i8 %.val2.i.i, ptr %.sroa.528.0..sroa_idx.i, align 1, !noalias !3587
  %.sroa.629.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 194
  store i8 %i.ac, ptr %.sroa.629.0..sroa_idx.i, align 2, !noalias !3587
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.013.i)
  %i.ag = icmp eq i64 %i.u, 0
  br i1 %i.ag, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inINtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types15CompiledPerFileNtNtCskLngH8kgpZI_15ruff_python_ast14python_version13PythonVersionENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs3ZkgueCtkyH_14ruff_workspace.exit, label %bb.c

bb.h:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !3587
  unreachable

bb.i:                                             ; preds = %bb.e, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.z, %bb.e ], [ %lpad.loopexit.i, %.loopexit.i ]
  store i64 %.sroa.7.042.i, ptr %i.r, align 8, !noalias !3584
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types15CompiledPerFileNtNtCskLngH8kgpZI_15ruff_python_ast14python_version13PythonVersionEEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(24) %i.d) #26
          to label %bb.j unwind label %bb.h, !noalias !3587

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inINtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types15CompiledPerFileNtNtCskLngH8kgpZI_15ruff_python_ast14python_version13PythonVersionENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %bb.c, %bb.g, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3ZkgueCtkyH_14ruff_workspace.exit.i
  store i64 %i.h, ptr %i.r, align 8, !noalias !3584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !3583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3584
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs3ZkgueCtkyH_14ruff_workspace(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !3594 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
end_hunk_1
