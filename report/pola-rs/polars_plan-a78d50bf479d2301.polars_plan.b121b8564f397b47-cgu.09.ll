Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.09?download=true
inline.NumInlined: 13234
inline.NumDeleted: 6507
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB4_15IRArrayFunction9get_field:bb.a
  %i.dj = load i64, ptr %i.ab, align 8, !dbg !136447, !range !2853, !noundef !2618 ; 2 uses
  %.not473 = icmp eq i64 %i.dj, 18, !dbg !136447
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !136448
  %i.dl = load ptr, ptr %i.dk, align 8, !dbg !136448 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ab, i64 16, !dbg !136448
  %i.dn = load i64, ptr %i.dm, align 8, !dbg !136448 ; 2 uses
  br i1 %.not473, label %bb.bm, label %bb.bl, !dbg !136449

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !136308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !136308
  call void @_RNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtNtB4_6schema12FieldsMapper15ensure_is_array(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.y, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %2, i64 noundef %3), !dbg !136450
  %i.do = load i64, ptr %i.y, align 8, !dbg !136451, !range !2853, !noundef !2618 ; 2 uses
  %.not472 = icmp eq i64 %i.do, 18, !dbg !136451
  %i.dp = getelementptr inbounds nuw i8, ptr %i.y, i64 8, !dbg !136452
  %i.dq = load ptr, ptr %i.dp, align 8, !dbg !136452 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.y, i64 16, !dbg !136452
  %i.ds = load i64, ptr %i.dr, align 8, !dbg !136452 ; 2 uses
  br i1 %.not472, label %bb.bo, label %bb.bn, !dbg !136453

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !136309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !136309
  call void @_RNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtNtB4_6schema12FieldsMapper15ensure_is_array(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.v, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %2, i64 noundef %3), !dbg !136454
  %i.dt = load i64, ptr %i.v, align 8, !dbg !136455, !range !2853, !noundef !2618 ; 2 uses
  %.not471 = icmp eq i64 %i.dt, 18, !dbg !136455
  %i.du = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !136456
  %i.dv = load ptr, ptr %i.du, align 8, !dbg !136456 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !136456
  %i.dx = load i64, ptr %i.dw, align 8, !dbg !136456 ; 2 uses
  br i1 %.not471, label %bb.bq, label %bb.bp, !dbg !136457

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !136310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !136310
  call void @_RNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtNtB4_6schema12FieldsMapper15ensure_is_array(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.t, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %2, i64 noundef %3), !dbg !136458
  %i.dy = load i64, ptr %i.t, align 8, !dbg !136459, !range !2853, !noundef !2618 ; 2 uses
  %.not470 = icmp eq i64 %i.dy, 18, !dbg !136459
  %i.dz = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !136460
  %i.ea = load ptr, ptr %i.dz, align 8, !dbg !136460 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !136460
  %i.ec = load i64, ptr %i.eb, align 8, !dbg !136460 ; 2 uses
  br i1 %.not470, label %bb.bs, label %bb.br, !dbg !136461

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !136311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !136311
  call void @_RNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtNtB4_6schema12FieldsMapper15ensure_is_array(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %2, i64 noundef %3), !dbg !136462
  %i.ed = load i64, ptr %i.r, align 8, !dbg !136463, !range !2853, !noundef !2618 ; 2 uses
  %.not469 = icmp eq i64 %i.ed, 18, !dbg !136463
  %i.ee = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !136464
  %i.ef = load ptr, ptr %i.ee, align 8, !dbg !136464 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !136464
  %i.eh = load i64, ptr %i.eg, align 8, !dbg !136464 ; 2 uses
  br i1 %.not469, label %bb.bu, label %bb.bt, !dbg !136465

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !dbg !136394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !136466
  %.not468 = icmp eq i64 %3, 0, !dbg !136467      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136313), !dbg !136468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136314), !dbg !136468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136315), !dbg !136468
  br i1 %.not468, label %bb.w, label %bb.t, !dbg !136469

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136316), !dbg !136470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !136471, !noalias !136317
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 48, !dbg !136471 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 71, !dbg !136472
  %i.ek = load i8, ptr %i.ej, align 1, !dbg !136472, !range !2791, !alias.scope !136320, !noundef !2618
  %i.el = icmp eq i8 %i.ek, -40, !dbg !136473
  br i1 %i.el, label %bb.u, label %bb.v, !dbg !136473

bb.u:                                             ; preds = %bb.t
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ei) #32, !dbg !136474, !noalias !136321
  br label %bb.x, !dbg !136474

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull readonly align 16 dereferenceable(24) %i.ei, i64 24, i1 false), !dbg !136475, !noalias !136322
  br label %bb.x, !dbg !136476

