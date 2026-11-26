Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 141
loop-unroll.NumRuntimeUnrolled: 257
loop-unroll.NumUnrolled: 399
begin_hunk_0_@_RNvNtCskcxRuJ53GpR_9rustworkx10centrality42___pyfunction_graph_group_degree_centrality:bb.a
_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit30: ; preds = %bb.b, %.noexc22, %bb.ao, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void

bb.ao:                                            ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !97558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !97558
  %.sroa.058.0.copyload = load i64, ptr %i.al, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.459.0.copyload = load ptr, ptr %.sroa.459.0..sroa_idx, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.560.0.copyload = load i64, ptr %.sroa.560.0..sroa_idx, align 8
  %.sroa.661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.665.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.661.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.058.0.copyload, ptr %i.iw, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.459.0.copyload, ptr %.sroa.463.0..sroa_idx, align 8
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.560.0.copyload, ptr %.sroa.564.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %i.ix = atomicrmw add ptr %i.y, i64 -1 release, align 8 ; 0 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit30
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCskcxRuJ53GpR_9rustworkx10centrality42graph_newman_weighted_closeness_centrality(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1, ptr noundef %2, i1 noundef zeroext %3, double noundef %4, i64 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [64 x i8], align 8                ; 11 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [1 x i8], align 1                 ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 7 uses
  %i.r = alloca [72 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val37 = load ptr, ptr %i.u, align 8, !nonnull !58, !noundef !58 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val38 = load i64, ptr %i.v, align 8, !noundef !58 ; 3 uses
  %.idx273 = mul nuw nsw i64 %.val38, 24
  %i.w = getelementptr inbounds nuw i8, ptr %.val37, i64 %.idx273 ; 2 uses
  %i.x = icmp eq i64 %.val38, 0
  br i1 %i.x, label %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.y = icmp eq ptr %.val37, %i.aa
  br i1 %i.y, label %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.z = phi ptr [ %i.aa, %bb.b ], [ %i.w, %bb.a ]
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -24 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !97749, !noalias !97750, !noundef !58
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %bb.b, label %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit

bb.c:                                             ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i, %.body
  %i.ac = trunc nuw i8 %.sroa.016.3 to i1
  br i1 %i.ac, label %bb.bf, label %bb.be

.thread:                                          ; preds = %.invoke
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit: ; preds = %.lr.ph
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = ptrtoint ptr %.val37 to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = udiv i64 %i.ag, 24                      ; 2 uses
  %i.ai = and i64 %i.ah, 4294967295               ; 5 uses
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97751)
  %i.ak = tail call i1 @llvm.is.fpclass.f64(double %4, /* (pzero) */ i32 64)
  %i.al = shl nuw nsw i64 %i.aj, 3                ; 3 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !97751
  br i1 %i.ak, label %bb.e, label %bb.d

_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %bb.b, %bb.a
  %i.am = tail call i1 @llvm.is.fpclass.f64(double %4, /* (pzero) */ i32 64)
  br i1 %i.am, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i, label %._crit_edge.i.i.thread

bb.d:                                             ; preds = %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit
  %i.an = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !97752 ; 6 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.invoke, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.e:                                             ; preds = %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit
  %i.ap = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.al, i64 noundef range(i64 1, 17) 8) #59, !noalias !97753 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.invoke, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = ptrtoint ptr %i.ap to i64
  br label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i

.invoke:                                          ; preds = %bb.e, %bb.d
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.al) #61
          to label %.cont unwind label %.thread, !noalias !97751

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.d
  %.not250 = icmp eq i64 %i.ai, 0
  br i1 %.not250, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i
  %min.iters.check = icmp samesign ult i64 %i.ai, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader288, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.ah, 4294967292              ; 4 uses
  %i.as = shl nuw nsw i64 %n.vec, 3
  %i.at = getelementptr i8, ptr %i.an, i64 %i.as  ; 2 uses
  %i.au = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %broadcast.splat, ptr %next.gep, align 8, !noalias !97754
  store <2 x double> %broadcast.splat, ptr %i.aw, align 8, !noalias !97754
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !97610

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.preheader288

.lr.ph.i.i.preheader288:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.sroa.0.020.i.i.ph = phi ptr [ %i.an, %.lr.ph.i.i.preheader ], [ %i.at, %middle.block ]
  %.sroa.04.019.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i

._crit_edge.thread.i.i:                           ; preds = %.lr.ph.i.i, %middle.block, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.sroa.414.0.i228 = phi i64 [ 1, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.aj, %middle.block ], [ %i.aj, %.lr.ph.i.i ]
  %.sroa.0.0.lcssa27.i.i = phi ptr [ %i.an, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.at, %middle.block ], [ %i.az, %.lr.ph.i.i ]
  store double %4, ptr %.sroa.0.0.lcssa27.i.i, align 8, !noalias !97754
  br label %._crit_edge.i.i.thread

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader288, %.lr.ph.i.i
  %.sroa.0.020.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %.sroa.0.020.i.i.ph, %.lr.ph.i.i.preheader288 ] ; 2 uses
  %.sroa.04.019.i.i = phi i64 [ %i.ay, %.lr.ph.i.i ], [ %.sroa.04.019.i.i.ph, %.lr.ph.i.i.preheader288 ] ; 2 uses
  %i.ay = add nuw nsw i64 %.sroa.04.019.i.i, 1
  store double %4, ptr %.sroa.0.020.i.i, align 8, !noalias !97754
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 8 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %.sroa.04.019.i.i, %i.ai
  br i1 %exitcond.not.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !97611

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i: ; preds = %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread, %bb.f
  %.sroa.0.0.i.i215221 = phi i64 [ %i.aj, %bb.f ], [ 0, %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread ]
  %.sroa.10.0.i = phi i64 [ %i.ar, %bb.f ], [ 8, %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread ]
  %i.ba = inttoptr i64 %.sroa.10.0.i to ptr
  br label %._crit_edge.i.i.thread

._crit_edge.i.i.thread:                           ; preds = %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i, %._crit_edge.thread.i.i
  %.sroa.0.0.i.i214 = phi i64 [ %.sroa.0.0.i.i215221, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i ], [ %.sroa.414.0.i228, %._crit_edge.thread.i.i ], [ 0, %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread ] ; 2 uses
  %.sink.i = phi ptr [ %i.ba, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i ], [ %i.an, %._crit_edge.thread.i.i ], [ inttoptr (i64 8 to ptr), %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread ]
  store i64 %.sroa.0.0.i.i214, ptr %i.t, align 8, !alias.scope !97751
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 5 uses
  store ptr %.sink.i, ptr %i.bb, align 8, !alias.scope !97751
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  store i64 %.sroa.0.0.i.i214, ptr %i.bc, align 8, !alias.scope !97751
  %.not = icmp ne ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.ac, label %bb.g

bb.g:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit, %._crit_edge.i.i.thread
  %.sroa.016.2 = phi i8 [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit ], [ 1, %._crit_edge.i.i.thread ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97755)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %1, ptr %i.q, align 8, !noalias !97756
  %i.bd = zext i1 %3 to i8
  store i8 %i.bd, ptr %i.p, align 1, !noalias !97756
  store ptr %i.t, ptr %i.o, align 8, !noalias !97756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !97756
  store ptr %i.o, ptr %i.n, align 8, !noalias !97756
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.be, align 8, !alias.scope !97755, !nonnull !58, !noundef !58 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i = load i64, ptr %i.bf, align 8, !alias.scope !97755, !noundef !58 ; 2 uses
  %.not.i.i.i53270 = icmp eq i64 %.val1.i.i, 0
  br i1 %.not.i.i.i53270, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i, label %.lr.ph271

.lr.ph271:                                        ; preds = %bb.g
  %.idx274 = shl nuw nsw i64 %.val1.i.i, 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx274
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %.not.i.i.i53 = icmp eq ptr %.val.i.i, %i.bi
  br i1 %.not.i.i.i53, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph271, %bb.h
  %i.bh = phi ptr [ %i.bg, %.lr.ph271 ], [ %i.bi, %bb.h ]
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -16 ; 4 uses
  %.val.i.i.i.i = load ptr, ptr %i.bi, align 8, !noalias !97757, !noundef !58
  %.not.i.not.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i, label %bb.h, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i

_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.i
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %.val.i.i to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = lshr i64 %i.bl, 4                       ; 3 uses
  %i.bn = and i64 %i.bm, 4294967295               ; 3 uses
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %i.bp = shl nuw nsw i64 %i.bo, 3                ; 2 uses
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !97758
  %i.bq = call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !97758 ; 5 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.j, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i

bb.j:                                             ; preds = %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.bp) #61
          to label %.noexc54 unwind label %bb.ab, !noalias !97759

.noexc54:                                         ; preds = %bb.j
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i
  %.not.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %xtraiter = and i64 %i.bm, 7                    ; 3 uses
  %i.bs = icmp samesign ult i64 %i.bn, 8
  br i1 %i.bs, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.bm, 4294967288
  br label %.lr.ph.i.i.i

