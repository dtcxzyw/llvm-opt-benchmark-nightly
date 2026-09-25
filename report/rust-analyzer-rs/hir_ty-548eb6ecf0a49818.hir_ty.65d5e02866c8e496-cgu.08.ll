Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.08?download=true
inline.NumInlined: 5960
inline.NumDeleted: 2694
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB5_8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1r_8interner10DbInternerE28relate_rigid_alias_non_aliasB1t_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false)
  %i.cc = load i64, ptr %i.t, align 8, !range !28, !noundef !18
  %.not39 = icmp eq i64 %i.cc, 2
  br i1 %.not39, label %bb.b, label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.s

bb.u:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cd)
          to label %bb.b unwind label %.loopexit.split-lp

bb.v:                                             ; preds = %.noexc, %.sink.split.i
  %.sroa.0.0.i = phi i8 [ 1, %.noexc ], [ %i.bl, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 %.sroa.0.0.i, ptr %i.u, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ce = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.cg = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB7_8EvalCtxtppE28relate_rigid_alias_non_aliass_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.cg, label %bb.x [
    i8 0, label %bb.ab
    i8 1, label %bb.y
    i8 2, label %bb.y
  ], !prof !27

bb.x:                                             ; preds = %bb.w
  %i.ch = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB7_8EvalCtxtppE28relate_rigid_alias_non_aliass_10___CALLSITE)
          to label %bb.z unwind label %.loopexit.split-lp ; 2 uses

bb.y:                                             ; preds = %bb.w, %bb.w, %bb.z
  %.sroa.018.0 = phi i8 [ %i.ch, %bb.z ], [ %i.cg, %bb.w ], [ %i.cg, %bb.w ]
  %i.ci = load ptr, ptr @_RNvNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB7_8EvalCtxtppE28relate_rigid_alias_non_aliass_10___CALLSITE, align 8, !nonnull !18, !align !26, !noundef !18
  %i.cj = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ci, i8 noundef %.sroa.018.0)
          to label %bb.aa unwind label %.loopexit.split-lp

bb.z:                                             ; preds = %bb.x
  %i.ck = icmp eq i8 %i.ch, 0
  br i1 %i.ck, label %bb.ab, label %bb.y

bb.aa:                                            ; preds = %bb.y
  br i1 %i.cj, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.w, %bb.v, %bb.ad, %bb.aa
  %i.cl = trunc nuw i8 %.sroa.021.1 to i1
  %i.cm = load i64, ptr %i.t, align 8, !range !28
  %.not.i.i52 = icmp ne i64 %i.cm, 2
  %or.cond66.not = select i1 %i.cl, i1 %.not.i.i52, i1 false
  br i1 %or.cond66.not, label %bb.ae, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cn = load ptr, ptr @_RNvNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB7_8EvalCtxtppE28relate_rigid_alias_non_aliass_10___CALLSITE, align 8, !nonnull !18, !align !26, !noundef !18 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.u, ptr %i.k, align 8
  store ptr %i.k, ptr %i.l, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @58, ptr %i.cp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 1, ptr %i.j, align 8
  %.sroa.020.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.l, ptr %.sroa.020.sroa.4.0..sroa_idx, align 8
  %.sroa.020.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 1, ptr %.sroa.020.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.co, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j)
          to label %bb.ad unwind label %.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ab

bb.ae:                                            ; preds = %bb.ab
  %i.cq = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cq)
          to label %.thread unwind label %.thread58

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit57: ; preds = %bb.al, %.body
  %i.cr = trunc nuw i8 %.sroa.023.0.lpad-body to i1
  br i1 %i.cr, label %bb.an, label %common.resume

.thread58:                                        ; preds = %bb.ae
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.aj, %bb.ai, %bb.ah, %.thread, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.ct = load i8, ptr %i.u, align 1, !range !32, !noundef !18
  %i.cu = trunc nuw i8 %i.ct to i1
  ret i1 %i.cu

.thread:                                          ; preds = %bb.ae
  %.pr = load i64, ptr %i.t, align 8, !alias.scope !6064 ; 2 uses
  %.not.i.i54 = icmp eq i64 %.pr, 2
  br i1 %.not.i.i54, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit, label %bb.af

bb.af:                                            ; preds = %.thread
  %i.cv = load i64, ptr %i.cq, align 8, !range !30, !alias.scope !6065, !noundef !18
  %i.cw = invoke noundef zeroext i1 @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.t, i64 noundef %i.cv)
          to label %bb.ah unwind label %bb.ag     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbDqbwph1Irx_7tracing4span5InnerEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t) #48
          to label %common.resume unwind label %bb.ak

bb.ah:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !6066)
  call void @llvm.experimental.noalias.scope.decl(metadata !6067)
  call void @llvm.experimental.noalias.scope.decl(metadata !6068)
  call void @llvm.experimental.noalias.scope.decl(metadata !6069)
  %i.cy = icmp eq i64 %.pr, 0
  br i1 %i.cy, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cz = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6070)
  call void @llvm.experimental.noalias.scope.decl(metadata !6071)
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !6072, !nonnull !18, !noundef !18
  %i.db = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !6073
  %i.dc = icmp eq i64 %i.db, 1
  br i1 %i.dc, label %bb.aj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcDNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10SubscriberNtNtCshzWfHUSfYae_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cz) #49
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit

bb.ak:                                            ; preds = %bb.ag
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47
  unreachable

