Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_semantic-8b57ce3c9490ced2.ruff_python_semantic.53ada49ff6bfddb5-cgu.06?download=true
inline.NumInlined: 267
inline.NumDeleted: 142
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvMNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inferenceNtB2_18ResolvedPythonType5union:bb.a
          cleanup
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit.split-lp148, %.loopexit147
  %lpad.phi151 = phi { ptr, i32 } [ %lpad.loopexit149, %.loopexit147 ], [ %lpad.loopexit.split-lp150, %.loopexit.split-lp148 ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB11_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %.thread132 unwind label %bb.x

.lr.ph:                                           ; preds = %bb.ap, %bb.ax
  %i.ec = phi ptr [ %i.fd, %bb.ax ], [ %i.dt, %bb.ap ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  store ptr %i.ed, ptr %.sroa.49.0..sroa_idx, align 8, !alias.scope !254
  %i.ee = load i8, ptr %i.ec, align 1, !range !8, !noalias !254, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs0_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE4keysBT_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
          to label %bb.ar unwind label %.loopexit.split-lp148

._crit_edge:                                      ; preds = %bb.ax, %bb.ap
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB11_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %.thread126 unwind label %bb.ao

.thread126:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ef, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.bc

bb.ar:                                            ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.eg = invoke { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeuENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBQ_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %.noexc82 unwind label %.loopexit.split-lp148

.noexc82:                                         ; preds = %bb.ar
  %i.eh = extractvalue { ptr, ptr } %i.eg, 0      ; 2 uses
  %.not21.not.i62 = icmp eq ptr %i.eh, null
  br i1 %.not21.not.i62, label %.loopexit152, label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %.noexc82
  %i.ei = icmp ne i8 %i.ee, 6
  call void @llvm.assume(i1 %i.ei)
  %i.ej = add nsw i8 %i.ee, -4
  %i.ek = icmp samesign ugt i8 %i.ee, 3
  %narrow.i.i.i.i64 = select i1 %i.ek, i8 %i.ej, i8 2
  br label %bb.as

bb.as:                                            ; preds = %.noexc83, %.lr.ph.i63
  %i.el = phi ptr [ %i.eh, %.lr.ph.i63 ], [ %i.ep, %.noexc83 ]
  %.val6.i65 = load i8, ptr %i.el, align 1, !range !8, !noalias !255, !noundef !4 ; 14 uses
  %i.em = icmp ne i8 %.val6.i65, 6
  call void @llvm.assume(i1 %i.em)
  switch i8 %narrow.i.i.i.i64, label %bb.at [
    i8 0, label %.split.i81
    i8 1, label %.split14.i80
    i8 2, label %bb.au
    i8 3, label %.split10.i74
    i8 4, label %.split9.i73
    i8 5, label %.split8.i72
    i8 6, label %.split18.i71
    i8 7, label %.split17.i70
    i8 8, label %.split13.i69
    i8 9, label %.split15.i66
  ]

bb.at:                                            ; preds = %bb.av, %bb.as
  unreachable

.split.i81:                                       ; preds = %bb.as
  %i.en = icmp eq i8 %.val6.i65, 4
  br i1 %i.en, label %bb.aw, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNCNvMB1e_NtB1e_18ResolvedPythonType5unions0_0E0B1i_.exit.backedge.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNCNvMB1e_NtB1e_18ResolvedPythonType5unions0_0E0B1i_.exit.backedge.i: ; preds = %.split12.i75, %.split11.i76, %.split16.i78, %.split15.i66, %.split13.i69, %.split17.i70, %.split18.i71, %.split8.i72, %.split9.i73, %.split10.i74, %bb.au, %.split14.i80, %.split.i81
  %i.eo = invoke { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeuENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBQ_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %.noexc83 unwind label %.loopexit147

.noexc83:                                         ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNCNvMB1e_NtB1e_18ResolvedPythonType5unions0_0E0B1i_.exit.backedge.i
  %i.ep = extractvalue { ptr, ptr } %i.eo, 0      ; 2 uses
  %.not.not.i67 = icmp eq ptr %i.ep, null
  br i1 %.not.not.i67, label %.loopexit152, label %bb.as

.split14.i80:                                     ; preds = %bb.as
  %i.eq = icmp eq i8 %.val6.i65, 5
  br i1 %i.eq, label %bb.aw, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNCNvMB1e_NtB1e_18ResolvedPythonType5unions0_0E0B1i_.exit.backedge.i

bb.au:                                            ; preds = %bb.as
  %i.er = icmp samesign ult i8 %.val6.i65, 4
  br i1 %i.er, label %bb.av, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNCNvMB1e_NtB1e_18ResolvedPythonType5unions0_0E0B1i_.exit.backedge.i

.split10.i74:                                     ; preds = %bb.as
  %i.es = icmp eq i8 %.val6.i65, 7
  br i1 %i.es, label %bb.aw, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNCNvMB1e_NtB1e_18ResolvedPythonType5unions0_0E0B1i_.exit.backedge.i

.split9.i73:                                      ; preds = %bb.as
  %i.et = icmp eq i8 %.val6.i65, 8
  br i1 %i.et, label %bb.aw, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNCNvMB1e_NtB1e_18ResolvedPythonType5unions0_0E0B1i_.exit.backedge.i

.split8.i72:                                      ; preds = %bb.as
  %i.eu = icmp eq i8 %.val6.i65, 9
  br i1 %i.eu, label %bb.aw, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNCNvMB1e_NtB1e_18ResolvedPythonType5unions0_0E0B1i_.exit.backedge.i

.split18.i71:                                     ; preds = %bb.as
  %i.ev = icmp eq i8 %.val6.i65, 10
  br i1 %i.ev, label %bb.aw, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNCNvMB1e_NtB1e_18ResolvedPythonType5unions0_0E0B1i_.exit.backedge.i

.split17.i70:                                     ; preds = %bb.as
  %i.ew = icmp eq i8 %.val6.i65, 11
  br i1 %i.ew, label %bb.aw, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNCNvMB1e_NtB1e_18ResolvedPythonType5unions0_0E0B1i_.exit.backedge.i

.split13.i69:                                     ; preds = %bb.as
  %i.ex = icmp eq i8 %.val6.i65, 12
  br i1 %i.ex, label %bb.aw, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNCNvMB1e_NtB1e_18ResolvedPythonType5unions0_0E0B1i_.exit.backedge.i

.split15.i66:                                     ; preds = %bb.as
  %i.ey = icmp eq i8 %.val6.i65, 13
  br i1 %i.ey, label %bb.aw, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNCNvMB1e_NtB1e_18ResolvedPythonType5unions0_0E0B1i_.exit.backedge.i

bb.av:                                            ; preds = %bb.au
  switch i8 %i.ee, label %bb.at [
    i8 0, label %.split16.i78
    i8 1, label %.split11.i76
    i8 2, label %.split12.i75
    i8 3, label %bb.aw
  ]

.split16.i78:                                     ; preds = %bb.av
  %.not19.i79 = icmp eq i8 %.val6.i65, 3
  br i1 %.not19.i79, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNCNvMB1e_NtB1e_18ResolvedPythonType5unions0_0E0B1i_.exit.backedge.i, label %bb.aw

.split11.i76:                                     ; preds = %bb.av
  %i.ez = add nsw i8 %.val6.i65, -1
  %switch.selectcmp.i.i.i.i77 = icmp ult i8 %i.ez, 2
  br i1 %switch.selectcmp.i.i.i.i77, label %bb.aw, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNCNvMB1e_NtB1e_18ResolvedPythonType5unions0_0E0B1i_.exit.backedge.i

.split12.i75:                                     ; preds = %bb.av
  %i.fa = icmp eq i8 %.val6.i65, 2
  br i1 %i.fa, label %bb.aw, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNCNvMB1e_NtB1e_18ResolvedPythonType5unions0_0E0B1i_.exit.backedge.i

.loopexit152:                                     ; preds = %.noexc83, %.noexc82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.fb = invoke noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k, i8 noundef %i.ee)
          to label %bb.ax unwind label %.loopexit.split-lp148 ; 0 uses

bb.aw:                                            ; preds = %bb.av, %.split.i81, %.split8.i72, %.split9.i73, %.split10.i74, %.split11.i76, %.split12.i75, %.split13.i69, %.split14.i80, %.split15.i66, %.split16.i78, %.split17.i70, %.split18.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit152, %bb.aw
  %i.fc = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !256, !nonnull !4, !noundef !4
  %i.fd = load ptr, ptr %.sroa.49.0..sroa_idx, align 8, !alias.scope !256, !nonnull !4, !noundef !4 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.fc
  br i1 %i.fe, label %._crit_edge, label %.lr.ph

bb.ay:                                            ; preds = %bb.an, %bb.am
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.j) #20
          to label %.thread132 unwind label %bb.x

bb.az:                                            ; preds = %bb.d
  %i.ff = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ff)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit86 unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fh = load i8, ptr %i.q, align 8, !range !3, !noundef !4
  %i.fi = icmp eq i8 %i.fh, 1
  %i.fj = trunc nuw i8 %.sroa.012.0 to i1
  %or.cond5 = and i1 %i.fi, %i.fj
  br i1 %or.cond5, label %bb.bb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit

bb.bb:                                            ; preds = %bb.ba
  %i.fk = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.fk)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit unwind label %bb.x

