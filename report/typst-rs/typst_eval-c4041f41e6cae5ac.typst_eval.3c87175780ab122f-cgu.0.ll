Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_eval-c4041f41e6cae5ac.typst_eval.3c87175780ab122f-cgu.0?download=true
inline.NumInlined: 6644
inline.NumDeleted: 3025
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB3_5Value5fieldTQNtNtB7_6engine6EngineNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanEECs5cbCQMMIObr_10typst_eval:bb.a
    i64 13, label %bb.c
    i64 14, label %bb.cz
    i64 21, label %bb.da
    i64 24, label %bb.db
    i64 25, label %bb.dc
    i64 26, label %bb.dt
    i64 27, label %bb.du
    i64 28, label %bb.ec
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6fields5field(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  br label %bb.es

bb.c:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %i.av = load i64, ptr %i.au, align 8, !range !42, !alias.scope !438, !noundef !35
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !438, !nonnull !35, !noundef !35 ; 6 uses
  switch i64 %i.av, label %default.unreachable [
    i64 0, label %_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library11foundations6symbolNtB5_6SymbolNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.thread
    i64 1, label %bb.f
    i64 2, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library11foundations6symbolNtB5_6SymbolNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.thread: ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !438, !noundef !35
  store i64 0, ptr %i.ao, align 8, !alias.scope !435
  %.sroa.4.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx.i49, align 8, !alias.scope !435
  %.sroa.7.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %i.az, ptr %.sroa.7.0..sroa_idx.i50, align 8, !alias.scope !435
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store ptr %4, ptr %i.ak, align 8, !noalias !439
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %5, ptr %i.ba, align 8, !noalias !439
  br label %bb.bj

bb.d:                                             ; preds = %bb.c
  %i.bb = atomicrmw add ptr %i.ax, i64 1 monotonic, align 8, !noalias !440
  %i.bc = icmp slt i64 %i.bb, 0
  br i1 %i.bc, label %bb.e, label %._crit_edge.i

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

._crit_edge.i:                                    ; preds = %bb.d
  store i64 2, ptr %i.ao, align 8, !alias.scope !435
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !435
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store ptr %4, ptr %i.ak, align 8, !noalias !443
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %5, ptr %i.bd, align 8, !noalias !443
  br label %bb.j

bb.f:                                             ; preds = %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !438, !noundef !35 ; 2 uses
  store i64 1, ptr %i.ao, align 8, !alias.scope !435
  %.sroa.4.0..sroa_idx.i58 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx.i58, align 8, !alias.scope !435
  %.sroa.7.0..sroa_idx.i59 = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %i.bf, ptr %.sroa.7.0..sroa_idx.i59, align 8, !alias.scope !435
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store ptr %4, ptr %i.ak, align 8, !noalias !444
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %5, ptr %i.bg, align 8, !noalias !444
  %.sroa.06.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !443
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %.sroa.06.sroa.6.0..sroa_idx.i, i8 0, i64 15, i1 false), !noalias !443
  store i64 1, ptr %i.ai, align 8, !noalias !443
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 1, ptr %i.bh, align 8, !noalias !443
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %i.bi, align 8, !noalias !443
  %.sroa.06.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.ax, ptr %.sroa.06.sroa.4.0..sroa_idx.i, align 8, !noalias !443
  %.sroa.06.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store i64 %i.bf, ptr %.sroa.06.sroa.5.0..sroa_idx.i, align 8, !noalias !443
  %.sroa.06.sroa.6.sroa.4.0..sroa.06.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 55
  store i8 -128, ptr %.sroa.06.sroa.6.sroa.4.0..sroa.06.sroa.6.0..sroa_idx.sroa_idx.i, align 1, !noalias !443
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  store i8 0, ptr %.sroa.57.0..sroa_idx.i, align 8, !noalias !443
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !445
  %i.bj = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !445 ; 4 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.g, label %.thread.i, !prof !40

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #42
          to label %.noexc.i unwind label %bb.h, !noalias !441

.noexc.i:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8ModifiedEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ai) #44
          to label %.body.i unwind label %bb.i, !noalias !441

