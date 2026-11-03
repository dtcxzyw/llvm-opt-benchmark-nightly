Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73518
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 286
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.044.i, i64 32 ; 2 uses
  %i.bn = add nuw nsw i64 %storemerge40.i, 1
  %exitcond.not.i = icmp eq i64 %i.bl, %2
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %_RNvXsG_NtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_exprNtB5_20OrderingRequirementsNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i

bb.n:                                             ; preds = %._crit_edge.i
  store i64 0, ptr %i.j, align 8, !alias.scope !88860
  %i.bo = load i64, ptr %1, align 8, !range !430, !alias.scope !88878, !noundef !409
  %i.bp = icmp eq i64 %i.bo, -1
  br i1 %i.bp, label %_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE11extend_withCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88879)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load ptr, ptr %i.br, align 8, !alias.scope !88879, !nonnull !409, !noundef !409 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i = load i64, ptr %i.bs, align 8, !alias.scope !88879, !noundef !409 ; 4 uses
  %i.bt = icmp eq i64 %.val1.i, 0
  br i1 %i.bt, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr14LexRequirementENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %.lr.ph

bb.p:                                             ; preds = %.lr.ph
  %i.bu = icmp eq i64 %i.bw, %.val1.i
  br i1 %i.bu, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr14LexRequirementENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %bb.p
  %.sroa.0.0.i.i.i72 = phi i64 [ %i.bw, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i.i72
  %i.bw = add nuw nsw i64 %.sroa.0.0.i.i.i72, 1   ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr14LexRequirementECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 dereferenceable(24) %i.bv)
          to label %bb.p unwind label %bb.r, !noalias !88879

bb.q:                                             ; preds = %.lr.ph74
  %i.bx = add nuw nsw i64 %.sroa.0.1.i.i.i73, 1   ; 2 uses
  %i.by = icmp eq i64 %i.bx, %.val1.i
  br i1 %i.by, label %.body.i, label %.lr.ph74

bb.r:                                             ; preds = %.lr.ph
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = icmp eq i64 %i.bw, %.val1.i
  br i1 %i.ca, label %.body.i, label %.lr.ph74

.lr.ph74:                                         ; preds = %bb.r, %bb.q
  %.sroa.0.1.i.i.i73 = phi i64 [ %i.bx, %bb.q ], [ %i.bw, %bb.r ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i.i73
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr14LexRequirementECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 dereferenceable(24) %i.cb) #73
          to label %bb.q unwind label %bb.s, !noalias !88879

bb.s:                                             ; preds = %.lr.ph74
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !88880
  unreachable

.body.i:                                          ; preds = %bb.q, %bb.r
  %.val4.i = load i64, ptr %i.bq, align 8, !range !412, !alias.scope !88879, !noundef !409 ; 2 uses
  %i.cd = icmp eq i64 %.val4.i, 0
  br i1 %i.cd, label %.body, label %bb.t

bb.t:                                             ; preds = %.body.i
  %i.ce = mul nuw i64 %.val4.i, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ce, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !88879
  br label %.body

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr14LexRequirementENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.p, %bb.o
  %.val2.i = load i64, ptr %i.bq, align 8, !range !412, !alias.scope !88879, !noundef !409 ; 2 uses
  %i.cf = icmp eq i64 %.val2.i, 0
  br i1 %i.cf, label %_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE11extend_withCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.u

bb.u:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr14LexRequirementENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.cg = mul nuw i64 %.val2.i, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.cg, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !88879
  br label %_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE11extend_withCsfR8GmIBoxTX_21lance_namespace_impls.exit

._crit_edge.thread.i.loopexit.unr-lcssa:          ; preds = %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread.i, label %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.epil.preheader

_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.epil.preheader: ; preds = %._crit_edge.thread.i.loopexit.unr-lcssa, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.preheader
  %.sroa.0.044.us.i.epil.init = phi ptr [ %.sroa.10.0.i, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.preheader ], [ %i.ac, %._crit_edge.thread.i.loopexit.unr-lcssa ]
  %lcmp.mod90 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod90)
  br label %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.epil

_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.epil: ; preds = %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.epil, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.epil.preheader
  %.sroa.0.044.us.i.epil = phi ptr [ %i.ch, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.epil ], [ %.sroa.0.044.us.i.epil.init, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.epil ], [ 0, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88863)
  store i64 -1, ptr %.sroa.0.044.us.i.epil, align 8, !noalias !88864
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.044.us.i.epil, i64 32 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i, label %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.epil, !llvm.loop !88856

._crit_edge.thread.i:                             ; preds = %.noexc14.loopexit.i, %_RNvXsG_NtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_exprNtB5_20OrderingRequirementsNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.us.i, %._crit_edge.thread.i.loopexit.unr-lcssa, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.epil, %._crit_edge.i
  %.sroa.0.0.lcssa83.i = phi ptr [ %.sroa.10.0.i, %._crit_edge.i ], [ %i.af, %_RNvXsG_NtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_exprNtB5_20OrderingRequirementsNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.us.i ], [ %i.ch, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.epil ], [ %i.ac, %._crit_edge.thread.i.loopexit.unr-lcssa ], [ %i.bm, %.noexc14.loopexit.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.lcssa83.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !88860
  store i64 %2, ptr %i.j, align 8, !alias.scope !88860
  br label %_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE11extend_withCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.v:                                             ; preds = %bb.e
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.x
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !88864
  unreachable

bb.x:                                             ; preds = %bb.m, %bb.v
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ci, %bb.v ], [ %i.bk, %bb.m ]
  store i64 %storemerge40.i, ptr %i.j, align 8, !alias.scope !88860
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr14LexRequirementEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 dereferenceable(24) %i.ck)
          to label %.body unwind label %bb.w, !noalias !88860

