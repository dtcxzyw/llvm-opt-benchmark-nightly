Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.03?download=true
inline.NumInlined: 6210
inline.NumDeleted: 2657
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort18small_sort_networkINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1k_9predicate19ProjectionPredicateB27_EENCINvMB8_SB1f_20sort_unstable_by_keyNtNtB2b_6def_id6TermIdNCNvMs1_NtB2d_5lowerNtB4U_17TyLoweringContext15lower_dyn_traits4_0E0EB2d_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !4128)
  call void @llvm.experimental.noalias.scope.decl(metadata !4129)
  call void @llvm.experimental.noalias.scope.decl(metadata !4130)
  %i.coj = load i32, ptr %i.i, align 4, !range !12, !alias.scope !4131, !noalias !4132, !noundef !11 ; 2 uses
  %i.cok = trunc nuw nsw i32 %i.coj to i8
  %i.col = load i32, ptr %i.h, align 4, !range !12, !alias.scope !4133, !noalias !4134, !noundef !11 ; 3 uses
  %i.com = trunc nuw nsw i32 %i.col to i8
  %i.con = sub nsw i8 %i.cok, %i.com              ; 2 uses
  %i.coo = icmp eq i8 %i.con, 0
  br i1 %i.coo, label %bb.mk, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12swap_if_lessINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1e_9predicate19ProjectionPredicateB21_EENCINvMB8_SB19_20sort_unstable_by_keyNtNtB25_6def_id6TermIdNCNvMs1_NtB27_5lowerNtB4O_17TyLoweringContext15lower_dyn_traits4_0E0EB27_.exit46.i60

bb.mk:                                            ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12swap_if_lessINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1e_9predicate19ProjectionPredicateB21_EENCINvMB8_SB19_20sort_unstable_by_keyNtNtB25_6def_id6TermIdNCNvMs1_NtB27_5lowerNtB4O_17TyLoweringContext15lower_dyn_traits4_0E0EB27_.exit44.i58
  %i.cop = trunc nuw i32 %i.coj to i1
  br i1 %i.cop, label %bb.ml, label %bb.mm

bb.ml:                                            ; preds = %bb.mk
  %i.coq = icmp ne i32 %i.col, 0
  call void @llvm.assume(i1 %i.coq)
  %i.cor = load i32, ptr %i.qf, align 4, !range !27, !alias.scope !4131, !noalias !4132, !noundef !11 ; 2 uses
  %i.cos = load i32, ptr %i.qg, align 4, !range !27, !alias.scope !4133, !noalias !4134, !noundef !11 ; 2 uses
  %i.cot = call i8 @llvm.ucmp.i8.i32(i32 %i.cor, i32 %i.cos)
  %i.cou = icmp eq i32 %i.cor, %i.cos
  br i1 %i.cou, label %bb.mo, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12swap_if_lessINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1e_9predicate19ProjectionPredicateB21_EENCINvMB8_SB19_20sort_unstable_by_keyNtNtB25_6def_id6TermIdNCNvMs1_NtB27_5lowerNtB4O_17TyLoweringContext15lower_dyn_traits4_0E0EB27_.exit46.i60

bb.mm:                                            ; preds = %bb.mk
  %i.cov = icmp eq i32 %i.col, 0
  call void @llvm.assume(i1 %i.cov)
  %i.cow = load i32, ptr %i.qf, align 4, !range !27, !alias.scope !4131, !noalias !4132, !noundef !11 ; 2 uses
  %i.cox = load i32, ptr %i.qg, align 4, !range !27, !alias.scope !4133, !noalias !4134, !noundef !11 ; 2 uses
  %i.coy = call i8 @llvm.ucmp.i8.i32(i32 %i.cow, i32 %i.cox)
  %i.coz = icmp eq i32 %i.cow, %i.cox
  br i1 %i.coz, label %bb.mn, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12swap_if_lessINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1e_9predicate19ProjectionPredicateB21_EENCINvMB8_SB19_20sort_unstable_by_keyNtNtB25_6def_id6TermIdNCNvMs1_NtB27_5lowerNtB4O_17TyLoweringContext15lower_dyn_traits4_0E0EB27_.exit46.i60

bb.mn:                                            ; preds = %bb.mm
  %i.cpa = load i32, ptr %i.qh, align 4, !alias.scope !4131, !noalias !4132, !noundef !11
  %i.cpb = load i32, ptr %i.qi, align 4, !alias.scope !4133, !noalias !4134, !noundef !11
  %i.cpc = call i8 @llvm.ucmp.i8.i32(i32 %i.cpa, i32 %i.cpb)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12swap_if_lessINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1e_9predicate19ProjectionPredicateB21_EENCINvMB8_SB19_20sort_unstable_by_keyNtNtB25_6def_id6TermIdNCNvMs1_NtB27_5lowerNtB4O_17TyLoweringContext15lower_dyn_traits4_0E0EB27_.exit46.i60

bb.mo:                                            ; preds = %bb.ml
  %i.cpd = load i32, ptr %i.qh, align 4, !alias.scope !4131, !noalias !4132, !noundef !11
  %i.cpe = load i32, ptr %i.qi, align 4, !alias.scope !4133, !noalias !4134, !noundef !11
  %i.cpf = call i8 @llvm.ucmp.i8.i32(i32 %i.cpd, i32 %i.cpe)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12swap_if_lessINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1e_9predicate19ProjectionPredicateB21_EENCINvMB8_SB19_20sort_unstable_by_keyNtNtB25_6def_id6TermIdNCNvMs1_NtB27_5lowerNtB4O_17TyLoweringContext15lower_dyn_traits4_0E0EB27_.exit46.i60

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12swap_if_lessINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1e_9predicate19ProjectionPredicateB21_EENCINvMB8_SB19_20sort_unstable_by_keyNtNtB25_6def_id6TermIdNCNvMs1_NtB27_5lowerNtB4O_17TyLoweringContext15lower_dyn_traits4_0E0EB27_.exit46.i60: ; preds = %bb.mo, %bb.mn, %bb.mm, %bb.ml, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12swap_if_lessINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1e_9predicate19ProjectionPredicateB21_EENCINvMB8_SB19_20sort_unstable_by_keyNtNtB25_6def_id6TermIdNCNvMs1_NtB27_5lowerNtB4O_17TyLoweringContext15lower_dyn_traits4_0E0EB27_.exit44.i58
  %.sroa.0.1.i.i.i.i.i45.i61 = phi i8 [ %i.coy, %bb.mm ], [ %i.con, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12swap_if_lessINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1e_9predicate19ProjectionPredicateB21_EENCINvMB8_SB19_20sort_unstable_by_keyNtNtB25_6def_id6TermIdNCNvMs1_NtB27_5lowerNtB4O_17TyLoweringContext15lower_dyn_traits4_0E0EB27_.exit44.i58 ], [ %i.cpc, %bb.mn ], [ %i.cpf, %bb.mo ], [ %i.cot, %bb.ml ]
  %i.cpg = icmp slt i8 %.sroa.0.1.i.i.i.i.i45.i61, 0 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4120
  %i.cph = select i1 %i.cpg, ptr %i.bug, ptr %i.brb, !unpredictable !11
  %i.cpi = select i1 %i.cpg, ptr %i.brb, ptr %i.bug, !unpredictable !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.cpi, i64 40, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.brb, ptr noundef nonnull align 8 dereferenceable(40) %i.cph, i64 40, i1 false), !alias.scope !3774
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bug, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.byi, i64 24, i1 false), !noalias !4136
  call void @_RNvMst_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB5_9AliasTermNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE24expect_projection_def_idB1c_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !4137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.btf, i64 24, i1 false), !noalias !4138
  call void @_RNvMst_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB5_9AliasTermNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE24expect_projection_def_idB1c_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !4139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4135
  call void @llvm.experimental.noalias.scope.decl(metadata !4140)
  call void @llvm.experimental.noalias.scope.decl(metadata !4141)
  call void @llvm.experimental.noalias.scope.decl(metadata !4142)
  call void @llvm.experimental.noalias.scope.decl(metadata !4143)
  call void @llvm.experimental.noalias.scope.decl(metadata !4144)
  call void @llvm.experimental.noalias.scope.decl(metadata !4145)
  %i.cpj = load i32, ptr %i.d, align 4, !range !12, !alias.scope !4146, !noalias !4147, !noundef !11 ; 2 uses
  %i.cpk = trunc nuw nsw i32 %i.cpj to i8
  %i.cpl = load i32, ptr %i.c, align 4, !range !12, !alias.scope !4148, !noalias !4149, !noundef !11 ; 3 uses
  %i.cpm = trunc nuw nsw i32 %i.cpl to i8
  %i.cpn = sub nsw i8 %i.cpk, %i.cpm              ; 2 uses
  %i.cpo = icmp eq i8 %i.cpn, 0
  br i1 %i.cpo, label %bb.mp, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort13sort9_optimalINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1f_9predicate19ProjectionPredicateB22_EENCINvMB8_SB1a_20sort_unstable_by_keyNtNtB26_6def_id6TermIdNCNvMs1_NtB28_5lowerNtB4P_17TyLoweringContext15lower_dyn_traits4_0E0EB28_.exit

bb.mp:                                            ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12swap_if_lessINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1e_9predicate19ProjectionPredicateB21_EENCINvMB8_SB19_20sort_unstable_by_keyNtNtB25_6def_id6TermIdNCNvMs1_NtB27_5lowerNtB4O_17TyLoweringContext15lower_dyn_traits4_0E0EB27_.exit46.i60
  %i.cpp = trunc nuw i32 %i.cpj to i1
  br i1 %i.cpp, label %bb.mq, label %bb.mr

bb.mq:                                            ; preds = %bb.mp
  %i.cpq = icmp ne i32 %i.cpl, 0
  call void @llvm.assume(i1 %i.cpq)
  %i.cpr = load i32, ptr %i.qj, align 4, !range !27, !alias.scope !4146, !noalias !4147, !noundef !11 ; 2 uses
  %i.cps = load i32, ptr %i.qk, align 4, !range !27, !alias.scope !4148, !noalias !4149, !noundef !11 ; 2 uses
  %i.cpt = call i8 @llvm.ucmp.i8.i32(i32 %i.cpr, i32 %i.cps)
  %i.cpu = icmp eq i32 %i.cpr, %i.cps
  br i1 %i.cpu, label %bb.mt, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort13sort9_optimalINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1f_9predicate19ProjectionPredicateB22_EENCINvMB8_SB1a_20sort_unstable_by_keyNtNtB26_6def_id6TermIdNCNvMs1_NtB28_5lowerNtB4P_17TyLoweringContext15lower_dyn_traits4_0E0EB28_.exit

bb.mr:                                            ; preds = %bb.mp
  %i.cpv = icmp eq i32 %i.cpl, 0
  call void @llvm.assume(i1 %i.cpv)
  %i.cpw = load i32, ptr %i.qj, align 4, !range !27, !alias.scope !4146, !noalias !4147, !noundef !11 ; 2 uses
  %i.cpx = load i32, ptr %i.qk, align 4, !range !27, !alias.scope !4148, !noalias !4149, !noundef !11 ; 2 uses
  %i.cpy = call i8 @llvm.ucmp.i8.i32(i32 %i.cpw, i32 %i.cpx)
  %i.cpz = icmp eq i32 %i.cpw, %i.cpx
  br i1 %i.cpz, label %bb.ms, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort13sort9_optimalINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1f_9predicate19ProjectionPredicateB22_EENCINvMB8_SB1a_20sort_unstable_by_keyNtNtB26_6def_id6TermIdNCNvMs1_NtB28_5lowerNtB4P_17TyLoweringContext15lower_dyn_traits4_0E0EB28_.exit

bb.ms:                                            ; preds = %bb.mr
  %i.cqa = load i32, ptr %i.ql, align 4, !alias.scope !4146, !noalias !4147, !noundef !11
  %i.cqb = load i32, ptr %i.qm, align 4, !alias.scope !4148, !noalias !4149, !noundef !11
  %i.cqc = call i8 @llvm.ucmp.i8.i32(i32 %i.cqa, i32 %i.cqb)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort13sort9_optimalINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1f_9predicate19ProjectionPredicateB22_EENCINvMB8_SB1a_20sort_unstable_by_keyNtNtB26_6def_id6TermIdNCNvMs1_NtB28_5lowerNtB4P_17TyLoweringContext15lower_dyn_traits4_0E0EB28_.exit

bb.mt:                                            ; preds = %bb.mq
  %i.cqd = load i32, ptr %i.ql, align 4, !alias.scope !4146, !noalias !4147, !noundef !11
  %i.cqe = load i32, ptr %i.qm, align 4, !alias.scope !4148, !noalias !4149, !noundef !11
  %i.cqf = call i8 @llvm.ucmp.i8.i32(i32 %i.cqd, i32 %i.cqe)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort13sort9_optimalINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1f_9predicate19ProjectionPredicateB22_EENCINvMB8_SB1a_20sort_unstable_by_keyNtNtB26_6def_id6TermIdNCNvMs1_NtB28_5lowerNtB4P_17TyLoweringContext15lower_dyn_traits4_0E0EB28_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort13sort9_optimalINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1f_9predicate19ProjectionPredicateB22_EENCINvMB8_SB1a_20sort_unstable_by_keyNtNtB26_6def_id6TermIdNCNvMs1_NtB28_5lowerNtB4P_17TyLoweringContext15lower_dyn_traits4_0E0EB28_.exit: ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12swap_if_lessINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1e_9predicate19ProjectionPredicateB21_EENCINvMB8_SB19_20sort_unstable_by_keyNtNtB25_6def_id6TermIdNCNvMs1_NtB27_5lowerNtB4O_17TyLoweringContext15lower_dyn_traits4_0E0EB27_.exit46.i60, %bb.mq, %bb.mr, %bb.ms, %bb.mt
  %.sroa.0.1.i.i.i.i.i47.i63 = phi i8 [ %i.cpy, %bb.mr ], [ %i.cpn, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12swap_if_lessINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1e_9predicate19ProjectionPredicateB21_EENCINvMB8_SB19_20sort_unstable_by_keyNtNtB25_6def_id6TermIdNCNvMs1_NtB27_5lowerNtB4O_17TyLoweringContext15lower_dyn_traits4_0E0EB27_.exit46.i60 ], [ %i.cqc, %bb.ms ], [ %i.cqf, %bb.mt ], [ %i.cpt, %bb.mq ]
  %i.cqg = icmp slt i8 %.sroa.0.1.i.i.i.i.i47.i63, 0 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4135
  %i.cqh = select i1 %i.cqg, ptr %i.byi, ptr %i.btf, !unpredictable !11
  %i.cqi = select i1 %i.cqg, ptr %i.btf, ptr %i.byi, !unpredictable !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.cqi, i64 40, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.btf, ptr noundef nonnull align 8 dereferenceable(40) %i.cqh, i64 40, i1 false), !alias.scope !3774
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.byi, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.mu

