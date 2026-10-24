Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.13?download=true
inline.NumInlined: 10113
inline.NumDeleted: 4526
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 77
begin_hunk_0_@_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7radiansNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvB1v_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB57_3VecdE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_:bb.a
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !63584
  %.val16.i = load double, ptr %i.aa, align 8, !dbg !63585, !noalias !63569, !noundef !2226
  %i.ab = fmul double %.val16.i, f0x3F91DF46A2529D39, !dbg !63586
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.z, !dbg !63587
  store double %i.ab, ptr %i.ac, align 8, !dbg !63588, !noalias !63570
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !63584
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8, !dbg !63584
  %.val16.i.1 = load double, ptr %i.ae, align 8, !dbg !63585, !noalias !63569, !noundef !2226
  %i.af = fmul double %.val16.i.1, f0x3F91DF46A2529D39, !dbg !63586
  %i.ag = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.z, !dbg !63587
  %i.ah = getelementptr i8, ptr %i.ag, i64 8, !dbg !63587
  store double %i.af, ptr %i.ah, align 8, !dbg !63588, !noalias !63570
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !63584
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !63584
  %.val16.i.2 = load double, ptr %i.aj, align 8, !dbg !63585, !noalias !63569, !noundef !2226
  %i.ak = fmul double %.val16.i.2, f0x3F91DF46A2529D39, !dbg !63586
  %i.al = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.z, !dbg !63587
  %i.am = getelementptr i8, ptr %i.al, i64 16, !dbg !63587
  store double %i.ak, ptr %i.am, align 8, !dbg !63588, !noalias !63570
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !63584
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24, !dbg !63584
  %.val16.i.3 = load double, ptr %i.ao, align 8, !dbg !63585, !noalias !63569, !noundef !2226
  %i.ap = fmul double %.val16.i.3, f0x3F91DF46A2529D39, !dbg !63586
  %i.aq = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.z, !dbg !63587
  %i.ar = getelementptr i8, ptr %i.aq, i64 24, !dbg !63587
  store double %i.ap, ptr %i.ar, align 8, !dbg !63588, !noalias !63570
  %i.as = add i64 %i.z, 4, !dbg !63590            ; 2 uses
  %i.at = add nuw i64 %.sroa.01.0.i, 4, !dbg !63591 ; 2 uses
  %i.au = icmp eq i64 %i.at, %i.e, !dbg !63589
  br i1 %i.au, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7radiansNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph, !dbg !63589, !llvm.loop !63563

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7radiansNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.as, %scalar.ph ], !dbg !63592
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !63592, !noalias !63569
  ret void, !dbg !63593
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow13pow_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvB1v_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB54_3VecdE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !63594 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !63666 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !63666
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !63666 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !63666
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !63666 ; 7 uses
  %.sroa.7.0.copyload3 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !63667
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !63667
  %i.a = icmp eq ptr %0, %1, !dbg !63668
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow13pow_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !63669

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !63670
  %i.c = ptrtoint ptr %0 to i64, !dbg !63670      ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !63670      ; 2 uses
  %i.e = lshr i64 %i.d, 3, !dbg !63670            ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 32, !dbg !63671
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !63671

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 3, !dbg !63671
  %i.g = add i64 %i.f, %.sroa.7.0.copyload3, !dbg !63671
  %i.h = sub i64 %i.c, %i.g, !dbg !63671
  %diff.check = icmp ugt i64 %i.h, -16, !dbg !63671
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph, !dbg !63672

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 2305843009213693950      ; 4 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !63672

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !63672 ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index, !dbg !63673
  %wide.load = load <2 x double>, ptr %i.k, align 8, !dbg !63674, !noalias !63658
  %i.l = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %wide.load), !dbg !63675
  %i.m = getelementptr [8 x i8], ptr %i.j, i64 %index, !dbg !63676
  store <2 x double> %i.l, ptr %i.m, align 8, !dbg !63677, !noalias !63659
  %index.next = add nuw i64 %index, 2, !dbg !63672 ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec, !dbg !63678
  br i1 %i.n, label %middle.block, label %vector.body, !dbg !63678, !llvm.loop !63646

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !63678
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow13pow_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph.preheader, !dbg !63678

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %i.o = sub nsw i64 %i.e, %.sroa.01.0.i.ph, !dbg !63678
  %xtraiter = and i64 %i.o, 3, !dbg !63678        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !63678
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !63678

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.p = phi i64 [ %i.t, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !63673 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.u, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !63672 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol, !dbg !63673
  %.val16.i.prol = load double, ptr %i.q, align 8, !dbg !63674, !noalias !63658, !noundef !2226
  %i.r = tail call noundef double @llvm.sqrt.f64(double %.val16.i.prol), !dbg !63675
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.p, !dbg !63676
  store double %i.r, ptr %i.s, align 8, !dbg !63677, !noalias !63659
  %i.t = add i64 %i.p, 1, !dbg !63679             ; 3 uses
  %i.u = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !63680 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !63678 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !63678
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !63678, !llvm.loop !63651

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.u, %scalar.ph.prol ]
  %i.v = sub nsw i64 %.sroa.01.0.i.ph, %i.e, !dbg !63678
  %i.w = icmp ugt i64 %i.v, -4, !dbg !63678
  br i1 %i.w, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow13pow_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph, !dbg !63678

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.x = phi i64 [ %i.aq, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !63673 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ar, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !63672 ; 5 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !63673
  %.val16.i = load double, ptr %i.y, align 8, !dbg !63674, !noalias !63658, !noundef !2226
  %i.z = tail call noundef double @llvm.sqrt.f64(double %.val16.i), !dbg !63675
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !63676
  store double %i.z, ptr %i.aa, align 8, !dbg !63677, !noalias !63659
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !63673
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !63673
  %.val16.i.1 = load double, ptr %i.ac, align 8, !dbg !63674, !noalias !63658, !noundef !2226
  %i.ad = tail call noundef double @llvm.sqrt.f64(double %.val16.i.1), !dbg !63675
  %i.ae = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !63676
  %i.af = getelementptr i8, ptr %i.ae, i64 8, !dbg !63676
  store double %i.ad, ptr %i.af, align 8, !dbg !63677, !noalias !63659
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !63673
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !63673
  %.val16.i.2 = load double, ptr %i.ah, align 8, !dbg !63674, !noalias !63658, !noundef !2226
  %i.ai = tail call noundef double @llvm.sqrt.f64(double %.val16.i.2), !dbg !63675
  %i.aj = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !63676
  %i.ak = getelementptr i8, ptr %i.aj, i64 16, !dbg !63676
  store double %i.ai, ptr %i.ak, align 8, !dbg !63677, !noalias !63659
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !63673
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24, !dbg !63673
  %.val16.i.3 = load double, ptr %i.am, align 8, !dbg !63674, !noalias !63658, !noundef !2226
  %i.an = tail call noundef double @llvm.sqrt.f64(double %.val16.i.3), !dbg !63675
  %i.ao = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !63676
  %i.ap = getelementptr i8, ptr %i.ao, i64 24, !dbg !63676
  store double %i.an, ptr %i.ap, align 8, !dbg !63677, !noalias !63659
  %i.aq = add i64 %i.x, 4, !dbg !63679            ; 2 uses
  %i.ar = add nuw i64 %.sroa.01.0.i, 4, !dbg !63680 ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.e, !dbg !63678
  br i1 %i.as, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow13pow_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph, !dbg !63678, !llvm.loop !63652

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow13pow_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.aq, %scalar.ph ], !dbg !63681
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !63681, !noalias !63658
  ret void, !dbg !63682
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow13pow_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeEs_0NCINvNvB1v_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB56_3VecdE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #11 personality ptr @rust_eh_personality !dbg !63683 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !63767 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !63767
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !63767 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !63767
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !63767 ; 6 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !63767
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !63767 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !63768
  %i.a = icmp eq ptr %0, %1, !dbg !63769
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow13pow_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeEs_0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !63770

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !63771
  %i.c = ptrtoint ptr %0 to i64, !dbg !63771
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !63771      ; 4 uses
  %i.e = lshr i64 %i.d, 3, !dbg !63771            ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.d, 64, !dbg !63772
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !63772

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 3, !dbg !63772 ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !63772 ; 2 uses
  %i.h = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !63772
  %i.i = getelementptr i8, ptr %i.h, i64 %i.d, !dbg !63772 ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.8.0.copyload, i64 8, !dbg !63772
  %bound0 = icmp ult ptr %i.g, %1, !dbg !63772
  %bound1 = icmp ult ptr %0, %i.i, !dbg !63772
  %found.conflict = and i1 %bound0, %bound1, !dbg !63772
  %bound08 = icmp ult ptr %i.g, %i.j, !dbg !63772
  %bound19 = icmp ult ptr %.sroa.8.0.copyload, %i.i, !dbg !63772
  %found.conflict10 = and i1 %bound08, %bound19, !dbg !63772
  %conflict.rdx = or i1 %found.conflict, %found.conflict10, !dbg !63772
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph, !dbg !63773

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 2305843009213693950      ; 4 uses
  %i.k = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.l = load double, ptr %.sroa.8.0.copyload, align 8, !dbg !63774, !alias.scope !63753, !noalias !63754 ; 2 uses
  %i.m = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !63773

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !63773 ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index, !dbg !63775
  %wide.load = load <2 x double>, ptr %i.n, align 8, !dbg !63776, !alias.scope !63755, !noalias !63756 ; 2 uses
  %i.o = extractelement <2 x double> %wide.load, i64 0
  %i.p = tail call double @llvm.pow.f64(double %i.o, double %i.l), !dbg !63777
  %i.q = extractelement <2 x double> %wide.load, i64 1
  %i.r = tail call double @llvm.pow.f64(double %i.q, double %i.l), !dbg !63777
  %i.s = insertelement <2 x double> poison, double %i.p, i64 0
  %i.t = insertelement <2 x double> %i.s, double %i.r, i64 1
  %i.u = getelementptr [8 x i8], ptr %i.m, i64 %index, !dbg !63778
  store <2 x double> %i.t, ptr %i.u, align 8, !dbg !63779, !alias.scope !63758, !noalias !63759
  %index.next = add nuw i64 %index, 2, !dbg !63773 ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec, !dbg !63780
  br i1 %i.v, label %middle.block, label %vector.body, !dbg !63780, !llvm.loop !63742

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !63780
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow13pow_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeEs_0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph.preheader, !dbg !63780

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.k, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !63780
  %i.w = and i64 %i.d, 8, !dbg !63780
  %lcmp.mod.not = icmp eq i64 %i.w, 0, !dbg !63780
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !63780

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.ph, !dbg !63775
  %.val16.i.prol = load double, ptr %i.x, align 8, !dbg !63776, !noalias !63756, !noundef !2226
  %i.y = load double, ptr %.sroa.8.0.copyload, align 8, !dbg !63774, !noalias !63754, !noundef !2226
  %i.z = tail call noundef double @llvm.pow.f64(double %.val16.i.prol, double %i.y), !dbg !63777
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.ph, !dbg !63778
  store double %i.z, ptr %i.aa, align 8, !dbg !63779, !noalias !63760
  %i.ab = add i64 %.ph, 1, !dbg !63781            ; 2 uses
  %i.ac = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !63782
  br label %scalar.ph.prol.loopexit, !dbg !63780

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ac, %scalar.ph.prol ]
  %i.ad = icmp eq i64 %i.e, %.neg, !dbg !63780
  br i1 %i.ad, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow13pow_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeEs_0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph, !dbg !63780

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ae = phi i64 [ %i.ap, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !63775 ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.aq, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !63773 ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !63775
  %.val16.i = load double, ptr %i.af, align 8, !dbg !63776, !noalias !63756, !noundef !2226
  %i.ag = load double, ptr %.sroa.8.0.copyload, align 8, !dbg !63774, !noalias !63754, !noundef !2226
  %i.ah = tail call noundef double @llvm.pow.f64(double %.val16.i, double %i.ag), !dbg !63777
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !63778
  store double %i.ah, ptr %i.ai, align 8, !dbg !63779, !noalias !63760
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !63775
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !63775
  %.val16.i.1 = load double, ptr %i.ak, align 8, !dbg !63776, !noalias !63756, !noundef !2226
  %i.al = load double, ptr %.sroa.8.0.copyload, align 8, !dbg !63774, !noalias !63754, !noundef !2226
  %i.am = tail call noundef double @llvm.pow.f64(double %.val16.i.1, double %i.al), !dbg !63777
  %i.an = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !63778
  %i.ao = getelementptr i8, ptr %i.an, i64 8, !dbg !63778
  store double %i.am, ptr %i.ao, align 8, !dbg !63779, !noalias !63760
  %i.ap = add i64 %i.ae, 2, !dbg !63781           ; 2 uses
  %i.aq = add nuw i64 %.sroa.01.0.i, 2, !dbg !63782 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.e, !dbg !63780
  br i1 %i.ar, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow13pow_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeEs_0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph, !dbg !63780, !llvm.loop !63747

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow13pow_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeEs_0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.k, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ap, %scalar.ph ], !dbg !63783
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !63783, !noalias !63756
  ret void, !dbg !63784
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow14cbrt_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvB1v_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecdE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !63785 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !63857 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !63857
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !63857 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !63857
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !63857
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !63858
  %i.a = icmp eq ptr %0, %1, !dbg !63859
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow14cbrt_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !63860

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !63861
  %i.c = ptrtoint ptr %0 to i64, !dbg !63861
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !63861
  %i.e = lshr exact i64 %i.d, 3, !dbg !63861
  br label %bb.c, !dbg !63862

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.f = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.j, %bb.c ], !dbg !63863 ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.k, %bb.c ], !dbg !63864 ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !63863
  %.val16.i = load double, ptr %i.g, align 8, !dbg !63865, !noalias !63849, !noundef !2226
  %i.h = tail call noundef double @cbrt(double noundef %.val16.i) #56, !dbg !63866
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !63867
  store double %i.h, ptr %i.i, align 8, !dbg !63868, !noalias !63850
  %i.j = add i64 %i.f, 1, !dbg !63869             ; 2 uses
  %i.k = add nuw i64 %.sroa.01.0.i, 1, !dbg !63870 ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.e, !dbg !63871
  br i1 %i.l, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow14cbrt_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.c, !dbg !63871

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow14cbrt_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %bb.c, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.j, %bb.c ], !dbg !63872
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !63872, !noalias !63849
  ret void, !dbg !63873
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow14sqrt_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvB1v_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecdE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !63874 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !63946 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !63946
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !63946 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !63946
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !63946 ; 7 uses
  %.sroa.7.0.copyload3 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !63947
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !63947
  %i.a = icmp eq ptr %0, %1, !dbg !63948
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow14sqrt_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !63949

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !63950
  %i.c = ptrtoint ptr %0 to i64, !dbg !63950      ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !63950      ; 2 uses
  %i.e = lshr i64 %i.d, 3, !dbg !63950            ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 32, !dbg !63951
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !63951

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 3, !dbg !63951
  %i.g = add i64 %i.f, %.sroa.7.0.copyload3, !dbg !63951
  %i.h = sub i64 %i.c, %i.g, !dbg !63951
  %diff.check = icmp ugt i64 %i.h, -16, !dbg !63951
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph, !dbg !63952

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 2305843009213693950      ; 4 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !63952

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !63952 ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index, !dbg !63953
  %wide.load = load <2 x double>, ptr %i.k, align 8, !dbg !63954, !noalias !63938
  %i.l = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %wide.load), !dbg !63955
  %i.m = getelementptr [8 x i8], ptr %i.j, i64 %index, !dbg !63956
  store <2 x double> %i.l, ptr %i.m, align 8, !dbg !63957, !noalias !63939
  %index.next = add nuw i64 %index, 2, !dbg !63952 ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec, !dbg !63958
  br i1 %i.n, label %middle.block, label %vector.body, !dbg !63958, !llvm.loop !63926

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !63958
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow14sqrt_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph.preheader, !dbg !63958

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %i.o = sub nsw i64 %i.e, %.sroa.01.0.i.ph, !dbg !63958
  %xtraiter = and i64 %i.o, 3, !dbg !63958        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !63958
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !63958

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.p = phi i64 [ %i.t, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !63953 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.u, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !63952 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol, !dbg !63953
  %.val16.i.prol = load double, ptr %i.q, align 8, !dbg !63954, !noalias !63938, !noundef !2226
  %i.r = tail call noundef double @llvm.sqrt.f64(double %.val16.i.prol), !dbg !63955
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.p, !dbg !63956
  store double %i.r, ptr %i.s, align 8, !dbg !63957, !noalias !63939
  %i.t = add i64 %i.p, 1, !dbg !63959             ; 3 uses
  %i.u = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !63960 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !63958 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !63958
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !63958, !llvm.loop !63931

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.u, %scalar.ph.prol ]
  %i.v = sub nsw i64 %.sroa.01.0.i.ph, %i.e, !dbg !63958
  %i.w = icmp ugt i64 %i.v, -4, !dbg !63958
  br i1 %i.w, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow14sqrt_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph, !dbg !63958

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.x = phi i64 [ %i.aq, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !63953 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ar, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !63952 ; 5 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !63953
  %.val16.i = load double, ptr %i.y, align 8, !dbg !63954, !noalias !63938, !noundef !2226
  %i.z = tail call noundef double @llvm.sqrt.f64(double %.val16.i), !dbg !63955
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !63956
  store double %i.z, ptr %i.aa, align 8, !dbg !63957, !noalias !63939
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !63953
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !63953
  %.val16.i.1 = load double, ptr %i.ac, align 8, !dbg !63954, !noalias !63938, !noundef !2226
  %i.ad = tail call noundef double @llvm.sqrt.f64(double %.val16.i.1), !dbg !63955
  %i.ae = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !63956
  %i.af = getelementptr i8, ptr %i.ae, i64 8, !dbg !63956
end_hunk_0
begin_hunk_1_@_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7radiansNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvB1v_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB57_3VecfE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_:bb.a
  %.sroa.01.0.i = phi i64 [ %i.at, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !66375 ; 5 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !66376
  %.val16.i = load float, ptr %i.aa, align 4, !dbg !66377, !noalias !66361, !noundef !2226
  %i.ab = fmul float %.val16.i, f0x3C8EFA35, !dbg !66378
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.z, !dbg !66379
  store float %i.ab, ptr %i.ac, align 4, !dbg !66380, !noalias !66362
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !66376
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4, !dbg !66376
  %.val16.i.1 = load float, ptr %i.ae, align 4, !dbg !66377, !noalias !66361, !noundef !2226
  %i.af = fmul float %.val16.i.1, f0x3C8EFA35, !dbg !66378
  %i.ag = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.z, !dbg !66379
  %i.ah = getelementptr i8, ptr %i.ag, i64 4, !dbg !66379
  store float %i.af, ptr %i.ah, align 4, !dbg !66380, !noalias !66362
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !66376
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !66376
  %.val16.i.2 = load float, ptr %i.aj, align 4, !dbg !66377, !noalias !66361, !noundef !2226
  %i.ak = fmul float %.val16.i.2, f0x3C8EFA35, !dbg !66378
  %i.al = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.z, !dbg !66379
  %i.am = getelementptr i8, ptr %i.al, i64 8, !dbg !66379
  store float %i.ak, ptr %i.am, align 4, !dbg !66380, !noalias !66362
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !66376
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12, !dbg !66376
  %.val16.i.3 = load float, ptr %i.ao, align 4, !dbg !66377, !noalias !66361, !noundef !2226
  %i.ap = fmul float %.val16.i.3, f0x3C8EFA35, !dbg !66378
  %i.aq = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.z, !dbg !66379
  %i.ar = getelementptr i8, ptr %i.aq, i64 12, !dbg !66379
  store float %i.ap, ptr %i.ar, align 4, !dbg !66380, !noalias !66362
  %i.as = add i64 %i.z, 4, !dbg !66382            ; 2 uses
  %i.at = add nuw i64 %.sroa.01.0.i, 4, !dbg !66383 ; 2 uses
  %i.au = icmp eq i64 %i.at, %i.e, !dbg !66381
  br i1 %i.au, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7radiansNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph, !dbg !66381, !llvm.loop !66355

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7radiansNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.as, %scalar.ph ], !dbg !66384
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !66384, !noalias !66361
  ret void, !dbg !66385
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow13pow_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvB1v_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB54_3VecfE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !66386 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !66458 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !66458
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !66458 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !66458
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !66458 ; 7 uses
  %.sroa.7.0.copyload3 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !66459
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !66459
  %i.a = icmp eq ptr %0, %1, !dbg !66460
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow13pow_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !66461

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !66462
  %i.c = ptrtoint ptr %0 to i64, !dbg !66462      ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !66462      ; 2 uses
  %i.e = lshr i64 %i.d, 2, !dbg !66462            ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 16, !dbg !66463
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !66463

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2, !dbg !66463
  %i.g = add i64 %i.f, %.sroa.7.0.copyload3, !dbg !66463
  %i.h = sub i64 %i.c, %i.g, !dbg !66463
  %diff.check = icmp ugt i64 %i.h, -16, !dbg !66463
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph, !dbg !66464

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 4611686018427387900      ; 4 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !66464

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !66464 ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index, !dbg !66465
  %wide.load = load <4 x float>, ptr %i.k, align 4, !dbg !66466, !noalias !66450
  %i.l = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %wide.load), !dbg !66467
  %i.m = getelementptr [4 x i8], ptr %i.j, i64 %index, !dbg !66468
  store <4 x float> %i.l, ptr %i.m, align 4, !dbg !66469, !noalias !66451
  %index.next = add nuw i64 %index, 4, !dbg !66464 ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec, !dbg !66470
  br i1 %i.n, label %middle.block, label %vector.body, !dbg !66470, !llvm.loop !66438

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !66470
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow13pow_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph.preheader, !dbg !66470

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3, !dbg !66470        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !66470
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !66470

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.o = phi i64 [ %i.s, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !66465 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.t, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !66464 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.prol, !dbg !66465
  %.val16.i.prol = load float, ptr %i.p, align 4, !dbg !66466, !noalias !66450, !noundef !2226
  %i.q = tail call noundef float @llvm.sqrt.f32(float %.val16.i.prol), !dbg !66467
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.o, !dbg !66468
  store float %i.q, ptr %i.r, align 4, !dbg !66469, !noalias !66451
  %i.s = add i64 %i.o, 1, !dbg !66471             ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !66472 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !66470 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !66470
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !66470, !llvm.loop !66443

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %i.u = sub nsw i64 %.sroa.01.0.i.ph, %i.e, !dbg !66470
  %i.v = icmp ugt i64 %i.u, -4, !dbg !66470
  br i1 %i.v, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow13pow_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph, !dbg !66470

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.w = phi i64 [ %i.ap, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !66465 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.aq, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !66464 ; 5 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !66465
  %.val16.i = load float, ptr %i.x, align 4, !dbg !66466, !noalias !66450, !noundef !2226
  %i.y = tail call noundef float @llvm.sqrt.f32(float %.val16.i), !dbg !66467
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !66468
  store float %i.y, ptr %i.z, align 4, !dbg !66469, !noalias !66451
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !66465
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4, !dbg !66465
  %.val16.i.1 = load float, ptr %i.ab, align 4, !dbg !66466, !noalias !66450, !noundef !2226
  %i.ac = tail call noundef float @llvm.sqrt.f32(float %.val16.i.1), !dbg !66467
  %i.ad = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !66468
  %i.ae = getelementptr i8, ptr %i.ad, i64 4, !dbg !66468
  store float %i.ac, ptr %i.ae, align 4, !dbg !66469, !noalias !66451
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !66465
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !66465
  %.val16.i.2 = load float, ptr %i.ag, align 4, !dbg !66466, !noalias !66450, !noundef !2226
  %i.ah = tail call noundef float @llvm.sqrt.f32(float %.val16.i.2), !dbg !66467
  %i.ai = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !66468
  %i.aj = getelementptr i8, ptr %i.ai, i64 8, !dbg !66468
  store float %i.ah, ptr %i.aj, align 4, !dbg !66469, !noalias !66451
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !66465
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12, !dbg !66465
  %.val16.i.3 = load float, ptr %i.al, align 4, !dbg !66466, !noalias !66450, !noundef !2226
  %i.am = tail call noundef float @llvm.sqrt.f32(float %.val16.i.3), !dbg !66467
  %i.an = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !66468
  %i.ao = getelementptr i8, ptr %i.an, i64 12, !dbg !66468
  store float %i.am, ptr %i.ao, align 4, !dbg !66469, !noalias !66451
  %i.ap = add i64 %i.w, 4, !dbg !66471            ; 2 uses
  %i.aq = add nuw i64 %.sroa.01.0.i, 4, !dbg !66472 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.e, !dbg !66470
  br i1 %i.ar, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow13pow_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph, !dbg !66470, !llvm.loop !66444

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow13pow_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ap, %scalar.ph ], !dbg !66473
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !66473, !noalias !66450
  ret void, !dbg !66474
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow13pow_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeEs_0NCINvNvB1v_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB56_3VecfE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #11 personality ptr @rust_eh_personality !dbg !66475 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !66559 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !66559
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !66559 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !66559
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !66559 ; 6 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !66559
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !66559 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !66560
  %i.a = icmp eq ptr %0, %1, !dbg !66561
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow13pow_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeEs_0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !66562

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !66563
  %i.c = ptrtoint ptr %0 to i64, !dbg !66563
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !66563      ; 4 uses
  %i.e = lshr i64 %i.d, 2, !dbg !66563            ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.d, 32, !dbg !66564
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !66564

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2, !dbg !66564 ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !66564 ; 2 uses
  %i.h = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !66564
  %i.i = getelementptr i8, ptr %i.h, i64 %i.d, !dbg !66564 ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.8.0.copyload, i64 4, !dbg !66564
  %bound0 = icmp ult ptr %i.g, %1, !dbg !66564
  %bound1 = icmp ult ptr %0, %i.i, !dbg !66564
  %found.conflict = and i1 %bound0, %bound1, !dbg !66564
  %bound08 = icmp ult ptr %i.g, %i.j, !dbg !66564
  %bound19 = icmp ult ptr %.sroa.8.0.copyload, %i.i, !dbg !66564
  %found.conflict10 = and i1 %bound08, %bound19, !dbg !66564
  %conflict.rdx = or i1 %found.conflict, %found.conflict10, !dbg !66564
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph, !dbg !66565

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 4611686018427387900      ; 4 uses
  %i.k = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.l = load float, ptr %.sroa.8.0.copyload, align 4, !dbg !66566, !alias.scope !66545, !noalias !66546
  %i.m = insertelement <2 x float> poison, float %i.l, i64 0, !dbg !66567
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> zeroinitializer
  %i.o = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !66565

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !66565 ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index, !dbg !66568
  %wide.load = load <4 x float>, ptr %i.p, align 4, !dbg !66569, !alias.scope !66548, !noalias !66549
  %i.q = tail call <4 x float> @llvm.pow.v4f32(<4 x float> %wide.load, <4 x float> %i.n)
  %i.r = getelementptr [4 x i8], ptr %i.o, i64 %index, !dbg !66570
  store <4 x float> %i.q, ptr %i.r, align 4, !dbg !66571, !alias.scope !66550, !noalias !66551
  %index.next = add nuw i64 %index, 4, !dbg !66565 ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec, !dbg !66572
  br i1 %i.s, label %middle.block, label %vector.body, !dbg !66572, !llvm.loop !66534

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !66572
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow13pow_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeEs_0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph.preheader, !dbg !66572

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.k, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !66572
  %i.t = and i64 %i.d, 4, !dbg !66572
  %lcmp.mod.not = icmp eq i64 %i.t, 0, !dbg !66572
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !66572

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.ph, !dbg !66568
  %.val16.i.prol = load float, ptr %i.u, align 4, !dbg !66569, !noalias !66549, !noundef !2226
  %i.v = load float, ptr %.sroa.8.0.copyload, align 4, !dbg !66566, !noalias !66546, !noundef !2226
  %i.w = tail call noundef float @llvm.pow.f32(float %.val16.i.prol, float %i.v), !dbg !66567
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %.ph, !dbg !66570
  store float %i.w, ptr %i.x, align 4, !dbg !66571, !noalias !66552
  %i.y = add i64 %.ph, 1, !dbg !66573             ; 2 uses
  %i.z = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !66574
  br label %scalar.ph.prol.loopexit, !dbg !66572

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %i.aa = icmp eq i64 %i.e, %.neg, !dbg !66572
  br i1 %i.aa, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow13pow_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeEs_0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph, !dbg !66572

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ab = phi i64 [ %i.am, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !66568 ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.an, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !66565 ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !66568
  %.val16.i = load float, ptr %i.ac, align 4, !dbg !66569, !noalias !66549, !noundef !2226
  %i.ad = load float, ptr %.sroa.8.0.copyload, align 4, !dbg !66566, !noalias !66546, !noundef !2226
  %i.ae = tail call noundef float @llvm.pow.f32(float %.val16.i, float %i.ad), !dbg !66567
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !66570
  store float %i.ae, ptr %i.af, align 4, !dbg !66571, !noalias !66552
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !66568
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4, !dbg !66568
  %.val16.i.1 = load float, ptr %i.ah, align 4, !dbg !66569, !noalias !66549, !noundef !2226
  %i.ai = load float, ptr %.sroa.8.0.copyload, align 4, !dbg !66566, !noalias !66546, !noundef !2226
  %i.aj = tail call noundef float @llvm.pow.f32(float %.val16.i.1, float %i.ai), !dbg !66567
  %i.ak = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !66570
  %i.al = getelementptr i8, ptr %i.ak, i64 4, !dbg !66570
  store float %i.aj, ptr %i.al, align 4, !dbg !66571, !noalias !66552
  %i.am = add i64 %i.ab, 2, !dbg !66573           ; 2 uses
  %i.an = add nuw i64 %.sroa.01.0.i, 2, !dbg !66574 ; 2 uses
  %i.ao = icmp eq i64 %i.an, %i.e, !dbg !66572
  br i1 %i.ao, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow13pow_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeEs_0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph, !dbg !66572, !llvm.loop !66539

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow13pow_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeEs_0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.k, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.am, %scalar.ph ], !dbg !66575
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !66575, !noalias !66549
  ret void, !dbg !66576
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow14cbrt_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvB1v_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecfE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !66577 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !66649 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !66649
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !66649 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !66649
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !66649
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !66650
  %i.a = icmp eq ptr %0, %1, !dbg !66651
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow14cbrt_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !66652

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !66653
  %i.c = ptrtoint ptr %0 to i64, !dbg !66653
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !66653
  %i.e = lshr exact i64 %i.d, 2, !dbg !66653
  br label %bb.c, !dbg !66654

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.f = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.j, %bb.c ], !dbg !66655 ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.k, %bb.c ], !dbg !66656 ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !66655
  %.val16.i = load float, ptr %i.g, align 4, !dbg !66657, !noalias !66641, !noundef !2226
  %i.h = tail call noundef float @cbrtf(float noundef %.val16.i) #56, !dbg !66658
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !66659
  store float %i.h, ptr %i.i, align 4, !dbg !66660, !noalias !66642
  %i.j = add i64 %i.f, 1, !dbg !66661             ; 2 uses
  %i.k = add nuw i64 %.sroa.01.0.i, 1, !dbg !66662 ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.e, !dbg !66663
  br i1 %i.l, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow14cbrt_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.c, !dbg !66663

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow14cbrt_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %bb.c, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.j, %bb.c ], !dbg !66664
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !66664, !noalias !66641
  ret void, !dbg !66665
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow14sqrt_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvB1v_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecfE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !66666 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !66738 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !66738
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !66738 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !66738
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !66738 ; 7 uses
  %.sroa.7.0.copyload3 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !66739
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !66739
  %i.a = icmp eq ptr %0, %1, !dbg !66740
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow14sqrt_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !66741

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !66742
  %i.c = ptrtoint ptr %0 to i64, !dbg !66742      ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !66742      ; 2 uses
  %i.e = lshr i64 %i.d, 2, !dbg !66742            ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 16, !dbg !66743
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !66743

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2, !dbg !66743
  %i.g = add i64 %i.f, %.sroa.7.0.copyload3, !dbg !66743
  %i.h = sub i64 %i.c, %i.g, !dbg !66743
  %diff.check = icmp ugt i64 %i.h, -16, !dbg !66743
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph, !dbg !66744

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 4611686018427387900      ; 4 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !66744

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !66744 ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index, !dbg !66745
  %wide.load = load <4 x float>, ptr %i.k, align 4, !dbg !66746, !noalias !66730
  %i.l = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %wide.load), !dbg !66747
  %i.m = getelementptr [4 x i8], ptr %i.j, i64 %index, !dbg !66748
  store <4 x float> %i.l, ptr %i.m, align 4, !dbg !66749, !noalias !66731
  %index.next = add nuw i64 %index, 4, !dbg !66744 ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec, !dbg !66750
  br i1 %i.n, label %middle.block, label %vector.body, !dbg !66750, !llvm.loop !66718

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !66750
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow14sqrt_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph.preheader, !dbg !66750

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3, !dbg !66750        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !66750
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !66750

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.o = phi i64 [ %i.s, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !66745 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.t, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !66744 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.prol, !dbg !66745
  %.val16.i.prol = load float, ptr %i.p, align 4, !dbg !66746, !noalias !66730, !noundef !2226
  %i.q = tail call noundef float @llvm.sqrt.f32(float %.val16.i.prol), !dbg !66747
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.o, !dbg !66748
  store float %i.q, ptr %i.r, align 4, !dbg !66749, !noalias !66731
  %i.s = add i64 %i.o, 1, !dbg !66751             ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !66752 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !66750 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !66750
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !66750, !llvm.loop !66723

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %i.u = sub nsw i64 %.sroa.01.0.i.ph, %i.e, !dbg !66750
  %i.v = icmp ugt i64 %i.u, -4, !dbg !66750
  br i1 %i.v, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow14sqrt_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph, !dbg !66750

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.w = phi i64 [ %i.ap, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !66745 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.aq, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !66744 ; 5 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !66745
  %.val16.i = load float, ptr %i.x, align 4, !dbg !66746, !noalias !66730, !noundef !2226
  %i.y = tail call noundef float @llvm.sqrt.f32(float %.val16.i), !dbg !66747
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !66748
end_hunk_1
