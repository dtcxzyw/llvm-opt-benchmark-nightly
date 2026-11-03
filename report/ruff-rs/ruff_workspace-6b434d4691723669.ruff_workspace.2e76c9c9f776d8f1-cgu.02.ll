Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_workspace-6b434d4691723669.ruff_workspace.2e76c9c9f776d8f1-cgu.02?download=true
inline.NumInlined: 1096
inline.NumDeleted: 275
begin_hunk_0_@_RNvMsi_NtCs3ZkgueCtkyH_14ruff_workspace7optionsNtB5_17Flake8SelfOptions13into_settings:bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(24) %1) #21
          to label %.body.thread.thread unwind label %bb.i

bb.i:                                             ; preds = %.body.thread.thread, %bb.h
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.j:                                             ; preds = %.body.thread.thread
  resume { ptr, i32 } %eh.lpad-body3139

.body.thread.thread:                              ; preds = %bb.d, %bb.h, %.body.thread.thread40
  %eh.lpad-body3139 = phi { ptr, i32 } [ %lpad.thr_comm42, %.body.thread.thread40 ], [ %i.d, %bb.d ], [ %lpad.thr_comm.split-lp, %bb.h ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(24) %i.n) #21
          to label %bb.j unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsj_NtCs3ZkgueCtkyH_14ruff_workspace7optionsNtB5_24Flake8TidyImportsOptions17try_into_settings(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(160) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 8 uses
  %i.b = alloca [4 x i8], align 4                 ; 8 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %.sroa.517 = alloca [24 x i8], align 8          ; 3 uses
  %i.g = alloca [48 x i8], align 8                ; 16 uses
  %i.h = alloca [48 x i8], align 8                ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload = load i64, ptr %i.i, align 8 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload, -2
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, i64 40, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %i.j, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.429.0..sroa_idx, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %.sroa.530.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi i64 [ -1, %bb.c ], [ %.sroa.0.0.copyload, %bb.b ] ; 2 uses
  store i64 %i.k, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.03.0.copyload = load i64, ptr %i.l, align 8 ; 2 uses
  %.not42 = icmp eq i64 %.sroa.03.0.copyload, -2
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %.not42, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.55.0..sroa_idx, i64 40, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 0, ptr %i.m, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 0, ptr %.sroa.536.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.03.0.copyload.sink = phi i64 [ -1, %bb.f ], [ %.sroa.03.0.copyload, %bb.e ] ; 2 uses
  store i64 %.sroa.03.0.copyload.sink, ptr %i.g, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607)
  %.not.i.i = icmp eq i64 %i.k, -1                ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %.sroa.01.0.i.i = select i1 %.not.i.i, ptr %i.o, ptr %i.n ; 2 uses
  %.not11.i.i = icmp eq i64 %.sroa.03.0.copyload.sink, -1 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %.sroa.05.0.i.i = select i1 %.not11.i.i, ptr %i.q, ptr %i.p ; 2 uses
  %i.r = load i64, ptr %.sroa.01.0.i.i, align 8, !range !3, !alias.scope !608, !noundef !4
  %.not12.i.i = icmp eq i64 %i.r, -1
  %i.s = load i64, ptr %.sroa.05.0.i.i, align 8, !range !3, !alias.scope !609, !noundef !4
  %.not13.i.i = icmp eq i64 %i.s, -1              ; 2 uses
  br i1 %.not12.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not13.i.i, label %bb.j, label %bb.s

bb.i:                                             ; preds = %bb.g
  br i1 %.not13.i.i, label %.loopexit80, label %bb.j, !prof !610

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.09.0.i.i = phi ptr [ %.sroa.05.0.i.i, %bb.i ], [ %.sroa.01.0.i.i, %bb.h ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !611, !nonnull !4, !noundef !4 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !611, !noundef !4 ; 2 uses
  %.idx35.i.i = mul nuw nsw i64 %i.w, 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx35.i.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613)
  %i.y = load ptr, ptr %i.o, align 8, !alias.scope !614, !nonnull !4
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i, ptr inttoptr (i64 8 to ptr), ptr %i.y ; 3 uses
  %i.z = load ptr, ptr %i.q, align 8, !alias.scope !615, !nonnull !4
  %.sroa.01.0.i.i.i.i = select i1 %.not11.i.i, ptr inttoptr (i64 8 to ptr), ptr %i.z ; 3 uses
  %.not.not.not.i.not31.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.not.not.i.not31.i.i, label %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options32conflicting_lazy_import_settings.exit, label %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectors0B5_.exit.i.lr.ph.i.i

_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectors0B5_.exit.i.lr.ph.i.i: ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !615
  %.fr.i = freeze i64 %i.ab
  %.sroa.32.0.i.i.i.i = select i1 %.not11.i.i, i64 0, i64 %.fr.i ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !614
  %.sroa.3.0.i.i.i.i = select i1 %.not.i.i, i64 0, i64 %i.ad ; 2 uses
  %.idx.i.i16.i.i = mul nuw nsw i64 %.sroa.3.0.i.i.i.i, 24
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %.idx.i.i16.i.i ; 2 uses
  %.not.i.i.i17.i.i = icmp eq i64 %.sroa.3.0.i.i.i.i, 0
  %.idx.i1.i.i.i = mul nuw nsw i64 %.sroa.32.0.i.i.i.i, 24
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 %.idx.i1.i.i.i ; 2 uses
  %.not.i.i2.i.i.i = icmp eq i64 %.sroa.32.0.i.i.i.i, 0 ; 2 uses
  br i1 %.not.i.i.i17.i.i, label %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectors0B5_.exit.i.lr.ph.split.us.i.i, label %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectors0B5_.exit.i.i.preheader.i