bb.i:                                             ; preds = %bb.h
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !441
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowTINtNtCseVcqU0FIJnD_5codex6shared11ModifierSetReEINtNtB6_6option6OptionB1K_EEENtNtB4_9try_trait3Try6branchCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i, %bb.bo, %bb.ce, %bb.bw, %bb.bs, %bb.ca, %bb.ck, %bb.cs, %bb.cr, %bb.bm, %.noexc54.i, %bb.bl, %bb.o, %bb.l
  %lpad.loopexit.split-lp614 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.thread.i:                                        ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bj, ptr noundef nonnull align 8 dereferenceable(64) %i.ai, i64 64, i1 false), !noalias !441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !443
  store i64 2, ptr %i.ao, align 8, !alias.scope !442
  store ptr %i.bj, ptr %.sroa.4.0..sroa_idx.i58, align 8, !alias.scope !442
  br label %bb.j

bb.j:                                             ; preds = %.thread.i, %._crit_edge.i
  %.sroa.4.0..sroa_idx.i61 = phi ptr [ %.sroa.4.0..sroa_idx.i, %._crit_edge.i ], [ %.sroa.4.0..sroa_idx.i58, %.thread.i ] ; 14 uses
  %i.bn = phi ptr [ %i.ax, %._crit_edge.i ], [ %i.bj, %.thread.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  %i.bo = cmpxchg ptr %i.bn, i64 1, i64 0 acquire monotonic, align 8, !noalias !447
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bo, 1
  %i.bp = load ptr, ptr %.sroa.4.0..sroa_idx.i61, align 8, !alias.scope !448, !nonnull !35, !noundef !35 ; 14 uses
  br i1 %.sroa.18.0.in.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.br = load atomic i64, ptr %i.bq monotonic, align 8, !noalias !447
  %i.bs = icmp eq i64 %i.br, 1
  br i1 %i.bs, label %bb.az, label %bb.ba

bb.l:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !450
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  %i.bu = invoke { i64, i64 } @_RNvNtCs1xwejQucwHj_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef 8, i64 noundef 48)
          to label %.noexc50.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !441 ; 2 uses

.noexc50.i:                                       ; preds = %bb.l
  %i.bv = extractvalue { i64, i64 } %i.bu, 0      ; 3 uses
  %i.bw = extractvalue { i64, i64 } %i.bu, 1      ; 3 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.noexc50.i
  %i.by = inttoptr i64 %i.bv to ptr
  br label %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8ModifiedNtNtBa_5alloc6GlobalE3new0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i

bb.n:                                             ; preds = %.noexc50.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !452
  %i.bz = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.bw, i64 noundef range(i64 1, -9223372036854775807) %i.bv) #45, !noalias !452
  br label %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8ModifiedNtNtBa_5alloc6GlobalE3new0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i

_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8ModifiedNtNtBa_5alloc6GlobalE3new0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi ptr [ %i.by, %bb.m ], [ %i.bz, %bb.n ] ; 10 uses
  %i.ca = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i.i.i, null
  br i1 %i.ca, label %bb.o, label %_RNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8ModifiedNtNtB8_5alloc6GlobalE3newCs5cbCQMMIObr_10typst_eval.exit.i.i.i, !prof !40

bb.o:                                             ; preds = %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8ModifiedNtNtBa_5alloc6GlobalE3new0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef %i.bv, i64 noundef %i.bw) #42
          to label %.noexc51.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !441

.noexc51.i:                                       ; preds = %bb.o
  unreachable

_RNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8ModifiedNtNtB8_5alloc6GlobalE3newCs5cbCQMMIObr_10typst_eval.exit.i.i.i: ; preds = %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8ModifiedNtNtBa_5alloc6GlobalE3new0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, align 8, !noalias !452
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 8
  store i64 1, ptr %i.cb, align 8, !noalias !452
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %.sroa.0.0.i.i.i.i.i.i.i.i, ptr %i.cc, align 8, !alias.scope !451, !noalias !450
  store i64 8, ptr %i.ag, align 8, !alias.scope !451, !noalias !450
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 48, ptr %i.cd, align 8, !alias.scope !451, !noalias !450
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i8 1, ptr %i.ce, align 8, !alias.scope !451, !noalias !450
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !456
  %i.cf = load i64, ptr %i.bt, align 8, !range !36, !alias.scope !457, !noalias !447, !noundef !35
  %i.cg = trunc nuw i64 %i.cf to i1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %.val26.i.i.i.i.i.i = load ptr, ptr %i.ch, align 8, !alias.scope !457, !noalias !447, !nonnull !35, !noundef !35 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %.val27.i.i.i.i.i.i = load i64, ptr %i.ci, align 8, !alias.scope !457, !noalias !447, !noundef !35 ; 6 uses
  br i1 %i.cg, label %bb.p, label %bb.ar

bb.p:                                             ; preds = %_RNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8ModifiedNtNtB8_5alloc6GlobalE3newCs5cbCQMMIObr_10typst_eval.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !459
  %i.cj = mul nuw nsw i64 %.val27.i.i.i.i.i.i, 56 ; 2 uses
  %i.ck = icmp eq i64 %.val27.i.i.i.i.i.i, 0
  br i1 %i.ck, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i.i.i.i.i: ; preds = %bb.p
  store i64 0, ptr %i.ad, align 8, !noalias !459
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cl, align 8, !noalias !459
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  br label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inTINtNtCseVcqU0FIJnD_5codex6shared11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB1u_INtNtCs3oUPovFnLWP_4core6option6OptionB1u_EENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !460
  %i.cn = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.cj, i64 noundef range(i64 1, 9) 8) #45, !noalias !460 ; 3 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.q, label %.lr.ph.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.cj) #42
          to label %.noexc.i.i.i unwind label %.body.thread8.i.i.i, !noalias !461

.body.thread8.i.i.i:                              ; preds = %bb.q
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.q
  unreachable

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i
  store i64 %.val27.i.i.i.i.i.i, ptr %i.ad, align 8, !noalias !459
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.cn, ptr %i.cq, align 8, !noalias !459
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %.sroa.4.0..sroa_idx.i7.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  br label %bb.s

bb.r:                                             ; preds = %bb.v
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.s:                                             ; preds = %bb.ai, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.012.044.i.i.i.i.i.i.i.i = phi ptr [ %.val26.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.cw, %bb.ai ] ; 11 uses
  %.sroa.7.042.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.cx, %bb.ai ] ; 3 uses
  %.sroa.10.041.i.i.i.i.i.i.i.i = phi i64 [ %.val27.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %6, %bb.ai ]
  %6 = add nsw i64 %.sroa.10.041.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i.i.i.i.i.i.i.i, i64 56
  %i.cx = add nuw nsw i64 %.sroa.7.042.i.i.i.i.i.i.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !459
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i.i.i.i.i.i.i.i, i64 15
  %i.cz = load i8, ptr %i.cy, align 1, !alias.scope !469, !noalias !470, !noundef !35
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i8 %i.cz, -1
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.012.044.i.i.i.i.i.i.i.i, align 8, !alias.scope !471, !noalias !470 ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i.i.i.i.i.i.i.i, i64 8
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.da, align 8, !alias.scope !471, !noalias !470 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.t, label %_RNvXs4_NtCseVcqU0FIJnD_5codex6sharedINtB5_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs4_NtCseVcqU0FIJnD_5codex6sharedINtB5_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.db = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 -16
  %i.dc = atomicrmw add ptr %i.db, i64 1 monotonic, align 8, !noalias !472
  %i.dd = icmp slt i64 %i.dc, 0
  br i1 %i.dd, label %bb.v, label %_RNvXs4_NtCseVcqU0FIJnD_5codex6sharedINtB5_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i, !prof !40

