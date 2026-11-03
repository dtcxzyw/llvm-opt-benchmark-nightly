Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_datafusion-09ae4ce666a6227b.lance_datafusion.247659090e7cec5-cgu.0?download=true
inline.NumInlined: 35549
inline.NumDeleted: 12223
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_RINvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.044.i, i64 32 ; 2 uses
  %i.bn = add nuw nsw i64 %storemerge40.i, 1
  %exitcond.not.i = icmp eq i64 %i.bl, %2
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %_RNvXsG_NtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_exprNtB5_20OrderingRequirementsNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i

bb.n:                                             ; preds = %._crit_edge.i
  store i64 0, ptr %i.j, align 8, !alias.scope !30203
  %i.bo = load i64, ptr %1, align 8, !range !342, !alias.scope !30221, !noundef !313
  %i.bp = icmp eq i64 %i.bo, -1
  br i1 %i.bp, label %_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE11extend_withCsc85D0lJ81Z_16lance_datafusion.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30222)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load ptr, ptr %i.br, align 8, !alias.scope !30222, !nonnull !313, !noundef !313 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i = load i64, ptr %i.bs, align 8, !alias.scope !30222, !noundef !313 ; 4 uses
  %i.bt = icmp eq i64 %.val1.i, 0
  br i1 %i.bt, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr14LexRequirementENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i, label %.lr.ph

bb.p:                                             ; preds = %.lr.ph
  %i.bu = icmp eq i64 %i.bw, %.val1.i
  br i1 %i.bu, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr14LexRequirementENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %bb.p
  %.sroa.0.0.i.i.i72 = phi i64 [ %i.bw, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i.i72
  %i.bw = add nuw nsw i64 %.sroa.0.0.i.i.i72, 1   ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr14LexRequirementECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 dereferenceable(24) %i.bv)
          to label %bb.p unwind label %bb.r, !noalias !30222

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
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr14LexRequirementECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 dereferenceable(24) %i.cb) #73
          to label %bb.q unwind label %bb.s, !noalias !30222

bb.s:                                             ; preds = %.lr.ph74
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !30223
  unreachable

.body.i:                                          ; preds = %bb.q, %bb.r
  %.val4.i = load i64, ptr %i.bq, align 8, !range !320, !alias.scope !30222, !noundef !313 ; 2 uses
  %i.cd = icmp eq i64 %.val4.i, 0
  br i1 %i.cd, label %.body, label %bb.t

bb.t:                                             ; preds = %.body.i
  %i.ce = mul nuw i64 %.val4.i, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ce, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !30222
  br label %.body

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr14LexRequirementENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.p, %bb.o
  %.val2.i = load i64, ptr %i.bq, align 8, !range !320, !alias.scope !30222, !noundef !313 ; 2 uses
  %i.cf = icmp eq i64 %.val2.i, 0
  br i1 %i.cf, label %_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE11extend_withCsc85D0lJ81Z_16lance_datafusion.exit, label %bb.u

bb.u:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr14LexRequirementENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.cg = mul nuw i64 %.val2.i, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.cg, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !30222
  br label %_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE11extend_withCsc85D0lJ81Z_16lance_datafusion.exit

._crit_edge.thread.i.loopexit.unr-lcssa:          ; preds = %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.us.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread.i, label %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.us.i.epil.preheader

_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.us.i.epil.preheader: ; preds = %._crit_edge.thread.i.loopexit.unr-lcssa, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.us.i.preheader
  %.sroa.0.044.us.i.epil.init = phi ptr [ %.sroa.10.0.i, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.us.i.preheader ], [ %i.ac, %._crit_edge.thread.i.loopexit.unr-lcssa ]
  %lcmp.mod90 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod90)
  br label %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.us.i.epil

_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.us.i.epil: ; preds = %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.us.i.epil, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.us.i.epil.preheader
  %.sroa.0.044.us.i.epil = phi ptr [ %i.ch, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.us.i.epil ], [ %.sroa.0.044.us.i.epil.init, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.us.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.us.i.epil ], [ 0, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.us.i.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30206)
  store i64 -1, ptr %.sroa.0.044.us.i.epil, align 8, !noalias !30207
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.044.us.i.epil, i64 32 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i, label %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.us.i.epil, !llvm.loop !30199

._crit_edge.thread.i:                             ; preds = %.noexc14.loopexit.i, %_RNvXsG_NtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_exprNtB5_20OrderingRequirementsNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.us.i, %._crit_edge.thread.i.loopexit.unr-lcssa, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.us.i.epil, %._crit_edge.i
  %.sroa.0.0.lcssa83.i = phi ptr [ %.sroa.10.0.i, %._crit_edge.i ], [ %i.af, %_RNvXsG_NtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_exprNtB5_20OrderingRequirementsNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.us.i ], [ %i.ch, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.us.i.epil ], [ %i.ac, %._crit_edge.thread.i.loopexit.unr-lcssa ], [ %i.bm, %.noexc14.loopexit.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.lcssa83.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !30203
  store i64 %2, ptr %i.j, align 8, !alias.scope !30203
  br label %_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE11extend_withCsc85D0lJ81Z_16lance_datafusion.exit

bb.v:                                             ; preds = %bb.e
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.x
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !30207
  unreachable

bb.x:                                             ; preds = %bb.m, %bb.v
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ci, %bb.v ], [ %i.bk, %bb.m ]
  store i64 %storemerge40.i, ptr %i.j, align 8, !alias.scope !30203
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr14LexRequirementEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 dereferenceable(24) %i.ck)
          to label %.body unwind label %bb.w, !noalias !30203

.body:                                            ; preds = %bb.t, %.body.i, %bb.x
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body.i, %bb.x ], [ %i.bz, %.body.i ], [ %i.bz, %bb.t ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.b) #73
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEECsc85D0lJ81Z_16lance_datafusion.exit unwind label %bb.y

_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE11extend_withCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %._crit_edge.thread.i, %bb.n, %bb.u, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr14LexRequirementENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.y:                                             ; preds = %bb.aa, %.body
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.z, %bb.aa, %.body
  %.pn10 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.cm, %bb.aa ], [ %i.cm, %bb.z ]
  resume { ptr, i32 } %.pn10