_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectors0B5_.exit.i.i.preheader.i: ; preds = %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectors0B5_.exit.i.lr.ph.i.i
  br i1 %.not.i.i2.i.i.i, label %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectors0B5_.exit.i.i.us.i, label %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectors0B5_.exit.i.i.i

_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectors0B5_.exit.i.i.us.i: ; preds = %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectors0B5_.exit.i.i.preheader.i, %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21candidate_has_overlap.exit.i.loopexit3.us.i
  %i.ag = phi ptr [ %i.ah, %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21candidate_has_overlap.exit.i.loopexit3.us.i ], [ %i.u, %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectors0B5_.exit.i.i.preheader.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 8
  %.val4.i.i.us.i = load ptr, ptr %i.ai, align 8, !noalias !616, !nonnull !4, !noundef !4 ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ag, i64 16
  %.val5.i.i.us.i = load i64, ptr %i.aj, align 8, !noalias !616, !noundef !4 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !617)
  call void @llvm.experimental.noalias.scope.decl(metadata !618)
  call void @llvm.experimental.noalias.scope.decl(metadata !619), !noalias !620
  br label %.lr.ph.i.i.i18.i.us.i

.lr.ph.i.i.i18.i.us.i:                            ; preds = %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i.i.i.us.i, %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectors0B5_.exit.i.i.us.i
  %i.ak = phi ptr [ %i.al, %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i.i.i.us.i ], [ %.sroa.0.0.i.i.i.i, %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectors0B5_.exit.i.i.us.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.am = getelementptr i8, ptr %i.ak, i64 8
  %.val4.i.i.i.i.us.i = load ptr, ptr %i.am, align 8, !alias.scope !621, !noalias !622, !nonnull !4, !noundef !4 ; 2 uses
  %i.an = getelementptr i8, ptr %i.ak, i64 16
  %.val5.i.i.i.i.us.i = load i64, ptr %i.an, align 8, !alias.scope !621, !noalias !622, !noundef !4 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !623), !noalias !620
  call void @llvm.experimental.noalias.scope.decl(metadata !624), !noalias !620
  %i.ao = icmp eq i64 %.val5.i.i.us.i, %.val5.i.i.i.i.us.i
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i.i18.i.us.i
  %bcmp.i.i.i.i.i.i.us.i = call i32 @bcmp(ptr nonnull readonly %.val4.i.i.us.i, ptr nonnull readonly %.val4.i.i.i.i.us.i, i64 %.val5.i.i.us.i), !alias.scope !625, !noalias !626
  %i.ap = icmp eq i32 %bcmp.i.i.i.i.i.i.us.i, 0
  br i1 %i.ap, label %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21candidate_has_overlap.exit.i.loopexit3.us.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.i.i18.i.us.i
  %i.aq = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val4.i.i.us.i, i64 noundef %.val5.i.i.us.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val4.i.i.i.i.us.i, i64 noundef %.val5.i.i.i.i.us.i)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  br i1 %i.aq, label %.split.i.i.i19.i.us.i, label %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i.i.i.us.i

.split.i.i.i19.i.us.i:                            ; preds = %.noexc
  %i.ar = sub nuw i64 %.val5.i.i.us.i, %.val5.i.i.i.i.us.i
  %i.as = getelementptr inbounds nuw i8, ptr %.val4.i.i.us.i, i64 %.val5.i.i.i.i.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !627
  store i32 46, ptr %i.b, align 4, !noalias !627
  %i.at = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.as, i64 noundef %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc51:                                         ; preds = %.split.i.i.i19.i.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !627
  br i1 %i.at, label %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21candidate_has_overlap.exit.i.loopexit3.us.i, label %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i.i.i.us.i

_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i.i.i.us.i: ; preds = %.noexc51, %.noexc
  %.not9.i.i.i.i.us.i = icmp eq ptr %i.al, %i.ae
  br i1 %.not9.i.i.i.i.us.i, label %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded.exit.i.loopexit.i.us.i, label %.lr.ph.i.i.i18.i.us.i, !prof !610

_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded.exit.i.loopexit.i.us.i: ; preds = %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i.i.i.us.i
  call void @llvm.experimental.noalias.scope.decl(metadata !628), !noalias !620
  br label %.loopexit80

_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21candidate_has_overlap.exit.i.loopexit3.us.i: ; preds = %.noexc51, %bb.k
  %.not.not.not.i.not.i.us.i = icmp eq ptr %i.ah, %i.x
  br i1 %.not.not.not.i.not.i.us.i, label %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options32conflicting_lazy_import_settings.exit, label %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectors0B5_.exit.i.i.us.i

_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectors0B5_.exit.i.lr.ph.split.us.i.i: ; preds = %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectors0B5_.exit.i.lr.ph.i.i
  br i1 %.not.i.i2.i.i.i, label %.loopexit80, label %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectors0B5_.exit.i.us.i.i, !prof !610

