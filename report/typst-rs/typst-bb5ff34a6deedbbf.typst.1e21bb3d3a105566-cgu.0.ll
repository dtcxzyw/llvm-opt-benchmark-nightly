Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst-bb5ff34a6deedbbf.typst.1e21bb3d3a105566-cgu.0?download=true
inline.NumInlined: 451
inline.NumDeleted: 242
begin_hunk_0_@_RNvCs2AodJlUx5rK_5typst11deduplicate:bb.a
  %i.cr = sub nsw i64 0, %i.cq
  %i.cs = getelementptr inbounds [16 x i8], ptr %.val.i.i.i.i, i64 %i.cr
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -16
  %.val2.i.i.i.i.i.i = load i128, ptr %i.ct, align 16, !noalias !399, !noundef !6
  %i.cu = icmp eq i128 %i.bx, %.val2.i.i.i.i.i.i
  br i1 %i.cu, label %_RNCNvCs2AodJlUx5rK_5typst11deduplicate0B3_.exit.i, label %bb.t, !prof !8

._crit_edge.i.i.i.i.i:                            ; preds = %bb.t, %bb.s
  %.not12.i.i.i.i.i = icmp eq i64 %.sroa.04.0.i.i.i.i.i, 1
  br i1 %.not12.i.i.i.i.i, label %.thread.i.i.i.i.i, label %bb.u, !prof !9

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cv = add i16 %.sroa.01.033.i.i.i.i.i, -1
  %i.cw = and i16 %i.cv, %.sroa.01.033.i.i.i.i.i  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.cw, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.u:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.cx = icmp slt <16 x i8> %.sroa.0.0.copyload.i31.i.i.i.i.i, zeroinitializer
  %i.cy = bitcast <16 x i1> %i.cx to i16          ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %i.cy, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.v, label %.thread28.i.i.i.i.i, !prof !9

.thread28.i.i.i.i.i:                              ; preds = %bb.u
  %i.cz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cy, i1 true)
  %i.da = zext nneg i16 %i.cz to i64
  %i.db = add i64 %.sroa.0.021.i.i.i.i.i, %i.da
  %i.dc = and i64 %i.db, %.val5.i.i.i.i
  br label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %.thread28.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %.sroa.4.125.i.i.i.i.i = phi i64 [ %i.dc, %.thread28.i.i.i.i.i ], [ %.sroa.4.0.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.dd = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i.i.i.i, splat (i8 -1)
  %i.de = bitcast <16 x i1> %i.dd to i16
  %i.df = icmp eq i16 %i.de, 0
  br i1 %i.df, label %bb.v, label %bb.w, !prof !9

bb.v:                                             ; preds = %.thread.i.i.i.i.i, %bb.u
  %.sroa.04.126.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i ], [ 0, %bb.u ]
  %.sroa.4.124.i.i.i.i.i = phi i64 [ %.sroa.4.125.i.i.i.i.i, %.thread.i.i.i.i.i ], [ undef, %bb.u ]
  %i.dg = add i64 %i.cj, 16                       ; 2 uses
  %i.dh = add i64 %i.dg, %.sroa.0.021.i.i.i.i.i
  br label %bb.s

bb.w:                                             ; preds = %.thread.i.i.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.4.125.i.i.i.i.i
  %i.dj = load i8, ptr %i.di, align 1, !noalias !400, !noundef !6 ; 2 uses
  %i.dk = icmp sgt i8 %i.dj, -1
  br i1 %i.dk, label %bb.x, label %bb.y, !prof !9

bb.x:                                             ; preds = %bb.w
  %.val62.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i, align 16, !noalias !400
  %i.dl = icmp slt <16 x i8> %.val62.i.i.i.i.i.i, zeroinitializer
  %i.dm = bitcast <16 x i1> %i.dl to i16          ; 2 uses
  %.not.i23.i.i.i.i.i = icmp ne i16 %i.dm, 0
  %i.dn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dm, i1 true)
  %i.do = zext nneg i16 %i.dn to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i23.i.i.i.i.i)
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.do
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !noalias !401
  br label %bb.y

_RNCNvCs2AodJlUx5rK_5typst11deduplicate0B3_.exit.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.dp = add i64 %.sroa.0.044.i40, 1
  br label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dq = phi i8 [ %.pre.i.i.i, %bb.x ], [ %i.dj, %bb.w ]
  %.sroa.3.0.i.ph.i.i.i.i = phi i64 [ %i.do, %bb.x ], [ %.sroa.4.125.i.i.i.i.i, %bb.w ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %i.dr = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i
  %i.ds = and i8 %i.dq, 1
  %i.dt = zext nneg i8 %i.ds to i64
  %i.du = add i64 %.sroa.3.0.i.ph.i.i.i.i, -16
  %i.dv = and i64 %i.du, %.val5.i.i.i.i
  store i8 %i.cg, ptr %i.dr, align 1, !noalias !401
  %i.dw = getelementptr i8, ptr %.val.i.i.i.i, i64 %i.dv
  %i.dx = getelementptr i8, ptr %i.dw, i64 16
  store i8 %i.cg, ptr %i.dx, align 1, !noalias !401
  %i.dy = load <2 x i64>, ptr %i.aa, align 8, !alias.scope !403, !noalias !387
  %i.dz = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.dt, i64 0
  %i.ea = sub <2 x i64> %i.dy, %i.dz
  store <2 x i64> %i.ea, ptr %i.aa, align 8, !alias.scope !403, !noalias !387
  %i.eb = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i
  %i.ec = getelementptr inbounds [16 x i8], ptr %.val.i.i.i.i, i64 %i.eb
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 -16
  store i128 %i.bx, ptr %i.ed, align 16, !noalias !401
  %.not10.i = icmp eq i64 %.sroa.0.044.i40, 0
  br i1 %.not10.i, label %.thread, label %bb.aa

bb.z:                                             ; preds = %bb.ab, %_RNCNvCs2AodJlUx5rK_5typst11deduplicate0B3_.exit.i
  %.sroa.0.1.i = phi i64 [ %.sroa.0.044.i40, %bb.ab ], [ %i.dp, %_RNCNvCs2AodJlUx5rK_5typst11deduplicate0B3_.exit.i ] ; 4 uses
  %exitcond55.not.i = icmp eq i64 %i.bg, %1
  br i1 %exitcond55.not.i, label %._crit_edge.i, label %.backedge

.backedge:                                        ; preds = %bb.z, %.thread
  %.sroa.0.044.i.be = phi i64 [ %.sroa.0.1.i, %bb.z ], [ 0, %.thread ]
  %i.ee = add nuw i64 %i.bg, 1
  %exitcond.not.i = icmp eq i64 %i.bg, %.sroa.10.1
  br i1 %exitcond.not.i, label %.invoke, label %.lr.ph

.thread:                                          ; preds = %bb.y
  %exitcond55.not.i22 = icmp eq i64 %i.bg, %1
  br i1 %exitcond55.not.i22, label %_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE6retainNCNvCs2AodJlUx5rK_5typst11deduplicate0EB1N_.exit, label %.backedge

bb.aa:                                            ; preds = %bb.y
  %i.ef = sub i64 %.sroa.06.043.i41, %.sroa.0.044.i40 ; 3 uses
  %i.eg = icmp ult i64 %i.ef, %.sroa.10.1
  br i1 %i.eg, label %bb.ab, label %.invoke

.invoke:                                          ; preds = %bb.aa, %.backedge, %.lr.ph.i
  %i.eh = phi i64 [ %.sroa.10.1, %.lr.ph.i ], [ %.sroa.10.1, %.backedge ], [ %i.ef, %bb.aa ]
  %i.ei = phi ptr [ @4, %.lr.ph.i ], [ @4, %.backedge ], [ @5, %bb.aa ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.eh, i64 noundef %.sroa.10.1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ei) #29
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.ej = getelementptr inbounds nuw [72 x i8], ptr %.sroa.0.1, i64 %i.ef ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.ej, i64 72, i1 false), !noalias !404
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ej, ptr noundef nonnull align 8 dereferenceable(72) %i.bh, i64 72, i1 false), !noalias !404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bh, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !noalias !404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.z

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %.noexc9, %.noexc8, %.noexc, %.lr.ph, %.invoke
  %lpad.loopexit.split-lp87 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.o, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.d, %bb.k, %bb.q, %bb.f
  %.sroa.10.2 = phi i64 [ %.sroa.10.1, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.x, %bb.f ], [ %1, %bb.d ], [ %.sroa.10.1, %bb.k ], [ %i.ar, %bb.q ], [ %i.ad, %bb.o ], [ %i.ad, %bb.n ]
  %.sroa.0.2 = phi ptr [ %.sroa.0.1, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.y, %bb.f ], [ %0, %bb.d ], [ %.sroa.0.1, %bb.k ], [ %i.as, %bb.q ], [ %.sroa.0.1, %bb.o ], [ %.sroa.0.1, %bb.n ]
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.loopexit.split-lp87, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.z, %bb.f ], [ %lpad.phi.i.i.i, %bb.d ], [ %lpad.phi.i.i21.i, %bb.k ], [ %i.bf, %bb.q ], [ %i.bb, %bb.o ], [ %i.bb, %bb.n ]
  %.val6 = load ptr, ptr %i.j, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val7 = load i64, ptr %i.ek, align 8, !noundef !6
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetoNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs2AodJlUx5rK_5typst(ptr %.val6, i64 %.val7) #28
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs2AodJlUx5rK_5typst(ptr %.sroa.0.2, i64 %.sroa.10.2) #28
          to label %bb.ae unwind label %bb.ad