bb.z:                                             ; preds = %bb.d
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load i64, ptr %1, align 8, !range !342, !alias.scope !30224, !noundef !313
  %i.co = icmp eq i64 %i.cn, -1
  br i1 %i.co, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr14LexRequirementEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 dereferenceable(24) %i.cp)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEECsc85D0lJ81Z_16lance_datafusion.exit unwind label %bb.y
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef range(i64 0, 1152921504606846976) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = mul i64 %2, 24                           ; 3 uses
  %or.cond.i.i = icmp samesign ugt i64 %2, 384307168202282325
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !315

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !30249
  %i.d = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, 17) 8) #71, !noalias !30249 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.b) #72
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.d
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.d, %bb.c ] ; 13 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %2, %bb.c ] ; 2 uses
  %i.f = icmp samesign ule i64 %2, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.f)
  store i64 %.sroa.4.0.i, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.10.0.i, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30251)
  %i.i = icmp samesign ugt i64 %2, 1
  br i1 %i.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.j = load i64, ptr %1, align 8, !range !393, !alias.scope !30252, !noundef !313 ; 3 uses
  %i.k = xor i64 %i.j, -9223372036854775808
  %i.l = icmp slt i64 %i.j, 0
  %i.m = select i1 %i.l, i64 %i.k, i64 2          ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.n, align 8, !alias.scope !30251, !nonnull !313 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i = load i64, ptr %i.o, align 8, !alias.scope !30251
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30253)
  %i.t = add nuw nsw i64 %.sroa.03.032.us.us87.i.prol, 1 ; 2 uses
  store i64 -9223372036854775807, ptr %.sroa.0.033.us.us86.i.prol, align 8, !noalias !30254
  %.sroa.6.0..sroa.0.0.sroa_idx.us.us91.i.prol = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us86.i.prol, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa.0.0.sroa_idx.us.us91.i.prol, align 8, !noalias !30254
  %.sroa.723.0..sroa.0.0.sroa_idx.us.us92.i.prol = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us86.i.prol, i64 16
  store i64 0, ptr %.sroa.723.0..sroa.0.0.sroa_idx.us.us92.i.prol, align 8, !noalias !30254
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us86.i.prol, i64 24 ; 3 uses
  %prol.iter87.next = add i64 %prol.iter87, 1     ; 2 uses
  %prol.iter87.cmp.not = icmp eq i64 %prol.iter87.next, %xtraiter85
  br i1 %prol.iter87.cmp.not, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.prol.loopexit, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.prol, !llvm.loop !30232

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30253)
  store i64 -9223372036854775808, ptr %.sroa.0.033.us.us.i, align 8, !noalias !30254
  %.sroa.6.0..sroa.0.0.sroa_idx.us.us.i = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa.0.0.sroa_idx.us.us.i, align 8, !noalias !30254
  %.sroa.723.0..sroa.0.0.sroa_idx.us.us.i = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i, i64 16
  store i64 0, ptr %.sroa.723.0..sroa.0.0.sroa_idx.us.us.i, align 8, !noalias !30254
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i, i64 24
  store i64 -9223372036854775808, ptr %i.aa, align 8, !noalias !30254
  %.sroa.6.0..sroa.0.0.sroa_idx.us.us.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa.0.0.sroa_idx.us.us.i.1, align 8, !noalias !30254
  %.sroa.723.0..sroa.0.0.sroa_idx.us.us.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i, i64 40
  store i64 0, ptr %.sroa.723.0..sroa.0.0.sroa_idx.us.us.i.1, align 8, !noalias !30254
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i, i64 48
  store i64 -9223372036854775808, ptr %i.ab, align 8, !noalias !30254
  %.sroa.6.0..sroa.0.0.sroa_idx.us.us.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa.0.0.sroa_idx.us.us.i.2, align 8, !noalias !30254
  %.sroa.723.0..sroa.0.0.sroa_idx.us.us.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i, i64 64
  store i64 0, ptr %.sroa.723.0..sroa.0.0.sroa_idx.us.us.i.2, align 8, !noalias !30254
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i, i64 72
  store i64 -9223372036854775808, ptr %i.ac, align 8, !noalias !30254
  %.sroa.6.0..sroa.0.0.sroa_idx.us.us.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa.0.0.sroa_idx.us.us.i.3, align 8, !noalias !30254
  %.sroa.723.0..sroa.0.0.sroa_idx.us.us.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i, i64 88
  store i64 0, ptr %.sroa.723.0..sroa.0.0.sroa_idx.us.us.i.3, align 8, !noalias !30254
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i, i64 96 ; 3 uses
  %niter94.next.3.a = add i64 %niter94.a, 4       ; 2 uses
  %niter94.ncmp.3.a = icmp eq i64 %niter94.next.3.a, %unroll_iter86
  br i1 %niter94.ncmp.3.a, label %._crit_edge.thread.i.loopexit64.unr-lcssa, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i: ; preds = %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.prol.loopexit, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i
  %.sroa.0.033.us.us86.i = phi ptr [ %i.ai, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i ], [ %.sroa.0.033.us.us86.i.unr, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.prol.loopexit ] ; 13 uses
  %.sroa.03.032.us.us87.i = phi i64 [ %i.ah, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i ], [ %.sroa.03.032.us.us87.i.unr, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.prol.loopexit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30253)
  store i64 -9223372036854775807, ptr %.sroa.0.033.us.us86.i, align 8, !noalias !30254
  %.sroa.6.0..sroa.0.0.sroa_idx.us.us91.i = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us86.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa.0.0.sroa_idx.us.us91.i, align 8, !noalias !30254
  %.sroa.723.0..sroa.0.0.sroa_idx.us.us92.i = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us86.i, i64 16
  store i64 0, ptr %.sroa.723.0..sroa.0.0.sroa_idx.us.us92.i, align 8, !noalias !30254
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us86.i, i64 24
  store i64 -9223372036854775807, ptr %i.ae, align 8, !noalias !30254
  %.sroa.6.0..sroa.0.0.sroa_idx.us.us91.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us86.i, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa.0.0.sroa_idx.us.us91.i.1, align 8, !noalias !30254
  %.sroa.723.0..sroa.0.0.sroa_idx.us.us92.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us86.i, i64 40
  store i64 0, ptr %.sroa.723.0..sroa.0.0.sroa_idx.us.us92.i.1, align 8, !noalias !30254
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us86.i, i64 48
  store i64 -9223372036854775807, ptr %i.af, align 8, !noalias !30254
  %.sroa.6.0..sroa.0.0.sroa_idx.us.us91.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us86.i, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa.0.0.sroa_idx.us.us91.i.2, align 8, !noalias !30254
  %.sroa.723.0..sroa.0.0.sroa_idx.us.us92.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us86.i, i64 64
  store i64 0, ptr %.sroa.723.0..sroa.0.0.sroa_idx.us.us92.i.2, align 8, !noalias !30254
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us86.i, i64 72
  %i.ah = add nuw nsw i64 %.sroa.03.032.us.us87.i, 4 ; 2 uses
  store i64 -9223372036854775807, ptr %i.ag, align 8, !noalias !30254
  %.sroa.6.0..sroa.0.0.sroa_idx.us.us91.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us86.i, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa.0.0.sroa_idx.us.us91.i.3, align 8, !noalias !30254
  %.sroa.723.0..sroa.0.0.sroa_idx.us.us92.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us86.i, i64 88
  store i64 0, ptr %.sroa.723.0..sroa.0.0.sroa_idx.us.us92.i.3, align 8, !noalias !30254
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us86.i, i64 96 ; 2 uses
  %exitcond130.not.i.3 = icmp eq i64 %i.ah, %2
  br i1 %exitcond130.not.i.3, label %._crit_edge.thread.i, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i: ; preds = %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.preheader.new.a
  %.sroa.0.033.us.us98.i = phi ptr [ %.sroa.10.0.i, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.preheader.new.a ], [ %i.am, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i ] ; 13 uses
  %niter84 = phi i64 [ 0, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.preheader.new.a ], [ %niter84.next.3, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30255)
  store i64 0, ptr %.sroa.0.033.us.us98.i, align 8, !noalias !30254
  %.sroa.6.0..sroa.0.0.sroa_idx.us.us103.i = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us98.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa.0.0.sroa_idx.us.us103.i, align 8, !noalias !30254
  %.sroa.723.0..sroa.0.0.sroa_idx.us.us104.i = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us98.i, i64 16
  store i64 0, ptr %.sroa.723.0..sroa.0.0.sroa_idx.us.us104.i, align 8, !noalias !30254
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us98.i, i64 24
  store i64 0, ptr %i.aj, align 8, !noalias !30254
  %.sroa.6.0..sroa.0.0.sroa_idx.us.us103.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us98.i, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa.0.0.sroa_idx.us.us103.i.1, align 8, !noalias !30254
  %.sroa.723.0..sroa.0.0.sroa_idx.us.us104.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us98.i, i64 40
  store i64 0, ptr %.sroa.723.0..sroa.0.0.sroa_idx.us.us104.i.1, align 8, !noalias !30254
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us98.i, i64 48
  store i64 0, ptr %i.ak, align 8, !noalias !30254
  %.sroa.6.0..sroa.0.0.sroa_idx.us.us103.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us98.i, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa.0.0.sroa_idx.us.us103.i.2, align 8, !noalias !30254
  %.sroa.723.0..sroa.0.0.sroa_idx.us.us104.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us98.i, i64 64
  store i64 0, ptr %.sroa.723.0..sroa.0.0.sroa_idx.us.us104.i.2, align 8, !noalias !30254
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us98.i, i64 72
  store i64 0, ptr %i.al, align 8, !noalias !30254
  %.sroa.6.0..sroa.0.0.sroa_idx.us.us103.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us98.i, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa.0.0.sroa_idx.us.us103.i.3, align 8, !noalias !30254
  %.sroa.723.0..sroa.0.0.sroa_idx.us.us104.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us98.i, i64 88
  store i64 0, ptr %.sroa.723.0..sroa.0.0.sroa_idx.us.us104.i.3, align 8, !noalias !30254
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30253)
  %i.ao = add nuw nsw i64 %.sroa.03.032.us51.i.prol, 1 ; 2 uses
  store i64 -9223372036854775807, ptr %.sroa.0.033.us50.i.prol, align 8, !noalias !30254
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us50.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.prol.loopexit, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.prol, !llvm.loop !30235

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30253)
  store i64 -9223372036854775808, ptr %.sroa.0.033.us36.i, align 8, !noalias !30254
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us36.i, i64 24
  store i64 -9223372036854775808, ptr %i.av, align 8, !noalias !30254
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us36.i, i64 48
  store i64 -9223372036854775808, ptr %i.aw, align 8, !noalias !30254
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us36.i, i64 72
  store i64 -9223372036854775808, ptr %i.ax, align 8, !noalias !30254
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us36.i, i64 96
  store i64 -9223372036854775808, ptr %i.ay, align 8, !noalias !30254
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us36.i, i64 120
  store i64 -9223372036854775808, ptr %i.az, align 8, !noalias !30254
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us36.i, i64 144
  store i64 -9223372036854775808, ptr %i.ba, align 8, !noalias !30254
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us36.i, i64 168
  store i64 -9223372036854775808, ptr %i.bb, align 8, !noalias !30254
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us36.i, i64 192 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.thread.i.loopexit66.unr-lcssa, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i: ; preds = %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.prol.loopexit, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i
  %.sroa.0.033.us50.i = phi ptr [ %i.bl, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i ], [ %.sroa.0.033.us50.i.unr, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.prol.loopexit ] ; 9 uses
  %.sroa.03.032.us51.i = phi i64 [ %i.bk, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i ], [ %.sroa.03.032.us51.i.unr, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.prol.loopexit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30253)
  store i64 -9223372036854775807, ptr %.sroa.0.033.us50.i, align 8, !noalias !30254
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us50.i, i64 24
  store i64 -9223372036854775807, ptr %i.bd, align 8, !noalias !30254
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us50.i, i64 48
  store i64 -9223372036854775807, ptr %i.be, align 8, !noalias !30254
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us50.i, i64 72
  store i64 -9223372036854775807, ptr %i.bf, align 8, !noalias !30254
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us50.i, i64 96
  store i64 -9223372036854775807, ptr %i.bg, align 8, !noalias !30254
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us50.i, i64 120
  store i64 -9223372036854775807, ptr %i.bh, align 8, !noalias !30254
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us50.i, i64 144
  store i64 -9223372036854775807, ptr %i.bi, align 8, !noalias !30254
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us50.i, i64 168
  %i.bk = add nuw nsw i64 %.sroa.03.032.us51.i, 8 ; 2 uses
  store i64 -9223372036854775807, ptr %i.bj, align 8, !noalias !30254
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us50.i, i64 192 ; 2 uses
  %exitcond127.not.i.7 = icmp eq i64 %i.bk, %2
  br i1 %exitcond127.not.i.7, label %._crit_edge.thread.i, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.g, label %._crit_edge.thread.i

