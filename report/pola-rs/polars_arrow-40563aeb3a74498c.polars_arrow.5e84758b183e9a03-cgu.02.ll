Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_arrow-40563aeb3a74498c.polars_arrow.5e84758b183e9a03-cgu.02?download=true
inline.NumInlined: 1595
inline.NumDeleted: 611
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array6binary7builderINtB4_18BinaryArrayBuilderxENtNtB8_7builder18StaticArrayBuilder17opt_gather_extendBa_:bb.a

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.m, !dbg !32492
  %.val1.i.i.i = load i64, ptr %i.o, align 8, !dbg !32493, !noalias !32445, !noundef !903
  %i.p = add nuw nsw i64 %i.m, 1, !dbg !32494     ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.g, !dbg !32495
  tail call void @llvm.assume(i1 %i.q), !dbg !32496
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.p, !dbg !32497
  %.val.i.i.i = load i64, ptr %i.r, align 8, !dbg !32498, !noalias !32445, !noundef !903
  %i.s = sub i64 %.val.i.i.i, %.val1.i.i.i, !dbg !32499
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array6binary7builderINtB15_18BinaryArrayBuilderxENtNtB19_7builder18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB3u_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i, !dbg !32500

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array6binary7builderINtB15_18BinaryArrayBuilderxENtNtB19_7builder18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB3u_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i64 [ %i.s, %bb.d ], [ 0, %bb.c ], !dbg !32501
  %i.t = add i64 %.sroa.0.0.i.i.i, %.sroa.02.0.i, !dbg !32502
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i, !dbg !32489
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4, !dbg !32489
  %.val14.i.1 = load i32, ptr %i.v, align 4, !dbg !32490, !noalias !32445, !noundef !903
  %i.w = zext i32 %.val14.i.1 to i64, !dbg !32491 ; 3 uses
  %i.x = icmp ugt i64 %i.h, %i.w, !dbg !32491
  br i1 %i.x, label %bb.e, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array6binary7builderINtB15_18BinaryArrayBuilderxENtNtB19_7builder18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB3u_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i.1, !dbg !32491

bb.e:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array6binary7builderINtB15_18BinaryArrayBuilderxENtNtB19_7builder18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB3u_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.w, !dbg !32492
  %.val1.i.i.i.1 = load i64, ptr %i.y, align 8, !dbg !32493, !noalias !32445, !noundef !903
  %i.z = add nuw nsw i64 %i.w, 1, !dbg !32494     ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.g, !dbg !32495
  tail call void @llvm.assume(i1 %i.aa), !dbg !32496
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.z, !dbg !32497
  %.val.i.i.i.1 = load i64, ptr %i.ab, align 8, !dbg !32498, !noalias !32445, !noundef !903
  %i.ac = sub i64 %.val.i.i.i.1, %.val1.i.i.i.1, !dbg !32499
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array6binary7builderINtB15_18BinaryArrayBuilderxENtNtB19_7builder18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB3u_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i.1, !dbg !32500

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array6binary7builderINtB15_18BinaryArrayBuilderxENtNtB19_7builder18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB3u_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i.1: ; preds = %bb.e, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array6binary7builderINtB15_18BinaryArrayBuilderxENtNtB19_7builder18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB3u_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i
  %.sroa.0.0.i.i.i.1 = phi i64 [ %i.ac, %bb.e ], [ 0, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array6binary7builderINtB15_18BinaryArrayBuilderxENtNtB19_7builder18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB3u_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i ], !dbg !32501
  %i.ad = add i64 %.sroa.0.0.i.i.i.1, %i.t, !dbg !32502 ; 3 uses
  %i.ae = add nuw nsw i64 %.sroa.04.0.i, 2, !dbg !32503 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2, !dbg !32504 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !32504
  br i1 %niter.ncmp.1, label %.lr.ph.unr-lcssa, label %bb.c, !dbg !32504

.lr.ph.unr-lcssa:                                 ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array6binary7builderINtB15_18BinaryArrayBuilderxENtNtB19_7builder18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB3u_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !32491
  br i1 %lcmp.mod.not, label %.lr.ph, label %.epil.preheader, !dbg !32491