.body:                                            ; preds = %bb.t, %.body.i, %bb.x
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body.i, %bb.x ], [ %i.bz, %.body.i ], [ %i.bz, %bb.t ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.b) #73
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.y

_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE11extend_withCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %._crit_edge.thread.i, %bb.n, %bb.u, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr14LexRequirementENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.y:                                             ; preds = %bb.aa, %.body
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.z, %bb.aa, %.body
  %.pn10 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.cm, %bb.aa ], [ %i.cm, %bb.z ]
  resume { ptr, i32 } %.pn10

bb.z:                                             ; preds = %bb.d
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load i64, ptr %1, align 8, !range !430, !alias.scope !88881, !noundef !409
  %i.co = icmp eq i64 %i.cn, -1
  br i1 %i.co, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr14LexRequirementEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 dereferenceable(24) %i.cp)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.y
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef range(i64 0, 1152921504606846976) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = mul i64 %2, 24                           ; 3 uses
  %or.cond.i.i = icmp samesign ugt i64 %2, 384307168202282325
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !434

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !88906
  %i.d = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, 17) 8) #68, !noalias !88906 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.b) #72
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.d
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.d, %bb.c ] ; 13 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %2, %bb.c ] ; 2 uses
  %i.f = icmp samesign ule i64 %2, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.f)
  store i64 %.sroa.4.0.i, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.10.0.i, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88908)
  %i.i = icmp samesign ugt i64 %2, 1
  br i1 %i.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.j = load i64, ptr %1, align 8, !range !522, !alias.scope !88909, !noundef !409 ; 3 uses
  %i.k = xor i64 %i.j, -9223372036854775808
  %i.l = icmp slt i64 %i.j, 0
  %i.m = select i1 %i.l, i64 %i.k, i64 2          ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.n, align 8, !alias.scope !88908, !nonnull !409 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i = load i64, ptr %i.o, align 8, !alias.scope !88908
  %.val1.i.fr.i = freeze i64 %.val1.i.i           ; 6 uses
  %i.p = shl nuw nsw i64 %.val1.i.fr.i, 4         ; 2 uses
  %i.q = icmp eq i64 %.val1.i.fr.i, 0
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i, i64 %.val1.i.fr.i
  %switch.i = icmp ult i64 %i.m, 3
  tail call void @llvm.assume(i1 %switch.i)
  br i1 %i.q, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i.preheader.new, label %.lr.ph.split.i

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i.preheader.new: ; preds = %.lr.ph.i
  switch i64 %i.m, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.preheader.a [
    i64 0, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.preheader
    i64 1, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.preheader
  ]

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.preheader: ; preds = %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i.preheader.new
  %i.s = sub nsw i64 %2, %i.m
  %xtraiter85 = and i64 %i.s, 3                   ; 2 uses
  %lcmp.mod86.not = icmp eq i64 %xtraiter85, 0
  br i1 %lcmp.mod86.not, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.prol.loopexit, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.prol

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.prol: ; preds = %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.preheader, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.prol
  %.sroa.0.033.us.us86.i.prol = phi ptr [ %i.u, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.prol ], [ %.sroa.10.0.i, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.preheader ] ; 4 uses
  %.sroa.03.032.us.us87.i.prol = phi i64 [ %i.t, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.prol ], [ %i.m, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.preheader ]
  %prol.iter87 = phi i64 [ %prol.iter87.next, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.prol ], [ 0, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88910)
  %i.t = add nuw nsw i64 %.sroa.03.032.us.us87.i.prol, 1 ; 2 uses
  store i64 -9223372036854775807, ptr %.sroa.0.033.us.us86.i.prol, align 8, !noalias !88911
  %.sroa.6.0..sroa.0.0.sroa_idx.us.us91.i.prol = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us86.i.prol, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa.0.0.sroa_idx.us.us91.i.prol, align 8, !noalias !88911
  %.sroa.723.0..sroa.0.0.sroa_idx.us.us92.i.prol = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us86.i.prol, i64 16
  store i64 0, ptr %.sroa.723.0..sroa.0.0.sroa_idx.us.us92.i.prol, align 8, !noalias !88911
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us86.i.prol, i64 24 ; 3 uses
  %prol.iter87.next = add i64 %prol.iter87, 1     ; 2 uses
  %prol.iter87.cmp.not = icmp eq i64 %prol.iter87.next, %xtraiter85
  br i1 %prol.iter87.cmp.not, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.prol.loopexit, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.prol, !llvm.loop !88889

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.prol.loopexit: ; preds = %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.prol, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.preheader
  %.lcssa63.unr = phi ptr [ poison, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.preheader ], [ %i.u, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.prol ]
  %.sroa.0.033.us.us86.i.unr = phi ptr [ %.sroa.10.0.i, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.preheader ], [ %i.u, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.prol ]
  %.sroa.03.032.us.us87.i.unr = phi i64 [ %i.m, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.preheader ], [ %i.t, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.prol ]
  %i.v = sub nsw i64 %i.m, %2
  %i.w = icmp ugt i64 %i.v, -4
  br i1 %i.w, label %._crit_edge.thread.i, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.preheader: ; preds = %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i.preheader.new
  %3 = add nsw i64 %2, -1                         ; 2 uses
  %4 = add nsw i64 %2, -2
  %xtraiter81 = and i64 %3, 3                     ; 3 uses
  %5 = icmp ult i64 %4, 3
  br i1 %5, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i.epil.preheader, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.preheader.new

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.preheader.new: ; preds = %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.preheader
  %unroll_iter86 = and i64 %3, -4
  br label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.preheader.a: ; preds = %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i.preheader.new
  %i.x = add nsw i64 %2, -1                       ; 2 uses
  %i.y = add nsw i64 %2, -2
  %xtraiter88 = and i64 %i.x, 3                   ; 3 uses
  %i.z = icmp ult i64 %i.y, 3
  br i1 %i.z, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.epil.preheader.a, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.preheader.new.a

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.preheader.new.a: ; preds = %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.preheader.a
  %unroll_iter93 = and i64 %i.x, -4
  br label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i: ; preds = %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.preheader.new
  %.sroa.0.033.us.us.i = phi ptr [ %.sroa.10.0.i, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.preheader.new ], [ %i.ad, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i ] ; 13 uses
  %niter94.a = phi i64 [ 0, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.preheader.new ], [ %niter94.next.3.a, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88910)
  store i64 -9223372036854775808, ptr %.sroa.0.033.us.us.i, align 8, !noalias !88911
  %.sroa.6.0..sroa.0.0.sroa_idx.us.us.i = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa.0.0.sroa_idx.us.us.i, align 8, !noalias !88911
  %.sroa.723.0..sroa.0.0.sroa_idx.us.us.i = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i, i64 16
  store i64 0, ptr %.sroa.723.0..sroa.0.0.sroa_idx.us.us.i, align 8, !noalias !88911
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i, i64 24
  store i64 -9223372036854775808, ptr %i.aa, align 8, !noalias !88911
  %.sroa.6.0..sroa.0.0.sroa_idx.us.us.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa.0.0.sroa_idx.us.us.i.1, align 8, !noalias !88911
  %.sroa.723.0..sroa.0.0.sroa_idx.us.us.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i, i64 40
  store i64 0, ptr %.sroa.723.0..sroa.0.0.sroa_idx.us.us.i.1, align 8, !noalias !88911
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i, i64 48
  store i64 -9223372036854775808, ptr %i.ab, align 8, !noalias !88911
  %.sroa.6.0..sroa.0.0.sroa_idx.us.us.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa.0.0.sroa_idx.us.us.i.2, align 8, !noalias !88911
  %.sroa.723.0..sroa.0.0.sroa_idx.us.us.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i, i64 64
  store i64 0, ptr %.sroa.723.0..sroa.0.0.sroa_idx.us.us.i.2, align 8, !noalias !88911
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i, i64 72
  store i64 -9223372036854775808, ptr %i.ac, align 8, !noalias !88911
  %.sroa.6.0..sroa.0.0.sroa_idx.us.us.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa.0.0.sroa_idx.us.us.i.3, align 8, !noalias !88911
  %.sroa.723.0..sroa.0.0.sroa_idx.us.us.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i, i64 88
  store i64 0, ptr %.sroa.723.0..sroa.0.0.sroa_idx.us.us.i.3, align 8, !noalias !88911
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i, i64 96 ; 3 uses
  %niter94.next.3.a = add i64 %niter94.a, 4       ; 2 uses
  %niter94.ncmp.3.a = icmp eq i64 %niter94.next.3.a, %unroll_iter86
  br i1 %niter94.ncmp.3.a, label %._crit_edge.thread.i.loopexit64.unr-lcssa, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i: ; preds = %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.prol.loopexit, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i
  %.sroa.0.033.us.us86.i = phi ptr [ %i.ai, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i ], [ %.sroa.0.033.us.us86.i.unr, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.prol.loopexit ] ; 13 uses
  %.sroa.03.032.us.us87.i = phi i64 [ %i.ah, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i ], [ %.sroa.03.032.us.us87.i.unr, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.prol.loopexit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88910)
  store i64 -9223372036854775807, ptr %.sroa.0.033.us.us86.i, align 8, !noalias !88911
  %.sroa.6.0..sroa.0.0.sroa_idx.us.us91.i = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us86.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa.0.0.sroa_idx.us.us91.i, align 8, !noalias !88911
  %.sroa.723.0..sroa.0.0.sroa_idx.us.us92.i = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us86.i, i64 16
  store i64 0, ptr %.sroa.723.0..sroa.0.0.sroa_idx.us.us92.i, align 8, !noalias !88911
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us86.i, i64 24
  store i64 -9223372036854775807, ptr %i.ae, align 8, !noalias !88911
  %.sroa.6.0..sroa.0.0.sroa_idx.us.us91.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us86.i, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa.0.0.sroa_idx.us.us91.i.1, align 8, !noalias !88911
  %.sroa.723.0..sroa.0.0.sroa_idx.us.us92.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us86.i, i64 40
  store i64 0, ptr %.sroa.723.0..sroa.0.0.sroa_idx.us.us92.i.1, align 8, !noalias !88911
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us86.i, i64 48
  store i64 -9223372036854775807, ptr %i.af, align 8, !noalias !88911
  %.sroa.6.0..sroa.0.0.sroa_idx.us.us91.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us86.i, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa.0.0.sroa_idx.us.us91.i.2, align 8, !noalias !88911
  %.sroa.723.0..sroa.0.0.sroa_idx.us.us92.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us86.i, i64 64
  store i64 0, ptr %.sroa.723.0..sroa.0.0.sroa_idx.us.us92.i.2, align 8, !noalias !88911
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us86.i, i64 72
  %i.ah = add nuw nsw i64 %.sroa.03.032.us.us87.i, 4 ; 2 uses
  store i64 -9223372036854775807, ptr %i.ag, align 8, !noalias !88911
  %.sroa.6.0..sroa.0.0.sroa_idx.us.us91.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us86.i, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa.0.0.sroa_idx.us.us91.i.3, align 8, !noalias !88911
  %.sroa.723.0..sroa.0.0.sroa_idx.us.us92.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us86.i, i64 88
  store i64 0, ptr %.sroa.723.0..sroa.0.0.sroa_idx.us.us92.i.3, align 8, !noalias !88911
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us86.i, i64 96 ; 2 uses
  %exitcond130.not.i.3 = icmp eq i64 %i.ah, %2
  br i1 %exitcond130.not.i.3, label %._crit_edge.thread.i, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i: ; preds = %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.preheader.new.a
  %.sroa.0.033.us.us98.i = phi ptr [ %.sroa.10.0.i, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.preheader.new.a ], [ %i.am, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i ] ; 13 uses
  %niter84 = phi i64 [ 0, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.preheader.new.a ], [ %niter84.next.3, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88912)
  store i64 0, ptr %.sroa.0.033.us.us98.i, align 8, !noalias !88911
  %.sroa.6.0..sroa.0.0.sroa_idx.us.us103.i = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us98.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa.0.0.sroa_idx.us.us103.i, align 8, !noalias !88911
  %.sroa.723.0..sroa.0.0.sroa_idx.us.us104.i = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us98.i, i64 16
  store i64 0, ptr %.sroa.723.0..sroa.0.0.sroa_idx.us.us104.i, align 8, !noalias !88911
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us98.i, i64 24
  store i64 0, ptr %i.aj, align 8, !noalias !88911
  %.sroa.6.0..sroa.0.0.sroa_idx.us.us103.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us98.i, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa.0.0.sroa_idx.us.us103.i.1, align 8, !noalias !88911
  %.sroa.723.0..sroa.0.0.sroa_idx.us.us104.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us98.i, i64 40
  store i64 0, ptr %.sroa.723.0..sroa.0.0.sroa_idx.us.us104.i.1, align 8, !noalias !88911
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us98.i, i64 48
  store i64 0, ptr %i.ak, align 8, !noalias !88911
  %.sroa.6.0..sroa.0.0.sroa_idx.us.us103.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us98.i, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa.0.0.sroa_idx.us.us103.i.2, align 8, !noalias !88911
  %.sroa.723.0..sroa.0.0.sroa_idx.us.us104.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us98.i, i64 64
  store i64 0, ptr %.sroa.723.0..sroa.0.0.sroa_idx.us.us104.i.2, align 8, !noalias !88911
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us98.i, i64 72
  store i64 0, ptr %i.al, align 8, !noalias !88911
  %.sroa.6.0..sroa.0.0.sroa_idx.us.us103.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us98.i, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa.0.0.sroa_idx.us.us103.i.3, align 8, !noalias !88911
  %.sroa.723.0..sroa.0.0.sroa_idx.us.us104.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us98.i, i64 88
  store i64 0, ptr %.sroa.723.0..sroa.0.0.sroa_idx.us.us104.i.3, align 8, !noalias !88911
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us98.i, i64 96 ; 3 uses
  %niter84.next.3 = add i64 %niter84, 4           ; 2 uses
  %niter84.ncmp.3 = icmp eq i64 %niter84.next.3, %unroll_iter93
  br i1 %niter84.ncmp.3, label %._crit_edge.thread.i.loopexit.unr-lcssa, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  switch i64 %i.m, label %.lr.ph.split.split.us63.i [
    i64 0, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.preheader
    i64 1, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.preheader
  ]

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.preheader: ; preds = %.lr.ph.split.i
  %i.an = sub nsw i64 %2, %i.m
  %xtraiter = and i64 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.prol.loopexit, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.prol

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.prol: ; preds = %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.preheader, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.prol
  %.sroa.0.033.us50.i.prol = phi ptr [ %i.ap, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.prol ], [ %.sroa.10.0.i, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.preheader ] ; 2 uses
  %.sroa.03.032.us51.i.prol = phi i64 [ %i.ao, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.prol ], [ %i.m, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.prol ], [ 0, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88910)
  %i.ao = add nuw nsw i64 %.sroa.03.032.us51.i.prol, 1 ; 2 uses
  store i64 -9223372036854775807, ptr %.sroa.0.033.us50.i.prol, align 8, !noalias !88911
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us50.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.prol.loopexit, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.prol, !llvm.loop !88892

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.prol.loopexit: ; preds = %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.prol, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.preheader
  %.lcssa69.unr = phi ptr [ poison, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.preheader ], [ %i.ap, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.prol ]
  %.sroa.0.033.us50.i.unr = phi ptr [ %.sroa.10.0.i, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.preheader ], [ %i.ap, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.prol ]
  %.sroa.03.032.us51.i.unr = phi i64 [ %i.m, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.preheader ], [ %i.ao, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.prol ]
  %i.aq = sub nsw i64 %i.m, %2
  %i.ar = icmp ugt i64 %i.aq, -8
  br i1 %i.ar, label %._crit_edge.thread.i, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.preheader: ; preds = %.lr.ph.split.i
  %i.as = add nsw i64 %2, -1                      ; 2 uses
  %i.at = add nsw i64 %2, -2
  %xtraiter74 = and i64 %i.as, 7                  ; 3 uses
  %i.au = icmp ult i64 %i.at, 7
  br i1 %i.au, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.epil.preheader, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.preheader.new

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.preheader.new: ; preds = %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.preheader
  %unroll_iter = and i64 %i.as, -8
  br label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i: ; preds = %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.preheader.new
  %.sroa.0.033.us36.i = phi ptr [ %.sroa.10.0.i, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.preheader.new ], [ %i.bc, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i ] ; 9 uses
  %niter = phi i64 [ 0, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.preheader.new ], [ %niter.next.7, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88910)
  store i64 -9223372036854775808, ptr %.sroa.0.033.us36.i, align 8, !noalias !88911
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us36.i, i64 24
  store i64 -9223372036854775808, ptr %i.av, align 8, !noalias !88911
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us36.i, i64 48
  store i64 -9223372036854775808, ptr %i.aw, align 8, !noalias !88911
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us36.i, i64 72
  store i64 -9223372036854775808, ptr %i.ax, align 8, !noalias !88911
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us36.i, i64 96
  store i64 -9223372036854775808, ptr %i.ay, align 8, !noalias !88911
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us36.i, i64 120
  store i64 -9223372036854775808, ptr %i.az, align 8, !noalias !88911
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us36.i, i64 144
  store i64 -9223372036854775808, ptr %i.ba, align 8, !noalias !88911
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us36.i, i64 168
  store i64 -9223372036854775808, ptr %i.bb, align 8, !noalias !88911
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us36.i, i64 192 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.thread.i.loopexit66.unr-lcssa, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i: ; preds = %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.prol.loopexit, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i
  %.sroa.0.033.us50.i = phi ptr [ %i.bl, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i ], [ %.sroa.0.033.us50.i.unr, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.prol.loopexit ] ; 9 uses
  %.sroa.03.032.us51.i = phi i64 [ %i.bk, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i ], [ %.sroa.03.032.us51.i.unr, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.prol.loopexit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88910)
  store i64 -9223372036854775807, ptr %.sroa.0.033.us50.i, align 8, !noalias !88911
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us50.i, i64 24
  store i64 -9223372036854775807, ptr %i.bd, align 8, !noalias !88911
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us50.i, i64 48
  store i64 -9223372036854775807, ptr %i.be, align 8, !noalias !88911
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us50.i, i64 72
  store i64 -9223372036854775807, ptr %i.bf, align 8, !noalias !88911
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us50.i, i64 96
  store i64 -9223372036854775807, ptr %i.bg, align 8, !noalias !88911
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us50.i, i64 120
  store i64 -9223372036854775807, ptr %i.bh, align 8, !noalias !88911
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us50.i, i64 144
  store i64 -9223372036854775807, ptr %i.bi, align 8, !noalias !88911
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us50.i, i64 168
  %i.bk = add nuw nsw i64 %.sroa.03.032.us51.i, 8 ; 2 uses
  store i64 -9223372036854775807, ptr %i.bj, align 8, !noalias !88911
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us50.i, i64 192 ; 2 uses
  %exitcond127.not.i.7 = icmp eq i64 %i.bk, %2
  br i1 %exitcond127.not.i.7, label %._crit_edge.thread.i, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.g, label %._crit_edge.thread.i

