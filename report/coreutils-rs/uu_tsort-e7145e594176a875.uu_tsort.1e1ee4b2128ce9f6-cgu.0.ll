Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_tsort-e7145e594176a875.uu_tsort.1e1ee4b2128ce9f6-cgu.0?download=true
inline.NumInlined: 869
inline.NumDeleted: 417
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort9quicksortNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB8_SB17_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2E_5Graph12detect_cycle0E0EB2E_:bb.a
  %i.dt = add i64 %.val34, -1                     ; 2 uses
  %i.du = icmp ult i64 %i.dt, %.val7.i.i.i7.i.i.pre
  br i1 %i.du, label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph12detect_cycle0E0B1Q_.exit, label %bb.l, !prof !11

bb.l:                                             ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24
  unreachable

_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph12detect_cycle0E0B1Q_.exit: ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i.i6.i.i.pre, i64 %i.dr ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !noundef !4 ; 2 uses
  %i.dy = load ptr, ptr %i.dv, align 8, !nonnull !4, !noundef !4
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i.i6.i.i.pre, i64 %i.dt ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !nonnull !4, !noundef !4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.dx, i64 %i.ec)
  %i.ed = tail call i32 @memcmp(ptr nonnull %i.dy, ptr nonnull %i.ea, i64 %spec.store.select.i.i) ; 2 uses
  %i.ee = sext i32 %i.ed to i64
  %i.ef = icmp eq i32 %i.ed, 0
  %i.eg = sub i64 %i.dx, %i.ec
  %spec.select.i.i = select i1 %i.ef, i64 %i.eg, i64 %i.ee
  %i.eh = icmp slt i64 %spec.select.i.i, 0
  %.sroa.0.0.copyload.i.i.i.pre220 = load i64, ptr %.sroa.0.0144412, align 8 ; 2 uses
  br i1 %i.eh, label %bb.h, label %bb.m

bb.m:                                             ; preds = %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph12detect_cycle0E0B1Q_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  store i64 %.val34, ptr %.sroa.0.0144412, align 8, !alias.scope !332
  store i64 %.sroa.0.0.copyload.i.i.i.pre220, ptr %i.dq, align 8, !alias.scope !332
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.0144412, i64 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.ej = load i64, ptr %i.ei, align 8, !range !8, !alias.scope !335, !noundef !4 ; 2 uses
  %i.ek = getelementptr [8 x i8], ptr %.sroa.0.0144412, i64 %.sroa.15.0143413 ; 2 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 -8     ; 2 uses
  %.sroa.11.055.i.i46 = getelementptr inbounds nuw i8, ptr %.sroa.0.0144412, i64 16 ; 3 uses
  %i.em = icmp ult ptr %.sroa.11.055.i.i46, %i.el
  %.val2.i.pre.i.i47 = load i64, ptr %.sroa.0.0144412, align 8, !range !8, !alias.scope !336, !noalias !4
  %i.en = add i64 %.val2.i.pre.i.i47, -1          ; 4 uses
  br i1 %i.em, label %.lr.ph.i.i60, label %.preheader.i.i49

.lr.ph.i.i60:                                     ; preds = %bb.m
  %i.eo = icmp ult i64 %i.en, %.val7.i.i.i7.i.i.pre
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i.i6.i.i.pre, i64 %i.en ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  br i1 %i.eo, label %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i9.i.i, label %bb.o, !prof !11

.preheader.i.i49:                                 ; preds = %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph12detect_cycle0E0E0E0B3s_.exit24.i.i, %bb.m
  %.sroa.21.0.lcssa.i.i50 = phi i64 [ 0, %bb.m ], [ %i.gs, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph12detect_cycle0E0E0E0B3s_.exit24.i.i ]
  %.sroa.031.0.lcssa.i.i51 = phi ptr [ %i.ei, %bb.m ], [ %i.fx, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph12detect_cycle0E0E0E0B3s_.exit24.i.i ]
  %.sroa.11.0.lcssa.i.i52 = phi ptr [ %.sroa.11.055.i.i46, %bb.m ], [ %.sroa.11.0.i.i, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph12detect_cycle0E0E0E0B3s_.exit24.i.i ]
  %i.er = icmp ult i64 %i.en, %.val7.i.i.i7.i.i.pre
  br i1 %i.er, label %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.i.lr.ph.i, label %bb.n, !prof !18

_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.i.lr.ph.i: ; preds = %.preheader.i.i49
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i.i6.i.i.pre, i64 %i.en ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  br label %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.i.us.i

_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.i.us.i: ; preds = %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph12detect_cycle0E0E0E0B3s_.exit.cont.i.us.i, %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.i.lr.ph.i
  %.sroa.031.1.i12.us.i = phi ptr [ %.sroa.031.0.lcssa.i.i51, %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.i.lr.ph.i ], [ %.sroa.11.1.i11.us.i, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph12detect_cycle0E0E0E0B3s_.exit.cont.i.us.i ]
  %.sroa.11.1.i11.us.i = phi ptr [ %.sroa.11.0.lcssa.i.i52, %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.i.lr.ph.i ], [ %.sroa.11.1.sroa.gep.i.us.i57, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph12detect_cycle0E0E0E0B3s_.exit.cont.i.us.i ] ; 5 uses
  %.sroa.21.1.i10.us.i = phi i64 [ %.sroa.21.0.lcssa.i.i50, %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.i.lr.ph.i ], [ %i.fl, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph12detect_cycle0E0E0E0B3s_.exit.cont.i.us.i ] ; 3 uses
  %i.eu = icmp eq ptr %.sroa.11.1.i11.us.i, %i.ek ; 2 uses
  br i1 %i.eu, label %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.cont.i.us.i, label %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.else.i.us.i

_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.else.i.us.i: ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.i.us.i
  %.val1.i.else.val.i.us.i53 = load i64, ptr %.sroa.11.1.i11.us.i, align 8, !alias.scope !335, !noalias !337
  br label %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.cont.i.us.i