.epil.preheader:                                  ; preds = %.lr.ph.unr-lcssa, %bb.b
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ae, %.lr.ph.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ad, %.lr.ph.unr-lcssa ]
  %lcmp.mod11 = trunc i64 %3 to i1, !dbg !32491
  tail call void @llvm.assume(i1 %lcmp.mod11), !dbg !32491
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i.epil.init, !dbg !32489
  %.val14.i.epil = load i32, ptr %i.af, align 4, !dbg !32490, !noalias !32445, !noundef !903
  %i.ag = zext i32 %.val14.i.epil to i64, !dbg !32491 ; 3 uses
  %i.ah = icmp ugt i64 %i.h, %i.ag, !dbg !32491
  br i1 %i.ah, label %bb.f, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array6binary7builderINtB15_18BinaryArrayBuilderxENtNtB19_7builder18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB3u_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i.epil, !dbg !32491

bb.f:                                             ; preds = %.epil.preheader
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ag, !dbg !32492
  %.val1.i.i.i.epil = load i64, ptr %i.ai, align 8, !dbg !32493, !noalias !32445, !noundef !903
  %i.aj = add nuw nsw i64 %i.ag, 1, !dbg !32494   ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.g, !dbg !32495
  tail call void @llvm.assume(i1 %i.ak), !dbg !32496
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.aj, !dbg !32497
  %.val.i.i.i.epil = load i64, ptr %i.al, align 8, !dbg !32498, !noalias !32445, !noundef !903
  %i.am = sub i64 %.val.i.i.i.epil, %.val1.i.i.i.epil, !dbg !32499
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array6binary7builderINtB15_18BinaryArrayBuilderxENtNtB19_7builder18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB3u_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i.epil, !dbg !32500

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array6binary7builderINtB15_18BinaryArrayBuilderxENtNtB19_7builder18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB3u_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i.epil: ; preds = %bb.f, %.epil.preheader
  %.sroa.0.0.i.i.i.epil = phi i64 [ %i.am, %bb.f ], [ 0, %.epil.preheader ], !dbg !32501
  %i.an = add i64 %.sroa.0.0.i.i.i.epil, %.sroa.02.0.i.epil.init, !dbg !32502
  br label %.lr.ph, !dbg !32484

.lr.ph:                                           ; preds = %.lr.ph.unr-lcssa, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array6binary7builderINtB15_18BinaryArrayBuilderxENtNtB19_7builder18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB3u_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i.epil
  %.lcssa = phi i64 [ %i.ad, %.lr.ph.unr-lcssa ], [ %i.an, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array6binary7builderINtB15_18BinaryArrayBuilderxENtNtB19_7builder18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB3u_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i.epil ], !dbg !32502
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !32484 ; 2 uses
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao, i64 noundef %.lcssa), !dbg !32485
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.g, !dbg !32473

bb.g:                                             ; preds = %.lr.ph, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCs8774dFTUdNv_12polars_arrow.exit
  %.sroa.0.05 = phi ptr [ %2, %.lr.ph ], [ %i.at, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCs8774dFTUdNv_12polars_arrow.exit ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 4, !dbg !32505 ; 2 uses
  %i.au = load ptr, ptr %i.ap, align 8, !dbg !32506, !noundef !903 ; 2 uses
  %i.av = load i64, ptr %i.aq, align 8, !dbg !32507, !noundef !903
  %i.aw = load i32, ptr %.sroa.0.05, align 4, !dbg !32508, !noundef !903
  %i.ax = zext i32 %i.aw to i64, !dbg !32508      ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ax, !dbg !32509
  %.val4 = load i64, ptr %i.ay, align 8, !dbg !32510, !noundef !903 ; 3 uses
  %i.az = add nuw nsw i64 %i.ax, 1, !dbg !32511   ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.av, !dbg !32512
  tail call void @llvm.assume(i1 %i.ba), !dbg !32513
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.az, !dbg !32514
  %.val = load i64, ptr %i.bb, align 8, !dbg !32515, !noundef !903 ; 2 uses
  %gepdiff = sub nuw nsw i64 %.val, %.val4, !dbg !32516 ; 3 uses
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao, i64 noundef %gepdiff), !dbg !32517
  %i.bc = load i64, ptr %i.ar, align 8, !dbg !32518, !alias.scope !32468, !noundef !903 ; 3 uses
  %i.bd = icmp sgt i64 %i.bc, -1, !dbg !32519
  tail call void @llvm.assume(i1 %i.bd), !dbg !32520
  %.not.i = icmp eq i64 %.val, %.val4, !dbg !32521
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCs8774dFTUdNv_12polars_arrow.exit, label %bb.h, !dbg !32521

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 %.val4, !dbg !32522
  %i.bf = load ptr, ptr %i.as, align 8, !dbg !32523, !alias.scope !32468, !nonnull !903, !noundef !903
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bc, !dbg !32524
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr nonnull readonly align 1 %i.be, i64 %gepdiff, i1 false), !dbg !32525
  %.pre.i = load i64, ptr %i.ar, align 8, !dbg !32526, !alias.scope !32468
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCs8774dFTUdNv_12polars_arrow.exit, !dbg !32527

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCs8774dFTUdNv_12polars_arrow.exit: ; preds = %bb.g, %bb.h
  %i.bh = phi i64 [ %.pre.i, %bb.h ], [ %i.bc, %bb.g ], !dbg !32526
  %i.bi = add i64 %i.bh, %gepdiff, !dbg !32526
  store i64 %i.bi, ptr %i.ar, align 8, !dbg !32526, !alias.scope !32468
  %i.bj = icmp eq ptr %i.at, %i.c, !dbg !32528
  br i1 %i.bj, label %._crit_edge, label %bb.g, !dbg !32473

