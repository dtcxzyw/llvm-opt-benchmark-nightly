Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 258
loop-unroll.NumUnrolled: 402
begin_hunk_0_@_RNvNtCskcxRuJ53GpR_9rustworkx10centrality21graph_katz_centrality:bb.a
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.nx = load i32, ptr %i.nw, align 8, !noalias !94165, !noundef !67
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  %.sroa.023.0.copyload.i.us.i = load i64, ptr %i.ny, align 8, !noalias !94165
  br label %bb.cl

._crit_edge.i.us.i:                               ; preds = %._crit_edge.i.us.i.preheader, %bb.ci
  %i.nz = phi i32 [ %i.oe, %bb.ci ], [ %.sroa.12.0.us.i, %._crit_edge.i.us.i.preheader ]
  %i.oa = zext i32 %i.nz to i64                   ; 3 uses
  %i.ob = icmp ugt i64 %.val164, %i.oa
  br i1 %i.ob, label %bb.ci, label %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.backedge

bb.ci:                                            ; preds = %._crit_edge.i.us.i
  %i.oc = getelementptr inbounds nuw [24 x i8], ptr %.val163, i64 %i.oa ; 4 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 12
  %i.oe = load i32, ptr %i.od, align 4, !noalias !94165, !noundef !67 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %.val.i208.us.i = load i32, ptr %i.of, align 4, !noalias !94165, !noundef !67
  %i.og = icmp eq i32 %.val.i208.us.i, %i.nk
  br i1 %i.og, label %._crit_edge.i.us.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.oh = load ptr, ptr %i.oc, align 8, !noalias !94165, !noundef !67
  %.not42.i.us.i = icmp eq ptr %i.oh, null
  br i1 %.not42.i.us.i, label %.split.us.i, label %bb.ck, !prof !71

bb.ck:                                            ; preds = %bb.cj
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %.sroa.032.0.copyload.i.us.i = load i64, ptr %i.oi, align 8, !noalias !94165
  %.sroa.0.0.insert.insert.i44.i.us.i = shl i64 %.sroa.032.0.copyload.i.us.i, 32
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.ch
  %.pre-phi.i = phi i64 [ %i.oa, %bb.ck ], [ %i.ns, %bb.ch ] ; 3 uses
  %.sroa.9292.0.ph.us.i = phi i64 [ %.sroa.0.0.insert.insert.i44.i.us.i, %bb.ck ], [ %.sroa.023.0.copyload.i.us.i, %bb.ch ]
  %.sroa.12.2.ph.us.i = phi i32 [ %i.oe, %bb.ck ], [ %.sroa.12.0.us.i, %bb.ch ]
  %.sroa.9289.1.ph.us.i = phi i32 [ %.sroa.9289.0.us.i, %bb.ck ], [ %i.nx, %bb.ch ]
  %.sroa.5296.sroa.5.0.extract.shift.us.i = lshr i64 %.sroa.9292.0.ph.us.i, 32 ; 3 uses
  %i.oj = icmp ugt i64 %.sroa.0.0.i.i990, %.pre-phi.i
  br i1 %i.oj, label %bb.cm, label %.split528.us.i

bb.cm:                                            ; preds = %bb.cl
  %i.ok = icmp ult i64 %.sroa.5296.sroa.5.0.extract.shift.us.i, %.sroa.02.0.i.i.i161850.i
  br i1 %i.ok, label %bb.cn, label %.split536.us.i.invoke

bb.cn:                                            ; preds = %bb.cm
  %i.ol = load double, ptr %i.nr, align 8, !noalias !94147, !noundef !67
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink.i) ]
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %.sink.i, i64 %.pre-phi.i
  %i.on = load double, ptr %i.om, align 8, !noalias !94166, !noundef !67
  %i.oo = fmul double %i.ol, %i.on
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %.sroa.5296.sroa.5.0.extract.shift.us.i ; 2 uses
  %i.oq = load double, ptr %i.op, align 8, !noalias !94147, !noundef !67
  %i.or = fadd double %i.oq, %i.oo
  store double %i.or, ptr %i.op, align 8, !noalias !94147
  br label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.split.us.i

_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.split.i: ; preds = %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i
  %i.os = zext i32 %.sroa.0.0.i.i206.i to i64     ; 3 uses
  %i.ot = icmp ugt i64 %.val164, %i.os
  br i1 %i.ot, label %bb.co, label %._crit_edge.i.i232.preheader

bb.co:                                            ; preds = %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.split.i
  %i.ou = getelementptr inbounds nuw [24 x i8], ptr %.val163, i64 %i.os
  %i.ov = load ptr, ptr %i.ou, align 8, !noalias !94165, !noundef !67
  %.not.i209.i = icmp eq ptr %i.ov, null
  br i1 %.not.i209.i, label %._crit_edge.i.i232.preheader, label %.loopexit859.i

._crit_edge.i.i232.preheader:                     ; preds = %bb.co, %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.split.i
  br label %._crit_edge.i.i232

._crit_edge.i.i232:                               ; preds = %._crit_edge.i.i232.preheader, %bb.cp
  %i.ow = phi i32 [ %i.pb, %bb.cp ], [ %.sroa.5.0.i.i.i, %._crit_edge.i.i232.preheader ]
  %i.ox = zext i32 %i.ow to i64                   ; 3 uses
  %i.oy = icmp ugt i64 %.val164, %i.ox
  br i1 %i.oy, label %bb.cp, label %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.backedge

bb.cp:                                            ; preds = %._crit_edge.i.i232
  %i.oz = getelementptr inbounds nuw [24 x i8], ptr %.val163, i64 %i.ox ; 3 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 12
  %i.pb = load i32, ptr %i.pa, align 4, !noalias !94165, !noundef !67
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  %.val.i208.i = load i32, ptr %i.pc, align 4, !noalias !94165, !noundef !67
  %i.pd = icmp eq i32 %.val.i208.i, %i.nk
  br i1 %i.pd, label %._crit_edge.i.i232, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.pe = load ptr, ptr %i.oz, align 8, !noalias !94165, !noundef !67
  %.not42.i.i = icmp eq ptr %i.pe, null
  br i1 %.not42.i.i, label %.split.us.i, label %.loopexit859.i, !prof !71

.split.us.i:                                      ; preds = %bb.cj, %bb.cq
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4319) #60
          to label %.noexc212.i unwind label %bb.cr, !noalias !94147

.noexc212.i:                                      ; preds = %.split.us.i
  unreachable