common.resume:                                    ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit57, %bb.an, %bb.ag
  %common.resume.op = phi { ptr, i32 } [ %i.cx, %bb.ag ], [ %.pn62, %bb.an ], [ %eh.lpad-body, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit57 ]
  resume { ptr, i32 } %common.resume.op

bb.al:                                            ; preds = %.body
  %i.de = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.de)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit57 unwind label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.an
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.an:                                            ; preds = %.thread58, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit57
  %.pn62 = phi { ptr, i32 } [ %i.cs, %.thread58 ], [ %eh.lpad-body, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit57 ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 dereferenceable(40) %i.t) #48
          to label %common.resume unwind label %bb.am
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB5_8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1r_8interner10DbInternerE2cxB1t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(152) %1) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !18, !align !26, !noundef !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB5_8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1r_8interner10DbInternerE48evaluate_added_goals_and_make_canonical_responseB1t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(152) %1, i32 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 7 uses
  %i.h = alloca [72 x i8], align 8                ; 8 uses
  %i.i = alloca [40 x i8], align 8                ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [40 x i8], align 8                ; 17 uses
  %i.o = alloca [4 x i8], align 4                 ; 5 uses
  %i.p = alloca [72 x i8], align 8                ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [40 x i8], align 8                ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 6 uses
  %i.u = alloca [80 x i8], align 8                ; 5 uses
  %i.v = alloca [80 x i8], align 8                ; 5 uses
  %i.w = alloca [72 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [72 x i8], align 8                ; 4 uses
  %i.z = alloca [40 x i8], align 8                ; 4 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 7 uses
  %i.ad = alloca [24 x i8], align 8               ; 15 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [40 x i8], align 8               ; 7 uses
  %i.ai = alloca [40 x i8], align 8               ; 4 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [32 x i8], align 8               ; 7 uses
  %i.am = alloca [40 x i8], align 8               ; 17 uses
  %i.an = alloca [4 x i8], align 4                ; 3 uses
  store i32 %2, ptr %i.an, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.ao = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.bp, label %bb.c

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate16RegionConstraintNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB2I_.exit102.i, %.noexc47, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve24NestedNormalizationGoalsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEB1R_.exit.i, %bb.ax, %bb.j, %bb.h, %bb.f, %.noexc, %bb.c, %bb.ch, %bb.cd, %bb.cc, %bb.bz, %bb.bw, %bb.bt, %bb.bs
  %.sroa.024.0 = phi i8 [ %.sroa.022.1, %bb.ch ], [ %.sroa.022.1, %bb.cd ], [ %.sroa.022.1, %bb.cc ], [ %.sroa.022.1, %bb.ax ], [ %.sroa.022.1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve24NestedNormalizationGoalsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEB1R_.exit.i ], [ %.sroa.022.1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate16RegionConstraintNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB2I_.exit102.i ], [ 1, %bb.bz ], [ 0, %bb.bw ], [ 0, %bb.bt ], [ 0, %bb.bs ], [ %.sroa.022.1, %.noexc47 ], [ %.sroa.022.1, %bb.c ], [ %.sroa.022.1, %.noexc ], [ %.sroa.022.1, %bb.f ], [ %.sroa.022.1, %bb.h ], [ %.sroa.022.1, %bb.j ]
  %.sroa.022.0 = phi i8 [ %.sroa.022.1, %bb.ch ], [ %.sroa.022.1, %bb.cd ], [ %.sroa.022.1, %bb.cc ], [ %.sroa.022.1, %bb.ax ], [ %.sroa.022.1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve24NestedNormalizationGoalsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEB1R_.exit.i ], [ %.sroa.022.1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate16RegionConstraintNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB2I_.exit102.i ], [ 0, %bb.bz ], [ 0, %bb.bw ], [ 0, %bb.bt ], [ 0, %bb.bs ], [ %.sroa.022.1, %.noexc47 ], [ %.sroa.022.1, %bb.c ], [ %.sroa.022.1, %.noexc ], [ %.sroa.022.1, %bb.f ], [ %.sroa.022.1, %bb.h ], [ %.sroa.022.1, %bb.j ]
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i.i, %bb.au, %bb.az, %bb.bd, %bb.be, %bb.bi, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate16RegionConstraintNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB2I_.exit.i, %bb.bn, %bb.bo, %bb.b
  %.sroa.024.0.lpad-body = phi i8 [ %.sroa.024.0, %bb.b ], [ %.sroa.022.1, %bb.bo ], [ %.sroa.022.1, %bb.bn ], [ %.sroa.022.1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate16RegionConstraintNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB2I_.exit.i ], [ %.sroa.022.1, %bb.bi ], [ %.sroa.022.1, %bb.be ], [ %.sroa.022.1, %bb.bd ], [ %.sroa.022.1, %bb.az ], [ %.sroa.022.1, %bb.au ], [ %.sroa.022.1, %.body.i.i ]
  %.sroa.022.0.lpad-body = phi i8 [ %.sroa.022.0, %bb.b ], [ %.sroa.022.1, %bb.bo ], [ %.sroa.022.1, %bb.bn ], [ %.sroa.022.1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate16RegionConstraintNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB2I_.exit.i ], [ %.sroa.022.1, %bb.bi ], [ %.sroa.022.1, %bb.be ], [ %.sroa.022.1, %bb.bd ], [ %.sroa.022.1, %bb.az ], [ %.sroa.022.1, %bb.au ], [ %.sroa.022.1, %.body.i.i ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.b ], [ %lpad.thr_comm.split-lp.i, %bb.bo ], [ %i.es, %bb.bn ], [ %i.es, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate16RegionConstraintNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB2I_.exit.i ], [ %i.ek, %bb.bi ], [ %i.ec, %bb.be ], [ %.pn4586.i.i, %bb.bd ], [ %.pn4363.i.i, %bb.az ], [ %i.ds, %bb.au ], [ %.pn.i.i, %.body.i.i ] ; 2 uses
  %i.ar = trunc nuw i8 %.sroa.022.0.lpad-body to i1
  %i.as = load i64, ptr %i.am, align 8, !range !28
  %.not.i.i54 = icmp ne i64 %i.as, 2
  %or.cond.not = select i1 %i.ar, i1 %.not.i.i54, i1 false
  br i1 %or.cond.not, label %bb.cq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit56

bb.c:                                             ; preds = %bb.bx, %bb.bz, %bb.a
  %.sroa.022.1 = phi i8 [ 0, %bb.a ], [ 1, %bb.bz ], [ 1, %bb.bx ] ; 43 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.at = load i32, ptr %i.an, align 4            ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6121)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke void @_RNvMs4_NtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve7inspect5buildINtB5_21EvaluationStepBuilderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1L_8interner10DbInternerE23make_canonical_responseB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.au, i32 %i.at)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.c
  %i.av = invoke i32 @_RNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB5_8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1r_8interner10DbInternerE24try_evaluate_added_goalsB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %1)
          to label %.noexc43 unwind label %bb.b   ; 2 uses

