Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations_metrics-342164916d52e314.foundations_metrics.d5cc6c7b8a1a7c9f-cgu.06?download=true
inline.NumInlined: 51
inline.NumDeleted: 35
begin_hunk_0_@_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation22sanitize_exemplar_slot:bb.a
bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model9LabelPairENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body unwind label %bb.i, !dbg !727

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10, !dbg !726
  unreachable, !dbg !726

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model8ExemplarECsim2LhUzKY4R_19foundations_metrics.exit.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model9LabelPairENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model8ExemplarEECsim2LhUzKY4R_19foundations_metrics.exit unwind label %bb.j, !dbg !728

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model8ExemplarECsim2LhUzKY4R_19foundations_metrics.exit.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !729

.body:                                            ; preds = %bb.h, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.j ], [ %i.x, %bb.h ]
  store i64 2, ptr %0, align 8, !dbg !729
  resume { ptr, i32 } %eh.lpad-body, !dbg !730

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model8ExemplarEECsim2LhUzKY4R_19foundations_metrics.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model8ExemplarECsim2LhUzKY4R_19foundations_metrics.exit.i
  store i64 2, ptr %0, align 8, !dbg !729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !731
  br label %bb.k, !dbg !732

bb.k:                                             ; preds = %bb.a, %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation19find_exemplar_issue.exit.thread18, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model8ExemplarEECsim2LhUzKY4R_19foundations_metrics.exit
  ret void, !dbg !732
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation22sanitize_metric_family(ptr noalias nofree noundef align 8 dereferenceable(104) %0, i8 noundef range(i8 0, 3) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !733 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !777
  %i.h = load i64, ptr %i.g, align 8, !dbg !777, !range !61, !noundef !59
  %.not = icmp eq i64 %i.h, -1, !dbg !777         ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !778
  %i.j = load ptr, ptr %i.i, align 8, !dbg !778, !nonnull !59 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !778
  %i.l = load i64, ptr %i.k, align 8, !dbg !778   ; 3 uses
  %.sroa.56.0 = select i1 %.not, i64 undef, i64 %i.l, !dbg !778 ; 5 uses
  %.sroa.05.0 = select i1 %.not, ptr null, ptr %i.j, !dbg !778 ; 2 uses
  %i.m = icmp eq i64 %.sroa.56.0, 0
  %or.cond.i = select i1 %.not, i1 true, i1 %i.m, !dbg !779
  br i1 %or.cond.i, label %switch.lookup, label %bb.b, !dbg !779

bb.b:                                             ; preds = %bb.a
  %i.n = icmp samesign ult i64 %i.l, 16, !dbg !780
  br i1 %i.n, label %.preheader.i.i.i.i.i.i, label %bb.c, !dbg !780

bb.c:                                             ; preds = %bb.b
  %i.o = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.l), !dbg !781 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0, !dbg !781
  %i.q = extractvalue { i64, i64 } %i.o, 1, !dbg !781
  %i.r = trunc nuw i64 %i.p to i1, !dbg !782
  br i1 %i.r, label %.loopexit9.i.i.i.i.i.i, label %.loopexit, !dbg !782

.loopexit9.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i, %bb.c
  %.sroa.5.0.i.i.i.i.i.i = phi i64 [ %i.q, %bb.c ], [ %.sroa.04.011.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], !dbg !783
  %i.s = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i, %.sroa.56.0, !dbg !784
  tail call void @llvm.assume(i1 %i.s), !dbg !785
  br label %switch.lookup, !dbg !786

.preheader.i.i.i.i.i.i:                           ; preds = %bb.b, %bb.d
  %.sroa.04.011.i.i.i.i.i.i = phi i64 [ %i.w, %bb.d ], [ 0, %bb.b ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.04.011.i.i.i.i.i.i, !dbg !787
  %i.u = load i8, ptr %i.t, align 1, !dbg !787, !alias.scope !773, !noundef !59
  %i.v = icmp eq i8 %i.u, 0, !dbg !787
  br i1 %i.v, label %.loopexit9.i.i.i.i.i.i, label %bb.d, !dbg !787

bb.d:                                             ; preds = %.preheader.i.i.i.i.i.i
  %i.w = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i, 1, !dbg !788 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.w, %.sroa.56.0, !dbg !789
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit, label %.preheader.i.i.i.i.i.i, !dbg !789

.loopexit:                                        ; preds = %bb.d, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !790
  %i.y = load i32, ptr %i.x, align 8, !dbg !790, !range !138, !noundef !59
  %i.z = trunc nuw i32 %i.y to i1, !dbg !791
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 100, !dbg !791
  %i.ab = load i32, ptr %i.aa, align 4, !dbg !791 ; 2 uses
  %switch = icmp ult i32 %i.ab, 6, !dbg !791
  %i.ac = select i1 %i.z, i1 %switch, i1 false, !dbg !791
  %.sroa.07.0 = select i1 %i.ac, i32 %i.ab, i32 -1, !dbg !791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 %1, ptr %i.f, align 1, !noalias !775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !792, !noalias !775
  switch i32 %.sroa.07.0, label %bb.e [
    i32 5, label %bb.g
    i32 2, label %bb.f
    i32 4, label %bb.g
  ], !dbg !793

bb.e:                                             ; preds = %.loopexit
  store ptr null, ptr %i.e, align 8, !dbg !794, !noalias !775
  br label %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation13sanitize_rows.exit, !dbg !794

bb.f:                                             ; preds = %.loopexit
  store ptr @0, ptr %i.e, align 8, !dbg !795, !noalias !775
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !795
  store i64 8, ptr %i.ad, align 8, !dbg !795, !noalias !775
  br label %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation13sanitize_rows.exit, !dbg !796

bb.g:                                             ; preds = %.loopexit, %.loopexit
  store ptr @1, ptr %i.e, align 8, !dbg !797, !noalias !775
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !797
  store i64 2, ptr %i.ae, align 8, !dbg !797, !noalias !775
  br label %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation13sanitize_rows.exit, !dbg !798

_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation13sanitize_rows.exit: ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !799, !noalias !775
  store ptr %i.e, ptr %i.d, align 8, !dbg !799, !noalias !775
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !799
  store ptr %i.f, ptr %i.af, align 8, !dbg !799, !noalias !775
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !799
  store ptr %.sroa.05.0, ptr %i.ag, align 8, !dbg !799, !noalias !775
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !799
  store i64 %.sroa.56.0, ptr %i.ah, align 8, !dbg !799, !noalias !775
  call void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model6MetricE10retain_mutNCNvNtCsim2LhUzKY4R_19foundations_metrics10validation13sanitize_rows0EB25_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d), !dbg !800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !801, !noalias !775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !802, !noalias !775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !803
  br label %bb.h, !dbg !804