_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.cont.i.us.i: ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.else.i.us.i, %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.i.us.i
  %.val1.i.i.us.i54 = phi i64 [ %i.ej, %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.i.us.i ], [ %.val1.i.else.val.i.us.i53, %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.else.i.us.i ]
  %i.ev = add i64 %.val1.i.i.us.i54, -1           ; 2 uses
  %i.ew = icmp ult i64 %i.ev, %.val7.i.i.i7.i.i.pre
  br i1 %i.ew, label %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph12detect_cycle0E0E0E0B3s_.exit.i.us.i, label %.split.us.i55, !prof !11

_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph12detect_cycle0E0E0E0B3s_.exit.i.us.i: ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.cont.i.us.i
  %i.ex = load i64, ptr %i.et, align 8, !noalias !338, !noundef !4 ; 2 uses
  %i.ey = load ptr, ptr %i.es, align 8, !noalias !338, !nonnull !4, !noundef !4
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i.i6.i.i.pre, i64 %i.ev ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !noalias !338, !nonnull !4, !noundef !4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !noalias !338, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.us.i = tail call i64 @llvm.umin.i64(i64 %i.ex, i64 %i.fc)
  %i.fd = tail call i32 @memcmp(ptr nonnull %i.ey, ptr nonnull %i.fa, i64 %spec.store.select.i.i.i.i.i.us.i), !noalias !338 ; 2 uses
  %i.fe = sext i32 %i.fd to i64
  %i.ff = icmp eq i32 %i.fd, 0
  %i.fg = sub i64 %i.ex, %i.fc
  %spec.select.i.i.i.i.i.us.i = select i1 %i.ff, i64 %i.fg, i64 %i.fe
  %i.fh = icmp sgt i64 %spec.select.i.i.i.i.i.us.i, -1 ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %.sroa.21.1.i10.us.i ; 3 uses
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !335, !noalias !337
  store i64 %i.fj, ptr %.sroa.031.1.i12.us.i, align 8, !alias.scope !335, !noalias !337
  br i1 %i.eu, label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3q_5Graph12detect_cycle0E0E0EB3q_.exit.i, label %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph12detect_cycle0E0E0E0B3s_.exit.cont.i.us.i

_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph12detect_cycle0E0E0E0B3s_.exit.cont.i.us.i: ; preds = %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph12detect_cycle0E0E0E0B3s_.exit.i.us.i
  %.else.val.i.us.i56 = load i64, ptr %.sroa.11.1.i11.us.i, align 8, !alias.scope !335, !noalias !337
  store i64 %.else.val.i.us.i56, ptr %i.fi, align 8, !alias.scope !335, !noalias !337
  %i.fk = zext i1 %i.fh to i64
  %i.fl = add i64 %.sroa.21.1.i10.us.i, %i.fk
  %.sroa.11.1.sroa.gep.i.us.i57 = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i11.us.i, i64 8
  br label %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.i.us.i

bb.n:                                             ; preds = %.preheader.i.i49
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24, !noalias !338
  unreachable

.split.us.i55:                                    ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.cont.i.us.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24, !noalias !338
  unreachable

_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i9.i.i: ; preds = %.lr.ph.i.i60, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph12detect_cycle0E0E0E0B3s_.exit24.i.i
  %.sroa.11.058.i.i = phi ptr [ %.sroa.11.0.i.i, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph12detect_cycle0E0E0E0B3s_.exit24.i.i ], [ %.sroa.11.055.i.i46, %.lr.ph.i.i60 ] ; 2 uses
  %.sroa.031.057.i.i = phi ptr [ %i.fx, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph12detect_cycle0E0E0E0B3s_.exit24.i.i ], [ %i.ei, %.lr.ph.i.i60 ] ; 3 uses
  %.sroa.21.056.i.i = phi i64 [ %i.gs, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph12detect_cycle0E0E0E0B3s_.exit24.i.i ], [ 0, %.lr.ph.i.i60 ] ; 2 uses
  %.val1.i10.i.i = load i64, ptr %.sroa.11.058.i.i, align 8, !alias.scope !335, !noalias !339 ; 2 uses
  %i.fm = add i64 %.val1.i10.i.i, -1              ; 2 uses
  %i.fn = icmp ult i64 %i.fm, %.val7.i.i.i7.i.i.pre
  br i1 %i.fn, label %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i20.i.i, label %bb.p, !prof !11

bb.o:                                             ; preds = %.lr.ph.i.i60
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24, !noalias !340
  unreachable

bb.p:                                             ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i9.i.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24, !noalias !340
  unreachable

_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i20.i.i: ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i9.i.i
  %i.fo = load i64, ptr %i.eq, align 8, !noalias !340, !noundef !4 ; 4 uses
  %i.fp = load ptr, ptr %i.ep, align 8, !noalias !340, !nonnull !4, !noundef !4 ; 2 uses
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i.i6.i.i.pre, i64 %i.fm ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !noalias !340, !nonnull !4, !noundef !4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.ft = load i64, ptr %i.fs, align 8, !noalias !340, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i11.i.i = tail call i64 @llvm.umin.i64(i64 %i.fo, i64 %i.ft)
  %i.fu = tail call i32 @memcmp(ptr nonnull %i.fp, ptr nonnull %i.fr, i64 %spec.store.select.i.i.i.i11.i.i), !noalias !340 ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %.sroa.21.056.i.i ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !alias.scope !335, !noalias !339
  store i64 %i.fw, ptr %.sroa.031.057.i.i, align 8, !alias.scope !335, !noalias !339
  store i64 %.val1.i10.i.i, ptr %i.fv, align 8, !alias.scope !335, !noalias !339
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.031.057.i.i, i64 16 ; 3 uses
  %.val1.i21.i.i = load i64, ptr %i.fx, align 8, !alias.scope !335, !noalias !341 ; 2 uses
  %i.fy = add i64 %.val1.i21.i.i, -1              ; 2 uses
  %i.fz = icmp ult i64 %i.fy, %.val7.i.i.i7.i.i.pre
  br i1 %i.fz, label %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph12detect_cycle0E0E0E0B3s_.exit24.i.i, label %bb.q, !prof !11

bb.q:                                             ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i20.i.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24, !noalias !342
  unreachable

