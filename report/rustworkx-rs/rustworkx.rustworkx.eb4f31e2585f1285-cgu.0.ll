Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 261
loop-unroll.NumUnrolled: 405
begin_hunk_0_@_RNvNtCskcxRuJ53GpR_9rustworkx9dominance20immediate_dominators:bb.a

.loopexit.i.i.i.i.i.i:                            ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTjjETNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBZ_EuNCINvNtNtB13_4algo10dominators11simple_fastRINtNtB11_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3e_5types3any5PyAnyEB39_EEs1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvXs1k_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5q_7HashMapBZ_BZ_EINtNtB4v_7collect12FromIteratorBY_E9from_iterINtB4_3MapINtNtB6_9enumerate9EnumerateINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterjEEB1R_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i:                   ; preds = %.invoke.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i: ; preds = %.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vk, i64 noundef %i.vj, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !150498
  %.val.i55.i = load ptr, ptr %i.e, align 8, !noalias !150492
  %i.ws = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val6.i.i = load i64, ptr %i.ws, align 8, !noalias !150492, !noundef !67
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1g_EECskcxRuJ53GpR_9rustworkx(ptr %.val.i55.i, i64 %.val6.i.i) #63, !noalias !150493
  br label %.lr.ph.i.i.i50.preheader.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i: ; preds = %bb.db, %bb.cz
  %.pn.ph.i.i = phi { ptr, i32 } [ %i.wb, %bb.cz ], [ %i.we, %bb.db ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vk, i64 noundef %i.vj, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !150499
  br label %.lr.ph.i.i.i50.preheader.i

.lr.ph.i.i.i60.i:                                 ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i65.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i61.i = phi i64 [ %i.wu, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i65.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.wt = getelementptr inbounds nuw [24 x i8], ptr %i.nb, i64 %.sroa.0.011.i.i.i61.i ; 2 uses
  %i.wu = add nuw nsw i64 %.sroa.0.011.i.i.i61.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !150500)
  %.val.i.i.i.i62.i = load i64, ptr %i.wt, align 8, !alias.scope !150501, !noalias !150502 ; 2 uses
  %i.wv = icmp eq i64 %.val.i.i.i.i62.i, 0
  br i1 %i.wv, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i65.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i63.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i63.i: ; preds = %.lr.ph.i.i.i60.i
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  %.val1.i.i.i.i64.i = load ptr, ptr %i.ww, align 8, !alias.scope !150501, !noalias !150502, !nonnull !67, !noundef !67
  %i.wx = shl nuw i64 %.val.i.i.i.i62.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i64.i, i64 noundef %i.wx, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !150503
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i65.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i65.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i63.i, %.lr.ph.i.i.i60.i
  %i.wy = icmp eq i64 %i.wu, %.sroa.5118.0.copyload.i
  br i1 %i.wy, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i68.i, label %.lr.ph.i.i.i60.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i68.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i65.i
  %i.wz = mul nuw nsw i64 %.sroa.47.0.i.i.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nb, i64 noundef %i.wz, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !150502
  %i.xa = icmp eq i64 %.sroa.6.0.copyload.i, 0
  br i1 %i.xa, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEECskcxRuJ53GpR_9rustworkx.exit71.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i70.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i70.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i68.i
  %i.xb = shl i64 %.sroa.6.0.copyload.i, 4        ; 2 uses
  %i.xc = add i64 %i.xb, 16                       ; 2 uses
  %i.xd = add i64 %.sroa.6.0.copyload.i, 17
  %i.xe = add i64 %i.xd, %i.xc                    ; 4 uses
  %i.xf = icmp uge i64 %i.xe, %i.xc
  %i.xg = icmp ult i64 %i.xe, 9223372036854775793
  call void @llvm.assume(i1 %i.xf)
  call void @llvm.assume(i1 %i.xg)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.xh = icmp eq i64 %i.xe, 0
  br i1 %i.xh, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEECskcxRuJ53GpR_9rustworkx.exit71.i, label %bb.de

bb.de:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i70.i
  %i.xi = sub nuw nsw i64 -16, %i.xb
  %i.xj = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 %i.xi
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xj, i64 noundef %i.xe, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !150416
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEECskcxRuJ53GpR_9rustworkx.exit71.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEECskcxRuJ53GpR_9rustworkx.exit71.i: ; preds = %bb.de, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i70.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i68.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !150418
  %i.xk = icmp eq i64 %.sroa.0117.0.copyload.i, 0
  br i1 %i.xk, label %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterTjjEKj1_EINtNtB6_10filter_map9FilterMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3i_5types3any5PyAnyEENCNvNtCskcxRuJ53GpR_9rustworkx9dominance20immediate_dominators0EENtNtNtB8_6traits8iterator8Iterator9size_hintB4l_.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEECskcxRuJ53GpR_9rustworkx.exit71.i
  %i.xl = shl nuw i64 %.sroa.0117.0.copyload.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.xl, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !150416
  br label %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterTjjEKj1_EINtNtB6_10filter_map9FilterMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3i_5types3any5PyAnyEENCNvNtCskcxRuJ53GpR_9rustworkx9dominance20immediate_dominators0EENtNtNtB8_6traits8iterator8Iterator9size_hintB4l_.exit.i

.preheader157.i:                                  ; preds = %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6filter11filter_foldRjjNCINvNtNtCs68Jln09rRqb_8petgraph4algo10dominators11simple_fastRINtNtNtB2u_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_EEs_0NCB2n_s0_0E0ECskcxRuJ53GpR_9rustworkx.exit.i, %.preheader157.preheader.i
  %.sroa.014.0260.i = phi i64 [ %.mux, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6filter11filter_foldRjjNCINvNtNtCs68Jln09rRqb_8petgraph4algo10dominators11simple_fastRINtNtNtB2u_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_EEs_0NCB2n_s0_0E0ECskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.vw, %.preheader157.preheader.i ]
  %.sroa.01.1259.i = phi i1 [ %spec.select.mux, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6filter11filter_foldRjjNCINvNtNtCs68Jln09rRqb_8petgraph4algo10dominators11simple_fastRINtNtNtB2u_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_EEs_0NCB2n_s0_0E0ECskcxRuJ53GpR_9rustworkx.exit.i ], [ false, %.preheader157.preheader.i ]
  %i.xm = add nsw i64 %.sroa.014.0260.i, -1       ; 4 uses
  %i.xn = getelementptr inbounds nuw [24 x i8], ptr %i.nb, i64 %i.xm ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 8
  %i.xp = load ptr, ptr %i.xo, align 8, !noalias !150416, !nonnull !67, !noundef !67 ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xn, i64 16
  %i.xr = load i64, ptr %i.xq, align 8, !noalias !150416, !noundef !67 ; 2 uses
  %.idx513 = shl nuw nsw i64 %i.xr, 3
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xp, i64 %.idx513 ; 2 uses
  %i.xt = icmp eq i64 %i.xr, 0
  br i1 %i.xt, label %._crit_edge, label %.lr.ph511

bb.df:                                            ; preds = %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core3ops8function5implsQNCINvNtNtCs68Jln09rRqb_8petgraph4algo10dominators11simple_fastRINtNtNtBX_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2H_5types3any5PyAnyEB2C_EEs_0INtB7_5FnMutTRRjEE8call_mutCskcxRuJ53GpR_9rustworkx.exit.i.i
  br i1 %i.yc, label %._crit_edge, label %.lr.ph511

.lr.ph511:                                        ; preds = %.preheader157.i, %bb.df
  %i.xu = phi ptr [ %i.xz, %bb.df ], [ %i.xp, %.preheader157.i ] ; 2 uses
  %i.xv = load i64, ptr %i.xu, align 8, !noalias !150504, !noundef !67 ; 5 uses
  %i.xw = icmp ult i64 %i.xv, %.sroa.5118.0.copyload.i
  br i1 %i.xw, label %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core3ops8function5implsQNCINvNtNtCs68Jln09rRqb_8petgraph4algo10dominators11simple_fastRINtNtNtBX_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2H_5types3any5PyAnyEB2C_EEs_0INtB7_5FnMutTRRjEE8call_mutCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.invoke.i

.invoke.i:                                        ; preds = %.lr.ph511, %bb.dh, %bb.dj, %bb.dk
  %i.xx = phi i64 [ %i.yi, %bb.dh ], [ %.sroa.05.0.i.i.i.i.i.ph, %bb.dk ], [ %.sroa.0.0.i.i.i.i75.i, %bb.dj ], [ %i.xv, %.lr.ph511 ]
  %i.xy = phi ptr [ @1232, %bb.dh ], [ @3210, %bb.dk ], [ @3209, %bb.dj ], [ @1232, %.lr.ph511 ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.xx, i64 noundef %.sroa.5118.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.xy) #60
          to label %.cont.i unwind label %bb.dn, !noalias !150416

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvXs1_NtNtNtCslwFuT2d6ECx_4core3ops8function5implsQNCINvNtNtCs68Jln09rRqb_8petgraph4algo10dominators11simple_fastRINtNtNtBX_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2H_5types3any5PyAnyEB2C_EEs_0INtB7_5FnMutTRRjEE8call_mutCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.lr.ph511
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xu, i64 8 ; 4 uses
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %i.vk, i64 %i.xv
  %i.yb = load i64, ptr %i.ya, align 8, !noalias !150504, !noundef !67
  %.not.i.i = icmp eq i64 %i.yb, -1
  %i.yc = icmp eq ptr %i.xz, %i.xs                ; 2 uses
  br i1 %.not.i.i, label %bb.df, label %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCINvNtNtCs68Jln09rRqb_8petgraph4algo10dominators11simple_fastRINtNtNtB1M_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3x_5types3any5PyAnyEB3s_EEs_0ECskcxRuJ53GpR_9rustworkx.exit.i

_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCINvNtNtCs68Jln09rRqb_8petgraph4algo10dominators11simple_fastRINtNtNtB1M_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3x_5types3any5PyAnyEB3s_EEs_0ECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core3ops8function5implsQNCINvNtNtCs68Jln09rRqb_8petgraph4algo10dominators11simple_fastRINtNtNtBX_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2H_5types3any5PyAnyEB2C_EEs_0INtB7_5FnMutTRRjEE8call_mutCskcxRuJ53GpR_9rustworkx.exit.i.i
  br i1 %i.yc, label %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6filter11filter_foldRjjNCINvNtNtCs68Jln09rRqb_8petgraph4algo10dominators11simple_fastRINtNtNtB2u_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_EEs_0NCB2n_s0_0E0ECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.dg

bb.dg:                                            ; preds = %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCINvNtNtCs68Jln09rRqb_8petgraph4algo10dominators11simple_fastRINtNtNtB1M_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3x_5types3any5PyAnyEB3s_EEs_0ECskcxRuJ53GpR_9rustworkx.exit.i
  %i.yd = ptrtoint ptr %i.xs to i64
  %i.ye = ptrtoint ptr %i.xz to i64
  %i.yf = sub nuw i64 %i.yd, %i.ye
  %i.yg = lshr exact i64 %i.yf, 3
  br label %bb.dh

bb.dh:                                            ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter11filter_foldRjjNCINvNtNtCs68Jln09rRqb_8petgraph4algo10dominators11simple_fastRINtNtNtB1d_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Y_5types3any5PyAnyEB2T_EEs_0NCB16_s0_0E0CskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.dg
  %.sroa.04.0.i.i = phi i64 [ 0, %bb.dg ], [ %i.yt, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter11filter_foldRjjNCINvNtNtCs68Jln09rRqb_8petgraph4algo10dominators11simple_fastRINtNtNtB1d_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Y_5types3any5PyAnyEB2T_EEs_0NCB16_s0_0E0CskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 2 uses
  %.sroa.02.0.i.i = phi i64 [ %i.xv, %bb.dg ], [ %.sroa.0.0.i.i.i, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter11filter_foldRjjNCINvNtNtCs68Jln09rRqb_8petgraph4algo10dominators11simple_fastRINtNtNtB1d_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Y_5types3any5PyAnyEB2T_EEs_0NCB16_s0_0E0CskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 2 uses
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr %i.xz, i64 %.sroa.04.0.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !150505)
  %i.yi = load i64, ptr %i.yh, align 8, !alias.scope !150505, !noalias !150416, !noundef !67 ; 4 uses
  %i.yj = icmp ult i64 %i.yi, %.sroa.5118.0.copyload.i
  br i1 %i.yj, label %_RNCINvNtNtCs68Jln09rRqb_8petgraph4algo10dominators11simple_fastRINtNtNtB8_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1S_5types3any5PyAnyEB1N_EEs_0CskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.invoke.i

_RNCINvNtNtCs68Jln09rRqb_8petgraph4algo10dominators11simple_fastRINtNtNtB8_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1S_5types3any5PyAnyEB1N_EEs_0CskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.dh
  %i.yk = getelementptr inbounds nuw [8 x i8], ptr %i.vk, i64 %i.yi
  %i.yl = load i64, ptr %i.yk, align 8, !noalias !150506, !noundef !67
  %.not.i.i74.i = icmp eq i64 %i.yl, -1
  br i1 %.not.i.i74.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter11filter_foldRjjNCINvNtNtCs68Jln09rRqb_8petgraph4algo10dominators11simple_fastRINtNtNtB1d_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Y_5types3any5PyAnyEB2T_EEs_0NCB16_s0_0E0CskcxRuJ53GpR_9rustworkx.exit.i.i, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_RNCINvNtNtCs68Jln09rRqb_8petgraph4algo10dominators11simple_fastRINtNtNtB8_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1S_5types3any5PyAnyEB1N_EEs_0CskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.dm
  %.sroa.05.0.i.i.i.i.i.ph = phi i64 [ %i.ys, %bb.dm ], [ %i.yi, %_RNCINvNtNtCs68Jln09rRqb_8petgraph4algo10dominators11simple_fastRINtNtNtB8_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1S_5types3any5PyAnyEB1N_EEs_0CskcxRuJ53GpR_9rustworkx.exit.i.i.i ] ; 4 uses
  %.sroa.0.0.i.i.i.i75.i.ph = phi i64 [ %.sroa.0.0.i.i.i.i75.i, %bb.dm ], [ %.sroa.02.0.i.i, %_RNCINvNtNtCs68Jln09rRqb_8petgraph4algo10dominators11simple_fastRINtNtNtB8_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1S_5types3any5PyAnyEB1N_EEs_0CskcxRuJ53GpR_9rustworkx.exit.i.i.i ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.dl
  %.sroa.0.0.i.i.i.i75.i = phi i64 [ %i.yq, %bb.dl ], [ %.sroa.0.0.i.i.i.i75.i.ph, %.preheader.i.outer ] ; 6 uses
  %i.ym = call i8 @llvm.ucmp.i8.i64(i64 %.sroa.0.0.i.i.i.i75.i, i64 %.sroa.05.0.i.i.i.i.i.ph)
  switch i8 %i.ym, label %bb.di [
    i8 -1, label %bb.dj
    i8 0, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter11filter_foldRjjNCINvNtNtCs68Jln09rRqb_8petgraph4algo10dominators11simple_fastRINtNtNtB1d_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Y_5types3any5PyAnyEB2T_EEs_0NCB16_s0_0E0CskcxRuJ53GpR_9rustworkx.exit.i.i
    i8 1, label %bb.dk
  ]

bb.di:                                            ; preds = %.preheader.i
  unreachable

bb.dj:                                            ; preds = %.preheader.i
  %i.yn = icmp ult i64 %.sroa.0.0.i.i.i.i75.i, %.sroa.5118.0.copyload.i
  br i1 %i.yn, label %bb.dl, label %.invoke.i

bb.dk:                                            ; preds = %.preheader.i
  %i.yo = icmp ult i64 %.sroa.05.0.i.i.i.i.i.ph, %.sroa.5118.0.copyload.i
  br i1 %i.yo, label %bb.dm, label %.invoke.i

bb.dl:                                            ; preds = %bb.dj
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr %i.vk, i64 %.sroa.0.0.i.i.i.i75.i
  %i.yq = load i64, ptr %i.yp, align 8, !alias.scope !150507, !noalias !150506, !noundef !67
  br label %.preheader.i

bb.dm:                                            ; preds = %bb.dk
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %i.vk, i64 %.sroa.05.0.i.i.i.i.i.ph
  %i.ys = load i64, ptr %i.yr, align 8, !alias.scope !150507, !noalias !150506, !noundef !67
  br label %.preheader.i.outer

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter11filter_foldRjjNCINvNtNtCs68Jln09rRqb_8petgraph4algo10dominators11simple_fastRINtNtNtB1d_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Y_5types3any5PyAnyEB2T_EEs_0NCB16_s0_0E0CskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.preheader.i, %_RNCINvNtNtCs68Jln09rRqb_8petgraph4algo10dominators11simple_fastRINtNtNtB8_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1S_5types3any5PyAnyEB1N_EEs_0CskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.02.0.i.i, %_RNCINvNtNtCs68Jln09rRqb_8petgraph4algo10dominators11simple_fastRINtNtNtB8_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1S_5types3any5PyAnyEB1N_EEs_0CskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %.sroa.0.0.i.i.i.i75.i, %.preheader.i ] ; 2 uses
  %i.yt = add nuw i64 %.sroa.04.0.i.i, 1          ; 2 uses
  %i.yu = icmp eq i64 %i.yt, %i.yg
  br i1 %i.yu, label %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6filter11filter_foldRjjNCINvNtNtCs68Jln09rRqb_8petgraph4algo10dominators11simple_fastRINtNtNtB2u_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_EEs_0NCB2n_s0_0E0ECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.dh

._crit_edge:                                      ; preds = %.preheader157.i, %bb.df
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @600, i64 noundef 158, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @601) #61
          to label %bb.cy unwind label %.thread424.i, !noalias !150416

.thread424.i:                                     ; preds = %._crit_edge
  %i.yv = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i82.i

_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6filter11filter_foldRjjNCINvNtNtCs68Jln09rRqb_8petgraph4algo10dominators11simple_fastRINtNtNtB2u_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_EEs_0NCB2n_s0_0E0ECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter11filter_foldRjjNCINvNtNtCs68Jln09rRqb_8petgraph4algo10dominators11simple_fastRINtNtNtB1d_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Y_5types3any5PyAnyEB2T_EEs_0NCB16_s0_0E0CskcxRuJ53GpR_9rustworkx.exit.i.i, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCINvNtNtCs68Jln09rRqb_8petgraph4algo10dominators11simple_fastRINtNtNtB1M_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3x_5types3any5PyAnyEB3s_EEs_0ECskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.0.0.i77.i = phi i64 [ %i.xv, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCINvNtNtCs68Jln09rRqb_8petgraph4algo10dominators11simple_fastRINtNtNtB1M_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3x_5types3any5PyAnyEB3s_EEs_0ECskcxRuJ53GpR_9rustworkx.exit.i ], [ %.sroa.0.0.i.i.i, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter11filter_foldRjjNCINvNtNtCs68Jln09rRqb_8petgraph4algo10dominators11simple_fastRINtNtNtB1d_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Y_5types3any5PyAnyEB2T_EEs_0NCB16_s0_0E0CskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 2 uses
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %i.vk, i64 %i.xm ; 2 uses
  %i.yx = load i64, ptr %i.yw, align 8, !noalias !150416, !noundef !67
  %.not28.i = icmp ne i64 %.sroa.0.0.i77.i, %i.yx
  store i64 %.sroa.0.0.i77.i, ptr %i.yw, align 8, !noalias !150416
  %spec.select = select i1 %.not28.i, i1 true, i1 %.sroa.01.1259.i ; 2 uses
  %.not.i84 = icmp ne i64 %i.xm, 0                ; 3 uses
  %brmerge = select i1 %.not.i84, i1 true, i1 %spec.select
  %.mux = select i1 %.not.i84, i64 %i.xm, i64 %i.vw
  %spec.select.mux = select i1 %.not.i84, i1 %spec.select, i1 false
  br i1 %brmerge, label %.preheader157.i, label %.split262.us.i

bb.dn:                                            ; preds = %.invoke.i
  %i.yy = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i82.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i82.i: ; preds = %bb.dn, %.thread424.i
  %i.yz = phi { ptr, i32 } [ %i.yv, %.thread424.i ], [ %i.yy, %bb.dn ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vk, i64 noundef %i.vj, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !150508
  call void @llvm.experimental.noalias.scope.decl(metadata !150509)
  br label %.lr.ph.i.i.i50.preheader.i

bb.do:                                            ; preds = %.thread.i, %bb.ct, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %.body44.i
  %.pn.pn.pn134.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.thread.i ], [ %.pn.pn.i, %bb.ct ], [ %.pn.pn.i, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ], [ %.pn.pn.i, %.body44.i ] ; 2 uses
  %i.za = icmp eq i64 %.sroa.0117.0.copyload.i, 0
  br i1 %i.za, label %common.resume, label %common.resume.sink.split.i

.thread.i:                                        ; preds = %bb.bh, %bb.bg
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.mv, %bb.bh ], [ %i.mt, %bb.bg ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtBG_3set7HashSetB1g_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(40) %i.s) #63, !noalias !150416
  br label %bb.do

bb.dp:                                            ; preds = %.noexc5.i, %bb.dq, %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterTjjEKj1_EINtNtB6_10filter_map9FilterMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3i_5types3any5PyAnyEENCNvNtCskcxRuJ53GpR_9rustworkx9dominance20immediate_dominators0EENtNtNtB8_6traits8iterator8Iterator9size_hintB4l_.exit.i
  %i.zb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ds, %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %bb.ec, %bb.dp
  %eh.lpad-body = phi { ptr, i32 } [ %i.zb, %bb.dp ], [ %lpad.phi.i, %bb.ec ], [ %i.zh, %bb.ds ], [ %i.zh, %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph4algo10dominators10DominatorsNtNtBI_10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx(ptr %.sroa.0.0.copyload, i64 %.sroa.6.0.copyload) #63
  br label %common.resume

_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterTjjEKj1_EINtNtB6_10filter_map9FilterMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3i_5types3any5PyAnyEENCNvNtCskcxRuJ53GpR_9rustworkx9dominance20immediate_dominators0EENtNtNtB8_6traits8iterator8Iterator9size_hintB4l_.exit.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEECskcxRuJ53GpR_9rustworkx.exit71.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !150510
  %i.zc = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc unwind label %bb.dp

.noexc:                                           ; preds = %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterTjjEKj1_EINtNtB6_10filter_map9FilterMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3i_5types3any5PyAnyEENCNvNtCskcxRuJ53GpR_9rustworkx9dominance20immediate_dominators0EENtNtNtB8_6traits8iterator8Iterator9size_hintB4l_.exit.i
  %i.zd = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !150510
  %i.ze = icmp eq i8 %i.zd, 2
  br i1 %i.ze, label %.noexc5.i, label %bb.dq, !prof !77

bb.dq:                                            ; preds = %.noexc
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %.noexc5.i unwind label %bb.dp

.noexc5.i:                                        ; preds = %.noexc, %bb.dq
  call void @llvm.experimental.noalias.scope.decl(metadata !150511)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !150512
  invoke fastcc void @_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.c, i64 noundef range(i64 1, 0) 1)
          to label %bb.dr unwind label %bb.dp

bb.dr:                                            ; preds = %.noexc5.i
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.c, align 8, !noalias !150513 ; 3 uses
  %.sroa.5.0..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx6.i.i.i, align 8, !noalias !150513 ; 5 uses
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !150514
  %i.zf = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !150514 ; 2 uses
  %i.zg = icmp eq ptr %i.zf, null
  br i1 %i.zg, label %bb.dt, label %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterTjjEKj1_EINtNtB6_10filter_map9FilterMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3i_5types3any5PyAnyEENCNvNtCskcxRuJ53GpR_9rustworkx9dominance20immediate_dominators0EENtNtNtB8_6traits8iterator8Iterator9size_hintB4l_.exit.i.i

bb.ds:                                            ; preds = %bb.dt
  %i.zh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zi = icmp eq i64 %.sroa.5.0.copyload.i.i.i, 0
  br i1 %i.zi, label %.body, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %bb.ds
  %i.zj = shl i64 %.sroa.5.0.copyload.i.i.i, 3
  %i.zk = icmp slt i64 %.sroa.5.0.copyload.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.zk), !noalias !150515
  %i.zl = and i64 %i.zj, -16                      ; 2 uses
  %i.zm = add i64 %i.zl, 16                       ; 2 uses
  %i.zn = add nsw i64 %.sroa.5.0.copyload.i.i.i, 17
  %i.zo = add i64 %i.zn, %i.zm                    ; 3 uses
  %i.zp = icmp uge i64 %i.zo, %i.zm
  call void @llvm.assume(i1 %i.zp), !noalias !150515
  %i.zq = icmp ult i64 %i.zo, 9223372036854775793
  call void @llvm.assume(i1 %i.zq), !noalias !150515
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i) ], !noalias !150515
  %i.zr = sub nuw nsw i64 -16, %i.zl
  %i.zs = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.zr
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.zs, i64 noundef %i.zo, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !150513
  br label %.body