_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectors0B5_.exit.i.us.i.i: ; preds = %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectors0B5_.exit.i.lr.ph.split.us.i.i, %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21candidate_has_overlap.exit.loopexit.us.i.i
  %i.au = phi ptr [ %i.av, %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21candidate_has_overlap.exit.loopexit.us.i.i ], [ %i.u, %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectors0B5_.exit.i.lr.ph.split.us.i.i ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.au, i64 8
  %.val4.i.us.i.i = load ptr, ptr %i.aw, align 8, !noalias !616, !nonnull !4, !noundef !4 ; 3 uses
  %i.ax = getelementptr i8, ptr %i.au, i64 16
  %.val5.i.us.i.i = load i64, ptr %i.ax, align 8, !noalias !616, !noundef !4 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !617)
  call void @llvm.experimental.noalias.scope.decl(metadata !618)
  call void @llvm.experimental.noalias.scope.decl(metadata !619), !noalias !620
  call void @llvm.experimental.noalias.scope.decl(metadata !628), !noalias !620
  br label %.lr.ph.i.i3.i.us.i.i

.lr.ph.i.i3.i.us.i.i:                             ; preds = %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i6.i.us.i.i, %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectors0B5_.exit.i.us.i.i
  %i.ay = phi ptr [ %i.az, %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i6.i.us.i.i ], [ %.sroa.01.0.i.i.i.i, %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectors0B5_.exit.i.us.i.i ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ay, i64 8
  %.val4.i.i4.i.us.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !629, !noalias !630, !nonnull !4, !noundef !4 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ay, i64 16
  %.val5.i.i5.i.us.i.i = load i64, ptr %i.bb, align 8, !alias.scope !629, !noalias !630, !noundef !4 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !631), !noalias !620
  call void @llvm.experimental.noalias.scope.decl(metadata !632), !noalias !620
  %i.bc = icmp eq i64 %.val5.i.us.i.i, %.val5.i.i5.i.us.i.i
  br i1 %i.bc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i3.i.us.i.i
  %bcmp.i.i.i.i10.i.us.i.i = call i32 @bcmp(ptr nonnull readonly %.val4.i.us.i.i, ptr nonnull readonly %.val4.i.i4.i.us.i.i, i64 %.val5.i.us.i.i), !alias.scope !633, !noalias !634
  %i.bd = icmp eq i32 %bcmp.i.i.i.i10.i.us.i.i, 0
  br i1 %i.bd, label %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21candidate_has_overlap.exit.loopexit.us.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i.i3.i.us.i.i
  %i.be = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val4.i.us.i.i, i64 noundef %.val5.i.us.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val4.i.i4.i.us.i.i, i64 noundef %.val5.i.i5.i.us.i.i)
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc52:                                         ; preds = %bb.n
  br i1 %i.be, label %.split.i.i9.i.us.i.i, label %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i6.i.us.i.i

.split.i.i9.i.us.i.i:                             ; preds = %.noexc52
  %i.bf = sub nuw i64 %.val5.i.us.i.i, %.val5.i.i5.i.us.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.val4.i.us.i.i, i64 %.val5.i.i5.i.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !635
  store i32 46, ptr %i.a, align 4, !noalias !635
  %i.bh = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef %i.bf, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
          to label %.noexc53 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc53:                                         ; preds = %.split.i.i9.i.us.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !635
  br i1 %i.bh, label %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21candidate_has_overlap.exit.loopexit.us.i.i, label %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i6.i.us.i.i

_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i6.i.us.i.i: ; preds = %.noexc53, %.noexc52
  %.not9.i.i7.i.us.i.i = icmp eq ptr %i.az, %i.af
  br i1 %.not9.i.i7.i.us.i.i, label %.loopexit80, label %.lr.ph.i.i3.i.us.i.i, !prof !610

_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21candidate_has_overlap.exit.loopexit.us.i.i: ; preds = %.noexc53, %bb.m
  %.not.not.not.i.not.us.i.i = icmp eq ptr %i.av, %i.x
  br i1 %.not.not.not.i.not.us.i.i, label %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options32conflicting_lazy_import_settings.exit, label %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectors0B5_.exit.i.us.i.i

_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectors0B5_.exit.i.i.i: ; preds = %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectors0B5_.exit.i.i.preheader.i, %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21candidate_has_overlap.exit.i.i
  %i.bi = phi ptr [ %i.bj, %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21candidate_has_overlap.exit.i.i ], [ %i.u, %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectors0B5_.exit.i.i.preheader.i ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bi, i64 8
  %.val4.i.i.i = load ptr, ptr %i.bk, align 8, !noalias !616, !nonnull !4, !noundef !4 ; 6 uses
  %i.bl = getelementptr i8, ptr %i.bi, i64 16
  %.val5.i.i.i = load i64, ptr %i.bl, align 8, !noalias !616, !noundef !4 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !617)
  call void @llvm.experimental.noalias.scope.decl(metadata !618)
  call void @llvm.experimental.noalias.scope.decl(metadata !619), !noalias !620
  br label %.lr.ph.i.i.i18.i.i

