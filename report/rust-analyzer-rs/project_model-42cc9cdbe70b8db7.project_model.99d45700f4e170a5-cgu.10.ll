Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/project_model-42cc9cdbe70b8db7.project_model.99d45700f4e170a5-cgu.10?download=true
inline.NumInlined: 724
inline.NumDeleted: 381
begin_hunk_0_@_RNvXs1y_Cs9p4rgIae0RV_6caminoNtB6_11Utf8PathBufNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq:bb.a
  %.sroa.5.i = alloca [39 x i8], align 1          ; 4 uses
  %.sroa.518.i = alloca [39 x i8], align 1        ; 4 uses
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [64 x i8], align 8                ; 10 uses
  %i.c = alloca [64 x i8], align 8                ; 8 uses
  %i.d = alloca [64 x i8], align 8                ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  call void @_RNvMs16_NtCscAsMj0W7j8b_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.8.val, i64 noundef %.16.val)
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.8.0.copyload = load i8, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 57
  %.sroa.10.0.copyload = load i8, ptr %.sroa.10.0..sroa_idx, align 1 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 58
  %.sroa.12.0.copyload = load i8, ptr %.sroa.12.0..sroa_idx, align 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val1) ]
  call void @_RNvMs16_NtCscAsMj0W7j8b_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.8.val1, i64 noundef %.16.val3)
  %.sroa.07.0.copyload = load ptr, ptr %i.c, align 8 ; 4 uses
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.59.0.copyload = load i64, ptr %.sroa.59.0..sroa_idx, align 8 ; 2 uses
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.610.0.copyload = load i8, ptr %.sroa.610.0..sroa_idx, align 8 ; 2 uses
  %.sroa.812.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.812.0.copyload = load i8, ptr %.sroa.812.0..sroa_idx, align 8 ; 2 uses
  %.sroa.1014.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 57
  %.sroa.1014.0.copyload = load i8, ptr %.sroa.1014.0..sroa_idx, align 1 ; 2 uses
  %.sroa.1216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 58
  %.sroa.1216.0.copyload = load i8, ptr %.sroa.1216.0..sroa_idx, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.518.i)
  %i.g = icmp eq i64 %.sroa.5.0.copyload, %.sroa.59.0.copyload
  br i1 %i.g, label %bb.b, label %._crit_edge.i

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i8 %.sroa.8.0.copyload, %.sroa.812.0.copyload
  %i.i = icmp eq i8 %.sroa.10.0.copyload, 2
  %or.cond.i = select i1 %i.h, i1 %i.i, i1 false
  %i.j = icmp eq i8 %.sroa.1014.0.copyload, 2
  %or.cond7.i = select i1 %or.cond.i, i1 %i.j, i1 false
  br i1 %or.cond7.i, label %bb.c, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !707
  %.not.i = icmp eq i8 %.sroa.6.0.copyload, -1
  br i1 %.not.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.0.copyload) ]
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %.sroa.0.0.copyload, ptr nonnull %.sroa.07.0.copyload, i64 %.sroa.5.0.copyload), !noalias !707
  %i.k = icmp eq i32 %bcmp.i, 0
  br i1 %i.k, label %_RNvXsl_NtCscAsMj0W7j8b_3std4pathNtB5_10ComponentsNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit, label %._crit_edge.i