.noexc43:                                         ; preds = %.noexc
  %i.aw = and i32 %i.av, 255                      ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 255
  br i1 %i.ax, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc43
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i8 -1, ptr %i.ay, align 8, !alias.scope !6121, !noalias !6122
  br label %bb.ca

bb.e:                                             ; preds = %.noexc43
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 148 ; 2 uses
  %.val.i = load i8, ptr %i.az, align 4, !range !32, !noalias !6123, !noundef !18
  %i.ba = icmp eq i8 %.val.i, 0
  br i1 %i.ba, label %bb.g, label %bb.f, !prof !19

bb.f:                                             ; preds = %bb.e
  invoke void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedINtNtB4_6result6ResultuNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve10NoSolutionEBM_ECs8K4cjrcxBsw_6hir_ty(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.az, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @164, ptr noundef nonnull @165, ptr nonnull inttoptr (i64 215 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #45
          to label %.noexc44 unwind label %bb.b

.noexc44:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 149
  %i.bd = load i8, ptr %i.bc, align 1, !range !57, !noalias !6123, !noundef !18
  %i.be = icmp eq i8 %i.bd, 2
  %i.bf = and i32 %i.at, 255
  %.not89.i = icmp eq i32 %i.bf, 2
  %or.cond95.i = select i1 %i.be, i1 %.not89.i, i1 false
  br i1 %or.cond95.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = invoke i32 @_RNvMsj_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9Certainty3and(i32 %i.at, i32 %i.av)
          to label %.noexc45 unwind label %bb.b   ; 5 uses

.noexc45:                                         ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !6123
  store i64 0, ptr %i.ad, align 8, !noalias !6123
  %.sroa.461.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.461.0..sroa_idx.i, align 8, !noalias !6123
  %.sroa.566.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 0, ptr %.sroa.566.0..sroa_idx.i, align 8, !noalias !6123
  %3 = and i32 %i.bg, 255
  %.not90.i = icmp eq i32 %3, 2
  %4 = and i32 %i.bg, 16711680
  %.not91.i = icmp eq i32 %4, 131072
  %5 = and i32 %i.bg, 16777216
  %6 = icmp ne i32 %5, 0
  %or.cond.i = or i1 %.not91.i, %6
  %or.cond98.i = or i1 %.not90.i, %or.cond.i
  %7 = bitcast i32 %i.bg to <4 x i8>
  br i1 %or.cond98.i, label %bb.m, label %bb.bg

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !6123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !6123
  store i64 0, ptr %1, align 8, !noalias !6123
  %.sroa.451.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.451.0..sroa_idx.i, align 8, !noalias !6123
  %.sroa.552.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %.sroa.552.0..sroa_idx.i, align 8, !noalias !6123
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !6123, !noundef !18 ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 104811045873349726
  call void @llvm.assume(i1 %i.bj)
  %i.bk = icmp ne i64 %i.bi, 0
  %i.bl = icmp eq i32 %i.aw, 2
  %or.cond97.i = or i1 %i.bl, %i.bk
  br i1 %or.cond97.i, label %bb.j, label %bb.k, !prof !80

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !6123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !6123
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !6123, !nonnull !18, !noundef !18 ; 3 uses
  %i.bo = load i64, ptr %i.ac, align 8, !range !21, !noalias !6123, !noundef !18
  %i.bp = getelementptr inbounds nuw [88 x i8], ptr %i.bn, i64 %i.bi
  store ptr %i.bn, ptr %i.aa, align 8, !noalias !6123
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.bn, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6123
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %i.bo, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !6123
  %.sroa.638.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %i.bp, ptr %.sroa.638.0..sroa_idx.i, align 8, !noalias !6123
  invoke void @_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collectINtB6_3VecTNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve10GoalSourceINtB11_4GoalNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2a_9predicate9PredicateEEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterTBZ_B1U_INtNtB4o_6option6OptionINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13GoalStalledOnB26_EEEENCNCNvMs0_NtB62_9eval_ctxtINtB7q_8EvalCtxtNtNtB2a_6solver13SolverContextB26_E48evaluate_added_goals_and_make_canonical_response0s_0EE9from_iterB2c_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa)
          to label %.noexc46 unwind label %bb.b

.noexc46:                                         ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !6123
  %.sroa.058.0.copyload59.i = load i64, ptr %i.ab, align 8, !noalias !6123
  %.sroa.461.0..sroa_idx62.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.461.0.copyload63.i = load ptr, ptr %.sroa.461.0..sroa_idx62.i, align 8, !noalias !6123
  %.sroa.566.0..sroa_idx67.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.566.0.copyload68.i = load i64, ptr %.sroa.566.0..sroa_idx67.i, align 8, !noalias !6123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !6123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !6123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !6123
  store i64 %.sroa.058.0.copyload59.i, ptr %i.ad, align 8, !noalias !6123
  %.sroa.461.0..sroa_idx64.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %.sroa.461.0.copyload63.i, ptr %.sroa.461.0..sroa_idx64.i, align 8, !noalias !6123
  %.sroa.566.0..sroa_idx69.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %.sroa.566.0.copyload68.i, ptr %.sroa.566.0..sroa_idx69.i, align 8, !noalias !6123
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @167, i64 noundef 59, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #46
          to label %bb.l unwind label %bb.be, !noalias !6123

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %.noexc46, %.noexc45
  %8 = phi <4 x i8> [ <i8 2, i8 undef, i8 undef, i8 undef>, %.noexc46 ], [ %7, %.noexc45 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !6123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !6123
  call void @llvm.experimental.noalias.scope.decl(metadata !6124)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !6123
  store <4 x i8> %8, ptr %i.o, align 4, !noalias !6125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !6125
  %i.bq = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !6125
  %i.br = icmp ne i64 %i.bq, 0                    ; 3 uses
  br i1 %i.br, label %bb.n, label %bb.x

.body.i.i:                                        ; preds = %bb.ai, %bb.o
  %.pn.i.i = phi { ptr, i32 } [ %i.da, %bb.ai ], [ %.pn.i.i.i, %bb.o ] ; 3 uses
  br i1 %i.br, label %.body, label %bb.bb

bb.n:                                             ; preds = %bb.ah, %bb.af, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6125
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.bt = load i32, ptr %i.o, align 4, !noalias !6125
  store i32 %i.bt, ptr %i.bs, align 8, !noalias !6125
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %1, ptr %i.bu, align 8, !noalias !6125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !6126
  call void @llvm.experimental.noalias.scope.decl(metadata !6127)
  call void @llvm.experimental.noalias.scope.decl(metadata !6128)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6129
  store i64 0, ptr %i.c, align 8, !noalias !6129
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bv, align 8, !noalias !6129
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.bw, align 8, !noalias !6129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6129
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !6124, !noalias !6130, !nonnull !18, !align !26, !noundef !18 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !6124, !noalias !6130, !noundef !18
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !6124, !noalias !6130, !noundef !18
  invoke void @_RNvXNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer7contextNtB4_9InferCtxtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir10infer_ctxt13InferCtxtLike30clone_opaque_types_added_since(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.by, i64 noundef %i.ca, i64 noundef %i.cc)
          to label %bb.s unwind label %bb.q, !noalias !6131

bb.o:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtBJ_8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB25_8interner10DbInternerE34compute_external_query_constraints0EB27_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.g) #48
          to label %.body.i.i unwind label %bb.w, !noalias !6132

bb.p:                                             ; preds = %bb.r, %bb.q
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ce, %bb.r ], [ %i.cd, %bb.q ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate16RegionConstraintNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB1e_5solve19VisibleForLeakCheckEEEB2l_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #48
          to label %bb.o unwind label %bb.w, !noalias !6131

bb.q:                                             ; preds = %bb.n
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %bb.u
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2g_2ty2TyEEEB2i_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #48
          to label %bb.p unwind label %bb.w, !noalias !6131

bb.s:                                             ; preds = %bb.n
  %.val.i.i.i = load i64, ptr %i.by, align 8, !range !44, !noalias !6131, !noundef !18
  %i.cf = icmp eq i64 %.val.i.i.i, 5
  br i1 %i.cf, label %bb.t, label %bb.aj

bb.t:                                             ; preds = %bb.s
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !noalias !6129, !noundef !18 ; 2 uses
  %i.ci = icmp ult i64 %i.ch, 384307168202282326
  call void @llvm.assume(i1 %i.ci)
  %i.cj = icmp eq i64 %i.ch, 0
  br i1 %i.cj, label %bb.aj, label %bb.u, !prof !19

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 41, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) #46
          to label %bb.v unwind label %bb.r, !noalias !6131

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.r, %bb.p, %bb.o
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !6132
  unreachable