switch.lookup:                                    ; preds = %.loopexit9.i.i.i.i.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.05.0, ptr %i.c, align 8, !noalias !776
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.56.0, ptr %i.ai, align 8, !noalias !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !805, !noalias !776
  %i.aj = zext nneg i8 %1 to i64, !dbg !806
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtCsim2LhUzKY4R_19foundations_metrics10validation23sanitized_metric_family.22, i64 %i.aj, !dbg !806
  %switch.load = load ptr, ptr %switch.gep, align 8, !dbg !806
  %i.ak = zext nneg i8 %1 to i64, !dbg !806
  %switch.gep25 = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtCsim2LhUzKY4R_19foundations_metrics10validation23sanitized_metric_family.23, i64 %i.ak, !dbg !806
  %switch.load26 = load i8, ptr %switch.gep25, align 1, !dbg !806
  %switch.ext = zext i8 %switch.load26 to i64, !dbg !806
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !807
  store ptr %switch.load, ptr %i.b, align 8, !dbg !807, !noalias !776, !captures !84
  store i64 %switch.ext, ptr %i.al, align 8, !dbg !807, !noalias !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !808, !noalias !776
  store ptr %i.b, ptr %i.a, align 8, !dbg !808, !noalias !776
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !808
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsim2LhUzKY4R_19foundations_metrics, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !808, !noalias !776
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !808
  store ptr %i.c, ptr %i.am, align 8, !dbg !808, !noalias !776
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !808
  store ptr @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionReENtNtB7_3fmt5Debug3fmtCsim2LhUzKY4R_19foundations_metrics, ptr %.sroa.46.0..sroa_idx.i, align 8, !dbg !808, !noalias !776
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !808
  store ptr @6, ptr %i.an, align 8, !dbg !808, !noalias !776
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !808
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsim2LhUzKY4R_19foundations_metrics, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !808, !noalias !776
  call void @_RNvNtCsim2LhUzKY4R_19foundations_metrics11diagnostics20report_collect_error(ptr noundef nonnull @20, ptr noundef nonnull %i.a), !dbg !809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !810, !noalias !776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !810, !noalias !776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !811
  br label %bb.h, !dbg !812

bb.h:                                             ; preds = %switch.lookup, %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation13sanitize_rows.exit
  %.not1118 = phi i1 [ false, %switch.lookup ], [ true, %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation13sanitize_rows.exit ]
  ret i1 %.not1118, !dbg !804
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation23sanitized_metric_family(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1, i8 noundef range(i8 0, 3) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !813 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.53.i = alloca [16 x i8], align 8         ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [48 x i8], align 8                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [104 x i8], align 8               ; 12 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !1184 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !dbg !1184, !range !61, !noundef !59
  %.not = icmp eq i64 %i.r, -1, !dbg !1184        ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !1185
  %i.t = load ptr, ptr %i.s, align 8, !dbg !1185, !nonnull !59 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !1185
  %i.v = load i64, ptr %i.u, align 8, !dbg !1185  ; 3 uses
  %.sroa.55.0 = select i1 %.not, i64 undef, i64 %i.v, !dbg !1185 ; 5 uses
  %.sroa.04.0 = select i1 %.not, ptr null, ptr %i.t, !dbg !1185
  %i.w = icmp eq i64 %.sroa.55.0, 0
  %or.cond.i = select i1 %.not, i1 true, i1 %i.w, !dbg !1186
  br i1 %or.cond.i, label %switch.lookup41, label %bb.b, !dbg !1186

bb.b:                                             ; preds = %bb.a
  %i.x = icmp samesign ult i64 %i.v, 16, !dbg !1187
  br i1 %i.x, label %.preheader.i.i.i.i.i.i, label %bb.c, !dbg !1187

bb.c:                                             ; preds = %bb.b
  %i.y = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef range(i64 1, -9223372036854775808) %i.v), !dbg !1188 ; 2 uses
  %i.z = extractvalue { i64, i64 } %i.y, 0, !dbg !1188
  %i.aa = extractvalue { i64, i64 } %i.y, 1, !dbg !1188
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !1189
  br i1 %i.ab, label %.loopexit9.i.i.i.i.i.i, label %.loopexit24, !dbg !1189

.loopexit9.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i, %bb.c
  %.sroa.5.0.i.i.i.i.i.i = phi i64 [ %i.aa, %bb.c ], [ %.sroa.04.011.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], !dbg !1190
  %i.ac = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i, %.sroa.55.0, !dbg !1191
  tail call void @llvm.assume(i1 %i.ac), !dbg !1192
  br label %switch.lookup41, !dbg !1193

.preheader.i.i.i.i.i.i:                           ; preds = %bb.b, %bb.d
  %.sroa.04.011.i.i.i.i.i.i = phi i64 [ %i.ag, %bb.d ], [ 0, %bb.b ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.04.011.i.i.i.i.i.i, !dbg !1194
  %i.ae = load i8, ptr %i.ad, align 1, !dbg !1194, !alias.scope !1118, !noundef !59
  %i.af = icmp eq i8 %i.ae, 0, !dbg !1194
  br i1 %i.af, label %.loopexit9.i.i.i.i.i.i, label %bb.d, !dbg !1194

bb.d:                                             ; preds = %.preheader.i.i.i.i.i.i
  %i.ag = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i, 1, !dbg !1195 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ag, %.sroa.55.0, !dbg !1196
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit24, label %.preheader.i.i.i.i.i.i, !dbg !1196

.loopexit24:                                      ; preds = %bb.d, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !1197
  %i.ai = load i32, ptr %i.ah, align 8, !dbg !1197, !range !138, !noundef !59 ; 2 uses
  %i.aj = trunc nuw i32 %i.ai to i1, !dbg !1198   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 100, !dbg !1198
  %i.al = load i32, ptr %i.ak, align 4, !dbg !1198 ; 3 uses
  %switch = icmp ult i32 %i.al, 6, !dbg !1198
  %i.am = select i1 %i.aj, i1 %switch, i1 false, !dbg !1198
  %.sroa.06.0 = select i1 %i.am, i32 %i.al, i32 -1, !dbg !1198 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1199
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !1199, !nonnull !59, !noundef !59 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1200
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !1200, !noundef !59 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1130), !dbg !1201
  %switch.tableidx = add i32 %.sroa.06.0, -2, !dbg !1202 ; 3 uses
  %i.ar = icmp ult i32 %switch.tableidx, 4, !dbg !1202
  br i1 %i.ar, label %switch.lookup, label %bb.e, !dbg !1202