.lr.ph.i.i.i18.i.i:                               ; preds = %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i.i.i.i, %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectors0B5_.exit.i.i.i
  %i.bm = phi ptr [ %i.bn, %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i, %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectors0B5_.exit.i.i.i ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bm, i64 8
  %.val4.i.i.i.i.i = load ptr, ptr %i.bo, align 8, !alias.scope !621, !noalias !622, !nonnull !4, !noundef !4 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bm, i64 16
  %.val5.i.i.i.i.i = load i64, ptr %i.bp, align 8, !alias.scope !621, !noalias !622, !noundef !4 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !623), !noalias !620
  call void @llvm.experimental.noalias.scope.decl(metadata !624), !noalias !620
  %i.bq = icmp eq i64 %.val5.i.i.i, %.val5.i.i.i.i.i
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i.i18.i.i
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val4.i.i.i, ptr nonnull readonly %.val4.i.i.i.i.i, i64 %.val5.i.i.i), !alias.scope !625, !noalias !626
  %i.br = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.br, label %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21candidate_has_overlap.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i.i.i18.i.i
  %i.bs = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val4.i.i.i, i64 noundef %.val5.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val4.i.i.i.i.i, i64 noundef %.val5.i.i.i.i.i)
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc54:                                         ; preds = %bb.p
  br i1 %i.bs, label %.split.i.i.i19.i.i, label %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i.i.i.i

.split.i.i.i19.i.i:                               ; preds = %.noexc54
  %i.bt = sub nuw i64 %.val5.i.i.i, %.val5.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.val4.i.i.i, i64 %.val5.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !627
  store i32 46, ptr %i.b, align 4, !noalias !627
  %i.bv = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bu, i64 noundef %i.bt, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc55:                                         ; preds = %.split.i.i.i19.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !627
  br i1 %i.bv, label %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21candidate_has_overlap.exit.i.i, label %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i.i.i.i

_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i.i.i.i: ; preds = %.noexc55, %.noexc54
  %.not9.i.i.i.i.i = icmp eq ptr %i.bn, %i.ae
  br i1 %.not9.i.i.i.i.i, label %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded.exit.i.loopexit.i.i, label %.lr.ph.i.i.i18.i.i

_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded.exit.i.loopexit.i.i: ; preds = %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !628), !noalias !620
  br label %.lr.ph.i.i3.i.i.i

.lr.ph.i.i3.i.i.i:                                ; preds = %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i6.i.i.i, %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded.exit.i.loopexit.i.i
  %i.bw = phi ptr [ %i.bx, %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i6.i.i.i ], [ %.sroa.01.0.i.i.i.i, %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded.exit.i.loopexit.i.i ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24 ; 2 uses
  %i.by = getelementptr i8, ptr %i.bw, i64 8
  %.val4.i.i4.i.i.i = load ptr, ptr %i.by, align 8, !alias.scope !629, !noalias !630, !nonnull !4, !noundef !4 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bw, i64 16
  %.val5.i.i5.i.i.i = load i64, ptr %i.bz, align 8, !alias.scope !629, !noalias !630, !noundef !4 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !631), !noalias !620
  call void @llvm.experimental.noalias.scope.decl(metadata !632), !noalias !620
  %i.ca = icmp eq i64 %.val5.i.i.i, %.val5.i.i5.i.i.i
  br i1 %i.ca, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i.i3.i.i.i
  %bcmp.i.i.i.i10.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val4.i.i.i, ptr nonnull readonly %.val4.i.i4.i.i.i, i64 %.val5.i.i.i), !alias.scope !633, !noalias !634
  %i.cb = icmp eq i32 %bcmp.i.i.i.i10.i.i.i, 0
  br i1 %i.cb, label %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21candidate_has_overlap.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i.i3.i.i.i
  %i.cc = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val4.i.i.i, i64 noundef %.val5.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val4.i.i4.i.i.i, i64 noundef %.val5.i.i5.i.i.i)
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc56:                                         ; preds = %bb.r
  br i1 %i.cc, label %.split.i.i9.i.i.i, label %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i6.i.i.i

.split.i.i9.i.i.i:                                ; preds = %.noexc56
  %i.cd = sub nuw i64 %.val5.i.i.i, %.val5.i.i5.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.val4.i.i.i, i64 %.val5.i.i5.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !635
  store i32 46, ptr %i.a, align 4, !noalias !635
  %i.cf = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef %i.cd, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
          to label %.noexc57 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc57:                                         ; preds = %.split.i.i9.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !635
  br i1 %i.cf, label %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21candidate_has_overlap.exit.i.i, label %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i6.i.i.i

_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i6.i.i.i: ; preds = %.noexc57, %.noexc56
  %.not9.i.i7.i.i.i = icmp eq ptr %i.bx, %i.af
  br i1 %.not9.i.i7.i.i.i, label %.loopexit80, label %.lr.ph.i.i3.i.i.i, !prof !610

_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21candidate_has_overlap.exit.i.i: ; preds = %.noexc55, %bb.o, %.noexc57, %bb.q
  %.not.not.not.i.not.i.i = icmp eq ptr %i.bj, %i.x
  br i1 %.not.not.not.i.not.i.i, label %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options32conflicting_lazy_import_settings.exit, label %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectors0B5_.exit.i.i.i

bb.s:                                             ; preds = %bb.h
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.sroa.gep128 = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.gep.val = load ptr, ptr %.sroa.gep, align 8, !nonnull !4
  %.sroa.gep128.val = load ptr, ptr %.sroa.gep128, align 8, !nonnull !4
  %i.cg = select i1 %.not.i.i, ptr %.sroa.gep.val, ptr %.sroa.gep128.val ; 2 uses
  %.sroa.gep130 = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.val = load i64, ptr %i.n, align 8
  %.sroa.gep130.val = load i64, ptr %.sroa.gep130, align 8
  %i.ch = select i1 %.not.i.i, i64 %.val, i64 %.sroa.gep130.val ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.ch, 24
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx.i.i
  %.not.i.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i.i, label %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options32conflicting_lazy_import_settings.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.s
  %.sroa.gep132 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.val147 = load i64, ptr %i.p, align 8
  %.sroa.gep132.val = load i64, ptr %.sroa.gep132, align 8
  %i.cj = select i1 %.not11.i.i, i64 %.val147, i64 %.sroa.gep132.val ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options32conflicting_lazy_import_settings.exit, label %.lr.ph.split.i.preheader.i.i