_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph12detect_cycle0E0E0E0B3s_.exit24.i.i: ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i20.i.i
  %i.ga = icmp eq i32 %i.fu, 0
  %i.gb = sub i64 %i.fo, %i.ft
  %i.gc = sext i32 %i.fu to i64
  %spec.select.i.i.i.i12.i.i = select i1 %i.ga, i64 %i.gb, i64 %i.gc
  %i.gd = icmp sgt i64 %spec.select.i.i.i.i12.i.i, -1
  %i.ge = zext i1 %i.gd to i64
  %i.gf = add i64 %.sroa.21.056.i.i, %i.ge        ; 2 uses
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i.i6.i.i.pre, i64 %i.fy ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !noalias !342, !nonnull !4, !noundef !4
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gj = load i64, ptr %i.gi, align 8, !noalias !342, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i22.i.i = tail call i64 @llvm.umin.i64(i64 %i.fo, i64 %i.gj)
  %i.gk = tail call i32 @memcmp(ptr nonnull %i.fp, ptr nonnull %i.gh, i64 %spec.store.select.i.i.i.i22.i.i), !noalias !342 ; 2 uses
  %i.gl = sext i32 %i.gk to i64
  %i.gm = icmp eq i32 %i.gk, 0
  %i.gn = sub i64 %i.fo, %i.gj
  %spec.select.i.i.i.i23.i.i = select i1 %i.gm, i64 %i.gn, i64 %i.gl
  %i.go = icmp sgt i64 %spec.select.i.i.i.i23.i.i, -1
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.gf ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !alias.scope !335, !noalias !341
  store i64 %i.gq, ptr %.sroa.11.058.i.i, align 8, !alias.scope !335, !noalias !341
  store i64 %.val1.i21.i.i, ptr %i.gp, align 8, !alias.scope !335, !noalias !341
  %i.gr = zext i1 %i.go to i64
  %i.gs = add i64 %i.gf, %i.gr                    ; 2 uses
  %.sroa.11.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.031.057.i.i, i64 24 ; 3 uses
  %i.gt = icmp ult ptr %.sroa.11.0.i.i, %i.el
  br i1 %i.gt, label %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i9.i.i, label %.preheader.i.i49

_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3q_5Graph12detect_cycle0E0E0EB3q_.exit.i: ; preds = %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph12detect_cycle0E0E0E0B3s_.exit.i.us.i
  store i64 %i.ej, ptr %i.fi, align 8, !alias.scope !335, !noalias !337
  %i.gu = zext i1 %i.fh to i64
  %i.gv = add i64 %.sroa.21.1.i10.us.i, %i.gu     ; 3 uses
  %.not7.i58 = icmp ult i64 %i.gv, %.sroa.15.0143413
  br i1 %.not7.i58, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3q_5Graph12detect_cycle0E0E0EB3q_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3q_5Graph12detect_cycle0E0E0EB3q_.exit.i
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0144412, i64 %i.gv ; 2 uses
  %.sroa.0.0.copyload.i.i8.i59 = load i64, ptr %.sroa.0.0144412, align 8, !alias.scope !343
  %i.gx = load i64, ptr %i.gw, align 8, !alias.scope !343
  store i64 %i.gx, ptr %.sroa.0.0144412, align 8, !alias.scope !343
  store i64 %.sroa.0.0.copyload.i.i8.i59, ptr %i.gw, align 8, !alias.scope !343
  %i.gy = add nuw nsw i64 %i.gv, 1                ; 2 uses
  %i.gz = sub nuw i64 %.sroa.15.0143413, %i.gy
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0144412, i64 %i.gy
  br label %.backedge

.backedge:                                        ; preds = %bb.s, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit
  %.sroa.023.0.be = phi ptr [ %i.dl, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit ], [ null, %bb.s ]
  %.sroa.15.0.be = phi i64 [ %i.dp, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit ], [ %i.gz, %bb.s ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.dn, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit ], [ %i.ha, %bb.s ] ; 3 uses
  %i.hb = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.hb, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort9quicksortNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB8_SB17_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2E_5Graph9run_tsorts_0E0EB2E_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(8) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 33
  br i1 %i.a, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = icmp eq i32 %3, 0
  br i1 %i.b, label %.lr.ph._crit_edge, label %.lr.ph416

.lr.ph:                                           ; preds = %.backedge
  %i.c = icmp eq i32 %i.d, 0
  br i1 %i.c, label %.lr.ph._crit_edge, label %.lr.ph416

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  %.val35 = load ptr, ptr %4, align 8
  tail call fastcc void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort18small_sort_networkNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB8_SB1f_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2M_5Graph9run_tsorts_0E0EB2M_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr %.val35) #23
  br label %bb.g

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.0144.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.0143.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable8heapsort8heapsortNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB8_SB15_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2C_5Graph9run_tsorts_0E0EB2C_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0144.lcssa, i64 noundef %.sroa.15.0143.lcssa, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4) #27
  br label %bb.g

.lr.ph416:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.0141415 = phi i32 [ %i.d, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.0142414 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.15.0143413 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 9 uses
  %.sroa.0.0144412 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 29 uses
  %i.d = add nsw i32 %.sroa.026.0141415, -1       ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  %i.e = lshr i64 %.sroa.15.0143413, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0144412, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.e, 56
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0144412, i64 %.idx2.i ; 3 uses
  %i.h = icmp samesign ult i64 %.sroa.15.0143413, 64
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph416
  %i.i = tail call fastcc noundef ptr @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot11median3_recNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB8_SB14_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2B_5Graph9run_tsorts_0E0EB2B_(ptr noundef nonnull readonly align 8 %.sroa.0.0144412, ptr noundef readonly %i.f, ptr noundef readonly %i.g, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4) #23
  %.val36.pre.pre = load ptr, ptr %4, align 8
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot12choose_pivotNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB8_SB15_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2C_5Graph9run_tsorts_0E0EB2C_.exit

bb.c:                                             ; preds = %.lr.ph416
  %.val8.i = load ptr, ptr %4, align 8, !alias.scope !386, !nonnull !4, !align !7, !noundef !4 ; 3 uses
  %.val9.i = load i64, ptr %.sroa.0.0144412, align 8, !range !8, !alias.scope !385, !noundef !4
  %.val.i.i = load ptr, ptr %.val8.i, align 8, !noalias !387, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  %i.j = getelementptr i8, ptr %.val.i.i, i64 8
  %.val6.i.i.i = load ptr, ptr %i.j, align 8, !noalias !387 ; 4 uses
  %i.k = getelementptr i8, ptr %.val.i.i, i64 16
  %.val7.i.i.i = load i64, ptr %i.k, align 8, !noalias !387, !noundef !4 ; 3 uses
  %i.l = add i64 %.val9.i, -1                     ; 2 uses
  %i.m = icmp ult i64 %i.l, %.val7.i.i.i
  br i1 %i.m, label %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24, !noalias !387
  unreachable

_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i: ; preds = %bb.c
  %.val10.i = load i64, ptr %i.f, align 8, !alias.scope !385
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i.i) ]
  %i.n = add i64 %.val10.i, -1                    ; 2 uses
  %i.o = icmp ult i64 %i.n, %.val7.i.i.i
  br i1 %i.o, label %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i14.i, label %bb.e, !prof !11