bb.d:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.518.i, ptr noundef nonnull align 1 dereferenceable(39) %i.f, i64 39, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8, !noalias !707
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !707
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 %.sroa.6.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !707
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.518.i, i64 39, i1 false), !noalias !707
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 %.sroa.8.0.copyload, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !707
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  store i8 %.sroa.10.0.copyload, ptr %.sroa.7.0..sroa_idx.i, align 1, !noalias !707
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  store i8 %.sroa.12.0.copyload, ptr %.sroa.8.0..sroa_idx.i, align 2, !noalias !707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !707
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.0.copyload) ]
  %.not26.i = icmp eq i8 %.sroa.610.0.copyload, -1
  br i1 %.not26.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.i, ptr noundef nonnull align 1 dereferenceable(39) %i.e, i64 39, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %.sroa.07.0.copyload, ptr %i.a, align 8, !noalias !707
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.59.0.copyload, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !707
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %.sroa.610.0.copyload, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !707
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.i, i64 39, i1 false), !noalias !707
  %.sroa.612.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 %.sroa.812.0.copyload, ptr %.sroa.612.0..sroa_idx.i, align 8, !noalias !707
  %.sroa.713.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 57
  store i8 %.sroa.1014.0.copyload, ptr %.sroa.713.0..sroa_idx.i, align 1, !noalias !707
  %.sroa.814.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 58
  store i8 %.sroa.1216.0.copyload, ptr %.sroa.814.0..sroa_idx.i, align 2, !noalias !707
  %i.l = call noundef zeroext i1 @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a), !noalias !707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !707
  br label %_RNvXsl_NtCscAsMj0W7j8b_3std4pathNtB5_10ComponentsNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

_RNvXsl_NtCscAsMj0W7j8b_3std4pathNtB5_10ComponentsNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %bb.c, %bb.g
  %.sroa.0.0.i = phi i1 [ %i.l, %bb.g ], [ true, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.i)
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs22_CsixqsALXRULh_14cargo_metadataNtB6_7EditionNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !15, !noundef !4 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs22_CsixqsALXRULh_14cargo_metadataNtB6_7EditionNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs22_CsixqsALXRULh_14cargo_metadataNtB6_7EditionNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.109, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtCs9R0CJ7nmiec_5paths10AbsPathBufINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdcPuHeDsw6v_13project_model(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.e, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.05
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.sroa.01.05
  %i.d = tail call noundef zeroext i1 @_RNvXs8_Cs9R0CJ7nmiec_5pathsNtB5_10AbsPathBufNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c) ; 2 uses
  %i.e = add nuw i64 %.sroa.01.05, 1              ; 2 uses
  %exitcond.not = icmp ne i64 %i.e, %2
  %or.cond.not = select i1 %i.d, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %i.d, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit
  %i.b = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.01.06 ; 7 uses
  %i.d = getelementptr inbounds nuw [80 x i8], ptr %1, i64 %.sroa.01.06 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !714)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !717)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.f = load i32, ptr %i.e, align 8, !alias.scope !718, !noalias !719, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !719, !noalias !718, !noundef !4
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !718, !noalias !719, !noundef !4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !719, !noalias !718, !noundef !4
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %bb.d, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !719, !noalias !718, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !718, !noalias !719, !nonnull !4, !noundef !4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.r, ptr nonnull %i.p, i64 %i.k), !noalias !720
  %i.s = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.s, label %bb.e, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.v = tail call noundef zeroext i1 @_RNvXs8_Cs9R0CJ7nmiec_5pathsNtB5_10AbsPathBufNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
  br i1 %i.v, label %bb.f, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.x = load i8, ptr %i.w, align 4, !range !721, !alias.scope !718, !noalias !719, !noundef !4 ; 4 uses
  %i.y = icmp ne i8 %i.x, 3
  tail call void @llvm.assume(i1 %i.y)
  %3 = add nsw i8 %i.x, -2
  %i.z = icmp samesign ugt i8 %i.x, 1
  %narrow.i.i = select i1 %i.z, i8 %3, i8 1       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.ab = load i8, ptr %i.aa, align 4, !range !721, !alias.scope !719, !noalias !718, !noundef !4 ; 4 uses
  %i.ac = icmp ne i8 %i.ab, 3
  tail call void @llvm.assume(i1 %i.ac)
  %4 = add nsw i8 %i.ab, -2
  %5 = icmp samesign ugt i8 %i.ab, 1
  %narrow3.i.i = select i1 %5, i8 %4, i8 1
  %i.ad = icmp eq i8 %narrow.i.i, %narrow3.i.i
  br i1 %i.ad, label %6, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