switch.lookup:                                    ; preds = %.loopexit24
  %i.as = zext nneg i32 %switch.tableidx to i64, !dbg !1202
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtCsim2LhUzKY4R_19foundations_metrics10validation23sanitized_metric_family, i64 %i.as, !dbg !1202
  %switch.load = load i8, ptr %switch.gep, align 1, !dbg !1202
  %switch.ext = zext i8 %switch.load to i64, !dbg !1202
  %i.at = zext nneg i32 %switch.tableidx to i64, !dbg !1202
  %switch.gep39 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtCsim2LhUzKY4R_19foundations_metrics10validation23sanitized_metric_family.21, i64 %i.at, !dbg !1202
  %switch.load40 = load ptr, ptr %switch.gep39, align 8, !dbg !1202
  br label %bb.e, !dbg !1202

bb.e:                                             ; preds = %switch.lookup, %.loopexit24
  %.sroa.6.0.i = phi i64 [ undef, %.loopexit24 ], [ %switch.ext, %switch.lookup ], !dbg !1203
  %.sroa.0.0.i = phi ptr [ null, %.loopexit24 ], [ %switch.load40, %switch.lookup ], !dbg !1204
  %.idx.i = mul nuw nsw i64 %i.aq, 576, !dbg !1205
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx.i, !dbg !1205
  %i.av = icmp eq i64 %i.aq, 0, !dbg !1206
  br i1 %i.av, label %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation14rows_are_valid.exit, label %.lr.ph.i.i, !dbg !1207

.lr.ph.i.i:                                       ; preds = %bb.e, %_RNCNvNtCsim2LhUzKY4R_19foundations_metrics10validation14rows_are_valid0B5_.exit.i.i
  %i.aw = phi ptr [ %i.ax, %_RNCNvNtCsim2LhUzKY4R_19foundations_metrics10validation14rows_are_valid0B5_.exit.i.i ], [ %i.ao, %bb.e ] ; 12 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 576, !dbg !1208 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1131), !dbg !1209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !1210, !noalias !1132
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 560, !dbg !1211
  %i.az = load ptr, ptr %i.ay, align 8, !dbg !1211, !alias.scope !1134, !noalias !1135, !nonnull !59, !noundef !59
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 568, !dbg !1212
  %i.bb = load i64, ptr %i.ba, align 8, !dbg !1212, !alias.scope !1134, !noalias !1135, !noundef !59
  call void @_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation16find_label_issue(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.az, i64 noundef %i.bb, ptr noalias nofree noundef readonly captures(address, read_provenance) %.sroa.0.0.i, i64 %.sroa.6.0.i), !dbg !1210, !noalias !1132
  %i.bc = load i64, ptr %i.o, align 8, !dbg !1213, !range !126, !noalias !1132, !noundef !59
  %.not.i.i.i = icmp eq i64 %i.bc, -1, !dbg !1213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !1214, !noalias !1132
  br i1 %.not.i.i.i, label %bb.f, label %.loopexit, !dbg !1210

bb.f:                                             ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138), !dbg !1215
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 32, !dbg !1216
  %i.be = load i64, ptr %i.bd, align 8, !dbg !1216, !range !82, !alias.scope !1139, !noalias !1135, !noundef !59
  %.not.i.i.i.i = icmp eq i64 %i.be, 2, !dbg !1216
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.bg = load i64, ptr %i.bf, align 8, !range !82, !alias.scope !1139, !noalias !1135
  %.not4.i.i.i.i = icmp eq i64 %i.bg, 2
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %.not4.i.i.i.i, !dbg !1217
  br i1 %or.cond.i.i.i.i, label %bb.l, label %bb.g, !dbg !1217

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 120, !dbg !1218
  %.val.i.i.i.i = load ptr, ptr %i.bh, align 8, !dbg !1218, !alias.scope !1139, !noalias !1135, !nonnull !59, !noundef !59 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 128, !dbg !1218
  %.val6.i.i.i.i = load i64, ptr %i.bi, align 8, !dbg !1218, !alias.scope !1139, !noalias !1135, !noundef !59 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1140), !dbg !1219
  %i.bj = icmp eq i64 %.val6.i.i.i.i, 1, !dbg !1220
  br i1 %i.bj, label %bb.h, label %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation17exemplar_is_valid.exit.i.i.i.i, !dbg !1220

bb.h:                                             ; preds = %bb.g
  %i.bk = load i64, ptr %.val.i.i.i.i, align 8, !dbg !1221, !range !61, !alias.scope !1140, !noalias !1141, !noundef !59
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bk, -1, !dbg !1221
  br i1 %.not.i.i.i.i.i.i, label %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation17exemplar_is_valid.exit.i.i.i.i, label %bb.i, !dbg !1222

bb.i:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16, !dbg !1223
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !1223, !alias.scope !1140, !noalias !1141, !noundef !59
  %i.bn = icmp eq i64 %i.bm, 49, !dbg !1224
  br i1 %i.bn, label %bb.j, label %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation17exemplar_is_valid.exit.i.i.i.i, !dbg !1224

bb.j:                                             ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8, !dbg !1225
  %i.bp = load ptr, ptr %i.bo, align 8, !dbg !1225, !alias.scope !1140, !noalias !1141, !nonnull !59, !noundef !59
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(49) %i.bp, ptr noundef nonnull dereferenceable(49) @14, i64 49), !dbg !1226, !noalias !1142
  %i.bq = icmp eq i32 %bcmp.i.i.i.i.i.i, 0, !dbg !1226
  br i1 %i.bq, label %bb.k, label %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation17exemplar_is_valid.exit.i.i.i.i, !dbg !1227

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24, !dbg !1228
  %i.bs = load i64, ptr %i.br, align 8, !dbg !1229, !range !61, !alias.scope !1140, !noalias !1141, !noundef !59
  %.not10.i.i.i.i.i.i = icmp eq i64 %i.bs, -1, !dbg !1229
  br i1 %.not10.i.i.i.i.i.i, label %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation17exemplar_is_valid.exit.i.i.i.i, label %.loopexit, !dbg !1230