bb.e:                                             ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24, !noalias !387
  unreachable

_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i14.i: ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i.i, i64 %i.l ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !387, !noundef !4 ; 4 uses
  %i.s = load ptr, ptr %i.p, align 8, !noalias !387, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i.i, i64 %i.n ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !noalias !387, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load i64, ptr %i.v, align 8, !noalias !387, !noundef !4 ; 4 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.w)
  %i.x = tail call i32 @memcmp(ptr nonnull %i.s, ptr nonnull %i.u, i64 %spec.store.select.i.i.i), !noalias !387 ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = icmp eq i32 %i.x, 0
  %i.aa = sub i64 %i.r, %i.w
  %spec.select.i.i.i = select i1 %i.z, i64 %i.aa, i64 %i.y ; 2 uses
  %.val7.i = load i64, ptr %i.g, align 8, !alias.scope !385
  %i.ab = add i64 %.val7.i, -1                    ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %.val7.i.i.i
  br i1 %i.ac, label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph9run_tsorts_0E0B1Q_.exit17.i, label %bb.f, !prof !11

bb.f:                                             ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i14.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24, !noalias !387
  unreachable

_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph9run_tsorts_0E0B1Q_.exit17.i: ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i14.i
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i.i, i64 %i.ab ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !387, !nonnull !4, !noundef !4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !387, !noundef !4 ; 4 uses
  %spec.store.select.i.i15.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.ag)
  %i.ah = tail call i32 @memcmp(ptr nonnull %i.s, ptr nonnull %i.ae, i64 %spec.store.select.i.i15.i), !noalias !387 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %i.ak = sub i64 %i.r, %i.ag
  %spec.select.i.i16.i = select i1 %i.aj, i64 %i.ak, i64 %i.ai
  %i.al = xor i64 %spec.select.i.i16.i, %spec.select.i.i.i
  %i.am = icmp slt i64 %i.al, 0
  br i1 %i.am, label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot12choose_pivotNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB8_SB15_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2C_5Graph9run_tsorts_0E0EB2C_.exit, label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph9run_tsorts_0E0B1Q_.exit24.i

_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph9run_tsorts_0E0B1Q_.exit24.i: ; preds = %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph9run_tsorts_0E0B1Q_.exit17.i
  %spec.store.select.i.i22.i = tail call i64 @llvm.umin.i64(i64 %i.w, i64 %i.ag)
  %i.an = tail call i32 @memcmp(ptr nonnull %i.u, ptr nonnull %i.ae, i64 %spec.store.select.i.i22.i), !noalias !387 ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp eq i32 %i.an, 0
  %i.aq = sub i64 %i.w, %i.ag
  %spec.select.i.i23.i = select i1 %i.ap, i64 %i.aq, i64 %i.ao
  %i.ar = xor i64 %spec.select.i.i23.i, %spec.select.i.i.i
  %i.as = icmp slt i64 %i.ar, 0
  %..i.i = select i1 %i.as, ptr %i.g, ptr %i.f
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot12choose_pivotNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB8_SB15_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2C_5Graph9run_tsorts_0E0EB2C_.exit

_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot12choose_pivotNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB8_SB15_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2C_5Graph9run_tsorts_0E0EB2C_.exit: ; preds = %bb.b, %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph9run_tsorts_0E0B1Q_.exit17.i, %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph9run_tsorts_0E0B1Q_.exit24.i
  %.val36.pre = phi ptr [ %.val36.pre.pre, %bb.b ], [ %.val8.i, %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph9run_tsorts_0E0B1Q_.exit17.i ], [ %.val8.i, %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph9run_tsorts_0E0B1Q_.exit24.i ]
  %.sroa.0.0.i.sink.i = phi ptr [ %i.i, %bb.b ], [ %.sroa.0.0144412, %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph9run_tsorts_0E0B1Q_.exit17.i ], [ %..i.i, %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph9run_tsorts_0E0B1Q_.exit24.i ]
  %i.at = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.au = ptrtoint ptr %.sroa.0.0144412 to i64
  %i.av = sub nuw i64 %i.at, %i.au                ; 4 uses
  %.sroa.0.0.i = lshr exact i64 %i.av, 3
  %i.aw = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.0143413
  tail call void @llvm.assume(i1 %i.aw)
  %.not = icmp eq ptr %.sroa.023.0142414, null
  %.val.i.i.i.pre.i.pre = load ptr, ptr %.val36.pre, align 8 ; 2 uses
  %.phi.trans.insert223 = getelementptr i8, ptr %.val.i.i.i.pre.i.pre, i64 8
  %.val6.i.i.i6.i.i.pre = load ptr, ptr %.phi.trans.insert223, align 8 ; 15 uses
  %.phi.trans.insert225 = getelementptr i8, ptr %.val.i.i.i.pre.i.pre, i64 16
  %.val7.i.i.i7.i.i.pre = load i64, ptr %.phi.trans.insert225, align 8 ; 14 uses
  br i1 %.not, label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot12choose_pivotNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB8_SB15_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2C_5Graph9run_tsorts_0E0EB2C_.exit._crit_edge, label %bb.j

_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot12choose_pivotNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB8_SB15_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2C_5Graph9run_tsorts_0E0EB2C_.exit._crit_edge: ; preds = %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot12choose_pivotNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB8_SB15_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2C_5Graph9run_tsorts_0E0EB2C_.exit
  %.sroa.0.0.copyload.i.i.i.pre = load i64, ptr %.sroa.0.0144412, align 8, !alias.scope !388
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0.0144412, i64 %i.av
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !388
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void

