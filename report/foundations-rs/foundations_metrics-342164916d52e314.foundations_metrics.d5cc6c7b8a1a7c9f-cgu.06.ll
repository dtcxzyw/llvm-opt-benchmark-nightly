Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations_metrics-342164916d52e314.foundations_metrics.d5cc6c7b8a1a7c9f-cgu.06?download=true
inline.NumInlined: 51
inline.NumDeleted: 35
begin_hunk_0_@_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation20report_exemplar_drop:bb.a
  store ptr %i.k, ptr %i.ai, align 8, !dbg !620
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !620
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtReNtB6_5Debug3fmtCsim2LhUzKY4R_19foundations_metrics, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !620
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 48, !dbg !620
  store ptr %i.i, ptr %i.aj, align 8, !dbg !620
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56, !dbg !620
  store ptr @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionReENtNtB7_3fmt5Debug3fmtCsim2LhUzKY4R_19foundations_metrics, ptr %.sroa.414.0..sroa_idx, align 8, !dbg !620
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 64, !dbg !620
  store ptr @6, ptr %i.ak, align 8, !dbg !620
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 72, !dbg !620
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsim2LhUzKY4R_19foundations_metrics, ptr %.sroa.418.0..sroa_idx, align 8, !dbg !620
  call void @_RNvNtCsim2LhUzKY4R_19foundations_metrics11diagnostics20report_collect_error(ptr noundef nonnull @15, ptr noundef nonnull %i.g), !dbg !621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !622
  br label %bb.c, !dbg !622

switch.lookup65:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !623
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8, !dbg !623
  %i.am = load ptr, ptr %i.al, align 8, !dbg !623, !nonnull !59, !noundef !59
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16, !dbg !623
  %i.ao = load i64, ptr %i.an, align 8, !dbg !623, !noundef !59
  store ptr %i.am, ptr %i.f, align 8, !dbg !623, !captures !84
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !623
  store i64 %i.ao, ptr %i.ap, align 8, !dbg !623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !624
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !625
  %i.ar = zext nneg i8 %0 to i64, !dbg !626
  %switch.gep66 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtCsim2LhUzKY4R_19foundations_metrics10validation23sanitized_metric_family.22, i64 %i.ar, !dbg !626
  %switch.load67 = load ptr, ptr %switch.gep66, align 8, !dbg !626
  %i.as = zext nneg i8 %0 to i64, !dbg !626
  %switch.gep68 = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtCsim2LhUzKY4R_19foundations_metrics10validation23sanitized_metric_family.23, i64 %i.as, !dbg !626
  %switch.load69 = load i8, ptr %switch.gep68, align 1, !dbg !626
  %switch.ext70 = zext i8 %switch.load69 to i64, !dbg !626
  store ptr %switch.load67, ptr %i.e, align 8, !dbg !625, !captures !84
  store i64 %switch.ext70, ptr %i.aq, align 8, !dbg !625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !627
  store ptr %i.e, ptr %i.d, align 8, !dbg !627
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !627
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsim2LhUzKY4R_19foundations_metrics, ptr %.sroa.422.0..sroa_idx, align 8, !dbg !627
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !627
  store ptr %i.j, ptr %i.at, align 8, !dbg !627
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !627
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsim2LhUzKY4R_19foundations_metrics, ptr %.sroa.426.0..sroa_idx, align 8, !dbg !627
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !627
  store ptr %i.k, ptr %i.au, align 8, !dbg !627
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40, !dbg !627
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtReNtB6_5Debug3fmtCsim2LhUzKY4R_19foundations_metrics, ptr %.sroa.430.0..sroa_idx, align 8, !dbg !627
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 48, !dbg !627
  store ptr %i.f, ptr %i.av, align 8, !dbg !627
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56, !dbg !627
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtReNtB6_5Debug3fmtCsim2LhUzKY4R_19foundations_metrics, ptr %.sroa.434.0..sroa_idx, align 8, !dbg !627
  call void @_RNvNtCsim2LhUzKY4R_19foundations_metrics11diagnostics20report_collect_error(ptr noundef nonnull @16, ptr noundef nonnull %i.d), !dbg !628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !629
  br label %bb.c, !dbg !629

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @17, ptr noundef nonnull inttoptr (i64 161 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #12, !dbg !630
  unreachable, !dbg !630

bb.c:                                             ; preds = %switch.lookup, %switch.lookup65, %switch.lookup59
  ret void, !dbg !631
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation22sanitize_exemplar_slot(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 7, 25) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, i8 noundef range(i8 0, 3) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !632 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = load i64, ptr %0, align 8, !dbg !699, !range !82, !noundef !59
  %.not = icmp eq i64 %i.c, 2, !dbg !699
  br i1 %.not, label %bb.k, label %bb.b, !dbg !700

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !701
  %i.e = load ptr, ptr %i.d, align 8, !dbg !701, !nonnull !59, !noundef !59 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !702
  %i.g = load i64, ptr %i.f, align 8, !dbg !702, !noundef !59 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !696), !dbg !703
  %i.h = icmp eq i64 %i.g, 1, !dbg !704
  br i1 %i.h, label %bb.c, label %.critedge.i, !dbg !704

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.e, align 8, !dbg !705, !range !61, !alias.scope !696, !noalias !697, !noundef !59
  %.not.i = icmp eq i64 %i.i, -1, !dbg !705
  br i1 %.not.i, label %.critedge.i, label %bb.d, !dbg !706