bb.dt:                                            ; preds = %bb.dr
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 24) #61
          to label %bb.du unwind label %bb.ds, !noalias !150513

bb.du:                                            ; preds = %bb.dt
  unreachable

_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterTjjEKj1_EINtNtB6_10filter_map9FilterMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3i_5types3any5PyAnyEENCNvNtCskcxRuJ53GpR_9rustworkx9dominance20immediate_dominators0EENtNtNtB8_6traits8iterator8Iterator9size_hintB4l_.exit.i.i: ; preds = %bb.dr
  %i.zt = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.zt, i64 16, i1 false), !noalias !150510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !150512
  store i64 1, ptr %i.d, align 8, !alias.scope !150511, !noalias !150510
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.zf, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !150511, !noalias !150510
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !150511, !noalias !150510
  %.sroa.6.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %.sroa.6.0..sroa_idx4.i.i, align 8, !alias.scope !150511, !noalias !150510
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %.sroa.5.0.copyload.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !150511, !noalias !150510
  %i.zu = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %i.zc, ptr %i.zu, align 8, !alias.scope !150511, !noalias !150510
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejjE7reserveCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d, i64 noundef 1)
          to label %.lr.ph.i.preheader.i.i.i.i.i unwind label %.loopexit.split-lp.i, !noalias !150510

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterTjjEKj1_EINtNtB6_10filter_map9FilterMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3i_5types3any5PyAnyEENCNvNtCskcxRuJ53GpR_9rustworkx9dominance20immediate_dominators0EENtNtNtB8_6traits8iterator8Iterator9size_hintB4l_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !150516
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d, i64 noundef %2, i64 noundef %2)
          to label %bb.dv unwind label %.loopexit.split-lp.i, !noalias !150510