bb.cr:                                            ; preds = %.split536.us.i.invoke, %.split528.us.i, %.split.us.i
  %i.pf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.loopexit859.i:                                   ; preds = %bb.co, %bb.cq
  %.pre-phi796.i = phi i64 [ %i.ox, %bb.cq ], [ %i.os, %bb.co ] ; 2 uses
  %i.pg = icmp ugt i64 %.sroa.0.0.i.i990, %.pre-phi796.i
  br i1 %i.pg, label %.split536.us.i.invoke, label %.split528.us.i

.split528.us.i:                                   ; preds = %bb.cl, %.loopexit859.i
  %.us-phi533.i = phi i64 [ %.pre-phi796.i, %.loopexit859.i ], [ %.pre-phi.i, %bb.cl ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.us-phi533.i, i64 noundef %.sroa.0.0.i.i990, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1379) #60
          to label %.noexc213.i unwind label %bb.cr, !noalias !94147

.noexc213.i:                                      ; preds = %.split528.us.i
  unreachable

.split536.us.i.invoke:                            ; preds = %bb.cm, %.loopexit859.i
  %i.ph = phi i64 [ %i.nl, %.loopexit859.i ], [ %.sroa.5296.sroa.5.0.extract.shift.us.i, %bb.cm ]
  %i.pi = phi i64 [ %.sroa.0241.1614.i, %.loopexit859.i ], [ %.sroa.02.0.i.i.i161850.i, %bb.cm ]
  %i.pj = phi ptr [ @191, %.loopexit859.i ], [ @192, %bb.cm ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.ph, i64 noundef %i.pi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pj) #61
          to label %.split536.us.i.cont unwind label %bb.cr, !noalias !94147

.split536.us.i.cont:                              ; preds = %.split536.us.i.invoke
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit205.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i204.i, %.thread856.i
  %i.pk = icmp eq i64 %.sroa.02.0.i.i.i161850.i, 0
  br i1 %i.pk, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit203.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i214.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i214.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit205.i
  %i.pl = shl nuw nsw i64 %.sroa.02.0.i.i.i161850.i, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kk) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kk, i64 noundef %i.pl, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !94147
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit203.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit136.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i135.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit203.i
  %i.pm = icmp eq i64 %.sroa.10.0.i228, 0
  br i1 %i.pm, label %_RINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality15katz_centralityRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2e_5types3any5PyAnyEB29_NtB19_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality21graph_katz_centrality0NtNtB2e_3err5PyErrEB3D_.exit, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i216.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i216.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit136.i
  %i.pn = shl i64 %.sroa.10.0.i228, 4             ; 2 uses
  %i.po = add i64 %i.pn, 16                       ; 2 uses
  %i.pp = add i64 %.sroa.10.0.i228, 17
  %i.pq = add i64 %i.pp, %i.po                    ; 4 uses
  %i.pr = icmp uge i64 %i.pq, %i.po
  %i.ps = icmp ult i64 %i.pq, 9223372036854775793
  tail call void @llvm.assume(i1 %i.pr)
  tail call void @llvm.assume(i1 %i.ps)
  %i.pt = icmp eq i64 %i.pq, 0
  br i1 %i.pt, label %_RINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality15katz_centralityRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2e_5types3any5PyAnyEB29_NtB19_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality21graph_katz_centrality0NtNtB2e_3err5PyErrEB3D_.exit, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEECskcxRuJ53GpR_9rustworkx.exit.sink.split.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit164.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i163.i, %bb.bp
  %i.pu = icmp eq i64 %.sroa.0241.2.i, 0
  br i1 %i.pu, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit219.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit164.i._RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i218.i_crit_edge

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit164.i._RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i218.i_crit_edge: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit164.i
  %.pre = shl nuw nsw i64 %.sroa.0241.2.i, 3
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i218.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i218.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit164.i._RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i218.i_crit_edge, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit164.i.thread
  %.pre-phi = phi i64 [ %.pre, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit164.i._RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i218.i_crit_edge ], [ %i.ji, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit164.i.thread ]
  %.pn65.i492 = phi { ptr, i32 } [ %.pn.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit164.i._RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i218.i_crit_edge ], [ %i.je, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit164.i.thread ]
  %.sroa.11.0.i490 = phi ptr [ %.sroa.11.2.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit164.i._RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i218.i_crit_edge ], [ %.sroa.11.1613.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit164.i.thread ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.i490) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.0.i490, i64 noundef %.pre-phi, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !94147
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit219.i

select.unfold:                                    ; preds = %._crit_edge.i.i223, %.lr.ph1408
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.pv = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59 ; 4 uses
  %i.pw = icmp eq ptr %i.pv, null
  br i1 %i.pw, label %bb.cs, label %bb.ct, !prof !104

bb.cs:                                            ; preds = %select.unfold
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
          to label %.noexc238 unwind label %.loopexit.split-lp

.noexc238:                                        ; preds = %bb.cs
  unreachable

bb.ct:                                            ; preds = %select.unfold
  store ptr @2352, ptr %i.pv, align 8
  %i.px = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  store i64 38, ptr %i.px, align 8
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.070.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.py, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.070.sroa.5.0..sroa_idx, align 8
  %.sroa.070.sroa.5.sroa.4.0..sroa.070.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.070.sroa.5.sroa.4.0..sroa.070.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.070.sroa.5.sroa.5.0..sroa.070.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.pv, ptr %.sroa.070.sroa.5.sroa.5.0..sroa.070.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.070.sroa.5.sroa.6.0..sroa.070.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @518, ptr %.sroa.070.sroa.5.sroa.6.0..sroa.070.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 3, ptr %.sroa.471.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %.thread495
  %.val175 = phi i64 [ %i.cz, %bb.ct ], [ 0, %.thread495 ] ; 3 uses
  %.val174 = phi ptr [ %i.da, %bb.ct ], [ @111, %.thread495 ] ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  invoke void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsi0YPOvDEjiZ_4pyo33err5PyErrECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %i.pz)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6result6ResultdNtNtCsi0YPOvDEjiZ_4pyo33err5PyErrEECskcxRuJ53GpR_9rustworkx.exit240 unwind label %bb.v

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6result6ResultdNtNtCsi0YPOvDEjiZ_4pyo33err5PyErrEECskcxRuJ53GpR_9rustworkx.exit240: ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.qa = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i241 = load i64, ptr %i.qa, align 8, !noundef !67
  %i.qb = icmp sgt i64 %.val.i.i.i.i241, 0
  br i1 %i.qb, label %bb.cw, label %bb.cv, !prof !125