bb.v:                                             ; preds = %bb.u
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs5cbCQMMIObr_10typst_eval(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i) #42
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.r

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.v
  unreachable

_RNvXs4_NtCseVcqU0FIJnD_5codex6sharedINtB5_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.u, %bb.t, %bb.s
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 16 to ptr), %bb.t ], [ %.val.i.i.i.i.i.i.i.i.i.i.i.i, %bb.u ], [ %.val.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s ] ; 2 uses
  store ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ac, align 8, !alias.scope !473, !noalias !459
  store i64 %.val10.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !473, !noalias !459
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i.i.i.i.i.i.i.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i.i.i.i.i.i.i.i, i64 31
  %i.dg = load i8, ptr %i.df, align 1, !alias.scope !478, !noalias !470, !noundef !35
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i8 %i.dg, -1
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.de, align 8, !alias.scope !479, !noalias !470 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i.i.i.i.i.i.i.i, i64 24
  %.val10.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dh, align 8, !alias.scope !479, !noalias !470
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %_RNvXs4_NtCseVcqU0FIJnD_5codex6sharedINtB5_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.di = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i, i64 -16
  %i.dj = atomicrmw add ptr %i.di, i64 1 monotonic, align 8, !noalias !480
  %i.dk = icmp slt i64 %i.dj, 0
  br i1 %i.dk, label %bb.y, label %bb.ab, !prof !40

bb.y:                                             ; preds = %bb.x
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs5cbCQMMIObr_10typst_eval(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i) #42
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.aa

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.ag, %bb.aa
  %.pn.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.dx, %bb.ag ], [ %i.dm, %bb.aa ]
  %.in.i.i.i.i.i.i.i.i = lshr i64 %.val10.i.i.i.i.i.i.i.i.i.i.i.i, 56
  %i.dl = trunc nuw i64 %.in.i.i.i.i.i.i.i.i to i8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCseVcqU0FIJnD_5codex6shared11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs5cbCQMMIObr_10typst_eval(ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, i8 %i.dl) #44
          to label %bb.ak unwind label %bb.ah, !noalias !481

bb.aa:                                            ; preds = %bb.y
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.ab:                                            ; preds = %bb.x, %bb.w, %_RNvXs4_NtCseVcqU0FIJnD_5codex6sharedINtB5_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 16 to ptr), %bb.w ], [ %.val.i.i.i.i.i.i.i.i.i.i.i, %bb.x ], [ %.val.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs4_NtCseVcqU0FIJnD_5codex6sharedINtB5_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i ]
  store ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, ptr %i.cs, align 8, !alias.scope !482, !noalias !459
  store i64 %.val10.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !482, !noalias !459
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i.i.i.i.i.i.i.i, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !484)
  %i.do = load i64, ptr %i.dn, align 8, !range !36, !alias.scope !485, !noalias !470, !noundef !35
  %i.dp = trunc nuw i64 %i.do to i1
  br i1 %i.dp, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i.i.i.i.i.i.i.i, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i.i.i.i.i.i.i.i, i64 55
  %i.ds = load i8, ptr %i.dr, align 1, !alias.scope !489, !noalias !470, !noundef !35
  %.not.i.i.i3.i.i.i.i.i.i.i.i.i = icmp sgt i8 %i.ds, -1
  %.val.i.i.i4.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dq, align 8, !alias.scope !490, !noalias !470 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i.i.i.i.i.i.i.i, i64 48
  %.val10.i.i.i5.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dt, align 8, !alias.scope !490, !noalias !470
  br i1 %.not.i.i.i3.i.i.i.i.i.i.i.i.i, label %bb.ad, label %_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %.not.i.i.i.i.i8.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i4.i.i.i.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i8.i.i.i.i.i.i.i.i.i, label %_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.du = getelementptr inbounds i8, ptr %.val.i.i.i4.i.i.i.i.i.i.i.i.i, i64 -16
  %i.dv = atomicrmw add ptr %i.du, i64 1 monotonic, align 8, !noalias !491
  %i.dw = icmp slt i64 %i.dv, 0
  br i1 %i.dw, label %bb.af, label %_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i.i.i, !prof !40