._crit_edge.thread.i.i.i.loopexit.unr-lcssa:      ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %._crit_edge.thread.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.sroa.0.022.i.i.i.epil.init = phi ptr [ %i.bq, %.lr.ph.i.i.i.preheader ], [ %i.cb, %._crit_edge.thread.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod293 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod293)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.sroa.0.022.i.i.i.epil = phi ptr [ %i.bt, %.lr.ph.i.i.i.epil ], [ %.sroa.0.022.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  store i32 0, ptr %.sroa.0.022.i.i.i.epil, align 4, !noalias !97760
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.epil, i64 8 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !97623

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.thread.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.sroa.0.0.lcssa29.i.i.i = phi ptr [ %i.bq, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %i.cb, %._crit_edge.thread.i.i.i.loopexit.unr-lcssa ], [ %i.bt, %.lr.ph.i.i.i.epil ]
  store i32 0, ptr %.sroa.0.0.lcssa29.i.i.i, align 4, !noalias !97760
  %.pre.i = load ptr, ptr %i.q, align 8, !noalias !97756
  br label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.022.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.preheader.new ], [ %i.cb, %.lr.ph.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  store i32 0, ptr %.sroa.0.022.i.i.i, align 4, !noalias !97760
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 8
  store i32 0, ptr %i.bu, align 4, !noalias !97760
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 16
  store i32 0, ptr %i.bv, align 4, !noalias !97760
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 24
  store i32 0, ptr %i.bw, align 4, !noalias !97760
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 32
  store i32 0, ptr %i.bx, align 4, !noalias !97760
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 40
  store i32 0, ptr %i.by, align 4, !noalias !97760
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 48
  store i32 0, ptr %i.bz, align 4, !noalias !97760
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 56
  store i32 0, ptr %i.ca, align 4, !noalias !97760
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 64 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.thread.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i: ; preds = %bb.h, %bb.g, %._crit_edge.thread.i.i.i
  %.val.i.a = phi ptr [ %.pre.i, %._crit_edge.thread.i.i.i ], [ %1, %bb.g ], [ %1, %bb.h ] ; 2 uses
  %i.cc = phi ptr [ %i.bq, %._crit_edge.thread.i.i.i ], [ inttoptr (i64 4 to ptr), %bb.g ], [ inttoptr (i64 4 to ptr), %bb.h ] ; 12 uses
  %.sroa.4.015.i.i = phi i64 [ %i.bo, %._crit_edge.thread.i.i.i ], [ 0, %bb.g ], [ 0, %bb.h ] ; 26 uses
  %6 = getelementptr i8, ptr %.val.i.a, i64 8
  %.val.i = load ptr, ptr %6, align 8, !noalias !97761, !nonnull !58, !noundef !58 ; 2 uses
  %7 = getelementptr i8, ptr %.val.i.a, i64 16
  %.val4.i = load i64, ptr %7, align 8, !noalias !97761, !noundef !58
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.val4.i
  br label %bb.k

bb.k:                                             ; preds = %.backedge, %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i
  %i.ce = phi i64 [ 0, %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i ], [ %i.ci, %.backedge ] ; 3 uses
  %i.cf = phi ptr [ %.val.i, %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i ], [ %i.ch, %.backedge ] ; 3 uses
  %i.cg = icmp eq ptr %i.cf, %i.cd
  br i1 %i.cg, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ci = add i64 %i.ce, 1
  %.val.i.i.i.i.i = load ptr, ptr %i.cf, align 8, !noalias !97762, !noundef !58
  %.not.i.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i, label %.backedge, label %bb.m

.backedge:                                        ; preds = %bb.l, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1h_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB47_5types3any5PyAnyEB42_NtB1j_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality42graph_newman_weighted_closeness_centrality0Es_0E0B5w_.exit.i.i.i
  br label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.cj = and i64 %i.ce, 4294967295               ; 3 uses
  %i.ck = icmp ugt i64 %.sroa.4.015.i.i, %i.cj
  br i1 %i.ck, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1h_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB47_5types3any5PyAnyEB42_NtB1j_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality42graph_newman_weighted_closeness_centrality0Es_0E0B5w_.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.cj, i64 noundef %.sroa.4.015.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1201) #60
          to label %.noexc.i unwind label %bb.aa, !noalias !97763

.noexc.i:                                         ; preds = %bb.n
  unreachable

_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1h_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB47_5types3any5PyAnyEB42_NtB1j_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality42graph_newman_weighted_closeness_centrality0Es_0E0B5w_.exit.i.i.i: ; preds = %bb.m
  %i.cl = trunc i64 %i.ce to i32
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cj ; 2 uses
  store i32 1, ptr %i.cm, align 4, !noalias !97763
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i32 %i.cl, ptr %i.cn, align 4, !noalias !97763
  br label %.backedge

bb.o:                                             ; preds = %bb.k
  %.val5.i = load ptr, ptr %i.q, align 8, !noalias !97756, !nonnull !58, !align !84, !noundef !58
  %i.co = getelementptr i8, ptr %.val5.i, i64 48
  %.val.i15.i = load i64, ptr %i.co, align 8, !noalias !97761, !noundef !58
  %.not.i = icmp ult i64 %.val.i15.i, %5
  br i1 %.not.i, label %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.i, label %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.thread.i

_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.o
  %.idx.i = shl nuw nsw i64 %.sroa.4.015.i.i, 3   ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !97764
  %i.cq = shl nuw nsw i64 %.sroa.4.015.i.i, 4     ; 2 uses
  %i.cr = icmp eq i64 %.sroa.4.015.i.i, 0         ; 2 uses
  br i1 %i.cr, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !97765
  %i.cs = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.cq, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !97765 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cu = ptrtoint ptr %i.cs to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.cq) #61
          to label %bb.s unwind label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i, !noalias !97766

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i: ; preds = %bb.q, %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.10.0.i.i.i.i.i.i = phi i64 [ %i.cu, %bb.q ], [ 8, %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.i ]
  %i.cv = inttoptr i64 %.sroa.10.0.i.i.i.i.i.i to ptr ; 4 uses
  store i64 %.sroa.4.015.i.i, ptr %i.m, align 8, !noalias !97764
  %i.cw = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  store ptr %i.cv, ptr %i.cw, align 8, !noalias !97764
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  store i64 0, ptr %i.cx, align 8, !noalias !97764
  %i.cy = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !97767
  store ptr %i.q, ptr %i.cy, align 8, !noalias !97768
  %.sroa.12.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.n, ptr %.sroa.12.sroa.7.0..sroa_idx.i, align 8, !noalias !97768
  %.sroa.12.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr %i.p, ptr %.sroa.12.sroa.8.0..sroa_idx.i, align 8, !noalias !97768
  call void @llvm.experimental.noalias.scope.decl(metadata !97769)
  call void @llvm.experimental.noalias.scope.decl(metadata !97770)
  store ptr %i.cx, ptr %i.l, align 8, !noalias !97771
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store i64 0, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !97771
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.cv, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !97771
  call void @llvm.experimental.noalias.scope.decl(metadata !97772)
  br i1 %i.cr, label %_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtBc_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB23_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4V_5types3any5PyAnyEB4Q_NtB25_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality42graph_newman_weighted_closeness_centrality0Es0_0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecIB1G_dEEEB6k_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldINtNtBa_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIBV_dEuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1i_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4g_5types3any5PyAnyEB4b_NtB1k_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality42graph_newman_weighted_closeness_centrality0Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB24_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB89_3VecB24_E14extend_trustedINtB4_3MapINtNtB89_9into_iter8IntoIterBU_EB2b_EE0E0E0B5F_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.val11.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dj, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldINtNtBa_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIBV_dEuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1i_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4g_5types3any5PyAnyEB4b_NtB1k_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality42graph_newman_weighted_closeness_centrality0Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB24_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB89_3VecB24_E14extend_trustedINtB4_3MapINtNtB89_9into_iter8IntoIterBU_EB2b_EE0E0E0B5F_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cz = phi ptr [ %i.de, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldINtNtBa_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIBV_dEuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1i_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4g_5types3any5PyAnyEB4b_NtB1k_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality42graph_newman_weighted_closeness_centrality0Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB24_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB89_3VecB24_E14extend_trustedINtB4_3MapINtNtB89_9into_iter8IntoIterBU_EB2b_EE0E0E0B5F_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cc, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.da = load i32, ptr %i.cz, align 4, !range !67, !noalias !97773, !noundef !58
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !noalias !97773
  call void @llvm.experimental.noalias.scope.decl(metadata !97774)
  %i.dd = invoke fastcc { i64, double } @_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality42graph_newman_weighted_closeness_centrality0Es0_0B40_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cy, i32 noundef range(i32 0, 2) %i.da, i32 %i.dc) #64
          to label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldINtNtBa_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIBV_dEuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1i_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4g_5types3any5PyAnyEB4b_NtB1k_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality42graph_newman_weighted_closeness_centrality0Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB24_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB89_3VecB24_E14extend_trustedINtB4_3MapINtNtB89_9into_iter8IntoIterBU_EB2b_EE0E0E0B5F_.exit.i.i.i.i.i.i.i.i.i.i.i unwind label %.body.sink.split.i.i.i.i.i.i.i.i, !noalias !97775 ; 2 uses

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldINtNtBa_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIBV_dEuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1i_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4g_5types3any5PyAnyEB4b_NtB1k_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality42graph_newman_weighted_closeness_centrality0Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB24_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB89_3VecB24_E14extend_trustedINtB4_3MapINtNtB89_9into_iter8IntoIterBU_EB2b_EE0E0E0B5F_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.df = extractvalue { i64, double } %i.dd, 0
  %i.dg = extractvalue { i64, double } %i.dd, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !97776)
  call void @llvm.experimental.noalias.scope.decl(metadata !97777)
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %.val11.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  store i64 %i.df, ptr %i.dh, align 8, !noalias !97778
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store double %i.dg, ptr %i.di, align 8, !noalias !97778
  %i.dj = add nuw nsw i64 %.val11.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  store i64 %i.dj, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !97779, !noalias !97767
  %.not.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.de, %i.cp
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldINtNtBa_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIBV_dEuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1i_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4g_5types3any5PyAnyEB4b_NtB1k_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality42graph_newman_weighted_closeness_centrality0Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB24_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB89_3VecB24_E14extend_trustedINtB4_3MapINtNtB89_9into_iter8IntoIterBU_EB2b_EE0E0E0B5F_.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cc, i64 noundef %.idx.i, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !97773
  %.sroa.086.0.copyload87.pre = load i64, ptr %i.m, align 8, !noalias !97780
  %.sroa.588.0.copyload90.pre = load ptr, ptr %i.cw, align 8, !noalias !97780
  br label %_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtBc_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB23_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4V_5types3any5PyAnyEB4Q_NtB25_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality42graph_newman_weighted_closeness_centrality0Es0_0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecIB1G_dEEEB6k_.exit.i.i

.body.sink.split.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store i64 %.val11.i.i.i.i.i.i.i.i.i.i.i, ptr %i.cx, align 8, !alias.scope !97781, !noalias !97782
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cc, i64 noundef %.idx.i, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !97783
  %.val.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !noalias !97764 ; 2 uses
  %i.dl = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.dl, label %.body, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i: ; preds = %.body.sink.split.i.i.i.i.i.i.i.i
  %.val4.i.i.i.i.i.i = load ptr, ptr %i.cw, align 8, !noalias !97764, !nonnull !58, !noundef !58
  %i.dm = shl nuw i64 %.val.i.i.i.i.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i.i, i64 noundef %i.dm, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !97766
  br label %.body

