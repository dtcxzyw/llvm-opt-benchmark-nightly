Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.11?download=true
inline.NumInlined: 4205
inline.NumDeleted: 1515
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_RNvXsb_Cs9R0CJ7nmiec_5pathsNtB5_7AbsPathNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCs6u1mgJOKDyY_13rust_analyzer:bb.a
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.518.i, i64 39, i1 false), !noalias !6180
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 %i.ac, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6180
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  store i8 %i.ae, ptr %.sroa.7.0..sroa_idx.i, align 1, !noalias !6180
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  store i8 %i.aa, ptr %.sroa.8.0..sroa_idx.i, align 2, !noalias !6180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6180
  %i.af = load ptr, ptr %i.c, align 8, !alias.scope !6179, !noalias !6178, !nonnull !5, !noundef !5
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ah = load i8, ptr %i.ag, align 8, !range !50, !alias.scope !6179, !noalias !6178, !noundef !5 ; 2 uses
  %.not26.i = icmp eq i8 %i.ah, -1
  br i1 %.not26.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.i, ptr noundef nonnull readonly align 1 dereferenceable(39) %.sroa.425.0..sroa_idx.i, i64 39, i1 false), !noalias !6178
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 58
  %i.aj = load i8, ptr %i.ai, align 2, !range !6, !alias.scope !6179, !noalias !6178, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.al = load i8, ptr %i.ak, align 8, !range !38, !alias.scope !6179, !noalias !6178, !noundef !5
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 57
  %i.an = load i8, ptr %i.am, align 1, !range !38, !alias.scope !6179, !noalias !6178, !noundef !5
  store ptr %i.af, ptr %i.a, align 8, !noalias !6180
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.h, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !6180
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.ah, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !6180
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.i, i64 39, i1 false), !noalias !6180
  %.sroa.612.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 %i.al, ptr %.sroa.612.0..sroa_idx.i, align 8, !noalias !6180
  %.sroa.713.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 57
  store i8 %i.an, ptr %.sroa.713.0..sroa_idx.i, align 1, !noalias !6180
  %.sroa.814.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 58
  store i8 %i.aj, ptr %.sroa.814.0..sroa_idx.i, align 2, !noalias !6180
  %i.ao = call noundef zeroext i1 @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a), !noalias !6180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6180
  br label %_RNvXsl_NtCscAsMj0W7j8b_3std4pathNtB5_10ComponentsNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