bb.dv:                                            ; preds = %.lr.ph.i.preheader.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !150516
  %i.zv = icmp eq i64 %.sroa.9100.0.copyload, 0
  br label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map15filter_map_foldNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTjjEuNCNvNtCskcxRuJ53GpR_9rustworkx9dominance20immediate_dominators0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1X_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB49_8IndexMapjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB3e_7collect6ExtendB1X_E6extendINtNtB6_5chain5ChainINtNtNtBa_5array4iter8IntoIterB1X_Kj1_EINtB4_9FilterMapINtNtB1c_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB86_5types3any5PyAnyEEB22_EEE0E0E0B28_.exit.i.i.i.i.i.i

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map15filter_map_foldNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTjjEuNCNvNtCskcxRuJ53GpR_9rustworkx9dominance20immediate_dominators0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1X_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB49_8IndexMapjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB3e_7collect6ExtendB1X_E6extendINtNtB6_5chain5ChainINtNtNtBa_5array4iter8IntoIterB1X_Kj1_EINtB4_9FilterMapINtNtB1c_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB86_5types3any5PyAnyEEB22_EEE0E0E0B28_.exit.i.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map15filter_map_foldNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTjjEuNCNvNtCskcxRuJ53GpR_9rustworkx9dominance20immediate_dominators0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1X_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB49_8IndexMapjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB3e_7collect6ExtendB1X_E6extendINtNtB6_5chain5ChainINtNtNtBa_5array4iter8IntoIterB1X_Kj1_EINtB4_9FilterMapINtNtB1c_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB86_5types3any5PyAnyEEB22_EEE0E0E0B28_.exit.i.i.i.i.i.i.backedge, %bb.dv
  %i.zw = phi i64 [ 0, %bb.dv ], [ %i.aaa, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map15filter_map_foldNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTjjEuNCNvNtCskcxRuJ53GpR_9rustworkx9dominance20immediate_dominators0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1X_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB49_8IndexMapjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB3e_7collect6ExtendB1X_E6extendINtNtB6_5chain5ChainINtNtNtBa_5array4iter8IntoIterB1X_Kj1_EINtB4_9FilterMapINtNtB1c_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB86_5types3any5PyAnyEEB22_EEE0E0E0B28_.exit.i.i.i.i.i.i.backedge ] ; 3 uses
  %i.zx = phi ptr [ %.val, %bb.dv ], [ %i.zz, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map15filter_map_foldNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTjjEuNCNvNtCskcxRuJ53GpR_9rustworkx9dominance20immediate_dominators0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1X_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB49_8IndexMapjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB3e_7collect6ExtendB1X_E6extendINtNtB6_5chain5ChainINtNtNtBa_5array4iter8IntoIterB1X_Kj1_EINtB4_9FilterMapINtNtB1c_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB86_5types3any5PyAnyEEB22_EEE0E0E0B28_.exit.i.i.i.i.i.i.backedge ] ; 3 uses
  %i.zy = icmp eq ptr %i.zx, %i.at
  br i1 %i.zy, label %bb.ed, label %bb.dw