_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE6retainNCNvCs2AodJlUx5rK_5typst11deduplicate0EB1N_.exit: ; preds = %.thread, %bb.m, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread.i.i, %bb.g, %._crit_edge.i, %_RNvMs1_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE11make_uniqueCs2AodJlUx5rK_5typst.exit.i, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromRSBH_E4fromCs2AodJlUx5rK_5typst.exit.i31.i
  %.sroa.10.3 = phi i64 [ %.sroa.10.1, %_RNvMs1_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE11make_uniqueCs2AodJlUx5rK_5typst.exit.i ], [ %.sroa.10.1, %._crit_edge.i ], [ %i.ad, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread.i.i ], [ %i.ar, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromRSBH_E4fromCs2AodJlUx5rK_5typst.exit.i31.i ], [ %.sroa.10.1, %bb.g ], [ %i.ad, %bb.m ], [ %.sroa.10.1, %.thread ]
  %.sroa.0.3 = phi ptr [ %.sroa.0.1, %_RNvMs1_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE11make_uniqueCs2AodJlUx5rK_5typst.exit.i ], [ %.sroa.0.1, %._crit_edge.i ], [ %.sroa.0.1, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread.i.i ], [ %i.as, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromRSBH_E4fromCs2AodJlUx5rK_5typst.exit.i31.i ], [ %.sroa.0.1, %bb.g ], [ %.sroa.0.1, %bb.m ], [ %.sroa.0.1, %.thread ]
  %.val4 = load ptr, ptr %i.j, align 8            ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val5 = load i64, ptr %i.el, align 8, !noundef !6 ; 4 uses
  %i.em = icmp eq i64 %.val5, 0
  br i1 %i.em, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetoNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs2AodJlUx5rK_5typst.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE6retainNCNvCs2AodJlUx5rK_5typst11deduplicate0EB1N_.exit
  %i.en = icmp slt i64 %.val5, 1152921504606846975
  call void @llvm.assume(i1 %i.en)
  %i.eo = shl i64 %.val5, 4                       ; 2 uses
  %i.ep = add i64 %i.eo, 16                       ; 2 uses
  %i.eq = add nsw i64 %.val5, 17
  %i.er = add i64 %i.eq, %i.ep                    ; 4 uses
  %i.es = icmp uge i64 %i.er, %i.ep
  %i.et = icmp ult i64 %i.er, 9223372036854775793
  call void @llvm.assume(i1 %i.es)
  call void @llvm.assume(i1 %i.et)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  %i.eu = icmp eq i64 %i.er, 0
  br i1 %i.eu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetoNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs2AodJlUx5rK_5typst.exit, label %bb.ac

bb.ac:                                            ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i
  %i.ev = sub nuw nsw i64 -16, %i.eo
  %i.ew = getelementptr inbounds i8, ptr %.val4, i64 %i.ev
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ew, i64 noundef %i.er, i64 noundef range(i64 1, -9223372036854775807) 16) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetoNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs2AodJlUx5rK_5typst.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetoNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs2AodJlUx5rK_5typst.exit: ; preds = %bb.ac, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE6retainNCNvCs2AodJlUx5rK_5typst11deduplicate0EB1N_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ex = insertvalue { ptr, i64 } poison, ptr %.sroa.0.3, 0
  %i.ey = insertvalue { ptr, i64 } %i.ex, i64 %.sroa.10.3, 1
  ret { ptr, i64 } %i.ey

bb.ad:                                            ; preds = %.body
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.ae:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvCs2AodJlUx5rK_5typst22hint_invalid_main_file(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %1, i16 noundef range(i16 1, 0) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [2 x i8], align 2                 ; 4 uses
  %i.g = alloca [72 x i8], align 8                ; 13 uses
  %i.h = alloca [72 x i8], align 8                ; 46 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [64 x i8], align 8                ; 33 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [56 x i8], align 8                ; 9 uses
  %i.n = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.7 = alloca [7 x i8], align 8             ; 4 uses
  %i.o = alloca [72 x i8], align 8                ; 10 uses
  %i.p = alloca [72 x i8], align 8                ; 5 uses
  %i.q = alloca [64 x i8], align 8                ; 8 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 8 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [2 x i8], align 2                 ; 3 uses
  store i16 %2, ptr %i.v, align 2
  %i.w = load i32, ptr %1, align 8, !range !608, !noundef !6 ; 2 uses
  %i.x = icmp ne i32 %i.w, 11
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvXsk_NtCsdaEETE4DqmE_13typst_library4diagNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9FileErrorE4from(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %1)
  %i.y = invoke { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef 1)
          to label %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit unwind label %bb.c, !noalias !609 ; 2 uses

bb.b:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !609
  unreachable

common.resume:                                    ; preds = %.thread105, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.c ], [ %.pn104, %.thread105 ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.u) #28
          to label %common.resume unwind label %bb.b, !noalias !610

_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit: ; preds = %bb.a
  %i.ab = icmp eq i32 %i.w, 9
  %i.ac = extractvalue { i64, i64 } %i.y, 1
  %i.ad = extractvalue { i64, i64 } %i.y, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store i8 0, ptr %i.ae, align 8
  store i64 %i.ad, ptr %i.o, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.ac, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 0, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 7 uses
  store ptr inttoptr (i64 16 to ptr), ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 7 uses
  store i64 0, ptr %i.ak, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br i1 %i.ab, label %bb.d, label %bb.cs

bb.d:                                             ; preds = %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit
  %i.al = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_6FileIdNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.v)
          to label %bb.e unwind label %.thread126

.thread126:                                       ; preds = %bb.aa, %bb.e, %bb.am, %bb.ci, %bb.ch, %bb.cc, %bb.ak, %bb.n, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread105

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.an = invoke { ptr, i64 } @_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_11VirtualPath9extension(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.am)
          to label %bb.f unwind label %.thread126 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ao = extractvalue { ptr, i64 } %i.an, 0      ; 4 uses
  %i.ap = extractvalue { ptr, i64 } %i.an, 1      ; 2 uses
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = icmp eq i64 %i.ap, 3
  br i1 %i.aq, label %bb.o, label %bb.p

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !611
  store ptr inttoptr (i64 16 to ptr), ptr %i.n, align 8, !noalias !611
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store i64 0, ptr %i.ar, align 8, !noalias !611
  call void @llvm.experimental.noalias.scope.decl(metadata !612)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n, i64 noundef range(i64 54, 56) 55)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i unwind label %bb.i, !noalias !611

bb.i:                                             ; preds = %bb.h
  %i.as = landingpad { ptr, i32 }
          cleanup
  %.val.i.i = load ptr, ptr %i.n, align 8, !noalias !611, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs2AodJlUx5rK_5typst(ptr nonnull %.val.i.i) #28
          to label %.thread105 unwind label %bb.j, !noalias !611

bb.j:                                             ; preds = %bb.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !611
  unreachable

bb.k:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  %.sroa.482.15.extract.shift = lshr i64 %i.aw, 56
  %.sroa.482.15.extract.trunc = trunc nuw i64 %.sroa.482.15.extract.shift to i8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst(ptr nonnull %i.av, i8 %.sroa.482.15.extract.trunc) #28
          to label %.thread105 unwind label %bb.l, !noalias !613, !inline_history !0

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i: ; preds = %bb.h
  %i.av = load ptr, ptr %i.n, align 8, !alias.scope !612, !noalias !611, !nonnull !6, !noundef !6 ; 3 uses
  %.promoted.i.i.i = load i64, ptr %i.ar, align 8, !alias.scope !612, !noalias !611 ; 2 uses
  %scevgep.i.i.i = getelementptr nuw i8, ptr %i.av, i64 %.promoted.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %scevgep.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(55) @14, i64 range(i64 54, 56) 55, i1 false), !noalias !614
  %i.aw = add i64 %.promoted.i.i.i, 55            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !611
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aj, i64 noundef 1)
          to label %bb.m unwind label %bb.k, !inline_history !0

bb.l:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !613, !inline_history !0
  unreachable

bb.m:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  %i.ay = load ptr, ptr %i.aj, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.az = load i64, ptr %i.ak, align 8, !noundef !6 ; 2 uses
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.ay, i64 %i.az ; 4 uses
  store i64 1, ptr %i.ba, align 8, !noalias !615
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !615
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %i.av, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !615
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i64 %i.aw, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !615
  %i.bb = add i64 %i.az, 1                        ; 2 uses
  store i64 %i.bb, ptr %i.ak, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.v, %bb.m
  %.val.i66 = phi ptr [ %i.bt, %bb.v ], [ %i.ay, %bb.m ] ; 2 uses
  %i.bc = phi i64 [ %i.bw, %bb.v ], [ %i.bb, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.bd = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_6FileIdNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.v)
          to label %bb.w unwind label %.thread126 ; 9 uses

bb.o:                                             ; preds = %bb.g
  %i.be = load i16, ptr %i.ao, align 1
  %i.bf = xor i16 %i.be, 31092
  %i.bg = getelementptr i8, ptr %i.ao, i64 2
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = zext i8 %i.bh to i16
  %i.bj = xor i16 %i.bi, 112
  %i.bk = or i16 %i.bf, %i.bj
  %i.bl = icmp ne i16 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.cs, label %bb.p

bb.p:                                             ; preds = %bb.g, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.ao, ptr %i.t, align 8, !captures !616
  %i.bo = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.ap, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.s, i8 0, i64 15, i1 false)
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 15 ; 2 uses
  store i8 -128, ptr %.sroa.410.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.t, ptr %i.r, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs2AodJlUx5rK_5typst, ptr %.sroa.414.0..sroa_idx, align 8
  %i.bp = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @16, ptr noundef nonnull @15, ptr noundef nonnull %i.r)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.s) #28
          to label %.thread105 unwind label %bb.ct