bb.s:                                             ; preds = %bb.r
  unreachable

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i: ; preds = %bb.r
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cc, i64 noundef %.idx.i, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !97784
  br label %.body

_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtBc_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB23_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4V_5types3any5PyAnyEB4Q_NtB25_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality42graph_newman_weighted_closeness_centrality0Es0_0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecIB1G_dEEEB6k_.exit.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i
  %.sroa.588.0.copyload90 = phi ptr [ %i.cv, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ], [ %.sroa.588.0.copyload90.pre, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.086.0.copyload87 = phi i64 [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ], [ %.sroa.086.0.copyload87.pre, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ]
  %.promoted17.i.i.i13.i.i.i.i.i.i.i126.i = phi i64 [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ], [ %i.dj, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !97767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !97764
  br label %bb.ak

_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.thread.i: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !97785
  store i64 0, ptr %i.k, align 8, !alias.scope !97786, !noalias !97785
  %i.do = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.do, align 8, !alias.scope !97786, !noalias !97785
  %i.dp = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 0, ptr %i.dp, align 8, !alias.scope !97786, !noalias !97785
  call void @llvm.experimental.noalias.scope.decl(metadata !97787)
  call void @llvm.experimental.noalias.scope.decl(metadata !97788)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !97789
  store i64 %.sroa.4.015.i.i, ptr %i.j, align 8, !noalias !97790
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.4.015.i.i, 0 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i, label %bb.t, !prof !68

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i: ; preds = %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !97790
  br label %bb.v

bb.t:                                             ; preds = %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.thread.i
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 0, i64 noundef range(i64 0, 1152921504606846976) %.sroa.4.015.i.i, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i unwind label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i16.i.i.i.i.i.i.i, !noalias !97791

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i: ; preds = %bb.t
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.dp, align 8, !alias.scope !97792, !noalias !97785 ; 3 uses
  %.pre32.i.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !97792, !noalias !97785 ; 3 uses
  %.pre33.i.i.i.i.i.i.i = sub nsw i64 %.pre32.i.i.i.i.i.i.i, %.pre.i.i.i.i.i.i.i
  %i.dq = icmp ult i64 %.pre33.i.i.i.i.i.i.i, %.sroa.4.015.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !97790
  call void @llvm.experimental.noalias.scope.decl(metadata !97793)
  %i.dr = icmp ult i64 %.pre.i.i.i.i.i.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.dr)
  br i1 %i.dq, label %bb.u, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i._crit_edge.i.i.i.i.i, !prof !75

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i._crit_edge.i.i.i.i.i: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %i.do, align 8, !alias.scope !97792, !noalias !97785
  br label %bb.v

bb.u:                                             ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1578, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1580) #60
          to label %.noexc15.i.i.i.i.i.i.i unwind label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i, !noalias !97794

.noexc15.i.i.i.i.i.i.i:                           ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i._crit_edge.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i
  %.sroa.086.0.copyload = phi i64 [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i ], [ %.pre32.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i._crit_edge.i.i.i.i.i ] ; 4 uses
  %.sroa.588.0.copyload = phi ptr [ inttoptr (i64 8 to ptr), %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ds = phi i64 [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.588.0.copyload, i64 %i.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !97795
end_hunk_0
begin_hunk_1_@_RNvNtCskcxRuJ53GpR_9rustworkx10centrality44___pyfunction_digraph_group_degree_centrality:bb.a
_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit30: ; preds = %bb.b, %.noexc22, %bb.am, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void

bb.am:                                            ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !98150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !98150
  %.sroa.058.0.copyload = load i64, ptr %i.al, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.459.0.copyload = load ptr, ptr %.sroa.459.0..sroa_idx, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.560.0.copyload = load i64, ptr %.sroa.560.0..sroa_idx, align 8
  %.sroa.661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.665.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.661.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.058.0.copyload, ptr %i.ir, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.459.0.copyload, ptr %.sroa.463.0..sroa_idx, align 8
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.560.0.copyload, ptr %.sroa.564.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %i.is = atomicrmw add ptr %i.y, i64 -1 release, align 8 ; 0 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit30
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCskcxRuJ53GpR_9rustworkx10centrality44digraph_newman_weighted_closeness_centrality(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %1, ptr noundef %2, i1 noundef zeroext %3, double noundef %4, i64 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [64 x i8], align 8                ; 11 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [1 x i8], align 1                 ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 7 uses
  %i.r = alloca [72 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val37 = load ptr, ptr %i.u, align 8, !nonnull !58, !noundef !58 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val38 = load i64, ptr %i.v, align 8, !noundef !58 ; 3 uses
  %.idx273 = mul nuw nsw i64 %.val38, 24
  %i.w = getelementptr inbounds nuw i8, ptr %.val37, i64 %.idx273 ; 2 uses
  %i.x = icmp eq i64 %.val38, 0
  br i1 %i.x, label %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.y = icmp eq ptr %.val37, %i.aa
  br i1 %i.y, label %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.z = phi ptr [ %i.aa, %bb.b ], [ %i.w, %bb.a ]
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -24 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !98342, !noalias !98343, !noundef !58
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %bb.b, label %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit

bb.c:                                             ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i, %.body
  %i.ac = trunc nuw i8 %.sroa.016.3 to i1
  br i1 %i.ac, label %bb.bf, label %bb.be

.thread:                                          ; preds = %.invoke
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit: ; preds = %.lr.ph
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = ptrtoint ptr %.val37 to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = udiv i64 %i.ag, 24                      ; 2 uses
  %i.ai = and i64 %i.ah, 4294967295               ; 5 uses
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98344)
  %i.ak = tail call i1 @llvm.is.fpclass.f64(double %4, /* (pzero) */ i32 64)
  %i.al = shl nuw nsw i64 %i.aj, 3                ; 3 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !98344
  br i1 %i.ak, label %bb.e, label %bb.d

_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %bb.b, %bb.a
  %i.am = tail call i1 @llvm.is.fpclass.f64(double %4, /* (pzero) */ i32 64)
  br i1 %i.am, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i, label %._crit_edge.i.i.thread

bb.d:                                             ; preds = %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit
  %i.an = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !98345 ; 6 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.invoke, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.e:                                             ; preds = %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit
  %i.ap = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.al, i64 noundef range(i64 1, 17) 8) #59, !noalias !98346 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.invoke, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = ptrtoint ptr %i.ap to i64
  br label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i

.invoke:                                          ; preds = %bb.e, %bb.d
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.al) #61
          to label %.cont unwind label %.thread, !noalias !98344

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.d
  %.not250 = icmp eq i64 %i.ai, 0
  br i1 %.not250, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i
  %min.iters.check = icmp samesign ult i64 %i.ai, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader288, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.ah, 4294967292              ; 4 uses
  %i.as = shl nuw nsw i64 %n.vec, 3
  %i.at = getelementptr i8, ptr %i.an, i64 %i.as  ; 2 uses
  %i.au = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %broadcast.splat, ptr %next.gep, align 8, !noalias !98347
  store <2 x double> %broadcast.splat, ptr %i.aw, align 8, !noalias !98347
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !98203

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.preheader288

.lr.ph.i.i.preheader288:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.sroa.0.020.i.i.ph = phi ptr [ %i.an, %.lr.ph.i.i.preheader ], [ %i.at, %middle.block ]
  %.sroa.04.019.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i

._crit_edge.thread.i.i:                           ; preds = %.lr.ph.i.i, %middle.block, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.sroa.414.0.i228 = phi i64 [ 1, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.aj, %middle.block ], [ %i.aj, %.lr.ph.i.i ]
  %.sroa.0.0.lcssa27.i.i = phi ptr [ %i.an, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.at, %middle.block ], [ %i.az, %.lr.ph.i.i ]
  store double %4, ptr %.sroa.0.0.lcssa27.i.i, align 8, !noalias !98347
  br label %._crit_edge.i.i.thread

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader288, %.lr.ph.i.i
  %.sroa.0.020.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %.sroa.0.020.i.i.ph, %.lr.ph.i.i.preheader288 ] ; 2 uses
  %.sroa.04.019.i.i = phi i64 [ %i.ay, %.lr.ph.i.i ], [ %.sroa.04.019.i.i.ph, %.lr.ph.i.i.preheader288 ] ; 2 uses
  %i.ay = add nuw nsw i64 %.sroa.04.019.i.i, 1
  store double %4, ptr %.sroa.0.020.i.i, align 8, !noalias !98347
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 8 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %.sroa.04.019.i.i, %i.ai
  br i1 %exitcond.not.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !98204

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i: ; preds = %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread, %bb.f
  %.sroa.0.0.i.i215221 = phi i64 [ %i.aj, %bb.f ], [ 0, %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread ]
  %.sroa.10.0.i = phi i64 [ %i.ar, %bb.f ], [ 8, %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread ]
  %i.ba = inttoptr i64 %.sroa.10.0.i to ptr
  br label %._crit_edge.i.i.thread

._crit_edge.i.i.thread:                           ; preds = %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i, %._crit_edge.thread.i.i
  %.sroa.0.0.i.i214 = phi i64 [ %.sroa.0.0.i.i215221, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i ], [ %.sroa.414.0.i228, %._crit_edge.thread.i.i ], [ 0, %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread ] ; 2 uses
  %.sink.i = phi ptr [ %i.ba, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i ], [ %i.an, %._crit_edge.thread.i.i ], [ inttoptr (i64 8 to ptr), %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread ]
  store i64 %.sroa.0.0.i.i214, ptr %i.t, align 8, !alias.scope !98344
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 5 uses
  store ptr %.sink.i, ptr %i.bb, align 8, !alias.scope !98344
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  store i64 %.sroa.0.0.i.i214, ptr %i.bc, align 8, !alias.scope !98344
  %.not = icmp ne ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.ac, label %bb.g

bb.g:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit, %._crit_edge.i.i.thread
  %.sroa.016.2 = phi i8 [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit ], [ 1, %._crit_edge.i.i.thread ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98348)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %1, ptr %i.q, align 8, !noalias !98349
  %i.bd = zext i1 %3 to i8
  store i8 %i.bd, ptr %i.p, align 1, !noalias !98349
  store ptr %i.t, ptr %i.o, align 8, !noalias !98349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !98349
  store ptr %i.o, ptr %i.n, align 8, !noalias !98349
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.be, align 8, !alias.scope !98348, !nonnull !58, !noundef !58 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i = load i64, ptr %i.bf, align 8, !alias.scope !98348, !noundef !58 ; 2 uses
  %.not.i.i.i53270 = icmp eq i64 %.val1.i.i, 0
  br i1 %.not.i.i.i53270, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i, label %.lr.ph271