.lr.ph.split.split.us63.i:                        ; preds = %.lr.ph.split.i, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.loopexit.i
  %.sroa.0.033.us64.i = phi ptr [ %9, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.loopexit.i ], [ %.sroa.10.0.i, %.lr.ph.split.i ] ; 4 uses
  %.sroa.03.032.us65.i = phi i64 [ %8, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.loopexit.i ], [ 1, %.lr.ph.split.i ]
  %storemerge31.us66.i = phi i64 [ %10, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.loopexit.i ], [ 0, %.lr.ph.split.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30255)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !30256
  %i.bm = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef range(i64 1, 17) 8) #71, !noalias !30256 ; 3 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %6, label %.lr.ph.i.i.i.us.i

6:                                                ; preds = %.lr.ph.split.split.us63.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.p) #72
          to label %.noexc14.i unwind label %bb.j, !noalias !30254

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
  %.val.i.i.i.us.i = load ptr, ptr %.sroa.014.024.i.i.i.us.i, align 8, !alias.scope !30255, !noalias !30257, !nonnull !313, !noundef !313 ; 2 uses
  %i.bq = getelementptr i8, ptr %.sroa.014.024.i.i.i.us.i, i64 8
  %.val11.i.i.i.us.i = load ptr, ptr %i.bq, align 8, !alias.scope !30255, !noalias !30257 ; 2 uses
  %i.br = atomicrmw add ptr %.val.i.i.i.us.i, i64 1 monotonic, align 8, !noalias !30258
  %i.bs = icmp slt i64 %i.br, 0
  br i1 %i.bs, label %bb.f, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.loopexit.us.i

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.loopexit.us.i: ; preds = %bb.e
  %i.bt = add nuw nsw i64 %.sroa.7.023.i.i.i.us.i, 1
  %.sroa.6.0..sroa.0.0.sroa_idx.us71.i = getelementptr inbounds nuw i8, ptr %.sroa.014.024.i.i.i.us.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i.i.i.us.i) ]
  %7 = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %.sroa.7.023.i.i.i.us.i ; 2 uses
  store ptr %.val.i.i.i.us.i, ptr %7, align 8, !noalias !30258
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.val11.i.i.i.us.i, ptr %i.bu, align 8, !noalias !30258
  %exitcond.not.i = icmp eq i64 %i.bo, 0
  br i1 %exitcond.not.i, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.loopexit.i, label %.lr.ph.i.i.i.us.i