bb.r:                                             ; preds = %bb.p
  br i1 %i.bp, label %bb.s, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i38, !prof !9

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #29
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.s
  unreachable

end_hunk_0
begin_hunk_1_@_RNvCs2AodJlUx5rK_5typst22hint_invalid_main_file:bb.a
  %i.cd = getelementptr inbounds i8, ptr %.val46.i.i, i64 -16
  %i.ce = atomicrmw add ptr %i.cd, i64 1 monotonic, align 8, !noalias !622
  %i.cf = icmp slt i64 %i.ce, 0
  br i1 %i.cf, label %bb.aa, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit.i.i, !prof !9

bb.aa:                                            ; preds = %bb.z
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs2AodJlUx5rK_5typst(ptr noundef nonnull %.val46.i.i) #25
          to label %.noexc48 unwind label %.thread126

.noexc48:                                         ; preds = %bb.aa
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit.i.i: ; preds = %bb.x, %bb.z, %bb.y
  %.sroa.06.0.i.i = phi ptr [ %.val46.i.i, %bb.z ], [ inttoptr (i64 16 to ptr), %bb.y ], [ %.val46.i.i, %bb.x ]
  store ptr %.sroa.06.0.i.i, ptr %i.k, align 8, !noalias !622
  %.sroa.58.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.val47.i.i, ptr %.sroa.58.0..sroa_idx9.i.i, align 8, !noalias !622
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bd, i64 39
  %i.ci = load i8, ptr %i.ch, align 1, !alias.scope !623, !noundef !6
  %.not44.i.i = icmp sgt i8 %i.ci, -1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %.val.i.i47 = load ptr, ptr %i.cg, align 8, !alias.scope !623 ; 5 uses
  %.val45.i.i = load i64, ptr %i.cj, align 8, !alias.scope !623
  br i1 %.not44.i.i, label %bb.ab, label %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.ab:                                            ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit.i.i
  %.not.i.i48.i.i = icmp eq ptr %.val.i.i47, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i48.i.i, label %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ck = getelementptr inbounds i8, ptr %.val.i.i47, i64 -16
  %i.cl = atomicrmw add ptr %i.ck, i64 1 monotonic, align 8, !noalias !622
  %i.cm = icmp slt i64 %i.cl, 0
  br i1 %i.cm, label %bb.ad, label %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, !prof !9

bb.ad:                                            ; preds = %bb.ac
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs2AodJlUx5rK_5typst(ptr noundef nonnull %.val.i.i47) #25
          to label %.noexc.i.i unwind label %bb.ae

.noexc.i.i:                                       ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #28
          to label %.thread105 unwind label %bb.af, !noalias !622

bb.af:                                            ; preds = %bb.ae
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !622
  unreachable

_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit.i.i, %bb.ac, %bb.ab
  %.sroa.027.0.i.i = phi ptr [ inttoptr (i64 16 to ptr), %bb.ab ], [ %.val.i.i47, %bb.ac ], [ %.val.i.i47, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit.i.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.cp, i64 12, i1 false), !noalias !624
  %i.cq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !noalias !620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !622
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %.sroa.027.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !620
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 %.val45.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !620
  br label %bb.ag

bb.ag:                                            ; preds = %bb.w, %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i
  %storemerge.i = phi i64 [ 1, %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ 0, %bb.w ]
  store i64 %storemerge.i, ptr %i.m, align 8, !noalias !620
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !620
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  invoke void @_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_11VirtualPath14with_extension(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
          to label %bb.ak unwind label %bb.ah, !noalias !624

bb.ah:                                            ; preds = %bb.ag
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.by, label %bb.ai, label %.thread105

bb.ai:                                            ; preds = %bb.ah
  %i.ct = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax7package11PackageSpecECs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(48) %i.ct)
          to label %.thread105 unwind label %bb.aj, !noalias !624

bb.aj:                                            ; preds = %bb.ai
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !624
  unreachable

bb.ak:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false), !noalias !619
  %i.cv = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !noalias !619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !620
  %i.cw = invoke noundef i16 @_RNvMNtCs5PEMdK7bMAG_12typst_syntax4pathNtB2_10RootedPath6intern(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.p)
          to label %bb.al unwind label %.thread126 ; 3 uses

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %i.cx = load ptr, ptr %0, align 8, !alias.scope !625, !nonnull !6, !noundef !6 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !alias.scope !625, !nonnull !6, !align !12, !noundef !6 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !alias.scope !625, !noundef !6 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !625 ; 2 uses
  %.not.i = icmp eq ptr %i.db, null
  br i1 %.not.i, label %bb.cc, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dd) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !626
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !6, !noalias !626, !nonnull !6
  invoke void %i.df(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.j, ptr noundef nonnull %i.cx, i16 noundef range(i16 1, 0) %i.cw) #30
          to label %.noexc53 unwind label %.thread126, !inline_history !430

.noexc53:                                         ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !626
  store i16 %i.cw, ptr %i.i, align 8, !noalias !626
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 4, ptr %.sroa.41.0..sroa_idx.i, align 4, !noalias !626
  call void @llvm.experimental.noalias.scope.decl(metadata !627)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !628
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 25 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 25 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 25 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 21 uses
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 26 uses
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 14 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 40, i1 false), !noalias !628
  %i.dg = load i32, ptr %i.j, align 8, !range !5, !alias.scope !631, !noalias !626, !noundef !6 ; 6 uses
  %i.dh = icmp ne i32 %i.dg, -1                   ; 3 uses
  %i.di = zext i1 %i.dh to i64                    ; 2 uses
  store i64 8, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !alias.scope !632, !noalias !628
  %i.dj = xor i64 %i.di, 110374107243891
  %i.dk = select i1 %i.dh, i64 -2243131504935184429, i64 -2243131504935184428 ; 2 uses
  %i.dl = call noundef i64 @llvm.fshl.i64(i64 %i.dj, i64 8387220255154660722, i64 16)
  %i.dm = xor i64 %i.dl, %i.dk                    ; 2 uses
  %i.dn = add i64 %i.dm, -2389206912058073146     ; 2 uses
  %i.do = call noundef i64 @llvm.fshl.i64(i64 %i.dm, i64 -8882027881020349520, i64 21)
  %i.dp = xor i64 %i.do, %i.dn                    ; 2 uses
  store i64 %i.dp, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !633, !noalias !628
  %i.dq = add nsw i64 %i.dk, 4148644332920354933  ; 2 uses
  %i.dr = xor i64 %i.dq, -2011800273400728795     ; 3 uses
  store i64 %i.dr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !633, !noalias !628
  %i.ds = call noundef i64 @llvm.fshl.i64(i64 %i.dq, i64 1905512827985170496, i64 32) ; 2 uses
  store i64 %i.ds, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !633, !noalias !628
  %i.dt = xor i64 %i.dn, %i.di                    ; 2 uses
  store i64 %i.dt, ptr %i.h, align 8, !alias.scope !632, !noalias !628
  br i1 %i.dh, label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit.i.i.i.i, label %bb.ca

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit.i.i.i.i: ; preds = %.noexc53
  call void @llvm.experimental.noalias.scope.decl(metadata !634)
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
  %i.du = icmp ne i32 %i.dg, 11
  call void @llvm.assume(i1 %i.du)
  %i.dv = add nsw i32 %i.dg, -5
  %i.dw = icmp samesign ugt i32 %i.dg, 4
  %narrow.i.i.i.i = select i1 %i.dw, i32 %i.dv, i32 6 ; 2 uses
  %i.dx = zext nneg i32 %narrow.i.i.i.i to i64    ; 2 uses
  store i64 16, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !alias.scope !636, !noalias !628
  %i.dy = xor i64 %i.dp, %i.dx                    ; 3 uses
  %i.dz = add nsw i64 %i.dt, %i.dr                ; 3 uses
  %i.ea = call noundef i64 @llvm.fshl.i64(i64 %i.dr, i64 -115655853030513824, i64 13)
  %i.eb = xor i64 %i.dz, %i.ea                    ; 3 uses
  %i.ec = call noundef i64 @llvm.fshl.i64(i64 %i.dz, i64 %i.dz, i64 32)
  %i.ed = add i64 %i.dy, %i.ds                    ; 2 uses
  %i.ee = call noundef i64 @llvm.fshl.i64(i64 %i.dy, i64 %i.dy, i64 16)
  %i.ef = xor i64 %i.ed, %i.ee                    ; 3 uses
  %i.eg = add i64 %i.ef, %i.ec                    ; 2 uses
  %i.eh = call noundef i64 @llvm.fshl.i64(i64 %i.ef, i64 %i.ef, i64 21)
  %i.ei = xor i64 %i.eh, %i.eg                    ; 3 uses
  store i64 %i.ei, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !637, !noalias !628
  %i.ej = add i64 %i.ed, %i.eb                    ; 3 uses
  %i.ek = call noundef i64 @llvm.fshl.i64(i64 %i.eb, i64 %i.eb, i64 17)
  %i.el = xor i64 %i.ej, %i.ek                    ; 7 uses
  store i64 %i.el, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !637, !noalias !628
  %i.em = call noundef i64 @llvm.fshl.i64(i64 %i.ej, i64 %i.ej, i64 32) ; 3 uses
  store i64 %i.em, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !637, !noalias !628
  %i.en = xor i64 %i.eg, %i.dx                    ; 3 uses
  store i64 %i.en, ptr %i.h, align 8, !alias.scope !636, !noalias !628
  switch i32 %narrow.i.i.i.i, label %bb.ce [
    i32 0, label %bb.an
    i32 5, label %bb.bd
    i32 6, label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i
    i32 7, label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit8.i.i.i.i
  ]