._crit_edge:                                      ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCs8774dFTUdNv_12polars_arrow.exit, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array6binary7builderINtB2m_18BinaryArrayBuilderxENtNtB2q_7builder18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtBW_5accumjNtB4L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2s_.exit.thread
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !32529 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !dbg !32529, !noundef !903
  %.not = icmp eq ptr %i.bl, null, !dbg !32529
  %. = select i1 %.not, ptr null, ptr %i.bk, !dbg !32530
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !32531
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !32532
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !32532, !noundef !903
  %i.bp = add i64 %i.bo, -1, !dbg !32533
  tail call void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB5_16OptBitmapBuilder35opt_gather_extend_from_opt_validity(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bm, ptr noundef align 8 %., ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %i.bp), !dbg !32534
  ret void, !dbg !32535
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array6binary7builderINtB4_18BinaryArrayBuilderxENtNtB8_7builder18StaticArrayBuilder29subslice_extend_each_repeatedBa_(ptr noalias noundef align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !32536 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !32649
  %i.b = load ptr, ptr %i.a, align 8, !dbg !32649, !noundef !903 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !32650
  %i.d = load i64, ptr %i.c, align 8, !dbg !32650, !noundef !903 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !32651 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !32652 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !32652, !noundef !903 ; 4 uses
  %i.h = icmp ult i64 %2, %i.g, !dbg !32611
  br i1 %i.h, label %bb.b, label %bb.c, !dbg !32611

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %3, %2, !dbg !32653              ; 6 uses
  %i.j = icmp ult i64 %i.i, %i.g, !dbg !32654
  br i1 %i.j, label %bb.d, label %bb.h, !dbg !32654

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @490) #31, !dbg !32611
  unreachable, !dbg !32611

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.e, align 8, !dbg !32651, !noundef !903 ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %2, !dbg !32611
  %.val20 = load i64, ptr %i.l, align 8, !dbg !32655, !noundef !903
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.i, !dbg !32654
  %.val19 = load i64, ptr %i.m, align 8, !dbg !32656, !noundef !903
  %i.n = mul i64 %4, %3, !dbg !32657
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecxE7reserveCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n), !dbg !32658
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !32659 ; 3 uses
  %i.p = sub i64 %.val19, %.val20, !dbg !32660
  %i.q = mul i64 %i.p, %4, !dbg !32660
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %i.q), !dbg !32661
  %i.r = icmp ult i64 %2, %i.i, !dbg !32662
  br i1 %i.r, label %.lr.ph45, label %._crit_edge, !dbg !32617

.lr.ph45:                                         ; preds = %bb.d
  %.not66 = icmp eq i64 %4, 0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  br i1 %.not66, label %.lr.ph45.split, label %.lr.ph45.split.us