bb.cv:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6result6ResultdNtNtCsi0YPOvDEjiZ_4pyo33err5PyErrEECskcxRuJ53GpR_9rustworkx.exit240
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %3)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit243 unwind label %.thread483.loopexit.split-lp

bb.cw:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6result6ResultdNtNtCsi0YPOvDEjiZ_4pyo33err5PyErrEECskcxRuJ53GpR_9rustworkx.exit240
  tail call void @_Py_DecRef(ptr noundef nonnull %3) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit243

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit243: ; preds = %bb.cw, %bb.cv
  %i.qc = icmp eq i64 %.val175, 0
  br i1 %i.qc, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEECskcxRuJ53GpR_9rustworkx.exit245, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i244

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i244: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit243
  %i.qd = shl i64 %.val175, 4                     ; 2 uses
  %i.qe = add i64 %i.qd, 16                       ; 2 uses
  %i.qf = add i64 %.val175, 17
  %i.qg = add i64 %i.qf, %i.qe                    ; 4 uses
  %i.qh = icmp uge i64 %i.qg, %i.qe
  %i.qi = icmp ult i64 %i.qg, 9223372036854775793
  tail call void @llvm.assume(i1 %i.qh)
  tail call void @llvm.assume(i1 %i.qi)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val174) ]
  %i.qj = icmp eq i64 %i.qg, 0
  br i1 %i.qj, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEECskcxRuJ53GpR_9rustworkx.exit245, label %bb.cx

bb.cx:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i244
  %i.qk = sub nuw nsw i64 -16, %i.qd
  %i.ql = getelementptr inbounds i8, ptr %.val174, i64 %i.qk
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ql, i64 noundef %i.qg, i64 noundef range(i64 1, -9223372036854775807) 16) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEECskcxRuJ53GpR_9rustworkx.exit245

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEECskcxRuJ53GpR_9rustworkx.exit245: ; preds = %bb.cx, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i244, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.qm = trunc nuw i8 %.sroa.031.2 to i1
  %i.qn = xor i1 %i.qm, true
  %i.qo = or i1 %.not, %i.qn
  br label %bb.do

bb.cy:                                            ; preds = %bb.ab, %bb.m, %bb.ed, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6result6ResultdNtNtCsi0YPOvDEjiZ_4pyo33err5PyErrEECskcxRuJ53GpR_9rustworkx.exit, %bb.ef
  %i.qp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.cz:                                            ; preds = %.backedge, %bb.u
  %i.qq = phi i64 [ 0, %bb.u ], [ %i.qu, %.backedge ] ; 2 uses
  %i.qr = phi ptr [ %i.bm, %bb.u ], [ %i.qt, %.backedge ] ; 3 uses
  %i.qs = icmp eq ptr %i.qr, %i.bp
  br i1 %i.qs, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  %i.qu = add i64 %i.qq, 1
  %.val.i248 = load ptr, ptr %i.qr, align 8, !noalias !94167, !noundef !67
  %.not.i.not.i249 = icmp eq ptr %.val.i248, null
  br i1 %.not.i.not.i249, label %.backedge, label %bb.db

.backedge:                                        ; preds = %bb.da, %bb.db
  br label %bb.cz

bb.db:                                            ; preds = %bb.da
  %i.qv = and i64 %i.qq, 4294967295
  invoke fastcc void @_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjdE6insertCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(40) %i.g, i64 noundef %i.qv, double noundef 1.000000e+00)
          to label %.backedge unwind label %.thread483.loopexit

_RINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality15katz_centralityRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2e_5types3any5PyAnyEB29_NtB19_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality21graph_katz_centrality0NtNtB2e_3err5PyErrEB3D_.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEECskcxRuJ53GpR_9rustworkx.exit.sink.split.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit136.i, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i216.i
  %.sroa.15334.2 = phi i64 [ %.sroa.15334.0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit136.i ], [ %.sroa.15334.0, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i216.i ], [ %.sroa.15334.1, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEECskcxRuJ53GpR_9rustworkx.exit.sink.split.i ]
  %.sroa.14331.2 = phi ptr [ %.sroa.14331.0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit136.i ], [ %.sroa.14331.0, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i216.i ], [ %.sroa.14331.1, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEECskcxRuJ53GpR_9rustworkx.exit.sink.split.i ] ; 4 uses
  %.sroa.8329.2 = phi i64 [ %.sroa.8329.0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit136.i ], [ %.sroa.8329.0, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i216.i ], [ %.sroa.8329.1, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEECskcxRuJ53GpR_9rustworkx.exit.sink.split.i ] ; 5 uses
  %.not137 = icmp eq i64 %.sroa.8329.2, -1
  br i1 %.not137, label %_RINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality15katz_centralityRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2e_5types3any5PyAnyEB29_NtB19_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality21graph_katz_centrality0NtNtB2e_3err5PyErrEB3D_.exit.thread, label %bb.dc

bb.dc:                                            ; preds = %_RINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality15katz_centralityRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2e_5types3any5PyAnyEB29_NtB19_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality21graph_katz_centrality0NtNtB2e_3err5PyErrEB3D_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14331.2) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !94168
  %i.qw = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc256 unwind label %.body258.thread

.noexc256:                                        ; preds = %bb.dc
  %i.qx = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !94168
  %i.qy = icmp eq i8 %i.qx, 2
  br i1 %i.qy, label %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i, label %bb.dd, !prof !77

bb.dd:                                            ; preds = %.noexc256
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i unwind label %.body258.thread

_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i: ; preds = %bb.dd, %.noexc256
  store i64 0, ptr %i.b, align 8, !alias.scope !94169, !noalias !94168
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !94169, !noalias !94168
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !94169, !noalias !94168
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !94168
  %i.qz = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %i.qw, ptr %i.qz, align 8, !alias.scope !94169, !noalias !94168
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejdE7reserveCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b, i64 noundef 0)
          to label %.preheader unwind label %.body258.thread515, !noalias !94168