bb.an:                                            ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit.i.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !alias.scope !638, !noalias !626, !nonnull !6, !noundef !6 ; 7 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !638, !noalias !626, !noundef !6 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !639)
  call void @llvm.experimental.noalias.scope.decl(metadata !640)
  switch i64 %i.er, label %.lr.ph.preheader.split.i.split.i.i.i.i [
    i64 0, label %.thread.i.i.i.i
    i64 1, label %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i
  ]

.lr.ph.preheader.split.i.split.i.i.i.i:           ; preds = %bb.an
  %i.es = add i64 %i.er, -2                       ; 2 uses
  br label %.lr.ph.i.i.i.i.i

._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i: ; preds = %bb.au
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.fb
  %i.eu = load i8, ptr %i.et, align 1, !alias.scope !639, !noalias !641, !noundef !6
  %i.ev = icmp eq i8 %i.eu, 47
  br i1 %i.ev, label %bb.ao, label %.thread.i.i.i.i

._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i: ; preds = %bb.an
  %3 = load i8, ptr %i.ep, align 1, !alias.scope !639, !noalias !641, !noundef !6
  %4 = icmp eq i8 %3, 47
  %spec.select.i.i.i.i = zext i1 %4 to i64
  br label %.thread.i.i.i.i

bb.ao:                                            ; preds = %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i
  %.not.i.i.i.i52 = icmp ult i64 %i.es, %.sroa.0.1.i.i.i.i.i
  br i1 %.not.i.i.i.i52, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ew = sub nuw i64 %i.fb, %.sroa.0.1.i.i.i.i.i ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.sroa.0.1.i.i.i.i.i
  %i.ey = add i64 %i.ew, %.sroa.012.2.i.i.i.i.i   ; 2 uses
  %i.ez = call noundef i64 @llvm.fshl.i64(i64 %i.ey, i64 %i.ey, i64 62)
  call fastcc void @_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ex, i64 noundef %i.ew) #30, !noalias !641
  br label %bb.aq

.thread.i.i.i.i:                                  ; preds = %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i, %bb.an
  %i.fa = phi i64 [ %i.er, %bb.an ], [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i ], [ %.sroa.012.2.i.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i ] ; 2 uses
  %.sroa.012.3.i.peel.i.i.i.i = phi i64 [ %i.er, %bb.an ], [ %spec.select.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i ], [ %.sroa.0.1.i.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i ] ; 3 uses
  %5 = icmp ult i64 %.sroa.012.3.i.peel.i.i.i.i, %i.er
  br i1 %5, label %bb.at, label %bb.aq

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.au, %.lr.ph.preheader.split.i.split.i.i.i.i
  %.sroa.0.032.i.i.i.i.i = phi i64 [ %.sroa.0.1.i.i.i.i.i, %bb.au ], [ 0, %.lr.ph.preheader.split.i.split.i.i.i.i ] ; 4 uses
  %.sroa.012.031.i.i.i.i.i = phi i64 [ %.sroa.012.2.i.i.i.i.i, %bb.au ], [ 0, %.lr.ph.preheader.split.i.split.i.i.i.i ] ; 3 uses
  %.sroa.019.030.i.i.i.i.i = phi i64 [ %i.fb, %bb.au ], [ 0, %.lr.ph.preheader.split.i.split.i.i.i.i ] ; 5 uses
  %i.fb = add nuw i64 %.sroa.019.030.i.i.i.i.i, 1 ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.sroa.019.030.i.i.i.i.i
  %i.fd = load i8, ptr %i.fc, align 1, !alias.scope !639, !noalias !641, !noundef !6
  %i.fe = icmp eq i8 %i.fd, 47
  br i1 %i.fe, label %bb.av, label %bb.au

bb.aq:                                            ; preds = %bb.at, %.thread.i.i.i.i, %bb.ap, %bb.ao
  %.sroa.012.1.i.i.i.i.i = phi i64 [ %i.go, %bb.at ], [ %i.fa, %.thread.i.i.i.i ], [ %.sroa.012.2.i.i.i.i.i, %bb.ao ], [ %i.ez, %bb.ap ] ; 2 uses
  %i.ff = load i64, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !alias.scope !642, !noalias !628, !noundef !6
  %i.fg = add i64 %i.ff, 8
  store i64 %i.fg, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !alias.scope !642, !noalias !628
  %i.fh = load i64, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !alias.scope !642, !noalias !628, !noundef !6 ; 4 uses
  %i.fi = shl i64 %i.fh, 3                        ; 2 uses
  %i.fj = and i64 %i.fi, 56
  %i.fk = shl i64 %.sroa.012.1.i.i.i.i.i, %i.fj
  %i.fl = load i64, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !alias.scope !642, !noalias !628, !noundef !6
  %i.fm = or i64 %i.fk, %i.fl                     ; 3 uses
  store i64 %i.fm, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !alias.scope !642, !noalias !628
  %i.fn = icmp ugt i64 %i.fh, 8
  br i1 %i.fn, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fo = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !642, !noalias !628, !noundef !6
  %i.fp = xor i64 %i.fo, %i.fm                    ; 3 uses
  %i.fq = load i64, ptr %i.h, align 8, !alias.scope !643, !noalias !628, !noundef !6
  %i.fr = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !643, !noalias !628, !noundef !6 ; 3 uses
  %i.fs = add i64 %i.fr, %i.fq                    ; 3 uses
  %i.ft = call noundef i64 @llvm.fshl.i64(i64 %i.fr, i64 %i.fr, i64 13)
  %i.fu = xor i64 %i.ft, %i.fs                    ; 3 uses
  %i.fv = call noundef i64 @llvm.fshl.i64(i64 %i.fs, i64 %i.fs, i64 32)
  %i.fw = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !643, !noalias !628, !noundef !6
  %i.fx = add i64 %i.fw, %i.fp                    ; 2 uses
  %i.fy = call noundef i64 @llvm.fshl.i64(i64 %i.fp, i64 %i.fp, i64 16)
  %i.fz = xor i64 %i.fx, %i.fy                    ; 3 uses
  %i.ga = add i64 %i.fz, %i.fv                    ; 2 uses
  %i.gb = call noundef i64 @llvm.fshl.i64(i64 %i.fz, i64 %i.fz, i64 21)
  %i.gc = xor i64 %i.gb, %i.ga
  store i64 %i.gc, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !643, !noalias !628
  %i.gd = add i64 %i.fx, %i.fu                    ; 3 uses
  %i.ge = call noundef i64 @llvm.fshl.i64(i64 %i.fu, i64 %i.fu, i64 17)
  %i.gf = xor i64 %i.gd, %i.ge
  store i64 %i.gf, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !643, !noalias !628
  %i.gg = call noundef i64 @llvm.fshl.i64(i64 %i.gd, i64 %i.gd, i64 32)
  store i64 %i.gg, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !643, !noalias !628
  %i.gh = xor i64 %i.ga, %i.fm
  store i64 %i.gh, ptr %i.h, align 8, !alias.scope !642, !noalias !628
  %.not.i.i.i2.i.i.i.i = icmp eq i64 %i.fh, 0
  %i.gi = sub nuw nsw i64 64, %i.fi
  %i.gj = lshr i64 %.sroa.012.1.i.i.i.i.i, %i.gi
  %.sroa.0.0.i.i.i3.i.i.i.i = select i1 %.not.i.i.i2.i.i.i.i, i64 0, i64 %i.gj
  store i64 %.sroa.0.0.i.i.i3.i.i.i.i, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !alias.scope !642, !noalias !628
  br label %bb.ce

bb.as:                                            ; preds = %bb.aq
  %i.gk = add i64 %i.fh, 8
  store i64 %i.gk, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !alias.scope !642, !noalias !628
  br label %bb.ce

bb.at:                                            ; preds = %.thread.i.i.i.i
  %i.gl = sub nuw i64 %i.er, %.sroa.012.3.i.peel.i.i.i.i ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.sroa.012.3.i.peel.i.i.i.i
  %i.gn = add i64 %i.gl, %i.fa                    ; 2 uses
  %i.go = call noundef i64 @llvm.fshl.i64(i64 %i.gn, i64 %i.gn, i64 62)
  call fastcc void @_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gm, i64 noundef %i.gl) #30, !noalias !641
  br label %bb.aq

