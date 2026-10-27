Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9838
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_RINvMs3_NtNtCs7tN9tvpkfrg_12typst_layout4flow7collectINtB6_10CachedCellINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout8fragment8FragmentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1P_4diag16SourceDiagnosticEEE11get_or_initNCNvMs0_B6_NtB6_10MultiChild11layout_full0NtNtB1N_7regions7RegionsEBa_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1589)
  %i.aua = load i64, ptr %i.dg, align 8, !range !70, !alias.scope !1589, !noundef !41
  %i.aub = icmp eq i64 %i.aua, -1
  %i.auc = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.val.i = load ptr, ptr %i.auc, align 8, !alias.scope !1589, !nonnull !41, !noundef !41 ; 6 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %.val1.i = load i64, ptr %i.aud, align 8, !alias.scope !1589 ; 9 uses
  br i1 %i.aub, label %bb.mm, label %bb.mp

bb.mm:                                            ; preds = %bb.ml
  %.not.i.i.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i, label %_RNvXs3_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout8fragment8FragmentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBQ_4diag16SourceDiagnosticEENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  %i.aue = getelementptr inbounds i8, ptr %.val.i, i64 -16
  %i.auf = atomicrmw add ptr %i.aue, i64 1 monotonic, align 8, !noalias !1590
  %i.aug = icmp slt i64 %i.auf, 0
  br i1 %i.aug, label %bb.mo, label %_RNvXs3_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout8fragment8FragmentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBQ_4diag16SourceDiagnosticEENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit, !prof !44

bb.mo:                                            ; preds = %bb.mn
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull %.val.i, i64 noundef %.val1.i) #57
          to label %.noexc unwind label %bb.mv

.noexc:                                           ; preds = %bb.mo
  unreachable

bb.mp:                                            ; preds = %bb.ml
  call void @llvm.experimental.noalias.scope.decl(metadata !1591)
  %i.auh = mul nuw nsw i64 %.val1.i, 48           ; 2 uses
  %i.aui = icmp eq i64 %.val1.i, 0
  br i1 %i.aui, label %_RNvXs3_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout8fragment8FragmentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBQ_4diag16SourceDiagnosticEENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %bb.mp
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !1592
  %i.auj = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.auh, i64 noundef range(i64 1, 17) 8) #56, !noalias !1592 ; 4 uses
  %i.auk = icmp eq ptr %i.auj, null
  br i1 %i.auk, label %bb.mq, label %.lr.ph.preheader.i.i.i.i

bb.mq:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.auh) #57
          to label %.noexc15 unwind label %bb.mv

.noexc15:                                         ; preds = %bb.mq
  unreachable

.lr.ph.preheader.i.i.i.i:                         ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  %i.aul = getelementptr inbounds nuw [48 x i8], ptr %.val.i, i64 %.val1.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.mt, %.lr.ph.preheader.i.i.i.i
  %.sroa.012.047.i.i.i.i = phi ptr [ %i.auy, %bb.mt ], [ %.val.i, %.lr.ph.preheader.i.i.i.i ] ; 7 uses
  %.sroa.7.046.i.i.i.i = phi i64 [ %i.aux, %bb.mt ], [ 0, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.sroa.10.045.i.i.i.i = phi i64 [ %i.aum, %bb.mt ], [ %.val1.i, %.lr.ph.preheader.i.i.i.i ]
  %i.aum = add nsw i64 %.sroa.10.045.i.i.i.i, -1  ; 2 uses
  %i.aun = icmp eq ptr %.sroa.012.047.i.i.i.i, %i.aul
  br i1 %i.aun, label %_RNvXs3_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout8fragment8FragmentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBQ_4diag16SourceDiagnosticEENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit, label %bb.mr

bb.mr:                                            ; preds = %.lr.ph.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1593)
  %i.auo = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i.i.i.i, i64 24
  %i.aup = load <2 x double>, ptr %i.auo, align 8, !alias.scope !1594, !noalias !1595
  %i.auq = load i64, ptr %.sroa.012.047.i.i.i.i, align 8, !range !49, !alias.scope !1594, !noalias !1595, !noundef !41 ; 2 uses
  %i.aur = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i.i.i.i, i64 8
  %i.aus = load double, ptr %i.aur, align 8, !alias.scope !1594, !noalias !1595
  %i.aut = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i.i.i.i, i64 16
  %i.auu = load ptr, ptr %i.aut, align 8, !alias.scope !1594, !noalias !1595, !nonnull !41, !noundef !41 ; 2 uses
  %i.auv = atomicrmw add ptr %i.auu, i64 1 monotonic, align 8, !noalias !1596
  %i.auw = icmp slt i64 %i.auv, 0
  br i1 %i.auw, label %bb.ms, label %bb.mt

bb.ms:                                            ; preds = %bb.mr
  call void @llvm.trap()
  unreachable

bb.mt:                                            ; preds = %bb.mr
  %i.aux = add nuw nsw i64 %.sroa.7.046.i.i.i.i, 1
  %i.auy = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i.i.i.i, i64 48
  %i.auz = trunc nuw i64 %i.auq to i1
  %.sroa.5.0.i.i.i.i.i = select i1 %i.auz, double %i.aus, double undef
  %i.ava = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i.i.i.i, i64 40
  %i.avb = load i8, ptr %i.ava, align 8, !range !54, !alias.scope !1594, !noalias !1595, !noundef !41
  %i.avc = getelementptr inbounds nuw [48 x i8], ptr %i.auj, i64 %.sroa.7.046.i.i.i.i ; 5 uses
  store i64 %i.auq, ptr %i.avc, align 8, !noalias !1597
  %.sroa.432.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.avc, i64 8
  store double %.sroa.5.0.i.i.i.i.i, ptr %.sroa.432.0..sroa_idx.i.i.i.i, align 8, !noalias !1597
  %.sroa.533.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.avc, i64 16
  store ptr %i.auu, ptr %.sroa.533.0..sroa_idx.i.i.i.i, align 8, !noalias !1597
  %.sroa.634.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.avc, i64 24
  store <2 x double> %i.aup, ptr %.sroa.634.0..sroa_idx.i.i.i.i, align 8, !noalias !1597
  %.sroa.836.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.avc, i64 40
  store i8 %i.avb, ptr %.sroa.836.0..sroa_idx.i.i.i.i, align 8, !noalias !1597
  %i.avd = icmp eq i64 %i.aum, 0
  br i1 %i.avd, label %_RNvXs3_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout8fragment8FragmentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBQ_4diag16SourceDiagnosticEENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph.i.i.i.i

bb.mu:                                            ; preds = %bb.my, %bb.mv
  %.pn = phi { ptr, i32 } [ %i.avi, %bb.my ], [ %i.ave, %bb.mv ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout8fragment8FragmentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB13_4diag16SourceDiagnosticEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dg) #54
          to label %bb.na unwind label %bb.mz

bb.mv:                                            ; preds = %bb.mq, %bb.mo
  %i.ave = landingpad { ptr, i32 }
          cleanup
  br label %bb.mu

_RNvXs3_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout8fragment8FragmentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBQ_4diag16SourceDiagnosticEENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.mt, %.lr.ph.i.i.i.i, %bb.mn, %bb.mm, %bb.mp
  %.sroa.5298.0 = phi ptr [ inttoptr (i64 16 to ptr), %bb.mm ], [ %.val.i, %bb.mn ], [ inttoptr (i64 8 to ptr), %bb.mp ], [ %i.auj, %.lr.ph.i.i.i.i ], [ %i.auj, %bb.mt ] ; 2 uses
  %.sroa.0297.0 = phi i64 [ -1, %bb.mm ], [ -1, %bb.mn ], [ 0, %bb.mp ], [ %.val1.i, %.lr.ph.i.i.i.i ], [ %.val1.i, %bb.mt ] ; 2 uses
  %i.avf = load i64, ptr %i.en, align 16, !range !60, !alias.scope !1598, !noundef !41
  switch i64 %i.avf, label %bb.mw [
    i64 -2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionToINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout8fragment8FragmentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1r_4diag16SourceDiagnosticEEEEECs7tN9tvpkfrg_12typst_layout.exit
    i64 -1, label %bb.mx
  ]

bb.mw:                                            ; preds = %_RNvXs3_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout8fragment8FragmentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBQ_4diag16SourceDiagnosticEENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.en)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionToINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout8fragment8FragmentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1r_4diag16SourceDiagnosticEEEEECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.my

bb.mx:                                            ; preds = %_RNvXs3_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout8fragment8FragmentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBQ_4diag16SourceDiagnosticEENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit
  %i.avg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i.i = load ptr, ptr %i.avg, align 8, !alias.scope !1599, !nonnull !41, !noundef !41
  %i.avh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val1.i.i.i = load i64, ptr %i.avh, align 16, !alias.scope !1599
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs7tN9tvpkfrg_12typst_layout(ptr nonnull %.val.i.i.i, i64 %.val1.i.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionToINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout8fragment8FragmentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1r_4diag16SourceDiagnosticEEEEECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.my

bb.my:                                            ; preds = %bb.mx, %bb.mw
  %i.avi = landingpad { ptr, i32 }
          cleanup
  store i128 %i.ej, ptr %i.em, align 16
  store i64 %.sroa.0297.0, ptr %i.en, align 16
  %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %.sroa.5298.0, ptr %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx, align 8
  %.sroa.53.sroa.6.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %.val1.i, ptr %.sroa.53.sroa.6.0..sroa.53.0..sroa_idx.sroa_idx, align 16
  br label %bb.mu

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionToINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout8fragment8FragmentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1r_4diag16SourceDiagnosticEEEEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RNvXs3_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout8fragment8FragmentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBQ_4diag16SourceDiagnosticEENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit, %bb.mw, %bb.mx
  store i128 %i.ej, ptr %i.em, align 16
  store i64 %.sroa.0297.0, ptr %i.en, align 16
  %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %.sroa.5298.0, ptr %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx4.sroa_idx, align 8
  %.sroa.53.sroa.6.0..sroa.53.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %.val1.i, ptr %.sroa.53.sroa.6.0..sroa.53.0..sroa_idx4.sroa_idx, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  br label %bb.mk

bb.mz:                                            ; preds = %bb.mu
  %i.avj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

bb.na:                                            ; preds = %bb.mu, %.body.i, %bb.mf, %bb.mj
  %.pn11 = phi { ptr, i32 } [ %.pn, %bb.mu ], [ %i.atz, %bb.mj ], [ %i.atu, %bb.mf ], [ %eh.lpad-body.i, %.body.i ]
  %i.avk = load i64, ptr %1, align 16, !noundef !41
  %i.avl = add i64 %i.avk, 1
  store i64 %i.avl, ptr %1, align 16
  resume { ptr, i32 } %.pn11
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1P_3vec13DrainProducerTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB3w_6styles10StyleChainERB4u_NtNtNtB3y_13introspection7locator7LocatorEEINtNtB1N_3map11MapConsumerINtNtNtB1N_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3y_4diag16SourceDiagnosticEENtNtB3y_6engine4SinkEENCINvMBa6_NtBa6_6Engine11parallelizeINtNtNtNtB6X_4iter8adapters10filter_map9FilterMapINtNtNtB6X_5slice4iter4IterNtNtB85_7collect4ItemENCNvB85_12layout_pages0EBb0_B3m_B6S_NCBcC_s_0E0EE0NCB1G_s_0INtB6b_13CollectResultB6R_EBdx_E0TBdx_Bdx_EEB87_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1632)
  %i.b = tail call noundef nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtBd_8Registry14in_worker_cold10LOCK_LATCH0s_023___RUST_STD_INTERNAL_VAL)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1633
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.c, ptr noundef nonnull align 8 dereferenceable(120) %2, i64 120, i1 false), !noalias !1634
  store ptr %i.b, ptr %i.a, align 8, !noalias !1633
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 3 uses
  store i64 0, ptr %i.d, align 8, !noalias !1633
  invoke void @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_3vec13DrainProducerTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB4I_6styles10StyleChainERB5G_NtNtNtB4K_13introspection7locator7LocatorEEINtNtB2Z_3map11MapConsumerINtNtNtB2Z_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4K_4diag16SourceDiagnosticEENtNtB4K_6engine4SinkEENCINvMBbi_NtBbi_6Engine11parallelizeINtNtNtNtB89_4iter8adapters10filter_map9FilterMapINtNtNtB89_5slice4iter4IterNtNtB9h_7collect4ItemENCNvB9h_12layout_pages0EBcc_B4y_B84_NCBdO_s_0E0EE0NCB2S_s_0INtB7n_13CollectResultB83_EBeJ_E0TBeJ_BeJ_EE00Bfg_ENtB5_3Job7executeB9j_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.d, !noalias !1633, !inline_history !1609

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !noalias !1633, !noundef !41
  invoke void @_RNvMs3_NtCsf1gSX8u3EQ2_10rayon_core5latchNtB5_9LockLatch14wait_and_reset(ptr noundef nonnull align 4 %i.e)
          to label %bb.c unwind label %bb.d, !noalias !1633, !inline_history !1609

bb.c:                                             ; preds = %bb.b
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %i.d, align 8, !noalias !1633
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.f = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !1633 ; 3 uses
  switch i64 %.sroa.3.0.copyload.i.i.i, label %default.unreachable1.i.i.i.i.i [
    i64 0, label %.noexc.i.i.i.i
    i64 1, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsf1gSX8u3EQ2_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_3vec13DrainProducerTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB4X_6styles10StyleChainERB5V_NtNtNtB4Z_13introspection7locator7LocatorEEINtNtB3e_3map11MapConsumerINtNtNtB3e_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4Z_4diag16SourceDiagnosticEENtNtB4Z_6engine4SinkEENCINvMBbx_NtBbx_6Engine11parallelizeINtNtNtNtB8o_4iter8adapters10filter_map9FilterMapINtNtNtB8o_5slice4iter4IterNtNtB9w_7collect4ItemENCNvB9w_12layout_pages0EBcr_B4N_B8j_NCBe3_s_0E0EE0NCB37_s_0INtB7C_13CollectResultB8i_EBeY_E0TBeY_BeY_EE0Bfv_EB9y_.exit
    i64 2, label %.noexc1.i.i.i.i
  ], !prof !75

default.unreachable1.i.i.i.i.i:                   ; preds = %bb.c
  unreachable

.noexc.i.i.i.i:                                   ; preds = %bb.c
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @401) #53, !noalias !1635, !inline_history !1609
  unreachable

.noexc1.i.i.i.i:                                  ; preds = %bb.c
  %i.g = extractelement <2 x ptr> %i.f, i64 0     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = extractelement <2 x ptr> %i.f, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  call void @_RNvNtCsf1gSX8u3EQ2_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h) #57, !noalias !1635, !inline_history !1609
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %i.c, align 8, !alias.scope !1636, !noalias !1633, !noundef !41
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCNCINvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB1x_8Registry14in_worker_coldNCINvNtB1z_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3i_3vec13DrainProducerTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB4Z_6styles10StyleChainERB5X_NtNtNtB51_13introspection7locator7LocatorEEINtNtB3g_3map11MapConsumerINtNtNtB3g_7collect8consumer15CollectConsumerTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB51_4diag16SourceDiagnosticEENtNtB51_6engine4SinkEENCINvMBbj_NtBbj_6Engine11parallelizeINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtB9i_7collect4ItemENCNvB9i_12layout_pages0EBcd_B4P_B8l_NCBdN_s_0E0EE0NCB39_s_0INtB7E_13CollectResultB8k_EBeI_E0TBeI_BeI_EE00EEEB9k_.exit.i6.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr inttoptr (i64 16 to ptr), ptr %i.l, align 8, !alias.scope !1637, !noalias !1633
  store i64 0, ptr %i.m, align 8, !alias.scope !1637, !noalias !1633
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr inttoptr (i64 16 to ptr), ptr %i.n, align 8, !alias.scope !1638, !noalias !1633
  store i64 0, ptr %i.o, align 8, !alias.scope !1638, !noalias !1633
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCNCINvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB1x_8Registry14in_worker_coldNCINvNtB1z_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3i_3vec13DrainProducerTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB4Z_6styles10StyleChainERB5X_NtNtNtB51_13introspection7locator7LocatorEEINtNtB3g_3map11MapConsumerINtNtNtB3g_7collect8consumer15CollectConsumerTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB51_4diag16SourceDiagnosticEENtNtB51_6engine4SinkEENCINvMBbj_NtBbj_6Engine11parallelizeINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtB9i_7collect4ItemENCNvB9i_12layout_pages0EBcd_B4P_B8l_NCBdN_s_0E0EE0NCB39_s_0INtB7E_13CollectResultB8k_EBeI_E0TBeI_BeI_EE00EEEB9k_.exit.i6.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCNCINvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB1x_8Registry14in_worker_coldNCINvNtB1z_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3i_3vec13DrainProducerTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB4Z_6styles10StyleChainERB5X_NtNtNtB51_13introspection7locator7LocatorEEINtNtB3g_3map11MapConsumerINtNtNtB3g_7collect8consumer15CollectConsumerTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB51_4diag16SourceDiagnosticEENtNtB51_6engine4SinkEENCINvMBbj_NtBbj_6Engine11parallelizeINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtB9i_7collect4ItemENCNvB9i_12layout_pages0EBcd_B4P_B8l_NCBdN_s_0E0EE0NCB39_s_0INtB7E_13CollectResultB8k_EBeI_E0TBeI_BeI_EE00EEEB9k_.exit.i6.i.i.i: ; preds = %bb.e, %bb.d
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultTINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4T_6engine4SinkEEB1l_EEEB3p_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.d)
          to label %.body.i.i unwind label %bb.f, !noalias !1633, !inline_history !1609

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCNCINvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB1x_8Registry14in_worker_coldNCINvNtB1z_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3i_3vec13DrainProducerTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB4Z_6styles10StyleChainERB5X_NtNtNtB51_13introspection7locator7LocatorEEINtNtB3g_3map11MapConsumerINtNtNtB3g_7collect8consumer15CollectConsumerTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB51_4diag16SourceDiagnosticEENtNtB51_6engine4SinkEENCINvMBbj_NtBbj_6Engine11parallelizeINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtB9i_7collect4ItemENCNvB9i_12layout_pages0EBcd_B4P_B8l_NCBdN_s_0E0EE0NCB39_s_0INtB7E_13CollectResultB8k_EBeI_E0TBeI_BeI_EE00EEEB9k_.exit.i6.i.i.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !1633, !inline_history !1609
  unreachable

.body.i.i:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCNCINvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB1x_8Registry14in_worker_coldNCINvNtB1z_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3i_3vec13DrainProducerTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB4Z_6styles10StyleChainERB5X_NtNtNtB51_13introspection7locator7LocatorEEINtNtB3g_3map11MapConsumerINtNtNtB3g_7collect8consumer15CollectConsumerTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB51_4diag16SourceDiagnosticEENtNtB51_6engine4SinkEENCINvMBbj_NtBbj_6Engine11parallelizeINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtB9i_7collect4ItemENCNvB9i_12layout_pages0EBcd_B4P_B8l_NCBdN_s_0E0EE0NCB39_s_0INtB7E_13CollectResultB8k_EBeI_E0TBeI_BeI_EE00EEEB9k_.exit.i6.i.i.i
  resume { ptr, i32 } %i.i

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsf1gSX8u3EQ2_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_3vec13DrainProducerTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB4X_6styles10StyleChainERB5V_NtNtNtB4Z_13introspection7locator7LocatorEEINtNtB3e_3map11MapConsumerINtNtNtB3e_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4Z_4diag16SourceDiagnosticEENtNtB4Z_6engine4SinkEENCINvMBbx_NtBbx_6Engine11parallelizeINtNtNtNtB8o_4iter8adapters10filter_map9FilterMapINtNtNtB8o_5slice4iter4IterNtNtB9w_7collect4ItemENCNvB9w_12layout_pages0EBcr_B4N_B8j_NCBe3_s_0E0EE0NCB37_s_0INtB7C_13CollectResultB8i_EBeY_E0TBeY_BeY_EE0Bfv_EB9y_.exit: ; preds = %bb.c
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %.sroa.7.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i, i64 32, i1 false), !noalias !1639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1633
  store <2 x ptr> %i.f, ptr %0, align 8, !alias.scope !1632
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1Q_3vec13DrainProducerTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB3x_6styles10StyleChainERB4v_NtNtNtB3z_13introspection7locator7LocatorEEINtNtB1O_3map11MapConsumerINtNtNtB1O_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3z_4diag16SourceDiagnosticEENtNtB3z_6engine4SinkEENCINvMBa7_NtBa7_6Engine11parallelizeINtNtNtNtB6Y_4iter8adapters10filter_map9FilterMapINtNtNtB6Y_5slice4iter4IterNtNtB86_7collect4ItemENCNvB86_12layout_pages0EBb1_B3n_B6T_NCBcD_s_0E0EE0NCB1H_s_0INtB6c_13CollectResultB6S_EBdy_E0TBdy_Bdy_EEB88_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noundef nonnull align 128 %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 8               ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.d = load i64, ptr %i.c, align 128, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 3 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(120) %3, i64 120, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 3 uses
  store i64 0, ptr %i.f, align 8
  invoke void @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_3vec13DrainProducerTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB4r_6styles10StyleChainERB5p_NtNtNtB4t_13introspection7locator7LocatorEEINtNtB2I_3map11MapConsumerINtNtNtB2I_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4t_4diag16SourceDiagnosticEENtNtB4t_6engine4SinkEENCINvMBb1_NtBb1_6Engine11parallelizeINtNtNtNtB7S_4iter8adapters10filter_map9FilterMapINtNtNtB7S_5slice4iter4IterNtNtB90_7collect4ItemENCNvB90_12layout_pages0EBbV_B4h_B7N_NCBdx_s_0E0EE0NCB2B_s_0INtB76_13CollectResultB7M_EBes_E0TBes_Bes_EE0BeZ_ENtB5_3Job7executeB92_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.h = icmp eq i64 %i.g, 3
  br i1 %i.h, label %bb.d, label %bb.c, !prof !43

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs8_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.3.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.i = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx12, align 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1668)
  switch i64 %.sroa.3.0.copyload, label %default.unreachable1.i.i [
    i64 0, label %.noexc.i
    i64 1, label %bb.e
    i64 2, label %.noexc1.i
  ], !prof !75

default.unreachable1.i.i:                         ; preds = %bb.d
  unreachable

.noexc.i:                                         ; preds = %bb.d
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @401) #53, !noalias !1669
  unreachable

.noexc1.i:                                        ; preds = %bb.d
  %i.j = extractelement <2 x ptr> %i.i, i64 0     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.k = extractelement <2 x ptr> %i.i, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  call void @_RNvNtCsf1gSX8u3EQ2_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k) #57, !noalias !1669
  unreachable

bb.e:                                             ; preds = %bb.d
  %.sroa.6.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <2 x ptr> %i.i, ptr %0, align 8, !alias.scope !1670
  %.sroa.5.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx14, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_3vec13DrainProducerTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB4U_6styles10StyleChainERB5S_NtNtNtB4W_13introspection7locator7LocatorEEINtNtB3b_3map11MapConsumerINtNtNtB3b_7collect8consumer15CollectConsumerTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4W_4diag16SourceDiagnosticEENtNtB4W_6engine4SinkEENCINvMBbe_NtBbe_6Engine11parallelizeINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtB9d_7collect4ItemENCNvB9d_12layout_pages0EBc8_B4K_B8g_NCBdI_s_0E0EE0NCB34_s_0INtB7z_13CollectResultB8f_EBeD_E0TBeD_BeD_EE0Bfa_EEB9f_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB4Y_6styles10StyleChainERB5W_NtNtNtB50_13introspection7locator7LocatorEEINtNtB3f_3map11MapConsumerINtNtNtB3f_7collect8consumer15CollectConsumerTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB50_4diag16SourceDiagnosticEENtNtB50_6engine4SinkEENCINvMBbi_NtBbi_6Engine11parallelizeINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtB9h_7collect4ItemENCNvB9h_12layout_pages0EBcc_B4O_B8k_NCBdM_s_0E0EE0NCB38_s_0INtB7D_13CollectResultB8j_EBeH_E0TBeH_BeH_EE0EEEB9j_.exit.i11
  resume { ptr, i32 } %i.l

bb.f:                                             ; preds = %bb.a, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %i.a, align 8, !alias.scope !1671, !noundef !41
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB4Y_6styles10StyleChainERB5W_NtNtNtB50_13introspection7locator7LocatorEEINtNtB3f_3map11MapConsumerINtNtNtB3f_7collect8consumer15CollectConsumerTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB50_4diag16SourceDiagnosticEENtNtB50_6engine4SinkEENCINvMBbi_NtBbi_6Engine11parallelizeINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtB9h_7collect4ItemENCNvB9h_12layout_pages0EBcc_B4O_B8k_NCBdM_s_0E0EE0NCB38_s_0INtB7D_13CollectResultB8j_EBeH_E0TBeH_BeH_EE0EEEB9j_.exit.i11, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr inttoptr (i64 16 to ptr), ptr %i.o, align 8, !alias.scope !1672
  store i64 0, ptr %i.p, align 8, !alias.scope !1672
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr inttoptr (i64 16 to ptr), ptr %i.q, align 8, !alias.scope !1673
  store i64 0, ptr %i.r, align 8, !alias.scope !1673
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB4Y_6styles10StyleChainERB5W_NtNtNtB50_13introspection7locator7LocatorEEINtNtB3f_3map11MapConsumerINtNtNtB3f_7collect8consumer15CollectConsumerTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB50_4diag16SourceDiagnosticEENtNtB50_6engine4SinkEENCINvMBbi_NtBbi_6Engine11parallelizeINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtB9h_7collect4ItemENCNvB9h_12layout_pages0EBcc_B4O_B8k_NCBdM_s_0E0EE0NCB38_s_0INtB7D_13CollectResultB8j_EBeH_E0TBeH_BeH_EE0EEEB9j_.exit.i11

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB4Y_6styles10StyleChainERB5W_NtNtNtB50_13introspection7locator7LocatorEEINtNtB3f_3map11MapConsumerINtNtNtB3f_7collect8consumer15CollectConsumerTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB50_4diag16SourceDiagnosticEENtNtB50_6engine4SinkEENCINvMBbi_NtBbi_6Engine11parallelizeINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtB9h_7collect4ItemENCNvB9h_12layout_pages0EBcc_B4O_B8k_NCBdM_s_0E0EE0NCB38_s_0INtB7D_13CollectResultB8j_EBeH_E0TBeH_BeH_EE0EEEB9j_.exit.i11: ; preds = %bb.g, %bb.f
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultTINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4T_6engine4SinkEEB1l_EEEB3p_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_3vec13DrainProducerTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB4U_6styles10StyleChainERB5S_NtNtNtB4W_13introspection7locator7LocatorEEINtNtB3b_3map11MapConsumerINtNtNtB3b_7collect8consumer15CollectConsumerTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4W_4diag16SourceDiagnosticEENtNtB4W_6engine4SinkEENCINvMBbe_NtBbe_6Engine11parallelizeINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtB9d_7collect4ItemENCNvB9d_12layout_pages0EBc8_B4K_B8g_NCBdI_s_0E0EE0NCB34_s_0INtB7z_13CollectResultB8f_EBeD_E0TBeD_BeD_EE0Bfa_EEB9f_.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB4Y_6styles10StyleChainERB5W_NtNtNtB50_13introspection7locator7LocatorEEINtNtB3f_3map11MapConsumerINtNtNtB3f_7collect8consumer15CollectConsumerTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB50_4diag16SourceDiagnosticEENtNtB50_6engine4SinkEENCINvMBbi_NtBbi_6Engine11parallelizeINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtB9h_7collect4ItemENCNvB9h_12layout_pages0EBcc_B4O_B8k_NCBdM_s_0E0EE0NCB38_s_0INtB7D_13CollectResultB8j_EBeH_E0TBeH_BeH_EE0EEEB9j_.exit.i11
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesjENtNtNtBX_13introspection7locator7LocatorEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1J_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1700)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1700, !noundef !41 ; 5 uses
  %i.f = add i64 %i.e, %1                         ; 3 uses
  %i.g = icmp ult i64 %i.f, %i.e
  br i1 %i.g, label %bb.c, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1700, !noundef !41 ; 6 uses
  %i.j = icmp ult i64 %i.i, 8
  %i.k = add i64 %i.i, 1
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %.sroa.03.0.i = select i1 %i.j, i64 %i.i, i64 %i.m ; 2 uses
  %i.n = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.f, %i.n
  br i1 %.not.i, label %bb.d, label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.o = call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !1701 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit

bb.d:                                             ; preds = %bb.b
  %i.r = add nuw i64 %.sroa.03.0.i, 1
  %..i = call noundef i64 @llvm.umax.i64(i64 %i.r, i64 %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1703
  call fastcc void @_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 16, 49) 48, i64 noundef %..i, i1 noundef zeroext %3) #59
  %i.s = load ptr, ptr %i.a, align 8, !noalias !1703, !noundef !41 ; 9 uses
  %i.t = icmp eq ptr %i.s, null
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !1703 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !1703 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1703
  br i1 %i.t, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = ptrtoint ptr %i.s to i64
  %i.z = load ptr, ptr %0, align 8, !alias.scope !1704, !nonnull !41, !noundef !41 ; 5 uses
  %i.aa = icmp eq i64 %i.e, 0
  br i1 %i.aa, label %._crit_edge27, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.e
  %.val316 = load <16 x i8>, ptr %i.z, align 16
  %i.ab = icmp sgt <16 x i8> %.val316, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.026 = phi ptr [ %.sroa.0.1.lcssa, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.z, %.preheader.preheader ] ; 2 uses
  %.sroa.5.025 = phi i64 [ %.sroa.5.1.lcssa, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.024 = phi i64 [ %i.bb, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.e, %.preheader.preheader ]
  %.sroa.13.023 = phi i16 [ %i.az, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.ac, %.preheader.preheader ] ; 2 uses
  %.not.i118 = icmp eq i16 %.sroa.13.023, 0
  br i1 %.not.i118, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.120 = phi ptr [ %i.ad, %.noexc2 ], [ %.sroa.0.026, %.preheader ] ; 2 uses
  %.sroa.5.119 = phi i64 [ %i.ag, %.noexc2 ], [ %.sroa.5.025, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.120) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.120, i64 16 ; 3 uses
  %.val17 = load <16 x i8>, ptr %i.ad, align 16
  %i.ae = icmp sgt <16 x i8> %.val17, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16          ; 2 uses
  %i.ag = add i64 %.sroa.5.119, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.af, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge27:                                    ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, %bb.e
  %i.ah = sub i64 %i.x, %i.e
  store i64 %i.y, ptr %0, align 8, !alias.scope !1705, !noalias !1706
  store i64 %i.v, ptr %i.h, align 8, !alias.scope !1707, !noalias !1706
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ah, ptr %i.ai, align 8, !alias.scope !1708, !noalias !1706
  %i.aj = icmp eq i64 %i.i, 0
  br i1 %i.aj, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge27
  %i.ak = mul i64 %i.i, 48                        ; 2 uses
  %i.al = add i64 %i.ak, 48
  %i.am = add i64 %i.ak, 63                       ; 2 uses
  %i.an = icmp uge i64 %i.am, %i.al
  call void @llvm.assume(i1 %i.an), !noalias !1706
  %i.ao = and i64 %i.am, -16                      ; 3 uses
  %i.ap = add i64 %i.i, 17
  %i.aq = add i64 %i.ap, %i.ao                    ; 4 uses
  %i.ar = icmp uge i64 %i.aq, %i.ao
  %i.as = icmp ult i64 %i.aq, 9223372036854775793
  call void @llvm.assume(i1 %i.ar), !noalias !1706
  call void @llvm.assume(i1 %i.as), !noalias !1706
  %i.at = icmp eq i64 %i.aq, 0
  br i1 %i.at, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit, label %bb.f

bb.f:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.au = sub nsw i64 0, %i.ao
  %i.av = getelementptr inbounds i8, ptr %i.z, i64 %i.au
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.av, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 16) #56, !noalias !1709
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.023, %.preheader ], [ %i.af, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.025, %.preheader ], [ %i.ag, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.026, %.preheader ], [ %i.ad, %.noexc2 ]
  %i.aw = add i16 %.sroa.13.1.lcssa, -1
  %i.ax = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  %i.az = and i16 %i.aw, %.sroa.13.1.lcssa
  %i.ba = add i64 %.sroa.5.1.lcssa, %i.ay         ; 2 uses
  %i.bb = add i64 %.sroa.9.024, -1                ; 2 uses
  %i.bc = sub nsw i64 0, %i.ba
  %i.bd = getelementptr inbounds [48 x i8], ptr %i.z, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -48
  %.val.i = load i64, ptr %i.be, align 8, !alias.scope !1710, !noalias !1711, !noundef !41
  %i.bf = getelementptr i8, ptr %i.bd, i64 -40
  %.val2.i = load i64, ptr %i.bf, align 8, !alias.scope !1710, !noalias !1711, !noundef !41
  %i.bg = mul i64 %.val.i, -1065810590584100411
  %i.bh = add i64 %i.bg, %.val2.i
  %i.bi = mul i64 %i.bh, -1065810590584100411     ; 2 uses
  %i.bj = call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 26) ; 2 uses
  %.sroa.0.07.i = and i64 %i.bj, %i.v             ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bk, align 1, !noalias !1712
  %i.bl = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bm = bitcast <16 x i1> %i.bl to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bm, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !55

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %._crit_edge ], [ %.sroa.0.0.i9, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bm, %._crit_edge ], [ %i.cd, %.lr.ph.i ]
  %i.bn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bo = zext nneg i16 %i.bn to i64
  %i.bp = add i64 %.sroa.0.0.lcssa.i, %i.bo
  %i.bq = and i64 %i.bp, %i.v                     ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !noundef !41
  %i.bt = icmp sgt i8 %i.bs, -1
  br i1 %i.bt, label %bb.g, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !44

bb.g:                                             ; preds = %._crit_edge.i
  %.val2.i.i8 = load <16 x i8>, ptr %i.s, align 16
  %i.bu = icmp slt <16 x i8> %.val2.i.i8, zeroinitializer
  %i.bv = bitcast <16 x i1> %i.bu to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bv, 0
end_hunk_0
begin_hunk_1_@_RINvXs6_NvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__NtB6_12___ComemoCallNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs7tN9tvpkfrg_12typst_layout:bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !15884, !noundef !41 ; 3 uses
  %i.bu = add i64 %i.bt, %i.br                    ; 3 uses
  %i.bv = tail call noundef i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 13)
  %i.bw = xor i64 %i.bv, %i.bu                    ; 3 uses
  %i.bx = tail call noundef i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 32)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !15884, !noundef !41
  %i.ca = add i64 %i.bz, %i.bq                    ; 2 uses
  %i.cb = tail call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 16)
  %i.cc = xor i64 %i.ca, %i.cb                    ; 3 uses
  %i.cd = add i64 %i.cc, %i.bx                    ; 2 uses
  %i.ce = tail call noundef i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cc, i64 21)
  %i.cf = xor i64 %i.ce, %i.cd
  store i64 %i.cf, ptr %i.bo, align 8, !alias.scope !15884
  %i.cg = add i64 %i.ca, %i.bw                    ; 3 uses
  %i.ch = tail call noundef i64 @llvm.fshl.i64(i64 %i.bw, i64 %i.bw, i64 17)
  %i.ci = xor i64 %i.cg, %i.ch
  store i64 %i.ci, ptr %i.bs, align 8, !alias.scope !15884
  %i.cj = tail call noundef i64 @llvm.fshl.i64(i64 %i.cg, i64 %i.cg, i64 32)
  store i64 %i.cj, ptr %i.by, align 8, !alias.scope !15884
  %i.ck = xor i64 %i.cd, %i.bm
  store i64 %i.ck, ptr %1, align 8, !alias.scope !15883
  %.not.i.i.i12.i = icmp eq i64 %i.bd, 0
  %i.cl = sub nuw nsw i64 64, %i.bj
  %i.cm = lshr i64 %.val11.i, %i.cl
  %.sroa.0.0.i.i.i13.i = select i1 %.not.i.i.i12.i, i64 0, i64 %i.cm
  store i64 %.sroa.0.0.i.i.i13.i, ptr %i.y, align 8, !alias.scope !15883
  br label %_RINvXsa_NvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__NtB6_15___ComemoVariantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs7tN9tvpkfrg_12typst_layout.exit

bb.j:                                             ; preds = %bb.h
  %i.cn = add i64 %i.bd, 8
  store i64 %i.cn, ptr %i.t, align 8, !alias.scope !15883
  br label %_RINvXsa_NvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__NtB6_15___ComemoVariantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs7tN9tvpkfrg_12typst_layout.exit

bb.k:                                             ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs7tN9tvpkfrg_12typst_layout.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call fastcc void @_RINvXsc_NtNtCsdaEETE4DqmE_13typst_library11foundations8selectorNtB6_8SelectorNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) #59
  %.val9.i = load i128, ptr %i.co, align 16, !alias.scope !15879, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !15885
  store i128 %.val9.i, ptr %i.k, align 16, !noalias !15885
  call fastcc void @_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 16) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !15885
  br label %_RINvXsa_NvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__NtB6_15___ComemoVariantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs7tN9tvpkfrg_12typst_layout.exit

bb.l:                                             ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs7tN9tvpkfrg_12typst_layout.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val10.i = load i64, ptr %i.cp, align 8, !range !53, !alias.scope !15879, !noundef !41 ; 2 uses
  %i.cq = add i64 %i.r, 16
  store i64 %i.cq, ptr %i.q, align 8, !alias.scope !15886
  %i.cr = shl i64 %i.bd, 3                        ; 2 uses
  %i.cs = and i64 %i.cr, 56
  %i.ct = shl i64 %.val10.i, %i.cs
  %i.cu = or i64 %i.ct, %i.bc                     ; 3 uses
  store i64 %i.cu, ptr %i.y, align 8, !alias.scope !15886
  %i.cv = icmp ugt i64 %i.bd, 8
  br i1 %i.cv, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !15886, !noundef !41
  %i.cy = xor i64 %i.cx, %i.cu                    ; 3 uses
  %i.cz = load i64, ptr %1, align 8, !alias.scope !15887, !noundef !41
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !15887, !noundef !41 ; 3 uses
  %i.dc = add i64 %i.db, %i.cz                    ; 3 uses
  %i.dd = tail call noundef i64 @llvm.fshl.i64(i64 %i.db, i64 %i.db, i64 13)
  %i.de = xor i64 %i.dd, %i.dc                    ; 3 uses
  %i.df = tail call noundef i64 @llvm.fshl.i64(i64 %i.dc, i64 %i.dc, i64 32)
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !15887, !noundef !41
  %i.di = add i64 %i.dh, %i.cy                    ; 2 uses
  %i.dj = tail call noundef i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.cy, i64 16)
  %i.dk = xor i64 %i.di, %i.dj                    ; 3 uses
  %i.dl = add i64 %i.dk, %i.df                    ; 2 uses
  %i.dm = tail call noundef i64 @llvm.fshl.i64(i64 %i.dk, i64 %i.dk, i64 21)
  %i.dn = xor i64 %i.dm, %i.dl
  store i64 %i.dn, ptr %i.cw, align 8, !alias.scope !15887
  %i.do = add i64 %i.di, %i.de                    ; 3 uses
  %i.dp = tail call noundef i64 @llvm.fshl.i64(i64 %i.de, i64 %i.de, i64 17)
  %i.dq = xor i64 %i.do, %i.dp
  store i64 %i.dq, ptr %i.da, align 8, !alias.scope !15887
  %i.dr = tail call noundef i64 @llvm.fshl.i64(i64 %i.do, i64 %i.do, i64 32)
  store i64 %i.dr, ptr %i.dg, align 8, !alias.scope !15887
  %i.ds = xor i64 %i.dl, %i.cu
  store i64 %i.ds, ptr %1, align 8, !alias.scope !15886
  %.not.i.i.i14.i = icmp eq i64 %i.bd, 0
  %i.dt = sub nuw nsw i64 64, %i.cr
  %i.du = lshr i64 %.val10.i, %i.dt
  %.sroa.0.0.i.i.i15.i = select i1 %.not.i.i.i14.i, i64 0, i64 %i.du
  store i64 %.sroa.0.0.i.i.i15.i, ptr %i.y, align 8, !alias.scope !15886
  br label %_RINvXsa_NvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__NtB6_15___ComemoVariantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs7tN9tvpkfrg_12typst_layout.exit

bb.n:                                             ; preds = %bb.l
  %i.dv = add i64 %i.bd, 8
  store i64 %i.dv, ptr %i.t, align 8, !alias.scope !15886
  br label %_RINvXsa_NvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__NtB6_15___ComemoVariantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs7tN9tvpkfrg_12typst_layout.exit

bb.o:                                             ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs7tN9tvpkfrg_12typst_layout.exit.i
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dy = load i128, ptr %i.dx, align 16, !alias.scope !15879, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !15888
  store i128 %i.dy, ptr %i.j, align 16, !noalias !15888
  call fastcc void @_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 16) #59, !noalias !15879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15888
  %.val8.i = load i128, ptr %i.dw, align 16, !alias.scope !15879, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !15889
  store i128 %.val8.i, ptr %i.i, align 16, !noalias !15889
  call fastcc void @_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 16) #59, !noalias !15879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !15889
  br label %_RINvXsa_NvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__NtB6_15___ComemoVariantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs7tN9tvpkfrg_12typst_layout.exit

bb.p:                                             ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs7tN9tvpkfrg_12typst_layout.exit.i
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val7.i = load i128, ptr %i.dz, align 16, !alias.scope !15879, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !15890
  store i128 %.val7.i, ptr %i.h, align 16, !noalias !15890
  call fastcc void @_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 16) #59, !noalias !15879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15890
  br label %_RINvXsa_NvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__NtB6_15___ComemoVariantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs7tN9tvpkfrg_12typst_layout.exit

bb.q:                                             ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs7tN9tvpkfrg_12typst_layout.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6.i = load i128, ptr %i.ea, align 16, !alias.scope !15879, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !15891
  store i128 %.val6.i, ptr %i.g, align 16, !noalias !15891
  call fastcc void @_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 16) #59, !noalias !15879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !15891
  br label %_RINvXsa_NvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__NtB6_15___ComemoVariantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs7tN9tvpkfrg_12typst_layout.exit

bb.r:                                             ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs7tN9tvpkfrg_12typst_layout.exit.i
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5.i = load i128, ptr %i.eb, align 16, !alias.scope !15879, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !15892
  store i128 %.val5.i, ptr %i.f, align 16, !noalias !15892
  call fastcc void @_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 16) #59, !noalias !15879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15892
  br label %_RINvXsa_NvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__NtB6_15___ComemoVariantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs7tN9tvpkfrg_12typst_layout.exit

bb.s:                                             ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs7tN9tvpkfrg_12typst_layout.exit.i
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4.i = load i128, ptr %i.ec, align 16, !alias.scope !15879, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15893
  store i128 %.val4.i, ptr %i.e, align 16, !noalias !15893
  call fastcc void @_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 16) #59, !noalias !15879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15893
  br label %_RINvXsa_NvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__NtB6_15___ComemoVariantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs7tN9tvpkfrg_12typst_layout.exit

bb.t:                                             ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs7tN9tvpkfrg_12typst_layout.exit.i
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load i128, ptr %i.ed, align 16, !alias.scope !15879, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15894
  store i128 %.val3.i, ptr %i.d, align 16, !noalias !15894
  call fastcc void @_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 16) #59, !noalias !15879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15894
  br label %_RINvXsa_NvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__NtB6_15___ComemoVariantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs7tN9tvpkfrg_12typst_layout.exit

bb.u:                                             ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs7tN9tvpkfrg_12typst_layout.exit.i
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i128, ptr %i.ee, align 16, !alias.scope !15879, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15895
  store i128 %.val2.i, ptr %i.c, align 16, !noalias !15895
  call fastcc void @_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 16) #59, !noalias !15879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15895
  br label %_RINvXsa_NvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__NtB6_15___ComemoVariantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs7tN9tvpkfrg_12typst_layout.exit

bb.v:                                             ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs7tN9tvpkfrg_12typst_layout.exit.i
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i128, ptr %i.ef, align 16, !alias.scope !15879, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15896
  store i128 %.val1.i, ptr %i.b, align 16, !noalias !15896
  call fastcc void @_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 16) #59, !noalias !15879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15896
  br label %_RINvXsa_NvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__NtB6_15___ComemoVariantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs7tN9tvpkfrg_12typst_layout.exit

bb.w:                                             ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs7tN9tvpkfrg_12typst_layout.exit.i
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load i128, ptr %i.eg, align 16, !alias.scope !15879, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15897
  store i128 %.val.i, ptr %i.a, align 16, !noalias !15897
  call fastcc void @_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 16) #59, !noalias !15879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15897
  br label %_RINvXsa_NvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__NtB6_15___ComemoVariantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs7tN9tvpkfrg_12typst_layout.exit

_RINvXsa_NvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__NtB6_15___ComemoVariantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs7tN9tvpkfrg_12typst_layout.exit.i, %bb.e, %bb.f, %bb.g, %bb.i, %bb.j, %bb.k, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs8_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB6_5PaintNtNtCs3oUPovFnLWP_4core4hash4Hash4hashQDNtB16_6HasherEL_ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 7 uses
  %i.b = alloca [16 x i8], align 4                ; 7 uses
  %i.c = alloca [16 x i8], align 4                ; 7 uses
  %i.d = load i32, ptr %0, align 8, !range !110, !noundef !41 ; 2 uses
  %i.e = icmp samesign ugt i32 %i.d, 1
  %i.f = zext nneg i32 %i.d to i64
  %i.g = add nsw i64 %i.f, -1
  %i.h = select i1 %i.e, i64 %i.g, i64 0          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !41, !nonnull !41 ; 23 uses
  tail call void %i.j(ptr noundef nonnull %.0.val, i64 noundef range(i64 9223372036854775806, 4294967297) %i.h) #59, !inline_history !14
  switch i64 %i.h, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.w
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvXsy_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_5ColorNtNtCs3oUPovFnLWP_4core4hash4Hash4hashQDNtB16_6HasherEL_ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr nonnull %.0.val, ptr nonnull %.8.val) #59
  br label %_RINvXs6_NtNtCsdaEETE4DqmE_13typst_library9visualize6tilingNtB6_6TilingNtNtCs3oUPovFnLWP_4core4hash4Hash4hashQDNtB18_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load i64, ptr %i.k, align 8, !range !52, !noundef !41 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load ptr, ptr %i.l, align 8            ; 33 uses
  tail call void %i.j(ptr noundef nonnull %.0.val, i64 noundef range(i64 9223372036854775806, 4294967297) %.val4) #59, !inline_history !15898
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  %i.m = getelementptr inbounds nuw i8, ptr %.val5, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val5, i64 72 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val5, i64 80 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.8.val, i64 136 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 64 ; 6 uses
  switch i64 %.val4, label %default.unreachable [
    i64 0, label %bb.e
    i64 1, label %bb.k
    i64 2, label %bb.q
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15976)
  %i.q = load ptr, ptr %i.n, align 8, !alias.scope !15976, !nonnull !41, !noundef !41 ; 2 uses
  %i.r = load i64, ptr %i.o, align 8, !alias.scope !15976, !noundef !41 ; 3 uses
  %i.s = load ptr, ptr %i.p, align 8, !invariant.load !41, !noalias !15976, !nonnull !41
  tail call void %i.s(ptr noundef nonnull %.0.val, i64 noundef %i.r) #59, !noalias !15976, !inline_history !15901
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15977)
  %.idx.i.i.i = shl nuw nsw i64 %i.r, 5
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i.i.i
  %i.u = icmp eq i64 %i.r, 0
  br i1 %i.u, label %._RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceQDNtB1u_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i.i, label %.lr.ph.i.i.i

._RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceQDNtB1u_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i.i: ; preds = %bb.e
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !invariant.load !41, !noalias !15976
  br label %_RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceQDNtB1u_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.sroa.0.01.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.q, %bb.e ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15978)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i, i64 24
  tail call fastcc void @_RINvXsy_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_5ColorNtNtCs3oUPovFnLWP_4core4hash4Hash4hashQDNtB16_6HasherEL_ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.01.i.i.i, ptr nonnull %.0.val, ptr nonnull readonly %.8.val) #59, !noalias !15976
  %.val2.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !15979, !noalias !15976, !noundef !41
  %i.x = load ptr, ptr %.phi.trans.insert.i.i, align 8, !invariant.load !41, !noalias !15980, !nonnull !41 ; 2 uses
  tail call void %i.x(ptr noundef nonnull %.0.val, i64 noundef %.val2.i.i.i.i) #59, !noalias !15980, !inline_history !15906
  %i.y = icmp eq ptr %i.v, %i.t
  br i1 %i.y, label %_RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceQDNtB1u_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit.i.i, label %.lr.ph.i.i.i

_RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceQDNtB1u_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %.lr.ph.i.i.i, %._RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceQDNtB1u_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i.i
  %i.z = phi ptr [ %.pre.i.i, %._RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceQDNtB1u_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i.i ], [ %i.x, %.lr.ph.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.val5, i64 88
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !15976, !noundef !41
  tail call void %i.z(ptr noundef nonnull %.0.val, i64 noundef %i.ab) #59, !noalias !15976, !inline_history !15907
  %i.ac = load i64, ptr %i.m, align 8, !range !58, !alias.scope !15976, !noundef !41 ; 4 uses
  %i.ad = icmp ne i64 %i.ac, -1                   ; 2 uses
  %i.ae = zext i1 %i.ad to i64
  tail call void %i.j(ptr noundef nonnull %.0.val, i64 noundef range(i64 9223372036854775806, 4294967297) %i.ae) #59, !noalias !15976, !inline_history !15908
  br i1 %i.ad, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceQDNtB1u_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15981)
  %i.af = icmp ne i64 %i.ac, 2                    ; 2 uses
  %i.ag = zext i1 %i.af to i64
  tail call void %i.j(ptr noundef nonnull %.0.val, i64 noundef range(i64 9223372036854775806, 4294967297) %i.ag) #59, !noalias !15982, !inline_history !15911
  br i1 %i.af, label %bb.g, label %_RINvXsV_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_12SpotColorantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashQDNtB1e_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void %i.j(ptr noundef nonnull %.0.val, i64 noundef range(i64 9223372036854775806, 4294967297) %i.ac) #59, !noalias !15982, !inline_history !15911
  %i.ah = trunc nuw i64 %i.ac to i1
  br i1 %i.ah, label %bb.h, label %_RINvXsV_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_12SpotColorantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashQDNtB1e_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.val5, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val5, i64 39
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !15983, !noundef !41 ; 2 uses
  %.not.i.i.i.i = icmp sgt i8 %i.ak, -1           ; 2 uses
  %i.al = and i8 %i.ak, 127
  %i.am = zext nneg i8 %i.al to i64
  %i.an = load ptr, ptr %i.ai, align 8, !alias.scope !15983, !nonnull !41
  %i.ao = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !15983
  %.sroa.3.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 %i.ap, i64 %i.am
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.an, ptr %i.ai
  %i.aq = getelementptr inbounds nuw i8, ptr %.8.val, i64 144
  %i.ar = load ptr, ptr %i.aq, align 8, !invariant.load !41, !noalias !15984, !nonnull !41
  tail call void %i.ar(ptr noundef nonnull %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i, i64 noundef %.sroa.3.0.i.i.i.i) #59, !inline_history !15916
  br label %_RINvXsV_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_12SpotColorantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashQDNtB1e_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit.i.i

_RINvXsV_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_12SpotColorantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashQDNtB1e_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %.val5, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15985)
  %i.at = load i32, ptr %i.as, align 8, !range !132, !alias.scope !15986, !noundef !41
  %i.au = zext nneg i32 %i.at to i64
  tail call void %i.j(ptr noundef nonnull %.0.val, i64 noundef range(i64 9223372036854775806, 4294967297) %i.au) #59, !noalias !15985, !inline_history !15919
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15986
  call void @_RNvMs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12ProcessColor7to_vec4(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.as)
  %i.av = load i32, ptr %i.c, align 4, !noalias !15986, !noundef !41
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !noalias !15986, !noundef !41
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.az = load i32, ptr %i.ay, align 4, !noalias !15986, !noundef !41
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !noalias !15986, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15986
  %i.bc = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !invariant.load !41, !noalias !15986, !nonnull !41 ; 4 uses
  tail call void %i.bd(ptr noundef nonnull %.0.val, i32 noundef %i.av) #59, !noalias !15985, !inline_history !15920
  tail call void %i.bd(ptr noundef nonnull %.0.val, i32 noundef %i.ax) #59, !noalias !15985, !inline_history !15920
  tail call void %i.bd(ptr noundef nonnull %.0.val, i32 noundef %i.az) #59, !noalias !15985, !inline_history !15920
  tail call void %i.bd(ptr noundef nonnull %.0.val, i32 noundef %i.bb) #59, !noalias !15985, !inline_history !15920
  br label %bb.j

bb.i:                                             ; preds = %_RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceQDNtB1u_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.val5, i64 24
  %i.bf = load i8, ptr %i.be, align 8, !range !127, !alias.scope !15976, !noundef !41
  %i.bg = zext nneg i8 %i.bf to i64
  tail call void %i.j(ptr noundef nonnull %.0.val, i64 noundef range(i64 9223372036854775806, 4294967297) %i.bg) #59, !noalias !15976, !inline_history !15908
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RINvXsV_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_12SpotColorantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashQDNtB1e_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.val5, i64 97
  %i.bi = load i8, ptr %i.bh, align 1, !range !48, !alias.scope !15976, !noundef !41 ; 2 uses
  %i.bj = icmp ne i8 %i.bi, 2                     ; 2 uses
  %i.bk = zext i1 %i.bj to i64
  tail call void %i.j(ptr noundef nonnull %.0.val, i64 noundef range(i64 9223372036854775806, 4294967297) %i.bk) #59, !inline_history !15908
  br i1 %i.bj, label %_RINvXsj_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB6_14LinearGradientNtNtCs3oUPovFnLWP_4core4hash4Hash4hashQDNtB1j_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit.sink.split.i, label %_RINvXsb_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB6_8GradientNtNtCs3oUPovFnLWP_4core4hash4Hash4hashQDNtB1c_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit

bb.k:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15987)
  %i.bl = load ptr, ptr %i.n, align 8, !alias.scope !15987, !nonnull !41, !noundef !41 ; 2 uses
  %i.bm = load i64, ptr %i.o, align 8, !alias.scope !15987, !noundef !41 ; 3 uses
  %i.bn = load ptr, ptr %i.p, align 8, !invariant.load !41, !noalias !15987, !nonnull !41
  tail call void %i.bn(ptr noundef nonnull %.0.val, i64 noundef %i.bm) #59, !noalias !15987, !inline_history !15923
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15988)
  %.idx.i.i8.i = shl nuw nsw i64 %i.bm, 5
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx.i.i8.i
  %i.bp = icmp eq i64 %i.bm, 0
  br i1 %i.bp, label %._RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceQDNtB1u_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i18.i, label %.lr.ph.i.i10.i

._RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceQDNtB1u_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i18.i: ; preds = %bb.k
  %.pre.i19.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !invariant.load !41, !noalias !15987
  br label %_RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceQDNtB1u_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit.i13.i

.lr.ph.i.i10.i:                                   ; preds = %bb.k, %.lr.ph.i.i10.i
  %.sroa.0.01.i.i11.i = phi ptr [ %i.bq, %.lr.ph.i.i10.i ], [ %i.bl, %bb.k ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i11.i, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15989)
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i11.i, i64 24
  tail call fastcc void @_RINvXsy_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_5ColorNtNtCs3oUPovFnLWP_4core4hash4Hash4hashQDNtB16_6HasherEL_ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.01.i.i11.i, ptr nonnull %.0.val, ptr nonnull readonly %.8.val) #59, !noalias !15987
  %.val2.i.i.i12.i = load i64, ptr %i.br, align 8, !alias.scope !15990, !noalias !15987, !noundef !41
  %i.bs = load ptr, ptr %.phi.trans.insert.i.i, align 8, !invariant.load !41, !noalias !15991, !nonnull !41 ; 2 uses
  tail call void %i.bs(ptr noundef nonnull %.0.val, i64 noundef %.val2.i.i.i12.i) #59, !noalias !15991, !inline_history !15928
  %i.bt = icmp eq ptr %i.bq, %i.bo
  br i1 %i.bt, label %_RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceQDNtB1u_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit.i13.i, label %.lr.ph.i.i10.i

_RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceQDNtB1u_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit.i13.i: ; preds = %.lr.ph.i.i10.i, %._RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceQDNtB1u_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i18.i
  %i.bu = phi ptr [ %.pre.i19.i, %._RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceQDNtB1u_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i18.i ], [ %i.bs, %.lr.ph.i.i10.i ] ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.val5, i64 88
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !15987, !noundef !41
  tail call void %i.bu(ptr noundef nonnull %.0.val, i64 noundef %i.bw) #59, !noalias !15987, !inline_history !15929
  %i.bx = getelementptr inbounds nuw i8, ptr %.val5, i64 96
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !15987, !noundef !41
  tail call void %i.bu(ptr noundef nonnull %.0.val, i64 noundef %i.by) #59, !noalias !15987, !inline_history !15929
  %i.bz = getelementptr inbounds nuw i8, ptr %.val5, i64 104
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !15987, !noundef !41
  tail call void %i.bu(ptr noundef nonnull %.0.val, i64 noundef %i.ca) #59, !noalias !15987, !inline_history !15929
  %i.cb = getelementptr inbounds nuw i8, ptr %.val5, i64 112
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !15987, !noundef !41
  tail call void %i.bu(ptr noundef nonnull %.0.val, i64 noundef %i.cc) #59, !noalias !15987, !inline_history !15929
  %i.cd = getelementptr inbounds nuw i8, ptr %.val5, i64 120
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !15987, !noundef !41
  tail call void %i.bu(ptr noundef nonnull %.0.val, i64 noundef %i.ce) #59, !noalias !15987, !inline_history !15929
  %i.cf = getelementptr inbounds nuw i8, ptr %.val5, i64 128
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !15987, !noundef !41
  tail call void %i.bu(ptr noundef nonnull %.0.val, i64 noundef %i.cg) #59, !noalias !15987, !inline_history !15929
  %i.ch = load i64, ptr %i.m, align 8, !range !58, !alias.scope !15987, !noundef !41 ; 4 uses
  %i.ci = icmp ne i64 %i.ch, -1                   ; 2 uses
  %i.cj = zext i1 %i.ci to i64
  tail call void %i.j(ptr noundef nonnull %.0.val, i64 noundef range(i64 9223372036854775806, 4294967297) %i.cj) #59, !noalias !15987, !inline_history !15930
  br i1 %i.ci, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceQDNtB1u_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit.i13.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15992)
end_hunk_1
begin_hunk_2_@_RINvXsl_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB6_9FrameItemNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs7tN9tvpkfrg_12typst_layout:bb.a
  %i.qy = load i128, ptr %i.qx, align 16, !alias.scope !17568, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !17575
  store i128 %i.qy, ptr %i.ar, align 16, !noalias !17575
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef 16), !noalias !17568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !17575
  br label %_RINvXst_NtNtCsdaEETE4DqmE_13typst_library5model4linkNtB6_11DestinationNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs7tN9tvpkfrg_12typst_layout.exit

_RINvXst_NtNtCsdaEETE4DqmE_13typst_library5model4linkNtB6_11DestinationNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.au, %bb.av, %bb.aw
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ra = load i64, ptr %i.qz, align 8, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !17576
  store i64 %i.ra, ptr %i.aq, align 8, !noalias !17576
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aq, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !17576
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rc = load i64, ptr %i.rb, align 16, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !17577
  store i64 %i.rc, ptr %i.ap, align 8, !noalias !17577
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !17577
  br label %_RINvXsn_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB6_9GroupItemNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs7tN9tvpkfrg_12typst_layout.exit

bb.ax:                                            ; preds = %bb.a
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17578)
  %i.re = load i8, ptr %i.rd, align 16, !range !54, !alias.scope !17578, !noundef !41 ; 2 uses
  %i.rf = zext nneg i8 %i.re to i64
  tail call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.rf), !noalias !17578
  %i.rg = trunc nuw i8 %i.re to i1
  br i1 %i.rg, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ri = load i128, ptr %i.rh, align 16, !alias.scope !17578, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !17579
  store i128 %i.ri, ptr %i.ao, align 16, !noalias !17579
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef 16), !noalias !17578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !17579
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.rk = load i128, ptr %i.rj, align 16, !alias.scope !17578, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !17580
  store i128 %i.rk, ptr %i.an, align 16, !noalias !17580
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef 16), !noalias !17578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !17580
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.rm = load i8, ptr %i.rl, align 1, !range !54, !alias.scope !17578, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !17581
  store i8 %i.rm, ptr %i.am, align 1, !noalias !17581
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef 1), !noalias !17578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !17581
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ro = load i8, ptr %i.rn, align 2, !range !54, !alias.scope !17578, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !17582
  store i8 %i.ro, ptr %i.al, align 1, !noalias !17582
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef 1), !noalias !17578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !17582
  br label %_RINvXsn_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB6_9GroupItemNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs7tN9tvpkfrg_12typst_layout.exit

bb.az:                                            ; preds = %bb.ax
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvXs4_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB6_10RawContentNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.rp, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.rr = load i8, ptr %i.rq, align 1, !range !54, !alias.scope !17578, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !17583
  store i8 %i.rr, ptr %i.ak, align 1, !noalias !17583
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !17583
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.rt = load i8, ptr %i.rs, align 2, !range !54, !alias.scope !17578, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !17584
  store i8 %i.rt, ptr %i.aj, align 1, !noalias !17584
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !17584
  br label %_RINvXsn_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB6_9GroupItemNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs7tN9tvpkfrg_12typst_layout.exit

_RINvXsn_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB6_9GroupItemNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %.lr.ph.i, %bb.az, %bb.ay, %_RINvXs6_NtNtCsdaEETE4DqmE_13typst_library4text4itemNtB6_8TextItemNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs7tN9tvpkfrg_12typst_layout.exit, %bb.j, %bb.i, %_RINvXst_NtNtCsdaEETE4DqmE_13typst_library5model4linkNtB6_11DestinationNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs7tN9tvpkfrg_12typst_layout.exit, %_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library9visualize5image10ImageInnerE20load_or_compute_hash0ECs7tN9tvpkfrg_12typst_layout.exit, %_RINvXsh_NtNtCsdaEETE4DqmE_13typst_library9visualize5shapeNtB6_5ShapeNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs7tN9tvpkfrg_12typst_layout.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvXsl_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB6_6LengthNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs7tN9tvpkfrg_12typst_layout(i64 %.0.val, i64 %.8.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !17597, !noundef !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !17597, !noundef !41 ; 6 uses
  %i.e = shl i64 %i.d, 3                          ; 3 uses
  %i.f = and i64 %i.e, 56                         ; 2 uses
  %i.g = shl i64 %.0.val, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !17597, !noundef !41
  %i.j = or i64 %i.g, %i.i                        ; 3 uses
  %i.k = icmp ugt i64 %i.d, 8
  br i1 %i.k, label %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u64.exit, label %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u64.exit.thread

_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u64.exit.thread: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !17597, !noundef !41
  %i.n = xor i64 %i.m, %i.j                       ; 3 uses
  %i.o = load i64, ptr %0, align 8, !alias.scope !17598, !noundef !41
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !17598, !noundef !41 ; 3 uses
  %i.r = add i64 %i.q, %i.o                       ; 3 uses
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 13)
  %i.t = xor i64 %i.s, %i.r                       ; 3 uses
  %i.u = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 32)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !17598, !noundef !41
  %i.x = add i64 %i.w, %i.n                       ; 2 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 16)
  %i.z = xor i64 %i.x, %i.y                       ; 3 uses
  %i.aa = add i64 %i.z, %i.u                      ; 2 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 21)
  %i.ac = xor i64 %i.ab, %i.aa
  store i64 %i.ac, ptr %i.l, align 8, !alias.scope !17598
  %i.ad = add i64 %i.x, %i.t                      ; 3 uses
  %i.ae = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 17)
  %i.af = xor i64 %i.ad, %i.ae
  store i64 %i.af, ptr %i.p, align 8, !alias.scope !17598
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 32)
  store i64 %i.ag, ptr %i.v, align 8, !alias.scope !17598
  %i.ah = xor i64 %i.aa, %i.j
  store i64 %i.ah, ptr %0, align 8, !alias.scope !17597
  %.not.i.i = icmp eq i64 %i.d, 0
  %i.ai = sub nuw nsw i64 64, %i.e
  %i.aj = lshr i64 %.0.val, %i.ai
  %.sroa.0.0.i.i = select i1 %.not.i.i, i64 0, i64 %i.aj
  %i.ak = add i64 %i.b, 16
  store i64 %i.ak, ptr %i.a, align 8, !alias.scope !17599
  %i.al = shl i64 %.8.val, %i.f
  %i.am = or i64 %i.al, %.sroa.0.0.i.i
  br label %bb.b

_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u64.exit: ; preds = %bb.a
  %i.an = add i64 %i.d, 8                         ; 4 uses
  store i64 %i.an, ptr %i.c, align 8, !alias.scope !17597
  %.pre = shl i64 %i.an, 3                        ; 2 uses
  %.pre1 = and i64 %.pre, 56
  %i.ao = add i64 %i.b, 16
  store i64 %i.ao, ptr %i.a, align 8, !alias.scope !17599
  %i.ap = shl i64 %.8.val, %.pre1
  %i.aq = or i64 %i.ap, %i.j                      ; 2 uses
  store i64 %i.aq, ptr %i.h, align 8, !alias.scope !17599
  %i.ar = icmp ugt i64 %i.an, 8
  br i1 %i.ar, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u64.exit.thread, %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u64.exit
  %i.as = phi i64 [ %i.am, %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u64.exit.thread ], [ %i.aq, %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u64.exit ] ; 2 uses
  %i.at = phi i64 [ %i.d, %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u64.exit.thread ], [ %i.an, %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u64.exit ]
  %.pre-phi7 = phi i64 [ %i.e, %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u64.exit.thread ], [ %.pre, %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u64.exit ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !17599, !noundef !41
  %i.aw = xor i64 %i.av, %i.as                    ; 3 uses
  %i.ax = load i64, ptr %0, align 8, !alias.scope !17600, !noundef !41
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !17600, !noundef !41 ; 3 uses
  %i.ba = add i64 %i.az, %i.ax                    ; 3 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 13)
  %i.bc = xor i64 %i.bb, %i.ba                    ; 3 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 32)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !17600, !noundef !41
  %i.bg = add i64 %i.bf, %i.aw                    ; 2 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 16)
  %i.bi = xor i64 %i.bg, %i.bh                    ; 3 uses
  %i.bj = add i64 %i.bi, %i.bd                    ; 2 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 21)
  %i.bl = xor i64 %i.bk, %i.bj
  store i64 %i.bl, ptr %i.au, align 8, !alias.scope !17600
  %i.bm = add i64 %i.bg, %i.bc                    ; 3 uses
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 17)
  %i.bo = xor i64 %i.bm, %i.bn
  store i64 %i.bo, ptr %i.ay, align 8, !alias.scope !17600
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 32)
  store i64 %i.bp, ptr %i.be, align 8, !alias.scope !17600
  %i.bq = xor i64 %i.bj, %i.as
  store i64 %i.bq, ptr %0, align 8, !alias.scope !17599
  %.not.i.i1 = icmp eq i64 %i.at, 0
  %i.br = sub nuw nsw i64 64, %.pre-phi7
  %i.bs = lshr i64 %.8.val, %i.br
  %.sroa.0.0.i.i2 = select i1 %.not.i.i1, i64 0, i64 %i.bs
  store i64 %.sroa.0.0.i.i2, ptr %i.h, align 8, !alias.scope !17599
  br label %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u64.exit3

bb.c:                                             ; preds = %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u64.exit
  %i.bt = add i64 %i.d, 16
  store i64 %i.bt, ptr %i.c, align 8, !alias.scope !17599
  br label %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u64.exit3

_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u64.exit3: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXsm_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB6_6StrokeNtNtNtBa_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core4hash4Hash4hashQDNtB1y_6HasherEL_ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !range !71, !noundef !41
  %i.c = icmp ne i32 %i.b, -1                     ; 2 uses
  %i.d = zext i1 %i.c to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !41, !nonnull !41 ; 10 uses
  tail call void %i.f(ptr noundef nonnull %.0.val, i64 noundef range(i64 9223372036854775806, 4294967297) %i.d) #59, !inline_history !14
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvXs8_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB6_5PaintNtNtCs3oUPovFnLWP_4core4hash4Hash4hashQDNtB16_6HasherEL_ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr nonnull %.0.val, ptr nonnull %.8.val) #59
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load i64, ptr %0, align 8, !range !49, !noundef !41 ; 2 uses
  tail call void %i.f(ptr noundef nonnull %.0.val, i64 noundef range(i64 9223372036854775806, 4294967297) %i.g) #59, !inline_history !14
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val26 = load i64, ptr %i.i, align 8, !noundef !41
  %i.j = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !41, !nonnull !41
  tail call void %i.k(ptr noundef nonnull %.0.val, i64 noundef %.val26) #59, !inline_history !17601
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load i8, ptr %i.l, align 8, !range !91, !noundef !41 ; 2 uses
  %i.n = icmp ne i8 %i.m, -1                      ; 2 uses
  %i.o = zext i1 %i.n to i64
  tail call void %i.f(ptr noundef nonnull %.0.val, i64 noundef range(i64 9223372036854775806, 4294967297) %i.o) #59, !inline_history !14
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = zext nneg i8 %i.m to i64
  tail call void %i.f(ptr noundef nonnull %.0.val, i64 noundef range(i64 9223372036854775806, 4294967297) %i.p) #59, !inline_history !14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.r = load i8, ptr %i.q, align 1, !range !91, !noundef !41 ; 2 uses
  %i.s = icmp ne i8 %i.r, -1                      ; 2 uses
  %i.t = zext i1 %i.s to i64
  tail call void %i.f(ptr noundef nonnull %.0.val, i64 noundef range(i64 9223372036854775806, 4294967297) %i.t) #59, !inline_history !14
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = zext nneg i8 %i.r to i64
  tail call void %i.f(ptr noundef nonnull %.0.val, i64 noundef range(i64 9223372036854775806, 4294967297) %i.u) #59, !inline_history !14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load i64, ptr %i.v, align 8, !range !60, !noundef !41 ; 2 uses
  %i.x = icmp ne i64 %i.w, -2                     ; 2 uses
  %i.y = zext i1 %i.x to i64
  tail call void %i.f(ptr noundef nonnull %.0.val, i64 noundef range(i64 9223372036854775806, 4294967297) %i.y) #59, !inline_history !14
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.z = icmp ne i64 %i.w, -1                     ; 2 uses
  %i.aa = zext i1 %i.z to i64
  tail call void %i.f(ptr noundef nonnull %.0.val, i64 noundef range(i64 9223372036854775806, 4294967297) %i.aa) #59, !inline_history !14
  br i1 %i.z, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %_RINvXsu_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB6_11DashPatternNtNtNtBa_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core4hash4Hash4hashQDNtB1E_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit, %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !49, !noundef !41 ; 2 uses
  tail call void %i.f(ptr noundef nonnull %.0.val, i64 noundef range(i64 9223372036854775806, 4294967297) %i.ac) #59, !inline_history !14
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.o, label %bb.p

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17610)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !17610, !nonnull !41, !noundef !41 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !17610, !noundef !41 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.8.val, i64 136
  %i.aj = load ptr, ptr %i.ai, align 8, !invariant.load !41, !noalias !17610, !nonnull !41
  tail call void %i.aj(ptr noundef nonnull %.0.val, i64 noundef %i.ah) #59, !noalias !17610, !inline_history !17604
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17611)
  %.idx.i.i = shl nuw nsw i64 %i.ah, 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx.i.i
  %i.al = icmp eq i64 %i.ah, 0
  br i1 %i.al, label %_RINvXsu_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB6_11DashPatternNtNtNtBa_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core4hash4Hash4hashQDNtB1E_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  br label %bb.m

bb.m:                                             ; preds = %_RINvXsA_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB6_10DashLengthNtNtNtBa_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core4hash4Hash4hashQDNtB1D_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit.i.i, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi ptr [ %i.af, %.lr.ph.i.i ], [ %i.an, %_RINvXsA_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB6_10DashLengthNtNtNtBa_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core4hash4Hash4hashQDNtB1D_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit.i.i ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i, i64 16 ; 2 uses
  %.sroa.0.0.val.i.i = load i64, ptr %.sroa.0.01.i.i, align 8, !range !49, !alias.scope !17611, !noalias !17610, !noundef !41 ; 2 uses
  %i.ao = getelementptr i8, ptr %.sroa.0.01.i.i, i64 8
  %.sroa.0.0.val3.i.i = load i64, ptr %i.ao, align 8, !alias.scope !17611, !noalias !17610
  tail call void %i.f(ptr noundef nonnull %.0.val, i64 noundef range(i64 9223372036854775806, 4294967297) %.sroa.0.0.val.i.i) #59, !noalias !17612, !inline_history !17607
  %i.ap = trunc nuw i64 %.sroa.0.0.val.i.i to i1
  br i1 %i.ap, label %bb.n, label %_RINvXsA_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB6_10DashLengthNtNtNtBa_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core4hash4Hash4hashQDNtB1D_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.aq = load ptr, ptr %i.am, align 8, !invariant.load !41, !noalias !17612, !nonnull !41
  tail call void %i.aq(ptr noundef nonnull %.0.val, i64 noundef %.sroa.0.0.val3.i.i) #59, !noalias !17612, !inline_history !17608
  br label %_RINvXsA_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB6_10DashLengthNtNtNtBa_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core4hash4Hash4hashQDNtB1D_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit.i.i

_RINvXsA_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB6_10DashLengthNtNtNtBa_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core4hash4Hash4hashQDNtB1D_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.n, %bb.m
  %i.ar = icmp eq ptr %i.an, %i.ak
  br i1 %i.ar, label %_RINvXsu_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB6_11DashPatternNtNtNtBa_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core4hash4Hash4hashQDNtB1E_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit, label %bb.m

_RINvXsu_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB6_11DashPatternNtNtNtBa_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core4hash4Hash4hashQDNtB1E_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvXsA_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB6_10DashLengthNtNtNtBa_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core4hash4Hash4hashQDNtB1D_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit.i.i, %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val2.i = load i64, ptr %i.as, align 8, !alias.scope !17610, !noundef !41
  %i.at = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !41, !noalias !17610, !nonnull !41
  tail call void %i.au(ptr noundef nonnull %.0.val, i64 noundef %.val2.i) #59, !noalias !17610, !inline_history !17609
  br label %bb.k

bb.o:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !noundef !41
  %i.ax = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !invariant.load !41, !nonnull !41
  tail call void %i.ay(ptr noundef nonnull %.0.val, i64 noundef %i.aw) #59, !inline_history !15
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.k
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXst_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_4NodeNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [1 x i8], align 1                 ; 4 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [1 x i8], align 1                 ; 4 uses
  %i.k = alloca [1 x i8], align 1                 ; 4 uses
  %i.l = alloca [1 x i8], align 1                 ; 4 uses
  %i.m = alloca [1 x i8], align 1                 ; 4 uses
  %i.n = alloca [1 x i8], align 1                 ; 4 uses
  %i.o = load i8, ptr %0, align 8, !range !116, !noundef !41 ; 2 uses
  %i.p = zext nneg i8 %i.o to i64
  tail call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  switch i8 %i.o, label %default.unreachable7 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable7:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !17675, !noundef !41 ; 2 uses
  %.not.i = icmp sgt i8 %i.s, -1                  ; 2 uses
  %i.t = and i8 %i.s, 127
  %i.u = zext nneg i8 %i.t to i64
  %i.v = load ptr, ptr %i.q, align 8, !alias.scope !17675, !nonnull !41
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !17675
  %.sroa.3.0.i = select i1 %.not.i, i64 %i.x, i64 %i.u
  %.sroa.0.0.i = select i1 %.not.i, ptr %i.v, ptr %i.q
  tail call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !17676
  store i8 -1, ptr %i.n, align 1, !noalias !17676
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !17676
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.z = load i8, ptr %i.y, align 1, !range !17677, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !17678
  store i8 %i.z, ptr %i.m, align 1, !noalias !17678
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !17678
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %i.q, align 8, !nonnull !41, !noundef !41 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17679)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !17679, !noundef !41
  tail call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.ac), !noalias !17679, !inline_history !17624
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !17679, !noundef !41
  tail call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.ae), !noalias !17679, !inline_history !17624
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ag = load i8, ptr %i.af, align 8, !range !54, !alias.scope !17679, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17680
  store i8 %i.ag, ptr %i.e, align 1, !noalias !17680
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 1), !noalias !17679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !17680
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 65
  %i.ai = load i8, ptr %i.ah, align 1, !range !54, !alias.scope !17679, !noundef !41
end_hunk_2
begin_hunk_3_@_RINvXsy_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_5ColorNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs7tN9tvpkfrg_12typst_layout:bb.a
  %i.e = add i64 %i.d, 8
  store i64 %i.e, ptr %i.c, align 8, !alias.scope !17729
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !17729, !noundef !41 ; 4 uses
  %i.h = shl i64 %i.g, 3                          ; 2 uses
  %i.i = and i64 %i.h, 56
  %i.j = shl nuw nsw i64 %i.b, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !17729, !noundef !41
  %i.m = or i64 %i.j, %i.l                        ; 3 uses
  store i64 %i.m, ptr %i.k, align 8, !alias.scope !17729
  %i.n = icmp ugt i64 %i.g, 8
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !17729, !noundef !41
  %i.q = xor i64 %i.p, %i.m                       ; 3 uses
  %i.r = load i64, ptr %1, align 8, !alias.scope !17730, !noundef !41
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !17730, !noundef !41 ; 3 uses
  %i.u = add i64 %i.t, %i.r                       ; 3 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 13)
  %i.w = xor i64 %i.v, %i.u                       ; 3 uses
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 32)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !17730, !noundef !41
  %i.aa = add i64 %i.z, %i.q                      ; 2 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 16)
  %i.ac = xor i64 %i.aa, %i.ab                    ; 3 uses
  %i.ad = add i64 %i.ac, %i.x                     ; 2 uses
  %i.ae = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 21)
  %i.af = xor i64 %i.ae, %i.ad
  store i64 %i.af, ptr %i.o, align 8, !alias.scope !17730
  %i.ag = add i64 %i.aa, %i.w                     ; 3 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 17)
  %i.ai = xor i64 %i.ag, %i.ah
  store i64 %i.ai, ptr %i.s, align 8, !alias.scope !17730
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 32)
  store i64 %i.aj, ptr %i.y, align 8, !alias.scope !17730
  %i.ak = xor i64 %i.ad, %i.m
  store i64 %i.ak, ptr %1, align 8, !alias.scope !17729
  %.not.i.i.i = icmp eq i64 %i.g, 0
  %i.al = sub nuw nsw i64 64, %i.h
  %i.am = lshr i64 %i.b, %i.al
  %.sroa.0.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.am
  store i64 %.sroa.0.0.i.i.i, ptr %i.k, align 8, !alias.scope !17729
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs7tN9tvpkfrg_12typst_layout.exit

bb.c:                                             ; preds = %bb.a
  %i.an = add i64 %i.g, 8
  store i64 %i.an, ptr %i.f, align 8, !alias.scope !17729
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs7tN9tvpkfrg_12typst_layout.exit

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.b, %bb.c
  %i.ao = trunc nuw i32 %i.a to i1
  br i1 %i.ao, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs7tN9tvpkfrg_12typst_layout.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !41, !noundef !41
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  tail call fastcc void @_RINvXsV_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_12SpotColorantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar, ptr noalias nofree noundef align 8 dereferenceable(72) %1) #59
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load i64, ptr %i.as, align 8, !noundef !41 ; 2 uses
  %i.au = load i64, ptr %i.c, align 8, !alias.scope !17731, !noundef !41
  %i.av = add i64 %i.au, 8
  store i64 %i.av, ptr %i.c, align 8, !alias.scope !17731
  %i.aw = load i64, ptr %i.f, align 8, !alias.scope !17731, !noundef !41 ; 4 uses
  %i.ax = shl i64 %i.aw, 3                        ; 2 uses
  %i.ay = and i64 %i.ax, 56
  %i.az = shl i64 %i.at, %i.ay
  %i.ba = load i64, ptr %i.k, align 8, !alias.scope !17731, !noundef !41
  %i.bb = or i64 %i.az, %i.ba                     ; 3 uses
  store i64 %i.bb, ptr %i.k, align 8, !alias.scope !17731
  %i.bc = icmp ugt i64 %i.aw, 8
  br i1 %i.bc, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !17731, !noundef !41
  %i.bf = xor i64 %i.be, %i.bb                    ; 3 uses
  %i.bg = load i64, ptr %1, align 8, !alias.scope !17732, !noundef !41
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !17732, !noundef !41 ; 3 uses
  %i.bj = add i64 %i.bi, %i.bg                    ; 3 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 13)
  %i.bl = xor i64 %i.bk, %i.bj                    ; 3 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 32)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !17732, !noundef !41
  %i.bp = add i64 %i.bo, %i.bf                    ; 2 uses
  %i.bq = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 16)
  %i.br = xor i64 %i.bp, %i.bq                    ; 3 uses
  %i.bs = add i64 %i.br, %i.bm                    ; 2 uses
  %i.bt = tail call noundef i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 21)
  %i.bu = xor i64 %i.bt, %i.bs
  store i64 %i.bu, ptr %i.bd, align 8, !alias.scope !17732
  %i.bv = add i64 %i.bp, %i.bl                    ; 3 uses
  %i.bw = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 17)
  %i.bx = xor i64 %i.bv, %i.bw
  store i64 %i.bx, ptr %i.bh, align 8, !alias.scope !17732
  %i.by = tail call noundef i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 32)
  store i64 %i.by, ptr %i.bn, align 8, !alias.scope !17732
  %i.bz = xor i64 %i.bs, %i.bb
  store i64 %i.bz, ptr %1, align 8, !alias.scope !17731
  %.not.i.i = icmp eq i64 %i.aw, 0
  %i.ca = sub nuw nsw i64 64, %i.ax
  %i.cb = lshr i64 %i.at, %i.ca
  %.sroa.0.0.i.i = select i1 %.not.i.i, i64 0, i64 %i.cb
  store i64 %.sroa.0.0.i.i, ptr %i.k, align 8, !alias.scope !17731
  br label %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u64.exit

bb.f:                                             ; preds = %bb.d
  %i.cc = add i64 %i.aw, 8
  store i64 %i.cc, ptr %i.f, align 8, !alias.scope !17731
  br label %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u64.exit

bb.g:                                             ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs7tN9tvpkfrg_12typst_layout.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call fastcc void @_RINvXs9_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_12ProcessColorNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.cd, ptr noalias nofree noundef align 8 dereferenceable(72) %1)
  br label %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u64.exit

_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u64.exit: ; preds = %bb.f, %bb.e, %bb.g
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXsy_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_5ColorNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [16 x i8], align 4                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = load i32, ptr %0, align 8, !range !106, !noundef !41 ; 2 uses
  %i.h = zext nneg i32 %i.g to i64
  tail call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.h)
  %i.i = trunc nuw i32 %i.g to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !41, !noundef !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  tail call fastcc void @_RINvXsV_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_12SpotColorantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l, ptr noalias nofree noundef align 8 dereferenceable(72) %1) #59
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !17746
  store i64 %i.n, ptr %i.f, align 8, !noalias !17746
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !17746
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17747)
  %i.p = load i32, ptr %i.o, align 4, !range !132, !alias.scope !17747, !noundef !41
  %i.q = zext nneg i32 %i.p to i64
  tail call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.q), !noalias !17747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17748
  call void @_RNvMs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12ProcessColor7to_vec4(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.o)
  %i.r = load i32, ptr %i.e, align 4, !noalias !17748, !noundef !41
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.t = load i32, ptr %i.s, align 4, !noalias !17748, !noundef !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.v = load i32, ptr %i.u, align 4, !noalias !17748, !noundef !41
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.x = load i32, ptr %i.w, align 4, !noalias !17748, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !17748
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17749
  store i32 %i.r, ptr %i.d, align 4, !noalias !17749
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 4), !noalias !17747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17749
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17750
  store i32 %i.t, ptr %i.c, align 4, !noalias !17750
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 4), !noalias !17747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17750
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17751
  store i32 %i.v, ptr %i.b, align 4, !noalias !17751
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 4), !noalias !17747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17752
  store i32 %i.x, ptr %i.a, align 4, !noalias !17752
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4), !noalias !17747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17752
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXsy_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_5ColorNtNtCs3oUPovFnLWP_4core4hash4Hash4hashQDNtB16_6HasherEL_ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 7 uses
  %i.b = alloca [16 x i8], align 4                ; 7 uses
  %i.c = load i32, ptr %0, align 8, !range !106, !noundef !41 ; 2 uses
  %i.d = zext nneg i32 %i.c to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !41, !nonnull !41 ; 5 uses
  tail call void %i.f(ptr noundef nonnull %.0.val, i64 noundef range(i64 9223372036854775806, 4294967297) %i.d) #59, !inline_history !14
  %i.g = trunc nuw i32 %i.c to i1
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !41, !noundef !41 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17769)
  %i.k = load i64, ptr %i.j, align 8, !range !52, !alias.scope !17769, !noundef !41 ; 3 uses
  %i.l = icmp ne i64 %i.k, 2                      ; 2 uses
  %i.m = zext i1 %i.l to i64
  tail call void %i.f(ptr noundef nonnull %.0.val, i64 noundef range(i64 9223372036854775806, 4294967297) %i.m) #59, !noalias !17769, !inline_history !17755
  br i1 %i.l, label %bb.c, label %_RINvXsV_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_12SpotColorantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashQDNtB1e_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit

bb.c:                                             ; preds = %bb.b
  tail call void %i.f(ptr noundef nonnull %.0.val, i64 noundef range(i64 9223372036854775806, 4294967297) %i.k) #59, !noalias !17769, !inline_history !17755
  %i.n = trunc nuw i64 %i.k to i1
  br i1 %i.n, label %bb.d, label %_RINvXsV_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_12SpotColorantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashQDNtB1e_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 39
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !17770, !noundef !41 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.q, -1                ; 2 uses
  %i.r = and i8 %i.q, 127
  %i.s = zext nneg i8 %i.r to i64
  %i.t = load ptr, ptr %i.o, align 8, !alias.scope !17770, !nonnull !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !17770
  %.sroa.3.0.i.i = select i1 %.not.i.i, i64 %i.v, i64 %i.s
  %.sroa.0.0.i.i = select i1 %.not.i.i, ptr %i.t, ptr %i.o
  %i.w = getelementptr inbounds nuw i8, ptr %.8.val, i64 144
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !41, !noalias !17771, !nonnull !41
  tail call void %i.x(ptr noundef nonnull %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.3.0.i.i) #59, !inline_history !17760
  br label %_RINvXsV_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_12SpotColorantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashQDNtB1e_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit

_RINvXsV_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_12SpotColorantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashQDNtB1e_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17772)
  %i.z = load i32, ptr %i.y, align 8, !range !132, !alias.scope !17773, !noundef !41
  %i.aa = zext nneg i32 %i.z to i64
  tail call void %i.f(ptr noundef nonnull %.0.val, i64 noundef range(i64 9223372036854775806, 4294967297) %i.aa) #59, !noalias !17772, !inline_history !17763
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17773
  call void @_RNvMs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12ProcessColor7to_vec4(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.y)
  %i.ab = load i32, ptr %i.b, align 4, !noalias !17773, !noundef !41
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !noalias !17773, !noundef !41
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !noalias !17773, !noundef !41
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !noalias !17773, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17773
  %i.ai = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !invariant.load !41, !noalias !17773, !nonnull !41 ; 4 uses
  tail call void %i.aj(ptr noundef nonnull %.0.val, i32 noundef %i.ab) #59, !noalias !17772, !inline_history !17764
  tail call void %i.aj(ptr noundef nonnull %.0.val, i32 noundef %i.ad) #59, !noalias !17772, !inline_history !17764
  tail call void %i.aj(ptr noundef nonnull %.0.val, i32 noundef %i.af) #59, !noalias !17772, !inline_history !17764
  tail call void %i.aj(ptr noundef nonnull %.0.val, i32 noundef %i.ah) #59, !noalias !17772, !inline_history !17764
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noundef !41
  %i.am = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !invariant.load !41, !nonnull !41
  tail call void %i.an(ptr noundef nonnull %.0.val, i64 noundef %i.al) #59, !inline_history !15
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17774)
  %i.ap = load i32, ptr %i.ao, align 4, !range !132, !alias.scope !17774, !noundef !41
  %i.aq = zext nneg i32 %i.ap to i64
  tail call void %i.f(ptr noundef nonnull %.0.val, i64 noundef range(i64 9223372036854775806, 4294967297) %i.aq) #59, !noalias !17774, !inline_history !17767
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17774
  call void @_RNvMs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12ProcessColor7to_vec4(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.ao)
  %i.ar = load i32, ptr %i.a, align 4, !noalias !17774, !noundef !41
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.at = load i32, ptr %i.as, align 4, !noalias !17774, !noundef !41
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.av = load i32, ptr %i.au, align 4, !noalias !17774, !noundef !41
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !noalias !17774, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17774
  %i.ay = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !invariant.load !41, !noalias !17774, !nonnull !41 ; 4 uses
  tail call void %i.az(ptr noundef nonnull %.0.val, i32 noundef %i.ar) #59, !noalias !17774, !inline_history !17768
  tail call void %i.az(ptr noundef nonnull %.0.val, i32 noundef %i.at) #59, !noalias !17774, !inline_history !17768
  tail call void %i.az(ptr noundef nonnull %.0.val, i32 noundef %i.av) #59, !noalias !17774, !inline_history !17768
  tail call void %i.az(ptr noundef nonnull %.0.val, i32 noundef %i.ax) #59, !noalias !17774, !inline_history !17768
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvXsV_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_12SpotColorantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashQDNtB1e_6HasherEL_ECs7tN9tvpkfrg_12typst_layout.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvYNtNtNtCsdaEETE4DqmE_13typst_library9visualize5curve9CurveItemNtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %.idx = mul nuw nsw i64 %1, 56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.l = icmp eq i64 %1, 0
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvXsL_NtNtCsdaEETE4DqmE_13typst_library9visualize5curveNtB6_9CurveItemNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs7tN9tvpkfrg_12typst_layout.exit
  %.sroa.0.03 = phi ptr [ %i.m, %_RINvXsL_NtNtCsdaEETE4DqmE_13typst_library9visualize5curveNtB6_9CurveItemNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs7tN9tvpkfrg_12typst_layout.exit ], [ %0, %bb.a ] ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17798)
  %i.n = load i64, ptr %.sroa.0.03, align 8, !range !92, !alias.scope !17798, !noundef !41 ; 2 uses
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, i64 noundef %i.n), !noalias !17798
  switch i64 %i.n, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %_RINvXsL_NtNtCsdaEETE4DqmE_13typst_library9visualize5curveNtB6_9CurveItemNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs7tN9tvpkfrg_12typst_layout.exit
  ]

default.unreachable:                              ; preds = %.lr.ph
  unreachable

bb.b:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !17798, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !17799
  store i64 %i.p, ptr %i.j, align 8, !noalias !17799
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 8), !noalias !17798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !17799
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !17798, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !17800
  store i64 %i.r, ptr %i.i, align 8, !noalias !17800
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 8), !noalias !17798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !17800
  br label %_RINvXsL_NtNtCsdaEETE4DqmE_13typst_library9visualize5curveNtB6_9CurveItemNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs7tN9tvpkfrg_12typst_layout.exit

bb.c:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !17798, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !17801
  store i64 %i.t, ptr %i.h, align 8, !noalias !17801
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 8), !noalias !17798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !17801
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !17798, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !17802
  store i64 %i.v, ptr %i.g, align 8, !noalias !17802
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8), !noalias !17798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !17802
  br label %_RINvXsL_NtNtCsdaEETE4DqmE_13typst_library9visualize5curveNtB6_9CurveItemNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs7tN9tvpkfrg_12typst_layout.exit

bb.d:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !17798, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !17803
  store i64 %i.x, ptr %i.f, align 8, !noalias !17803
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 8), !noalias !17798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !17803
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 16
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !17798, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17804
  store i64 %i.z, ptr %i.e, align 8, !noalias !17804
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8), !noalias !17798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !17804
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !17798, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17805
  store i64 %i.ab, ptr %i.d, align 8, !noalias !17805
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8), !noalias !17798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17805
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !17798, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17806
  store i64 %i.ad, ptr %i.c, align 8, !noalias !17806
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8), !noalias !17798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17806
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !17798, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17807
  store i64 %i.af, ptr %i.b, align 8, !noalias !17807
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8), !noalias !17798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17807
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 48
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !17798, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17808
  store i64 %i.ah, ptr %i.a, align 8, !noalias !17808
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8), !noalias !17798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17808
  br label %_RINvXsL_NtNtCsdaEETE4DqmE_13typst_library9visualize5curveNtB6_9CurveItemNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs7tN9tvpkfrg_12typst_layout.exit

_RINvXsL_NtNtCsdaEETE4DqmE_13typst_library9visualize5curveNtB6_9CurveItemNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %.lr.ph, %bb.b, %bb.c, %bb.d
end_hunk_3
begin_hunk_4_@_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0E0Cs7tN9tvpkfrg_12typst_layout:bb.a
  %i.f = mul i64 %i.e, -1065810590584100411
  %i.g = lshr i128 %.val, 64
  %i.h = trunc nuw i128 %i.g to i64
  %i.i = add i64 %i.f, %i.h
  %i.j = mul i64 %i.i, -1065810590584100411       ; 2 uses
  %i.k = tail call noundef i64 @llvm.fshl.i64(i64 %i.j, i64 %i.j, i64 26)
  ret i64 %i.k
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0E0Cs7tN9tvpkfrg_12typst_layout(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #20 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !41, !noundef !41
  %i.b = sub nsw i64 0, %2
  %i.c = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16
  %.val = load i128, ptr %i.d, align 16, !alias.scope !18039, !noalias !18040, !noundef !41 ; 2 uses
  %i.e = trunc i128 %.val to i64
  %i.f = mul i64 %i.e, -1065810590584100411
  %i.g = lshr i128 %.val, 64
  %i.h = trunc nuw i128 %i.g to i64
  %i.i = add i64 %i.f, %i.h
  %i.j = mul i64 %i.i, -1065810590584100411       ; 2 uses
  %i.k = tail call noundef i64 @llvm.fshl.i64(i64 %i.j, i64 %i.j, i64 26)
  ret i64 %i.k
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableToINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_EEE14reserve_rehashNCINvNtBa_3map11make_hasheroBT_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0E0Cs7tN9tvpkfrg_12typst_layout(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #20 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !41, !noundef !41
  %i.b = sub nsw i64 0, %2
  %i.c = getelementptr inbounds [48 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -48
  %.val = load i128, ptr %i.d, align 16, !alias.scope !18045, !noalias !18046, !noundef !41 ; 2 uses
  %i.e = trunc i128 %.val to i64
  %i.f = mul i64 %i.e, -1065810590584100411
  %i.g = lshr i128 %.val, 64
  %i.h = trunc nuw i128 %i.g to i64
  %i.i = add i64 %i.f, %i.h
  %i.j = mul i64 %i.i, -1065810590584100411       ; 2 uses
  %i.k = tail call noundef i64 @llvm.fshl.i64(i64 %i.j, i64 %i.j, i64 26)
  ret i64 %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCsf1gSX8u3EQ2_10rayon_core4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB2H_6styles10StyleChainERB3F_NtNtNtB2J_13introspection7locator7LocatorEEINtNtBY_3map11MapConsumerINtNtNtBY_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2J_4diag16SourceDiagnosticEENtNtB2J_6engine4SinkEENCINvMB9f_NtB9f_6Engine11parallelizeINtNtNtNtB66_4iter8adapters10filter_map9FilterMapINtNtNtB66_5slice4iter4IterNtNtB7e_7collect4ItemENCNvB7e_12layout_pages0EBa9_B2x_B61_NCBbL_s_0E0EE0NCBR_s_0INtB5l_13CollectResultB60_EBcF_E0B7g_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %1, ptr noundef nonnull align 128 %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [128 x i8], align 8               ; 14 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [128 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.h = load i64, ptr %i.g, align 128, !noundef !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  store ptr %i.f, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 10 uses
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  %i.n = load atomic i64, ptr %i.m monotonic, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 256
  %i.p = load atomic i64, ptr %i.o seq_cst, align 8
  %i.q = sub i64 %i.n, %i.p
  %i.r = icmp slt i64 %i.q, 1
  %i.s = load ptr, ptr %i.k, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 264
  %i.u = load atomic i64, ptr %i.t monotonic, align 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 256
  %i.w = load atomic i64, ptr %i.v acquire, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 296 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8, !noundef !41 ; 3 uses
  %i.z = sub i64 %i.u, %i.w
  %.not.i = icmp slt i64 %i.z, %i.y
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !43

.thread:                                          ; preds = %bb.k, %bb.b, %.sink.split.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.b:                                             ; preds = %bb.a
  %i.ab = shl i64 %i.y, 1
  invoke fastcc void @_RNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE6resizeCs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.k, i64 noundef %i.ab)
          to label %.noexc unwind label %.thread, !inline_history !18047

.noexc:                                           ; preds = %bb.b
  %i.ac = load i64, ptr %i.x, align 8, !noundef !41
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.a
  %.sroa.02.0.i = phi i64 [ %i.ac, %.noexc ], [ %i.y, %bb.a ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 3 uses
  %.sroa.01.0.i = load ptr, ptr %i.ad, align 32, !noundef !41
  %i.ae = add i64 %.sroa.02.0.i, -1
  %i.af = and i64 %i.ae, %i.u
  %i.ag = getelementptr inbounds [16 x i8], ptr %.sroa.01.0.i, i64 %i.af ; 2 uses
  store volatile ptr @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB5D_6engine4SinkEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerTRRSTRNtNtNtB5D_11foundations7content7ContentNtNtB8m_6styles10StyleChainERB8V_NtNtNtB5D_13introspection7locator7LocatorEEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCINvMB6x_NtB6x_6Engine11parallelizeINtNtNtNtB2Z_4iter8adapters10filter_map9FilterMapINtNtNtB2Z_5slice4iter4IterNtNtB47_7collect4ItemENCNvB47_12layout_pages0EBbC_B8c_B2U_NCBde_s_0E0EEs_0E0B1P_ENtB5_3Job7executeB49_, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store volatile ptr %i.e, ptr %i.ah, align 8
  fence release
  %i.ai = load ptr, ptr %i.k, align 8, !nonnull !41, !noundef !41
  %i.aj = add i64 %i.u, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 264
  store atomic i64 %i.aj, ptr %i.ak release, align 8
  %i.al = load ptr, ptr %i.f, align 16, !nonnull !41, !noundef !41 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 496 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.ao = load atomic i64, ptr %i.an seq_cst, align 8 ; 4 uses
  %i.ap = and i64 %i.ao, 4294967296
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.e, label %_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs7tN9tvpkfrg_12typst_layout.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ar = or disjoint i64 %i.ao, 4294967296       ; 2 uses
  %i.as = cmpxchg ptr %i.an, i64 %i.ao, i64 %i.ar seq_cst monotonic, align 8
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.as, 1
  br i1 %.sroa.18.0.in.i.i.i, label %_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.d

_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i = phi i64 [ %i.ar, %bb.e ], [ %i.ao, %bb.d ] ; 2 uses
  %i.at = and i64 %.sroa.0.0.i.i, 65535           ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs7tN9tvpkfrg_12typst_layout.exit.i
  br i1 %i.r, label %bb.g, label %.sink.split.i, !prof !43

.sink.split.i:                                    ; preds = %bb.g, %bb.f
  invoke void @_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.am, i32 noundef 1)
          to label %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.g:                                             ; preds = %bb.f
  %i.av = lshr i64 %.sroa.0.0.i.i, 16
  %i.aw = and i64 %i.av, 65535
  %i.ax = icmp eq i64 %i.aw, %i.at
  br i1 %i.ax, label %.sink.split.i, label %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !44

_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.g, %_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs7tN9tvpkfrg_12typst_layout.exit.i, %.sink.split.i
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0108.0.copyload = load ptr, ptr %i.ay, align 8, !nonnull !41, !noundef !41
  %.sroa.4109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.4109.0.copyload = load ptr, ptr %.sroa.4109.0..sroa_idx, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %.sroa.5110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.5110.0.copyload = load i64, ptr %.sroa.5110.0..sroa_idx, align 8
  %.sroa.6111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.6111.sroa.0.0.copyload = load i64, ptr %.sroa.6111.0..sroa_idx, align 8
  %.sroa.6111.sroa.4.0..sroa.6111.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.az = load i64, ptr %.sroa.0108.0.copyload, align 8, !noalias !18078, !noundef !41
  %i.ba = load i64, ptr %.sroa.4109.0.copyload, align 8, !noalias !18078, !noundef !41
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.4109.0.copyload, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !18078, !noundef !41
  %i.bd = inttoptr i64 %.sroa.5110.0.copyload to ptr
  invoke fastcc void @_RINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainERB2M_NtNtNtB1Q_13introspection7locator7LocatorEEINtNtB6_3map11MapConsumerINtNtNtB6_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1Q_4diag16SourceDiagnosticEENtNtB1Q_6engine4SinkEENCINvMB8m_NtB8m_6Engine11parallelizeINtNtNtNtB5d_4iter8adapters10filter_map9FilterMapINtNtNtB5d_5slice4iter4IterNtNtB6l_7collect4ItemENCNvB6l_12layout_pages0EB9g_B1E_B58_NCBaS_s_0E0EEB6n_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.az, i1 noundef zeroext %3, i64 noundef %i.ba, i64 noundef %i.bc, ptr noalias nofree noundef nonnull align 16 %i.bd, i64 noundef %.sroa.6111.sroa.0.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %.sroa.6111.sroa.4.0..sroa.6111.0..sroa_idx.sroa_idx)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  %i.bg = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bf)
          to label %bb.k unwind label %bb.i       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #55
  unreachable

bb.j:                                             ; preds = %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %.sroa.0123.0.copyload = load ptr, ptr %i.b, align 8 ; 4 uses
  %.sroa.4124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4124.0.copyload = load ptr, ptr %.sroa.4124.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5125.0.copyload = load i64, ptr %.sroa.5125.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.bk = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsazW1U07H1KN_15crossbeam_epoch7default6HANDLE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.bm = extractvalue { ptr, ptr } %i.bg, 0      ; 2 uses
  %i.bn = extractvalue { ptr, ptr } %i.bg, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ]
  invoke void @_RNvNtCsf1gSX8u3EQ2_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.i, ptr noundef nonnull %i.bm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bn) #57
          to label %bb.ba unwind label %.thread

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsazW1U07H1KN_15crossbeam_epoch5guard5GuardECs7tN9tvpkfrg_12typst_layout.exit.sink.split.i.i, %.noexc58, %_RNCINvNtCsazW1U07H1KN_15crossbeam_epoch7default11with_handleNCNvB4_9is_pinned0bEs_0Cs7tN9tvpkfrg_12typst_layout.exit.i.thread.i.i, %.noexc56, %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsazW1U07H1KN_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i, %_RNvYNCNKNvNtCsazW1U07H1KN_15crossbeam_epoch7default6HANDLE00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i, %bb.aj, %bb.s, %bb.x, %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCs7tN9tvpkfrg_12typst_layout.exit.jt1.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread165

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.au, %bb.ay
  %.sroa.019.2.ph.ph = phi i1 [ true, %bb.ay ], [ false, %bb.au ]
  %lpad.loopexit.split-lp188 = landingpad { ptr, i32 }
          cleanup
  br label %.thread165

bb.l:                                             ; preds = %bb.j, %bb.aj
  %i.bo = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bp = icmp eq i64 %i.bo, 3
  br i1 %i.bp, label %.loopexit186, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = load ptr, ptr %i.k, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 264 ; 2 uses
  %i.bs = load atomic i64, ptr %i.br monotonic, align 8 ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 256 ; 2 uses
  %i.bu = load atomic i64, ptr %i.bt monotonic, align 8
  %i.bv = sub i64 %i.bs, %i.bu                    ; 2 uses
  %i.bw = icmp slt i64 %i.bv, 1
  br i1 %i.bw, label %.preheader.i.preheader, label %bb.n

.preheader.i.preheader:                           ; preds = %bb.v, %bb.u, %bb.r, %bb.m
  br label %.preheader.i

bb.n:                                             ; preds = %bb.m
  %i.bx = load i8, ptr %i.bi, align 16, !range !54, !noundef !41
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bz = add i64 %i.bs, -1                       ; 5 uses
  store atomic i64 %i.bz, ptr %i.br monotonic, align 8
  fence seq_cst
  %i.ca = load ptr, ptr %i.k, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 256 ; 2 uses
  %i.cc = load atomic i64, ptr %i.cb monotonic, align 8 ; 2 uses
  %i.cd = sub i64 %i.bz, %i.cc                    ; 2 uses
  %i.ce = icmp slt i64 %i.cd, 0
  br i1 %i.ce, label %bb.u, label %bb.t

bb.p:                                             ; preds = %bb.n
  %i.cf = atomicrmw add ptr %i.bt, i64 1 seq_cst, align 8 ; 3 uses
  %i.cg = sub i64 %i.cf, %i.bs
  %i.ch = icmp sgt i64 %i.cg, -1
  br i1 %i.ch, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = load ptr, ptr %i.ad, align 32, !noundef !41
  %i.cj = load i64, ptr %i.x, align 8, !noundef !41 ; 4 uses
  %i.ck = add i64 %i.cj, -1
  %i.cl = and i64 %i.ck, %i.cf
  %i.cm = getelementptr inbounds [16 x i8], ptr %i.ci, i64 %i.cl
  %i.cn = load volatile i128, ptr %i.cm, align 8  ; 2 uses
  %.sroa.015.0.extract.trunc.i.i = trunc i128 %i.cn to i64 ; 3 uses
  %.sroa.216.0.extract.shift.i.i = lshr i128 %i.cn, 64
  %.sroa.216.0.extract.trunc.i.i = trunc nuw i128 %.sroa.216.0.extract.shift.i.i to i64 ; 2 uses
  %i.co = icmp ne i64 %.sroa.015.0.extract.trunc.i.i, 0
  call void @llvm.assume(i1 %i.co)
  %i.cp = icmp ugt i64 %i.cj, 64
  %i.cq = sdiv i64 %i.cj, 4
  %i.cr = icmp sle i64 %i.bv, %i.cq
  %or.cond.i.i = and i1 %i.cp, %i.cr
  br i1 %or.cond.i.i, label %bb.s, label %_RNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE3popCs7tN9tvpkfrg_12typst_layout.exit.i, !prof !50

bb.r:                                             ; preds = %bb.p
  %i.cs = load ptr, ptr %i.k, align 8, !nonnull !41, !noundef !41
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 256
  store atomic i64 %i.cf, ptr %i.ct monotonic, align 8
  br label %.preheader.i.preheader

bb.s:                                             ; preds = %bb.q
  %i.cu = lshr i64 %i.cj, 1
  invoke fastcc void @_RNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE6resizeCs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.k, i64 noundef %i.cu)
          to label %_RNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE3popCs7tN9tvpkfrg_12typst_layout.exit.i unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.o
  %i.cv = load ptr, ptr %i.ad, align 32, !noundef !41
  %i.cw = load i64, ptr %i.x, align 8, !noundef !41 ; 4 uses
  %i.cx = add i64 %i.cw, -1
  %i.cy = and i64 %i.cx, %i.bz
  %i.cz = getelementptr inbounds [16 x i8], ptr %i.cv, i64 %i.cy
  %i.da = load volatile i128, ptr %i.cz, align 8  ; 2 uses
  %.sroa.017.0.extract.trunc.i.i = trunc i128 %i.da to i64 ; 2 uses
  %.sroa.218.0.extract.shift.i.i = lshr i128 %i.da, 64
  %.sroa.218.0.extract.trunc.i.i = trunc nuw i128 %.sroa.218.0.extract.shift.i.i to i64
  %i.db = icmp eq i64 %i.bz, %i.cc
  br i1 %i.db, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.o
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ca, i64 264
  store atomic i64 %i.bs, ptr %i.dc monotonic, align 8
  br label %.preheader.i.preheader

bb.v:                                             ; preds = %bb.t
  %i.dd = cmpxchg ptr %i.cb, i64 %i.bz, i64 %i.bs seq_cst monotonic, align 8
  %i.de = extractvalue { i64, i1 } %i.dd, 1
  %i.df = load ptr, ptr %i.k, align 8, !nonnull !41, !noundef !41
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 264
  store atomic i64 %i.bs, ptr %i.dg monotonic, align 8
  br i1 %i.de, label %.noexc54, label %.preheader.i.preheader

bb.w:                                             ; preds = %bb.t
  %i.dh = icmp ugt i64 %i.cw, 64
  %i.di = sdiv i64 %i.cw, 4
  %i.dj = icmp slt i64 %i.cd, %i.di
  %or.cond3.i.i = and i1 %i.dh, %i.dj
  br i1 %or.cond3.i.i, label %bb.x, label %.noexc54, !prof !50

.noexc54:                                         ; preds = %bb.x, %bb.w, %bb.v
  %i.dk = icmp ne i64 %.sroa.017.0.extract.trunc.i.i, 0
  call void @llvm.assume(i1 %i.dk)
  br label %_RNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE3popCs7tN9tvpkfrg_12typst_layout.exit.i

bb.x:                                             ; preds = %bb.w
  %i.dl = lshr i64 %i.cw, 1
  invoke fastcc void @_RNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE6resizeCs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.k, i64 noundef %i.dl)
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader.i:                                     ; preds = %.preheader.i.preheader, %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCs7tN9tvpkfrg_12typst_layout.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !18079)
  %i.dm = load ptr, ptr %i.bj, align 8, !alias.scope !18079, !nonnull !41, !noundef !41 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 256 ; 2 uses
  %i.do = load atomic i64, ptr %i.dn acquire, align 8, !noalias !18080 ; 4 uses
  %i.dp = load i8, ptr %i.bl, align 8, !range !48, !noalias !18081, !noundef !41
  %i.dq = icmp eq i8 %i.dp, 1
  br i1 %i.dq, label %_RINvNtCsazW1U07H1KN_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECs7tN9tvpkfrg_12typst_layout.exit.i.i, label %_RNvYNCNKNvNtCsazW1U07H1KN_15crossbeam_epoch7default6HANDLE00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i, !prof !43

_RNvYNCNKNvNtCsazW1U07H1KN_15crossbeam_epoch7default6HANDLE00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i: ; preds = %.preheader.i
  %i.dr = invoke fastcc noundef ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtCsazW1U07H1KN_15crossbeam_epoch9collector11LocalHandleuE16get_or_init_slowNvNvNtB1i_7default6HANDLE27___rust_std_internal_init_fnECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.bk, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc55:                                         ; preds = %_RNvYNCNKNvNtCsazW1U07H1KN_15crossbeam_epoch7default6HANDLE00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsazW1U07H1KN_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i, label %_RINvNtCsazW1U07H1KN_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECs7tN9tvpkfrg_12typst_layout.exit.i.i

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsazW1U07H1KN_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i: ; preds = %.noexc55
  %i.dt = invoke noundef nonnull align 8 ptr @_RNvNtCsazW1U07H1KN_15crossbeam_epoch7default9collector()
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc56:                                         ; preds = %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsazW1U07H1KN_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i
  %i.du = invoke noundef ptr @_RNvMs1_NtCsazW1U07H1KN_15crossbeam_epoch9collectorNtB5_9Collector8register(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dt)
          to label %.noexc57 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc57:                                         ; preds = %.noexc56
  %i.dv = getelementptr i8, ptr %i.du, i64 2072
  %.val2.val.i.i.i.i = load i64, ptr %i.dv, align 8, !noalias !18080, !noundef !41
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 2080 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !noalias !18080, !noundef !41 ; 2 uses
  %i.dy = add i64 %i.dx, -1
  store i64 %i.dy, ptr %i.dw, align 8, !noalias !18080
  %i.dz = icmp eq i64 %.val2.val.i.i.i.i, 0       ; 2 uses
  %i.ea = icmp eq i64 %i.dx, 1
  %or.cond.i.i.i3.i.i.i.i = and i1 %i.dz, %i.ea
  br i1 %or.cond.i.i.i3.i.i.i.i, label %_RNCINvNtCsazW1U07H1KN_15crossbeam_epoch7default11with_handleNCNvB4_9is_pinned0bEs_0Cs7tN9tvpkfrg_12typst_layout.exit.i.thread.i.i, label %_RNCINvNtCsazW1U07H1KN_15crossbeam_epoch7default11with_handleNCNvB4_9is_pinned0bEs_0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i, !prof !50

_RNCINvNtCsazW1U07H1KN_15crossbeam_epoch7default11with_handleNCNvB4_9is_pinned0bEs_0Cs7tN9tvpkfrg_12typst_layout.exit.i.thread.i.i: ; preds = %.noexc57
  invoke void @_RNvMs6_NtCsazW1U07H1KN_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.du)
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNCINvNtCsazW1U07H1KN_15crossbeam_epoch7default11with_handleNCNvB4_9is_pinned0bEs_0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %.noexc57
  br i1 %i.dz, label %.noexc58, label %bb.y

_RINvNtCsazW1U07H1KN_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %.noexc55, %.preheader.i
  %.sroa.0.0.i.i.i2.i.i.i.i = phi ptr [ %i.dr, %.noexc55 ], [ %i.bk, %.preheader.i ]
  %.val.i.i.i.i = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i.i, align 8, !noalias !18080, !noundef !41
  %i.eb = getelementptr i8, ptr %.val.i.i.i.i, i64 2072
  %.val.val.i.i.i.i = load i64, ptr %i.eb, align 8, !noalias !18080, !noundef !41
  %.not13.i.i = icmp eq i64 %.val.val.i.i.i.i, 0
  br i1 %.not13.i.i, label %.noexc58, label %bb.y

bb.y:                                             ; preds = %_RINvNtCsazW1U07H1KN_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECs7tN9tvpkfrg_12typst_layout.exit.i.i, %_RNCINvNtCsazW1U07H1KN_15crossbeam_epoch7default11with_handleNCNvB4_9is_pinned0bEs_0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  fence seq_cst
  br label %.noexc58

.noexc58:                                         ; preds = %_RNCINvNtCsazW1U07H1KN_15crossbeam_epoch7default11with_handleNCNvB4_9is_pinned0bEs_0Cs7tN9tvpkfrg_12typst_layout.exit.i.thread.i.i, %bb.y, %_RINvNtCsazW1U07H1KN_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECs7tN9tvpkfrg_12typst_layout.exit.i.i, %_RNCINvNtCsazW1U07H1KN_15crossbeam_epoch7default11with_handleNCNvB4_9is_pinned0bEs_0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %i.ec = invoke fastcc noundef ptr @_RINvNtCsazW1U07H1KN_15crossbeam_epoch7default11with_handleNCNvB2_3pin0NtNtB4_5guard5GuardECs7tN9tvpkfrg_12typst_layout() #59
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc59:                                         ; preds = %.noexc58
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dm, i64 264
  %i.ee = load atomic i64, ptr %i.ed acquire, align 8, !noalias !18080
  %i.ef = sub i64 %i.ee, %i.do
  %i.eg = icmp slt i64 %i.ef, 1                   ; 2 uses
  br i1 %i.eg, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %.noexc59
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dm, i64 128 ; 2 uses
  %i.ei = load atomic i64, ptr %i.eh acquire, align 8, !noalias !18080 ; 2 uses
  %i.ej = and i64 %i.ei, -8
  %i.ek = inttoptr i64 %i.ej to ptr               ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !18080, !noundef !41
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.en = load i64, ptr %i.em, align 8, !noalias !18080, !noundef !41
  %i.eo = add i64 %i.en, -1
  %i.ep = and i64 %i.eo, %i.do
  %i.eq = getelementptr inbounds [16 x i8], ptr %i.el, i64 %i.ep
  %i.er = load volatile i128, ptr %i.eq, align 8, !noalias !18080 ; 2 uses
  %i.es = load atomic i64, ptr %i.eh acquire, align 8, !noalias !18080
  %.not.i.i = icmp eq i64 %i.es, %i.ei
  br i1 %.not.i.i, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.et = add i64 %i.do, 1
  %i.eu = cmpxchg ptr %i.dn, i64 %i.do, i64 %i.et seq_cst monotonic, align 8, !noalias !18080
  %i.ev = extractvalue { i64, i1 } %i.eu, 1
  br i1 %i.ev, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %.sroa.01.0.extract.trunc.i.le.i = trunc i128 %i.er to i64 ; 5 uses
  %.sroa.2.0.extract.shift.i.le.i = lshr i128 %i.er, 64
  %.sroa.2.0.extract.trunc.i.le.i = trunc nuw i128 %.sroa.2.0.extract.shift.i.le.i to i64 ; 4 uses
  %i.ew = icmp ne i64 %.sroa.01.0.extract.trunc.i.le.i, 0
  call void @llvm.assume(i1 %i.ew)
  %i.ex = icmp eq ptr %i.ec, null
  br i1 %i.ex, label %_RNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE3popCs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ec, i64 2072 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !noalias !18080, !noundef !41 ; 2 uses
  %i.fa = add i64 %i.ez, -1
  store i64 %i.fa, ptr %i.ey, align 8, !noalias !18080
  %i.fb = icmp eq i64 %i.ez, 1
  br i1 %i.fb, label %bb.ad, label %_RNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE3popCs7tN9tvpkfrg_12typst_layout.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ec, i64 2176
  store atomic i64 0, ptr %i.fc release, align 8, !noalias !18080
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ec, i64 2080
  %i.fe = load i64, ptr %i.fd, align 8, !noalias !18080, !noundef !41
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCs7tN9tvpkfrg_12typst_layout.exit.jt1.i, label %_RNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE3popCs7tN9tvpkfrg_12typst_layout.exit.i, !prof !44

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsazW1U07H1KN_15crossbeam_epoch5guard5GuardECs7tN9tvpkfrg_12typst_layout.exit.sink.split.i.i: ; preds = %bb.ag
  invoke void @_RNvMs6_NtCsazW1U07H1KN_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.ec)
          to label %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCs7tN9tvpkfrg_12typst_layout.exit.i unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.aa, %bb.z, %.noexc59
  %i.fg = icmp eq ptr %i.ec, null
  br i1 %i.fg, label %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ec, i64 2072 ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !noalias !18080, !noundef !41 ; 2 uses
  %i.fj = add i64 %i.fi, -1
  store i64 %i.fj, ptr %i.fh, align 8, !noalias !18080
  %i.fk = icmp eq i64 %i.fi, 1
  br i1 %i.fk, label %bb.ag, label %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCs7tN9tvpkfrg_12typst_layout.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ec, i64 2176
  store atomic i64 0, ptr %i.fl release, align 8, !noalias !18080
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ec, i64 2080
  %i.fn = load i64, ptr %i.fm, align 8, !noalias !18080, !noundef !41
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsazW1U07H1KN_15crossbeam_epoch5guard5GuardECs7tN9tvpkfrg_12typst_layout.exit.sink.split.i.i, label %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCs7tN9tvpkfrg_12typst_layout.exit.i, !prof !44

_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsazW1U07H1KN_15crossbeam_epoch5guard5GuardECs7tN9tvpkfrg_12typst_layout.exit.sink.split.i.i, %bb.ag, %bb.af, %bb.ae
  br i1 %i.eg, label %.thread175, label %.preheader.i

_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCs7tN9tvpkfrg_12typst_layout.exit.jt1.i: ; preds = %bb.ad
  invoke void @_RNvMs6_NtCsazW1U07H1KN_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.ec)
          to label %_RNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE3popCs7tN9tvpkfrg_12typst_layout.exit.i unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit186:                                     ; preds = %bb.l, %bb.ay, %.thread175
  %.sroa.3.0.copyload = load i64, ptr %i.j, align 8
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.sroa.494.0.copyload = load ptr, ptr %.sroa.494.0..sroa_idx, align 8 ; 3 uses
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.sroa.595.0.copyload = load ptr, ptr %.sroa.595.0..sroa_idx, align 8 ; 3 uses
  switch i64 %.sroa.3.0.copyload, label %default.unreachable1.i.i [
    i64 0, label %bb.ah
    i64 1, label %_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB5D_6engine4SinkEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerTRRSTRNtNtNtB5D_11foundations7content7ContentNtNtB8m_6styles10StyleChainERB8V_NtNtNtB5D_13introspection7locator7LocatorEEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCINvMB6x_NtB6x_6Engine11parallelizeINtNtNtNtB2Z_4iter8adapters10filter_map9FilterMapINtNtNtB2Z_5slice4iter4IterNtNtB47_7collect4ItemENCNvB47_12layout_pages0EBbC_B8c_B2U_NCBde_s_0E0EEs_0E0B1P_E11into_resultB49_.exit
    i64 2, label %bb.ai
  ], !prof !75

default.unreachable1.i.i:                         ; preds = %.loopexit186
  unreachable

bb.ah:                                            ; preds = %.loopexit186
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @401) #53
          to label %.noexc.i unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCsf1gSX8u3EQ2_10rayon_core4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB5T_6engine4SinkEENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerTRRSTRNtNtNtB5T_11foundations7content7ContentNtNtB8C_6styles10StyleChainERB9b_NtNtNtB5T_13introspection7locator7LocatorEEINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCINvMB6N_NtB6N_6Engine11parallelizeINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtB4n_7collect4ItemENCNvB4n_12layout_pages0EBbS_B8s_B3q_NCBds_s_0E0EEs_0E0EEEB4p_.exit.i, !noalias !18082

.noexc.i:                                         ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %.loopexit186
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.494.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.595.0.copyload) ]
  invoke void @_RNvNtCsf1gSX8u3EQ2_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.494.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.595.0.copyload) #57
          to label %.noexc1.i unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCsf1gSX8u3EQ2_10rayon_core4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB5T_6engine4SinkEENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerTRRSTRNtNtNtB5T_11foundations7content7ContentNtNtB8C_6styles10StyleChainERB9b_NtNtNtB5T_13introspection7locator7LocatorEEINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCINvMB6N_NtB6N_6Engine11parallelizeINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtB4n_7collect4ItemENCNvB4n_12layout_pages0EBbS_B8s_B3q_NCBds_s_0E0EEs_0E0EEEB4p_.exit.i, !noalias !18082

.noexc1.i:                                        ; preds = %bb.ai
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCsf1gSX8u3EQ2_10rayon_core4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB5T_6engine4SinkEENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerTRRSTRNtNtNtB5T_11foundations7content7ContentNtNtB8C_6styles10StyleChainERB9b_NtNtNtB5T_13introspection7locator7LocatorEEINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCINvMB6N_NtB6N_6Engine11parallelizeINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtB4n_7collect4ItemENCNvB4n_12layout_pages0EBbS_B8s_B3q_NCBds_s_0E0EEs_0E0EEEB4p_.exit.i: ; preds = %bb.ai, %bb.ah
  %i.fp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB36_6engine4SinkEEB1C_(ptr noalias nofree noundef nonnull readonly align 8 %.sroa.0123.0.copyload, i64 noundef %.sroa.5125.0.copyload)
          to label %.thread181 unwind label %bb.az

_RNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE3popCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.q, %.noexc54, %bb.s, %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCs7tN9tvpkfrg_12typst_layout.exit.jt1.i, %bb.ad, %bb.ac, %bb.ab
  %.sroa.0.0.i.pn.i.in = phi i64 [ %.sroa.01.0.extract.trunc.i.le.i, %bb.ac ], [ %.sroa.01.0.extract.trunc.i.le.i, %bb.ab ], [ %.sroa.01.0.extract.trunc.i.le.i, %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCs7tN9tvpkfrg_12typst_layout.exit.jt1.i ], [ %.sroa.01.0.extract.trunc.i.le.i, %bb.ad ], [ %.sroa.017.0.extract.trunc.i.i, %.noexc54 ], [ %.sroa.015.0.extract.trunc.i.i, %bb.q ], [ %.sroa.015.0.extract.trunc.i.i, %bb.s ] ; 2 uses
  %.sroa.7.0.i.pn.i.in = phi i64 [ %.sroa.2.0.extract.trunc.i.le.i, %bb.ac ], [ %.sroa.2.0.extract.trunc.i.le.i, %bb.ab ], [ %.sroa.2.0.extract.trunc.i.le.i, %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCs7tN9tvpkfrg_12typst_layout.exit.jt1.i ], [ %.sroa.2.0.extract.trunc.i.le.i, %bb.ad ], [ %.sroa.218.0.extract.trunc.i.i, %.noexc54 ], [ %.sroa.216.0.extract.trunc.i.i, %bb.q ], [ %.sroa.216.0.extract.trunc.i.i, %bb.s ]
  %.sroa.7.0.i.pn.i = inttoptr i64 %.sroa.7.0.i.pn.i.in to ptr ; 2 uses
  %i.fq = icmp eq ptr %i.e, %.sroa.7.0.i.pn.i
  %i.fr = icmp eq i64 %.sroa.0.0.i.pn.i.in, ptrtoint (ptr @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB5D_6engine4SinkEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerTRRSTRNtNtNtB5D_11foundations7content7ContentNtNtB8m_6styles10StyleChainERB8V_NtNtNtB5D_13introspection7locator7LocatorEEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCINvMB6x_NtB6x_6Engine11parallelizeINtNtNtNtB2Z_4iter8adapters10filter_map9FilterMapINtNtNtB2Z_5slice4iter4IterNtNtB47_7collect4ItemENCNvB47_12layout_pages0EBbC_B8c_B2U_NCBde_s_0E0EEs_0E0B1P_ENtB5_3Job7executeB49_ to i64)
  %or.cond = and i1 %i.fr, %i.fq
  br i1 %or.cond, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_RNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE3popCs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.0.0.i.pn.i = inttoptr i64 %.sroa.0.0.i.pn.i.in to ptr
  invoke void %.sroa.0.0.i.pn.i(ptr noundef %.sroa.7.0.i.pn.i)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %_RNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE3popCs7tN9tvpkfrg_12typst_layout.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull align 8 dereferenceable(128) %i.e, i64 128, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !18083)
  %.sroa.0.0.copyload.i62 = load ptr, ptr %i.c, align 8, !alias.scope !18083 ; 2 uses
  %.not.i63 = icmp eq ptr %.sroa.0.0.copyload.i62, null
  br i1 %.not.i63, label %bb.am, label %bb.al, !prof !44

bb.al:                                            ; preds = %bb.ak
  %i.fs = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.3.i.sroa.6.0.copyload = load i64, ptr %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !18084
  %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.3.i.sroa.5.0.copyload = load ptr, ptr %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !18084, !nonnull !41, !noundef !41
  %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3.i.sroa.4.0.copyload = load ptr, ptr %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !18084, !nonnull !41, !noundef !41 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.3.i.sroa.0.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !18084, !nonnull !41, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18085
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.fs, i64 24, i1 false)
  %i.ft = load i64, ptr %.sroa.0.0.copyload.i62, align 8, !noalias !18085, !noundef !41
  %i.fu = load i64, ptr %.sroa.3.i.sroa.0.0.copyload, align 8, !noalias !18085, !noundef !41
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = load i64, ptr %.sroa.3.i.sroa.4.0.copyload, align 8, !noalias !18085, !noundef !41
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.3.i.sroa.4.0.copyload, i64 8
  %i.fy = load i64, ptr %i.fx, align 8, !noalias !18085, !noundef !41
  invoke fastcc void @_RINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainERB2M_NtNtNtB1Q_13introspection7locator7LocatorEEINtNtB6_3map11MapConsumerINtNtNtB6_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1Q_4diag16SourceDiagnosticEENtNtB1Q_6engine4SinkEENCINvMB8m_NtB8m_6Engine11parallelizeINtNtNtNtB5d_4iter8adapters10filter_map9FilterMapINtNtNtB5d_5slice4iter4IterNtNtB6l_7collect4ItemENCNvB6l_12layout_pages0EB9g_B1E_B58_NCBaS_s_0E0EEB6n_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, i64 noundef %i.fv, i1 noundef zeroext %3, i64 noundef %i.fw, i64 noundef %i.fy, ptr noalias nofree noundef nonnull align 16 %.sroa.3.i.sroa.5.0.copyload, i64 noundef %.sroa.3.i.sroa.6.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.ap unwind label %bb.an, !inline_history !18072

bb.am:                                            ; preds = %bb.ak
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @372) #57
          to label %bb.ao unwind label %bb.an, !noalias !18086, !inline_history !18073

bb.an:                                            ; preds = %bb.al, %bb.am
  %i.fz = landingpad { ptr, i32 }
          cleanup
  %i.ga = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB5h_6engine4SinkEEEEEB3N_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ga) #54
          to label %.thread165 unwind label %bb.av, !noalias !18084, !inline_history !18073

bb.ao:                                            ; preds = %bb.am
  unreachable

bb.ap:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18085
  %i.gb = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  call void @llvm.experimental.noalias.scope.decl(metadata !18087)
  call void @llvm.experimental.noalias.scope.decl(metadata !18088)
  %i.gc = load i64, ptr %i.gb, align 8, !range !52, !alias.scope !18089, !noundef !41
  switch i64 %i.gc, label %bb.aq [
    i64 0, label %bb.aw
    i64 1, label %bb.au
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.gd = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.val2.i.i = load ptr, ptr %i.gd, align 8, !alias.scope !18089 ; 5 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.val3.i.i = load ptr, ptr %i.ge, align 8, !alias.scope !18089, !nonnull !41, !align !46, !noundef !41 ; 5 uses
  %i.gf = load ptr, ptr %.val3.i.i, align 8, !invariant.load !41, !noalias !18089 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  invoke void %i.gf(ptr noundef nonnull %.val2.i.i)
          to label %bb.as unwind label %bb.at, !noalias !18089

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gg = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 8
  %i.gh = load i64, ptr %i.gg, align 8, !range !45, !invariant.load !41, !noalias !18089 ; 2 uses
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %bb.aw, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.as
  %i.gj = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 16
  %i.gk = load i64, ptr %i.gj, align 8, !range !80, !invariant.load !41, !noalias !18089
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef %i.gh, i64 noundef range(i64 1, -9223372036854775807) %i.gk) #56, !noalias !18089
  br label %bb.aw

bb.at:                                            ; preds = %bb.ar
  %i.gl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !range !45, !invariant.load !41, !noalias !18089 ; 2 uses
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %.thread165, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.at
  %i.gp = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 16
  %i.gq = load i64, ptr %i.gp, align 8, !range !80, !invariant.load !41, !noalias !18089
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef %i.gn, i64 noundef range(i64 1, -9223372036854775807) %i.gq) #56, !noalias !18089
  br label %.thread165

bb.au:                                            ; preds = %bb.ap
  %i.gr = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.val.i.i = load ptr, ptr %i.gr, align 8, !alias.scope !18089, !noundef !41
  %i.gs = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %.val1.i.i = load i64, ptr %i.gs, align 8, !alias.scope !18089, !noundef !41
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB36_6engine4SinkEEB1C_(ptr noalias nofree noundef nonnull readonly align 8 %.val.i.i, i64 noundef %.val1.i.i)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp

bb.av:                                            ; preds = %bb.an
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !18086, !inline_history !18073
  unreachable

bb.aw:                                            ; preds = %bb.au, %bb.ap, %bb.as, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %.sroa.0123.0.copyload, ptr %0, align 8
  %.sroa.4.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4124.0.copyload, ptr %.sroa.4.0..sroa_idx85, align 8
  %.sroa.5.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5125.0.copyload, ptr %.sroa.5.0..sroa_idx86, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gu, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ax

bb.ax:                                            ; preds = %_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB5D_6engine4SinkEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerTRRSTRNtNtNtB5D_11foundations7content7ContentNtNtB8m_6styles10StyleChainERB8V_NtNtNtB5D_13introspection7locator7LocatorEEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCINvMB6x_NtB6x_6Engine11parallelizeINtNtNtNtB2Z_4iter8adapters10filter_map9FilterMapINtNtNtB2Z_5slice4iter4IterNtNtB47_7collect4ItemENCNvB47_12layout_pages0EBbC_B8c_B2U_NCBde_s_0E0EEs_0E0B1P_E11into_resultB49_.exit, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

.thread175:                                       ; preds = %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCs7tN9tvpkfrg_12typst_layout.exit.i
  %i.gv = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.gw = icmp eq i64 %i.gv, 3
  br i1 %i.gw, label %.loopexit186, label %bb.ay, !prof !43

bb.ay:                                            ; preds = %.thread175
  invoke void @_RNvMs8_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit186 unwind label %.loopexit.split-lp.loopexit.split-lp

_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB5D_6engine4SinkEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerTRRSTRNtNtNtB5D_11foundations7content7ContentNtNtB8m_6styles10StyleChainERB8V_NtNtNtB5D_13introspection7locator7LocatorEEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCINvMB6x_NtB6x_6Engine11parallelizeINtNtNtNtB2Z_4iter8adapters10filter_map9FilterMapINtNtNtB2Z_5slice4iter4IterNtNtB47_7collect4ItemENCNvB47_12layout_pages0EBbC_B8c_B2U_NCBde_s_0E0EEs_0E0B1P_E11into_resultB49_.exit: ; preds = %.loopexit186
  %.sroa.696.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.sroa.696.0.copyload = load i64, ptr %.sroa.696.0..sroa_idx, align 8
  store ptr %.sroa.0123.0.copyload, ptr %0, align 8
  %.sroa.588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4124.0.copyload, ptr %.sroa.588.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5125.0.copyload, ptr %.sroa.6.0..sroa_idx89, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.494.0.copyload, ptr %i.gx, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.595.0.copyload, ptr %.sroa.491.0..sroa_idx, align 8
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.696.0.copyload, ptr %.sroa.592.0..sroa_idx, align 8
  br label %bb.ax

bb.az:                                            ; preds = %.thread165, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCsf1gSX8u3EQ2_10rayon_core4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB5T_6engine4SinkEENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerTRRSTRNtNtNtB5T_11foundations7content7ContentNtNtB8C_6styles10StyleChainERB9b_NtNtNtB5T_13introspection7locator7LocatorEEINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCINvMB6N_NtB6N_6Engine11parallelizeINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtB4n_7collect4ItemENCNvB4n_12layout_pages0EBbS_B8s_B3q_NCBds_s_0E0EEs_0E0EEEB4p_.exit.i, %bb.bb
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

.thread165:                                       ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp, %bb.an, %bb.at, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i
  %.sroa.019.2.lpad-body = phi i1 [ false, %bb.at ], [ false, %bb.an ], [ false, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %.sroa.019.2.ph.ph, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %eh.lpad-body66 = phi { ptr, i32 } [ %i.gl, %bb.at ], [ %i.fz, %bb.an ], [ %i.gl, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %lpad.loopexit.split-lp188, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB36_6engine4SinkEEB1C_(ptr noalias nofree noundef nonnull readonly align 8 %.sroa.0123.0.copyload, i64 noundef %.sroa.5125.0.copyload)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB49_6engine4SinkEEEB2F_.exit69 unwind label %bb.az

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB49_6engine4SinkEEEB2F_.exit69: ; preds = %.thread165
  br i1 %.sroa.019.2.lpad-body, label %bb.bb, label %.thread181

bb.ba:                                            ; preds = %bb.k
  unreachable

bb.bb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB49_6engine4SinkEEEB2F_.exit69, %.thread
  %.pn46148 = phi { ptr, i32 } [ %i.aa, %.thread ], [ %eh.lpad-body66, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB49_6engine4SinkEEEB2F_.exit69 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB5Q_6engine4SinkEENCINvNvNtB2p_8plumbing24bridge_producer_consumer6helperINtNtB2r_3vec13DrainProducerTRRSTRNtNtNtB5Q_11foundations7content7ContentNtNtB8z_6styles10StyleChainERB98_NtNtNtB5Q_13introspection7locator7LocatorEEINtNtB2p_3map11MapConsumerINtB2l_15CollectConsumerB3m_ENCINvMB6K_NtB6K_6Engine11parallelizeINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtB4k_7collect4ItemENCNvB4k_12layout_pages0EBbP_B8p_B3n_NCBdp_s_0E0EEs_0E0B2i_EEB4m_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.e) #54
          to label %.thread181 unwind label %bb.az

end_hunk_4
begin_hunk_5_@_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push:bb.a
  %i.be = load ptr, ptr %0, align 8, !alias.scope !19787 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !19787
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b, i64 noundef %i.bd)
          to label %bb.n unwind label %bb.t, !noalias !19781

bb.q:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.bh = load ptr, ptr %i.b, align 8, !alias.scope !19785, !noalias !19781, !nonnull !41, !noundef !41 ; 3 uses
  %i.bi = load i64, ptr %i.bc, align 8, !alias.scope !19785, !noalias !19781, !noundef !41 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bi
  store i8 %i.z, ptr %i.bj, align 1, !noalias !19786
  %i.bk = add i64 %i.bi, 1                        ; 2 uses
  %.not.i.i27.i = icmp sgt i64 %i.bg, -1
  br i1 %.not.i.i27.i, label %bb.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECs7tN9tvpkfrg_12typst_layout.exit.i

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  %.not.i.i.i.i.i = icmp eq ptr %i.be, inttoptr (i64 16 to ptr)
  %i.bl = getelementptr inbounds i8, ptr %i.be, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECs7tN9tvpkfrg_12typst_layout.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i: ; preds = %bb.r
  %i.bm = atomicrmw add ptr %i.bl, i64 -1 release, align 8, !noalias !19781
  %.not.i.i.i.i = icmp eq i64 %i.bm, 1
  br i1 %.not.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECs7tN9tvpkfrg_12typst_layout.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19781
  %i.bn = getelementptr i8, ptr %i.be, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.bn, align 8, !noalias !19781, !noundef !41 ; 2 uses
  %narrow.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i, label %bb.s, !prof !43

bb.s:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
          to label %.noexc.i unwind label %bb.m, !noalias !19781

.noexc.i:                                         ; preds = %bb.s
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  %i.bo = add nuw nsw i64 %.val.i.i.i.i.i, 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.bl, ptr %i.bp, align 8, !noalias !19781
  store i64 8, ptr %i.a, align 8, !noalias !19781
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.bo, ptr %i.bq, align 8, !noalias !19781
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc28.i unwind label %bb.m, !noalias !19781

.noexc28.i:                                       ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19781
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECs7tN9tvpkfrg_12typst_layout.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %.noexc28.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i, %bb.r, %bb.q
  store ptr %i.bh, ptr %0, align 8, !alias.scope !19781
  store i64 %i.bk, ptr %i.bf, align 8, !alias.scope !19781
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19781
  br label %_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec4push.exit

bb.t:                                             ; preds = %bb.p, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  %.val20.i = load ptr, ptr %i.b, align 8, !noalias !19781, !nonnull !41, !noundef !41
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs7tN9tvpkfrg_12typst_layout(ptr nonnull %.val20.i) #54
          to label %common.resume.i unwind label %bb.u, !noalias !19781

bb.u:                                             ; preds = %bb.t
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !19781
  unreachable

_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec4push.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECs7tN9tvpkfrg_12typst_layout.exit.i, %bb.l, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE4pushCs7tN9tvpkfrg_12typst_layout.exit.i, %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMNtNtCs3oUPovFnLWP_4core4cell4lazyINtB2_8LazyCellINtNtB6_6result6ResultINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesNtNtB1f_3abs3AbsEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1h_4diag16SourceDiagnosticEENCNvNtCs7tN9tvpkfrg_12typst_layout10transforms13resolve_scale0E11really_initB3u_(ptr nofree noundef nonnull align 16 captures(ret: address, provenance) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 16               ; 6 uses
  %i.e = alloca [80 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.e, ptr noundef nonnull align 16 dereferenceable(80) %0, i64 80, i1 false)
  store i64 2, ptr %0, align 16
  %i.f = load i64, ptr %i.e, align 16, !range !52, !noundef !41
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.f, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.09.0.copyload = load i128, ptr %i.h, align 16
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 16
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.612.0.copyload = load ptr, ptr %.sroa.612.0..sroa_idx, align 16, !nonnull !41, !noundef !41
  %.sroa.713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.713.0.copyload = load ptr, ptr %.sroa.713.0..sroa_idx, align 8 ; 2 uses
  %.sroa.814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.814.0.copyload = load ptr, ptr %.sroa.814.0..sroa_idx, align 16, !nonnull !41, !noundef !41
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !19797
  %i.i = load <2 x double>, ptr %.sroa.612.0.copyload, align 8, !noalias !19797
  store <2 x double> %i.i, ptr %i.d, align 16, !noalias !19797
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i8 0, ptr %i.j, align 16, !noalias !19797
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  store i8 0, ptr %i.k, align 1, !noalias !19797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19797
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.713.0.copyload) ]
  %i.l = load ptr, ptr %.sroa.814.0.copyload, align 8, !noalias !19797, !nonnull !41, !noundef !41
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19797
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0.copyload, i64 24, i1 false), !noalias !19797
  call void @_RNvNtCs7tN9tvpkfrg_12typst_layout4flow12layout_frame(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %.sroa.713.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, i128 noundef %.sroa.09.0.copyload, ptr noundef align 16 %.sroa.410.0.copyload, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d), !noalias !19797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19797
  %i.n = load i64, ptr %i.b, align 8, !range !52, !noalias !19797, !noundef !41 ; 2 uses
  %i.o = icmp eq i64 %i.n, 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !19797 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noalias !19797 ; 3 uses
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19797
  %i.t = ptrtoint ptr %i.q to i64
  br label %_RNCNvNtCs7tN9tvpkfrg_12typst_layout10transforms13resolve_scale0B5_.exit

bb.d:                                             ; preds = %bb.b
  %.sroa.612.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.68.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.612.0..sroa_idx.i, i64 24, i1 false), !noalias !19797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19797
  store i64 %i.n, ptr %i.c, align 8, !noalias !19797
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !19797
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 %i.s, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !19797
  %i.u = load i64, ptr %.sroa.68.0..sroa_idx.i, align 8, !noalias !19797, !noundef !41 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.w = load i64, ptr %i.v, align 8, !noalias !19797, !noundef !41 ; 2 uses
  %i.x = inttoptr i64 %i.s to ptr
  %i.y = atomicrmw add ptr %i.x, i64 -1 release, align 8, !noalias !19798
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.e, label %_RNCNvNtCs7tN9tvpkfrg_12typst_layout10transforms13resolve_scale0B5_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.5.0..sroa_idx.i) #58, !noalias !19797
  br label %_RNCNvNtCs7tN9tvpkfrg_12typst_layout10transforms13resolve_scale0B5_.exit

_RNCNvNtCs7tN9tvpkfrg_12typst_layout10transforms13resolve_scale0B5_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.7.0 = phi i64 [ %i.s, %bb.c ], [ %i.w, %bb.e ], [ %i.w, %bb.d ]
  %.sroa.5.0 = phi i64 [ %i.t, %bb.c ], [ %i.u, %bb.e ], [ %i.u, %bb.d ]
  %.sroa.0.0 = phi i64 [ 1, %bb.c ], [ 0, %bb.e ], [ 0, %bb.d ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19797
  store i64 1, ptr %0, align 16
  store i64 %.sroa.0.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.42.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0, ptr %.sroa.42.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 16
  %.sroa.42.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.0, ptr %.sroa.42.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  ret ptr %.sroa.4.0..sroa_idx

bb.f:                                             ; preds = %bb.a
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4cell4lazy5StateINtNtB4_6result6ResultINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesNtNtB1s_3abs3AbsEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1u_4diag16SourceDiagnosticEENCNvNtCs7tN9tvpkfrg_12typst_layout10transforms13resolve_scale0EEB3H_(ptr noalias nofree noundef align 16 dereferenceable(80) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #53
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMNtNtCs3oUPovFnLWP_4core4cell4lazyINtB2_8LazyCellINtNtNtCsdaEETE4DqmE_13typst_library6layout5sides5SidesINtNtBT_3rel3RelNtNtBT_3abs3AbsEENCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow5block18layout_multi_blocks1_0E11really_initB2m_(ptr nofree noundef nonnull align 8 captures(ret: address, provenance) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [128 x i8], align 8               ; 19 uses
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 6 uses
  store i64 2, ptr %0, align 8
  %i.f = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.f, label %bb.b, label %bb.g, !prof !43

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %.sroa.5.0.copyload.val = load ptr, ptr %.sroa.5.0.copyload, align 8, !nonnull !41, !noundef !41
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.val, i64 384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !19838
  call fastcc void @_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container9BlockElemKh7_E10get_clonedCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %.sroa.6.0.copyload), !noalias !19839
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19840)
  %.sroa.031.0.copyload.i.i = load i64, ptr %i.e, align 8, !alias.scope !19840, !noalias !19838
  %.sroa.432.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.432.0.copyload.i.i = load double, ptr %.sroa.432.0..sroa_idx.i.i, align 8, !alias.scope !19840, !noalias !19838
  %.sroa.533.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.533.0.copyload.i.i = load double, ptr %.sroa.533.0..sroa_idx.i.i, align 8, !alias.scope !19840, !noalias !19838
  %.sroa.634.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.634.0.copyload.i.i = load double, ptr %.sroa.634.0..sroa_idx.i.i, align 8, !alias.scope !19840, !noalias !19838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !19841
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.6.0.copyload, i64 24, i1 false), !noalias !19842
  %i.h = trunc nuw i64 %.sroa.031.0.copyload.i.i to i1
  br i1 %i.h, label %bb.c, label %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = call noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %.sroa.432.0.copyload.i.i, double noundef %.sroa.533.0.copyload.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !19843
  br label %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i

_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi double [ %.sroa.634.0.copyload.i.i, %bb.c ], [ 0.000000e+00, %bb.b ]
  %.sroa.3.0.i.i.i.i = phi double [ %i.i, %bb.c ], [ 0.000000e+00, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19841
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.042.0.copyload.i.i = load i64, ptr %i.j, align 8, !alias.scope !19840, !noalias !19838
  %.sroa.443.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.443.0.copyload.i.i = load double, ptr %.sroa.443.0..sroa_idx.i.i, align 8, !alias.scope !19840, !noalias !19838
  %.sroa.544.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.544.0.copyload.i.i = load double, ptr %.sroa.544.0..sroa_idx.i.i, align 8, !alias.scope !19840, !noalias !19838
  %.sroa.645.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.645.0.copyload.i.i = load double, ptr %.sroa.645.0..sroa_idx.i.i, align 8, !alias.scope !19840, !noalias !19838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19844
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.6.0.copyload, i64 24, i1 false), !noalias !19845
  %i.k = trunc nuw i64 %.sroa.042.0.copyload.i.i to i1
  br i1 %i.k, label %bb.d, label %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i

bb.d:                                             ; preds = %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.l = call noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %.sroa.443.0.copyload.i.i, double noundef %.sroa.544.0.copyload.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !19846
  br label %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i

_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i: ; preds = %bb.d, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi double [ %.sroa.645.0.copyload.i.i, %bb.d ], [ 0.000000e+00, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  %.sroa.3.0.i.i8.i.i = phi double [ %i.l, %bb.d ], [ 0.000000e+00, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19844
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.053.0.copyload.i.i = load i64, ptr %i.m, align 8, !alias.scope !19840, !noalias !19838
  %.sroa.454.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.sroa.454.0.copyload.i.i = load double, ptr %.sroa.454.0..sroa_idx.i.i, align 8, !alias.scope !19840, !noalias !19838
  %.sroa.555.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.sroa.555.0.copyload.i.i = load double, ptr %.sroa.555.0..sroa_idx.i.i, align 8, !alias.scope !19840, !noalias !19838
  %.sroa.656.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.sroa.656.0.copyload.i.i = load double, ptr %.sroa.656.0..sroa_idx.i.i, align 8, !alias.scope !19840, !noalias !19838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19847
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.6.0.copyload, i64 24, i1 false), !noalias !19848
  %i.n = trunc nuw i64 %.sroa.053.0.copyload.i.i to i1
  br i1 %i.n, label %bb.e, label %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i

bb.e:                                             ; preds = %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i
  %i.o = call noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %.sroa.454.0.copyload.i.i, double noundef %.sroa.555.0.copyload.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !19849
  br label %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i

_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i: ; preds = %bb.e, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i
  %.sroa.0.0.i.i16.i.i = phi double [ %.sroa.656.0.copyload.i.i, %bb.e ], [ 0.000000e+00, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i ]
  %.sroa.3.0.i.i15.i.i = phi double [ %i.o, %bb.e ], [ 0.000000e+00, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19847
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.sroa.064.0.copyload.i.i = load i64, ptr %i.p, align 8, !alias.scope !19840, !noalias !19838
  %.sroa.465.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %.sroa.465.0.copyload.i.i = load double, ptr %.sroa.465.0..sroa_idx.i.i, align 8, !alias.scope !19840, !noalias !19838
  %.sroa.566.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %.sroa.566.0.copyload.i.i = load double, ptr %.sroa.566.0..sroa_idx.i.i, align 8, !alias.scope !19840, !noalias !19838
  %.sroa.667.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %.sroa.667.0.copyload.i.i = load double, ptr %.sroa.667.0..sroa_idx.i.i, align 8, !alias.scope !19840, !noalias !19838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19850
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.6.0.copyload, i64 24, i1 false), !noalias !19851
  %i.q = trunc nuw i64 %.sroa.064.0.copyload.i.i to i1
  br i1 %i.q, label %bb.f, label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow5block18layout_multi_blocks1_0B7_.exit

bb.f:                                             ; preds = %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i
  %i.r = call noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %.sroa.465.0.copyload.i.i, double noundef %.sroa.566.0.copyload.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !19852
  br label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow5block18layout_multi_blocks1_0B7_.exit

_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow5block18layout_multi_blocks1_0B7_.exit: ; preds = %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i, %bb.f
  %.sroa.0.0.i.i23.i.i = phi double [ %.sroa.667.0.copyload.i.i, %bb.f ], [ 0.000000e+00, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i ]
  %.sroa.3.0.i.i22.i.i = phi double [ %i.r, %bb.f ], [ 0.000000e+00, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19850
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19838
  store i64 1, ptr %0, align 8
  store double %.sroa.0.0.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  store double %.sroa.3.0.i.i.i.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.43.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.sroa.0.0.i.i9.i.i, ptr %.sroa.43.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %.sroa.3.0.i.i8.i.i, ptr %.sroa.43.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sroa.0.0.i.i16.i.i, ptr %.sroa.43.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %.sroa.3.0.i.i15.i.i, ptr %.sroa.43.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %.sroa.0.0.i.i23.i.i, ptr %.sroa.43.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %.sroa.3.0.i.i22.i.i, ptr %.sroa.43.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  ret ptr %.sroa.5.0..sroa_idx

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #53
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMNtNtCs3oUPovFnLWP_4core4cell4lazyINtB2_8LazyCellINtNtNtCsdaEETE4DqmE_13typst_library6layout5sides5SidesINtNtBT_3rel3RelNtNtBT_3abs3AbsEENCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow5block19layout_single_blocks_0E11really_initB2m_(ptr nofree noundef nonnull align 8 captures(ret: address, provenance) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [128 x i8], align 8               ; 19 uses
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 6 uses
  store i64 2, ptr %0, align 8
  %i.f = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.f, label %bb.b, label %bb.g, !prof !43

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %.sroa.5.0.copyload.val = load ptr, ptr %.sroa.5.0.copyload, align 8, !nonnull !41, !noundef !41
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.val, i64 384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !19892
  call fastcc void @_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container9BlockElemKh7_E10get_clonedCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %.sroa.6.0.copyload), !noalias !19893
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19894)
  %.sroa.031.0.copyload.i.i = load i64, ptr %i.e, align 8, !alias.scope !19894, !noalias !19892
  %.sroa.432.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.432.0.copyload.i.i = load double, ptr %.sroa.432.0..sroa_idx.i.i, align 8, !alias.scope !19894, !noalias !19892
  %.sroa.533.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.533.0.copyload.i.i = load double, ptr %.sroa.533.0..sroa_idx.i.i, align 8, !alias.scope !19894, !noalias !19892
  %.sroa.634.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.634.0.copyload.i.i = load double, ptr %.sroa.634.0..sroa_idx.i.i, align 8, !alias.scope !19894, !noalias !19892
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !19895
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.6.0.copyload, i64 24, i1 false), !noalias !19896
  %i.h = trunc nuw i64 %.sroa.031.0.copyload.i.i to i1
  br i1 %i.h, label %bb.c, label %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = call noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %.sroa.432.0.copyload.i.i, double noundef %.sroa.533.0.copyload.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !19897
  br label %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i

_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi double [ %.sroa.634.0.copyload.i.i, %bb.c ], [ 0.000000e+00, %bb.b ]
  %.sroa.3.0.i.i.i.i = phi double [ %i.i, %bb.c ], [ 0.000000e+00, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19895
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.042.0.copyload.i.i = load i64, ptr %i.j, align 8, !alias.scope !19894, !noalias !19892
  %.sroa.443.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.443.0.copyload.i.i = load double, ptr %.sroa.443.0..sroa_idx.i.i, align 8, !alias.scope !19894, !noalias !19892
  %.sroa.544.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.544.0.copyload.i.i = load double, ptr %.sroa.544.0..sroa_idx.i.i, align 8, !alias.scope !19894, !noalias !19892
  %.sroa.645.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.645.0.copyload.i.i = load double, ptr %.sroa.645.0..sroa_idx.i.i, align 8, !alias.scope !19894, !noalias !19892
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19898
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.6.0.copyload, i64 24, i1 false), !noalias !19899
  %i.k = trunc nuw i64 %.sroa.042.0.copyload.i.i to i1
  br i1 %i.k, label %bb.d, label %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i

bb.d:                                             ; preds = %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.l = call noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %.sroa.443.0.copyload.i.i, double noundef %.sroa.544.0.copyload.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !19900
  br label %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i

_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i: ; preds = %bb.d, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi double [ %.sroa.645.0.copyload.i.i, %bb.d ], [ 0.000000e+00, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  %.sroa.3.0.i.i8.i.i = phi double [ %i.l, %bb.d ], [ 0.000000e+00, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19898
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.053.0.copyload.i.i = load i64, ptr %i.m, align 8, !alias.scope !19894, !noalias !19892
  %.sroa.454.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.sroa.454.0.copyload.i.i = load double, ptr %.sroa.454.0..sroa_idx.i.i, align 8, !alias.scope !19894, !noalias !19892
  %.sroa.555.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.sroa.555.0.copyload.i.i = load double, ptr %.sroa.555.0..sroa_idx.i.i, align 8, !alias.scope !19894, !noalias !19892
  %.sroa.656.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.sroa.656.0.copyload.i.i = load double, ptr %.sroa.656.0..sroa_idx.i.i, align 8, !alias.scope !19894, !noalias !19892
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19901
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.6.0.copyload, i64 24, i1 false), !noalias !19902
  %i.n = trunc nuw i64 %.sroa.053.0.copyload.i.i to i1
  br i1 %i.n, label %bb.e, label %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i

bb.e:                                             ; preds = %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i
  %i.o = call noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %.sroa.454.0.copyload.i.i, double noundef %.sroa.555.0.copyload.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !19903
  br label %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i

_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i: ; preds = %bb.e, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i
  %.sroa.0.0.i.i16.i.i = phi double [ %.sroa.656.0.copyload.i.i, %bb.e ], [ 0.000000e+00, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i ]
  %.sroa.3.0.i.i15.i.i = phi double [ %i.o, %bb.e ], [ 0.000000e+00, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19901
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.sroa.064.0.copyload.i.i = load i64, ptr %i.p, align 8, !alias.scope !19894, !noalias !19892
  %.sroa.465.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %.sroa.465.0.copyload.i.i = load double, ptr %.sroa.465.0..sroa_idx.i.i, align 8, !alias.scope !19894, !noalias !19892
  %.sroa.566.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %.sroa.566.0.copyload.i.i = load double, ptr %.sroa.566.0..sroa_idx.i.i, align 8, !alias.scope !19894, !noalias !19892
  %.sroa.667.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %.sroa.667.0.copyload.i.i = load double, ptr %.sroa.667.0..sroa_idx.i.i, align 8, !alias.scope !19894, !noalias !19892
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19904
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.6.0.copyload, i64 24, i1 false), !noalias !19905
  %i.q = trunc nuw i64 %.sroa.064.0.copyload.i.i to i1
  br i1 %i.q, label %bb.f, label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow5block19layout_single_blocks_0B7_.exit

bb.f:                                             ; preds = %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i
  %i.r = call noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %.sroa.465.0.copyload.i.i, double noundef %.sroa.566.0.copyload.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !19906
  br label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow5block19layout_single_blocks_0B7_.exit

_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow5block19layout_single_blocks_0B7_.exit: ; preds = %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i, %bb.f
  %.sroa.0.0.i.i23.i.i = phi double [ %.sroa.667.0.copyload.i.i, %bb.f ], [ 0.000000e+00, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i ]
  %.sroa.3.0.i.i22.i.i = phi double [ %i.r, %bb.f ], [ 0.000000e+00, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19892
  store i64 1, ptr %0, align 8
  store double %.sroa.0.0.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  store double %.sroa.3.0.i.i.i.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.43.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.sroa.0.0.i.i9.i.i, ptr %.sroa.43.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %.sroa.3.0.i.i8.i.i, ptr %.sroa.43.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sroa.0.0.i.i16.i.i, ptr %.sroa.43.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %.sroa.3.0.i.i15.i.i, ptr %.sroa.43.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %.sroa.0.0.i.i23.i.i, ptr %.sroa.43.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %.sroa.3.0.i.i22.i.i, ptr %.sroa.43.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  ret ptr %.sroa.5.0..sroa_idx

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #53
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMNtNtCs3oUPovFnLWP_4core4cell4lazyINtB2_8LazyCellINtNtNtCsdaEETE4DqmE_13typst_library6layout5sides5SidesINtNtBT_3rel3RelNtNtBT_3abs3AbsEENCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4box_10layout_boxs_0E11really_initB2m_(ptr nofree noundef nonnull align 8 captures(ret: address, provenance) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [128 x i8], align 8               ; 7 uses
  %i.f = alloca [128 x i8], align 8               ; 26 uses
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 6 uses
  store i64 2, ptr %0, align 8
  %i.g = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.g, label %bb.b, label %bb.k, !prof !43

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %.sroa.5.0.copyload.val = load ptr, ptr %.sroa.5.0.copyload, align 8, !nonnull !41, !noundef !41 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.val, i64 456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19965)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !19966
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !19967
  store i64 0, ptr %i.e, align 8, !alias.scope !19968, !noalias !19967
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 0, ptr %i.i, align 8, !alias.scope !19968, !noalias !19967
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 0, ptr %i.j, align 8, !alias.scope !19968, !noalias !19967
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store i64 0, ptr %i.k, align 8, !alias.scope !19968, !noalias !19967
  call fastcc void @_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_foldedINtNtNtBa_6layout5sides5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1v_3rel3RelEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %.sroa.6.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout9container1__NtB9_7BoxElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 7, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(128) %i.e), !noalias !19969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19967
  %i.l = load i64, ptr %i.h, align 8, !range !52, !alias.scope !19965, !noalias !19970, !noundef !41 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 2
  %.sroa.01.0.copyload.pre.i = load i64, ptr %i.f, align 8, !noalias !19971 ; 3 uses
  br i1 %.not.i.i, label %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh7_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i, label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i

._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh7_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i: ; preds = %bb.b
  %.sroa.42.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.42.0.copyload.pre.i = load double, ptr %.sroa.42.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !19971
  %.sroa.5.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load <2 x double>, ptr %.sroa.5.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !19971
  %.sroa.7.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.7.0.copyload.pre.i = load i64, ptr %.sroa.7.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !19971
  %.sroa.84.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.84.0.copyload.pre.i = load double, ptr %.sroa.84.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !19971
  %.sroa.9.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.n = load <2 x double>, ptr %.sroa.9.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !19971
  %.sroa.11.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.sroa.11.0.copyload.pre.i = load i64, ptr %.sroa.11.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !19971
  %.sroa.126.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.sroa.126.0.copyload.pre.i = load double, ptr %.sroa.126.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !19971
  %.sroa.13.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.o = load <2 x double>, ptr %.sroa.13.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !19971
  %.sroa.15.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %.sroa.15.0.copyload.pre.i = load i64, ptr %.sroa.15.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !19971
  %.sroa.168.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %.sroa.168.0.copyload.pre.i = load double, ptr %.sroa.168.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !19971
  %.sroa.17.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.p = load <2 x double>, ptr %.sroa.17.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !19971
  br label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh7_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.i

_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %bb.b
  %i.q = trunc i64 %i.l to i1                     ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.val, i64 464
  %.val.i.i.i.i.i = load double, ptr %i.r, align 8, !alias.scope !19965, !noalias !19970 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.val, i64 472
  %i.t = load <2 x double>, ptr %i.s, align 8, !alias.scope !19965, !noalias !19970 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.val, i64 488
  %i.v = load i64, ptr %i.u, align 8, !range !49, !alias.scope !19972, !noalias !19970, !noundef !41
  %i.w = trunc nuw i64 %i.v to i1                 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.val, i64 496
  %.val.i.i2.i.i.i = load double, ptr %i.x, align 8, !alias.scope !19965, !noalias !19970 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.val, i64 504
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.val, i64 520
  %i.aa = load i64, ptr %i.z, align 8, !range !49, !alias.scope !19973, !noalias !19970, !noundef !41
  %i.ab = trunc nuw i64 %i.aa to i1               ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.val, i64 528
  %.val.i.i8.i.i.i = load double, ptr %i.ac, align 8, !alias.scope !19965, !noalias !19970 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.val, i64 536
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.val, i64 552
  %i.af = load i64, ptr %i.ae, align 8, !range !49, !alias.scope !19974, !noalias !19970, !noundef !41
  %i.ag = trunc nuw i64 %i.af to i1               ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.val, i64 560
  %.val.i.i14.i.i.i = load double, ptr %i.ah, align 8, !alias.scope !19965, !noalias !19970 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.val, i64 568
  %.sroa.716.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.716.0.copyload.i.i = load i64, ptr %.sroa.716.0..sroa_idx.i.i, align 8, !noalias !19966 ; 2 uses
  %.sroa.817.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.817.0.copyload.i.i = load double, ptr %.sroa.817.0..sroa_idx.i.i, align 8, !noalias !19966
  %.sroa.918.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.aj = load <2 x double>, ptr %i.y, align 8, !alias.scope !19965, !noalias !19970 ; 2 uses
  %i.ak = load <2 x double>, ptr %.sroa.918.0..sroa_idx.i.i, align 8, !noalias !19966
  %.sroa.1120.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.sroa.1120.0.copyload.i.i = load i64, ptr %.sroa.1120.0..sroa_idx.i.i, align 8, !noalias !19966 ; 2 uses
  %.sroa.1221.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.sroa.1221.0.copyload.i.i = load double, ptr %.sroa.1221.0..sroa_idx.i.i, align 8, !noalias !19966
  %.sroa.1322.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.al = load <2 x double>, ptr %i.ad, align 8, !alias.scope !19965, !noalias !19970 ; 2 uses
  %i.am = load <2 x double>, ptr %.sroa.1322.0..sroa_idx.i.i, align 8, !noalias !19966
  %.sroa.1524.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %.sroa.1524.0.copyload.i.i = load i64, ptr %.sroa.1524.0..sroa_idx.i.i, align 8, !noalias !19966 ; 2 uses
  %.sroa.1625.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %.sroa.1625.0.copyload.i.i = load double, ptr %.sroa.1625.0..sroa_idx.i.i, align 8, !noalias !19966
  %.sroa.1726.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.an = load <2 x double>, ptr %i.ai, align 8, !alias.scope !19965, !noalias !19970 ; 2 uses
  %i.ao = load <2 x double>, ptr %.sroa.1726.0..sroa_idx.i.i, align 8, !noalias !19966
  %i.ap = trunc nuw i64 %.sroa.01.0.copyload.pre.i to i1
  %or.cond.i.i.i.i.i.i = select i1 %i.q, i1 %i.ap, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %.sroa.514.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aq = load <2 x double>, ptr %.sroa.514.0..sroa_idx.i.i, align 8, !noalias !19966
  %.sroa.413.0.copyload.i.i = load double, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !19966
  %.sroa.0.0.copyload33.sroa.speculated.i.i.i.i = select i1 %i.q, i64 1, i64 %.sroa.01.0.copyload.pre.i
  %.sroa.5.0.copyload34.sroa.speculated.i.i.i.i = select i1 %i.q, double %.val.i.i.i.i.i, double %.sroa.413.0.copyload.i.i
  %i.ar = insertelement <2 x i1> poison, i1 %i.q, i64 0
  %i.as = shufflevector <2 x i1> %i.ar, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.at = select <2 x i1> %i.as, <2 x double> %i.t, <2 x double> %i.aq
  br label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i

_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i: ; preds = %bb.c, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %.sroa.5.0.i.i.i.i = phi double [ %.sroa.5.0.copyload34.sroa.speculated.i.i.i.i, %bb.c ], [ %.val.i.i.i.i.i, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.0.0.copyload33.sroa.speculated.i.i.i.i, %bb.c ], [ 1, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ] ; 2 uses
  %i.au = phi <2 x double> [ %i.at, %bb.c ], [ %i.t, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ] ; 2 uses
  %i.av = trunc nuw i64 %.sroa.716.0.copyload.i.i to i1
  %or.cond.i.i3.i.i.i.i = select i1 %i.w, i1 %i.av, i1 false
  br i1 %or.cond.i.i3.i.i.i.i, label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  %.sroa.052.0.copyload53.sroa.speculated.i.i.i.i = select i1 %i.w, i64 1, i64 %.sroa.716.0.copyload.i.i
  %.sroa.554.0.copyload55.sroa.speculated.i.i.i.i = select i1 %i.w, double %.val.i.i2.i.i.i, double %.sroa.817.0.copyload.i.i
  %i.aw = insertelement <2 x i1> poison, i1 %i.w, i64 0
  %i.ax = shufflevector <2 x i1> %i.aw, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ay = select <2 x i1> %i.ax, <2 x double> %i.aj, <2 x double> %i.ak
  br label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i

_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i: ; preds = %bb.d, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  %.sroa.554.0.i.i.i.i = phi double [ %.sroa.554.0.copyload55.sroa.speculated.i.i.i.i, %bb.d ], [ %.val.i.i2.i.i.i, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ] ; 2 uses
  %.sroa.052.0.i.i.i.i = phi i64 [ %.sroa.052.0.copyload53.sroa.speculated.i.i.i.i, %bb.d ], [ 1, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ] ; 2 uses
  %i.az = phi <2 x double> [ %i.ay, %bb.d ], [ %i.aj, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ] ; 2 uses
  %i.ba = trunc nuw i64 %.sroa.1120.0.copyload.i.i to i1
  %or.cond.i.i13.i.i.i.i = select i1 %i.ab, i1 %i.ba, i1 false
  br i1 %or.cond.i.i13.i.i.i.i, label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i
  %.sroa.078.0.copyload79.sroa.speculated.i.i.i.i = select i1 %i.ab, i64 1, i64 %.sroa.1120.0.copyload.i.i
  %.sroa.580.0.copyload81.sroa.speculated.i.i.i.i = select i1 %i.ab, double %.val.i.i8.i.i.i, double %.sroa.1221.0.copyload.i.i
  %i.bb = insertelement <2 x i1> poison, i1 %i.ab, i64 0
  %i.bc = shufflevector <2 x i1> %i.bb, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bd = select <2 x i1> %i.bc, <2 x double> %i.al, <2 x double> %i.am
  br label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i

_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i: ; preds = %bb.e, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i
  %.sroa.580.0.i.i.i.i = phi double [ %.sroa.580.0.copyload81.sroa.speculated.i.i.i.i, %bb.e ], [ %.val.i.i8.i.i.i, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i ] ; 2 uses
  %.sroa.078.0.i.i.i.i = phi i64 [ %.sroa.078.0.copyload79.sroa.speculated.i.i.i.i, %bb.e ], [ 1, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i ] ; 2 uses
  %i.be = phi <2 x double> [ %i.bd, %bb.e ], [ %i.al, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i ] ; 2 uses
  %i.bf = trunc nuw i64 %.sroa.1524.0.copyload.i.i to i1
  %or.cond.i.i23.i.i.i.i = select i1 %i.ag, i1 %i.bf, i1 false
  br i1 %or.cond.i.i23.i.i.i.i, label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh7_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.f

bb.f:                                             ; preds = %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i
  %.sroa.0104.0.copyload105.sroa.speculated.i.i.i.i = select i1 %i.ag, i64 1, i64 %.sroa.1524.0.copyload.i.i
  %.sroa.5106.0.copyload107.sroa.speculated.i.i.i.i = select i1 %i.ag, double %.val.i.i14.i.i.i, double %.sroa.1625.0.copyload.i.i
  %i.bg = insertelement <2 x i1> poison, i1 %i.ag, i64 0
  %i.bh = shufflevector <2 x i1> %i.bg, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bi = select <2 x i1> %i.bh, <2 x double> %i.an, <2 x double> %i.ao
  br label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh7_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.i

_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh7_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.f, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh7_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i
  %.sroa.168.0.copyload.i = phi double [ %.sroa.168.0.copyload.pre.i, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh7_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %.sroa.5106.0.copyload107.sroa.speculated.i.i.i.i, %bb.f ], [ %.val.i.i14.i.i.i, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ]
  %.sroa.15.0.copyload.i = phi i64 [ %.sroa.15.0.copyload.pre.i, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh7_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %.sroa.0104.0.copyload105.sroa.speculated.i.i.i.i, %bb.f ], [ 1, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ]
  %.sroa.126.0.copyload.i = phi double [ %.sroa.126.0.copyload.pre.i, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh7_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %.sroa.580.0.i.i.i.i, %bb.f ], [ %.sroa.580.0.i.i.i.i, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ]
  %.sroa.11.0.copyload.i = phi i64 [ %.sroa.11.0.copyload.pre.i, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh7_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %.sroa.078.0.i.i.i.i, %bb.f ], [ %.sroa.078.0.i.i.i.i, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ]
  %.sroa.84.0.copyload.i = phi double [ %.sroa.84.0.copyload.pre.i, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh7_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %.sroa.554.0.i.i.i.i, %bb.f ], [ %.sroa.554.0.i.i.i.i, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ]
  %.sroa.7.0.copyload.i = phi i64 [ %.sroa.7.0.copyload.pre.i, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh7_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %.sroa.052.0.i.i.i.i, %bb.f ], [ %.sroa.052.0.i.i.i.i, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ]
  %.sroa.42.0.copyload.i = phi double [ %.sroa.42.0.copyload.pre.i, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh7_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %.sroa.5.0.i.i.i.i, %bb.f ], [ %.sroa.5.0.i.i.i.i, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ]
  %.sroa.01.0.copyload.i = phi i64 [ %.sroa.01.0.copyload.pre.i, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh7_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %.sroa.0.0.i.i.i.i, %bb.f ], [ %.sroa.0.0.i.i.i.i, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ]
  %i.bj = phi <2 x double> [ %i.p, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh7_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %i.bi, %bb.f ], [ %i.an, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ] ; 2 uses
  %i.bk = phi <2 x double> [ %i.o, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh7_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %i.be, %bb.f ], [ %i.be, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ] ; 2 uses
  %i.bl = phi <2 x double> [ %i.n, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh7_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %i.az, %bb.f ], [ %i.az, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ] ; 2 uses
  %i.bm = phi <2 x double> [ %i.m, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh7_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %i.au, %bb.f ], [ %i.au, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !19966
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !19975
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.6.0.copyload, i64 24, i1 false), !noalias !19976
  %i.bn = trunc nuw i64 %.sroa.01.0.copyload.i to i1
  br i1 %i.bn, label %bb.g, label %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i

bb.g:                                             ; preds = %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh7_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.i
  %i.bo = extractelement <2 x double> %i.bm, i64 0
  %i.bp = call noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %.sroa.42.0.copyload.i, double noundef %i.bo, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !19977
  %i.bq = extractelement <2 x double> %i.bm, i64 1
  br label %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i

_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.g, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh7_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.0.0.i.i.i1.i = phi double [ %i.bq, %bb.g ], [ 0.000000e+00, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh7_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.i ]
  %.sroa.3.0.i.i.i.i = phi double [ %i.bp, %bb.g ], [ 0.000000e+00, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh7_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19975
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19978
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.6.0.copyload, i64 24, i1 false), !noalias !19979
  %i.br = trunc nuw i64 %.sroa.7.0.copyload.i to i1
  br i1 %i.br, label %bb.h, label %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i

bb.h:                                             ; preds = %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.bs = extractelement <2 x double> %i.bl, i64 0
  %i.bt = call noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %.sroa.84.0.copyload.i, double noundef %i.bs, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !19980
  %i.bu = extractelement <2 x double> %i.bl, i64 1
  br label %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i

_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i: ; preds = %bb.h, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi double [ %i.bu, %bb.h ], [ 0.000000e+00, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  %.sroa.3.0.i.i8.i.i = phi double [ %i.bt, %bb.h ], [ 0.000000e+00, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19978
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19981
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.6.0.copyload, i64 24, i1 false), !noalias !19982
  %i.bv = trunc nuw i64 %.sroa.11.0.copyload.i to i1
  br i1 %i.bv, label %bb.i, label %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i

bb.i:                                             ; preds = %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i
  %i.bw = extractelement <2 x double> %i.bk, i64 0
  %i.bx = call noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %.sroa.126.0.copyload.i, double noundef %i.bw, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !19983
  %i.by = extractelement <2 x double> %i.bk, i64 1
  br label %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i

_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i: ; preds = %bb.i, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i
  %.sroa.0.0.i.i16.i.i = phi double [ %i.by, %bb.i ], [ 0.000000e+00, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i ]
  %.sroa.3.0.i.i15.i.i = phi double [ %i.bx, %bb.i ], [ 0.000000e+00, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19981
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19984
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.6.0.copyload, i64 24, i1 false), !noalias !19985
  %i.bz = trunc nuw i64 %.sroa.15.0.copyload.i to i1
  br i1 %i.bz, label %bb.j, label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4box_10layout_boxs_0B7_.exit

bb.j:                                             ; preds = %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i
  %i.ca = extractelement <2 x double> %i.bj, i64 0
  %i.cb = call noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %.sroa.168.0.copyload.i, double noundef %i.ca, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !19986
  %i.cc = extractelement <2 x double> %i.bj, i64 1
  br label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4box_10layout_boxs_0B7_.exit

_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4box_10layout_boxs_0B7_.exit: ; preds = %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i, %bb.j
  %.sroa.0.0.i.i23.i.i = phi double [ %i.cc, %bb.j ], [ 0.000000e+00, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i ]
  %.sroa.3.0.i.i22.i.i = phi double [ %i.cb, %bb.j ], [ 0.000000e+00, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19984
  store i64 1, ptr %0, align 8
  store double %.sroa.0.0.i.i.i1.i, ptr %.sroa.5.0..sroa_idx, align 8
  store double %.sroa.3.0.i.i.i.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.43.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.sroa.0.0.i.i9.i.i, ptr %.sroa.43.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %.sroa.3.0.i.i8.i.i, ptr %.sroa.43.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sroa.0.0.i.i16.i.i, ptr %.sroa.43.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %.sroa.3.0.i.i15.i.i, ptr %.sroa.43.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %.sroa.0.0.i.i23.i.i, ptr %.sroa.43.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %.sroa.3.0.i.i22.i.i, ptr %.sroa.43.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  ret ptr %.sroa.5.0..sroa_idx

bb.k:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #53
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMNtNtCs3oUPovFnLWP_4core4cell4lazyINtB2_8LazyCellINtNtNtCsdaEETE4DqmE_13typst_library6layout7corners7CornersINtNtBT_3rel3RelNtNtBT_3abs3AbsEENCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow5block18layout_multi_blocks2_0E11really_initB2q_(ptr nofree noundef nonnull align 8 captures(ret: address, provenance) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [128 x i8], align 8               ; 19 uses
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 6 uses
  store i64 2, ptr %0, align 8
  %i.f = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.f, label %bb.b, label %bb.g, !prof !43

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %.sroa.5.0.copyload.val = load ptr, ptr %.sroa.5.0.copyload, align 8, !nonnull !41, !noundef !41
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.val, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20026
  call fastcc void @_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container9BlockElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %.sroa.6.0.copyload), !noalias !20027
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20028)
  %.sroa.031.0.copyload.i.i = load i64, ptr %i.e, align 8, !alias.scope !20028, !noalias !20026
  %.sroa.432.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.432.0.copyload.i.i = load double, ptr %.sroa.432.0..sroa_idx.i.i, align 8, !alias.scope !20028, !noalias !20026
  %.sroa.533.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.533.0.copyload.i.i = load double, ptr %.sroa.533.0..sroa_idx.i.i, align 8, !alias.scope !20028, !noalias !20026
  %.sroa.634.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.634.0.copyload.i.i = load double, ptr %.sroa.634.0..sroa_idx.i.i, align 8, !alias.scope !20028, !noalias !20026
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20029
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.6.0.copyload, i64 24, i1 false), !noalias !20030
  %i.h = trunc nuw i64 %.sroa.031.0.copyload.i.i to i1
  br i1 %i.h, label %bb.c, label %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = call noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %.sroa.432.0.copyload.i.i, double noundef %.sroa.533.0.copyload.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !20031
  br label %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i

_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi double [ %.sroa.634.0.copyload.i.i, %bb.c ], [ 0.000000e+00, %bb.b ]
  %.sroa.3.0.i.i.i.i = phi double [ %i.i, %bb.c ], [ 0.000000e+00, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20029
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.042.0.copyload.i.i = load i64, ptr %i.j, align 8, !alias.scope !20028, !noalias !20026
  %.sroa.443.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.443.0.copyload.i.i = load double, ptr %.sroa.443.0..sroa_idx.i.i, align 8, !alias.scope !20028, !noalias !20026
  %.sroa.544.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.544.0.copyload.i.i = load double, ptr %.sroa.544.0..sroa_idx.i.i, align 8, !alias.scope !20028, !noalias !20026
  %.sroa.645.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.645.0.copyload.i.i = load double, ptr %.sroa.645.0..sroa_idx.i.i, align 8, !alias.scope !20028, !noalias !20026
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.6.0.copyload, i64 24, i1 false), !noalias !20033
  %i.k = trunc nuw i64 %.sroa.042.0.copyload.i.i to i1
  br i1 %i.k, label %bb.d, label %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i

bb.d:                                             ; preds = %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.l = call noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %.sroa.443.0.copyload.i.i, double noundef %.sroa.544.0.copyload.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !20034
  br label %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i

_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i: ; preds = %bb.d, %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi double [ %.sroa.645.0.copyload.i.i, %bb.d ], [ 0.000000e+00, %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  %.sroa.3.0.i.i8.i.i = phi double [ %i.l, %bb.d ], [ 0.000000e+00, %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20032
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.053.0.copyload.i.i = load i64, ptr %i.m, align 8, !alias.scope !20028, !noalias !20026
  %.sroa.454.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.sroa.454.0.copyload.i.i = load double, ptr %.sroa.454.0..sroa_idx.i.i, align 8, !alias.scope !20028, !noalias !20026
  %.sroa.555.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.sroa.555.0.copyload.i.i = load double, ptr %.sroa.555.0..sroa_idx.i.i, align 8, !alias.scope !20028, !noalias !20026
  %.sroa.656.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.sroa.656.0.copyload.i.i = load double, ptr %.sroa.656.0..sroa_idx.i.i, align 8, !alias.scope !20028, !noalias !20026
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20035
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.6.0.copyload, i64 24, i1 false), !noalias !20036
  %i.n = trunc nuw i64 %.sroa.053.0.copyload.i.i to i1
  br i1 %i.n, label %bb.e, label %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i

bb.e:                                             ; preds = %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i
  %i.o = call noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %.sroa.454.0.copyload.i.i, double noundef %.sroa.555.0.copyload.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !20037
  br label %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i

_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i: ; preds = %bb.e, %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i
  %.sroa.0.0.i.i16.i.i = phi double [ %.sroa.656.0.copyload.i.i, %bb.e ], [ 0.000000e+00, %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i ]
  %.sroa.3.0.i.i15.i.i = phi double [ %i.o, %bb.e ], [ 0.000000e+00, %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20035
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.sroa.064.0.copyload.i.i = load i64, ptr %i.p, align 8, !alias.scope !20028, !noalias !20026
  %.sroa.465.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %.sroa.465.0.copyload.i.i = load double, ptr %.sroa.465.0..sroa_idx.i.i, align 8, !alias.scope !20028, !noalias !20026
  %.sroa.566.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %.sroa.566.0.copyload.i.i = load double, ptr %.sroa.566.0..sroa_idx.i.i, align 8, !alias.scope !20028, !noalias !20026
  %.sroa.667.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %.sroa.667.0.copyload.i.i = load double, ptr %.sroa.667.0..sroa_idx.i.i, align 8, !alias.scope !20028, !noalias !20026
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20038
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.6.0.copyload, i64 24, i1 false), !noalias !20039
  %i.q = trunc nuw i64 %.sroa.064.0.copyload.i.i to i1
  br i1 %i.q, label %bb.f, label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow5block18layout_multi_blocks2_0B7_.exit

bb.f:                                             ; preds = %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i
  %i.r = call noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %.sroa.465.0.copyload.i.i, double noundef %.sroa.566.0.copyload.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !20040
  br label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow5block18layout_multi_blocks2_0B7_.exit

_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow5block18layout_multi_blocks2_0B7_.exit: ; preds = %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i, %bb.f
  %.sroa.0.0.i.i23.i.i = phi double [ %.sroa.667.0.copyload.i.i, %bb.f ], [ 0.000000e+00, %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i ]
  %.sroa.3.0.i.i22.i.i = phi double [ %i.r, %bb.f ], [ 0.000000e+00, %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20026
  store i64 1, ptr %0, align 8
  store double %.sroa.0.0.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  store double %.sroa.3.0.i.i.i.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.43.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.sroa.0.0.i.i9.i.i, ptr %.sroa.43.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %.sroa.3.0.i.i8.i.i, ptr %.sroa.43.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sroa.0.0.i.i16.i.i, ptr %.sroa.43.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %.sroa.3.0.i.i15.i.i, ptr %.sroa.43.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %.sroa.0.0.i.i23.i.i, ptr %.sroa.43.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %.sroa.3.0.i.i22.i.i, ptr %.sroa.43.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  ret ptr %.sroa.5.0..sroa_idx

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #53
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMNtNtCs3oUPovFnLWP_4core4cell4lazyINtB2_8LazyCellINtNtNtCsdaEETE4DqmE_13typst_library6layout7corners7CornersINtNtBT_3rel3RelNtNtBT_3abs3AbsEENCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow5block19layout_single_blocks0_0E11really_initB2q_(ptr nofree noundef nonnull align 8 captures(ret: address, provenance) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [128 x i8], align 8               ; 19 uses
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 6 uses
  store i64 2, ptr %0, align 8
  %i.f = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.f, label %bb.b, label %bb.g, !prof !43

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %.sroa.5.0.copyload.val = load ptr, ptr %.sroa.5.0.copyload, align 8, !nonnull !41, !noundef !41
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.val, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20080
  call fastcc void @_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container9BlockElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %.sroa.6.0.copyload), !noalias !20081
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20082)
  %.sroa.031.0.copyload.i.i = load i64, ptr %i.e, align 8, !alias.scope !20082, !noalias !20080
  %.sroa.432.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.432.0.copyload.i.i = load double, ptr %.sroa.432.0..sroa_idx.i.i, align 8, !alias.scope !20082, !noalias !20080
  %.sroa.533.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.533.0.copyload.i.i = load double, ptr %.sroa.533.0..sroa_idx.i.i, align 8, !alias.scope !20082, !noalias !20080
  %.sroa.634.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.634.0.copyload.i.i = load double, ptr %.sroa.634.0..sroa_idx.i.i, align 8, !alias.scope !20082, !noalias !20080
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20083
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.6.0.copyload, i64 24, i1 false), !noalias !20084
  %i.h = trunc nuw i64 %.sroa.031.0.copyload.i.i to i1
  br i1 %i.h, label %bb.c, label %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = call noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %.sroa.432.0.copyload.i.i, double noundef %.sroa.533.0.copyload.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !20085
  br label %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i

_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi double [ %.sroa.634.0.copyload.i.i, %bb.c ], [ 0.000000e+00, %bb.b ]
  %.sroa.3.0.i.i.i.i = phi double [ %i.i, %bb.c ], [ 0.000000e+00, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20083
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.042.0.copyload.i.i = load i64, ptr %i.j, align 8, !alias.scope !20082, !noalias !20080
  %.sroa.443.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.443.0.copyload.i.i = load double, ptr %.sroa.443.0..sroa_idx.i.i, align 8, !alias.scope !20082, !noalias !20080
  %.sroa.544.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.544.0.copyload.i.i = load double, ptr %.sroa.544.0..sroa_idx.i.i, align 8, !alias.scope !20082, !noalias !20080
  %.sroa.645.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.645.0.copyload.i.i = load double, ptr %.sroa.645.0..sroa_idx.i.i, align 8, !alias.scope !20082, !noalias !20080
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.6.0.copyload, i64 24, i1 false), !noalias !20087
  %i.k = trunc nuw i64 %.sroa.042.0.copyload.i.i to i1
  br i1 %i.k, label %bb.d, label %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i

bb.d:                                             ; preds = %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.l = call noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %.sroa.443.0.copyload.i.i, double noundef %.sroa.544.0.copyload.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !20088
  br label %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i

_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i: ; preds = %bb.d, %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi double [ %.sroa.645.0.copyload.i.i, %bb.d ], [ 0.000000e+00, %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  %.sroa.3.0.i.i8.i.i = phi double [ %i.l, %bb.d ], [ 0.000000e+00, %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20086
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.053.0.copyload.i.i = load i64, ptr %i.m, align 8, !alias.scope !20082, !noalias !20080
  %.sroa.454.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.sroa.454.0.copyload.i.i = load double, ptr %.sroa.454.0..sroa_idx.i.i, align 8, !alias.scope !20082, !noalias !20080
  %.sroa.555.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.sroa.555.0.copyload.i.i = load double, ptr %.sroa.555.0..sroa_idx.i.i, align 8, !alias.scope !20082, !noalias !20080
  %.sroa.656.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.sroa.656.0.copyload.i.i = load double, ptr %.sroa.656.0..sroa_idx.i.i, align 8, !alias.scope !20082, !noalias !20080
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20089
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.6.0.copyload, i64 24, i1 false), !noalias !20090
  %i.n = trunc nuw i64 %.sroa.053.0.copyload.i.i to i1
  br i1 %i.n, label %bb.e, label %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i

bb.e:                                             ; preds = %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i
  %i.o = call noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %.sroa.454.0.copyload.i.i, double noundef %.sroa.555.0.copyload.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !20091
  br label %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i

_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i: ; preds = %bb.e, %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i
  %.sroa.0.0.i.i16.i.i = phi double [ %.sroa.656.0.copyload.i.i, %bb.e ], [ 0.000000e+00, %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i ]
  %.sroa.3.0.i.i15.i.i = phi double [ %i.o, %bb.e ], [ 0.000000e+00, %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20089
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.sroa.064.0.copyload.i.i = load i64, ptr %i.p, align 8, !alias.scope !20082, !noalias !20080
  %.sroa.465.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %.sroa.465.0.copyload.i.i = load double, ptr %.sroa.465.0..sroa_idx.i.i, align 8, !alias.scope !20082, !noalias !20080
  %.sroa.566.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %.sroa.566.0.copyload.i.i = load double, ptr %.sroa.566.0..sroa_idx.i.i, align 8, !alias.scope !20082, !noalias !20080
  %.sroa.667.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %.sroa.667.0.copyload.i.i = load double, ptr %.sroa.667.0..sroa_idx.i.i, align 8, !alias.scope !20082, !noalias !20080
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20092
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.6.0.copyload, i64 24, i1 false), !noalias !20093
  %i.q = trunc nuw i64 %.sroa.064.0.copyload.i.i to i1
  br i1 %i.q, label %bb.f, label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow5block19layout_single_blocks0_0B7_.exit

bb.f:                                             ; preds = %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i
  %i.r = call noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %.sroa.465.0.copyload.i.i, double noundef %.sroa.566.0.copyload.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !20094
  br label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow5block19layout_single_blocks0_0B7_.exit

_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow5block19layout_single_blocks0_0B7_.exit: ; preds = %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i, %bb.f
  %.sroa.0.0.i.i23.i.i = phi double [ %.sroa.667.0.copyload.i.i, %bb.f ], [ 0.000000e+00, %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i ]
  %.sroa.3.0.i.i22.i.i = phi double [ %i.r, %bb.f ], [ 0.000000e+00, %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20080
  store i64 1, ptr %0, align 8
  store double %.sroa.0.0.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  store double %.sroa.3.0.i.i.i.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.43.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.sroa.0.0.i.i9.i.i, ptr %.sroa.43.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %.sroa.3.0.i.i8.i.i, ptr %.sroa.43.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sroa.0.0.i.i16.i.i, ptr %.sroa.43.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %.sroa.3.0.i.i15.i.i, ptr %.sroa.43.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %.sroa.0.0.i.i23.i.i, ptr %.sroa.43.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %.sroa.3.0.i.i22.i.i, ptr %.sroa.43.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  ret ptr %.sroa.5.0..sroa_idx

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #53
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMNtNtCs3oUPovFnLWP_4core4cell4lazyINtB2_8LazyCellINtNtNtCsdaEETE4DqmE_13typst_library6layout7corners7CornersINtNtBT_3rel3RelNtNtBT_3abs3AbsEENCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4box_10layout_boxs0_0E11really_initB2q_(ptr nofree noundef nonnull align 8 captures(ret: address, provenance) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [128 x i8], align 8               ; 7 uses
  %i.f = alloca [128 x i8], align 8               ; 26 uses
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 6 uses
  store i64 2, ptr %0, align 8
  %i.g = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.g, label %bb.b, label %bb.k, !prof !43

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %.sroa.5.0.copyload.val = load ptr, ptr %.sroa.5.0.copyload, align 8, !nonnull !41, !noundef !41 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.val, i64 200
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20153)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20155
  store i64 0, ptr %i.e, align 8, !alias.scope !20156, !noalias !20155
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 0, ptr %i.i, align 8, !alias.scope !20156, !noalias !20155
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 0, ptr %i.j, align 8, !alias.scope !20156, !noalias !20155
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store i64 0, ptr %i.k, align 8, !alias.scope !20156, !noalias !20155
  call fastcc void @_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_foldedINtNtNtBa_6layout7corners7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1v_3rel3RelEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %.sroa.6.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout9container1__NtB9_7BoxElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 5, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(128) %i.e), !noalias !20157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20155
  %i.l = load i64, ptr %i.h, align 8, !range !52, !alias.scope !20153, !noalias !20158, !noundef !41 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 2
  %.sroa.01.0.copyload.pre.i = load i64, ptr %i.f, align 8, !noalias !20159 ; 3 uses
  br i1 %.not.i.i, label %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i, label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i

._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i: ; preds = %bb.b
  %.sroa.42.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.42.0.copyload.pre.i = load double, ptr %.sroa.42.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !20159
  %.sroa.5.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load <2 x double>, ptr %.sroa.5.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !20159
  %.sroa.7.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.7.0.copyload.pre.i = load i64, ptr %.sroa.7.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !20159
  %.sroa.84.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.84.0.copyload.pre.i = load double, ptr %.sroa.84.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !20159
  %.sroa.9.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.n = load <2 x double>, ptr %.sroa.9.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !20159
  %.sroa.11.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.sroa.11.0.copyload.pre.i = load i64, ptr %.sroa.11.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !20159
  %.sroa.126.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.sroa.126.0.copyload.pre.i = load double, ptr %.sroa.126.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !20159
  %.sroa.13.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.o = load <2 x double>, ptr %.sroa.13.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !20159
  %.sroa.15.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %.sroa.15.0.copyload.pre.i = load i64, ptr %.sroa.15.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !20159
  %.sroa.168.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %.sroa.168.0.copyload.pre.i = load double, ptr %.sroa.168.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !20159
  %.sroa.17.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.p = load <2 x double>, ptr %.sroa.17.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !20159
  br label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.i

_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %bb.b
  %i.q = trunc i64 %i.l to i1                     ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.val, i64 208
  %.val.i.i.i.i.i = load double, ptr %i.r, align 8, !alias.scope !20153, !noalias !20158 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.val, i64 216
  %i.t = load <2 x double>, ptr %i.s, align 8, !alias.scope !20153, !noalias !20158 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.val, i64 232
  %i.v = load i64, ptr %i.u, align 8, !range !49, !alias.scope !20160, !noalias !20158, !noundef !41
  %i.w = trunc nuw i64 %i.v to i1                 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.val, i64 240
  %.val.i.i2.i.i.i = load double, ptr %i.x, align 8, !alias.scope !20153, !noalias !20158 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.val, i64 248
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.val, i64 264
  %i.aa = load i64, ptr %i.z, align 8, !range !49, !alias.scope !20161, !noalias !20158, !noundef !41
  %i.ab = trunc nuw i64 %i.aa to i1               ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.val, i64 272
  %.val.i.i8.i.i.i = load double, ptr %i.ac, align 8, !alias.scope !20153, !noalias !20158 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.val, i64 280
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.val, i64 296
  %i.af = load i64, ptr %i.ae, align 8, !range !49, !alias.scope !20162, !noalias !20158, !noundef !41
  %i.ag = trunc nuw i64 %i.af to i1               ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.val, i64 304
  %.val.i.i14.i.i.i = load double, ptr %i.ah, align 8, !alias.scope !20153, !noalias !20158 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.val, i64 312
  %.sroa.716.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.716.0.copyload.i.i = load i64, ptr %.sroa.716.0..sroa_idx.i.i, align 8, !noalias !20154 ; 2 uses
  %.sroa.817.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.817.0.copyload.i.i = load double, ptr %.sroa.817.0..sroa_idx.i.i, align 8, !noalias !20154
  %.sroa.918.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.aj = load <2 x double>, ptr %i.y, align 8, !alias.scope !20153, !noalias !20158 ; 2 uses
  %i.ak = load <2 x double>, ptr %.sroa.918.0..sroa_idx.i.i, align 8, !noalias !20154
  %.sroa.1120.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.sroa.1120.0.copyload.i.i = load i64, ptr %.sroa.1120.0..sroa_idx.i.i, align 8, !noalias !20154 ; 2 uses
  %.sroa.1221.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.sroa.1221.0.copyload.i.i = load double, ptr %.sroa.1221.0..sroa_idx.i.i, align 8, !noalias !20154
  %.sroa.1322.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.al = load <2 x double>, ptr %i.ad, align 8, !alias.scope !20153, !noalias !20158 ; 2 uses
  %i.am = load <2 x double>, ptr %.sroa.1322.0..sroa_idx.i.i, align 8, !noalias !20154
  %.sroa.1524.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %.sroa.1524.0.copyload.i.i = load i64, ptr %.sroa.1524.0..sroa_idx.i.i, align 8, !noalias !20154 ; 2 uses
  %.sroa.1625.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %.sroa.1625.0.copyload.i.i = load double, ptr %.sroa.1625.0..sroa_idx.i.i, align 8, !noalias !20154
  %.sroa.1726.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.an = load <2 x double>, ptr %i.ai, align 8, !alias.scope !20153, !noalias !20158 ; 2 uses
  %i.ao = load <2 x double>, ptr %.sroa.1726.0..sroa_idx.i.i, align 8, !noalias !20154
  %i.ap = trunc nuw i64 %.sroa.01.0.copyload.pre.i to i1
  %or.cond.i.i.i.i.i.i = select i1 %i.q, i1 %i.ap, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %.sroa.514.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aq = load <2 x double>, ptr %.sroa.514.0..sroa_idx.i.i, align 8, !noalias !20154
  %.sroa.413.0.copyload.i.i = load double, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !20154
  %.sroa.0.0.copyload33.sroa.speculated.i.i.i.i = select i1 %i.q, i64 1, i64 %.sroa.01.0.copyload.pre.i
  %.sroa.5.0.copyload34.sroa.speculated.i.i.i.i = select i1 %i.q, double %.val.i.i.i.i.i, double %.sroa.413.0.copyload.i.i
  %i.ar = insertelement <2 x i1> poison, i1 %i.q, i64 0
  %i.as = shufflevector <2 x i1> %i.ar, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.at = select <2 x i1> %i.as, <2 x double> %i.t, <2 x double> %i.aq
  br label %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i

_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i: ; preds = %bb.c, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %.sroa.5.0.i.i.i.i = phi double [ %.sroa.5.0.copyload34.sroa.speculated.i.i.i.i, %bb.c ], [ %.val.i.i.i.i.i, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.0.0.copyload33.sroa.speculated.i.i.i.i, %bb.c ], [ 1, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ] ; 2 uses
  %i.au = phi <2 x double> [ %i.at, %bb.c ], [ %i.t, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ] ; 2 uses
  %i.av = trunc nuw i64 %.sroa.716.0.copyload.i.i to i1
  %or.cond.i.i3.i.i.i.i = select i1 %i.w, i1 %i.av, i1 false
  br i1 %or.cond.i.i3.i.i.i.i, label %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  %.sroa.052.0.copyload53.sroa.speculated.i.i.i.i = select i1 %i.w, i64 1, i64 %.sroa.716.0.copyload.i.i
  %.sroa.554.0.copyload55.sroa.speculated.i.i.i.i = select i1 %i.w, double %.val.i.i2.i.i.i, double %.sroa.817.0.copyload.i.i
  %i.aw = insertelement <2 x i1> poison, i1 %i.w, i64 0
  %i.ax = shufflevector <2 x i1> %i.aw, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ay = select <2 x i1> %i.ax, <2 x double> %i.aj, <2 x double> %i.ak
  br label %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i

_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i: ; preds = %bb.d, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  %.sroa.554.0.i.i.i.i = phi double [ %.sroa.554.0.copyload55.sroa.speculated.i.i.i.i, %bb.d ], [ %.val.i.i2.i.i.i, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ] ; 2 uses
  %.sroa.052.0.i.i.i.i = phi i64 [ %.sroa.052.0.copyload53.sroa.speculated.i.i.i.i, %bb.d ], [ 1, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ] ; 2 uses
  %i.az = phi <2 x double> [ %i.ay, %bb.d ], [ %i.aj, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ] ; 2 uses
  %i.ba = trunc nuw i64 %.sroa.1120.0.copyload.i.i to i1
  %or.cond.i.i13.i.i.i.i = select i1 %i.ab, i1 %i.ba, i1 false
  br i1 %or.cond.i.i13.i.i.i.i, label %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i
  %.sroa.078.0.copyload79.sroa.speculated.i.i.i.i = select i1 %i.ab, i64 1, i64 %.sroa.1120.0.copyload.i.i
  %.sroa.580.0.copyload81.sroa.speculated.i.i.i.i = select i1 %i.ab, double %.val.i.i8.i.i.i, double %.sroa.1221.0.copyload.i.i
  %i.bb = insertelement <2 x i1> poison, i1 %i.ab, i64 0
  %i.bc = shufflevector <2 x i1> %i.bb, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bd = select <2 x i1> %i.bc, <2 x double> %i.al, <2 x double> %i.am
  br label %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i

_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i: ; preds = %bb.e, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i
  %.sroa.580.0.i.i.i.i = phi double [ %.sroa.580.0.copyload81.sroa.speculated.i.i.i.i, %bb.e ], [ %.val.i.i8.i.i.i, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i ] ; 2 uses
  %.sroa.078.0.i.i.i.i = phi i64 [ %.sroa.078.0.copyload79.sroa.speculated.i.i.i.i, %bb.e ], [ 1, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i ] ; 2 uses
  %i.be = phi <2 x double> [ %i.bd, %bb.e ], [ %i.al, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i ] ; 2 uses
  %i.bf = trunc nuw i64 %.sroa.1524.0.copyload.i.i to i1
  %or.cond.i.i23.i.i.i.i = select i1 %i.ag, i1 %i.bf, i1 false
  br i1 %or.cond.i.i23.i.i.i.i, label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.f

bb.f:                                             ; preds = %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i
  %.sroa.0104.0.copyload105.sroa.speculated.i.i.i.i = select i1 %i.ag, i64 1, i64 %.sroa.1524.0.copyload.i.i
  %.sroa.5106.0.copyload107.sroa.speculated.i.i.i.i = select i1 %i.ag, double %.val.i.i14.i.i.i, double %.sroa.1625.0.copyload.i.i
  %i.bg = insertelement <2 x i1> poison, i1 %i.ag, i64 0
  %i.bh = shufflevector <2 x i1> %i.bg, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bi = select <2 x i1> %i.bh, <2 x double> %i.an, <2 x double> %i.ao
  br label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.i

_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.f, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i
  %.sroa.168.0.copyload.i = phi double [ %.sroa.168.0.copyload.pre.i, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %.sroa.5106.0.copyload107.sroa.speculated.i.i.i.i, %bb.f ], [ %.val.i.i14.i.i.i, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ]
  %.sroa.15.0.copyload.i = phi i64 [ %.sroa.15.0.copyload.pre.i, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %.sroa.0104.0.copyload105.sroa.speculated.i.i.i.i, %bb.f ], [ 1, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ]
  %.sroa.126.0.copyload.i = phi double [ %.sroa.126.0.copyload.pre.i, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %.sroa.580.0.i.i.i.i, %bb.f ], [ %.sroa.580.0.i.i.i.i, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ]
  %.sroa.11.0.copyload.i = phi i64 [ %.sroa.11.0.copyload.pre.i, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %.sroa.078.0.i.i.i.i, %bb.f ], [ %.sroa.078.0.i.i.i.i, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ]
  %.sroa.84.0.copyload.i = phi double [ %.sroa.84.0.copyload.pre.i, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %.sroa.554.0.i.i.i.i, %bb.f ], [ %.sroa.554.0.i.i.i.i, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ]
  %.sroa.7.0.copyload.i = phi i64 [ %.sroa.7.0.copyload.pre.i, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %.sroa.052.0.i.i.i.i, %bb.f ], [ %.sroa.052.0.i.i.i.i, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ]
  %.sroa.42.0.copyload.i = phi double [ %.sroa.42.0.copyload.pre.i, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %.sroa.5.0.i.i.i.i, %bb.f ], [ %.sroa.5.0.i.i.i.i, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ]
  %.sroa.01.0.copyload.i = phi i64 [ %.sroa.01.0.copyload.pre.i, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %.sroa.0.0.i.i.i.i, %bb.f ], [ %.sroa.0.0.i.i.i.i, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ]
  %i.bj = phi <2 x double> [ %i.p, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %i.bi, %bb.f ], [ %i.an, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ] ; 2 uses
  %i.bk = phi <2 x double> [ %i.o, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %i.be, %bb.f ], [ %i.be, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ] ; 2 uses
  %i.bl = phi <2 x double> [ %i.n, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %i.az, %bb.f ], [ %i.az, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ] ; 2 uses
  %i.bm = phi <2 x double> [ %i.m, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %i.au, %bb.f ], [ %i.au, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.6.0.copyload, i64 24, i1 false), !noalias !20164
  %i.bn = trunc nuw i64 %.sroa.01.0.copyload.i to i1
  br i1 %i.bn, label %bb.g, label %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i

bb.g:                                             ; preds = %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.i
  %i.bo = extractelement <2 x double> %i.bm, i64 0
  %i.bp = call noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %.sroa.42.0.copyload.i, double noundef %i.bo, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !20165
  %i.bq = extractelement <2 x double> %i.bm, i64 1
  br label %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i

_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.g, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.0.0.i.i.i1.i = phi double [ %i.bq, %bb.g ], [ 0.000000e+00, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.i ]
  %.sroa.3.0.i.i.i.i = phi double [ %i.bp, %bb.g ], [ 0.000000e+00, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.6.0.copyload, i64 24, i1 false), !noalias !20167
  %i.br = trunc nuw i64 %.sroa.7.0.copyload.i to i1
  br i1 %i.br, label %bb.h, label %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i

bb.h:                                             ; preds = %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.bs = extractelement <2 x double> %i.bl, i64 0
  %i.bt = call noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %.sroa.84.0.copyload.i, double noundef %i.bs, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !20168
  %i.bu = extractelement <2 x double> %i.bl, i64 1
  br label %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i

_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i: ; preds = %bb.h, %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi double [ %i.bu, %bb.h ], [ 0.000000e+00, %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  %.sroa.3.0.i.i8.i.i = phi double [ %i.bt, %bb.h ], [ 0.000000e+00, %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.6.0.copyload, i64 24, i1 false), !noalias !20170
  %i.bv = trunc nuw i64 %.sroa.11.0.copyload.i to i1
end_hunk_5
begin_hunk_6_@_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter6layout:bb.a
  %i.arz = load ptr, ptr %i.ary, align 8, !noalias !29879, !noundef !41 ; 2 uses
  %.not5.i76.i.i.i.i.i.i.i = icmp eq ptr %i.arz, null
  br i1 %.not5.i76.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1D_6layout3abs3AbsEEEbEECs7tN9tvpkfrg_12typst_layout.exit84.i.i.i.i.i.i.i, label %bb.jm

bb.jl:                                            ; preds = %bb.ji
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arx, i64 88 ; 2 uses
  %i.asb = load ptr, ptr %i.asa, align 8, !noalias !29879, !noundef !41 ; 2 uses
  %.not6.i80.i.i.i.i.i.i.i = icmp eq ptr %i.asb, null
  br i1 %.not6.i80.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1D_6layout3abs3AbsEEEbEECs7tN9tvpkfrg_12typst_layout.exit84.i.i.i.i.i.i.i, label %bb.jp

bb.jm:                                            ; preds = %bb.jk
  %i.asc = atomicrmw add ptr %i.arz, i64 1 monotonic, align 8, !noalias !29879
  %i.asd = icmp slt i64 %i.asc, 0
  br i1 %i.asd, label %bb.jo, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.ase = load ptr, ptr %i.ary, align 8, !noalias !29879, !nonnull !41, !noundef !41
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1D_6layout3abs3AbsEEEbEECs7tN9tvpkfrg_12typst_layout.exit84.i.i.i.i.i.i.i

bb.jo:                                            ; preds = %bb.jm
  call void @llvm.trap()
  unreachable

bb.jp:                                            ; preds = %bb.jl
  %i.asf = atomicrmw add ptr %i.asb, i64 1 monotonic, align 8, !noalias !29879
  %i.asg = icmp slt i64 %i.asf, 0
  br i1 %i.asg, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.ash = load ptr, ptr %i.asa, align 8, !noalias !29879, !nonnull !41, !noundef !41
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1D_6layout3abs3AbsEEEbEECs7tN9tvpkfrg_12typst_layout.exit84.i.i.i.i.i.i.i

bb.jr:                                            ; preds = %bb.jp
  call void @llvm.trap()
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1D_6layout3abs3AbsEEEbEECs7tN9tvpkfrg_12typst_layout.exit84.i.i.i.i.i.i.i: ; preds = %bb.jq, %bb.jn, %bb.jl, %bb.jk
  %.sink.i77.i.i.i.i.i.i.i = phi i64 [ 99, %bb.jq ], [ 99, %bb.jl ], [ 97, %bb.jk ], [ 97, %bb.jn ]
  %.sroa.0.0.i78.i.i.i.i.i.i.i = phi ptr [ %i.ash, %bb.jq ], [ null, %bb.jl ], [ null, %bb.jk ], [ %i.ase, %bb.jn ]
  %i.asi = getelementptr inbounds nuw i8, ptr %i.arx, i64 %.sink.i77.i.i.i.i.i.i.i
  %.sroa.3.0.i79.i.i.i.i.i.i.i = load i8, ptr %i.asi, align 1, !range !54, !noalias !29879, !noundef !41
  %i.asj = trunc nuw i8 %.sroa.3.0.i79.i.i.i.i.i.i.i to i1
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE3zipjECs7tN9tvpkfrg_12typst_layout.exit.sink.split.i.i.i.i.i.i.i

bb.js:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE3zipjECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i
  %i.ask = getelementptr inbounds nuw i8, ptr %i.aos, i64 144
  %i.asl = trunc nuw i64 %i.apa to i1
  %i.asm = add i64 %i.apc, 1
  %.sroa.046.0.i.i.i.i.i.i.i = select i1 %i.asl, i64 %i.asm, i64 1
  %i.asn = load i64, ptr %i.ask, align 8, !alias.scope !29878, !noalias !29869, !noundef !41 ; 2 uses
  %i.aso = icmp ult i64 %.sroa.046.0.i.i.i.i.i.i.i, %i.asn
  br i1 %i.aso, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %bb.js, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE3zipjECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i
  br i1 %i.arh, label %bb.jw, label %bb.jv

bb.ju:                                            ; preds = %bb.js
  %i.asp = icmp uge i64 %i.aot, %i.asn
  %or.cond3.i.i.i.i.i.i.i = or i1 %i.arh, %i.asp
  br i1 %or.cond3.i.i.i.i.i.i.i, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jt
  %.sroa.031.0.not.i.i.i.i.i.i.i = xor i1 %.sroa.031.0.i.i.i.i.i.i.i, true
  %.not.i.i75.i.i.i.i.i = xor i1 %.sroa.048.0.i.i.i.i.i.i.i, true
  %or.cond7.i.i.i.i.i.i.i = select i1 %.not.i.i75.i.i.i.i.i, i1 true, i1 %.sroa.052.0.i.i.i.i.i.i.i
  %or.cond66.i.i.i.i.i.i.i = select i1 %.sroa.031.0.not.i.i.i.i.i.i.i, i1 %or.cond7.i.i.i.i.i.i.i, i1 false ; 2 uses
  %.sroa.037.0.pre.i.i.i.i.i.i.i = select i1 %or.cond66.i.i.i.i.i.i.i, ptr %.sroa.051.0.i.i.i.i.i.i.i, ptr %.val.i.i.i.i.i.i233.i
  %.sroa.038.0.pre.i.i.i.i.i.i.i = select i1 %or.cond66.i.i.i.i.i.i.i, ptr %.val.i.i.i.i.i.i233.i, ptr %.sroa.051.0.i.i.i.i.i.i.i
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jv, %bb.ju, %bb.jt
  %.sroa.038.0.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i233.i, %bb.jt ], [ %.sroa.038.0.pre.i.i.i.i.i.i.i, %bb.jv ], [ %.val.i.i.i.i.i.i233.i, %bb.ju ] ; 3 uses
  %.sroa.037.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.051.0.i.i.i.i.i.i.i, %bb.jt ], [ %.sroa.037.0.pre.i.i.i.i.i.i.i, %bb.jv ], [ %.sroa.051.0.i.i.i.i.i.i.i, %bb.ju ] ; 3 uses
  %.not.i85.i.i.i.i.i.i.i = icmp eq ptr %.sroa.037.0.i.i.i.i.i.i.i, null ; 2 uses
  %.not7.i.i.i76.i.i.i.i.i = icmp eq ptr %.sroa.038.0.i.i.i.i.i.i.i, null
  %or.cond.i.i.i.i.i.i.i235.i = or i1 %.not7.i.i.i76.i.i.i.i.i, %.not.i85.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i235.i, label %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1m_6layout3abs3AbsEEE2orCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i, label %bb.jx

_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1m_6layout3abs3AbsEEE2orCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i: ; preds = %bb.jw
  %.mux.i.i.i.i.i.i.i.i = select i1 %.not.i85.i.i.i.i.i.i.i, ptr %.sroa.038.0.i.i.i.i.i.i.i, ptr %.sroa.037.0.i.i.i.i.i.i.i
  br label %_RNvXsz_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_15AlternativeFold7fold_orCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i

bb.jx:                                            ; preds = %bb.jw
  %i.asq = invoke fastcc noundef nonnull ptr @_RNvXsh_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEENtNtB7_6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull %.sroa.037.0.i.i.i.i.i.i.i, ptr noundef nonnull %.sroa.038.0.i.i.i.i.i.i.i)
          to label %._RNvXsz_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_15AlternativeFold7fold_orCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i.i.i.i.i.i.i unwind label %.thread.i.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !29879

._RNvXsz_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_15AlternativeFold7fold_orCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i.i.i.i.i.i.i: ; preds = %bb.jx
  %.pre127.i.i.i.i.i.i.i = load i64, ptr %i.ae, align 8, !range !49, !noalias !29877
  br label %_RNvXsz_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_15AlternativeFold7fold_orCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i

_RNvXsz_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_15AlternativeFold7fold_orCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i: ; preds = %._RNvXsz_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_15AlternativeFold7fold_orCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i.i.i.i.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1m_6layout3abs3AbsEEE2orCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i
  %i.asr = phi i64 [ %i.ark, %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1m_6layout3abs3AbsEEE2orCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i ], [ %.pre127.i.i.i.i.i.i.i, %._RNvXsz_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_15AlternativeFold7fold_orCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i.i.i.i.i.i.i ]
  %.sroa.06.0.i.i.i.i.i.i.i.i = phi ptr [ %.mux.i.i.i.i.i.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1m_6layout3abs3AbsEEE2orCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i ], [ %i.asq, %._RNvXsz_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_15AlternativeFold7fold_orCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i.i.i.i.i.i.i ] ; 5 uses
  %i.ass = load ptr, ptr %i.sx, align 8, !noalias !29877 ; 6 uses
  %i.ast = trunc nuw i64 %i.asr to i1
  br i1 %i.ast, label %bb.jy, label %bb.kd

bb.jy:                                            ; preds = %_RNvXsz_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_15AlternativeFold7fold_orCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !29877
  store ptr %i.ass, ptr %i.z, align 8, !noalias !29877
  store ptr %.sroa.06.0.i.i.i.i.i.i.i.i, ptr %i.td, align 8, !noalias !29877
  %.not.i.i.i.i.i.i.i.i240.i = icmp eq ptr %i.ass, null
  %.not2.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i.i.i.i.i, null ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %.not2.i.i.i.i.i.i.i.i.i, %.not.i.i.i.i.i.i.i.i240.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.jz, label %bb.ka

bb.jz:                                            ; preds = %bb.jy
  br i1 %.not2.i.i.i.i.i.i.i.i.i, label %_RNvXsv_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i, label %bb.kb

bb.ka:                                            ; preds = %bb.jy
  %i.asu = invoke fastcc noundef nonnull ptr @_RNvXsh_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEENtNtB7_6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull %i.ass, ptr noundef nonnull %.sroa.06.0.i.i.i.i.i.i.i.i)
          to label %_RNvXsv_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !29885

bb.kb:                                            ; preds = %bb.jz
  %i.asv = atomicrmw add ptr %.sroa.06.0.i.i.i.i.i.i.i.i, i64 -1 release, align 8, !noalias !29886
  %i.asw = icmp eq i64 %i.asv, 1
  br i1 %i.asw, label %bb.kc, label %_RNvXsv_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i

bb.kc:                                            ; preds = %bb.kb
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtBN_6layout3abs3AbsEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.td) #58
          to label %_RNvXsv_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !29885

_RNvXsv_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i: ; preds = %bb.kc, %bb.kb, %bb.ka, %bb.jz
  %.sroa.0.0.i.i.i.i.i.i.i.i241.i = phi ptr [ %i.asu, %bb.ka ], [ %i.ass, %bb.jz ], [ %i.ass, %bb.kb ], [ %i.ass, %bb.kc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !29877
  br label %bb.kd

bb.kd:                                            ; preds = %_RNvXsv_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i, %_RNvXsz_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_15AlternativeFold7fold_orCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i
  %.sroa.0.0.i.pn.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i.i241.i, %_RNvXsv_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i ], [ %.sroa.06.0.i.i.i.i.i.i.i.i, %_RNvXsz_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_15AlternativeFold7fold_orCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i ] ; 8 uses
  %.not.i89.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.pn.i.i.i.i.i.i.i.i, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !29877
  br i1 %.not.i89.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i, label %bb.md

bb.ke:                                            ; preds = %bb.kj, %bb.kg
  %i.asx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !29879
  unreachable

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.jf, %bb.jh, %bb.jj
  %lpad.loopexit.split-lp3085 = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.asy = icmp eq ptr %.val.i.i.i.i.i.i233.i, null
  br i1 %i.asy, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1C_6layout3abs3AbsEEEECs7tN9tvpkfrg_12typst_layout.exit92.i.i.i.i.i.i.i, label %bb.kf

bb.kf:                                            ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %i.asz = atomicrmw add ptr %.val.i.i.i.i.i.i233.i, i64 -1 release, align 8, !noalias !29887
  %i.ata = icmp eq i64 %i.asz, 1
  br i1 %i.ata, label %bb.kg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1C_6layout3abs3AbsEEEECs7tN9tvpkfrg_12typst_layout.exit92.i.i.i.i.i.i.i

bb.kg:                                            ; preds = %bb.kf
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtBN_6layout3abs3AbsEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1C_6layout3abs3AbsEEEECs7tN9tvpkfrg_12typst_layout.exit92.i.i.i.i.i.i.i unwind label %bb.ke, !noalias !29879

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1C_6layout3abs3AbsEEEECs7tN9tvpkfrg_12typst_layout.exit92.i.i.i.i.i.i.i: ; preds = %.thread.i.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.kg, %bb.kf, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %.pn.pn101.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp3085, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp3085, %bb.kf ], [ %lpad.loopexit.split-lp3085, %bb.kg ], [ %lpad.loopexit.split-lp3079, %.thread.i.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29888)
  %i.atb = load i64, ptr %i.ae, align 8, !range !49, !alias.scope !29888, !noalias !29889, !noundef !41
  %i.atc = icmp eq i64 %i.atb, 0
  br i1 %i.atc, label %.body.i236.i, label %bb.kh

bb.kh:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1C_6layout3abs3AbsEEEECs7tN9tvpkfrg_12typst_layout.exit92.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !29890), !noalias !29891
  %i.atd = load ptr, ptr %i.sx, align 8, !alias.scope !29892, !noalias !29889, !noundef !41 ; 2 uses
  %i.ate = icmp eq ptr %i.atd, null
  br i1 %i.ate, label %.body.i236.i, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.atf = atomicrmw add ptr %i.atd, i64 -1 release, align 8, !noalias !29893
  %i.atg = icmp eq i64 %i.atf, 1
  br i1 %i.atg, label %bb.kj, label %.body.i236.i

bb.kj:                                            ; preds = %bb.ki
  fence acquire, !noalias !29891
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtBN_6layout3abs3AbsEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.sx) #58
          to label %.body.i236.i unwind label %bb.ke, !noalias !29885

bb.kk:                                            ; preds = %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4findQNCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_NtNtB20_3abs3AbsEEEBO_E00EB36_.exit.i.jt1.i.i.i.i
  %i.ath = atomicrmw add ptr %i.aon, i64 1 monotonic, align 8, !noalias !29869
  %i.ati = icmp slt i64 %i.ath, 0
  br i1 %i.ati, label %.loopexit.i.i.i.i, label %bb.ma

bb.kl:                                            ; preds = %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4findQNCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_NtNtB20_3abs3AbsEEEBO_E00EB36_.exit.i.jt0.i.i.i.i
  %i.atj = atomicrmw add ptr %i.aop, i64 1 monotonic, align 8, !noalias !29869
  %i.atk = icmp slt i64 %i.atj, 0
  br i1 %i.atk, label %.loopexit.i.i.i.i, label %bb.mb

bb.km:                                            ; preds = %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4findQNCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_NtNtB20_3abs3AbsEEEBO_E00EB36_.exit.i.jt2.i.i.i.i
  %i.atl = atomicrmw add ptr %i.aor, i64 1 monotonic, align 8, !noalias !29869
  %i.atm = icmp slt i64 %i.atl, 0
  br i1 %i.atm, label %.loopexit.i.i.i.i, label %bb.mc

bb.kn:                                            ; preds = %bb.ma, %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4findQNCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_NtNtB20_3abs3AbsEEEBO_E00EB36_.exit.i.jt1.i.i.i.i
  %.sroa.045.0.i.jt1.i.i.i.i = phi ptr [ null, %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4findQNCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_NtNtB20_3abs3AbsEEEBO_E00EB36_.exit.i.jt1.i.i.i.i ], [ %i.ayq, %bb.ma ] ; 3 uses
  %.not.i.i.i86.i.i.i.i.i = icmp eq ptr %.sroa.9.5.i.jt1.i.i.i.i, null
  br i1 %.not.i.i.i86.i.i.i.i.i, label %_RINvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB6_6FilterINtNtNtBc_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2B_12GridLayouter20render_fills_strokess9_0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1B_9visualize6stroke6StrokeNtNtB1z_3abs3AbsEEEQQQNCINvB6_11filter_foldRB1t_B4J_NCNCINvNtB2D_5lines22generate_line_segmentsNCB2w_sc_0INtNtB8_9enumerate9EnumerateINtNtB8_6copied6CopiedIB14_B6c_EEEINtNtB8_5chain5ChainIB8U_IB8U_BQ_IBR_B13_NCB2w_s8_0EEIBR_B13_NCB2w_sa_0EEIBR_B13_NCB2w_sb_0EEE00NCINvNtB8_3map8map_foldB6T_B4J_B4J_NCB74_s_0NCNCB74_s0_00E0E0EB2F_.exit.i.i.i.i.i.i.i.i, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !29894)
  %i.atn = icmp eq ptr %.sroa.9.5.i.jt1.i.i.i.i, %.sroa.5.sroa.0.0.i.i.i.i.i.i.i.i
  br i1 %i.atn, label %_RINvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB6_6FilterINtNtNtBc_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2B_12GridLayouter20render_fills_strokess9_0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1B_9visualize6stroke6StrokeNtNtB1z_3abs3AbsEEEQQQNCINvB6_11filter_foldRB1t_B4J_NCNCINvNtB2D_5lines22generate_line_segmentsNCB2w_sc_0INtNtB8_9enumerate9EnumerateINtNtB8_6copied6CopiedIB14_B6c_EEEINtNtB8_5chain5ChainIB8U_IB8U_BQ_IBR_B13_NCB2w_s8_0EEIBR_B13_NCB2w_sa_0EEIBR_B13_NCB2w_sb_0EEE00NCINvNtB8_3map8map_foldB6T_B4J_B4J_NCB74_s_0NCNCB74_s0_00E0E0EB2F_.exit.i.i.i.i.i.i.i.i, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.ato = ptrtoint ptr %.sroa.5.sroa.0.0.i.i.i.i.i.i.i.i to i64
  %i.atp = ptrtoint ptr %.sroa.9.5.i.jt1.i.i.i.i to i64
  %i.atq = sub nuw i64 %i.ato, %i.atp
  %i.atr = udiv exact i64 %i.atq, 40
  %i.ats = load i8, ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i.i.i, align 1, !range !54, !alias.scope !29894, !noalias !29895, !noundef !41
  %i.att = getelementptr inbounds nuw i8, ptr %i.akr, i64 176
  br label %bb.kq

bb.kq:                                            ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokess9_0QQQNCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7T_IB7T_INtB4_6FilterIB7m_B12_EB3O_EIB8n_B8z_NCB3Q_s8_0EEIB8n_B8z_NCB3Q_sa_0EEIB8n_B8z_NCB3Q_sb_0EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5I_s_0NCNCB5I_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i.i.i, %bb.kp
  %.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.045.0.i.jt1.i.i.i.i, %bb.kp ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokess9_0QQQNCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7T_IB7T_INtB4_6FilterIB7m_B12_EB3O_EIB8n_B8z_NCB3Q_s8_0EEIB8n_B8z_NCB3Q_sa_0EEIB8n_B8z_NCB3Q_sb_0EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5I_s_0NCNCB5I_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i.i.i ] ; 8 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.kp ], [ %i.aur, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokess9_0QQQNCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7T_IB7T_INtB4_6FilterIB7m_B12_EB3O_EIB8n_B8z_NCB3Q_s8_0EEIB8n_B8z_NCB3Q_sa_0EEIB8n_B8z_NCB3Q_sb_0EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5I_s_0NCNCB5I_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.atu = getelementptr inbounds nuw [40 x i8], ptr %.sroa.9.5.i.jt1.i.i.i.i, i64 %.sroa.02.0.i.i.i.i.i.i.i.i.i.i ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29896)
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atu, i64 32
  %i.atw = load i8, ptr %i.atv, align 8, !range !54, !alias.scope !29896, !noalias !29897, !noundef !41
  %i.atx = icmp eq i8 %i.atw, %i.ats
  br i1 %i.atx, label %bb.kr, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokess9_0QQQNCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7T_IB7T_INtB4_6FilterIB7m_B12_EB3O_EIB8n_B8z_NCB3Q_s8_0EEIB8n_B8z_NCB3Q_sa_0EEIB8n_B8z_NCB3Q_sb_0EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5I_s_0NCNCB5I_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i.i.i

bb.kr:                                            ; preds = %bb.kq
  call void @llvm.experimental.noalias.scope.decl(metadata !29898)
  call void @llvm.experimental.noalias.scope.decl(metadata !29899)
  call void @llvm.experimental.noalias.scope.decl(metadata !29900)
  call void @llvm.experimental.noalias.scope.decl(metadata !29901)
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atu, i64 16
  %i.atz = load i64, ptr %i.aty, align 8, !alias.scope !29902, !noalias !29903, !noundef !41 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i93.i.i.i.i.i = icmp eq i64 %i.atz, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i93.i.i.i.i.i, label %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE00Ba_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.kr
  %i.aua = load i8, ptr %i.att, align 8, !range !54, !noalias !29904, !noundef !41
  %i.aub = trunc nuw i8 %i.aua to i1
  %i.auc = shl i64 %i.atz, 1
  %i.aud = add i64 %i.auc, -1
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.aub, i64 %i.aud, i64 %i.atz
  %i.aue = getelementptr inbounds nuw i8, ptr %i.atu, i64 8
  %i.auf = load i64, ptr %i.aue, align 8, !alias.scope !29902, !noalias !29903, !noundef !41
  %i.aug = mul i64 %i.auf, %i.aol
  %.not.i.i.i.i.i.i.i.i.i.i.i.i94.i.i.i.i.i = icmp ule i64 %i.aug, %i.akf
  %i.auh = icmp ult i64 %i.akf, %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i94.i.i.i.i.i, i1 %i.auh, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ks, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokess9_0QQQNCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7T_IB7T_INtB4_6FilterIB7m_B12_EB3O_EIB8n_B8z_NCB3Q_s8_0EEIB8n_B8z_NCB3Q_sa_0EEIB8n_B8z_NCB3Q_sb_0EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5I_s_0NCNCB5I_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i.i.i

_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE00Ba_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.kr
  %i.aui = getelementptr inbounds nuw i8, ptr %i.atu, i64 8
  %i.auj = load i64, ptr %i.aui, align 8, !alias.scope !29902, !noalias !29903, !noundef !41
  %i.auk = mul i64 %i.auj, %i.aol
  %.not.i.i.i.i.i.i.i.i.i.i95.i.i.i.i.i = icmp ult i64 %i.akf, %i.auk
  br i1 %.not.i.i.i.i.i.i.i.i.i.i95.i.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokess9_0QQQNCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7T_IB7T_INtB4_6FilterIB7m_B12_EB3O_EIB8n_B8z_NCB3Q_s8_0EEIB8n_B8z_NCB3Q_sa_0EEIB8n_B8z_NCB3Q_sb_0EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5I_s_0NCNCB5I_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i.i.i, label %bb.ks

bb.ks:                                            ; preds = %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE00Ba_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aul = getelementptr inbounds nuw i8, ptr %i.atu, i64 24
  %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aul, align 8, !alias.scope !29902, !noalias !29897, !noundef !41 ; 4 uses
  %.not.i.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE0s_0Ba_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.kt

_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE0s_0Ba_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ks
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !29905
  store ptr null, ptr %i.y, align 8, !noalias !29905
  store ptr %.0.i.i.i.i.i.i.i.i.i.i, ptr %i.st, align 8, !noalias !29905
  %.not2.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.0.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not2.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB13_9visualize6stroke6StrokeNtNtB11_3abs3AbsEEEB1V_NCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB3U_8layouterNtB54_12GridLayouter20render_fills_strokessc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3o_EEEINtNtB6_5chain5ChainIB7p_IB7p_INtNtB6_6filter6FilterIB6S_BV_ENCB4Z_s9_0EIB7T_B8e_NCB4Z_s8_0EEIB7T_B8e_NCB4Z_sa_0EEIB7T_B8e_NCB4Z_sb_0EEE0s_0NCNCB3N_s0_00E0B3W_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.kw

bb.kt:                                            ; preds = %bb.ks
  %i.aum = atomicrmw add ptr %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1 monotonic, align 8, !noalias !29906
  %i.aun = icmp slt i64 %i.aum, 0
  br i1 %i.aun, label %bb.ku, label %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE0s_0Ba_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ku:                                            ; preds = %bb.kt
  call void @llvm.trap()
  unreachable

_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE0s_0Ba_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.kt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !29905
  %.not2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.0.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB13_9visualize6stroke6StrokeNtNtB11_3abs3AbsEEEB1V_NCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB3U_8layouterNtB54_12GridLayouter20render_fills_strokessc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3o_EEEINtNtB6_5chain5ChainIB7p_IB7p_INtNtB6_6filter6FilterIB6S_BV_ENCB4Z_s9_0EIB7T_B8e_NCB4Z_s8_0EEIB7T_B8e_NCB4Z_sa_0EEIB7T_B8e_NCB4Z_sb_0EEE0s_0NCNCB3N_s0_00E0B3W_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.kv

bb.kv:                                            ; preds = %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE0s_0Ba_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.auo = invoke fastcc noundef nonnull ptr @_RNvXsh_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEENtNtB7_6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull %.0.i.i.i.i.i.i.i.i.i.i)
          to label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB13_9visualize6stroke6StrokeNtNtB11_3abs3AbsEEEB1V_NCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB3U_8layouterNtB54_12GridLayouter20render_fills_strokessc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3o_EEEINtNtB6_5chain5ChainIB7p_IB7p_INtNtB6_6filter6FilterIB6S_BV_ENCB4Z_s9_0EIB7T_B8e_NCB4Z_s8_0EEIB7T_B8e_NCB4Z_sa_0EEIB7T_B8e_NCB4Z_sb_0EEE0s_0NCNCB3N_s0_00E0B3W_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !29885

bb.kw:                                            ; preds = %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE0s_0Ba_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aup = atomicrmw add ptr %.0.i.i.i.i.i.i.i.i.i.i, i64 -1 release, align 8, !noalias !29907
  %i.auq = icmp eq i64 %i.aup, 1
  br i1 %i.auq, label %bb.kx, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB13_9visualize6stroke6StrokeNtNtB11_3abs3AbsEEEB1V_NCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB3U_8layouterNtB54_12GridLayouter20render_fills_strokessc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3o_EEEINtNtB6_5chain5ChainIB7p_IB7p_INtNtB6_6filter6FilterIB6S_BV_ENCB4Z_s9_0EIB7T_B8e_NCB4Z_s8_0EEIB7T_B8e_NCB4Z_sa_0EEIB7T_B8e_NCB4Z_sb_0EEE0s_0NCNCB3N_s0_00E0B3W_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.kx:                                            ; preds = %bb.kw
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtBN_6layout3abs3AbsEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.st) #58
          to label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB13_9visualize6stroke6StrokeNtNtB11_3abs3AbsEEEB1V_NCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB3U_8layouterNtB54_12GridLayouter20render_fills_strokessc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3o_EEEINtNtB6_5chain5ChainIB7p_IB7p_INtNtB6_6filter6FilterIB6S_BV_ENCB4Z_s9_0EIB7T_B8e_NCB4Z_s8_0EEIB7T_B8e_NCB4Z_sa_0EEIB7T_B8e_NCB4Z_sb_0EEE0s_0NCNCB3N_s0_00E0B3W_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !29885

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB13_9visualize6stroke6StrokeNtNtB11_3abs3AbsEEEB1V_NCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB3U_8layouterNtB54_12GridLayouter20render_fills_strokessc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3o_EEEINtNtB6_5chain5ChainIB7p_IB7p_INtNtB6_6filter6FilterIB6S_BV_ENCB4Z_s9_0EIB7T_B8e_NCB4Z_s8_0EEIB7T_B8e_NCB4Z_sa_0EEIB7T_B8e_NCB4Z_sb_0EEE0s_0NCNCB3N_s0_00E0B3W_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.kx, %bb.kw, %bb.kv, %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE0s_0Ba_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE0s_0Ba_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ null, %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE0s_0Ba_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.auo, %bb.kv ], [ null, %bb.kw ], [ %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE0s_0Ba_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ null, %bb.kx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !29905
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokess9_0QQQNCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7T_IB7T_INtB4_6FilterIB7m_B12_EB3O_EIB8n_B8z_NCB3Q_s8_0EEIB8n_B8z_NCB3Q_sa_0EEIB8n_B8z_NCB3Q_sb_0EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5I_s_0NCNCB5I_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokess9_0QQQNCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7T_IB7T_INtB4_6FilterIB7m_B12_EB3O_EIB8n_B8z_NCB3Q_s8_0EEIB8n_B8z_NCB3Q_sa_0EEIB8n_B8z_NCB3Q_sb_0EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5I_s_0NCNCB5I_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB13_9visualize6stroke6StrokeNtNtB11_3abs3AbsEEEB1V_NCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB3U_8layouterNtB54_12GridLayouter20render_fills_strokessc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3o_EEEINtNtB6_5chain5ChainIB7p_IB7p_INtNtB6_6filter6FilterIB6S_BV_ENCB4Z_s9_0EIB7T_B8e_NCB4Z_s8_0EEIB7T_B8e_NCB4Z_sa_0EEIB7T_B8e_NCB4Z_sb_0EEE0s_0NCNCB3N_s0_00E0B3W_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE00Ba_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kq
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i.i.i.i.i.i, %bb.kq ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB13_9visualize6stroke6StrokeNtNtB11_3abs3AbsEEEB1V_NCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB3U_8layouterNtB54_12GridLayouter20render_fills_strokessc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3o_EEEINtNtB6_5chain5ChainIB7p_IB7p_INtNtB6_6filter6FilterIB6S_BV_ENCB4Z_s9_0EIB7T_B8e_NCB4Z_s8_0EEIB7T_B8e_NCB4Z_sa_0EEIB7T_B8e_NCB4Z_sb_0EEE0s_0NCNCB3N_s0_00E0B3W_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i, %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE00Ba_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.aur = add nuw i64 %.sroa.02.0.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.aus = icmp eq i64 %i.aur, %i.atr
  br i1 %i.aus, label %_RINvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB6_6FilterINtNtNtBc_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2B_12GridLayouter20render_fills_strokess9_0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1B_9visualize6stroke6StrokeNtNtB1z_3abs3AbsEEEQQQNCINvB6_11filter_foldRB1t_B4J_NCNCINvNtB2D_5lines22generate_line_segmentsNCB2w_sc_0INtNtB8_9enumerate9EnumerateINtNtB8_6copied6CopiedIB14_B6c_EEEINtNtB8_5chain5ChainIB8U_IB8U_BQ_IBR_B13_NCB2w_s8_0EEIBR_B13_NCB2w_sa_0EEIBR_B13_NCB2w_sb_0EEE00NCINvNtB8_3map8map_foldB6T_B4J_B4J_NCB74_s_0NCNCB74_s0_00E0E0EB2F_.exit.i.i.i.i.i.i.i.i, label %bb.kq

_RINvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB6_6FilterINtNtNtBc_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2B_12GridLayouter20render_fills_strokess9_0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1B_9visualize6stroke6StrokeNtNtB1z_3abs3AbsEEEQQQNCINvB6_11filter_foldRB1t_B4J_NCNCINvNtB2D_5lines22generate_line_segmentsNCB2w_sc_0INtNtB8_9enumerate9EnumerateINtNtB8_6copied6CopiedIB14_B6c_EEEINtNtB8_5chain5ChainIB8U_IB8U_BQ_IBR_B13_NCB2w_s8_0EEIBR_B13_NCB2w_sa_0EEIBR_B13_NCB2w_sb_0EEE00NCINvNtB8_3map8map_foldB6T_B4J_B4J_NCB74_s_0NCNCB74_s0_00E0E0EB2F_.exit.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokess9_0QQQNCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7T_IB7T_INtB4_6FilterIB7m_B12_EB3O_EIB8n_B8z_NCB3Q_s8_0EEIB8n_B8z_NCB3Q_sa_0EEIB8n_B8z_NCB3Q_sb_0EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5I_s_0NCNCB5I_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i.i.i, %bb.ko, %bb.kn
  %.sroa.0.0.i.i.i.i.i.i.i.i113 = phi ptr [ %.sroa.045.0.i.jt1.i.i.i.i, %bb.kn ], [ %.sroa.045.0.i.jt1.i.i.i.i, %bb.ko ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokess9_0QQQNCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7T_IB7T_INtB4_6FilterIB7m_B12_EB3O_EIB8n_B8z_NCB3Q_s8_0EEIB8n_B8z_NCB3Q_sa_0EEIB8n_B8z_NCB3Q_sb_0EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5I_s_0NCNCB5I_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.not7.i.i.i87.i.i.i.i.i = icmp eq ptr %.sroa.14.5.i.jt1.i.i.i.i, null
  br i1 %.not7.i.i.i87.i.i.i.i.i, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2U_12GridLayouter20render_fills_strokess9_0EIB11_B1m_NCB2P_s8_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1U_9visualize6stroke6StrokeNtNtB1S_3abs3AbsEEEQQNCINvB13_11filter_foldRB1M_B5n_NCNCINvNtB2W_5lines22generate_line_segmentsNCB2P_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1n_B6Q_EEEIBP_IBP_BO_IB11_B1m_NCB2P_sa_0EEIB11_B1m_NCB2P_sb_0EEE00NCINvNtB7_3map8map_foldB7x_B5n_B5n_NCB7I_s_0NCNCB7I_s0_00E0E0EB2Y_.exit.i.i.i.i.i.i.i, label %bb.ky

bb.ky:                                            ; preds = %_RINvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB6_6FilterINtNtNtBc_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2B_12GridLayouter20render_fills_strokess9_0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1B_9visualize6stroke6StrokeNtNtB1z_3abs3AbsEEEQQQNCINvB6_11filter_foldRB1t_B4J_NCNCINvNtB2D_5lines22generate_line_segmentsNCB2w_sc_0INtNtB8_9enumerate9EnumerateINtNtB8_6copied6CopiedIB14_B6c_EEEINtNtB8_5chain5ChainIB8U_IB8U_BQ_IBR_B13_NCB2w_s8_0EEIBR_B13_NCB2w_sa_0EEIBR_B13_NCB2w_sb_0EEE00NCINvNtB8_3map8map_foldB6T_B4J_B4J_NCB74_s_0NCNCB74_s0_00E0E0EB2F_.exit.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.55.sroa.0.0.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.55.sroa.4.0.i.i.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !29908)
  %i.aut = icmp eq ptr %.sroa.14.5.i.jt1.i.i.i.i, %.sroa.55.sroa.0.0.i.i.i.i.i.i.i.i
  br i1 %i.aut, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2U_12GridLayouter20render_fills_strokess9_0EIB11_B1m_NCB2P_s8_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1U_9visualize6stroke6StrokeNtNtB1S_3abs3AbsEEEQQNCINvB13_11filter_foldRB1M_B5n_NCNCINvNtB2W_5lines22generate_line_segmentsNCB2P_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1n_B6Q_EEEIBP_IBP_BO_IB11_B1m_NCB2P_sa_0EEIB11_B1m_NCB2P_sb_0EEE00NCINvNtB7_3map8map_foldB7x_B5n_B5n_NCB7I_s_0NCNCB7I_s0_00E0E0EB2Y_.exit.i.i.i.i.i.i.i, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.auu = ptrtoint ptr %.sroa.55.sroa.0.0.i.i.i.i.i.i.i.i to i64
  %i.auv = ptrtoint ptr %.sroa.14.5.i.jt1.i.i.i.i to i64
  %i.auw = sub nuw i64 %i.auu, %i.auv
  %i.aux = udiv exact i64 %i.auw, 40
  %i.auy = load i8, ptr %.sroa.55.sroa.4.0.i.i.i.i.i.i.i.i, align 1, !range !54, !alias.scope !29908, !noalias !29909, !noundef !41
  %i.auz = getelementptr inbounds nuw i8, ptr %i.akr, i64 176
  %i.ava = load i64, ptr %.sroa.21537.0..sroa_idx.i, align 8, !alias.scope !29910, !noalias !29758 ; 2 uses
  br label %bb.la

bb.la:                                            ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokess8_0QQNCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7S_IB7S_INtB4_6FilterIB7l_B12_ENCB3Q_s9_0EIB8m_B8y_B3O_EEIB8m_B8y_NCB3Q_sa_0EEIB8m_B8y_NCB3Q_sb_0EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5H_s_0NCNCB5H_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i.i.i, %bb.kz
  %.0.i.i9.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i.i113, %bb.kz ], [ %.sroa.0.0.i.i.i11.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokess8_0QQNCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7S_IB7S_INtB4_6FilterIB7l_B12_ENCB3Q_s9_0EIB8m_B8y_B3O_EEIB8m_B8y_NCB3Q_sa_0EEIB8m_B8y_NCB3Q_sb_0EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5H_s_0NCNCB5H_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i.i.i ] ; 8 uses
  %.sroa.02.0.i.i10.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.kz ], [ %i.avy, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokess8_0QQNCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7S_IB7S_INtB4_6FilterIB7l_B12_ENCB3Q_s9_0EIB8m_B8y_B3O_EEIB8m_B8y_NCB3Q_sa_0EEIB8m_B8y_NCB3Q_sb_0EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5H_s_0NCNCB5H_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.avb = getelementptr inbounds nuw [40 x i8], ptr %.sroa.14.5.i.jt1.i.i.i.i, i64 %.sroa.02.0.i.i10.i.i.i.i.i.i.i.i ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29911)
  %i.avc = getelementptr inbounds nuw i8, ptr %i.avb, i64 32
  %i.avd = load i8, ptr %i.avc, align 8, !range !54, !alias.scope !29911, !noalias !29912, !noundef !41
  %i.ave = icmp eq i8 %i.avd, %i.auy
  br i1 %i.ave, label %bb.lb, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokess8_0QQNCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7S_IB7S_INtB4_6FilterIB7l_B12_ENCB3Q_s9_0EIB8m_B8y_B3O_EEIB8m_B8y_NCB3Q_sa_0EEIB8m_B8y_NCB3Q_sb_0EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5H_s_0NCNCB5H_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i.i.i

bb.lb:                                            ; preds = %bb.la
  call void @llvm.experimental.noalias.scope.decl(metadata !29913)
  call void @llvm.experimental.noalias.scope.decl(metadata !29914)
  call void @llvm.experimental.noalias.scope.decl(metadata !29915)
  %i.avf = getelementptr inbounds nuw i8, ptr %i.avb, i64 16
  %i.avg = load i64, ptr %i.avf, align 8, !alias.scope !29916, !noalias !29917, !noundef !41 ; 3 uses
  %.not.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i = icmp eq i64 %i.avg, 0
  br i1 %.not.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i, label %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE00Ba_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i.i.i88.i.i.i.i.i

.split.i.i.i.i.i.i.i.i.i88.i.i.i.i.i:             ; preds = %bb.lb
  %i.avh = load i8, ptr %i.auz, align 8, !range !54, !noalias !29918, !noundef !41
  %i.avi = trunc nuw i8 %i.avh to i1
  %i.avj = shl i64 %i.avg, 1
  %i.avk = add i64 %i.avj, -1
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i89.i.i.i.i.i = select i1 %i.avi, i64 %i.avk, i64 %i.avg
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avb, i64 8
  %i.avm = load i64, ptr %i.avl, align 8, !alias.scope !29916, !noalias !29917, !noundef !41
  %i.avn = mul i64 %i.avm, %i.ava
  %.not.i.i.i.i.i.i.i.i14.i.i.i.i.i.i.i.i = icmp ule i64 %i.avn, %i.akf
  %i.avo = icmp ult i64 %i.akf, %.sroa.04.0.i.i.i.i.i.i.i.i.i.i89.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i91.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i14.i.i.i.i.i.i.i.i, i1 %i.avo, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i91.i.i.i.i.i, label %bb.lc, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokess8_0QQNCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7S_IB7S_INtB4_6FilterIB7l_B12_ENCB3Q_s9_0EIB8m_B8y_B3O_EEIB8m_B8y_NCB3Q_sa_0EEIB8m_B8y_NCB3Q_sb_0EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5H_s_0NCNCB5H_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i.i.i

_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE00Ba_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.lb
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avb, i64 8
  %i.avq = load i64, ptr %i.avp, align 8, !alias.scope !29916, !noalias !29917, !noundef !41
  %i.avr = mul i64 %i.avq, %i.ava
  %.not.i.i.i.i.i.i.i.i.i92.i.i.i.i.i = icmp ult i64 %i.akf, %i.avr
  br i1 %.not.i.i.i.i.i.i.i.i.i92.i.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokess8_0QQNCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7S_IB7S_INtB4_6FilterIB7l_B12_ENCB3Q_s9_0EIB8m_B8y_B3O_EEIB8m_B8y_NCB3Q_sa_0EEIB8m_B8y_NCB3Q_sb_0EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5H_s_0NCNCB5H_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i.i.i, label %bb.lc

bb.lc:                                            ; preds = %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE00Ba_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i88.i.i.i.i.i
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avb, i64 24
  %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.avs, align 8, !alias.scope !29916, !noalias !29912, !noundef !41 ; 4 uses
  %.not.i.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE0s_0Ba_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ld

_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE0s_0Ba_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.lc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !29919
  store ptr null, ptr %i.x, align 8, !noalias !29919
  store ptr %.0.i.i9.i.i.i.i.i.i.i.i, ptr %i.su, align 8, !noalias !29919
  %.not2.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.0.i.i9.i.i.i.i.i.i.i.i, null
  br i1 %.not2.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB13_9visualize6stroke6StrokeNtNtB11_3abs3AbsEEEB1V_NCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB3U_8layouterNtB54_12GridLayouter20render_fills_strokessc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3o_EEEINtNtB6_5chain5ChainIB7p_IB7p_INtNtB6_6filter6FilterIB6S_BV_ENCB4Z_s9_0EIB7T_B8e_NCB4Z_s8_0EEIB7T_B8e_NCB4Z_sa_0EEIB7T_B8e_NCB4Z_sb_0EEE0s_0NCNCB3N_s0_00E0B3W_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.lg

bb.ld:                                            ; preds = %bb.lc
  %i.avt = atomicrmw add ptr %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1 monotonic, align 8, !noalias !29920
  %i.avu = icmp slt i64 %i.avt, 0
  br i1 %i.avu, label %bb.le, label %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE0s_0Ba_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.le:                                            ; preds = %bb.ld
  call void @llvm.trap()
  unreachable

_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE0s_0Ba_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ld
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !29919
  %.not2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.0.i.i9.i.i.i.i.i.i.i.i, null
  br i1 %.not2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB13_9visualize6stroke6StrokeNtNtB11_3abs3AbsEEEB1V_NCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB3U_8layouterNtB54_12GridLayouter20render_fills_strokessc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3o_EEEINtNtB6_5chain5ChainIB7p_IB7p_INtNtB6_6filter6FilterIB6S_BV_ENCB4Z_s9_0EIB7T_B8e_NCB4Z_s8_0EEIB7T_B8e_NCB4Z_sa_0EEIB7T_B8e_NCB4Z_sb_0EEE0s_0NCNCB3N_s0_00E0B3W_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.lf

bb.lf:                                            ; preds = %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE0s_0Ba_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.avv = invoke fastcc noundef nonnull ptr @_RNvXsh_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEENtNtB7_6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull %.0.i.i9.i.i.i.i.i.i.i.i)
          to label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB13_9visualize6stroke6StrokeNtNtB11_3abs3AbsEEEB1V_NCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB3U_8layouterNtB54_12GridLayouter20render_fills_strokessc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3o_EEEINtNtB6_5chain5ChainIB7p_IB7p_INtNtB6_6filter6FilterIB6S_BV_ENCB4Z_s9_0EIB7T_B8e_NCB4Z_s8_0EEIB7T_B8e_NCB4Z_sa_0EEIB7T_B8e_NCB4Z_sb_0EEE0s_0NCNCB3N_s0_00E0B3W_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !29885

bb.lg:                                            ; preds = %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE0s_0Ba_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.avw = atomicrmw add ptr %.0.i.i9.i.i.i.i.i.i.i.i, i64 -1 release, align 8, !noalias !29921
  %i.avx = icmp eq i64 %i.avw, 1
  br i1 %i.avx, label %bb.lh, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB13_9visualize6stroke6StrokeNtNtB11_3abs3AbsEEEB1V_NCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB3U_8layouterNtB54_12GridLayouter20render_fills_strokessc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3o_EEEINtNtB6_5chain5ChainIB7p_IB7p_INtNtB6_6filter6FilterIB6S_BV_ENCB4Z_s9_0EIB7T_B8e_NCB4Z_s8_0EEIB7T_B8e_NCB4Z_sa_0EEIB7T_B8e_NCB4Z_sb_0EEE0s_0NCNCB3N_s0_00E0B3W_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.lh:                                            ; preds = %bb.lg
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtBN_6layout3abs3AbsEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.su) #58
          to label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB13_9visualize6stroke6StrokeNtNtB11_3abs3AbsEEEB1V_NCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB3U_8layouterNtB54_12GridLayouter20render_fills_strokessc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3o_EEEINtNtB6_5chain5ChainIB7p_IB7p_INtNtB6_6filter6FilterIB6S_BV_ENCB4Z_s9_0EIB7T_B8e_NCB4Z_s8_0EEIB7T_B8e_NCB4Z_sa_0EEIB7T_B8e_NCB4Z_sb_0EEE0s_0NCNCB3N_s0_00E0B3W_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !29885

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB13_9visualize6stroke6StrokeNtNtB11_3abs3AbsEEEB1V_NCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB3U_8layouterNtB54_12GridLayouter20render_fills_strokessc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3o_EEEINtNtB6_5chain5ChainIB7p_IB7p_INtNtB6_6filter6FilterIB6S_BV_ENCB4Z_s9_0EIB7T_B8e_NCB4Z_s8_0EEIB7T_B8e_NCB4Z_sa_0EEIB7T_B8e_NCB4Z_sb_0EEE0s_0NCNCB3N_s0_00E0B3W_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.lh, %bb.lg, %bb.lf, %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE0s_0Ba_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE0s_0Ba_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i = phi ptr [ null, %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE0s_0Ba_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.avv, %bb.lf ], [ null, %bb.lg ], [ %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE0s_0Ba_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ null, %bb.lh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !29919
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokess8_0QQNCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7S_IB7S_INtB4_6FilterIB7l_B12_ENCB3Q_s9_0EIB8m_B8y_B3O_EEIB8m_B8y_NCB3Q_sa_0EEIB8m_B8y_NCB3Q_sb_0EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5H_s_0NCNCB5H_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokess8_0QQNCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7S_IB7S_INtB4_6FilterIB7l_B12_ENCB3Q_s9_0EIB8m_B8y_B3O_EEIB8m_B8y_NCB3Q_sa_0EEIB8m_B8y_NCB3Q_sb_0EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5H_s_0NCNCB5H_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB13_9visualize6stroke6StrokeNtNtB11_3abs3AbsEEEB1V_NCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB3U_8layouterNtB54_12GridLayouter20render_fills_strokessc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3o_EEEINtNtB6_5chain5ChainIB7p_IB7p_INtNtB6_6filter6FilterIB6S_BV_ENCB4Z_s9_0EIB7T_B8e_NCB4Z_s8_0EEIB7T_B8e_NCB4Z_sa_0EEIB7T_B8e_NCB4Z_sb_0EEE0s_0NCNCB3N_s0_00E0B3W_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE00Ba_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i88.i.i.i.i.i, %bb.la
  %.sroa.0.0.i.i.i11.i.i.i.i.i.i.i.i = phi ptr [ %.0.i.i9.i.i.i.i.i.i.i.i, %bb.la ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB13_9visualize6stroke6StrokeNtNtB11_3abs3AbsEEEB1V_NCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB3U_8layouterNtB54_12GridLayouter20render_fills_strokessc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3o_EEEINtNtB6_5chain5ChainIB7p_IB7p_INtNtB6_6filter6FilterIB6S_BV_ENCB4Z_s9_0EIB7T_B8e_NCB4Z_s8_0EEIB7T_B8e_NCB4Z_sa_0EEIB7T_B8e_NCB4Z_sb_0EEE0s_0NCNCB3N_s0_00E0B3W_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i9.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i88.i.i.i.i.i ], [ %.0.i.i9.i.i.i.i.i.i.i.i, %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE00Ba_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.avy = add nuw i64 %.sroa.02.0.i.i10.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.avz = icmp eq i64 %i.avy, %i.aux
  br i1 %i.avz, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2U_12GridLayouter20render_fills_strokess9_0EIB11_B1m_NCB2P_s8_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1U_9visualize6stroke6StrokeNtNtB1S_3abs3AbsEEEQQNCINvB13_11filter_foldRB1M_B5n_NCNCINvNtB2W_5lines22generate_line_segmentsNCB2P_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1n_B6Q_EEEIBP_IBP_BO_IB11_B1m_NCB2P_sa_0EEIB11_B1m_NCB2P_sb_0EEE00NCINvNtB7_3map8map_foldB7x_B5n_B5n_NCB7I_s_0NCNCB7I_s0_00E0E0EB2Y_.exit.i.i.i.i.i.i.i, label %bb.la

_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2U_12GridLayouter20render_fills_strokess9_0EIB11_B1m_NCB2P_s8_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1U_9visualize6stroke6StrokeNtNtB1S_3abs3AbsEEEQQNCINvB13_11filter_foldRB1M_B5n_NCNCINvNtB2W_5lines22generate_line_segmentsNCB2P_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1n_B6Q_EEEIBP_IBP_BO_IB11_B1m_NCB2P_sa_0EEIB11_B1m_NCB2P_sb_0EEE00NCINvNtB7_3map8map_foldB7x_B5n_B5n_NCB7I_s_0NCNCB7I_s0_00E0E0EB2Y_.exit.i.i.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokess8_0QQNCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7S_IB7S_INtB4_6FilterIB7l_B12_ENCB3Q_s9_0EIB8m_B8y_B3O_EEIB8m_B8y_NCB3Q_sa_0EEIB8m_B8y_NCB3Q_sb_0EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5H_s_0NCNCB5H_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i.i.i, %bb.ky, %_RINvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB6_6FilterINtNtNtBc_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2B_12GridLayouter20render_fills_strokess9_0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1B_9visualize6stroke6StrokeNtNtB1z_3abs3AbsEEEQQQNCINvB6_11filter_foldRB1t_B4J_NCNCINvNtB2D_5lines22generate_line_segmentsNCB2w_sc_0INtNtB8_9enumerate9EnumerateINtNtB8_6copied6CopiedIB14_B6c_EEEINtNtB8_5chain5ChainIB8U_IB8U_BQ_IBR_B13_NCB2w_s8_0EEIBR_B13_NCB2w_sa_0EEIBR_B13_NCB2w_sb_0EEE00NCINvNtB8_3map8map_foldB6T_B4J_B4J_NCB74_s_0NCNCB74_s0_00E0E0EB2F_.exit.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i78.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i.i113, %bb.ky ], [ %.sroa.0.0.i.i.i.i.i.i.i.i113, %_RINvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB6_6FilterINtNtNtBc_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2B_12GridLayouter20render_fills_strokess9_0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1B_9visualize6stroke6StrokeNtNtB1z_3abs3AbsEEEQQQNCINvB6_11filter_foldRB1t_B4J_NCNCINvNtB2D_5lines22generate_line_segmentsNCB2w_sc_0INtNtB8_9enumerate9EnumerateINtNtB8_6copied6CopiedIB14_B6c_EEEINtNtB8_5chain5ChainIB8U_IB8U_BQ_IBR_B13_NCB2w_s8_0EEIBR_B13_NCB2w_sa_0EEIBR_B13_NCB2w_sb_0EEE00NCINvNtB8_3map8map_foldB6T_B4J_B4J_NCB74_s_0NCNCB74_s0_00E0E0EB2F_.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i11.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokess8_0QQNCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7S_IB7S_INtB4_6FilterIB7l_B12_ENCB3Q_s9_0EIB8m_B8y_B3O_EEIB8m_B8y_NCB3Q_sa_0EEIB8m_B8y_NCB3Q_sb_0EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5H_s_0NCNCB5H_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  br i1 %.not.i.i.jt1.i.i.i.i.i, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess9_0EIB15_B1q_NCB2T_s8_0EEIB15_B1q_NCB2T_sa_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1Y_9visualize6stroke6StrokeNtNtB1W_3abs3AbsEEEQNCINvB17_11filter_foldRB1Q_B5M_NCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1r_B7f_EEEIBP_BO_IB15_B1q_NCB2T_sb_0EEE00NCINvNtB7_3map8map_foldB7V_B5M_B5M_NCB86_s_0NCNCB86_s0_00E0E0EB32_.exit.i.i.i.i.i.i, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2U_12GridLayouter20render_fills_strokess9_0EIB11_B1m_NCB2P_s8_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1U_9visualize6stroke6StrokeNtNtB1S_3abs3AbsEEEQQNCINvB13_11filter_foldRB1M_B5n_NCNCINvNtB2W_5lines22generate_line_segmentsNCB2P_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1n_B6Q_EEEIBP_IBP_BO_IB11_B1m_NCB2P_sa_0EEIB11_B1m_NCB2P_sb_0EEE00NCINvNtB7_3map8map_foldB7x_B5n_B5n_NCB7I_s_0NCNCB7I_s0_00E0E0EB2Y_.exit.i.i.i.thread.i.i.i.i

_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2U_12GridLayouter20render_fills_strokess9_0EIB11_B1m_NCB2P_s8_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1U_9visualize6stroke6StrokeNtNtB1S_3abs3AbsEEEQQNCINvB13_11filter_foldRB1M_B5n_NCNCINvNtB2W_5lines22generate_line_segmentsNCB2P_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1n_B6Q_EEEIBP_IBP_BO_IB11_B1m_NCB2P_sa_0EEIB11_B1m_NCB2P_sb_0EEE00NCINvNtB7_3map8map_foldB7x_B5n_B5n_NCB7I_s_0NCNCB7I_s0_00E0E0EB2Y_.exit.i.i.i.thread.i.i.i.i: ; preds = %bb.mb, %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2U_12GridLayouter20render_fills_strokess9_0EIB11_B1m_NCB2P_s8_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1U_9visualize6stroke6StrokeNtNtB1S_3abs3AbsEEEQQNCINvB13_11filter_foldRB1M_B5n_NCNCINvNtB2W_5lines22generate_line_segmentsNCB2P_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1n_B6Q_EEEIBP_IBP_BO_IB11_B1m_NCB2P_sa_0EEIB11_B1m_NCB2P_sb_0EEE00NCINvNtB7_3map8map_foldB7x_B5n_B5n_NCB7I_s_0NCNCB7I_s0_00E0E0EB2Y_.exit.i.i.i.i.i.i.i, %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4findQNCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_NtNtB20_3abs3AbsEEEBO_E00EB36_.exit.i.jt0.i.i.i.i
  %.sroa.0.0.i.i78.i162.i.i.i.i = phi ptr [ %.sroa.0.0.i.i78.i.i.i.i.i, %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2U_12GridLayouter20render_fills_strokess9_0EIB11_B1m_NCB2P_s8_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1U_9visualize6stroke6StrokeNtNtB1S_3abs3AbsEEEQQNCINvB13_11filter_foldRB1M_B5n_NCNCINvNtB2W_5lines22generate_line_segmentsNCB2P_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1n_B6Q_EEEIBP_IBP_BO_IB11_B1m_NCB2P_sa_0EEIB11_B1m_NCB2P_sb_0EEE00NCINvNtB7_3map8map_foldB7x_B5n_B5n_NCB7I_s_0NCNCB7I_s0_00E0E0EB2Y_.exit.i.i.i.i.i.i.i ], [ null, %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4findQNCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_NtNtB20_3abs3AbsEEEBO_E00EB36_.exit.i.jt0.i.i.i.i ], [ %i.ayr, %bb.mb ] ; 2 uses
  %i.awa = phi ptr [ %i.akr, %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2U_12GridLayouter20render_fills_strokess9_0EIB11_B1m_NCB2P_s8_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1U_9visualize6stroke6StrokeNtNtB1S_3abs3AbsEEEQQNCINvB13_11filter_foldRB1M_B5n_NCNCINvNtB2W_5lines22generate_line_segmentsNCB2P_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1n_B6Q_EEEIBP_IBP_BO_IB11_B1m_NCB2P_sa_0EEIB11_B1m_NCB2P_sb_0EEE00NCINvNtB7_3map8map_foldB7x_B5n_B5n_NCB7I_s_0NCNCB7I_s0_00E0E0EB2Y_.exit.i.i.i.i.i.i.i ], [ %i.amo, %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4findQNCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_NtNtB20_3abs3AbsEEEBO_E00EB36_.exit.i.jt0.i.i.i.i ], [ %i.amo, %bb.mb ] ; 3 uses
  %.sroa.55.sroa.4.0.i443.i142161.i.i.i.i = phi ptr [ %.sroa.55.sroa.4.0.i.jt1.i.i.i.i.i, %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2U_12GridLayouter20render_fills_strokess9_0EIB11_B1m_NCB2P_s8_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1U_9visualize6stroke6StrokeNtNtB1S_3abs3AbsEEEQQNCINvB13_11filter_foldRB1M_B5n_NCNCINvNtB2W_5lines22generate_line_segmentsNCB2P_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1n_B6Q_EEEIBP_IBP_BO_IB11_B1m_NCB2P_sa_0EEIB11_B1m_NCB2P_sb_0EEE00NCINvNtB7_3map8map_foldB7x_B5n_B5n_NCB7I_s_0NCNCB7I_s0_00E0E0EB2Y_.exit.i.i.i.i.i.i.i ], [ %.sroa.55.sroa.4.0.i444.i.i.i.i.i, %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4findQNCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_NtNtB20_3abs3AbsEEEBO_E00EB36_.exit.i.jt0.i.i.i.i ], [ %.sroa.55.sroa.4.0.i444.i.i.i.i.i, %bb.mb ] ; 2 uses
  %.sroa.55.sroa.0.0.i440.i144160.i.i.i.i = phi ptr [ %.sroa.55.sroa.0.0.i.jt1.i.i.i.i.i, %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2U_12GridLayouter20render_fills_strokess9_0EIB11_B1m_NCB2P_s8_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1U_9visualize6stroke6StrokeNtNtB1S_3abs3AbsEEEQQNCINvB13_11filter_foldRB1M_B5n_NCNCINvNtB2W_5lines22generate_line_segmentsNCB2P_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1n_B6Q_EEEIBP_IBP_BO_IB11_B1m_NCB2P_sa_0EEIB11_B1m_NCB2P_sb_0EEE00NCINvNtB7_3map8map_foldB7x_B5n_B5n_NCB7I_s_0NCNCB7I_s0_00E0E0EB2Y_.exit.i.i.i.i.i.i.i ], [ %.sroa.55.sroa.0.0.i441.i.i.i.i.i, %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4findQNCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_NtNtB20_3abs3AbsEEEBO_E00EB36_.exit.i.jt0.i.i.i.i ], [ %.sroa.55.sroa.0.0.i441.i.i.i.i.i, %bb.mb ] ; 2 uses
  %.sroa.5.sroa.10.0.i418.i146159.i.i.i.i = phi ptr [ %.val3.i.i.jt1.i.i.i.i.i, %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2U_12GridLayouter20render_fills_strokess9_0EIB11_B1m_NCB2P_s8_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1U_9visualize6stroke6StrokeNtNtB1S_3abs3AbsEEEQQNCINvB13_11filter_foldRB1M_B5n_NCNCINvNtB2W_5lines22generate_line_segmentsNCB2P_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1n_B6Q_EEEIBP_IBP_BO_IB11_B1m_NCB2P_sa_0EEIB11_B1m_NCB2P_sb_0EEE00NCINvNtB7_3map8map_foldB7x_B5n_B5n_NCB7I_s_0NCNCB7I_s0_00E0E0EB2Y_.exit.i.i.i.i.i.i.i ], [ %.sroa.5.sroa.10.0.i419.i.i.i.i.i, %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4findQNCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_NtNtB20_3abs3AbsEEEBO_E00EB36_.exit.i.jt0.i.i.i.i ], [ %.sroa.5.sroa.10.0.i419.i.i.i.i.i, %bb.mb ] ; 3 uses
  %.sroa.23.0.i147158.i.i.i.i = phi ptr [ %i.akq, %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2U_12GridLayouter20render_fills_strokess9_0EIB11_B1m_NCB2P_s8_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1U_9visualize6stroke6StrokeNtNtB1S_3abs3AbsEEEQQNCINvB13_11filter_foldRB1M_B5n_NCNCINvNtB2W_5lines22generate_line_segmentsNCB2P_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1n_B6Q_EEEIBP_IBP_BO_IB11_B1m_NCB2P_sa_0EEIB11_B1m_NCB2P_sb_0EEE00NCINvNtB7_3map8map_foldB7x_B5n_B5n_NCB7I_s_0NCNCB7I_s0_00E0E0EB2Y_.exit.i.i.i.i.i.i.i ], [ %i.amp, %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4findQNCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_NtNtB20_3abs3AbsEEEBO_E00EB36_.exit.i.jt0.i.i.i.i ], [ %i.amp, %bb.mb ] ; 2 uses
  %.sroa.19.3.i149157.i.i.i.i = phi ptr [ %i.akp, %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2U_12GridLayouter20render_fills_strokess9_0EIB11_B1m_NCB2P_s8_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1U_9visualize6stroke6StrokeNtNtB1S_3abs3AbsEEEQQNCINvB13_11filter_foldRB1M_B5n_NCNCINvNtB2W_5lines22generate_line_segmentsNCB2P_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1n_B6Q_EEEIBP_IBP_BO_IB11_B1m_NCB2P_sa_0EEIB11_B1m_NCB2P_sb_0EEE00NCINvNtB7_3map8map_foldB7x_B5n_B5n_NCB7I_s_0NCNCB7I_s0_00E0E0EB2Y_.exit.i.i.i.i.i.i.i ], [ %i.amu, %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4findQNCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_NtNtB20_3abs3AbsEEEBO_E00EB36_.exit.i.jt0.i.i.i.i ], [ %i.amu, %bb.mb ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.10.0.i418.i146159.i.i.i.i) ]
  %i.awb = icmp eq ptr %.sroa.19.3.i149157.i.i.i.i, %.sroa.5.sroa.10.0.i418.i146159.i.i.i.i
  br i1 %i.awb, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess9_0EIB15_B1q_NCB2T_s8_0EEIB15_B1q_NCB2T_sa_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1Y_9visualize6stroke6StrokeNtNtB1W_3abs3AbsEEEQNCINvB17_11filter_foldRB1Q_B5M_NCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1r_B7f_EEEIBP_BO_IB15_B1q_NCB2T_sb_0EEE00NCINvNtB7_3map8map_foldB7V_B5M_B5M_NCB86_s_0NCNCB86_s0_00E0E0EB32_.exit.i.i.i.i.i.i, label %bb.li

bb.li:                                            ; preds = %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2U_12GridLayouter20render_fills_strokess9_0EIB11_B1m_NCB2P_s8_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1U_9visualize6stroke6StrokeNtNtB1S_3abs3AbsEEEQQNCINvB13_11filter_foldRB1M_B5n_NCNCINvNtB2W_5lines22generate_line_segmentsNCB2P_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1n_B6Q_EEEIBP_IBP_BO_IB11_B1m_NCB2P_sa_0EEIB11_B1m_NCB2P_sb_0EEE00NCINvNtB7_3map8map_foldB7x_B5n_B5n_NCB7I_s_0NCNCB7I_s0_00E0E0EB2Y_.exit.i.i.i.thread.i.i.i.i
  %i.awc = ptrtoint ptr %.sroa.5.sroa.10.0.i418.i146159.i.i.i.i to i64
  %i.awd = ptrtoint ptr %.sroa.19.3.i149157.i.i.i.i to i64
  %i.awe = sub nuw i64 %i.awc, %i.awd
  %i.awf = udiv exact i64 %i.awe, 40
  %i.awg = getelementptr inbounds nuw i8, ptr %i.awa, i64 176
  %i.awh = load i64, ptr %.sroa.21537.0..sroa_idx.i, align 8, !alias.scope !29910, !noalias !29758 ; 2 uses
  br label %bb.lj

bb.lj:                                            ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokessa_0QNCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7R_IB7R_INtB4_6FilterIB7k_B12_ENCB3Q_s9_0EIB8l_B8x_NCB3Q_s8_0EEIB8l_B8x_B3O_EEIB8l_B8x_NCB3Q_sb_0EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5G_s_0NCNCB5G_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i.i, %bb.li
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i78.i162.i.i.i.i, %bb.li ], [ %.sroa.0.0.i.i.i.i.i80.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokessa_0QNCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7R_IB7R_INtB4_6FilterIB7k_B12_ENCB3Q_s9_0EIB8l_B8x_NCB3Q_s8_0EEIB8l_B8x_B3O_EEIB8l_B8x_NCB3Q_sb_0EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5G_s_0NCNCB5G_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i.i ] ; 8 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.li ], [ %i.axf, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokessa_0QNCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7R_IB7R_INtB4_6FilterIB7k_B12_ENCB3Q_s9_0EIB8l_B8x_NCB3Q_s8_0EEIB8l_B8x_B3O_EEIB8l_B8x_NCB3Q_sb_0EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5G_s_0NCNCB5G_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.awi = getelementptr inbounds nuw [40 x i8], ptr %.sroa.19.3.i149157.i.i.i.i, i64 %.sroa.02.0.i.i.i.i.i.i.i.i.i ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29922)
  %i.awj = getelementptr inbounds nuw i8, ptr %i.awi, i64 32
  %i.awk = load i8, ptr %i.awj, align 8, !range !54, !alias.scope !29922, !noalias !29923, !noundef !41
  %i.awl = icmp eq i8 %i.awk, 0
  br i1 %i.awl, label %bb.lk, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokessa_0QNCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7R_IB7R_INtB4_6FilterIB7k_B12_ENCB3Q_s9_0EIB8l_B8x_NCB3Q_s8_0EEIB8l_B8x_B3O_EEIB8l_B8x_NCB3Q_sb_0EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5G_s_0NCNCB5G_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i.i

bb.lk:                                            ; preds = %bb.lj
  call void @llvm.experimental.noalias.scope.decl(metadata !29924)
  call void @llvm.experimental.noalias.scope.decl(metadata !29925)
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awi, i64 16
  %i.awn = load i64, ptr %i.awm, align 8, !alias.scope !29926, !noalias !29927, !noundef !41 ; 3 uses
  %.not.i.i.i.i.i.i.i.i85.i.i.i.i.i = icmp eq i64 %i.awn, 0
  br i1 %.not.i.i.i.i.i.i.i.i85.i.i.i.i.i, label %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE00Ba_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.lk
  %i.awo = load i8, ptr %i.awg, align 8, !range !54, !noalias !29928, !noundef !41
  %i.awp = trunc nuw i8 %i.awo to i1
  %i.awq = shl i64 %i.awn, 1
  %i.awr = add i64 %i.awq, -1
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.awp, i64 %i.awr, i64 %i.awn
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awi, i64 8
  %i.awt = load i64, ptr %i.aws, align 8, !alias.scope !29926, !noalias !29927, !noundef !41
  %i.awu = mul i64 %i.awt, %i.awh
  %.not.i.i.i.i.i.i.i8.i.i.i.i.i.i.i = icmp ule i64 %i.awu, %i.akf
  %i.awv = icmp ult i64 %i.akf, %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i8.i.i.i.i.i.i.i, i1 %i.awv, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ll, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokessa_0QNCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7R_IB7R_INtB4_6FilterIB7k_B12_ENCB3Q_s9_0EIB8l_B8x_NCB3Q_s8_0EEIB8l_B8x_B3O_EEIB8l_B8x_NCB3Q_sb_0EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5G_s_0NCNCB5G_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i.i

_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE00Ba_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.lk
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awi, i64 8
  %i.awx = load i64, ptr %i.aww, align 8, !alias.scope !29926, !noalias !29927, !noundef !41
  %i.awy = mul i64 %i.awx, %i.awh
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.akf, %i.awy
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokessa_0QNCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7R_IB7R_INtB4_6FilterIB7k_B12_ENCB3Q_s9_0EIB8l_B8x_NCB3Q_s8_0EEIB8l_B8x_B3O_EEIB8l_B8x_NCB3Q_sb_0EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5G_s_0NCNCB5G_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i.i, label %bb.ll

bb.ll:                                            ; preds = %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE00Ba_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i.i.i.i
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awi, i64 24
  %.val4.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.awz, align 8, !alias.scope !29926, !noalias !29923, !noundef !41 ; 4 uses
  %.not.i.i5.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val4.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i5.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE0s_0Ba_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.lm

_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE0s_0Ba_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ll
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !29929
  store ptr null, ptr %i.w, align 8, !noalias !29929
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.sv, align 8, !noalias !29929
  %.not2.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.0.i.i.i.i.i.i.i.i.i, null
  br i1 %.not2.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB13_9visualize6stroke6StrokeNtNtB11_3abs3AbsEEEB1V_NCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB3U_8layouterNtB54_12GridLayouter20render_fills_strokessc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3o_EEEINtNtB6_5chain5ChainIB7p_IB7p_INtNtB6_6filter6FilterIB6S_BV_ENCB4Z_s9_0EIB7T_B8e_NCB4Z_s8_0EEIB7T_B8e_NCB4Z_sa_0EEIB7T_B8e_NCB4Z_sb_0EEE0s_0NCNCB3N_s0_00E0B3W_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.lp

bb.lm:                                            ; preds = %bb.ll
  %i.axa = atomicrmw add ptr %.val4.i.i.i.i.i.i.i.i.i.i.i.i, i64 1 monotonic, align 8, !noalias !29930
  %i.axb = icmp slt i64 %i.axa, 0
  br i1 %i.axb, label %bb.ln, label %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE0s_0Ba_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ln:                                            ; preds = %bb.lm
  call void @llvm.trap()
  unreachable

_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE0s_0Ba_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.lm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !29929
  %.not2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.0.i.i.i.i.i.i.i.i.i, null
  br i1 %.not2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB13_9visualize6stroke6StrokeNtNtB11_3abs3AbsEEEB1V_NCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB3U_8layouterNtB54_12GridLayouter20render_fills_strokessc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3o_EEEINtNtB6_5chain5ChainIB7p_IB7p_INtNtB6_6filter6FilterIB6S_BV_ENCB4Z_s9_0EIB7T_B8e_NCB4Z_s8_0EEIB7T_B8e_NCB4Z_sa_0EEIB7T_B8e_NCB4Z_sb_0EEE0s_0NCNCB3N_s0_00E0B3W_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.lo

bb.lo:                                            ; preds = %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE0s_0Ba_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.axc = invoke fastcc noundef nonnull ptr @_RNvXsh_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEENtNtB7_6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull %.val4.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull %.0.i.i.i.i.i.i.i.i.i)
          to label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB13_9visualize6stroke6StrokeNtNtB11_3abs3AbsEEEB1V_NCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB3U_8layouterNtB54_12GridLayouter20render_fills_strokessc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3o_EEEINtNtB6_5chain5ChainIB7p_IB7p_INtNtB6_6filter6FilterIB6S_BV_ENCB4Z_s9_0EIB7T_B8e_NCB4Z_s8_0EEIB7T_B8e_NCB4Z_sa_0EEIB7T_B8e_NCB4Z_sb_0EEE0s_0NCNCB3N_s0_00E0B3W_.exit.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !29885
end_hunk_6
begin_hunk_7_@_RNvNtCs7tN9tvpkfrg_12typst_layout4grid11layout_grid:bb.a
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit3, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit3

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit3: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.m:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtCs7tN9tvpkfrg_12typst_layout4grid12layout_table(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(200) %2, i128 noundef %3, ptr noundef align 16 %4, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [488 x i8], align 8               ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !range !53, !noundef !41 ; 2 uses
  %i.e = load atomic i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing7ENABLED monotonic, align 1
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.b, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMCsiNFdexS2GJ6_12typst_timingNtB2_11TimingScope8new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @475, i64 noundef 12, i64 noundef %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = load ptr, ptr %1, align 8, !nonnull !41, !noundef !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 976
  %i.h = load ptr, ptr %i.g, align 16, !noundef !41 ; 2 uses
  %.not2 = icmp eq ptr %i.h, null
  br i1 %.not2, label %bb.f, label %bb.e, !prof !44

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  invoke fastcc void @_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(488) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.i, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %6, i128 noundef %3, ptr noundef align 16 %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %5, i64 noundef %i.d)
          to label %bb.j unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @476) #57
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f, %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.b, align 8, !alias.scope !32878, !noundef !41
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.m

bb.i:                                             ; preds = %bb.f
  unreachable

bb.j:                                             ; preds = %bb.e
  invoke fastcc void @_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter6layout(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(488) %i.a, ptr noalias nofree noundef align 8 dereferenceable(200) %2)
          to label %bb.k unwind label %bb.g

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = load ptr, ptr %i.b, align 8, !alias.scope !32879, !noundef !41
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit3, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit3

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit3: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.m:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvNtCs7tN9tvpkfrg_12typst_layout4math10layout_box(ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %2, i8 %.45.val, i8 %.46.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [304 x i8], align 16              ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 16, !nonnull !41, !align !46, !noundef !41
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !41, !align !46, !noundef !41
  %i.i = load i128, ptr %0, align 16, !noundef !41
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 16, !align !59, !noundef !41
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load double, ptr %i.l, align 8, !noundef !41
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load double, ptr %i.n, align 8, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call fastcc void @_RNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4box_10layout_box(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f, ptr noalias nofree noundef align 8 dereferenceable(200) %i.h, i128 noundef %i.i, ptr noundef align 16 %i.k, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %i.b, double noundef %i.m, double noundef %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = load i64, ptr %i.d, align 8, !range !52, !noundef !41 ; 2 uses
  %i.q = icmp eq i64 %i.p, 2
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.10.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.69.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.p, ptr %i.c, align 8
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.s, ptr %.sroa.6.0..sroa_idx3, align 8
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.u, ptr %.sroa.8.0..sroa_idx5, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32890
  call fastcc void @_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB5_13FrameFragment3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.v, i8 %.45.val, i8 %.46.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !32891)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store i64 2, ptr %i.a, align 16, !alias.scope !32892, !noalias !32890
  call void @llvm.experimental.noalias.scope.decl(metadata !32893)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !32894, !noundef !41 ; 3 uses
  %i.z = load i64, ptr %i.w, align 8, !range !45, !alias.scope !32894, !noundef !41
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %bb.d, label %_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment13FrameFragmentEB5_.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment13FrameFragmentEB5_.exit unwind label %bb.e, !noalias !32895

bb.e:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.a) #54
          to label %bb.g unwind label %bb.f, !noalias !32896

bb.f:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !32896
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ab

_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment13FrameFragmentEB5_.exit: ; preds = %bb.c, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !32894, !nonnull !41, !noundef !41
  %i.af = getelementptr inbounds nuw [304 x i8], ptr %i.ae, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.af, ptr noundef nonnull align 16 dereferenceable(304) %i.a, i64 304, i1 false), !noalias !32896
  %i.ag = add i64 %i.y, 1
  store i64 %i.ag, ptr %i.x, align 8, !alias.scope !32894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32890
  br label %bb.h

bb.h:                                             ; preds = %_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment13FrameFragmentEB5_.exit, %bb.b
  %.sroa.3.0 = phi i64 [ %i.u, %bb.b ], [ undef, %_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment13FrameFragmentEB5_.exit ]
  %.sroa.0.0 = phi ptr [ %i.s, %bb.b ], [ null, %_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment13FrameFragmentEB5_.exit ]
  %i.ah = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.ai = insertvalue { ptr, i64 } %i.ah, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.ai
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs7tN9tvpkfrg_12typst_layout4math13layout_mathml(ptr nofree readonly captures(none) %.144.val, ptr nofree readonly captures(none) %.72.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.72.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.144.val) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.144.val, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !53, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false)
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 -128, ptr %.sroa.45.0..sroa_idx, align 1
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @477, i64 noundef 46)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #54
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !32900)
  call void @llvm.experimental.noalias.scope.decl(metadata !32901)
  %i.g = invoke { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef range(i64 1, 0) %i.e)
          to label %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic7warningNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.e, !noalias !32902 ; 2 uses

bb.d:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !32902
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.f, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.b) #54
          to label %common.resume unwind label %bb.d, !noalias !32900

_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic7warningNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.72.val, i64 120
  %i.k = extractvalue { i64, i64 } %i.g, 1
  %i.l = extractvalue { i64, i64 } %i.g, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i8 1, ptr %i.m, align 8, !alias.scope !32900
  store i64 %i.l, ptr %i.c, align 8, !alias.scope !32900
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.k, ptr %i.n, align 8, !alias.scope !32900
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.b, i64 16, i1 false), !alias.scope !32902
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %i.p, align 8, !alias.scope !32900
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.q, align 8, !alias.scope !32900
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr inttoptr (i64 16 to ptr), ptr %i.r, align 8, !alias.scope !32900
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 0, ptr %i.s, align 8, !alias.scope !32900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs2_NvNtCsdaEETE4DqmE_13typst_library6engines_1__NtB5_18___ComemoSurfaceMut4warn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.c) #59
  ret void

bb.f:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvNtCs7tN9tvpkfrg_12typst_layout4math15layout_external(ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %2, i8 %.45.val, i8 %.46.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [304 x i8], align 16              ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !41, !align !46, !noundef !41
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 16, !nonnull !41, !align !46, !noundef !41
  %i.j = load i128, ptr %0, align 16, !noundef !41
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 16, !align !59, !noundef !41
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @_RNvNtCs7tN9tvpkfrg_12typst_layout4flow12layout_frame(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i, i128 noundef %i.j, ptr noundef align 16 %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.m)
  %i.n = load i64, ptr %i.d, align 8, !range !52, !noundef !41 ; 3 uses
  %i.o = icmp eq i64 %i.n, 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.610.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.n, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 %i.s, ptr %.sroa.5.0..sroa_idx, align 8
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val26 = load i64, ptr %i.t, align 8, !noundef !41 ; 2 uses
  %.not.i = icmp eq i64 %.val26, 0
  br i1 %.not.i, label %bb.e, label %bb.g, !prof !44

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #53
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32921
  call fastcc void @_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB5_13FrameFragment3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.u, i8 %.45.val, i8 %.46.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !32922)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store i64 2, ptr %i.a, align 16, !alias.scope !32923, !noalias !32921
  call void @llvm.experimental.noalias.scope.decl(metadata !32924)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !32925, !noundef !41 ; 3 uses
  %i.y = load i64, ptr %i.v, align 8, !range !45, !alias.scope !32925, !noundef !41
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.j, label %bb.m

bb.g:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.aa, align 8, !nonnull !41, !noundef !41
  %i.ab = getelementptr [8 x i8], ptr %.val, i64 %.val26
  %i.ac = getelementptr i8, ptr %i.ab, i64 -8     ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 184 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 192
  %i.ag = load atomic i32, ptr %i.af acquire, align 4, !noalias !32926
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit, label %bb.h, !prof !43

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.o

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.g, %bb.h
  %i.ai = load ptr, ptr %i.ae, align 8, !nonnull !41, !noundef !41
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load double, ptr %i.aj, align 8, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.al = invoke noundef double @_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library6layout2emNtB5_2EmNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %i.ak, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.an = load double, ptr %i.am, align 8, !noundef !41
  %i.ao = fmul double %i.an, 5.000000e-01         ; 2 uses
  %.inv = fcmp ord double %i.ao, 0.000000e+00
  %spec.store.select = select i1 %.inv, double %i.ao, double 0.000000e+00
  %i.ap = fadd double %i.al, %spec.store.select   ; 2 uses
  %.inv25 = fcmp ord double %i.ap, 0.000000e+00
  %spec.store.select1 = select i1 %.inv25, double %i.ap, double 0.000000e+00
  store i64 1, ptr %i.e, align 8
  store double %spec.store.select1, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.f
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.m unwind label %bb.k, !noalias !32927

bb.k:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.a) #54
          to label %.body.thread unwind label %bb.l, !noalias !32928

bb.l:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !32928
  unreachable

bb.m:                                             ; preds = %bb.j, %bb.f
end_hunk_7
begin_hunk_8_@_RNvNtCs7tN9tvpkfrg_12typst_layout5pages22layout_document_common:bb.a
  store ptr %i.a, ptr %.sroa.7.i.i.sroa.16.0..sroa.7.0..sroa_idx30.i.i.sroa_idx.i.i, align 8, !noalias !35426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !35427
  store i64 %.sroa.0.0305315.i.i, ptr %i.m, align 8, !noalias !35426
  %.sroa.6.0..sroa_idx28.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  store ptr %.sroa.6.0303316.i.i, ptr %.sroa.6.0..sroa_idx28.i.i.i.i, align 8, !noalias !35426
  %.sroa.42.0..sroa_idx3.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !35427
  %i.qi = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %.sroa.8.0302317.i.i, ptr %i.qi, align 8, !noalias !35427
  store ptr %.sroa.7.i.i.sroa.6.0..sroa.7.0..sroa_idx30.i.i.sroa_idx.i.i, ptr %i.l, align 8, !noalias !35428
  %.sroa.4.0..sroa_idx.i.i.i.i23.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.qe, ptr %.sroa.4.0..sroa_idx.i.i.i.i23.i.i, align 8, !noalias !35428
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %.sroa.8.0302317.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !35428
  call void @llvm.experimental.noalias.scope.decl(metadata !35429)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !35430
  store ptr %i.m, ptr %i.k, align 8, !noalias !35430
  %i.qj = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 0, ptr %i.qj, align 8, !noalias !35430
  %i.qk = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.8.0302317.i.i, ptr %i.qk, align 8, !noalias !35430
  %i.ql = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %.sroa.8.0302317.i.i, ptr %i.ql, align 8, !noalias !35430
  store i64 0, ptr %.sroa.42.0..sroa_idx3.i.i.i.i.i.i, align 8, !alias.scope !35429, !noalias !35431
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %.sroa.0.0305315.i.i, %.sroa.8.0302317.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ch, label %bb.cj, !prof !44

.body.i.i.i.i.i.i.i.i.i:                          ; preds = %bb.ci
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !35429, !noalias !35427 ; 2 uses
  %i.qm = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.qm, label %.body.i102.i, label %bb.cg

bb.cg:                                            ; preds = %.body.i.i.i.i.i.i.i.i.i
  %.val2.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx28.i.i.i.i, align 8, !alias.scope !35429, !noalias !35427, !nonnull !41, !noundef !41
  %i.qn = mul nuw i64 %.val.i.i.i.i.i.i.i.i.i, 48
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i.i.i.i.i, i64 noundef %i.qn, i64 noundef range(i64 1, -9223372036854775807) 16) #56, !noalias !35432
  br label %.body.i102.i

bb.ch:                                            ; preds = %bb.cf
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @344, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @403) #53
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %bb.ci, !noalias !35433

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.ch
  unreachable

bb.ci:                                            ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i, %bb.cj, %bb.ch
  %i.qo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsa3eaf3mS27M_5rayon3vec5DrainTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1k_6styles10StyleChainERB2i_NtNtNtB1m_13introspection7locator7LocatorEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.k) #54
          to label %.body.i.i.i.i.i.i.i.i.i unwind label %bb.ck, !noalias !35434

bb.cj:                                            ; preds = %bb.cf
  %i.qp = invoke noundef i64 @_RNvCsf1gSX8u3EQ2_10rayon_core19current_num_threads()
          to label %.noexc9.i.i.i.i.i.i.i.i.i.i unwind label %bb.ci, !noalias !35433

.noexc9.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.cj
  invoke fastcc void @_RINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainERB2M_NtNtNtB1Q_13introspection7locator7LocatorEEINtNtB6_3map11MapConsumerINtNtNtB6_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1Q_4diag16SourceDiagnosticEENtNtB1Q_6engine4SinkEENCINvMB8m_NtB8m_6Engine11parallelizeINtNtNtNtB5d_4iter8adapters10filter_map9FilterMapINtNtNtB5d_5slice4iter4IterNtNtB6l_7collect4ItemENCNvB6l_12layout_pages0EB9g_B1E_B58_NCBaS_s_0E0EEB6n_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.q, i64 noundef %.sroa.8.0302317.i.i, i1 noundef zeroext false, i64 noundef %i.qp, i64 noundef 1, ptr noalias nofree noundef nonnull align 16 %.sroa.6.0303316.i.i, i64 noundef %.sroa.8.0302317.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.l)
          to label %_RINvXNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing6bridgeINtB3_8CallbackINtNtB7_3map11MapConsumerINtNtNtB7_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4U_6engine4SinkEENCINvMB5O_NtB5O_6Engine11parallelizeINtNtNtNtB2g_4iter8adapters10filter_map9FilterMapINtNtNtB2g_5slice4iter4IterNtNtB3o_7collect4ItemENCNvB3o_12layout_pages0EB6I_TRRSTRNtNtNtB4U_11foundations7content7ContentNtNtB8U_6styles10StyleChainERB9t_NtNtNtB4U_13introspection7locator7LocatorEB2b_NCB8k_s_0E0EEINtB5_16ProducerCallbackB8K_E8callbackINtNtB9_3vec13DrainProducerB8K_EEB3q_.exit.i.i.i.i.i.i.i.i.i.i unwind label %bb.ci, !noalias !35435

_RINvXNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing6bridgeINtB3_8CallbackINtNtB7_3map11MapConsumerINtNtNtB7_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4U_6engine4SinkEENCINvMB5O_NtB5O_6Engine11parallelizeINtNtNtNtB2g_4iter8adapters10filter_map9FilterMapINtNtNtB2g_5slice4iter4IterNtNtB3o_7collect4ItemENCNvB3o_12layout_pages0EB6I_TRRSTRNtNtNtB4U_11foundations7content7ContentNtNtB8U_6styles10StyleChainERB9t_NtNtNtB4U_13introspection7locator7LocatorEB2b_NCB8k_s_0E0EEINtB5_16ProducerCallbackB8K_E8callbackINtNtB9_3vec13DrainProducerB8K_EEB3q_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i
  %i.qq = load i64, ptr %.sroa.42.0..sroa_idx3.i.i.i.i.i.i, align 8, !alias.scope !35429, !noalias !35436, !noundef !41 ; 2 uses
  %i.qr = icmp ult i64 %i.qq, 192153584101141163
  call void @llvm.assume(i1 %i.qr)
  %i.qs = icmp eq i64 %i.qq, %.sroa.8.0302317.i.i
  %i.qt = icmp eq i64 %.sroa.8.0302317.i.i, 0     ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.qt, %i.qs
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %_RINvXs6_NtCsa3eaf3mS27M_5rayon3vecINtB6_5DrainTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBS_6styles10StyleChainERB1Q_NtNtNtBU_13introspection7locator7LocatorEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB34_8plumbing6bridge8CallbackINtNtB34_3map11MapConsumerINtNtNtB34_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBU_4diag16SourceDiagnosticEENtNtBU_6engine4SinkEENCINvMB8P_NtB8P_6Engine11parallelizeINtNtNtNtB5H_4iter8adapters10filter_map9FilterMapINtNtNtB5H_5slice4iter4IterNtNtB6P_7collect4ItemENCNvB6P_12layout_pages0EB9I_BI_B5C_NCBbk_s_0E0EEEB6R_.exit.sink.split.i.i.i.i.i.i.i.i.i, label %_RINvXs6_NtCsa3eaf3mS27M_5rayon3vecINtB6_5DrainTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBS_6styles10StyleChainERB1Q_NtNtNtBU_13introspection7locator7LocatorEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB34_8plumbing6bridge8CallbackINtNtB34_3map11MapConsumerINtNtNtB34_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBU_4diag16SourceDiagnosticEENtNtBU_6engine4SinkEENCINvMB8P_NtB8P_6Engine11parallelizeINtNtNtNtB5H_4iter8adapters10filter_map9FilterMapINtNtNtB5H_5slice4iter4IterNtNtB6P_7collect4ItemENCNvB6P_12layout_pages0EB9I_BI_B5C_NCBbk_s_0E0EEEB6R_.exit.i.i.i.i.i.i.i.i.i

bb.ck:                                            ; preds = %bb.ci
  %i.qu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !35433
  unreachable

_RINvXs6_NtCsa3eaf3mS27M_5rayon3vecINtB6_5DrainTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBS_6styles10StyleChainERB1Q_NtNtNtBU_13introspection7locator7LocatorEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB34_8plumbing6bridge8CallbackINtNtB34_3map11MapConsumerINtNtNtB34_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBU_4diag16SourceDiagnosticEENtNtBU_6engine4SinkEENCINvMB8P_NtB8P_6Engine11parallelizeINtNtNtNtB5H_4iter8adapters10filter_map9FilterMapINtNtNtB5H_5slice4iter4IterNtNtB6P_7collect4ItemENCNvB6P_12layout_pages0EB9I_BI_B5C_NCBbk_s_0E0EEEB6R_.exit.sink.split.i.i.i.i.i.i.i.i.i: ; preds = %_RINvXNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing6bridgeINtB3_8CallbackINtNtB7_3map11MapConsumerINtNtNtB7_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4U_6engine4SinkEENCINvMB5O_NtB5O_6Engine11parallelizeINtNtNtNtB2g_4iter8adapters10filter_map9FilterMapINtNtNtB2g_5slice4iter4IterNtNtB3o_7collect4ItemENCNvB3o_12layout_pages0EB6I_TRRSTRNtNtNtB4U_11foundations7content7ContentNtNtB8U_6styles10StyleChainERB9t_NtNtNtB4U_13introspection7locator7LocatorEB2b_NCB8k_s_0E0EEINtB5_16ProducerCallbackB8K_E8callbackINtNtB9_3vec13DrainProducerB8K_EEB3q_.exit.i.i.i.i.i.i.i.i.i.i
  store i64 0, ptr %.sroa.42.0..sroa_idx3.i.i.i.i.i.i, align 8, !alias.scope !35429, !noalias !35436
  br label %_RINvXs6_NtCsa3eaf3mS27M_5rayon3vecINtB6_5DrainTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBS_6styles10StyleChainERB1Q_NtNtNtBU_13introspection7locator7LocatorEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB34_8plumbing6bridge8CallbackINtNtB34_3map11MapConsumerINtNtNtB34_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBU_4diag16SourceDiagnosticEENtNtBU_6engine4SinkEENCINvMB8P_NtB8P_6Engine11parallelizeINtNtNtNtB5H_4iter8adapters10filter_map9FilterMapINtNtNtB5H_5slice4iter4IterNtNtB6P_7collect4ItemENCNvB6P_12layout_pages0EB9I_BI_B5C_NCBbk_s_0E0EEEB6R_.exit.i.i.i.i.i.i.i.i.i

_RINvXs6_NtCsa3eaf3mS27M_5rayon3vecINtB6_5DrainTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBS_6styles10StyleChainERB1Q_NtNtNtBU_13introspection7locator7LocatorEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB34_8plumbing6bridge8CallbackINtNtB34_3map11MapConsumerINtNtNtB34_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBU_4diag16SourceDiagnosticEENtNtBU_6engine4SinkEENCINvMB8P_NtB8P_6Engine11parallelizeINtNtNtNtB5H_4iter8adapters10filter_map9FilterMapINtNtNtB5H_5slice4iter4IterNtNtB6P_7collect4ItemENCNvB6P_12layout_pages0EB9I_BI_B5C_NCBbk_s_0E0EEEB6R_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RINvXs6_NtCsa3eaf3mS27M_5rayon3vecINtB6_5DrainTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBS_6styles10StyleChainERB1Q_NtNtNtBU_13introspection7locator7LocatorEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB34_8plumbing6bridge8CallbackINtNtB34_3map11MapConsumerINtNtNtB34_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBU_4diag16SourceDiagnosticEENtNtBU_6engine4SinkEENCINvMB8P_NtB8P_6Engine11parallelizeINtNtNtNtB5H_4iter8adapters10filter_map9FilterMapINtNtNtB5H_5slice4iter4IterNtNtB6P_7collect4ItemENCNvB6P_12layout_pages0EB9I_BI_B5C_NCBbk_s_0E0EEEB6R_.exit.sink.split.i.i.i.i.i.i.i.i.i, %_RINvXNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing6bridgeINtB3_8CallbackINtNtB7_3map11MapConsumerINtNtNtB7_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4U_6engine4SinkEENCINvMB5O_NtB5O_6Engine11parallelizeINtNtNtNtB2g_4iter8adapters10filter_map9FilterMapINtNtNtB2g_5slice4iter4IterNtNtB3o_7collect4ItemENCNvB3o_12layout_pages0EB6I_TRRSTRNtNtNtB4U_11foundations7content7ContentNtNtB8U_6styles10StyleChainERB9t_NtNtNtB4U_13introspection7locator7LocatorEB2b_NCB8k_s_0E0EEINtB5_16ProducerCallbackB8K_E8callbackINtNtB9_3vec13DrainProducerB8K_EEB3q_.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !35430
  %.val3.i.i.i.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !35429, !noalias !35427 ; 2 uses
  %i.qv = icmp eq i64 %.val3.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.qv, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %_RINvXs6_NtCsa3eaf3mS27M_5rayon3vecINtB6_5DrainTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBS_6styles10StyleChainERB1Q_NtNtNtBU_13introspection7locator7LocatorEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB34_8plumbing6bridge8CallbackINtNtB34_3map11MapConsumerINtNtNtB34_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBU_4diag16SourceDiagnosticEENtNtBU_6engine4SinkEENCINvMB8P_NtB8P_6Engine11parallelizeINtNtNtNtB5H_4iter8adapters10filter_map9FilterMapINtNtNtB5H_5slice4iter4IterNtNtB6P_7collect4ItemENCNvB6P_12layout_pages0EB9I_BI_B5C_NCBbk_s_0E0EEEB6R_.exit.i.i.i.i.i.i.i.i.i
  %.val4.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx28.i.i.i.i, align 8, !alias.scope !35429, !noalias !35427, !nonnull !41, !noundef !41
  %i.qw = mul nuw i64 %.val3.i.i.i.i.i.i.i.i.i, 48
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i.i.i.i.i, i64 noundef %i.qw, i64 noundef range(i64 1, -9223372036854775807) 16) #56, !noalias !35432
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %_RINvXs6_NtCsa3eaf3mS27M_5rayon3vecINtB6_5DrainTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBS_6styles10StyleChainERB1Q_NtNtNtBU_13introspection7locator7LocatorEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB34_8plumbing6bridge8CallbackINtNtB34_3map11MapConsumerINtNtNtB34_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBU_4diag16SourceDiagnosticEENtNtBU_6engine4SinkEENCINvMB8P_NtB8P_6Engine11parallelizeINtNtNtNtB5H_4iter8adapters10filter_map9FilterMapINtNtNtB5H_5slice4iter4IterNtNtB6P_7collect4ItemENCNvB6P_12layout_pages0EB9I_BI_B5C_NCBbk_s_0E0EEEB6R_.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !35427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !35427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !35425
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !35424
  %i.qx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.qy = load i64, ptr %i.qx, align 8, !noalias !35424, !noundef !41 ; 3 uses
  store i64 %i.qy, ptr %i.p, align 8, !noalias !35424
  %.not.i.i.i103.i = icmp eq i64 %i.qy, %.sroa.8.0302317.i.i
  br i1 %.not.i.i.i103.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB49_6engine4SinkEEEB2F_.exit.i.i.i.i, label %bb.cn, !prof !43

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !35424
  store ptr %i.r, ptr %i.o, align 8, !noalias !35424
  %.sroa.45.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i.i, align 8, !noalias !35424
  %i.qz = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.p, ptr %i.qz, align 8, !noalias !35424
  %.sroa.49.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.49.0..sroa_idx.i.i.i.i, align 8, !noalias !35424
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @166, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #57
          to label %bb.co unwind label %bb.cp, !noalias !35437

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB49_6engine4SinkEEEB2F_.exit.i.i.i.i: ; preds = %bb.cm
  %.sroa.031.0.copyload.i.i.i.i = load ptr, ptr %i.q, align 8, !noalias !35424
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB36_6engine4SinkEEB1C_(ptr noalias nofree noundef nonnull readonly align 8 %.sroa.031.0.copyload.i.i.i.i, i64 noundef 0)
          to label %bb.cu unwind label %bb.ct, !noalias !35418

bb.co:                                            ; preds = %bb.cn
  unreachable

bb.cp:                                            ; preds = %bb.cn
  %i.ra = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i104.i = load ptr, ptr %i.q, align 8, !noalias !35424, !noundef !41
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB36_6engine4SinkEEB1C_(ptr noalias nofree noundef nonnull readonly align 8 %.val.i.i.i104.i, i64 noundef %i.qy)
          to label %.body.i102.i unwind label %bb.cq, !noalias !35437

bb.cq:                                            ; preds = %bb.cp
  %i.rb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !35437
  unreachable

bb.cr:                                            ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.rc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rd = icmp eq i64 %.sroa.0.0305315.i.i, 0
  br i1 %i.rd, label %.body.i102.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.re = mul nuw i64 %.sroa.0.0305315.i.i, 48
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0303316.i.i, i64 noundef %i.re, i64 noundef range(i64 1, -9223372036854775807) 16) #56, !noalias !35421
  br label %.body.i102.i

.body.i102.i:                                     ; preds = %.body25.i.i, %bb.ct, %bb.cs, %bb.cr, %bb.cp, %bb.cg, %.body.i.i.i.i.i.i.i.i.i
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body26.i.i, %.body25.i.i ], [ %i.rf, %bb.ct ], [ %i.rc, %bb.cs ], [ %i.rc, %bb.cr ], [ %i.ra, %bb.cp ], [ %i.qo, %.body.i.i.i.i.i.i.i.i.i ], [ %i.qo, %bb.cg ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTINtNtB4_6result6ResultIBC_NtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB39_6engine4SinkEEEB1F_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #54
          to label %.body.i unwind label %bb.dv, !noalias !35418

bb.ct:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB49_6engine4SinkEEEB2F_.exit.i.i.i.i
  %i.rf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i102.i

bb.cu:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB49_6engine4SinkEEEB2F_.exit.i.i.i.i
  store i64 %.sroa.8.0302317.i.i, ptr %i.qh, align 8, !alias.scope !35438, !noalias !35400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !35424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !35424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !35423
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.qd ; 5 uses
  br i1 %i.qt, label %.loopexit.i, label %.lr.ph.i105.i

.lr.ph.i105.i:                                    ; preds = %bb.cu
  %i.rh = getelementptr inbounds nuw i8, ptr %i.bq, i64 128
  %i.ri = getelementptr inbounds nuw i8, ptr %i.bq, i64 136
  %i.rj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.rk = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.rl = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.rm = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.rn = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.ro = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.rp = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.rq = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  br label %bb.cv

bb.cv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetoNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs7tN9tvpkfrg_12typst_layout.exit.i.i, %.lr.ph.i105.i
  %.sroa.09.0177.i.i = phi ptr [ %i.qe, %.lr.ph.i105.i ], [ %i.rr, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetoNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs7tN9tvpkfrg_12typst_layout.exit.i.i ] ; 11 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %.sroa.09.0177.i.i, i64 120 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.09.0177.i.i, i64 24 ; 2 uses
  %.sroa.055.0.copyload.i.i = load ptr, ptr %i.rs, align 8, !noalias !35418 ; 9 uses
  %.sroa.456.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0177.i.i, i64 32 ; 2 uses
  %.sroa.456.0.copyload.i.i = load i64, ptr %.sroa.456.0..sroa_idx.i.i, align 8, !noalias !35418 ; 6 uses
  %.sroa.557.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0177.i.i, i64 40 ; 2 uses
  %.sroa.557.0.copyload.i.i = load ptr, ptr %.sroa.557.0..sroa_idx.i.i, align 8, !noalias !35418 ; 9 uses
  %.sroa.658.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0177.i.i, i64 48 ; 2 uses
  %.sroa.658.0.copyload.i.i = load i64, ptr %.sroa.658.0..sroa_idx.i.i, align 8, !noalias !35418 ; 6 uses
  %.sroa.759.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0177.i.i, i64 56 ; 2 uses
  %.sroa.759.0.copyload.i.i = load ptr, ptr %.sroa.759.0..sroa_idx.i.i, align 8, !noalias !35418 ; 9 uses
  %.sroa.860.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0177.i.i, i64 64 ; 2 uses
  %.sroa.860.0.copyload.i.i = load i64, ptr %.sroa.860.0..sroa_idx.i.i, align 8, !noalias !35418 ; 6 uses
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0177.i.i, i64 72 ; 2 uses
  %.sroa.9.0.copyload.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !35418 ; 3 uses
  %.sroa.1161.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0177.i.i, i64 80
  %.sroa.1161.0.copyload.i.i = load i64, ptr %.sroa.1161.0..sroa_idx.i.i, align 8, !noalias !35418 ; 4 uses
  %.sroa.1363.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0177.i.i, i64 104 ; 2 uses
  %.sroa.1363.0.copyload.i.i = load ptr, ptr %.sroa.1363.0..sroa_idx.i.i, align 8, !noalias !35418 ; 8 uses
  %.sroa.1464.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0177.i.i, i64 112 ; 2 uses
  %.sroa.1464.0.copyload.i.i = load i64, ptr %.sroa.1464.0..sroa_idx.i.i, align 8, !noalias !35418 ; 5 uses
  store ptr inttoptr (i64 16 to ptr), ptr %i.rs, align 8, !noalias !35418
  store i64 0, ptr %.sroa.456.0..sroa_idx.i.i, align 8, !noalias !35418
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.557.0..sroa_idx.i.i, align 8, !noalias !35418
  store i64 0, ptr %.sroa.658.0..sroa_idx.i.i, align 8, !noalias !35418
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.759.0..sroa_idx.i.i, align 8, !noalias !35418
  store i64 0, ptr %.sroa.860.0..sroa_idx.i.i, align 8, !noalias !35418
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(32) @97, i64 32, i1 false), !noalias !35418
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.1363.0..sroa_idx.i.i, align 8, !noalias !35418
  store i64 0, ptr %.sroa.1464.0..sroa_idx.i.i, align 8, !noalias !35418
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.055.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.557.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.759.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1363.0.copyload.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !35439)
  %i.rt = load ptr, ptr %i.bx, align 8, !alias.scope !35440, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %i.ru = load ptr, ptr %i.rh, align 8, !alias.scope !35440, !noundef !41 ; 2 uses
  %i.rv = load ptr, ptr %i.ri, align 8, !alias.scope !35440 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.ru, null
  br i1 %.not.not.i.i.i, label %bb.cz, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rv) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !35441
  %.not.i.i.i.i106.i = icmp eq ptr %.sroa.055.0.copyload.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i106.i, label %bb.da, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.rw = getelementptr inbounds i8, ptr %.sroa.055.0.copyload.i.i, i64 -16
  %i.rx = atomicrmw add ptr %i.rw, i64 1 monotonic, align 8, !noalias !35442
  %i.ry = icmp slt i64 %i.rx, 0
  br i1 %i.ry, label %bb.cy, label %bb.da, !prof !44

bb.cy:                                            ; preds = %bb.cx
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull %.sroa.055.0.copyload.i.i, i64 noundef %.sroa.456.0.copyload.i.i) #57
          to label %.noexc.i.i.i unwind label %.thread39.i.i.i, !noalias !35442

.thread39.i.i.i:                                  ; preds = %bb.cy
  %i.rz = landingpad { ptr, i32 }
          cleanup
  br label %.thread34.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.cy
  unreachable

bb.cz:                                            ; preds = %bb.cv
  invoke void @_RNvMs9_NtCsdaEETE4DqmE_13typst_library6engineNtB5_4Sink6extend(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.rt, ptr noundef nonnull %.sroa.055.0.copyload.i.i, i64 noundef %.sroa.456.0.copyload.i.i, ptr noundef nonnull %.sroa.557.0.copyload.i.i, i64 noundef %.sroa.658.0.copyload.i.i, ptr noundef nonnull %.sroa.759.0.copyload.i.i, i64 noundef %.sroa.860.0.copyload.i.i, ptr noundef nonnull %.sroa.1363.0.copyload.i.i, i64 noundef %.sroa.1464.0.copyload.i.i)
          to label %_RNvMs2_NvNtCsdaEETE4DqmE_13typst_library6engines_1__NtB5_18___ComemoSurfaceMut6extend.exit.i.i unwind label %bb.dt, !noalias !35418

bb.da:                                            ; preds = %bb.cx, %bb.cw
  %.not.i.i38.i.i.i = icmp eq ptr %.sroa.557.0.copyload.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i38.i.i.i, label %bb.df, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.sa = getelementptr inbounds i8, ptr %.sroa.557.0.copyload.i.i, i64 -16
  %i.sb = atomicrmw add ptr %i.sa, i64 1 monotonic, align 8, !noalias !35442
  %i.sc = icmp slt i64 %i.sb, 0
  br i1 %i.sc, label %bb.dc, label %bb.df, !prof !44

bb.dc:                                            ; preds = %bb.db
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull %.sroa.557.0.copyload.i.i, i64 noundef %.sroa.658.0.copyload.i.i) #57
          to label %.noexc39.i.i.i unwind label %bb.de, !noalias !35442

.noexc39.i.i.i:                                   ; preds = %bb.dc
  unreachable

bb.dd:                                            ; preds = %bb.di, %bb.de
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.di ], [ %i.sd, %bb.de ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionEECs7tN9tvpkfrg_12typst_layout(ptr nonnull %.sroa.055.0.copyload.i.i, i64 %.sroa.456.0.copyload.i.i) #54
          to label %.thread34.i.i.i unwind label %bb.dq, !noalias !35442

bb.de:                                            ; preds = %bb.dc
  %i.sd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.df:                                            ; preds = %bb.db, %bb.da
  %.not.i.i40.i.i.i = icmp eq ptr %.sroa.759.0.copyload.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i40.i.i.i, label %bb.dk, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.se = getelementptr inbounds i8, ptr %.sroa.759.0.copyload.i.i, i64 -16
  %i.sf = atomicrmw add ptr %i.se, i64 1 monotonic, align 8, !noalias !35442
  %i.sg = icmp slt i64 %i.sf, 0
  br i1 %i.sg, label %bb.dh, label %bb.dk, !prof !44

bb.dh:                                            ; preds = %bb.dg
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull %.sroa.759.0.copyload.i.i, i64 noundef %.sroa.860.0.copyload.i.i) #57
          to label %.noexc41.i.i.i unwind label %bb.dj, !noalias !35442

.noexc41.i.i.i:                                   ; preds = %bb.dh
  unreachable

bb.di:                                            ; preds = %bb.dn, %bb.dj
  %.pn.i.i.i = phi { ptr, i32 } [ %i.sl, %bb.dn ], [ %i.sh, %bb.dj ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs7tN9tvpkfrg_12typst_layout(ptr nonnull %.sroa.557.0.copyload.i.i, i64 %.sroa.658.0.copyload.i.i) #54
          to label %bb.dd unwind label %bb.dq, !noalias !35442

bb.dj:                                            ; preds = %bb.dh
  %i.sh = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.dk:                                            ; preds = %bb.dg, %bb.df
  %.not.i.i43.i.i.i = icmp eq ptr %.sroa.1363.0.copyload.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i43.i.i.i, label %bb.do, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.si = getelementptr inbounds i8, ptr %.sroa.1363.0.copyload.i.i, i64 -16
  %i.sj = atomicrmw add ptr %i.si, i64 1 monotonic, align 8, !noalias !35442
  %i.sk = icmp slt i64 %i.sj, 0
  br i1 %i.sk, label %bb.dm, label %bb.do, !prof !44

bb.dm:                                            ; preds = %bb.dl
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCs3oUPovFnLWP_4core6option6OptionNtNtBQ_6styles6StylesEEECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull %.sroa.1363.0.copyload.i.i, i64 noundef %.sroa.1464.0.copyload.i.i) #57
          to label %.noexc44.i.i.i unwind label %bb.dn, !noalias !35442

.noexc44.i.i.i:                                   ; preds = %bb.dm
  unreachable

bb.dn:                                            ; preds = %bb.dm
  %i.sl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs7tN9tvpkfrg_12typst_layout(ptr nonnull %.sroa.759.0.copyload.i.i, i64 %.sroa.860.0.copyload.i.i) #54
          to label %bb.di unwind label %bb.dq, !noalias !35442

bb.do:                                            ; preds = %bb.dl, %bb.dk
  store ptr %.sroa.055.0.copyload.i.i, ptr %i.rj, align 8, !noalias !35441
  store i64 %.sroa.456.0.copyload.i.i, ptr %i.rk, align 8, !noalias !35441
  store ptr %.sroa.557.0.copyload.i.i, ptr %i.rl, align 8, !noalias !35441
  store i64 %.sroa.658.0.copyload.i.i, ptr %i.rm, align 8, !noalias !35441
  store ptr %.sroa.759.0.copyload.i.i, ptr %i.rn, align 8, !noalias !35441
  store i64 %.sroa.860.0.copyload.i.i, ptr %i.ro, align 8, !noalias !35441
  store ptr %.sroa.1363.0.copyload.i.i, ptr %i.rp, align 8, !noalias !35441
  store i64 %.sroa.1464.0.copyload.i.i, ptr %i.rq, align 8, !noalias !35441
  store i64 5, ptr %i.j, align 8, !noalias !35441
  invoke void @_RNvMs9_NtCsdaEETE4DqmE_13typst_library6engineNtB5_4Sink6extend(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.rt, ptr noundef nonnull %.sroa.055.0.copyload.i.i, i64 noundef %.sroa.456.0.copyload.i.i, ptr noundef nonnull %.sroa.557.0.copyload.i.i, i64 noundef %.sroa.658.0.copyload.i.i, ptr noundef nonnull %.sroa.759.0.copyload.i.i, i64 noundef %.sroa.860.0.copyload.i.i, ptr noundef nonnull %.sroa.1363.0.copyload.i.i, i64 noundef %.sroa.1464.0.copyload.i.i)
          to label %bb.dp unwind label %bb.dr, !noalias !35442

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !35441
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 80, i1 false), !noalias !35441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !35441
  store i64 8317987319222330741, ptr %i.h, align 8, !noalias !35441
  store i64 7816392313619706465, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !35441
  store i64 7237128888997146499, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !35441
  store i64 8387220255154660723, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !35441
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i.i.i.i, i8 0, i64 40, i1 false), !noalias !35441
  %i.sm = call fastcc { i64, i64 } @_RNvMs7_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsE9finish128Cs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.h) #59, !noalias !35441 ; 2 uses
  %i.sn = extractvalue { i64, i64 } %i.sm, 0
  %i.so = extractvalue { i64, i64 } %i.sm, 1
  %i.sp = zext i64 %i.sn to i128
  %i.sq = zext i64 %i.so to i128
  %i.sr = shl nuw i128 %i.sq, 64
  %i.ss = or disjoint i128 %i.sr, %i.sp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !35441
  %i.st = getelementptr inbounds nuw i8, ptr %i.rv, i64 24
  %i.su = load ptr, ptr %i.st, align 8, !invariant.load !41, !noalias !35442, !nonnull !41
  %i.sv = invoke noundef zeroext i1 %i.su(ptr noundef nonnull %i.ru, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.i, i128 noundef %i.ss)
          to label %.noexc24.i.i unwind label %bb.dt, !noalias !35418, !inline_history !35234 ; 0 uses

.noexc24.i.i:                                     ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !35441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !35441
  br label %_RNvMs2_NvNtCsdaEETE4DqmE_13typst_library6engines_1__NtB5_18___ComemoSurfaceMut6extend.exit.i.i

bb.dq:                                            ; preds = %.critedge15.i.i.i, %.critedge.i.i.i, %bb.ds, %.thread34.i.i.i, %bb.dr, %bb.dn, %bb.di, %bb.dd
  %i.sw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !35442
  unreachable

bb.dr:                                            ; preds = %bb.do
  %i.sx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvNtCsdaEETE4DqmE_13typst_library6engines_1__15___ComemoVariantECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(80) %i.j) #54
          to label %.body25.i.i unwind label %bb.dq, !noalias !35442

.thread34.i.i.i:                                  ; preds = %bb.dd, %.thread39.i.i.i
  %.pn12.pn37.i.i.i = phi { ptr, i32 } [ %i.rz, %.thread39.i.i.i ], [ %.pn.pn.i.i.i, %bb.dd ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtB1f_6styles6StylesEEEECs7tN9tvpkfrg_12typst_layout(ptr nonnull %.sroa.1363.0.copyload.i.i, i64 %.sroa.1464.0.copyload.i.i) #54
          to label %bb.ds unwind label %bb.dq, !noalias !35442

bb.ds:                                            ; preds = %.thread34.i.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs7tN9tvpkfrg_12typst_layout(ptr nonnull %.sroa.759.0.copyload.i.i, i64 %.sroa.860.0.copyload.i.i) #54
          to label %.critedge.i.i.i unwind label %bb.dq, !noalias !35442

.critedge.i.i.i:                                  ; preds = %bb.ds
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs7tN9tvpkfrg_12typst_layout(ptr nonnull %.sroa.557.0.copyload.i.i, i64 %.sroa.658.0.copyload.i.i) #54
          to label %.critedge15.i.i.i unwind label %bb.dq, !noalias !35442

.critedge15.i.i.i:                                ; preds = %.critedge.i.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionEECs7tN9tvpkfrg_12typst_layout(ptr nonnull %.sroa.055.0.copyload.i.i, i64 %.sroa.456.0.copyload.i.i) #54
          to label %.body25.i.i unwind label %bb.dq, !noalias !35442

bb.dt:                                            ; preds = %bb.dp, %bb.cz
  %i.sy = landingpad { ptr, i32 }
          cleanup
  br label %.body25.i.i

.body25.i.i:                                      ; preds = %bb.dt, %.critedge15.i.i.i, %bb.dr
  %eh.lpad-body26.i.i = phi { ptr, i32 } [ %i.sy, %bb.dt ], [ %i.sx, %bb.dr ], [ %.pn12.pn37.i.i.i, %.critedge15.i.i.i ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetoNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs7tN9tvpkfrg_12typst_layout(ptr %.sroa.9.0.copyload.i.i, i64 %.sroa.1161.0.copyload.i.i) #54, !noalias !35418
  br label %.body.i102.i

_RNvMs2_NvNtCsdaEETE4DqmE_13typst_library6engines_1__NtB5_18___ComemoSurfaceMut6extend.exit.i.i: ; preds = %.noexc24.i.i, %bb.cz
  %i.sz = icmp eq i64 %.sroa.1161.0.copyload.i.i, 0
  br i1 %i.sz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetoNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs7tN9tvpkfrg_12typst_layout.exit.i.i, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvMs2_NvNtCsdaEETE4DqmE_13typst_library6engines_1__NtB5_18___ComemoSurfaceMut6extend.exit.i.i
  %i.ta = shl i64 %.sroa.1161.0.copyload.i.i, 4   ; 2 uses
  %i.tb = add i64 %i.ta, 16                       ; 2 uses
  %i.tc = add i64 %.sroa.1161.0.copyload.i.i, 17
  %i.td = add i64 %i.tc, %i.tb                    ; 4 uses
end_hunk_8
begin_hunk_9_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout6inline7prepare7prepare:bb.a

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsgCGKXfV80i0_12unicode_bidi18ParagraphInfoFlagsE8grow_oneBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad) #58
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !45261

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fb = load ptr, ptr %i.aw, align 8, !alias.scope !45270, !noalias !45256, !nonnull !41, !noundef !41
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.fb, i64 %i.ey ; 2 uses
  store i8 %.sroa.010.043.i.i.i, ptr %i.fc, align 1, !noalias !45261
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  store i8 %.sroa.013.042.i.i.i, ptr %i.fd, align 1, !noalias !45261
  %i.fe = add i64 %i.ey, 1
  store i64 %i.fe, ptr %i.ax, align 8, !alias.scope !45270, !noalias !45256
  store i64 0, ptr %i.bi, align 8, !noalias !45256
  br label %.loopexit.i.i.i

bb.af:                                            ; preds = %bb.z
  %i.ff = add nsw i64 %i.ep, -1                   ; 2 uses
  store i64 %i.ff, ptr %i.bi, align 8, !noalias !45256
  %i.fg = load i64, ptr %i.ab, align 8, !range !45, !noalias !45256, !noundef !41
  %i.fh = icmp samesign ult i64 %i.ff, %i.fg
  call void @llvm.assume(i1 %i.fh)
  %i.fi = icmp ult i64 %i.ep, 1152921504606846977
  call void @llvm.assume(i1 %i.fi)
  br label %.loopexit.i.i.i

bb.ag:                                            ; preds = %bb.v
  %i.fj = load ptr, ptr %i.bh, align 8, !noalias !45256, !nonnull !41, !noundef !41
  %i.fk = getelementptr [8 x i8], ptr %i.fj, i64 %i.ei
  %i.fl = getelementptr i8, ptr %i.fk, i64 -8
  %i.fm = load i64, ptr %i.fl, align 8, !noalias !45261, !noundef !41 ; 6 uses
  %i.fn = icmp ult i64 %i.fm, %i.eg
  br i1 %i.fn, label %bb.ah, label %.invoke.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.fm ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 1, !range !45271, !noalias !45261, !noundef !41
  %i.fq = icmp eq i8 %i.fp, 8
  br i1 %i.fq, label %bb.ai, label %.loopexit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %..i.i.i = select i1 %.not48.i.i.i, i8 11, i8 19 ; 3 uses
  %i.fr = sub nuw i64 %i.eg, %i.fm                ; 2 uses
  store i8 %..i.i.i, ptr %i.fo, align 1, !noalias !45261
  %i.fs = add nuw i64 %i.fm, 1                    ; 2 uses
  %exitcond.1.not.i.i.i = icmp eq i64 %i.fr, 1
  br i1 %exitcond.1.not.i.i.i, label %.invoke.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.fs
  store i8 %..i.i.i, ptr %i.ft, align 1, !noalias !45261
  %i.fu = add nuw i64 %i.fm, 2                    ; 2 uses
  %exitcond.2.not.i.i.i = icmp eq i64 %i.fr, 2
  br i1 %exitcond.2.not.i.i.i, label %.invoke.i.i.i, label %.loopexit.loopexit.i.i.i

.loopexit.loopexit.i.i.i:                         ; preds = %bb.aj
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.fu
  store i8 %..i.i.i, ptr %i.fv, align 1, !noalias !45261
  br label %.loopexit.i.i.i

.invoke.i.i.i:                                    ; preds = %bb.aj, %bb.ai, %bb.ag
  %i.fw = phi i64 [ %i.fm, %bb.ag ], [ %i.fu, %bb.aj ], [ %i.fs, %bb.ai ]
  %i.fx = phi ptr [ @1, %bb.ag ], [ @2, %bb.aj ], [ @2, %bb.ai ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.fw, i64 noundef %i.eg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fx) #57
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !45261

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.ak:                                            ; preds = %bb.i, %.loopexit.split-lp.i.i.i
  %.val55.i.i.i = load i64, ptr %i.ac, align 8, !noalias !45256 ; 2 uses
  %i.fy = icmp eq i64 %.val55.i.i.i, 0
  br i1 %i.fy, label %.body.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.val56.i.i.i = load ptr, ptr %i.cy, align 8, !noalias !45256, !nonnull !41, !noundef !41
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val56.i.i.i, i64 noundef %.val55.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !45261
  br label %.body.i.i

bb.am:                                            ; preds = %bb.f
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.am, %bb.al, %bb.ak
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.fz, %bb.am ], [ %lpad.phi.i.i.i, %bb.al ], [ %lpad.phi.i.i.i, %bb.ak ] ; 2 uses
  %.val.i.i = load i64, ptr %i.ad, align 8, !noalias !45253 ; 2 uses
  %i.ga = icmp eq i64 %.val.i.i, 0
  br i1 %i.ga, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsgCGKXfV80i0_12unicode_bidi18ParagraphInfoFlagsEECs7tN9tvpkfrg_12typst_layout.exit.i.i, label %bb.an

bb.an:                                            ; preds = %.body.i.i
  %.val3.i.i = load ptr, ptr %i.aw, align 8, !noalias !45253, !nonnull !41, !noundef !41
  %i.gb = shl nuw i64 %.val.i.i, 1
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.gb, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !45258
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsgCGKXfV80i0_12unicode_bidi18ParagraphInfoFlagsEECs7tN9tvpkfrg_12typst_layout.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsgCGKXfV80i0_12unicode_bidi18ParagraphInfoFlagsEECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.an, %.body.i.i
  %.val4.i.i = load i64, ptr %i.ae, align 8, !noalias !45253 ; 2 uses
  %i.gc = icmp eq i64 %.val4.i.i, 0
  br i1 %i.gc, label %.body, label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsgCGKXfV80i0_12unicode_bidi18ParagraphInfoFlagsEECs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.val5.i.i = load ptr, ptr %i.au, align 8, !noalias !45253, !nonnull !41, !noundef !41
  %i.gd = mul nuw i64 %.val4.i.i, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i, i64 noundef %i.gd, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !45258
  br label %.body

_RINvMs0_CsgCGKXfV80i0_12unicode_bidiNtB6_14InitialInfoExt20new_with_data_sourceNtNtB6_9char_data17HardcodedBidiDataECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !45256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !45256
  %.sroa.0.i.sroa.6.24.copyload.i = load i64, ptr %i.ae, align 8, !noalias !45253 ; 6 uses
  %.sroa.0.i.sroa.8.24.copyload.i = load ptr, ptr %i.au, align 8, !noalias !45253 ; 7 uses
  %.sroa.0.i.sroa.9.24.copyload.i = load i64, ptr %i.av, align 8, !noalias !45253 ; 2 uses
  %.sroa.1212.64.copyload.i = load i64, ptr %i.ad, align 8, !noalias !45272 ; 4 uses
  %.sroa.1413.64.copyload.i = load ptr, ptr %i.aw, align 8, !noalias !45272 ; 5 uses
  %.sroa.1514.64.copyload.i = load i64, ptr %i.ax, align 8, !noalias !45272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !45253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !45253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !45273
  br i1 %i.ay, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RINvMs0_CsgCGKXfV80i0_12unicode_bidiNtB6_14InitialInfoExt20new_with_data_sourceNtNtB6_9char_data17HardcodedBidiDataECs7tN9tvpkfrg_12typst_layout.exit.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !45274
  %i.ge = call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !45274 ; 2 uses
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  %i.gg = ptrtoint ptr %i.ge to i64
  br label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelEECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.lu, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassEECs7tN9tvpkfrg_12typst_layout.exit.i, %bb.ar
  %.pn11.i = phi { ptr, i32 } [ %i.gj, %bb.ar ], [ %.pn.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassEECs7tN9tvpkfrg_12typst_layout.exit.i ], [ %.pn.i, %bb.lu ] ; 2 uses
  %i.gh = icmp eq i64 %.sroa.1212.64.copyload.i, 0
  br i1 %i.gh, label %bb.lv, label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelEECs7tN9tvpkfrg_12typst_layout.exit.i
  %i.gi = shl nuw i64 %.sroa.1212.64.copyload.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1413.64.copyload.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.1413.64.copyload.i, i64 noundef %i.gi, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !45275
  br label %bb.lv

bb.ar:                                            ; preds = %bb.as
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelEECs7tN9tvpkfrg_12typst_layout.exit.i

bb.as:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %4) #57
          to label %bb.bf unwind label %bb.ar, !noalias !45275

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.ap, %_RINvMs0_CsgCGKXfV80i0_12unicode_bidiNtB6_14InitialInfoExt20new_with_data_sourceNtNtB6_9char_data17HardcodedBidiDataECs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.1038.0.i = phi i64 [ %i.gg, %bb.ap ], [ 1, %_RINvMs0_CsgCGKXfV80i0_12unicode_bidiNtB6_14InitialInfoExt20new_with_data_sourceNtNtB6_9char_data17HardcodedBidiDataECs7tN9tvpkfrg_12typst_layout.exit.i ]
  %i.gk = inttoptr i64 %.sroa.1038.0.i to ptr
  store i64 %4, ptr %i.af, align 8, !noalias !45273
  %i.gl = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  store ptr %i.gk, ptr %i.gl, align 8, !noalias !45273
  %i.gm = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 4 uses
  store i64 0, ptr %i.gm, align 8, !noalias !45273
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.i.sroa.4.0.copyload.i) ]
  %i.gn = icmp eq i64 %.sroa.01.i.sroa.5.0.copyload.i, 0 ; 3 uses
  br i1 %i.gn, label %bb.ax, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !45276
  %i.go = call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.01.i.sroa.5.0.copyload.i, i64 noundef range(i64 1, 17) 1) #56, !noalias !45276 ; 3 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.sroa.01.i.sroa.5.0.copyload.i) #57
          to label %.noexc.i unwind label %bb.av, !noalias !45275

.noexc.i:                                         ; preds = %bb.at
  unreachable

bb.au:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.go, ptr nonnull readonly align 1 %.sroa.01.i.sroa.4.0.copyload.i, i64 range(i64 0, -9223372036854775808) %.sroa.01.i.sroa.5.0.copyload.i, i1 false), !noalias !45277
  br label %bb.ax

bb.av:                                            ; preds = %bb.at
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassEECs7tN9tvpkfrg_12typst_layout.exit.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bj, %bb.bl, %bb.bg, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread56.i
  %lpad.loopexit.split-lp2859 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.lt, %.thread.i.i, %bb.dw, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsgCGKXfV80i0_12unicode_bidi7prepare20IsolatingRunSequenceENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %eh.lpad-body35.i.i, %bb.dw ], [ %eh.lpad-body.i40.i, %bb.lt ], [ %eh.lpad-body.i40.i, %.thread.i.i ], [ %eh.lpad-body35.i.i, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsgCGKXfV80i0_12unicode_bidi7prepare20IsolatingRunSequenceENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %lpad.loopexit.split-lp2859, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  br i1 %i.gn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassEECs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.aw

bb.aw:                                            ; preds = %.body.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.617.0.i, i64 noundef %.sroa.01.i.sroa.5.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !45275
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassEECs7tN9tvpkfrg_12typst_layout.exit.i

bb.ax:                                            ; preds = %bb.au, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.617.0.i = phi ptr [ %i.go, %bb.au ], [ inttoptr (i64 1 to ptr), %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.i.sroa.8.24.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1413.64.copyload.i) ]
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.1514.64.copyload.i, i64 %.sroa.0.i.sroa.9.24.copyload.i) ; 2 uses
  %.not.i = icmp eq i64 %..i.i.i.i, 0
  br i1 %.not.i, label %.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ax
  %i.gr = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 5 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 5 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 8 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 12 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 5 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  %.sroa.5132.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.sroa.20.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %.sroa.24.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %.sroa.28.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %.sroa.29.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %.sroa.31.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %.sroa.5134.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.13135.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.16.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %.sroa.19.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %.sroa.24136.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %.sroa.25.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %.sroa.5138.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.7139.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.8140.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.18.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.20141.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %.sroa.22142.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %.sroa.23143.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %.sroa.26.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.hb = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 5 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %.sroa.6.0..sroa_idx.i41.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.88.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.99.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.13.0..sroa_idx.i42.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.16.0..sroa_idx.i43.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %.sroa.19.0..sroa_idx.i44.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %.sroa.21.0..sroa_idx.i45.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %.sroa.23.0..sroa_idx.i46.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %.sroa.24.0..sroa_idx.i47.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %.sroa.27.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %.sroa.511.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.612.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.813.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.1114.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.1615.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.20.0..sroa_idx.i48.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.22.0..sroa_idx.i49.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %.sroa.2416.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %.sroa.25.0..sroa_idx.i50.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %.sroa.26.0..sroa_idx.i51.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %.sroa.520.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.621.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.822.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.1323.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.1624.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.1925.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %.sroa.2126.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %.sroa.2327.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %.sroa.2428.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %.sroa.2529.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %.sroa.531.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.732.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.833.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.12.0..sroa_idx.i52.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.15.0..sroa_idx.i53.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.18.0..sroa_idx.i54.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.2034.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %.sroa.2235.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %.sroa.2336.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %.sroa.2637.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %.sroa.539.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.740.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.841.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.1242.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.1543.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.1844.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %.sroa.2045.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %.sroa.2246.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %.sroa.2347.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %.sroa.2648.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.hf = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 5 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  br label %bb.ay

bb.ay:                                            ; preds = %_RINvCsgCGKXfV80i0_12unicode_bidi26compute_bidi_info_for_paraNtNtB2_9char_data17HardcodedBidiDataeECs7tN9tvpkfrg_12typst_layout.exit.i, %.lr.ph.i
  %.sroa.827.0996.i = phi i64 [ 0, %.lr.ph.i ], [ %i.hh, %_RINvCsgCGKXfV80i0_12unicode_bidi26compute_bidi_info_for_paraNtNtB2_9char_data17HardcodedBidiDataeECs7tN9tvpkfrg_12typst_layout.exit.i ] ; 3 uses
  %i.hh = add nuw i64 %.sroa.827.0996.i, 1        ; 2 uses
  %i.hi = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.i.sroa.8.24.copyload.i, i64 %.sroa.827.0996.i ; 3 uses
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.1413.64.copyload.i, i64 %.sroa.827.0996.i ; 2 uses
  %.val15.i = load i64, ptr %i.hi, align 8, !alias.scope !45278, !noalias !45275, !noundef !41 ; 14 uses
  %i.hk = getelementptr i8, ptr %i.hi, i64 8
  %.val16.i = load i64, ptr %i.hk, align 8, !alias.scope !45279, !noalias !45275, !noundef !41 ; 13 uses
  %i.hl = icmp ugt i64 %.val15.i, %.val16.i
  %i.hm = icmp ugt i64 %.val16.i, %4
  %or.cond.i.i = or i1 %i.hl, %i.hm
  br i1 %or.cond.i.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread56.i, label %bb.bb, !prof !120

.thread.i:                                        ; preds = %_RINvCsgCGKXfV80i0_12unicode_bidi26compute_bidi_info_for_paraNtNtB2_9char_data17HardcodedBidiDataeECs7tN9tvpkfrg_12typst_layout.exit.i, %bb.ax
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hn, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  store ptr %3, ptr %i.ho, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  store i64 %4, ptr %i.hp, align 8
  store i64 %.sroa.01.i.sroa.0.0.copyload.i, ptr %i.ah, align 8
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %.sroa.01.i.sroa.4.0.copyload.i, ptr %.sroa.430.0..sroa_idx.i, align 8
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %.sroa.01.i.sroa.5.0.copyload.i, ptr %.sroa.531.0..sroa_idx.i, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  store i64 %.sroa.0.i.sroa.6.24.copyload.i, ptr %i.hq, align 8
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store ptr %.sroa.0.i.sroa.8.24.copyload.i, ptr %.sroa.433.0..sroa_idx.i, align 8
  %.sroa.534.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 64 ; 2 uses
  store i64 %.sroa.0.i.sroa.9.24.copyload.i, ptr %.sroa.534.0..sroa_idx.i, align 8
  br i1 %i.gn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassEECs7tN9tvpkfrg_12typst_layout.exit36.i, label %bb.az

bb.az:                                            ; preds = %.thread.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.617.0.i, i64 noundef %.sroa.01.i.sroa.5.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !45275
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassEECs7tN9tvpkfrg_12typst_layout.exit36.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassEECs7tN9tvpkfrg_12typst_layout.exit36.i: ; preds = %bb.az, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !45273
  %i.hr = icmp eq i64 %.sroa.1212.64.copyload.i, 0
  br i1 %i.hr, label %_RINvMs1_CsgCGKXfV80i0_12unicode_bidiNtB6_8BidiInfo20new_with_data_sourceNtNtB6_9char_data17HardcodedBidiDataECs7tN9tvpkfrg_12typst_layout.exit, label %bb.ba

bb.ba:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassEECs7tN9tvpkfrg_12typst_layout.exit36.i
  %i.hs = shl nuw i64 %.sroa.1212.64.copyload.i, 1
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.1413.64.copyload.i, i64 noundef %i.hs, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !45275
  br label %_RINvMs1_CsgCGKXfV80i0_12unicode_bidiNtB6_8BidiInfo20new_with_data_sourceNtNtB6_9char_data17HardcodedBidiDataECs7tN9tvpkfrg_12typst_layout.exit

bb.bb:                                            ; preds = %bb.ay
  %i.ht = icmp eq i64 %.val15.i, %4
  br i1 %i.ht, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hu = icmp eq i64 %.val15.i, 0
  br i1 %i.hu, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.be, %bb.bc
  %i.hv = icmp eq i64 %.val16.i, %4
  br i1 %i.hv, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i

bb.be:                                            ; preds = %bb.bc
  %i.hw = getelementptr inbounds nuw i8, ptr %3, i64 %.val15.i
  %i.hx = load i8, ptr %i.hw, align 1, !alias.scope !45280, !noundef !41
  %i.hy = icmp sgt i8 %i.hx, -65
  br i1 %i.hy, label %bb.bd, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread56.i, !prof !121

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i: ; preds = %bb.bd
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 %.val16.i
  %i.ia = load i8, ptr %i.hz, align 1, !alias.scope !45280, !noundef !41
  %i.ib = icmp sgt i8 %i.ia, -65
  br i1 %i.ib, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread56.i, !prof !62

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread56.i: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i, %bb.be, %bb.ay
  invoke void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, i64 noundef %.val15.i, i64 noundef %.val16.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #57
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !45275

bb.bf:                                            ; preds = %bb.bg, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread56.i, %bb.as
  unreachable

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i, %bb.bd, %bb.bb
  %i.ic = sub nuw i64 %.val16.i, %.val15.i        ; 70 uses
  %i.id = getelementptr inbounds nuw i8, ptr %3, i64 %.val15.i ; 13 uses
  %.not9.i = icmp ugt i64 %.val16.i, %.sroa.01.i.sroa.5.0.copyload.i
  br i1 %.not9.i, label %bb.bg, label %bb.bh, !prof !118

bb.bg:                                            ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.val15.i, i64 noundef %.val16.i, i64 noundef %.sroa.01.i.sroa.5.0.copyload.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #57
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !45275

bb.bh:                                            ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.01.i.sroa.4.0.copyload.i, i64 %.val15.i ; 8 uses
  %i.if = load i8, ptr %i.hj, align 1, !range !54, !noalias !45275, !noundef !41
  %i.ig = trunc nuw i8 %i.if to i1
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hj, i64 1
  %i.ii = load i8, ptr %i.ih, align 1, !range !54, !noalias !45275, !noundef !41
  %i.ij = trunc nuw i8 %i.ii to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !45281)
  call void @llvm.experimental.noalias.scope.decl(metadata !45282)
end_hunk_9
begin_hunk_10_@_RNvXs2_NtCs7tN9tvpkfrg_12typst_layout9modifiersNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameNtB5_15FrameModifyText11modify_text:bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store double %spec.store.select, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 1, ptr %i.c, align 8
  invoke fastcc void @_RNvNtCs7tN9tvpkfrg_12typst_layout9modifiers12modify_frame(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.c)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !47229)
  call void @llvm.experimental.noalias.scope.decl(metadata !47230)
  %i.t = load i64, ptr %i.d, align 16, !range !58, !alias.scope !47231, !noundef !41 ; 2 uses
  %i.u = icmp eq i64 %i.t, -1
  br i1 %i.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs7tN9tvpkfrg_12typst_layout9modifiers14FrameModifiersEBF_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !47232)
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs7tN9tvpkfrg_12typst_layout9modifiers14FrameModifiersEBF_.exit

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !47233 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 23
  %.val1.i.i.i = load i8, ptr %i.x, align 1, !alias.scope !47233, !noundef !41
  %.not.i.i.i.i.i.i.i = icmp sgt i8 %.val1.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs7tN9tvpkfrg_12typst_layout9modifiers14FrameModifiersEBF_.exit

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  %i.y = getelementptr inbounds i8, ptr %.val.i.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs7tN9tvpkfrg_12typst_layout9modifiers14FrameModifiersEBF_.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.z = atomicrmw add ptr %i.y, i64 -1 release, align 8, !noalias !47234
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.z, 1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs7tN9tvpkfrg_12typst_layout9modifiers14FrameModifiersEBF_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !47234
  %i.aa = getelementptr i8, ptr %.val.i.i.i, i64 -8
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aa, align 8, !noalias !47234, !noundef !41 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i, label %bb.k, !prof !43

bb.k:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i
  call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57, !noalias !47234
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i
  %i.ab = add nuw nsw i64 %.val.i.i.i.i.i.i.i.i.i, 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.y, ptr %i.ac, align 8, !noalias !47234
  store i64 8, ptr %i.a, align 8, !noalias !47234
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ab, ptr %i.ad, align 8, !noalias !47234
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !47234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !47234
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs7tN9tvpkfrg_12typst_layout9modifiers14FrameModifiersEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs7tN9tvpkfrg_12typst_layout9modifiers14FrameModifiersEBF_.exit: ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.l:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

bb.m:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.p
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.b = load i8, ptr %i.a, align 1, !alias.scope !47237, !noundef !41 ; 2 uses
  %.not.i = icmp sgt i8 %i.b, -1                  ; 2 uses
  %i.c = and i8 %i.b, 127
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load ptr, ptr %0, align 8, !alias.scope !47237, !nonnull !41
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !47237
  %.sroa.3.0.i = select i1 %.not.i, i64 %i.g, i64 %i.d
  %.sroa.0.0.i = select i1 %.not.i, ptr %i.e, ptr %0
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_3vec13DrainProducerTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB4I_6styles10StyleChainERB5G_NtNtNtB4K_13introspection7locator7LocatorEEINtNtB2Z_3map11MapConsumerINtNtNtB2Z_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4K_4diag16SourceDiagnosticEENtNtB4K_6engine4SinkEENCINvMBbi_NtBbi_6Engine11parallelizeINtNtNtNtB89_4iter8adapters10filter_map9FilterMapINtNtNtB89_5slice4iter4IterNtNtB9h_7collect4ItemENCNvB9h_12layout_pages0EBcc_B4y_B84_NCBdO_s_0E0EE0NCB2S_s_0INtB7n_13CollectResultB83_EBeJ_E0TBeJ_BeJ_EE00Bfg_ENtB5_3Job7executeB9j_(ptr nofree noundef captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [120 x i8], align 16              ; 11 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load <2 x ptr>, ptr %i.e, align 8
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.sroa.4.sroa.0.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.sroa.4.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load <2 x i64>, ptr %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.sroa.5.sroa.4.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.5.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.5.sroa.4.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.sroa.5.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.5.sroa.5.sroa.5.0.copyload = load i64, ptr %.sroa.5.sroa.5.sroa.5.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.sroa.6.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr null, ptr %i.e, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsf1gSX8u3EQ2_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i = load ptr, ptr %i.h, align 8, !noalias !47246, !noundef !41 ; 2 uses
  %i.i = icmp eq ptr %.val.i.i, null
  br i1 %i.i, label %bb.c, label %bb.d, !prof !118

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @211, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #57
          to label %bb.e unwind label %.body49, !noalias !47246, !inline_history !47241

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !47246
  store <2 x ptr> %i.f, ptr %i.b, align 16, !noalias !47247
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.5.sroa.4.sroa.0.0.copyload, ptr %.sroa.572.0..sroa_idx, align 16, !noalias !47247
  %.sroa.673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.5.sroa.4.sroa.4.0.copyload, ptr %.sroa.673.0..sroa_idx, align 8, !noalias !47247
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store <2 x i64> %i.g, ptr %.sroa.7.0..sroa_idx, align 16, !noalias !47247
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx74.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx74.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.975.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %.sroa.5.sroa.5.sroa.4.0.copyload, ptr %.sroa.975.0..sroa_idx, align 16, !noalias !47247
  %.sroa.1076.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 %.sroa.5.sroa.5.sroa.5.0.copyload, ptr %.sroa.1076.0..sroa_idx, align 8, !noalias !47247
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.5.sroa.6.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, i64 24, i1 false)
  invoke fastcc void @_RNCINvNtCsf1gSX8u3EQ2_10rayon_core4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB2H_6styles10StyleChainERB3F_NtNtNtB2J_13introspection7locator7LocatorEEINtNtBY_3map11MapConsumerINtNtNtBY_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2J_4diag16SourceDiagnosticEENtNtB2J_6engine4SinkEENCINvMB9f_NtB9f_6Engine11parallelizeINtNtNtNtB66_4iter8adapters10filter_map9FilterMapINtNtNtB66_5slice4iter4IterNtNtB7e_7collect4ItemENCNvB7e_12layout_pages0EBa9_B2x_B61_NCBbL_s_0E0EE0NCBR_s_0INtB5l_13CollectResultB60_EBcF_E0B7g_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(120) %i.b, ptr noundef nonnull align 128 %.val.i.i, i1 noundef zeroext true)
          to label %bb.j unwind label %.body49, !noalias !47248, !inline_history !47241

bb.e:                                             ; preds = %bb.c
  unreachable

.body49:                                          ; preds = %bb.d, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  %i.l = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.k)
          to label %bb.k unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %.body49
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #55
  unreachable

bb.g:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @738) #57
          to label %bb.i unwind label %bb.h

.body:                                            ; preds = %bb.r, %bb.u, %bb.h, %bb.m
  %.pn = phi { ptr, i32 } [ %i.t, %bb.m ], [ %i.n, %bb.h ], [ %i.ah, %bb.r ], [ %i.al, %bb.u ]
  invoke void @_RNvXNtCsf1gSX8u3EQ2_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.ab

bb.h:                                             ; preds = %bb.z, %bb.x, %bb.p, %bb.o, %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !47246
  %.sroa.063.0.copyload = load ptr, ptr %i.c, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.464.0.copyload = load ptr, ptr %.sroa.464.0..sroa_idx, align 8
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.565.sroa.0.0.copyload = load i64, ptr %.sroa.565.0..sroa_idx, align 8
  %.sroa.565.sroa.4.0..sroa.565.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.565.sroa.4.0.copyload = load ptr, ptr %.sroa.565.sroa.4.0..sroa.565.0..sroa_idx.sroa_idx, align 8
  %.sroa.565.sroa.5.0..sroa.565.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.o = load <2 x i64>, ptr %.sroa.565.sroa.5.0..sroa.565.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.l

bb.k:                                             ; preds = %.body49
  %i.p = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.l, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.0102 = phi ptr [ %i.p, %bb.k ], [ %.sroa.063.0.copyload, %bb.j ] ; 2 uses
  %.sroa.953.0100 = phi ptr [ %i.q, %bb.k ], [ %.sroa.464.0.copyload, %bb.j ] ; 2 uses
  %.sroa.9.sroa.0.0 = phi i64 [ undef, %bb.k ], [ %.sroa.565.sroa.0.0.copyload, %bb.j ] ; 2 uses
  %.sroa.9.sroa.5.0 = phi ptr [ undef, %bb.k ], [ %.sroa.565.sroa.4.0.copyload, %bb.j ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.k ], [ 1, %bb.j ] ; 2 uses
  %i.r = phi <2 x i64> [ undef, %bb.k ], [ %i.o, %bb.j ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultTINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4T_6engine4SinkEEB1l_EEEB3p_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.s)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.s, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.0.0102, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.sroa.953.0100, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %.sroa.9.sroa.0.0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.sroa.9.sroa.5.0, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.u = extractelement <2 x i64> %i.r, i64 0
  store i64 %i.u, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.v = extractelement <2 x i64> %i.r, i64 1
  store i64 %i.v, ptr %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  br label %.body

bb.n:                                             ; preds = %bb.l
  store i64 %.sroa.04.0, ptr %i.s, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.0.0102, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.sroa.953.0100, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %.sroa.9.sroa.0.0, ptr %.sroa.9.0..sroa_idx10, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.sroa.9.sroa.5.0, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx10.sroa_idx, align 8
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store <2 x i64> %i.r, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx10.sroa_idx, align 8
  %.val = load ptr, ptr %0, align 8, !noundef !41 ; 11 uses
  %i.w = cmpxchg ptr %.val, i32 0, i32 1 acquire monotonic, align 4, !noalias !47249
  %i.x = extractvalue { i32, i1 } %i.w, 1
  br i1 %i.x, label %.noexc, label %bb.o, !prof !43

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %.val)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.o, %bb.n
  %i.y = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !47249
  %i.z = and i64 %i.y, 9223372036854775807
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexbE4lockCs7tN9tvpkfrg_12typst_layout.exit.i.i, label %bb.p, !prof !43

bb.p:                                             ; preds = %.noexc
  %i.ab = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #58
          to label %.noexc43 unwind label %bb.h

.noexc43:                                         ; preds = %bb.p
  %i.ac = xor i1 %i.ab, true
  %i.ad = zext i1 %i.ac to i8
  br label %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexbE4lockCs7tN9tvpkfrg_12typst_layout.exit.i.i

_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexbE4lockCs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %.noexc43, %.noexc
  %.sroa.01.0.i.i.i.i = phi i8 [ %i.ad, %.noexc43 ], [ 0, %.noexc ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 4 ; 2 uses
  %i.af = load atomic i8, ptr %i.ae monotonic, align 1, !noalias !47249
  %.not.i.i.not.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCs7tN9tvpkfrg_12typst_layout.exit.i.i, label %bb.q, !prof !43

bb.q:                                             ; preds = %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexbE4lockCs7tN9tvpkfrg_12typst_layout.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !47250
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  store ptr %.val, ptr %i.d, align 8, !noalias !47250
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %.sroa.01.0.i.i.i.i, ptr %i.ag, align 8, !noalias !47250
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @287, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @288, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @760) #57
          to label %bb.s unwind label %bb.r, !noalias !47250

bb.r:                                             ; preds = %bb.q
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardbEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #54
          to label %.body unwind label %bb.t, !noalias !47250

bb.s:                                             ; preds = %bb.q
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !47250
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexbE4lockCs7tN9tvpkfrg_12typst_layout.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 5
  store i8 1, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 8
  invoke void @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync6poison7condvarNtB2_7Condvar10notify_all(ptr noundef nonnull align 4 %i.ak)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECs7tN9tvpkfrg_12typst_layout(ptr nonnull %.val, i8 %.sroa.01.0.i.i.i.i) #54
          to label %.body unwind label %bb.aa

bb.v:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.am = trunc nuw i8 %.sroa.01.0.i.i.i.i to i1
  br i1 %i.am, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.an = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ao = and i64 %i.an, 9223372036854775807
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.x, !prof !43

bb.x:                                             ; preds = %bb.w
  %i.aq = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #58
          to label %.noexc44 unwind label %bb.h

.noexc44:                                         ; preds = %bb.x
  br i1 %i.aq, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %.noexc44
  store atomic i8 1, ptr %i.ae monotonic, align 1
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.y, %.noexc44, %bb.w, %bb.v
  %i.ar = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.as = icmp eq i32 %i.ar, 2
  br i1 %i.as, label %bb.z, label %_RNvXsd_NtCsf1gSX8u3EQ2_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCs7tN9tvpkfrg_12typst_layout.exit, !prof !44

bb.z:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val)
          to label %_RNvXsd_NtCsf1gSX8u3EQ2_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.h

bb.aa:                                            ; preds = %bb.u
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

_RNvXsd_NtCsf1gSX8u3EQ2_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %bb.z
  ret void

bb.ab:                                            ; preds = %.body
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_3vec13DrainProducerTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB4r_6styles10StyleChainERB5p_NtNtNtB4t_13introspection7locator7LocatorEEINtNtB2I_3map11MapConsumerINtNtNtB2I_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4t_4diag16SourceDiagnosticEENtNtB4t_6engine4SinkEENCINvMBb1_NtBb1_6Engine11parallelizeINtNtNtNtB7S_4iter8adapters10filter_map9FilterMapINtNtNtB7S_5slice4iter4IterNtNtB90_7collect4ItemENCNvB90_12layout_pages0EBbV_B4h_B7N_NCBdx_s_0E0EE0NCB2B_s_0INtB76_13CollectResultB7M_EBes_E0TBes_Bes_EE0BeZ_ENtB5_3Job7executeB92_(ptr nofree noundef captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [120 x i8], align 16              ; 11 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %i.e = load <2 x ptr>, ptr %0, align 8
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.4.sroa.0.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.sroa.4.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load <2 x i64>, ptr %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.5.sroa.5.sroa.4.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.5.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.5.sroa.4.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.sroa.5.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.5.sroa.5.sroa.5.0.copyload = load i64, ptr %.sroa.5.sroa.5.sroa.5.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.sroa.6.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsf1gSX8u3EQ2_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i = load ptr, ptr %i.g, align 8, !noalias !47263, !noundef !41 ; 2 uses
  %i.h = icmp eq ptr %.val.i.i, null
  br i1 %i.h, label %bb.c, label %bb.d, !prof !118

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @211, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @213) #57
          to label %bb.e unwind label %.body47, !noalias !47263, !inline_history !47254

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !47263
  store <2 x ptr> %i.e, ptr %i.b, align 16, !noalias !47264
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.5.sroa.4.sroa.0.0.copyload, ptr %.sroa.570.0..sroa_idx, align 16, !noalias !47264
  %.sroa.671.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.5.sroa.4.sroa.4.0.copyload, ptr %.sroa.671.0..sroa_idx, align 8, !noalias !47264
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store <2 x i64> %i.f, ptr %.sroa.7.0..sroa_idx, align 16, !noalias !47264
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx72.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx72.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.973.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %.sroa.5.sroa.5.sroa.4.0.copyload, ptr %.sroa.973.0..sroa_idx, align 16, !noalias !47264
  %.sroa.1074.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 %.sroa.5.sroa.5.sroa.5.0.copyload, ptr %.sroa.1074.0..sroa_idx, align 8, !noalias !47264
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.5.sroa.6.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, i64 24, i1 false)
  invoke fastcc void @_RNCINvNtCsf1gSX8u3EQ2_10rayon_core4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB2H_6styles10StyleChainERB3F_NtNtNtB2J_13introspection7locator7LocatorEEINtNtBY_3map11MapConsumerINtNtNtBY_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2J_4diag16SourceDiagnosticEENtNtB2J_6engine4SinkEENCINvMB9f_NtB9f_6Engine11parallelizeINtNtNtNtB66_4iter8adapters10filter_map9FilterMapINtNtNtB66_5slice4iter4IterNtNtB7e_7collect4ItemENCNvB7e_12layout_pages0EBa9_B2x_B61_NCBbL_s_0E0EE0NCBR_s_0INtB5l_13CollectResultB60_EBcF_E0B7g_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(120) %i.b, ptr noundef nonnull align 128 %.val.i.i, i1 noundef zeroext true)
          to label %bb.j unwind label %.body47, !noalias !47265, !inline_history !47254

bb.e:                                             ; preds = %bb.c
  unreachable

.body47:                                          ; preds = %bb.d, %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.j)
          to label %bb.k unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %.body47
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #55
  unreachable

bb.g:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @738) #57
          to label %bb.i unwind label %bb.h

.body:                                            ; preds = %bb.v, %bb.y, %bb.z, %bb.h, %bb.m
  %.pn = phi { ptr, i32 } [ %i.s, %bb.m ], [ %i.m, %bb.h ], [ %i.al, %bb.z ], [ %i.al, %bb.y ], [ %i.al, %bb.v ]
  invoke void @_RNvXNtCsf1gSX8u3EQ2_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.ac

bb.h:                                             ; preds = %bb.x, %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !47263
  %.sroa.061.0.copyload = load ptr, ptr %i.c, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.462.0.copyload = load ptr, ptr %.sroa.462.0..sroa_idx, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.563.sroa.0.0.copyload = load i64, ptr %.sroa.563.0..sroa_idx, align 8
  %.sroa.563.sroa.4.0..sroa.563.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.563.sroa.4.0.copyload = load ptr, ptr %.sroa.563.sroa.4.0..sroa.563.0..sroa_idx.sroa_idx, align 8
  %.sroa.563.sroa.5.0..sroa.563.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.n = load <2 x i64>, ptr %.sroa.563.sroa.5.0..sroa.563.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.l

bb.k:                                             ; preds = %.body47
  %i.o = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.0100 = phi ptr [ %i.o, %bb.k ], [ %.sroa.061.0.copyload, %bb.j ] ; 2 uses
  %.sroa.951.098 = phi ptr [ %i.p, %bb.k ], [ %.sroa.462.0.copyload, %bb.j ] ; 2 uses
  %.sroa.9.sroa.0.0 = phi i64 [ undef, %bb.k ], [ %.sroa.563.sroa.0.0.copyload, %bb.j ] ; 2 uses
  %.sroa.9.sroa.5.0 = phi ptr [ undef, %bb.k ], [ %.sroa.563.sroa.4.0.copyload, %bb.j ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.k ], [ 1, %bb.j ] ; 2 uses
  %i.q = phi <2 x i64> [ undef, %bb.k ], [ %i.n, %bb.j ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultTINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4T_6engine4SinkEEB1l_EEEB3p_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.r)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.r, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sroa.0.0100, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.951.098, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %.sroa.9.sroa.0.0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %.sroa.9.sroa.5.0, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = extractelement <2 x i64> %i.q, i64 0
  store i64 %i.t, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.u = extractelement <2 x i64> %i.q, i64 1
  store i64 %i.u, ptr %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  br label %.body

bb.n:                                             ; preds = %bb.l
  store i64 %.sroa.04.0, ptr %i.r, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sroa.0.0100, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.951.098, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %.sroa.9.sroa.0.0, ptr %.sroa.9.0..sroa_idx10, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %.sroa.9.sroa.5.0, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx10.sroa_idx, align 8
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <2 x i64> %i.q, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx10.sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.x = load i8, ptr %i.w, align 8, !range !54, !noundef !41
  %i.y = trunc nuw i8 %i.x to i1                  ; 3 uses
  br i1 %i.y, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = load ptr, ptr %i.v, align 8, !nonnull !41, !align !46, !noundef !41
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !41, !noundef !41
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ab = load ptr, ptr %i.v, align 8, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !41, !noundef !41
  %i.ad = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.r, %bb.o
  %.pn.i = phi ptr [ %i.ak, %bb.r ], [ %i.aa, %bb.o ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ag = load i64, ptr %i.af, align 8, !noundef !41
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ai = atomicrmw xchg ptr %i.ah, i64 3 acq_rel, align 8
  %i.aj = icmp eq i64 %i.ai, 2
  br i1 %i.aj, label %bb.u, label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.ak = load ptr, ptr %i.ab, align 8, !nonnull !41, !noundef !41 ; 2 uses
  store ptr %i.ak, ptr %i.d, align 8
  br label %bb.q

bb.s:                                             ; preds = %bb.p
  tail call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.u, %bb.q
  br i1 %i.y, label %bb.w, label %bb.ab

bb.u:                                             ; preds = %bb.q
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ag)
          to label %bb.t unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.y, label %bb.y, label %.body

bb.w:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47267)
  %i.am = load ptr, ptr %i.d, align 8, !alias.scope !47268, !nonnull !41, !noundef !41
  %i.an = atomicrmw add ptr %i.am, i64 -1 release, align 8, !noalias !47268
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsf1gSX8u3EQ2_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #58
          to label %bb.ab unwind label %bb.h

bb.y:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47270)
  %i.ap = load ptr, ptr %i.d, align 8, !alias.scope !47271, !nonnull !41, !noundef !41
  %i.aq = atomicrmw add ptr %i.ap, i64 -1 release, align 8, !noalias !47271
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.z, label %.body

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsf1gSX8u3EQ2_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #58
          to label %.body unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

bb.ab:                                            ; preds = %bb.w, %bb.t, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.ac:                                            ; preds = %.body
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB5D_6engine4SinkEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerTRRSTRNtNtNtB5D_11foundations7content7ContentNtNtB8m_6styles10StyleChainERB8V_NtNtNtB5D_13introspection7locator7LocatorEEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCINvMB6x_NtB6x_6Engine11parallelizeINtNtNtNtB2Z_4iter8adapters10filter_map9FilterMapINtNtNtB2Z_5slice4iter4IterNtNtB47_7collect4ItemENCNvB47_12layout_pages0EBbC_B8c_B2U_NCBde_s_0E0EEs_0E0B1P_ENtB5_3Job7executeB49_(ptr nofree noundef captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [64 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.671.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !47292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.671.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8, !noalias !47293
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.469.0..sroa_idx, align 8, !noalias !47293
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.5.sroa.4.0.copyload, ptr %.sroa.570.0..sroa_idx, align 8, !noalias !47293
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47294)
  %.sroa.5.0.copyload.i.cast = inttoptr i64 %.sroa.5.sroa.4.0.copyload to ptr ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.671.0..sroa_idx, align 8, !alias.scope !47294, !nonnull !41, !noundef !41
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !47294
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.e = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !47295, !noundef !41
  %i.f = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !47295, !noundef !41
  %i.g = sub i64 %i.e, %i.f
  %i.h = load i64, ptr %.sroa.5.0.copyload.i.cast, align 8, !noalias !47295, !noundef !41
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.cast, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noalias !47295, !noundef !41
  invoke fastcc void @_RINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainERB2M_NtNtNtB1Q_13introspection7locator7LocatorEEINtNtB6_3map11MapConsumerINtNtNtB6_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1Q_4diag16SourceDiagnosticEENtNtB1Q_6engine4SinkEENCINvMB8m_NtB8m_6Engine11parallelizeINtNtNtNtB5d_4iter8adapters10filter_map9FilterMapINtNtNtB5d_5slice4iter4IterNtNtB6l_7collect4ItemENCNvB6l_12layout_pages0EB9g_B1E_B58_NCBaS_s_0E0EEB6n_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.g, i1 noundef zeroext true, i64 noundef %i.h, i64 noundef %i.j, ptr noalias nofree noundef nonnull align 16 %.sroa.6.0.copyload.i, i64 noundef %.sroa.7.0.copyload.i, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %.sroa.8.0..sroa_idx.i)
          to label %bb.h unwind label %bb.c, !inline_history !47281

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  %i.m = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.l)
          to label %bb.i unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #55
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @738) #57
          to label %bb.g unwind label %bb.f

.body46:                                          ; preds = %bb.x, %bb.aa, %bb.ab, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.o, %bb.f ], [ %i.ba, %bb.ab ], [ %i.ba, %bb.aa ], [ %i.ba, %bb.x ]
  invoke void @_RNvXNtCsf1gSX8u3EQ2_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.ae

bb.f:                                             ; preds = %bb.z, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body46

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !47292
  %.sroa.065.0.copyload = load ptr, ptr %i.c, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.466.0.copyload = load ptr, ptr %.sroa.466.0..sroa_idx, align 8
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.567.0.copyload = load i64, ptr %.sroa.567.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.p = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.081 = phi ptr [ %i.p, %bb.i ], [ %.sroa.065.0.copyload, %bb.h ] ; 2 uses
  %.sroa.9.07278 = phi ptr [ %i.q, %bb.i ], [ %.sroa.466.0.copyload, %bb.h ] ; 2 uses
  %.sroa.9.0 = phi i64 [ undef, %bb.i ], [ %.sroa.567.0.copyload, %bb.h ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.i ], [ 1, %bb.h ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47296)
  %i.s = load i64, ptr %i.r, align 8, !range !52, !alias.scope !47296, !noundef !41
  switch i64 %i.s, label %bb.k [
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4S_6engine4SinkEEEEB3o_.exit
    i64 1, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val2.i = load ptr, ptr %i.t, align 8, !alias.scope !47296 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val3.i = load ptr, ptr %i.u, align 8, !alias.scope !47296, !nonnull !41, !align !46, !noundef !41 ; 5 uses
  %i.v = load ptr, ptr %.val3.i, align 8, !invariant.load !41, !noalias !47296 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  invoke void %i.v(ptr noundef nonnull %.val2.i)
          to label %bb.m unwind label %bb.n, !noalias !47296

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.val3.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !45, !invariant.load !41, !noalias !47296 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4S_6engine4SinkEEEEB3o_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %.val3.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !80, !invariant.load !41, !noalias !47296
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) %i.aa) #56, !noalias !47296
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4S_6engine4SinkEEEEB3o_.exit

bb.n:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val3.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !45, !invariant.load !41, !noalias !47296 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.body, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %.val3.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !80, !invariant.load !41, !noalias !47296
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) %i.ag) #56, !noalias !47296
  br label %.body

bb.o:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i = load ptr, ptr %i.ah, align 8, !alias.scope !47296, !noundef !41
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val1.i = load i64, ptr %i.ai, align 8, !alias.scope !47296, !noundef !41
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB36_6engine4SinkEEB1C_(ptr noalias nofree noundef nonnull readonly align 8 %.val.i, i64 noundef %.val1.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4S_6engine4SinkEEEEB3o_.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.p ], [ %i.ab, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i ], [ %i.ab, %bb.n ]
  store i64 %.sroa.04.0, ptr %i.r, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.0.081, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.9.07278, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %.body46

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4S_6engine4SinkEEEEB3o_.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.m, %bb.j, %bb.o
  store i64 %.sroa.04.0, ptr %i.r, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.0.081, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.9.07278, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx10, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = load i8, ptr %i.al, align 8, !range !54, !noundef !41
  %i.an = trunc nuw i8 %i.am to i1                ; 3 uses
  br i1 %i.an, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4S_6engine4SinkEEEEB3o_.exit
  %i.ao = load ptr, ptr %i.ak, align 8, !nonnull !41, !align !46, !noundef !41
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !41, !noundef !41
  br label %bb.s

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4S_6engine4SinkEEEEB3o_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aq = load ptr, ptr %i.ak, align 8, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !41, !noundef !41
  %i.as = atomicrmw add ptr %i.ar, i64 1 monotonic, align 8
  %i.at = icmp slt i64 %i.as, 0
  br i1 %i.at, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.t, %bb.q
  %.pn.i = phi ptr [ %i.az, %bb.t ], [ %i.ap, %bb.q ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.av = load i64, ptr %i.au, align 8, !noundef !41
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ax = atomicrmw xchg ptr %i.aw, i64 3 acq_rel, align 8
  %i.ay = icmp eq i64 %i.ax, 2
  br i1 %i.ay, label %bb.w, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.az = load ptr, ptr %i.aq, align 8, !nonnull !41, !noundef !41 ; 2 uses
  store ptr %i.az, ptr %i.d, align 8
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  tail call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.w, %bb.s
  br i1 %i.an, label %bb.y, label %bb.ad

bb.w:                                             ; preds = %bb.s
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.av)
          to label %bb.v unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.an, label %bb.aa, label %.body46

bb.y:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47298)
  %i.bb = load ptr, ptr %i.d, align 8, !alias.scope !47299, !nonnull !41, !noundef !41
  %i.bc = atomicrmw add ptr %i.bb, i64 -1 release, align 8, !noalias !47299
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsf1gSX8u3EQ2_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #58
          to label %bb.ad unwind label %bb.f

bb.aa:                                            ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47301)
  %i.be = load ptr, ptr %i.d, align 8, !alias.scope !47302, !nonnull !41, !noundef !41
  %i.bf = atomicrmw add ptr %i.be, i64 -1 release, align 8, !noalias !47302
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.ab, label %.body46

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsf1gSX8u3EQ2_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #58
          to label %.body46 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

bb.ad:                                            ; preds = %bb.y, %bb.v, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.ae:                                            ; preds = %.body46
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %.body46
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtNtCs7tN9tvpkfrg_12typst_layout6inline4lineNtB5_5ItemsNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.d, align 8, !noundef !41 ; 2 uses
  %.idx.i = mul nuw nsw i64 %.val1, 24
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i
  %i.f = icmp eq i64 %.val1, 0
  br i1 %i.f, label %_RINvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexNtB17_9ItemEntryERINtNtCs1xwejQucwHj_5alloc3vec3VecB14_EEB1b_.exit, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterTNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexNtBS_9ItemEntryEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBW_.exit.i

end_hunk_10
begin_hunk_11_@_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout:bb.a
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.l, %bb.l, %bb.m, %bb.o, %bb.q, %bb.n, %bb.p, %bb.r, %bb.k, %bb.j, %bb.e, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %.lr.ph
  %i.bb = icmp eq i64 %i.o, %i.l
  br i1 %i.bb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph

bb.t:                                             ; preds = %.lr.ph55
  %i.bc = add i64 %.sroa.0.1.i54, 1               ; 2 uses
  %i.bd = icmp eq i64 %i.bc, %i.l
  br i1 %i.bd, label %.body, label %.lr.ph55

bb.u:                                             ; preds = %bb.r, %bb.p, %bb.n, %bb.k, %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body17

.body17:                                          ; preds = %bb.u, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.f, %bb.i
  %eh.lpad-body18 = phi { ptr, i32 } [ %i.ao, %bb.i ], [ %i.be, %bb.u ], [ %i.ad, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.ad, %bb.f ]
  %i.bf = icmp eq i64 %i.o, %i.l
  br i1 %i.bf, label %.body, label %.lr.ph55

.lr.ph55:                                         ; preds = %.body17, %bb.t
  %.sroa.0.1.i54 = phi i64 [ %i.bc, %bb.t ], [ %i.o, %.body17 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [128 x i8], ptr %.val4, i64 %.sroa.0.1.i54
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 dereferenceable(128) %i.bg) #54
          to label %bb.t unwind label %bb.v, !inline_history !0

bb.v:                                             ; preds = %.lr.ph55
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !inline_history !0
  unreachable

.body:                                            ; preds = %bb.t, %.body17
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.w

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs7tN9tvpkfrg_12typst_layout.exit, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE4sizeCs7tN9tvpkfrg_12typst_layout.exit
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.thread: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs7tN9tvpkfrg_12typst_layout.exit
  ret void

bb.w:                                             ; preds = %.body
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body18
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val4 = load ptr, ptr %0, align 8, !nonnull !41, !noundef !41 ; 5 uses
  %.not.i = icmp eq ptr %.val4, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.val4, i64 -16 ; 2 uses
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.a
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8
  %.not = icmp eq i64 %i.c, 1
  br i1 %.not, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.val4, i64 -8
  %.val.i = load i64, ptr %i.d, align 8, !noundef !41 ; 2 uses
  %i.e = icmp ult i64 %.val.i, 288230376151711744
  %i.f = shl nuw i64 %.val.i, 6
  %i.g = or disjoint i64 %i.f, 16                 ; 2 uses
  %i.h = icmp ult i64 %i.g, 9223372036854775791
  %narrow.i.i = select i1 %i.e, i1 %i.h, i1 false
  br i1 %narrow.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE4sizeCs7tN9tvpkfrg_12typst_layout.exit, label %bb.b, !prof !43

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE4sizeCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.i, align 8
  store i64 16, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !41 ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %i.l
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE4sizeCs7tN9tvpkfrg_12typst_layout.exit, %bb.c
  %.sroa.0.0.i1013 = phi i64 [ %i.p, %bb.c ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE4sizeCs7tN9tvpkfrg_12typst_layout.exit ] ; 2 uses
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %.val4, i64 %.sroa.0.0.i1013
  %i.p = add i64 %.sroa.0.0.i1013, 1              ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 dereferenceable(64) %i.o)
          to label %bb.c unwind label %bb.e, !inline_history !47882

bb.d:                                             ; preds = %.lr.ph15
  %i.q = add i64 %.sroa.0.1.i14, 1                ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.l
  br i1 %i.r, label %.body, label %.lr.ph15

bb.e:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.p, %i.l
  br i1 %i.t, label %.body, label %.lr.ph15

.lr.ph15:                                         ; preds = %bb.e, %bb.d
  %.sroa.0.1.i14 = phi i64 [ %i.q, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %.val4, i64 %.sroa.0.1.i14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 dereferenceable(64) %i.u) #54
          to label %bb.d unwind label %bb.f, !inline_history !47882

bb.f:                                             ; preds = %.lr.ph15
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !inline_history !47882
  unreachable

.body:                                            ; preds = %bb.d, %bb.e
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.c, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE4sizeCs7tN9tvpkfrg_12typst_layout.exit
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.thread: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECs7tN9tvpkfrg_12typst_layout.exit
  ret void

bb.g:                                             ; preds = %.body
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %.body
  resume { ptr, i32 } %i.s
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !110, !noundef !41 ; 2 uses
  %i.b = icmp samesign ugt i32 %i.a, 1
  %i.c = zext nneg i32 %i.a to i64
  %i.d = add nsw i64 %i.c, -1
  %i.e = select i1 %i.b, i64 %i.d, i64 0          ; 2 uses
  %i.f = load i32, ptr %1, align 8, !range !110, !noundef !41 ; 2 uses
  %i.g = icmp samesign ult i32 %i.f, 2            ; 2 uses
  %i.h = zext nneg i32 %i.f to i64
  %i.i = add nsw i64 %i.h, -1
  %i.j = select i1 %i.g, i64 0, i64 %i.i
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %bb.b, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %i.e, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.ar
  ]

_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs7tN9tvpkfrg_12typst_layout.exit.i.i23.i, %.lr.ph.i.i21.i, %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs7tN9tvpkfrg_12typst_layout.exit.i.i11.i, %.lr.ph.i.i9.i, %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, %.lr.ph.i.i.i, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE20load_or_compute_hash0ECs7tN9tvpkfrg_12typst_layout.exit4.i.i.i, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %.split.i31.i, %bb.am, %bb.al, %bb.ak, %.loopexit.i25.i, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %.split.i19.i, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %.loopexit.i13.i, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %.split.i.i, %bb.n, %.loopexit.i.i, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.e, %bb.a, %bb.d
  %.sroa.0.0.shrunk = phi i1 [ %i.l, %bb.d ], [ false, %bb.a ], [ false, %bb.av ], [ false, %bb.e ], [ true, %bb.i ], [ true, %bb.g ], [ false, %bb.al ], [ true, %bb.h ], [ false, %.loopexit.i25.i ], [ false, %.split.i.i ], [ false, %bb.q ], [ %spec.select.i.i, %bb.r ], [ false, %bb.n ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.p ], [ false, %.loopexit.i.i ], [ false, %bb.ba ], [ false, %.split.i19.i ], [ false, %bb.ae ], [ %spec.select.i18.i, %bb.af ], [ false, %bb.ab ], [ false, %bb.y ], [ false, %.loopexit.i13.i ], [ false, %bb.t ], [ false, %bb.s ], [ false, %bb.ad ], [ false, %bb.aa ], [ false, %bb.z ], [ false, %bb.x ], [ false, %bb.w ], [ false, %_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE20load_or_compute_hash0ECs7tN9tvpkfrg_12typst_layout.exit4.i.i.i ], [ false, %.split.i31.i ], [ false, %bb.ap ], [ %spec.select.i30.i, %bb.aq ], [ false, %bb.am ], [ false, %bb.ak ], [ false, %bb.ah ], [ false, %bb.ag ], [ false, %bb.ao ], [ false, %bb.ay ], [ false, %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs7tN9tvpkfrg_12typst_layout.exit.i.i11.i ], [ false, %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ true, %bb.ar ], [ %spec.select.i.i.i, %bb.bc ], [ false, %bb.bb ], [ false, %bb.aw ], [ false, %bb.az ], [ false, %bb.ax ], [ false, %.lr.ph.i.i.i ], [ false, %.lr.ph.i.i9.i ], [ false, %.lr.ph.i.i21.i ], [ false, %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs7tN9tvpkfrg_12typst_layout.exit.i.i23.i ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.g)
  %i.l = tail call fastcc noundef zeroext i1 @_RNvXsw_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_5ColorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #59
  br label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i64, ptr %i.m, align 8, !range !52, !noundef !41 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.o, align 8            ; 30 uses
  %.val3 = load i64, ptr %i.n, align 8, !range !52, !noundef !41
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4 = load ptr, ptr %i.p, align 8            ; 30 uses
  %i.q = icmp eq i64 %.val, %.val3
  br i1 %i.q, label %bb.f, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  %i.r = icmp eq ptr %.val2, %.val4               ; 3 uses
  switch i64 %.val, label %default.unreachable [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.i
  ]

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  br i1 %i.r, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit, label %bb.j

bb.h:                                             ; preds = %bb.f
  br i1 %i.r, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit, label %bb.s

bb.i:                                             ; preds = %bb.f
  br i1 %i.r, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit, label %bb.ag

bb.j:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.val2, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val4, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47895)
  %i.u = getelementptr inbounds nuw i8, ptr %.val2, i64 96
  %i.v = load i8, ptr %i.u, align 8, !range !54, !alias.scope !47894, !noundef !41
  %i.w = getelementptr inbounds nuw i8, ptr %.val4, i64 96
  %i.x = load i8, ptr %i.w, align 8, !range !54, !alias.scope !47895, !noundef !41
  %i.y = icmp eq i8 %i.v, %i.x
  br i1 %i.y, label %bb.k, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %.val2, i64 80
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !47894, !noundef !41 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val4, i64 80
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !47895, !noundef !41
  %i.ad = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.l, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %.val4, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !47895, !nonnull !41, !noundef !41
  %i.ag = getelementptr inbounds nuw i8, ptr %.val2, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !47894, !nonnull !41, !noundef !41
  %i.ai = icmp eq i64 %i.aa, 0
  br i1 %i.ai, label %.loopexit.i.i, label %.lr.ph.i.i.i

bb.m:                                             ; preds = %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %i.aj = add nuw i64 %.sroa.01.06.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.aj, %i.aa
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %bb.m
  %.sroa.01.06.i.i.i = phi i64 [ %i.aj, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %.sroa.01.06.i.i.i ; 2 uses
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %.sroa.01.06.i.i.i ; 2 uses
  %i.am = tail call fastcc noundef zeroext i1 @_RNvXsw_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_5ColorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.al) #59, !noalias !47896
  br i1 %i.am, label %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.ap = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ao), !noalias !47896
  br i1 %i.ap, label %bb.m, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

.loopexit.i.i:                                    ; preds = %bb.m, %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %.val2, i64 88
  %i.ar = getelementptr inbounds nuw i8, ptr %.val4, i64 88
  %i.as = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ar)
  br i1 %i.as, label %bb.n, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %.loopexit.i.i
  %i.at = load i64, ptr %i.s, align 8, !range !58, !alias.scope !47894, !noundef !41
  %i.au = icmp ne i64 %i.at, -1                   ; 2 uses
  %i.av = load i64, ptr %i.t, align 8, !range !58, !alias.scope !47895, !noundef !41
  %i.aw = icmp eq i64 %i.av, -1                   ; 3 uses
  %not..i.i = xor i1 %i.aw, true
  %i.ax = xor i1 %i.au, %i.aw
  br i1 %i.ax, label %bb.o, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  br i1 %i.au, label %.split.i.i, label %bb.p

.split.i.i:                                       ; preds = %bb.o
  tail call void @llvm.assume(i1 %not..i.i)
  %i.ay = tail call fastcc noundef zeroext i1 @_RNvXsU_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12SpotColorantNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.t) #59
  br i1 %i.ay, label %bb.q, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.assume(i1 %i.aw)
  %i.az = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %i.ba = load i8, ptr %i.az, align 8, !range !127, !alias.scope !47894, !noundef !41
  %i.bb = getelementptr inbounds nuw i8, ptr %.val4, i64 24
  %i.bc = load i8, ptr %i.bb, align 8, !range !127, !alias.scope !47895, !noundef !41
  %i.bd = icmp eq i8 %i.ba, %i.bc
  br i1 %i.bd, label %bb.q, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.p, %.split.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.val2, i64 97
  %i.bf = load i8, ptr %i.be, align 1, !range !48, !alias.scope !47894, !noundef !41 ; 2 uses
  %i.bg = icmp ne i8 %i.bf, 2                     ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val4, i64 97
  %i.bi = load i8, ptr %i.bh, align 1, !range !48, !alias.scope !47895, !noundef !41 ; 2 uses
  %i.bj = icmp ne i8 %i.bi, 2                     ; 2 uses
  %i.bk = xor i1 %i.bg, %i.bj
  br i1 %i.bk, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %brmerge.demorgan.i.i = and i1 %i.bg, %i.bj
  %.not.i.i = icmp eq i8 %i.bf, %i.bi
  %not.brmerge.demorgan.i.i = xor i1 %brmerge.demorgan.i.i, true
  %spec.select.i.i = or i1 %.not.i.i, %not.brmerge.demorgan.i.i
  br label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %.val2, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val4, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47898)
  %i.bn = getelementptr inbounds nuw i8, ptr %.val2, i64 136
  %i.bo = load i8, ptr %i.bn, align 8, !range !54, !alias.scope !47897, !noundef !41
  %i.bp = getelementptr inbounds nuw i8, ptr %.val4, i64 136
  %i.bq = load i8, ptr %i.bp, align 8, !range !54, !alias.scope !47898, !noundef !41
  %i.br = icmp eq i8 %i.bo, %i.bq
  br i1 %i.br, label %bb.t, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %.val2, i64 80
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !47897, !noundef !41 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.val4, i64 80
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !47898, !noundef !41
  %i.bw = icmp eq i64 %i.bt, %i.bv
  br i1 %i.bw, label %bb.u, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw i8, ptr %.val4, i64 72
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !47898, !nonnull !41, !noundef !41
  %i.bz = getelementptr inbounds nuw i8, ptr %.val2, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !47897, !nonnull !41, !noundef !41
  %i.cb = icmp eq i64 %i.bt, 0
  br i1 %i.cb, label %.loopexit.i13.i, label %.lr.ph.i.i9.i

bb.v:                                             ; preds = %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs7tN9tvpkfrg_12typst_layout.exit.i.i11.i
  %i.cc = add nuw i64 %.sroa.01.06.i.i10.i, 1     ; 2 uses
  %exitcond.not.i.i12.i = icmp eq i64 %i.cc, %i.bt
  br i1 %exitcond.not.i.i12.i, label %.loopexit.i13.i, label %.lr.ph.i.i9.i

.lr.ph.i.i9.i:                                    ; preds = %bb.u, %bb.v
  %.sroa.01.06.i.i10.i = phi i64 [ %i.cc, %bb.v ], [ 0, %bb.u ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr %i.ca, i64 %.sroa.01.06.i.i10.i ; 2 uses
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %.sroa.01.06.i.i10.i ; 2 uses
  %i.cf = tail call fastcc noundef zeroext i1 @_RNvXsw_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_5ColorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ce) #59, !noalias !47899
  br i1 %i.cf, label %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs7tN9tvpkfrg_12typst_layout.exit.i.i11.i, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs7tN9tvpkfrg_12typst_layout.exit.i.i11.i: ; preds = %.lr.ph.i.i9.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.ci = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ch), !noalias !47899
  br i1 %i.ci, label %bb.v, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

.loopexit.i13.i:                                  ; preds = %bb.v, %bb.u
  %i.cj = getelementptr inbounds nuw i8, ptr %.val2, i64 88
  %i.ck = getelementptr inbounds nuw i8, ptr %.val4, i64 88
  %i.cl = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ck)
  br i1 %i.cl, label %bb.w, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %.loopexit.i13.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.val2, i64 96
  %i.cn = getelementptr inbounds nuw i8, ptr %.val4, i64 96
  %i.co = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cn)
  br i1 %i.co, label %bb.x, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %bb.w
  %i.cp = getelementptr inbounds nuw i8, ptr %.val2, i64 104
  %i.cq = getelementptr inbounds nuw i8, ptr %.val4, i64 104
  %i.cr = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cq)
  br i1 %i.cr, label %bb.y, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %bb.x
  %i.cs = getelementptr inbounds nuw i8, ptr %.val2, i64 112
  %i.ct = getelementptr inbounds nuw i8, ptr %.val4, i64 112
  %i.cu = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ct)
  br i1 %i.cu, label %bb.z, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %bb.y
  %i.cv = getelementptr inbounds nuw i8, ptr %.val2, i64 120
  %i.cw = getelementptr inbounds nuw i8, ptr %.val4, i64 120
  %i.cx = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cw)
  br i1 %i.cx, label %bb.aa, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.z
  %i.cy = getelementptr inbounds nuw i8, ptr %.val2, i64 128
  %i.cz = getelementptr inbounds nuw i8, ptr %.val4, i64 128
  %i.da = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cz)
  br i1 %i.da, label %bb.ab, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.aa
  %i.db = load i64, ptr %i.bl, align 8, !range !58, !alias.scope !47897, !noundef !41
  %i.dc = icmp ne i64 %i.db, -1                   ; 2 uses
  %i.dd = load i64, ptr %i.bm, align 8, !range !58, !alias.scope !47898, !noundef !41
end_hunk_11