bb.x:                                             ; preds = %bb.m
  %i.cl = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !6125
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.ad, %bb.ac, %bb.z, %bb.x
  store i64 2, ptr %i.i, align 8, !noalias !6125
  %i.cn = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr null, ptr %i.cn, align 8, !noalias !6125
  br label %bb.af

bb.z:                                             ; preds = %bb.x
  %i.co = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB7_8EvalCtxtppE34compute_external_query_constraints10___CALLSITE, i64 16) monotonic, align 8, !noalias !6125 ; 3 uses
  switch i8 %i.co, label %bb.aa [
    i8 0, label %bb.y
    i8 1, label %bb.ab
    i8 2, label %bb.ab
  ], !prof !27

bb.aa:                                            ; preds = %bb.z
  %i.cp = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB7_8EvalCtxtppE34compute_external_query_constraints10___CALLSITE)
          to label %bb.ac unwind label %.thread83.i.i, !noalias !6133 ; 2 uses

bb.ab:                                            ; preds = %bb.z, %bb.ac, %bb.z
  %.sroa.011.0.i.i = phi i8 [ %i.cp, %bb.ac ], [ %i.co, %bb.z ], [ %i.co, %bb.z ]
  %i.cq = load ptr, ptr @_RNvNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB7_8EvalCtxtppE34compute_external_query_constraints10___CALLSITE, align 8, !noalias !6125, !nonnull !18, !align !26, !noundef !18
  %i.cr = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cq, i8 noundef %.sroa.011.0.i.i)
          to label %bb.ad unwind label %.thread83.i.i, !noalias !6133