.lr.ph271:                                        ; preds = %bb.g
  %.idx274 = shl nuw nsw i64 %.val1.i.i, 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx274
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %.not.i.i.i53 = icmp eq ptr %.val.i.i, %i.bi
  br i1 %.not.i.i.i53, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph271, %bb.h
  %i.bh = phi ptr [ %i.bg, %.lr.ph271 ], [ %i.bi, %bb.h ]
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -16 ; 4 uses
  %.val.i.i.i.i = load ptr, ptr %i.bi, align 8, !noalias !98350, !noundef !58
  %.not.i.not.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i, label %bb.h, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i

_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.i
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %.val.i.i to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = lshr i64 %i.bl, 4                       ; 3 uses
  %i.bn = and i64 %i.bm, 4294967295               ; 3 uses
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %i.bp = shl nuw nsw i64 %i.bo, 3                ; 2 uses
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !98351
  %i.bq = call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !98351 ; 5 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.j, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i

bb.j:                                             ; preds = %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.bp) #61
          to label %.noexc54 unwind label %bb.ab, !noalias !98352

.noexc54:                                         ; preds = %bb.j
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i
  %.not.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %xtraiter = and i64 %i.bm, 7                    ; 3 uses
  %i.bs = icmp samesign ult i64 %i.bn, 8
  br i1 %i.bs, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.bm, 4294967288
  br label %.lr.ph.i.i.i

._crit_edge.thread.i.i.i.loopexit.unr-lcssa:      ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %._crit_edge.thread.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.sroa.0.022.i.i.i.epil.init = phi ptr [ %i.bq, %.lr.ph.i.i.i.preheader ], [ %i.cb, %._crit_edge.thread.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod293 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod293)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.sroa.0.022.i.i.i.epil = phi ptr [ %i.bt, %.lr.ph.i.i.i.epil ], [ %.sroa.0.022.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  store i32 0, ptr %.sroa.0.022.i.i.i.epil, align 4, !noalias !98353
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.epil, i64 8 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !98216

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.thread.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.sroa.0.0.lcssa29.i.i.i = phi ptr [ %i.bq, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %i.cb, %._crit_edge.thread.i.i.i.loopexit.unr-lcssa ], [ %i.bt, %.lr.ph.i.i.i.epil ]
  store i32 0, ptr %.sroa.0.0.lcssa29.i.i.i, align 4, !noalias !98353
  %.pre.i = load ptr, ptr %i.q, align 8, !noalias !98349
  br label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.022.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.preheader.new ], [ %i.cb, %.lr.ph.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  store i32 0, ptr %.sroa.0.022.i.i.i, align 4, !noalias !98353
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 8
  store i32 0, ptr %i.bu, align 4, !noalias !98353
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 16
  store i32 0, ptr %i.bv, align 4, !noalias !98353
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 24
  store i32 0, ptr %i.bw, align 4, !noalias !98353
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 32
  store i32 0, ptr %i.bx, align 4, !noalias !98353
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 40
  store i32 0, ptr %i.by, align 4, !noalias !98353
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 48
  store i32 0, ptr %i.bz, align 4, !noalias !98353
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 56
  store i32 0, ptr %i.ca, align 4, !noalias !98353
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 64 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.thread.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i: ; preds = %bb.h, %bb.g, %._crit_edge.thread.i.i.i
  %.val.i.a = phi ptr [ %.pre.i, %._crit_edge.thread.i.i.i ], [ %1, %bb.g ], [ %1, %bb.h ] ; 2 uses
  %i.cc = phi ptr [ %i.bq, %._crit_edge.thread.i.i.i ], [ inttoptr (i64 4 to ptr), %bb.g ], [ inttoptr (i64 4 to ptr), %bb.h ] ; 12 uses
  %.sroa.4.015.i.i = phi i64 [ %i.bo, %._crit_edge.thread.i.i.i ], [ 0, %bb.g ], [ 0, %bb.h ] ; 26 uses
  %6 = getelementptr i8, ptr %.val.i.a, i64 8
  %.val.i = load ptr, ptr %6, align 8, !noalias !98354, !nonnull !58, !noundef !58 ; 2 uses
  %7 = getelementptr i8, ptr %.val.i.a, i64 16
  %.val4.i = load i64, ptr %7, align 8, !noalias !98354, !noundef !58
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.val4.i
  br label %bb.k

bb.k:                                             ; preds = %.backedge, %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i
  %i.ce = phi i64 [ 0, %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i ], [ %i.ci, %.backedge ] ; 3 uses
  %i.cf = phi ptr [ %.val.i, %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i ], [ %i.ch, %.backedge ] ; 3 uses
  %i.cg = icmp eq ptr %i.cf, %i.cd
  br i1 %i.cg, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ci = add i64 %i.ce, 1
  %.val.i.i.i.i.i = load ptr, ptr %i.cf, align 8, !noalias !98355, !noundef !58
  %.not.i.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i, label %.backedge, label %bb.m

.backedge:                                        ; preds = %bb.l, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1h_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB47_5types3any5PyAnyEB42_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality44digraph_newman_weighted_closeness_centrality0Es_0E0B5e_.exit.i.i.i
  br label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.cj = and i64 %i.ce, 4294967295               ; 3 uses
  %i.ck = icmp ugt i64 %.sroa.4.015.i.i, %i.cj
  br i1 %i.ck, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1h_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB47_5types3any5PyAnyEB42_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality44digraph_newman_weighted_closeness_centrality0Es_0E0B5e_.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.cj, i64 noundef %.sroa.4.015.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1201) #60
          to label %.noexc.i unwind label %bb.aa, !noalias !98356

.noexc.i:                                         ; preds = %bb.n
  unreachable

_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1h_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB47_5types3any5PyAnyEB42_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality44digraph_newman_weighted_closeness_centrality0Es_0E0B5e_.exit.i.i.i: ; preds = %bb.m
  %i.cl = trunc i64 %i.ce to i32
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cj ; 2 uses
  store i32 1, ptr %i.cm, align 4, !noalias !98356
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i32 %i.cl, ptr %i.cn, align 4, !noalias !98356
  br label %.backedge

bb.o:                                             ; preds = %bb.k
  %.val6.i = load ptr, ptr %i.q, align 8, !noalias !98349, !nonnull !58, !align !84, !noundef !58
  %i.co = getelementptr i8, ptr %.val6.i, i64 48
  %.val.i15.i = load i64, ptr %i.co, align 8, !noalias !98354, !noundef !58
  %.not.i = icmp ult i64 %.val.i15.i, %5
  br i1 %.not.i, label %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.i, label %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.thread.i

_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.o
  %.idx.i = shl nuw nsw i64 %.sroa.4.015.i.i, 3   ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !98357
  %i.cq = shl nuw nsw i64 %.sroa.4.015.i.i, 4     ; 2 uses
  %i.cr = icmp eq i64 %.sroa.4.015.i.i, 0         ; 2 uses
  br i1 %i.cr, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !98358
  %i.cs = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.cq, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !98358 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cu = ptrtoint ptr %i.cs to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.cq) #61
          to label %bb.s unwind label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i, !noalias !98359

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i: ; preds = %bb.q, %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.10.0.i.i.i.i.i.i = phi i64 [ %i.cu, %bb.q ], [ 8, %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.i ]
  %i.cv = inttoptr i64 %.sroa.10.0.i.i.i.i.i.i to ptr ; 4 uses
  store i64 %.sroa.4.015.i.i, ptr %i.m, align 8, !noalias !98357
  %i.cw = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  store ptr %i.cv, ptr %i.cw, align 8, !noalias !98357
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  store i64 0, ptr %i.cx, align 8, !noalias !98357
  %i.cy = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !98360
  store ptr %i.q, ptr %i.cy, align 8, !noalias !98361
  %.sroa.12.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.n, ptr %.sroa.12.sroa.7.0..sroa_idx.i, align 8, !noalias !98361
  %.sroa.12.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr %i.p, ptr %.sroa.12.sroa.8.0..sroa_idx.i, align 8, !noalias !98361
  call void @llvm.experimental.noalias.scope.decl(metadata !98362)
  call void @llvm.experimental.noalias.scope.decl(metadata !98363)
  store ptr %i.cx, ptr %i.l, align 8, !noalias !98364
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store i64 0, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !98364
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.cv, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !98364
  call void @llvm.experimental.noalias.scope.decl(metadata !98365)
  br i1 %i.cr, label %_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtBc_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB23_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4V_5types3any5PyAnyEB4Q_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality44digraph_newman_weighted_closeness_centrality0Es0_0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecIB1G_dEEEB62_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldINtNtBa_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIBV_dEuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1i_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4g_5types3any5PyAnyEB4b_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality44digraph_newman_weighted_closeness_centrality0Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB24_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7T_3VecB24_E14extend_trustedINtB4_3MapINtNtB7T_9into_iter8IntoIterBU_EB2b_EE0E0E0B5n_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.val11.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dj, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldINtNtBa_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIBV_dEuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1i_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4g_5types3any5PyAnyEB4b_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality44digraph_newman_weighted_closeness_centrality0Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB24_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7T_3VecB24_E14extend_trustedINtB4_3MapINtNtB7T_9into_iter8IntoIterBU_EB2b_EE0E0E0B5n_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cz = phi ptr [ %i.de, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldINtNtBa_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIBV_dEuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1i_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4g_5types3any5PyAnyEB4b_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality44digraph_newman_weighted_closeness_centrality0Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB24_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7T_3VecB24_E14extend_trustedINtB4_3MapINtNtB7T_9into_iter8IntoIterBU_EB2b_EE0E0E0B5n_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cc, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.da = load i32, ptr %i.cz, align 4, !range !67, !noalias !98366, !noundef !58
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !noalias !98366
  call void @llvm.experimental.noalias.scope.decl(metadata !98367)
  %i.dd = invoke fastcc { i64, double } @_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality44digraph_newman_weighted_closeness_centrality0Es0_0B3I_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cy, i32 noundef range(i32 0, 2) %i.da, i32 %i.dc) #64
          to label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldINtNtBa_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIBV_dEuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1i_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4g_5types3any5PyAnyEB4b_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality44digraph_newman_weighted_closeness_centrality0Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB24_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7T_3VecB24_E14extend_trustedINtB4_3MapINtNtB7T_9into_iter8IntoIterBU_EB2b_EE0E0E0B5n_.exit.i.i.i.i.i.i.i.i.i.i.i unwind label %.body.sink.split.i.i.i.i.i.i.i.i, !noalias !98368 ; 2 uses

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldINtNtBa_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIBV_dEuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1i_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4g_5types3any5PyAnyEB4b_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality44digraph_newman_weighted_closeness_centrality0Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB24_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7T_3VecB24_E14extend_trustedINtB4_3MapINtNtB7T_9into_iter8IntoIterBU_EB2b_EE0E0E0B5n_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.df = extractvalue { i64, double } %i.dd, 0
  %i.dg = extractvalue { i64, double } %i.dd, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !98369)
  call void @llvm.experimental.noalias.scope.decl(metadata !98370)
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %.val11.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  store i64 %i.df, ptr %i.dh, align 8, !noalias !98371
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store double %i.dg, ptr %i.di, align 8, !noalias !98371
  %i.dj = add nuw nsw i64 %.val11.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  store i64 %i.dj, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !98372, !noalias !98360
  %.not.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.de, %i.cp
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldINtNtBa_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIBV_dEuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1i_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4g_5types3any5PyAnyEB4b_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality44digraph_newman_weighted_closeness_centrality0Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB24_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7T_3VecB24_E14extend_trustedINtB4_3MapINtNtB7T_9into_iter8IntoIterBU_EB2b_EE0E0E0B5n_.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cc, i64 noundef %.idx.i, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !98366
  %.sroa.086.0.copyload87.pre = load i64, ptr %i.m, align 8, !noalias !98373
  %.sroa.588.0.copyload90.pre = load ptr, ptr %i.cw, align 8, !noalias !98373
  br label %_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtBc_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB23_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4V_5types3any5PyAnyEB4Q_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality44digraph_newman_weighted_closeness_centrality0Es0_0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecIB1G_dEEEB62_.exit.i.i