.lr.ph.split.split.us63.i:                        ; preds = %.lr.ph.split.i, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.loopexit.i
  %.sroa.0.033.us64.i = phi ptr [ %9, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.loopexit.i ], [ %.sroa.10.0.i, %.lr.ph.split.i ] ; 4 uses
  %.sroa.03.032.us65.i = phi i64 [ %8, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.loopexit.i ], [ 1, %.lr.ph.split.i ]
  %storemerge31.us66.i = phi i64 [ %10, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.loopexit.i ], [ 0, %.lr.ph.split.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88912)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !88913
  %i.bm = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef range(i64 1, 17) 8) #68, !noalias !88913 ; 3 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %6, label %.lr.ph.i.i.i.us.i

6:                                                ; preds = %.lr.ph.split.split.us63.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.p) #72
          to label %.noexc14.i unwind label %bb.j, !noalias !88911

.noexc14.i:                                       ; preds = %6
  unreachable

.lr.ph.i.i.i.us.i:                                ; preds = %.lr.ph.split.split.us63.i, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.loopexit.us.i
  %.sroa.014.024.i.i.i.us.i = phi ptr [ %.sroa.6.0..sroa.0.0.sroa_idx.us71.i, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.loopexit.us.i ], [ %.val.i.i, %.lr.ph.split.split.us63.i ] ; 4 uses
  %.sroa.7.023.i.i.i.us.i = phi i64 [ %i.bt, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.loopexit.us.i ], [ 0, %.lr.ph.split.split.us63.i ] ; 2 uses
  %.sroa.10.022.i.i.i.us.i = phi i64 [ %i.bo, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.loopexit.us.i ], [ %.val1.i.fr.i, %.lr.ph.split.split.us63.i ]
  %i.bo = add nsw i64 %.sroa.10.022.i.i.i.us.i, -1 ; 2 uses
  %i.bp = icmp eq ptr %.sroa.014.024.i.i.i.us.i, %i.r
  br i1 %i.bp, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.loopexit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.us.i
  %.val12.i.i.i.us.i = load ptr, ptr %.sroa.014.024.i.i.i.us.i, align 8, !alias.scope !88912, !noalias !88914, !nonnull !409, !noundef !409 ; 2 uses
  %i.bq = getelementptr i8, ptr %.sroa.014.024.i.i.i.us.i, i64 8
  %.val13.i.i.i.us.i = load ptr, ptr %i.bq, align 8, !alias.scope !88912, !noalias !88914 ; 2 uses
  %i.br = atomicrmw add ptr %.val12.i.i.i.us.i, i64 1 monotonic, align 8, !noalias !88915
  %i.bs = icmp slt i64 %i.br, 0
  br i1 %i.bs, label %bb.f, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.loopexit.us.i

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.loopexit.us.i: ; preds = %bb.e
  %i.bt = add nuw nsw i64 %.sroa.7.023.i.i.i.us.i, 1
  %.sroa.6.0..sroa.0.0.sroa_idx.us71.i = getelementptr inbounds nuw i8, ptr %.sroa.014.024.i.i.i.us.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i.i.i.us.i) ]
  %7 = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %.sroa.7.023.i.i.i.us.i ; 2 uses
  store ptr %.val12.i.i.i.us.i, ptr %7, align 8, !noalias !88915
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.val13.i.i.i.us.i, ptr %i.bu, align 8, !noalias !88915
  %exitcond.not.i = icmp eq i64 %i.bo, 0
  br i1 %exitcond.not.i, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.loopexit.i, label %.lr.ph.i.i.i.us.i