bb.dw:                                            ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map15filter_map_foldNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTjjEuNCNvNtCskcxRuJ53GpR_9rustworkx9dominance20immediate_dominators0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1X_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB49_8IndexMapjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB3e_7collect6ExtendB1X_E6extendINtNtB6_5chain5ChainINtNtNtBa_5array4iter8IntoIterB1X_Kj1_EINtB4_9FilterMapINtNtB1c_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB86_5types3any5PyAnyEEB22_EEE0E0E0B28_.exit.i.i.i.i.i.i
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zx, i64 16
  %i.aaa = add i64 %i.zw, 1
  %.val.i.i.i.i.i.i.i.i87 = load ptr, ptr %i.zx, align 8, !noalias !150517, !noundef !67
  %.not.i.not.i.i.i.i.i.i.i.i88 = icmp eq ptr %.val.i.i.i.i.i.i.i.i87, null
  br i1 %.not.i.not.i.i.i.i.i.i.i.i88, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map15filter_map_foldNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTjjEuNCNvNtCskcxRuJ53GpR_9rustworkx9dominance20immediate_dominators0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1X_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB49_8IndexMapjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB3e_7collect6ExtendB1X_E6extendINtNtB6_5chain5ChainINtNtNtBa_5array4iter8IntoIterB1X_Kj1_EINtB4_9FilterMapINtNtB1c_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB86_5types3any5PyAnyEEB22_EEE0E0E0B28_.exit.i.i.i.i.i.i.backedge, label %bb.dx

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map15filter_map_foldNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTjjEuNCNvNtCskcxRuJ53GpR_9rustworkx9dominance20immediate_dominators0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1X_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB49_8IndexMapjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB3e_7collect6ExtendB1X_E6extendINtNtB6_5chain5ChainINtNtNtBa_5array4iter8IntoIterB1X_Kj1_EINtB4_9FilterMapINtNtB1c_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB86_5types3any5PyAnyEEB22_EEE0E0E0B28_.exit.i.i.i.i.i.i.backedge: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.dw, %.noexc8.i, %bb.dx
  br label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map15filter_map_foldNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTjjEuNCNvNtCskcxRuJ53GpR_9rustworkx9dominance20immediate_dominators0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1X_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB49_8IndexMapjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB3e_7collect6ExtendB1X_E6extendINtNtB6_5chain5ChainINtNtNtBa_5array4iter8IntoIterB1X_Kj1_EINtB4_9FilterMapINtNtB1c_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB86_5types3any5PyAnyEEB22_EEE0E0E0B28_.exit.i.i.i.i.i.i