_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation17exemplar_is_valid.exit.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !1231, !noalias !1142
  call void @_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation16find_label_issue(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i.i.i.i, i64 noundef range(i64 0, 192153584101141163) %.val6.i.i.i.i, ptr noalias nofree noundef readonly captures(address, read_provenance) null, i64 undef), !dbg !1231, !noalias !1143
  %i.bt = load i64, ptr %i.n, align 8, !dbg !1232, !range !126, !noalias !1142, !noundef !59
  %spec.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 -2), !dbg !1233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !1234, !noalias !1142
  %i.bu = icmp eq i64 %spec.select.i.i.i.i.i, -2, !dbg !1235
  br i1 %i.bu, label %bb.l, label %.loopexit, !dbg !1236

bb.l:                                             ; preds = %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation17exemplar_is_valid.exit.i.i.i.i, %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aw, i64 232, !dbg !1237
  %i.bw = load i64, ptr %i.bv, align 8, !dbg !1237, !range !82, !alias.scope !1139, !noalias !1135, !noundef !59
  %.not5.i.i.i.i = icmp eq i64 %i.bw, 2, !dbg !1237
  br i1 %.not5.i.i.i.i, label %_RNCNvNtCsim2LhUzKY4R_19foundations_metrics10validation14rows_are_valid0B5_.exit.i.i, label %bb.m, !dbg !1238

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1145), !dbg !1239
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 360, !dbg !1240
  %i.by = load ptr, ptr %i.bx, align 8, !dbg !1240, !alias.scope !1147, !noalias !1135, !nonnull !59, !noundef !59 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 368, !dbg !1241
  %i.ca = load i64, ptr %i.bz, align 8, !dbg !1241, !alias.scope !1147, !noalias !1135, !noundef !59 ; 2 uses
  %.idx.i.i.i.i.i = mul nuw nsw i64 %i.ca, 112, !dbg !1242
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx.i.i.i.i.i, !dbg !1242
  %i.cc = icmp eq i64 %i.ca, 0, !dbg !1243
  br i1 %i.cc, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !1244

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.m, %_RNCNCNvNtCsim2LhUzKY4R_19foundations_metrics10validation19exemplars_are_valids_00B7_.exit.backedge.i.i.i.i.i.i
  %i.cd = phi ptr [ %i.ce, %_RNCNCNvNtCsim2LhUzKY4R_19foundations_metrics10validation19exemplars_are_valids_00B7_.exit.backedge.i.i.i.i.i.i ], [ %i.by, %bb.m ] ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 112, !dbg !1245 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1148), !dbg !1246
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 48, !dbg !1247
  %i.cg = load i64, ptr %i.cf, align 8, !dbg !1247, !range !82, !alias.scope !1148, !noalias !1150, !noundef !59
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cg, 2, !dbg !1247
  br i1 %.not.i.i.i.i.i.i.i, label %_RNCNCNvNtCsim2LhUzKY4R_19foundations_metrics10validation19exemplars_are_valids_00B7_.exit.backedge.i.i.i.i.i.i, label %bb.n, !dbg !1248

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 96, !dbg !1249
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.ch, align 8, !dbg !1249, !alias.scope !1148, !noalias !1150, !nonnull !59, !noundef !59 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 104, !dbg !1249
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.ci, align 8, !dbg !1249, !alias.scope !1148, !noalias !1150, !noundef !59 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1151), !dbg !1250
  %i.cj = icmp eq i64 %.val2.i.i.i.i.i.i.i, 1, !dbg !1251
  br i1 %i.cj, label %bb.o, label %.critedge.i.i.i.i.i.i.i.i.i, !dbg !1251

bb.o:                                             ; preds = %bb.n
  %i.ck = load i64, ptr %.val.i.i.i.i.i.i.i, align 8, !dbg !1252, !range !61, !alias.scope !1151, !noalias !1152, !noundef !59
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ck, -1, !dbg !1252
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i, label %bb.p, !dbg !1253

.critedge.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !1254, !noalias !1153
  call void @_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation16find_label_issue(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i.i.i.i.i.i.i, i64 noundef range(i64 0, 192153584101141163) %.val2.i.i.i.i.i.i.i, ptr noalias nofree noundef readonly captures(address, read_provenance) null, i64 undef), !dbg !1254, !noalias !1154
  %i.cl = load i64, ptr %i.m, align 8, !dbg !1255, !range !126, !noalias !1153, !noundef !59
  %spec.select.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.cl, i64 -2), !dbg !1256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !1257, !noalias !1153
  %i.cm = icmp eq i64 %spec.select.i.i.i.i.i.i.i.i, -2, !dbg !1258
  br i1 %i.cm, label %_RNCNCNvNtCsim2LhUzKY4R_19foundations_metrics10validation19exemplars_are_valids_00B7_.exit.backedge.i.i.i.i.i.i, label %.loopexit, !dbg !1246

_RNCNCNvNtCsim2LhUzKY4R_19foundations_metrics10validation19exemplars_are_valids_00B7_.exit.backedge.i.i.i.i.i.i: ; preds = %.critedge.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.cn = icmp eq ptr %i.ce, %i.cb, !dbg !1243
  br i1 %i.cn, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !1244

bb.p:                                             ; preds = %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 16, !dbg !1259
  %i.cp = load i64, ptr %i.co, align 8, !dbg !1259, !alias.scope !1151, !noalias !1152, !noundef !59
  %i.cq = icmp eq i64 %i.cp, 49, !dbg !1260
  br i1 %i.cq, label %bb.q, label %.critedge.i.i.i.i.i.i.i.i.i, !dbg !1260

bb.q:                                             ; preds = %bb.p
  %i.cr = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 8, !dbg !1261
  %i.cs = load ptr, ptr %i.cr, align 8, !dbg !1261, !alias.scope !1151, !noalias !1152, !nonnull !59, !noundef !59
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(49) %i.cs, ptr noundef nonnull dereferenceable(49) @14, i64 49), !dbg !1262, !noalias !1153
  %i.ct = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0, !dbg !1262
  br i1 %i.ct, label %bb.r, label %.critedge.i.i.i.i.i.i.i.i.i, !dbg !1263

bb.r:                                             ; preds = %bb.q
  %i.cu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 24, !dbg !1264
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !1265, !range !61, !alias.scope !1151, !noalias !1152, !noundef !59
  %.not10.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cv, -1, !dbg !1265
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i, label %.loopexit, !dbg !1266