bb.g:                                             ; preds = %._crit_edge.i
  store i64 0, ptr %i.h, align 8, !alias.scope !30250
  %i.bv = load i64, ptr %1, align 8, !range !393, !alias.scope !30259, !noundef !313
  %switch1.i.i = icmp slt i64 %i.bv, -9223372036854775806
  br i1 %switch1.i.i, label %_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionE11extend_withCsc85D0lJ81Z_16lance_datafusion.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %1)
          to label %_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionE11extend_withCsc85D0lJ81Z_16lance_datafusion.exit unwind label %bb.l

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30255)
  store i64 0, ptr %.sroa.0.033.us.us.i.epil.a, align 8, !noalias !30254
  %.sroa.6.0..sroa.0.0.sroa_idx.us.us.i.epil.a = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i.epil.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa.0.0.sroa_idx.us.us.i.epil.a, align 8, !noalias !30254
  %.sroa.723.0..sroa.0.0.sroa_idx.us.us.i.epil.a = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i.epil.a, i64 16
  store i64 0, ptr %.sroa.723.0..sroa.0.0.sroa_idx.us.us.i.epil.a, align 8, !noalias !30254
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i.epil.a, i64 24 ; 2 uses
  %epil.iter89.next = add i64 %epil.iter89, 1     ; 2 uses
  %epil.iter89.cmp.not = icmp eq i64 %epil.iter89.next, %xtraiter88
  br i1 %epil.iter89.cmp.not, label %._crit_edge.thread.i, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.epil.a, !llvm.loop !30244

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30253)
  store i64 -9223372036854775808, ptr %.sroa.0.033.us.us98.i.epil, align 8, !noalias !30254
  %.sroa.6.0..sroa.0.0.sroa_idx.us.us103.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us98.i.epil, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa.0.0.sroa_idx.us.us103.i.epil, align 8, !noalias !30254
  %.sroa.723.0..sroa.0.0.sroa_idx.us.us104.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us98.i.epil, i64 16
  store i64 0, ptr %.sroa.723.0..sroa.0.0.sroa_idx.us.us104.i.epil, align 8, !noalias !30254
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us98.i.epil, i64 24 ; 2 uses
  %epil.iter79.next = add i64 %epil.iter79, 1     ; 2 uses
  %epil.iter79.cmp.not = icmp eq i64 %epil.iter79.next, %xtraiter81
  br i1 %epil.iter79.cmp.not, label %._crit_edge.thread.i, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i.epil, !llvm.loop !30245

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30253)
  store i64 -9223372036854775808, ptr %.sroa.0.033.us36.i.epil, align 8, !noalias !30254
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us36.i.epil, i64 24 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter74
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.epil, !llvm.loop !30246

._crit_edge.thread.i:                             ; preds = %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.prol.loopexit, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i, %._crit_edge.thread.i.loopexit66.unr-lcssa, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.epil, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.loopexit.i, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.prol.loopexit, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i, %._crit_edge.thread.i.loopexit64.unr-lcssa, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i.epil, %._crit_edge.thread.i.loopexit.unr-lcssa, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.epil.a, %._crit_edge.i
  %.sroa.0.0.lcssa140.i = phi ptr [ %.sroa.10.0.i, %._crit_edge.i ], [ %i.bx, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i.epil ], [ %i.ai, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i ], [ %i.by, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.epil ], [ %i.bw, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.epil.a ], [ %9, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.loopexit.i ], [ %i.am, %._crit_edge.thread.i.loopexit.unr-lcssa ], [ %i.ad, %._crit_edge.thread.i.loopexit64.unr-lcssa ], [ %.lcssa63.unr, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.prol.loopexit ], [ %i.bc, %._crit_edge.thread.i.loopexit66.unr-lcssa ], [ %.lcssa69.unr, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.prol.loopexit ], [ %i.bl, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.lcssa140.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !30250
  store i64 %2, ptr %i.h, align 8, !alias.scope !30250
  br label %_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionE11extend_withCsc85D0lJ81Z_16lance_datafusion.exit

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.loopexit.i: ; preds = %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.loopexit.us.i, %.lr.ph.i.i.i.us.i
  %8 = add nuw nsw i64 %.sroa.03.032.us65.i, 1    ; 2 uses
  store i64 %.val1.i.fr.i, ptr %.sroa.0.033.us64.i, align 8, !noalias !30254
  %.sroa.6.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us64.i, i64 8
  store ptr %i.bm, ptr %.sroa.6.0..sroa.0.0.sroa_idx.i, align 8, !noalias !30254
  %.sroa.723.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us64.i, i64 16
  store i64 %.val1.i.fr.i, ptr %.sroa.723.0..sroa.0.0.sroa_idx.i, align 8, !noalias !30254
  %9 = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us64.i, i64 24 ; 2 uses
  %10 = add nuw nsw i64 %storemerge31.us66.i, 1
  %exitcond97.not.i = icmp eq i64 %8, %2
  br i1 %exitcond97.not.i, label %._crit_edge.thread.i, label %.lr.ph.split.split.us63.i

bb.i:                                             ; preds = %bb.k
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !30254
  unreachable

bb.j:                                             ; preds = %6
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store i64 %storemerge31.us66.i, ptr %i.h, align 8, !alias.scope !30250
  %switch1.i15.i = icmp slt i64 %i.j, -9223372036854775806
  br i1 %switch1.i15.i, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %1)
          to label %.body unwind label %bb.i, !noalias !30250

bb.l:                                             ; preds = %bb.h
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.k, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.cb, %bb.l ], [ %i.ca, %bb.k ], [ %i.ca, %bb.j ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.a) #73
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionECsc85D0lJ81Z_16lance_datafusion.exit unwind label %bb.m

_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionE11extend_withCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %._crit_edge.thread.i, %bb.g, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.m:                                             ; preds = %bb.o, %.body
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.n, %bb.o, %.body
  %.pn7 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.cd, %bb.o ], [ %i.cd, %bb.n ]
  resume { ptr, i32 } %.pn7

bb.n:                                             ; preds = %bb.d
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = load i64, ptr %1, align 8, !range !393, !alias.scope !30260, !noundef !313
  %switch1.i = icmp slt i64 %i.ce, -9223372036854775806
  br i1 %switch1.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionECsc85D0lJ81Z_16lance_datafusion.exit unwind label %bb.m
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %1, i64 noundef range(i64 0, 82351536043346213) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = mul nuw nsw i64 %2, 112                  ; 2 uses
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread, label %bb.b

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread: ; preds = %bb.a
  store i64 0, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 16 to ptr), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %.thread

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !30263
  %i.g = tail call noundef align 16 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 17) 16) #71, !noalias !30263 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %.lr.ph.preheader

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 16, i64 %i.c) #72
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.b
  store i64 %2, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw [112 x i8], ptr %1, i64 %2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.sroa.012.023 = phi ptr [ %i.p, %bb.e ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.sroa.7.022 = phi i64 [ %i.o, %bb.e ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.10.021 = phi i64 [ %i.l, %bb.e ], [ %2, %.lr.ph.preheader ]
  %i.l = add nsw i64 %.sroa.10.021, -1            ; 2 uses
  %i.m = icmp eq ptr %.sroa.012.023, %i.k
  br i1 %i.m, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.e, %.lr.ph, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread
  %i.n = phi ptr [ %i.f, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread ], [ %i.j, %.lr.ph ], [ %i.j, %bb.e ]
  store i64 %2, ptr %i.n, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @_RNvXs12_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_4ExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.a, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.012.023)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = add nuw nsw i64 %.sroa.7.022, 1
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.023, i64 112
  %i.q = getelementptr inbounds nuw [112 x i8], ptr %i.g, i64 %.sroa.7.022
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.q, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = icmp eq i64 %i.l, 0
  br i1 %i.r, label %.thread, label %.lr.ph

bb.f:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.g:                                             ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022, ptr %i.j, align 8
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #73
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %1, i64 noundef range(i64 0, 72057594037927936) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  %.sroa.024 = alloca [112 x i8], align 16        ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = shl nuw nsw i64 %2, 7                    ; 2 uses
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread, label %bb.b

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread: ; preds = %bb.a
  store i64 0, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 16 to ptr), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %.thread

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !30270
  %i.g = tail call noundef align 16 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 17) 16) #71, !noalias !30270 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %.lr.ph.preheader

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 16, i64 %i.c) #72
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.b
  store i64 %2, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw [128 x i8], ptr %1, i64 %2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.sroa.012.038 = phi ptr [ %i.p, %bb.e ], [ %1, %.lr.ph.preheader ] ; 5 uses
  %.sroa.7.037 = phi i64 [ %i.o, %bb.e ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.10.036 = phi i64 [ %i.l, %bb.e ], [ %2, %.lr.ph.preheader ]
  %i.l = add nsw i64 %.sroa.10.036, -1            ; 2 uses
  %i.m = icmp eq ptr %.sroa.012.038, %i.k
  br i1 %i.m, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.e, %.lr.ph, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread
  %i.n = phi ptr [ %i.f, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread ], [ %i.j, %.lr.ph ], [ %i.j, %bb.e ]
  store i64 %2, ptr %i.n, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30271)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !30272
  invoke fastcc void @_RNvXs12_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_4ExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %.sroa.012.038)
          to label %bb.e unwind label %bb.g, !inline_history !30269