bb.au:                                            ; preds = %bb.ba, %.lr.ph.i.i.i.i.i
  %.sroa.012.2.i.i.i.i.i = phi i64 [ %.sroa.012.3.i.i.i.i.i, %bb.ba ], [ %.sroa.012.031.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %.sroa.0.1.i.i.i.i.i = phi i64 [ %i.gz, %bb.ba ], [ %.sroa.0.032.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %.sroa.019.030.i.i.i.i.i, %i.es
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !464

bb.av:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.gp = icmp ugt i64 %.sroa.019.030.i.i.i.i.i, %.sroa.0.032.i.i.i.i.i
  br i1 %i.gp, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.ax, %bb.av
  %.sroa.012.3.i.i.i.i.i = phi i64 [ %i.gy, %bb.ax ], [ %.sroa.012.031.i.i.i.i.i, %bb.av ]
  %i.gq = sub nuw i64 %i.er, %i.fb
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.fb ; 2 uses
  %i.gs = icmp eq i64 %i.gq, 1
  %i.gt = load i8, ptr %i.gr, align 1, !alias.scope !639, !noalias !641, !noundef !6
  %i.gu = icmp eq i8 %i.gt, 46                    ; 2 uses
  br i1 %i.gs, label %bb.ay, label %bb.bb

bb.ax:                                            ; preds = %bb.av
  %i.gv = sub nuw i64 %.sroa.019.030.i.i.i.i.i, %.sroa.0.032.i.i.i.i.i ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.sroa.0.032.i.i.i.i.i
  %i.gx = add i64 %i.gv, %.sroa.012.031.i.i.i.i.i ; 2 uses
  %i.gy = call noundef i64 @llvm.fshl.i64(i64 %i.gx, i64 %i.gx, i64 62)
  call fastcc void @_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gw, i64 noundef %i.gv) #30, !noalias !641
  br label %bb.aw

bb.ay:                                            ; preds = %bb.aw
  br i1 %i.gu, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.bc, %bb.bb, %bb.ay
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bc, %bb.az, %bb.ay
  %.sroa.024.0.i.i.i.i.i = phi i64 [ 1, %bb.ay ], [ 0, %bb.az ], [ 1, %bb.bc ]
  %i.gz = add i64 %.sroa.024.0.i.i.i.i.i, %i.fb
  br label %bb.au

bb.bb:                                            ; preds = %bb.aw
  br i1 %i.gu, label %bb.bc, label %bb.az

bb.bc:                                            ; preds = %bb.bb
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gr, i64 1
  %i.hb = load i8, ptr %i.ha, align 1, !alias.scope !639, !noalias !641, !noundef !6
  %i.hc = icmp eq i8 %i.hb, 47
  br i1 %i.hc, label %bb.ba, label %bb.az

bb.bd:                                            ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit.i.i.i.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.j, i64 23
  %i.hf = load i8, ptr %i.he, align 1, !alias.scope !645, !noalias !626, !noundef !6 ; 2 uses
  %.not.i4.i.i.i.i = icmp sgt i8 %i.hf, -1        ; 2 uses
  %i.hg = and i8 %i.hf, 127
  %i.hh = zext nneg i8 %i.hg to i64
  %i.hi = load ptr, ptr %i.hd, align 8, !alias.scope !645, !noalias !626, !nonnull !6
  %i.hj = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.hk = load i64, ptr %i.hj, align 8, !alias.scope !645, !noalias !626
  %.sroa.3.0.i.i.i.i.i = select i1 %.not.i4.i.i.i.i, i64 %i.hk, i64 %i.hh
  %.sroa.0.0.i.i.i.i.i = select i1 %.not.i4.i.i.i.i, ptr %i.hi, ptr %i.hd
  call fastcc void @_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i.i, i64 noundef %.sroa.3.0.i.i.i.i.i) #30, !noalias !626
  %i.hl = load i64, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !alias.scope !646, !noalias !628, !noundef !6
  %i.hm = add i64 %i.hl, 1
  store i64 %i.hm, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !alias.scope !646, !noalias !628
  %i.hn = load i64, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !alias.scope !646, !noalias !628, !noundef !6 ; 4 uses
  %i.ho = sub i64 8, %i.hn                        ; 2 uses
  %i.hp = shl i64 %i.hn, 3
  %i.hq = and i64 %i.hp, 56
  %i.hr = shl nuw i64 255, %i.hq
  %i.hs = load i64, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !alias.scope !646, !noalias !628, !noundef !6
  %i.ht = or i64 %i.hr, %i.hs                     ; 3 uses
  store i64 %i.ht, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !alias.scope !646, !noalias !628
  %i.hu = icmp ugt i64 %i.ho, 1
  br i1 %i.hu, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hv = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !646, !noalias !628, !noundef !6
  %i.hw = xor i64 %i.hv, %i.ht                    ; 3 uses
  %i.hx = load i64, ptr %i.h, align 8, !alias.scope !647, !noalias !628, !noundef !6
  %i.hy = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !647, !noalias !628, !noundef !6 ; 3 uses
  %i.hz = add i64 %i.hy, %i.hx                    ; 3 uses
  %i.ia = call noundef i64 @llvm.fshl.i64(i64 %i.hy, i64 %i.hy, i64 13)
  %i.ib = xor i64 %i.ia, %i.hz                    ; 3 uses
  %i.ic = call noundef i64 @llvm.fshl.i64(i64 %i.hz, i64 %i.hz, i64 32)
  %i.id = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !647, !noalias !628, !noundef !6
  %i.ie = add i64 %i.id, %i.hw                    ; 2 uses
  %i.if = call noundef i64 @llvm.fshl.i64(i64 %i.hw, i64 %i.hw, i64 16)
  %i.ig = xor i64 %i.ie, %i.if                    ; 3 uses
  %i.ih = add i64 %i.ig, %i.ic                    ; 2 uses
  %i.ii = call noundef i64 @llvm.fshl.i64(i64 %i.ig, i64 %i.ig, i64 21)
  %i.ij = xor i64 %i.ii, %i.ih
  store i64 %i.ij, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !647, !noalias !628
  %i.ik = add i64 %i.ie, %i.ib                    ; 3 uses
  %i.il = call noundef i64 @llvm.fshl.i64(i64 %i.ib, i64 %i.ib, i64 17)
  %i.im = xor i64 %i.ik, %i.il
  store i64 %i.im, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !647, !noalias !628
  %i.in = call noundef i64 @llvm.fshl.i64(i64 %i.ik, i64 %i.ik, i64 32)
  store i64 %i.in, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !647, !noalias !628
  %i.io = xor i64 %i.ih, %i.ht
  store i64 %i.io, ptr %i.h, align 8, !alias.scope !646, !noalias !628
  %i.ip = add i64 %i.hn, -7
  %i.iq = shl nuw nsw i64 %i.ho, 3
  %i.ir = lshr i64 255, %i.iq
  store i64 %i.ir, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !alias.scope !646, !noalias !628
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst.exit.i.i.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.is = add i64 %i.hn, 1
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst.exit.i.i.i.i

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst.exit.i.i.i.i: ; preds = %bb.bf, %bb.be
  %.sink.i.i.i.i.i.i.i = phi i64 [ %i.is, %bb.bf ], [ %i.ip, %bb.be ]
  store i64 %.sink.i.i.i.i.i.i.i, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !alias.scope !646, !noalias !628
  br label %bb.ce

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i: ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !648)
  call void @llvm.experimental.noalias.scope.decl(metadata !649)
  %i.it = zext nneg i32 %i.dg to i64              ; 2 uses
  store i64 24, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !alias.scope !650, !noalias !628
  %i.iu = xor i64 %i.ei, %i.it                    ; 3 uses
  %i.iv = add i64 %i.en, %i.el                    ; 3 uses
  %i.iw = call noundef i64 @llvm.fshl.i64(i64 %i.el, i64 %i.el, i64 13)
  %i.ix = xor i64 %i.iv, %i.iw                    ; 3 uses
  %i.iy = call noundef i64 @llvm.fshl.i64(i64 %i.iv, i64 %i.iv, i64 32)
  %i.iz = add i64 %i.iu, %i.em                    ; 2 uses
  %i.ja = call noundef i64 @llvm.fshl.i64(i64 %i.iu, i64 %i.iu, i64 16)
  %i.jb = xor i64 %i.iz, %i.ja                    ; 3 uses
  %i.jc = add i64 %i.jb, %i.iy                    ; 2 uses
  %i.jd = call noundef i64 @llvm.fshl.i64(i64 %i.jb, i64 %i.jb, i64 21)
  %i.je = xor i64 %i.jd, %i.jc                    ; 4 uses
  store i64 %i.je, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !651, !noalias !628
  %i.jf = add i64 %i.iz, %i.ix                    ; 3 uses
  %i.jg = call noundef i64 @llvm.fshl.i64(i64 %i.ix, i64 %i.ix, i64 17)
  %i.jh = xor i64 %i.jf, %i.jg                    ; 10 uses
  store i64 %i.jh, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !651, !noalias !628
  %i.ji = call noundef i64 @llvm.fshl.i64(i64 %i.jf, i64 %i.jf, i64 32) ; 4 uses
  store i64 %i.ji, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !651, !noalias !628
  %i.jj = xor i64 %i.jc, %i.it                    ; 4 uses
  store i64 %i.jj, ptr %i.h, align 8, !alias.scope !650, !noalias !628
  store i64 0, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !alias.scope !650, !noalias !628
  switch i32 %i.dg, label %default.unreachable32.i.i.i.i.i [
    i32 0, label %bb.bg
    i32 1, label %bb.bh
    i32 2, label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit7.i.i.i.i.i
    i32 3, label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit10.i.i.i.i.i
    i32 4, label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit13.i.i.i.i.i
  ]

default.unreachable32.i.i.i.i.i:                  ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i
  unreachable

bb.bg:                                            ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i
  %i.jk = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call fastcc void @_RINvXsF_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB6_11PackageSpecNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jk, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h) #30, !noalias !626
  br label %bb.ce