bb.bc:                                            ; preds = %.thread126, %bb.bd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret void

bb.bd:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit86
  %i.fl = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.fl)
  br label %bb.bc
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeINtB2_10EquivalentBq_E10equivalentBw_(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #7 {
bb.a:
  %.val = load i8, ptr %0, align 1, !range !8, !noundef !4 ; 4 uses
  %.val1 = load i8, ptr %1, align 1, !range !8, !noundef !4 ; 4 uses
  %i.a = icmp ne i8 %.val, 6
  tail call void @llvm.assume(i1 %i.a)
  %2 = add nsw i8 %.val, -4
  %i.b = icmp samesign ugt i8 %.val, 3
  %narrow.i = select i1 %i.b, i8 %2, i8 2         ; 2 uses
  %i.c = icmp ne i8 %.val1, 6
  tail call void @llvm.assume(i1 %i.c)
  %3 = add nsw i8 %.val1, -4
  %4 = icmp samesign ugt i8 %.val1, 3
  %narrow1.i = select i1 %4, i8 %3, i8 2
  %i.d = icmp eq i8 %narrow.i, %narrow1.i
  br i1 %i.d, label %5, label %_RNvXsc_NtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inferenceNtB5_10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

5:                                                ; preds = %bb.a
  %6 = icmp ne i8 %narrow.i, 2
  %7 = icmp eq i8 %.val, %.val1
  %spec.select.i = or i1 %7, %6
  br label %_RNvXsc_NtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inferenceNtB5_10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXsc_NtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inferenceNtB5_10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %5
  %.sroa.0.0.i = phi i1 [ %spec.select.i, %5 ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inferenceNtB4_18ResolvedPythonTypeINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 3 uses
  %i.b = alloca [40 x i8], align 8                ; 3 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 6 uses
  %i.g = alloca [80 x i8], align 8                ; 10 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 6 uses
  %i.j = alloca [80 x i8], align 8                ; 10 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 6 uses
  %i.m = alloca [80 x i8], align 8                ; 10 uses
  %i.n = alloca [40 x i8], align 8                ; 4 uses
  %i.o = alloca [40 x i8], align 8                ; 6 uses
  %i.p = alloca [80 x i8], align 8                ; 11 uses
  %i.q = alloca [40 x i8], align 8                ; 4 uses
  %i.r = alloca [40 x i8], align 8                ; 6 uses
  %i.s = alloca [80 x i8], align 8                ; 10 uses
  %i.t = alloca [40 x i8], align 8                ; 4 uses
  %i.u = alloca [40 x i8], align 8                ; 6 uses
  %i.v = alloca [80 x i8], align 8                ; 11 uses
  %i.w = alloca [40 x i8], align 8                ; 4 uses
  %i.x = alloca [40 x i8], align 8                ; 6 uses
  %i.y = alloca [80 x i8], align 8                ; 14 uses
  %i.z = alloca [40 x i8], align 8                ; 6 uses
  %i.aa = alloca [40 x i8], align 8               ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ac = alloca [40 x i8], align 8               ; 4 uses
  %i.ad = alloca [40 x i8], align 8               ; 6 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.c, %bb.a
  %.tr133 = phi ptr [ %1, %bb.a ], [ %i.an, %bb.c ] ; 18 uses
  %i.ae = load i32, ptr %.tr133, align 8, !range !277, !noundef !4
  switch i32 %i.ae, label %default.unreachable189 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.k
    i32 10, label %bb.l
    i32 11, label %bb.m
    i32 12, label %bb.f
    i32 13, label %bb.f
    i32 14, label %bb.f
    i32 15, label %bb.f
    i32 16, label %bb.f
    i32 17, label %bb.n
    i32 18, label %bb.o
    i32 19, label %bb.p
    i32 20, label %bb.q
    i32 21, label %bb.r
    i32 22, label %bb.s
    i32 23, label %bb.t
    i32 24, label %bb.u
    i32 25, label %bb.f
    i32 26, label %bb.f
    i32 27, label %bb.f
    i32 28, label %bb.f
    i32 29, label %bb.v
    i32 30, label %bb.w
    i32 31, label %bb.f
    i32 32, label %bb.f
  ]

default.unreachable189:                           ; preds = %tailrecurse, %bb.r, %bb.e, %bb.d
  unreachable

bb.b:                                             ; preds = %tailrecurse
  %i.af = getelementptr inbounds nuw i8, ptr %.tr133, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr133, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ai, 72
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ak = icmp eq i64 %i.ai, 0
  br i1 %i.ak, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeINtNtBc_7convert4FromRB1h_E4fromENtNtNtBa_6traits8iterator8Iterator6reduceNvMB2b_B29_5unionEB2f_.exit.thread, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeINtNtBb_7convert4FromRB1m_E4fromENtNtNtB9_6traits8iterator8Iterator4nextB2k_.exit

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeINtNtBb_7convert4FromRB1m_E4fromENtNtNtB9_6traits8iterator8Iterator4nextB2k_.exit: ; preds = %bb.b
  call void @_RNvXs_NtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inferenceNtB4_18ResolvedPythonTypeINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull align 8 %i.ag), !inline_history !257
  %.sroa.0113.0.copyload114 = load i8, ptr %i.a, align 8 ; 2 uses
  %.not.i = icmp eq i8 %.sroa.0113.0.copyload114, -1
  br i1 %.not.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeINtNtBc_7convert4FromRB1h_E4fromENtNtNtBa_6traits8iterator8Iterator6reduceNvMB2b_B29_5unionEB2f_.exit.thread, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeINtNtBc_7convert4FromRB1h_E4fromENtNtNtBa_6traits8iterator8Iterator6reduceNvMB2b_B29_5unionEB2f_.exit

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeINtNtBc_7convert4FromRB1h_E4fromENtNtNtBa_6traits8iterator8Iterator6reduceNvMB2b_B29_5unionEB2f_.exit.thread: ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeINtNtBb_7convert4FromRB1m_E4fromENtNtNtB9_6traits8iterator8Iterator4nextB2k_.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.x

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeINtNtBc_7convert4FromRB1h_E4fromENtNtNtBa_6traits8iterator8Iterator6reduceNvMB2b_B29_5unionEB2f_.exit: ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeINtNtBb_7convert4FromRB1m_E4fromENtNtNtB9_6traits8iterator8Iterator4nextB2k_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %i.d, i64 39, i1 false)
  store i8 %.sroa.0113.0.copyload114, ptr %i.c, align 8, !noalias !278
  call void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeINtNtBc_7convert4FromRB1n_E4fromENtNtNtBa_6traits8iterator8Iterator4foldB2f_NvMB2h_B2f_5unionEB2l_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noundef nonnull %i.al, ptr noundef nonnull %i.aj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c), !inline_history !260
  %.sroa.0.0.copyload107 = load i8, ptr %i.b, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq i8 %.sroa.0.0.copyload107, -1
  br i1 %.not, label %bb.x, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeEBH_.exit