bb.e:                                             ; preds = %bb.d
  %i.o = add nuw nsw i64 %.sroa.7.037, 1
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.038, i64 128
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.038, i64 112
  %i.r = load i8, ptr %i.q, align 16, !range !325, !alias.scope !30271, !noundef !313
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.012.038, i64 113
  %i.t = load i8, ptr %i.s, align 1, !range !325, !alias.scope !30271, !noundef !313
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.024)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.024, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !30272
  %i.u = getelementptr inbounds nuw [128 x i8], ptr %i.g, i64 %.sroa.7.037 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.u, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.024, i64 112, i1 false)
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  store i8 %i.r, ptr %.sroa.425.0..sroa_idx, align 16
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 113
end_hunk_0
begin_hunk_1_@_RNvNtCsc85D0lJ81Z_16lance_datafusion4exec27display_plan_one_liner_impl:bb.a
  %i.at = phi i64 [ %i.an, %.lr.ph.i.i.us.i.i ], [ %i.bt, %bb.l ] ; 8 uses
  %.not.i16.i.us.i.i = icmp eq i64 %.lcssa7083.i, %i.aq
  br i1 %.not.i16.i.us.i.i, label %bb.d, label %_RINvMNtCscI6d9CVNmLh_4core3stre16trim_end_matchesReECsc85D0lJ81Z_16lance_datafusion.exit

bb.d:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !88692, !noalias !88694, !noundef !313
  %i.aw = and i8 %i.av, 63
  %i.ax = zext nneg i8 %i.aw to i64
  %i.ay = shl nuw i64 1, %i.ax
  %i.az = and i64 %i.ay, %i.ah
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.i.i.i.us.i.i = tail call i64 @llvm.umin.i64(i64 %i.as, i64 %i.k)
  %.sroa.01.0.i.i.us.i.i = select i1 %i.ab, i64 %i.k, i64 %.sroa.0.0.i.i.i.us.i.i
  %.sroa.01.0.i.fr.i.us.i.i = freeze i64 %.sroa.01.0.i.i.us.i.i ; 3 uses
  %i.bb = add i64 %.sroa.01.0.i.fr.i.us.i.i, -1   ; 2 uses
  %.first_iter.i.i.us.i.i = icmp ult i64 %i.bb, %i.af
  %.not21.i.us.i.us.i.i211 = icmp eq i64 %.sroa.01.0.i.fr.i.us.i.i, 0 ; 2 uses
  br i1 %.first_iter.i.i.us.i.i, label %.split48.us.i.us.i.i.preheader, label %.split48.i.us.i.i

.split48.us.i.us.i.i.preheader:                   ; preds = %bb.e
  br i1 %.not21.i.us.i.us.i.i211, label %.split50.us.i.us.i.i, label %.lr.ph

.split48.i.us.i.i:                                ; preds = %bb.e
  br i1 %.not21.i.us.i.us.i.i211, label %.split50.us.i.us.i.i, label %.split109.us.i.i

.split48.us.i.us.i.i:                             ; preds = %bb.f
  %.not21.i.us.i.us.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not21.i.us.i.us.i.i, label %.split50.us.i.us.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.split48.us.i.us.i.i.preheader, %.split48.us.i.us.i.i
  %.sroa.2.0.i.us.i.us.i.i212 = phi i64 [ %i.bc, %.split48.us.i.us.i.i ], [ %.sroa.01.0.i.fr.i.us.i.i, %.split48.us.i.us.i.i.preheader ]
  %i.bc = add i64 %.sroa.2.0.i.us.i.us.i.i212, -1 ; 5 uses
  %i.bd = add i64 %i.bc, %i.at                    ; 3 uses
  %i.be = icmp ult i64 %i.bd, %i.o
  br i1 %i.be, label %bb.f, label %.split52.us.i.i.i

bb.f:                                             ; preds = %.lr.ph
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bc
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !88693, !noalias !88694, !noundef !313
  %i.bh = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bd
  %i.bi = load i8, ptr %i.bh, align 1, !alias.scope !88692, !noalias !88694, !noundef !313
  %.not23.i.us.i.us.i.i = icmp eq i8 %i.bg, %i.bi
  br i1 %.not23.i.us.i.us.i.i, label %.split48.us.i.us.i.i, label %.split54.us.i.us.i.i

.split54.us.i.us.i.i:                             ; preds = %bb.f
  %.reass.i.i.us.i.i = add i64 %i.bc, %invariant.op.i.i.us.i.i ; 2 uses
  br i1 %i.ab, label %bb.l, label %.sink.split.i.i.us.i.i

.split50.us.i.us.i.i:                             ; preds = %.split48.us.i.us.i.i, %.split48.us.i.us.i.i.preheader, %.split48.i.us.i.i
  %.sroa.06.0.i.i.us.i.i = select i1 %i.ab, i64 %i.af, i64 %i.as ; 2 uses
  %umax73.i.i.us.i.i = tail call i64 @llvm.umax.i64(i64 %.sroa.06.0.i.i.us.i.i, i64 %i.k)
  %exitcond.not.i.i.us.i.i213.not = icmp ult i64 %i.k, %.sroa.06.0.i.i.us.i.i
  br i1 %exitcond.not.i.i.us.i.i213.not, label %.lr.ph215, label %.split50.us.i.us.i.i._crit_edge

bb.g:                                             ; preds = %bb.i
  %exitcond.not.i.i.us.i.i = icmp eq i64 %i.bj, %umax73.i.i.us.i.i
  br i1 %exitcond.not.i.i.us.i.i, label %.split50.us.i.us.i.i._crit_edge, label %.lr.ph215