.preheader:                                       ; preds = %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i, %_RNCINvNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNtBb_10filter_map15filter_map_foldTjB21_ETjdEuNCNvNtCskcxRuJ53GpR_9rustworkx10centrality21graph_katz_centralitys_0NCINvNvB1e_8for_each4callB2O_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB4B_8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB1i_7collect6ExtendB2O_E6extendINtB29_9FilterMapIBX_INtNtNtBf_5slice4iter4IterdEEB2T_EE0E0E0E0B2Z_.exit.i.i.i.i.i.i
  %i.ra = phi i64 [ %i.rg, %_RNCINvNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNtBb_10filter_map15filter_map_foldTjB21_ETjdEuNCNvNtCskcxRuJ53GpR_9rustworkx10centrality21graph_katz_centralitys_0NCINvNvB1e_8for_each4callB2O_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB4B_8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB1i_7collect6ExtendB2O_E6extendINtB29_9FilterMapIBX_INtNtNtBf_5slice4iter4IterdEEB2T_EE0E0E0E0B2Z_.exit.i.i.i.i.i.i ], [ 0, %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i ] ; 4 uses
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.14331.2, i64 %i.ra
  %.val.i.i.i.i.i.i = load double, ptr %i.rb, align 8, !noalias !94170
  %i.rc = and i64 %i.ra, 4294967295               ; 2 uses
  %i.rd = icmp ugt i64 %.val1.i.i, %i.rc
  br i1 %i.rd, label %bb.de, label %_RNCINvNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNtBb_10filter_map15filter_map_foldTjB21_ETjdEuNCNvNtCskcxRuJ53GpR_9rustworkx10centrality21graph_katz_centralitys_0NCINvNvB1e_8for_each4callB2O_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB4B_8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB1i_7collect6ExtendB2O_E6extendINtB29_9FilterMapIBX_INtNtNtBf_5slice4iter4IterdEEB2T_EE0E0E0E0B2Z_.exit.i.i.i.i.i.i

bb.de:                                            ; preds = %.preheader
  %i.re = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i, i64 %i.rc
  %i.rf = load ptr, ptr %i.re, align 8, !noalias !94171, !noundef !67
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.rf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNtBb_10filter_map15filter_map_foldTjB21_ETjdEuNCNvNtCskcxRuJ53GpR_9rustworkx10centrality21graph_katz_centralitys_0NCINvNvB1e_8for_each4callB2O_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB4B_8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB1i_7collect6ExtendB2O_E6extendINtB29_9FilterMapIBX_INtNtNtBf_5slice4iter4IterdEEB2T_EE0E0E0E0B2Z_.exit.i.i.i.i.i.i, label %_RNCNvNtCskcxRuJ53GpR_9rustworkx10centrality21graph_katz_centralitys_0B5_.exit.i.i.i.i.i.i.i.i

_RNCNvNtCskcxRuJ53GpR_9rustworkx10centrality21graph_katz_centralitys_0B5_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !94172
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b, i64 noundef %i.ra, double noundef %.val.i.i.i.i.i.i)
          to label %.noexc3.i unwind label %.body258, !noalias !94168

.noexc3.i:                                        ; preds = %_RNCNvNtCskcxRuJ53GpR_9rustworkx10centrality21graph_katz_centralitys_0B5_.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !94172
  br label %_RNCINvNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNtBb_10filter_map15filter_map_foldTjB21_ETjdEuNCNvNtCskcxRuJ53GpR_9rustworkx10centrality21graph_katz_centralitys_0NCINvNvB1e_8for_each4callB2O_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB4B_8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB1i_7collect6ExtendB2O_E6extendINtB29_9FilterMapIBX_INtNtNtBf_5slice4iter4IterdEEB2T_EE0E0E0E0B2Z_.exit.i.i.i.i.i.i

_RNCINvNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNtBb_10filter_map15filter_map_foldTjB21_ETjdEuNCNvNtCskcxRuJ53GpR_9rustworkx10centrality21graph_katz_centralitys_0NCINvNvB1e_8for_each4callB2O_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB4B_8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB1i_7collect6ExtendB2O_E6extendINtB29_9FilterMapIBX_INtNtNtBf_5slice4iter4IterdEEB2T_EE0E0E0E0B2Z_.exit.i.i.i.i.i.i: ; preds = %.noexc3.i, %bb.de, %.preheader
  %i.rg = add nuw i64 %i.ra, 1                    ; 2 uses
  %i.rh = icmp eq i64 %i.rg, %.sroa.15334.2
  br i1 %i.rh, label %.loopexit, label %.preheader

.body258.thread515:                               ; preds = %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.b) #63, !noalias !94168
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i266

_RINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality15katz_centralityRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2e_5types3any5PyAnyEB29_NtB19_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality21graph_katz_centrality0NtNtB2e_3err5PyErrEB3D_.exit.thread: ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit154.i, %_RINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality15katz_centralityRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2e_5types3any5PyAnyEB29_NtB19_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality21graph_katz_centrality0NtNtB2e_3err5PyErrEB3D_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.j, ptr %i.c, align 8
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4100.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @2353, ptr noundef nonnull %i.c)
          to label %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit unwind label %bb.df

bb.df:                                            ; preds = %_RINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality15katz_centralityRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2e_5types3any5PyAnyEB29_NtB19_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality21graph_katz_centrality0NtNtB2e_3err5PyErrEB3D_.exit.thread
  %i.ri = landingpad { ptr, i32 }
          cleanup
  br label %.thread478

_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality15katz_centralityRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2e_5types3any5PyAnyEB29_NtB19_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality21graph_katz_centrality0NtNtB2e_3err5PyErrEB3D_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.0431.0.copyload = load i64, ptr %i.d, align 8 ; 3 uses
  %.sroa.5433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5433.0.copyload = load ptr, ptr %.sroa.5433.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6436.0.copyload = load i64, ptr %.sroa.6436.0..sroa_idx, align 8
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !94173
  %i.rj = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !94173 ; 5 uses
  %i.rk = icmp eq ptr %i.rj, null
  br i1 %i.rk, label %bb.dg, label %bb.di, !prof !104

bb.dg:                                            ; preds = %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #61
          to label %.noexc261 unwind label %bb.dh

.noexc261:                                        ; preds = %bb.dg
  unreachable

bb.dh:                                            ; preds = %bb.dg
  %i.rl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rm = icmp eq i64 %.sroa.0431.0.copyload, 0
  br i1 %i.rm, label %.thread478, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %bb.dh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5433.0.copyload) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5433.0.copyload, i64 noundef %.sroa.0431.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !94174
  br label %.thread478