bb.ac:                                            ; preds = %bb.aa
  %.not.i.i = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i, label %bb.y, label %bb.ab

bb.ad:                                            ; preds = %bb.ab
  br i1 %i.cr, label %bb.ae, label %bb.y

bb.ae:                                            ; preds = %bb.ad
  %i.cs = load ptr, ptr @_RNvNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB7_8EvalCtxtppE34compute_external_query_constraints10___CALLSITE, align 8, !noalias !6125, !nonnull !18, !align !26, !noundef !18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !6125
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !6125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !6125
  store ptr %i.o, ptr %i.k, align 8, !noalias !6125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6125
  store ptr %i.x, ptr %i.j, align 8, !noalias !6125
  store ptr %i.k, ptr %i.l, align 8, !noalias !6125
  %i.cu = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @264, ptr %i.cu, align 8, !noalias !6125
  %i.cv = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.j, ptr %i.cv, align 8, !noalias !6125
  %i.cw = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @265, ptr %i.cw, align 8, !noalias !6125
  store i64 1, ptr %i.m, align 8, !noalias !6125
  %.sroa.430.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.l, ptr %.sroa.430.0..sroa_idx.i.i, align 8, !noalias !6125
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !6125
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.ct, ptr %i.cx, align 8, !noalias !6125
  invoke void @_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m)
          to label %bb.ag unwind label %.thread83.i.i, !noalias !6133

bb.af:                                            ; preds = %bb.ag, %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !6125
  %i.cy = load i64, ptr %i.n, align 8, !range !28, !noalias !6125, !noundef !18
  %.not41.i.i = icmp eq i64 %i.cy, 2
  br i1 %.not41.i.i, label %bb.n, label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !6125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !6125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !6125
  br label %bb.af

bb.ah:                                            ; preds = %bb.af
  %i.cz = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cz)
          to label %bb.n unwind label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit54.i.i, !noalias !6133

bb.ai:                                            ; preds = %bb.aq, %bb.am, %bb.al
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve23ExternalConstraintsDataNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEB1Q_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.h) #48
          to label %.body.i.i unwind label %bb.ba, !noalias !6133

bb.aj:                                            ; preds = %bb.t, %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !6134
  %i.db = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !6134
  %i.dc = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 24, i1 false), !alias.scope !6135, !noalias !6125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6125
  %i.dd = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !6125
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  %i.df = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB7_8EvalCtxtppE34compute_external_query_constraintss_10___CALLSITE, i64 16) monotonic, align 8, !noalias !6125 ; 3 uses
  switch i8 %i.df, label %bb.al [
    i8 0, label %bb.ap
    i8 1, label %bb.am
    i8 2, label %bb.am
  ], !prof !27

bb.al:                                            ; preds = %bb.ak
  %i.dg = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB7_8EvalCtxtppE34compute_external_query_constraintss_10___CALLSITE)
          to label %bb.an unwind label %bb.ai, !noalias !6133 ; 2 uses

bb.am:                                            ; preds = %bb.ak, %bb.an, %bb.ak
  %.sroa.019.0.i.i = phi i8 [ %i.dg, %bb.an ], [ %i.df, %bb.ak ], [ %i.df, %bb.ak ]
  %i.dh = load ptr, ptr @_RNvNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB7_8EvalCtxtppE34compute_external_query_constraintss_10___CALLSITE, align 8, !noalias !6125, !nonnull !18, !align !26, !noundef !18
  %i.di = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dh, i8 noundef %.sroa.019.0.i.i)
          to label %bb.ao unwind label %bb.ai, !noalias !6133

bb.an:                                            ; preds = %bb.al
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB5_8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1r_8interner10DbInternerE48evaluate_added_goals_and_make_canonical_responseB1t_:bb.a
bb.as:                                            ; preds = %bb.ap
  %i.do = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.do)
          to label %.thread.i.i unwind label %.thread59.i.i, !noalias !6133

.thread83.i.i:                                    ; preds = %bb.ae, %bb.ab, %bb.aa
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit54.i.i: ; preds = %bb.ah
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit54.thread.i.i

.thread59.i.i:                                    ; preds = %bb.as
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit54.thread.i.i

.thread.i.i:                                      ; preds = %bb.as
  %.pr.i.i = load i64, ptr %i.n, align 8, !alias.scope !6137, !noalias !6125 ; 2 uses
  %.not.i.i48.i.i = icmp eq i64 %.pr.i.i, 2
  br i1 %.not.i.i48.i.i, label %.noexc47, label %bb.at