.lr.ph215:                                        ; preds = %.split50.us.i.us.i.i, %bb.g
  %.sroa.07.0.i.i.us.i.i214 = phi i64 [ %i.bj, %bb.g ], [ %i.k, %.split50.us.i.us.i.i ] ; 4 uses
  %i.bj = add nuw i64 %.sroa.07.0.i.i.us.i.i214, 1 ; 2 uses
  %exitcond74.not.i.i.us.i.i = icmp eq i64 %.sroa.07.0.i.i.us.i.i214, %umax.i.i.i.i
  br i1 %exitcond74.not.i.i.us.i.i, label %.split115.us.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph215
  %i.bk = add i64 %.sroa.07.0.i.i.us.i.i214, %i.at ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.o
  br i1 %i.bl, label %bb.i, label %.split119.us.i.i

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.sroa.07.0.i.i.us.i.i214
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !88693, !noalias !88694, !noundef !313
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bk
  %i.bp = load i8, ptr %i.bo, align 1, !alias.scope !88692, !noalias !88694, !noundef !313
  %.not22.i.i.us.i.i = icmp eq i8 %i.bn, %i.bp
  br i1 %.not22.i.i.us.i.i, label %bb.g, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.ab, label %bb.l, label %.sink.split.i.i.us.i.i

bb.k:                                             ; preds = %bb.d
  br i1 %i.ab, label %bb.l, label %.sink.split.i.i.us.i.i

.sink.split.i.i.us.i.i:                           ; preds = %bb.k, %bb.j, %.split54.us.i.us.i.i
  %.sink105.i.i.us.i.i = phi i64 [ %i.al, %bb.j ], [ %i.af, %.split54.us.i.us.i.i ], [ %i.af, %bb.k ] ; 2 uses
  %.ph104.i.i.us.i.i = phi i64 [ %i.ap, %bb.j ], [ %.reass.i.i.us.i.i, %.split54.us.i.us.i.i ], [ %i.at, %bb.k ]
  br label %bb.l

bb.l:                                             ; preds = %.sink.split.i.i.us.i.i, %bb.k, %bb.j, %.split54.us.i.us.i.i
  %i.bq = phi i64 [ %i.ar, %.split54.us.i.us.i.i ], [ %i.ar, %bb.k ], [ %i.ar, %bb.j ], [ %.sink105.i.i.us.i.i, %.sink.split.i.i.us.i.i ]
  %i.br = phi i64 [ %i.as, %.split54.us.i.us.i.i ], [ %i.as, %bb.k ], [ %i.as, %bb.j ], [ %.sink105.i.i.us.i.i, %.sink.split.i.i.us.i.i ]
  %i.bs = phi i64 [ %.reass.i.i.us.i.i, %.split54.us.i.us.i.i ], [ %i.at, %bb.k ], [ %i.ap, %bb.j ], [ %.ph104.i.i.us.i.i, %.sink.split.i.i.us.i.i ] ; 2 uses
  %i.bt = sub i64 %i.bs, %i.af                    ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %i.o
  br i1 %i.bu, label %bb.c, label %_RINvMNtCscI6d9CVNmLh_4core3stre16trim_end_matchesReECsc85D0lJ81Z_16lance_datafusion.exit

.split50.us.i.us.i.i._crit_edge:                  ; preds = %.split50.us.i.us.i.i, %bb.g
  %spec.select98.i = select i1 %i.ab, i64 %i.ar, i64 %i.af
  %i.bv = icmp eq i64 %i.at, 0
  br i1 %i.bv, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.thread, label %bb.b

.split.i.i:                                       ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.by = load i8, ptr %i.bx, align 2, !range !325, !alias.scope !88689, !noalias !88688
  %i.bz = trunc nuw i8 %i.by to i1
  %.promoted125.i.i = load i8, ptr %i.bw, align 1, !alias.scope !88689, !noalias !88688 ; 9 uses
  br i1 %i.bz, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.split.i.i
  br i1 %i.p, label %.lr.ph.split.us.split.i.i, label %.lr.ph.split.split.i.preheader.i

.lr.ph.split.split.i.preheader.i:                 ; preds = %.lr.ph.i.i
  br i1 %.not.i.i.i.i, label %.lr.ph.split.split.i.preheader.split.us.i, label %.lr.ph.split.split.i.preheader.split.i

.lr.ph.split.split.i.preheader.split.us.i:        ; preds = %.lr.ph.split.split.i.preheader.i
  %i.ca = load i8, ptr %i.r, align 1, !alias.scope !88695, !noalias !88694, !noundef !313
  %i.cb = icmp sgt i8 %i.ca, -65
  br i1 %i.cb, label %.lr.ph.split.split.i.preheader.split.us.split.us.i, label %.split133.us.i.i

.lr.ph.split.split.i.preheader.split.us.split.us.i: ; preds = %.lr.ph.split.split.i.preheader.split.us.i
  %i.cc = load i8, ptr %i.s, align 1, !noalias !88696, !noundef !313
  %i.cd = icmp sgt i8 %i.cc, -1
  br i1 %i.cd, label %.lr.ph.split.split.i.us.us.us.preheader.i, label %.lr.ph.split.split.i.preheader.split.us.split.us.split.i

.lr.ph.split.split.i.us.us.us.preheader.i:        ; preds = %.lr.ph.split.split.i.preheader.split.us.split.us.i
  %i.ce = trunc nuw i8 %.promoted125.i.i to i1
  br i1 %i.ce, label %_RNvYNtNtNtCscI6d9CVNmLh_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i, label %_RINvMNtCscI6d9CVNmLh_4core3stre16trim_end_matchesReECsc85D0lJ81Z_16lance_datafusion.exit

.lr.ph.split.split.i.preheader.split.us.split.us.split.i: ; preds = %.lr.ph.split.split.i.preheader.split.us.split.us.i
  tail call void @llvm.assume(i1 %i.t)
  %i.cf = load i8, ptr %i.u, align 1, !noalias !88696, !noundef !313
  %i.cg = icmp slt i8 %i.cf, -64
  br i1 %i.cg, label %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.i, label %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.i

.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.i: ; preds = %.lr.ph.split.split.i.preheader.split.us.split.us.split.i
  tail call void @llvm.assume(i1 %i.v)
  %i.ch = load i8, ptr %i.w, align 1, !noalias !88696, !noundef !313
  %i.ci = icmp slt i8 %i.ch, -64
  br i1 %i.ci, label %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.us.i, label %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.i

.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.us.i: ; preds = %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.i
  tail call void @llvm.assume(i1 %i.x)
  %i.cj = trunc nuw i8 %.promoted125.i.i to i1
  br i1 %i.cj, label %_RNvYNtNtNtCscI6d9CVNmLh_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i, label %_RINvMNtCscI6d9CVNmLh_4core3stre16trim_end_matchesReECsc85D0lJ81Z_16lance_datafusion.exit

.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.i: ; preds = %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.i
  %i.ck = trunc nuw i8 %.promoted125.i.i to i1
  br i1 %i.ck, label %_RNvYNtNtNtCscI6d9CVNmLh_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i, label %_RINvMNtCscI6d9CVNmLh_4core3stre16trim_end_matchesReECsc85D0lJ81Z_16lance_datafusion.exit

.lr.ph.split.split.i.preheader.split.us.split.us.split.split.i: ; preds = %.lr.ph.split.split.i.preheader.split.us.split.us.split.i
  %i.cl = trunc nuw i8 %.promoted125.i.i to i1
  br i1 %i.cl, label %_RNvYNtNtNtCscI6d9CVNmLh_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i, label %_RINvMNtCscI6d9CVNmLh_4core3stre16trim_end_matchesReECsc85D0lJ81Z_16lance_datafusion.exit