bb.w:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) @267, i64 24, i1 false), !dbg !136477, !alias.scope !136321
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldE6map_orNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2G_15IRArrayFunction9get_field0EB2O_.exit, !dbg !136478

bb.x:                                             ; preds = %bb.u, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !136479, !noalias !136323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !136480, !noalias !136317
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldE6map_orNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2G_15IRArrayFunction9get_field0EB2O_.exit, !dbg !136481

common.resume:                                    ; preds = %bb.bv, %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !136482

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldE6map_orNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2G_15IRArrayFunction9get_field0EB2O_.exit: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !dbg !136483
  %.idx = mul nuw nsw i64 %3, 80, !dbg !136484
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !136484 ; 2 uses
  store ptr %2, ptr %i.az, align 8, !dbg !136485
  %i.en = getelementptr inbounds nuw i8, ptr %i.az, i64 8, !dbg !136485
  store ptr %i.em, ptr %i.en, align 8, !dbg !136485
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !136486
  %i.eo = invoke noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB2v_(ptr noundef nonnull %i.az) #33
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !136486

.noexc:                                           ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldE6map_orNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2G_15IRArrayFunction9get_field0EB2O_.exit
  %i.ep = icmp eq i64 %i.eo, 0, !dbg !136487
  br i1 %i.ep, label %bb.y, label %bb.z, !dbg !136487, !prof !2701

bb.y:                                             ; preds = %.noexc
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @326, i64 noundef 14, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @328) #27
          to label %.noexc485 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !136488

.noexc485:                                        ; preds = %bb.y
  unreachable, !dbg !136488

bb.z:                                             ; preds = %.noexc
  call void @llvm.experimental.noalias.scope.decl(metadata !136332), !dbg !136489
  br i1 %.not468, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit.thread.i, label %bb.aa, !dbg !136490

bb.aa:                                            ; preds = %bb.z
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 80, !dbg !136491 ; 2 uses
  store ptr %i.eq, ptr %i.az, align 8, !dbg !136492, !alias.scope !136334, !noalias !136335
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 48, !dbg !136493 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 71, !dbg !136494
  %i.et = load i8, ptr %i.es, align 1, !dbg !136494, !range !2791, !alias.scope !136338, !noalias !136339, !noundef !2618 ; 2 uses
  %i.eu = icmp ugt i8 %i.et, -41, !dbg !136495
  br i1 %i.eu, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit.thread12.i, !dbg !136495

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit.thread12.i: ; preds = %bb.aa
  %i.ev = add i8 %i.et, 64, !dbg !136496
  %i.ew = call i8 @llvm.umin.i8(i8 %i.ev, i8 24), !dbg !136497
  %.sroa.0.0.i.i.i.i.i = zext nneg i8 %i.ew to i64, !dbg !136497
  br label %bb.ab, !dbg !136498

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit.i: ; preds = %bb.aa
  %i.ex = load ptr, ptr %i.er, align 16, !dbg !136499, !alias.scope !136338, !noalias !136339, !noundef !2618 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 56, !dbg !136500
  %i.ez = load i64, ptr %i.ey, align 8, !dbg !136500, !alias.scope !136338, !noalias !136339, !noundef !2618
  %.not.i = icmp eq ptr %i.ex, null, !dbg !136501
  br i1 %.not.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit.thread.i, label %bb.ab, !dbg !136498, !prof !2715

bb.ab:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit.thread12.i
  %.sroa.05.017.i = phi ptr [ %i.er, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit.thread12.i ], [ %i.ex, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit.i ]
  %.sroa.6.016.i = phi i64 [ %.sroa.0.0.i.i.i.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit.thread12.i ], [ %i.ez, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit.i ]
  %i.fa = load i8, ptr %2, align 16, !dbg !136502, !range !2818, !noalias !136335, !noundef !2618
  %i.fb = icmp eq i8 %i.fa, 22, !dbg !136503
  br i1 %i.fb, label %bb.ac, label %bb.ad, !dbg !136503

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit.thread.i: ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit.i, %bb.z
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @329) #27
          to label %.noexc486 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !136504

.noexc486:                                        ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit.thread.i
  unreachable, !dbg !136504