bb.g:                                             ; preds = %._crit_edge.i
  store i64 0, ptr %i.h, align 8, !alias.scope !88907
  %i.bv = load i64, ptr %1, align 8, !range !522, !alias.scope !88916, !noundef !409
  %switch1.i.i = icmp slt i64 %i.bv, -9223372036854775806
  br i1 %switch1.i.i, label %_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionE11extend_withCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %1)
          to label %_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionE11extend_withCsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.l

._crit_edge.thread.i.loopexit.unr-lcssa:          ; preds = %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i
  %lcmp.mod90.not = icmp eq i64 %xtraiter88, 0
  br i1 %lcmp.mod90.not, label %._crit_edge.thread.i, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.epil.preheader.a

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.epil.preheader.a: ; preds = %._crit_edge.thread.i.loopexit.unr-lcssa, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.preheader.a
  %.sroa.0.033.us.us.i.epil.init.a = phi ptr [ %.sroa.10.0.i, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.preheader.a ], [ %i.am, %._crit_edge.thread.i.loopexit.unr-lcssa ]
  %lcmp.mod92 = icmp ne i64 %xtraiter88, 0
  tail call void @llvm.assume(i1 %lcmp.mod92)
  br label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.epil.a

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.epil.a: ; preds = %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.epil.a, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.epil.preheader.a
  %.sroa.0.033.us.us.i.epil.a = phi ptr [ %i.bw, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.epil.a ], [ %.sroa.0.033.us.us.i.epil.init.a, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.epil.preheader.a ] ; 4 uses
  %epil.iter89 = phi i64 [ %epil.iter89.next, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.epil.a ], [ 0, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.epil.preheader.a ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88912)
  store i64 0, ptr %.sroa.0.033.us.us.i.epil.a, align 8, !noalias !88911
  %.sroa.6.0..sroa.0.0.sroa_idx.us.us.i.epil.a = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i.epil.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa.0.0.sroa_idx.us.us.i.epil.a, align 8, !noalias !88911
  %.sroa.723.0..sroa.0.0.sroa_idx.us.us.i.epil.a = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i.epil.a, i64 16
  store i64 0, ptr %.sroa.723.0..sroa.0.0.sroa_idx.us.us.i.epil.a, align 8, !noalias !88911
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i.epil.a, i64 24 ; 2 uses
  %epil.iter89.next = add i64 %epil.iter89, 1     ; 2 uses
  %epil.iter89.cmp.not = icmp eq i64 %epil.iter89.next, %xtraiter88
  br i1 %epil.iter89.cmp.not, label %._crit_edge.thread.i, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.epil.a, !llvm.loop !88901