.critedge.i:                                      ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !707, !noalias !698
  call void @_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation16find_label_issue(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.e, i64 noundef range(i64 0, 192153584101141163) %i.g, ptr noalias nofree noundef readonly captures(address, read_provenance) null, i64 undef), !dbg !707, !noalias !697
  %i.j = load i64, ptr %i.a, align 8, !dbg !708, !range !126, !noalias !698, !noundef !59 ; 2 uses
  %.not11.i = icmp eq i64 %i.j, -1, !dbg !708
  br i1 %.not11.i, label %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation19find_exemplar_issue.exit.thread18, label %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation19find_exemplar_issue.exit, !dbg !709

_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation19find_exemplar_issue.exit.thread18: ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !710, !noalias !698
  br label %bb.k, !dbg !711

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !712
  %i.l = load i64, ptr %i.k, align 8, !dbg !712, !alias.scope !696, !noalias !697, !noundef !59
  %i.m = icmp eq i64 %i.l, 49, !dbg !713
  br i1 %i.m, label %bb.e, label %.critedge.i, !dbg !713

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !714
  %i.o = load ptr, ptr %i.n, align 8, !dbg !714, !alias.scope !696, !noalias !697, !nonnull !59, !noundef !59
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(49) %i.o, ptr noundef nonnull dereferenceable(49) @14, i64 49), !dbg !715, !noalias !698
  %i.p = icmp eq i32 %bcmp.i, 0, !dbg !715
  br i1 %i.p, label %bb.f, label %.critedge.i, !dbg !716

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !717
  %i.r = load i64, ptr %i.q, align 8, !dbg !718, !range !61, !alias.scope !696, !noalias !697, !noundef !59
  %.not10.i = icmp eq i64 %i.r, -1, !dbg !718
  br i1 %.not10.i, label %.critedge.i, label %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation19find_exemplar_issue.exit.thread, !dbg !719

_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation19find_exemplar_issue.exit.thread: ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !720
  %i.t = load ptr, ptr %i.s, align 8, !dbg !720, !alias.scope !696, !noalias !697, !nonnull !59, !noundef !59
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 40, !dbg !721
  %i.v = load i64, ptr %i.u, align 8, !dbg !721, !alias.scope !696, !noalias !697, !noundef !59
  br label %bb.g, !dbg !711

_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation19find_exemplar_issue.exit: ; preds = %.critedge.i
  %.sroa.8.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !722
  %.sroa.8.0.copyload8 = load ptr, ptr %.sroa.8.0..sroa_idx7, align 8, !dbg !722, !noalias !696
  %.sroa.9.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !722
  %.sroa.9.0.copyload10 = load i64, ptr %.sroa.9.0..sroa_idx9, align 8, !dbg !722, !noalias !696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !710, !noalias !698
  br label %bb.g, !dbg !711