.loopexit.i.i.i.i.i:                              ; preds = %_RNCNCNvNtCsim2LhUzKY4R_19foundations_metrics10validation19exemplars_are_valids_00B7_.exit.backedge.i.i.i.i.i.i, %bb.m
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aw, i64 528, !dbg !1267
  %i.cx = load ptr, ptr %i.cw, align 8, !dbg !1267, !alias.scope !1147, !noalias !1135, !nonnull !59, !noundef !59 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.aw, i64 536, !dbg !1268
  %i.cz = load i64, ptr %i.cy, align 8, !dbg !1268, !alias.scope !1147, !noalias !1135, !noundef !59 ; 2 uses
  %.idx = shl nuw nsw i64 %i.cz, 6, !dbg !1269
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx, !dbg !1269
  %i.db = icmp eq i64 %i.cz, 0, !dbg !1270
  br i1 %i.db, label %_RNCNvNtCsim2LhUzKY4R_19foundations_metrics10validation14rows_are_valid0B5_.exit.i.i, label %.lr.ph, !dbg !1271

bb.s:                                             ; preds = %_RNvYNvNtCsim2LhUzKY4R_19foundations_metrics10validation24native_exemplar_is_validINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTRNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model8ExemplarEE8call_mutB6_.exit.i.i.i.i.i.i
  %i.dc = icmp eq ptr %i.de, %i.da, !dbg !1270
  br i1 %i.dc, label %_RNCNvNtCsim2LhUzKY4R_19foundations_metrics10validation14rows_are_valid0B5_.exit.i.i, label %.lr.ph, !dbg !1271

.lr.ph:                                           ; preds = %.loopexit.i.i.i.i.i, %bb.s
  %i.dd = phi ptr [ %i.de, %bb.s ], [ %i.cx, %.loopexit.i.i.i.i.i ] ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 64, !dbg !1272 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1162), !dbg !1273
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1163), !dbg !1274
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 16, !dbg !1275
  %i.dg = load i64, ptr %i.df, align 8, !dbg !1275, !range !1166, !alias.scope !1167, !noalias !1168, !noundef !59
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.dg, 0, !dbg !1276
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit, label %bb.t, !dbg !1277

bb.t:                                             ; preds = %.lr.ph
end_hunk_0
begin_hunk_1_@_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation23sanitized_metric_family:bb.a
bb.w:                                             ; preds = %bb.v
  %i.do = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 8, !dbg !1285
  %i.dp = load ptr, ptr %i.do, align 8, !dbg !1285, !alias.scope !1169, !noalias !1170, !nonnull !59, !noundef !59
  %bcmp.i.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(49) %i.dp, ptr noundef nonnull dereferenceable(49) @14, i64 49), !dbg !1286, !noalias !1171
  %i.dq = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0, !dbg !1286
  br i1 %i.dq, label %bb.x, label %_RNvYNvNtCsim2LhUzKY4R_19foundations_metrics10validation24native_exemplar_is_validINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTRNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model8ExemplarEE8call_mutB6_.exit.i.i.i.i.i.i, !dbg !1287

bb.x:                                             ; preds = %bb.w
  %i.dr = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 24, !dbg !1288
  %i.ds = load i64, ptr %i.dr, align 8, !dbg !1289, !range !61, !alias.scope !1169, !noalias !1170, !noundef !59
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ds, -1, !dbg !1289
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_RNvYNvNtCsim2LhUzKY4R_19foundations_metrics10validation24native_exemplar_is_validINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTRNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model8ExemplarEE8call_mutB6_.exit.i.i.i.i.i.i, label %.loopexit, !dbg !1290

_RNvYNvNtCsim2LhUzKY4R_19foundations_metrics10validation24native_exemplar_is_validINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTRNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model8ExemplarEE8call_mutB6_.exit.i.i.i.i.i.i: ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !1291, !noalias !1171
  call void @_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation16find_label_issue(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 0, 192153584101141163) %.val1.i.i.i.i.i.i.i.i, ptr noalias nofree noundef readonly captures(address, read_provenance) null, i64 undef), !dbg !1291, !noalias !1172
  %i.dt = load i64, ptr %i.l, align 8, !dbg !1292, !range !126, !noalias !1171, !noundef !59
  %spec.select.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.dt, i64 -2), !dbg !1293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !1294, !noalias !1171
  %i.du = icmp eq i64 %spec.select.i.i.i.i.i.i.i.i.i, -2, !dbg !1295
  br i1 %i.du, label %bb.s, label %.loopexit, !dbg !1273

_RNCNvNtCsim2LhUzKY4R_19foundations_metrics10validation14rows_are_valid0B5_.exit.i.i: ; preds = %bb.s, %.loopexit.i.i.i.i.i, %bb.l
  %i.dv = icmp eq ptr %i.ax, %i.au, !dbg !1206
  br i1 %i.dv, label %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation14rows_are_valid.exit, label %.lr.ph.i.i, !dbg !1207

switch.lookup41:                                  ; preds = %bb.a, %.loopexit9.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %.sroa.04.0, ptr %i.k, align 8, !noalias !1173
  %i.dw = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.sroa.55.0, ptr %i.dw, align 8, !noalias !1173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !1296, !noalias !1173
  %i.dx = zext nneg i8 %2 to i64, !dbg !1297
  %switch.gep42 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtCsim2LhUzKY4R_19foundations_metrics10validation23sanitized_metric_family.22, i64 %i.dx, !dbg !1297
  %switch.load43 = load ptr, ptr %switch.gep42, align 8, !dbg !1297
  %i.dy = zext nneg i8 %2 to i64, !dbg !1297
  %switch.gep44 = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtCsim2LhUzKY4R_19foundations_metrics10validation23sanitized_metric_family.23, i64 %i.dy, !dbg !1297
  %switch.load45 = load i8, ptr %switch.gep44, align 1, !dbg !1297
  %switch.ext46 = zext i8 %switch.load45 to i64, !dbg !1297
  %i.dz = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !1298
  store ptr %switch.load43, ptr %i.j, align 8, !dbg !1298, !noalias !1173, !captures !84
  store i64 %switch.ext46, ptr %i.dz, align 8, !dbg !1298, !noalias !1173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !1299, !noalias !1173
  store ptr %i.j, ptr %i.i, align 8, !dbg !1299, !noalias !1173
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !1299
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsim2LhUzKY4R_19foundations_metrics, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !1299, !noalias !1173
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !1299
  store ptr %i.k, ptr %i.ea, align 8, !dbg !1299, !noalias !1173
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !1299
  store ptr @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionReENtNtB7_3fmt5Debug3fmtCsim2LhUzKY4R_19foundations_metrics, ptr %.sroa.46.0..sroa_idx.i, align 8, !dbg !1299, !noalias !1173
  %i.eb = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !1299
  store ptr @6, ptr %i.eb, align 8, !dbg !1299, !noalias !1173
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40, !dbg !1299
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsim2LhUzKY4R_19foundations_metrics, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !1299, !noalias !1173
  call void @_RNvNtCsim2LhUzKY4R_19foundations_metrics11diagnostics20report_collect_error(ptr noundef nonnull @20, ptr noundef nonnull %i.i), !dbg !1300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !1301, !noalias !1173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !1301, !noalias !1173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !1302
  store i64 -2, ptr %0, align 8, !dbg !1303
  br label %bb.ar, !dbg !1304