._crit_edge.thread.i.loopexit64.unr-lcssa:        ; preds = %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i
  %lcmp.mod80.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod80.not, label %._crit_edge.thread.i, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i.epil.preheader

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i.epil.preheader: ; preds = %._crit_edge.thread.i.loopexit64.unr-lcssa, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.preheader
  %.sroa.0.033.us.us98.i.epil.init = phi ptr [ %.sroa.10.0.i, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.preheader ], [ %i.ad, %._crit_edge.thread.i.loopexit64.unr-lcssa ]
  %lcmp.mod82 = icmp ne i64 %xtraiter81, 0
  tail call void @llvm.assume(i1 %lcmp.mod82)
  br label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i.epil

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i.epil: ; preds = %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i.epil, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i.epil.preheader
  %.sroa.0.033.us.us98.i.epil = phi ptr [ %i.bx, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i.epil ], [ %.sroa.0.033.us.us98.i.epil.init, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i.epil.preheader ] ; 4 uses
  %epil.iter79 = phi i64 [ %epil.iter79.next, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i.epil ], [ 0, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i.epil.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88910)
  store i64 -9223372036854775808, ptr %.sroa.0.033.us.us98.i.epil, align 8, !noalias !88911
  %.sroa.6.0..sroa.0.0.sroa_idx.us.us103.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us98.i.epil, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa.0.0.sroa_idx.us.us103.i.epil, align 8, !noalias !88911
  %.sroa.723.0..sroa.0.0.sroa_idx.us.us104.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us98.i.epil, i64 16
  store i64 0, ptr %.sroa.723.0..sroa.0.0.sroa_idx.us.us104.i.epil, align 8, !noalias !88911
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us98.i.epil, i64 24 ; 2 uses
  %epil.iter79.next = add i64 %epil.iter79, 1     ; 2 uses
  %epil.iter79.cmp.not = icmp eq i64 %epil.iter79.next, %xtraiter81
  br i1 %epil.iter79.cmp.not, label %._crit_edge.thread.i, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i.epil, !llvm.loop !88902