bb.di:                                            ; preds = %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit
  store i64 %.sroa.0431.0.copyload, ptr %i.rj, align 8
  %.sroa.5433.0..sroa_idx434 = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  store ptr %.sroa.5433.0.copyload, ptr %.sroa.5433.0..sroa_idx434, align 8
  %.sroa.6436.0..sroa_idx437 = getelementptr inbounds nuw i8, ptr %i.rj, i64 16
  store i64 %.sroa.6436.0.copyload, ptr %.sroa.6436.0..sroa_idx437, align 8
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0112.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rn, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.0112.sroa.5.0..sroa_idx, align 8
  %.sroa.0112.sroa.5.sroa.4.0..sroa.0112.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.0112.sroa.5.sroa.4.0..sroa.0112.sroa.5.0..sroa_idx.sroa_idx, align 8
end_hunk_0
begin_hunk_1_@_RNvNtCskcxRuJ53GpR_9rustworkx10centrality23digraph_katz_centrality:bb.a

bb.cb:                                            ; preds = %bb.bu
  %i.mz = and i64 %i.kq, 4294967295               ; 5 uses
  %i.na = icmp ult i64 %i.mz, %.sroa.02.0.i.i.i161771.i
  br i1 %i.na, label %bb.cc, label %.invoke1323

bb.cc:                                            ; preds = %bb.cb
  %i.nb = icmp ult i64 %i.mz, %.sroa.414.0.i763.i
  br i1 %i.nb, label %bb.cd, label %.invoke1323

.invoke1323:                                      ; preds = %bb.cc, %bb.cb
  %i.nc = phi i64 [ %.sroa.02.0.i.i.i161771.i, %bb.cb ], [ %.sroa.414.0.i763.i, %bb.cc ]
  %i.nd = phi ptr [ @189, %bb.cb ], [ @190, %bb.cc ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.mz, i64 noundef %i.nc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nd) #61
          to label %.cont1324 unwind label %bb.bv, !noalias !94343

.cont1324:                                        ; preds = %.invoke1323
  unreachable

bb.cd:                                            ; preds = %bb.cc
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %i.mz ; 2 uses
  %i.nf = load double, ptr %i.ne, align 8, !noalias !94343, !noundef !67
  %i.ng = fmul double %2, %i.nf
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.mz
  %i.ni = load double, ptr %i.nh, align 8, !noalias !94343, !noundef !67
  %i.nj = fadd double %i.ng, %i.ni
  store double %i.nj, ptr %i.ne, align 8, !noalias !94343
  br label %.loopexit.i.backedge

bb.ce:                                            ; preds = %bb.bt
  %i.nk = and i64 %i.kl, 4294967295               ; 5 uses
  %i.nl = icmp ugt i64 %.val1.i.i, %i.nk
  br i1 %i.nl, label %bb.cf, label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i

bb.cf:                                            ; preds = %bb.ce
  %i.nm = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i, i64 %i.nk ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !noalias !94360, !noundef !67
  %.not.i.i.i.i = icmp eq ptr %i.nn, null
  br i1 %.not.i.i.i.i, label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.cf
  %i.no = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.no, align 8, !noalias !94360
  br label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i

_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.cf, %bb.ce
  %.sroa.0.0.i.i206.i = phi i32 [ %.sroa.0.0.copyload.i.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ -1, %bb.ce ], [ -1, %bb.cf ] ; 2 uses
  %i.np = zext i32 %.sroa.0.0.i.i206.i to i64     ; 5 uses
  %i.nq = icmp ugt i64 %.val164, %i.np
  br i1 %i.nq, label %.lr.ph.i, label %._crit_edge504.split.us.i.backedge

.lr.ph.i:                                         ; preds = %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i
  %i.nr = icmp ult i64 %i.nk, %.sroa.0240.1568.i
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10265.0.i, i64 %i.nk
  %.fr.i = freeze i1 %i.nr
  br i1 %.fr.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.ci
  %i.nt = phi i64 [ %i.oj, %bb.ci ], [ %i.np, %.lr.ph.i ]
  %.sroa.11290.0503.us.i = phi i32 [ %i.nx, %bb.ci ], [ %.sroa.0.0.i.i206.i, %.lr.ph.i ]
  %i.nu = getelementptr inbounds nuw [24 x i8], ptr %.val163, i64 %i.nt ; 3 uses
  %i.nv = load ptr, ptr %i.nu, align 8, !noalias !94361, !noundef !67
  %.not.i208.us.i = icmp eq ptr %i.nv, null
  br i1 %.not.i208.us.i, label %._crit_edge504.split.us.i.backedge, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.split.us.i
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.nx = load i32, ptr %i.nw, align 8, !noalias !94361, !noundef !67 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  %.sroa.021.0.copyload.i.us.i = load i64, ptr %i.ny, align 8, !noalias !94361
  %.sroa.5297.sroa.5.0.extract.shift.us.i = lshr i64 %.sroa.021.0.copyload.i.us.i, 32 ; 3 uses
  %i.nz = zext i32 %.sroa.11290.0503.us.i to i64  ; 3 uses
  %i.oa = icmp ugt i64 %.sroa.0.0.i.i929, %i.nz
  br i1 %i.oa, label %bb.ch, label %.split.us.i

bb.ch:                                            ; preds = %bb.cg
  %i.ob = icmp ult i64 %.sroa.5297.sroa.5.0.extract.shift.us.i, %.sroa.02.0.i.i.i161771.i
  br i1 %i.ob, label %bb.ci, label %.split511.us.i.invoke

bb.ci:                                            ; preds = %bb.ch
  %i.oc = load double, ptr %i.ns, align 8, !noalias !94343, !noundef !67
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink.i) ]
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %.sink.i, i64 %i.nz
  %i.oe = load double, ptr %i.od, align 8, !noalias !94362, !noundef !67
  %i.of = fmul double %i.oc, %i.oe
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %.sroa.5297.sroa.5.0.extract.shift.us.i ; 2 uses
  %i.oh = load double, ptr %i.og, align 8, !noalias !94343, !noundef !67
  %i.oi = fadd double %i.oh, %i.of
  store double %i.oi, ptr %i.og, align 8, !noalias !94343
  %i.oj = zext i32 %i.nx to i64                   ; 2 uses
  %i.ok = icmp ugt i64 %.val164, %i.oj
  br i1 %i.ok, label %.lr.ph.split.us.i, label %._crit_edge504.split.us.i.backedge

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.ol = getelementptr inbounds nuw [24 x i8], ptr %.val163, i64 %i.np
  %i.om = load ptr, ptr %i.ol, align 8, !noalias !94361, !noundef !67
  %.not.i208.i = icmp eq ptr %i.om, null
  br i1 %.not.i208.i, label %._crit_edge504.split.us.i.backedge, label %bb.ck