bb.h:                                             ; preds = %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot12choose_pivotNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB8_SB15_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2C_5Graph9run_tsorts_0E0EB2C_.exit._crit_edge, %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph9run_tsorts_0E0B1Q_.exit
  %i.ax = phi i64 [ %.pre, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot12choose_pivotNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB8_SB15_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2C_5Graph9run_tsorts_0E0EB2C_.exit._crit_edge ], [ %.val34, %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph9run_tsorts_0E0B1Q_.exit ]
  %.sroa.0.0.copyload.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.pre, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot12choose_pivotNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB8_SB15_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2C_5Graph9run_tsorts_0E0EB2C_.exit._crit_edge ], [ %.sroa.0.0.copyload.i.i.i.pre220, %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph9run_tsorts_0E0B1Q_.exit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0144412, i64 %i.av
  store i64 %i.ax, ptr %.sroa.0.0144412, align 8, !alias.scope !388
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.ay, align 8, !alias.scope !388
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0144412, i64 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.ba = load i64, ptr %i.az, align 8, !range !8, !alias.scope !392, !noundef !4 ; 3 uses
  %i.bb = getelementptr [8 x i8], ptr %.sroa.0.0144412, i64 %.sroa.15.0143413 ; 3 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 -8     ; 2 uses
  %.sroa.11.055.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0144412, i64 16 ; 4 uses
  %i.bd = icmp ult ptr %.sroa.11.055.i.i, %i.bc
  %.val2.i.pre.i.i = load i64, ptr %.sroa.0.0144412, align 8, !alias.scope !393
  %.val2.i9.fr.i.i = freeze i64 %.val2.i.pre.i.i
  %i.be = add i64 %.val2.i9.fr.i.i, -1            ; 4 uses
  br i1 %i.bd, label %.lr.ph.i.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.bf = icmp ult i64 %i.be, %.val7.i.i.i7.i.i.pre
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i.i6.i.i.pre, i64 %i.be ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  br i1 %i.bf, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i, !prof !11

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB36_5Graph9run_tsorts_0E0E0B36_.exit24.us.i.i
  %.sroa.11.058.us.i.i = phi ptr [ %.sroa.11.0.us.i.i, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB36_5Graph9run_tsorts_0E0E0B36_.exit24.us.i.i ], [ %.sroa.11.055.i.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.031.057.us.i.i = phi ptr [ %i.bt, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB36_5Graph9run_tsorts_0E0E0B36_.exit24.us.i.i ], [ %i.az, %.lr.ph.i.i ] ; 3 uses
  %.sroa.21.056.us.i.i = phi i64 [ %i.ck, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB36_5Graph9run_tsorts_0E0E0B36_.exit24.us.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %.val1.i4.us.i.i = load i64, ptr %.sroa.11.058.us.i.i, align 8, !range !8, !alias.scope !392, !noalias !394, !noundef !4 ; 2 uses
  %i.bi = add i64 %.val1.i4.us.i.i, -1            ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %.val7.i.i.i7.i.i.pre
  br i1 %i.bj, label %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i8.us.i.i, label %.split.us.i.i, !prof !11

_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i8.us.i.i: ; preds = %.lr.ph.split.us.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i.i6.i.i.pre) ]
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort9quicksortNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB8_SB17_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2E_5Graph9run_tsorts_0E0EB2E_:bb.a
  %i.dt = add i64 %.val34, -1                     ; 2 uses
  %i.du = icmp ult i64 %i.dt, %.val7.i.i.i7.i.i.pre
  br i1 %i.du, label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph9run_tsorts_0E0B1Q_.exit, label %bb.l, !prof !11

bb.l:                                             ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24
  unreachable

_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph9run_tsorts_0E0B1Q_.exit: ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i.i6.i.i.pre, i64 %i.dr ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !noundef !4 ; 2 uses
  %i.dy = load ptr, ptr %i.dv, align 8, !nonnull !4, !noundef !4
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i.i6.i.i.pre, i64 %i.dt ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !nonnull !4, !noundef !4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.dx, i64 %i.ec)
  %i.ed = tail call i32 @memcmp(ptr nonnull %i.dy, ptr nonnull %i.ea, i64 %spec.store.select.i.i) ; 2 uses
  %i.ee = sext i32 %i.ed to i64
  %i.ef = icmp eq i32 %i.ed, 0
  %i.eg = sub i64 %i.dx, %i.ec
  %spec.select.i.i = select i1 %i.ef, i64 %i.eg, i64 %i.ee
  %i.eh = icmp slt i64 %spec.select.i.i, 0
  %.sroa.0.0.copyload.i.i.i.pre220 = load i64, ptr %.sroa.0.0144412, align 8 ; 2 uses
  br i1 %i.eh, label %bb.h, label %bb.m

bb.m:                                             ; preds = %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph9run_tsorts_0E0B1Q_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  store i64 %.val34, ptr %.sroa.0.0144412, align 8, !alias.scope !402
  store i64 %.sroa.0.0.copyload.i.i.i.pre220, ptr %i.dq, align 8, !alias.scope !402
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.0144412, i64 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %i.ej = load i64, ptr %i.ei, align 8, !range !8, !alias.scope !405, !noundef !4 ; 2 uses
  %i.ek = getelementptr [8 x i8], ptr %.sroa.0.0144412, i64 %.sroa.15.0143413 ; 2 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 -8     ; 2 uses
  %.sroa.11.055.i.i46 = getelementptr inbounds nuw i8, ptr %.sroa.0.0144412, i64 16 ; 3 uses
  %i.em = icmp ult ptr %.sroa.11.055.i.i46, %i.el
  %.val2.i.pre.i.i47 = load i64, ptr %.sroa.0.0144412, align 8, !range !8, !alias.scope !406, !noalias !4
  %i.en = add i64 %.val2.i.pre.i.i47, -1          ; 4 uses
  br i1 %i.em, label %.lr.ph.i.i60, label %.preheader.i.i49