.lr.ph45.split.us:                                ; preds = %.lr.ph45, %..loopexit_crit_edge.us
  %.sroa.02.044.us = phi i64 [ %i.w, %..loopexit_crit_edge.us ], [ %2, %.lr.ph45 ] ; 4 uses
  %i.w = add i64 %.sroa.02.044.us, 1, !dbg !32663 ; 5 uses
  %i.x = load i64, ptr %i.f, align 8, !dbg !32664, !noundef !903 ; 4 uses
  %i.y = icmp ult i64 %.sroa.02.044.us, %i.x, !dbg !32621
  br i1 %i.y, label %bb.e, label %.split.us54, !dbg !32621

bb.e:                                             ; preds = %.lr.ph45.split.us
  %i.z = icmp ult i64 %i.w, %i.x, !dbg !32665
  br i1 %i.z, label %.lr.ph.us, label %.split57.us, !dbg !32665

.lr.ph.us:                                        ; preds = %bb.e
  %i.aa = load ptr, ptr %i.e, align 8, !dbg !32666, !noundef !903 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.sroa.02.044.us, !dbg !32621
  %.val18.us = load i64, ptr %i.ab, align 8, !dbg !32667, !noundef !903 ; 5 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.w, !dbg !32665
  %.val.us = load i64, ptr %i.ac, align 8, !dbg !32668, !noundef !903 ; 5 uses
  %i.ad = sub i64 %.val.us, %.val18.us            ; 8 uses
  %i.ae = icmp ult i64 %.val.us, %.val18.us
  %.not17.us = icmp ugt i64 %.val.us, %i.d
  %or.cond.us = or i1 %i.ae, %.not17.us
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 %.val18.us
  br i1 %or.cond.us, label %.lr.ph.split.us, label %.lr.ph.split.us46, !prof !1363

.lr.ph.split.us46:                                ; preds = %.lr.ph.us
  %.not.i22.us = icmp eq i64 %.val.us, %.val18.us
  br i1 %.not.i22.us, label %.lr.ph.split.split.us.us, label %.lr.ph.split.split.us53

.lr.ph.split.split.us53:                          ; preds = %.lr.ph.split.us46, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit.us50
  %.sroa.04.033.us46 = phi i64 [ %i.ag, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit.us50 ], [ 0, %.lr.ph.split.us46 ]
  %i.ag = add nuw i64 %.sroa.04.033.us46, 1, !dbg !32669 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32631), !dbg !32670
  %i.ah = load i64, ptr %i.s, align 8, !dbg !32671, !alias.scope !32631, !noalias !32632, !noundef !903 ; 4 uses
  %i.ai = load ptr, ptr %i.t, align 8, !dbg !32672, !alias.scope !32631, !noalias !32632, !nonnull !903 ; 2 uses
  %i.aj = getelementptr [8 x i8], ptr %i.ai, i64 %i.ah, !dbg !32672
  %i.ak = getelementptr i8, ptr %i.aj, i64 -8, !dbg !32672
  %i.al = load i64, ptr %i.ak, align 8, !dbg !32673, !noalias !32633, !noundef !903
  %i.am = load i64, ptr %0, align 8, !dbg !32674, !range !1093, !alias.scope !32634, !noalias !32632, !noundef !903
  %i.an = icmp eq i64 %i.ah, %i.am, !dbg !32675
  br i1 %i.an, label %bb.f, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit.us50, !dbg !32675

bb.f:                                             ; preds = %.lr.ph.split.split.us53
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !32676, !noalias !32632
  %.pre.i.us49 = load ptr, ptr %i.t, align 8, !dbg !32677, !alias.scope !32634, !noalias !32632
  br label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit.us50, !dbg !32676

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit.us50: ; preds = %bb.f, %.lr.ph.split.split.us53
  %i.ao = phi ptr [ %i.ai, %.lr.ph.split.split.us53 ], [ %.pre.i.us49, %bb.f ], !dbg !32677
  %i.ap = add i64 %i.al, %i.ad, !dbg !32678
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ah, !dbg !32679
  store i64 %i.ap, ptr %i.aq, align 8, !dbg !32680, !noalias !32632
  %i.ar = add i64 %i.ah, 1, !dbg !32681
  store i64 %i.ar, ptr %i.s, align 8, !dbg !32681, !alias.scope !32634, !noalias !32632
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ], !dbg !32682
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %i.ad), !dbg !32683
  %i.as = load i64, ptr %i.u, align 8, !dbg !32684, !alias.scope !32642, !noundef !903 ; 2 uses
  %i.at = icmp sgt i64 %i.as, -1, !dbg !32685
  tail call void @llvm.assume(i1 %i.at), !dbg !32686
  %i.au = load ptr, ptr %i.v, align 8, !dbg !32687, !alias.scope !32642, !nonnull !903, !noundef !903
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as, !dbg !32688
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr nonnull readonly align 1 %i.af, i64 %i.ad, i1 false), !dbg !32689
  %.pre.i23.us = load i64, ptr %i.u, align 8, !dbg !32690, !alias.scope !32642
  %i.aw = add i64 %.pre.i23.us, %i.ad, !dbg !32690
  store i64 %i.aw, ptr %i.u, align 8, !dbg !32690, !alias.scope !32642
  %exitcond.not = icmp eq i64 %i.ag, %4, !dbg !32691
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %.lr.ph.split.split.us53, !dbg !32692