bb.af:                                            ; preds = %bb.ae
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs5cbCQMMIObr_10typst_eval(ptr noundef nonnull %.val.i.i.i4.i.i.i.i.i.i.i.i.i) #42
          to label %.noexc9.i.i.i.i.i.i.i.i.i unwind label %bb.ag

.noexc9.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.af
  unreachable

_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  %.sroa.0.0.i.i6.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 16 to ptr), %bb.ad ], [ %.val.i.i.i4.i.i.i.i.i.i.i.i.i, %bb.ae ], [ %.val.i.i.i4.i.i.i.i.i.i.i.i.i, %bb.ac ]
  store ptr %.sroa.0.0.i.i6.i.i.i.i.i.i.i.i.i, ptr %i.ct, align 8, !alias.scope !492, !noalias !459
  store i64 %.val10.i.i.i5.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i7.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !492, !noalias !459
  br label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cs) #44
          to label %bb.z unwind label %bb.ah, !noalias !493

bb.ah:                                            ; preds = %bb.ag, %bb.z
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !481
  unreachable

bb.ai:                                            ; preds = %_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i.i.i, %bb.ab
  %storemerge.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.ab ]
  store i64 %storemerge.i.i.i.i.i.i.i.i.i.i, ptr %i.cu, align 8, !alias.scope !492, !noalias !459
  %i.dz = getelementptr inbounds nuw [56 x i8], ptr %i.cn, i64 %.sroa.7.042.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dz, ptr noundef nonnull align 8 dereferenceable(56) %i.ac, i64 56, i1 false), !noalias !494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !459
  %i.ea = icmp eq i64 %6, 0
  br i1 %i.ea, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inTINtNtCseVcqU0FIJnD_5codex6shared11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB1u_INtNtCs3oUPovFnLWP_4core6option6OptionB1u_EENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i, label %bb.s

bb.aj:                                            ; preds = %bb.ak
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !494
  unreachable

bb.ak:                                            ; preds = %bb.z, %bb.r
  %eh.lpad-body.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cv, %bb.r ], [ %.pn.i.i.i.i.i.i.i.i.i, %bb.z ]
  store i64 %.sroa.7.042.i.i.i.i.i.i.i.i, ptr %i.cr, align 8, !noalias !459
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTINtNtCseVcqU0FIJnD_5codex6shared11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB1S_INtNtB4_6option6OptionB1S_EEEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad) #44
          to label %.body.thread.i.i.i unwind label %bb.aj, !noalias !494

_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inTINtNtCseVcqU0FIJnD_5codex6shared11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB1u_INtNtCs3oUPovFnLWP_4core6option6OptionB1u_EENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i: ; preds = %bb.ai, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i.i.i.i.i
  %7 = phi ptr [ %i.cm, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i.i.i.i.i ], [ %i.cr, %bb.ai ]
  store i64 %.val27.i.i.i.i.i.i, ptr %7, align 8, !noalias !459
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !459
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496)
  %i.ec = load i64, ptr %i.ae, align 8, !range !43, !alias.scope !496, !noalias !456, !noundef !35 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !alias.scope !496, !noalias !456, !noundef !35 ; 5 uses
  %i.ef = icmp ugt i64 %i.ec, %i.ee
  br i1 %i.ef, label %bb.al, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inTINtNtCseVcqU0FIJnD_5codex6shared11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB1u_INtNtCs3oUPovFnLWP_4core6option6OptionB1u_EENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i
  %.sroa.410.0..sroa_idx.phi.trans.insert.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.410.0.copyload.pre.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.410.0..sroa_idx.phi.trans.insert.i.i.i.i.i.i.i.i, align 8, !alias.scope !496, !noalias !456
  br label %_RNvXse_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSTINtNtCseVcqU0FIJnD_5codex6shared11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB1s_INtNtCs3oUPovFnLWP_4core6option6OptionB1s_EEENtNtB2g_5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i