._crit_edge.thread.i.loopexit66.unr-lcssa:        ; preds = %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i
  %lcmp.mod75.not = icmp eq i64 %xtraiter74, 0
  br i1 %lcmp.mod75.not, label %._crit_edge.thread.i, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.epil.preheader

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.epil.preheader: ; preds = %._crit_edge.thread.i.loopexit66.unr-lcssa, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.preheader
  %.sroa.0.033.us36.i.epil.init = phi ptr [ %.sroa.10.0.i, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.preheader ], [ %i.bc, %._crit_edge.thread.i.loopexit66.unr-lcssa ]
  %lcmp.mod77 = icmp ne i64 %xtraiter74, 0
  tail call void @llvm.assume(i1 %lcmp.mod77)
  br label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.epil

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.epil: ; preds = %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.epil, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.epil.preheader
  %.sroa.0.033.us36.i.epil = phi ptr [ %i.by, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.epil ], [ %.sroa.0.033.us36.i.epil.init, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.epil ], [ 0, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.epil.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88910)
  store i64 -9223372036854775808, ptr %.sroa.0.033.us36.i.epil, align 8, !noalias !88911
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us36.i.epil, i64 24 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter74
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.epil, !llvm.loop !88903

._crit_edge.thread.i:                             ; preds = %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.prol.loopexit, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i, %._crit_edge.thread.i.loopexit66.unr-lcssa, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.epil, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.loopexit.i, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.prol.loopexit, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i, %._crit_edge.thread.i.loopexit64.unr-lcssa, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i.epil, %._crit_edge.thread.i.loopexit.unr-lcssa, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.epil.a, %._crit_edge.i
  %.sroa.0.0.lcssa140.i = phi ptr [ %.sroa.10.0.i, %._crit_edge.i ], [ %i.bx, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i.epil ], [ %i.ai, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i ], [ %i.by, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.epil ], [ %i.bw, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.epil.a ], [ %9, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.loopexit.i ], [ %i.am, %._crit_edge.thread.i.loopexit.unr-lcssa ], [ %i.ad, %._crit_edge.thread.i.loopexit64.unr-lcssa ], [ %.lcssa63.unr, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.prol.loopexit ], [ %i.bc, %._crit_edge.thread.i.loopexit66.unr-lcssa ], [ %.lcssa69.unr, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.prol.loopexit ], [ %i.bl, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.lcssa140.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !88907
  store i64 %2, ptr %i.h, align 8, !alias.scope !88907
  br label %_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionE11extend_withCsfR8GmIBoxTX_21lance_namespace_impls.exit

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.loopexit.i: ; preds = %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.loopexit.us.i, %.lr.ph.i.i.i.us.i
  %8 = add nuw nsw i64 %.sroa.03.032.us65.i, 1    ; 2 uses
  store i64 %.val1.i.fr.i, ptr %.sroa.0.033.us64.i, align 8, !noalias !88911
  %.sroa.6.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us64.i, i64 8
  store ptr %i.bm, ptr %.sroa.6.0..sroa.0.0.sroa_idx.i, align 8, !noalias !88911
  %.sroa.723.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us64.i, i64 16
  store i64 %.val1.i.fr.i, ptr %.sroa.723.0..sroa.0.0.sroa_idx.i, align 8, !noalias !88911
  %9 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us64.i, i64 24 ; 2 uses
  %10 = add nuw nsw i64 %storemerge31.us66.i, 1
  %exitcond97.not.i = icmp eq i64 %8, %2
  br i1 %exitcond97.not.i, label %._crit_edge.thread.i, label %.lr.ph.split.split.us63.i

bb.i:                                             ; preds = %bb.k
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !88911
  unreachable

bb.j:                                             ; preds = %6
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store i64 %storemerge31.us66.i, ptr %i.h, align 8, !alias.scope !88907
  %switch1.i15.i = icmp slt i64 %i.j, -9223372036854775806
  br i1 %switch1.i15.i, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %1)
          to label %.body unwind label %bb.i, !noalias !88907