.body.sink.split.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store i64 %.val11.i.i.i.i.i.i.i.i.i.i.i, ptr %i.cx, align 8, !alias.scope !98374, !noalias !98375
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cc, i64 noundef %.idx.i, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !98376
  %.val.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !noalias !98357 ; 2 uses
  %i.dl = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.dl, label %.body, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i: ; preds = %.body.sink.split.i.i.i.i.i.i.i.i
  %.val4.i.i.i.i.i.i = load ptr, ptr %i.cw, align 8, !noalias !98357, !nonnull !58, !noundef !58
  %i.dm = shl nuw i64 %.val.i.i.i.i.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i.i, i64 noundef %i.dm, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !98359
  br label %.body

bb.s:                                             ; preds = %bb.r
  unreachable

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i: ; preds = %bb.r
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cc, i64 noundef %.idx.i, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !98377
  br label %.body

_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtBc_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB23_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4V_5types3any5PyAnyEB4Q_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality44digraph_newman_weighted_closeness_centrality0Es0_0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecIB1G_dEEEB62_.exit.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i
  %.sroa.588.0.copyload90 = phi ptr [ %i.cv, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ], [ %.sroa.588.0.copyload90.pre, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.086.0.copyload87 = phi i64 [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ], [ %.sroa.086.0.copyload87.pre, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ]
  %.promoted17.i.i.i13.i.i.i.i.i.i.i126.i = phi i64 [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ], [ %i.dj, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !98360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !98357
  br label %bb.ak

_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.thread.i: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !98378
  store i64 0, ptr %i.k, align 8, !alias.scope !98379, !noalias !98378
  %i.do = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.do, align 8, !alias.scope !98379, !noalias !98378
  %i.dp = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 0, ptr %i.dp, align 8, !alias.scope !98379, !noalias !98378
  call void @llvm.experimental.noalias.scope.decl(metadata !98380)
  call void @llvm.experimental.noalias.scope.decl(metadata !98381)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !98382
  store i64 %.sroa.4.015.i.i, ptr %i.j, align 8, !noalias !98383
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.4.015.i.i, 0 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i, label %bb.t, !prof !68

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i: ; preds = %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !98383
  br label %bb.v

bb.t:                                             ; preds = %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.thread.i
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 0, i64 noundef range(i64 0, 1152921504606846976) %.sroa.4.015.i.i, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i unwind label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i16.i.i.i.i.i.i.i, !noalias !98384

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i: ; preds = %bb.t
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.dp, align 8, !alias.scope !98385, !noalias !98378 ; 3 uses
  %.pre32.i.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !98385, !noalias !98378 ; 3 uses
  %.pre33.i.i.i.i.i.i.i = sub nsw i64 %.pre32.i.i.i.i.i.i.i, %.pre.i.i.i.i.i.i.i
  %i.dq = icmp ult i64 %.pre33.i.i.i.i.i.i.i, %.sroa.4.015.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !98383
  call void @llvm.experimental.noalias.scope.decl(metadata !98386)
  %i.dr = icmp ult i64 %.pre.i.i.i.i.i.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.dr)
  br i1 %i.dq, label %bb.u, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i._crit_edge.i.i.i.i.i, !prof !75

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i._crit_edge.i.i.i.i.i: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %i.do, align 8, !alias.scope !98385, !noalias !98378
  br label %bb.v

bb.u:                                             ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1578, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1580) #60
          to label %.noexc15.i.i.i.i.i.i.i unwind label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i, !noalias !98387

.noexc15.i.i.i.i.i.i.i:                           ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i._crit_edge.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i
  %.sroa.086.0.copyload = phi i64 [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i ], [ %.pre32.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i._crit_edge.i.i.i.i.i ] ; 4 uses
  %.sroa.588.0.copyload = phi ptr [ inttoptr (i64 8 to ptr), %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ds = phi i64 [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.588.0.copyload, i64 %i.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !98388
end_hunk_1
begin_hunk_2_@_RNvNtCskcxRuJ53GpR_9rustworkx8matching32___pyfunction_is_maximal_matching:bb.a
._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.ag, %bb.af
  %.not11.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ah, !prof !62

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hp = add i16 %.sroa.05.029.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.hq = and i16 %i.hp, %.sroa.05.029.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.hq, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

bb.ah:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hr = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.hs = bitcast <16 x i1> %i.hr to i16          ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.hs, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ai, label %.thread24.i.i.i.i.i.i.i.i.i.i.i.i, !prof !62

.thread24.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.ah
  %i.ht = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.hs, i1 true)
  %i.hu = zext nneg i16 %i.ht to i64
  %i.hv = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.hu
  %i.hw = and i64 %i.hv, %.val5.i.i.i.i.i.i.i.i.i.i.i
  br label %.thread.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.thread24.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.4.121.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hw, %.thread24.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.hx = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.hy = bitcast <16 x i1> %i.hx to i16
  %i.hz = icmp eq i16 %i.hy, 0
  br i1 %i.hz, label %bb.ai, label %bb.aj, !prof !62

bb.ai:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ah
  %.sroa.01.122.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.ah ]
  %.sroa.4.120.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.121.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.ah ]
  %i.ia = add i64 %i.hd, 16                       ; 2 uses
  %i.ib = add i64 %i.ia, %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i
  br label %bb.af

bb.aj:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %.val.i.i1.i.i.i.i.i.i.i.i.i, i64 %.sroa.4.121.i.i.i.i.i.i.i.i.i.i.i.i
  %i.id = load i8, ptr %i.ic, align 1, !noalias !151707, !noundef !58 ; 2 uses
  %i.ie = icmp sgt i8 %i.id, -1
  br i1 %i.ie, label %bb.ak, label %bb.al, !prof !62

bb.ak:                                            ; preds = %bb.aj
  %.val62.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i1.i.i.i.i.i.i.i.i.i, align 16, !noalias !151707
  %i.if = icmp slt <16 x i8> %.val62.i.i.i.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.ig = bitcast <16 x i1> %i.if to i16          ; 2 uses
  %.not.i22.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i16 %i.ig, 0
  %i.ih = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ig, i1 true)
  %i.ii = zext nneg i16 %i.ih to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i22.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !151702
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i1.i.i.i.i.i.i.i.i.i, i64 %i.ii
  %.pre.i2.i.i.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !151708
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ij = phi i8 [ %.pre.i2.i.i.i.i.i.i.i.i.i, %bb.ak ], [ %i.id, %bb.aj ]
  %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ii, %bb.ak ], [ %.sroa.4.121.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aj ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !151709), !noalias !151702
  %i.ik = getelementptr inbounds nuw i8, ptr %.val.i.i1.i.i.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.il = and i8 %i.ij, 1
  %i.im = zext nneg i8 %i.il to i64
  %i.in = add i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i, -16
  %i.io = and i64 %i.in, %.val5.i.i.i.i.i.i.i.i.i.i.i
  store i8 %i.ha, ptr %i.ik, align 1, !noalias !151708
  %i.ip = getelementptr i8, ptr %.val.i.i1.i.i.i.i.i.i.i.i.i, i64 %i.io
  %i.iq = getelementptr i8, ptr %i.ip, i64 16
  store i8 %i.ha, ptr %i.iq, align 1, !noalias !151708
  %i.ir = load <2 x i64>, ptr %i.fr, align 8, !alias.scope !151710, !noalias !151699
  %i.is = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.im, i64 0
  %i.it = sub <2 x i64> %i.ir, %i.is
  store <2 x i64> %i.it, ptr %i.fr, align 8, !alias.scope !151710, !noalias !151699
  %i.iu = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.iv = getelementptr inbounds [16 x i8], ptr %.val.i.i1.i.i.i.i.i.i.i.i.i, i64 %i.iu ; 2 uses
  %i.iw = getelementptr inbounds i8, ptr %i.iv, i64 -16
  store i64 %spec.select1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.iw, align 8, !noalias !151711
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.iv, i64 -8
  store i64 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !151711
  br label %_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapAjj2_uE6insertCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i