bb.cj:                                            ; preds = %.split511.us.i.invoke, %.split.us.i
  %i.on = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.ck:                                            ; preds = %.lr.ph.split.i
  %i.oo = icmp ugt i64 %.sroa.0.0.i.i929, %i.np
  br i1 %i.oo, label %.split511.us.i.invoke, label %.split.us.i

.split.us.i:                                      ; preds = %bb.cg, %bb.ck
  %.us-phi508.i = phi i64 [ %i.np, %bb.ck ], [ %i.nz, %bb.cg ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.us-phi508.i, i64 noundef %.sroa.0.0.i.i929, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1381) #60
          to label %.noexc212.i unwind label %bb.cj, !noalias !94343

.noexc212.i:                                      ; preds = %.split.us.i
  unreachable

.split511.us.i.invoke:                            ; preds = %bb.ch, %bb.ck
  %i.op = phi i64 [ %i.nk, %bb.ck ], [ %.sroa.5297.sroa.5.0.extract.shift.us.i, %bb.ch ]
  %i.oq = phi i64 [ %.sroa.0240.1568.i, %bb.ck ], [ %.sroa.02.0.i.i.i161771.i, %bb.ch ]
  %i.or = phi ptr [ @191, %bb.ck ], [ @192, %bb.ch ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.op, i64 noundef %i.oq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.or) #61
          to label %.split511.us.i.cont unwind label %bb.cj, !noalias !94343

.split511.us.i.cont:                              ; preds = %.split511.us.i.invoke
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit205.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i204.i, %.thread777.i
  %i.os = icmp eq i64 %.sroa.02.0.i.i.i161771.i, 0
  br i1 %i.os, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit203.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i213.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i213.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit205.i
  %i.ot = shl nuw nsw i64 %.sroa.02.0.i.i.i161771.i, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kk) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kk, i64 noundef %i.ot, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !94343
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit203.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit136.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i135.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit203.i
  %i.ou = icmp eq i64 %.sroa.10.0.i228, 0
  br i1 %i.ou, label %_RINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality15katz_centralityRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2e_5types3any5PyAnyEB29_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality23digraph_katz_centrality0NtNtB2e_3err5PyErrEB3l_.exit, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i215.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i215.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit136.i
  %i.ov = shl i64 %.sroa.10.0.i228, 4             ; 2 uses
  %i.ow = add i64 %i.ov, 16                       ; 2 uses
  %i.ox = add i64 %.sroa.10.0.i228, 17
  %i.oy = add i64 %i.ox, %i.ow                    ; 4 uses
  %i.oz = icmp uge i64 %i.oy, %i.ow
  %i.pa = icmp ult i64 %i.oy, 9223372036854775793
  tail call void @llvm.assume(i1 %i.oz)
  tail call void @llvm.assume(i1 %i.pa)
  %i.pb = icmp eq i64 %i.oy, 0
  br i1 %i.pb, label %_RINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality15katz_centralityRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2e_5types3any5PyAnyEB29_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality23digraph_katz_centrality0NtNtB2e_3err5PyErrEB3l_.exit, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEECskcxRuJ53GpR_9rustworkx.exit.sink.split.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit164.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i163.i, %bb.bp
  %i.pc = icmp eq i64 %.sroa.0240.2.i, 0
  br i1 %i.pc, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit218.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit164.i._RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i217.i_crit_edge

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit164.i._RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i217.i_crit_edge: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit164.i
  %.pre = shl nuw nsw i64 %.sroa.0240.2.i, 3
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i217.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i217.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit164.i._RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i217.i_crit_edge, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit164.i.thread
  %.pre-phi = phi i64 [ %.pre, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit164.i._RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i217.i_crit_edge ], [ %i.ji, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit164.i.thread ]
  %.pn65.i491 = phi { ptr, i32 } [ %.pn.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit164.i._RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i217.i_crit_edge ], [ %i.je, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit164.i.thread ]
  %.sroa.11.0.i489 = phi ptr [ %.sroa.11.2.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit164.i._RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i217.i_crit_edge ], [ %.sroa.11.1567.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit164.i.thread ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.i489) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.0.i489, i64 noundef %.pre-phi, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !94343
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit218.i

select.unfold:                                    ; preds = %._crit_edge.i.i223, %.lr.ph1287
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.pd = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59 ; 4 uses
  %i.pe = icmp eq ptr %i.pd, null
  br i1 %i.pe, label %bb.cl, label %bb.cm, !prof !104

bb.cl:                                            ; preds = %select.unfold
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
          to label %.noexc237 unwind label %.loopexit.split-lp

.noexc237:                                        ; preds = %bb.cl
  unreachable

bb.cm:                                            ; preds = %select.unfold
  store ptr @2352, ptr %i.pd, align 8
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  store i64 38, ptr %i.pf, align 8
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.070.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pg, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.070.sroa.5.0..sroa_idx, align 8
  %.sroa.070.sroa.5.sroa.4.0..sroa.070.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.070.sroa.5.sroa.4.0..sroa.070.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.070.sroa.5.sroa.5.0..sroa.070.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.pd, ptr %.sroa.070.sroa.5.sroa.5.0..sroa.070.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.070.sroa.5.sroa.6.0..sroa.070.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @518, ptr %.sroa.070.sroa.5.sroa.6.0..sroa.070.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 3, ptr %.sroa.471.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %.thread494
  %.val175 = phi i64 [ %i.cz, %bb.cm ], [ 0, %.thread494 ] ; 3 uses
  %.val174 = phi ptr [ %i.da, %bb.cm ], [ @111, %.thread494 ] ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  invoke void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsi0YPOvDEjiZ_4pyo33err5PyErrECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %i.ph)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6result6ResultdNtNtCsi0YPOvDEjiZ_4pyo33err5PyErrEECskcxRuJ53GpR_9rustworkx.exit239 unwind label %bb.v

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6result6ResultdNtNtCsi0YPOvDEjiZ_4pyo33err5PyErrEECskcxRuJ53GpR_9rustworkx.exit239: ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.pi = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i240 = load i64, ptr %i.pi, align 8, !noundef !67
  %i.pj = icmp sgt i64 %.val.i.i.i.i240, 0
  br i1 %i.pj, label %bb.cp, label %bb.co, !prof !125

bb.co:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6result6ResultdNtNtCsi0YPOvDEjiZ_4pyo33err5PyErrEECskcxRuJ53GpR_9rustworkx.exit239
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %3)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit242 unwind label %.thread482.loopexit.split-lp