.lr.ph.split.split.us.us:                         ; preds = %.lr.ph.split.us46, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit.us43.us
  %.sroa.04.033.us39.us = phi i64 [ %i.ax, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit.us43.us ], [ 0, %.lr.ph.split.us46 ]
  %i.ax = add nuw i64 %.sroa.04.033.us39.us, 1, !dbg !32669 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32631), !dbg !32670
  %i.ay = load i64, ptr %i.s, align 8, !dbg !32671, !alias.scope !32631, !noalias !32632, !noundef !903 ; 4 uses
  %i.az = load ptr, ptr %i.t, align 8, !dbg !32672, !alias.scope !32631, !noalias !32632, !nonnull !903 ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %i.ay, !dbg !32672
  %i.bb = getelementptr i8, ptr %i.ba, i64 -8, !dbg !32672
  %i.bc = load i64, ptr %i.bb, align 8, !dbg !32673, !noalias !32633, !noundef !903
  %i.bd = load i64, ptr %0, align 8, !dbg !32674, !range !1093, !alias.scope !32634, !noalias !32632, !noundef !903
  %i.be = icmp eq i64 %i.ay, %i.bd, !dbg !32675
  br i1 %i.be, label %bb.g, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit.us43.us, !dbg !32675

bb.g:                                             ; preds = %.lr.ph.split.split.us.us
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !32676, !noalias !32632
  %.pre.i.us42.us = load ptr, ptr %i.t, align 8, !dbg !32677, !alias.scope !32634, !noalias !32632
  br label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit.us43.us, !dbg !32676

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit.us43.us: ; preds = %bb.g, %.lr.ph.split.split.us.us
  %i.bf = phi ptr [ %i.az, %.lr.ph.split.split.us.us ], [ %.pre.i.us42.us, %bb.g ], !dbg !32677
  %i.bg = add i64 %i.bc, %i.ad, !dbg !32678
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.ay, !dbg !32679
  store i64 %i.bg, ptr %i.bh, align 8, !dbg !32680, !noalias !32632
  %i.bi = add i64 %i.ay, 1, !dbg !32681
  store i64 %i.bi, ptr %i.s, align 8, !dbg !32681, !alias.scope !32634, !noalias !32632
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ], !dbg !32682
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %i.ad), !dbg !32683
  %i.bj = load i64, ptr %i.u, align 8, !dbg !32684, !alias.scope !32642, !noundef !903 ; 2 uses
  %i.bk = icmp sgt i64 %i.bj, -1, !dbg !32685
  tail call void @llvm.assume(i1 %i.bk), !dbg !32686
  %i.bl = add i64 %i.bj, %i.ad, !dbg !32690
  store i64 %i.bl, ptr %i.u, align 8, !dbg !32690, !alias.scope !32642
  %exitcond89.not = icmp eq i64 %i.ax, %4, !dbg !32691
  br i1 %exitcond89.not, label %..loopexit_crit_edge.us, label %.lr.ph.split.split.us.us, !dbg !32692

..loopexit_crit_edge.us:                          ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit.us50, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit.us43.us
  %exitcond90.not = icmp eq i64 %i.w, %i.i, !dbg !32662
  br i1 %exitcond90.not, label %._crit_edge, label %.lr.ph45.split.us, !dbg !32617