bb.l:                                             ; preds = %bb.h
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.k, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.cb, %bb.l ], [ %i.ca, %bb.k ], [ %i.ca, %bb.j ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.a) #73
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.m

_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionE11extend_withCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %._crit_edge.thread.i, %bb.g, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.m:                                             ; preds = %bb.o, %.body
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.n, %bb.o, %.body
  %.pn7 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.cd, %bb.o ], [ %i.cd, %bb.n ]
  resume { ptr, i32 } %.pn7

bb.n:                                             ; preds = %bb.d
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = load i64, ptr %1, align 8, !range !522, !alias.scope !88917, !noundef !409
  %switch1.i = icmp slt i64 %i.ce, -9223372036854775806
  br i1 %switch1.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.m
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNtNtCs5QD3CVEMyfH_10serde_json5value2deNtB5_5ValueNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 11 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [72 x i8], align 8                ; 12 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.4.i = alloca [31 x i8], align 1          ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 5 uses
  %i.u = alloca [32 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [32 x i8], align 8                ; 20 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 11 uses
  %i.aa = alloca [16 x i8], align 8               ; 9 uses
  %i.ab = alloca [32 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [40 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [40 x i8], align 8               ; 12 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [16 x i8], align 8               ; 6 uses
  %i.ak = alloca [16 x i8], align 8               ; 6 uses
  %.sroa.20 = alloca [6 x i8], align 2            ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89139)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !89140, !noalias !89137, !noundef !409 ; 12 uses
  %.promoted.i47 = load i64, ptr %i.am, align 8, !alias.scope !89139, !noalias !89137 ; 2 uses
  %i.ap = icmp ult i64 %.promoted.i47, %i.ao
  br i1 %i.ap, label %.lr.ph.i, label %.loopexit170

.lr.ph.i:                                         ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !89140, !noalias !89137, !nonnull !409, !noundef !409 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.as = phi i64 [ %.promoted.i47, %.lr.ph.i ], [ %i.av, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89141), !noalias !89137
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89142), !noalias !89137
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !noalias !89143, !noundef !409 ; 3 uses
  switch i8 %i.au, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.av = add nuw i64 %i.as, 1                    ; 3 uses
  store i64 %i.av, ptr %i.am, align 8, !alias.scope !89144, !noalias !89137
  %exitcond.not.i48 = icmp eq i64 %i.av, %i.ao
  br i1 %exitcond.not.i48, label %.loopexit170, label %bb.b

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20)
  switch i8 %i.au, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ad
    i8 123, label %bb.ae
  ]