bb.mu:                                            ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort13sort9_optimalINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1f_9predicate19ProjectionPredicateB22_EENCINvMB8_SB1a_20sort_unstable_by_keyNtNtB26_6def_id6TermIdNCNvMs1_NtB28_5lowerNtB4P_17TyLoweringContext15lower_dyn_traits4_0E0EB28_.exit, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort14sort13_optimalINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1g_9predicate19ProjectionPredicateB23_EENCINvMB8_SB1b_20sort_unstable_by_keyNtNtB27_6def_id6TermIdNCNvMs1_NtB29_5lowerNtB4Q_17TyLoweringContext15lower_dyn_traits4_0E0EB29_.exit
  %.sroa.01.0 = phi i64 [ 13, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort14sort13_optimalINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1g_9predicate19ProjectionPredicateB23_EENCINvMB8_SB1b_20sort_unstable_by_keyNtNtB27_6def_id6TermIdNCNvMs1_NtB29_5lowerNtB4Q_17TyLoweringContext15lower_dyn_traits4_0E0EB29_.exit ], [ 9, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort13sort9_optimalINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1f_9predicate19ProjectionPredicateB22_EENCINvMB8_SB1a_20sort_unstable_by_keyNtNtB26_6def_id6TermIdNCNvMs1_NtB28_5lowerNtB4P_17TyLoweringContext15lower_dyn_traits4_0E0EB28_.exit ], [ 1, %bb.f ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1r_9predicate19ProjectionPredicateB2e_EENCINvMB8_SB1m_20sort_unstable_by_keyNtNtB2i_6def_id6TermIdNCNvMs1_NtB2k_5lowerNtB51_17TyLoweringContext15lower_dyn_traits4_0E0EB2k_(ptr noalias nofree noundef nonnull align 8 %.sroa.02.0, i64 noundef %.sroa.8.0, i64 noundef %.sroa.01.0, ptr noalias nofree nonnull align 8 poison)
  br i1 %i.mq, label %.sink.split, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %.not = icmp eq ptr %.sroa.02.0, %0
  br i1 %.not, label %bb.e, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1l_9predicate19ProjectionPredicateB28_EENCINvMB8_SB1g_20sort_unstable_by_keyNtNtB2c_6def_id6TermIdNCNvMs1_NtB2e_5lowerNtB4V_17TyLoweringContext15lower_dyn_traits4_0E0EB2e_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noundef nonnull %i.mm)
  %i.cqj = mul nuw nsw i64 %1, 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.mm, i64 %i.cqj, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.mu, %bb.mw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mm)
  br label %bb.mx