.lr.ph.split.i.preheader.i.i:                     ; preds = %.lr.ph.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.gep134 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.val148 = load ptr, ptr %i.cl, align 8, !nonnull !4
  %.sroa.gep134.val = load ptr, ptr %.sroa.gep134, align 8, !nonnull !4
  %i.cm = select i1 %.not11.i.i, ptr %.val148, ptr %.sroa.gep134.val ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %i.cj, 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx.i.i.i.i
  %i.co = load ptr, ptr %i.o, align 8, !alias.scope !608, !nonnull !4
  %i.cp = load i64, ptr %.sroa.gep, align 8, !alias.scope !608
  %.sroa.55.0.i.i.i.i.i.i = select i1 %.not.i.i, i64 0, i64 %i.cp ; 2 uses
  %.sroa.04.0.i.i.i.i.i.i = select i1 %.not.i.i, ptr inttoptr (i64 8 to ptr), ptr %i.co ; 2 uses
  %i.cq = load ptr, ptr %i.q, align 8, !alias.scope !609, !nonnull !4
  %i.cr = load i64, ptr %i.cl, align 8, !alias.scope !609
  %.sroa.57.0.i.i.i.i.i.i = select i1 %.not11.i.i, i64 0, i64 %i.cr ; 2 uses
  %.sroa.06.0.i.i.i.i.i.i = select i1 %.not11.i.i, ptr inttoptr (i64 8 to ptr), ptr %i.cq ; 2 uses
  %.idx.i.i.i.i.i = mul nuw nsw i64 %.sroa.55.0.i.i.i.i.i.i, 24
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.55.0.i.i.i.i.i.i, 0
  %.idx.i1.i.i.i.i = mul nuw nsw i64 %.sroa.57.0.i.i.i.i.i.i, 24
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i.i, i64 %.idx.i1.i.i.i.i
  %.not.i.i2.i.i.i.i = icmp eq i64 %.sroa.57.0.i.i.i.i.i.i, 0
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectorss_0B5_.exit.i.i.i, %.lr.ph.split.i.preheader.i.i
  %i.cu = phi ptr [ %i.cv, %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectorss_0B5_.exit.i.i.i ], [ %i.cg, %.lr.ph.split.i.preheader.i.i ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cy = load ptr, ptr %i.cw, align 8, !alias.scope !636, !noalias !637, !nonnull !4, !noundef !4 ; 7 uses
  %i.cz = load i64, ptr %i.cx, align 8, !alias.scope !636, !noalias !637, !noundef !4 ; 11 uses
  br label %bb.t

bb.t:                                             ; preds = %.backedge.i.i.i.i.i, %.lr.ph.split.i.i.i
  %i.da = phi ptr [ %i.cm, %.lr.ph.split.i.i.i ], [ %i.db, %.backedge.i.i.i.i.i ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.da, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.dc, align 8, !noalias !638, !nonnull !4, !noundef !4 ; 7 uses
  %i.dd = getelementptr i8, ptr %i.da, i64 16
  %.val3.i.i.i.i.i = load i64, ptr %i.dd, align 8, !noalias !638, !noundef !4 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !639)
  call void @llvm.experimental.noalias.scope.decl(metadata !640)
  call void @llvm.experimental.noalias.scope.decl(metadata !641)
  call void @llvm.experimental.noalias.scope.decl(metadata !642)
  %i.de = icmp eq i64 %i.cz, %.val3.i.i.i.i.i     ; 2 uses
  br i1 %i.de, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %i.cy, ptr nonnull readonly %.val.i.i.i.i.i, i64 %i.cz), !alias.scope !643, !noalias !644
  %i.df = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.df, label %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21matches_module_prefix.exit4.thread.i.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dg = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.cz, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i.i, i64 noundef %.val3.i.i.i.i.i)
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %bb.v
  br i1 %i.dg, label %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21matches_module_prefix.exit.i.i.i.i.i.i.i, label %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21matches_module_prefix.exit.thread6.i.i.i.i.i.i.i

_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21matches_module_prefix.exit.i.i.i.i.i.i.i: ; preds = %.noexc58
  %i.dh = sub nuw i64 %i.cz, %.val3.i.i.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.val3.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !645
  store i32 46, ptr %i.f, align 4, !noalias !645
  %i.dj = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.di, i64 noundef %i.dh, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1)
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc59:                                         ; preds = %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21matches_module_prefix.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !645
  br i1 %i.dj, label %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21matches_module_prefix.exit4.thread.i.i.i.i.i.i.i, label %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21matches_module_prefix.exit.thread6.i.i.i.i.i.i.i

_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21matches_module_prefix.exit.thread6.i.i.i.i.i.i.i: ; preds = %.noexc59, %.noexc58
  call void @llvm.experimental.noalias.scope.decl(metadata !646)
  call void @llvm.experimental.noalias.scope.decl(metadata !647)
  br i1 %i.de, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21matches_module_prefix.exit.thread6.i.i.i.i.i.i.i
  %bcmp.i3.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i.i.i, ptr nonnull readonly %i.cy, i64 %i.cz), !alias.scope !648, !noalias !644
  %i.dk = icmp eq i32 %bcmp.i3.i.i.i.i.i.i.i, 0
  br i1 %i.dk, label %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21matches_module_prefix.exit4.thread.i.i.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w, %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21matches_module_prefix.exit.thread6.i.i.i.i.i.i.i
  %i.dl = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i.i, i64 noundef %.val3.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.cz)
          to label %.noexc60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc60:                                         ; preds = %bb.x
  br i1 %i.dl, label %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21matches_module_prefix.exit4.i.i.i.i.i.i.i, label %.backedge.i.i.i.i.i