bb.c:                                             ; preds = %tailrecurse
  %i.am = getelementptr inbounds nuw i8, ptr %.tr133, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  br label %tailrecurse

bb.d:                                             ; preds = %tailrecurse
  %i.ao = getelementptr inbounds nuw i8, ptr %.tr133, i64 8 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr133, i64 36
  %i.aq = load i8, ptr %i.ap, align 4, !range !279, !noundef !4
  switch i8 %i.aq, label %default.unreachable189 [
    i8 0, label %bb.z
    i8 1, label %bb.aa
    i8 2, label %bb.ab
    i8 3, label %bb.ac
    i8 4, label %bb.ad
    i8 5, label %bb.ae
    i8 6, label %bb.af
    i8 7, label %bb.ag
    i8 8, label %bb.ag
    i8 9, label %bb.ag
    i8 10, label %bb.ag
    i8 11, label %bb.ag
    i8 12, label %bb.af
  ]

bb.e:                                             ; preds = %tailrecurse
  %i.ar = getelementptr inbounds nuw i8, ptr %.tr133, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.tr133, i64 28
  %i.at = load i8, ptr %i.as, align 4, !range !3, !noundef !4
  switch i8 %i.at, label %default.unreachable189 [
    i8 0, label %bb.cx
    i8 1, label %bb.cy
    i8 2, label %bb.cz
    i8 3, label %bb.cz
  ]