.lr.ph.split.split.i.preheader.split.i:           ; preds = %.lr.ph.split.split.i.preheader.i
  br i1 %i.q, label %.lr.ph.split.split.i.preheader.split.split.us.i, label %.split133.us.i.i

.lr.ph.split.split.i.preheader.split.split.us.i:  ; preds = %.lr.ph.split.split.i.preheader.split.i
  %i.cm = load i8, ptr %i.s, align 1, !noalias !88696, !noundef !313
  %i.cn = icmp sgt i8 %i.cm, -1
  br i1 %i.cn, label %.lr.ph.split.split.i.us47.us.preheader.i, label %.lr.ph.split.split.i.preheader.split.split.us.split.i

.lr.ph.split.split.i.us47.us.preheader.i:         ; preds = %.lr.ph.split.split.i.preheader.split.split.us.i
  %i.co = trunc nuw i8 %.promoted125.i.i to i1
  br i1 %i.co, label %_RNvYNtNtNtCscI6d9CVNmLh_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i, label %_RINvMNtCscI6d9CVNmLh_4core3stre16trim_end_matchesReECsc85D0lJ81Z_16lance_datafusion.exit

.lr.ph.split.split.i.preheader.split.split.us.split.i: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.i
  tail call void @llvm.assume(i1 %i.t)
  %i.cp = load i8, ptr %i.u, align 1, !noalias !88696, !noundef !313
  %i.cq = icmp slt i8 %i.cp, -64
  br i1 %i.cq, label %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.i, label %.lr.ph.split.split.i.preheader.split.split.us.split.split.i

.lr.ph.split.split.i.preheader.split.split.us.split.split.us.i: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.i
  tail call void @llvm.assume(i1 %i.v)
  %i.cr = load i8, ptr %i.w, align 1, !noalias !88696, !noundef !313
  %i.cs = icmp slt i8 %i.cr, -64
  br i1 %i.cs, label %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.us.i, label %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.i

.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.us.i: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.i
  tail call void @llvm.assume(i1 %i.x)
  %i.ct = trunc nuw i8 %.promoted125.i.i to i1
  br i1 %i.ct, label %_RNvYNtNtNtCscI6d9CVNmLh_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i, label %_RINvMNtCscI6d9CVNmLh_4core3stre16trim_end_matchesReECsc85D0lJ81Z_16lance_datafusion.exit

.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.i: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.i
  %i.cu = trunc nuw i8 %.promoted125.i.i to i1
  br i1 %i.cu, label %_RNvYNtNtNtCscI6d9CVNmLh_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i, label %_RINvMNtCscI6d9CVNmLh_4core3stre16trim_end_matchesReECsc85D0lJ81Z_16lance_datafusion.exit

.lr.ph.split.split.i.preheader.split.split.us.split.split.i: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.i
  %i.cv = trunc nuw i8 %.promoted125.i.i to i1
  br i1 %i.cv, label %_RNvYNtNtNtCscI6d9CVNmLh_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i, label %_RINvMNtCscI6d9CVNmLh_4core3stre16trim_end_matchesReECsc85D0lJ81Z_16lance_datafusion.exit

.lr.ph.split.us.split.i.i:                        ; preds = %.lr.ph.i.i
  %i.cw = trunc nuw i8 %.promoted125.i.i to i1
  br i1 %i.cw, label %_RNvYNtNtNtCscI6d9CVNmLh_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.thread

.split133.us.i.i:                                 ; preds = %.lr.ph.split.split.i.preheader.split.i, %.lr.ph.split.split.i.preheader.split.us.i
  tail call void @_RNvNtCscI6d9CVNmLh_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o, i64 noundef 0, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5830) #72, !noalias !88694
  unreachable

.split109.us.i.i:                                 ; preds = %.split48.i.us.i.i
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.bb, i64 noundef range(i64 0, -9223372036854775808) %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) #72, !noalias !88697
  unreachable

.split115.us.i.i:                                 ; preds = %.lr.ph215
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %umax.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @205) #72, !noalias !88697
  unreachable

.split119.us.i.i:                                 ; preds = %bb.h
  %i.cx = add i64 %i.at, %i.k
  %umax72.i.i.i.i = tail call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.o, i64 %i.cx)
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %umax72.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) #72, !noalias !88697
  unreachable

.split52.us.i.i.i:                                ; preds = %.lr.ph
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.bd, i64 noundef range(i64 0, -9223372036854775808) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @208) #72, !noalias !88697
  unreachable

_RNvYNtNtNtCscI6d9CVNmLh_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i: ; preds = %.lr.ph.split.us.split.i.i, %.lr.ph.split.split.i.preheader.split.split.us.split.split.i, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.i, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.us.i, %.lr.ph.split.split.i.us47.us.preheader.i, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.i, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.i, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.us.i, %.lr.ph.split.split.i.us.us.us.preheader.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88691)
  br label %_RINvMNtCscI6d9CVNmLh_4core3stre16trim_end_matchesReECsc85D0lJ81Z_16lance_datafusion.exit

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.thread: ; preds = %.split50.us.i.us.i.i._crit_edge, %.split.i.i, %.split.us.i.i, %.lr.ph.split.us.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !88688
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !88698, !noundef !313 ; 2 uses
  %i.da = icmp sgt i64 %i.cz, -1
  tail call void @llvm.assume(i1 %i.da)
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsc85D0lJ81Z_16lance_datafusion.exit

_RINvMNtCscI6d9CVNmLh_4core3stre16trim_end_matchesReECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.b, %bb.l, %bb.c, %.lr.ph.split.split.i.us.us.us.preheader.i, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.us.i, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.i, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.i, %.lr.ph.split.split.i.us47.us.preheader.i, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.us.i, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.i, %.lr.ph.split.split.i.preheader.split.split.us.split.split.i, %_RNvYNtNtNtCscI6d9CVNmLh_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i
  %.sroa.0.0.i = phi i64 [ %i.k, %.lr.ph.split.split.i.us47.us.preheader.i ], [ %i.k, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.us.i ], [ %i.k, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.i ], [ %i.k, %.lr.ph.split.split.i.preheader.split.split.us.split.split.i ], [ %i.k, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.i ], [ %i.k, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.us.i ], [ %i.k, %.lr.ph.split.split.i.us.us.us.preheader.i ], [ %i.k, %_RNvYNtNtNtCscI6d9CVNmLh_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i ], [ %i.k, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.i ], [ %.lcssa7083.i, %bb.l ], [ %.lcssa7083.i, %bb.c ], [ %.lcssa7083.i, %bb.b ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !88688
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88699)
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !88700, !noundef !313 ; 5 uses
  %i.dd = load i64, ptr %2, align 8, !range !320, !alias.scope !88700, !noundef !313
  %i.de = sub i64 %i.dd, %i.dc
  %i.df = icmp ugt i64 %.sroa.0.0.i, %i.de
  br i1 %i.df, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i, !prof !88701

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.thread.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core3stre16trim_end_matchesReECsc85D0lJ81Z_16lance_datafusion.exit
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.dc, i64 noundef %.sroa.0.0.i, i64 noundef 1, i64 noundef 1)
  %i.dg = load i64, ptr %i.db, align 8, !alias.scope !88699, !noundef !313 ; 2 uses
  %i.dh = icmp sgt i64 %i.dg, -1
  tail call void @llvm.assume(i1 %i.dh)
  br label %bb.m

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core3stre16trim_end_matchesReECsc85D0lJ81Z_16lance_datafusion.exit
  %i.di = icmp sgt i64 %i.dc, -1
  tail call void @llvm.assume(i1 %i.di)
  %.not.i = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsc85D0lJ81Z_16lance_datafusion.exit, label %bb.m