bb.dx:                                            ; preds = %bb.dw
  %i.aab = trunc i64 %i.zw to i32                 ; 2 uses
  %i.aac = icmp eq i32 %i.aa, %i.aab
  %or.cond = select i1 %i.aac, i1 true, i1 %i.zv
  br i1 %or.cond, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map15filter_map_foldNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTjjEuNCNvNtCskcxRuJ53GpR_9rustworkx9dominance20immediate_dominators0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1X_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB49_8IndexMapjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB3e_7collect6ExtendB1X_E6extendINtNtB6_5chain5ChainINtNtNtBa_5array4iter8IntoIterB1X_Kj1_EINtB4_9FilterMapINtNtB1c_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB86_5types3any5PyAnyEEB22_EEE0E0E0B28_.exit.i.i.i.i.i.i.backedge, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.aad = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !150518, !noundef !67
  %i.aae = and i64 %i.zw, 4294967295              ; 2 uses
  %i.aaf = xor i64 %i.aae, %.sroa.10.0.copyload
  %i.aag = zext i64 %i.aaf to i128
  %i.aah = zext i64 %i.aad to i128
  %i.aai = mul nuw i128 %i.aah, %i.aag            ; 2 uses
  %i.aaj = lshr i128 %i.aai, 64
  %i.aak = xor i128 %i.aaj, %i.aai
  %i.aal = trunc i128 %i.aak to i64               ; 2 uses
  %i.aam = lshr i64 %i.aal, 57
  %i.aan = trunc nuw nsw i64 %i.aam to i8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.aao = insertelement <16 x i8> poison, i8 %i.aan, i64 0
  %i.aap = shufflevector <16 x i8> %i.aao, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.dz