bb.g:                                             ; preds = %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation19find_exemplar_issue.exit.thread, %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation19find_exemplar_issue.exit
  %.sroa.0.117 = phi i64 [ -1, %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation19find_exemplar_issue.exit.thread ], [ %i.j, %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation19find_exemplar_issue.exit ]
  %.sroa.8.116 = phi ptr [ %i.t, %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation19find_exemplar_issue.exit.thread ], [ %.sroa.8.0.copyload8, %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation19find_exemplar_issue.exit ]
  %.sroa.9.115 = phi i64 [ %i.v, %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation19find_exemplar_issue.exit.thread ], [ %.sroa.9.0.copyload10, %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation19find_exemplar_issue.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !723
  store i64 %.sroa.0.117, ptr %i.b, align 8, !dbg !723
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !723
  store ptr %.sroa.8.116, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !723
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !723
  store i64 %.sroa.9.115, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !723
  call void @_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation20report_exemplar_drop(i8 noundef %5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b), !dbg !724
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !725 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model9LabelPairENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model8ExemplarECsim2LhUzKY4R_19foundations_metrics.exit.i unwind label %bb.h, !dbg !726

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
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !1181 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !dbg !1181, !range !61, !noundef !59
  %.not = icmp eq i64 %i.r, -1, !dbg !1181        ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !1182
  %i.t = load ptr, ptr %i.s, align 8, !dbg !1182, !nonnull !59 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !1182
  %i.v = load i64, ptr %i.u, align 8, !dbg !1182  ; 3 uses
  %.sroa.55.0 = select i1 %.not, i64 undef, i64 %i.v, !dbg !1182 ; 5 uses
  %.sroa.04.0 = select i1 %.not, ptr null, ptr %i.t, !dbg !1182
  %i.w = icmp eq i64 %.sroa.55.0, 0
  %or.cond.i = select i1 %.not, i1 true, i1 %i.w, !dbg !1183
  br i1 %or.cond.i, label %switch.lookup41, label %bb.b, !dbg !1183

bb.b:                                             ; preds = %bb.a
  %i.x = icmp samesign ult i64 %i.v, 16, !dbg !1184
  br i1 %i.x, label %.preheader.i.i.i.i.i.i, label %bb.c, !dbg !1184

bb.c:                                             ; preds = %bb.b
  %i.y = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef range(i64 1, -9223372036854775808) %i.v), !dbg !1185 ; 2 uses
  %i.z = extractvalue { i64, i64 } %i.y, 0, !dbg !1185
  %i.aa = extractvalue { i64, i64 } %i.y, 1, !dbg !1185
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !1186
  br i1 %i.ab, label %.loopexit9.i.i.i.i.i.i, label %.loopexit24, !dbg !1186

.loopexit9.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i, %bb.c
  %.sroa.5.0.i.i.i.i.i.i = phi i64 [ %i.aa, %bb.c ], [ %.sroa.04.011.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], !dbg !1187
  %i.ac = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i, %.sroa.55.0, !dbg !1188
  tail call void @llvm.assume(i1 %i.ac), !dbg !1189
  br label %switch.lookup41, !dbg !1190

.preheader.i.i.i.i.i.i:                           ; preds = %bb.b, %bb.d
  %.sroa.04.011.i.i.i.i.i.i = phi i64 [ %i.ag, %bb.d ], [ 0, %bb.b ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.04.011.i.i.i.i.i.i, !dbg !1191
  %i.ae = load i8, ptr %i.ad, align 1, !dbg !1191, !alias.scope !1118, !noundef !59
  %i.af = icmp eq i8 %i.ae, 0, !dbg !1191
  br i1 %i.af, label %.loopexit9.i.i.i.i.i.i, label %bb.d, !dbg !1191

bb.d:                                             ; preds = %.preheader.i.i.i.i.i.i
  %i.ag = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i, 1, !dbg !1192 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ag, %.sroa.55.0, !dbg !1193
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit24, label %.preheader.i.i.i.i.i.i, !dbg !1193

.loopexit24:                                      ; preds = %bb.d, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !1194
  %i.ai = load i32, ptr %i.ah, align 8, !dbg !1194, !range !138, !noundef !59 ; 2 uses
  %i.aj = trunc nuw i32 %i.ai to i1, !dbg !1195   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 100, !dbg !1195
  %i.al = load i32, ptr %i.ak, align 4, !dbg !1195 ; 3 uses
  %switch = icmp ult i32 %i.al, 6, !dbg !1195
  %i.am = select i1 %i.aj, i1 %switch, i1 false, !dbg !1195
  %.sroa.06.0 = select i1 %i.am, i32 %i.al, i32 -1, !dbg !1195 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1196
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !1196, !nonnull !59, !noundef !59 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1197
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !1197, !noundef !59 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1130), !dbg !1198
  %switch.tableidx = add i32 %.sroa.06.0, -2, !dbg !1199 ; 3 uses
  %i.ar = icmp ult i32 %switch.tableidx, 4, !dbg !1199
  br i1 %i.ar, label %switch.lookup, label %bb.e, !dbg !1199