_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21matches_module_prefix.exit4.i.i.i.i.i.i.i: ; preds = %.noexc60
  %i.dm = sub nuw i64 %.val3.i.i.i.i.i, %i.cz
  %i.dn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !649
  store i32 46, ptr %i.e, align 4, !noalias !649
  %i.do = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dn, i64 noundef %i.dm, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 1)
          to label %.noexc61 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc61:                                         ; preds = %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21matches_module_prefix.exit4.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !649
  br i1 %i.do, label %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21matches_module_prefix.exit4.thread.i.i.i.i.i.i.i, label %.backedge.i.i.i.i.i

_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21matches_module_prefix.exit4.thread.i.i.i.i.i.i.i: ; preds = %.noexc61, %bb.w, %.noexc59, %bb.u
  %.sroa.4.0.i.ph.i.i.i.i.i.i = phi i64 [ %i.cz, %bb.u ], [ %.val3.i.i.i.i.i, %.noexc59 ], [ %i.cz, %.noexc61 ], [ %i.cz, %bb.w ] ; 8 uses
  %.sroa.0.0.i.ph.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i, %bb.u ], [ %.val.i.i.i.i.i, %.noexc59 ], [ %i.cy, %.noexc61 ], [ %i.cy, %bb.w ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !650)
  call void @llvm.experimental.noalias.scope.decl(metadata !651)
  call void @llvm.experimental.noalias.scope.decl(metadata !652), !noalias !653
  br i1 %.not.i.i.i.i.i.i, label %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21matches_module_prefix.exit4.thread.i.i.i.i.i.i.i, %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i.i.i.i.i
  %i.dp = phi ptr [ %i.dq, %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i.i.i.i.i ], [ %.sroa.04.0.i.i.i.i.i.i, %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21matches_module_prefix.exit4.thread.i.i.i.i.i.i.i ] ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24 ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dp, i64 8
  %.val4.i.i.i.i.i.i = load ptr, ptr %i.dr, align 8, !alias.scope !654, !noalias !655, !nonnull !4, !noundef !4 ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dp, i64 16
  %.val5.i.i.i.i.i.i = load i64, ptr %i.ds, align 8, !alias.scope !654, !noalias !655, !noundef !4 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !656), !noalias !653
  call void @llvm.experimental.noalias.scope.decl(metadata !657), !noalias !653
  %i.dt = icmp eq i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, %.val5.i.i.i.i.i.i
  br i1 %i.dt, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %bcmp.i.i.i.i.i4.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.0.0.i.ph.i.i.i.i.i.i, ptr nonnull readonly %.val4.i.i.i.i.i.i, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i), !alias.scope !658, !noalias !659
  %i.du = icmp eq i32 %bcmp.i.i.i.i.i4.i.i.i, 0
  br i1 %i.du, label %.backedge.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.i.i.i.i.i.i
  %i.dv = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.ph.i.i.i.i.i.i, i64 noundef %.sroa.4.0.i.ph.i.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val4.i.i.i.i.i.i, i64 noundef %.val5.i.i.i.i.i.i)
          to label %.noexc62 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc62:                                         ; preds = %bb.z
  br i1 %i.dv, label %.split.i.i.i.i.i.i, label %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %.noexc62
  %i.dw = sub nuw i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, %.val5.i.i.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.ph.i.i.i.i.i.i, i64 %.val5.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !660
  store i32 46, ptr %i.d, align 4, !noalias !660
  %i.dy = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dx, i64 noundef %i.dw, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 1)
          to label %.noexc63 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc63:                                         ; preds = %.split.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !660
  br i1 %i.dy, label %.backedge.i.i.i.i.i, label %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i.i.i.i.i

_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i.i.i.i.i: ; preds = %.noexc63, %.noexc62
  %.not9.i.i.i3.i.i.i = icmp eq ptr %i.dq, %i.cs
  br i1 %.not9.i.i.i3.i.i.i, label %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded.exit.i.i.i.i: ; preds = %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i.i.i.i.i, %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21matches_module_prefix.exit4.thread.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !661), !noalias !653
  br i1 %.not.i.i2.i.i.i.i, label %.loopexit80, label %.lr.ph.i.i3.i.i.i.i, !prof !610