bb.cp:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6result6ResultdNtNtCsi0YPOvDEjiZ_4pyo33err5PyErrEECskcxRuJ53GpR_9rustworkx.exit239
  tail call void @_Py_DecRef(ptr noundef nonnull %3) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit242

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit242: ; preds = %bb.cp, %bb.co
  %i.pk = icmp eq i64 %.val175, 0
  br i1 %i.pk, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEECskcxRuJ53GpR_9rustworkx.exit244, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i243

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i243: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit242
  %i.pl = shl i64 %.val175, 4                     ; 2 uses
  %i.pm = add i64 %i.pl, 16                       ; 2 uses
  %i.pn = add i64 %.val175, 17
  %i.po = add i64 %i.pn, %i.pm                    ; 4 uses
  %i.pp = icmp uge i64 %i.po, %i.pm
  %i.pq = icmp ult i64 %i.po, 9223372036854775793
  tail call void @llvm.assume(i1 %i.pp)
  tail call void @llvm.assume(i1 %i.pq)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val174) ]
  %i.pr = icmp eq i64 %i.po, 0
  br i1 %i.pr, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEECskcxRuJ53GpR_9rustworkx.exit244, label %bb.cq

bb.cq:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i243
  %i.ps = sub nuw nsw i64 -16, %i.pl
  %i.pt = getelementptr inbounds i8, ptr %.val174, i64 %i.ps
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pt, i64 noundef %i.po, i64 noundef range(i64 1, -9223372036854775807) 16) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEECskcxRuJ53GpR_9rustworkx.exit244

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEECskcxRuJ53GpR_9rustworkx.exit244: ; preds = %bb.cq, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i243, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.pu = trunc nuw i8 %.sroa.031.2 to i1
  %i.pv = xor i1 %i.pu, true
  %i.pw = or i1 %.not, %i.pv
  br label %bb.dh

bb.cr:                                            ; preds = %bb.ab, %bb.m, %bb.dw, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6result6ResultdNtNtCsi0YPOvDEjiZ_4pyo33err5PyErrEECskcxRuJ53GpR_9rustworkx.exit, %bb.dy
  %i.px = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.cs:                                            ; preds = %.backedge, %bb.u
  %i.py = phi i64 [ 0, %bb.u ], [ %i.qc, %.backedge ] ; 2 uses
  %i.pz = phi ptr [ %i.bm, %bb.u ], [ %i.qb, %.backedge ] ; 3 uses
  %i.qa = icmp eq ptr %i.pz, %i.bp
  br i1 %i.qa, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %i.qc = add i64 %i.py, 1
  %.val.i247 = load ptr, ptr %i.pz, align 8, !noalias !94363, !noundef !67
  %.not.i.not.i248 = icmp eq ptr %.val.i247, null
  br i1 %.not.i.not.i248, label %.backedge, label %bb.cu

.backedge:                                        ; preds = %bb.ct, %bb.cu
  br label %bb.cs

bb.cu:                                            ; preds = %bb.ct
  %i.qd = and i64 %i.py, 4294967295
  invoke fastcc void @_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjdE6insertCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(40) %i.g, i64 noundef %i.qd, double noundef 1.000000e+00)
          to label %.backedge unwind label %.thread482.loopexit

_RINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality15katz_centralityRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2e_5types3any5PyAnyEB29_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality23digraph_katz_centrality0NtNtB2e_3err5PyErrEB3l_.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEECskcxRuJ53GpR_9rustworkx.exit.sink.split.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit136.i, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i215.i
  %.sroa.15333.2 = phi i64 [ %.sroa.15333.0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit136.i ], [ %.sroa.15333.0, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i215.i ], [ %.sroa.15333.1, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEECskcxRuJ53GpR_9rustworkx.exit.sink.split.i ]
  %.sroa.14330.2 = phi ptr [ %.sroa.14330.0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit136.i ], [ %.sroa.14330.0, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i215.i ], [ %.sroa.14330.1, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEECskcxRuJ53GpR_9rustworkx.exit.sink.split.i ] ; 4 uses
  %.sroa.8328.2 = phi i64 [ %.sroa.8328.0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit136.i ], [ %.sroa.8328.0, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i215.i ], [ %.sroa.8328.1, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEECskcxRuJ53GpR_9rustworkx.exit.sink.split.i ] ; 5 uses
  %.not137 = icmp eq i64 %.sroa.8328.2, -1
  br i1 %.not137, label %_RINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality15katz_centralityRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2e_5types3any5PyAnyEB29_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality23digraph_katz_centrality0NtNtB2e_3err5PyErrEB3l_.exit.thread, label %bb.cv

bb.cv:                                            ; preds = %_RINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality15katz_centralityRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2e_5types3any5PyAnyEB29_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality23digraph_katz_centrality0NtNtB2e_3err5PyErrEB3l_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14330.2) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !94364
  %i.qe = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc255 unwind label %.body257.thread

.noexc255:                                        ; preds = %bb.cv
  %i.qf = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !94364
  %i.qg = icmp eq i8 %i.qf, 2
  br i1 %i.qg, label %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i, label %bb.cw, !prof !77

bb.cw:                                            ; preds = %.noexc255
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i unwind label %.body257.thread

_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i: ; preds = %bb.cw, %.noexc255
  store i64 0, ptr %i.b, align 8, !alias.scope !94365, !noalias !94364
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !94365, !noalias !94364
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !94365, !noalias !94364
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !94364
  %i.qh = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %i.qe, ptr %i.qh, align 8, !alias.scope !94365, !noalias !94364
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejdE7reserveCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b, i64 noundef 0)
          to label %.preheader unwind label %.body257.thread514, !noalias !94364