bb.m:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.thread.i
  %i.dj = phi i64 [ %i.dg, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.thread.i ], [ %i.dc, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !alias.scope !88699, !nonnull !313, !noundef !313
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dm, ptr nonnull readonly align 1 %i.f, i64 %.sroa.0.0.i, i1 false), !noalias !88699
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsc85D0lJ81Z_16lance_datafusion.exit

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.thread, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.m
  %i.dn = phi ptr [ %i.db, %bb.m ], [ %i.db, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i ], [ %i.cy, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.thread ] ; 6 uses
  %.sroa.0.0.i25 = phi i64 [ %.sroa.0.0.i, %bb.m ], [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i ], [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.thread ]
  %i.do = phi i64 [ %i.dj, %bb.m ], [ %i.dc, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i ], [ %i.cz, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.thread ]
  %i.dp = add i64 %i.do, %.sroa.0.0.i25           ; 6 uses
  store i64 %i.dp, ptr %i.dn, align 8, !alias.scope !88699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.dr = load ptr, ptr %i.dq, align 8, !invariant.load !313, !nonnull !313
  call void %i.dr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %0)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !noundef !313 ; 4 uses
  %i.du = icmp ult i64 %i.dt, 1152921504606846976
  call void @llvm.assume(i1 %i.du)
  %i.dv = icmp eq i64 %i.dt, 0
  br i1 %i.dv, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsc85D0lJ81Z_16lance_datafusion.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !88702)
  %i.dw = icmp sgt i64 %i.dp, -1
  call void @llvm.assume(i1 %i.dw)
  %i.dx = load i64, ptr %2, align 8, !range !320, !alias.scope !88703, !noundef !313
  %i.dy = icmp eq i64 %i.dx, %i.dp
  br i1 %i.dy, label %bb.o, label %bb.s, !prof !314

bb.o:                                             ; preds = %bb.n
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.dp, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit18, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsc85D0lJ81Z_16lance_datafusion.exit
  %.val9 = load i64, ptr %i.b, align 8            ; 2 uses
  %i.dz = icmp eq i64 %.val9, 0
  br i1 %i.dz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRINtNtBG_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val10 = load ptr, ptr %i.ea, align 8, !nonnull !313, !noundef !313
  %i.eb = shl nuw i64 %.val9, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.eb, i64 noundef range(i64 1, -9223372036854775807) 8) #71
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRINtNtBG_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECsc85D0lJ81Z_16lance_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRINtNtBG_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %bb.u, %bb.s, %bb.t, %bb.o
  %lpad.loopexit.split-lp222 = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.ec = icmp eq i64 %.val, 0
  br i1 %i.ec, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRINtNtBG_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECsc85D0lJ81Z_16lance_datafusion.exit13, label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val8 = load ptr, ptr %i.ed, align 8, !nonnull !313, !noundef !313
  %i.ee = shl nuw i64 %.val, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.ee, i64 noundef range(i64 1, -9223372036854775807) 8) #71
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRINtNtBG_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECsc85D0lJ81Z_16lance_datafusion.exit13

bb.s:                                             ; preds = %bb.o, %bb.n
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !alias.scope !88702, !nonnull !313, !noundef !313
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.dp
  store i8 40, ptr %i.eh, align 1, !noalias !88702
  %i.ei = add nuw i64 %i.dp, 1
  store i64 %i.ei, ptr %i.dn, align 8, !alias.scope !88702
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !nonnull !313, !noundef !313 ; 3 uses
  %.idx = shl nuw nsw i64 %i.dt, 3
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.idx
  %.pre = load ptr, ptr %i.ek, align 8            ; 2 uses
  %i.em = load ptr, ptr %.pre, align 8, !nonnull !313, !noundef !313
  %i.en = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !nonnull !313, !align !322, !noundef !313 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load i64, ptr %i.ep, align 8, !range !338, !invariant.load !313
  %i.er = add nsw i64 %i.eq, -1
  %i.es = and i64 %i.er, -16
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  invoke fastcc void @_RNvNtCsc85D0lJ81Z_16lance_datafusion4exec27display_plan_one_liner_impl(ptr noundef nonnull %i.eu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.eo, ptr noalias noundef align 8 dereferenceable(24) %2)
          to label %.peel.next.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.peel.next.preheader:                             ; preds = %bb.s
  %i.ev = icmp eq i64 %i.dt, 1
  br i1 %i.ev, label %.peel.next._crit_edge, label %.lr.ph221

.lr.ph221:                                        ; preds = %.peel.next.preheader
  %.sroa.0.0219 = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  br label %bb.v

.peel.next:                                       ; preds = %bb.u
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.0220, i64 8 ; 2 uses
  %i.ew = icmp eq ptr %.sroa.0.0, %i.el
  br i1 %i.ew, label %.peel.next._crit_edge, label %bb.v, !llvm.loop !88679

.peel.next._crit_edge:                            ; preds = %.peel.next, %.peel.next.preheader
  %.pre127 = load i64, ptr %i.dn, align 8, !alias.scope !88704 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !88704)
  %i.ex = icmp sgt i64 %.pre127, -1
  call void @llvm.assume(i1 %i.ex)
  %i.ey = load i64, ptr %2, align 8, !range !320, !alias.scope !88705, !noundef !313
  %i.ez = icmp eq i64 %i.ey, %.pre127
  br i1 %i.ez, label %bb.t, label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit18, !prof !314

bb.t:                                             ; preds = %.peel.next._crit_edge
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre127, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit18: ; preds = %bb.t, %.peel.next._crit_edge
  %i.fa = load ptr, ptr %i.ef, align 8, !alias.scope !88704, !nonnull !313, !noundef !313
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.pre127
  store i8 41, ptr %i.fb, align 1, !noalias !88704
  %i.fc = add nuw i64 %.pre127, 1
  store i64 %i.fc, ptr %i.dn, align 8, !alias.scope !88704
  br label %bb.p

bb.u:                                             ; preds = %bb.v, %bb.w
  %i.fd = load ptr, ptr %i.ef, align 8, !alias.scope !88706, !nonnull !313, !noundef !313
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fq
  store i8 44, ptr %i.fe, align 1, !noalias !88706
  %i.ff = add nuw i64 %i.fq, 1
  store i64 %i.ff, ptr %i.dn, align 8, !alias.scope !88706
  %i.fg = load ptr, ptr %.sroa.0.0220, align 8, !nonnull !313, !align !322, !noundef !313 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !nonnull !313, !noundef !313
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !nonnull !313, !align !322, !noundef !313 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !range !338, !invariant.load !313
  %i.fm = add nsw i64 %i.fl, -1
  %i.fn = and i64 %i.fm, -16
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  invoke fastcc void @_RNvNtCsc85D0lJ81Z_16lance_datafusion4exec27display_plan_one_liner_impl(ptr noundef nonnull %i.fp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.fj, ptr noalias noundef align 8 dereferenceable(24) %2)
          to label %.peel.next unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !88679
end_hunk_1