.lr.ph.i.i3.i.i.i.i:                              ; preds = %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded.exit.i.i.i.i, %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i6.i.i.i.i
  %i.dz = phi ptr [ %i.ea, %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i6.i.i.i.i ], [ %.sroa.06.0.i.i.i.i.i.i, %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded.exit.i.i.i.i ] ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24 ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dz, i64 8
  %.val4.i.i4.i.i.i.i = load ptr, ptr %i.eb, align 8, !alias.scope !662, !noalias !663, !nonnull !4, !noundef !4 ; 2 uses
  %i.ec = getelementptr i8, ptr %i.dz, i64 16
  %.val5.i.i5.i.i.i.i = load i64, ptr %i.ec, align 8, !alias.scope !662, !noalias !663, !noundef !4 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !664), !noalias !653
  call void @llvm.experimental.noalias.scope.decl(metadata !665), !noalias !653
  %i.ed = icmp eq i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, %.val5.i.i5.i.i.i.i
  br i1 %i.ed, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i.i3.i.i.i.i
  %bcmp.i.i.i.i10.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.0.0.i.ph.i.i.i.i.i.i, ptr nonnull readonly %.val4.i.i4.i.i.i.i, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i), !alias.scope !666, !noalias !667
  %i.ee = icmp eq i32 %bcmp.i.i.i.i10.i.i.i.i, 0
  br i1 %i.ee, label %.backedge.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i.i3.i.i.i.i
  %i.ef = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.ph.i.i.i.i.i.i, i64 noundef %.sroa.4.0.i.ph.i.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val4.i.i4.i.i.i.i, i64 noundef %.val5.i.i5.i.i.i.i)
          to label %.noexc64 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc64:                                         ; preds = %bb.ab
  br i1 %i.ef, label %.split.i.i9.i.i.i.i, label %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i6.i.i.i.i

.split.i.i9.i.i.i.i:                              ; preds = %.noexc64
  %i.eg = sub nuw i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, %.val5.i.i5.i.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.ph.i.i.i.i.i.i, i64 %.val5.i.i5.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !668
  store i32 46, ptr %i.c, align 4, !noalias !668
  %i.ei = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.eh, i64 noundef %i.eg, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1)
          to label %.noexc65 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc65:                                         ; preds = %.split.i.i9.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !668
  br i1 %i.ei, label %.backedge.i.i.i.i.i, label %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i6.i.i.i.i

_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i6.i.i.i.i: ; preds = %.noexc65, %.noexc64
  %.not9.i.i7.i.i.i.i = icmp eq ptr %i.ea, %i.ct
  br i1 %.not9.i.i7.i.i.i.i, label %.loopexit80, label %.lr.ph.i.i3.i.i.i.i, !prof !610

.backedge.i.i.i.i.i:                              ; preds = %.noexc63, %bb.y, %.noexc65, %bb.aa, %.noexc61, %.noexc60
  %.not5.i.i.i.i.i = icmp eq ptr %i.db, %i.cn
  br i1 %.not5.i.i.i.i.i, label %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectorss_0B5_.exit.i.i.i, label %bb.t

_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectorss_0B5_.exit.i.i.i: ; preds = %.backedge.i.i.i.i.i
  %.not13.i.i.i = icmp eq ptr %i.cv, %i.ci
  br i1 %.not13.i.i.i, label %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options32conflicting_lazy_import_settings.exit, label %.lr.ph.split.i.i.i, !llvm.loop !599

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.split.i.i.i.i.i.i, %bb.z, %.split.i.i9.i.i.i, %bb.r, %.split.i.i.i19.i.us.i, %bb.l, %.split.i.i9.i.us.i.i, %bb.n, %.split.i.i.i19.i.i, %bb.p, %.split.i.i9.i.i.i.i, %bb.ab, %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21matches_module_prefix.exit4.i.i.i.i.i.i.i, %bb.x, %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21matches_module_prefix.exit.i.i.i.i.i.i.i, %bb.v, %.loopexit80
  %lpad.loopexit.split-lp200 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings14ImportSelectorECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(48) %i.g) #21
          to label %bb.ai unwind label %bb.ar

_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options32conflicting_lazy_import_settings.exit: ; preds = %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectorss_0B5_.exit.i.i.i, %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21candidate_has_overlap.exit.i.i, %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21candidate_has_overlap.exit.i.loopexit3.us.i, %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options21candidate_has_overlap.exit.loopexit.us.i.i, %bb.j, %bb.s, %.lr.ph.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ek = load i8, ptr %i.ej, align 8, !range !32, !noundef !4 ; 2 uses
  %.not43 = icmp eq i8 %i.ek, 2
  %. = select i1 %.not43, i8 0, i8 %i.ek
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.011.0.copyload = load ptr, ptr %i.el, align 8 ; 2 uses
  %.not44 = icmp eq ptr %.sroa.011.0.copyload, null
  br i1 %.not44, label %bb.ad, label %bb.ac

.loopexit80:                                      ; preds = %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded.exit.i.i.i.i, %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i6.i.i.i.i, %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i6.i.i.i, %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded0B5_.exit.backedge.i.i6.i.us.i.i, %bb.i, %_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace7options28overlapping_import_selectors0B5_.exit.i.lr.ph.split.us.i.i, %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options17is_fully_excluded.exit.i.loopexit.i.us.i
  %i.em = invoke noundef nonnull ptr @_RINvMNtCsiXichZnxgbf_6anyhow5errorNtB5_5Error3msgReECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull readonly captures(address, read_provenance) @344, i64 noundef 72)
          to label %_RNvNtCsiXichZnxgbf_6anyhow9___private10format_err.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options32conflicting_lazy_import_settings.exit
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.517, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.513.0..sroa_idx, i64 24, i1 false)
  br label %bb.ae