.preheader:                                       ; preds = %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i, %_RNCINvNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNtBb_10filter_map15filter_map_foldTjB21_ETjdEuNCNvNtCskcxRuJ53GpR_9rustworkx10centrality23digraph_katz_centralitys_0NCINvNvB1e_8for_each4callB2O_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB4D_8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB1i_7collect6ExtendB2O_E6extendINtB29_9FilterMapIBX_INtNtNtBf_5slice4iter4IterdEEB2T_EE0E0E0E0B2Z_.exit.i.i.i.i.i.i
  %i.qi = phi i64 [ %i.qo, %_RNCINvNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNtBb_10filter_map15filter_map_foldTjB21_ETjdEuNCNvNtCskcxRuJ53GpR_9rustworkx10centrality23digraph_katz_centralitys_0NCINvNvB1e_8for_each4callB2O_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB4D_8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB1i_7collect6ExtendB2O_E6extendINtB29_9FilterMapIBX_INtNtNtBf_5slice4iter4IterdEEB2T_EE0E0E0E0B2Z_.exit.i.i.i.i.i.i ], [ 0, %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i ] ; 4 uses
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.14330.2, i64 %i.qi
  %.val.i.i.i.i.i.i = load double, ptr %i.qj, align 8, !noalias !94366
  %i.qk = and i64 %i.qi, 4294967295               ; 2 uses
  %i.ql = icmp ugt i64 %.val1.i.i, %i.qk
  br i1 %i.ql, label %bb.cx, label %_RNCINvNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNtBb_10filter_map15filter_map_foldTjB21_ETjdEuNCNvNtCskcxRuJ53GpR_9rustworkx10centrality23digraph_katz_centralitys_0NCINvNvB1e_8for_each4callB2O_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB4D_8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB1i_7collect6ExtendB2O_E6extendINtB29_9FilterMapIBX_INtNtNtBf_5slice4iter4IterdEEB2T_EE0E0E0E0B2Z_.exit.i.i.i.i.i.i

bb.cx:                                            ; preds = %.preheader
  %i.qm = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i, i64 %i.qk
  %i.qn = load ptr, ptr %i.qm, align 8, !noalias !94367, !noundef !67
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.qn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNtBb_10filter_map15filter_map_foldTjB21_ETjdEuNCNvNtCskcxRuJ53GpR_9rustworkx10centrality23digraph_katz_centralitys_0NCINvNvB1e_8for_each4callB2O_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB4D_8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB1i_7collect6ExtendB2O_E6extendINtB29_9FilterMapIBX_INtNtNtBf_5slice4iter4IterdEEB2T_EE0E0E0E0B2Z_.exit.i.i.i.i.i.i, label %_RNCNvNtCskcxRuJ53GpR_9rustworkx10centrality23digraph_katz_centralitys_0B5_.exit.i.i.i.i.i.i.i.i

_RNCNvNtCskcxRuJ53GpR_9rustworkx10centrality23digraph_katz_centralitys_0B5_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !94368
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b, i64 noundef %i.qi, double noundef %.val.i.i.i.i.i.i)
          to label %.noexc3.i unwind label %.body257, !noalias !94364

.noexc3.i:                                        ; preds = %_RNCNvNtCskcxRuJ53GpR_9rustworkx10centrality23digraph_katz_centralitys_0B5_.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !94368
  br label %_RNCINvNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNtBb_10filter_map15filter_map_foldTjB21_ETjdEuNCNvNtCskcxRuJ53GpR_9rustworkx10centrality23digraph_katz_centralitys_0NCINvNvB1e_8for_each4callB2O_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB4D_8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB1i_7collect6ExtendB2O_E6extendINtB29_9FilterMapIBX_INtNtNtBf_5slice4iter4IterdEEB2T_EE0E0E0E0B2Z_.exit.i.i.i.i.i.i

_RNCINvNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNtBb_10filter_map15filter_map_foldTjB21_ETjdEuNCNvNtCskcxRuJ53GpR_9rustworkx10centrality23digraph_katz_centralitys_0NCINvNvB1e_8for_each4callB2O_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB4D_8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB1i_7collect6ExtendB2O_E6extendINtB29_9FilterMapIBX_INtNtNtBf_5slice4iter4IterdEEB2T_EE0E0E0E0B2Z_.exit.i.i.i.i.i.i: ; preds = %.noexc3.i, %bb.cx, %.preheader
  %i.qo = add nuw i64 %i.qi, 1                    ; 2 uses
  %i.qp = icmp eq i64 %i.qo, %.sroa.15333.2
  br i1 %i.qp, label %.loopexit, label %.preheader

.body257.thread514:                               ; preds = %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.b) #63, !noalias !94364
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i265

_RINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality15katz_centralityRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2e_5types3any5PyAnyEB29_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality23digraph_katz_centrality0NtNtB2e_3err5PyErrEB3l_.exit.thread: ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit154.i, %_RINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality15katz_centralityRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2e_5types3any5PyAnyEB29_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality23digraph_katz_centrality0NtNtB2e_3err5PyErrEB3l_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.j, ptr %i.c, align 8
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4100.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @2353, ptr noundef nonnull %i.c)
          to label %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit unwind label %bb.cy

bb.cy:                                            ; preds = %_RINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality15katz_centralityRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2e_5types3any5PyAnyEB29_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality23digraph_katz_centrality0NtNtB2e_3err5PyErrEB3l_.exit.thread
  %i.qq = landingpad { ptr, i32 }
          cleanup
  br label %.thread477

_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality15katz_centralityRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2e_5types3any5PyAnyEB29_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality23digraph_katz_centrality0NtNtB2e_3err5PyErrEB3l_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.0430.0.copyload = load i64, ptr %i.d, align 8 ; 3 uses
  %.sroa.5432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5432.0.copyload = load ptr, ptr %.sroa.5432.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6435.0.copyload = load i64, ptr %.sroa.6435.0..sroa_idx, align 8
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !94369
  %i.qr = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !94369 ; 5 uses
  %i.qs = icmp eq ptr %i.qr, null
  br i1 %i.qs, label %bb.cz, label %bb.db, !prof !104

bb.cz:                                            ; preds = %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #61
          to label %.noexc260 unwind label %bb.da

.noexc260:                                        ; preds = %bb.cz
  unreachable

bb.da:                                            ; preds = %bb.cz
  %i.qt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qu = icmp eq i64 %.sroa.0430.0.copyload, 0
  br i1 %i.qu, label %.thread477, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %bb.da
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5432.0.copyload) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5432.0.copyload, i64 noundef %.sroa.0430.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !94370
  br label %.thread477

bb.db:                                            ; preds = %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit
  store i64 %.sroa.0430.0.copyload, ptr %i.qr, align 8
  %.sroa.5432.0..sroa_idx433 = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  store ptr %.sroa.5432.0.copyload, ptr %.sroa.5432.0..sroa_idx433, align 8
  %.sroa.6435.0..sroa_idx436 = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  store i64 %.sroa.6435.0.copyload, ptr %.sroa.6435.0..sroa_idx436, align 8
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0112.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qv, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.0112.sroa.5.0..sroa_idx, align 8
  %.sroa.0112.sroa.5.sroa.4.0..sroa.0112.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.0112.sroa.5.sroa.4.0..sroa.0112.sroa.5.0..sroa_idx.sroa_idx, align 8
end_hunk_1