_RNvXsl_NtCscAsMj0W7j8b_3std4pathNtB5_10ComponentsNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %bb.d, %bb.h
  %.sroa.0.0.i = phi i1 [ %i.ao, %bb.h ], [ true, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { i64, i64 } @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase18nonce_and_revision(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.e = load i64, ptr %i.d, align 8, !range !33, !noundef !5
  %i.f = insertvalue { i64, i64 } poison, i64 %i.b, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %i.e, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsc_NtCsbq3eHDLgq0Z_8la_arena3mapINtB5_8ArenaMapINtB7_3IdxNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataENtNtB11_18build_dependencies17BuildScriptOutputENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @594, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @595, i64 noundef 1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @592, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @596, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @593)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCshzWfHUSfYae_4core3fmtbNtB5_5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCshzWfHUSfYae_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpRNtCs9R0CJ7nmiec_5paths7AbsPathNtB5_13SliceContains14slice_containsCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.idx = shl nuw nsw i64 %2, 4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6184)
  %.val2.i.i = load ptr, ptr %0, align 8, !alias.scope !6184, !noalias !6185, !nonnull !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load i64, ptr %i.b, align 8, !alias.scope !6184, !noalias !6185
  %.not.not.not.i.not.not.not1.not = icmp eq i64 %2, 0
  br i1 %.not.not.not.i.not.not.not1.not, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterRNtCs9R0CJ7nmiec_5paths7AbsPathENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2d_13SliceContains14slice_contains0ECs6u1mgJOKDyY_13rust_analyzer.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.a
  %i.c = phi ptr [ %i.f, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %.val2.i = load ptr, ptr %i.c, align 8, !noalias !6186, !nonnull !5, !noundef !5
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val3.i = load i64, ptr %i.d, align 8, !noalias !6186, !noundef !5
  %i.e = tail call fastcc noundef zeroext i1 @_RNvXsb_Cs9R0CJ7nmiec_5pathsNtB5_7AbsPathNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val2.i, i64 noundef %.val3.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val2.i.i, i64 noundef %.val3.i.i), !noalias !6186 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.not.not.not.i.not.not.not.not = icmp eq ptr %i.f, %i.a
  %or.cond = select i1 %i.e, i1 true, i1 %.not.not.not.i.not.not.not.not
  br i1 %or.cond, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterRNtCs9R0CJ7nmiec_5paths7AbsPathENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2d_13SliceContains14slice_contains0ECs6u1mgJOKDyY_13rust_analyzer.exit, label %.lr.ph

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterRNtCs9R0CJ7nmiec_5paths7AbsPathENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2d_13SliceContains14slice_contains0ECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %.lr.ph, %bb.a
  %.not.not.not.i.not.not.not.lcssa = phi i1 [ false, %bb.a ], [ %i.e, %.lr.ph ]
  ret i1 %.not.not.not.i.not.not.not.lcssa
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsg_Cs4kMRW8zVVbM_3cfgNtB5_7CfgDiffNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.j = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomINtB5_14SlicePartialEqBC_E17equal_same_lengthCs6u1mgJOKDyY_13rust_analyzer(ptr noundef nonnull %i.i, ptr noundef nonnull %i.g, i64 noundef %i.b)
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8, !noundef !5
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.e
  %.sroa.0.0 = phi i1 [ %i.t, %bb.e ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5
  %i.t = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomINtB5_14SlicePartialEqBC_E17equal_same_lengthCs6u1mgJOKDyY_13rust_analyzer(ptr noundef nonnull %i.s, ptr noundef nonnull %i.q, i64 noundef %i.l)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsi_NtNtCscAsMj0W7j8b_3std4sync4mpscINtB5_9SendErrorNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @607, i64 noundef 9)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsj_NtCsdcPuHeDsw6v_13project_model12project_jsonNtB5_5BuildNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.i, ptr nonnull %i.g, i64 %i.b)
  %i.j = icmp eq i32 %bcmp, 0
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val3 = load i64, ptr %i.l, align 8, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val4 = load ptr, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val5 = load i64, ptr %i.n, align 8
  %i.o = tail call fastcc noundef zeroext i1 @_RNvXs1y_Cs9p4rgIae0RV_6caminoNtB6_11Utf8PathBufNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr %.val, i64 %.val3, ptr %.val4, i64 %.val5) #40
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i8, ptr %i.p, align 8, !range !58, !noundef !5 ; 4 uses
  %i.r = icmp ne i8 %i.q, 3
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp samesign ugt i8 %i.q, 1             ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load i8, ptr %i.t, align 8, !range !58, !noundef !5 ; 4 uses
  %i.v = icmp ne i8 %i.u, 3
  tail call void @llvm.assume(i1 %i.v)
  %2 = icmp samesign ugt i8 %i.u, 1
  %3 = select i1 %i.s, i8 %i.q, i8 3
  %narrow2 = select i1 %2, i8 %i.u, i8 3
  %i.w = icmp eq i8 %3, %narrow2
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d, %bb.b, %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %spec.select, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.f:                                             ; preds = %bb.d
  %i.x = icmp eq i8 %i.q, %i.u
  %spec.select = or i1 %i.s, %i.x
  br label %bb.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXso_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_17GlobalConfigInputNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(520) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(520) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.4 = alloca [64 x i8], align 8            ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [56 x i8], align 8                ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 428
  %i.r = load i8, ptr %i.q, align 4, !range !12, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.t = load i64, ptr %i.s, align 8, !range !28, !noundef !5 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val233 = load i64, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !range !7, !noundef !5
  %.not111 = icmp eq i64 %i.w, -1
  br i1 %.not111, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXNtCs3gqD4ldeioo_8indexmap3mapINtB2_8IndexMapNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs6u1mgJOKDyY_13rust_analyzer6config10SnippetDefNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB1q_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.v)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %i.p, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !range !7, !noundef !5
  %.not112 = icmp eq i64 %i.y, -1
  br i1 %.not112, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs9p4rgIae0RV_6camino11Utf8PathBufENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x)
          to label %bb.j unwind label %bb.i