.lr.ph.i.i60:                                     ; preds = %bb.m
  %i.eo = icmp ult i64 %i.en, %.val7.i.i.i7.i.i.pre
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i.i6.i.i.pre, i64 %i.en ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  br i1 %i.eo, label %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i9.i.i, label %bb.o, !prof !11

.preheader.i.i49:                                 ; preds = %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph9run_tsorts_0E0E0E0B3s_.exit24.i.i, %bb.m
  %.sroa.21.0.lcssa.i.i50 = phi i64 [ 0, %bb.m ], [ %i.gs, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph9run_tsorts_0E0E0E0B3s_.exit24.i.i ]
  %.sroa.031.0.lcssa.i.i51 = phi ptr [ %i.ei, %bb.m ], [ %i.fx, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph9run_tsorts_0E0E0E0B3s_.exit24.i.i ]
  %.sroa.11.0.lcssa.i.i52 = phi ptr [ %.sroa.11.055.i.i46, %bb.m ], [ %.sroa.11.0.i.i, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph9run_tsorts_0E0E0E0B3s_.exit24.i.i ]
  %i.er = icmp ult i64 %i.en, %.val7.i.i.i7.i.i.pre
  br i1 %i.er, label %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.i.lr.ph.i, label %bb.n, !prof !18

_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.i.lr.ph.i: ; preds = %.preheader.i.i49
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i.i6.i.i.pre, i64 %i.en ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  br label %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.i.us.i

_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.i.us.i: ; preds = %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph9run_tsorts_0E0E0E0B3s_.exit.cont.i.us.i, %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.i.lr.ph.i
  %.sroa.031.1.i12.us.i = phi ptr [ %.sroa.031.0.lcssa.i.i51, %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.i.lr.ph.i ], [ %.sroa.11.1.i11.us.i, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph9run_tsorts_0E0E0E0B3s_.exit.cont.i.us.i ]
  %.sroa.11.1.i11.us.i = phi ptr [ %.sroa.11.0.lcssa.i.i52, %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.i.lr.ph.i ], [ %.sroa.11.1.sroa.gep.i.us.i57, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph9run_tsorts_0E0E0E0B3s_.exit.cont.i.us.i ] ; 5 uses
  %.sroa.21.1.i10.us.i = phi i64 [ %.sroa.21.0.lcssa.i.i50, %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.i.lr.ph.i ], [ %i.fl, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph9run_tsorts_0E0E0E0B3s_.exit.cont.i.us.i ] ; 3 uses
  %i.eu = icmp eq ptr %.sroa.11.1.i11.us.i, %i.ek ; 2 uses
  br i1 %i.eu, label %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.cont.i.us.i, label %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.else.i.us.i

_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.else.i.us.i: ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.i.us.i
  %.val1.i.else.val.i.us.i53 = load i64, ptr %.sroa.11.1.i11.us.i, align 8, !alias.scope !405, !noalias !407
  br label %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.cont.i.us.i

_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.cont.i.us.i: ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.else.i.us.i, %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.i.us.i
  %.val1.i.i.us.i54 = phi i64 [ %i.ej, %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.i.us.i ], [ %.val1.i.else.val.i.us.i53, %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.else.i.us.i ]
  %i.ev = add i64 %.val1.i.i.us.i54, -1           ; 2 uses
  %i.ew = icmp ult i64 %i.ev, %.val7.i.i.i7.i.i.pre
  br i1 %i.ew, label %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph9run_tsorts_0E0E0E0B3s_.exit.i.us.i, label %.split.us.i55, !prof !11

_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph9run_tsorts_0E0E0E0B3s_.exit.i.us.i: ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.cont.i.us.i
  %i.ex = load i64, ptr %i.et, align 8, !noalias !408, !noundef !4 ; 2 uses
  %i.ey = load ptr, ptr %i.es, align 8, !noalias !408, !nonnull !4, !noundef !4
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i.i6.i.i.pre, i64 %i.ev ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !noalias !408, !nonnull !4, !noundef !4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !noalias !408, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.us.i = tail call i64 @llvm.umin.i64(i64 %i.ex, i64 %i.fc)
  %i.fd = tail call i32 @memcmp(ptr nonnull %i.ey, ptr nonnull %i.fa, i64 %spec.store.select.i.i.i.i.i.us.i), !noalias !408 ; 2 uses
  %i.fe = sext i32 %i.fd to i64
  %i.ff = icmp eq i32 %i.fd, 0
  %i.fg = sub i64 %i.ex, %i.fc
  %spec.select.i.i.i.i.i.us.i = select i1 %i.ff, i64 %i.fg, i64 %i.fe
  %i.fh = icmp sgt i64 %spec.select.i.i.i.i.i.us.i, -1 ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %.sroa.21.1.i10.us.i ; 3 uses
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !405, !noalias !407
  store i64 %i.fj, ptr %.sroa.031.1.i12.us.i, align 8, !alias.scope !405, !noalias !407
  br i1 %i.eu, label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3q_5Graph9run_tsorts_0E0E0EB3q_.exit.i, label %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph9run_tsorts_0E0E0E0B3s_.exit.cont.i.us.i

_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph9run_tsorts_0E0E0E0B3s_.exit.cont.i.us.i: ; preds = %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph9run_tsorts_0E0E0E0B3s_.exit.i.us.i
  %.else.val.i.us.i56 = load i64, ptr %.sroa.11.1.i11.us.i, align 8, !alias.scope !405, !noalias !407
  store i64 %.else.val.i.us.i56, ptr %i.fi, align 8, !alias.scope !405, !noalias !407
  %i.fk = zext i1 %i.fh to i64
  %i.fl = add i64 %.sroa.21.1.i10.us.i, %i.fk
  %.sroa.11.1.sroa.gep.i.us.i57 = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i11.us.i, i64 8
  br label %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.i.us.i

bb.n:                                             ; preds = %.preheader.i.i49
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24, !noalias !408
  unreachable

.split.us.i55:                                    ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i.cont.i.us.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24, !noalias !408
  unreachable