bb.at:                                            ; preds = %.thread.i.i
  %i.dq = load i64, ptr %i.do, align 8, !range !30, !alias.scope !6138, !noalias !6125, !noundef !18
  %i.dr = invoke noundef zeroext i1 @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n, i64 noundef %i.dq)
          to label %bb.av unwind label %bb.au, !noalias !6133 ; 0 uses

bb.au:                                            ; preds = %bb.at
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbDqbwph1Irx_7tracing4span5InnerEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.n) #48
          to label %.body unwind label %bb.ay, !noalias !6133

bb.av:                                            ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !6139)
  call void @llvm.experimental.noalias.scope.decl(metadata !6140)
  call void @llvm.experimental.noalias.scope.decl(metadata !6141)
  call void @llvm.experimental.noalias.scope.decl(metadata !6142)
  %i.dt = icmp eq i64 %.pr.i.i, 0
  br i1 %i.dt, label %.noexc47, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.du = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6143)
  call void @llvm.experimental.noalias.scope.decl(metadata !6144)
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !6145, !noalias !6125, !nonnull !18, !noundef !18
  %i.dw = atomicrmw sub ptr %i.dv, i64 1 release, align 8, !noalias !6146
  %i.dx = icmp eq i64 %i.dw, 1
  br i1 %i.dx, label %bb.ax, label %.noexc47

bb.ax:                                            ; preds = %bb.aw
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcDNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10SubscriberNtNtCshzWfHUSfYae_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.du) #49
          to label %.noexc47 unwind label %bb.b

bb.ay:                                            ; preds = %bb.au
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !6133
  unreachable

bb.az:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit54.thread.i.i
  br i1 %.sroa.026.264.i.i, label %bb.bd, label %.body

bb.ba:                                            ; preds = %bb.bd, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit54.thread.i.i, %bb.bc, %bb.ai
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !6133
  unreachable

bb.bb:                                            ; preds = %.body.i.i
  %i.ea = load i64, ptr %i.n, align 8, !range !28, !noalias !6147, !noundef !18
  %.not.i.i52.i.i = icmp eq i64 %i.ea, 2
  br i1 %.not.i.i52.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit54.thread.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eb = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.eb)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit54.thread.i.i unwind label %bb.ba, !noalias !6133

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit54.thread.i.i: ; preds = %bb.bc, %bb.bb, %.thread59.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit54.i.i
  %.sroa.026.264.i.i = phi i1 [ false, %.thread59.i.i ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit54.i.i ], [ false, %bb.bc ], [ false, %bb.bb ]
  %.pn4363.i.i = phi { ptr, i32 } [ %i.dp, %.thread59.i.i ], [ %lpad.thr_comm.split-lp.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit54.i.i ], [ %.pn.i.i, %bb.bc ], [ %.pn.i.i, %bb.bb ] ; 2 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 dereferenceable(40) %i.n) #48
          to label %bb.az unwind label %bb.ba, !noalias !6133

bb.bd:                                            ; preds = %bb.az, %.thread83.i.i
  %.pn4586.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.thread83.i.i ], [ %.pn4363.i.i, %bb.az ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve24NestedNormalizationGoalsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEB1R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x) #48
          to label %.body unwind label %bb.ba, !noalias !6133

bb.be:                                            ; preds = %bb.k
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve10GoalSourceINtB1b_4GoalNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2k_9predicate9PredicateEINtNtB4_6option6OptionINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13GoalStalledOnB2g_EEEEEB2m_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac) #48
          to label %.body unwind label %bb.bf, !noalias !6123

bb.bf:                                            ; preds = %bb.bo, %bb.bn, %bb.bk, %bb.be
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !6123
  unreachable

bb.bg:                                            ; preds = %.noexc45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !6123
  %.sroa.081.0.insert.insert.i = and i32 %i.bg, 16777215
  call void @llvm.experimental.noalias.scope.decl(metadata !6148)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6149
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ef = load ptr, ptr %i.ee, align 8, !alias.scope !6148, !noalias !6150, !nonnull !18, !align !26, !noundef !18
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.eg, i64 32, i1 false), !noalias !6149
  %i.eh = load i32, ptr %i.bb, align 8, !alias.scope !6148, !noalias !6150, !noundef !18
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ej = load ptr, ptr %i.ei, align 8, !alias.scope !6148, !noalias !6150, !nonnull !18, !noundef !18
  invoke void @_RINvNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver9canonical27response_no_constraints_rawNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEB1w_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.z, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, i32 noundef %i.eh, ptr noundef nonnull %i.ej, i32 %.sroa.081.0.insert.insert.i)
          to label %bb.bh unwind label %bb.bo, !noalias !6123

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 8 dereferenceable(40) %i.z, i64 40, i1 false), !noalias !6122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !6123
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve10GoalSourceINtBI_4GoalNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB1Q_9predicate9PredicateEEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve24NestedNormalizationGoalsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEB1R_.exit.i unwind label %bb.bi, !noalias !6123

bb.bi:                                            ; preds = %bb.bh
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve10GoalSourceINtBP_4GoalNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB1X_9predicate9PredicateEEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1Z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body unwind label %bb.bj, !noalias !6123

bb.bj:                                            ; preds = %bb.bi
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !6123
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve24NestedNormalizationGoalsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEB1R_.exit.i: ; preds = %bb.bh
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve10GoalSourceINtBP_4GoalNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB1X_9predicate9PredicateEEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1Z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.noexc48 unwind label %bb.b

.noexc48:                                         ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve24NestedNormalizationGoalsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEB1R_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !6123
  br label %bb.ca