bb.ac:                                            ; preds = %bb.ab
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !136505
  %i.fd = load ptr, ptr %i.fc, align 16, !dbg !136505, !noalias !136335, !nonnull !2618, !noundef !2618
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !136506
  %i.ff = load i64, ptr %i.fe, align 8, !dbg !136506, !noalias !136335, !noundef !2618
  br label %bb.ad, !dbg !136507

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.014.0.i = phi i64 [ %i.ff, %bb.ac ], [ 1, %bb.ab ], !dbg !136508 ; 2 uses
  %.sroa.013.0.i = phi ptr [ %i.fd, %bb.ac ], [ %2, %bb.ab ], !dbg !136508 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !136509, !noalias !136335
  store ptr %.sroa.05.017.i, ptr %i.h, align 8, !dbg !136509, !noalias !136335
  %i.fg = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !136509
  store i64 %.sroa.6.016.i, ptr %i.fg, align 8, !dbg !136509, !noalias !136335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !136510, !noalias !136335
  store ptr %2, ptr %i.g, align 8, !dbg !136510, !noalias !136335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !136511, !noalias !136335
  store ptr %.sroa.013.0.i, ptr %i.f, align 8, !dbg !136511, !noalias !136335
  %i.fh = icmp eq i64 %3, 1, !dbg !136512
  br i1 %i.fh, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit60.thread.i, label %.lr.ph.i, !dbg !136513

.lr.ph.i:                                         ; preds = %bb.ad
  %i.fi = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.ae, !dbg !136513

bb.ae:                                            ; preds = %bb.al, %.lr.ph.i
  %i.fj = phi ptr [ %i.eq, %.lr.ph.i ], [ %i.fk, %bb.al ] ; 9 uses
  %.sroa.048.028.i = phi i64 [ %.sroa.014.0.i, %.lr.ph.i ], [ %i.gf, %bb.al ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !136344), !dbg !136514
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 80, !dbg !136515 ; 3 uses
  store ptr %i.fk, ptr %i.az, align 8, !dbg !136516, !alias.scope !136345, !noalias !136335
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 48, !dbg !136517 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 71, !dbg !136518
  %i.fn = load i8, ptr %i.fm, align 1, !dbg !136518, !range !2791, !alias.scope !136346, !noalias !136347, !noundef !2618 ; 2 uses
  %i.fo = icmp ugt i8 %i.fn, -41, !dbg !136519
  br i1 %i.fo, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit60.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit60.thread21.i, !dbg !136519

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit60.thread21.i: ; preds = %bb.ae
  %i.fp = add i8 %i.fn, 64, !dbg !136520
  %i.fq = call i8 @llvm.umin.i8(i8 %i.fp, i8 24), !dbg !136521
  %.sroa.0.0.i.i.i.i54.i = zext nneg i8 %i.fq to i64, !dbg !136521
  br label %bb.af, !dbg !136522

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit60.i: ; preds = %bb.ae
  %i.fr = load ptr, ptr %i.fl, align 16, !dbg !136523, !alias.scope !136346, !noalias !136347, !noundef !2618 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fj, i64 56, !dbg !136524
  %i.ft = load i64, ptr %i.fs, align 8, !dbg !136524, !alias.scope !136346, !noalias !136347, !noundef !2618
  %.not52.i = icmp eq ptr %i.fr, null, !dbg !136525
  br i1 %.not52.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit60.thread.i, label %bb.af, !dbg !136522

bb.af:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit60.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit60.thread21.i
  %.sroa.67.026.i = phi i64 [ %.sroa.0.0.i.i.i.i54.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit60.thread21.i ], [ %i.ft, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit60.i ]
  %.sroa.06.025.i = phi ptr [ %i.fl, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit60.thread21.i ], [ %i.fr, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit60.i ]
  %i.fu = load i8, ptr %i.fj, align 16, !dbg !136526, !range !2818, !noalias !136335, !noundef !2618
  %i.fv = icmp eq i8 %i.fu, 22, !dbg !136527
  br i1 %i.fv, label %bb.aj, label %bb.ak, !dbg !136527

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit60.thread.i: ; preds = %bb.al, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit60.i, %bb.ad
  %.sroa.048.0.lcssa.i = phi i64 [ %.sroa.014.0.i, %bb.ad ], [ %.sroa.048.028.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit60.i ], [ %i.gf, %bb.al ], !dbg !136528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !136529, !noalias !136335
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.a, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %.sroa.013.0.i) #33
          to label %.noexc487 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !136530

.noexc487:                                        ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit60.thread.i
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !dbg !136531, !noalias !136350
  %i.fw = call noundef align 16 dereferenceable_or_null(48) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 2, 641) 48, i64 noundef range(i64 1, 17) 16) #31, !dbg !136532, !noalias !136350 ; 3 uses
  %i.fx = icmp eq ptr %i.fw, null, !dbg !136533
  br i1 %i.fx, label %bb.ag, label %bb.by, !dbg !136534, !prof !2701