.lr.ph45.split:                                   ; preds = %.lr.ph45
  %i.bm = load i64, ptr %i.f, align 8, !noundef !903 ; 4 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 %2), !dbg !32617 ; 2 uses
  br label %bb.i, !dbg !32617

bb.h:                                             ; preds = %bb.b
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @491) #31, !dbg !32654
  unreachable, !dbg !32654

._crit_edge:                                      ; preds = %..loopexit_crit_edge.us, %.loopexit, %bb.d
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !32693 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !dbg !32693, !noundef !903
  %.not = icmp eq ptr %i.bo, null, !dbg !32693
  %. = select i1 %.not, ptr null, ptr %i.bn, !dbg !32694
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !32695
  tail call void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB5_16OptBitmapBuilder47subslice_extend_each_repeated_from_opt_validity(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bp, ptr noundef align 8 %., i64 noundef %2, i64 noundef %3, i64 noundef %4), !dbg !32696
  ret void, !dbg !32697

bb.i:                                             ; preds = %.lr.ph45.split, %.loopexit
  %.sroa.02.044 = phi i64 [ %2, %.lr.ph45.split ], [ %i.bq, %.loopexit ] ; 2 uses
  %i.bq = add i64 %.sroa.02.044, 1, !dbg !32663   ; 4 uses
  %exitcond91.not = icmp eq i64 %.sroa.02.044, %umax, !dbg !32621
  br i1 %exitcond91.not, label %.split.us54, label %bb.j, !dbg !32621

bb.j:                                             ; preds = %bb.i
  %i.br = icmp ult i64 %i.bq, %i.bm, !dbg !32665
  br i1 %i.br, label %.loopexit, label %.split57.us, !dbg !32665

.split.us54:                                      ; preds = %.lr.ph45.split.us, %bb.i
  %.us-phi = phi i64 [ %i.bm, %bb.i ], [ %i.x, %.lr.ph45.split.us ], !dbg !32621
  %.us-phi55 = phi i64 [ %umax, %bb.i ], [ %.sroa.02.044.us, %.lr.ph45.split.us ], !dbg !32621
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.us-phi55, i64 noundef %.us-phi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @492) #31, !dbg !32621
  unreachable, !dbg !32621

.loopexit:                                        ; preds = %bb.j
  %exitcond92.not = icmp eq i64 %i.bq, %i.i, !dbg !32662
  br i1 %exitcond92.not, label %._crit_edge, label %bb.i, !dbg !32617

.lr.ph.split.us:                                  ; preds = %.lr.ph.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32631), !dbg !32670
  %i.bs = load i64, ptr %i.s, align 8, !dbg !32671, !alias.scope !32631, !noalias !32632, !noundef !903 ; 4 uses
  %i.bt = load ptr, ptr %i.t, align 8, !dbg !32672, !alias.scope !32631, !noalias !32632, !nonnull !903 ; 2 uses
  %i.bu = getelementptr [8 x i8], ptr %i.bt, i64 %i.bs, !dbg !32672
  %i.bv = getelementptr i8, ptr %i.bu, i64 -8, !dbg !32672
  %i.bw = load i64, ptr %i.bv, align 8, !dbg !32673, !noalias !32633, !noundef !903
  %i.bx = load i64, ptr %0, align 8, !dbg !32674, !range !1093, !alias.scope !32634, !noalias !32632, !noundef !903
  %i.by = icmp eq i64 %i.bs, %i.bx, !dbg !32675
  br i1 %i.by, label %bb.k, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit.us, !dbg !32675

bb.k:                                             ; preds = %.lr.ph.split.us
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !32676, !noalias !32632
  %.pre.i.us = load ptr, ptr %i.t, align 8, !dbg !32677, !alias.scope !32634, !noalias !32632
  br label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit.us, !dbg !32676

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit.us: ; preds = %bb.k, %.lr.ph.split.us
  %i.bz = phi ptr [ %i.bt, %.lr.ph.split.us ], [ %.pre.i.us, %bb.k ], !dbg !32677
  %i.ca = add i64 %i.bw, %i.ad, !dbg !32678
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.bs, !dbg !32679
  store i64 %i.ca, ptr %i.cb, align 8, !dbg !32680, !noalias !32632
  %i.cc = add i64 %i.bs, 1, !dbg !32681
  store i64 %i.cc, ptr %i.s, align 8, !dbg !32681, !alias.scope !32634, !noalias !32632
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val18.us, i64 noundef %.val.us, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @494) #31, !dbg !32698
  unreachable, !dbg !32698