bb.al:                                            ; preds = %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inTINtNtCseVcqU0FIJnD_5codex6shared11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB1u_INtNtCs3oUPovFnLWP_4core6option6OptionB1u_EENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.val10.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.eg, align 8, !alias.scope !499, !noalias !456, !nonnull !35, !noundef !35 ; 2 uses
  %i.eh = mul nuw i64 %i.ec, 56                   ; 2 uses
  %i.ei = icmp eq i64 %i.ee, 0
  br i1 %i.ei, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i, label %bb.am

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.al
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.eh, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !500
  br label %_RNvXse_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSTINtNtCseVcqU0FIJnD_5codex6shared11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB1s_INtNtCs3oUPovFnLWP_4core6option6OptionB1s_EEENtNtB2g_5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i

bb.am:                                            ; preds = %bb.al
  %i.ej = mul nuw i64 %i.ee, 56                   ; 2 uses
  %i.ek = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.val10.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.eh, i64 noundef range(i64 1, -9223372036854775807) 8, i64 noundef range(i64 56, 0) %i.ej) #45, !noalias !500 ; 2 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.ao, label %_RNvXse_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSTINtNtCseVcqU0FIJnD_5codex6shared11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB1s_INtNtCs3oUPovFnLWP_4core6option6OptionB1s_EEENtNtB2g_5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.ao
  %i.em = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTINtNtCseVcqU0FIJnD_5codex6shared11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB1S_INtNtB4_6option6OptionB1S_EEEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.ae) #44
          to label %.body.thread.i.i.i unwind label %bb.aq, !noalias !470

bb.ao:                                            ; preds = %bb.am
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ej) #42
          to label %bb.ap unwind label %bb.an, !noalias !501

bb.ap:                                            ; preds = %bb.ao
  unreachable

bb.aq:                                            ; preds = %bb.an
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !501
  unreachable