bb.ag:                                            ; preds = %.noexc487
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 48) #30
          to label %.noexc.i unwind label %bb.ah, !dbg !136535, !noalias !136335

.noexc.i:                                         ; preds = %bb.ag
  unreachable, !dbg !136535

bb.ah:                                            ; preds = %bb.ag
  %i.fy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a) #29
          to label %.body unwind label %bb.ai, !dbg !136536, !noalias !136335

bb.ai:                                            ; preds = %bb.ah
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !136537, !noalias !136335
  unreachable, !dbg !136537

bb.aj:                                            ; preds = %bb.af
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fj, i64 16, !dbg !136538
  %i.gb = load ptr, ptr %i.ga, align 16, !dbg !136538, !noalias !136335, !nonnull !2618, !noundef !2618
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fj, i64 8, !dbg !136539
  %i.gd = load i64, ptr %i.gc, align 8, !dbg !136539, !noalias !136335, !noundef !2618
  br label %bb.ak, !dbg !136540

bb.ak:                                            ; preds = %bb.aj, %bb.af
  %.sroa.021.0.i = phi i64 [ %i.gd, %bb.aj ], [ 1, %bb.af ], !dbg !136541
  %.sroa.020.0.i = phi ptr [ %i.gb, %bb.aj ], [ %i.fj, %bb.af ], !dbg !136541
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !136542, !noalias !136335
  store ptr %.sroa.06.025.i, ptr %i.e, align 8, !dbg !136542, !noalias !136335
  store i64 %.sroa.67.026.i, ptr %i.fi, align 8, !dbg !136542, !noalias !136335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !136543, !noalias !136335
  store ptr %i.fj, ptr %i.d, align 8, !dbg !136543, !noalias !136335
  %i.ge = invoke noundef zeroext i1 @_RNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %.sroa.020.0.i, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %.sroa.013.0.i)
          to label %.noexc488 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !136544

.noexc488:                                        ; preds = %bb.ak
  br i1 %i.ge, label %bb.al, label %.split.i, !dbg !136545, !prof !2655

bb.al:                                            ; preds = %.noexc488
  %i.gf = add i64 %.sroa.021.0.i, %.sroa.048.028.i, !dbg !136546 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !136547, !noalias !136335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !136547, !noalias !136335
  %i.gg = icmp eq ptr %i.fk, %i.em, !dbg !136512
  br i1 %i.gg, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtB2n_15IRArrayFunction9get_fields_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit60.thread.i, label %bb.ae, !dbg !136513

.split.i:                                         ; preds = %.noexc488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !136548, !noalias !136335
  store ptr %i.f, ptr %i.b, align 8, !dbg !136548, !noalias !136335
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !136548
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.425.0..sroa_idx.i, align 8, !dbg !136548, !noalias !136335
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !136548
  store ptr %i.f, ptr %i.gh, align 8, !dbg !136548, !noalias !136335
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !136548
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.429.0..sroa_idx.i, align 8, !dbg !136548, !noalias !136335
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !136548
  store ptr %i.h, ptr %i.gi, align 8, !dbg !136548, !noalias !136335
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !136548
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.433.0..sroa_idx.i, align 8, !dbg !136548, !noalias !136335
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !136548
  store ptr %i.g, ptr %i.gj, align 8, !dbg !136548, !noalias !136335
  %.sroa.437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !136548
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.437.0..sroa_idx.i, align 8, !dbg !136548, !noalias !136335
  %i.gk = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !136548
  store ptr %i.d, ptr %i.gk, align 8, !dbg !136548, !noalias !136335
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !136548
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.441.0..sroa_idx.i, align 8, !dbg !136548, !noalias !136335
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !136548
  store ptr %i.e, ptr %i.gl, align 8, !dbg !136548, !noalias !136335
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !136548
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.445.0..sroa_idx.i, align 8, !dbg !136548, !noalias !136335
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @330, ptr noundef nonnull %i.b)
          to label %.noexc489 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !136549

.noexc489:                                        ; preds = %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !136550, !noalias !136335
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !136550
  invoke void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.42.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @331)
          to label %bb.bw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !136551

bb.am:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !136355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !136355
  call void @_RNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtNtB4_6schema12FieldsMapper15ensure_is_array(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %2, i64 noundef %3), !dbg !136552
  %i.gm = load i64, ptr %i.p, align 8, !dbg !136553, !range !2853, !noundef !2618 ; 2 uses
  %.not467 = icmp eq i64 %i.gm, 18, !dbg !136553
  br i1 %.not467, label %bb.cb, label %bb.ca, !dbg !136554