bb.mx:                                            ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort18small_sort_networkNtCsileJQcQObtj_7hir_def7TraitIdNvYB1f_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 4               ; 5 uses
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %1, 32
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = lshr i64 %1, 1                           ; 4 uses
  %i.e = icmp samesign ult i64 %1, 18             ; 2 uses
  %. = select i1 %i.e, i64 %1, i64 %i.d
  %i.f = getelementptr [8 x i8], ptr %0, i64 %i.d ; 3 uses
  %i.g = sub nuw nsw i64 %1, %i.d
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.l, %bb.c
  %.sroa.8.0 = phi i64 [ %., %bb.c ], [ %i.g, %bb.l ] ; 5 uses
  %.sroa.02.0 = phi ptr [ %0, %bb.c ], [ %i.f, %bb.l ] ; 75 uses
  %i.h = icmp ugt i64 %.sroa.8.0, 12
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp samesign ugt i64 %.sroa.8.0, 8
  br i1 %i.i, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 96 ; 10 uses
  %.val.i.i = load i32, ptr %i.j, align 4, !range !27, !alias.scope !4168, !noundef !11 ; 3 uses
  %i.k = getelementptr i8, ptr %.sroa.02.0, i64 100 ; 4 uses
  %.val1.i.i = load i32, ptr %i.k, align 4, !alias.scope !4168
  %.val2.i.i = load i32, ptr %.sroa.02.0, align 4, !range !27, !alias.scope !4168, !noundef !11 ; 3 uses
  %i.l = getelementptr i8, ptr %.sroa.02.0, i64 4 ; 3 uses
  %.val3.i.i = load i32, ptr %i.l, align 4, !alias.scope !4168
  %i.m = icmp eq i32 %.val.i.i, %.val2.i.i
  %i.n = icmp ult i32 %.val1.i.i, %.val3.i.i
  %i.o = icmp ult i32 %.val.i.i, %.val2.i.i
  %i.p = select i1 %i.m, i1 %i.n, i1 %i.o         ; 3 uses
  %i.q = select i1 %i.p, ptr %i.j, ptr %.sroa.02.0, !unpredictable !11
  %i.r = select i1 %i.p, ptr %.sroa.02.0, ptr %i.j, !unpredictable !11
  %i.s = select i1 %i.p, i32 %.val2.i.i, i32 %.val.i.i, !unpredictable !11 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.u = load i32, ptr %i.t, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %i.v = load i64, ptr %i.q, align 4, !alias.scope !4168
  store i64 %i.v, ptr %.sroa.02.0, align 4, !alias.scope !4168
  store i32 %i.s, ptr %i.j, align 4, !alias.scope !4168
  store i32 %i.u, ptr %i.k, align 4, !alias.scope !4168
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 8 ; 17 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 80 ; 20 uses
  %.val.i1.i = load i32, ptr %i.x, align 4, !range !27, !alias.scope !4168, !noundef !11 ; 3 uses
  %i.y = getelementptr i8, ptr %.sroa.02.0, i64 84 ; 6 uses
  %.val1.i2.i = load i32, ptr %i.y, align 4, !alias.scope !4168
  %.val2.i3.i = load i32, ptr %i.w, align 4, !range !27, !alias.scope !4168, !noundef !11 ; 3 uses
  %i.z = getelementptr i8, ptr %.sroa.02.0, i64 12 ; 3 uses
  %.val3.i4.i = load i32, ptr %i.z, align 4, !alias.scope !4168
  %i.aa = icmp eq i32 %.val.i1.i, %.val2.i3.i
  %i.ab = icmp ult i32 %.val1.i2.i, %.val3.i4.i
  %i.ac = icmp ult i32 %.val.i1.i, %.val2.i3.i
  %i.ad = select i1 %i.aa, i1 %i.ab, i1 %i.ac     ; 3 uses
  %i.ae = select i1 %i.ad, ptr %i.x, ptr %i.w, !unpredictable !11
  %i.af = select i1 %i.ad, ptr %i.w, ptr %i.x, !unpredictable !11
  %i.ag = select i1 %i.ad, i32 %.val2.i3.i, i32 %.val.i1.i, !unpredictable !11 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %i.aj = load i64, ptr %i.ae, align 4, !alias.scope !4168 ; 4 uses
  store i64 %i.aj, ptr %i.w, align 4, !alias.scope !4168
  store i32 %i.ag, ptr %i.x, align 4, !alias.scope !4168
  store i32 %i.ai, ptr %i.y, align 4, !alias.scope !4168
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 16 ; 18 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 72 ; 24 uses
  %.val.i5.i = load i32, ptr %i.al, align 4, !range !27, !alias.scope !4168, !noundef !11 ; 3 uses
  %i.am = getelementptr i8, ptr %.sroa.02.0, i64 76 ; 7 uses
  %.val1.i6.i = load i32, ptr %i.am, align 4, !alias.scope !4168
  %.val2.i7.i = load i32, ptr %i.ak, align 4, !range !27, !alias.scope !4168, !noundef !11 ; 3 uses
  %i.an = getelementptr i8, ptr %.sroa.02.0, i64 20 ; 3 uses
  %.val3.i8.i = load i32, ptr %i.an, align 4, !alias.scope !4168
  %i.ao = icmp eq i32 %.val.i5.i, %.val2.i7.i
  %i.ap = icmp ult i32 %.val1.i6.i, %.val3.i8.i
  %i.aq = icmp ult i32 %.val.i5.i, %.val2.i7.i
  %i.ar = select i1 %i.ao, i1 %i.ap, i1 %i.aq     ; 3 uses
  %i.as = select i1 %i.ar, ptr %i.al, ptr %i.ak, !unpredictable !11
  %i.at = select i1 %i.ar, ptr %i.ak, ptr %i.al, !unpredictable !11
  %i.au = select i1 %i.ar, i32 %.val2.i7.i, i32 %.val.i5.i, !unpredictable !11 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 4, !alias.scope !4168 ; 4 uses
  store i64 %i.ax, ptr %i.ak, align 4, !alias.scope !4168
  store i32 %i.au, ptr %i.al, align 4, !alias.scope !4168
  store i32 %i.aw, ptr %i.am, align 4, !alias.scope !4168
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 24 ; 25 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 56 ; 23 uses
  %.val.i9.i = load i32, ptr %i.az, align 4, !range !27, !alias.scope !4168, !noundef !11 ; 3 uses
  %i.ba = getelementptr i8, ptr %.sroa.02.0, i64 60 ; 7 uses
  %.val1.i10.i = load i32, ptr %i.ba, align 4, !alias.scope !4168
  %.val2.i11.i = load i32, ptr %i.ay, align 4, !range !27, !alias.scope !4168, !noundef !11 ; 3 uses
  %i.bb = getelementptr i8, ptr %.sroa.02.0, i64 28 ; 6 uses
  %.val3.i12.i = load i32, ptr %i.bb, align 4, !alias.scope !4168
  %i.bc = icmp eq i32 %.val.i9.i, %.val2.i11.i
  %i.bd = icmp ult i32 %.val1.i10.i, %.val3.i12.i
  %i.be = icmp ult i32 %.val.i9.i, %.val2.i11.i
  %i.bf = select i1 %i.bc, i1 %i.bd, i1 %i.be     ; 3 uses
  %i.bg = select i1 %i.bf, ptr %i.az, ptr %i.ay, !unpredictable !11
  %i.bh = select i1 %i.bf, ptr %i.ay, ptr %i.az, !unpredictable !11
  %i.bi = select i1 %i.bf, i32 %.val2.i11.i, i32 %.val.i9.i, !unpredictable !11 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %i.bl = load i64, ptr %i.bg, align 4, !alias.scope !4168 ; 4 uses
  store i64 %i.bl, ptr %i.ay, align 4, !alias.scope !4168
  store i32 %i.bi, ptr %i.az, align 4, !alias.scope !4168
  store i32 %i.bk, ptr %i.ba, align 4, !alias.scope !4168
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 40 ; 23 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 88 ; 18 uses
  %.val.i13.i = load i32, ptr %i.bn, align 4, !range !27, !alias.scope !4168, !noundef !11 ; 3 uses
  %i.bo = getelementptr i8, ptr %.sroa.02.0, i64 92 ; 6 uses
  %.val1.i14.i = load i32, ptr %i.bo, align 4, !alias.scope !4168
  %.val2.i15.i = load i32, ptr %i.bm, align 4, !range !27, !alias.scope !4168, !noundef !11 ; 3 uses
  %i.bp = getelementptr i8, ptr %.sroa.02.0, i64 44 ; 5 uses
  %.val3.i16.i = load i32, ptr %i.bp, align 4, !alias.scope !4168
  %i.bq = icmp eq i32 %.val.i13.i, %.val2.i15.i
  %i.br = icmp ult i32 %.val1.i14.i, %.val3.i16.i
  %i.bs = icmp ult i32 %.val.i13.i, %.val2.i15.i
  %i.bt = select i1 %i.bq, i1 %i.br, i1 %i.bs     ; 3 uses
  %i.bu = select i1 %i.bt, ptr %i.bn, ptr %i.bm, !unpredictable !11
  %i.bv = select i1 %i.bt, ptr %i.bm, ptr %i.bn, !unpredictable !11
  %i.bw = select i1 %i.bt, i32 %.val2.i15.i, i32 %.val.i13.i, !unpredictable !11 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %i.bz = load i64, ptr %i.bu, align 4, !alias.scope !4168
  store i64 %i.bz, ptr %i.bm, align 4, !alias.scope !4168
  store i32 %i.bw, ptr %i.bn, align 4, !alias.scope !4168
  store i32 %i.by, ptr %i.bo, align 4, !alias.scope !4168
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 48 ; 26 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 64 ; 23 uses
  %.val.i17.i = load i32, ptr %i.cb, align 4, !range !27, !alias.scope !4168, !noundef !11 ; 3 uses
  %i.cc = getelementptr i8, ptr %.sroa.02.0, i64 68 ; 6 uses
  %.val1.i18.i = load i32, ptr %i.cc, align 4, !alias.scope !4168
  %.val2.i19.i = load i32, ptr %i.ca, align 4, !range !27, !alias.scope !4168, !noundef !11 ; 3 uses
  %i.cd = getelementptr i8, ptr %.sroa.02.0, i64 52 ; 6 uses
  %.val3.i20.i = load i32, ptr %i.cd, align 4, !alias.scope !4168
  %i.ce = icmp eq i32 %.val.i17.i, %.val2.i19.i
  %i.cf = icmp ult i32 %.val1.i18.i, %.val3.i20.i
  %i.cg = icmp ult i32 %.val.i17.i, %.val2.i19.i
  %i.ch = select i1 %i.ce, i1 %i.cf, i1 %i.cg     ; 3 uses
  %i.ci = select i1 %i.ch, ptr %i.cb, ptr %i.ca, !unpredictable !11
  %i.cj = select i1 %i.ch, ptr %i.ca, ptr %i.cb, !unpredictable !11
  %i.ck = select i1 %i.ch, i32 %.val2.i19.i, i32 %.val.i17.i, !unpredictable !11 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %i.cn = load i64, ptr %i.ci, align 4, !alias.scope !4168 ; 4 uses
  store i64 %i.cn, ptr %i.ca, align 4, !alias.scope !4168
  store i32 %i.ck, ptr %i.cb, align 4, !alias.scope !4168
  store i32 %i.cm, ptr %i.cc, align 4, !alias.scope !4168
  %i.co = trunc i64 %i.cn to i32                  ; 3 uses
  %i.cp = lshr i64 %i.cn, 32
  %i.cq = trunc i64 %i.aj to i32                  ; 3 uses
  %i.cr = lshr i64 %i.aj, 32
  %i.cs = icmp eq i32 %i.co, %i.cq
  %i.ct = icmp samesign ult i64 %i.cp, %i.cr
  %i.cu = icmp ult i32 %i.co, %i.cq
  %i.cv = select i1 %i.cs, i1 %i.ct, i1 %i.cu     ; 3 uses
  %i.cw = select i1 %i.cv, ptr %i.w, ptr %i.ca, !unpredictable !11
  %i.cx = select i1 %i.cv, i32 %i.cq, i32 %i.co, !unpredictable !11 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %i.da = select i1 %i.cv, i64 %i.cn, i64 %i.aj, !unpredictable !11 ; 4 uses
  store i64 %i.da, ptr %i.w, align 4, !alias.scope !4168
  store i32 %i.cx, ptr %i.ca, align 4, !alias.scope !4168
  store i32 %i.cz, ptr %i.cd, align 4, !alias.scope !4168
  %i.db = trunc i64 %i.bl to i32                  ; 3 uses
  %i.dc = lshr i64 %i.bl, 32
  %i.dd = trunc i64 %i.ax to i32                  ; 3 uses
  %i.de = lshr i64 %i.ax, 32
  %i.df = icmp eq i32 %i.db, %i.dd
  %i.dg = icmp samesign ult i64 %i.dc, %i.de
  %i.dh = icmp ult i32 %i.db, %i.dd
  %i.di = select i1 %i.df, i1 %i.dg, i1 %i.dh     ; 3 uses
  %i.dj = select i1 %i.di, ptr %i.ak, ptr %i.ay, !unpredictable !11
  %i.dk = select i1 %i.di, i32 %i.dd, i32 %i.db, !unpredictable !11 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %i.dn = select i1 %i.di, i64 %i.bl, i64 %i.ax, !unpredictable !11 ; 4 uses
  store i64 %i.dn, ptr %i.ak, align 4, !alias.scope !4168
  store i32 %i.dk, ptr %i.ay, align 4, !alias.scope !4168
  store i32 %i.dm, ptr %i.bb, align 4, !alias.scope !4168
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 32 ; 23 uses
  %.val2.i31.i = load i32, ptr %i.do, align 4, !range !27, !alias.scope !4168, !noundef !11 ; 3 uses
  %i.dp = getelementptr i8, ptr %.sroa.02.0, i64 36 ; 6 uses
  %.val3.i32.i = load i32, ptr %i.dp, align 4, !alias.scope !4168
  %i.dq = icmp eq i32 %i.bw, %.val2.i31.i
  %i.dr = icmp ult i32 %i.by, %.val3.i32.i
  %i.ds = icmp ult i32 %i.bw, %.val2.i31.i
  %i.dt = select i1 %i.dq, i1 %i.dr, i1 %i.ds     ; 3 uses
  %i.du = select i1 %i.dt, ptr %i.bn, ptr %i.do, !unpredictable !11
  %i.dv = select i1 %i.dt, ptr %i.do, ptr %i.bn, !unpredictable !11
  %i.dw = select i1 %i.dt, i32 %.val2.i31.i, i32 %i.bw, !unpredictable !11 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.dy = load i32, ptr %i.dx, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %i.dz = load i64, ptr %i.du, align 4, !alias.scope !4168 ; 4 uses
  store i64 %i.dz, ptr %i.do, align 4, !alias.scope !4168
  store i32 %i.dw, ptr %i.bn, align 4, !alias.scope !4168
  store i32 %i.dy, ptr %i.bo, align 4, !alias.scope !4168
  %i.ea = icmp eq i32 %i.au, %i.bi
  %i.eb = icmp ult i32 %i.aw, %i.bk
  %i.ec = icmp ult i32 %i.au, %i.bi
  %i.ed = select i1 %i.ea, i1 %i.eb, i1 %i.ec     ; 3 uses
  %i.ee = select i1 %i.ed, ptr %i.al, ptr %i.az, !unpredictable !11
  %i.ef = select i1 %i.ed, ptr %i.az, ptr %i.al, !unpredictable !11
  %i.eg = select i1 %i.ed, i32 %i.bi, i32 %i.au, !unpredictable !11 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %i.ej = load i64, ptr %i.ee, align 4, !alias.scope !4168 ; 4 uses
  store i64 %i.ej, ptr %i.az, align 4, !alias.scope !4168
  store i32 %i.eg, ptr %i.al, align 4, !alias.scope !4168
  store i32 %i.ei, ptr %i.am, align 4, !alias.scope !4168
  %i.ek = icmp eq i32 %i.ag, %i.ck
  %i.el = icmp ult i32 %i.ai, %i.cm
  %i.em = icmp ult i32 %i.ag, %i.ck
  %i.en = select i1 %i.ek, i1 %i.el, i1 %i.em     ; 3 uses
  %i.eo = select i1 %i.en, ptr %i.x, ptr %i.cb, !unpredictable !11
  %i.ep = select i1 %i.en, ptr %i.cb, ptr %i.x, !unpredictable !11
  %i.eq = select i1 %i.en, i32 %i.ck, i32 %i.ag, !unpredictable !11 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.es = load i32, ptr %i.er, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %i.et = load i64, ptr %i.eo, align 4, !alias.scope !4168 ; 4 uses
  store i64 %i.et, ptr %i.cb, align 4, !alias.scope !4168
  store i32 %i.eq, ptr %i.x, align 4, !alias.scope !4168
  store i32 %i.es, ptr %i.y, align 4, !alias.scope !4168
  %i.eu = trunc i64 %i.dz to i32                  ; 3 uses
  %i.ev = lshr i64 %i.dz, 32
  %i.ew = trunc nuw i64 %i.ev to i32
  %.val2.i43.i = load i32, ptr %.sroa.02.0, align 4, !range !27, !alias.scope !4168, !noundef !11 ; 3 uses
  %.val3.i44.i = load i32, ptr %i.l, align 4, !alias.scope !4168
  %i.ex = icmp eq i32 %.val2.i43.i, %i.eu
  %i.ey = icmp ugt i32 %.val3.i44.i, %i.ew
  %i.ez = icmp ugt i32 %.val2.i43.i, %i.eu
  %i.fa = select i1 %i.ex, i1 %i.ey, i1 %i.ez     ; 3 uses
  %i.fb = select i1 %i.fa, ptr %.sroa.02.0, ptr %i.do, !unpredictable !11
  %i.fc = select i1 %i.fa, i32 %.val2.i43.i, i32 %i.eu, !unpredictable !11 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %.val5.i = load i64, ptr %.sroa.02.0, align 4, !alias.scope !4168
  %i.ff = select i1 %i.fa, i64 %i.dz, i64 %.val5.i, !unpredictable !11
  store i64 %i.ff, ptr %.sroa.02.0, align 4, !alias.scope !4168
  store i32 %i.fc, ptr %i.do, align 4, !alias.scope !4168
  store i32 %i.fe, ptr %i.dp, align 4, !alias.scope !4168
  %i.fg = trunc i64 %i.dn to i32                  ; 3 uses
  %i.fh = lshr i64 %i.dn, 32
  %i.fi = trunc i64 %i.da to i32                  ; 3 uses
  %i.fj = lshr i64 %i.da, 32
  %i.fk = icmp eq i32 %i.fg, %i.fi
  %i.fl = icmp samesign ult i64 %i.fh, %i.fj
  %i.fm = icmp ult i32 %i.fg, %i.fi
  %i.fn = select i1 %i.fk, i1 %i.fl, i1 %i.fm     ; 3 uses
  %i.fo = select i1 %i.fn, ptr %i.w, ptr %i.ak, !unpredictable !11
  %i.fp = select i1 %i.fn, i32 %i.fi, i32 %i.fg, !unpredictable !11 ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fr = load i32, ptr %i.fq, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %i.fs = select i1 %i.fn, i64 %i.dn, i64 %i.da, !unpredictable !11
  store i64 %i.fs, ptr %i.w, align 4, !alias.scope !4168
  store i32 %i.fp, ptr %i.ak, align 4, !alias.scope !4168
  store i32 %i.fr, ptr %i.an, align 4, !alias.scope !4168
  %i.ft = icmp eq i32 %i.cx, %i.dk
  %i.fu = icmp ult i32 %i.cz, %i.dm
  %i.fv = icmp ult i32 %i.cx, %i.dk
  %i.fw = select i1 %i.ft, i1 %i.fu, i1 %i.fv     ; 3 uses
  %i.fx = select i1 %i.fw, ptr %i.ay, ptr %i.ca, !unpredictable !11
  %i.fy = select i1 %i.fw, i32 %i.dk, i32 %i.cx, !unpredictable !11 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %.val8.i = load i64, ptr %i.ca, align 4, !alias.scope !4168
  %.val9.i = load i64, ptr %i.ay, align 4, !alias.scope !4168
  %i.gb = select i1 %i.fw, i64 %.val8.i, i64 %.val9.i, !unpredictable !11
  store i64 %i.gb, ptr %i.ay, align 4, !alias.scope !4168
  store i32 %i.fy, ptr %i.ca, align 4, !alias.scope !4168
  store i32 %i.ga, ptr %i.cd, align 4, !alias.scope !4168
  %i.gc = trunc i64 %i.et to i32                  ; 3 uses
  %i.gd = lshr i64 %i.et, 32
  %i.ge = trunc i64 %i.ej to i32                  ; 3 uses
  %i.gf = lshr i64 %i.ej, 32
  %i.gg = icmp eq i32 %i.gc, %i.ge
  %i.gh = icmp samesign ult i64 %i.gd, %i.gf
  %i.gi = icmp ult i32 %i.gc, %i.ge
  %i.gj = select i1 %i.gg, i1 %i.gh, i1 %i.gi     ; 3 uses
  %i.gk = select i1 %i.gj, ptr %i.az, ptr %i.cb, !unpredictable !11
  %i.gl = select i1 %i.gj, i32 %i.ge, i32 %i.gc, !unpredictable !11 ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %i.gn = load i32, ptr %i.gm, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %i.go = select i1 %i.gj, i64 %i.et, i64 %i.ej, !unpredictable !11
  store i64 %i.go, ptr %i.az, align 4, !alias.scope !4168
  store i32 %i.gl, ptr %i.cb, align 4, !alias.scope !4168
  store i32 %i.gn, ptr %i.cc, align 4, !alias.scope !4168
  %i.gp = icmp eq i32 %i.eq, %i.eg
  %i.gq = icmp ult i32 %i.es, %i.ei
  %i.gr = icmp ult i32 %i.eq, %i.eg
  %i.gs = select i1 %i.gp, i1 %i.gq, i1 %i.gr     ; 3 uses
  %i.gt = select i1 %i.gs, ptr %i.x, ptr %i.al, !unpredictable !11
  %i.gu = select i1 %i.gs, ptr %i.al, ptr %i.x, !unpredictable !11
  %i.gv = select i1 %i.gs, i32 %i.eg, i32 %i.eq, !unpredictable !11 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.gx = load i32, ptr %i.gw, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %i.gy = load i64, ptr %i.gt, align 4, !alias.scope !4168 ; 4 uses
  store i64 %i.gy, ptr %i.al, align 4, !alias.scope !4168
  store i32 %i.gv, ptr %i.x, align 4, !alias.scope !4168
  store i32 %i.gx, ptr %i.y, align 4, !alias.scope !4168
  %i.gz = icmp eq i32 %i.s, %i.dw
  %i.ha = icmp ult i32 %i.u, %i.dy
  %i.hb = icmp ult i32 %i.s, %i.dw
  %i.hc = select i1 %i.gz, i1 %i.ha, i1 %i.hb     ; 3 uses
  %i.hd = select i1 %i.hc, ptr %i.j, ptr %i.bn, !unpredictable !11
  %i.he = select i1 %i.hc, ptr %i.bn, ptr %i.j, !unpredictable !11
  %i.hf = select i1 %i.hc, i32 %i.dw, i32 %i.s, !unpredictable !11 ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %i.hh = load i32, ptr %i.hg, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %i.hi = load i64, ptr %i.hd, align 4, !alias.scope !4168 ; 4 uses
  store i64 %i.hi, ptr %i.bn, align 4, !alias.scope !4168
  store i32 %i.hf, ptr %i.j, align 4, !alias.scope !4168
  store i32 %i.hh, ptr %i.k, align 4, !alias.scope !4168
  %i.hj = icmp eq i32 %i.fy, %i.fc
  %i.hk = icmp ult i32 %i.ga, %i.fe
  %i.hl = icmp ult i32 %i.fy, %i.fc
  %i.hm = select i1 %i.hj, i1 %i.hk, i1 %i.hl     ; 3 uses
  %i.hn = select i1 %i.hm, ptr %i.do, ptr %i.ca, !unpredictable !11
  %i.ho = select i1 %i.hm, i32 %i.fc, i32 %i.fy, !unpredictable !11 ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %i.hq = load i32, ptr %i.hp, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %.val12.i = load i64, ptr %i.ca, align 4, !alias.scope !4168
  %.val13.i = load i64, ptr %i.do, align 4, !alias.scope !4168
  %i.hr = select i1 %i.hm, i64 %.val12.i, i64 %.val13.i, !unpredictable !11 ; 4 uses
  store i64 %i.hr, ptr %i.do, align 4, !alias.scope !4168
  store i32 %i.ho, ptr %i.ca, align 4, !alias.scope !4168
  store i32 %i.hq, ptr %i.cd, align 4, !alias.scope !4168
  %i.hs = trunc i64 %i.gy to i32                  ; 3 uses
  %i.ht = lshr i64 %i.gy, 32
  %i.hu = trunc nuw i64 %i.ht to i32
  %.val2.i71.i = load i32, ptr %i.bm, align 4, !range !27, !alias.scope !4168, !noundef !11 ; 3 uses
  %.val3.i72.i = load i32, ptr %i.bp, align 4, !alias.scope !4168
  %i.hv = icmp eq i32 %.val2.i71.i, %i.hs
  %i.hw = icmp ugt i32 %.val3.i72.i, %i.hu
  %i.hx = icmp ugt i32 %.val2.i71.i, %i.hs
  %i.hy = select i1 %i.hv, i1 %i.hw, i1 %i.hx     ; 3 uses
  %i.hz = select i1 %i.hy, ptr %i.bm, ptr %i.al, !unpredictable !11
  %i.ia = select i1 %i.hy, i32 %.val2.i71.i, i32 %i.hs, !unpredictable !11 ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.ic = load i32, ptr %i.ib, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %.val15.i = load i64, ptr %i.bm, align 4, !alias.scope !4168
  %i.id = select i1 %i.hy, i64 %i.gy, i64 %.val15.i, !unpredictable !11 ; 4 uses
  store i64 %i.id, ptr %i.bm, align 4, !alias.scope !4168
  store i32 %i.ia, ptr %i.al, align 4, !alias.scope !4168
  store i32 %i.ic, ptr %i.am, align 4, !alias.scope !4168
  %i.ie = trunc i64 %i.hi to i32                  ; 3 uses
  %i.if = lshr i64 %i.hi, 32
  %i.ig = trunc nuw i64 %i.if to i32
  %i.ih = icmp eq i32 %i.gl, %i.ie
  %i.ii = icmp ugt i32 %i.gn, %i.ig
  %i.ij = icmp ugt i32 %i.gl, %i.ie
  %i.ik = select i1 %i.ih, i1 %i.ii, i1 %i.ij     ; 3 uses
  %i.il = select i1 %i.ik, ptr %i.cb, ptr %i.bn, !unpredictable !11
  %i.im = select i1 %i.ik, i32 %i.gl, i32 %i.ie, !unpredictable !11 ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.io = load i32, ptr %i.in, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %.val17.i = load i64, ptr %i.cb, align 4, !alias.scope !4168
  %i.ip = select i1 %i.ik, i64 %i.hi, i64 %.val17.i, !unpredictable !11 ; 4 uses
  store i64 %i.ip, ptr %i.cb, align 4, !alias.scope !4168
  store i32 %i.im, ptr %i.bn, align 4, !alias.scope !4168
  store i32 %i.io, ptr %i.bo, align 4, !alias.scope !4168
  %i.iq = icmp eq i32 %i.hf, %i.gv
  %i.ir = icmp ult i32 %i.hh, %i.gx
  %i.is = icmp ult i32 %i.hf, %i.gv
  %i.it = select i1 %i.iq, i1 %i.ir, i1 %i.is     ; 3 uses
  %i.iu = select i1 %i.it, ptr %i.j, ptr %i.x, !unpredictable !11
  %i.iv = select i1 %i.it, ptr %i.x, ptr %i.j, !unpredictable !11
  %i.iw = select i1 %i.it, i32 %i.gv, i32 %i.hf, !unpredictable !11
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  %i.iy = load i32, ptr %i.ix, align 4, !alias.scope !4168, !noundef !11
  %i.iz = load i64, ptr %i.iu, align 4, !alias.scope !4168 ; 4 uses
  store i64 %i.iz, ptr %i.x, align 4, !alias.scope !4168
  store i32 %i.iw, ptr %i.j, align 4, !alias.scope !4168
  store i32 %i.iy, ptr %i.k, align 4, !alias.scope !4168
  %i.ja = trunc i64 %i.id to i32                  ; 3 uses
  %i.jb = lshr i64 %i.id, 32
  %i.jc = trunc nuw i64 %i.jb to i32
  %.val2.i83.i = load i32, ptr %.sroa.02.0, align 4, !range !27, !alias.scope !4168, !noundef !11 ; 3 uses
  %.val3.i84.i = load i32, ptr %i.l, align 4, !alias.scope !4168
  %i.jd = icmp eq i32 %.val2.i83.i, %i.ja
  %i.je = icmp ugt i32 %.val3.i84.i, %i.jc
  %i.jf = icmp ugt i32 %.val2.i83.i, %i.ja
  %i.jg = select i1 %i.jd, i1 %i.je, i1 %i.jf     ; 3 uses
  %i.jh = select i1 %i.jg, ptr %.sroa.02.0, ptr %i.bm, !unpredictable !11
  %i.ji = select i1 %i.jg, i32 %.val2.i83.i, i32 %i.ja, !unpredictable !11 ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %i.jk = load i32, ptr %i.jj, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %.val19.i = load i64, ptr %.sroa.02.0, align 4, !alias.scope !4168
  %i.jl = select i1 %i.jg, i64 %i.id, i64 %.val19.i, !unpredictable !11 ; 4 uses
  store i64 %i.jl, ptr %.sroa.02.0, align 4, !alias.scope !4168
  store i32 %i.ji, ptr %i.bm, align 4, !alias.scope !4168
  store i32 %i.jk, ptr %i.bp, align 4, !alias.scope !4168
  %i.jm = trunc i64 %i.ip to i32                  ; 3 uses
  %i.jn = lshr i64 %i.ip, 32
  %i.jo = trunc nuw i64 %i.jn to i32
  %.val2.i87.i = load i32, ptr %i.ay, align 4, !range !27, !alias.scope !4168, !noundef !11 ; 3 uses
  %.val3.i88.i = load i32, ptr %i.bb, align 4, !alias.scope !4168
  %i.jp = icmp eq i32 %.val2.i87.i, %i.jm
  %i.jq = icmp ugt i32 %.val3.i88.i, %i.jo
  %i.jr = icmp ugt i32 %.val2.i87.i, %i.jm
  %i.js = select i1 %i.jp, i1 %i.jq, i1 %i.jr     ; 3 uses
  %i.jt = select i1 %i.js, ptr %i.ay, ptr %i.cb, !unpredictable !11
  %i.ju = select i1 %i.js, i32 %.val2.i87.i, i32 %i.jm, !unpredictable !11 ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  %i.jw = load i32, ptr %i.jv, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %.val21.i = load i64, ptr %i.ay, align 4, !alias.scope !4168
  %i.jx = select i1 %i.js, i64 %i.ip, i64 %.val21.i, !unpredictable !11
  store i64 %i.jx, ptr %i.ay, align 4, !alias.scope !4168
  store i32 %i.ju, ptr %i.cb, align 4, !alias.scope !4168
  store i32 %i.jw, ptr %i.cc, align 4, !alias.scope !4168
  %.val.i89.i = load i32, ptr %i.az, align 4, !range !27, !alias.scope !4168, !noundef !11 ; 3 uses
  %.val1.i90.i = load i32, ptr %i.ba, align 4, !alias.scope !4168
  %i.jy = trunc i64 %i.hr to i32                  ; 3 uses
  %i.jz = lshr i64 %i.hr, 32
  %i.ka = trunc nuw i64 %i.jz to i32
  %i.kb = icmp eq i32 %.val.i89.i, %i.jy
  %i.kc = icmp ult i32 %.val1.i90.i, %i.ka
  %i.kd = icmp ult i32 %.val.i89.i, %i.jy
  %i.ke = select i1 %i.kb, i1 %i.kc, i1 %i.kd     ; 3 uses
  %i.kf = select i1 %i.ke, ptr %i.do, ptr %i.az, !unpredictable !11
  %i.kg = select i1 %i.ke, i32 %i.jy, i32 %.val.i89.i, !unpredictable !11 ; 4 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.ki = load i32, ptr %i.kh, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %.val22.i = load i64, ptr %i.az, align 4, !alias.scope !4168
  %i.kj = select i1 %i.ke, i64 %.val22.i, i64 %i.hr, !unpredictable !11
  store i64 %i.kj, ptr %i.do, align 4, !alias.scope !4168
  store i32 %i.kg, ptr %i.az, align 4, !alias.scope !4168
  store i32 %i.ki, ptr %i.ba, align 4, !alias.scope !4168
  %i.kk = icmp eq i32 %i.im, %i.ho
  %i.kl = icmp ult i32 %i.io, %i.hq
  %i.km = icmp ult i32 %i.im, %i.ho
  %i.kn = select i1 %i.kk, i1 %i.kl, i1 %i.km     ; 3 uses
  %i.ko = select i1 %i.kn, ptr %i.ca, ptr %i.bn, !unpredictable !11
  %i.kp = select i1 %i.kn, i32 %i.ho, i32 %i.im, !unpredictable !11 ; 4 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 4
  %i.kr = load i32, ptr %i.kq, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %.val24.i = load i64, ptr %i.bn, align 4, !alias.scope !4168
  %.val25.i = load i64, ptr %i.ca, align 4, !alias.scope !4168
  %i.ks = select i1 %i.kn, i64 %.val24.i, i64 %.val25.i, !unpredictable !11 ; 4 uses
  store i64 %i.ks, ptr %i.ca, align 4, !alias.scope !4168
  store i32 %i.kp, ptr %i.bn, align 4, !alias.scope !4168
  store i32 %i.kr, ptr %i.bo, align 4, !alias.scope !4168
  %i.kt = trunc i64 %i.iz to i32                  ; 3 uses
  %i.ku = lshr i64 %i.iz, 32
  %i.kv = trunc nuw i64 %i.ku to i32
  %i.kw = icmp eq i32 %i.ia, %i.kt
  %i.kx = icmp ugt i32 %i.ic, %i.kv
  %i.ky = icmp ugt i32 %i.ia, %i.kt
  %i.kz = select i1 %i.kw, i1 %i.kx, i1 %i.ky     ; 3 uses
  %i.la = select i1 %i.kz, ptr %i.al, ptr %i.x, !unpredictable !11
  %i.lb = select i1 %i.kz, i32 %i.ia, i32 %i.kt, !unpredictable !11 ; 4 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 4
  %i.ld = load i32, ptr %i.lc, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %.val27.i = load i64, ptr %i.al, align 4, !alias.scope !4168
  %i.le = select i1 %i.kz, i64 %i.iz, i64 %.val27.i, !unpredictable !11 ; 4 uses
  store i64 %i.le, ptr %i.al, align 4, !alias.scope !4168
  store i32 %i.lb, ptr %i.x, align 4, !alias.scope !4168
  store i32 %i.ld, ptr %i.y, align 4, !alias.scope !4168
  %.val.i101.i = load i32, ptr %i.w, align 4, !range !27, !alias.scope !4168, !noundef !11 ; 3 uses
  %.val1.i102.i = load i32, ptr %i.z, align 4, !alias.scope !4168
  %i.lf = trunc i64 %i.jl to i32                  ; 3 uses
  %i.lg = lshr i64 %i.jl, 32
  %i.lh = trunc nuw i64 %i.lg to i32
  %i.li = icmp eq i32 %.val.i101.i, %i.lf
  %i.lj = icmp ult i32 %.val1.i102.i, %i.lh
  %i.lk = icmp ult i32 %.val.i101.i, %i.lf
  %i.ll = select i1 %i.li, i1 %i.lj, i1 %i.lk     ; 3 uses
  %i.lm = select i1 %i.ll, ptr %.sroa.02.0, ptr %i.w, !unpredictable !11
  %i.ln = select i1 %i.ll, i32 %i.lf, i32 %.val.i101.i, !unpredictable !11 ; 4 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.lp = load i32, ptr %i.lo, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %.val28.i = load i64, ptr %i.w, align 4, !alias.scope !4168
  %i.lq = select i1 %i.ll, i64 %.val28.i, i64 %i.jl, !unpredictable !11
  store i64 %i.lq, ptr %.sroa.02.0, align 4, !alias.scope !4168
  store i32 %i.ln, ptr %i.w, align 4, !alias.scope !4168
  store i32 %i.lp, ptr %i.z, align 4, !alias.scope !4168
  %i.lr = icmp eq i32 %i.ji, %i.fp
  %i.ls = icmp ult i32 %i.jk, %i.fr
  %i.lt = icmp ult i32 %i.ji, %i.fp
  %i.lu = select i1 %i.lr, i1 %i.ls, i1 %i.lt     ; 3 uses
  %i.lv = select i1 %i.lu, ptr %i.ak, ptr %i.bm, !unpredictable !11
  %i.lw = select i1 %i.lu, i32 %i.fp, i32 %i.ji, !unpredictable !11 ; 4 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 4
  %i.ly = load i32, ptr %i.lx, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %.val30.i = load i64, ptr %i.bm, align 4, !alias.scope !4168
  %.val31.i = load i64, ptr %i.ak, align 4, !alias.scope !4168
  %i.lz = select i1 %i.lu, i64 %.val30.i, i64 %.val31.i, !unpredictable !11 ; 4 uses
  store i64 %i.lz, ptr %i.ak, align 4, !alias.scope !4168
  store i32 %i.lw, ptr %i.bm, align 4, !alias.scope !4168
  store i32 %i.ly, ptr %i.bp, align 4, !alias.scope !4168
  %i.ma = trunc i64 %i.le to i32                  ; 3 uses
  %i.mb = lshr i64 %i.le, 32
  %i.mc = trunc i64 %i.ks to i32                  ; 3 uses
  %i.md = lshr i64 %i.ks, 32
  %i.me = icmp eq i32 %i.ma, %i.mc
  %i.mf = icmp samesign ult i64 %i.mb, %i.md
  %i.mg = icmp ult i32 %i.ma, %i.mc
  %i.mh = select i1 %i.me, i1 %i.mf, i1 %i.mg     ; 3 uses
  %i.mi = select i1 %i.mh, ptr %i.ca, ptr %i.al, !unpredictable !11
  %i.mj = select i1 %i.mh, i32 %i.mc, i32 %i.ma, !unpredictable !11 ; 4 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  %i.ml = load i32, ptr %i.mk, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %i.mm = select i1 %i.mh, i64 %i.le, i64 %i.ks, !unpredictable !11 ; 4 uses
  store i64 %i.mm, ptr %i.ca, align 4, !alias.scope !4168
  store i32 %i.mj, ptr %i.al, align 4, !alias.scope !4168
  store i32 %i.ml, ptr %i.am, align 4, !alias.scope !4168
  %i.mn = icmp eq i32 %i.ju, %i.kg
  %i.mo = icmp ult i32 %i.jw, %i.ki
  %i.mp = icmp ult i32 %i.ju, %i.kg
  %i.mq = select i1 %i.mn, i1 %i.mo, i1 %i.mp     ; 3 uses
  %i.mr = select i1 %i.mq, ptr %i.az, ptr %i.cb, !unpredictable !11
  %i.ms = select i1 %i.mq, i32 %i.kg, i32 %i.ju, !unpredictable !11 ; 4 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  %i.mu = load i32, ptr %i.mt, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %.val34.i = load i64, ptr %i.cb, align 4, !alias.scope !4168
  %.val35.i = load i64, ptr %i.az, align 4, !alias.scope !4168
  %i.mv = select i1 %i.mq, i64 %.val34.i, i64 %.val35.i, !unpredictable !11
  store i64 %i.mv, ptr %i.az, align 4, !alias.scope !4168
  store i32 %i.ms, ptr %i.cb, align 4, !alias.scope !4168
  store i32 %i.mu, ptr %i.cc, align 4, !alias.scope !4168
  %i.mw = icmp eq i32 %i.kp, %i.lb
  %i.mx = icmp ult i32 %i.kr, %i.ld
  %i.my = icmp ult i32 %i.kp, %i.lb
  %i.mz = select i1 %i.mw, i1 %i.mx, i1 %i.my     ; 3 uses
  %i.na = select i1 %i.mz, ptr %i.x, ptr %i.bn, !unpredictable !11
  %i.nb = select i1 %i.mz, i32 %i.lb, i32 %i.kp, !unpredictable !11
  %i.nc = getelementptr inbounds nuw i8, ptr %i.na, i64 4
  %i.nd = load i32, ptr %i.nc, align 4, !alias.scope !4168, !noundef !11
  %.val36.i = load i64, ptr %i.bn, align 4, !alias.scope !4168
  %.val37.i = load i64, ptr %i.x, align 4, !alias.scope !4168
  %i.ne = select i1 %i.mz, i64 %.val36.i, i64 %.val37.i, !unpredictable !11 ; 4 uses
  store i64 %i.ne, ptr %i.x, align 4, !alias.scope !4168
  store i32 %i.nb, ptr %i.bn, align 4, !alias.scope !4168
  store i32 %i.nd, ptr %i.bo, align 4, !alias.scope !4168
  %.val.i121.i = load i32, ptr %i.ay, align 4, !range !27, !alias.scope !4168, !noundef !11 ; 3 uses
  %.val1.i122.i = load i32, ptr %i.bb, align 4, !alias.scope !4168
  %i.nf = icmp eq i32 %.val.i121.i, %i.ln
  %i.ng = icmp ult i32 %.val1.i122.i, %i.lp
  %i.nh = icmp ult i32 %.val.i121.i, %i.ln
  %i.ni = select i1 %i.nf, i1 %i.ng, i1 %i.nh     ; 3 uses
  %i.nj = select i1 %i.ni, ptr %i.w, ptr %i.ay, !unpredictable !11
  %i.nk = select i1 %i.ni, i32 %i.ln, i32 %.val.i121.i, !unpredictable !11 ; 4 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 4
  %i.nm = load i32, ptr %i.nl, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %.val38.i = load i64, ptr %i.ay, align 4, !alias.scope !4168
  %.val39.i = load i64, ptr %i.w, align 4, !alias.scope !4168
  %i.nn = select i1 %i.ni, i64 %.val38.i, i64 %.val39.i, !unpredictable !11 ; 4 uses
  store i64 %i.nn, ptr %i.w, align 4, !alias.scope !4168
  store i32 %i.nk, ptr %i.ay, align 4, !alias.scope !4168
  store i32 %i.nm, ptr %i.bb, align 4, !alias.scope !4168
  %.val.i125.i = load i32, ptr %i.do, align 4, !range !27, !alias.scope !4168, !noundef !11 ; 3 uses
  %.val1.i126.i = load i32, ptr %i.dp, align 4, !alias.scope !4168
  %i.no = trunc i64 %i.lz to i32                  ; 3 uses
  %i.np = lshr i64 %i.lz, 32
  %i.nq = trunc nuw i64 %i.np to i32
  %i.nr = icmp eq i32 %.val.i125.i, %i.no
  %i.ns = icmp ult i32 %.val1.i126.i, %i.nq
  %i.nt = icmp ult i32 %.val.i125.i, %i.no
  %i.nu = select i1 %i.nr, i1 %i.ns, i1 %i.nt     ; 3 uses
  %i.nv = select i1 %i.nu, ptr %i.ak, ptr %i.do, !unpredictable !11
  %i.nw = select i1 %i.nu, i32 %i.no, i32 %.val.i125.i, !unpredictable !11 ; 4 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 4
  %i.ny = load i32, ptr %i.nx, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %.val40.i = load i64, ptr %i.do, align 4, !alias.scope !4168
  %i.nz = select i1 %i.nu, i64 %.val40.i, i64 %i.lz, !unpredictable !11 ; 4 uses
  store i64 %i.nz, ptr %i.ak, align 4, !alias.scope !4168
  store i32 %i.nw, ptr %i.do, align 4, !alias.scope !4168
  store i32 %i.ny, ptr %i.dp, align 4, !alias.scope !4168
  %i.oa = trunc i64 %i.mm to i32                  ; 3 uses
  %i.ob = lshr i64 %i.mm, 32
  %i.oc = trunc nuw i64 %i.ob to i32
  %i.od = icmp eq i32 %i.lw, %i.oa
  %i.oe = icmp ugt i32 %i.ly, %i.oc
  %i.of = icmp ugt i32 %i.lw, %i.oa
  %i.og = select i1 %i.od, i1 %i.oe, i1 %i.of     ; 3 uses
  %i.oh = select i1 %i.og, ptr %i.bm, ptr %i.ca, !unpredictable !11
  %i.oi = select i1 %i.og, i32 %i.lw, i32 %i.oa, !unpredictable !11 ; 4 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 4
  %i.ok = load i32, ptr %i.oj, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %.val43.i = load i64, ptr %i.bm, align 4, !alias.scope !4168
  %i.ol = select i1 %i.og, i64 %i.mm, i64 %.val43.i, !unpredictable !11 ; 4 uses
  store i64 %i.ol, ptr %i.bm, align 4, !alias.scope !4168
  store i32 %i.oi, ptr %i.ca, align 4, !alias.scope !4168
  store i32 %i.ok, ptr %i.cd, align 4, !alias.scope !4168
  %i.om = trunc i64 %i.ne to i32                  ; 3 uses
  %i.on = lshr i64 %i.ne, 32
  %i.oo = trunc nuw i64 %i.on to i32
  %i.op = icmp eq i32 %i.mj, %i.om
  %i.oq = icmp ugt i32 %i.ml, %i.oo
  %i.or = icmp ugt i32 %i.mj, %i.om
  %i.os = select i1 %i.op, i1 %i.oq, i1 %i.or     ; 3 uses
  %i.ot = select i1 %i.os, ptr %i.al, ptr %i.x, !unpredictable !11
  %i.ou = select i1 %i.os, i32 %i.mj, i32 %i.om, !unpredictable !11
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ot, i64 4
  %i.ow = load i32, ptr %i.ov, align 4, !alias.scope !4168, !noundef !11
  %.val45.i = load i64, ptr %i.al, align 4, !alias.scope !4168
  %i.ox = select i1 %i.os, i64 %i.ne, i64 %.val45.i, !unpredictable !11
  store i64 %i.ox, ptr %i.al, align 4, !alias.scope !4168
  store i32 %i.ou, ptr %i.x, align 4, !alias.scope !4168
  store i32 %i.ow, ptr %i.y, align 4, !alias.scope !4168
  %i.oy = trunc i64 %i.nz to i32                  ; 3 uses
  %i.oz = lshr i64 %i.nz, 32
  %i.pa = trunc i64 %i.nn to i32                  ; 3 uses
  %i.pb = lshr i64 %i.nn, 32
  %i.pc = icmp eq i32 %i.oy, %i.pa
  %i.pd = icmp samesign ult i64 %i.oz, %i.pb
  %i.pe = icmp ult i32 %i.oy, %i.pa
  %i.pf = select i1 %i.pc, i1 %i.pd, i1 %i.pe     ; 3 uses
  %i.pg = select i1 %i.pf, ptr %i.w, ptr %i.ak, !unpredictable !11
  %i.ph = select i1 %i.pf, i32 %i.pa, i32 %i.oy, !unpredictable !11 ; 4 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pg, i64 4
  %i.pj = load i32, ptr %i.pi, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %i.pk = select i1 %i.pf, i64 %i.nz, i64 %i.nn, !unpredictable !11
  store i64 %i.pk, ptr %i.w, align 4, !alias.scope !4168
  store i32 %i.ph, ptr %i.ak, align 4, !alias.scope !4168
  store i32 %i.pj, ptr %i.an, align 4, !alias.scope !4168
  %i.pl = icmp eq i32 %i.nw, %i.nk
  %i.pm = icmp ult i32 %i.ny, %i.nm
  %i.pn = icmp ult i32 %i.nw, %i.nk
  %i.po = select i1 %i.pl, i1 %i.pm, i1 %i.pn     ; 3 uses
  %i.pp = select i1 %i.po, ptr %i.ay, ptr %i.do, !unpredictable !11
  %i.pq = select i1 %i.po, i32 %i.nk, i32 %i.nw, !unpredictable !11 ; 4 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pp, i64 4
  %i.ps = load i32, ptr %i.pr, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %.val48.i = load i64, ptr %i.do, align 4, !alias.scope !4168
  %.val49.i = load i64, ptr %i.ay, align 4, !alias.scope !4168
  %i.pt = select i1 %i.po, i64 %.val48.i, i64 %.val49.i, !unpredictable !11 ; 4 uses
  store i64 %i.pt, ptr %i.ay, align 4, !alias.scope !4168
  store i32 %i.pq, ptr %i.do, align 4, !alias.scope !4168
  store i32 %i.ps, ptr %i.dp, align 4, !alias.scope !4168
  %.val.i145.i = load i32, ptr %i.az, align 4, !range !27, !alias.scope !4168, !noundef !11 ; 3 uses
  %.val1.i146.i = load i32, ptr %i.ba, align 4, !alias.scope !4168
  %i.pu = trunc i64 %i.ol to i32                  ; 3 uses
  %i.pv = lshr i64 %i.ol, 32
  %i.pw = trunc nuw i64 %i.pv to i32
  %i.px = icmp eq i32 %.val.i145.i, %i.pu
  %i.py = icmp ult i32 %.val1.i146.i, %i.pw
  %i.pz = icmp ult i32 %.val.i145.i, %i.pu
  %i.qa = select i1 %i.px, i1 %i.py, i1 %i.pz     ; 3 uses
  %i.qb = select i1 %i.qa, ptr %i.bm, ptr %i.az, !unpredictable !11
  %i.qc = select i1 %i.qa, i32 %i.pu, i32 %.val.i145.i, !unpredictable !11 ; 4 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qb, i64 4
  %i.qe = load i32, ptr %i.qd, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %.val50.i = load i64, ptr %i.az, align 4, !alias.scope !4168
  %i.qf = select i1 %i.qa, i64 %.val50.i, i64 %i.ol, !unpredictable !11 ; 4 uses
  store i64 %i.qf, ptr %i.bm, align 4, !alias.scope !4168
  store i32 %i.qc, ptr %i.az, align 4, !alias.scope !4168
  store i32 %i.qe, ptr %i.ba, align 4, !alias.scope !4168
  %i.qg = icmp eq i32 %i.ms, %i.oi
  %i.qh = icmp ult i32 %i.mu, %i.ok
  %i.qi = icmp ult i32 %i.ms, %i.oi
  %i.qj = select i1 %i.qg, i1 %i.qh, i1 %i.qi     ; 3 uses
  %i.qk = select i1 %i.qj, ptr %i.ca, ptr %i.cb, !unpredictable !11
  %i.ql = select i1 %i.qj, i32 %i.oi, i32 %i.ms, !unpredictable !11 ; 4 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qk, i64 4
  %i.qn = load i32, ptr %i.qm, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %.val52.i = load i64, ptr %i.cb, align 4, !alias.scope !4168
  %.val53.i = load i64, ptr %i.ca, align 4, !alias.scope !4168
  %i.qo = select i1 %i.qj, i64 %.val52.i, i64 %.val53.i, !unpredictable !11 ; 4 uses
  store i64 %i.qo, ptr %i.ca, align 4, !alias.scope !4168
  store i32 %i.ql, ptr %i.cb, align 4, !alias.scope !4168
  store i32 %i.qn, ptr %i.cc, align 4, !alias.scope !4168
  %i.qp = trunc i64 %i.pt to i32                  ; 3 uses
  %i.qq = lshr i64 %i.pt, 32
  %i.qr = trunc nuw i64 %i.qq to i32
  %i.qs = icmp eq i32 %i.ph, %i.qp
  %i.qt = icmp ugt i32 %i.pj, %i.qr
  %i.qu = icmp ugt i32 %i.ph, %i.qp
  %i.qv = select i1 %i.qs, i1 %i.qt, i1 %i.qu     ; 3 uses
  %i.qw = select i1 %i.qv, ptr %i.ak, ptr %i.ay, !unpredictable !11
  %i.qx = select i1 %i.qv, i32 %i.ph, i32 %i.qp, !unpredictable !11 ; 4 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 4
  %i.qz = load i32, ptr %i.qy, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %.val55.i = load i64, ptr %i.ak, align 4, !alias.scope !4168
  %i.ra = select i1 %i.qv, i64 %i.pt, i64 %.val55.i, !unpredictable !11
  store i64 %i.ra, ptr %i.ak, align 4, !alias.scope !4168
  store i32 %i.qx, ptr %i.ay, align 4, !alias.scope !4168
  store i32 %i.qz, ptr %i.bb, align 4, !alias.scope !4168
  %i.rb = trunc i64 %i.qf to i32                  ; 3 uses
  %i.rc = lshr i64 %i.qf, 32
  %i.rd = trunc nuw i64 %i.rc to i32
  %i.re = icmp eq i32 %i.pq, %i.rb
  %i.rf = icmp ugt i32 %i.ps, %i.rd
  %i.rg = icmp ugt i32 %i.pq, %i.rb
  %i.rh = select i1 %i.re, i1 %i.rf, i1 %i.rg     ; 3 uses
  %i.ri = select i1 %i.rh, ptr %i.do, ptr %i.bm, !unpredictable !11
  %i.rj = select i1 %i.rh, i32 %i.pq, i32 %i.rb, !unpredictable !11 ; 4 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ri, i64 4
  %i.rl = load i32, ptr %i.rk, align 4, !alias.scope !4168, !noundef !11 ; 2 uses
  %.val57.i = load i64, ptr %i.do, align 4, !alias.scope !4168
  %i.rm = select i1 %i.rh, i64 %i.qf, i64 %.val57.i, !unpredictable !11 ; 4 uses
  store i64 %i.rm, ptr %i.do, align 4, !alias.scope !4168
  store i32 %i.rj, ptr %i.bm, align 4, !alias.scope !4168
  store i32 %i.rl, ptr %i.bp, align 4, !alias.scope !4168
  %i.rn = trunc i64 %i.qo to i32                  ; 3 uses
  %i.ro = lshr i64 %i.qo, 32
  %i.rp = trunc nuw i64 %i.ro to i32
  %i.rq = icmp eq i32 %i.qc, %i.rn
  %i.rr = icmp ult i32 %i.qe, %i.rp
  %i.rs = icmp ult i32 %i.qc, %i.rn
  %i.rt = select i1 %i.rq, i1 %i.rr, i1 %i.rs     ; 3 uses
  %i.ru = select i1 %i.rt, ptr %i.ca, ptr %i.az, !unpredictable !11
  %i.rv = select i1 %i.rt, i32 %i.rn, i32 %i.qc, !unpredictable !11
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ru, i64 4
  %i.rx = load i32, ptr %i.rw, align 4, !alias.scope !4168, !noundef !11
  %.val58.i = load i64, ptr %i.az, align 4, !alias.scope !4168
  %i.ry = select i1 %i.rt, i64 %.val58.i, i64 %i.qo, !unpredictable !11 ; 4 uses
  store i64 %i.ry, ptr %i.ca, align 4, !alias.scope !4168
  store i32 %i.rv, ptr %i.az, align 4, !alias.scope !4168
  store i32 %i.rx, ptr %i.ba, align 4, !alias.scope !4168
  %.val.i165.i = load i32, ptr %i.al, align 4, !range !27, !alias.scope !4168, !noundef !11 ; 3 uses
  %.val1.i166.i = load i32, ptr %i.am, align 4, !alias.scope !4168
  %i.rz = icmp eq i32 %.val.i165.i, %i.ql
  %i.sa = icmp ult i32 %.val1.i166.i, %i.qn
  %i.sb = icmp ult i32 %.val.i165.i, %i.ql
  %i.sc = select i1 %i.rz, i1 %i.sa, i1 %i.sb     ; 3 uses
  %i.sd = select i1 %i.sc, ptr %i.cb, ptr %i.al, !unpredictable !11
  %i.se = select i1 %i.sc, i32 %i.ql, i32 %.val.i165.i, !unpredictable !11
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sd, i64 4
  %i.sg = load i32, ptr %i.sf, align 4, !alias.scope !4168, !noundef !11
  %.val60.i = load i64, ptr %i.al, align 4, !alias.scope !4168
  %.val61.i = load i64, ptr %i.cb, align 4, !alias.scope !4168
  %i.sh = select i1 %i.sc, i64 %.val60.i, i64 %.val61.i, !unpredictable !11
  store i64 %i.sh, ptr %i.cb, align 4, !alias.scope !4168
  store i32 %i.se, ptr %i.al, align 4, !alias.scope !4168
  store i32 %i.sg, ptr %i.am, align 4, !alias.scope !4168
  %i.si = trunc i64 %i.rm to i32                  ; 3 uses
  %i.sj = lshr i64 %i.rm, 32
  %i.sk = trunc nuw i64 %i.sj to i32
  %i.sl = icmp eq i32 %i.qx, %i.si
  %i.sm = icmp ugt i32 %i.qz, %i.sk
  %i.sn = icmp ugt i32 %i.qx, %i.si
  %i.so = select i1 %i.sl, i1 %i.sm, i1 %i.sn     ; 3 uses
  %i.sp = select i1 %i.so, ptr %i.ay, ptr %i.do, !unpredictable !11
  %i.sq = select i1 %i.so, i32 %i.qx, i32 %i.si, !unpredictable !11
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sp, i64 4
  %i.ss = load i32, ptr %i.sr, align 4, !alias.scope !4168, !noundef !11
  %.val63.i = load i64, ptr %i.ay, align 4, !alias.scope !4168
  %i.st = select i1 %i.so, i64 %i.rm, i64 %.val63.i, !unpredictable !11
  store i64 %i.st, ptr %i.ay, align 4, !alias.scope !4168
  store i32 %i.sq, ptr %i.do, align 4, !alias.scope !4168
  store i32 %i.ss, ptr %i.dp, align 4, !alias.scope !4168
  %i.su = trunc i64 %i.ry to i32                  ; 3 uses
  %i.sv = lshr i64 %i.ry, 32
  %i.sw = trunc nuw i64 %i.sv to i32
  %i.sx = icmp eq i32 %i.rj, %i.su
  %i.sy = icmp ugt i32 %i.rl, %i.sw
  %i.sz = icmp ugt i32 %i.rj, %i.su
  %i.ta = select i1 %i.sx, i1 %i.sy, i1 %i.sz     ; 3 uses
  %i.tb = select i1 %i.ta, ptr %i.bm, ptr %i.ca, !unpredictable !11
  %i.tc = select i1 %i.ta, i32 %i.rj, i32 %i.su, !unpredictable !11
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 4
  %i.te = load i32, ptr %i.td, align 4, !alias.scope !4168, !noundef !11
  %.val65.i = load i64, ptr %i.bm, align 4, !alias.scope !4168
  %i.tf = select i1 %i.ta, i64 %i.ry, i64 %.val65.i, !unpredictable !11
  store i64 %i.tf, ptr %i.bm, align 4, !alias.scope !4168
  store i32 %i.tc, ptr %i.ca, align 4, !alias.scope !4168
  store i32 %i.te, ptr %i.cd, align 4, !alias.scope !4168
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.tg = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 24 ; 19 uses
  %.val.i.i14 = load i32, ptr %i.tg, align 4, !range !27, !alias.scope !4169, !noundef !11 ; 3 uses
  %i.th = getelementptr i8, ptr %.sroa.02.0, i64 28 ; 4 uses
  %.val1.i.i15 = load i32, ptr %i.th, align 4, !alias.scope !4169
  %.val2.i.i16 = load i32, ptr %.sroa.02.0, align 4, !range !27, !alias.scope !4169, !noundef !11 ; 3 uses
  %i.ti = getelementptr i8, ptr %.sroa.02.0, i64 4
  %.val3.i.i17 = load i32, ptr %i.ti, align 4, !alias.scope !4169
  %i.tj = icmp eq i32 %.val.i.i14, %.val2.i.i16
  %i.tk = icmp ult i32 %.val1.i.i15, %.val3.i.i17
  %i.tl = icmp ult i32 %.val.i.i14, %.val2.i.i16
  %i.tm = select i1 %i.tj, i1 %i.tk, i1 %i.tl     ; 3 uses
  %i.tn = select i1 %i.tm, ptr %i.tg, ptr %.sroa.02.0, !unpredictable !11
  %i.to = select i1 %i.tm, ptr %.sroa.02.0, ptr %i.tg, !unpredictable !11
  %i.tp = select i1 %i.tm, i32 %.val2.i.i16, i32 %.val.i.i14, !unpredictable !11 ; 4 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.to, i64 4
  %i.tr = load i32, ptr %i.tq, align 4, !alias.scope !4169, !noundef !11 ; 2 uses
  %i.ts = load i64, ptr %i.tn, align 4, !alias.scope !4169 ; 3 uses
  store i64 %i.ts, ptr %.sroa.02.0, align 4, !alias.scope !4169
  store i32 %i.tp, ptr %i.tg, align 4, !alias.scope !4169
  store i32 %i.tr, ptr %i.th, align 4, !alias.scope !4169
  %i.tt = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 8 ; 15 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 56 ; 15 uses
  %.val.i1.i18 = load i32, ptr %i.tu, align 4, !range !27, !alias.scope !4169, !noundef !11 ; 3 uses
  %i.tv = getelementptr i8, ptr %.sroa.02.0, i64 60 ; 5 uses
  %.val1.i2.i19 = load i32, ptr %i.tv, align 4, !alias.scope !4169
  %.val2.i3.i20 = load i32, ptr %i.tt, align 4, !range !27, !alias.scope !4169, !noundef !11 ; 3 uses
  %i.tw = getelementptr i8, ptr %.sroa.02.0, i64 12 ; 3 uses
  %.val3.i4.i21 = load i32, ptr %i.tw, align 4, !alias.scope !4169
  %i.tx = icmp eq i32 %.val.i1.i18, %.val2.i3.i20
  %i.ty = icmp ult i32 %.val1.i2.i19, %.val3.i4.i21
  %i.tz = icmp ult i32 %.val.i1.i18, %.val2.i3.i20
  %i.ua = select i1 %i.tx, i1 %i.ty, i1 %i.tz     ; 3 uses
  %i.ub = select i1 %i.ua, ptr %i.tu, ptr %i.tt, !unpredictable !11
  %i.uc = select i1 %i.ua, ptr %i.tt, ptr %i.tu, !unpredictable !11
  %i.ud = select i1 %i.ua, i32 %.val2.i3.i20, i32 %.val.i1.i18, !unpredictable !11 ; 4 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.uc, i64 4
  %i.uf = load i32, ptr %i.ue, align 4, !alias.scope !4169, !noundef !11 ; 2 uses
  %i.ug = load i64, ptr %i.ub, align 4, !alias.scope !4169
  store i64 %i.ug, ptr %i.tt, align 4, !alias.scope !4169
  store i32 %i.ud, ptr %i.tu, align 4, !alias.scope !4169
  store i32 %i.uf, ptr %i.tv, align 4, !alias.scope !4169
  %i.uh = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 16 ; 15 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 40 ; 20 uses
  %.val.i5.i22 = load i32, ptr %i.ui, align 4, !range !27, !alias.scope !4169, !noundef !11 ; 3 uses
  %i.uj = getelementptr i8, ptr %.sroa.02.0, i64 44 ; 5 uses
  %.val1.i6.i23 = load i32, ptr %i.uj, align 4, !alias.scope !4169
  %.val2.i7.i24 = load i32, ptr %i.uh, align 4, !range !27, !alias.scope !4169, !noundef !11 ; 3 uses
  %i.uk = getelementptr i8, ptr %.sroa.02.0, i64 20 ; 3 uses
  %.val3.i8.i25 = load i32, ptr %i.uk, align 4, !alias.scope !4169
  %i.ul = icmp eq i32 %.val.i5.i22, %.val2.i7.i24
  %i.um = icmp ult i32 %.val1.i6.i23, %.val3.i8.i25
  %i.un = icmp ult i32 %.val.i5.i22, %.val2.i7.i24
  %i.uo = select i1 %i.ul, i1 %i.um, i1 %i.un     ; 3 uses
  %i.up = select i1 %i.uo, ptr %i.ui, ptr %i.uh, !unpredictable !11
  %i.uq = select i1 %i.uo, ptr %i.uh, ptr %i.ui, !unpredictable !11
  %i.ur = select i1 %i.uo, i32 %.val2.i7.i24, i32 %.val.i5.i22, !unpredictable !11 ; 4 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.uq, i64 4
  %i.ut = load i32, ptr %i.us, align 4, !alias.scope !4169, !noundef !11 ; 2 uses
  %i.uu = load i64, ptr %i.up, align 4, !alias.scope !4169 ; 4 uses
  store i64 %i.uu, ptr %i.uh, align 4, !alias.scope !4169
  store i32 %i.ur, ptr %i.ui, align 4, !alias.scope !4169
  store i32 %i.ut, ptr %i.uj, align 4, !alias.scope !4169
  %i.uv = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 32 ; 19 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 64 ; 13 uses
  %.val.i9.i26 = load i32, ptr %i.uw, align 4, !range !27, !alias.scope !4169, !noundef !11 ; 3 uses
  %i.ux = getelementptr i8, ptr %.sroa.02.0, i64 68 ; 5 uses
  %.val1.i10.i27 = load i32, ptr %i.ux, align 4, !alias.scope !4169
  %.val2.i11.i28 = load i32, ptr %i.uv, align 4, !range !27, !alias.scope !4169, !noundef !11 ; 3 uses
  %i.uy = getelementptr i8, ptr %.sroa.02.0, i64 36 ; 5 uses
  %.val3.i12.i29 = load i32, ptr %i.uy, align 4, !alias.scope !4169
  %i.uz = icmp eq i32 %.val.i9.i26, %.val2.i11.i28
  %i.va = icmp ult i32 %.val1.i10.i27, %.val3.i12.i29
  %i.vb = icmp ult i32 %.val.i9.i26, %.val2.i11.i28
  %i.vc = select i1 %i.uz, i1 %i.va, i1 %i.vb     ; 3 uses
  %i.vd = select i1 %i.vc, ptr %i.uw, ptr %i.uv, !unpredictable !11
  %i.ve = select i1 %i.vc, ptr %i.uv, ptr %i.uw, !unpredictable !11
  %i.vf = select i1 %i.vc, i32 %.val2.i11.i28, i32 %.val.i9.i26, !unpredictable !11 ; 4 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ve, i64 4
  %i.vh = load i32, ptr %i.vg, align 4, !alias.scope !4169, !noundef !11 ; 2 uses
  %i.vi = load i64, ptr %i.vd, align 4, !alias.scope !4169 ; 4 uses
  store i64 %i.vi, ptr %i.uv, align 4, !alias.scope !4169
  store i32 %i.vf, ptr %i.uw, align 4, !alias.scope !4169
  store i32 %i.vh, ptr %i.ux, align 4, !alias.scope !4169
  %i.vj = trunc i64 %i.ts to i32                  ; 3 uses
  %i.vk = lshr i64 %i.ts, 32
  %i.vl = trunc nuw i64 %i.vk to i32
  %i.vm = icmp eq i32 %i.ud, %i.vj
  %i.vn = icmp ult i32 %i.uf, %i.vl
  %i.vo = icmp ult i32 %i.ud, %i.vj
  %i.vp = select i1 %i.vm, i1 %i.vn, i1 %i.vo     ; 3 uses
  %i.vq = select i1 %i.vp, ptr %i.tu, ptr %.sroa.02.0, !unpredictable !11
  %i.vr = select i1 %i.vp, ptr %.sroa.02.0, ptr %i.tu, !unpredictable !11
  %i.vs = select i1 %i.vp, i32 %i.vj, i32 %i.ud, !unpredictable !11 ; 4 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vr, i64 4
  %i.vu = load i32, ptr %i.vt, align 4, !alias.scope !4169, !noundef !11 ; 2 uses
  %i.vv = load i64, ptr %i.vq, align 4, !alias.scope !4169 ; 4 uses
  store i64 %i.vv, ptr %.sroa.02.0, align 4, !alias.scope !4169
  store i32 %i.vs, ptr %i.tu, align 4, !alias.scope !4169
  store i32 %i.vu, ptr %i.tv, align 4, !alias.scope !4169
  %i.vw = trunc i64 %i.vi to i32                  ; 3 uses
  %i.vx = lshr i64 %i.vi, 32
  %i.vy = trunc i64 %i.uu to i32                  ; 3 uses
  %i.vz = lshr i64 %i.uu, 32
  %i.wa = icmp eq i32 %i.vw, %i.vy
  %i.wb = icmp samesign ult i64 %i.vx, %i.vz
  %i.wc = icmp ult i32 %i.vw, %i.vy
  %i.wd = select i1 %i.wa, i1 %i.wb, i1 %i.wc     ; 3 uses
  %i.we = select i1 %i.wd, ptr %i.uh, ptr %i.uv, !unpredictable !11
  %i.wf = select i1 %i.wd, i32 %i.vy, i32 %i.vw, !unpredictable !11 ; 4 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.we, i64 4
  %i.wh = load i32, ptr %i.wg, align 4, !alias.scope !4169, !noundef !11 ; 2 uses
  %i.wi = select i1 %i.wd, i64 %i.vi, i64 %i.uu, !unpredictable !11 ; 4 uses
  store i64 %i.wi, ptr %i.uh, align 4, !alias.scope !4169
  store i32 %i.wf, ptr %i.uv, align 4, !alias.scope !4169
  store i32 %i.wh, ptr %i.uy, align 4, !alias.scope !4169
  %i.wj = icmp eq i32 %i.vf, %i.tp
  %i.wk = icmp ult i32 %i.vh, %i.tr
  %i.wl = icmp ult i32 %i.vf, %i.tp
  %i.wm = select i1 %i.wj, i1 %i.wk, i1 %i.wl     ; 3 uses
  %i.wn = select i1 %i.wm, ptr %i.uw, ptr %i.tg, !unpredictable !11
  %i.wo = select i1 %i.wm, ptr %i.tg, ptr %i.uw, !unpredictable !11
  %i.wp = select i1 %i.wm, i32 %i.tp, i32 %i.vf, !unpredictable !11 ; 4 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wo, i64 4
  %i.wr = load i32, ptr %i.wq, align 4, !alias.scope !4169, !noundef !11 ; 2 uses
  %i.ws = load i64, ptr %i.wn, align 4, !alias.scope !4169 ; 4 uses
  store i64 %i.ws, ptr %i.tg, align 4, !alias.scope !4169
  store i32 %i.wp, ptr %i.uw, align 4, !alias.scope !4169
  store i32 %i.wr, ptr %i.ux, align 4, !alias.scope !4169
  %i.wt = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 48 ; 14 uses
  %.val.i25.i = load i32, ptr %i.wt, align 4, !range !27, !alias.scope !4169, !noundef !11 ; 3 uses
  %i.wu = getelementptr i8, ptr %.sroa.02.0, i64 52 ; 4 uses
  %.val1.i26.i = load i32, ptr %i.wu, align 4, !alias.scope !4169
  %i.wv = icmp eq i32 %.val.i25.i, %i.ur
  %i.ww = icmp ult i32 %.val1.i26.i, %i.ut
  %i.wx = icmp ult i32 %.val.i25.i, %i.ur
  %i.wy = select i1 %i.wv, i1 %i.ww, i1 %i.wx     ; 3 uses
  %i.wz = select i1 %i.wy, ptr %i.wt, ptr %i.ui, !unpredictable !11
  %i.xa = select i1 %i.wy, ptr %i.ui, ptr %i.wt, !unpredictable !11
  %i.xb = select i1 %i.wy, i32 %i.ur, i32 %.val.i25.i, !unpredictable !11 ; 4 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xa, i64 4
  %i.xd = load i32, ptr %i.xc, align 4, !alias.scope !4169, !noundef !11 ; 2 uses
  %i.xe = load i64, ptr %i.wz, align 4, !alias.scope !4169 ; 4 uses
  store i64 %i.xe, ptr %i.ui, align 4, !alias.scope !4169
  store i32 %i.xb, ptr %i.wt, align 4, !alias.scope !4169
  store i32 %i.xd, ptr %i.wu, align 4, !alias.scope !4169
  %i.xf = trunc i64 %i.wi to i32                  ; 3 uses
  %i.xg = lshr i64 %i.wi, 32
  %i.xh = trunc i64 %i.vv to i32                  ; 3 uses
  %i.xi = lshr i64 %i.vv, 32
  %i.xj = icmp eq i32 %i.xf, %i.xh
  %i.xk = icmp samesign ult i64 %i.xg, %i.xi
  %i.xl = icmp ult i32 %i.xf, %i.xh
  %i.xm = select i1 %i.xj, i1 %i.xk, i1 %i.xl     ; 3 uses
  %i.xn = select i1 %i.xm, ptr %.sroa.02.0, ptr %i.uh, !unpredictable !11
  %i.xo = select i1 %i.xm, i32 %i.xh, i32 %i.xf, !unpredictable !11 ; 4 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xn, i64 4
  %i.xq = load i32, ptr %i.xp, align 4, !alias.scope !4169, !noundef !11 ; 2 uses
  %i.xr = select i1 %i.xm, i64 %i.wi, i64 %i.vv, !unpredictable !11 ; 3 uses
  store i64 %i.xr, ptr %.sroa.02.0, align 4, !alias.scope !4169
  store i32 %i.xo, ptr %i.uh, align 4, !alias.scope !4169
  store i32 %i.xq, ptr %i.uk, align 4, !alias.scope !4169
  %i.xs = trunc i64 %i.ws to i32                  ; 3 uses
  %i.xt = lshr i64 %i.ws, 32
  %i.xu = trunc nuw i64 %i.xt to i32
  %.val2.i35.i = load i32, ptr %i.tt, align 4, !range !27, !alias.scope !4169, !noundef !11 ; 3 uses
  %.val3.i36.i = load i32, ptr %i.tw, align 4, !alias.scope !4169
  %i.xv = icmp eq i32 %.val2.i35.i, %i.xs
  %i.xw = icmp ugt i32 %.val3.i36.i, %i.xu
  %i.xx = icmp ugt i32 %.val2.i35.i, %i.xs
  %i.xy = select i1 %i.xv, i1 %i.xw, i1 %i.xx     ; 3 uses
  %i.xz = select i1 %i.xy, ptr %i.tt, ptr %i.tg, !unpredictable !11
  %i.ya = select i1 %i.xy, i32 %.val2.i35.i, i32 %i.xs, !unpredictable !11 ; 4 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xz, i64 4
  %i.yc = load i32, ptr %i.yb, align 4, !alias.scope !4169, !noundef !11 ; 2 uses
  %.val5.i30 = load i64, ptr %i.tt, align 4, !alias.scope !4169
  %i.yd = select i1 %i.xy, i64 %i.ws, i64 %.val5.i30, !unpredictable !11 ; 4 uses
  store i64 %i.yd, ptr %i.tt, align 4, !alias.scope !4169
  store i32 %i.ya, ptr %i.tg, align 4, !alias.scope !4169
  store i32 %i.yc, ptr %i.th, align 4, !alias.scope !4169
  %i.ye = trunc i64 %i.xe to i32                  ; 3 uses
  %i.yf = lshr i64 %i.xe, 32
  %i.yg = trunc nuw i64 %i.yf to i32
  %i.yh = icmp eq i32 %i.wf, %i.ye
  %i.yi = icmp ugt i32 %i.wh, %i.yg
  %i.yj = icmp ugt i32 %i.wf, %i.ye
  %i.yk = select i1 %i.yh, i1 %i.yi, i1 %i.yj     ; 3 uses
  %i.yl = select i1 %i.yk, ptr %i.uv, ptr %i.ui, !unpredictable !11
  %i.ym = select i1 %i.yk, i32 %i.wf, i32 %i.ye, !unpredictable !11 ; 4 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yl, i64 4
  %i.yo = load i32, ptr %i.yn, align 4, !alias.scope !4169, !noundef !11 ; 2 uses
  %.val7.i = load i64, ptr %i.uv, align 4, !alias.scope !4169
  %i.yp = select i1 %i.yk, i64 %i.xe, i64 %.val7.i, !unpredictable !11 ; 4 uses
  store i64 %i.yp, ptr %i.uv, align 4, !alias.scope !4169
  store i32 %i.ym, ptr %i.ui, align 4, !alias.scope !4169
  store i32 %i.yo, ptr %i.uj, align 4, !alias.scope !4169
  %i.yq = icmp eq i32 %i.wp, %i.vs
  %i.yr = icmp ult i32 %i.wr, %i.vu
  %i.ys = icmp ult i32 %i.wp, %i.vs
  %i.yt = select i1 %i.yq, i1 %i.yr, i1 %i.ys     ; 3 uses
  %i.yu = select i1 %i.yt, ptr %i.uw, ptr %i.tu, !unpredictable !11
  %i.yv = select i1 %i.yt, ptr %i.tu, ptr %i.uw, !unpredictable !11
  %i.yw = select i1 %i.yt, i32 %i.vs, i32 %i.wp, !unpredictable !11 ; 4 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yv, i64 4
  %i.yy = load i32, ptr %i.yx, align 4, !alias.scope !4169, !noundef !11 ; 2 uses
  %i.yz = load i64, ptr %i.yu, align 4, !alias.scope !4169 ; 4 uses
  store i64 %i.yz, ptr %i.tu, align 4, !alias.scope !4169
  store i32 %i.yw, ptr %i.uw, align 4, !alias.scope !4169
  store i32 %i.yy, ptr %i.ux, align 4, !alias.scope !4169
  %i.za = trunc i64 %i.yp to i32                  ; 3 uses
  %i.zb = lshr i64 %i.yp, 32
  %i.zc = trunc i64 %i.yd to i32                  ; 3 uses
  %i.zd = lshr i64 %i.yd, 32
  %i.ze = icmp eq i32 %i.za, %i.zc
  %i.zf = icmp samesign ult i64 %i.zb, %i.zd
  %i.zg = icmp ult i32 %i.za, %i.zc
  %i.zh = select i1 %i.ze, i1 %i.zf, i1 %i.zg     ; 3 uses
  %i.zi = select i1 %i.zh, ptr %i.tt, ptr %i.uv, !unpredictable !11
  %i.zj = select i1 %i.zh, i32 %i.zc, i32 %i.za, !unpredictable !11 ; 4 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zi, i64 4
  %i.zl = load i32, ptr %i.zk, align 4, !alias.scope !4169, !noundef !11 ; 2 uses
  %i.zm = select i1 %i.zh, i64 %i.yp, i64 %i.yd, !unpredictable !11 ; 4 uses
  store i64 %i.zm, ptr %i.tt, align 4, !alias.scope !4169
  store i32 %i.zj, ptr %i.uv, align 4, !alias.scope !4169
  store i32 %i.zl, ptr %i.uy, align 4, !alias.scope !4169
  %i.zn = icmp eq i32 %i.xb, %i.ya
  %i.zo = icmp ult i32 %i.xd, %i.yc
  %i.zp = icmp ult i32 %i.xb, %i.ya
  %i.zq = select i1 %i.zn, i1 %i.zo, i1 %i.zp     ; 3 uses
  %i.zr = select i1 %i.zq, ptr %i.wt, ptr %i.tg, !unpredictable !11
  %i.zs = select i1 %i.zq, ptr %i.tg, ptr %i.wt, !unpredictable !11
  %i.zt = select i1 %i.zq, i32 %i.ya, i32 %i.xb, !unpredictable !11 ; 4 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zs, i64 4
  %i.zv = load i32, ptr %i.zu, align 4, !alias.scope !4169, !noundef !11 ; 2 uses
  %i.zw = load i64, ptr %i.zr, align 4, !alias.scope !4169 ; 4 uses
  store i64 %i.zw, ptr %i.tg, align 4, !alias.scope !4169
  store i32 %i.zt, ptr %i.wt, align 4, !alias.scope !4169
  store i32 %i.zv, ptr %i.wu, align 4, !alias.scope !4169
  %i.zx = trunc i64 %i.yz to i32                  ; 3 uses
  %i.zy = lshr i64 %i.yz, 32
  %i.zz = trunc nuw i64 %i.zy to i32
  %i.aaa = icmp eq i32 %i.ym, %i.zx
  %i.aab = icmp ugt i32 %i.yo, %i.zz
  %i.aac = icmp ugt i32 %i.ym, %i.zx
  %i.aad = select i1 %i.aaa, i1 %i.aab, i1 %i.aac ; 3 uses
  %i.aae = select i1 %i.aad, ptr %i.ui, ptr %i.tu, !unpredictable !11
  %i.aaf = select i1 %i.aad, i32 %i.ym, i32 %i.zx, !unpredictable !11 ; 4 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aae, i64 4
  %i.aah = load i32, ptr %i.aag, align 4, !alias.scope !4169, !noundef !11 ; 2 uses
  %.val11.i = load i64, ptr %i.ui, align 4, !alias.scope !4169
  %i.aai = select i1 %i.aad, i64 %i.yz, i64 %.val11.i, !unpredictable !11 ; 4 uses
  store i64 %i.aai, ptr %i.ui, align 4, !alias.scope !4169
  store i32 %i.aaf, ptr %i.tu, align 4, !alias.scope !4169
  store i32 %i.aah, ptr %i.tv, align 4, !alias.scope !4169
  %i.aaj = trunc i64 %i.zm to i32                 ; 3 uses
  %i.aak = lshr i64 %i.zm, 32
  %i.aal = trunc i64 %i.xr to i32                 ; 3 uses
  %i.aam = lshr i64 %i.xr, 32
  %i.aan = icmp eq i32 %i.aal, %i.aaj
  %i.aao = icmp samesign ugt i64 %i.aam, %i.aak
  %i.aap = icmp ugt i32 %i.aal, %i.aaj
  %i.aaq = select i1 %i.aan, i1 %i.aao, i1 %i.aap ; 3 uses
  %i.aar = select i1 %i.aaq, ptr %.sroa.02.0, ptr %i.tt, !unpredictable !11
  %i.aas = select i1 %i.aaq, i32 %i.aal, i32 %i.aaj, !unpredictable !11 ; 4 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aar, i64 4
  %i.aau = load i32, ptr %i.aat, align 4, !alias.scope !4169, !noundef !11 ; 2 uses
  %.val13.i31 = load i64, ptr %.sroa.02.0, align 4, !alias.scope !4169
  %i.aav = select i1 %i.aaq, i64 %i.zm, i64 %.val13.i31, !unpredictable !11
  store i64 %i.aav, ptr %.sroa.02.0, align 4, !alias.scope !4169
  store i32 %i.aas, ptr %i.tt, align 4, !alias.scope !4169
  store i32 %i.aau, ptr %i.tw, align 4, !alias.scope !4169
  %i.aaw = icmp eq i32 %i.zj, %i.xo
  %i.aax = icmp ult i32 %i.zl, %i.xq
  %i.aay = icmp ult i32 %i.zj, %i.xo
  %i.aaz = select i1 %i.aaw, i1 %i.aax, i1 %i.aay ; 3 uses
  %i.aba = select i1 %i.aaz, ptr %i.uh, ptr %i.uv, !unpredictable !11
  %i.abb = select i1 %i.aaz, i32 %i.xo, i32 %i.zj, !unpredictable !11 ; 4 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aba, i64 4
  %i.abd = load i32, ptr %i.abc, align 4, !alias.scope !4169, !noundef !11 ; 2 uses
  %.val14.i = load i64, ptr %i.uv, align 4, !alias.scope !4169
  %.val15.i32 = load i64, ptr %i.uh, align 4, !alias.scope !4169
  %i.abe = select i1 %i.aaz, i64 %.val14.i, i64 %.val15.i32, !unpredictable !11 ; 4 uses
  store i64 %i.abe, ptr %i.uh, align 4, !alias.scope !4169
  store i32 %i.abb, ptr %i.uv, align 4, !alias.scope !4169
  store i32 %i.abd, ptr %i.uy, align 4, !alias.scope !4169
  %i.abf = trunc i64 %i.aai to i32                ; 3 uses
  %i.abg = lshr i64 %i.aai, 32
  %i.abh = trunc i64 %i.zw to i32                 ; 3 uses
  %i.abi = lshr i64 %i.zw, 32
  %i.abj = icmp eq i32 %i.abf, %i.abh
  %i.abk = icmp samesign ult i64 %i.abg, %i.abi
  %i.abl = icmp ult i32 %i.abf, %i.abh
  %i.abm = select i1 %i.abj, i1 %i.abk, i1 %i.abl ; 3 uses
  %i.abn = select i1 %i.abm, ptr %i.tg, ptr %i.ui, !unpredictable !11
  %i.abo = select i1 %i.abm, i32 %i.abh, i32 %i.abf, !unpredictable !11 ; 4 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abn, i64 4
  %i.abq = load i32, ptr %i.abp, align 4, !alias.scope !4169, !noundef !11 ; 2 uses
  %i.abr = select i1 %i.abm, i64 %i.aai, i64 %i.zw, !unpredictable !11 ; 4 uses
  store i64 %i.abr, ptr %i.tg, align 4, !alias.scope !4169
  store i32 %i.abo, ptr %i.ui, align 4, !alias.scope !4169
  store i32 %i.abq, ptr %i.uj, align 4, !alias.scope !4169
  %i.abs = icmp eq i32 %i.yw, %i.zt
  %i.abt = icmp ult i32 %i.yy, %i.zv
  %i.abu = icmp ult i32 %i.yw, %i.zt
  %i.abv = select i1 %i.abs, i1 %i.abt, i1 %i.abu ; 3 uses
  %i.abw = select i1 %i.abv, ptr %i.uw, ptr %i.wt, !unpredictable !11
  %i.abx = select i1 %i.abv, ptr %i.wt, ptr %i.uw, !unpredictable !11
  %i.aby = select i1 %i.abv, i32 %i.zt, i32 %i.yw, !unpredictable !11
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abx, i64 4
  %i.aca = load i32, ptr %i.abz, align 4, !alias.scope !4169, !noundef !11
  %i.acb = load i64, ptr %i.abw, align 4, !alias.scope !4169 ; 4 uses
  store i64 %i.acb, ptr %i.wt, align 4, !alias.scope !4169
  store i32 %i.aby, ptr %i.uw, align 4, !alias.scope !4169
  store i32 %i.aca, ptr %i.ux, align 4, !alias.scope !4169
  %i.acc = trunc i64 %i.abr to i32                ; 3 uses
  %i.acd = lshr i64 %i.abr, 32
  %i.ace = trunc i64 %i.abe to i32                ; 3 uses
  %i.acf = lshr i64 %i.abe, 32
  %i.acg = icmp eq i32 %i.acc, %i.ace
  %i.ach = icmp samesign ult i64 %i.acd, %i.acf
  %i.aci = icmp ult i32 %i.acc, %i.ace
  %i.acj = select i1 %i.acg, i1 %i.ach, i1 %i.aci ; 3 uses
  %i.ack = select i1 %i.acj, ptr %i.uh, ptr %i.tg, !unpredictable !11
  %i.acl = select i1 %i.acj, i32 %i.ace, i32 %i.acc, !unpredictable !11 ; 4 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.ack, i64 4
  %i.acn = load i32, ptr %i.acm, align 4, !alias.scope !4169, !noundef !11 ; 2 uses
  %i.aco = select i1 %i.acj, i64 %i.abr, i64 %i.abe, !unpredictable !11 ; 4 uses
  store i64 %i.aco, ptr %i.uh, align 4, !alias.scope !4169
  store i32 %i.acl, ptr %i.tg, align 4, !alias.scope !4169
  store i32 %i.acn, ptr %i.th, align 4, !alias.scope !4169
  %i.acp = icmp eq i32 %i.abo, %i.abb
  %i.acq = icmp ult i32 %i.abq, %i.abd
  %i.acr = icmp ult i32 %i.abo, %i.abb
  %i.acs = select i1 %i.acp, i1 %i.acq, i1 %i.acr ; 3 uses
  %i.act = select i1 %i.acs, ptr %i.uv, ptr %i.ui, !unpredictable !11
  %i.acu = select i1 %i.acs, i32 %i.abb, i32 %i.abo, !unpredictable !11 ; 4 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.act, i64 4
  %i.acw = load i32, ptr %i.acv, align 4, !alias.scope !4169, !noundef !11 ; 2 uses
  %.val20.i = load i64, ptr %i.ui, align 4, !alias.scope !4169
  %.val21.i33 = load i64, ptr %i.uv, align 4, !alias.scope !4169
  %i.acx = select i1 %i.acs, i64 %.val20.i, i64 %.val21.i33, !unpredictable !11 ; 4 uses
  store i64 %i.acx, ptr %i.uv, align 4, !alias.scope !4169
  store i32 %i.acu, ptr %i.ui, align 4, !alias.scope !4169
  store i32 %i.acw, ptr %i.uj, align 4, !alias.scope !4169
  %i.acy = trunc i64 %i.acb to i32                ; 3 uses
  %i.acz = lshr i64 %i.acb, 32
  %i.ada = trunc nuw i64 %i.acz to i32
  %i.adb = icmp eq i32 %i.aaf, %i.acy
  %i.adc = icmp ult i32 %i.aah, %i.ada
  %i.add = icmp ult i32 %i.aaf, %i.acy
  %i.ade = select i1 %i.adb, i1 %i.adc, i1 %i.add ; 3 uses
  %i.adf = select i1 %i.ade, ptr %i.wt, ptr %i.tu, !unpredictable !11
  %i.adg = select i1 %i.ade, i32 %i.acy, i32 %i.aaf, !unpredictable !11
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adf, i64 4
  %i.adi = load i32, ptr %i.adh, align 4, !alias.scope !4169, !noundef !11
  %.val22.i34 = load i64, ptr %i.tu, align 4, !alias.scope !4169
  %i.adj = select i1 %i.ade, i64 %.val22.i34, i64 %i.acb, !unpredictable !11 ; 4 uses
  store i64 %i.adj, ptr %i.wt, align 4, !alias.scope !4169
  store i32 %i.adg, ptr %i.tu, align 4, !alias.scope !4169
  store i32 %i.adi, ptr %i.tv, align 4, !alias.scope !4169
  %i.adk = trunc i64 %i.aco to i32                ; 3 uses
  %i.adl = lshr i64 %i.aco, 32
  %i.adm = trunc nuw i64 %i.adl to i32
  %i.adn = icmp eq i32 %i.aas, %i.adk
  %i.ado = icmp ugt i32 %i.aau, %i.adm
  %i.adp = icmp ugt i32 %i.aas, %i.adk
  %i.adq = select i1 %i.adn, i1 %i.ado, i1 %i.adp ; 3 uses
  %i.adr = select i1 %i.adq, ptr %i.tt, ptr %i.uh, !unpredictable !11
  %i.ads = select i1 %i.adq, i32 %i.aas, i32 %i.adk, !unpredictable !11
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adr, i64 4
  %i.adu = load i32, ptr %i.adt, align 4, !alias.scope !4169, !noundef !11
  %.val25.i35 = load i64, ptr %i.tt, align 4, !alias.scope !4169
  %i.adv = select i1 %i.adq, i64 %i.aco, i64 %.val25.i35, !unpredictable !11
  store i64 %i.adv, ptr %i.tt, align 4, !alias.scope !4169
  store i32 %i.ads, ptr %i.uh, align 4, !alias.scope !4169
  store i32 %i.adu, ptr %i.uk, align 4, !alias.scope !4169
  %i.adw = trunc i64 %i.acx to i32                ; 3 uses
  %i.adx = lshr i64 %i.acx, 32
  %i.ady = trunc nuw i64 %i.adx to i32
  %i.adz = icmp eq i32 %i.acl, %i.adw
  %i.aea = icmp ugt i32 %i.acn, %i.ady
  %i.aeb = icmp ugt i32 %i.acl, %i.adw
  %i.aec = select i1 %i.adz, i1 %i.aea, i1 %i.aeb ; 3 uses
  %i.aed = select i1 %i.aec, ptr %i.tg, ptr %i.uv, !unpredictable !11
  %i.aee = select i1 %i.aec, i32 %i.acl, i32 %i.adw, !unpredictable !11
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aed, i64 4
  %i.aeg = load i32, ptr %i.aef, align 4, !alias.scope !4169, !noundef !11
  %.val27.i36 = load i64, ptr %i.tg, align 4, !alias.scope !4169
  %i.aeh = select i1 %i.aec, i64 %i.acx, i64 %.val27.i36, !unpredictable !11
  store i64 %i.aeh, ptr %i.tg, align 4, !alias.scope !4169
  store i32 %i.aee, ptr %i.uv, align 4, !alias.scope !4169
  store i32 %i.aeg, ptr %i.uy, align 4, !alias.scope !4169
  %i.aei = trunc i64 %i.adj to i32                ; 3 uses
  %i.aej = lshr i64 %i.adj, 32
  %i.aek = trunc nuw i64 %i.aej to i32
  %i.ael = icmp eq i32 %i.acu, %i.aei
  %i.aem = icmp ugt i32 %i.acw, %i.aek
  %i.aen = icmp ugt i32 %i.acu, %i.aei
  %i.aeo = select i1 %i.ael, i1 %i.aem, i1 %i.aen ; 3 uses
  %i.aep = select i1 %i.aeo, ptr %i.ui, ptr %i.wt, !unpredictable !11
  %i.aeq = select i1 %i.aeo, i32 %i.acu, i32 %i.aei, !unpredictable !11
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aep, i64 4
  %i.aes = load i32, ptr %i.aer, align 4, !alias.scope !4169, !noundef !11
  %.val29.i = load i64, ptr %i.ui, align 4, !alias.scope !4169
  %i.aet = select i1 %i.aeo, i64 %i.adj, i64 %.val29.i, !unpredictable !11
  store i64 %i.aet, ptr %i.ui, align 4, !alias.scope !4169
  store i32 %i.aeq, ptr %i.wt, align 4, !alias.scope !4169
  store i32 %i.aes, ptr %i.wu, align 4, !alias.scope !4169
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g
  %.sroa.01.0 = phi i64 [ 13, %bb.g ], [ 9, %bb.h ], [ 1, %bb.f ] ; 3 uses
  %i.aeu = add nsw i64 %.sroa.01.0, -1
  %or.cond.not.i = icmp ult i64 %i.aeu, %.sroa.8.0
  br i1 %or.cond.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.aev = getelementptr inbounds nuw [8 x i8], ptr %.sroa.02.0, i64 %.sroa.8.0
  %.not4.i = icmp samesign eq i64 %.sroa.01.0, %.sroa.8.0
  br i1 %.not4.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtCsileJQcQObtj_7hir_def7TraitIdNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.k
  %i.aew = getelementptr inbounds nuw [8 x i8], ptr %.sroa.02.0, i64 %.sroa.01.0
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCsileJQcQObtj_7hir_def7TraitIdNvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i, %.lr.ph.preheader.i
  %.sroa.0.05.i = phi ptr [ %i.afq, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCsileJQcQObtj_7hir_def7TraitIdNvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i ], [ %i.aew, %.lr.ph.preheader.i ] ; 5 uses
  %i.aex = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -8 ; 4 uses
  %.val11.i.i = load i64, ptr %.sroa.0.05.i, align 4, !alias.scope !4170 ; 3 uses
  %i.aey = trunc i64 %.val11.i.i to i32           ; 4 uses
  %i.aez = lshr i64 %.val11.i.i, 32
  %i.afa = trunc nuw i64 %i.aez to i32            ; 2 uses
  %.val13.i.i = load i32, ptr %i.aex, align 4, !range !27, !alias.scope !4170, !noundef !11 ; 2 uses
  %i.afb = getelementptr i8, ptr %.sroa.0.05.i, i64 -4
  %.val14.i.i = load i32, ptr %i.afb, align 4, !alias.scope !4170
  %i.afc = icmp eq i32 %.val13.i.i, %i.aey
  %i.afd = icmp ugt i32 %.val14.i.i, %i.afa
  %i.afe = icmp ugt i32 %.val13.i.i, %i.aey
  %i.aff = select i1 %i.afc, i1 %i.afd, i1 %i.afe
  br i1 %i.aff, label %.preheader.i.preheader, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCsileJQcQObtj_7hir_def7TraitIdNvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i