.noexc47:                                         ; preds = %bb.ax, %bb.aw, %bb.av, %.thread.i.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !6123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !6123
  %i.em = load ptr, ptr %i.bx, align 8, !noalias !6123, !nonnull !18, !align !26, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !6123
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !6123, !nonnull !18, !noundef !18
  store ptr %i.eo, ptr %i.u, align 8, !noalias !6123
  %i.ep = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ep, ptr noundef nonnull align 8 dereferenceable(72) %i.y, i64 72, i1 false), !noalias !6123
  invoke void @_RINvNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver7resolve18eager_resolve_varsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical18CanonicalVarValuesNtNtB1j_8interner10DbInternerEINtNtB2l_5solve23ExternalConstraintsDataB3o_EEEB1l_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.v, ptr noundef nonnull align 8 %i.em, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.u)
          to label %.noexc49 unwind label %bb.b

.noexc49:                                         ; preds = %.noexc47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !6123
  %i.eq = load ptr, ptr %i.v, align 8, !noalias !6123, !nonnull !18, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !6123
  %i.er = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef nonnull align 8 dereferenceable(72) %i.er, i64 72, i1 false), !noalias !6123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !6123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !6123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) @44, i64 32, i1 false), !noalias !6123
  invoke void @_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate16RegionConstraintNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtBL_5solve19VisibleForLeakCheckEE6retainNCNCNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB3D_8EvalCtxtNtNtB1Q_6solver13SolverContextB1M_E48evaluate_added_goals_and_make_canonical_response0s0_0EB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %bb.bl unwind label %bb.bk, !noalias !6123

bb.bk:                                            ; preds = %bb.bm, %bb.bl, %.noexc49
  %.sroa.045.0.i = phi i1 [ false, %bb.bm ], [ false, %bb.bl ], [ true, %.noexc49 ]
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate16RegionConstraintNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB21_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate16RegionConstraintNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB2I_.exit.i unwind label %bb.bf, !noalias !6123

bb.bl:                                            ; preds = %.noexc49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !6123
  %i.et = load ptr, ptr %i.bx, align 8, !noalias !6123, !nonnull !18, !align !26, !noundef !18 ; 2 uses
  %i.eu = load i32, ptr %i.bb, align 8, !noalias !6123, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !6123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !6123
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ev, i64 32, i1 false), !noalias !6123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !6123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(72) %i.w, i64 72, i1 false), !noalias !6123
  %i.ew = invoke noundef nonnull ptr @_RNvXsg_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB5_10DbInternerNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8interner8Interner23mk_external_constraints(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.p)
          to label %bb.bm unwind label %bb.bk, !noalias !6123

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !6123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !6123
  %i.ex = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i8> %8, ptr %i.ex, align 8, !noalias !6123
  store ptr %i.eq, ptr %i.r, align 8, !noalias !6123
  %i.ey = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.ew, ptr %i.ey, align 8, !noalias !6123
  invoke void @_RINvMNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver9canonical13canonicalizerINtB3_13CanonicalizerNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1E_8interner10DbInternerE21canonicalize_responseINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve8ResponseB2A_EEB1G_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.s, ptr noundef nonnull align 8 %i.et, i32 noundef %i.eu, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.r)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate16RegionConstraintNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB2I_.exit102.i unwind label %bb.bk, !noalias !6123

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate16RegionConstraintNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB2I_.exit102.i: ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !6123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 8 dereferenceable(40) %i.s, i64 40, i1 false), !noalias !6122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !6123
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate16RegionConstraintNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB21_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %.noexc50 unwind label %bb.b

.noexc50:                                         ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate16RegionConstraintNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB2I_.exit102.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !6123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !6123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !6123
  br label %bb.ca

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate16RegionConstraintNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB2I_.exit.i: ; preds = %bb.bk
  br i1 %.sroa.045.0.i, label %bb.bn, label %.body

bb.bn:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate16RegionConstraintNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB2I_.exit.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve23ExternalConstraintsDataNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEB1Q_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.w) #48
          to label %.body unwind label %bb.bf, !noalias !6123

bb.bo:                                            ; preds = %bb.bg
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve24NestedNormalizationGoalsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEB1R_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad) #48
          to label %.body unwind label %bb.bf, !noalias !6123

bb.bp:                                            ; preds = %bb.a
  %i.ez = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.br, %bb.bp, %bb.bv, %bb.bu
  store i64 2, ptr %i.ai, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr null, ptr %i.fb, align 8
  br label %bb.bx

bb.br:                                            ; preds = %bb.bp
  %i.fc = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB7_8EvalCtxtppE48evaluate_added_goals_and_make_canonical_response10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.fc, label %bb.bs [
    i8 0, label %bb.bq
    i8 1, label %bb.bt
    i8 2, label %bb.bt
  ], !prof !27

bb.bs:                                            ; preds = %bb.br
  %i.fd = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB7_8EvalCtxtppE48evaluate_added_goals_and_make_canonical_response10___CALLSITE)
          to label %bb.bu unwind label %bb.b      ; 2 uses

bb.bt:                                            ; preds = %bb.br, %bb.br, %bb.bu
  %.sroa.011.0 = phi i8 [ %i.fd, %bb.bu ], [ %i.fc, %bb.br ], [ %i.fc, %bb.br ]
  %i.fe = load ptr, ptr @_RNvNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB7_8EvalCtxtppE48evaluate_added_goals_and_make_canonical_response10___CALLSITE, align 8, !nonnull !18, !align !26, !noundef !18
  %i.ff = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fe, i8 noundef %.sroa.011.0)
          to label %bb.bv unwind label %bb.b