bb.an:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !136356
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !136356
  call void @_RNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5arrayNtNtB4_6schema12FieldsMapper15ensure_is_array(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.n, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %2, i64 noundef %3), !dbg !136555
  %i.gn = load i64, ptr %i.n, align 8, !dbg !136556, !range !2853, !noundef !2618 ; 2 uses
  %.not = icmp eq i64 %i.gn, 18, !dbg !136556
  %i.go = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !136557
  %i.gp = load ptr, ptr %i.go, align 8, !dbg !136557 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !136557
  %i.gr = load i64, ptr %i.gq, align 8, !dbg !136557 ; 2 uses
  br i1 %.not, label %bb.cd, label %bb.cc, !dbg !136558

bb.ao:                                            ; preds = %bb.c
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 24, !dbg !136559
  %.sroa.4259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !136560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.4259.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, i64 48, i1 false), !dbg !136559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !dbg !136561
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !136560
  store i64 %i.bg, ptr %i.gs, align 8, !dbg !136560
  %.sroa.2257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !136560
  store ptr %i.bi, ptr %.sroa.2257.0..sroa_idx, align 16, !dbg !136560
  %.sroa.3258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !136560
  store i64 %i.bk, ptr %.sroa.3258.0..sroa_idx, align 8, !dbg !136560
  store i8 31, ptr %0, align 16, !dbg !136560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !dbg !136562
  br label %bb.aq, !dbg !136401

bb.ap:                                            ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !dbg !136561
  store ptr %i.bi, ptr %i.ay, align 8, !dbg !136563
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ay, i64 8, !dbg !136563
  store i64 %i.bk, ptr %i.gt, align 8, !dbg !136563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !136296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.l, i8 3, i64 48, i1 false), !dbg !136296
  call void @_RNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr6schemaNtB4_12FieldsMapper10with_dtype(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ay, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(48) %i.l), !dbg !136564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !136564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !dbg !136562
  br label %bb.aq, !dbg !136562

bb.aq:                                            ; preds = %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.by, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit492, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.ap, %bb.ao
  ret void, !dbg !136565

bb.ar:                                            ; preds = %bb.d
  %.sroa.7267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 24, !dbg !136566
  %.sroa.4271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !136567
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.4271.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7267.0..sroa_idx, i64 48, i1 false), !dbg !136566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !dbg !136568
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !136567
  store i64 %i.bl, ptr %i.gu, align 8, !dbg !136567
  %.sroa.2269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !136567
  store ptr %i.bn, ptr %.sroa.2269.0..sroa_idx, align 16, !dbg !136567
  %.sroa.3270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !136567
  store i64 %i.bp, ptr %.sroa.3270.0..sroa_idx, align 8, !dbg !136567
  store i8 31, ptr %0, align 16, !dbg !136567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !dbg !136569
  br label %bb.aq, !dbg !136401

bb.as:                                            ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !dbg !136568
  store ptr %i.bn, ptr %i.aw, align 8, !dbg !136570
  %i.gv = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !136570
  store i64 %i.bp, ptr %i.gv, align 8, !dbg !136570
  call void @_RNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr6schemaNtB4_12FieldsMapper33map_to_list_and_array_inner_dtype(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aw), !dbg !136571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !dbg !136569
  br label %bb.aq, !dbg !136569

bb.at:                                            ; preds = %bb.e
  %.sroa.7279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 24, !dbg !136572
  %.sroa.4283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !136573
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.4283.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7279.0..sroa_idx, i64 48, i1 false), !dbg !136572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !dbg !136574
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !136573
  store i64 %i.bq, ptr %i.gw, align 8, !dbg !136573
  %.sroa.2281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !136573
  store ptr %i.bs, ptr %.sroa.2281.0..sroa_idx, align 16, !dbg !136573
  %.sroa.3282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !136573
  store i64 %i.bu, ptr %.sroa.3282.0..sroa_idx, align 8, !dbg !136573
  store i8 31, ptr %0, align 16, !dbg !136573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !dbg !136575
  br label %bb.aq, !dbg !136401

bb.au:                                            ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !dbg !136574
  store ptr %i.bs, ptr %i.au, align 8, !dbg !136576
  %i.gx = getelementptr inbounds nuw i8, ptr %i.au, i64 8, !dbg !136576
  store i64 %i.bu, ptr %i.gx, align 8, !dbg !136576
  call void @_RNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr6schemaNtB4_12FieldsMapper15nested_sum_type(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.au), !dbg !136577
end_hunk_0