6:                                                ; preds = %bb.f
  %7 = icmp ne i8 %narrow.i.i, 1
  %8 = icmp eq i8 %i.x, %i.ab
  %or.cond.i.i = or i1 %7, %8
  br i1 %or.cond.i.i, label %bb.g, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.g:                                             ; preds = %6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !718, !noalias !719, !noundef !4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !719, !noalias !718, !noundef !4
  %i.ai = icmp eq i64 %i.af, %i.ah
  br i1 %i.ai, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit: ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !719, !noalias !718, !nonnull !4, !noundef !4
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !718, !noalias !719, !nonnull !4, !noundef !4
  %i.an = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsbSS6DM8SDEO_5alloc6string6StringINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdcPuHeDsw6v_13project_model(ptr noundef nonnull %i.am, ptr noundef nonnull %i.ak, i64 noundef %i.af), !noalias !720
  br i1 %i.an, label %bb.b, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread: ; preds = %bb.b, %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit, %.lr.ph, %bb.f, %bb.e, %bb.c, %6, %bb.d, %bb.g, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.g ], [ false, %bb.d ], [ false, %6 ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.f ], [ false, %.lr.ph ], [ false, %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef captures(address, read_provenance) %0, ptr noundef captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %.split, %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit
  %i.b = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [448 x i8], ptr %0, i64 %.sroa.01.06 ; 42 uses
  %i.d = getelementptr inbounds nuw [448 x i8], ptr %1, i64 %.sroa.01.06 ; 42 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !732)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !734)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 440
  %i.f = load i8, ptr %i.e, align 8, !range !12, !alias.scope !735, !noalias !736, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 440
  %i.h = load i8, ptr %i.g, align 8, !range !12, !alias.scope !736, !noalias !735, !noundef !4
  %i.i = icmp eq i8 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 441
  %i.k = load i8, ptr %i.j, align 1, !range !12, !alias.scope !735, !noalias !736, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 441
  %i.m = load i8, ptr %i.l, align 1, !range !12, !alias.scope !736, !noalias !735, !noundef !4
  %i.n = icmp eq i8 %i.k, %i.m
  br i1 %i.n, label %bb.d, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  tail call void @llvm.experimental.noalias.scope.decl(metadata !737)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738)
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !739, !noalias !740, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !740, !noalias !739, !noundef !4
  %i.u = icmp eq i64 %i.r, %i.t
  br i1 %i.u, label %bb.e, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !739, !noalias !740, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !740, !noalias !739, !noundef !4
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.f, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !739, !noalias !740, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !740, !noalias !739, !noundef !4
  %i.ae = icmp eq i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.g, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.af = tail call noundef zeroext i1 @_RNvXs1_NtCsfxDLtZq386g_6semver10identifierNtB5_10IdentifierNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.p)
  br i1 %i.af, label %_RNvXs7_CsfxDLtZq386g_6semverNtB5_7VersionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvXs7_CsfxDLtZq386g_6semverNtB5_7VersionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  %i.ai = tail call noundef zeroext i1 @_RNvXs1_NtCsfxDLtZq386g_6semver10identifierNtB5_10IdentifierNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah)
  br i1 %i.ai, label %bb.h, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.h:                                             ; preds = %_RNvXs7_CsfxDLtZq386g_6semverNtB5_7VersionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !735, !noalias !736, !noundef !4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !736, !noalias !735, !noundef !4
  %i.an = icmp eq i64 %i.ak, %i.am
  br i1 %i.an, label %bb.i, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !736, !noalias !735, !nonnull !4, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !735, !noalias !736, !nonnull !4, !noundef !4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.ar, ptr nonnull %i.ap, i64 %i.ak)
  %i.as = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.as, label %bb.j, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.au = load i64, ptr %i.at, align 8, !range !7, !alias.scope !735, !noalias !736, !noundef !4
  %.not.i.i = icmp eq i64 %i.au, -1
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.aw = load i64, ptr %i.av, align 8, !range !7, !alias.scope !736, !noalias !735, !noundef !4
  %i.ax = icmp eq i64 %i.aw, -1                   ; 2 uses
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.ax, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %bb.m