_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i9.i.i: ; preds = %.lr.ph.i.i60, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph9run_tsorts_0E0E0E0B3s_.exit24.i.i
  %.sroa.11.058.i.i = phi ptr [ %.sroa.11.0.i.i, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph9run_tsorts_0E0E0E0B3s_.exit24.i.i ], [ %.sroa.11.055.i.i46, %.lr.ph.i.i60 ] ; 2 uses
  %.sroa.031.057.i.i = phi ptr [ %i.fx, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph9run_tsorts_0E0E0E0B3s_.exit24.i.i ], [ %i.ei, %.lr.ph.i.i60 ] ; 3 uses
  %.sroa.21.056.i.i = phi i64 [ %i.gs, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph9run_tsorts_0E0E0E0B3s_.exit24.i.i ], [ 0, %.lr.ph.i.i60 ] ; 2 uses
  %.val1.i10.i.i = load i64, ptr %.sroa.11.058.i.i, align 8, !alias.scope !405, !noalias !409 ; 2 uses
  %i.fm = add i64 %.val1.i10.i.i, -1              ; 2 uses
  %i.fn = icmp ult i64 %i.fm, %.val7.i.i.i7.i.i.pre
  br i1 %i.fn, label %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i20.i.i, label %bb.p, !prof !11

bb.o:                                             ; preds = %.lr.ph.i.i60
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24, !noalias !410
  unreachable

bb.p:                                             ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i9.i.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24, !noalias !410
  unreachable

_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i20.i.i: ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i9.i.i
  %i.fo = load i64, ptr %i.eq, align 8, !noalias !410, !noundef !4 ; 4 uses
  %i.fp = load ptr, ptr %i.ep, align 8, !noalias !410, !nonnull !4, !noundef !4 ; 2 uses
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i.i6.i.i.pre, i64 %i.fm ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !noalias !410, !nonnull !4, !noundef !4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.ft = load i64, ptr %i.fs, align 8, !noalias !410, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i11.i.i = tail call i64 @llvm.umin.i64(i64 %i.fo, i64 %i.ft)
  %i.fu = tail call i32 @memcmp(ptr nonnull %i.fp, ptr nonnull %i.fr, i64 %spec.store.select.i.i.i.i11.i.i), !noalias !410 ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %.sroa.21.056.i.i ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !alias.scope !405, !noalias !409
  store i64 %i.fw, ptr %.sroa.031.057.i.i, align 8, !alias.scope !405, !noalias !409
  store i64 %.val1.i10.i.i, ptr %i.fv, align 8, !alias.scope !405, !noalias !409
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.031.057.i.i, i64 16 ; 3 uses
  %.val1.i21.i.i = load i64, ptr %i.fx, align 8, !alias.scope !405, !noalias !411 ; 2 uses
  %i.fy = add i64 %.val1.i21.i.i, -1              ; 2 uses
  %i.fz = icmp ult i64 %i.fy, %.val7.i.i.i7.i.i.pre
  br i1 %i.fz, label %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph9run_tsorts_0E0E0E0B3s_.exit24.i.i, label %bb.q, !prof !11

bb.q:                                             ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i20.i.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24, !noalias !412
  unreachable

_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph9run_tsorts_0E0E0E0B3s_.exit24.i.i: ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i20.i.i
  %i.ga = icmp eq i32 %i.fu, 0
  %i.gb = sub i64 %i.fo, %i.ft
  %i.gc = sext i32 %i.fu to i64
  %spec.select.i.i.i.i12.i.i = select i1 %i.ga, i64 %i.gb, i64 %i.gc
  %i.gd = icmp sgt i64 %spec.select.i.i.i.i12.i.i, -1
  %i.ge = zext i1 %i.gd to i64
  %i.gf = add i64 %.sroa.21.056.i.i, %i.ge        ; 2 uses
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i.i6.i.i.pre, i64 %i.fy ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !noalias !412, !nonnull !4, !noundef !4
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gj = load i64, ptr %i.gi, align 8, !noalias !412, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i22.i.i = tail call i64 @llvm.umin.i64(i64 %i.fo, i64 %i.gj)
  %i.gk = tail call i32 @memcmp(ptr nonnull %i.fp, ptr nonnull %i.gh, i64 %spec.store.select.i.i.i.i22.i.i), !noalias !412 ; 2 uses
  %i.gl = sext i32 %i.gk to i64
  %i.gm = icmp eq i32 %i.gk, 0
  %i.gn = sub i64 %i.fo, %i.gj
  %spec.select.i.i.i.i23.i.i = select i1 %i.gm, i64 %i.gn, i64 %i.gl
  %i.go = icmp sgt i64 %spec.select.i.i.i.i23.i.i, -1
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.gf ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !alias.scope !405, !noalias !411
  store i64 %i.gq, ptr %.sroa.11.058.i.i, align 8, !alias.scope !405, !noalias !411
  store i64 %.val1.i21.i.i, ptr %i.gp, align 8, !alias.scope !405, !noalias !411
  %i.gr = zext i1 %i.go to i64
  %i.gs = add i64 %i.gf, %i.gr                    ; 2 uses
  %.sroa.11.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.031.057.i.i, i64 24 ; 3 uses
  %i.gt = icmp ult ptr %.sroa.11.0.i.i, %i.el
  br i1 %i.gt, label %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i.i.i9.i.i, label %.preheader.i.i49

_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3q_5Graph9run_tsorts_0E0E0EB3q_.exit.i: ; preds = %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3s_5Graph9run_tsorts_0E0E0E0B3s_.exit.i.us.i
  store i64 %i.ej, ptr %i.fi, align 8, !alias.scope !405, !noalias !407
  %i.gu = zext i1 %i.fh to i64
  %i.gv = add i64 %.sroa.21.1.i10.us.i, %i.gu     ; 3 uses
  %.not7.i58 = icmp ult i64 %i.gv, %.sroa.15.0143413
  br i1 %.not7.i58, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3q_5Graph9run_tsorts_0E0E0EB3q_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB3q_5Graph9run_tsorts_0E0E0EB3q_.exit.i
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0144412, i64 %i.gv ; 2 uses
  %.sroa.0.0.copyload.i.i8.i59 = load i64, ptr %.sroa.0.0144412, align 8, !alias.scope !413
  %i.gx = load i64, ptr %i.gw, align 8, !alias.scope !413
  store i64 %i.gx, ptr %.sroa.0.0144412, align 8, !alias.scope !413
  store i64 %.sroa.0.0.copyload.i.i8.i59, ptr %i.gw, align 8, !alias.scope !413
  %i.gy = add nuw nsw i64 %i.gv, 1                ; 2 uses
  %i.gz = sub nuw i64 %.sroa.15.0143413, %i.gy
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0144412, i64 %i.gy
  br label %.backedge