bb.bh:                                            ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i
  %i.jl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call fastcc void @_RINvXsF_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB6_11PackageSpecNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jl, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h) #30, !noalias !626
  %i.jm = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.jn = load i32, ptr %i.jm, align 4, !alias.scope !652, !noalias !626, !noundef !6
  %i.jo = zext i32 %i.jn to i64                   ; 2 uses
  %i.jp = load i64, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !alias.scope !653, !noalias !628, !noundef !6
  %i.jq = load i64, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !alias.scope !653, !noalias !628, !noundef !6 ; 4 uses
  %i.jr = sub i64 8, %i.jq                        ; 2 uses
  %i.js = shl i64 %i.jq, 3
  %i.jt = and i64 %i.js, 56
  %i.ju = shl i64 %i.jo, %i.jt
  %i.jv = load i64, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !alias.scope !653, !noalias !628, !noundef !6
  %i.jw = or i64 %i.ju, %i.jv                     ; 3 uses
  %i.jx = icmp ugt i64 %i.jr, 4
  br i1 %i.jx, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jy = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !653, !noalias !628, !noundef !6
  %i.jz = xor i64 %i.jy, %i.jw                    ; 3 uses
  %i.ka = load i64, ptr %i.h, align 8, !alias.scope !654, !noalias !628, !noundef !6
  %i.kb = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !654, !noalias !628, !noundef !6 ; 3 uses
  %i.kc = add i64 %i.kb, %i.ka                    ; 3 uses
  %i.kd = call noundef i64 @llvm.fshl.i64(i64 %i.kb, i64 %i.kb, i64 13)
  %i.ke = xor i64 %i.kd, %i.kc                    ; 3 uses
  %i.kf = call noundef i64 @llvm.fshl.i64(i64 %i.kc, i64 %i.kc, i64 32)
  %i.kg = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !654, !noalias !628, !noundef !6
  %i.kh = add i64 %i.kg, %i.jz                    ; 2 uses
  %i.ki = call noundef i64 @llvm.fshl.i64(i64 %i.jz, i64 %i.jz, i64 16)
  %i.kj = xor i64 %i.kh, %i.ki                    ; 3 uses
  %i.kk = add i64 %i.kj, %i.kf                    ; 2 uses
  %i.kl = call noundef i64 @llvm.fshl.i64(i64 %i.kj, i64 %i.kj, i64 21)
  %i.km = xor i64 %i.kl, %i.kk
  store i64 %i.km, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !654, !noalias !628
  %i.kn = add i64 %i.kh, %i.ke                    ; 3 uses
  %i.ko = call noundef i64 @llvm.fshl.i64(i64 %i.ke, i64 %i.ke, i64 17)
  %i.kp = xor i64 %i.kn, %i.ko
  store i64 %i.kp, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !654, !noalias !628
  %i.kq = call noundef i64 @llvm.fshl.i64(i64 %i.kn, i64 %i.kn, i64 32)
  store i64 %i.kq, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !654, !noalias !628