.loopexit:                                        ; preds = %bb.k, %.lr.ph.i.i, %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation17exemplar_is_valid.exit.i.i.i.i, %.critedge.i.i.i.i.i.i.i.i.i, %bb.r, %.lr.ph, %_RNvYNvNtCsim2LhUzKY4R_19foundations_metrics10validation24native_exemplar_is_validINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTRNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model8ExemplarEE8call_mutB6_.exit.i.i.i.i.i.i, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !1305
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1174), !dbg !1306
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175), !dbg !1306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !1307, !noalias !1176
  call void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q), !dbg !1308, !noalias !1174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !1309, !noalias !1176
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !1310 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !dbg !1310, !range !61, !alias.scope !1175, !noundef !59
  %.not6.i = icmp eq i64 %i.ed, -1, !dbg !1310
  br i1 %.not6.i, label %bb.z, label %bb.y, !dbg !1311

bb.y:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !1312, !noalias !1176
  invoke void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ec)
          to label %bb.ad unwind label %bb.ac, !dbg !1313, !noalias !1174

bb.z:                                             ; preds = %.loopexit
  store i64 -1, ptr %i.g, align 8, !dbg !1314, !noalias !1176
  br label %bb.aa, !dbg !1314

bb.aa:                                            ; preds = %bb.ad, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !1315, !noalias !1176
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model6MetricENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1)
          to label %bb.ag unwind label %bb.af, !dbg !1315, !noalias !1174

bb.ab:                                            ; preds = %bb.ae, %bb.ac
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.ae ], [ %i.ee, %bb.ac ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #11
          to label %common.resume unwind label %bb.ak, !dbg !1316, !noalias !1174

bb.ac:                                            ; preds = %bb.y
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ad:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !1317, !noalias !1176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !1318, !noalias !1176
  br label %bb.aa, !dbg !1319

bb.ae:                                            ; preds = %bb.ai, %bb.af
  %.pn.i = phi { ptr, i32 } [ %i.ei, %bb.ai ], [ %i.ef, %bb.af ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #11
          to label %bb.ab unwind label %bb.ak, !dbg !1316, !noalias !1174

bb.af:                                            ; preds = %bb.aa
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ag:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.53.i), !dbg !1320
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !1321 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !dbg !1321, !range !61, !alias.scope !1175, !noundef !59
  %.not7.i = icmp eq i64 %i.eh, -1, !dbg !1321
  br i1 %.not7.i, label %_RNvXs1q_NtNtCskerazqDcV1J_28foundations_metrics_registry5proto5modelNtB6_12MetricFamilyNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, label %bb.ah, !dbg !1322

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !1323, !noalias !1176
  invoke void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eg)
          to label %bb.aj unwind label %bb.ai, !dbg !1324, !noalias !1174

bb.ai:                                            ; preds = %bb.ah
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model6MetricEECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #11
          to label %bb.ae unwind label %bb.ak, !dbg !1316, !noalias !1174

bb.aj:                                            ; preds = %bb.ah
  %.sroa.01.0.copyload2.i = load i64, ptr %i.d, align 8, !dbg !1325, !noalias !1176
  %.sroa.53.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !1325
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx4.i, i64 16, i1 false), !dbg !1325, !noalias !1176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !1326, !noalias !1176
  br label %_RNvXs1q_NtNtCskerazqDcV1J_28foundations_metrics_registry5proto5modelNtB6_12MetricFamilyNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, !dbg !1327

bb.ak:                                            ; preds = %bb.ai, %bb.ae, %bb.ab
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10, !dbg !1328, !noalias !1174
  unreachable, !dbg !1328

common.resume:                                    ; preds = %bb.ap, %bb.ab
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i, %bb.ab ], [ %i.eu, %bb.ap ]
  resume { ptr, i32 } %common.resume.op, !dbg !1329

_RNvXs1q_NtNtCskerazqDcV1J_28foundations_metrics_registry5proto5modelNtB6_12MetricFamilyNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit: ; preds = %bb.ag, %bb.aj
  %.sroa.01.0.i = phi i64 [ %.sroa.01.0.copyload2.i, %bb.aj ], [ -1, %bb.ag ], !dbg !1330
  %.sroa.5.0.i = select i1 %i.aj, i32 %i.al, i32 undef, !dbg !1331
  %i.ek = getelementptr inbounds nuw i8, ptr %i.p, i64 24, !dbg !1328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !1328, !noalias !1175
  %i.el = getelementptr inbounds nuw i8, ptr %i.p, i64 48, !dbg !1328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.el, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !1328, !noalias !1175
  %i.em = getelementptr inbounds nuw i8, ptr %i.p, i64 96, !dbg !1328
  store i32 %i.ai, ptr %i.em, align 8, !dbg !1328, !alias.scope !1174
  %i.en = getelementptr inbounds nuw i8, ptr %i.p, i64 100, !dbg !1328
  store i32 %.sroa.5.0.i, ptr %i.en, align 4, !dbg !1328, !alias.scope !1174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !1328, !noalias !1175
  %i.eo = getelementptr inbounds nuw i8, ptr %i.p, i64 72, !dbg !1328
  store i64 %.sroa.01.0.i, ptr %i.eo, align 8, !dbg !1328, !alias.scope !1174
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 80, !dbg !1328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.i, i64 16, i1 false), !dbg !1328, !noalias !1175
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.53.i), !dbg !1316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !1316, !noalias !1176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !1316, !noalias !1176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !1316, !noalias !1176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %2, ptr %i.c, align 1, !noalias !1183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1332, !noalias !1183
  switch i32 %.sroa.06.0, label %bb.al [
    i32 5, label %bb.an
    i32 2, label %bb.am
    i32 4, label %bb.an
  ], !dbg !1333