bb.bu:                                            ; preds = %bb.bs
  %.not = icmp eq i8 %i.fd, 0
  br i1 %.not, label %bb.bq, label %bb.bt

bb.bv:                                            ; preds = %bb.bt
  br i1 %i.ff, label %bb.bw, label %bb.bq

bb.bw:                                            ; preds = %bb.bv
  %i.fg = load ptr, ptr @_RNvNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB7_8EvalCtxtppE48evaluate_added_goals_and_make_canonical_response10___CALLSITE, align 8, !nonnull !18, !align !26, !noundef !18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store ptr %i.an, ptr %i.aj, align 8
  store ptr %i.aj, ptr %i.ak, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @264, ptr %i.fi, align 8
  store i64 1, ptr %i.al, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ak, ptr %.sroa.429.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %i.fh, ptr %i.fj, align 8
  invoke void @_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.al)
          to label %bb.by unwind label %bb.b

bb.bx:                                            ; preds = %bb.by, %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.am, ptr noundef nonnull align 8 dereferenceable(40) %i.ai, i64 40, i1 false)
  %i.fk = load i64, ptr %i.am, align 8, !range !28, !noundef !18
  %.not40 = icmp eq i64 %i.fk, 2
  br i1 %.not40, label %bb.c, label %bb.bz

bb.by:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.bx

bb.bz:                                            ; preds = %bb.bx
  %i.fl = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fl)
          to label %bb.c unwind label %bb.b

bb.ca:                                            ; preds = %bb.d, %.noexc48, %.noexc50
  %i.fm = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %bb.cb, label %bb.cg

bb.cb:                                            ; preds = %bb.ca
  %i.fo = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB7_8EvalCtxtppE48evaluate_added_goals_and_make_canonical_responses_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.fo, label %bb.cc [
    i8 0, label %bb.cg
    i8 1, label %bb.cd
    i8 2, label %bb.cd
  ], !prof !27

bb.cc:                                            ; preds = %bb.cb
  %i.fp = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB7_8EvalCtxtppE48evaluate_added_goals_and_make_canonical_responses_10___CALLSITE)
          to label %bb.ce unwind label %bb.b      ; 2 uses

bb.cd:                                            ; preds = %bb.cb, %bb.cb, %bb.ce
  %.sroa.019.0 = phi i8 [ %i.fp, %bb.ce ], [ %i.fo, %bb.cb ], [ %i.fo, %bb.cb ]
  %i.fq = load ptr, ptr @_RNvNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB7_8EvalCtxtppE48evaluate_added_goals_and_make_canonical_responses_10___CALLSITE, align 8, !nonnull !18, !align !26, !noundef !18
  %i.fr = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fq, i8 noundef %.sroa.019.0)
          to label %bb.cf unwind label %bb.b

bb.ce:                                            ; preds = %bb.cc
  %i.fs = icmp eq i8 %i.fp, 0
  br i1 %i.fs, label %bb.cg, label %bb.cd

bb.cf:                                            ; preds = %bb.cd
  br i1 %i.fr, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.ce, %bb.cb, %bb.ca, %bb.ci, %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.ft = trunc nuw i8 %.sroa.022.1 to i1
  %i.fu = load i64, ptr %i.am, align 8, !range !28
  %.not.i.i51 = icmp ne i64 %i.fu, 2
  %or.cond66.not = select i1 %i.ft, i1 %.not.i.i51, i1 false
  br i1 %or.cond66.not, label %bb.cj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit

bb.ch:                                            ; preds = %bb.cf
  %i.fv = load ptr, ptr @_RNvNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB7_8EvalCtxtppE48evaluate_added_goals_and_make_canonical_responses_10___CALLSITE, align 8, !nonnull !18, !align !26, !noundef !18 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.ah, ptr %i.af, align 8
  store ptr %i.af, ptr %i.ag, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @38, ptr %i.fx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i64 1, ptr %i.ae, align 8
  %.sroa.021.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ag, ptr %.sroa.021.sroa.4.0..sroa_idx, align 8
  %.sroa.021.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 1, ptr %.sroa.021.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %i.fw, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ae)
          to label %bb.ci unwind label %bb.b

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.cg

bb.cj:                                            ; preds = %bb.cg
  %i.fy = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 2 uses
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fy)
          to label %.thread unwind label %.thread58

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit56: ; preds = %bb.cq, %.body
  %i.fz = trunc nuw i8 %.sroa.024.0.lpad-body to i1
  br i1 %i.fz, label %bb.cs, label %common.resume

.thread58:                                        ; preds = %bb.cj
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.co, %bb.cn, %bb.cm, %.thread, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  ret void

.thread:                                          ; preds = %bb.cj
  %.pr = load i64, ptr %i.am, align 8, !alias.scope !6151 ; 2 uses
  %.not.i.i53 = icmp eq i64 %.pr, 2
  br i1 %.not.i.i53, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit, label %bb.ck

bb.ck:                                            ; preds = %.thread
  %i.gb = load i64, ptr %i.fy, align 8, !range !30, !alias.scope !6152, !noundef !18
  %i.gc = invoke noundef zeroext i1 @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef %i.gb)
          to label %bb.cm unwind label %bb.cl     ; 0 uses

bb.cl:                                            ; preds = %bb.ck
end_hunk_1