_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapAjj2_uE6insertCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %bb.al
  %i.ix = add i64 %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i, -1
  br label %.outer.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i
  %i.iy = phi ptr [ %i.jc, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa2227.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.iz = phi ptr [ %i.jb, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa2125.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.val814.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.iy, align 16, !noalias !151696
  %i.ja = icmp sgt <16 x i8> %.val814.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.jb = getelementptr inbounds i8, ptr %i.iz, i64 -256 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ja to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i30.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i30.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

bb.am:                                            ; preds = %bb.aw, %bb.av
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %.body42.i

.body42.i:                                        ; preds = %bb.ay, %bb.am
  %eh.lpad-body43.i = phi { ptr, i32 } [ %i.jd, %bb.am ], [ %i.ny, %bb.ay ] ; 3 uses
  %i.je = icmp eq i64 %.sroa.6.0.copyload122.i, 0
  br i1 %i.je, label %.body33.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %.body42.i
  %i.jf = shl i64 %.sroa.6.0.copyload122.i, 4     ; 2 uses
  %i.jg = add i64 %i.jf, 16                       ; 2 uses
  %i.jh = add i64 %.sroa.6.0.copyload122.i, 17
  %i.ji = add i64 %i.jh, %i.jg                    ; 4 uses
  %i.jj = icmp uge i64 %i.ji, %i.jg
  %i.jk = icmp ult i64 %i.ji, 9223372036854775793
  call void @llvm.assume(i1 %i.jj), !noalias !151671
  call void @llvm.assume(i1 %i.jk), !noalias !151671
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload120.i) ], !noalias !151671
  %i.jl = icmp eq i64 %i.ji, 0
  br i1 %i.jl, label %.body33.i, label %bb.an

bb.an:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i
  %i.jm = sub nuw nsw i64 -16, %i.jf
  %i.jn = getelementptr inbounds i8, ptr %.sroa.0.0.copyload120.i, i64 %i.jm
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jn, i64 noundef %i.ji, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !151671
  br label %.body33.i

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload120.i = load ptr, ptr %i.b, align 8, !noalias !151712 ; 7 uses
  %.sroa.6.0.copyload122.i = load i64, ptr %i.ft, align 8, !noalias !151712 ; 8 uses
  %.sroa.9125.0.copyload.i = load i64, ptr %i.fq, align 8, !noalias !151712
  %.sroa.10.0.copyload127.i = load i64, ptr %.sroa.4.0..sroa_idx.i26.i, align 8, !noalias !151712 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !151694
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %.val24.i35.i = load <16 x i8>, ptr %.sroa.0.0.copyload.i, align 16, !noalias !151713
  %i.jo = icmp sgt <16 x i8> %.val24.i35.i, splat (i8 -1)
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.jq = bitcast <16 x i1> %i.jo to i16
  %i.jr = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.js = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.jt = icmp eq i64 %.sroa.9125.0.copyload.i, 0
  %i.ju = call i64 @llvm.fshl.i64(i64 %.sroa.10.0.copyload127.i, i64 %.sroa.10.0.copyload127.i, i64 48)
  %.val.i.i.i.i.i = load i64, ptr %i.jr, align 8, !alias.scope !151670
  %i.jv = icmp eq i64 %i.fg, 0                    ; 2 uses
  %i.jw = add i64 %i.fg, 1                        ; 2 uses
  %i.jx = icmp ugt i64 %i.jw, 1152921504606846975
  %i.jy = shl nuw i64 %i.jw, 4                    ; 3 uses
  %i.jz = add i64 %i.fg, 17                       ; 3 uses
  %i.ka = add i64 %i.jy, %i.jz                    ; 5 uses
  %i.kb = icmp ult i64 %i.ka, %i.jy
  %i.kc = icmp ugt i64 %i.ka, 9223372036854775792
  %or.cond.i.i.i.i.i.i.i.i = or i1 %i.kb, %i.kc
  %i.kd = icmp eq i64 %i.ka, 0
  %i.ke = ptrtoint ptr %i.fe to i64
  %i.kf = load i64, ptr %i.js, align 8, !alias.scope !151670 ; 2 uses
  %brmerge.i = select i1 %i.jx, i1 true, i1 %or.cond.i.i.i.i.i.i.i.i, !prof !151714
  br label %bb.ap

bb.ap:                                            ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3all5checkRAjj2_NCNvNtCskcxRuJ53GpR_9rustworkx8matching19is_maximal_matchings0_0E0B1n_.exit.i.i, %bb.ao
  %.lcssa1948.i.i = phi ptr [ %.lcssa1944.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3all5checkRAjj2_NCNvNtCskcxRuJ53GpR_9rustworkx8matching19is_maximal_matchings0_0E0B1n_.exit.i.i ], [ %i.jp, %bb.ao ] ; 4 uses
  %.lcssa2541.i.i = phi i16 [ %.lcssa2542.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3all5checkRAjj2_NCNvNtCskcxRuJ53GpR_9rustworkx8matching19is_maximal_matchings0_0E0B1n_.exit.i.i ], [ %i.jq, %bb.ao ] ; 3 uses
  %.lcssa2038.i.i = phi ptr [ %.lcssa2034.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3all5checkRAjj2_NCNvNtCskcxRuJ53GpR_9rustworkx8matching19is_maximal_matchings0_0E0B1n_.exit.i.i ], [ %.sroa.0.0.copyload.i, %bb.ao ] ; 4 uses
  %.lcssa2831.i.i = phi i64 [ %.lcssa2832.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3all5checkRAjj2_NCNvNtCskcxRuJ53GpR_9rustworkx8matching19is_maximal_matchings0_0E0B1n_.exit.i.i ], [ %.sroa.959.0.copyload.i, %bb.ao ] ; 3 uses
  %.not.i39.i = icmp eq i64 %.lcssa2831.i.i, 0    ; 3 uses
  br i1 %.not.i39.i, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ap
  %i.kg = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !151715
  %i.kh = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 8), align 8, !noalias !151715
  %i.ki = zext i64 %i.kg to i128
  br i1 %i.jt, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  %.not10.i.us.i.i.i = icmp eq i16 %.lcssa2541.i.i, 0
  br i1 %.not10.i.us.i.i.i, label %.lr.ph.i.us.i.i.i, label %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTAjj2_uEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.us.i.i.i

.lr.ph.i.us.i.i.i:                                ; preds = %.lr.ph.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %i.kj = phi ptr [ %i.kn, %.lr.ph.i.us.i.i.i ], [ %.lcssa1948.i.i, %.lr.ph.split.us.i.i.i ] ; 2 uses
  %i.kk = phi ptr [ %i.km, %.lr.ph.i.us.i.i.i ], [ %.lcssa2038.i.i, %.lr.ph.split.us.i.i.i ]
  %.val68.i.us.i.i.i = load <16 x i8>, ptr %i.kj, align 16, !noalias !151716
  %i.kl = icmp sgt <16 x i8> %.val68.i.us.i.i.i, splat (i8 -1)
  %i.km = getelementptr inbounds i8, ptr %i.kk, i64 -256 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 16 ; 2 uses
  %.cast.i.us.i.i.i = bitcast <16 x i1> %i.kl to i16 ; 2 uses
  %.not.i.us.i.i.i = icmp eq i16 %.cast.i.us.i.i.i, 0
  br i1 %.not.i.us.i.i.i, label %.lr.ph.i.us.i.i.i, label %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTAjj2_uEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.us.i.i.i

_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTAjj2_uEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.us.i.i.i: ; preds = %.lr.ph.i.us.i.i.i, %.lr.ph.split.us.i.i.i
  %.lcssa1947.i.i = phi ptr [ %.lcssa1948.i.i, %.lr.ph.split.us.i.i.i ], [ %i.kn, %.lr.ph.i.us.i.i.i ]
  %.lcssa2037.i.i = phi ptr [ %.lcssa2038.i.i, %.lr.ph.split.us.i.i.i ], [ %i.km, %.lr.ph.i.us.i.i.i ] ; 2 uses
  %.lcssa.i.us.i.i.i = phi i16 [ %.lcssa2541.i.i, %.lr.ph.split.us.i.i.i ], [ %.cast.i.us.i.i.i, %.lr.ph.i.us.i.i.i ] ; 3 uses
  %i.ko = add i16 %.lcssa.i.us.i.i.i, -1
  %i.kp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.us.i.i.i, i1 true)
  %i.kq = zext nneg i16 %i.kp to i64
  %i.kr = and i16 %i.ko, %.lcssa.i.us.i.i.i
  %i.ks = sub nsw i64 0, %i.kq
  %i.kt = getelementptr inbounds [16 x i8], ptr %.lcssa2037.i.i, i64 %i.ks ; 2 uses
  %i.ku = add i64 %.lcssa2831.i.i, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !151717)
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %i.kt, i64 -16
  %.val7.i.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !noalias !151718
  br label %.loopexit.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload120.i) ]
  br label %bb.aq

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapAjj2_uE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.kv = icmp eq i64 %i.lj, 0
  br i1 %i.kv, label %.loopexit.i, label %bb.aq