bb.f:                                             ; preds = %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse
  store i8 2, ptr %0, align 8
  br label %bb.y

bb.g:                                             ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.au = getelementptr inbounds nuw i8, ptr %.tr133, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !4, !noundef !4
  call void @_RNvXs_NtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inferenceNtB4_18ResolvedPythonTypeINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ad, ptr noundef nonnull align 8 %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.aw = getelementptr inbounds nuw i8, ptr %.tr133, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !4, !noundef !4
  invoke void @_RNvXs_NtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inferenceNtB4_18ResolvedPythonTypeINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ac, ptr noundef nonnull align 8 %i.ax)
          to label %bb.dj unwind label %bb.dk

bb.h:                                             ; preds = %tailrecurse
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 9, ptr %i.ay, align 1
  store i8 0, ptr %0, align 8
  br label %bb.y

bb.i:                                             ; preds = %tailrecurse
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 11, ptr %i.az, align 1
  store i8 0, ptr %0, align 8
  br label %bb.y

bb.j:                                             ; preds = %tailrecurse
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 10, ptr %i.ba, align 1
  store i8 0, ptr %0, align 8
  br label %bb.y

bb.k:                                             ; preds = %tailrecurse
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 11, ptr %i.bb, align 1
  store i8 0, ptr %0, align 8
  br label %bb.y

bb.l:                                             ; preds = %tailrecurse
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 9, ptr %i.bc, align 1
  store i8 0, ptr %0, align 8
  br label %bb.y

bb.m:                                             ; preds = %tailrecurse
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 13, ptr %i.bd, align 1
  store i8 0, ptr %0, align 8
  br label %bb.y

bb.n:                                             ; preds = %tailrecurse
end_hunk_0