bb.f:                                             ; preds = %bb.d
  store i64 -1, ptr %i.o, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 429
  %i.aa = load <16 x i8>, ptr %i.z, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 445
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ad = load i64, ptr %i.ac, align 8, !range !28, !noundef !5 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val235 = load i64, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 502
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 510
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !range !10, !noundef !5 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val248 = load i64, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !range !10, !noundef !5 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val246 = load i64, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ao = load i64, ptr %i.an, align 8, !range !10, !noundef !5 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val244 = load i64, ptr %i.ap, align 8
  %i.aq = load i64, ptr %1, align 8, !range !11, !noundef !5 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = load <4 x i8>, ptr %i.ag, align 2
  %i.au = load <16 x i8>, ptr %i.ab, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aw = load i64, ptr %i.av, align 8, !range !10, !noundef !5 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val242 = load i64, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 461
  %i.az = load <8 x i8>, ptr %i.af, align 2
  %i.ba = load <16 x i8>, ptr %i.ay, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 477
  %i.bc = load <8 x i8>, ptr %i.bb, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 485
  %i.be = load i8, ptr %i.bd, align 1, !range !12, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !range !7, !noundef !5
  %.not187 = icmp eq i64 %i.bg, -1
  br i1 %.not187, label %bb.n, label %bb.m

bb.h:                                             ; preds = %bb.k, %bb.i
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.k ], [ %i.bh, %bb.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3gqD4ldeioo_8indexmap3map8IndexMapNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs6u1mgJOKDyY_13rust_analyzer6config10SnippetDefNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEEB2i_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.p) #41
          to label %bb.az unwind label %bb.ay

bb.i:                                             ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.g

bb.k:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEECs6u1mgJOKDyY_13rust_analyzer.exit, %bb.l
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEECs6u1mgJOKDyY_13rust_analyzer.exit ], [ %i.bi, %bb.l ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9p4rgIae0RV_6camino11Utf8PathBufEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #41
          to label %bb.h unwind label %bb.ay

bb.l:                                             ; preds = %bb.m
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs6u1mgJOKDyY_13rust_analyzer6config21ManifestOrProjectJsonENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBJ_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf)
          to label %bb.p unwind label %bb.l

bb.n:                                             ; preds = %bb.g
  store i64 -1, ptr %i.n, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.bk = load i16, ptr %i.bj, align 8, !range !60, !noundef !5 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 426
  %.val259 = load i16, ptr %i.bl, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !noundef !5
  %.not189 = icmp eq ptr %i.bn, null
  br i1 %.not189, label %bb.s, label %bb.r

bb.p:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.o

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.v, %bb.w, %bb.q
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.q ], [ %.pn.pn.pn, %bb.w ], [ %.pn.pn.pn, %bb.v ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6u1mgJOKDyY_13rust_analyzer6config21ManifestOrProjectJsonEEEB1y_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #41
          to label %bb.k unwind label %bb.ay

bb.q:                                             ; preds = %bb.r
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEECs6u1mgJOKDyY_13rust_analyzer.exit

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvXNtCsfjX3T6UU9IB_9hashbrown3mapINtB2_7HashMapINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bm)
          to label %bb.u unwind label %bb.q

bb.s:                                             ; preds = %bb.o
  store ptr null, ptr %i.m, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 486
  %i.bq = load i8, ptr %i.bp, align 2, !range !12, !noundef !5
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bs = load i64, ptr %i.br, align 8, !range !36, !noundef !5 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val261 = load i64, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 487
  %i.bv = load i8, ptr %i.bu, align 1, !range !12, !noundef !5
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.bx = load i8, ptr %i.bw, align 8, !range !12, !noundef !5
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bz = load i64, ptr %i.by, align 8, !range !10, !noundef !5 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val263 = load i64, ptr %i.ca, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !range !9, !noundef !5 ; 2 uses
  %.not195 = icmp eq i64 %i.cc, -2
  br i1 %.not195, label %bb.ab, label %bb.y

bb.u:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.t

bb.v:                                             ; preds = %bb.ai, %bb.x
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ai ], [ %i.cf, %bb.x ] ; 2 uses
end_hunk_0