bb.al:                                            ; preds = %_RNvXs1q_NtNtCskerazqDcV1J_28foundations_metrics_registry5proto5modelNtB6_12MetricFamilyNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
  store ptr null, ptr %i.b, align 8, !dbg !1334, !noalias !1183
  br label %bb.ao, !dbg !1334

bb.am:                                            ; preds = %_RNvXs1q_NtNtCskerazqDcV1J_28foundations_metrics_registry5proto5modelNtB6_12MetricFamilyNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
  store ptr @0, ptr %i.b, align 8, !dbg !1335, !noalias !1183
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1335
  store i64 8, ptr %i.ep, align 8, !dbg !1335, !noalias !1183
  br label %bb.ao, !dbg !1336

bb.an:                                            ; preds = %_RNvXs1q_NtNtCskerazqDcV1J_28foundations_metrics_registry5proto5modelNtB6_12MetricFamilyNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, %_RNvXs1q_NtNtCskerazqDcV1J_28foundations_metrics_registry5proto5modelNtB6_12MetricFamilyNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
  store ptr @1, ptr %i.b, align 8, !dbg !1337, !noalias !1183
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1337
  store i64 2, ptr %i.eq, align 8, !dbg !1337, !noalias !1183
  br label %bb.ao, !dbg !1338

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1339, !noalias !1183
  store ptr %i.b, ptr %i.a, align 8, !dbg !1339, !noalias !1183
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1339
  store ptr %i.c, ptr %i.er, align 8, !dbg !1339, !noalias !1183
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1339
  store ptr %i.t, ptr %i.es, align 8, !dbg !1339, !noalias !1183
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !1339
  store i64 %.sroa.55.0, ptr %i.et, align 8, !dbg !1339, !noalias !1183
  invoke void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model6MetricE10retain_mutNCNvNtCsim2LhUzKY4R_19foundations_metrics10validation13sanitize_rows0EB25_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.aq unwind label %bb.ap, !dbg !1340

_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation14rows_are_valid.exit: ; preds = %_RNCNvNtCsim2LhUzKY4R_19foundations_metrics10validation14rows_are_valid0B5_.exit.i.i, %bb.e
  store i64 -1, ptr %0, align 8, !dbg !1341
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1341
  store ptr %1, ptr %.sroa.411.0..sroa_idx, align 8, !dbg !1341
  br label %bb.ar, !dbg !1342

bb.ap:                                            ; preds = %bb.ao
  %i.eu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model12MetricFamilyECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(104) %i.p) #11
          to label %common.resume unwind label %bb.as, !dbg !1343

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1344, !noalias !1183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1345, !noalias !1183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1346
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.p, i64 104, i1 false), !dbg !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !1343
  br label %bb.ar, !dbg !1342

bb.ar:                                            ; preds = %switch.lookup41, %bb.aq, %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation14rows_are_valid.exit
  ret void, !dbg !1342