switch.lookup:                                    ; preds = %.loopexit24
  %i.as = zext nneg i32 %switch.tableidx to i64, !dbg !1199
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtCsim2LhUzKY4R_19foundations_metrics10validation23sanitized_metric_family, i64 %i.as, !dbg !1199
  %switch.load = load i8, ptr %switch.gep, align 1, !dbg !1199
  %switch.ext = zext i8 %switch.load to i64, !dbg !1199
  %i.at = zext nneg i32 %switch.tableidx to i64, !dbg !1199
  %switch.gep39 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtCsim2LhUzKY4R_19foundations_metrics10validation23sanitized_metric_family.21, i64 %i.at, !dbg !1199
  %switch.load40 = load ptr, ptr %switch.gep39, align 8, !dbg !1199
  br label %bb.e, !dbg !1199

bb.e:                                             ; preds = %switch.lookup, %.loopexit24
  %.sroa.6.0.i = phi i64 [ undef, %.loopexit24 ], [ %switch.ext, %switch.lookup ], !dbg !1200
  %.sroa.0.0.i = phi ptr [ null, %.loopexit24 ], [ %switch.load40, %switch.lookup ], !dbg !1201
  %.idx.i = mul nuw nsw i64 %i.aq, 576, !dbg !1202
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx.i, !dbg !1202
  %i.av = icmp eq i64 %i.aq, 0, !dbg !1203
  br i1 %i.av, label %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation14rows_are_valid.exit, label %.lr.ph.i.i, !dbg !1204

.lr.ph.i.i:                                       ; preds = %bb.e, %_RNCNvNtCsim2LhUzKY4R_19foundations_metrics10validation14rows_are_valid0B5_.exit.i.i
  %i.aw = phi ptr [ %i.ax, %_RNCNvNtCsim2LhUzKY4R_19foundations_metrics10validation14rows_are_valid0B5_.exit.i.i ], [ %i.ao, %bb.e ] ; 12 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 576, !dbg !1205 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1131), !dbg !1206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !1207, !noalias !1132
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 560, !dbg !1208
  %i.az = load ptr, ptr %i.ay, align 8, !dbg !1208, !alias.scope !1134, !noalias !1135, !nonnull !59, !noundef !59
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 568, !dbg !1209
  %i.bb = load i64, ptr %i.ba, align 8, !dbg !1209, !alias.scope !1134, !noalias !1135, !noundef !59
  call void @_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation16find_label_issue(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.az, i64 noundef %i.bb, ptr noalias nofree noundef readonly captures(address, read_provenance) %.sroa.0.0.i, i64 %.sroa.6.0.i), !dbg !1207, !noalias !1132
  %i.bc = load i64, ptr %i.o, align 8, !dbg !1210, !range !126, !noalias !1132, !noundef !59
  %.not.i.i.i = icmp eq i64 %i.bc, -1, !dbg !1210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !1211, !noalias !1132
  br i1 %.not.i.i.i, label %bb.f, label %.loopexit, !dbg !1207

bb.f:                                             ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138), !dbg !1212
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 32, !dbg !1213
  %i.be = load i64, ptr %i.bd, align 8, !dbg !1213, !range !82, !alias.scope !1139, !noalias !1135, !noundef !59
  %.not.i.i.i.i = icmp eq i64 %i.be, 2, !dbg !1213
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.bg = load i64, ptr %i.bf, align 8, !range !82, !alias.scope !1139, !noalias !1135
  %.not4.i.i.i.i = icmp eq i64 %i.bg, 2
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %.not4.i.i.i.i, !dbg !1214
  br i1 %or.cond.i.i.i.i, label %bb.l, label %bb.g, !dbg !1214

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 120, !dbg !1215
  %.val.i.i.i.i = load ptr, ptr %i.bh, align 8, !dbg !1215, !alias.scope !1139, !noalias !1135, !nonnull !59, !noundef !59 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 128, !dbg !1215
  %.val6.i.i.i.i = load i64, ptr %i.bi, align 8, !dbg !1215, !alias.scope !1139, !noalias !1135, !noundef !59 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1140), !dbg !1216
  %i.bj = icmp eq i64 %.val6.i.i.i.i, 1, !dbg !1217
  br i1 %i.bj, label %bb.h, label %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation17exemplar_is_valid.exit.i.i.i.i, !dbg !1217