.backedge:                                        ; preds = %bb.s, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit
  %.sroa.023.0.be = phi ptr [ %i.dl, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit ], [ null, %bb.s ]
  %.sroa.15.0.be = phi i64 [ %i.dp, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit ], [ %i.gz, %bb.s ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.dn, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit ], [ %i.ha, %bb.s ] ; 3 uses
  %i.hb = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.hb, label %._crit_edge, label %.lr.ph
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2AkyTgTLZ1a_8uu_tsort(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 17) %4) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !14, !alias.scope !416, !noundef !4 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !416
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !416
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs2AkyTgTLZ1a_8uu_tsort(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 25) %4) #23, !noalias !416
  %i.h = load i64, ptr %i.a, align 8, !range !19, !noalias !416, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !20, !noalias !416, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !416
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #25
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !416, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !416
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !416
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !416
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNtCs2AkyTgTLZ1a_8uu_tsort12VisitedStateEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1L_NtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0E0B1N_(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.b = sub nsw i64 0, %2
  %i.c = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16
  %.val = load i64, ptr %i.d, align 8, !range !8, !alias.scope !421, !noalias !422, !noundef !4
  %i.e = mul i64 %.val, -1065810590584100411      ; 2 uses
  %i.f = tail call noundef i64 @llvm.fshl.i64(i64 %i.e, i64 %i.e, i64 26)
  ret i64 %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNtCs2AkyTgTLZ1a_8uu_tsort4NodeEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1L_NtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0E0B1N_(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.b = sub nsw i64 0, %2
  %i.c = getelementptr inbounds [40 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -40
  %.val = load i64, ptr %i.d, align 8, !range !8, !alias.scope !427, !noalias !428, !noundef !4
  %i.e = mul i64 %.val, -1065810590584100411      ; 2 uses
  %i.f = tail call noundef i64 @llvm.fshl.i64(i64 %i.e, i64 %i.e, i64 26)
  ret i64 %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCs2AkyTgTLZ1a_8uu_tsort6uu_app(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECs2AkyTgTLZ1a_8uu_tsort.exit:
  %i.a = alloca [640 x i8], align 8               ; 56 uses
  %.sroa.0 = alloca [368 x i8], align 8           ; 4 uses
  %.sroa.9115 = alloca [248 x i8], align 8        ; 4 uses
  %i.b = alloca [640 x i8], align 8               ; 10 uses
  %i.c = alloca [640 x i8], align 8               ; 53 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [712 x i8], align 8               ; 57 uses
  %i.i = alloca [712 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.sroa.0.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.11.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.13.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.18.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.20.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.22.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.27.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvCsh036I4OHgIr_6uucore23localized_help_template(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 5) #23
  %.sroa.0.0.copyload.i = load i64, ptr %i.g, align 8, !alias.scope !511 ; 2 uses
  %i.j = icmp eq i64 %.sroa.0.0.copyload.i, -1    ; 2 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5.i.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i, align 8
  %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5.i.sroa.4.0.copyload = load i64, ptr %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.5.i.sroa.0.0 = select i1 %i.j, ptr undef, ptr %.sroa.5.i.sroa.0.0.copyload
  %.sroa.5.i.sroa.4.0 = select i1 %i.j, i64 undef, i64 %.sroa.5.i.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 11) #23
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !4
  call void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n) #23
  %.sroa.0.0.copyload.i5 = load i64, ptr %i.f, align 8, !alias.scope !512 ; 2 uses
  %i.o = icmp eq i64 %.sroa.0.0.copyload.i5, -1   ; 2 uses
  %.sroa.55.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.i4.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i6, align 8
  %.sroa.5.i4.sroa.4.0..sroa.55.0..sroa_idx.i6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.5.i4.sroa.4.0.copyload = load i64, ptr %.sroa.5.i4.sroa.4.0..sroa.55.0..sroa_idx.i6.sroa_idx, align 8
  %.sroa.5.i4.sroa.0.0 = select i1 %i.o, ptr undef, ptr %.sroa.5.i4.sroa.0.0.copyload
  %.sroa.5.i4.sroa.4.0 = select i1 %i.o, i64 undef, i64 %.sroa.5.i4.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 11) #23
  %.sroa.0.0.copyload.i11 = load i64, ptr %i.d, align 8, !alias.scope !513 ; 2 uses
  %i.p = icmp eq i64 %.sroa.0.0.copyload.i11, -1  ; 2 uses
  %.sroa.55.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.i10.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i12, align 8
  %.sroa.5.i10.sroa.4.0..sroa.55.0..sroa_idx.i12.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.i10.sroa.4.0.copyload = load i64, ptr %.sroa.5.i10.sroa.4.0..sroa.55.0..sroa_idx.i12.sroa_idx, align 8
  %.sroa.5.i10.sroa.0.0 = select i1 %i.p, ptr undef, ptr %.sroa.5.i10.sroa.0.0.copyload
  %.sroa.5.i10.sroa.4.0 = select i1 %i.p, i64 undef, i64 %.sroa.5.i10.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.h, align 8
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 1, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %.sroa.0.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i64 0, ptr %.sroa.0.sroa.0.sroa.9.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.10.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0.sroa.0.sroa.12.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.14.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %.sroa.0.sroa.0.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.15.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.17.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.19.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.21.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.23.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  %.sroa.0.sroa.0.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.24.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.26.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.28.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 264
  store i64 0, ptr %.sroa.0.sroa.0.sroa.29.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.30.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 296
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.32.0..sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  store i64 %.sroa.0.0.copyload.i11, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 328
  store ptr %.sroa.5.i10.sroa.0.0, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  store i64 %.sroa.5.i10.sroa.4.0, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.0.sroa.4.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 344
  store i64 -1, ptr %.sroa.0.sroa.6.sroa.0.sroa.4.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.0.sroa.6.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 368
  store i64 -1, ptr %.sroa.0.sroa.6.sroa.0.sroa.6.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.0.sroa.8.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 392
end_hunk_1