bb.aq:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapAjj2_uE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i, %.lr.ph.split.i.i.i
  %.lcssa1946.i.i = phi ptr [ %.lcssa1948.i.i, %.lr.ph.split.i.i.i ], [ %.lcssa1945.i.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapAjj2_uE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i ]
  %.lcssa2036.i.i = phi ptr [ %.lcssa2038.i.i, %.lr.ph.split.i.i.i ], [ %.lcssa2035.i.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapAjj2_uE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i ]
  %.lcssa21.i.i.i = phi ptr [ %.lcssa1948.i.i, %.lr.ph.split.i.i.i ], [ %.lcssa20.i.i.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapAjj2_uE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i ] ; 2 uses
  %i.kw = phi i16 [ %.lcssa2541.i.i, %.lr.ph.split.i.i.i ], [ %i.lg, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapAjj2_uE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i ] ; 2 uses
  %i.kx = phi i64 [ %.lcssa2831.i.i, %.lr.ph.split.i.i.i ], [ %i.lj, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapAjj2_uE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i ]
  %.lcssa111516.i.i.i = phi ptr [ %.lcssa2038.i.i, %.lr.ph.split.i.i.i ], [ %.lcssa1114.i.i.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapAjj2_uE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i ] ; 2 uses
  %.not10.i.i.i.i = icmp eq i16 %i.kw, 0
  br i1 %.not10.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTAjj2_uEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.aq, %.lr.ph.i.i.i.i
  %i.ky = phi ptr [ %i.lc, %.lr.ph.i.i.i.i ], [ %.lcssa21.i.i.i, %bb.aq ] ; 2 uses
  %i.kz = phi ptr [ %i.lb, %.lr.ph.i.i.i.i ], [ %.lcssa111516.i.i.i, %bb.aq ]
  %.val68.i.i.i.i = load <16 x i8>, ptr %i.ky, align 16, !noalias !151716
  %i.la = icmp sgt <16 x i8> %.val68.i.i.i.i, splat (i8 -1)
  %i.lb = getelementptr inbounds i8, ptr %i.kz, i64 -256 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 16 ; 3 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.la to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTAjj2_uEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTAjj2_uEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.aq
  %.lcssa1945.i.i = phi ptr [ %.lcssa1946.i.i, %bb.aq ], [ %i.lc, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa2035.i.i = phi ptr [ %.lcssa2036.i.i, %bb.aq ], [ %i.lb, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa20.i.i.i = phi ptr [ %.lcssa21.i.i.i, %bb.aq ], [ %i.lc, %.lr.ph.i.i.i.i ]
  %.lcssa1114.i.i.i = phi ptr [ %.lcssa111516.i.i.i, %bb.aq ], [ %i.lb, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %i.kw, %bb.aq ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ld = add i16 %.lcssa.i.i.i.i, -1
  %i.le = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.lf = zext nneg i16 %i.le to i64
  %i.lg = and i16 %i.ld, %.lcssa.i.i.i.i          ; 2 uses
  %i.lh = sub nsw i64 0, %i.lf
  %i.li = getelementptr inbounds [16 x i8], ptr %.lcssa1114.i.i.i, i64 %i.lh ; 3 uses
  %i.lj = add i64 %i.kx, -1                       ; 3 uses
  %i.lk = getelementptr inbounds i8, ptr %i.li, i64 -16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !151717)
  %.val4.i.i.i.i = load i64, ptr %i.lk, align 1, !alias.scope !151717, !noalias !151715
  %i.ll = getelementptr inbounds i8, ptr %i.li, i64 -8
  %.val5.i.i.i.i = load i64, ptr %i.ll, align 1, !alias.scope !151717, !noalias !151715
  %i.lm = xor i64 %.val4.i.i.i.i, %i.ju
  %i.ln = xor i64 %.val5.i.i.i.i, %i.kh
  %i.lo = zext i64 %i.lm to i128
  %i.lp = zext i64 %i.ln to i128
  %i.lq = mul nuw i128 %i.lp, %i.lo               ; 2 uses
  %i.lr = lshr i128 %i.lq, 64
  %i.ls = xor i128 %i.lr, %i.lq
  %i.lt = trunc i128 %i.ls to i64
  %i.lu = xor i64 %i.lt, 2
  %i.lv = zext i64 %i.lu to i128
  %i.lw = mul nuw i128 %i.lv, %i.ki               ; 2 uses
  %i.lx = lshr i128 %i.lw, 64
  %i.ly = xor i128 %i.lx, %i.lw
  %i.lz = trunc i128 %i.ly to i64                 ; 2 uses
  %i.ma = lshr i64 %i.lz, 57
  %i.mb = trunc nuw nsw i64 %i.ma to i8
  %i.mc = insertelement <16 x i8> poison, i8 %i.mb, i64 0
  %i.md = shufflevector <16 x i8> %i.mc, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i.i.i.i.i = load i128, ptr %i.lk, align 8, !alias.scope !151717, !noalias !151715 ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.at, %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTAjj2_uEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.sroa.011.0.i.i.i.i.i.i = phi i64 [ 0, %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTAjj2_uEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %i.mu, %bb.at ]
  %.pn.i.i.i.i.i = phi i64 [ %i.lz, %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTAjj2_uEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %i.mv, %bb.at ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %.sroa.6.0.copyload122.i ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload120.i, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.me, align 1, !noalias !151719 ; 2 uses
  %i.mf = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.md
  %i.mg = bitcast <16 x i1> %i.mf to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.mg, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ar, %bb.as
  %.sroa.05.0.i31.i.i.i.i.i = phi i16 [ %i.mt, %bb.as ], [ %i.mg, %bb.ar ] ; 3 uses
  %i.mh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i.i, i1 true)
  %i.mi = zext nneg i16 %i.mh to i64
  %i.mj = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.mi
  %i.mk = and i64 %i.mj, %.sroa.6.0.copyload122.i
  %i.ml = sub nsw i64 0, %i.mk
  %i.mm = getelementptr inbounds [16 x i8], ptr %.sroa.0.0.copyload120.i, i64 %i.ml
  %i.mn = getelementptr inbounds i8, ptr %i.mm, i64 -16
  %.val2.i.i.i.i.i.i = load i128, ptr %i.mn, align 8, !noalias !151720
  %i.mo = icmp eq i128 %.val.i.i.i.i.i.i.i, %.val2.i.i.i.i.i.i
  br i1 %i.mo, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapAjj2_uE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i, label %bb.as, !prof !68

._crit_edge.i.i.i.i.i:                            ; preds = %bb.as, %bb.ar
  %i.mp = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.mq = bitcast <16 x i1> %i.mp to i16
  %i.mr = icmp eq i16 %i.mq, 0
  br i1 %i.mr, label %bb.at, label %.loopexit.i.loopexit.i, !prof !62

bb.as:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ms = add i16 %.sroa.05.0.i31.i.i.i.i.i, -1
  %i.mt = and i16 %i.ms, %.sroa.05.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.mt, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.at:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.mu = add i64 %.sroa.011.0.i.i.i.i.i.i, 16    ; 2 uses
  %i.mv = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.mu
  br label %bb.ar

.loopexit.i.loopexit.i:                           ; preds = %._crit_edge.i.i.i.i.i
  %i.mw = trunc i128 %.val.i.i.i.i.i.i.i to i64
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.loopexit.i, %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTAjj2_uEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.us.i.i.i
  %.val6.i.i = phi i64 [ %.val7.i.pre.i, %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTAjj2_uEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.us.i.i.i ], [ %i.mw, %.loopexit.i.loopexit.i ]
  %.lcssa1944.i.i = phi ptr [ %.lcssa1947.i.i, %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTAjj2_uEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.us.i.i.i ], [ %.lcssa1945.i.i, %.loopexit.i.loopexit.i ]
  %.lcssa2542.i.i = phi i16 [ %i.kr, %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTAjj2_uEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.us.i.i.i ], [ %i.lg, %.loopexit.i.loopexit.i ]
  %.lcssa2034.i.i = phi ptr [ %.lcssa2037.i.i, %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTAjj2_uEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.us.i.i.i ], [ %.lcssa2035.i.i, %.loopexit.i.loopexit.i ]
  %.lcssa2832.i.i = phi i64 [ %i.ku, %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTAjj2_uEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.us.i.i.i ], [ %i.lj, %.loopexit.i.loopexit.i ]
  %.pn.i.i = phi ptr [ %i.kt, %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTAjj2_uEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.us.i.i.i ], [ %i.li, %.loopexit.i.loopexit.i ]
  %5 = getelementptr i8, ptr %.pn.i.i, i64 -8
  %.val7.i.i = load i64, ptr %5, align 8, !noalias !151718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !151718
  br i1 %i.jv, label %_RNvXNtCs3sCKvcUjPpt_9hashbrown3mapINtB2_7HashMapTjjEuENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %.loopexit.i.i
  br i1 %brmerge.i, label %bb.av, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i, !prof !151721

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i: ; preds = %bb.au
  br i1 %i.kd, label %_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTTjjEuEE17new_uninitializedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %_RNvXs_NtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i.i.i.i.i.i

_RNvXs_NtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !151722
  %i.mx = call noundef align 16 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.ka, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !151722 ; 2 uses
  %i.my = icmp eq ptr %i.mx, null
  br i1 %i.my, label %bb.aw, label %_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTTjjEuEE17new_uninitializedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @113, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #60
          to label %.noexc40.i unwind label %bb.am, !noalias !151722

.noexc40.i:                                       ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %_RNvXs_NtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef %i.ka) #61
          to label %.noexc41.i unwind label %bb.am, !noalias !151722

.noexc41.i:                                       ; preds = %bb.aw
  unreachable

_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTTjjEuEE17new_uninitializedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %_RNvXs_NtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i.i.i.i.i.i, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i7.i.i.i.i.i.i.i.i = phi ptr [ %i.mx, %_RNvXs_NtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i.i.i.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i ]
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i7.i.i.i.i.i.i.i.i, i64 %i.jy ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.mz, ptr nonnull align 16 %i.fe, i64 %i.jz, i1 false), !noalias !151723
  br i1 %.not.i.i, label %_RNvXNtCs3sCKvcUjPpt_9hashbrown3mapINtB2_7HashMapTjjEuENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTTjjEuEE17new_uninitializedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %.val24.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.fe, align 16, !noalias !151724
  %i.na = icmp sgt <16 x i8> %.val24.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.nb = bitcast <16 x i1> %i.na to i16
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.14.018.i.i.i.i.i.i.i = phi i64 [ %i.fk, %.lr.ph.i.i.i.i.i.i.i ], [ %i.nn, %.loopexit.i.i.i.i.i.i.i ]
  %.sroa.10.017.i.i.i.i.i.i.i = phi i16 [ %i.nb, %.lr.ph.i.i.i.i.i.i.i ], [ %i.nk, %.loopexit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i.i = phi ptr [ %i.fi, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.6.1.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.012.015.i.i.i.i.i.i.i = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.012.1.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ] ; 2 uses
  %.not10.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.10.017.i.i.i.i.i.i.i, 0
  br i1 %.not10.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.ax, %.lr.ph.i.i.i.i.i.i.i.i
  %i.nc = phi ptr [ %i.ng, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i.i, %bb.ax ] ; 2 uses
  %i.nd = phi ptr [ %i.nf, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.012.015.i.i.i.i.i.i.i, %bb.ax ]
  %.val68.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.nc, align 16, !noalias !151725
  %i.ne = icmp sgt <16 x i8> %.val68.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.nf = getelementptr inbounds i8, ptr %i.nd, i64 -256 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nc, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ne to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.ax
  %.sroa.012.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.012.015.i.i.i.i.i.i.i, %bb.ax ], [ %i.nf, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i.i, %bb.ax ], [ %i.ng, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.10.017.i.i.i.i.i.i.i, %bb.ax ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.nh = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.ni = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.nj = zext nneg i16 %i.ni to i64
  %i.nk = and i16 %i.nh, %.lcssa.i.i.i.i.i.i.i.i
  %i.nl = sub nsw i64 0, %i.nj
  %i.nm = getelementptr inbounds [16 x i8], ptr %.sroa.012.1.i.i.i.i.i.i.i, i64 %i.nl ; 2 uses
  %i.nn = add i64 %.sroa.14.018.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.no = getelementptr inbounds i8, ptr %i.nm, i64 -16
  %i.np = ptrtoint ptr %i.nm to i64
  %i.nq = sub i64 %i.ke, %i.np
  %i.nr = ashr exact i64 %i.nq, 4
  %i.ns = sub nsw i64 0, %i.nr
  %i.nt = getelementptr inbounds [16 x i8], ptr %i.mz, i64 %i.ns
  %i.nu = getelementptr inbounds i8, ptr %i.nt, i64 -16
  %i.nv = load <2 x i64>, ptr %i.no, align 8, !noalias !151723
  store <2 x i64> %i.nv, ptr %i.nu, align 16, !noalias !151723
  %i.nw = icmp eq i64 %i.nn, 0
  br i1 %i.nw, label %_RNvXNtCs3sCKvcUjPpt_9hashbrown3mapINtB2_7HashMapTjjEuENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %bb.ax

_RNvXNtCs3sCKvcUjPpt_9hashbrown3mapINtB2_7HashMapTjjEuENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i, %_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTTjjEuEE17new_uninitializedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, %.loopexit.i.i
  %.sroa.7.0.i.i.i.i.i = phi i64 [ 0, %.loopexit.i.i ], [ 0, %_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTTjjEuEE17new_uninitializedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ %i.fk, %.loopexit.i.i.i.i.i.i.i ]
  %.sroa.6.0.i.i.i.i.i = phi i64 [ 0, %.loopexit.i.i ], [ %i.kf, %_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTTjjEuEE17new_uninitializedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ %i.kf, %.loopexit.i.i.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i = phi ptr [ @111, %.loopexit.i.i ], [ %i.mz, %_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTTjjEuEE17new_uninitializedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ %i.mz, %.loopexit.i.i.i.i.i.i.i ]
  store ptr %.sroa.0.0.i.i.i.i.i, ptr %i.a, align 8, !noalias !151718
  store i64 %i.fg, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !151718
  store i64 %.sroa.6.0.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !151718
  store i64 %.sroa.7.0.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !151718
  store i64 %.val.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !151718
  %i.nx = invoke fastcc noundef zeroext i1 @_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapTjjEuE6insertCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(40) %i.a, i64 noundef %.val6.i.i, i64 noundef %.val7.i.i)
          to label %bb.az unwind label %bb.ay, !noalias !151718 ; 0 uses

bb.ay:                                            ; preds = %bb.az, %_RNvXNtCs3sCKvcUjPpt_9hashbrown3mapINtB2_7HashMapTjjEuENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.ny = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i = load ptr, ptr %i.a, align 8, !noalias !151718
  %.val3.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !151718, !noundef !58
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetTjjEEECskcxRuJ53GpR_9rustworkx(ptr %.val2.i.i.i.i, i64 %.val3.i.i.i.i) #63, !noalias !151718
  br label %.body42.i

bb.az:                                            ; preds = %_RNvXNtCs3sCKvcUjPpt_9hashbrown3mapINtB2_7HashMapTjjEuENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.nz = invoke fastcc noundef zeroext i1 @_RNvNtCskcxRuJ53GpR_9rustworkx8matching18__inner_is_matching(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a)
          to label %bb.ba unwind label %bb.ay, !noalias !151726

bb.ba:                                            ; preds = %bb.az
  %.val.i.i9.i.i = load ptr, ptr %i.a, align 8, !noalias !151718 ; 2 uses
  %.val1.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !151718, !noundef !58 ; 3 uses
  %i.oa = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.oa, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3all5checkRAjj2_NCNvNtCskcxRuJ53GpR_9rustworkx8matching19is_maximal_matchings0_0E0B1n_.exit.i.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ba
  %i.ob = shl i64 %.val1.i.i.i.i, 4               ; 2 uses
  %i.oc = add i64 %i.ob, 16                       ; 2 uses
  %i.od = add i64 %.val1.i.i.i.i, 17
  %i.oe = add i64 %i.od, %i.oc                    ; 4 uses
  %i.of = icmp uge i64 %i.oe, %i.oc
  %i.og = icmp ult i64 %i.oe, 9223372036854775793
  call void @llvm.assume(i1 %i.of)
  call void @llvm.assume(i1 %i.og)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i9.i.i) ]
  %i.oh = icmp eq i64 %i.oe, 0
  br i1 %i.oh, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3all5checkRAjj2_NCNvNtCskcxRuJ53GpR_9rustworkx8matching19is_maximal_matchings0_0E0B1n_.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i
  %i.oi = sub nuw nsw i64 -16, %i.ob
  %i.oj = getelementptr inbounds i8, ptr %.val.i.i9.i.i, i64 %i.oi
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.oj, i64 noundef %i.oe, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !151718
  br label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3all5checkRAjj2_NCNvNtCskcxRuJ53GpR_9rustworkx8matching19is_maximal_matchings0_0E0B1n_.exit.i.i