bb.h:                                             ; preds = %bb.g
  %i.bk = load i64, ptr %.val.i.i.i.i, align 8, !dbg !1218, !range !61, !alias.scope !1140, !noalias !1141, !noundef !59
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bk, -1, !dbg !1218
  br i1 %.not.i.i.i.i.i.i, label %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation17exemplar_is_valid.exit.i.i.i.i, label %bb.i, !dbg !1219

bb.i:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16, !dbg !1220
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !1220, !alias.scope !1140, !noalias !1141, !noundef !59
  %i.bn = icmp eq i64 %i.bm, 49, !dbg !1221
  br i1 %i.bn, label %bb.j, label %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation17exemplar_is_valid.exit.i.i.i.i, !dbg !1221

bb.j:                                             ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8, !dbg !1222
  %i.bp = load ptr, ptr %i.bo, align 8, !dbg !1222, !alias.scope !1140, !noalias !1141, !nonnull !59, !noundef !59
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(49) %i.bp, ptr noundef nonnull dereferenceable(49) @14, i64 49), !dbg !1223, !noalias !1142
  %i.bq = icmp eq i32 %bcmp.i.i.i.i.i.i, 0, !dbg !1223
  br i1 %i.bq, label %bb.k, label %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation17exemplar_is_valid.exit.i.i.i.i, !dbg !1224

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24, !dbg !1225
  %i.bs = load i64, ptr %i.br, align 8, !dbg !1226, !range !61, !alias.scope !1140, !noalias !1141, !noundef !59
  %.not10.i.i.i.i.i.i = icmp eq i64 %i.bs, -1, !dbg !1226
  br i1 %.not10.i.i.i.i.i.i, label %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation17exemplar_is_valid.exit.i.i.i.i, label %.loopexit, !dbg !1227

_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation17exemplar_is_valid.exit.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !1228, !noalias !1142
  call void @_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation16find_label_issue(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i.i.i.i, i64 noundef range(i64 0, 192153584101141163) %.val6.i.i.i.i, ptr noalias nofree noundef readonly captures(address, read_provenance) null, i64 undef), !dbg !1228, !noalias !1141
  %i.bt = load i64, ptr %i.n, align 8, !dbg !1229, !range !126, !noalias !1142, !noundef !59
  %spec.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 -2), !dbg !1230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !1231, !noalias !1142
  %i.bu = icmp eq i64 %spec.select.i.i.i.i.i, -2, !dbg !1232
  br i1 %i.bu, label %bb.l, label %.loopexit, !dbg !1233