end_hunk_1
begin_hunk_2_@llvm.umin.i64
!444 = distinct !{!444, i1 true, !"_RINvXs1a_NtCsdaEETE4DqmE_13typst_library4diagNtB7_9FileErrorNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs2AodJlUx5rK_5typst"}
!445 = distinct !{!445, !444, !"_RINvXs1a_NtCsdaEETE4DqmE_13typst_library4diagNtB7_9FileErrorNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs2AodJlUx5rK_5typst: argument 0"}
!446 = distinct !{!446, !444, !"_RINvXs1a_NtCsdaEETE4DqmE_13typst_library4diagNtB7_9FileErrorNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs2AodJlUx5rK_5typst: argument 1"}
!447 = distinct !{!447, i1 true, !"_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst"}
!448 = distinct !{!448, !447, !"_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst: argument 0"}
!449 = distinct !{!449, i1 true, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize"}
!450 = distinct !{!450, !449, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize: argument 0"}
!451 = distinct !{!451, i1 true, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writejECs2AodJlUx5rK_5typst"}
!452 = distinct !{!452, !451, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writejECs2AodJlUx5rK_5typst: argument 0"}
!453 = distinct !{!453, i1 true, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!454 = distinct !{!454, !453, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!455 = distinct !{!455, i1 true, !"_RINvXs1h_NtCsaL1QbXo9JQH_3std4pathNtB7_4PathNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs2AodJlUx5rK_5typst"}
!456 = distinct !{!456, !455, !"_RINvXs1h_NtCsaL1QbXo9JQH_3std4pathNtB7_4PathNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs2AodJlUx5rK_5typst: argument 0"}
!457 = distinct !{!457, !455, !"_RINvXs1h_NtCsaL1QbXo9JQH_3std4pathNtB7_4PathNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs2AodJlUx5rK_5typst: argument 1"}
!458 = distinct !{!458, i1 true, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize"}
!459 = distinct !{!459, !458, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize: argument 0"}
!460 = distinct !{!460, i1 true, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writejECs2AodJlUx5rK_5typst"}
!461 = distinct !{!461, !460, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writejECs2AodJlUx5rK_5typst: argument 0"}
!462 = distinct !{!462, i1 true, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!463 = distinct !{!463, !462, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!464 = distinct !{!464, !644}
!465 = distinct !{!465, i1 true, !"_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec8as_slice"}
!466 = distinct !{!466, !465, !"_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec8as_slice: argument 0"}
!467 = distinct !{!467, i1 true, !"_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst"}
!468 = distinct !{!468, !467, !"_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst: argument 0"}
!469 = distinct !{!469, i1 true, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher8write_u8"}
!470 = distinct !{!470, !469, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher8write_u8: argument 0"}
!471 = distinct !{!471, i1 true, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writehECs2AodJlUx5rK_5typst"}
!472 = distinct !{!472, !471, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writehECs2AodJlUx5rK_5typst: argument 0"}
!473 = distinct !{!473, i1 true, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!474 = distinct !{!474, !473, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!475 = distinct !{!475, i1 true, !"_RINvXs1g_NtCsdaEETE4DqmE_13typst_library4diagNtB7_12PackageErrorNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs2AodJlUx5rK_5typst"}
!476 = distinct !{!476, !475, !"_RINvXs1g_NtCsdaEETE4DqmE_13typst_library4diagNtB7_12PackageErrorNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs2AodJlUx5rK_5typst: argument 0"}
!477 = distinct !{!477, !475, !"_RINvXs1g_NtCsdaEETE4DqmE_13typst_library4diagNtB7_12PackageErrorNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs2AodJlUx5rK_5typst: argument 1"}
!478 = distinct !{!478, i1 true, !"_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst"}
!479 = distinct !{!479, !478, !"_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst: argument 0"}
!480 = distinct !{!480, i1 true, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize"}
!481 = distinct !{!481, !480, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize: argument 0"}
!482 = distinct !{!482, i1 true, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writejECs2AodJlUx5rK_5typst"}
!483 = distinct !{!483, !482, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writejECs2AodJlUx5rK_5typst: argument 0"}
!484 = distinct !{!484, i1 true, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!485 = distinct !{!485, !484, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!486 = distinct !{!486, i1 true, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32"}
!487 = distinct !{!487, !486, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32: argument 0"}
!488 = distinct !{!488, i1 true, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writemECs2AodJlUx5rK_5typst"}
!489 = distinct !{!489, !488, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writemECs2AodJlUx5rK_5typst: argument 0"}
!490 = distinct !{!490, i1 true, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!491 = distinct !{!491, !490, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!492 = distinct !{!492, i1 true, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32"}
!493 = distinct !{!493, !492, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32: argument 0"}
!494 = distinct !{!494, i1 true, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writemECs2AodJlUx5rK_5typst"}
!495 = distinct !{!495, !494, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writemECs2AodJlUx5rK_5typst: argument 0"}
!496 = distinct !{!496, i1 true, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!497 = distinct !{!497, !496, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!498 = distinct !{!498, i1 true, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32"}
!499 = distinct !{!499, !498, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32: argument 0"}
!500 = distinct !{!500, i1 true, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writemECs2AodJlUx5rK_5typst"}
!501 = distinct !{!501, !500, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writemECs2AodJlUx5rK_5typst: argument 0"}
!502 = distinct !{!502, i1 true, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!503 = distinct !{!503, !502, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!504 = distinct !{!504, i1 true, !"_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst"}
!505 = distinct !{!505, !504, !"_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst: argument 0"}
!506 = distinct !{!506, i1 true, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize"}
!507 = distinct !{!507, !506, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize: argument 0"}
!508 = distinct !{!508, i1 true, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writejECs2AodJlUx5rK_5typst"}
!509 = distinct !{!509, !508, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writejECs2AodJlUx5rK_5typst: argument 0"}
!510 = distinct !{!510, i1 true, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!511 = distinct !{!511, !510, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!512 = distinct !{!512, i1 true, !"_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst"}
!513 = distinct !{!513, !512, !"_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst: argument 0"}
!514 = distinct !{!514, i1 true, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize"}
!515 = distinct !{!515, !514, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize: argument 0"}
!516 = distinct !{!516, i1 true, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writejECs2AodJlUx5rK_5typst"}
!517 = distinct !{!517, !516, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writejECs2AodJlUx5rK_5typst: argument 0"}
!518 = distinct !{!518, i1 true, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!519 = distinct !{!519, !518, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!520 = distinct !{!520, i1 true, !"_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst"}
!521 = distinct !{!521, !520, !"_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst: argument 0"}
!522 = distinct !{!522, i1 true, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize"}
!523 = distinct !{!523, !522, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize: argument 0"}
!524 = distinct !{!524, i1 true, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writejECs2AodJlUx5rK_5typst"}
!525 = distinct !{!525, !524, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writejECs2AodJlUx5rK_5typst: argument 0"}
!526 = distinct !{!526, i1 true, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!527 = distinct !{!527, !526, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!528 = distinct !{!528, i1 true, !"_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec8as_slice"}
!529 = distinct !{!529, !528, !"_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec8as_slice: argument 0"}
!530 = distinct !{!530, i1 true, !"_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst"}
!531 = distinct !{!531, !530, !"_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst: argument 0"}
!532 = distinct !{!532, i1 true, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher8write_u8"}
!533 = distinct !{!533, !532, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher8write_u8: argument 0"}
!534 = distinct !{!534, i1 true, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writehECs2AodJlUx5rK_5typst"}
!535 = distinct !{!535, !534, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writehECs2AodJlUx5rK_5typst: argument 0"}
!536 = distinct !{!536, i1 true, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!537 = distinct !{!537, !536, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!538 = distinct !{!538, i1 true, !"_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec8as_slice"}
!539 = distinct !{!539, !538, !"_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec8as_slice: argument 0"}
!540 = distinct !{!540, i1 true, !"_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst"}
!541 = distinct !{!541, !540, !"_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst: argument 0"}
!542 = distinct !{!542, i1 true, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher8write_u8"}
!543 = distinct !{!543, !542, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher8write_u8: argument 0"}
!544 = distinct !{!544, i1 true, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writehECs2AodJlUx5rK_5typst"}
!545 = distinct !{!545, !544, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writehECs2AodJlUx5rK_5typst: argument 0"}
!546 = distinct !{!546, i1 true, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!547 = distinct !{!547, !546, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!548 = distinct !{!548, i1 true, !"_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec8as_slice"}
!549 = distinct !{!549, !548, !"_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec8as_slice: argument 0"}
!550 = distinct !{!550, i1 true, !"_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst"}
!551 = distinct !{!551, !550, !"_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst: argument 0"}
!552 = distinct !{!552, i1 true, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher8write_u8"}
!553 = distinct !{!553, !552, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher8write_u8: argument 0"}
!554 = distinct !{!554, i1 true, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writehECs2AodJlUx5rK_5typst"}
!555 = distinct !{!555, !554, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writehECs2AodJlUx5rK_5typst: argument 0"}
!556 = distinct !{!556, i1 true, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!557 = distinct !{!557, !556, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!558 = distinct !{!558, i1 true, !"_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst"}
!559 = distinct !{!559, !558, !"_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst: argument 0"}
!560 = distinct !{!560, i1 true, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize"}
!561 = distinct !{!561, !560, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize: argument 0"}
!562 = distinct !{!562, i1 true, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writejECs2AodJlUx5rK_5typst"}
!563 = distinct !{!563, !562, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writejECs2AodJlUx5rK_5typst: argument 0"}
!564 = distinct !{!564, i1 true, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!565 = distinct !{!565, !564, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!566 = distinct !{!566, i1 true, !"_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec8as_slice"}
!567 = distinct !{!567, !566, !"_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec8as_slice: argument 0"}
!568 = distinct !{!568, i1 true, !"_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst"}
!569 = distinct !{!569, !568, !"_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst: argument 0"}
!570 = distinct !{!570, i1 true, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher8write_u8"}
!571 = distinct !{!571, !570, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher8write_u8: argument 0"}
!572 = distinct !{!572, i1 true, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writehECs2AodJlUx5rK_5typst"}
!573 = distinct !{!573, !572, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writehECs2AodJlUx5rK_5typst: argument 0"}
!574 = distinct !{!574, i1 true, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!575 = distinct !{!575, !574, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!576 = distinct !{!576, i1 true, !"_RINvXs2_NtCs5PEMdK7bMAG_12typst_syntax6sourceNtB6_6SourceNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs2AodJlUx5rK_5typst"}
!577 = distinct !{!577, !576, !"_RINvXs2_NtCs5PEMdK7bMAG_12typst_syntax6sourceNtB6_6SourceNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs2AodJlUx5rK_5typst: argument 0"}
!578 = distinct !{!578, !576, !"_RINvXs2_NtCs5PEMdK7bMAG_12typst_syntax6sourceNtB6_6SourceNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs2AodJlUx5rK_5typst: argument 1"}
!579 = distinct !{!579, i1 true, !"_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtCs5PEMdK7bMAG_12typst_syntax6source11SourceInnerENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs2AodJlUx5rK_5typst"}
!580 = distinct !{!580, !579, !"_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtCs5PEMdK7bMAG_12typst_syntax6source11SourceInnerENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs2AodJlUx5rK_5typst: argument 0"}
!581 = distinct !{null}
!582 = distinct !{!582, i1 true, !"_RINvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtNtCs5PEMdK7bMAG_12typst_syntax6source11SourceInnerECs2AodJlUx5rK_5typst"}
!583 = distinct !{!583, !582, !"_RINvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtNtCs5PEMdK7bMAG_12typst_syntax6source11SourceInnerECs2AodJlUx5rK_5typst: argument 0"}
!584 = distinct !{!584, i1 true, !"_RINvXs4_NtCs5PEMdK7bMAG_12typst_syntax6sourceNtB6_11SourceInnerNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst"}
!585 = distinct !{!585, !584, !"_RINvXs4_NtCs5PEMdK7bMAG_12typst_syntax6sourceNtB6_11SourceInnerNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst: argument 0"}
!586 = distinct !{!586, !584, !"_RINvXs4_NtCs5PEMdK7bMAG_12typst_syntax6sourceNtB6_11SourceInnerNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst: argument 1"}
!587 = distinct !{!587, i1 true, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u16Cs2AodJlUx5rK_5typst"}
!588 = distinct !{!588, !587, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u16Cs2AodJlUx5rK_5typst: argument 0"}
!589 = distinct !{!589, i1 true, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u64Cs2AodJlUx5rK_5typst"}
!590 = distinct !{!590, !589, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u64Cs2AodJlUx5rK_5typst: argument 0"}
!591 = distinct !{!591, i1 true, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst"}
!592 = distinct !{!592, !591, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst: argument 1"}
!593 = distinct !{!593, !591, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst: argument 0"}
!594 = distinct !{!594, i1 true, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher8write_u8Cs2AodJlUx5rK_5typst"}
!595 = distinct !{!595, !594, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher8write_u8Cs2AodJlUx5rK_5typst: argument 0"}
!596 = distinct !{!596, i1 true, !"_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher10write_u128Cs2AodJlUx5rK_5typst"}
!597 = distinct !{!597, !596, !"_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher10write_u128Cs2AodJlUx5rK_5typst: argument 0"}
!598 = distinct !{!598, i1 true, !"_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec10from_slice"}
!599 = distinct !{!599, !598, !"_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec10from_slice: argument 1"}
!600 = distinct !{!600, !598, !"_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec10from_slice: argument 0"}
!601 = distinct !{!601, i1 true, !"_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs2AodJlUx5rK_5typst"}
!602 = distinct !{!602, !601, !"_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs2AodJlUx5rK_5typst: argument 0"}
!603 = distinct !{!603, i1 true, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE17extend_from_sliceCs2AodJlUx5rK_5typst"}
!604 = distinct !{!604, !603, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE17extend_from_sliceCs2AodJlUx5rK_5typst: argument 0"}
!605 = distinct !{!605, i1 true, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst"}
!606 = distinct !{!606, !605, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 1"}
!607 = distinct !{!607, !605, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 0"}
!608 = !{i32 0, i32 13}
!609 = !{!407, !406}
!610 = !{!407}
!611 = !{!412, !410, !409}
!612 = !{!414}
!613 = !{!417, !416}
!614 = !{!414, !410}
!615 = !{!417}
!616 = !{!"address", !"read_provenance"}
!617 = !{!420, !419}
!618 = !{!420}
!619 = !{!422}
!620 = !{!423, !422}
!621 = !{!425}
!622 = !{!426, !425, !423, !422}
!623 = !{!425, !422}
!624 = !{!423}
!625 = !{!428}
!626 = !{!429, !428}
!627 = !{!432}
!628 = !{!432, !429, !428}
!629 = !{!434}
!630 = !{!435}
!631 = !{!434, !432}
!632 = !{!441, !439, !437, !435}
!633 = !{!443, !441, !439, !437, !435}
!634 = !{!445}
!635 = !{!446}
!636 = !{!452, !450, !448, !446, !435}
!637 = !{!454, !452, !450, !448, !446, !435}
!638 = !{!445, !434, !432}
!639 = !{!456}
!640 = !{!457}
!641 = !{!445, !434, !432, !429, !428}
!642 = !{!461, !459, !457, !446, !435}
!643 = !{!463, !461, !459, !457, !446, !435}
!644 = !{!"llvm.loop.peeled.count", i32 1}
!645 = !{!466, !445, !434, !432}
!646 = !{!472, !470, !468, !446, !435}
!647 = !{!474, !472, !470, !468, !446, !435}
!648 = !{!476}
!649 = !{!477}
!650 = !{!483, !481, !479, !477, !446, !435}
!651 = !{!485, !483, !481, !479, !477, !446, !435}
!652 = !{!476, !445, !434, !432}
!653 = !{!489, !487, !477, !446, !435}
!654 = !{!491, !489, !487, !477, !446, !435}
!655 = !{!495, !493, !477, !446, !435}
!656 = !{!497, !495, !493, !477, !446, !435}
!657 = !{!501, !499, !477, !446, !435}
!658 = !{!503, !501, !499, !477, !446, !435}
!659 = !{!509, !507, !505, !477, !446, !435}
!660 = !{!511, !509, !507, !505, !477, !446, !435}
!661 = !{!517, !515, !513, !477, !446, !435}
!662 = !{!519, !517, !515, !513, !477, !446, !435}
!663 = !{!525, !523, !521, !477, !446, !435}
!664 = !{!527, !525, !523, !521, !477, !446, !435}
!665 = !{!529, !476, !445, !434, !432}
!666 = !{!535, !533, !531, !477, !446, !435}
!667 = !{!537, !535, !533, !531, !477, !446, !435}
!668 = !{!539, !476, !445, !434, !432}
!669 = !{!545, !543, !541, !477, !446, !435}
!670 = !{!547, !545, !543, !541, !477, !446, !435}
!671 = !{!549, !476, !445, !434, !432}
!672 = !{!555, !553, !551, !477, !446, !435}
!673 = !{!557, !555, !553, !551, !477, !446, !435}
!674 = !{!563, !561, !559, !446, !435}
!675 = !{!565, !563, !561, !559, !446, !435}
!676 = !{!567, !445, !434, !432}
!677 = !{!573, !571, !569, !446, !435}
!678 = !{!575, !573, !571, !569, !446, !435}
!679 = !{!577}
!680 = !{!577, !434, !432}
!681 = !{!580, !577, !578, !434, !435, !432, !429, !428}
!682 = !{!583}
!683 = !{!583, !580, !577, !578, !434, !435, !432, !429, !428}
!684 = !{!585}
!685 = !{i16 1, i16 0}
!686 = !{!585, !583}
!687 = !{!580, !577, !578, !434, !432, !429, !428}
!688 = !{!588, !585, !586, !583, !580, !577, !578, !434, !435, !432, !429, !428}
!689 = !{!590, !585, !586, !583, !580, !577, !578, !434, !435, !432, !429, !428}
!690 = !{!595, !593, !592, !585, !586, !583, !580, !577, !578, !434, !435, !432, !429, !428}
!691 = !{!597, !580, !577, !578, !434, !435, !432, !429, !428}
!692 = !{!577, !434, !432, !429, !428}
!693 = !{!602, !600, !599}
!694 = !{!604}
!695 = !{!604, !600}
!696 = !{!607, !606}
!697 = !{!607}
!698 = distinct !{!698, i1 true, !"_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst"}
!699 = distinct !{!699, !698, !"_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 0"}
!700 = distinct !{!700, !698, !"_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 1"}
!701 = distinct !{!701, i1 true, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst"}
!702 = distinct !{!702, !701, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 1"}
!703 = distinct !{!703, !701, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 0"}
!704 = distinct !{!704, i1 true, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst"}
!705 = distinct !{!705, !704, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 0"}
!706 = distinct !{!706, !704, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 1"}
!707 = distinct !{!707, i1 true, !"_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic7warningNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst"}
!708 = distinct !{!708, !707, !"_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic7warningNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 0"}
!709 = distinct !{!709, !707, !"_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic7warningNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 1"}
!710 = distinct !{!710, i1 true, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst"}
!711 = distinct !{!711, !710, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 1"}
!712 = distinct !{!712, !710, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 0"}
!713 = distinct !{!713, i1 true, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst"}
!714 = distinct !{!714, !713, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 0"}
!715 = distinct !{!715, !713, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 1"}
!716 = distinct !{!716, i1 true, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst"}
!717 = distinct !{!717, !716, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 0"}
!718 = distinct !{!718, !716, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 1"}
!719 = !{!699}
!720 = !{!700}
!721 = !{!699, !700}
!722 = !{!703, !702}
!723 = !{!703}
!724 = !{!702}
!725 = !{!705}
!726 = !{!705, !706}
!727 = !{!706}
!728 = !{!708}
!729 = !{!709}
!730 = !{!708, !709}
!731 = !{!712, !711}
!732 = !{!712}
!733 = !{!711}
!734 = !{!714}
!735 = !{!714, !715}
!736 = !{!715}
!737 = !{!717}
!738 = !{!717, !718}
!739 = !{!718}
!740 = distinct !{!740, i1 true, !"_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst"}
!741 = distinct !{!741, !740, !"_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 0"}
!742 = distinct !{!742, !740, !"_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 1"}
!743 = distinct !{!743, i1 true, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst"}
!744 = distinct !{!744, !743, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 1"}
!745 = distinct !{!745, !743, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 0"}
!746 = distinct !{!746, i1 true, !"_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic7warningNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst"}
!747 = distinct !{!747, !746, !"_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic7warningNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 0"}
!748 = distinct !{!748, !746, !"_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic7warningNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 1"}
!749 = distinct !{!749, i1 true, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst"}
!750 = distinct !{!750, !749, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 1"}
!751 = distinct !{!751, !749, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 0"}
!752 = distinct !{!752, i1 true, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst"}
!753 = distinct !{!753, !752, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 0"}
!754 = distinct !{!754, !752, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 1"}
!755 = !{!741}
!756 = !{!742}
!757 = !{!741, !742}
!758 = !{!745, !744}
!759 = !{!745}
!760 = !{!744}
!761 = !{!747}
!762 = !{!748}
!763 = !{!747, !748}
!764 = !{!751, !750}
!765 = !{!751}
!766 = !{!750}
!767 = !{!753}
!768 = !{!753, !754}
!769 = !{!754}
!770 = distinct !{null}
!771 = distinct !{!771, i1 true, !"_RNvXsF_NtCs5PEMdK7bMAG_12typst_syntax4spanINtB5_7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB5_8DiagSpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst"}
!772 = distinct !{!772, !771, !"_RNvXsF_NtCs5PEMdK7bMAG_12typst_syntax4spanINtB5_7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB5_8DiagSpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst: argument 1"}
!773 = distinct !{!773, i1 true, !"_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone"}
!774 = distinct !{!774, !773, !"_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 1"}
!775 = distinct !{!775, i1 true, !"_RNvXs0_NtCsakL8LGkl72C_4ecow7dynamicNtB5_10DynamicVecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone"}
!776 = distinct !{!776, !775, !"_RNvXs0_NtCsakL8LGkl72C_4ecow7dynamicNtB5_10DynamicVecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 0"}
!777 = distinct !{!777, !775, !"_RNvXs0_NtCsakL8LGkl72C_4ecow7dynamicNtB5_10DynamicVecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 1"}
!778 = distinct !{!778, i1 true, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB1u_8DiagSpanEEENtNtNtB8_6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst"}
!779 = distinct !{!779, !778, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB1u_8DiagSpanEEENtNtNtB8_6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst: argument 1"}
!780 = distinct !{!780, !778, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB1u_8DiagSpanEEENtNtNtB8_6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst: argument 0"}
!781 = distinct !{!781, !771, !"_RNvXsF_NtCs5PEMdK7bMAG_12typst_syntax4spanINtB5_7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB5_8DiagSpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst: argument 0"}
!782 = distinct !{!782, !773, !"_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 0"}
!783 = distinct !{!783, i1 true, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst"}
!784 = distinct !{!784, !783, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 0"}
!785 = distinct !{!785, !783, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 1"}
!786 = distinct !{null, null}
!787 = !{!772}
!788 = !{!774}
!789 = !{!776}
!790 = !{!777}
!791 = !{!777, !774, !772}
!792 = !{!780, !779}
!793 = !{!777, !776, !774, !772}
!794 = !{!776, !777, !782, !774, !781, !772, !780, !779}
!795 = !{!784}
!796 = !{!785}
!797 = !{!784, !785}
!798 = distinct !{null}
!799 = distinct !{!799, i1 true, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4pushCs2AodJlUx5rK_5typst"}
!800 = distinct !{!800, !799, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4pushCs2AodJlUx5rK_5typst: argument 0"}
!801 = distinct !{!801, !799, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4pushCs2AodJlUx5rK_5typst: argument 1"}
!802 = distinct !{null, null}
!803 = !{i8 0, i8 3}
!804 = !{!800}
!805 = !{!800, !801}
!806 = !{!801}
!807 = distinct !{null}
!808 = distinct !{!808, i1 true, !"_RNvXsa_NtNtCs3oUPovFnLWP_4core5clone5implshNtB7_5Clone5clone"}
!809 = distinct !{!809, !808, !"_RNvXsa_NtNtCs3oUPovFnLWP_4core5clone5implshNtB7_5Clone5clone: argument 0"}
!810 = distinct !{!810, i1 true, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst"}
!811 = distinct !{!811, !810, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst: argument 0"}
!812 = distinct !{!812, i1 true, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE4pushCs2AodJlUx5rK_5typst"}
!813 = distinct !{!813, !812, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE4pushCs2AodJlUx5rK_5typst: argument 0"}
!814 = distinct !{null, null}
!815 = !{!809}
!816 = !{!811}
!817 = !{!813}
!818 = distinct !{!818, i1 true, !"_RNvXCs2AodJlUx5rK_5typstNtCsdaEETE4DqmE_13typst_library7LibraryNtB2_10LibraryExt7builder"}
!819 = distinct !{!819, !818, !"_RNvXCs2AodJlUx5rK_5typstNtCsdaEETE4DqmE_13typst_library7LibraryNtB2_10LibraryExt7builder: argument 0"}
!820 = !{!819}
!821 = distinct !{!821, i1 true, !"_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs2AodJlUx5rK_5typst"}
!822 = distinct !{!822, !821, !"_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs2AodJlUx5rK_5typst: argument 0"}
!823 = distinct !{!823, !821, !"_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs2AodJlUx5rK_5typst: argument 1"}
!824 = distinct !{!824, i1 true, !"_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le"}
!825 = distinct !{!825, !824, !"_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le: argument 0"}
!826 = distinct !{!826, i1 true, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!827 = distinct !{!827, !826, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!828 = distinct !{!828, i1 true, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!829 = distinct !{!829, !828, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!830 = distinct !{!830, i1 true, !"_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le"}
!831 = distinct !{!831, !830, !"_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le: argument 0"}
!832 = !{!822}
!833 = !{!823}
!834 = !{!825, !823}
!835 = !{!827, !822}
!836 = !{!829, !822}
!837 = !{!831, !823}
!838 = distinct !{!838, i1 true, !"_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push"}
!839 = distinct !{!839, !838, !"_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push: argument 0"}
!840 = distinct !{!840, i1 true, !"_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw"}
!841 = distinct !{!841, !840, !"_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw: argument 0"}
!842 = distinct !{!842, i1 true, !"_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec4push"}
!843 = distinct !{!843, !842, !"_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec4push: argument 0"}
!844 = distinct !{!844, i1 true, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE4pushCs2AodJlUx5rK_5typst"}
end_hunk_2