_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3all5checkRAjj2_NCNvNtCskcxRuJ53GpR_9rustworkx8matching19is_maximal_matchings0_0E0B1n_.exit.i.i: ; preds = %bb.bb, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !151718
  br i1 %i.nz, label %.loopexit.i, label %bb.ap

.loopexit.i:                                      ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3all5checkRAjj2_NCNvNtCskcxRuJ53GpR_9rustworkx8matching19is_maximal_matchings0_0E0B1n_.exit.i.i, %bb.ap, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapAjj2_uE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i
  %i.ok = phi i1 [ true, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapAjj2_uE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i ], [ %.not.i39.i, %bb.ap ], [ %.not.i39.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3all5checkRAjj2_NCNvNtCskcxRuJ53GpR_9rustworkx8matching19is_maximal_matchings0_0E0B1n_.exit.i.i ] ; 2 uses
  %i.ol = icmp eq i64 %.sroa.6.0.copyload122.i, 0
  br i1 %i.ol, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetAjj2_EECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i44.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i44.i: ; preds = %.loopexit.i
  %i.om = shl i64 %.sroa.6.0.copyload122.i, 4     ; 2 uses
  %i.on = add i64 %i.om, 16                       ; 2 uses
  %i.oo = add i64 %.sroa.6.0.copyload122.i, 17
  %i.op = add i64 %i.oo, %i.on                    ; 4 uses
  %i.oq = icmp uge i64 %i.op, %i.on
  %i.or = icmp ult i64 %i.op, 9223372036854775793
  call void @llvm.assume(i1 %i.oq)
  call void @llvm.assume(i1 %i.or)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload120.i) ]
  %i.os = icmp eq i64 %i.op, 0
  br i1 %i.os, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetAjj2_EECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.bc

bb.bc:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i44.i
  %i.ot = sub nuw nsw i64 -16, %i.om
  %i.ou = getelementptr inbounds i8, ptr %.sroa.0.0.copyload120.i, i64 %i.ot
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ou, i64 noundef %i.op, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !151671
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetAjj2_EECskcxRuJ53GpR_9rustworkx.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetAjj2_EECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.bc, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i44.i, %.loopexit.i
  %i.ov = icmp eq i64 %.sroa.6.0.copyload.i, 0
  br i1 %i.ov, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetAjj2_EECskcxRuJ53GpR_9rustworkx.exit46.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i45.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i45.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetAjj2_EECskcxRuJ53GpR_9rustworkx.exit.i
  %i.ow = shl i64 %.sroa.6.0.copyload.i, 4        ; 2 uses
  %i.ox = add i64 %i.ow, 16                       ; 2 uses
  %i.oy = add i64 %.sroa.6.0.copyload.i, 17
  %i.oz = add i64 %i.oy, %i.ox                    ; 4 uses
  %i.pa = icmp uge i64 %i.oz, %i.ox
  %i.pb = icmp ult i64 %i.oz, 9223372036854775793
  call void @llvm.assume(i1 %i.pa)
  call void @llvm.assume(i1 %i.pb)
  %i.pc = icmp eq i64 %i.oz, 0
  br i1 %i.pc, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetAjj2_EECskcxRuJ53GpR_9rustworkx.exit46.i, label %bb.bd

bb.bd:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i45.i
  %i.pd = sub nuw nsw i64 -16, %i.ow
  %i.pe = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 %i.pd
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pe, i64 noundef %i.oz, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !151671
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetAjj2_EECskcxRuJ53GpR_9rustworkx.exit46.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetAjj2_EECskcxRuJ53GpR_9rustworkx.exit46.i: ; preds = %bb.bd, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i45.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetAjj2_EECskcxRuJ53GpR_9rustworkx.exit.i
  br i1 %i.jv, label %_RNvNtCskcxRuJ53GpR_9rustworkx8matching19is_maximal_matching.exit, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i47.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i47.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetAjj2_EECskcxRuJ53GpR_9rustworkx.exit46.i
  %i.pf = shl i64 %i.fg, 4                        ; 2 uses
  %i.pg = add i64 %i.pf, 16                       ; 2 uses
  %i.ph = add i64 %i.pg, %i.jz                    ; 4 uses
  %i.pi = icmp uge i64 %i.ph, %i.pg
  %i.pj = icmp ult i64 %i.ph, 9223372036854775793
  call void @llvm.assume(i1 %i.pi)
  call void @llvm.assume(i1 %i.pj)
  %i.pk = icmp eq i64 %i.ph, 0
  br i1 %i.pk, label %_RNvNtCskcxRuJ53GpR_9rustworkx8matching19is_maximal_matching.exit, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetTjjEEECskcxRuJ53GpR_9rustworkx.exit.sink.split.i

_RNvNtCskcxRuJ53GpR_9rustworkx8matching19is_maximal_matching.exit: ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i47.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetAjj2_EECskcxRuJ53GpR_9rustworkx.exit46.i
  br i1 %i.ok, label %bb.be, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit29

bb.be:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetTjjEEECskcxRuJ53GpR_9rustworkx.exit.sink.split.i, %_RNvNtCskcxRuJ53GpR_9rustworkx8matching19is_maximal_matching.exit
end_hunk_2