_RNvXse_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSTINtNtCseVcqU0FIJnD_5codex6shared11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB1s_INtNtCs3oUPovFnLWP_4core6option6OptionB1s_EEENtNtB2g_5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i: ; preds = %bb.am, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i
  %.sroa.410.0.copyload.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.410.0.copyload.pre.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.ek, %bb.am ]
  %i.eo = icmp ult i64 %i.ee, 164703072086692426
  tail call void @llvm.assume(i1 %i.eo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !456
  br label %bb.ar

bb.ar:                                            ; preds = %_RNvXse_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSTINtNtCseVcqU0FIJnD_5codex6shared11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB1s_INtNtCs3oUPovFnLWP_4core6option6OptionB1s_EEENtNtB2g_5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i, %_RNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8ModifiedNtNtB8_5alloc6GlobalE3newCs5cbCQMMIObr_10typst_eval.exit.i.i.i
  %.val26.sink.i.i.i.i.i.i = phi ptr [ %.sroa.410.0.copyload.i.i.i.i.i.i.i.i, %_RNvXse_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSTINtNtCseVcqU0FIJnD_5codex6shared11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB1s_INtNtCs3oUPovFnLWP_4core6option6OptionB1s_EEENtNtB2g_5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i ], [ %.val26.i.i.i.i.i.i, %_RNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8ModifiedNtNtB8_5alloc6GlobalE3newCs5cbCQMMIObr_10typst_eval.exit.i.i.i ]
  %.val27.sink.i.i.i.i.i.i = phi i64 [ %i.ee, %_RNvXse_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSTINtNtCseVcqU0FIJnD_5codex6shared11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB1s_INtNtCs3oUPovFnLWP_4core6option6OptionB1s_EEENtNtB2g_5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i ], [ %.val27.i.i.i.i.i.i, %_RNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8ModifiedNtNtB8_5alloc6GlobalE3newCs5cbCQMMIObr_10typst_eval.exit.i.i.i ]
  %storemerge.i.i.i.i.i.i = phi i64 [ 1, %_RNvXse_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSTINtNtCseVcqU0FIJnD_5codex6shared11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB1s_INtNtCs3oUPovFnLWP_4core6option6OptionB1s_EEENtNtB2g_5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i ], [ 0, %_RNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8ModifiedNtNtB8_5alloc6GlobalE3newCs5cbCQMMIObr_10typst_eval.exit.i.i.i ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %.val26.sink.i.i.i.i.i.i, ptr %i.ep, align 8, !noalias !456
  %i.eq = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %.val27.sink.i.i.i.i.i.i, ptr %i.eq, align 8, !noalias !456
  store i64 %storemerge.i.i.i.i.i.i, ptr %i.af, align 8, !noalias !456
  %i.er = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.es = getelementptr inbounds nuw i8, ptr %i.bp, i64 55
  %i.et = load i8, ptr %i.es, align 1, !alias.scope !457, !noalias !447, !noundef !35
  %.not.i.i.i.i.i.i = icmp sgt i8 %i.et, -1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %.val.i.i.i.i.i.i = load ptr, ptr %i.er, align 8, !alias.scope !457, !noalias !447 ; 5 uses
  %.val25.i.i.i.i.i.i = load i64, ptr %i.eu, align 8, !alias.scope !457, !noalias !447
  br i1 %.not.i.i.i.i.i.i, label %bb.as, label %_RNvMsk_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8ModifiedE17clone_from_ref_inCs5cbCQMMIObr_10typst_eval.exit.i.i

bb.as:                                            ; preds = %bb.ar
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvMsk_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8ModifiedE17clone_from_ref_inCs5cbCQMMIObr_10typst_eval.exit.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ev = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i, i64 -16
  %i.ew = atomicrmw add ptr %i.ev, i64 1 monotonic, align 8, !noalias !470
  %i.ex = icmp slt i64 %i.ew, 0
  br i1 %i.ex, label %bb.au, label %_RNvMsk_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8ModifiedE17clone_from_ref_inCs5cbCQMMIObr_10typst_eval.exit.i.i, !prof !40

bb.au:                                            ; preds = %bb.at
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs5cbCQMMIObr_10typst_eval(ptr noundef nonnull %.val.i.i.i.i.i.i) #42
          to label %.noexc.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i:                               ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.au
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol4ListECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af) #44
          to label %.body.thread.i.i.i unwind label %bb.aw, !noalias !470

bb.aw:                                            ; preds = %bb.av
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !470
  unreachable

.body.thread.i.i.i:                               ; preds = %bb.av, %bb.an, %bb.ak, %.body.thread8.i.i.i
  %eh.lpad-body7.i.i.i = phi { ptr, i32 } [ %i.cp, %.body.thread8.i.i.i ], [ %i.ey, %bb.av ], [ %eh.lpad-body.i.i.i.i.i.i.i.i, %bb.ak ], [ %i.em, %bb.an ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync15UniqueArcUninitNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8ModifiedNtNtBG_5alloc6GlobalEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ag) #44
          to label %.body.i unwind label %bb.ax, !noalias !461

bb.ax:                                            ; preds = %.body.thread.i.i.i
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !461
  unreachable

_RNvMsk_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8ModifiedE17clone_from_ref_inCs5cbCQMMIObr_10typst_eval.exit.i.i: ; preds = %bb.ar, %bb.at, %bb.as
  %.sroa.06.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 16 to ptr), %bb.as ], [ %.val.i.i.i.i.i.i, %bb.at ], [ %.val.i.i.i.i.i.i, %bb.ar ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.fd = load i8, ptr %i.fc, align 8, !range !44, !alias.scope !457, !noalias !447, !noundef !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fb, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !456
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 40
  store ptr %.sroa.06.0.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !502
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 48
  store i64 %.val25.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !502
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 56
  store i8 %i.fd, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !450
  %i.fe = atomicrmw add ptr %i.bp, i64 -1 release, align 8, !noalias !503
  %i.ff = icmp eq i64 %i.fe, 1
  br i1 %i.ff, label %bb.ay, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8ModifiedEECs5cbCQMMIObr_10typst_eval.exit.i.i

bb.ay:                                            ; preds = %_RNvMsk_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8ModifiedE17clone_from_ref_inCs5cbCQMMIObr_10typst_eval.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8ModifiedE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.4.0..sroa_idx.i61) #46
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8ModifiedEECs5cbCQMMIObr_10typst_eval.exit.i.i unwind label %bb.bi, !noalias !441