.split57.us:                                      ; preds = %bb.e, %bb.j
  %.us-phi58 = phi i64 [ %i.bq, %bb.j ], [ %i.w, %bb.e ], !dbg !32665
  %.us-phi59 = phi i64 [ %i.bm, %bb.j ], [ %i.x, %bb.e ], !dbg !32665
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.us-phi58, i64 noundef %.us-phi59, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @493) #31, !dbg !32665
  unreachable, !dbg !32665
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array6binary7builderINtB4_18BinaryArrayBuilderxENtNtB8_7builder18StaticArrayBuilder6freezeBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(136) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !32699 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [112 x i8], align 8               ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 2 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !32730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !32731
  %i.j = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragexE8from_vecCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1)
          to label %bb.c unwind label %bb.b, !dbg !32732

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferxE12from_storageCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull %i.j)
          to label %bb.d unwind label %bb.b, !dbg !32733

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !32734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !32735
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !32736
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !32737
  %i.m = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.l)
          to label %bb.f unwind label %bb.e, !dbg !32738

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferhE12from_storageCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %i.m)
          to label %bb.g unwind label %bb.e, !dbg !32739

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !32740
  invoke void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB5_16OptBitmapBuilder17into_opt_validity(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.o)
          to label %bb.h unwind label %bb.n, !dbg !32741

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !32742
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !32742
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false), !dbg !32742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !32743
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !32743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !32744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !32744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !32745
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array6binaryINtB2_11BinaryArrayxE7try_newB6_(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g), !dbg !32745
  call void @llvm.experimental.noalias.scope.decl(metadata !32727), !dbg !32746
  call void @llvm.experimental.noalias.scope.decl(metadata !32728), !dbg !32746
  %i.q = load i8, ptr %i.b, align 8, !dbg !32747, !range !1157, !alias.scope !32728, !noalias !32727, !noundef !903
  %i.r = icmp eq i8 %i.q, 42, !dbg !32747
  br i1 %i.r, label %bb.i, label %bb.m, !dbg !32748, !prof !929

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !32749, !noalias !32729
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !32749
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.s, i64 72, i1 false), !dbg !32749, !noalias !32727
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @96, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #30
          to label %bb.k unwind label %bb.j, !dbg !32750, !noalias !32729

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #36
          to label %.thread34 unwind label %bb.l, !dbg !32751, !noalias !32729

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !32752, !noalias !32729
  unreachable, !dbg !32752

bb.m:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.b, i64 112, i1 false), !dbg !32753, !alias.scope !32729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !32754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !32755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !32755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !32755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !32756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !32757
  ret void, !dbg !32758

bb.n:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.p unwind label %bb.o, !dbg !32759

bb.o:                                             ; preds = %bb.p, %bb.n, %bb.t, %bb.s, %bb.q
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !32760
  unreachable, !dbg !32760

bb.p:                                             ; preds = %bb.e, %bb.n
  %.pn.ph = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.v, %bb.n ]
  %.sroa.03.1.ph = phi i1 [ true, %bb.e ], [ false, %bb.n ]
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragexENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.q unwind label %bb.o, !dbg !32761

.body.thread:                                     ; preds = %bb.q
  br i1 %.sroa.04.0.ph, label %bb.s, label %bb.r, !dbg !32757

bb.q:                                             ; preds = %bb.b, %bb.p
  %.pn.pn.ph = phi { ptr, i32 } [ %i.k, %bb.b ], [ %.pn.ph, %bb.p ] ; 2 uses
  %.sroa.04.0.ph = phi i1 [ true, %bb.b ], [ false, %bb.p ]
  %.sroa.03.0.ph = phi i1 [ true, %bb.b ], [ %.sroa.03.1.ph, %bb.p ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !32757
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeEBK_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.x) #36
          to label %.body.thread unwind label %bb.o, !dbg !32757

bb.r:                                             ; preds = %bb.s, %.body.thread
  br i1 %.sroa.03.0.ph, label %bb.t, label %.thread34, !dbg !32757

bb.s:                                             ; preds = %.body.thread
end_hunk_0