bb.as:                                            ; preds = %bb.ap
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10, !dbg !1348
  unreachable, !dbg !1348
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionReENtNtB7_3fmt5Debug3fmtCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !1349 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !1352, !noundef !59
  %.not = icmp eq ptr %i.b, null, !dbg !1352
  br i1 %.not, label %bb.c, label %bb.b, !dbg !1352

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1353
  store ptr %0, ptr %i.a, align 8, !dbg !1353
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22), !dbg !1354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1355
  br label %bb.d, !dbg !1355

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 4), !dbg !1352
  br label %bb.d, !dbg !1352

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in, !dbg !1356
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model6MetricENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model9LabelPairENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model6MetricENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model9LabelPairENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model6MetricE10retain_mutNCNvNtCsim2LhUzKY4R_19foundations_metrics10validation13sanitize_rows0EB25_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtReNtB6_5Debug3fmtCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsim2LhUzKY4R_19foundations_metrics11diagnostics20report_collect_error(ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model8ExemplarE6retainNCNvNtCsim2LhUzKY4R_19foundations_metrics10validation18sanitize_exemplars0EB22_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model6MetricENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsim2LhUzKY4R_19foundations_metrics(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRReNtB6_5Debug3fmtCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { cold noreturn nounwind }
attributes #11 = { cold }
attributes #12 = { noinline noreturn }

!llvm.module.flags = !{!49, !50, !51, !52, !53}
!llvm.ident = !{!54}
!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !55, producer: "clang LLVM (rustc version 1.100.0-nightly (787af2b8c 2026-08-25))", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = distinct !DISubprogram(name: "drop_glue<core::option::Option<alloc::string::String>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECsim2LhUzKY4R_19foundations_metrics", scope: !58, file: !56, line: 848, type: !60, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
!2 = distinct !DISubprogram(name: "drop_glue<alloc::vec::Vec<u8, alloc::alloc::Global>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsim2LhUzKY4R_19foundations_metrics", scope: !58, file: !56, line: 848, type: !60, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
!3 = distinct !DISubprogram(name: "drop_glue<alloc::string::String>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsim2LhUzKY4R_19foundations_metrics", scope: !58, file: !56, line: 848, type: !60, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
!4 = distinct !DISubprogram(name: "drop_glue<alloc::raw_vec::RawVec<u8, alloc::alloc::Global>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsim2LhUzKY4R_19foundations_metrics", scope: !58, file: !56, line: 848, type: !60, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
!5 = distinct !DISubprogram(name: "drop_glue<alloc::vec::Vec<foundations_metrics_registry::proto::model::Metric, alloc::alloc::Global>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model6MetricEECsim2LhUzKY4R_19foundations_metrics", scope: !58, file: !56, line: 848, type: !60, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
!6 = distinct !DISubprogram(name: "drop_glue<alloc::raw_vec::RawVec<foundations_metrics_registry::proto::model::Metric, alloc::alloc::Global>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model6MetricEECsim2LhUzKY4R_19foundations_metrics", scope: !58, file: !56, line: 848, type: !60, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
!7 = distinct !DISubprogram(name: "is_valid_name", linkageName: "_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation13is_valid_name", scope: !64, file: !62, line: 41, type: !60, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
!8 = distinct !DISubprogram(name: "memchr", linkageName: "_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchr", scope: !70, file: !68, line: 25, type: !60, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
!9 = distinct !DISubprogram(name: "slice_contains<u8>", linkageName: "_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCsim2LhUzKY4R_19foundations_metrics", scope: !73, file: !71, line: 396, type: !74, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
!10 = distinct !DILexicalBlock(scope: !9, file: !71, line: 401, column: 13)
!11 = distinct !DISubprogram(name: "contains<u8>", linkageName: "_RNvMNtCs3oUPovFnLWP_4core5sliceSh8containsCsim2LhUzKY4R_19foundations_metrics", scope: !76, file: !75, line: 2600, type: !60, scopeLine: 2600, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
!12 = distinct !DISubprogram(name: "is_contained_in", linkageName: "_RNvXs2_NtNtCs3oUPovFnLWP_4core3str7patterncNtB5_7Pattern15is_contained_in", scope: !79, file: !77, line: 585, type: !60, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
!13 = distinct !DISubprogram(name: "contains<char>", linkageName: "_RINvMNtCs3oUPovFnLWP_4core3stre8containscECsim2LhUzKY4R_19foundations_metrics", scope: !67, file: !65, line: 1383, type: !60, scopeLine: 1383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
!14 = distinct !DILexicalBlock(scope: !8, file: !68, line: 27, column: 5)
!15 = distinct !DILexicalBlock(scope: !14, file: !68, line: 29, column: 33)
!16 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCs3oUPovFnLWP_4core4hint16assert_unchecked", scope: !81, file: !80, line: 202, type: !60, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
!17 = distinct !DISubprogram(name: "memchr_naive", linkageName: "_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr12memchr_naive", scope: !70, file: !68, line: 37, type: !60, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
!18 = distinct !DILexicalBlock(scope: !17, file: !68, line: 38, column: 5)
!19 = distinct !DISubprogram(name: "find_exemplar_issue", linkageName: "_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation19find_exemplar_issue", scope: !64, file: !62, line: 274, type: !60, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
!20 = distinct !DISubprogram(name: "as_ref<alloc::string::String>", linkageName: "_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringE6as_refCsim2LhUzKY4R_19foundations_metrics", scope: !99, file: !97, line: 742, type: !60, scopeLine: 742, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
!21 = distinct !DISubprogram(name: "as_deref<alloc::string::String>", linkageName: "_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringE8as_derefCsim2LhUzKY4R_19foundations_metrics", scope: !99, file: !97, line: 1386, type: !60, scopeLine: 1386, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
!22 = distinct !DISubprogram(name: "map<foundations_metrics::validation::LabelIssue, foundations_metrics::validation::ExemplarIssue, fn(foundations_metrics::validation::LabelIssue) -> foundations_metrics::validation::ExemplarIssue>", linkageName: "_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCsim2LhUzKY4R_19foundations_metrics10validation10LabelIssueE3mapNtBK_13ExemplarIssueNcNtB1O_5Label0EBM_", scope: !99, file: !97, line: 1158, type: !60, scopeLine: 1158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
!23 = distinct !DISubprogram(name: "as_slice<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE8as_sliceCsim2LhUzKY4R_19foundations_metrics", scope: !114, file: !112, line: 1848, type: !60, scopeLine: 1848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
!24 = distinct !DISubprogram(name: "map<&alloc::string::String, &str, fn(&alloc::string::String) -> &str>", linkageName: "_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCs1xwejQucwHj_5alloc6string6StringE3mapReNvYBJ_NtNtNtB5_3ops5deref5Deref5derefECsim2LhUzKY4R_19foundations_metrics", scope: !99, file: !97, line: 1158, type: !60, scopeLine: 1158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
!25 = distinct !DILexicalBlock(scope: !24, file: !97, line: 1163, column: 13)
!26 = distinct !DISubprogram(name: "call_once<fn(&alloc::string::String) -> &str, (&alloc::string::String)>", linkageName: "_RNvYNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefINtNtBL_8function6FnOnceTRB5_EE9call_onceCsim2LhUzKY4R_19foundations_metrics", scope: !107, file: !104, line: 250, type: !60, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
!27 = distinct !DISubprogram(name: "deref", linkageName: "_RNvXsx_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref", scope: !110, file: !108, line: 2872, type: !60, scopeLine: 2872, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
!28 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String6as_str", scope: !111, file: !108, line: 1068, type: !60, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
!29 = distinct !DISubprogram(name: "eq<u8, u8>", linkageName: "_RNvXNtNtCs3oUPovFnLWP_4core5slice3cmpShNtNtB6_3cmp9PartialEq2eqCsim2LhUzKY4R_19foundations_metrics", scope: !117, file: !71, line: 19, type: !60, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
!30 = distinct !DILexicalBlock(scope: !29, file: !71, line: 20, column: 9)
!31 = distinct !DISubprogram(name: "eq<&str>", linkageName: "_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsim2LhUzKY4R_19foundations_metrics", scope: !125, file: !97, line: 2436, type: !60, scopeLine: 2436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
!32 = distinct !DILexicalBlock(scope: !31, file: !97, line: 2440, column: 13)
!33 = distinct !DISubprogram(name: "eq<str, str>", linkageName: "_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsReNtB7_9PartialEq2eqCsim2LhUzKY4R_19foundations_metrics", scope: !121, file: !118, line: 2398, type: !60, scopeLine: 2398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
!34 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq", scope: !124, file: !122, line: 29, type: !60, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
!35 = distinct !DISubprogram(name: "eq<[u8], [u8]>", linkageName: "_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRShNtB7_9PartialEq2eqCsim2LhUzKY4R_19foundations_metrics", scope: !121, file: !118, line: 2398, type: !60, scopeLine: 2398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
!36 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECsim2LhUzKY4R_19foundations_metrics", scope: !103, file: !100, line: 610, type: !60, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
!37 = distinct !DISubprogram(name: "as_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE6as_ptrCsim2LhUzKY4R_19foundations_metrics", scope: !114, file: !112, line: 1966, type: !60, scopeLine: 1966, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
!38 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE3ptrCsim2LhUzKY4R_19foundations_metrics", scope: !115, file: !100, line: 295, type: !60, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
!39 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB6_11RawVecInner3ptrhECsim2LhUzKY4R_19foundations_metrics", scope: !103, file: !100, line: 605, type: !60, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
!40 = distinct !DISubprogram(name: "equal_same_length<u8, u8>", linkageName: "_RNvXs3_NtNtCs3oUPovFnLWP_4core5slice3cmphINtB5_14SlicePartialEqhE17equal_same_lengthCsim2LhUzKY4R_19foundations_metrics", scope: !116, file: !71, line: 151, type: !60, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !59)
end_hunk_1