bb.l:                                             ; preds = %_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation17exemplar_is_valid.exit.i.i.i.i, %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aw, i64 232, !dbg !1234
  %i.bw = load i64, ptr %i.bv, align 8, !dbg !1234, !range !82, !alias.scope !1139, !noalias !1135, !noundef !59
  %.not5.i.i.i.i = icmp eq i64 %i.bw, 2, !dbg !1234
  br i1 %.not5.i.i.i.i, label %_RNCNvNtCsim2LhUzKY4R_19foundations_metrics10validation14rows_are_valid0B5_.exit.i.i, label %bb.m, !dbg !1235

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1144), !dbg !1236
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 360, !dbg !1237
  %i.by = load ptr, ptr %i.bx, align 8, !dbg !1237, !alias.scope !1146, !noalias !1135, !nonnull !59, !noundef !59 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 368, !dbg !1238
  %i.ca = load i64, ptr %i.bz, align 8, !dbg !1238, !alias.scope !1146, !noalias !1135, !noundef !59 ; 2 uses
  %.idx.i.i.i.i.i = mul nuw nsw i64 %i.ca, 112, !dbg !1239
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx.i.i.i.i.i, !dbg !1239
  %i.cc = icmp eq i64 %i.ca, 0, !dbg !1240
  br i1 %i.cc, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !1241

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.m, %_RNCNCNvNtCsim2LhUzKY4R_19foundations_metrics10validation19exemplars_are_valids_00B7_.exit.backedge.i.i.i.i.i.i
  %i.cd = phi ptr [ %i.ce, %_RNCNCNvNtCsim2LhUzKY4R_19foundations_metrics10validation19exemplars_are_valids_00B7_.exit.backedge.i.i.i.i.i.i ], [ %i.by, %bb.m ] ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 112, !dbg !1242 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1147), !dbg !1243
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 48, !dbg !1244
  %i.cg = load i64, ptr %i.cf, align 8, !dbg !1244, !range !82, !alias.scope !1147, !noalias !1149, !noundef !59
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cg, 2, !dbg !1244
  br i1 %.not.i.i.i.i.i.i.i, label %_RNCNCNvNtCsim2LhUzKY4R_19foundations_metrics10validation19exemplars_are_valids_00B7_.exit.backedge.i.i.i.i.i.i, label %bb.n, !dbg !1245

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 96, !dbg !1246
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.ch, align 8, !dbg !1246, !alias.scope !1147, !noalias !1149, !nonnull !59, !noundef !59 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 104, !dbg !1246
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.ci, align 8, !dbg !1246, !alias.scope !1147, !noalias !1149, !noundef !59 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150), !dbg !1247
  %i.cj = icmp eq i64 %.val2.i.i.i.i.i.i.i, 1, !dbg !1248
  br i1 %i.cj, label %bb.o, label %.critedge.i.i.i.i.i.i.i.i.i, !dbg !1248

bb.o:                                             ; preds = %bb.n
  %i.ck = load i64, ptr %.val.i.i.i.i.i.i.i, align 8, !dbg !1249, !range !61, !alias.scope !1150, !noalias !1151, !noundef !59
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ck, -1, !dbg !1249
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i, label %bb.p, !dbg !1250

.critedge.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !1251, !noalias !1152
  call void @_RNvNtCsim2LhUzKY4R_19foundations_metrics10validation16find_label_issue(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i.i.i.i.i.i.i, i64 noundef range(i64 0, 192153584101141163) %.val2.i.i.i.i.i.i.i, ptr noalias nofree noundef readonly captures(address, read_provenance) null, i64 undef), !dbg !1251, !noalias !1151
  %i.cl = load i64, ptr %i.m, align 8, !dbg !1252, !range !126, !noalias !1152, !noundef !59
  %spec.select.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.cl, i64 -2), !dbg !1253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !1254, !noalias !1152
  %i.cm = icmp eq i64 %spec.select.i.i.i.i.i.i.i.i, -2, !dbg !1255
  br i1 %i.cm, label %_RNCNCNvNtCsim2LhUzKY4R_19foundations_metrics10validation19exemplars_are_valids_00B7_.exit.backedge.i.i.i.i.i.i, label %.loopexit, !dbg !1243

_RNCNCNvNtCsim2LhUzKY4R_19foundations_metrics10validation19exemplars_are_valids_00B7_.exit.backedge.i.i.i.i.i.i: ; preds = %.critedge.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.cn = icmp eq ptr %i.ce, %i.cb, !dbg !1240
  br i1 %i.cn, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !1241

bb.p:                                             ; preds = %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 16, !dbg !1256
  %i.cp = load i64, ptr %i.co, align 8, !dbg !1256, !alias.scope !1150, !noalias !1151, !noundef !59
  %i.cq = icmp eq i64 %i.cp, 49, !dbg !1257
  br i1 %i.cq, label %bb.q, label %.critedge.i.i.i.i.i.i.i.i.i, !dbg !1257

bb.q:                                             ; preds = %bb.p
  %i.cr = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 8, !dbg !1258
  %i.cs = load ptr, ptr %i.cr, align 8, !dbg !1258, !alias.scope !1150, !noalias !1151, !nonnull !59, !noundef !59
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(49) %i.cs, ptr noundef nonnull dereferenceable(49) @14, i64 49), !dbg !1259, !noalias !1152
  %i.ct = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0, !dbg !1259
end_hunk_0