bb.az:                                            ; preds = %bb.k
  store atomic i64 1, ptr %i.bp release, align 8, !noalias !447
  br label %bb.bk

bb.ba:                                            ; preds = %bb.k
  %i.fg = invoke { i64, i64 } @_RNvNtCs1xwejQucwHj_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef 8, i64 noundef 48)
          to label %.noexc8.i.i unwind label %bb.bh, !noalias !447 ; 2 uses

.noexc8.i.i:                                      ; preds = %bb.ba
  %i.fh = extractvalue { i64, i64 } %i.fg, 0      ; 3 uses
  %i.fi = extractvalue { i64, i64 } %i.fg, 1      ; 3 uses
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.noexc8.i.i
  %i.fk = inttoptr i64 %i.fh to ptr
  br label %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8ModifiedNtNtBa_5alloc6GlobalE3new0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i

bb.bc:                                            ; preds = %.noexc8.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !504
  %i.fl = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.fi, i64 noundef range(i64 1, -9223372036854775807) %i.fh) #45, !noalias !504
  br label %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8ModifiedNtNtBa_5alloc6GlobalE3new0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i

_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8ModifiedNtNtBa_5alloc6GlobalE3new0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %bb.bc, %bb.bb
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %i.fk, %bb.bb ], [ %i.fl, %bb.bc ] ; 5 uses
  %i.fm = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i.i, null
  br i1 %i.fm, label %bb.bd, label %bb.be, !prof !40

bb.bd:                                            ; preds = %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8ModifiedNtNtBa_5alloc6GlobalE3new0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef %i.fh, i64 noundef %i.fi) #42
          to label %.noexc9.i.i unwind label %bb.bh, !noalias !447

.noexc9.i.i:                                      ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8ModifiedNtNtBa_5alloc6GlobalE3new0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i.i.i.i, align 8, !noalias !504
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 8
  store i64 1, ptr %i.fn, align 8, !noalias !504
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fp, ptr noundef nonnull align 8 dereferenceable(48) %i.fo, i64 48, i1 false), !noalias !447
  store ptr %.sroa.0.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i61, align 8, !alias.scope !448
  %i.fq = icmp eq ptr %i.bp, inttoptr (i64 -1 to ptr)
  br i1 %i.fq, label %bb.bk, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fr = atomicrmw add ptr %i.bq, i64 -1 release, align 8, !noalias !447
  %i.fs = icmp eq i64 %i.fr, 1
  br i1 %i.fs, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bp, i64 noundef 64, i64 noundef 8) #45, !noalias !447
  br label %bb.bk

bb.bh:                                            ; preds = %bb.bd, %bb.ba
  %i.ft = landingpad { ptr, i32 }
          cleanup
  store atomic i64 1, ptr %i.bp release, align 8, !noalias !505
end_hunk_0