.preheader.i.preheader:                           ; preds = %.lr.ph.i
  %i.afg = load i64, ptr %i.aex, align 4, !alias.scope !4170
  store i64 %i.afg, ptr %.sroa.0.05.i, align 4, !alias.scope !4170
  %i.afh = icmp eq ptr %i.aex, %.sroa.02.0
  br i1 %i.afh, label %._crit_edge, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  %i.afi = load i64, ptr %i.afk, align 4, !alias.scope !4170
  store i64 %i.afi, ptr %.sroa.0.0.i.i57, align 4, !alias.scope !4170
  %i.afj = icmp eq ptr %i.afk, %.sroa.02.0
  br i1 %i.afj, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.0.0.i.i57 = phi ptr [ %i.afk, %.preheader.i ], [ %i.aex, %.preheader.i.preheader ] ; 4 uses
  %i.afk = getelementptr inbounds i8, ptr %.sroa.0.0.i.i57, i64 -8 ; 4 uses
  %.val9.i.i = load i32, ptr %i.afk, align 4, !range !27, !alias.scope !4170, !noundef !11 ; 2 uses
  %i.afl = getelementptr i8, ptr %.sroa.0.0.i.i57, i64 -4
  %.val10.i.i = load i32, ptr %i.afl, align 4, !alias.scope !4170
  %i.afm = icmp eq i32 %.val9.i.i, %i.aey
  %i.afn = icmp ugt i32 %.val10.i.i, %i.afa
  %i.afo = icmp ugt i32 %.val9.i.i, %i.aey
  %i.afp = select i1 %i.afm, i1 %i.afn, i1 %i.afo
  br i1 %i.afp, label %.preheader.i, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.i, %.lr.ph, %.preheader.i.preheader
  %.sroa.0.0.i.lcssa.i = phi ptr [ %.sroa.02.0, %.preheader.i.preheader ], [ %.sroa.02.0, %.preheader.i ], [ %.sroa.0.0.i.i57, %.lr.ph ]
  store i64 %.val11.i.i, ptr %.sroa.0.0.i.lcssa.i, align 4, !alias.scope !4170, !noalias !4171
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCsileJQcQObtj_7hir_def7TraitIdNvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCsileJQcQObtj_7hir_def7TraitIdNvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.afq = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.afq, %i.aev
  br i1 %.not.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtCsileJQcQObtj_7hir_def7TraitIdNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit, label %.lr.ph.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtCsileJQcQObtj_7hir_def7TraitIdNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCsileJQcQObtj_7hir_def7TraitIdNvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i, %bb.k
  br i1 %i.e, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtCsileJQcQObtj_7hir_def7TraitIdNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit
  %.not = icmp eq ptr %.sroa.02.0, %0
  br i1 %.not, label %bb.e, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4172)
  %i.afr = add nsw i64 %1, -1                     ; 2 uses
  %i.afs = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.afr
  %i.aft = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.afr
  %i.afu = getelementptr i8, ptr %i.f, i64 -8
  br label %.lr.ph.i38