.loopexit170:                                     ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !89145
  store i64 5, ptr %i.al, align 8, !noalias !89145
  %i.aw = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.al), !noalias !89137, !inline_history !88932
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !89145
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !89137
  store i8 -1, ptr %0, align 8, !alias.scope !89137
  br label %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.d:                                             ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.ay = add i8 %i.au, -48
  %or.cond8.i = icmp ult i8 %i.ay, 10
  br i1 %or.cond8.i, label %bb.eb, label %bb.ea, !prof !440

bb.e:                                             ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.az = add nuw i64 %i.as, 1                    ; 3 uses
  store i64 %i.az, ptr %i.am, align 8, !alias.scope !89146
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89148), !noalias !89137
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89149), !noalias !89137
  %exitcond.not.i42.not = icmp ult i64 %i.az, %i.ao
  br i1 %exitcond.not.i42.not, label %bb.f, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i45

bb.f:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !89150, !noundef !409
  %i.bc = add nuw i64 %i.as, 2                    ; 3 uses
  store i64 %i.bc, ptr %i.am, align 8, !alias.scope !89151, !noalias !89137
  %.not.i43 = icmp eq i8 %i.bb, 117
  br i1 %.not.i43, label %bb.g, label %bb.k, !prof !689

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89152), !noalias !89137
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89153), !noalias !89137
  %exitcond.not.i42.1 = icmp eq i64 %i.bc, %i.ao
  br i1 %exitcond.not.i42.1, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i45, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noalias !89154, !noundef !409
  %i.bf = add nuw i64 %i.as, 3                    ; 3 uses
  store i64 %i.bf, ptr %i.am, align 8, !alias.scope !89155, !noalias !89137
  %.not.i43.1 = icmp eq i8 %i.be, 108
  br i1 %.not.i43.1, label %bb.i, label %bb.k, !prof !689

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89156), !noalias !89137
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89157), !noalias !89137
  %exitcond.not.i42.2 = icmp eq i64 %i.bf, %i.ao
  br i1 %exitcond.not.i42.2, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i45, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !noalias !89158, !noundef !409
  %i.bi = add nuw i64 %i.as, 4
  store i64 %i.bi, ptr %i.am, align 8, !alias.scope !89159, !noalias !89137
  %.not.i43.2 = icmp eq i8 %i.bh, 108
  br i1 %.not.i43.2, label %.thread, label %bb.k, !prof !689

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i45: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !89160
  store i64 5, ptr %i.h, align 8, !noalias !89160
end_hunk_0