bb.ad:                                            ; preds = %_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options32conflicting_lazy_import_settings.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.517, ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @290, i64 8), i64 24, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.015.0 = phi ptr [ %.sroa.011.0.copyload, %bb.ac ], [ @289, %bb.ad ]
  %.sroa.023.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.not45 = icmp eq i64 %.sroa.023.0.copyload, -1
  br i1 %.not45, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.625.0.copyload = load i64, ptr %.sroa.625.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.524.0.copyload = load ptr, ptr %.sroa.524.0..sroa_idx, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %.sroa.6.0 = phi i64 [ %.sroa.625.0.copyload, %bb.af ], [ 0, %bb.ae ]
  %.sroa.520.0 = phi ptr [ %.sroa.524.0.copyload, %bb.af ], [ inttoptr (i64 8 to ptr), %bb.ae ]
  %.sroa.018.0 = phi i64 [ %.sroa.023.0.copyload, %bb.af ], [ 0, %bb.ae ]
  %.sroa.07.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.07.sroa.0.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  %.sroa.07.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.07.sroa.0.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  store i64 %.sroa.018.0, ptr %0, align 8
  %.sroa.07.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.520.0, ptr %.sroa.07.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.07.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.07.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.07.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %.sroa.015.0, ptr %.sroa.07.sroa.6.0..sroa_idx, align 8
  %.sroa.07.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.517, i64 24, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 %., ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings6ApiBanNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEECs3ZkgueCtkyH_14ruff_workspace.exit69, %bb.ag
  ret void

_RNvNtCsiXichZnxgbf_6anyhow9___private10format_err.exit: ; preds = %.loopexit80
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.em, ptr %i.en, align 8
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings14ImportSelectorECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(48) %i.g)
          to label %bb.ak unwind label %bb.aj

bb.ai:                                            ; preds = %bb.aj, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %i.eo, %bb.aj ], [ %lpad.loopexit.split-lp200, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings14ImportSelectorECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(48) %i.h) #21
          to label %bb.al unwind label %bb.ar

bb.aj:                                            ; preds = %_RNvNtCsiXichZnxgbf_6anyhow9___private10format_err.exit
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ak:                                            ; preds = %_RNvNtCsiXichZnxgbf_6anyhow9___private10format_err.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings14ImportSelectorECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(48) %i.h)
          to label %bb.ao unwind label %bb.an

bb.al:                                            ; preds = %bb.an, %bb.ai
  %.pn47 = phi { ptr, i32 } [ %i.es, %bb.an ], [ %.pn, %bb.ai ]
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !670, !noundef !4
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings6ApiBanNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEECs3ZkgueCtkyH_14ruff_workspace.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings6ApiBanEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ep)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings6ApiBanNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEECs3ZkgueCtkyH_14ruff_workspace.exit unwind label %bb.ar

bb.an:                                            ; preds = %bb.ak
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ao:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !alias.scope !671, !noundef !4
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings6ApiBanNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEECs3ZkgueCtkyH_14ruff_workspace.exit69, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings6ApiBanEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.et)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings6ApiBanNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEECs3ZkgueCtkyH_14ruff_workspace.exit69 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(24) %1) #21
          to label %bb.as unwind label %bb.ar

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings6ApiBanNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEECs3ZkgueCtkyH_14ruff_workspace.exit69: ; preds = %bb.ao, %bb.ap
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(24) %1)
  br label %bb.ah

bb.ar:                                            ; preds = %bb.am, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings6ApiBanNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEECs3ZkgueCtkyH_14ruff_workspace.exit, %bb.aq, %bb.ai, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.as:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings6ApiBanNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEECs3ZkgueCtkyH_14ruff_workspace.exit, %bb.aq
  %.pn49 = phi { ptr, i32 } [ %i.ew, %bb.aq ], [ %.pn47, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings6ApiBanNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEECs3ZkgueCtkyH_14ruff_workspace.exit ]
  resume { ptr, i32 } %.pn49

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings6ApiBanNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEECs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %bb.al, %bb.am
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(24) %1) #21
          to label %bb.as unwind label %bb.ar
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsk_NtCs3ZkgueCtkyH_14ruff_workspace7optionsNtB5_25Flake8TypeCheckingOptions13into_settings(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load i8, ptr %i.b, align 8, !range !32, !noundef !4 ; 2 uses
  %.sroa.03.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.not32 = icmp eq i64 %.sroa.03.0.copyload, -1
  br i1 %.not32, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !674
  %i.d = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #22, !noalias !674 ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i, !prof !28

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #23
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  unreachable

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !674
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 6, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.d unwind label %bb.g, !noalias !674

bb.d:                                             ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i
  %i.f = load i64, ptr %i.a, align 8, !range !7, !noalias !674, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !27, !noalias !674, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.e, label %_RNCNvMsk_NtCs3ZkgueCtkyH_14ruff_workspace7optionsNtB7_25Flake8TypeCheckingOptions13into_settings0B9_.exit, !prof !28

bb.e:                                             ; preds = %bb.d
  %i.k = load i64, ptr %i.j, align 8, !noalias !674
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #23
          to label %bb.f unwind label %bb.g, !noalias !674

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #22, !noalias !674
  br label %.body

_RNCNvMsk_NtCs3ZkgueCtkyH_14ruff_workspace7optionsNtB7_25Flake8TypeCheckingOptions13into_settings0B9_.exit: ; preds = %bb.d
  %i.m = load ptr, ptr %i.j, align 8, !noalias !674, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = icmp samesign ugt i64 %i.i, 5
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !674
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.m, ptr noundef nonnull align 1 dereferenceable(6) @335, i64 6, i1 false), !noalias !674
  store i64 %i.i, ptr %i.d, align 8, !noalias !674
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.m, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !674
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 6, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !674
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.l, %bb.g ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
end_hunk_0