._crit_edge.i:                                    ; preds = %.lr.ph.i38
  %i.afv = getelementptr i8, ptr %i.agw, i64 8    ; 2 uses
  %i.afw = getelementptr i8, ptr %i.agv, i64 8
  %i.afx = and i64 %1, 1
  %i.afy = icmp eq i64 %i.afx, 0
  br i1 %i.afy, label %bb.o, label %bb.n

.lr.ph.i38:                                       ; preds = %.lr.ph.i38, %bb.m
  %.sroa.0.010.i = phi ptr [ %i.agm, %.lr.ph.i38 ], [ %i.a, %bb.m ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.afz, %.lr.ph.i38 ], [ 0, %bb.m ]
  %.sroa.06.08.i = phi ptr [ %i.agl, %.lr.ph.i38 ], [ %0, %bb.m ] ; 4 uses
  %.sroa.011.07.i = phi ptr [ %i.agj, %.lr.ph.i38 ], [ %i.f, %bb.m ] ; 4 uses
  %.sroa.015.06.i = phi ptr [ %i.agw, %.lr.ph.i38 ], [ %i.afu, %bb.m ] ; 4 uses
  %.sroa.017.05.i = phi ptr [ %i.agv, %.lr.ph.i38 ], [ %i.aft, %bb.m ] ; 4 uses
  %.sroa.019.04.i = phi ptr [ %i.agx, %.lr.ph.i38 ], [ %i.afs, %bb.m ] ; 2 uses
  %i.afz = add nuw nsw i64 %.sroa.04.09.i, 1      ; 2 uses
  %.sroa.011.0.val.i = load i32, ptr %.sroa.011.07.i, align 4, !range !27, !alias.scope !4172, !noundef !11 ; 2 uses
  %i.aga = getelementptr i8, ptr %.sroa.011.07.i, i64 4
  %.sroa.011.0.val22.i = load i32, ptr %i.aga, align 4, !alias.scope !4172
  %.sroa.06.0.val.i = load i32, ptr %.sroa.06.08.i, align 4, !range !27, !alias.scope !4172, !noundef !11 ; 2 uses
  %i.agb = getelementptr i8, ptr %.sroa.06.08.i, i64 4
  %.sroa.06.0.val23.i = load i32, ptr %i.agb, align 4, !alias.scope !4172
  %i.agc = icmp eq i32 %.sroa.011.0.val.i, %.sroa.06.0.val.i
  %i.agd = icmp ult i32 %.sroa.011.0.val22.i, %.sroa.06.0.val23.i
  %i.age = icmp ult i32 %.sroa.011.0.val.i, %.sroa.06.0.val.i
  %i.agf = select i1 %i.agc, i1 %i.agd, i1 %i.age ; 3 uses
  %..i21.i = select i1 %i.agf, ptr %.sroa.011.07.i, ptr %.sroa.06.08.i
  %i.agg = xor i1 %i.agf, true
  %i.agh = load i64, ptr %..i21.i, align 4, !alias.scope !4172, !noalias !4173
  store i64 %i.agh, ptr %.sroa.0.010.i, align 4, !noalias !4174
  %i.agi = zext i1 %i.agf to i64
  %i.agj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.07.i, i64 %i.agi ; 4 uses
  %i.agk = zext i1 %i.agg to i64
  %i.agl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.08.i, i64 %i.agk ; 5 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 8 ; 2 uses
  %.sroa.017.0.val.i = load i32, ptr %.sroa.017.05.i, align 4, !range !27, !alias.scope !4172, !noundef !11 ; 2 uses
  %i.agn = getelementptr i8, ptr %.sroa.017.05.i, i64 4
  %.sroa.017.0.val24.i = load i32, ptr %i.agn, align 4, !alias.scope !4172
  %.sroa.015.0.val.i = load i32, ptr %.sroa.015.06.i, align 4, !range !27, !alias.scope !4172, !noundef !11 ; 2 uses
  %i.ago = getelementptr i8, ptr %.sroa.015.06.i, i64 4
  %.sroa.015.0.val25.i = load i32, ptr %i.ago, align 4, !alias.scope !4172
  %i.agp = icmp eq i32 %.sroa.017.0.val.i, %.sroa.015.0.val.i
  %i.agq = icmp ult i32 %.sroa.017.0.val24.i, %.sroa.015.0.val25.i
  %i.agr = icmp ult i32 %.sroa.017.0.val.i, %.sroa.015.0.val.i
  %i.ags = select i1 %i.agp, i1 %i.agq, i1 %i.agr ; 3 uses
  %..i.i = select i1 %i.ags, ptr %.sroa.015.06.i, ptr %.sroa.017.05.i
  %i.agt = xor i1 %i.ags, true
  %i.agu = load i64, ptr %..i.i, align 4, !alias.scope !4172, !noalias !4175
  store i64 %i.agu, ptr %.sroa.019.04.i, align 4, !noalias !4176
  %.neg.i.i = sext i1 %i.agt to i64
  %i.agv = getelementptr [8 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %i.ags to i64
  %i.agw = getelementptr [8 x i8], ptr %.sroa.015.06.i, i64 %.neg13.i.i ; 2 uses
  %i.agx = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -8
  %exitcond.not.i = icmp eq i64 %i.afz, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i38

bb.n:                                             ; preds = %._crit_edge.i
  %i.agy = icmp ult ptr %i.agl, %i.afv            ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.agy, ptr %i.agl, ptr %i.agj
  %i.agz = load i64, ptr %.sroa.06.0..sroa.011.0.i, align 4, !alias.scope !4172
  store i64 %i.agz, ptr %i.agm, align 4, !noalias !4172
  %i.aha = zext i1 %i.agy to i64
  %i.ahb = getelementptr inbounds nuw [8 x i8], ptr %i.agl, i64 %i.aha
  %i.ahc = xor i1 %i.agy, true
  %i.ahd = zext i1 %i.ahc to i64
  %i.ahe = getelementptr inbounds nuw [8 x i8], ptr %i.agj, i64 %i.ahd
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.agj, %._crit_edge.i ], [ %i.ahe, %bb.n ]
  %.sroa.06.1.i = phi ptr [ %i.agl, %._crit_edge.i ], [ %i.ahb, %bb.n ]
  %i.ahf = icmp ne ptr %.sroa.06.1.i, %i.afv
  %i.ahg = icmp ne ptr %.sroa.011.1.i, %i.afw
  %or.cond.i = select i1 %i.ahf, i1 true, i1 %i.ahg, !prof !48
  br i1 %or.cond.i, label %bb.p, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeNtCsileJQcQObtj_7hir_def7TraitIdNvYB1g_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit, !prof !48

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #49, !noalias !4172
  unreachable

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeNtCsileJQcQObtj_7hir_def7TraitIdNvYB1g_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.o
  %i.ahh = shl nuw nsw i64 %1, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 4 %i.a, i64 %i.ahh, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtCsileJQcQObtj_7hir_def7TraitIdNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeNtCsileJQcQObtj_7hir_def7TraitIdNvYB1g_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort18small_sort_networkTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB1f_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 16 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 7 uses
  %i.b = alloca [48 x i8], align 16               ; 4 uses
  %i.c = alloca [48 x i8], align 16               ; 4 uses
  %i.d = alloca [48 x i8], align 16               ; 4 uses
  %i.e = alloca [48 x i8], align 16               ; 4 uses
  %i.f = alloca [48 x i8], align 16               ; 4 uses
  %i.g = alloca [48 x i8], align 16               ; 4 uses
  %i.h = alloca [48 x i8], align 16               ; 4 uses
  %i.i = alloca [48 x i8], align 16               ; 4 uses
  %i.j = alloca [48 x i8], align 16               ; 4 uses
end_hunk_0