bb.l:                                             ; preds = %bb.j
  br i1 %i.ax, label %bb.n, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !735, !noalias !736, !noundef !4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !736, !noalias !735, !noundef !4
  %i.bc = icmp eq i64 %i.az, %i.bb
  br i1 %i.bc, label %.split.i.i, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split.i.i:                                       ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !736, !noalias !735, !nonnull !4, !noundef !4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !735, !noalias !736, !nonnull !4, !noundef !4
  %bcmp17.i.i = tail call i32 @bcmp(ptr nonnull %i.bg, ptr nonnull %i.be, i64 %i.az)
  %i.bh = icmp eq i32 %bcmp17.i.i, 0
  br i1 %i.bh, label %bb.n, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.n:                                             ; preds = %.split.i.i, %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bk = tail call noundef zeroext i1 @_RNvXs8_Cs9R0CJ7nmiec_5pathsNtB5_10AbsPathBufNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bj)
  br i1 %i.bk, label %bb.o, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !735, !noalias !736, !noundef !4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !736, !noalias !735, !noundef !4
  %i.bp = icmp eq i64 %i.bm, %i.bo
  br i1 %i.bp, label %bb.p, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !736, !noalias !735, !nonnull !4, !noundef !4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !735, !noalias !736, !nonnull !4, !noundef !4
  %i.bu = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataEINtB5_14SlicePartialEqBC_E17equal_same_lengthB1a_(ptr noundef nonnull %i.bt, ptr noundef nonnull %i.br, i64 noundef %i.bm)
  br i1 %i.bu, label %bb.q, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !735, !noalias !736, !noundef !4 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !736, !noalias !735, !noundef !4
  %i.bz = icmp eq i64 %i.bw, %i.by
  br i1 %i.bz, label %bb.r, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !736, !noalias !735, !nonnull !4, !noundef !4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !735, !noalias !736, !nonnull !4, !noundef !4
  %i.ce = tail call fastcc noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace17PackageDependencyINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef %i.cd, ptr noundef %i.cb, i64 noundef %i.bw)
  br i1 %i.ce, label %bb.s, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 443
  %i.cg = load i8, ptr %i.cf, align 1, !range !17, !alias.scope !735, !noalias !736, !noundef !4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 443
  %i.ci = load i8, ptr %i.ch, align 1, !range !17, !alias.scope !736, !noalias !735, !noundef !4
  %i.cj = icmp eq i8 %i.cg, %i.ci
  br i1 %i.cj, label %bb.t, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 328
  %i.cm = tail call fastcc noundef zeroext i1 @_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB17_3vec3VecB13_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cl)
  br i1 %i.cm, label %bb.u, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !735, !noalias !736, !noundef !4 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !736, !noalias !735, !noundef !4
  %i.cr = icmp eq i64 %i.co, %i.cq
  br i1 %i.cr, label %bb.v, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !736, !noalias !735, !nonnull !4, !noundef !4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.cv = load ptr, ptr %i.cu, align 8, !alias.scope !735, !noalias !736, !nonnull !4, !noundef !4
  %i.cw = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsbSS6DM8SDEO_5alloc6string6StringINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdcPuHeDsw6v_13project_model(ptr noundef nonnull %i.cv, ptr noundef nonnull %i.ct, i64 noundef %i.co)
  br i1 %i.cw, label %bb.w, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 360
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  %i.cz = tail call noundef zeroext i1 @_RNvXsf_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtCsixqsALXRULh_14cargo_metadata9PackageIdENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cy)
  br i1 %i.cz, label %bb.x, label %_RNvYNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 136
end_hunk_0