bb.dz:                                            ; preds = %bb.eb, %bb.dy
  %.sroa.011.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.dy ], [ %i.abg, %bb.eb ]
  %.pn.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aal, %bb.dy ], [ %i.abh, %bb.eb ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i.i, %.sroa.6.0.copyload ; 3 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.aaq, align 1, !noalias !150519 ; 2 uses
  %i.aar = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i, %i.aap
  %i.aas = bitcast <16 x i1> %i.aar to i16        ; 2 uses
  %.not.i.not30.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.aas, 0
  br i1 %.not.i.not30.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.dz, %bb.ea
  %.sroa.05.0.i31.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.abf, %bb.ea ], [ %i.aas, %bb.dz ] ; 3 uses
  %i.aat = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.aau = zext nneg i16 %i.aat to i64
  %i.aav = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i, %i.aau
  %i.aaw = and i64 %i.aav, %.sroa.6.0.copyload
  %i.aax = sub nsw i64 0, %i.aaw
  %i.aay = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.aax ; 2 uses
  %i.aaz = getelementptr inbounds i8, ptr %i.aay, i64 -8
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.aaz, align 4, !noalias !150520, !noundef !67
  %i.aba = icmp eq i32 %.val2.i.i.i.i.i.i.i.i.i.i.i.i, %i.aab
  br i1 %i.aba, label %.noexc5.i.i, label %bb.ea, !prof !77

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.ea, %bb.dz
  %i.abb = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.abc = bitcast <16 x i1> %i.abb to i16
  %i.abd = icmp eq i16 %i.abc, 0
  br i1 %i.abd, label %bb.eb, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map15filter_map_foldNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTjjEuNCNvNtCskcxRuJ53GpR_9rustworkx9dominance20immediate_dominators0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1X_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB49_8IndexMapjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB3e_7collect6ExtendB1X_E6extendINtNtB6_5chain5ChainINtNtNtBa_5array4iter8IntoIterB1X_Kj1_EINtB4_9FilterMapINtNtB1c_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB86_5types3any5PyAnyEEB22_EEE0E0E0B28_.exit.i.i.i.i.i.i.backedge, !prof !71

bb.ea:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.abe = add i16 %.sroa.05.0.i31.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.abf = and i16 %i.abe, %.sroa.05.0.i31.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.abf, 0
end_hunk_0
