Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.05?download=true
inline.NumInlined: 3215
inline.NumDeleted: 1068
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers18diff_deadline_implINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB14_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB20_B20_INtNtB4_7compact7CompactB20_B20_IB2A_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter:bb.a
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers13diff_deadlineINtNtB6_4text12TextDiffSideeEBZ_INtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit.sink.split.i.i, %bb.f, %bb.e, %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(32) %i.a) #26
          to label %.body unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  invoke fastcc void @_RNvMNtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB2_7ReplaceINtNtB4_8patience8PatienceINtNtB6_4text12TextDiffSideeEB1q_INtNtB4_7compact7CompactB1q_B1q_IBN_NtNtB4_7capture7CaptureEEEE8flush_eqCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(208) %0)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.e
  store i64 0, ptr %0, align 8, !alias.scope !1002
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.h, align 8, !alias.scope !1002
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.k = load i8, ptr %i.j, align 8, !range !19, !alias.scope !1003, !noundef !5
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1003, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1003, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !1003, !noundef !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !1003, !noundef !5 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !1003, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !1003, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !1003, !noundef !5 ; 2 uses
  %i.aa = load i64, ptr %i.i, align 8, !alias.scope !1003 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ac = load i32, ptr %i.ab, align 8, !range !20, !alias.scope !1003, !noundef !5 ; 2 uses
  br i1 %i.l, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers13diff_deadlineINtNtB6_4text12TextDiffSideeEBZ_INtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit.sink.split.i.i, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.ad = invoke fastcc noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB6_4text12TextDiffSideeEB1j_INtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(160) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p, i64 noundef %i.r, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v, i64 noundef %i.x, i64 noundef %i.z, i64 %i.aa, i32 noundef range(i32 -1, 1000000000) %i.ac)
          to label %.noexc19 unwind label %bb.d

.noexc19:                                         ; preds = %bb.f
  br i1 %i.ad, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6finishCsEhZmuQNqkz_11ruff_linter.exit, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers13diff_deadlineINtNtB6_4text12TextDiffSideeEBZ_INtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit.sink.split.i.i

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers13diff_deadlineINtNtB6_4text12TextDiffSideeEBZ_INtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit.sink.split.i.i: ; preds = %.noexc19, %.noexc
  invoke fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers18diff_deadline_implINtNtB6_4text12TextDiffSideeEB14_INtNtB4_7compact7CompactB14_B14_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(160) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p, i64 noundef %i.r, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v, i64 noundef %i.x, i64 noundef %i.z, i64 %i.aa, i32 noundef %i.ac)
          to label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6finishCsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.d

_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6finishCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.noexc19, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers13diff_deadlineINtNtB6_4text12TextDiffSideeEBZ_INtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit.sink.split.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.g

bb.g:                                             ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6finishCsEhZmuQNqkz_11ruff_linter.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6finishCsEhZmuQNqkz_11ruff_linter.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsEhZmuQNqkz_11ruff_linter.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECsEhZmuQNqkz_11ruff_linter.exit24 unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECsEhZmuQNqkz_11ruff_linter.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %.body, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.i ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECsEhZmuQNqkz_11ruff_linter.exit24: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECsEhZmuQNqkz_11ruff_linter.exit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.k:                                             ; preds = %bb.d, %.body
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactIBT_mEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = tail call fastcc noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit, %bb.a
  %i.i = add i64 %i.h, %2                         ; 3 uses
  %i.j = add i64 %i.h, %5                         ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  %i.k = icmp uge i64 %i.i, %3
  %i.l = icmp uge i64 %i.j, %6
  %or.cond.i53 = or i1 %i.k, %i.l
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  br i1 %or.cond.i53, label %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge, label %.lr.ph.i.i.i.i

._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge: ; preds = %bb.b
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert886 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.pre887 = load i64, ptr %.phi.trans.insert886, align 8
  %.phi.trans.insert888 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre889 = load ptr, ptr %.phi.trans.insert888, align 8
  %.phi.trans.insert890 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre891 = load i64, ptr %.phi.trans.insert890, align 8
  %.phi.trans.insert892 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre893 = load i64, ptr %.phi.trans.insert892, align 8
  %.phi.trans.insert894 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre895 = load ptr, ptr %.phi.trans.insert894, align 8
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = sub nuw i64 %3, %i.i                     ; 2 uses
  %i.s = sub nuw i64 %6, %i.j                     ; 2 uses
  %i.t = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !1224 ; 4 uses
  %i.u = load i64, ptr %i.m, align 8, !alias.scope !1224 ; 5 uses
  %i.v = load ptr, ptr %i.n, align 8, !alias.scope !1224, !nonnull !5 ; 4 uses
  %i.w = load i64, ptr %i.o, align 8, !alias.scope !1223 ; 4 uses
  %i.x = load i64, ptr %i.p, align 8, !alias.scope !1223 ; 5 uses
  %i.y = load ptr, ptr %i.q, align 8, !alias.scope !1223, !nonnull !5 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %i.z = phi i64 [ %3, %.lr.ph.i.i.i.i ], [ %i.ac, %bb.g ]
  %.sroa.01.033.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ak, %bb.g ] ; 3 uses
  %i.aa = phi i64 [ %6, %.lr.ph.i.i.i.i ], [ %i.ab, %bb.g ]
  %i.ab = add i64 %i.aa, -1                       ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.01.033.i.i.i.i, %i.r
  br i1 %exitcond.not.i.i.i.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = add i64 %i.z, -1                        ; 2 uses
  %i.ad = sub i64 %i.ab, %i.t                     ; 3 uses
  %i.ae = icmp ult i64 %i.ad, %i.u
  br i1 %i.ae, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #28, !noalias !1225
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i: ; preds = %bb.d
  %i.af = sub i64 %i.ac, %i.w                     ; 3 uses
  %i.ag = icmp ult i64 %i.af, %i.x
  br i1 %i.ag, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.af, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #28, !noalias !1226
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ad
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.af
  %.val.i.i.i.i.i = load i64, ptr %i.ah, align 8, !noalias !1227, !noundef !5
  %.val10.i.i.i.i.i = load i64, ptr %i.ai, align 8, !noalias !1227, !noundef !5
  %i.aj = icmp eq i64 %.val.i.i.i.i.i, %.val10.i.i.i.i.i
  br i1 %i.aj, label %bb.g, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit

bb.g:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i
  %i.ak = add nuw i64 %.sroa.01.033.i.i.i.i, 1    ; 2 uses
  %exitcond65.not.i.i.i.i = icmp eq i64 %i.ak, %i.s
  br i1 %exitcond65.not.i.i.i.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.c

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.c, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i, %bb.g, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge
  %i.al = phi ptr [ %.pre895, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.y, %bb.g ], [ %i.y, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.y, %bb.c ] ; 10 uses
  %i.am = phi i64 [ %.pre893, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.x, %bb.g ], [ %i.x, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.x, %bb.c ] ; 23 uses
  %i.an = phi i64 [ %.pre891, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.w, %bb.g ], [ %i.w, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.w, %bb.c ] ; 5 uses
  %i.ao = phi ptr [ %.pre889, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.v, %bb.g ], [ %i.v, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.v, %bb.c ] ; 11 uses
  %i.ap = phi i64 [ %.pre887, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.u, %bb.g ], [ %i.u, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.u, %bb.c ] ; 27 uses
  %i.aq = phi i64 [ %.pre, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.t, %bb.g ], [ %i.t, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.t, %bb.c ] ; 8 uses
  %.sroa.0.0.i54 = phi i64 [ 0, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.r, %bb.c ], [ %.sroa.01.033.i.i.i.i, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.s, %bb.g ] ; 4 uses
  %i.ar = sub i64 %3, %.sroa.0.0.i54              ; 9 uses
  %i.as = sub i64 %6, %.sroa.0.0.i54              ; 9 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  %i.az = load ptr, ptr %0, align 8, !alias.scope !1230, !nonnull !5, !align !6, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1232), !noalias !1230
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !1233, !noalias !1230, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 120 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 136 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !1234, !noalias !1235, !noundef !5 ; 3 uses
  %i.be = load i64, ptr %i.bb, align 8, !range !10, !alias.scope !1234, !noalias !1235, !noundef !5
  %i.bf = icmp eq i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.i, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb), !noalias !1236
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.h, %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 128
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !1234, !noalias !1235, !nonnull !5, !noundef !5
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %i.bh, i64 %i.bd ; 4 uses
  store i64 0, ptr %i.bi, align 8, !noalias !1235
  %.sroa.4243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 %2, ptr %.sroa.4243.0..sroa_idx, align 8, !noalias !1235
  %.sroa.5244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i64 %5, ptr %.sroa.5244.0..sroa_idx, align 8, !noalias !1235
  %.sroa.6245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store i64 %i.h, ptr %.sroa.6245.0..sroa_idx, align 8, !noalias !1235
  %i.bj = add i64 %i.bd, 1
  store i64 %i.bj, ptr %i.bc, align 8, !alias.scope !1234, !noalias !1235
  br label %bb.b

bb.j:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.0197.0 = phi i64 [ %i.j, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.0197.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit ] ; 36 uses
  %.sroa.0.0 = phi i64 [ %i.i, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit ] ; 33 uses
  %i.bk = icmp ult i64 %.sroa.0.0, %i.ar          ; 2 uses
  %i.bl = icmp ult i64 %.sroa.0197.0, %i.as       ; 3 uses
  %or.cond314 = select i1 %i.bk, i1 %i.bl, i1 false
  br i1 %or.cond314, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit, %bb.j
  br i1 %i.bk, label %bb.ay, label %bb.az

bb.l:                                             ; preds = %bb.j
  %i.bm = sub nuw i64 %i.ar, %.sroa.0.0           ; 5 uses
  %i.bn = sub nuw i64 %i.as, %.sroa.0197.0        ; 6 uses
  %i.bo = icmp ult i64 %i.bm, 97
  %i.bp = icmp ult i64 %i.bn, 97
  %or.cond.i = or i1 %i.bp, %i.bo
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i55 = call noundef i64 @llvm.umin.i64(i64 %i.bn, i64 %i.bm) ; 2 uses
  %.sroa.0.0.i56 = call noundef i64 @llvm.umax.i64(i64 %i.bn, i64 %i.bm)
  %i.bq = shl nuw i64 %.sroa.0.0.i55, 1
  %i.br = icmp slt i64 %.sroa.0.0.i55, 0
  br i1 %i.br, label %bb.n, label %bb.o, !prof !13

bb.n:                                             ; preds = %bb.m
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.052.0.i = phi i64 [ -1, %bb.n ], [ %i.bq, %bb.m ]
  %i.bs = icmp ult i64 %.sroa.0.0.i56, %.sroa.052.0.i
  br i1 %i.bs, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not.i = icmp ule i64 %i.bn, %i.bm
  %i.bt = icmp ule i64 %i.bm, %i.bn
  %.not.i.fr = freeze i1 %.not.i
  %i.bu = sub i64 %.sroa.0197.0, %i.aq            ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.ap
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bu
  br label %bb.q

.loopexit:                                        ; preds = %.outer, %bb.ae, %bb.t, %bb.ad
  %.sroa.525.2.i.ph.lcssa487 = phi i64 [ %.sroa.525.2.i.ph641, %bb.t ], [ %.sroa.525.2.i.ph641, %bb.ae ], [ %.sroa.525.2.i.ph641, %bb.ad ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa480 = phi i64 [ %.sroa.023.1.i.ph642, %bb.t ], [ %.sroa.023.1.i.ph642, %bb.ae ], [ %.sroa.023.1.i.ph642, %bb.ad ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa473 = phi i64 [ %.sroa.9.2.i.ph643, %bb.t ], [ %.sroa.9.2.i.ph643, %bb.ae ], [ %.sroa.9.2.i.ph643, %bb.ad ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa466 = phi i64 [ %.sroa.12.2.i.ph644, %bb.t ], [ %.sroa.12.2.i.ph644, %bb.ae ], [ %.sroa.12.2.i.ph644, %bb.ad ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %.not.i59 = icmp ugt i64 %spec.select315, 4
  %or.cond320 = or i1 %i.bx, %.not.i59
  br i1 %or.cond320, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit
  %.sroa.12.0.i649 = phi i64 [ undef, %bb.p ], [ %.sroa.12.2.i.ph.lcssa466, %.loopexit ]
  %.sroa.9.0.i648 = phi i64 [ undef, %bb.p ], [ %.sroa.9.2.i.ph.lcssa473, %.loopexit ]
  %.sroa.023.0.i647 = phi i64 [ 0, %bb.p ], [ %.sroa.023.1.i.ph.lcssa480, %.loopexit ]
  %.sroa.525.0.i646 = phi i64 [ undef, %bb.p ], [ %.sroa.525.2.i.ph.lcssa487, %.loopexit ]
  %.sroa.0230.0645 = phi i64 [ 0, %bb.p ], [ %spec.select315, %.loopexit ] ; 11 uses
  %i.bx = icmp eq i64 %.sroa.0230.0645, 4         ; 2 uses
  %i.by = add nuw nsw i64 %.sroa.0230.0645, 1
  %spec.select315 = select i1 %i.bx, i64 4, i64 %i.by ; 2 uses
  %i.bz = icmp eq i64 %.sroa.0230.0645, 0
  %i.ca = add i64 %.sroa.0230.0645, %.sroa.0.0    ; 2 uses
  %i.cb = sub i64 %i.ca, %i.an                    ; 5 uses
  %i.cc = icmp ult i64 %i.cb, %i.am               ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.cb ; 2 uses
  %i.ce = sub i64 %i.ar, %i.ca
  br label %.lr.ph

bb.r:                                             ; preds = %.loopexit
  %i.cf = trunc nuw i64 %.sroa.023.1.i.ph.lcssa480 to i1
  br i1 %i.cf, label %.loopexit397, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit

.loopexit397:                                     ; preds = %bb.af, %bb.r
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa487, %bb.r ], [ %.sroa.0230.0645, %bb.af ] ; 4 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa473, %bb.r ], [ %.us-phi553, %bb.af ] ; 4 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa466, %bb.r ], [ %.sroa.01.0.i.lcssa, %bb.af ] ; 3 uses
  %i.cg = icmp eq i64 %.sroa.525.1.i, 0
  %i.ch = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  br i1 %i.cg, label %bb.an, label %bb.ao

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.t
  %.sroa.0231.0528 = phi i64 [ %spec.select317, %bb.t ], [ %.sroa.0231.0.ph640, %.lr.ph.split ] ; 3 uses
  %i.ci = icmp eq i64 %.sroa.0231.0528, 4         ; 3 uses
  %i.cj = add nuw nsw i64 %.sroa.0231.0528, 1
  %spec.select317 = select i1 %i.ci, i64 4, i64 %i.cj ; 3 uses
  %i.ck = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1237
  br i1 %i.ck, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.s

bb.s:                                             ; preds = %.lr.ph.split.split
  %.not652 = icmp eq i64 %.sroa.0231.0528, 0
  br i1 %.not652, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30
  %.not.i61 = icmp ugt i64 %spec.select317, 4
  %or.cond321 = select i1 %i.ci, i1 true, i1 %.not.i61
  br i1 %or.cond321, label %.loopexit, label %.lr.ph.split.split

bb.u:                                             ; preds = %bb.s
  br i1 %i.bv, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit31, label %.split.loopexit1109

.split.loopexit1109:                              ; preds = %bb.u
  %i.cl = sub i64 %.sroa.0197.0, %i.aq
  br label %.split

.split:                                           ; preds = %bb.ac, %.split.loopexit1109
  %.us-phi = phi i64 [ %i.cl, %.split.loopexit1109 ], [ %i.dc, %bb.ac ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #28, !noalias !1238
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit31: ; preds = %bb.u
  br i1 %i.cc, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30, label %.split538

.split538:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit31, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit31.us
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cb, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #28, !noalias !1239
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit31
  %.val49 = load i64, ptr %i.bw, align 8, !noundef !5
  %.val50 = load i64, ptr %i.cd, align 8, !noundef !5
  %.not318 = icmp eq i64 %.val49, %.val50
  br i1 %.not318, label %.split542, label %bb.t

.split542.loopexit:                               ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30.us
  %.pre897 = sub i64 %i.as, %i.db
  br label %.split542

.split542:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30, %.split542.loopexit
  %.pre-phi = phi i64 [ %.pre897, %.split542.loopexit ], [ %i.bn, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30 ]
  %.us-phi548 = phi i64 [ %i.db, %.split542.loopexit ], [ %.sroa.0197.0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30 ]
  %.us-phi551 = phi i1 [ %i.cy, %.split542.loopexit ], [ %i.ci, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30 ]
  %.us-phi552 = phi i64 [ %spec.select317.us, %.split542.loopexit ], [ %spec.select317, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30 ] ; 2 uses
  %.us-phi553 = phi i64 [ %.sroa.0231.0528.us, %.split542.loopexit ], [ 0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30 ] ; 6 uses
  %.sroa.0.0.i65 = call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %i.ce) ; 3 uses
  %.not653 = icmp eq i64 %.sroa.0.0.i65, 0
  br i1 %.not653, label %.outer, label %.lr.ph637

.lr.ph637:                                        ; preds = %.split542
  %i.cm = sub i64 %.us-phi548, %i.aq              ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph637, %bb.aa
  %.sroa.01.0.i636 = phi i64 [ 0, %.lr.ph637 ], [ %i.cw, %bb.aa ] ; 5 uses
  %i.cn = and i64 %.sroa.01.0.i636, 1023
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cp = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1237
  br i1 %i.cp, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cq = add nuw i64 %i.cm, %.sroa.01.0.i636     ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.ap
  br i1 %i.cr, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit29, label %bb.y
end_hunk_0
begin_hunk_1_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactIBT_mEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter:bb.a
  br label %bb.ap

bb.at:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  call void @llvm.experimental.noalias.scope.decl(metadata !1259), !noalias !1243
  %i.et = load ptr, ptr %0, align 8, !alias.scope !1260, !noalias !1243, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  call void @llvm.experimental.noalias.scope.decl(metadata !1262), !noalias !1263
  %i.eu = load ptr, ptr %i.et, align 8, !alias.scope !1264, !noalias !1263, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 120 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 136 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !1265, !noalias !1266, !noundef !5 ; 3 uses
  %i.ey = load i64, ptr %i.ev, align 8, !range !10, !alias.scope !1265, !noalias !1266, !noundef !5
  %i.ez = icmp eq i64 %i.ex, %i.ey
  br i1 %i.ez, label %bb.au, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit70

bb.au:                                            ; preds = %bb.at
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ev), !noalias !1267
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit70

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit70: ; preds = %bb.at, %bb.au
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 128
  %i.fb = load ptr, ptr %i.fa, align 8, !alias.scope !1265, !noalias !1266, !nonnull !5, !noundef !5
  %i.fc = getelementptr inbounds nuw [40 x i8], ptr %i.fb, i64 %i.ex ; 4 uses
  store i64 1, ptr %i.fc, align 8, !noalias !1266
  %.sroa.4248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4248.0..sroa_idx, align 8, !noalias !1266
  %.sroa.5249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5249.0..sroa_idx, align 8, !noalias !1266
  %.sroa.6250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  store i64 %.sroa.0197.0, ptr %.sroa.6250.0..sroa_idx, align 8, !noalias !1266
  %i.fd = add i64 %i.ex, 1
  store i64 %i.fd, ptr %i.ew, align 8, !alias.scope !1265, !noalias !1266
  br label %bb.ap

bb.av:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !1268)
  call void @llvm.experimental.noalias.scope.decl(metadata !1269), !noalias !1243
  %i.fe = load ptr, ptr %0, align 8, !alias.scope !1270, !noalias !1243, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1271)
  call void @llvm.experimental.noalias.scope.decl(metadata !1272), !noalias !1273
  %i.ff = load ptr, ptr %i.fe, align 8, !alias.scope !1274, !noalias !1273, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 120 ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 136 ; 3 uses
  %i.fi = load i64, ptr %i.fh, align 8, !alias.scope !1275, !noalias !1276, !noundef !5 ; 4 uses
  %i.fj = load i64, ptr %i.fg, align 8, !range !10, !alias.scope !1275, !noalias !1276, !noundef !5
  %i.fk = icmp eq i64 %i.fi, %i.fj
  br i1 %i.fk, label %bb.aw, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit71

bb.aw:                                            ; preds = %bb.av
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fg), !noalias !1277
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit71

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit71: ; preds = %bb.av, %bb.aw
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 128 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !alias.scope !1275, !noalias !1276, !nonnull !5, !noundef !5
  %i.fn = getelementptr inbounds nuw [40 x i8], ptr %i.fm, i64 %i.fi ; 4 uses
  store i64 1, ptr %i.fn, align 8, !noalias !1276
  %.sroa.4278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4278.0..sroa_idx, align 8, !noalias !1276
  %.sroa.5279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5279.0..sroa_idx, align 8, !noalias !1276
  %.sroa.6280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  store i64 %.sroa.0197.0, ptr %.sroa.6280.0..sroa_idx, align 8, !noalias !1276
  %i.fo = add i64 %i.fi, 1                        ; 3 uses
  store i64 %i.fo, ptr %i.fh, align 8, !alias.scope !1275, !noalias !1276
  %i.fp = load i64, ptr %i.fg, align 8, !range !10, !alias.scope !1278, !noalias !1276, !noundef !5
  %i.fq = icmp eq i64 %i.fo, %i.fp
  br i1 %i.fq, label %bb.ax, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit72

bb.ax:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit71
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fg), !noalias !1279
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit72

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit72: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit71, %bb.ax
  %i.fr = load ptr, ptr %i.fl, align 8, !alias.scope !1278, !noalias !1276, !nonnull !5, !noundef !5
  %i.fs = getelementptr inbounds nuw [40 x i8], ptr %i.fr, i64 %i.fo ; 4 uses
  store i64 2, ptr %i.fs, align 8, !noalias !1276
  %.sroa.4283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4283.0..sroa_idx, align 8, !noalias !1276
  %.sroa.5284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store i64 %.sroa.0197.0, ptr %.sroa.5284.0..sroa_idx, align 8, !noalias !1276
  %.sroa.6285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6285.0..sroa_idx, align 8, !noalias !1276
  %i.ft = add i64 %i.fi, 2
  store i64 %i.ft, ptr %i.fh, align 8, !alias.scope !1278, !noalias !1276
  br label %bb.ap

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split, %.lr.ph.split.us, %bb.w, %bb.l, %bb.o, %bb.r, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit68
  %.sroa.0197.2 = phi i64 [ %.sroa.0197.0, %bb.l ], [ %.sroa.0197.0, %bb.o ], [ %.sroa.0197.0, %bb.r ], [ %i.ei, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit68 ], [ %.sroa.0197.0, %.lr.ph.split.split ], [ %.sroa.0197.0, %.lr.ph.split.us ], [ %.sroa.0197.0, %bb.w ], [ %.sroa.0197.0, %.lr.ph.split.split.us ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.l ], [ %.sroa.0.0, %bb.o ], [ %.sroa.0.0, %bb.r ], [ %i.eh, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit68 ], [ %.sroa.0.0, %.lr.ph.split.split ], [ %.sroa.0.0, %.lr.ph.split.us ], [ %.sroa.0.0, %bb.w ], [ %.sroa.0.0, %.lr.ph.split.split.us ] ; 2 uses
  %i.fu = icmp eq i64 %.sroa.0.2, %.sroa.0.0
  %i.fv = icmp eq i64 %.sroa.0197.2, %.sroa.0197.0
  %or.cond = select i1 %i.fu, i1 %i.fv, i1 false
  br i1 %or.cond, label %bb.k, label %bb.j

bb.ay:                                            ; preds = %bb.k
  br i1 %i.bl, label %bb.bd, label %bb.bb

bb.az:                                            ; preds = %bb.k
  br i1 %i.bl, label %.thread, label %bb.ba

bb.ba:                                            ; preds = %.sink.split.i.thread, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread311, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit73, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit163, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit162, %bb.gx, %bb.az
  %.not26 = icmp eq i64 %.sroa.0.0.i54, 0
  br i1 %.not26, label %bb.he, label %bb.hc

bb.bb:                                            ; preds = %bb.ay
  %i.fw = sub nuw i64 %i.ar, %.sroa.0.0
  call void @llvm.experimental.noalias.scope.decl(metadata !1280)
  call void @llvm.experimental.noalias.scope.decl(metadata !1281)
  %i.fx = load ptr, ptr %0, align 8, !alias.scope !1282, !nonnull !5, !align !6, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  call void @llvm.experimental.noalias.scope.decl(metadata !1284), !noalias !1282
  %i.fy = load ptr, ptr %i.fx, align 8, !alias.scope !1285, !noalias !1282, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 120 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 136 ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !alias.scope !1286, !noalias !1287, !noundef !5 ; 3 uses
  %i.gc = load i64, ptr %i.fz, align 8, !range !10, !alias.scope !1286, !noalias !1287, !noundef !5
  %i.gd = icmp eq i64 %i.gb, %i.gc
  br i1 %i.gd, label %bb.bc, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit73

bb.bc:                                            ; preds = %bb.bb
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fz), !noalias !1288
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit73

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit73: ; preds = %bb.bb, %bb.bc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 128
  %i.gf = load ptr, ptr %i.ge, align 8, !alias.scope !1286, !noalias !1287, !nonnull !5, !noundef !5
  %i.gg = getelementptr inbounds nuw [40 x i8], ptr %i.gf, i64 %i.gb ; 4 uses
  store i64 1, ptr %i.gg, align 8, !noalias !1287
  %.sroa.4253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4253.0..sroa_idx, align 8, !noalias !1287
  %.sroa.5254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store i64 %i.fw, ptr %.sroa.5254.0..sroa_idx, align 8, !noalias !1287
  %.sroa.6255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  store i64 %.sroa.0197.0, ptr %.sroa.6255.0..sroa_idx, align 8, !noalias !1287
  %i.gh = add i64 %i.gb, 1
  store i64 %i.gh, ptr %i.ga, align 8, !alias.scope !1286, !noalias !1287
  br label %bb.ba

bb.bd:                                            ; preds = %bb.ay
  %i.gi = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1289
  br i1 %i.gi, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gj = sub nuw i64 %i.ar, %.sroa.0.0           ; 22 uses
  %i.gk = sub nuw i64 %i.as, %.sroa.0197.0        ; 22 uses
  %i.gl = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.gj, i64 %i.gk) ; 2 uses
  %i.gm = extractvalue { i64, i1 } %i.gl, 1
  br i1 %i.gm, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.bf, !prof !13

bb.bf:                                            ; preds = %bb.be
  %i.gn = extractvalue { i64, i1 } %i.gl, 0
  %.sroa.0.0.i75 = call noundef i64 @llvm.umax.i64(i64 %i.gk, i64 %i.gj)
  %.sroa.0.0.i74 = call noundef i64 @llvm.umin.i64(i64 %i.gk, i64 %i.gj)
  %i.go = add i64 %.sroa.0.0.i74, -65
  %or.cond.i27 = icmp ult i64 %i.go, -64
  %i.gp = icmp ult i64 %.sroa.0.0.i75, 512
  %or.cond1.i = or i1 %i.gp, %or.cond.i27
  %i.gq = icmp ugt i64 %i.gn, 64000000
  %or.cond3.i = select i1 %or.cond1.i, i1 true, i1 %i.gq
  br i1 %or.cond3.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.not.i28 = icmp ugt i64 %i.gj, %i.gk
  %.val51 = load ptr, ptr %0, align 8             ; 20 uses
  %i.gr = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !5 ; 2 uses
  br i1 %.not.i28, label %bb.bh, label %bb.eb

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.gr, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gs = add i64 %i.gj, 1                        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1290
  %i.gt = add nuw i64 %i.gk, 1
  %i.gu = mul i64 %i.gs, %i.gt                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1291)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1292
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.gu, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !1292
  %i.gv = load i64, ptr %i.c, align 8, !range !9, !noalias !1292, !noundef !5
  %i.gw = trunc nuw i64 %i.gv to i1
  %i.gx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gy = load i64, ptr %i.gx, align 8, !range !17, !noalias !1292, !noundef !5 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.gw, label %bb.bj, label %.lr.ph469.i, !prof !13

bb.bj:                                            ; preds = %bb.bi
  %i.ha = load i64, ptr %i.gz, align 8, !noalias !1292
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.gy, i64 %i.ha) #28, !noalias !1292
  unreachable

.lr.ph469.i:                                      ; preds = %bb.bi
  %i.hb = load ptr, ptr %i.gz, align 8, !noalias !1292, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1292
  store i64 %i.gy, ptr %i.d, align 8, !alias.scope !1291, !noalias !1290
  %i.hc = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store ptr %i.hb, ptr %i.hc, align 8, !alias.scope !1291, !noalias !1290
  %i.hd = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 7 uses
  store i64 %i.gu, ptr %i.hd, align 8, !alias.scope !1291, !noalias !1290
  %invariant.op470.i = sub i64 %.sroa.0197.0, %i.aq ; 3 uses
  %invariant.op.i = sub i64 %.sroa.0.0, %i.an     ; 3 uses
  br label %.lr.ph469.split.i

.lr.ph469.split.i:                                ; preds = %.lr.ph469.i, %..loopexit39_crit_edge.split.us.i
  %.sroa.0102.0468.i = phi i64 [ %i.he, %..loopexit39_crit_edge.split.us.i ], [ %i.gk, %.lr.ph469.i ] ; 2 uses
  %i.he = add i64 %.sroa.0102.0468.i, -1          ; 4 uses
  %i.hf = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1290

._crit_edge496.i:                                 ; preds = %bb.cz
  br i1 %i.mu, label %bb.bk, label %bb.bm

.lr.ph495.i:                                      ; preds = %..loopexit39_crit_edge.split.us.i, %bb.cz
  %.sroa.05.0.not494.i = phi i1 [ false, %bb.cz ], [ true, %..loopexit39_crit_edge.split.us.i ] ; 3 uses
  %.sroa.09.0493.i = phi i64 [ %.sroa.09.3.i, %bb.cz ], [ 0, %..loopexit39_crit_edge.split.us.i ] ; 12 uses
  %.sroa.038.0492.i = phi i64 [ %.sroa.038.3.i, %bb.cz ], [ 0, %..loopexit39_crit_edge.split.us.i ] ; 17 uses
  %i.hg = and i64 %.sroa.038.0492.i, 1023
  %i.hh = icmp eq i64 %i.hg, 0
  %or.cond170.i = select i1 %.sroa.05.0.not494.i, i1 %i.hh, i1 false ; 2 uses
  br i1 %or.cond170.i, label %bb.bq, label %bb.bp

bb.bk:                                            ; preds = %._crit_edge496.i
  %i.hi = add i64 %.sroa.038.3.i, %.sroa.0.0      ; 2 uses
  %i.hj = sub nuw i64 %i.gj, %.sroa.038.3.i
  %i.hk = add i64 %.sroa.09.3.i, %.sroa.0197.0    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.hl = load ptr, ptr %.val51, align 8, !alias.scope !1293, !noalias !1290, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 120 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 136 ; 2 uses
  %i.ho = load i64, ptr %i.hn, align 8, !alias.scope !1294, !noalias !1290, !noundef !5 ; 3 uses
  %i.hp = load i64, ptr %i.hm, align 8, !range !10, !alias.scope !1294, !noalias !1290, !noundef !5
  %i.hq = icmp eq i64 %i.ho, %i.hp
  br i1 %i.hq, label %bb.bl, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hm)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1290

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i: ; preds = %bb.bl, %bb.bk
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hl, i64 128
  %i.hs = load ptr, ptr %i.hr, align 8, !alias.scope !1294, !noalias !1290, !nonnull !5, !noundef !5
  %i.ht = getelementptr inbounds nuw [40 x i8], ptr %i.hs, i64 %i.ho ; 4 uses
  store i64 1, ptr %i.ht, align 8, !noalias !1290
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store i64 %i.hi, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !1290
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  store i64 %i.hj, ptr %.sroa.58.0..sroa_idx.i, align 8, !noalias !1290
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  store i64 %i.hk, ptr %.sroa.69.0..sroa_idx.i, align 8, !noalias !1290
  %i.hu = add i64 %i.ho, 1
  store i64 %i.hu, ptr %i.hn, align 8, !alias.scope !1294, !noalias !1290
  br i1 %i.mt, label %bb.bn, label %.sink.split.i.thread

bb.bm:                                            ; preds = %._crit_edge496.i
  br i1 %i.mt, label %._crit_edge899, label %.sink.split.i.thread

._crit_edge899:                                   ; preds = %bb.bm
  %.pre900 = add i64 %.sroa.038.3.i, %.sroa.0.0
  %.pre902 = add i64 %.sroa.09.3.i, %.sroa.0197.0
  br label %bb.bn

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dn, %bb.bq, %bb.cb, %bb.co, %bb.da, %bb.dc, %bb.cc, %bb.cp, %.lr.ph469.split.i, %bb.dy, %.invoke.i, %bb.bo, %bb.bl
  %lpad.loopexit.split-lp1585 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.d) #26
          to label %common.resume unwind label %bb.ea, !noalias !1290

bb.bn:                                            ; preds = %._crit_edge899, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i
  %.pre-phi903 = phi i64 [ %.pre902, %._crit_edge899 ], [ %i.hk, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i ]
  %.pre-phi901 = phi i64 [ %.pre900, %._crit_edge899 ], [ %i.hi, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i ]
  %i.hv = sub nuw i64 %i.gk, %.sroa.09.3.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.hw = load ptr, ptr %.val51, align 8, !alias.scope !1295, !noalias !1290, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 120 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 136 ; 2 uses
  %i.hz = load i64, ptr %i.hy, align 8, !alias.scope !1296, !noalias !1290, !noundef !5 ; 3 uses
  %i.ia = load i64, ptr %i.hx, align 8, !range !10, !alias.scope !1296, !noalias !1290, !noundef !5
  %i.ib = icmp eq i64 %i.hz, %i.ia
  br i1 %i.ib, label %bb.bo, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hx)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1290

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i: ; preds = %bb.bo, %bb.bn
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hw, i64 128
  %i.id = load ptr, ptr %i.ic, align 8, !alias.scope !1296, !noalias !1290, !nonnull !5, !noundef !5
  %i.ie = getelementptr inbounds nuw [40 x i8], ptr %i.id, i64 %i.hz ; 4 uses
  store i64 2, ptr %i.ie, align 8, !noalias !1290
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store i64 %.pre-phi901, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !1290
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  store i64 %.pre-phi903, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !1290
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  store i64 %i.hv, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !1290
  %i.if = add i64 %i.hz, 1
  store i64 %i.if, ptr %i.hy, align 8, !alias.scope !1296, !noalias !1290
  br label %.sink.split.i.thread

.sink.split.i.thread:                             ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i, %bb.bm, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.d), !noalias !1290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1290
  br label %bb.ba

.sink.split.i:                                    ; preds = %.loopexit24.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !1290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1290
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread

bb.bp:                                            ; preds = %bb.br, %.lr.ph495.i
  %i.ig = mul i64 %.sroa.09.0493.i, %i.gs         ; 4 uses
  %i.ih = add i64 %.sroa.038.0492.i, %.sroa.0.0   ; 4 uses
  %i.ii = add i64 %.sroa.09.0493.i, %.sroa.0197.0 ; 4 uses
  %i.ij = sub i64 %i.ii, %i.aq                    ; 3 uses
  %i.ik = icmp ult i64 %i.ij, %i.ap
  br i1 %i.ik, label %bb.bs, label %.invoke.i

.invoke.i:                                        ; preds = %bb.dw, %bb.du, %bb.ds, %bb.dr, %bb.dp, %bb.by, %bb.bw, %bb.bv, %bb.bu, %bb.bs, %bb.bp, %bb.cx, %bb.cv, %bb.cu, %bb.ct, %bb.cr, %bb.ck, %bb.ci, %bb.ch, %bb.cg, %bb.ce, %bb.de, %bb.db, %bb.dh, %bb.dg, %bb.dz, %.lr.ph.split.i
  %i.il = phi i64 [ %i.kz, %bb.ck ], [ %.reass.i, %bb.dz ], [ %.reass.i, %.lr.ph.split.i ], [ %i.mn, %bb.cx ], [ %i.ij, %bb.bp ], [ %i.ny, %bb.dh ], [ %i.ap, %bb.db ], [ %i.nr, %bb.dg ], [ %i.am, %bb.de ], [ %i.kj, %bb.ce ], [ %i.kn, %bb.cg ], [ %i.kr, %bb.ci ], [ %i.kp, %bb.ch ], [ %i.lv, %bb.cr ], [ %i.lz, %bb.ct ], [ %i.mf, %bb.cv ], [ %i.mb, %bb.cu ], [ %i.iu, %bb.bu ], [ %i.iw, %bb.bv ], [ %i.jm, %bb.by ], [ %i.iq, %bb.bs ], [ %i.jb, %bb.bw ], [ %i.ov, %bb.dr ], [ %.reass.us.i, %bb.dp ], [ %i.po, %bb.dw ], [ %i.oz, %bb.ds ], [ %i.pf, %bb.du ]
  %i.im = phi i64 [ %.pre729.i.a, %bb.ck ], [ %i.ap, %bb.dz ], [ %i.ap, %.lr.ph.split.i ], [ %.pre727.i, %bb.cx ], [ %i.ap, %bb.bp ], [ %i.nt, %bb.dh ], [ %i.ap, %bb.db ], [ %i.nt, %bb.dg ], [ %i.am, %bb.de ], [ %i.am, %bb.ce ], [ %.pre729.i.a, %bb.cg ], [ %.pre729.i.a, %bb.ci ], [ %.pre729.i.a, %bb.ch ], [ %i.ap, %bb.cr ], [ %.pre727.i, %bb.ct ], [ %.pre727.i, %bb.cv ], [ %.pre727.i, %bb.cu ], [ %.pre725.i, %bb.bu ], [ %.pre725.i, %bb.bv ], [ %.pre725.i, %bb.by ], [ %i.am, %bb.bs ], [ %.pre725.i, %bb.bw ], [ %i.ox, %bb.dr ], [ %i.am, %bb.dp ], [ %i.pn, %bb.dw ], [ %i.ox, %bb.ds ], [ %i.pg, %bb.du ]
  %i.in = phi ptr [ @63, %bb.ck ], [ @74, %bb.dz ], [ @74, %.lr.ph.split.i ], [ @69, %bb.cx ], [ @52, %bb.bp ], [ @73, %bb.dh ], [ @70, %bb.db ], [ @72, %bb.dg ], [ @71, %bb.de ], [ @59, %bb.ce ], [ @60, %bb.cg ], [ @61, %bb.ci ], [ @62, %bb.ch ], [ @64, %bb.cr ], [ @66, %bb.ct ], [ @67, %bb.cv ], [ @68, %bb.cu ], [ @54, %bb.bu ], [ @56, %bb.bv ], [ @57, %bb.by ], [ @53, %bb.bs ], [ @55, %bb.bw ], [ @76, %bb.dr ], [ @75, %bb.dp ], [ @79, %bb.dw ], [ @77, %bb.ds ], [ @78, %bb.du ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.il, i64 noundef %i.im, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.in) #28
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1290

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.bq:                                            ; preds = %.lr.ph495.i
  %i.io = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.br unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1290

bb.br:                                            ; preds = %bb.bq
  br i1 %i.io, label %.loopexit24.i, label %bb.bp

bb.bs:                                            ; preds = %bb.bp
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ij ; 2 uses
  %i.iq = sub i64 %i.ih, %i.an                    ; 3 uses
  %i.ir = icmp ult i64 %i.iq, %i.am
  br i1 %i.ir, label %bb.bt, label %.invoke.i

bb.bt:                                            ; preds = %bb.bs
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.iq ; 2 uses
  %.val212.i = load i64, ptr %i.ip, align 8, !noalias !1290, !noundef !5
  %.val213.i = load i64, ptr %i.is, align 8, !noalias !1290, !noundef !5
  %i.it = icmp eq i64 %.val212.i, %.val213.i
  %.pre.i = load ptr, ptr %i.hc, align 8, !noalias !1290 ; 4 uses
  %.pre725.i = load i64, ptr %i.hd, align 8, !noalias !1290 ; 8 uses
  br i1 %i.it, label %bb.bu, label %._crit_edge731.i

._crit_edge731.i:                                 ; preds = %bb.bt
  %.pre732.i = add nuw i64 %.sroa.09.0493.i, 1
  %.pre733.i = mul i64 %.pre732.i, %i.gs
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.iu = add i64 %i.ig, %.sroa.038.0492.i        ; 3 uses
  %i.iv = icmp ult i64 %i.iu, %.pre725.i
  br i1 %i.iv, label %bb.bw, label %.invoke.i

bb.bv:                                            ; preds = %bb.bx, %._crit_edge731.i
  %.pre-phi734.i = phi i64 [ %.pre733.i, %._crit_edge731.i ], [ %i.iz, %bb.bx ] ; 3 uses
  %i.iw = add i64 %.pre-phi734.i, %.sroa.038.0492.i ; 3 uses
  %i.ix = icmp ult i64 %i.iw, %.pre725.i
  br i1 %i.ix, label %bb.by, label %.invoke.i

bb.bw:                                            ; preds = %bb.bu
  %i.iy = add nuw i64 %.sroa.09.0493.i, 1
  %i.iz = mul i64 %i.iy, %i.gs                    ; 2 uses
  %i.ja = add nuw i64 %.sroa.038.0492.i, 1
  %i.jb = add i64 %i.ja, %i.iz                    ; 3 uses
  %i.jc = icmp ult i64 %i.jb, %.pre725.i
  br i1 %i.jc, label %bb.bx, label %.invoke.i

bb.bx:                                            ; preds = %bb.bw
  %i.jd = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.iu
  %i.je = load i8, ptr %i.jd, align 1, !noalias !1290, !noundef !5
  %i.jf = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.jb
  %i.jg = load i8, ptr %i.jf, align 1, !noalias !1290, !noundef !5
  %i.jh = add i8 %i.jg, 1
  %i.ji = icmp eq i8 %i.je, %i.jh
  br i1 %i.ji, label %.preheader.i, label %bb.bv

.preheader.i:                                     ; preds = %bb.bx
  %i.jj = icmp ult i64 %.sroa.09.0493.i, %i.gk
  %i.jk = icmp ult i64 %.sroa.038.0492.i, %i.gj
  %or.cond177478.i = select i1 %i.jj, i1 %i.jk, i1 false
  br i1 %or.cond177478.i, label %.lr.ph481.i, label %._crit_edge482.i

bb.by:                                            ; preds = %bb.bv
  %i.jl = add nuw i64 %.sroa.038.0492.i, 1        ; 3 uses
  %i.jm = add i64 %i.jl, %i.ig                    ; 3 uses
  %i.jn = icmp ult i64 %i.jm, %.pre725.i
  br i1 %i.jn, label %bb.bz, label %.invoke.i

bb.bz:                                            ; preds = %bb.by
  %i.jo = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.iw
  %i.jp = load i8, ptr %i.jo, align 1, !noalias !1290, !noundef !5
  %i.jq = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.jm
  %i.jr = load i8, ptr %i.jq, align 1, !noalias !1290, !noundef !5
  %.not164.i = icmp ult i8 %i.jp, %i.jr
  br i1 %.not164.i, label %.preheader25.i, label %.preheader30.i

.preheader30.i:                                   ; preds = %bb.bz
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.09.0493.i, i64 %i.gk) ; 3 uses
  %exitcond.not.i1542.not = icmp ult i64 %.sroa.09.0493.i, %i.gk
  br i1 %exitcond.not.i1542.not, label %.lr.ph1544, label %._crit_edge1545

.preheader25.i:                                   ; preds = %bb.bz
  %i.js = icmp ult i64 %.sroa.038.0492.i, %i.gj
  br i1 %i.js, label %.lr.ph473.i, label %._crit_edge.i

.lr.ph473.i:                                      ; preds = %.preheader25.i
  %i.jt = add i64 %.pre-phi734.i, 1
  %i.ju = add i64 %i.ig, 1
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cm, %.lr.ph473.i
  %.sroa.038.1472.i = phi i64 [ %.sroa.038.0492.i, %.lr.ph473.i ], [ %i.lg, %bb.cm ] ; 9 uses
  %i.jv = and i64 %.sroa.038.1472.i, 1023
  %i.jw = icmp eq i64 %i.jv, 0
  %or.cond173.i = and i1 %.sroa.05.0.not494.i, %i.jw
  br i1 %or.cond173.i, label %bb.cc, label %bb.ce

._crit_edge.i:                                    ; preds = %bb.cm, %bb.cl, %bb.cj, %.preheader25.i
  %.sroa.038.1.lcssa.i = phi i64 [ %.sroa.038.0492.i, %.preheader25.i ], [ %i.gj, %bb.cm ], [ %.sroa.038.1472.i, %bb.cl ], [ %.sroa.038.1472.i, %bb.cj ] ; 2 uses
  %i.jx = sub nuw i64 %.sroa.038.1.lcssa.i, %.sroa.038.0492.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.jy = load ptr, ptr %.val51, align 8, !alias.scope !1297, !noalias !1290, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 120 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 136 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8, !alias.scope !1298, !noalias !1290, !noundef !5 ; 3 uses
  %i.kc = load i64, ptr %i.jz, align 8, !range !10, !alias.scope !1298, !noalias !1290, !noundef !5
  %i.kd = icmp eq i64 %i.kb, %i.kc
  br i1 %i.kd, label %bb.cb, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i

bb.cb:                                            ; preds = %._crit_edge.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jz)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1290

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.cb, %._crit_edge.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jy, i64 128
  %i.kf = load ptr, ptr %i.ke, align 8, !alias.scope !1298, !noalias !1290, !nonnull !5, !noundef !5
  %i.kg = getelementptr inbounds nuw [40 x i8], ptr %i.kf, i64 %i.kb ; 4 uses
  store i64 1, ptr %i.kg, align 8, !noalias !1290
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store i64 %i.ih, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1290
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  store i64 %i.jx, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !1290
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  store i64 %i.ii, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !1290
  %i.kh = add i64 %i.kb, 1
  store i64 %i.kh, ptr %i.ka, align 8, !alias.scope !1298, !noalias !1290
  br label %bb.cz

bb.cc:                                            ; preds = %bb.ca
  %i.ki = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1290

bb.cd:                                            ; preds = %bb.cc
  br i1 %i.ki, label %.loopexit24.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.ca
  %i.kj = add i64 %.sroa.038.1472.i, %invariant.op.i ; 3 uses
  %i.kk = icmp ult i64 %i.kj, %i.am
  br i1 %i.kk, label %bb.cf, label %.invoke.i

bb.cf:                                            ; preds = %bb.ce
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.kj
  %.val210.i = load i64, ptr %i.ip, align 8, !noalias !1290, !noundef !5
  %.val211.i = load i64, ptr %i.kl, align 8, !noalias !1290, !noundef !5
  %i.km = icmp eq i64 %.val210.i, %.val211.i
  %.pre728.i.a = load ptr, ptr %i.hc, align 8, !noalias !1290 ; 4 uses
  %.pre729.i.a = load i64, ptr %i.hd, align 8, !noalias !1290 ; 8 uses
  br i1 %i.km, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.kn = add i64 %.sroa.038.1472.i, %i.ig        ; 3 uses
  %i.ko = icmp ult i64 %i.kn, %.pre729.i.a
  br i1 %i.ko, label %bb.ci, label %.invoke.i

bb.ch:                                            ; preds = %bb.cj, %bb.cf
  %i.kp = add i64 %.sroa.038.1472.i, %.pre-phi734.i ; 3 uses
  %i.kq = icmp ult i64 %i.kp, %.pre729.i.a
  br i1 %i.kq, label %bb.ck, label %.invoke.i

bb.ci:                                            ; preds = %bb.cg
  %i.kr = add i64 %i.jt, %.sroa.038.1472.i        ; 3 uses
  %i.ks = icmp ult i64 %i.kr, %.pre729.i.a
  br i1 %i.ks, label %bb.cj, label %.invoke.i

bb.cj:                                            ; preds = %bb.ci
  %i.kt = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.kn
  %i.ku = load i8, ptr %i.kt, align 1, !noalias !1290, !noundef !5
  %i.kv = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.kr
  %i.kw = load i8, ptr %i.kv, align 1, !noalias !1290, !noundef !5
  %i.kx = add i8 %i.kw, 1
  %i.ky = icmp eq i8 %i.ku, %i.kx
  br i1 %i.ky, label %._crit_edge.i, label %bb.ch

bb.ck:                                            ; preds = %bb.ch
  %i.kz = add i64 %i.ju, %.sroa.038.1472.i        ; 3 uses
  %i.la = icmp ult i64 %i.kz, %.pre729.i.a
  br i1 %i.la, label %bb.cl, label %.invoke.i

bb.cl:                                            ; preds = %bb.ck
  %i.lb = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.kp
  %i.lc = load i8, ptr %i.lb, align 1, !noalias !1290, !noundef !5
  %i.ld = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.kz
  %i.le = load i8, ptr %i.ld, align 1, !noalias !1290, !noundef !5
  %i.lf = icmp ult i8 %i.lc, %i.le
  br i1 %i.lf, label %bb.cm, label %._crit_edge.i

bb.cm:                                            ; preds = %bb.cl
  %i.lg = add nuw i64 %.sroa.038.1472.i, 1        ; 2 uses
  %i.lh = icmp ult i64 %i.lg, %i.gj
  br i1 %i.lh, label %bb.ca, label %._crit_edge.i

bb.cn:                                            ; preds = %bb.cy
  %exitcond.not.i = icmp eq i64 %.pre-phi736.i, %umax.i
  br i1 %exitcond.not.i, label %._crit_edge1545, label %.lr.ph1544

.lr.ph1544:                                       ; preds = %.preheader30.i, %bb.cn
  %.sroa.09.1.i1543 = phi i64 [ %.pre-phi736.i, %bb.cn ], [ %.sroa.09.0493.i, %.preheader30.i ] ; 6 uses
  br i1 %or.cond170.i, label %bb.cp, label %bb.cr

._crit_edge1545:                                  ; preds = %bb.cn, %bb.cw, %bb.cy, %.preheader30.i
  %.sroa.09.1.lcssa.i = phi i64 [ %umax.i, %.preheader30.i ], [ %umax.i, %bb.cn ], [ %.sroa.09.1.i1543, %bb.cw ], [ %.sroa.09.1.i1543, %bb.cy ] ; 2 uses
  %i.li = sub i64 %.sroa.09.1.lcssa.i, %.sroa.09.0493.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.lj = load ptr, ptr %.val51, align 8, !alias.scope !1299, !noalias !1290, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 120 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 136 ; 2 uses
  %i.lm = load i64, ptr %i.ll, align 8, !alias.scope !1300, !noalias !1290, !noundef !5 ; 3 uses
  %i.ln = load i64, ptr %i.lk, align 8, !range !10, !alias.scope !1300, !noalias !1290, !noundef !5
  %i.lo = icmp eq i64 %i.lm, %i.ln
  br i1 %i.lo, label %bb.co, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i

bb.co:                                            ; preds = %._crit_edge1545
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lk)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1290

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.co, %._crit_edge1545
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lj, i64 128
  %i.lq = load ptr, ptr %i.lp, align 8, !alias.scope !1300, !noalias !1290, !nonnull !5, !noundef !5
  %i.lr = getelementptr inbounds nuw [40 x i8], ptr %i.lq, i64 %i.lm ; 4 uses
  store i64 2, ptr %i.lr, align 8, !noalias !1290
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  store i64 %i.ih, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !1290
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  store i64 %i.ii, ptr %.sroa.513.0..sroa_idx.i, align 8, !noalias !1290
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lr, i64 24
  store i64 %i.li, ptr %.sroa.614.0..sroa_idx.i, align 8, !noalias !1290
  %i.ls = add i64 %i.lm, 1
  store i64 %i.ls, ptr %i.ll, align 8, !alias.scope !1300, !noalias !1290
  br label %bb.cz

bb.cp:                                            ; preds = %.lr.ph1544
  %i.lt = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.cq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1290

bb.cq:                                            ; preds = %bb.cp
  br i1 %i.lt, label %.loopexit24.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %.lr.ph1544
  %i.lu = mul i64 %.sroa.09.1.i1543, %i.gs        ; 2 uses
  %i.lv = add i64 %.sroa.09.1.i1543, %invariant.op470.i ; 3 uses
  %i.lw = icmp ult i64 %i.lv, %i.ap
  br i1 %i.lw, label %bb.cs, label %.invoke.i

bb.cs:                                            ; preds = %bb.cr
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.lv
  %.val208.i = load i64, ptr %i.lx, align 8, !noalias !1290, !noundef !5
  %.val209.i = load i64, ptr %i.is, align 8, !noalias !1290, !noundef !5
  %i.ly = icmp eq i64 %.val208.i, %.val209.i
  %.pre726.i = load ptr, ptr %i.hc, align 8, !noalias !1290 ; 4 uses
  %.pre727.i = load i64, ptr %i.hd, align 8, !noalias !1290 ; 8 uses
  br i1 %i.ly, label %bb.ct, label %._crit_edge730.i

._crit_edge730.i:                                 ; preds = %bb.cs
  %.pre735.i = add i64 %.sroa.09.1.i1543, 1       ; 2 uses
  %.pre737.i = mul i64 %.pre735.i, %i.gs
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.lz = add i64 %i.lu, %.sroa.038.0492.i        ; 3 uses
  %i.ma = icmp ult i64 %i.lz, %.pre727.i
  br i1 %i.ma, label %bb.cv, label %.invoke.i

bb.cu:                                            ; preds = %bb.cw, %._crit_edge730.i
  %.pre-phi738.i.a = phi i64 [ %.pre737.i, %._crit_edge730.i ], [ %i.me, %bb.cw ]
  %.pre-phi736.i = phi i64 [ %.pre735.i, %._crit_edge730.i ], [ %i.md, %bb.cw ] ; 2 uses
  %i.mb = add i64 %.pre-phi738.i.a, %.sroa.038.0492.i ; 3 uses
  %i.mc = icmp ult i64 %i.mb, %.pre727.i
  br i1 %i.mc, label %bb.cx, label %.invoke.i

bb.cv:                                            ; preds = %bb.ct
  %i.md = add i64 %.sroa.09.1.i1543, 1            ; 2 uses
  %i.me = mul i64 %i.md, %i.gs                    ; 2 uses
  %i.mf = add i64 %i.me, %i.jl                    ; 3 uses
  %i.mg = icmp ult i64 %i.mf, %.pre727.i
  br i1 %i.mg, label %bb.cw, label %.invoke.i

bb.cw:                                            ; preds = %bb.cv
  %i.mh = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.lz
  %i.mi = load i8, ptr %i.mh, align 1, !noalias !1290, !noundef !5
  %i.mj = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.mf
  %i.mk = load i8, ptr %i.mj, align 1, !noalias !1290, !noundef !5
  %i.ml = add i8 %i.mk, 1
  %i.mm = icmp eq i8 %i.mi, %i.ml
  br i1 %i.mm, label %._crit_edge1545, label %bb.cu

bb.cx:                                            ; preds = %bb.cu
  %i.mn = add i64 %i.lu, %i.jl                    ; 3 uses
  %i.mo = icmp ult i64 %i.mn, %.pre727.i
  br i1 %i.mo, label %bb.cy, label %.invoke.i

bb.cy:                                            ; preds = %bb.cx
  %i.mp = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.mb
  %i.mq = load i8, ptr %i.mp, align 1, !noalias !1290, !noundef !5
  %i.mr = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.mn
  %i.ms = load i8, ptr %i.mr, align 1, !noalias !1290, !noundef !5
  %.not167.i = icmp ult i8 %i.mq, %i.ms
  br i1 %.not167.i, label %._crit_edge1545, label %bb.cn

bb.cz:                                            ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i
  %.sroa.038.3.i = phi i64 [ %.sroa.038.0492.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i ], [ %.sroa.038.1.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i ], [ %.sroa.038.4.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i ] ; 5 uses
  %.sroa.09.3.i = phi i64 [ %.sroa.09.1.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i ], [ %.sroa.09.0493.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i ], [ %.sroa.09.4.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i ] ; 5 uses
  %i.mt = icmp ult i64 %.sroa.09.3.i, %i.gk       ; 3 uses
  %i.mu = icmp ult i64 %.sroa.038.3.i, %i.gj      ; 2 uses
  %or.cond.i77 = select i1 %i.mt, i1 %i.mu, i1 false
  br i1 %or.cond.i77, label %.lr.ph495.i, label %._crit_edge496.i

._crit_edge482.i:                                 ; preds = %bb.dj, %bb.di, %bb.df, %.preheader.i
  %.sroa.038.4.lcssa.i = phi i64 [ %.sroa.038.0492.i, %.preheader.i ], [ %i.nx, %bb.dj ], [ %.sroa.038.4479.i, %bb.df ], [ %.sroa.038.4479.i, %bb.di ] ; 2 uses
  %.sroa.09.4.lcssa.i = phi i64 [ %.sroa.09.0493.i, %.preheader.i ], [ %i.nv, %bb.dj ], [ %.sroa.09.4480.i, %bb.df ], [ %.sroa.09.4480.i, %bb.di ]
  %i.mv = sub nuw i64 %.sroa.038.4.lcssa.i, %.sroa.038.0492.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.mw = load ptr, ptr %.val51, align 8, !alias.scope !1301, !noalias !1290, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 120 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 136 ; 2 uses
  %i.mz = load i64, ptr %i.my, align 8, !alias.scope !1302, !noalias !1290, !noundef !5 ; 3 uses
  %i.na = load i64, ptr %i.mx, align 8, !range !10, !alias.scope !1302, !noalias !1290, !noundef !5
  %i.nb = icmp eq i64 %i.mz, %i.na
  br i1 %i.nb, label %bb.da, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i

bb.da:                                            ; preds = %._crit_edge482.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mx)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1290

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.da, %._crit_edge482.i
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mw, i64 128
  %i.nd = load ptr, ptr %i.nc, align 8, !alias.scope !1302, !noalias !1290, !nonnull !5, !noundef !5
  %i.ne = getelementptr inbounds nuw [40 x i8], ptr %i.nd, i64 %i.mz ; 4 uses
  store i64 0, ptr %i.ne, align 8, !noalias !1290
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  store i64 %i.ih, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1290
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  store i64 %i.ii, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1290
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ne, i64 24
  store i64 %i.mv, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !1290
  %i.nf = add i64 %i.mz, 1
  store i64 %i.nf, ptr %i.my, align 8, !alias.scope !1302, !noalias !1290
  br label %bb.cz

.lr.ph481.i:                                      ; preds = %.preheader.i, %bb.dj
  %.sroa.09.4480.i = phi i64 [ %i.nv, %bb.dj ], [ %.sroa.09.0493.i, %.preheader.i ] ; 5 uses
  %.sroa.038.4479.i = phi i64 [ %i.nx, %bb.dj ], [ %.sroa.038.0492.i, %.preheader.i ] ; 6 uses
  %i.ng = and i64 %.sroa.038.4479.i, 1023
  %i.nh = icmp eq i64 %i.ng, 0
  %or.cond180.i = select i1 %.sroa.05.0.not494.i, i1 %i.nh, i1 false
  br i1 %or.cond180.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.dd, %.lr.ph481.i
  %i.ni = mul i64 %.sroa.09.4480.i, %i.gs
  %i.nj = add i64 %.sroa.09.4480.i, %invariant.op470.i ; 2 uses
  %i.nk = icmp ult i64 %i.nj, %i.ap
  br i1 %i.nk, label %bb.de, label %.invoke.i

bb.dc:                                            ; preds = %.lr.ph481.i
  %i.nl = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1290

bb.dd:                                            ; preds = %bb.dc
  br i1 %i.nl, label %.loopexit24.i, label %bb.db

bb.de:                                            ; preds = %bb.db
  %i.nm = add i64 %.sroa.038.4479.i, %invariant.op.i ; 2 uses
  %i.nn = icmp ult i64 %i.nm, %i.am
  br i1 %i.nn, label %bb.df, label %.invoke.i

bb.df:                                            ; preds = %bb.de
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.nj
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.nm
  %.val206.i = load i64, ptr %i.no, align 8, !noalias !1290, !noundef !5
  %.val207.i = load i64, ptr %i.np, align 8, !noalias !1290, !noundef !5
  %i.nq = icmp eq i64 %.val206.i, %.val207.i
  br i1 %i.nq, label %bb.dg, label %._crit_edge482.i

bb.dg:                                            ; preds = %bb.df
  %i.nr = add i64 %i.ni, %.sroa.038.4479.i        ; 3 uses
  %i.ns = load ptr, ptr %i.hc, align 8, !noalias !1290, !nonnull !5, !noundef !5 ; 2 uses
  %i.nt = load i64, ptr %i.hd, align 8, !noalias !1290, !noundef !5 ; 4 uses
  %i.nu = icmp ult i64 %i.nr, %i.nt
  br i1 %i.nu, label %bb.dh, label %.invoke.i

bb.dh:                                            ; preds = %bb.dg
  %i.nv = add nuw i64 %.sroa.09.4480.i, 1         ; 4 uses
  %i.nw = mul i64 %i.nv, %i.gs
  %i.nx = add nuw i64 %.sroa.038.4479.i, 1        ; 4 uses
  %i.ny = add i64 %i.nx, %i.nw                    ; 3 uses
  %i.nz = icmp ult i64 %i.ny, %i.nt
  br i1 %i.nz, label %bb.di, label %.invoke.i

bb.di:                                            ; preds = %bb.dh
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.nr
  %i.ob = load i8, ptr %i.oa, align 1, !noalias !1290, !noundef !5
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.ny
  %i.od = load i8, ptr %i.oc, align 1, !noalias !1290, !noundef !5
  %i.oe = add i8 %i.od, 1
  %i.of = icmp eq i8 %i.ob, %i.oe
  br i1 %i.of, label %bb.dj, label %._crit_edge482.i

bb.dj:                                            ; preds = %bb.di
  %i.og = icmp ult i64 %i.nv, %i.gk
  %i.oh = icmp ult i64 %i.nx, %i.gj
  %or.cond177.i = and i1 %i.og, %i.oh
  br i1 %or.cond177.i, label %.lr.ph481.i, label %._crit_edge482.i

.loopexit24.i:                                    ; preds = %bb.dm, %bb.do, %bb.br, %bb.cq, %bb.cd, %bb.dd, %bb.dz
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.sink.split.i unwind label %bb.dk, !noalias !1290

bb.dk:                                            ; preds = %.loopexit24.i
  %i.oi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.dl, !noalias !1290

bb.dl:                                            ; preds = %bb.dk
  %i.oj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !1290
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ge, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dk
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp1585, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.oi, %bb.dk ], [ %i.xl, %bb.ge ], [ %lpad.loopexit.split-lp1630, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

bb.dm:                                            ; preds = %.lr.ph469.split.i
  br i1 %i.hf, label %.loopexit24.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.dm
  %i.ok = mul i64 %i.he, %i.gs                    ; 2 uses
  %i.ol = mul i64 %.sroa.0102.0468.i, %i.gs       ; 2 uses
  %.reass.i = add i64 %i.he, %invariant.op470.i   ; 4 uses
  %i.om = icmp ult i64 %.reass.i, %i.ap
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.reass.i
  %.fr.i = freeze i1 %i.om
  br i1 %.fr.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.dx
  %.sroa.0105.0432.us.i = phi i64 [ %i.oo, %bb.dx ], [ %i.gj, %.lr.ph.i ] ; 3 uses
  %i.oo = add i64 %.sroa.0105.0432.us.i, -1       ; 6 uses
  %i.op = and i64 %i.oo, 1023
  %i.oq = icmp eq i64 %i.op, 0
  br i1 %i.oq, label %bb.dn, label %bb.dp

bb.dn:                                            ; preds = %.lr.ph.split.us.i
  %i.or = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.do unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1290

bb.do:                                            ; preds = %bb.dn
  br i1 %i.or, label %.loopexit24.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do, %.lr.ph.split.us.i
  %.reass.us.i = add i64 %i.oo, %invariant.op.i   ; 3 uses
  %i.os = icmp ult i64 %.reass.us.i, %i.am
  br i1 %i.os, label %bb.dq, label %.invoke.i

bb.dq:                                            ; preds = %bb.dp
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.reass.us.i
  %.val.us.i = load i64, ptr %i.on, align 8, !noalias !1290, !noundef !5
  %.val205.us.i = load i64, ptr %i.ot, align 8, !noalias !1290, !noundef !5
  %i.ou = icmp eq i64 %.val.us.i, %.val205.us.i
  br i1 %i.ou, label %bb.du, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ov = add i64 %i.oo, %i.ol                    ; 3 uses
  %i.ow = load ptr, ptr %i.hc, align 8, !noalias !1290, !nonnull !5, !noundef !5 ; 3 uses
  %i.ox = load i64, ptr %i.hd, align 8, !noalias !1290, !noundef !5 ; 5 uses
  %i.oy = icmp ult i64 %i.ov, %i.ox
  br i1 %i.oy, label %bb.ds, label %.invoke.i

bb.ds:                                            ; preds = %bb.dr
  %i.oz = add i64 %.sroa.0105.0432.us.i, %i.ok    ; 3 uses
  %i.pa = icmp ult i64 %i.oz, %i.ox
  br i1 %i.pa, label %bb.dt, label %.invoke.i

bb.dt:                                            ; preds = %bb.ds
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.ov
  %i.pc = load i8, ptr %i.pb, align 1, !noalias !1290, !noundef !5
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.oz
  %i.pe = load i8, ptr %i.pd, align 1, !noalias !1290, !noundef !5
  %.sroa.0.0.i.us.i = call noundef i8 @llvm.umax.i8(i8 %i.pe, i8 %i.pc)
  br label %bb.dw

bb.du:                                            ; preds = %bb.dq
  %i.pf = add i64 %.sroa.0105.0432.us.i, %i.ol    ; 3 uses
  %i.pg = load i64, ptr %i.hd, align 8, !noalias !1290, !noundef !5 ; 3 uses
  %i.ph = icmp ult i64 %i.pf, %i.pg
  br i1 %i.ph, label %bb.dv, label %.invoke.i

bb.dv:                                            ; preds = %bb.du
  %i.pi = load ptr, ptr %i.hc, align 8, !noalias !1290, !nonnull !5, !noundef !5 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 %i.pf
  %i.pk = load i8, ptr %i.pj, align 1, !noalias !1290, !noundef !5
  %i.pl = add i8 %i.pk, 1
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.dt
  %i.pm = phi ptr [ %i.pi, %bb.dv ], [ %i.ow, %bb.dt ]
  %i.pn = phi i64 [ %i.pg, %bb.dv ], [ %i.ox, %bb.dt ] ; 2 uses
  %.sroa.04.0.us.i = phi i8 [ %i.pl, %bb.dv ], [ %.sroa.0.0.i.us.i, %bb.dt ]
  %i.po = add i64 %i.oo, %i.ok                    ; 3 uses
  %i.pp = icmp ult i64 %i.po, %i.pn
  br i1 %i.pp, label %bb.dx, label %.invoke.i

bb.dx:                                            ; preds = %bb.dw
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.po
  store i8 %.sroa.04.0.us.i, ptr %i.pq, align 1, !noalias !1290
  %.not168.us.i = icmp eq i64 %i.oo, 0
  br i1 %.not168.us.i, label %..loopexit39_crit_edge.split.us.i, label %.lr.ph.split.us.i

..loopexit39_crit_edge.split.us.i:                ; preds = %bb.dx
  %.not.i78 = icmp eq i64 %i.he, 0
  br i1 %.not.i78, label %.lr.ph495.i, label %.lr.ph469.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.pr = and i64 %i.gj, 1023
  %i.ps = icmp eq i64 %i.pr, 1
  br i1 %i.ps, label %bb.dy, label %.invoke.i

bb.dy:                                            ; preds = %.lr.ph.split.i
  %i.pt = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1290

bb.dz:                                            ; preds = %bb.dy
  br i1 %i.pt, label %.loopexit24.i, label %.invoke.i

bb.ea:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.pu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !1290
  unreachable

bb.eb:                                            ; preds = %bb.bg
  br i1 %i.gr, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.pv = add i64 %i.gk, 1                        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1303
  %i.pw = add i64 %i.gj, 1
  %i.px = mul i64 %i.pw, %i.pv                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1305
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.px, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !1305
  %i.py = load i64, ptr %i.a, align 8, !range !9, !noalias !1305, !noundef !5
  %i.pz = trunc nuw i64 %i.py to i1
  %i.qa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.qb = load i64, ptr %i.qa, align 8, !range !17, !noalias !1305, !noundef !5 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.pz, label %bb.ed, label %.lr.ph484.i, !prof !13

bb.ed:                                            ; preds = %bb.ec
  %i.qd = load i64, ptr %i.qc, align 8, !noalias !1305
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.qb, i64 %i.qd) #28, !noalias !1305
  unreachable

.lr.ph484.i:                                      ; preds = %bb.ec
  %i.qe = load ptr, ptr %i.qc, align 8, !noalias !1305, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1305
  store i64 %i.qb, ptr %i.b, align 8, !alias.scope !1304, !noalias !1303
  %i.qf = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 7 uses
  store ptr %i.qe, ptr %i.qf, align 8, !alias.scope !1304, !noalias !1303
  %i.qg = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  store i64 %i.px, ptr %i.qg, align 8, !alias.scope !1304, !noalias !1303
  %invariant.op.i94 = sub i64 %.sroa.0197.0, %i.aq ; 4 uses
  %invariant.op485.i = sub i64 %.sroa.0.0, %i.an  ; 3 uses
  br label %.lr.ph484.split.i

.lr.ph484.split.i:                                ; preds = %.lr.ph484.i, %..loopexit39_crit_edge.split.us.i159
  %.sroa.0102.0483.i = phi i64 [ %i.qh, %..loopexit39_crit_edge.split.us.i159 ], [ %i.gj, %.lr.ph484.i ] ; 2 uses
  %i.qh = add i64 %.sroa.0102.0483.i, -1          ; 4 uses
  %i.qi = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1303

._crit_edge512.i:                                 ; preds = %bb.ft
  br i1 %i.vw, label %bb.ee, label %bb.eg

.lr.ph511.i:                                      ; preds = %..loopexit39_crit_edge.split.us.i159, %bb.ft
  %.sroa.05.0.not510.i = phi i1 [ false, %bb.ft ], [ true, %..loopexit39_crit_edge.split.us.i159 ] ; 3 uses
  %.sroa.09.0509.i = phi i64 [ %.sroa.09.3.i124, %bb.ft ], [ 0, %..loopexit39_crit_edge.split.us.i159 ] ; 13 uses
  %.sroa.039.0508.i = phi i64 [ %.sroa.039.3.i, %bb.ft ], [ 0, %..loopexit39_crit_edge.split.us.i159 ] ; 16 uses
  %i.qj = and i64 %.sroa.039.0508.i, 1023
  %i.qk = icmp eq i64 %i.qj, 0
  %or.cond170.i105 = select i1 %.sroa.05.0.not510.i, i1 %i.qk, i1 false ; 2 uses
  br i1 %or.cond170.i105, label %bb.ek, label %bb.ej

bb.ee:                                            ; preds = %._crit_edge512.i
  %i.ql = add i64 %.sroa.09.3.i124, %.sroa.0.0    ; 2 uses
  %i.qm = sub nuw i64 %i.gj, %.sroa.09.3.i124
  %i.qn = add i64 %.sroa.039.3.i, %.sroa.0197.0   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.qo = load ptr, ptr %.val51, align 8, !alias.scope !1306, !noalias !1303, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 120 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qo, i64 136 ; 2 uses
  %i.qr = load i64, ptr %i.qq, align 8, !alias.scope !1307, !noalias !1303, !noundef !5 ; 3 uses
  %i.qs = load i64, ptr %i.qp, align 8, !range !10, !alias.scope !1307, !noalias !1303, !noundef !5
  %i.qt = icmp eq i64 %i.qr, %i.qs
  br i1 %i.qt, label %bb.ef, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101

bb.ef:                                            ; preds = %bb.ee
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.qp)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1303

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101: ; preds = %bb.ef, %bb.ee
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qo, i64 128
  %i.qv = load ptr, ptr %i.qu, align 8, !alias.scope !1307, !noalias !1303, !nonnull !5, !noundef !5
  %i.qw = getelementptr inbounds nuw [40 x i8], ptr %i.qv, i64 %i.qr ; 4 uses
  store i64 1, ptr %i.qw, align 8, !noalias !1303
  %.sroa.47.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  store i64 %i.ql, ptr %.sroa.47.0..sroa_idx.i102, align 8, !noalias !1303
  %.sroa.58.0..sroa_idx.i103 = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  store i64 %i.qm, ptr %.sroa.58.0..sroa_idx.i103, align 8, !noalias !1303
  %.sroa.69.0..sroa_idx.i104 = getelementptr inbounds nuw i8, ptr %i.qw, i64 24
  store i64 %i.qn, ptr %.sroa.69.0..sroa_idx.i104, align 8, !noalias !1303
  %i.qx = add i64 %i.qr, 1
  store i64 %i.qx, ptr %i.qq, align 8, !alias.scope !1307, !noalias !1303
  br i1 %i.vx, label %bb.eh, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread311

bb.eg:                                            ; preds = %._crit_edge512.i
  br i1 %i.vx, label %._crit_edge898, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread311

._crit_edge898:                                   ; preds = %bb.eg
  %.pre904 = add i64 %.sroa.09.3.i124, %.sroa.0.0
  %.pre906 = add i64 %.sroa.039.3.i, %.sroa.0197.0
  br label %bb.eh

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gh, %bb.ek, %bb.ev, %bb.fi, %bb.fu, %bb.fw, %bb.ew, %bb.fj, %.lr.ph484.split.i, %bb.gs, %.invoke.i106, %bb.ei, %bb.ef
  %lpad.loopexit.split-lp1630 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.b) #26
          to label %common.resume unwind label %bb.gw, !noalias !1303

bb.eh:                                            ; preds = %._crit_edge898, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101
  %.pre-phi907 = phi i64 [ %.pre906, %._crit_edge898 ], [ %i.qn, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101 ]
  %.pre-phi905 = phi i64 [ %.pre904, %._crit_edge898 ], [ %i.ql, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101 ]
  %i.qy = sub nuw i64 %i.gk, %.sroa.039.3.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.qz = load ptr, ptr %.val51, align 8, !alias.scope !1308, !noalias !1303, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 120 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qz, i64 136 ; 2 uses
  %i.rc = load i64, ptr %i.rb, align 8, !alias.scope !1309, !noalias !1303, !noundef !5 ; 3 uses
  %i.rd = load i64, ptr %i.ra, align 8, !range !10, !alias.scope !1309, !noalias !1303, !noundef !5
  %i.re = icmp eq i64 %i.rc, %i.rd
  br i1 %i.re, label %bb.ei, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i86

bb.ei:                                            ; preds = %bb.eh
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ra)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i86 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1303

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i86: ; preds = %bb.ei, %bb.eh
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qz, i64 128
  %i.rg = load ptr, ptr %i.rf, align 8, !alias.scope !1309, !noalias !1303, !nonnull !5, !noundef !5
  %i.rh = getelementptr inbounds nuw [40 x i8], ptr %i.rg, i64 %i.rc ; 4 uses
  store i64 2, ptr %i.rh, align 8, !noalias !1303
  %.sroa.417.0..sroa_idx.i87 = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  store i64 %.pre-phi905, ptr %.sroa.417.0..sroa_idx.i87, align 8, !noalias !1303
  %.sroa.518.0..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %i.rh, i64 16
  store i64 %.pre-phi907, ptr %.sroa.518.0..sroa_idx.i88, align 8, !noalias !1303
  %.sroa.619.0..sroa_idx.i89 = getelementptr inbounds nuw i8, ptr %i.rh, i64 24
  store i64 %i.qy, ptr %.sroa.619.0..sroa_idx.i89, align 8, !noalias !1303
  %i.ri = add i64 %i.rc, 1
  store i64 %i.ri, ptr %i.rb, align 8, !alias.scope !1309, !noalias !1303
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread311

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread311: ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101, %bb.eg, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i86
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.b), !noalias !1303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1303
  br label %bb.ba

bb.ej:                                            ; preds = %bb.el, %.lr.ph511.i
  %i.rj = mul i64 %.sroa.09.0509.i, %i.pv         ; 4 uses
  %i.rk = add i64 %.sroa.09.0509.i, %.sroa.0.0    ; 4 uses
  %i.rl = add i64 %.sroa.039.0508.i, %.sroa.0197.0 ; 4 uses
  %i.rm = sub i64 %i.rl, %i.aq                    ; 3 uses
  %i.rn = icmp ult i64 %i.rm, %i.ap
  br i1 %i.rn, label %bb.em, label %.invoke.i106

.invoke.i106:                                     ; preds = %bb.gq, %bb.go, %bb.gm, %bb.gl, %bb.gj, %bb.es, %bb.eq, %bb.ep, %bb.eo, %bb.em, %bb.ej, %bb.fr, %bb.fp, %bb.fo, %bb.fn, %bb.fl, %bb.fe, %bb.fc, %bb.fb, %bb.fa, %bb.ey, %bb.fy, %bb.fv, %bb.gb, %bb.ga, %bb.gv, %bb.gu
  %i.ro = phi i64 [ %i.uc, %bb.fe ], [ %.reass.i150, %bb.gu ], [ %.reass486.i, %bb.gv ], [ %i.vq, %bb.fr ], [ %i.rm, %bb.ej ], [ %i.xb, %bb.gb ], [ %i.ap, %bb.fv ], [ %i.wu, %bb.ga ], [ %i.am, %bb.fy ], [ %i.tm, %bb.ey ], [ %i.tq, %bb.fa ], [ %i.tu, %bb.fc ], [ %i.ts, %bb.fb ], [ %i.uy, %bb.fl ], [ %i.vc, %bb.fn ], [ %i.vi, %bb.fp ], [ %i.ve, %bb.fo ], [ %i.rx, %bb.eo ], [ %i.rz, %bb.ep ], [ %i.sp, %bb.es ], [ %i.rt, %bb.em ], [ %i.se, %bb.eq ], [ %i.xy, %bb.gl ], [ %.reass.us.i153, %bb.gj ], [ %i.yr, %bb.gq ], [ %i.yc, %bb.gm ], [ %i.yi, %bb.go ]
  %i.rp = phi i64 [ %.pre745.i.a, %bb.fe ], [ %i.ap, %bb.gu ], [ %i.am, %bb.gv ], [ %.pre743.i, %bb.fr ], [ %i.ap, %bb.ej ], [ %i.ww, %bb.gb ], [ %i.ap, %bb.fv ], [ %i.ww, %bb.ga ], [ %i.am, %bb.fy ], [ %i.ap, %bb.ey ], [ %.pre745.i.a, %bb.fa ], [ %.pre745.i.a, %bb.fc ], [ %.pre745.i.a, %bb.fb ], [ %i.am, %bb.fl ], [ %.pre743.i, %bb.fn ], [ %.pre743.i, %bb.fp ], [ %.pre743.i, %bb.fo ], [ %.pre741.i, %bb.eo ], [ %.pre741.i, %bb.ep ], [ %.pre741.i, %bb.es ], [ %i.am, %bb.em ], [ %.pre741.i, %bb.eq ], [ %i.ya, %bb.gl ], [ %i.ap, %bb.gj ], [ %i.yq, %bb.gq ], [ %i.ya, %bb.gm ], [ %i.yj, %bb.go ]
  %i.rq = phi ptr [ @91, %bb.fe ], [ @102, %bb.gu ], [ @103, %bb.gv ], [ @97, %bb.fr ], [ @80, %bb.ej ], [ @101, %bb.gb ], [ @98, %bb.fv ], [ @100, %bb.ga ], [ @99, %bb.fy ], [ @86, %bb.ey ], [ @88, %bb.fa ], [ @89, %bb.fc ], [ @90, %bb.fb ], [ @93, %bb.fl ], [ @94, %bb.fn ], [ @95, %bb.fp ], [ @96, %bb.fo ], [ @82, %bb.eo ], [ @84, %bb.ep ], [ @85, %bb.es ], [ @81, %bb.em ], [ @83, %bb.eq ], [ @104, %bb.gl ], [ @102, %bb.gj ], [ @107, %bb.gq ], [ @105, %bb.gm ], [ @106, %bb.go ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ro, i64 noundef %i.rp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.rq) #28
          to label %.cont.i107 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1303

.cont.i107:                                       ; preds = %.invoke.i106
  unreachable

bb.ek:                                            ; preds = %.lr.ph511.i
  %i.rr = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.el unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1303

bb.el:                                            ; preds = %bb.ek
  br i1 %i.rr, label %.loopexit24.i126, label %bb.ej

bb.em:                                            ; preds = %bb.ej
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.rm ; 2 uses
  %i.rt = sub i64 %i.rk, %i.an                    ; 3 uses
  %i.ru = icmp ult i64 %i.rt, %i.am
  br i1 %i.ru, label %bb.en, label %.invoke.i106

bb.en:                                            ; preds = %bb.em
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.rt ; 2 uses
  %.val212.i108 = load i64, ptr %i.rs, align 8, !noalias !1303, !noundef !5
  %.val213.i109 = load i64, ptr %i.rv, align 8, !noalias !1303, !noundef !5
  %i.rw = icmp eq i64 %.val212.i108, %.val213.i109
  %.pre.i110 = load ptr, ptr %i.qf, align 8, !noalias !1303 ; 4 uses
  %.pre741.i = load i64, ptr %i.qg, align 8, !noalias !1303 ; 8 uses
  br i1 %i.rw, label %bb.eo, label %._crit_edge747.i

._crit_edge747.i:                                 ; preds = %bb.en
  %.pre748.i = add nuw i64 %.sroa.09.0509.i, 1
  %.pre749.i = mul i64 %.pre748.i, %i.pv
  br label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.rx = add i64 %i.rj, %.sroa.039.0508.i        ; 3 uses
  %i.ry = icmp ult i64 %i.rx, %.pre741.i
  br i1 %i.ry, label %bb.eq, label %.invoke.i106

bb.ep:                                            ; preds = %bb.er, %._crit_edge747.i
  %.pre-phi750.i = phi i64 [ %.pre749.i, %._crit_edge747.i ], [ %i.sc, %bb.er ] ; 3 uses
  %i.rz = add i64 %.pre-phi750.i, %.sroa.039.0508.i ; 3 uses
  %i.sa = icmp ult i64 %i.rz, %.pre741.i
  br i1 %i.sa, label %bb.es, label %.invoke.i106

bb.eq:                                            ; preds = %bb.eo
  %i.sb = add nuw i64 %.sroa.09.0509.i, 1
  %i.sc = mul i64 %i.sb, %i.pv                    ; 2 uses
  %i.sd = add nuw i64 %.sroa.039.0508.i, 1
  %i.se = add i64 %i.sd, %i.sc                    ; 3 uses
  %i.sf = icmp ult i64 %i.se, %.pre741.i
  br i1 %i.sf, label %bb.er, label %.invoke.i106

bb.er:                                            ; preds = %bb.eq
  %i.sg = getelementptr inbounds nuw i8, ptr %.pre.i110, i64 %i.rx
  %i.sh = load i8, ptr %i.sg, align 1, !noalias !1303, !noundef !5
  %i.si = getelementptr inbounds nuw i8, ptr %.pre.i110, i64 %i.se
  %i.sj = load i8, ptr %i.si, align 1, !noalias !1303, !noundef !5
  %i.sk = add i8 %i.sj, 1
  %i.sl = icmp eq i8 %i.sh, %i.sk
  br i1 %i.sl, label %.preheader.i137, label %bb.ep

.preheader.i137:                                  ; preds = %bb.er
  %i.sm = icmp ult i64 %.sroa.09.0509.i, %i.gj
  %i.sn = icmp ult i64 %.sroa.039.0508.i, %i.gk
  %or.cond177494.i = select i1 %i.sm, i1 %i.sn, i1 false
  br i1 %or.cond177494.i, label %.lr.ph497.i, label %._crit_edge498.i

bb.es:                                            ; preds = %bb.ep
  %i.so = add i64 %.sroa.039.0508.i, 1            ; 3 uses
  %i.sp = add i64 %i.so, %i.rj                    ; 3 uses
  %i.sq = icmp ult i64 %i.sp, %.pre741.i
  br i1 %i.sq, label %bb.et, label %.invoke.i106

bb.et:                                            ; preds = %bb.es
  %i.sr = getelementptr inbounds nuw i8, ptr %.pre.i110, i64 %i.rz
  %i.ss = load i8, ptr %i.sr, align 1, !noalias !1303, !noundef !5
  %i.st = getelementptr inbounds nuw i8, ptr %.pre.i110, i64 %i.sp
  %i.su = load i8, ptr %i.st, align 1, !noalias !1303, !noundef !5
  %.not164.i111 = icmp ult i8 %i.ss, %i.su
  br i1 %.not164.i111, label %.preheader25.i128, label %.preheader30.i112

.preheader30.i112:                                ; preds = %bb.et
  %umax.i113 = call i64 @llvm.umax.i64(i64 %.sroa.09.0509.i, i64 %i.gj) ; 3 uses
  %exitcond.not.i1151534.not = icmp ult i64 %.sroa.09.0509.i, %i.gj
  br i1 %exitcond.not.i1151534.not, label %.lr.ph1536, label %._crit_edge1537

.preheader25.i128:                                ; preds = %bb.et
  %i.sv = icmp ult i64 %.sroa.039.0508.i, %i.gk
  br i1 %i.sv, label %.lr.ph489.i, label %._crit_edge.i129

.lr.ph489.i:                                      ; preds = %.preheader25.i128
  %i.sw = add i64 %.pre-phi750.i, 1
  %i.sx = add i64 %i.rj, 1
  br label %bb.eu

bb.eu:                                            ; preds = %bb.fg, %.lr.ph489.i
  %.sroa.039.1488.i = phi i64 [ %.sroa.039.0508.i, %.lr.ph489.i ], [ %i.uj, %bb.fg ] ; 9 uses
  %i.sy = and i64 %.sroa.039.1488.i, 1023
  %i.sz = icmp eq i64 %i.sy, 0
  %or.cond173.i134 = and i1 %.sroa.05.0.not510.i, %i.sz
  br i1 %or.cond173.i134, label %bb.ew, label %bb.ey

._crit_edge.i129:                                 ; preds = %bb.fg, %bb.ff, %bb.fd, %.preheader25.i128
  %.sroa.039.1.lcssa.i = phi i64 [ %.sroa.039.0508.i, %.preheader25.i128 ], [ %i.gk, %bb.fg ], [ %.sroa.039.1488.i, %bb.ff ], [ %.sroa.039.1488.i, %bb.fd ] ; 2 uses
  %i.ta = sub nuw i64 %.sroa.039.1.lcssa.i, %.sroa.039.0508.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.tb = load ptr, ptr %.val51, align 8, !alias.scope !1310, !noalias !1303, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 120 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 136 ; 2 uses
  %i.te = load i64, ptr %i.td, align 8, !alias.scope !1311, !noalias !1303, !noundef !5 ; 3 uses
  %i.tf = load i64, ptr %i.tc, align 8, !range !10, !alias.scope !1311, !noalias !1303, !noundef !5
  %i.tg = icmp eq i64 %i.te, %i.tf
  br i1 %i.tg, label %bb.ev, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i130

bb.ev:                                            ; preds = %._crit_edge.i129
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.tc)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i130 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1303

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i130: ; preds = %bb.ev, %._crit_edge.i129
  %i.th = getelementptr inbounds nuw i8, ptr %i.tb, i64 128
  %i.ti = load ptr, ptr %i.th, align 8, !alias.scope !1311, !noalias !1303, !nonnull !5, !noundef !5
  %i.tj = getelementptr inbounds nuw [40 x i8], ptr %i.ti, i64 %i.te ; 4 uses
  store i64 2, ptr %i.tj, align 8, !noalias !1303
  %.sroa.412.0..sroa_idx.i131 = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  store i64 %i.rk, ptr %.sroa.412.0..sroa_idx.i131, align 8, !noalias !1303
  %.sroa.513.0..sroa_idx.i132 = getelementptr inbounds nuw i8, ptr %i.tj, i64 16
  store i64 %i.rl, ptr %.sroa.513.0..sroa_idx.i132, align 8, !noalias !1303
  %.sroa.614.0..sroa_idx.i133 = getelementptr inbounds nuw i8, ptr %i.tj, i64 24
  store i64 %i.ta, ptr %.sroa.614.0..sroa_idx.i133, align 8, !noalias !1303
  %i.tk = add i64 %i.te, 1
  store i64 %i.tk, ptr %i.td, align 8, !alias.scope !1311, !noalias !1303
  br label %bb.ft

bb.ew:                                            ; preds = %bb.eu
  %i.tl = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.ex unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1303

bb.ex:                                            ; preds = %bb.ew
  br i1 %i.tl, label %.loopexit24.i126, label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.eu
  %i.tm = add i64 %.sroa.039.1488.i, %invariant.op.i94 ; 3 uses
  %i.tn = icmp ult i64 %i.tm, %i.ap
  br i1 %i.tn, label %bb.ez, label %.invoke.i106

bb.ez:                                            ; preds = %bb.ey
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.tm
  %.val210.i135 = load i64, ptr %i.to, align 8, !noalias !1303, !noundef !5
  %.val211.i136 = load i64, ptr %i.rv, align 8, !noalias !1303, !noundef !5
  %i.tp = icmp eq i64 %.val210.i135, %.val211.i136
  %.pre744.i.a = load ptr, ptr %i.qf, align 8, !noalias !1303 ; 4 uses
  %.pre745.i.a = load i64, ptr %i.qg, align 8, !noalias !1303 ; 8 uses
  br i1 %i.tp, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.tq = add i64 %.sroa.039.1488.i, %i.rj        ; 3 uses
  %i.tr = icmp ult i64 %i.tq, %.pre745.i.a
  br i1 %i.tr, label %bb.fc, label %.invoke.i106

bb.fb:                                            ; preds = %bb.fd, %bb.ez
  %i.ts = add i64 %.sroa.039.1488.i, %.pre-phi750.i ; 3 uses
  %i.tt = icmp ult i64 %i.ts, %.pre745.i.a
  br i1 %i.tt, label %bb.fe, label %.invoke.i106

bb.fc:                                            ; preds = %bb.fa
  %i.tu = add i64 %i.sw, %.sroa.039.1488.i        ; 3 uses
  %i.tv = icmp ult i64 %i.tu, %.pre745.i.a
  br i1 %i.tv, label %bb.fd, label %.invoke.i106

bb.fd:                                            ; preds = %bb.fc
  %i.tw = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.tq
  %i.tx = load i8, ptr %i.tw, align 1, !noalias !1303, !noundef !5
  %i.ty = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.tu
  %i.tz = load i8, ptr %i.ty, align 1, !noalias !1303, !noundef !5
  %i.ua = add i8 %i.tz, 1
  %i.ub = icmp eq i8 %i.tx, %i.ua
  br i1 %i.ub, label %._crit_edge.i129, label %bb.fb

bb.fe:                                            ; preds = %bb.fb
  %i.uc = add i64 %i.sx, %.sroa.039.1488.i        ; 3 uses
  %i.ud = icmp ult i64 %i.uc, %.pre745.i.a
  br i1 %i.ud, label %bb.ff, label %.invoke.i106

bb.ff:                                            ; preds = %bb.fe
  %i.ue = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.ts
  %i.uf = load i8, ptr %i.ue, align 1, !noalias !1303, !noundef !5
  %i.ug = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.uc
  %i.uh = load i8, ptr %i.ug, align 1, !noalias !1303, !noundef !5
  %i.ui = icmp ult i8 %i.uf, %i.uh
  br i1 %i.ui, label %bb.fg, label %._crit_edge.i129

bb.fg:                                            ; preds = %bb.ff
  %i.uj = add nuw i64 %.sroa.039.1488.i, 1        ; 2 uses
  %i.uk = icmp ult i64 %i.uj, %i.gk
  br i1 %i.uk, label %bb.eu, label %._crit_edge.i129

bb.fh:                                            ; preds = %bb.fs
  %exitcond.not.i115 = icmp eq i64 %.pre-phi752.i, %umax.i113
  br i1 %exitcond.not.i115, label %._crit_edge1537, label %.lr.ph1536

.lr.ph1536:                                       ; preds = %.preheader30.i112, %bb.fh
  %.sroa.09.1.i1141535 = phi i64 [ %.pre-phi752.i, %bb.fh ], [ %.sroa.09.0509.i, %.preheader30.i112 ] ; 6 uses
  br i1 %or.cond170.i105, label %bb.fj, label %bb.fl

._crit_edge1537:                                  ; preds = %bb.fh, %bb.fq, %bb.fs, %.preheader30.i112
  %.sroa.09.1.lcssa.i119 = phi i64 [ %umax.i113, %.preheader30.i112 ], [ %umax.i113, %bb.fh ], [ %.sroa.09.1.i1141535, %bb.fq ], [ %.sroa.09.1.i1141535, %bb.fs ] ; 2 uses
  %i.ul = sub nuw i64 %.sroa.09.1.lcssa.i119, %.sroa.09.0509.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.um = load ptr, ptr %.val51, align 8, !alias.scope !1312, !noalias !1303, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 120 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.um, i64 136 ; 2 uses
  %i.up = load i64, ptr %i.uo, align 8, !alias.scope !1313, !noalias !1303, !noundef !5 ; 3 uses
  %i.uq = load i64, ptr %i.un, align 8, !range !10, !alias.scope !1313, !noalias !1303, !noundef !5
  %i.ur = icmp eq i64 %i.up, %i.uq
  br i1 %i.ur, label %bb.fi, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i120

bb.fi:                                            ; preds = %._crit_edge1537
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.un)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1303

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i120: ; preds = %bb.fi, %._crit_edge1537
  %i.us = getelementptr inbounds nuw i8, ptr %i.um, i64 128
  %i.ut = load ptr, ptr %i.us, align 8, !alias.scope !1313, !noalias !1303, !nonnull !5, !noundef !5
  %i.uu = getelementptr inbounds nuw [40 x i8], ptr %i.ut, i64 %i.up ; 4 uses
  store i64 1, ptr %i.uu, align 8, !noalias !1303
  %.sroa.42.0..sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  store i64 %i.rk, ptr %.sroa.42.0..sroa_idx.i121, align 8, !noalias !1303
  %.sroa.53.0..sroa_idx.i122 = getelementptr inbounds nuw i8, ptr %i.uu, i64 16
  store i64 %i.ul, ptr %.sroa.53.0..sroa_idx.i122, align 8, !noalias !1303
  %.sroa.64.0..sroa_idx.i123 = getelementptr inbounds nuw i8, ptr %i.uu, i64 24
  store i64 %i.rl, ptr %.sroa.64.0..sroa_idx.i123, align 8, !noalias !1303
  %i.uv = add i64 %i.up, 1
  store i64 %i.uv, ptr %i.uo, align 8, !alias.scope !1313, !noalias !1303
  br label %bb.ft

bb.fj:                                            ; preds = %.lr.ph1536
  %i.uw = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1303

bb.fk:                                            ; preds = %bb.fj
  br i1 %i.uw, label %.loopexit24.i126, label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %.lr.ph1536
  %i.ux = mul i64 %.sroa.09.1.i1141535, %i.pv     ; 2 uses
  %i.uy = add i64 %.sroa.09.1.i1141535, %invariant.op485.i ; 3 uses
  %i.uz = icmp ult i64 %i.uy, %i.am
  br i1 %i.uz, label %bb.fm, label %.invoke.i106

bb.fm:                                            ; preds = %bb.fl
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.uy
  %.val208.i116 = load i64, ptr %i.rs, align 8, !noalias !1303, !noundef !5
  %.val209.i117 = load i64, ptr %i.va, align 8, !noalias !1303, !noundef !5
  %i.vb = icmp eq i64 %.val208.i116, %.val209.i117
  %.pre742.i = load ptr, ptr %i.qf, align 8, !noalias !1303 ; 4 uses
  %.pre743.i = load i64, ptr %i.qg, align 8, !noalias !1303 ; 8 uses
  br i1 %i.vb, label %bb.fn, label %._crit_edge746.i

._crit_edge746.i:                                 ; preds = %bb.fm
  %.pre751.i = add i64 %.sroa.09.1.i1141535, 1    ; 2 uses
  %.pre753.i = mul i64 %.pre751.i, %i.pv
  br label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.vc = add i64 %i.ux, %.sroa.039.0508.i        ; 3 uses
  %i.vd = icmp ult i64 %i.vc, %.pre743.i
  br i1 %i.vd, label %bb.fp, label %.invoke.i106

bb.fo:                                            ; preds = %bb.fq, %._crit_edge746.i
  %.pre-phi754.i.a = phi i64 [ %.pre753.i, %._crit_edge746.i ], [ %i.vh, %bb.fq ]
  %.pre-phi752.i = phi i64 [ %.pre751.i, %._crit_edge746.i ], [ %i.vg, %bb.fq ] ; 2 uses
  %i.ve = add i64 %.pre-phi754.i.a, %.sroa.039.0508.i ; 3 uses
  %i.vf = icmp ult i64 %i.ve, %.pre743.i
  br i1 %i.vf, label %bb.fr, label %.invoke.i106

bb.fp:                                            ; preds = %bb.fn
  %i.vg = add i64 %.sroa.09.1.i1141535, 1         ; 2 uses
  %i.vh = mul i64 %i.vg, %i.pv                    ; 2 uses
  %i.vi = add i64 %i.vh, %i.so                    ; 3 uses
  %i.vj = icmp ult i64 %i.vi, %.pre743.i
  br i1 %i.vj, label %bb.fq, label %.invoke.i106

bb.fq:                                            ; preds = %bb.fp
  %i.vk = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.vc
  %i.vl = load i8, ptr %i.vk, align 1, !noalias !1303, !noundef !5
  %i.vm = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.vi
  %i.vn = load i8, ptr %i.vm, align 1, !noalias !1303, !noundef !5
  %i.vo = add i8 %i.vn, 1
  %i.vp = icmp eq i8 %i.vl, %i.vo
  br i1 %i.vp, label %._crit_edge1537, label %bb.fo

bb.fr:                                            ; preds = %bb.fo
  %i.vq = add i64 %i.ux, %i.so                    ; 3 uses
  %i.vr = icmp ult i64 %i.vq, %.pre743.i
  br i1 %i.vr, label %bb.fs, label %.invoke.i106

bb.fs:                                            ; preds = %bb.fr
  %i.vs = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.ve
  %i.vt = load i8, ptr %i.vs, align 1, !noalias !1303, !noundef !5
  %i.vu = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.vq
  %i.vv = load i8, ptr %i.vu, align 1, !noalias !1303, !noundef !5
  %.not167.i118 = icmp ult i8 %i.vt, %i.vv
  br i1 %.not167.i118, label %._crit_edge1537, label %bb.fh

bb.ft:                                            ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i139, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i120, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i130
  %.sroa.039.3.i = phi i64 [ %.sroa.039.0508.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i120 ], [ %.sroa.039.1.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i130 ], [ %.sroa.039.4.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i139 ] ; 5 uses
  %.sroa.09.3.i124 = phi i64 [ %.sroa.09.1.lcssa.i119, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i120 ], [ %.sroa.09.0509.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i130 ], [ %.sroa.09.4.lcssa.i138, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i139 ] ; 5 uses
  %i.vw = icmp ult i64 %.sroa.09.3.i124, %i.gj    ; 2 uses
  %i.vx = icmp ult i64 %.sroa.039.3.i, %i.gk      ; 3 uses
  %or.cond.i125 = select i1 %i.vw, i1 %i.vx, i1 false
  br i1 %or.cond.i125, label %.lr.ph511.i, label %._crit_edge512.i

._crit_edge498.i:                                 ; preds = %bb.gd, %bb.gc, %bb.fz, %.preheader.i137
  %.sroa.039.4.lcssa.i = phi i64 [ %.sroa.039.0508.i, %.preheader.i137 ], [ %i.xa, %bb.gd ], [ %.sroa.039.4495.i, %bb.fz ], [ %.sroa.039.4495.i, %bb.gc ]
  %.sroa.09.4.lcssa.i138 = phi i64 [ %.sroa.09.0509.i, %.preheader.i137 ], [ %i.wy, %bb.gd ], [ %.sroa.09.4496.i, %bb.fz ], [ %.sroa.09.4496.i, %bb.gc ] ; 2 uses
  %i.vy = sub i64 %.sroa.09.4.lcssa.i138, %.sroa.09.0509.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.vz = load ptr, ptr %.val51, align 8, !alias.scope !1314, !noalias !1303, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 120 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vz, i64 136 ; 2 uses
  %i.wc = load i64, ptr %i.wb, align 8, !alias.scope !1315, !noalias !1303, !noundef !5 ; 3 uses
  %i.wd = load i64, ptr %i.wa, align 8, !range !10, !alias.scope !1315, !noalias !1303, !noundef !5
  %i.we = icmp eq i64 %i.wc, %i.wd
  br i1 %i.we, label %bb.fu, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i139

bb.fu:                                            ; preds = %._crit_edge498.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.wa)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i139 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1303

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i139: ; preds = %bb.fu, %._crit_edge498.i
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vz, i64 128
  %i.wg = load ptr, ptr %i.wf, align 8, !alias.scope !1315, !noalias !1303, !nonnull !5, !noundef !5
  %i.wh = getelementptr inbounds nuw [40 x i8], ptr %i.wg, i64 %i.wc ; 4 uses
  store i64 0, ptr %i.wh, align 8, !noalias !1303
  %.sroa.4.0..sroa_idx.i140 = getelementptr inbounds nuw i8, ptr %i.wh, i64 8
  store i64 %i.rk, ptr %.sroa.4.0..sroa_idx.i140, align 8, !noalias !1303
  %.sroa.5.0..sroa_idx.i141 = getelementptr inbounds nuw i8, ptr %i.wh, i64 16
  store i64 %i.rl, ptr %.sroa.5.0..sroa_idx.i141, align 8, !noalias !1303
  %.sroa.6.0..sroa_idx.i142 = getelementptr inbounds nuw i8, ptr %i.wh, i64 24
  store i64 %i.vy, ptr %.sroa.6.0..sroa_idx.i142, align 8, !noalias !1303
  %i.wi = add i64 %i.wc, 1
  store i64 %i.wi, ptr %i.wb, align 8, !alias.scope !1315, !noalias !1303
  br label %bb.ft

.lr.ph497.i:                                      ; preds = %.preheader.i137, %bb.gd
  %.sroa.09.4496.i = phi i64 [ %i.wy, %bb.gd ], [ %.sroa.09.0509.i, %.preheader.i137 ] ; 5 uses
  %.sroa.039.4495.i = phi i64 [ %i.xa, %bb.gd ], [ %.sroa.039.0508.i, %.preheader.i137 ] ; 6 uses
  %i.wj = and i64 %.sroa.039.4495.i, 1023
  %i.wk = icmp eq i64 %i.wj, 0
  %or.cond180.i143 = select i1 %.sroa.05.0.not510.i, i1 %i.wk, i1 false
  br i1 %or.cond180.i143, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fx, %.lr.ph497.i
  %i.wl = mul i64 %.sroa.09.4496.i, %i.pv
  %i.wm = add i64 %.sroa.039.4495.i, %invariant.op.i94 ; 2 uses
  %i.wn = icmp ult i64 %i.wm, %i.ap
  br i1 %i.wn, label %bb.fy, label %.invoke.i106

bb.fw:                                            ; preds = %.lr.ph497.i
  %i.wo = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1303

bb.fx:                                            ; preds = %bb.fw
  br i1 %i.wo, label %.loopexit24.i126, label %bb.fv

bb.fy:                                            ; preds = %bb.fv
  %i.wp = add i64 %.sroa.09.4496.i, %invariant.op485.i ; 2 uses
  %i.wq = icmp ult i64 %i.wp, %i.am
  br i1 %i.wq, label %bb.fz, label %.invoke.i106

bb.fz:                                            ; preds = %bb.fy
  %i.wr = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.wm
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.wp
  %.val206.i144 = load i64, ptr %i.wr, align 8, !noalias !1303, !noundef !5
  %.val207.i145 = load i64, ptr %i.ws, align 8, !noalias !1303, !noundef !5
  %i.wt = icmp eq i64 %.val206.i144, %.val207.i145
  br i1 %i.wt, label %bb.ga, label %._crit_edge498.i

bb.ga:                                            ; preds = %bb.fz
  %i.wu = add i64 %i.wl, %.sroa.039.4495.i        ; 3 uses
  %i.wv = load ptr, ptr %i.qf, align 8, !noalias !1303, !nonnull !5, !noundef !5 ; 2 uses
  %i.ww = load i64, ptr %i.qg, align 8, !noalias !1303, !noundef !5 ; 4 uses
  %i.wx = icmp ult i64 %i.wu, %i.ww
  br i1 %i.wx, label %bb.gb, label %.invoke.i106

bb.gb:                                            ; preds = %bb.ga
  %i.wy = add nuw i64 %.sroa.09.4496.i, 1         ; 4 uses
  %i.wz = mul i64 %i.wy, %i.pv
  %i.xa = add nuw i64 %.sroa.039.4495.i, 1        ; 4 uses
  %i.xb = add i64 %i.xa, %i.wz                    ; 3 uses
  %i.xc = icmp ult i64 %i.xb, %i.ww
  br i1 %i.xc, label %bb.gc, label %.invoke.i106

bb.gc:                                            ; preds = %bb.gb
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wv, i64 %i.wu
  %i.xe = load i8, ptr %i.xd, align 1, !noalias !1303, !noundef !5
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wv, i64 %i.xb
  %i.xg = load i8, ptr %i.xf, align 1, !noalias !1303, !noundef !5
  %i.xh = add i8 %i.xg, 1
  %i.xi = icmp eq i8 %i.xe, %i.xh
  br i1 %i.xi, label %bb.gd, label %._crit_edge498.i

bb.gd:                                            ; preds = %bb.gc
  %i.xj = icmp ult i64 %i.wy, %i.gj
  %i.xk = icmp ult i64 %i.xa, %i.gk
  %or.cond177.i146 = and i1 %i.xj, %i.xk
  br i1 %or.cond177.i146, label %.lr.ph497.i, label %._crit_edge498.i

.loopexit24.i126:                                 ; preds = %bb.gg, %bb.gi, %bb.el, %bb.fk, %bb.ex, %bb.fx, %bb.gt
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.ge, !noalias !1303

bb.ge:                                            ; preds = %.loopexit24.i126
  %i.xl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.gf, !noalias !1303

bb.gf:                                            ; preds = %bb.ge
  %i.xm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !1303
  unreachable

bb.gg:                                            ; preds = %.lr.ph484.split.i
  br i1 %i.qi, label %.loopexit24.i126, label %.lr.ph.i147

.lr.ph.i147:                                      ; preds = %bb.gg
  %i.xn = mul i64 %i.qh, %i.pv                    ; 2 uses
  %i.xo = mul i64 %.sroa.0102.0483.i, %i.pv       ; 2 uses
  %.reass486.i = add i64 %i.qh, %invariant.op485.i ; 3 uses
  %i.xp = icmp ult i64 %.reass486.i, %i.am
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.reass486.i
  %.fr.i148 = freeze i1 %i.xp
  br i1 %.fr.i148, label %.lr.ph.split.us.i151, label %.lr.ph.split.i149

.lr.ph.split.us.i151:                             ; preds = %.lr.ph.i147, %bb.gr
  %.sroa.0105.0432.us.i152 = phi i64 [ %i.xr, %bb.gr ], [ %i.gk, %.lr.ph.i147 ] ; 3 uses
  %i.xr = add i64 %.sroa.0105.0432.us.i152, -1    ; 6 uses
  %i.xs = and i64 %i.xr, 1023
  %i.xt = icmp eq i64 %i.xs, 0
  br i1 %i.xt, label %bb.gh, label %bb.gj

bb.gh:                                            ; preds = %.lr.ph.split.us.i151
  %i.xu = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1303

bb.gi:                                            ; preds = %bb.gh
end_hunk_1
begin_hunk_2_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactIBT_mEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter:bb.a
  %i.zr = add i64 %i.zl, 1
  store i64 %i.zr, ptr %i.zk, align 8, !alias.scope !1322, !noalias !1323
  %i.zs = sub nuw i64 %i.as, %.sroa.0197.0
  call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  call void @llvm.experimental.noalias.scope.decl(metadata !1326), !noalias !1327
  %i.zt = load ptr, ptr %i.zh, align 8, !alias.scope !1328, !noalias !1327, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 120 ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zt, i64 136 ; 2 uses
  %i.zw = load i64, ptr %i.zv, align 8, !alias.scope !1329, !noalias !1330, !noundef !5 ; 3 uses
  %i.zx = load i64, ptr %i.zu, align 8, !range !10, !alias.scope !1329, !noalias !1330, !noundef !5
  %i.zy = icmp eq i64 %i.zw, %i.zx
  br i1 %i.zy, label %bb.ha, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit162

bb.ha:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit161
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zu), !noalias !1331
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit162

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit162: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit161, %bb.ha
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zt, i64 128
  %i.aaa = load ptr, ptr %i.zz, align 8, !alias.scope !1329, !noalias !1330, !nonnull !5, !noundef !5
  %i.aab = getelementptr inbounds nuw [40 x i8], ptr %i.aaa, i64 %i.zw ; 4 uses
  store i64 2, ptr %i.aab, align 8, !noalias !1330
  %.sroa.4273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aab, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4273.0..sroa_idx, align 8, !noalias !1330
  %.sroa.5274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aab, i64 16
  store i64 %.sroa.0197.0, ptr %.sroa.5274.0..sroa_idx, align 8, !noalias !1330
  %.sroa.6275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aab, i64 24
  store i64 %i.zs, ptr %.sroa.6275.0..sroa_idx, align 8, !noalias !1330
  %i.aac = add i64 %i.zw, 1
  store i64 %i.aac, ptr %i.zv, align 8, !alias.scope !1329, !noalias !1330
  br label %bb.ba

.thread:                                          ; preds = %bb.az
  %i.aad = sub nuw i64 %i.as, %.sroa.0197.0
  call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  %i.aae = load ptr, ptr %0, align 8, !alias.scope !1334, !nonnull !5, !align !6, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  call void @llvm.experimental.noalias.scope.decl(metadata !1336), !noalias !1334
  %i.aaf = load ptr, ptr %i.aae, align 8, !alias.scope !1337, !noalias !1334, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 120 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aaf, i64 136 ; 2 uses
  %i.aai = load i64, ptr %i.aah, align 8, !alias.scope !1338, !noalias !1339, !noundef !5 ; 3 uses
  %i.aaj = load i64, ptr %i.aag, align 8, !range !10, !alias.scope !1338, !noalias !1339, !noundef !5
  %i.aak = icmp eq i64 %i.aai, %i.aaj
  br i1 %i.aak, label %bb.hb, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit163

bb.hb:                                            ; preds = %.thread
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aag), !noalias !1340
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit163

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit163: ; preds = %.thread, %bb.hb
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aaf, i64 128
  %i.aam = load ptr, ptr %i.aal, align 8, !alias.scope !1338, !noalias !1339, !nonnull !5, !noundef !5
  %i.aan = getelementptr inbounds nuw [40 x i8], ptr %i.aam, i64 %i.aai ; 4 uses
  store i64 2, ptr %i.aan, align 8, !noalias !1339
  %.sroa.4268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aan, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4268.0..sroa_idx, align 8, !noalias !1339
  %.sroa.5269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aan, i64 16
  store i64 %.sroa.0197.0, ptr %.sroa.5269.0..sroa_idx, align 8, !noalias !1339
  %.sroa.6270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aan, i64 24
  store i64 %i.aad, ptr %.sroa.6270.0..sroa_idx, align 8, !noalias !1339
  %i.aao = add i64 %i.aai, 1
  store i64 %i.aao, ptr %i.aah, align 8, !alias.scope !1338, !noalias !1339
  br label %bb.ba

bb.hc:                                            ; preds = %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  %i.aap = load ptr, ptr %0, align 8, !alias.scope !1343, !nonnull !5, !align !6, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  call void @llvm.experimental.noalias.scope.decl(metadata !1345), !noalias !1343
  %i.aaq = load ptr, ptr %i.aap, align 8, !alias.scope !1346, !noalias !1343, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 120 ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aaq, i64 136 ; 2 uses
  %i.aat = load i64, ptr %i.aas, align 8, !alias.scope !1347, !noalias !1348, !noundef !5 ; 3 uses
  %i.aau = load i64, ptr %i.aar, align 8, !range !10, !alias.scope !1347, !noalias !1348, !noundef !5
  %i.aav = icmp eq i64 %i.aat, %i.aau
  br i1 %i.aav, label %bb.hd, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit164

bb.hd:                                            ; preds = %bb.hc
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aar), !noalias !1349
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit164

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit164: ; preds = %bb.hc, %bb.hd
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aaq, i64 128
  %i.aax = load ptr, ptr %i.aaw, align 8, !alias.scope !1347, !noalias !1348, !nonnull !5, !noundef !5
  %i.aay = getelementptr inbounds nuw [40 x i8], ptr %i.aax, i64 %i.aat ; 4 uses
  store i64 0, ptr %i.aay, align 8, !noalias !1348
  %.sroa.4238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aay, i64 8
  store i64 %i.ar, ptr %.sroa.4238.0..sroa_idx, align 8, !noalias !1348
  %.sroa.5239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aay, i64 16
  store i64 %i.as, ptr %.sroa.5239.0..sroa_idx, align 8, !noalias !1348
  %.sroa.6240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aay, i64 24
  store i64 %.sroa.0.0.i54, ptr %.sroa.6240.0..sroa_idx, align 8, !noalias !1348
  %i.aaz = add i64 %i.aat, 1
  store i64 %i.aaz, ptr %i.aas, align 8, !alias.scope !1347, !noalias !1348
  br label %bb.he

bb.he:                                            ; preds = %bb.ba, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit164
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = tail call fastcc noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit, %bb.a
  %i.i = add i64 %i.h, %2                         ; 3 uses
  %i.j = add i64 %i.h, %5                         ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1570)
  %i.k = icmp uge i64 %i.i, %3
  %i.l = icmp uge i64 %i.j, %6
  %or.cond.i53 = or i1 %i.k, %i.l
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  br i1 %or.cond.i53, label %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge, label %.lr.ph.i.i.i.i

._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge: ; preds = %bb.b
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert886 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.pre887 = load i64, ptr %.phi.trans.insert886, align 8
  %.phi.trans.insert888 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre889 = load ptr, ptr %.phi.trans.insert888, align 8
  %.phi.trans.insert890 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre891 = load i64, ptr %.phi.trans.insert890, align 8
  %.phi.trans.insert892 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre893 = load i64, ptr %.phi.trans.insert892, align 8
  %.phi.trans.insert894 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre895 = load ptr, ptr %.phi.trans.insert894, align 8
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = sub nuw i64 %3, %i.i                     ; 2 uses
  %i.s = sub nuw i64 %6, %i.j                     ; 2 uses
  %i.t = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !1570 ; 4 uses
  %i.u = load i64, ptr %i.m, align 8, !alias.scope !1570 ; 5 uses
  %i.v = load ptr, ptr %i.n, align 8, !alias.scope !1570, !nonnull !5 ; 4 uses
  %i.w = load i64, ptr %i.o, align 8, !alias.scope !1569 ; 4 uses
  %i.x = load i64, ptr %i.p, align 8, !alias.scope !1569 ; 5 uses
  %i.y = load ptr, ptr %i.q, align 8, !alias.scope !1569, !nonnull !5 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %i.z = phi i64 [ %3, %.lr.ph.i.i.i.i ], [ %i.ac, %bb.g ]
  %.sroa.01.033.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ak, %bb.g ] ; 3 uses
  %i.aa = phi i64 [ %6, %.lr.ph.i.i.i.i ], [ %i.ab, %bb.g ]
  %i.ab = add i64 %i.aa, -1                       ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.01.033.i.i.i.i, %i.r
  br i1 %exitcond.not.i.i.i.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = add i64 %i.z, -1                        ; 2 uses
  %i.ad = sub i64 %i.ab, %i.t                     ; 3 uses
  %i.ae = icmp ult i64 %i.ad, %i.u
  br i1 %i.ae, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #28, !noalias !1571
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i: ; preds = %bb.d
  %i.af = sub i64 %i.ac, %i.w                     ; 3 uses
  %i.ag = icmp ult i64 %i.af, %i.x
  br i1 %i.ag, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.af, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #28, !noalias !1572
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ad
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.af
  %.val.i.i.i.i.i = load i64, ptr %i.ah, align 8, !noalias !1573, !noundef !5
  %.val10.i.i.i.i.i = load i64, ptr %i.ai, align 8, !noalias !1573, !noundef !5
  %i.aj = icmp eq i64 %.val.i.i.i.i.i, %.val10.i.i.i.i.i
  br i1 %i.aj, label %bb.g, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit

bb.g:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i
  %i.ak = add nuw i64 %.sroa.01.033.i.i.i.i, 1    ; 2 uses
  %exitcond65.not.i.i.i.i = icmp eq i64 %i.ak, %i.s
  br i1 %exitcond65.not.i.i.i.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.c

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.c, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i, %bb.g, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge
  %i.al = phi ptr [ %.pre895, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.y, %bb.g ], [ %i.y, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.y, %bb.c ] ; 10 uses
  %i.am = phi i64 [ %.pre893, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.x, %bb.g ], [ %i.x, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.x, %bb.c ] ; 23 uses
  %i.an = phi i64 [ %.pre891, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.w, %bb.g ], [ %i.w, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.w, %bb.c ] ; 5 uses
  %i.ao = phi ptr [ %.pre889, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.v, %bb.g ], [ %i.v, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.v, %bb.c ] ; 11 uses
  %i.ap = phi i64 [ %.pre887, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.u, %bb.g ], [ %i.u, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.u, %bb.c ] ; 27 uses
  %i.aq = phi i64 [ %.pre, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.t, %bb.g ], [ %i.t, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.t, %bb.c ] ; 8 uses
  %.sroa.0.0.i54 = phi i64 [ 0, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.r, %bb.c ], [ %.sroa.01.033.i.i.i.i, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.s, %bb.g ] ; 4 uses
  %i.ar = sub i64 %3, %.sroa.0.0.i54              ; 9 uses
  %i.as = sub i64 %6, %.sroa.0.0.i54              ; 9 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1575)
  %i.az = load ptr, ptr %0, align 8, !alias.scope !1576, !nonnull !5, !align !6, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1578), !noalias !1576
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !1579, !noalias !1576, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 120 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 136 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !1580, !noalias !1581, !noundef !5 ; 3 uses
  %i.be = load i64, ptr %i.bb, align 8, !range !10, !alias.scope !1580, !noalias !1581, !noundef !5
  %i.bf = icmp eq i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.i, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb), !noalias !1582
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.h, %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 128
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !1580, !noalias !1581, !nonnull !5, !noundef !5
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %i.bh, i64 %i.bd ; 4 uses
  store i64 0, ptr %i.bi, align 8, !noalias !1581
  %.sroa.4243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 %2, ptr %.sroa.4243.0..sroa_idx, align 8, !noalias !1581
  %.sroa.5244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i64 %5, ptr %.sroa.5244.0..sroa_idx, align 8, !noalias !1581
  %.sroa.6245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store i64 %i.h, ptr %.sroa.6245.0..sroa_idx, align 8, !noalias !1581
  %i.bj = add i64 %i.bd, 1
  store i64 %i.bj, ptr %i.bc, align 8, !alias.scope !1580, !noalias !1581
  br label %bb.b

bb.j:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.0197.0 = phi i64 [ %i.j, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.0197.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit ] ; 36 uses
  %.sroa.0.0 = phi i64 [ %i.i, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit ] ; 33 uses
  %i.bk = icmp ult i64 %.sroa.0.0, %i.ar          ; 2 uses
  %i.bl = icmp ult i64 %.sroa.0197.0, %i.as       ; 3 uses
  %or.cond314 = select i1 %i.bk, i1 %i.bl, i1 false
  br i1 %or.cond314, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit, %bb.j
  br i1 %i.bk, label %bb.ay, label %bb.az

bb.l:                                             ; preds = %bb.j
  %i.bm = sub nuw i64 %i.ar, %.sroa.0.0           ; 5 uses
  %i.bn = sub nuw i64 %i.as, %.sroa.0197.0        ; 6 uses
  %i.bo = icmp ult i64 %i.bm, 97
  %i.bp = icmp ult i64 %i.bn, 97
  %or.cond.i = or i1 %i.bp, %i.bo
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i55 = call noundef i64 @llvm.umin.i64(i64 %i.bn, i64 %i.bm) ; 2 uses
  %.sroa.0.0.i56 = call noundef i64 @llvm.umax.i64(i64 %i.bn, i64 %i.bm)
  %i.bq = shl nuw i64 %.sroa.0.0.i55, 1
  %i.br = icmp slt i64 %.sroa.0.0.i55, 0
  br i1 %i.br, label %bb.n, label %bb.o, !prof !13

bb.n:                                             ; preds = %bb.m
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.052.0.i = phi i64 [ -1, %bb.n ], [ %i.bq, %bb.m ]
  %i.bs = icmp ult i64 %.sroa.0.0.i56, %.sroa.052.0.i
  br i1 %i.bs, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not.i = icmp ule i64 %i.bn, %i.bm
  %i.bt = icmp ule i64 %i.bm, %i.bn
  %.not.i.fr = freeze i1 %.not.i
  %i.bu = sub i64 %.sroa.0197.0, %i.aq            ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.ap
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bu
  br label %bb.q

.loopexit:                                        ; preds = %.outer, %bb.ae, %bb.t, %bb.ad
  %.sroa.525.2.i.ph.lcssa487 = phi i64 [ %.sroa.525.2.i.ph641, %bb.t ], [ %.sroa.525.2.i.ph641, %bb.ae ], [ %.sroa.525.2.i.ph641, %bb.ad ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa480 = phi i64 [ %.sroa.023.1.i.ph642, %bb.t ], [ %.sroa.023.1.i.ph642, %bb.ae ], [ %.sroa.023.1.i.ph642, %bb.ad ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa473 = phi i64 [ %.sroa.9.2.i.ph643, %bb.t ], [ %.sroa.9.2.i.ph643, %bb.ae ], [ %.sroa.9.2.i.ph643, %bb.ad ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa466 = phi i64 [ %.sroa.12.2.i.ph644, %bb.t ], [ %.sroa.12.2.i.ph644, %bb.ae ], [ %.sroa.12.2.i.ph644, %bb.ad ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %.not.i59 = icmp ugt i64 %spec.select315, 4
  %or.cond320 = or i1 %i.bx, %.not.i59
  br i1 %or.cond320, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit
  %.sroa.12.0.i649 = phi i64 [ undef, %bb.p ], [ %.sroa.12.2.i.ph.lcssa466, %.loopexit ]
  %.sroa.9.0.i648 = phi i64 [ undef, %bb.p ], [ %.sroa.9.2.i.ph.lcssa473, %.loopexit ]
  %.sroa.023.0.i647 = phi i64 [ 0, %bb.p ], [ %.sroa.023.1.i.ph.lcssa480, %.loopexit ]
  %.sroa.525.0.i646 = phi i64 [ undef, %bb.p ], [ %.sroa.525.2.i.ph.lcssa487, %.loopexit ]
  %.sroa.0230.0645 = phi i64 [ 0, %bb.p ], [ %spec.select315, %.loopexit ] ; 11 uses
  %i.bx = icmp eq i64 %.sroa.0230.0645, 4         ; 2 uses
  %i.by = add nuw nsw i64 %.sroa.0230.0645, 1
  %spec.select315 = select i1 %i.bx, i64 4, i64 %i.by ; 2 uses
  %i.bz = icmp eq i64 %.sroa.0230.0645, 0
  %i.ca = add i64 %.sroa.0230.0645, %.sroa.0.0    ; 2 uses
  %i.cb = sub i64 %i.ca, %i.an                    ; 5 uses
  %i.cc = icmp ult i64 %i.cb, %i.am               ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.cb ; 2 uses
  %i.ce = sub i64 %i.ar, %i.ca
  br label %.lr.ph

bb.r:                                             ; preds = %.loopexit
  %i.cf = trunc nuw i64 %.sroa.023.1.i.ph.lcssa480 to i1
  br i1 %i.cf, label %.loopexit397, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit

.loopexit397:                                     ; preds = %bb.af, %bb.r
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa487, %bb.r ], [ %.sroa.0230.0645, %bb.af ] ; 4 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa473, %bb.r ], [ %.us-phi553, %bb.af ] ; 4 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa466, %bb.r ], [ %.sroa.01.0.i.lcssa, %bb.af ] ; 3 uses
  %i.cg = icmp eq i64 %.sroa.525.1.i, 0
  %i.ch = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  br i1 %i.cg, label %bb.an, label %bb.ao

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.t
  %.sroa.0231.0528 = phi i64 [ %spec.select317, %bb.t ], [ %.sroa.0231.0.ph640, %.lr.ph.split ] ; 3 uses
  %i.ci = icmp eq i64 %.sroa.0231.0528, 4         ; 3 uses
  %i.cj = add nuw nsw i64 %.sroa.0231.0528, 1
  %spec.select317 = select i1 %i.ci, i64 4, i64 %i.cj ; 3 uses
  %i.ck = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1583
  br i1 %i.ck, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.s

bb.s:                                             ; preds = %.lr.ph.split.split
  %.not652 = icmp eq i64 %.sroa.0231.0528, 0
  br i1 %.not652, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30
  %.not.i61 = icmp ugt i64 %spec.select317, 4
  %or.cond321 = select i1 %i.ci, i1 true, i1 %.not.i61
  br i1 %or.cond321, label %.loopexit, label %.lr.ph.split.split

bb.u:                                             ; preds = %bb.s
  br i1 %i.bv, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit31, label %.split.loopexit1109

.split.loopexit1109:                              ; preds = %bb.u
  %i.cl = sub i64 %.sroa.0197.0, %i.aq
  br label %.split

.split:                                           ; preds = %bb.ac, %.split.loopexit1109
  %.us-phi = phi i64 [ %i.cl, %.split.loopexit1109 ], [ %i.dc, %bb.ac ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #28, !noalias !1584
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit31: ; preds = %bb.u
  br i1 %i.cc, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30, label %.split538

.split538:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit31, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit31.us
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cb, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #28, !noalias !1585
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit31
  %.val49 = load i64, ptr %i.bw, align 8, !noundef !5
  %.val50 = load i64, ptr %i.cd, align 8, !noundef !5
  %.not318 = icmp eq i64 %.val49, %.val50
  br i1 %.not318, label %.split542, label %bb.t

.split542.loopexit:                               ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30.us
  %.pre897 = sub i64 %i.as, %i.db
  br label %.split542

.split542:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30, %.split542.loopexit
  %.pre-phi = phi i64 [ %.pre897, %.split542.loopexit ], [ %i.bn, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30 ]
  %.us-phi548 = phi i64 [ %i.db, %.split542.loopexit ], [ %.sroa.0197.0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30 ]
  %.us-phi551 = phi i1 [ %i.cy, %.split542.loopexit ], [ %i.ci, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30 ]
  %.us-phi552 = phi i64 [ %spec.select317.us, %.split542.loopexit ], [ %spec.select317, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30 ] ; 2 uses
  %.us-phi553 = phi i64 [ %.sroa.0231.0528.us, %.split542.loopexit ], [ 0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30 ] ; 6 uses
  %.sroa.0.0.i65 = call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %i.ce) ; 3 uses
  %.not653 = icmp eq i64 %.sroa.0.0.i65, 0
  br i1 %.not653, label %.outer, label %.lr.ph637

.lr.ph637:                                        ; preds = %.split542
  %i.cm = sub i64 %.us-phi548, %i.aq              ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph637, %bb.aa
  %.sroa.01.0.i636 = phi i64 [ 0, %.lr.ph637 ], [ %i.cw, %bb.aa ] ; 5 uses
  %i.cn = and i64 %.sroa.01.0.i636, 1023
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cp = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1583
  br i1 %i.cp, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cq = add nuw i64 %i.cm, %.sroa.01.0.i636     ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.ap
  br i1 %i.cr, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit29, label %bb.y
end_hunk_2
begin_hunk_3_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter:bb.a
  br label %bb.ap

bb.at:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !1604)
  call void @llvm.experimental.noalias.scope.decl(metadata !1605), !noalias !1589
  %i.et = load ptr, ptr %0, align 8, !alias.scope !1606, !noalias !1589, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1607)
  call void @llvm.experimental.noalias.scope.decl(metadata !1608), !noalias !1609
  %i.eu = load ptr, ptr %i.et, align 8, !alias.scope !1610, !noalias !1609, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 120 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 136 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !1611, !noalias !1612, !noundef !5 ; 3 uses
  %i.ey = load i64, ptr %i.ev, align 8, !range !10, !alias.scope !1611, !noalias !1612, !noundef !5
  %i.ez = icmp eq i64 %i.ex, %i.ey
  br i1 %i.ez, label %bb.au, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit70

bb.au:                                            ; preds = %bb.at
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ev), !noalias !1613
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit70

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit70: ; preds = %bb.at, %bb.au
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 128
  %i.fb = load ptr, ptr %i.fa, align 8, !alias.scope !1611, !noalias !1612, !nonnull !5, !noundef !5
  %i.fc = getelementptr inbounds nuw [40 x i8], ptr %i.fb, i64 %i.ex ; 4 uses
  store i64 1, ptr %i.fc, align 8, !noalias !1612
  %.sroa.4248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4248.0..sroa_idx, align 8, !noalias !1612
  %.sroa.5249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5249.0..sroa_idx, align 8, !noalias !1612
  %.sroa.6250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  store i64 %.sroa.0197.0, ptr %.sroa.6250.0..sroa_idx, align 8, !noalias !1612
  %i.fd = add i64 %i.ex, 1
  store i64 %i.fd, ptr %i.ew, align 8, !alias.scope !1611, !noalias !1612
  br label %bb.ap

bb.av:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !1614)
  call void @llvm.experimental.noalias.scope.decl(metadata !1615), !noalias !1589
  %i.fe = load ptr, ptr %0, align 8, !alias.scope !1616, !noalias !1589, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1617)
  call void @llvm.experimental.noalias.scope.decl(metadata !1618), !noalias !1619
  %i.ff = load ptr, ptr %i.fe, align 8, !alias.scope !1620, !noalias !1619, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 120 ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 136 ; 3 uses
  %i.fi = load i64, ptr %i.fh, align 8, !alias.scope !1621, !noalias !1622, !noundef !5 ; 4 uses
  %i.fj = load i64, ptr %i.fg, align 8, !range !10, !alias.scope !1621, !noalias !1622, !noundef !5
  %i.fk = icmp eq i64 %i.fi, %i.fj
  br i1 %i.fk, label %bb.aw, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit71

bb.aw:                                            ; preds = %bb.av
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fg), !noalias !1623
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit71

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit71: ; preds = %bb.av, %bb.aw
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 128 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !alias.scope !1621, !noalias !1622, !nonnull !5, !noundef !5
  %i.fn = getelementptr inbounds nuw [40 x i8], ptr %i.fm, i64 %i.fi ; 4 uses
  store i64 1, ptr %i.fn, align 8, !noalias !1622
  %.sroa.4278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4278.0..sroa_idx, align 8, !noalias !1622
  %.sroa.5279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5279.0..sroa_idx, align 8, !noalias !1622
  %.sroa.6280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  store i64 %.sroa.0197.0, ptr %.sroa.6280.0..sroa_idx, align 8, !noalias !1622
  %i.fo = add i64 %i.fi, 1                        ; 3 uses
  store i64 %i.fo, ptr %i.fh, align 8, !alias.scope !1621, !noalias !1622
  %i.fp = load i64, ptr %i.fg, align 8, !range !10, !alias.scope !1624, !noalias !1622, !noundef !5
  %i.fq = icmp eq i64 %i.fo, %i.fp
  br i1 %i.fq, label %bb.ax, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit72

bb.ax:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit71
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fg), !noalias !1625
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit72

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit72: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit71, %bb.ax
  %i.fr = load ptr, ptr %i.fl, align 8, !alias.scope !1624, !noalias !1622, !nonnull !5, !noundef !5
  %i.fs = getelementptr inbounds nuw [40 x i8], ptr %i.fr, i64 %i.fo ; 4 uses
  store i64 2, ptr %i.fs, align 8, !noalias !1622
  %.sroa.4283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4283.0..sroa_idx, align 8, !noalias !1622
  %.sroa.5284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store i64 %.sroa.0197.0, ptr %.sroa.5284.0..sroa_idx, align 8, !noalias !1622
  %.sroa.6285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6285.0..sroa_idx, align 8, !noalias !1622
  %i.ft = add i64 %i.fi, 2
  store i64 %i.ft, ptr %i.fh, align 8, !alias.scope !1624, !noalias !1622
  br label %bb.ap

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split, %.lr.ph.split.us, %bb.w, %bb.l, %bb.o, %bb.r, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit68
  %.sroa.0197.2 = phi i64 [ %.sroa.0197.0, %bb.l ], [ %.sroa.0197.0, %bb.o ], [ %.sroa.0197.0, %bb.r ], [ %i.ei, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit68 ], [ %.sroa.0197.0, %.lr.ph.split.split ], [ %.sroa.0197.0, %.lr.ph.split.us ], [ %.sroa.0197.0, %bb.w ], [ %.sroa.0197.0, %.lr.ph.split.split.us ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.l ], [ %.sroa.0.0, %bb.o ], [ %.sroa.0.0, %bb.r ], [ %i.eh, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit68 ], [ %.sroa.0.0, %.lr.ph.split.split ], [ %.sroa.0.0, %.lr.ph.split.us ], [ %.sroa.0.0, %bb.w ], [ %.sroa.0.0, %.lr.ph.split.split.us ] ; 2 uses
  %i.fu = icmp eq i64 %.sroa.0.2, %.sroa.0.0
  %i.fv = icmp eq i64 %.sroa.0197.2, %.sroa.0197.0
  %or.cond = select i1 %i.fu, i1 %i.fv, i1 false
  br i1 %or.cond, label %bb.k, label %bb.j

bb.ay:                                            ; preds = %bb.k
  br i1 %i.bl, label %bb.bd, label %bb.bb

bb.az:                                            ; preds = %bb.k
  br i1 %i.bl, label %.thread, label %bb.ba

bb.ba:                                            ; preds = %.sink.split.i.thread, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread311, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit73, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit163, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit162, %bb.gx, %bb.az
  %.not26 = icmp eq i64 %.sroa.0.0.i54, 0
  br i1 %.not26, label %bb.he, label %bb.hc

bb.bb:                                            ; preds = %bb.ay
  %i.fw = sub nuw i64 %i.ar, %.sroa.0.0
  call void @llvm.experimental.noalias.scope.decl(metadata !1626)
  call void @llvm.experimental.noalias.scope.decl(metadata !1627)
  %i.fx = load ptr, ptr %0, align 8, !alias.scope !1628, !nonnull !5, !align !6, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !1629)
  call void @llvm.experimental.noalias.scope.decl(metadata !1630), !noalias !1628
  %i.fy = load ptr, ptr %i.fx, align 8, !alias.scope !1631, !noalias !1628, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 120 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 136 ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !alias.scope !1632, !noalias !1633, !noundef !5 ; 3 uses
  %i.gc = load i64, ptr %i.fz, align 8, !range !10, !alias.scope !1632, !noalias !1633, !noundef !5
  %i.gd = icmp eq i64 %i.gb, %i.gc
  br i1 %i.gd, label %bb.bc, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit73

bb.bc:                                            ; preds = %bb.bb
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fz), !noalias !1634
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit73

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit73: ; preds = %bb.bb, %bb.bc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 128
  %i.gf = load ptr, ptr %i.ge, align 8, !alias.scope !1632, !noalias !1633, !nonnull !5, !noundef !5
  %i.gg = getelementptr inbounds nuw [40 x i8], ptr %i.gf, i64 %i.gb ; 4 uses
  store i64 1, ptr %i.gg, align 8, !noalias !1633
  %.sroa.4253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4253.0..sroa_idx, align 8, !noalias !1633
  %.sroa.5254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store i64 %i.fw, ptr %.sroa.5254.0..sroa_idx, align 8, !noalias !1633
  %.sroa.6255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  store i64 %.sroa.0197.0, ptr %.sroa.6255.0..sroa_idx, align 8, !noalias !1633
  %i.gh = add i64 %i.gb, 1
  store i64 %i.gh, ptr %i.ga, align 8, !alias.scope !1632, !noalias !1633
  br label %bb.ba

bb.bd:                                            ; preds = %bb.ay
  %i.gi = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1635
  br i1 %i.gi, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gj = sub nuw i64 %i.ar, %.sroa.0.0           ; 22 uses
  %i.gk = sub nuw i64 %i.as, %.sroa.0197.0        ; 22 uses
  %i.gl = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.gj, i64 %i.gk) ; 2 uses
  %i.gm = extractvalue { i64, i1 } %i.gl, 1
  br i1 %i.gm, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.bf, !prof !13

bb.bf:                                            ; preds = %bb.be
  %i.gn = extractvalue { i64, i1 } %i.gl, 0
  %.sroa.0.0.i75 = call noundef i64 @llvm.umax.i64(i64 %i.gk, i64 %i.gj)
  %.sroa.0.0.i74 = call noundef i64 @llvm.umin.i64(i64 %i.gk, i64 %i.gj)
  %i.go = add i64 %.sroa.0.0.i74, -65
  %or.cond.i27 = icmp ult i64 %i.go, -64
  %i.gp = icmp ult i64 %.sroa.0.0.i75, 512
  %or.cond1.i = or i1 %i.gp, %or.cond.i27
  %i.gq = icmp ugt i64 %i.gn, 64000000
  %or.cond3.i = select i1 %or.cond1.i, i1 true, i1 %i.gq
  br i1 %or.cond3.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.not.i28 = icmp ugt i64 %i.gj, %i.gk
  %.val51 = load ptr, ptr %0, align 8             ; 20 uses
  %i.gr = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !5 ; 2 uses
  br i1 %.not.i28, label %bb.bh, label %bb.eb

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.gr, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gs = add i64 %i.gj, 1                        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1636
  %i.gt = add nuw i64 %i.gk, 1
  %i.gu = mul i64 %i.gs, %i.gt                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1637)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1638
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.gu, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !1638
  %i.gv = load i64, ptr %i.c, align 8, !range !9, !noalias !1638, !noundef !5
  %i.gw = trunc nuw i64 %i.gv to i1
  %i.gx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gy = load i64, ptr %i.gx, align 8, !range !17, !noalias !1638, !noundef !5 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.gw, label %bb.bj, label %.lr.ph469.i, !prof !13

bb.bj:                                            ; preds = %bb.bi
  %i.ha = load i64, ptr %i.gz, align 8, !noalias !1638
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.gy, i64 %i.ha) #28, !noalias !1638
  unreachable

.lr.ph469.i:                                      ; preds = %bb.bi
  %i.hb = load ptr, ptr %i.gz, align 8, !noalias !1638, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1638
  store i64 %i.gy, ptr %i.d, align 8, !alias.scope !1637, !noalias !1636
  %i.hc = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store ptr %i.hb, ptr %i.hc, align 8, !alias.scope !1637, !noalias !1636
  %i.hd = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 7 uses
  store i64 %i.gu, ptr %i.hd, align 8, !alias.scope !1637, !noalias !1636
  %invariant.op470.i = sub i64 %.sroa.0197.0, %i.aq ; 3 uses
  %invariant.op.i = sub i64 %.sroa.0.0, %i.an     ; 3 uses
  br label %.lr.ph469.split.i

.lr.ph469.split.i:                                ; preds = %.lr.ph469.i, %..loopexit39_crit_edge.split.us.i
  %.sroa.0102.0468.i = phi i64 [ %i.he, %..loopexit39_crit_edge.split.us.i ], [ %i.gk, %.lr.ph469.i ] ; 2 uses
  %i.he = add i64 %.sroa.0102.0468.i, -1          ; 4 uses
  %i.hf = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1636

._crit_edge496.i:                                 ; preds = %bb.cz
  br i1 %i.mu, label %bb.bk, label %bb.bm

.lr.ph495.i:                                      ; preds = %..loopexit39_crit_edge.split.us.i, %bb.cz
  %.sroa.05.0.not494.i = phi i1 [ false, %bb.cz ], [ true, %..loopexit39_crit_edge.split.us.i ] ; 3 uses
  %.sroa.09.0493.i = phi i64 [ %.sroa.09.3.i, %bb.cz ], [ 0, %..loopexit39_crit_edge.split.us.i ] ; 12 uses
  %.sroa.038.0492.i = phi i64 [ %.sroa.038.3.i, %bb.cz ], [ 0, %..loopexit39_crit_edge.split.us.i ] ; 17 uses
  %i.hg = and i64 %.sroa.038.0492.i, 1023
  %i.hh = icmp eq i64 %i.hg, 0
  %or.cond170.i = select i1 %.sroa.05.0.not494.i, i1 %i.hh, i1 false ; 2 uses
  br i1 %or.cond170.i, label %bb.bq, label %bb.bp

bb.bk:                                            ; preds = %._crit_edge496.i
  %i.hi = add i64 %.sroa.038.3.i, %.sroa.0.0      ; 2 uses
  %i.hj = sub nuw i64 %i.gj, %.sroa.038.3.i
  %i.hk = add i64 %.sroa.09.3.i, %.sroa.0197.0    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.hl = load ptr, ptr %.val51, align 8, !alias.scope !1639, !noalias !1636, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 120 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 136 ; 2 uses
  %i.ho = load i64, ptr %i.hn, align 8, !alias.scope !1640, !noalias !1636, !noundef !5 ; 3 uses
  %i.hp = load i64, ptr %i.hm, align 8, !range !10, !alias.scope !1640, !noalias !1636, !noundef !5
  %i.hq = icmp eq i64 %i.ho, %i.hp
  br i1 %i.hq, label %bb.bl, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hm)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1636

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i: ; preds = %bb.bl, %bb.bk
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hl, i64 128
  %i.hs = load ptr, ptr %i.hr, align 8, !alias.scope !1640, !noalias !1636, !nonnull !5, !noundef !5
  %i.ht = getelementptr inbounds nuw [40 x i8], ptr %i.hs, i64 %i.ho ; 4 uses
  store i64 1, ptr %i.ht, align 8, !noalias !1636
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store i64 %i.hi, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !1636
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  store i64 %i.hj, ptr %.sroa.58.0..sroa_idx.i, align 8, !noalias !1636
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  store i64 %i.hk, ptr %.sroa.69.0..sroa_idx.i, align 8, !noalias !1636
  %i.hu = add i64 %i.ho, 1
  store i64 %i.hu, ptr %i.hn, align 8, !alias.scope !1640, !noalias !1636
  br i1 %i.mt, label %bb.bn, label %.sink.split.i.thread

bb.bm:                                            ; preds = %._crit_edge496.i
  br i1 %i.mt, label %._crit_edge899, label %.sink.split.i.thread

._crit_edge899:                                   ; preds = %bb.bm
  %.pre900 = add i64 %.sroa.038.3.i, %.sroa.0.0
  %.pre902 = add i64 %.sroa.09.3.i, %.sroa.0197.0
  br label %bb.bn

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dn, %bb.bq, %bb.cb, %bb.co, %bb.da, %bb.dc, %bb.cc, %bb.cp, %.lr.ph469.split.i, %bb.dy, %.invoke.i, %bb.bo, %bb.bl
  %lpad.loopexit.split-lp1585 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.d) #26
          to label %common.resume unwind label %bb.ea, !noalias !1636

bb.bn:                                            ; preds = %._crit_edge899, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i
  %.pre-phi903 = phi i64 [ %.pre902, %._crit_edge899 ], [ %i.hk, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i ]
  %.pre-phi901 = phi i64 [ %.pre900, %._crit_edge899 ], [ %i.hi, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i ]
  %i.hv = sub nuw i64 %i.gk, %.sroa.09.3.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.hw = load ptr, ptr %.val51, align 8, !alias.scope !1641, !noalias !1636, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 120 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 136 ; 2 uses
  %i.hz = load i64, ptr %i.hy, align 8, !alias.scope !1642, !noalias !1636, !noundef !5 ; 3 uses
  %i.ia = load i64, ptr %i.hx, align 8, !range !10, !alias.scope !1642, !noalias !1636, !noundef !5
  %i.ib = icmp eq i64 %i.hz, %i.ia
  br i1 %i.ib, label %bb.bo, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hx)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1636

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i: ; preds = %bb.bo, %bb.bn
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hw, i64 128
  %i.id = load ptr, ptr %i.ic, align 8, !alias.scope !1642, !noalias !1636, !nonnull !5, !noundef !5
  %i.ie = getelementptr inbounds nuw [40 x i8], ptr %i.id, i64 %i.hz ; 4 uses
  store i64 2, ptr %i.ie, align 8, !noalias !1636
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store i64 %.pre-phi901, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !1636
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  store i64 %.pre-phi903, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !1636
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  store i64 %i.hv, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !1636
  %i.if = add i64 %i.hz, 1
  store i64 %i.if, ptr %i.hy, align 8, !alias.scope !1642, !noalias !1636
  br label %.sink.split.i.thread

.sink.split.i.thread:                             ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i, %bb.bm, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.d), !noalias !1636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1636
  br label %bb.ba

.sink.split.i:                                    ; preds = %.loopexit24.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !1636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1636
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread

bb.bp:                                            ; preds = %bb.br, %.lr.ph495.i
  %i.ig = mul i64 %.sroa.09.0493.i, %i.gs         ; 4 uses
  %i.ih = add i64 %.sroa.038.0492.i, %.sroa.0.0   ; 4 uses
  %i.ii = add i64 %.sroa.09.0493.i, %.sroa.0197.0 ; 4 uses
  %i.ij = sub i64 %i.ii, %i.aq                    ; 3 uses
  %i.ik = icmp ult i64 %i.ij, %i.ap
  br i1 %i.ik, label %bb.bs, label %.invoke.i

.invoke.i:                                        ; preds = %bb.dw, %bb.du, %bb.ds, %bb.dr, %bb.dp, %bb.by, %bb.bw, %bb.bv, %bb.bu, %bb.bs, %bb.bp, %bb.cx, %bb.cv, %bb.cu, %bb.ct, %bb.cr, %bb.ck, %bb.ci, %bb.ch, %bb.cg, %bb.ce, %bb.de, %bb.db, %bb.dh, %bb.dg, %bb.dz, %.lr.ph.split.i
  %i.il = phi i64 [ %i.kz, %bb.ck ], [ %.reass.i, %bb.dz ], [ %.reass.i, %.lr.ph.split.i ], [ %i.mn, %bb.cx ], [ %i.ij, %bb.bp ], [ %i.ny, %bb.dh ], [ %i.ap, %bb.db ], [ %i.nr, %bb.dg ], [ %i.am, %bb.de ], [ %i.kj, %bb.ce ], [ %i.kn, %bb.cg ], [ %i.kr, %bb.ci ], [ %i.kp, %bb.ch ], [ %i.lv, %bb.cr ], [ %i.lz, %bb.ct ], [ %i.mf, %bb.cv ], [ %i.mb, %bb.cu ], [ %i.iu, %bb.bu ], [ %i.iw, %bb.bv ], [ %i.jm, %bb.by ], [ %i.iq, %bb.bs ], [ %i.jb, %bb.bw ], [ %i.ov, %bb.dr ], [ %.reass.us.i, %bb.dp ], [ %i.po, %bb.dw ], [ %i.oz, %bb.ds ], [ %i.pf, %bb.du ]
  %i.im = phi i64 [ %.pre729.i.a, %bb.ck ], [ %i.ap, %bb.dz ], [ %i.ap, %.lr.ph.split.i ], [ %.pre727.i, %bb.cx ], [ %i.ap, %bb.bp ], [ %i.nt, %bb.dh ], [ %i.ap, %bb.db ], [ %i.nt, %bb.dg ], [ %i.am, %bb.de ], [ %i.am, %bb.ce ], [ %.pre729.i.a, %bb.cg ], [ %.pre729.i.a, %bb.ci ], [ %.pre729.i.a, %bb.ch ], [ %i.ap, %bb.cr ], [ %.pre727.i, %bb.ct ], [ %.pre727.i, %bb.cv ], [ %.pre727.i, %bb.cu ], [ %.pre725.i, %bb.bu ], [ %.pre725.i, %bb.bv ], [ %.pre725.i, %bb.by ], [ %i.am, %bb.bs ], [ %.pre725.i, %bb.bw ], [ %i.ox, %bb.dr ], [ %i.am, %bb.dp ], [ %i.pn, %bb.dw ], [ %i.ox, %bb.ds ], [ %i.pg, %bb.du ]
  %i.in = phi ptr [ @63, %bb.ck ], [ @74, %bb.dz ], [ @74, %.lr.ph.split.i ], [ @69, %bb.cx ], [ @52, %bb.bp ], [ @73, %bb.dh ], [ @70, %bb.db ], [ @72, %bb.dg ], [ @71, %bb.de ], [ @59, %bb.ce ], [ @60, %bb.cg ], [ @61, %bb.ci ], [ @62, %bb.ch ], [ @64, %bb.cr ], [ @66, %bb.ct ], [ @67, %bb.cv ], [ @68, %bb.cu ], [ @54, %bb.bu ], [ @56, %bb.bv ], [ @57, %bb.by ], [ @53, %bb.bs ], [ @55, %bb.bw ], [ @76, %bb.dr ], [ @75, %bb.dp ], [ @79, %bb.dw ], [ @77, %bb.ds ], [ @78, %bb.du ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.il, i64 noundef %i.im, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.in) #28
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1636

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.bq:                                            ; preds = %.lr.ph495.i
  %i.io = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.br unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1636

bb.br:                                            ; preds = %bb.bq
  br i1 %i.io, label %.loopexit24.i, label %bb.bp

bb.bs:                                            ; preds = %bb.bp
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ij ; 2 uses
  %i.iq = sub i64 %i.ih, %i.an                    ; 3 uses
  %i.ir = icmp ult i64 %i.iq, %i.am
  br i1 %i.ir, label %bb.bt, label %.invoke.i

bb.bt:                                            ; preds = %bb.bs
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.iq ; 2 uses
  %.val212.i = load i64, ptr %i.ip, align 8, !noalias !1636, !noundef !5
  %.val213.i = load i64, ptr %i.is, align 8, !noalias !1636, !noundef !5
  %i.it = icmp eq i64 %.val212.i, %.val213.i
  %.pre.i = load ptr, ptr %i.hc, align 8, !noalias !1636 ; 4 uses
  %.pre725.i = load i64, ptr %i.hd, align 8, !noalias !1636 ; 8 uses
  br i1 %i.it, label %bb.bu, label %._crit_edge731.i

._crit_edge731.i:                                 ; preds = %bb.bt
  %.pre732.i = add nuw i64 %.sroa.09.0493.i, 1
  %.pre733.i = mul i64 %.pre732.i, %i.gs
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.iu = add i64 %i.ig, %.sroa.038.0492.i        ; 3 uses
  %i.iv = icmp ult i64 %i.iu, %.pre725.i
  br i1 %i.iv, label %bb.bw, label %.invoke.i

bb.bv:                                            ; preds = %bb.bx, %._crit_edge731.i
  %.pre-phi734.i = phi i64 [ %.pre733.i, %._crit_edge731.i ], [ %i.iz, %bb.bx ] ; 3 uses
  %i.iw = add i64 %.pre-phi734.i, %.sroa.038.0492.i ; 3 uses
  %i.ix = icmp ult i64 %i.iw, %.pre725.i
  br i1 %i.ix, label %bb.by, label %.invoke.i

bb.bw:                                            ; preds = %bb.bu
  %i.iy = add nuw i64 %.sroa.09.0493.i, 1
  %i.iz = mul i64 %i.iy, %i.gs                    ; 2 uses
  %i.ja = add nuw i64 %.sroa.038.0492.i, 1
  %i.jb = add i64 %i.ja, %i.iz                    ; 3 uses
  %i.jc = icmp ult i64 %i.jb, %.pre725.i
  br i1 %i.jc, label %bb.bx, label %.invoke.i

bb.bx:                                            ; preds = %bb.bw
  %i.jd = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.iu
  %i.je = load i8, ptr %i.jd, align 1, !noalias !1636, !noundef !5
  %i.jf = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.jb
  %i.jg = load i8, ptr %i.jf, align 1, !noalias !1636, !noundef !5
  %i.jh = add i8 %i.jg, 1
  %i.ji = icmp eq i8 %i.je, %i.jh
  br i1 %i.ji, label %.preheader.i, label %bb.bv

.preheader.i:                                     ; preds = %bb.bx
  %i.jj = icmp ult i64 %.sroa.09.0493.i, %i.gk
  %i.jk = icmp ult i64 %.sroa.038.0492.i, %i.gj
  %or.cond177478.i = select i1 %i.jj, i1 %i.jk, i1 false
  br i1 %or.cond177478.i, label %.lr.ph481.i, label %._crit_edge482.i

bb.by:                                            ; preds = %bb.bv
  %i.jl = add nuw i64 %.sroa.038.0492.i, 1        ; 3 uses
  %i.jm = add i64 %i.jl, %i.ig                    ; 3 uses
  %i.jn = icmp ult i64 %i.jm, %.pre725.i
  br i1 %i.jn, label %bb.bz, label %.invoke.i

bb.bz:                                            ; preds = %bb.by
  %i.jo = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.iw
  %i.jp = load i8, ptr %i.jo, align 1, !noalias !1636, !noundef !5
  %i.jq = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.jm
  %i.jr = load i8, ptr %i.jq, align 1, !noalias !1636, !noundef !5
  %.not164.i = icmp ult i8 %i.jp, %i.jr
  br i1 %.not164.i, label %.preheader25.i, label %.preheader30.i

.preheader30.i:                                   ; preds = %bb.bz
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.09.0493.i, i64 %i.gk) ; 3 uses
  %exitcond.not.i1542.not = icmp ult i64 %.sroa.09.0493.i, %i.gk
  br i1 %exitcond.not.i1542.not, label %.lr.ph1544, label %._crit_edge1545

.preheader25.i:                                   ; preds = %bb.bz
  %i.js = icmp ult i64 %.sroa.038.0492.i, %i.gj
  br i1 %i.js, label %.lr.ph473.i, label %._crit_edge.i

.lr.ph473.i:                                      ; preds = %.preheader25.i
  %i.jt = add i64 %.pre-phi734.i, 1
  %i.ju = add i64 %i.ig, 1
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cm, %.lr.ph473.i
  %.sroa.038.1472.i = phi i64 [ %.sroa.038.0492.i, %.lr.ph473.i ], [ %i.lg, %bb.cm ] ; 9 uses
  %i.jv = and i64 %.sroa.038.1472.i, 1023
  %i.jw = icmp eq i64 %i.jv, 0
  %or.cond173.i = and i1 %.sroa.05.0.not494.i, %i.jw
  br i1 %or.cond173.i, label %bb.cc, label %bb.ce

._crit_edge.i:                                    ; preds = %bb.cm, %bb.cl, %bb.cj, %.preheader25.i
  %.sroa.038.1.lcssa.i = phi i64 [ %.sroa.038.0492.i, %.preheader25.i ], [ %i.gj, %bb.cm ], [ %.sroa.038.1472.i, %bb.cl ], [ %.sroa.038.1472.i, %bb.cj ] ; 2 uses
  %i.jx = sub nuw i64 %.sroa.038.1.lcssa.i, %.sroa.038.0492.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.jy = load ptr, ptr %.val51, align 8, !alias.scope !1643, !noalias !1636, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 120 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 136 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8, !alias.scope !1644, !noalias !1636, !noundef !5 ; 3 uses
  %i.kc = load i64, ptr %i.jz, align 8, !range !10, !alias.scope !1644, !noalias !1636, !noundef !5
  %i.kd = icmp eq i64 %i.kb, %i.kc
  br i1 %i.kd, label %bb.cb, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i

bb.cb:                                            ; preds = %._crit_edge.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jz)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1636

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.cb, %._crit_edge.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jy, i64 128
  %i.kf = load ptr, ptr %i.ke, align 8, !alias.scope !1644, !noalias !1636, !nonnull !5, !noundef !5
  %i.kg = getelementptr inbounds nuw [40 x i8], ptr %i.kf, i64 %i.kb ; 4 uses
  store i64 1, ptr %i.kg, align 8, !noalias !1636
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store i64 %i.ih, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1636
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  store i64 %i.jx, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !1636
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  store i64 %i.ii, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !1636
  %i.kh = add i64 %i.kb, 1
  store i64 %i.kh, ptr %i.ka, align 8, !alias.scope !1644, !noalias !1636
  br label %bb.cz

bb.cc:                                            ; preds = %bb.ca
  %i.ki = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1636

bb.cd:                                            ; preds = %bb.cc
  br i1 %i.ki, label %.loopexit24.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.ca
  %i.kj = add i64 %.sroa.038.1472.i, %invariant.op.i ; 3 uses
  %i.kk = icmp ult i64 %i.kj, %i.am
  br i1 %i.kk, label %bb.cf, label %.invoke.i

bb.cf:                                            ; preds = %bb.ce
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.kj
  %.val210.i = load i64, ptr %i.ip, align 8, !noalias !1636, !noundef !5
  %.val211.i = load i64, ptr %i.kl, align 8, !noalias !1636, !noundef !5
  %i.km = icmp eq i64 %.val210.i, %.val211.i
  %.pre728.i.a = load ptr, ptr %i.hc, align 8, !noalias !1636 ; 4 uses
  %.pre729.i.a = load i64, ptr %i.hd, align 8, !noalias !1636 ; 8 uses
  br i1 %i.km, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.kn = add i64 %.sroa.038.1472.i, %i.ig        ; 3 uses
  %i.ko = icmp ult i64 %i.kn, %.pre729.i.a
  br i1 %i.ko, label %bb.ci, label %.invoke.i

bb.ch:                                            ; preds = %bb.cj, %bb.cf
  %i.kp = add i64 %.sroa.038.1472.i, %.pre-phi734.i ; 3 uses
  %i.kq = icmp ult i64 %i.kp, %.pre729.i.a
  br i1 %i.kq, label %bb.ck, label %.invoke.i

bb.ci:                                            ; preds = %bb.cg
  %i.kr = add i64 %i.jt, %.sroa.038.1472.i        ; 3 uses
  %i.ks = icmp ult i64 %i.kr, %.pre729.i.a
  br i1 %i.ks, label %bb.cj, label %.invoke.i

bb.cj:                                            ; preds = %bb.ci
  %i.kt = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.kn
  %i.ku = load i8, ptr %i.kt, align 1, !noalias !1636, !noundef !5
  %i.kv = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.kr
  %i.kw = load i8, ptr %i.kv, align 1, !noalias !1636, !noundef !5
  %i.kx = add i8 %i.kw, 1
  %i.ky = icmp eq i8 %i.ku, %i.kx
  br i1 %i.ky, label %._crit_edge.i, label %bb.ch

bb.ck:                                            ; preds = %bb.ch
  %i.kz = add i64 %i.ju, %.sroa.038.1472.i        ; 3 uses
  %i.la = icmp ult i64 %i.kz, %.pre729.i.a
  br i1 %i.la, label %bb.cl, label %.invoke.i

bb.cl:                                            ; preds = %bb.ck
  %i.lb = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.kp
  %i.lc = load i8, ptr %i.lb, align 1, !noalias !1636, !noundef !5
  %i.ld = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.kz
  %i.le = load i8, ptr %i.ld, align 1, !noalias !1636, !noundef !5
  %i.lf = icmp ult i8 %i.lc, %i.le
  br i1 %i.lf, label %bb.cm, label %._crit_edge.i

bb.cm:                                            ; preds = %bb.cl
  %i.lg = add nuw i64 %.sroa.038.1472.i, 1        ; 2 uses
  %i.lh = icmp ult i64 %i.lg, %i.gj
  br i1 %i.lh, label %bb.ca, label %._crit_edge.i

bb.cn:                                            ; preds = %bb.cy
  %exitcond.not.i = icmp eq i64 %.pre-phi736.i, %umax.i
  br i1 %exitcond.not.i, label %._crit_edge1545, label %.lr.ph1544

.lr.ph1544:                                       ; preds = %.preheader30.i, %bb.cn
  %.sroa.09.1.i1543 = phi i64 [ %.pre-phi736.i, %bb.cn ], [ %.sroa.09.0493.i, %.preheader30.i ] ; 6 uses
  br i1 %or.cond170.i, label %bb.cp, label %bb.cr

._crit_edge1545:                                  ; preds = %bb.cn, %bb.cw, %bb.cy, %.preheader30.i
  %.sroa.09.1.lcssa.i = phi i64 [ %umax.i, %.preheader30.i ], [ %umax.i, %bb.cn ], [ %.sroa.09.1.i1543, %bb.cw ], [ %.sroa.09.1.i1543, %bb.cy ] ; 2 uses
  %i.li = sub i64 %.sroa.09.1.lcssa.i, %.sroa.09.0493.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.lj = load ptr, ptr %.val51, align 8, !alias.scope !1645, !noalias !1636, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 120 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 136 ; 2 uses
  %i.lm = load i64, ptr %i.ll, align 8, !alias.scope !1646, !noalias !1636, !noundef !5 ; 3 uses
  %i.ln = load i64, ptr %i.lk, align 8, !range !10, !alias.scope !1646, !noalias !1636, !noundef !5
  %i.lo = icmp eq i64 %i.lm, %i.ln
  br i1 %i.lo, label %bb.co, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i

bb.co:                                            ; preds = %._crit_edge1545
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lk)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1636

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.co, %._crit_edge1545
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lj, i64 128
  %i.lq = load ptr, ptr %i.lp, align 8, !alias.scope !1646, !noalias !1636, !nonnull !5, !noundef !5
  %i.lr = getelementptr inbounds nuw [40 x i8], ptr %i.lq, i64 %i.lm ; 4 uses
  store i64 2, ptr %i.lr, align 8, !noalias !1636
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  store i64 %i.ih, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !1636
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  store i64 %i.ii, ptr %.sroa.513.0..sroa_idx.i, align 8, !noalias !1636
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lr, i64 24
  store i64 %i.li, ptr %.sroa.614.0..sroa_idx.i, align 8, !noalias !1636
  %i.ls = add i64 %i.lm, 1
  store i64 %i.ls, ptr %i.ll, align 8, !alias.scope !1646, !noalias !1636
  br label %bb.cz

bb.cp:                                            ; preds = %.lr.ph1544
  %i.lt = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.cq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1636

bb.cq:                                            ; preds = %bb.cp
  br i1 %i.lt, label %.loopexit24.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %.lr.ph1544
  %i.lu = mul i64 %.sroa.09.1.i1543, %i.gs        ; 2 uses
  %i.lv = add i64 %.sroa.09.1.i1543, %invariant.op470.i ; 3 uses
  %i.lw = icmp ult i64 %i.lv, %i.ap
  br i1 %i.lw, label %bb.cs, label %.invoke.i

bb.cs:                                            ; preds = %bb.cr
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.lv
  %.val208.i = load i64, ptr %i.lx, align 8, !noalias !1636, !noundef !5
  %.val209.i = load i64, ptr %i.is, align 8, !noalias !1636, !noundef !5
  %i.ly = icmp eq i64 %.val208.i, %.val209.i
  %.pre726.i = load ptr, ptr %i.hc, align 8, !noalias !1636 ; 4 uses
  %.pre727.i = load i64, ptr %i.hd, align 8, !noalias !1636 ; 8 uses
  br i1 %i.ly, label %bb.ct, label %._crit_edge730.i

._crit_edge730.i:                                 ; preds = %bb.cs
  %.pre735.i = add i64 %.sroa.09.1.i1543, 1       ; 2 uses
  %.pre737.i = mul i64 %.pre735.i, %i.gs
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.lz = add i64 %i.lu, %.sroa.038.0492.i        ; 3 uses
  %i.ma = icmp ult i64 %i.lz, %.pre727.i
  br i1 %i.ma, label %bb.cv, label %.invoke.i

bb.cu:                                            ; preds = %bb.cw, %._crit_edge730.i
  %.pre-phi738.i.a = phi i64 [ %.pre737.i, %._crit_edge730.i ], [ %i.me, %bb.cw ]
  %.pre-phi736.i = phi i64 [ %.pre735.i, %._crit_edge730.i ], [ %i.md, %bb.cw ] ; 2 uses
  %i.mb = add i64 %.pre-phi738.i.a, %.sroa.038.0492.i ; 3 uses
  %i.mc = icmp ult i64 %i.mb, %.pre727.i
  br i1 %i.mc, label %bb.cx, label %.invoke.i

bb.cv:                                            ; preds = %bb.ct
  %i.md = add i64 %.sroa.09.1.i1543, 1            ; 2 uses
  %i.me = mul i64 %i.md, %i.gs                    ; 2 uses
  %i.mf = add i64 %i.me, %i.jl                    ; 3 uses
  %i.mg = icmp ult i64 %i.mf, %.pre727.i
  br i1 %i.mg, label %bb.cw, label %.invoke.i

bb.cw:                                            ; preds = %bb.cv
  %i.mh = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.lz
  %i.mi = load i8, ptr %i.mh, align 1, !noalias !1636, !noundef !5
  %i.mj = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.mf
  %i.mk = load i8, ptr %i.mj, align 1, !noalias !1636, !noundef !5
  %i.ml = add i8 %i.mk, 1
  %i.mm = icmp eq i8 %i.mi, %i.ml
  br i1 %i.mm, label %._crit_edge1545, label %bb.cu

bb.cx:                                            ; preds = %bb.cu
  %i.mn = add i64 %i.lu, %i.jl                    ; 3 uses
  %i.mo = icmp ult i64 %i.mn, %.pre727.i
  br i1 %i.mo, label %bb.cy, label %.invoke.i

bb.cy:                                            ; preds = %bb.cx
  %i.mp = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.mb
  %i.mq = load i8, ptr %i.mp, align 1, !noalias !1636, !noundef !5
  %i.mr = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.mn
  %i.ms = load i8, ptr %i.mr, align 1, !noalias !1636, !noundef !5
  %.not167.i = icmp ult i8 %i.mq, %i.ms
  br i1 %.not167.i, label %._crit_edge1545, label %bb.cn

bb.cz:                                            ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i
  %.sroa.038.3.i = phi i64 [ %.sroa.038.0492.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i ], [ %.sroa.038.1.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i ], [ %.sroa.038.4.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i ] ; 5 uses
  %.sroa.09.3.i = phi i64 [ %.sroa.09.1.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i ], [ %.sroa.09.0493.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i ], [ %.sroa.09.4.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i ] ; 5 uses
  %i.mt = icmp ult i64 %.sroa.09.3.i, %i.gk       ; 3 uses
  %i.mu = icmp ult i64 %.sroa.038.3.i, %i.gj      ; 2 uses
  %or.cond.i77 = select i1 %i.mt, i1 %i.mu, i1 false
  br i1 %or.cond.i77, label %.lr.ph495.i, label %._crit_edge496.i

._crit_edge482.i:                                 ; preds = %bb.dj, %bb.di, %bb.df, %.preheader.i
  %.sroa.038.4.lcssa.i = phi i64 [ %.sroa.038.0492.i, %.preheader.i ], [ %i.nx, %bb.dj ], [ %.sroa.038.4479.i, %bb.df ], [ %.sroa.038.4479.i, %bb.di ] ; 2 uses
  %.sroa.09.4.lcssa.i = phi i64 [ %.sroa.09.0493.i, %.preheader.i ], [ %i.nv, %bb.dj ], [ %.sroa.09.4480.i, %bb.df ], [ %.sroa.09.4480.i, %bb.di ]
  %i.mv = sub nuw i64 %.sroa.038.4.lcssa.i, %.sroa.038.0492.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.mw = load ptr, ptr %.val51, align 8, !alias.scope !1647, !noalias !1636, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 120 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 136 ; 2 uses
  %i.mz = load i64, ptr %i.my, align 8, !alias.scope !1648, !noalias !1636, !noundef !5 ; 3 uses
  %i.na = load i64, ptr %i.mx, align 8, !range !10, !alias.scope !1648, !noalias !1636, !noundef !5
  %i.nb = icmp eq i64 %i.mz, %i.na
  br i1 %i.nb, label %bb.da, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i

bb.da:                                            ; preds = %._crit_edge482.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mx)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1636

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.da, %._crit_edge482.i
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mw, i64 128
  %i.nd = load ptr, ptr %i.nc, align 8, !alias.scope !1648, !noalias !1636, !nonnull !5, !noundef !5
  %i.ne = getelementptr inbounds nuw [40 x i8], ptr %i.nd, i64 %i.mz ; 4 uses
  store i64 0, ptr %i.ne, align 8, !noalias !1636
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  store i64 %i.ih, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1636
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  store i64 %i.ii, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1636
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ne, i64 24
  store i64 %i.mv, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !1636
  %i.nf = add i64 %i.mz, 1
  store i64 %i.nf, ptr %i.my, align 8, !alias.scope !1648, !noalias !1636
  br label %bb.cz

.lr.ph481.i:                                      ; preds = %.preheader.i, %bb.dj
  %.sroa.09.4480.i = phi i64 [ %i.nv, %bb.dj ], [ %.sroa.09.0493.i, %.preheader.i ] ; 5 uses
  %.sroa.038.4479.i = phi i64 [ %i.nx, %bb.dj ], [ %.sroa.038.0492.i, %.preheader.i ] ; 6 uses
  %i.ng = and i64 %.sroa.038.4479.i, 1023
  %i.nh = icmp eq i64 %i.ng, 0
  %or.cond180.i = select i1 %.sroa.05.0.not494.i, i1 %i.nh, i1 false
  br i1 %or.cond180.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.dd, %.lr.ph481.i
  %i.ni = mul i64 %.sroa.09.4480.i, %i.gs
  %i.nj = add i64 %.sroa.09.4480.i, %invariant.op470.i ; 2 uses
  %i.nk = icmp ult i64 %i.nj, %i.ap
  br i1 %i.nk, label %bb.de, label %.invoke.i

bb.dc:                                            ; preds = %.lr.ph481.i
  %i.nl = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1636

bb.dd:                                            ; preds = %bb.dc
  br i1 %i.nl, label %.loopexit24.i, label %bb.db

bb.de:                                            ; preds = %bb.db
  %i.nm = add i64 %.sroa.038.4479.i, %invariant.op.i ; 2 uses
  %i.nn = icmp ult i64 %i.nm, %i.am
  br i1 %i.nn, label %bb.df, label %.invoke.i

bb.df:                                            ; preds = %bb.de
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.nj
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.nm
  %.val206.i = load i64, ptr %i.no, align 8, !noalias !1636, !noundef !5
  %.val207.i = load i64, ptr %i.np, align 8, !noalias !1636, !noundef !5
  %i.nq = icmp eq i64 %.val206.i, %.val207.i
  br i1 %i.nq, label %bb.dg, label %._crit_edge482.i

bb.dg:                                            ; preds = %bb.df
  %i.nr = add i64 %i.ni, %.sroa.038.4479.i        ; 3 uses
  %i.ns = load ptr, ptr %i.hc, align 8, !noalias !1636, !nonnull !5, !noundef !5 ; 2 uses
  %i.nt = load i64, ptr %i.hd, align 8, !noalias !1636, !noundef !5 ; 4 uses
  %i.nu = icmp ult i64 %i.nr, %i.nt
  br i1 %i.nu, label %bb.dh, label %.invoke.i

bb.dh:                                            ; preds = %bb.dg
  %i.nv = add nuw i64 %.sroa.09.4480.i, 1         ; 4 uses
  %i.nw = mul i64 %i.nv, %i.gs
  %i.nx = add nuw i64 %.sroa.038.4479.i, 1        ; 4 uses
  %i.ny = add i64 %i.nx, %i.nw                    ; 3 uses
  %i.nz = icmp ult i64 %i.ny, %i.nt
  br i1 %i.nz, label %bb.di, label %.invoke.i

bb.di:                                            ; preds = %bb.dh
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.nr
  %i.ob = load i8, ptr %i.oa, align 1, !noalias !1636, !noundef !5
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.ny
  %i.od = load i8, ptr %i.oc, align 1, !noalias !1636, !noundef !5
  %i.oe = add i8 %i.od, 1
  %i.of = icmp eq i8 %i.ob, %i.oe
  br i1 %i.of, label %bb.dj, label %._crit_edge482.i

bb.dj:                                            ; preds = %bb.di
  %i.og = icmp ult i64 %i.nv, %i.gk
  %i.oh = icmp ult i64 %i.nx, %i.gj
  %or.cond177.i = and i1 %i.og, %i.oh
  br i1 %or.cond177.i, label %.lr.ph481.i, label %._crit_edge482.i

.loopexit24.i:                                    ; preds = %bb.dm, %bb.do, %bb.br, %bb.cq, %bb.cd, %bb.dd, %bb.dz
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.sink.split.i unwind label %bb.dk, !noalias !1636

bb.dk:                                            ; preds = %.loopexit24.i
  %i.oi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.dl, !noalias !1636

bb.dl:                                            ; preds = %bb.dk
  %i.oj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !1636
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ge, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dk
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp1585, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.oi, %bb.dk ], [ %i.xl, %bb.ge ], [ %lpad.loopexit.split-lp1630, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

bb.dm:                                            ; preds = %.lr.ph469.split.i
  br i1 %i.hf, label %.loopexit24.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.dm
  %i.ok = mul i64 %i.he, %i.gs                    ; 2 uses
  %i.ol = mul i64 %.sroa.0102.0468.i, %i.gs       ; 2 uses
  %.reass.i = add i64 %i.he, %invariant.op470.i   ; 4 uses
  %i.om = icmp ult i64 %.reass.i, %i.ap
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.reass.i
  %.fr.i = freeze i1 %i.om
  br i1 %.fr.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.dx
  %.sroa.0105.0432.us.i = phi i64 [ %i.oo, %bb.dx ], [ %i.gj, %.lr.ph.i ] ; 3 uses
  %i.oo = add i64 %.sroa.0105.0432.us.i, -1       ; 6 uses
  %i.op = and i64 %i.oo, 1023
  %i.oq = icmp eq i64 %i.op, 0
  br i1 %i.oq, label %bb.dn, label %bb.dp

bb.dn:                                            ; preds = %.lr.ph.split.us.i
  %i.or = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.do unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1636

bb.do:                                            ; preds = %bb.dn
  br i1 %i.or, label %.loopexit24.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do, %.lr.ph.split.us.i
  %.reass.us.i = add i64 %i.oo, %invariant.op.i   ; 3 uses
  %i.os = icmp ult i64 %.reass.us.i, %i.am
  br i1 %i.os, label %bb.dq, label %.invoke.i

bb.dq:                                            ; preds = %bb.dp
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.reass.us.i
  %.val.us.i = load i64, ptr %i.on, align 8, !noalias !1636, !noundef !5
  %.val205.us.i = load i64, ptr %i.ot, align 8, !noalias !1636, !noundef !5
  %i.ou = icmp eq i64 %.val.us.i, %.val205.us.i
  br i1 %i.ou, label %bb.du, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ov = add i64 %i.oo, %i.ol                    ; 3 uses
  %i.ow = load ptr, ptr %i.hc, align 8, !noalias !1636, !nonnull !5, !noundef !5 ; 3 uses
  %i.ox = load i64, ptr %i.hd, align 8, !noalias !1636, !noundef !5 ; 5 uses
  %i.oy = icmp ult i64 %i.ov, %i.ox
  br i1 %i.oy, label %bb.ds, label %.invoke.i

bb.ds:                                            ; preds = %bb.dr
  %i.oz = add i64 %.sroa.0105.0432.us.i, %i.ok    ; 3 uses
  %i.pa = icmp ult i64 %i.oz, %i.ox
  br i1 %i.pa, label %bb.dt, label %.invoke.i

bb.dt:                                            ; preds = %bb.ds
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.ov
  %i.pc = load i8, ptr %i.pb, align 1, !noalias !1636, !noundef !5
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.oz
  %i.pe = load i8, ptr %i.pd, align 1, !noalias !1636, !noundef !5
  %.sroa.0.0.i.us.i = call noundef i8 @llvm.umax.i8(i8 %i.pe, i8 %i.pc)
  br label %bb.dw

bb.du:                                            ; preds = %bb.dq
  %i.pf = add i64 %.sroa.0105.0432.us.i, %i.ol    ; 3 uses
  %i.pg = load i64, ptr %i.hd, align 8, !noalias !1636, !noundef !5 ; 3 uses
  %i.ph = icmp ult i64 %i.pf, %i.pg
  br i1 %i.ph, label %bb.dv, label %.invoke.i

bb.dv:                                            ; preds = %bb.du
  %i.pi = load ptr, ptr %i.hc, align 8, !noalias !1636, !nonnull !5, !noundef !5 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 %i.pf
  %i.pk = load i8, ptr %i.pj, align 1, !noalias !1636, !noundef !5
  %i.pl = add i8 %i.pk, 1
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.dt
  %i.pm = phi ptr [ %i.pi, %bb.dv ], [ %i.ow, %bb.dt ]
  %i.pn = phi i64 [ %i.pg, %bb.dv ], [ %i.ox, %bb.dt ] ; 2 uses
  %.sroa.04.0.us.i = phi i8 [ %i.pl, %bb.dv ], [ %.sroa.0.0.i.us.i, %bb.dt ]
  %i.po = add i64 %i.oo, %i.ok                    ; 3 uses
  %i.pp = icmp ult i64 %i.po, %i.pn
  br i1 %i.pp, label %bb.dx, label %.invoke.i

bb.dx:                                            ; preds = %bb.dw
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.po
  store i8 %.sroa.04.0.us.i, ptr %i.pq, align 1, !noalias !1636
  %.not168.us.i = icmp eq i64 %i.oo, 0
  br i1 %.not168.us.i, label %..loopexit39_crit_edge.split.us.i, label %.lr.ph.split.us.i

..loopexit39_crit_edge.split.us.i:                ; preds = %bb.dx
  %.not.i78 = icmp eq i64 %i.he, 0
  br i1 %.not.i78, label %.lr.ph495.i, label %.lr.ph469.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.pr = and i64 %i.gj, 1023
  %i.ps = icmp eq i64 %i.pr, 1
  br i1 %i.ps, label %bb.dy, label %.invoke.i

bb.dy:                                            ; preds = %.lr.ph.split.i
  %i.pt = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1636

bb.dz:                                            ; preds = %bb.dy
  br i1 %i.pt, label %.loopexit24.i, label %.invoke.i

bb.ea:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.pu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !1636
  unreachable

bb.eb:                                            ; preds = %bb.bg
  br i1 %i.gr, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.pv = add i64 %i.gk, 1                        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1649
  %i.pw = add i64 %i.gj, 1
  %i.px = mul i64 %i.pw, %i.pv                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1650)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1651
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.px, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !1651
  %i.py = load i64, ptr %i.a, align 8, !range !9, !noalias !1651, !noundef !5
  %i.pz = trunc nuw i64 %i.py to i1
  %i.qa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.qb = load i64, ptr %i.qa, align 8, !range !17, !noalias !1651, !noundef !5 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.pz, label %bb.ed, label %.lr.ph484.i, !prof !13

bb.ed:                                            ; preds = %bb.ec
  %i.qd = load i64, ptr %i.qc, align 8, !noalias !1651
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.qb, i64 %i.qd) #28, !noalias !1651
  unreachable

.lr.ph484.i:                                      ; preds = %bb.ec
  %i.qe = load ptr, ptr %i.qc, align 8, !noalias !1651, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1651
  store i64 %i.qb, ptr %i.b, align 8, !alias.scope !1650, !noalias !1649
  %i.qf = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 7 uses
  store ptr %i.qe, ptr %i.qf, align 8, !alias.scope !1650, !noalias !1649
  %i.qg = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  store i64 %i.px, ptr %i.qg, align 8, !alias.scope !1650, !noalias !1649
  %invariant.op.i94 = sub i64 %.sroa.0197.0, %i.aq ; 4 uses
  %invariant.op485.i = sub i64 %.sroa.0.0, %i.an  ; 3 uses
  br label %.lr.ph484.split.i

.lr.ph484.split.i:                                ; preds = %.lr.ph484.i, %..loopexit39_crit_edge.split.us.i159
  %.sroa.0102.0483.i = phi i64 [ %i.qh, %..loopexit39_crit_edge.split.us.i159 ], [ %i.gj, %.lr.ph484.i ] ; 2 uses
  %i.qh = add i64 %.sroa.0102.0483.i, -1          ; 4 uses
  %i.qi = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1649

._crit_edge512.i:                                 ; preds = %bb.ft
  br i1 %i.vw, label %bb.ee, label %bb.eg

.lr.ph511.i:                                      ; preds = %..loopexit39_crit_edge.split.us.i159, %bb.ft
  %.sroa.05.0.not510.i = phi i1 [ false, %bb.ft ], [ true, %..loopexit39_crit_edge.split.us.i159 ] ; 3 uses
  %.sroa.09.0509.i = phi i64 [ %.sroa.09.3.i124, %bb.ft ], [ 0, %..loopexit39_crit_edge.split.us.i159 ] ; 13 uses
  %.sroa.039.0508.i = phi i64 [ %.sroa.039.3.i, %bb.ft ], [ 0, %..loopexit39_crit_edge.split.us.i159 ] ; 16 uses
  %i.qj = and i64 %.sroa.039.0508.i, 1023
  %i.qk = icmp eq i64 %i.qj, 0
  %or.cond170.i105 = select i1 %.sroa.05.0.not510.i, i1 %i.qk, i1 false ; 2 uses
  br i1 %or.cond170.i105, label %bb.ek, label %bb.ej

bb.ee:                                            ; preds = %._crit_edge512.i
  %i.ql = add i64 %.sroa.09.3.i124, %.sroa.0.0    ; 2 uses
  %i.qm = sub nuw i64 %i.gj, %.sroa.09.3.i124
  %i.qn = add i64 %.sroa.039.3.i, %.sroa.0197.0   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.qo = load ptr, ptr %.val51, align 8, !alias.scope !1652, !noalias !1649, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 120 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qo, i64 136 ; 2 uses
  %i.qr = load i64, ptr %i.qq, align 8, !alias.scope !1653, !noalias !1649, !noundef !5 ; 3 uses
  %i.qs = load i64, ptr %i.qp, align 8, !range !10, !alias.scope !1653, !noalias !1649, !noundef !5
  %i.qt = icmp eq i64 %i.qr, %i.qs
  br i1 %i.qt, label %bb.ef, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101

bb.ef:                                            ; preds = %bb.ee
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.qp)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1649

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101: ; preds = %bb.ef, %bb.ee
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qo, i64 128
  %i.qv = load ptr, ptr %i.qu, align 8, !alias.scope !1653, !noalias !1649, !nonnull !5, !noundef !5
  %i.qw = getelementptr inbounds nuw [40 x i8], ptr %i.qv, i64 %i.qr ; 4 uses
  store i64 1, ptr %i.qw, align 8, !noalias !1649
  %.sroa.47.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  store i64 %i.ql, ptr %.sroa.47.0..sroa_idx.i102, align 8, !noalias !1649
  %.sroa.58.0..sroa_idx.i103 = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  store i64 %i.qm, ptr %.sroa.58.0..sroa_idx.i103, align 8, !noalias !1649
  %.sroa.69.0..sroa_idx.i104 = getelementptr inbounds nuw i8, ptr %i.qw, i64 24
  store i64 %i.qn, ptr %.sroa.69.0..sroa_idx.i104, align 8, !noalias !1649
  %i.qx = add i64 %i.qr, 1
  store i64 %i.qx, ptr %i.qq, align 8, !alias.scope !1653, !noalias !1649
  br i1 %i.vx, label %bb.eh, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread311

bb.eg:                                            ; preds = %._crit_edge512.i
  br i1 %i.vx, label %._crit_edge898, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread311

._crit_edge898:                                   ; preds = %bb.eg
  %.pre904 = add i64 %.sroa.09.3.i124, %.sroa.0.0
  %.pre906 = add i64 %.sroa.039.3.i, %.sroa.0197.0
  br label %bb.eh

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gh, %bb.ek, %bb.ev, %bb.fi, %bb.fu, %bb.fw, %bb.ew, %bb.fj, %.lr.ph484.split.i, %bb.gs, %.invoke.i106, %bb.ei, %bb.ef
  %lpad.loopexit.split-lp1630 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.b) #26
          to label %common.resume unwind label %bb.gw, !noalias !1649

bb.eh:                                            ; preds = %._crit_edge898, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101
  %.pre-phi907 = phi i64 [ %.pre906, %._crit_edge898 ], [ %i.qn, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101 ]
  %.pre-phi905 = phi i64 [ %.pre904, %._crit_edge898 ], [ %i.ql, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101 ]
  %i.qy = sub nuw i64 %i.gk, %.sroa.039.3.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.qz = load ptr, ptr %.val51, align 8, !alias.scope !1654, !noalias !1649, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 120 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qz, i64 136 ; 2 uses
  %i.rc = load i64, ptr %i.rb, align 8, !alias.scope !1655, !noalias !1649, !noundef !5 ; 3 uses
  %i.rd = load i64, ptr %i.ra, align 8, !range !10, !alias.scope !1655, !noalias !1649, !noundef !5
  %i.re = icmp eq i64 %i.rc, %i.rd
  br i1 %i.re, label %bb.ei, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i86

bb.ei:                                            ; preds = %bb.eh
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ra)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i86 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1649

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i86: ; preds = %bb.ei, %bb.eh
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qz, i64 128
  %i.rg = load ptr, ptr %i.rf, align 8, !alias.scope !1655, !noalias !1649, !nonnull !5, !noundef !5
  %i.rh = getelementptr inbounds nuw [40 x i8], ptr %i.rg, i64 %i.rc ; 4 uses
  store i64 2, ptr %i.rh, align 8, !noalias !1649
  %.sroa.417.0..sroa_idx.i87 = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  store i64 %.pre-phi905, ptr %.sroa.417.0..sroa_idx.i87, align 8, !noalias !1649
  %.sroa.518.0..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %i.rh, i64 16
  store i64 %.pre-phi907, ptr %.sroa.518.0..sroa_idx.i88, align 8, !noalias !1649
  %.sroa.619.0..sroa_idx.i89 = getelementptr inbounds nuw i8, ptr %i.rh, i64 24
  store i64 %i.qy, ptr %.sroa.619.0..sroa_idx.i89, align 8, !noalias !1649
  %i.ri = add i64 %i.rc, 1
  store i64 %i.ri, ptr %i.rb, align 8, !alias.scope !1655, !noalias !1649
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread311

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread311: ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101, %bb.eg, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i86
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.b), !noalias !1649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1649
  br label %bb.ba

bb.ej:                                            ; preds = %bb.el, %.lr.ph511.i
  %i.rj = mul i64 %.sroa.09.0509.i, %i.pv         ; 4 uses
  %i.rk = add i64 %.sroa.09.0509.i, %.sroa.0.0    ; 4 uses
  %i.rl = add i64 %.sroa.039.0508.i, %.sroa.0197.0 ; 4 uses
  %i.rm = sub i64 %i.rl, %i.aq                    ; 3 uses
  %i.rn = icmp ult i64 %i.rm, %i.ap
  br i1 %i.rn, label %bb.em, label %.invoke.i106

.invoke.i106:                                     ; preds = %bb.gq, %bb.go, %bb.gm, %bb.gl, %bb.gj, %bb.es, %bb.eq, %bb.ep, %bb.eo, %bb.em, %bb.ej, %bb.fr, %bb.fp, %bb.fo, %bb.fn, %bb.fl, %bb.fe, %bb.fc, %bb.fb, %bb.fa, %bb.ey, %bb.fy, %bb.fv, %bb.gb, %bb.ga, %bb.gv, %bb.gu
  %i.ro = phi i64 [ %i.uc, %bb.fe ], [ %.reass.i150, %bb.gu ], [ %.reass486.i, %bb.gv ], [ %i.vq, %bb.fr ], [ %i.rm, %bb.ej ], [ %i.xb, %bb.gb ], [ %i.ap, %bb.fv ], [ %i.wu, %bb.ga ], [ %i.am, %bb.fy ], [ %i.tm, %bb.ey ], [ %i.tq, %bb.fa ], [ %i.tu, %bb.fc ], [ %i.ts, %bb.fb ], [ %i.uy, %bb.fl ], [ %i.vc, %bb.fn ], [ %i.vi, %bb.fp ], [ %i.ve, %bb.fo ], [ %i.rx, %bb.eo ], [ %i.rz, %bb.ep ], [ %i.sp, %bb.es ], [ %i.rt, %bb.em ], [ %i.se, %bb.eq ], [ %i.xy, %bb.gl ], [ %.reass.us.i153, %bb.gj ], [ %i.yr, %bb.gq ], [ %i.yc, %bb.gm ], [ %i.yi, %bb.go ]
  %i.rp = phi i64 [ %.pre745.i.a, %bb.fe ], [ %i.ap, %bb.gu ], [ %i.am, %bb.gv ], [ %.pre743.i, %bb.fr ], [ %i.ap, %bb.ej ], [ %i.ww, %bb.gb ], [ %i.ap, %bb.fv ], [ %i.ww, %bb.ga ], [ %i.am, %bb.fy ], [ %i.ap, %bb.ey ], [ %.pre745.i.a, %bb.fa ], [ %.pre745.i.a, %bb.fc ], [ %.pre745.i.a, %bb.fb ], [ %i.am, %bb.fl ], [ %.pre743.i, %bb.fn ], [ %.pre743.i, %bb.fp ], [ %.pre743.i, %bb.fo ], [ %.pre741.i, %bb.eo ], [ %.pre741.i, %bb.ep ], [ %.pre741.i, %bb.es ], [ %i.am, %bb.em ], [ %.pre741.i, %bb.eq ], [ %i.ya, %bb.gl ], [ %i.ap, %bb.gj ], [ %i.yq, %bb.gq ], [ %i.ya, %bb.gm ], [ %i.yj, %bb.go ]
  %i.rq = phi ptr [ @91, %bb.fe ], [ @102, %bb.gu ], [ @103, %bb.gv ], [ @97, %bb.fr ], [ @80, %bb.ej ], [ @101, %bb.gb ], [ @98, %bb.fv ], [ @100, %bb.ga ], [ @99, %bb.fy ], [ @86, %bb.ey ], [ @88, %bb.fa ], [ @89, %bb.fc ], [ @90, %bb.fb ], [ @93, %bb.fl ], [ @94, %bb.fn ], [ @95, %bb.fp ], [ @96, %bb.fo ], [ @82, %bb.eo ], [ @84, %bb.ep ], [ @85, %bb.es ], [ @81, %bb.em ], [ @83, %bb.eq ], [ @104, %bb.gl ], [ @102, %bb.gj ], [ @107, %bb.gq ], [ @105, %bb.gm ], [ @106, %bb.go ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ro, i64 noundef %i.rp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.rq) #28
          to label %.cont.i107 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1649

.cont.i107:                                       ; preds = %.invoke.i106
  unreachable

bb.ek:                                            ; preds = %.lr.ph511.i
  %i.rr = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.el unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1649

bb.el:                                            ; preds = %bb.ek
  br i1 %i.rr, label %.loopexit24.i126, label %bb.ej

bb.em:                                            ; preds = %bb.ej
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.rm ; 2 uses
  %i.rt = sub i64 %i.rk, %i.an                    ; 3 uses
  %i.ru = icmp ult i64 %i.rt, %i.am
  br i1 %i.ru, label %bb.en, label %.invoke.i106

bb.en:                                            ; preds = %bb.em
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.rt ; 2 uses
  %.val212.i108 = load i64, ptr %i.rs, align 8, !noalias !1649, !noundef !5
  %.val213.i109 = load i64, ptr %i.rv, align 8, !noalias !1649, !noundef !5
  %i.rw = icmp eq i64 %.val212.i108, %.val213.i109
  %.pre.i110 = load ptr, ptr %i.qf, align 8, !noalias !1649 ; 4 uses
  %.pre741.i = load i64, ptr %i.qg, align 8, !noalias !1649 ; 8 uses
  br i1 %i.rw, label %bb.eo, label %._crit_edge747.i

._crit_edge747.i:                                 ; preds = %bb.en
  %.pre748.i = add nuw i64 %.sroa.09.0509.i, 1
  %.pre749.i = mul i64 %.pre748.i, %i.pv
  br label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.rx = add i64 %i.rj, %.sroa.039.0508.i        ; 3 uses
  %i.ry = icmp ult i64 %i.rx, %.pre741.i
  br i1 %i.ry, label %bb.eq, label %.invoke.i106

bb.ep:                                            ; preds = %bb.er, %._crit_edge747.i
  %.pre-phi750.i = phi i64 [ %.pre749.i, %._crit_edge747.i ], [ %i.sc, %bb.er ] ; 3 uses
  %i.rz = add i64 %.pre-phi750.i, %.sroa.039.0508.i ; 3 uses
  %i.sa = icmp ult i64 %i.rz, %.pre741.i
  br i1 %i.sa, label %bb.es, label %.invoke.i106

bb.eq:                                            ; preds = %bb.eo
  %i.sb = add nuw i64 %.sroa.09.0509.i, 1
  %i.sc = mul i64 %i.sb, %i.pv                    ; 2 uses
  %i.sd = add nuw i64 %.sroa.039.0508.i, 1
  %i.se = add i64 %i.sd, %i.sc                    ; 3 uses
  %i.sf = icmp ult i64 %i.se, %.pre741.i
  br i1 %i.sf, label %bb.er, label %.invoke.i106

bb.er:                                            ; preds = %bb.eq
  %i.sg = getelementptr inbounds nuw i8, ptr %.pre.i110, i64 %i.rx
  %i.sh = load i8, ptr %i.sg, align 1, !noalias !1649, !noundef !5
  %i.si = getelementptr inbounds nuw i8, ptr %.pre.i110, i64 %i.se
  %i.sj = load i8, ptr %i.si, align 1, !noalias !1649, !noundef !5
  %i.sk = add i8 %i.sj, 1
  %i.sl = icmp eq i8 %i.sh, %i.sk
  br i1 %i.sl, label %.preheader.i137, label %bb.ep

.preheader.i137:                                  ; preds = %bb.er
  %i.sm = icmp ult i64 %.sroa.09.0509.i, %i.gj
  %i.sn = icmp ult i64 %.sroa.039.0508.i, %i.gk
  %or.cond177494.i = select i1 %i.sm, i1 %i.sn, i1 false
  br i1 %or.cond177494.i, label %.lr.ph497.i, label %._crit_edge498.i

bb.es:                                            ; preds = %bb.ep
  %i.so = add i64 %.sroa.039.0508.i, 1            ; 3 uses
  %i.sp = add i64 %i.so, %i.rj                    ; 3 uses
  %i.sq = icmp ult i64 %i.sp, %.pre741.i
  br i1 %i.sq, label %bb.et, label %.invoke.i106

bb.et:                                            ; preds = %bb.es
  %i.sr = getelementptr inbounds nuw i8, ptr %.pre.i110, i64 %i.rz
  %i.ss = load i8, ptr %i.sr, align 1, !noalias !1649, !noundef !5
  %i.st = getelementptr inbounds nuw i8, ptr %.pre.i110, i64 %i.sp
  %i.su = load i8, ptr %i.st, align 1, !noalias !1649, !noundef !5
  %.not164.i111 = icmp ult i8 %i.ss, %i.su
  br i1 %.not164.i111, label %.preheader25.i128, label %.preheader30.i112

.preheader30.i112:                                ; preds = %bb.et
  %umax.i113 = call i64 @llvm.umax.i64(i64 %.sroa.09.0509.i, i64 %i.gj) ; 3 uses
  %exitcond.not.i1151534.not = icmp ult i64 %.sroa.09.0509.i, %i.gj
  br i1 %exitcond.not.i1151534.not, label %.lr.ph1536, label %._crit_edge1537

.preheader25.i128:                                ; preds = %bb.et
  %i.sv = icmp ult i64 %.sroa.039.0508.i, %i.gk
  br i1 %i.sv, label %.lr.ph489.i, label %._crit_edge.i129

.lr.ph489.i:                                      ; preds = %.preheader25.i128
  %i.sw = add i64 %.pre-phi750.i, 1
  %i.sx = add i64 %i.rj, 1
  br label %bb.eu

bb.eu:                                            ; preds = %bb.fg, %.lr.ph489.i
  %.sroa.039.1488.i = phi i64 [ %.sroa.039.0508.i, %.lr.ph489.i ], [ %i.uj, %bb.fg ] ; 9 uses
  %i.sy = and i64 %.sroa.039.1488.i, 1023
  %i.sz = icmp eq i64 %i.sy, 0
  %or.cond173.i134 = and i1 %.sroa.05.0.not510.i, %i.sz
  br i1 %or.cond173.i134, label %bb.ew, label %bb.ey

._crit_edge.i129:                                 ; preds = %bb.fg, %bb.ff, %bb.fd, %.preheader25.i128
  %.sroa.039.1.lcssa.i = phi i64 [ %.sroa.039.0508.i, %.preheader25.i128 ], [ %i.gk, %bb.fg ], [ %.sroa.039.1488.i, %bb.ff ], [ %.sroa.039.1488.i, %bb.fd ] ; 2 uses
  %i.ta = sub nuw i64 %.sroa.039.1.lcssa.i, %.sroa.039.0508.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.tb = load ptr, ptr %.val51, align 8, !alias.scope !1656, !noalias !1649, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 120 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 136 ; 2 uses
  %i.te = load i64, ptr %i.td, align 8, !alias.scope !1657, !noalias !1649, !noundef !5 ; 3 uses
  %i.tf = load i64, ptr %i.tc, align 8, !range !10, !alias.scope !1657, !noalias !1649, !noundef !5
  %i.tg = icmp eq i64 %i.te, %i.tf
  br i1 %i.tg, label %bb.ev, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i130

bb.ev:                                            ; preds = %._crit_edge.i129
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.tc)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i130 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1649

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i130: ; preds = %bb.ev, %._crit_edge.i129
  %i.th = getelementptr inbounds nuw i8, ptr %i.tb, i64 128
  %i.ti = load ptr, ptr %i.th, align 8, !alias.scope !1657, !noalias !1649, !nonnull !5, !noundef !5
  %i.tj = getelementptr inbounds nuw [40 x i8], ptr %i.ti, i64 %i.te ; 4 uses
  store i64 2, ptr %i.tj, align 8, !noalias !1649
  %.sroa.412.0..sroa_idx.i131 = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  store i64 %i.rk, ptr %.sroa.412.0..sroa_idx.i131, align 8, !noalias !1649
  %.sroa.513.0..sroa_idx.i132 = getelementptr inbounds nuw i8, ptr %i.tj, i64 16
  store i64 %i.rl, ptr %.sroa.513.0..sroa_idx.i132, align 8, !noalias !1649
  %.sroa.614.0..sroa_idx.i133 = getelementptr inbounds nuw i8, ptr %i.tj, i64 24
  store i64 %i.ta, ptr %.sroa.614.0..sroa_idx.i133, align 8, !noalias !1649
  %i.tk = add i64 %i.te, 1
  store i64 %i.tk, ptr %i.td, align 8, !alias.scope !1657, !noalias !1649
  br label %bb.ft

bb.ew:                                            ; preds = %bb.eu
  %i.tl = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.ex unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1649

bb.ex:                                            ; preds = %bb.ew
  br i1 %i.tl, label %.loopexit24.i126, label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.eu
  %i.tm = add i64 %.sroa.039.1488.i, %invariant.op.i94 ; 3 uses
  %i.tn = icmp ult i64 %i.tm, %i.ap
  br i1 %i.tn, label %bb.ez, label %.invoke.i106

bb.ez:                                            ; preds = %bb.ey
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.tm
  %.val210.i135 = load i64, ptr %i.to, align 8, !noalias !1649, !noundef !5
  %.val211.i136 = load i64, ptr %i.rv, align 8, !noalias !1649, !noundef !5
  %i.tp = icmp eq i64 %.val210.i135, %.val211.i136
  %.pre744.i.a = load ptr, ptr %i.qf, align 8, !noalias !1649 ; 4 uses
  %.pre745.i.a = load i64, ptr %i.qg, align 8, !noalias !1649 ; 8 uses
  br i1 %i.tp, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.tq = add i64 %.sroa.039.1488.i, %i.rj        ; 3 uses
  %i.tr = icmp ult i64 %i.tq, %.pre745.i.a
  br i1 %i.tr, label %bb.fc, label %.invoke.i106

bb.fb:                                            ; preds = %bb.fd, %bb.ez
  %i.ts = add i64 %.sroa.039.1488.i, %.pre-phi750.i ; 3 uses
  %i.tt = icmp ult i64 %i.ts, %.pre745.i.a
  br i1 %i.tt, label %bb.fe, label %.invoke.i106

bb.fc:                                            ; preds = %bb.fa
  %i.tu = add i64 %i.sw, %.sroa.039.1488.i        ; 3 uses
  %i.tv = icmp ult i64 %i.tu, %.pre745.i.a
  br i1 %i.tv, label %bb.fd, label %.invoke.i106

bb.fd:                                            ; preds = %bb.fc
  %i.tw = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.tq
  %i.tx = load i8, ptr %i.tw, align 1, !noalias !1649, !noundef !5
  %i.ty = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.tu
  %i.tz = load i8, ptr %i.ty, align 1, !noalias !1649, !noundef !5
  %i.ua = add i8 %i.tz, 1
  %i.ub = icmp eq i8 %i.tx, %i.ua
  br i1 %i.ub, label %._crit_edge.i129, label %bb.fb

bb.fe:                                            ; preds = %bb.fb
  %i.uc = add i64 %i.sx, %.sroa.039.1488.i        ; 3 uses
  %i.ud = icmp ult i64 %i.uc, %.pre745.i.a
  br i1 %i.ud, label %bb.ff, label %.invoke.i106

bb.ff:                                            ; preds = %bb.fe
  %i.ue = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.ts
  %i.uf = load i8, ptr %i.ue, align 1, !noalias !1649, !noundef !5
  %i.ug = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.uc
  %i.uh = load i8, ptr %i.ug, align 1, !noalias !1649, !noundef !5
  %i.ui = icmp ult i8 %i.uf, %i.uh
  br i1 %i.ui, label %bb.fg, label %._crit_edge.i129

bb.fg:                                            ; preds = %bb.ff
  %i.uj = add nuw i64 %.sroa.039.1488.i, 1        ; 2 uses
  %i.uk = icmp ult i64 %i.uj, %i.gk
  br i1 %i.uk, label %bb.eu, label %._crit_edge.i129

bb.fh:                                            ; preds = %bb.fs
  %exitcond.not.i115 = icmp eq i64 %.pre-phi752.i, %umax.i113
  br i1 %exitcond.not.i115, label %._crit_edge1537, label %.lr.ph1536

.lr.ph1536:                                       ; preds = %.preheader30.i112, %bb.fh
  %.sroa.09.1.i1141535 = phi i64 [ %.pre-phi752.i, %bb.fh ], [ %.sroa.09.0509.i, %.preheader30.i112 ] ; 6 uses
  br i1 %or.cond170.i105, label %bb.fj, label %bb.fl

._crit_edge1537:                                  ; preds = %bb.fh, %bb.fq, %bb.fs, %.preheader30.i112
  %.sroa.09.1.lcssa.i119 = phi i64 [ %umax.i113, %.preheader30.i112 ], [ %umax.i113, %bb.fh ], [ %.sroa.09.1.i1141535, %bb.fq ], [ %.sroa.09.1.i1141535, %bb.fs ] ; 2 uses
  %i.ul = sub nuw i64 %.sroa.09.1.lcssa.i119, %.sroa.09.0509.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.um = load ptr, ptr %.val51, align 8, !alias.scope !1658, !noalias !1649, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 120 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.um, i64 136 ; 2 uses
  %i.up = load i64, ptr %i.uo, align 8, !alias.scope !1659, !noalias !1649, !noundef !5 ; 3 uses
  %i.uq = load i64, ptr %i.un, align 8, !range !10, !alias.scope !1659, !noalias !1649, !noundef !5
  %i.ur = icmp eq i64 %i.up, %i.uq
  br i1 %i.ur, label %bb.fi, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i120

bb.fi:                                            ; preds = %._crit_edge1537
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.un)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1649

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i120: ; preds = %bb.fi, %._crit_edge1537
  %i.us = getelementptr inbounds nuw i8, ptr %i.um, i64 128
  %i.ut = load ptr, ptr %i.us, align 8, !alias.scope !1659, !noalias !1649, !nonnull !5, !noundef !5
  %i.uu = getelementptr inbounds nuw [40 x i8], ptr %i.ut, i64 %i.up ; 4 uses
  store i64 1, ptr %i.uu, align 8, !noalias !1649
  %.sroa.42.0..sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  store i64 %i.rk, ptr %.sroa.42.0..sroa_idx.i121, align 8, !noalias !1649
  %.sroa.53.0..sroa_idx.i122 = getelementptr inbounds nuw i8, ptr %i.uu, i64 16
  store i64 %i.ul, ptr %.sroa.53.0..sroa_idx.i122, align 8, !noalias !1649
  %.sroa.64.0..sroa_idx.i123 = getelementptr inbounds nuw i8, ptr %i.uu, i64 24
  store i64 %i.rl, ptr %.sroa.64.0..sroa_idx.i123, align 8, !noalias !1649
  %i.uv = add i64 %i.up, 1
  store i64 %i.uv, ptr %i.uo, align 8, !alias.scope !1659, !noalias !1649
  br label %bb.ft

bb.fj:                                            ; preds = %.lr.ph1536
  %i.uw = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1649

bb.fk:                                            ; preds = %bb.fj
  br i1 %i.uw, label %.loopexit24.i126, label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %.lr.ph1536
  %i.ux = mul i64 %.sroa.09.1.i1141535, %i.pv     ; 2 uses
  %i.uy = add i64 %.sroa.09.1.i1141535, %invariant.op485.i ; 3 uses
  %i.uz = icmp ult i64 %i.uy, %i.am
  br i1 %i.uz, label %bb.fm, label %.invoke.i106

bb.fm:                                            ; preds = %bb.fl
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.uy
  %.val208.i116 = load i64, ptr %i.rs, align 8, !noalias !1649, !noundef !5
  %.val209.i117 = load i64, ptr %i.va, align 8, !noalias !1649, !noundef !5
  %i.vb = icmp eq i64 %.val208.i116, %.val209.i117
  %.pre742.i = load ptr, ptr %i.qf, align 8, !noalias !1649 ; 4 uses
  %.pre743.i = load i64, ptr %i.qg, align 8, !noalias !1649 ; 8 uses
  br i1 %i.vb, label %bb.fn, label %._crit_edge746.i

._crit_edge746.i:                                 ; preds = %bb.fm
  %.pre751.i = add i64 %.sroa.09.1.i1141535, 1    ; 2 uses
  %.pre753.i = mul i64 %.pre751.i, %i.pv
  br label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.vc = add i64 %i.ux, %.sroa.039.0508.i        ; 3 uses
  %i.vd = icmp ult i64 %i.vc, %.pre743.i
  br i1 %i.vd, label %bb.fp, label %.invoke.i106

bb.fo:                                            ; preds = %bb.fq, %._crit_edge746.i
  %.pre-phi754.i.a = phi i64 [ %.pre753.i, %._crit_edge746.i ], [ %i.vh, %bb.fq ]
  %.pre-phi752.i = phi i64 [ %.pre751.i, %._crit_edge746.i ], [ %i.vg, %bb.fq ] ; 2 uses
  %i.ve = add i64 %.pre-phi754.i.a, %.sroa.039.0508.i ; 3 uses
  %i.vf = icmp ult i64 %i.ve, %.pre743.i
  br i1 %i.vf, label %bb.fr, label %.invoke.i106

bb.fp:                                            ; preds = %bb.fn
  %i.vg = add i64 %.sroa.09.1.i1141535, 1         ; 2 uses
  %i.vh = mul i64 %i.vg, %i.pv                    ; 2 uses
  %i.vi = add i64 %i.vh, %i.so                    ; 3 uses
  %i.vj = icmp ult i64 %i.vi, %.pre743.i
  br i1 %i.vj, label %bb.fq, label %.invoke.i106

bb.fq:                                            ; preds = %bb.fp
  %i.vk = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.vc
  %i.vl = load i8, ptr %i.vk, align 1, !noalias !1649, !noundef !5
  %i.vm = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.vi
  %i.vn = load i8, ptr %i.vm, align 1, !noalias !1649, !noundef !5
  %i.vo = add i8 %i.vn, 1
  %i.vp = icmp eq i8 %i.vl, %i.vo
  br i1 %i.vp, label %._crit_edge1537, label %bb.fo

bb.fr:                                            ; preds = %bb.fo
  %i.vq = add i64 %i.ux, %i.so                    ; 3 uses
  %i.vr = icmp ult i64 %i.vq, %.pre743.i
  br i1 %i.vr, label %bb.fs, label %.invoke.i106

bb.fs:                                            ; preds = %bb.fr
  %i.vs = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.ve
  %i.vt = load i8, ptr %i.vs, align 1, !noalias !1649, !noundef !5
  %i.vu = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.vq
  %i.vv = load i8, ptr %i.vu, align 1, !noalias !1649, !noundef !5
  %.not167.i118 = icmp ult i8 %i.vt, %i.vv
  br i1 %.not167.i118, label %._crit_edge1537, label %bb.fh

bb.ft:                                            ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i139, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i120, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i130
  %.sroa.039.3.i = phi i64 [ %.sroa.039.0508.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i120 ], [ %.sroa.039.1.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i130 ], [ %.sroa.039.4.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i139 ] ; 5 uses
  %.sroa.09.3.i124 = phi i64 [ %.sroa.09.1.lcssa.i119, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i120 ], [ %.sroa.09.0509.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i130 ], [ %.sroa.09.4.lcssa.i138, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i139 ] ; 5 uses
  %i.vw = icmp ult i64 %.sroa.09.3.i124, %i.gj    ; 2 uses
  %i.vx = icmp ult i64 %.sroa.039.3.i, %i.gk      ; 3 uses
  %or.cond.i125 = select i1 %i.vw, i1 %i.vx, i1 false
  br i1 %or.cond.i125, label %.lr.ph511.i, label %._crit_edge512.i

._crit_edge498.i:                                 ; preds = %bb.gd, %bb.gc, %bb.fz, %.preheader.i137
  %.sroa.039.4.lcssa.i = phi i64 [ %.sroa.039.0508.i, %.preheader.i137 ], [ %i.xa, %bb.gd ], [ %.sroa.039.4495.i, %bb.fz ], [ %.sroa.039.4495.i, %bb.gc ]
  %.sroa.09.4.lcssa.i138 = phi i64 [ %.sroa.09.0509.i, %.preheader.i137 ], [ %i.wy, %bb.gd ], [ %.sroa.09.4496.i, %bb.fz ], [ %.sroa.09.4496.i, %bb.gc ] ; 2 uses
  %i.vy = sub i64 %.sroa.09.4.lcssa.i138, %.sroa.09.0509.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.vz = load ptr, ptr %.val51, align 8, !alias.scope !1660, !noalias !1649, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 120 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vz, i64 136 ; 2 uses
  %i.wc = load i64, ptr %i.wb, align 8, !alias.scope !1661, !noalias !1649, !noundef !5 ; 3 uses
  %i.wd = load i64, ptr %i.wa, align 8, !range !10, !alias.scope !1661, !noalias !1649, !noundef !5
  %i.we = icmp eq i64 %i.wc, %i.wd
  br i1 %i.we, label %bb.fu, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i139

bb.fu:                                            ; preds = %._crit_edge498.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.wa)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i139 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1649

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i139: ; preds = %bb.fu, %._crit_edge498.i
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vz, i64 128
  %i.wg = load ptr, ptr %i.wf, align 8, !alias.scope !1661, !noalias !1649, !nonnull !5, !noundef !5
  %i.wh = getelementptr inbounds nuw [40 x i8], ptr %i.wg, i64 %i.wc ; 4 uses
  store i64 0, ptr %i.wh, align 8, !noalias !1649
  %.sroa.4.0..sroa_idx.i140 = getelementptr inbounds nuw i8, ptr %i.wh, i64 8
  store i64 %i.rk, ptr %.sroa.4.0..sroa_idx.i140, align 8, !noalias !1649
  %.sroa.5.0..sroa_idx.i141 = getelementptr inbounds nuw i8, ptr %i.wh, i64 16
  store i64 %i.rl, ptr %.sroa.5.0..sroa_idx.i141, align 8, !noalias !1649
  %.sroa.6.0..sroa_idx.i142 = getelementptr inbounds nuw i8, ptr %i.wh, i64 24
  store i64 %i.vy, ptr %.sroa.6.0..sroa_idx.i142, align 8, !noalias !1649
  %i.wi = add i64 %i.wc, 1
  store i64 %i.wi, ptr %i.wb, align 8, !alias.scope !1661, !noalias !1649
  br label %bb.ft

.lr.ph497.i:                                      ; preds = %.preheader.i137, %bb.gd
  %.sroa.09.4496.i = phi i64 [ %i.wy, %bb.gd ], [ %.sroa.09.0509.i, %.preheader.i137 ] ; 5 uses
  %.sroa.039.4495.i = phi i64 [ %i.xa, %bb.gd ], [ %.sroa.039.0508.i, %.preheader.i137 ] ; 6 uses
  %i.wj = and i64 %.sroa.039.4495.i, 1023
  %i.wk = icmp eq i64 %i.wj, 0
  %or.cond180.i143 = select i1 %.sroa.05.0.not510.i, i1 %i.wk, i1 false
  br i1 %or.cond180.i143, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fx, %.lr.ph497.i
  %i.wl = mul i64 %.sroa.09.4496.i, %i.pv
  %i.wm = add i64 %.sroa.039.4495.i, %invariant.op.i94 ; 2 uses
  %i.wn = icmp ult i64 %i.wm, %i.ap
  br i1 %i.wn, label %bb.fy, label %.invoke.i106

bb.fw:                                            ; preds = %.lr.ph497.i
  %i.wo = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1649

bb.fx:                                            ; preds = %bb.fw
  br i1 %i.wo, label %.loopexit24.i126, label %bb.fv

bb.fy:                                            ; preds = %bb.fv
  %i.wp = add i64 %.sroa.09.4496.i, %invariant.op485.i ; 2 uses
  %i.wq = icmp ult i64 %i.wp, %i.am
  br i1 %i.wq, label %bb.fz, label %.invoke.i106

bb.fz:                                            ; preds = %bb.fy
  %i.wr = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.wm
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.wp
  %.val206.i144 = load i64, ptr %i.wr, align 8, !noalias !1649, !noundef !5
  %.val207.i145 = load i64, ptr %i.ws, align 8, !noalias !1649, !noundef !5
  %i.wt = icmp eq i64 %.val206.i144, %.val207.i145
  br i1 %i.wt, label %bb.ga, label %._crit_edge498.i

bb.ga:                                            ; preds = %bb.fz
  %i.wu = add i64 %i.wl, %.sroa.039.4495.i        ; 3 uses
  %i.wv = load ptr, ptr %i.qf, align 8, !noalias !1649, !nonnull !5, !noundef !5 ; 2 uses
  %i.ww = load i64, ptr %i.qg, align 8, !noalias !1649, !noundef !5 ; 4 uses
  %i.wx = icmp ult i64 %i.wu, %i.ww
  br i1 %i.wx, label %bb.gb, label %.invoke.i106

bb.gb:                                            ; preds = %bb.ga
  %i.wy = add nuw i64 %.sroa.09.4496.i, 1         ; 4 uses
  %i.wz = mul i64 %i.wy, %i.pv
  %i.xa = add nuw i64 %.sroa.039.4495.i, 1        ; 4 uses
  %i.xb = add i64 %i.xa, %i.wz                    ; 3 uses
  %i.xc = icmp ult i64 %i.xb, %i.ww
  br i1 %i.xc, label %bb.gc, label %.invoke.i106

bb.gc:                                            ; preds = %bb.gb
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wv, i64 %i.wu
  %i.xe = load i8, ptr %i.xd, align 1, !noalias !1649, !noundef !5
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wv, i64 %i.xb
  %i.xg = load i8, ptr %i.xf, align 1, !noalias !1649, !noundef !5
  %i.xh = add i8 %i.xg, 1
  %i.xi = icmp eq i8 %i.xe, %i.xh
  br i1 %i.xi, label %bb.gd, label %._crit_edge498.i

bb.gd:                                            ; preds = %bb.gc
  %i.xj = icmp ult i64 %i.wy, %i.gj
  %i.xk = icmp ult i64 %i.xa, %i.gk
  %or.cond177.i146 = and i1 %i.xj, %i.xk
  br i1 %or.cond177.i146, label %.lr.ph497.i, label %._crit_edge498.i

.loopexit24.i126:                                 ; preds = %bb.gg, %bb.gi, %bb.el, %bb.fk, %bb.ex, %bb.fx, %bb.gt
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.ge, !noalias !1649

bb.ge:                                            ; preds = %.loopexit24.i126
  %i.xl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.gf, !noalias !1649

bb.gf:                                            ; preds = %bb.ge
  %i.xm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !1649
  unreachable

bb.gg:                                            ; preds = %.lr.ph484.split.i
  br i1 %i.qi, label %.loopexit24.i126, label %.lr.ph.i147

.lr.ph.i147:                                      ; preds = %bb.gg
  %i.xn = mul i64 %i.qh, %i.pv                    ; 2 uses
  %i.xo = mul i64 %.sroa.0102.0483.i, %i.pv       ; 2 uses
  %.reass486.i = add i64 %i.qh, %invariant.op485.i ; 3 uses
  %i.xp = icmp ult i64 %.reass486.i, %i.am
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.reass486.i
  %.fr.i148 = freeze i1 %i.xp
  br i1 %.fr.i148, label %.lr.ph.split.us.i151, label %.lr.ph.split.i149

.lr.ph.split.us.i151:                             ; preds = %.lr.ph.i147, %bb.gr
  %.sroa.0105.0432.us.i152 = phi i64 [ %i.xr, %bb.gr ], [ %i.gk, %.lr.ph.i147 ] ; 3 uses
  %i.xr = add i64 %.sroa.0105.0432.us.i152, -1    ; 6 uses
  %i.xs = and i64 %i.xr, 1023
  %i.xt = icmp eq i64 %i.xs, 0
  br i1 %i.xt, label %bb.gh, label %bb.gj

bb.gh:                                            ; preds = %.lr.ph.split.us.i151
  %i.xu = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1649

bb.gi:                                            ; preds = %bb.gh
end_hunk_3
begin_hunk_4_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter:bb.a
  %i.zr = add i64 %i.zl, 1
  store i64 %i.zr, ptr %i.zk, align 8, !alias.scope !1668, !noalias !1669
  %i.zs = sub nuw i64 %i.as, %.sroa.0197.0
  call void @llvm.experimental.noalias.scope.decl(metadata !1671)
  call void @llvm.experimental.noalias.scope.decl(metadata !1672), !noalias !1673
  %i.zt = load ptr, ptr %i.zh, align 8, !alias.scope !1674, !noalias !1673, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 120 ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zt, i64 136 ; 2 uses
  %i.zw = load i64, ptr %i.zv, align 8, !alias.scope !1675, !noalias !1676, !noundef !5 ; 3 uses
  %i.zx = load i64, ptr %i.zu, align 8, !range !10, !alias.scope !1675, !noalias !1676, !noundef !5
  %i.zy = icmp eq i64 %i.zw, %i.zx
  br i1 %i.zy, label %bb.ha, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit162

bb.ha:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit161
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zu), !noalias !1677
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit162

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit162: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit161, %bb.ha
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zt, i64 128
  %i.aaa = load ptr, ptr %i.zz, align 8, !alias.scope !1675, !noalias !1676, !nonnull !5, !noundef !5
  %i.aab = getelementptr inbounds nuw [40 x i8], ptr %i.aaa, i64 %i.zw ; 4 uses
  store i64 2, ptr %i.aab, align 8, !noalias !1676
  %.sroa.4273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aab, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4273.0..sroa_idx, align 8, !noalias !1676
  %.sroa.5274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aab, i64 16
  store i64 %.sroa.0197.0, ptr %.sroa.5274.0..sroa_idx, align 8, !noalias !1676
  %.sroa.6275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aab, i64 24
  store i64 %i.zs, ptr %.sroa.6275.0..sroa_idx, align 8, !noalias !1676
  %i.aac = add i64 %i.zw, 1
  store i64 %i.aac, ptr %i.zv, align 8, !alias.scope !1675, !noalias !1676
  br label %bb.ba

.thread:                                          ; preds = %bb.az
  %i.aad = sub nuw i64 %i.as, %.sroa.0197.0
  call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  call void @llvm.experimental.noalias.scope.decl(metadata !1679)
  %i.aae = load ptr, ptr %0, align 8, !alias.scope !1680, !nonnull !5, !align !6, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !1681)
  call void @llvm.experimental.noalias.scope.decl(metadata !1682), !noalias !1680
  %i.aaf = load ptr, ptr %i.aae, align 8, !alias.scope !1683, !noalias !1680, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 120 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aaf, i64 136 ; 2 uses
  %i.aai = load i64, ptr %i.aah, align 8, !alias.scope !1684, !noalias !1685, !noundef !5 ; 3 uses
  %i.aaj = load i64, ptr %i.aag, align 8, !range !10, !alias.scope !1684, !noalias !1685, !noundef !5
  %i.aak = icmp eq i64 %i.aai, %i.aaj
  br i1 %i.aak, label %bb.hb, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit163

bb.hb:                                            ; preds = %.thread
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aag), !noalias !1686
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit163

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit163: ; preds = %.thread, %bb.hb
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aaf, i64 128
  %i.aam = load ptr, ptr %i.aal, align 8, !alias.scope !1684, !noalias !1685, !nonnull !5, !noundef !5
  %i.aan = getelementptr inbounds nuw [40 x i8], ptr %i.aam, i64 %i.aai ; 4 uses
  store i64 2, ptr %i.aan, align 8, !noalias !1685
  %.sroa.4268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aan, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4268.0..sroa_idx, align 8, !noalias !1685
  %.sroa.5269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aan, i64 16
  store i64 %.sroa.0197.0, ptr %.sroa.5269.0..sroa_idx, align 8, !noalias !1685
  %.sroa.6270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aan, i64 24
  store i64 %i.aad, ptr %.sroa.6270.0..sroa_idx, align 8, !noalias !1685
  %i.aao = add i64 %i.aai, 1
  store i64 %i.aao, ptr %i.aah, align 8, !alias.scope !1684, !noalias !1685
  br label %bb.ba

bb.hc:                                            ; preds = %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !1687)
  call void @llvm.experimental.noalias.scope.decl(metadata !1688)
  %i.aap = load ptr, ptr %0, align 8, !alias.scope !1689, !nonnull !5, !align !6, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !1690)
  call void @llvm.experimental.noalias.scope.decl(metadata !1691), !noalias !1689
  %i.aaq = load ptr, ptr %i.aap, align 8, !alias.scope !1692, !noalias !1689, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 120 ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aaq, i64 136 ; 2 uses
  %i.aat = load i64, ptr %i.aas, align 8, !alias.scope !1693, !noalias !1694, !noundef !5 ; 3 uses
  %i.aau = load i64, ptr %i.aar, align 8, !range !10, !alias.scope !1693, !noalias !1694, !noundef !5
  %i.aav = icmp eq i64 %i.aat, %i.aau
  br i1 %i.aav, label %bb.hd, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit164

bb.hd:                                            ; preds = %bb.hc
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aar), !noalias !1695
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit164

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit164: ; preds = %bb.hc, %bb.hd
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aaq, i64 128
  %i.aax = load ptr, ptr %i.aaw, align 8, !alias.scope !1693, !noalias !1694, !nonnull !5, !noundef !5
  %i.aay = getelementptr inbounds nuw [40 x i8], ptr %i.aax, i64 %i.aat ; 4 uses
  store i64 0, ptr %i.aay, align 8, !noalias !1694
  %.sroa.4238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aay, i64 8
  store i64 %i.ar, ptr %.sroa.4238.0..sroa_idx, align 8, !noalias !1694
  %.sroa.5239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aay, i64 16
  store i64 %i.as, ptr %.sroa.5239.0..sroa_idx, align 8, !noalias !1694
  %.sroa.6240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aay, i64 24
  store i64 %.sroa.0.0.i54, ptr %.sroa.6240.0..sroa_idx, align 8, !noalias !1694
  %i.aaz = add i64 %i.aat, 1
  store i64 %i.aaz, ptr %i.aas, align 8, !alias.scope !1693, !noalias !1694
  br label %bb.he

bb.he:                                            ; preds = %bb.ba, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit164
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIBT_mEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = tail call fastcc noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit, %bb.a
  %i.i = add i64 %i.h, %2                         ; 3 uses
  %i.j = add i64 %i.h, %5                         ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1836)
  %i.k = icmp uge i64 %i.i, %3
  %i.l = icmp uge i64 %i.j, %6
  %or.cond.i53 = or i1 %i.k, %i.l
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  br i1 %or.cond.i53, label %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge, label %.lr.ph.i.i.i.i

._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge: ; preds = %bb.b
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert879 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.pre880 = load i64, ptr %.phi.trans.insert879, align 8
  %.phi.trans.insert881 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre882 = load ptr, ptr %.phi.trans.insert881, align 8
  %.phi.trans.insert883 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre884 = load i64, ptr %.phi.trans.insert883, align 8
  %.phi.trans.insert885 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre886 = load i64, ptr %.phi.trans.insert885, align 8
  %.phi.trans.insert887 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre888 = load ptr, ptr %.phi.trans.insert887, align 8
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = sub nuw i64 %3, %i.i                     ; 2 uses
  %i.s = sub nuw i64 %6, %i.j                     ; 2 uses
  %i.t = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !1836 ; 4 uses
  %i.u = load i64, ptr %i.m, align 8, !alias.scope !1836 ; 5 uses
  %i.v = load ptr, ptr %i.n, align 8, !alias.scope !1836, !nonnull !5 ; 4 uses
  %i.w = load i64, ptr %i.o, align 8, !alias.scope !1835 ; 4 uses
  %i.x = load i64, ptr %i.p, align 8, !alias.scope !1835 ; 5 uses
  %i.y = load ptr, ptr %i.q, align 8, !alias.scope !1835, !nonnull !5 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %i.z = phi i64 [ %3, %.lr.ph.i.i.i.i ], [ %i.ac, %bb.g ]
  %.sroa.01.033.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ak, %bb.g ] ; 3 uses
  %i.aa = phi i64 [ %6, %.lr.ph.i.i.i.i ], [ %i.ab, %bb.g ]
  %i.ab = add i64 %i.aa, -1                       ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.01.033.i.i.i.i, %i.r
  br i1 %exitcond.not.i.i.i.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = add i64 %i.z, -1                        ; 2 uses
  %i.ad = sub i64 %i.ab, %i.t                     ; 3 uses
  %i.ae = icmp ult i64 %i.ad, %i.u
  br i1 %i.ae, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #28, !noalias !1837
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i: ; preds = %bb.d
  %i.af = sub i64 %i.ac, %i.w                     ; 3 uses
  %i.ag = icmp ult i64 %i.af, %i.x
  br i1 %i.ag, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.af, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #28, !noalias !1838
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ad
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.af
  %.val.i.i.i.i.i = load i64, ptr %i.ah, align 8, !noalias !1839, !noundef !5
  %.val10.i.i.i.i.i = load i64, ptr %i.ai, align 8, !noalias !1839, !noundef !5
  %i.aj = icmp eq i64 %.val.i.i.i.i.i, %.val10.i.i.i.i.i
  br i1 %i.aj, label %bb.g, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit

bb.g:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i
  %i.ak = add nuw i64 %.sroa.01.033.i.i.i.i, 1    ; 2 uses
  %exitcond65.not.i.i.i.i = icmp eq i64 %i.ak, %i.s
  br i1 %exitcond65.not.i.i.i.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.c

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.c, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i, %bb.g, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge
  %i.al = phi ptr [ %.pre888, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.y, %bb.g ], [ %i.y, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.y, %bb.c ] ; 10 uses
  %i.am = phi i64 [ %.pre886, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.x, %bb.g ], [ %i.x, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.x, %bb.c ] ; 23 uses
  %i.an = phi i64 [ %.pre884, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.w, %bb.g ], [ %i.w, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.w, %bb.c ] ; 5 uses
  %i.ao = phi ptr [ %.pre882, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.v, %bb.g ], [ %i.v, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.v, %bb.c ] ; 11 uses
  %i.ap = phi i64 [ %.pre880, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.u, %bb.g ], [ %i.u, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.u, %bb.c ] ; 27 uses
  %i.aq = phi i64 [ %.pre, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.t, %bb.g ], [ %i.t, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.t, %bb.c ] ; 8 uses
  %.sroa.0.0.i54 = phi i64 [ 0, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.r, %bb.c ], [ %.sroa.01.033.i.i.i.i, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.s, %bb.g ] ; 4 uses
  %i.ar = sub i64 %3, %.sroa.0.0.i54              ; 9 uses
  %i.as = sub i64 %6, %.sroa.0.0.i54              ; 9 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1841)
  %i.az = load ptr, ptr %0, align 8, !alias.scope !1842, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 120 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 136 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !1843, !noalias !1842, !noundef !5 ; 3 uses
  %i.bd = load i64, ptr %i.ba, align 8, !range !10, !alias.scope !1843, !noalias !1842, !noundef !5
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.i, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba), !noalias !1844
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.h, %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 128
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !1843, !noalias !1842, !nonnull !5, !noundef !5
  %i.bh = getelementptr inbounds nuw [40 x i8], ptr %i.bg, i64 %i.bc ; 4 uses
  store i64 0, ptr %i.bh, align 8, !noalias !1842
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !1842
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %5, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !1842
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store i64 %i.h, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !1842
  %i.bi = add i64 %i.bc, 1
  store i64 %i.bi, ptr %i.bb, align 8, !alias.scope !1843, !noalias !1842
  br label %bb.b

bb.j:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.0190.0 = phi i64 [ %i.j, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.0190.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit ] ; 36 uses
  %.sroa.0.0 = phi i64 [ %i.i, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit ] ; 33 uses
  %i.bj = icmp ult i64 %.sroa.0.0, %i.ar          ; 2 uses
  %i.bk = icmp ult i64 %.sroa.0190.0, %i.as       ; 3 uses
  %or.cond307 = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %or.cond307, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit, %bb.j
  br i1 %i.bj, label %bb.ay, label %bb.az

bb.l:                                             ; preds = %bb.j
  %i.bl = sub nuw i64 %i.ar, %.sroa.0.0           ; 5 uses
  %i.bm = sub nuw i64 %i.as, %.sroa.0190.0        ; 6 uses
  %i.bn = icmp ult i64 %i.bl, 97
  %i.bo = icmp ult i64 %i.bm, 97
  %or.cond.i = or i1 %i.bo, %i.bn
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i55 = call noundef i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bl) ; 2 uses
  %.sroa.0.0.i56 = call noundef i64 @llvm.umax.i64(i64 %i.bm, i64 %i.bl)
  %i.bp = shl nuw i64 %.sroa.0.0.i55, 1
  %i.bq = icmp slt i64 %.sroa.0.0.i55, 0
  br i1 %i.bq, label %bb.n, label %bb.o, !prof !13

bb.n:                                             ; preds = %bb.m
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.052.0.i = phi i64 [ -1, %bb.n ], [ %i.bp, %bb.m ]
  %i.br = icmp ult i64 %.sroa.0.0.i56, %.sroa.052.0.i
  br i1 %i.br, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not.i = icmp ule i64 %i.bm, %i.bl
  %i.bs = icmp ule i64 %i.bl, %i.bm
  %.not.i.fr = freeze i1 %.not.i
  %i.bt = sub i64 %.sroa.0190.0, %i.aq            ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %i.ap
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bt
  br label %bb.q

.loopexit:                                        ; preds = %.outer, %bb.ae, %bb.t, %bb.ad
  %.sroa.525.2.i.ph.lcssa480 = phi i64 [ %.sroa.525.2.i.ph634, %bb.t ], [ %.sroa.525.2.i.ph634, %bb.ae ], [ %.sroa.525.2.i.ph634, %bb.ad ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa473 = phi i64 [ %.sroa.023.1.i.ph635, %bb.t ], [ %.sroa.023.1.i.ph635, %bb.ae ], [ %.sroa.023.1.i.ph635, %bb.ad ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa466 = phi i64 [ %.sroa.9.2.i.ph636, %bb.t ], [ %.sroa.9.2.i.ph636, %bb.ae ], [ %.sroa.9.2.i.ph636, %bb.ad ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa459 = phi i64 [ %.sroa.12.2.i.ph637, %bb.t ], [ %.sroa.12.2.i.ph637, %bb.ae ], [ %.sroa.12.2.i.ph637, %bb.ad ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %.not.i59 = icmp ugt i64 %spec.select308, 4
  %or.cond313 = or i1 %i.bw, %.not.i59
  br i1 %or.cond313, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit
  %.sroa.12.0.i642 = phi i64 [ undef, %bb.p ], [ %.sroa.12.2.i.ph.lcssa459, %.loopexit ]
  %.sroa.9.0.i641 = phi i64 [ undef, %bb.p ], [ %.sroa.9.2.i.ph.lcssa466, %.loopexit ]
  %.sroa.023.0.i640 = phi i64 [ 0, %bb.p ], [ %.sroa.023.1.i.ph.lcssa473, %.loopexit ]
  %.sroa.525.0.i639 = phi i64 [ undef, %bb.p ], [ %.sroa.525.2.i.ph.lcssa480, %.loopexit ]
  %.sroa.0223.0638 = phi i64 [ 0, %bb.p ], [ %spec.select308, %.loopexit ] ; 11 uses
  %i.bw = icmp eq i64 %.sroa.0223.0638, 4         ; 2 uses
  %i.bx = add nuw nsw i64 %.sroa.0223.0638, 1
  %spec.select308 = select i1 %i.bw, i64 4, i64 %i.bx ; 2 uses
  %i.by = icmp eq i64 %.sroa.0223.0638, 0
  %i.bz = add i64 %.sroa.0223.0638, %.sroa.0.0    ; 2 uses
  %i.ca = sub i64 %i.bz, %i.an                    ; 5 uses
  %i.cb = icmp ult i64 %i.ca, %i.am               ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ca ; 2 uses
  %i.cd = sub i64 %i.ar, %i.bz
  br label %.lr.ph

bb.r:                                             ; preds = %.loopexit
  %i.ce = trunc nuw i64 %.sroa.023.1.i.ph.lcssa473 to i1
  br i1 %i.ce, label %.loopexit390, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit

.loopexit390:                                     ; preds = %bb.af, %bb.r
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa480, %bb.r ], [ %.sroa.0223.0638, %bb.af ] ; 4 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa466, %bb.r ], [ %.us-phi546, %bb.af ] ; 4 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa459, %bb.r ], [ %.sroa.01.0.i.lcssa, %bb.af ] ; 3 uses
  %i.cf = icmp eq i64 %.sroa.525.1.i, 0
  %i.cg = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  br i1 %i.cf, label %bb.an, label %bb.ao

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.t
  %.sroa.0224.0521 = phi i64 [ %spec.select310, %bb.t ], [ %.sroa.0224.0.ph633, %.lr.ph.split ] ; 3 uses
  %i.ch = icmp eq i64 %.sroa.0224.0521, 4         ; 3 uses
  %i.ci = add nuw nsw i64 %.sroa.0224.0521, 1
  %spec.select310 = select i1 %i.ch, i64 4, i64 %i.ci ; 3 uses
  %i.cj = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1845
  br i1 %i.cj, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.s

bb.s:                                             ; preds = %.lr.ph.split.split
  %.not645 = icmp eq i64 %.sroa.0224.0521, 0
  br i1 %.not645, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30
  %.not.i61 = icmp ugt i64 %spec.select310, 4
  %or.cond314 = select i1 %i.ch, i1 true, i1 %.not.i61
  br i1 %or.cond314, label %.loopexit, label %.lr.ph.split.split

bb.u:                                             ; preds = %bb.s
  br i1 %i.bu, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit31, label %.split.loopexit1117

.split.loopexit1117:                              ; preds = %bb.u
  %i.ck = sub i64 %.sroa.0190.0, %i.aq
  br label %.split

.split:                                           ; preds = %bb.ac, %.split.loopexit1117
  %.us-phi = phi i64 [ %i.ck, %.split.loopexit1117 ], [ %i.db, %bb.ac ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #28, !noalias !1846
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit31: ; preds = %bb.u
  br i1 %i.cb, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30, label %.split531

.split531:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit31, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit31.us
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ca, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #28, !noalias !1847
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit31
  %.val49 = load i64, ptr %i.bv, align 8, !noundef !5
  %.val50 = load i64, ptr %i.cc, align 8, !noundef !5
  %.not311 = icmp eq i64 %.val49, %.val50
  br i1 %.not311, label %.split535, label %bb.t

.split535.loopexit:                               ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30.us
  %.pre893 = sub i64 %i.as, %i.da
  br label %.split535

.split535:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30, %.split535.loopexit
  %.pre-phi = phi i64 [ %.pre893, %.split535.loopexit ], [ %i.bm, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30 ]
  %.us-phi541 = phi i64 [ %i.da, %.split535.loopexit ], [ %.sroa.0190.0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30 ]
  %.us-phi544 = phi i1 [ %i.cx, %.split535.loopexit ], [ %i.ch, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30 ]
  %.us-phi545 = phi i64 [ %spec.select310.us, %.split535.loopexit ], [ %spec.select310, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30 ] ; 2 uses
  %.us-phi546 = phi i64 [ %.sroa.0224.0521.us, %.split535.loopexit ], [ 0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30 ] ; 6 uses
  %.sroa.0.0.i65 = call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %i.cd) ; 3 uses
  %.not646 = icmp eq i64 %.sroa.0.0.i65, 0
  br i1 %.not646, label %.outer, label %.lr.ph630

.lr.ph630:                                        ; preds = %.split535
  %i.cl = sub i64 %.us-phi541, %i.aq              ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph630, %bb.aa
  %.sroa.01.0.i629 = phi i64 [ 0, %.lr.ph630 ], [ %i.cv, %bb.aa ] ; 5 uses
  %i.cm = and i64 %.sroa.01.0.i629, 1023
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.co = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1845
  br i1 %i.co, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cp = add nuw i64 %i.cl, %.sroa.01.0.i629     ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.ap
  br i1 %i.cq, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit29, label %bb.y

bb.y:                                             ; preds = %bb.x
  %umax = call i64 @llvm.umax.i64(i64 %i.ap, i64 %i.cl)
end_hunk_4
begin_hunk_5_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIBT_mEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter:bb.a
  store i64 2, ptr %i.eo, align 8, !noalias !1856
  %.sroa.4266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4266.0..sroa_idx, align 8, !noalias !1856
  %.sroa.5267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store i64 %.sroa.0190.0, ptr %.sroa.5267.0..sroa_idx, align 8, !noalias !1856
  %.sroa.6268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6268.0..sroa_idx, align 8, !noalias !1856
  %i.ep = add i64 %i.ej, 1                        ; 2 uses
  store i64 %i.ep, ptr %i.ei, align 8, !alias.scope !1855, !noalias !1856
  br label %bb.ap

bb.at:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !1858)
  call void @llvm.experimental.noalias.scope.decl(metadata !1859), !noalias !1851
  %i.eq = load ptr, ptr %0, align 8, !alias.scope !1860, !noalias !1851, !nonnull !5, !align !6, !noundef !5 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 120 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 136 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !1861, !noalias !1862, !noundef !5 ; 3 uses
  %i.eu = load i64, ptr %i.er, align 8, !range !10, !alias.scope !1861, !noalias !1862, !noundef !5
  %i.ev = icmp eq i64 %i.et, %i.eu
  br i1 %i.ev, label %bb.au, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit70

bb.au:                                            ; preds = %bb.at
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.er), !noalias !1863
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit70

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit70: ; preds = %bb.at, %bb.au
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 128
  %i.ex = load ptr, ptr %i.ew, align 8, !alias.scope !1861, !noalias !1862, !nonnull !5, !noundef !5
  %i.ey = getelementptr inbounds nuw [40 x i8], ptr %i.ex, i64 %i.et ; 4 uses
  store i64 1, ptr %i.ey, align 8, !noalias !1862
  %.sroa.4251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4251.0..sroa_idx, align 8, !noalias !1862
  %.sroa.5252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5252.0..sroa_idx, align 8, !noalias !1862
  %.sroa.6253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  store i64 %.sroa.0190.0, ptr %.sroa.6253.0..sroa_idx, align 8, !noalias !1862
  %i.ez = add i64 %i.et, 1                        ; 2 uses
  store i64 %i.ez, ptr %i.es, align 8, !alias.scope !1861, !noalias !1862
  br label %bb.ap

bb.av:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !1864)
  call void @llvm.experimental.noalias.scope.decl(metadata !1865), !noalias !1851
  %i.fa = load ptr, ptr %0, align 8, !alias.scope !1866, !noalias !1851, !nonnull !5, !align !6, !noundef !5 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 120 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 136 ; 3 uses
  %i.fd = load i64, ptr %i.fc, align 8, !alias.scope !1867, !noalias !1868, !noundef !5 ; 4 uses
  %i.fe = load i64, ptr %i.fb, align 8, !range !10, !alias.scope !1867, !noalias !1868, !noundef !5
  %i.ff = icmp eq i64 %i.fd, %i.fe
  br i1 %i.ff, label %bb.aw, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit71

bb.aw:                                            ; preds = %bb.av
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fb), !noalias !1869
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit71

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit71: ; preds = %bb.av, %bb.aw
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 128 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !alias.scope !1867, !noalias !1868, !nonnull !5, !noundef !5
  %i.fi = getelementptr inbounds nuw [40 x i8], ptr %i.fh, i64 %i.fd ; 4 uses
  store i64 1, ptr %i.fi, align 8, !noalias !1868
  %.sroa.4271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4271.0..sroa_idx, align 8, !noalias !1868
  %.sroa.5272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5272.0..sroa_idx, align 8, !noalias !1868
  %.sroa.6273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  store i64 %.sroa.0190.0, ptr %.sroa.6273.0..sroa_idx, align 8, !noalias !1868
  %i.fj = add i64 %i.fd, 1                        ; 3 uses
  store i64 %i.fj, ptr %i.fc, align 8, !alias.scope !1867, !noalias !1868
  %i.fk = load i64, ptr %i.fb, align 8, !range !10, !alias.scope !1870, !noalias !1868, !noundef !5
  %i.fl = icmp eq i64 %i.fj, %i.fk
  br i1 %i.fl, label %bb.ax, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit72

bb.ax:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit71
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fb), !noalias !1871
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit72

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit72: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit71, %bb.ax
  %i.fm = load ptr, ptr %i.fg, align 8, !alias.scope !1870, !noalias !1868, !nonnull !5, !noundef !5
  %i.fn = getelementptr inbounds nuw [40 x i8], ptr %i.fm, i64 %i.fj ; 4 uses
  store i64 2, ptr %i.fn, align 8, !noalias !1868
  %.sroa.4276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4276.0..sroa_idx, align 8, !noalias !1868
  %.sroa.5277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store i64 %.sroa.0190.0, ptr %.sroa.5277.0..sroa_idx, align 8, !noalias !1868
  %.sroa.6278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6278.0..sroa_idx, align 8, !noalias !1868
  %i.fo = add i64 %i.fd, 2                        ; 2 uses
  store i64 %i.fo, ptr %i.fc, align 8, !alias.scope !1870, !noalias !1868
  br label %bb.ap

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split, %.lr.ph.split.us, %bb.w, %bb.l, %bb.o, %bb.r, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit68
  %.sroa.0190.2 = phi i64 [ %.sroa.0190.0, %bb.l ], [ %.sroa.0190.0, %bb.o ], [ %.sroa.0190.0, %bb.r ], [ %i.eg, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit68 ], [ %.sroa.0190.0, %.lr.ph.split.split ], [ %.sroa.0190.0, %.lr.ph.split.us ], [ %.sroa.0190.0, %bb.w ], [ %.sroa.0190.0, %.lr.ph.split.split.us ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.l ], [ %.sroa.0.0, %bb.o ], [ %.sroa.0.0, %bb.r ], [ %i.ef, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit68 ], [ %.sroa.0.0, %.lr.ph.split.split ], [ %.sroa.0.0, %.lr.ph.split.us ], [ %.sroa.0.0, %bb.w ], [ %.sroa.0.0, %.lr.ph.split.split.us ] ; 2 uses
  %i.fp = icmp eq i64 %.sroa.0.2, %.sroa.0.0
  %i.fq = icmp eq i64 %.sroa.0190.2, %.sroa.0190.0
  %or.cond = select i1 %i.fp, i1 %i.fq, i1 false
  br i1 %or.cond, label %bb.k, label %bb.j

bb.ay:                                            ; preds = %bb.k
  br i1 %i.bk, label %bb.bd, label %bb.bb

bb.az:                                            ; preds = %bb.k
  br i1 %i.bk, label %.thread, label %bb.ba

bb.ba:                                            ; preds = %.sink.split.i.thread, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread304, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit73, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit156, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit155, %bb.gx, %bb.az
  %.not26 = icmp eq i64 %.sroa.0.0.i54, 0
  br i1 %.not26, label %bb.he, label %bb.hc

bb.bb:                                            ; preds = %bb.ay
  %i.fr = sub nuw i64 %i.ar, %.sroa.0.0
  call void @llvm.experimental.noalias.scope.decl(metadata !1872)
  call void @llvm.experimental.noalias.scope.decl(metadata !1873)
  %i.fs = load ptr, ptr %0, align 8, !alias.scope !1874, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 120 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 136 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !alias.scope !1875, !noalias !1874, !noundef !5 ; 3 uses
  %i.fw = load i64, ptr %i.ft, align 8, !range !10, !alias.scope !1875, !noalias !1874, !noundef !5
  %i.fx = icmp eq i64 %i.fv, %i.fw
  br i1 %i.fx, label %bb.bc, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit73

bb.bc:                                            ; preds = %bb.bb
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ft), !noalias !1876
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit73

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit73: ; preds = %bb.bb, %bb.bc
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fs, i64 128
  %i.fz = load ptr, ptr %i.fy, align 8, !alias.scope !1875, !noalias !1874, !nonnull !5, !noundef !5
  %i.ga = getelementptr inbounds nuw [40 x i8], ptr %i.fz, i64 %i.fv ; 4 uses
  store i64 1, ptr %i.ga, align 8, !noalias !1874
  %.sroa.4246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4246.0..sroa_idx, align 8, !noalias !1874
  %.sroa.5247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store i64 %i.fr, ptr %.sroa.5247.0..sroa_idx, align 8, !noalias !1874
  %.sroa.6248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  store i64 %.sroa.0190.0, ptr %.sroa.6248.0..sroa_idx, align 8, !noalias !1874
  %i.gb = add i64 %i.fv, 1
  store i64 %i.gb, ptr %i.fu, align 8, !alias.scope !1875, !noalias !1874
  br label %bb.ba

bb.bd:                                            ; preds = %bb.ay
  %i.gc = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1877
  br i1 %i.gc, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gd = sub nuw i64 %i.ar, %.sroa.0.0           ; 22 uses
  %i.ge = sub nuw i64 %i.as, %.sroa.0190.0        ; 22 uses
  %i.gf = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.gd, i64 %i.ge) ; 2 uses
  %i.gg = extractvalue { i64, i1 } %i.gf, 1
  br i1 %i.gg, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.bf, !prof !13

bb.bf:                                            ; preds = %bb.be
  %i.gh = extractvalue { i64, i1 } %i.gf, 0
  %.sroa.0.0.i75 = call noundef i64 @llvm.umax.i64(i64 %i.ge, i64 %i.gd)
  %.sroa.0.0.i74 = call noundef i64 @llvm.umin.i64(i64 %i.ge, i64 %i.gd)
  %i.gi = add i64 %.sroa.0.0.i74, -65
  %or.cond.i27 = icmp ult i64 %i.gi, -64
  %i.gj = icmp ult i64 %.sroa.0.0.i75, 512
  %or.cond1.i = or i1 %i.gj, %or.cond.i27
  %i.gk = icmp ugt i64 %i.gh, 64000000
  %or.cond3.i = select i1 %or.cond1.i, i1 true, i1 %i.gk
  br i1 %or.cond3.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.not.i28 = icmp ugt i64 %i.gd, %i.ge
  %.val51 = load ptr, ptr %0, align 8             ; 16 uses
  %i.gl = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !5 ; 2 uses
  br i1 %.not.i28, label %bb.bh, label %bb.eb

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.gl, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gm = add i64 %i.gd, 1                        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1878
  %i.gn = add nuw i64 %i.ge, 1
  %i.go = mul i64 %i.gm, %i.gn                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1879)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1880
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.go, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !1880
  %i.gp = load i64, ptr %i.c, align 8, !range !9, !noalias !1880, !noundef !5
  %i.gq = trunc nuw i64 %i.gp to i1
  %i.gr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gs = load i64, ptr %i.gr, align 8, !range !17, !noalias !1880, !noundef !5 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.gq, label %bb.bj, label %.lr.ph469.i, !prof !13

bb.bj:                                            ; preds = %bb.bi
  %i.gu = load i64, ptr %i.gt, align 8, !noalias !1880
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.gs, i64 %i.gu) #28, !noalias !1880
  unreachable

.lr.ph469.i:                                      ; preds = %bb.bi
  %i.gv = load ptr, ptr %i.gt, align 8, !noalias !1880, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1880
  store i64 %i.gs, ptr %i.d, align 8, !alias.scope !1879, !noalias !1878
  %i.gw = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store ptr %i.gv, ptr %i.gw, align 8, !alias.scope !1879, !noalias !1878
  %i.gx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 7 uses
  store i64 %i.go, ptr %i.gx, align 8, !alias.scope !1879, !noalias !1878
  %invariant.op470.i = sub i64 %.sroa.0190.0, %i.aq ; 3 uses
  %invariant.op.i = sub i64 %.sroa.0.0, %i.an     ; 3 uses
  br label %.lr.ph469.split.i

.lr.ph495.i:                                      ; preds = %..loopexit39_crit_edge.split.us.i
  %i.gy = getelementptr inbounds nuw i8, ptr %.val51, i64 120 ; 10 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.val51, i64 136 ; 6 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.val51, i64 128 ; 3 uses
  br label %bb.bk

.lr.ph469.split.i:                                ; preds = %.lr.ph469.i, %..loopexit39_crit_edge.split.us.i
  %.sroa.0102.0468.i = phi i64 [ %i.hb, %..loopexit39_crit_edge.split.us.i ], [ %i.ge, %.lr.ph469.i ] ; 2 uses
  %i.hb = add i64 %.sroa.0102.0468.i, -1          ; 4 uses
  %i.hc = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1878

._crit_edge496.i:                                 ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i
  br i1 %i.lx, label %bb.bl, label %bb.bn

bb.bk:                                            ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i, %.lr.ph495.i
  %.sroa.05.0.not494.i = phi i1 [ true, %.lr.ph495.i ], [ false, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i ] ; 3 uses
  %.sroa.09.0493.i = phi i64 [ 0, %.lr.ph495.i ], [ %.sroa.09.3.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i ] ; 13 uses
  %.sroa.038.0492.i = phi i64 [ 0, %.lr.ph495.i ], [ %.sroa.038.3.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i ] ; 18 uses
  %i.hd = and i64 %.sroa.038.0492.i, 1023
  %i.he = icmp eq i64 %i.hd, 0
  %or.cond170.i = select i1 %.sroa.05.0.not494.i, i1 %i.he, i1 false ; 2 uses
  br i1 %or.cond170.i, label %bb.br, label %bb.bq

bb.bl:                                            ; preds = %._crit_edge496.i
  %i.hf = add i64 %.sroa.038.3.i, %.sroa.0.0      ; 2 uses
  %i.hg = sub nuw i64 %i.gd, %.sroa.038.3.i
  %i.hh = add i64 %.sroa.09.3.i, %.sroa.0190.0    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.hi = load i64, ptr %i.gy, align 8, !range !10, !alias.scope !1881, !noalias !1878, !noundef !5
  %i.hj = icmp eq i64 %i.lv, %i.hi
  br i1 %i.hj, label %bb.bm, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gy)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1878

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i: ; preds = %bb.bm, %bb.bl
  %i.hk = load ptr, ptr %i.ha, align 8, !alias.scope !1881, !noalias !1878, !nonnull !5, !noundef !5
  %i.hl = getelementptr inbounds nuw [40 x i8], ptr %i.hk, i64 %i.lv ; 4 uses
  store i64 1, ptr %i.hl, align 8, !noalias !1878
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store i64 %i.hf, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1878
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  store i64 %i.hg, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !1878
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  store i64 %i.hh, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !1878
  %i.hm = add i64 %.sink1026.i, 2                 ; 2 uses
  store i64 %i.hm, ptr %i.gz, align 8, !alias.scope !1881, !noalias !1878
  br i1 %i.lw, label %bb.bo, label %.sink.split.i.thread

bb.bn:                                            ; preds = %._crit_edge496.i
  br i1 %i.lw, label %._crit_edge895, label %.sink.split.i.thread

._crit_edge895:                                   ; preds = %bb.bn
  %.pre896 = add i64 %.sroa.038.3.i, %.sroa.0.0
  %.pre898 = add i64 %.sroa.09.3.i, %.sroa.0190.0
  br label %bb.bo

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dn, %bb.br, %bb.cc, %bb.cp, %bb.da, %bb.dc, %bb.cd, %bb.cq, %.lr.ph469.split.i, %bb.dy, %.invoke.i, %bb.bp, %bb.bm
  %lpad.loopexit.split-lp1598 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.d) #26
          to label %common.resume unwind label %bb.ea, !noalias !1878

bb.bo:                                            ; preds = %._crit_edge895, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i
  %.pre-phi899 = phi i64 [ %.pre898, %._crit_edge895 ], [ %i.hh, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i ]
  %.pre-phi897 = phi i64 [ %.pre896, %._crit_edge895 ], [ %i.hf, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i ]
  %i.hn = phi i64 [ %i.lv, %._crit_edge895 ], [ %i.hm, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i ] ; 3 uses
  %i.ho = sub nuw i64 %i.ge, %.sroa.09.3.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.hp = load i64, ptr %i.gy, align 8, !range !10, !alias.scope !1882, !noalias !1878, !noundef !5
  %i.hq = icmp eq i64 %i.hn, %i.hp
  br i1 %i.hq, label %bb.bp, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i

bb.bp:                                            ; preds = %bb.bo
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gy)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1878

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i: ; preds = %bb.bp, %bb.bo
  %i.hr = load ptr, ptr %i.ha, align 8, !alias.scope !1882, !noalias !1878, !nonnull !5, !noundef !5
  %i.hs = getelementptr inbounds nuw [40 x i8], ptr %i.hr, i64 %i.hn ; 4 uses
  store i64 2, ptr %i.hs, align 8, !noalias !1878
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store i64 %.pre-phi897, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !1878
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store i64 %.pre-phi899, ptr %.sroa.513.0..sroa_idx.i, align 8, !noalias !1878
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  store i64 %i.ho, ptr %.sroa.614.0..sroa_idx.i, align 8, !noalias !1878
  %i.ht = add i64 %i.hn, 1
  store i64 %i.ht, ptr %i.gz, align 8, !alias.scope !1882, !noalias !1878
  br label %.sink.split.i.thread

.sink.split.i.thread:                             ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i, %bb.bn, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.d), !noalias !1878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1878
  br label %bb.ba

.sink.split.i:                                    ; preds = %.loopexit24.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !1878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1878
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread

bb.bq:                                            ; preds = %bb.bs, %bb.bk
  %i.hu = mul i64 %.sroa.09.0493.i, %i.gm         ; 4 uses
  %i.hv = add i64 %.sroa.038.0492.i, %.sroa.0.0   ; 2 uses
  %i.hw = add i64 %.sroa.09.0493.i, %.sroa.0190.0 ; 7 uses
  %i.hx = sub i64 %i.hw, %i.aq                    ; 3 uses
  %i.hy = icmp ult i64 %i.hx, %i.ap
  br i1 %i.hy, label %bb.bt, label %.invoke.i

.invoke.i:                                        ; preds = %bb.dw, %bb.du, %bb.ds, %bb.dr, %bb.dp, %bb.bz, %bb.bx, %bb.bw, %bb.bv, %bb.bt, %bb.bq, %bb.cy, %bb.cw, %bb.cv, %bb.cu, %bb.cs, %bb.cl, %bb.cj, %bb.ci, %bb.ch, %bb.cf, %bb.de, %bb.db, %bb.dh, %bb.dg, %bb.dz, %.lr.ph.split.i
  %i.hz = phi i64 [ %i.kg, %bb.cl ], [ %.reass.i, %bb.dz ], [ %.reass.i, %.lr.ph.split.i ], [ %i.ln, %bb.cy ], [ %i.hx, %bb.bq ], [ %i.mu, %bb.dh ], [ %i.ap, %bb.db ], [ %i.mn, %bb.dg ], [ %i.am, %bb.de ], [ %i.jq, %bb.cf ], [ %i.ju, %bb.ch ], [ %i.jy, %bb.cj ], [ %i.jw, %bb.ci ], [ %i.kv, %bb.cs ], [ %i.kz, %bb.cu ], [ %i.lf, %bb.cw ], [ %i.lb, %bb.cv ], [ %i.ii, %bb.bv ], [ %i.ik, %bb.bw ], [ %i.ja, %bb.bz ], [ %i.ie, %bb.bt ], [ %i.ip, %bb.bx ], [ %i.nr, %bb.dr ], [ %.reass.us.i, %bb.dp ], [ %i.ok, %bb.dw ], [ %i.nv, %bb.ds ], [ %i.ob, %bb.du ]
  %i.ia = phi i64 [ %.pre729.i.a, %bb.cl ], [ %i.ap, %bb.dz ], [ %i.ap, %.lr.ph.split.i ], [ %.pre727.i, %bb.cy ], [ %i.ap, %bb.bq ], [ %i.mp, %bb.dh ], [ %i.ap, %bb.db ], [ %i.mp, %bb.dg ], [ %i.am, %bb.de ], [ %i.am, %bb.cf ], [ %.pre729.i.a, %bb.ch ], [ %.pre729.i.a, %bb.cj ], [ %.pre729.i.a, %bb.ci ], [ %i.ap, %bb.cs ], [ %.pre727.i, %bb.cu ], [ %.pre727.i, %bb.cw ], [ %.pre727.i, %bb.cv ], [ %.pre725.i, %bb.bv ], [ %.pre725.i, %bb.bw ], [ %.pre725.i, %bb.bz ], [ %i.am, %bb.bt ], [ %.pre725.i, %bb.bx ], [ %i.nt, %bb.dr ], [ %i.am, %bb.dp ], [ %i.oj, %bb.dw ], [ %i.nt, %bb.ds ], [ %i.oc, %bb.du ]
  %i.ib = phi ptr [ @63, %bb.cl ], [ @74, %bb.dz ], [ @74, %.lr.ph.split.i ], [ @69, %bb.cy ], [ @52, %bb.bq ], [ @73, %bb.dh ], [ @70, %bb.db ], [ @72, %bb.dg ], [ @71, %bb.de ], [ @59, %bb.cf ], [ @60, %bb.ch ], [ @61, %bb.cj ], [ @62, %bb.ci ], [ @64, %bb.cs ], [ @66, %bb.cu ], [ @67, %bb.cw ], [ @68, %bb.cv ], [ @54, %bb.bv ], [ @56, %bb.bw ], [ @57, %bb.bz ], [ @53, %bb.bt ], [ @55, %bb.bx ], [ @76, %bb.dr ], [ @75, %bb.dp ], [ @79, %bb.dw ], [ @77, %bb.ds ], [ @78, %bb.du ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.hz, i64 noundef %i.ia, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ib) #28
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1878

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.br:                                            ; preds = %bb.bk
  %i.ic = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.bs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1878

bb.bs:                                            ; preds = %bb.br
  br i1 %i.ic, label %.loopexit24.i, label %bb.bq

bb.bt:                                            ; preds = %bb.bq
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.hx ; 2 uses
  %i.ie = sub i64 %i.hv, %i.an                    ; 3 uses
  %i.if = icmp ult i64 %i.ie, %i.am
  br i1 %i.if, label %bb.bu, label %.invoke.i

bb.bu:                                            ; preds = %bb.bt
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ie ; 2 uses
  %.val210.i = load i64, ptr %i.id, align 8, !noalias !1878, !noundef !5
  %.val211.i = load i64, ptr %i.ig, align 8, !noalias !1878, !noundef !5
  %i.ih = icmp eq i64 %.val210.i, %.val211.i
  %.pre.i = load ptr, ptr %i.gw, align 8, !noalias !1878 ; 4 uses
  %.pre725.i = load i64, ptr %i.gx, align 8, !noalias !1878 ; 8 uses
  br i1 %i.ih, label %bb.bv, label %._crit_edge731.i

._crit_edge731.i:                                 ; preds = %bb.bu
  %.pre732.i = add nuw i64 %.sroa.09.0493.i, 1
  %.pre733.i = mul i64 %.pre732.i, %i.gm
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ii = add i64 %i.hu, %.sroa.038.0492.i        ; 3 uses
  %i.ij = icmp ult i64 %i.ii, %.pre725.i
  br i1 %i.ij, label %bb.bx, label %.invoke.i

bb.bw:                                            ; preds = %bb.by, %._crit_edge731.i
  %.pre-phi734.i = phi i64 [ %.pre733.i, %._crit_edge731.i ], [ %i.in, %bb.by ] ; 3 uses
  %i.ik = add i64 %.pre-phi734.i, %.sroa.038.0492.i ; 3 uses
  %i.il = icmp ult i64 %i.ik, %.pre725.i
  br i1 %i.il, label %bb.bz, label %.invoke.i

bb.bx:                                            ; preds = %bb.bv
  %i.im = add nuw i64 %.sroa.09.0493.i, 1
  %i.in = mul i64 %i.im, %i.gm                    ; 2 uses
  %i.io = add nuw i64 %.sroa.038.0492.i, 1
  %i.ip = add i64 %i.io, %i.in                    ; 3 uses
  %i.iq = icmp ult i64 %i.ip, %.pre725.i
  br i1 %i.iq, label %bb.by, label %.invoke.i

bb.by:                                            ; preds = %bb.bx
  %i.ir = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ii
  %i.is = load i8, ptr %i.ir, align 1, !noalias !1878, !noundef !5
  %i.it = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ip
  %i.iu = load i8, ptr %i.it, align 1, !noalias !1878, !noundef !5
  %i.iv = add i8 %i.iu, 1
  %i.iw = icmp eq i8 %i.is, %i.iv
  br i1 %i.iw, label %.preheader.i, label %bb.bw

.preheader.i:                                     ; preds = %bb.by
  %i.ix = icmp ult i64 %.sroa.09.0493.i, %i.ge
  %i.iy = icmp ult i64 %.sroa.038.0492.i, %i.gd
  %or.cond177478.i = select i1 %i.ix, i1 %i.iy, i1 false
  br i1 %or.cond177478.i, label %.lr.ph481.i, label %._crit_edge482.i

bb.bz:                                            ; preds = %bb.bw
  %i.iz = add i64 %.sroa.038.0492.i, 1            ; 3 uses
  %i.ja = add i64 %i.iz, %i.hu                    ; 3 uses
  %i.jb = icmp ult i64 %i.ja, %.pre725.i
  br i1 %i.jb, label %bb.ca, label %.invoke.i

bb.ca:                                            ; preds = %bb.bz
  %i.jc = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ik
  %i.jd = load i8, ptr %i.jc, align 1, !noalias !1878, !noundef !5
  %i.je = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ja
  %i.jf = load i8, ptr %i.je, align 1, !noalias !1878, !noundef !5
  %.not164.i = icmp ult i8 %i.jd, %i.jf
  br i1 %.not164.i, label %.preheader25.i, label %.preheader30.i

.preheader30.i:                                   ; preds = %bb.ca
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.09.0493.i, i64 %i.ge) ; 3 uses
  %exitcond.not.i1554.not = icmp ult i64 %.sroa.09.0493.i, %i.ge
  br i1 %exitcond.not.i1554.not, label %.lr.ph1556, label %._crit_edge1557

.preheader25.i:                                   ; preds = %bb.ca
  %i.jg = icmp ult i64 %.sroa.038.0492.i, %i.gd
  br i1 %i.jg, label %.lr.ph473.i, label %._crit_edge.i

.lr.ph473.i:                                      ; preds = %.preheader25.i
  %i.jh = add i64 %.pre-phi734.i, 1
  %i.ji = add i64 %i.hu, 1
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cn, %.lr.ph473.i
  %.sroa.038.1472.i = phi i64 [ %.sroa.038.0492.i, %.lr.ph473.i ], [ %i.kn, %bb.cn ] ; 9 uses
  %i.jj = and i64 %.sroa.038.1472.i, 1023
  %i.jk = icmp eq i64 %i.jj, 0
  %or.cond173.i = and i1 %.sroa.05.0.not494.i, %i.jk
  br i1 %or.cond173.i, label %bb.cd, label %bb.cf

._crit_edge.i:                                    ; preds = %bb.cn, %bb.cm, %bb.ck, %.preheader25.i
  %.sroa.038.1.lcssa.i = phi i64 [ %.sroa.038.0492.i, %.preheader25.i ], [ %i.gd, %bb.cn ], [ %.sroa.038.1472.i, %bb.cm ], [ %.sroa.038.1472.i, %bb.ck ] ; 3 uses
  %i.jl = sub nuw i64 %.sroa.038.1.lcssa.i, %.sroa.038.0492.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.jm = load i64, ptr %i.gz, align 8, !alias.scope !1883, !noalias !1878, !noundef !5 ; 3 uses
  %i.jn = load i64, ptr %i.gy, align 8, !range !10, !alias.scope !1883, !noalias !1878, !noundef !5
  %i.jo = icmp eq i64 %i.jm, %i.jn
  br i1 %i.jo, label %bb.cc, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i

bb.cc:                                            ; preds = %._crit_edge.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gy)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1878

bb.cd:                                            ; preds = %bb.cb
  %i.jp = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.ce unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1878

bb.ce:                                            ; preds = %bb.cd
  br i1 %i.jp, label %.loopexit24.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cb
  %i.jq = add i64 %.sroa.038.1472.i, %invariant.op.i ; 3 uses
  %i.jr = icmp ult i64 %i.jq, %i.am
  br i1 %i.jr, label %bb.cg, label %.invoke.i

bb.cg:                                            ; preds = %bb.cf
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.jq
  %.val208.i = load i64, ptr %i.id, align 8, !noalias !1878, !noundef !5
  %.val209.i = load i64, ptr %i.js, align 8, !noalias !1878, !noundef !5
  %i.jt = icmp eq i64 %.val208.i, %.val209.i
  %.pre728.i.a = load ptr, ptr %i.gw, align 8, !noalias !1878 ; 4 uses
  %.pre729.i.a = load i64, ptr %i.gx, align 8, !noalias !1878 ; 8 uses
  br i1 %i.jt, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.ju = add i64 %.sroa.038.1472.i, %i.hu        ; 3 uses
  %i.jv = icmp ult i64 %i.ju, %.pre729.i.a
  br i1 %i.jv, label %bb.cj, label %.invoke.i

bb.ci:                                            ; preds = %bb.ck, %bb.cg
  %i.jw = add i64 %.sroa.038.1472.i, %.pre-phi734.i ; 3 uses
  %i.jx = icmp ult i64 %i.jw, %.pre729.i.a
  br i1 %i.jx, label %bb.cl, label %.invoke.i

bb.cj:                                            ; preds = %bb.ch
  %i.jy = add i64 %i.jh, %.sroa.038.1472.i        ; 3 uses
  %i.jz = icmp ult i64 %i.jy, %.pre729.i.a
  br i1 %i.jz, label %bb.ck, label %.invoke.i

bb.ck:                                            ; preds = %bb.cj
  %i.ka = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.ju
  %i.kb = load i8, ptr %i.ka, align 1, !noalias !1878, !noundef !5
  %i.kc = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.jy
  %i.kd = load i8, ptr %i.kc, align 1, !noalias !1878, !noundef !5
  %i.ke = add i8 %i.kd, 1
  %i.kf = icmp eq i8 %i.kb, %i.ke
  br i1 %i.kf, label %._crit_edge.i, label %bb.ci

bb.cl:                                            ; preds = %bb.ci
  %i.kg = add i64 %i.ji, %.sroa.038.1472.i        ; 3 uses
  %i.kh = icmp ult i64 %i.kg, %.pre729.i.a
  br i1 %i.kh, label %bb.cm, label %.invoke.i

bb.cm:                                            ; preds = %bb.cl
  %i.ki = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.jw
  %i.kj = load i8, ptr %i.ki, align 1, !noalias !1878, !noundef !5
  %i.kk = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.kg
  %i.kl = load i8, ptr %i.kk, align 1, !noalias !1878, !noundef !5
  %i.km = icmp ult i8 %i.kj, %i.kl
  br i1 %i.km, label %bb.cn, label %._crit_edge.i

bb.cn:                                            ; preds = %bb.cm
  %i.kn = add nuw i64 %.sroa.038.1472.i, 1        ; 2 uses
  %i.ko = icmp ult i64 %i.kn, %i.gd
  br i1 %i.ko, label %bb.cb, label %._crit_edge.i

bb.co:                                            ; preds = %bb.cz
  %exitcond.not.i = icmp eq i64 %.pre-phi736.i, %umax.i
  br i1 %exitcond.not.i, label %._crit_edge1557, label %.lr.ph1556

.lr.ph1556:                                       ; preds = %.preheader30.i, %bb.co
  %.sroa.09.1.i1555 = phi i64 [ %.pre-phi736.i, %bb.co ], [ %.sroa.09.0493.i, %.preheader30.i ] ; 6 uses
  br i1 %or.cond170.i, label %bb.cq, label %bb.cs

._crit_edge1557:                                  ; preds = %bb.co, %bb.cx, %bb.cz, %.preheader30.i
  %.sroa.09.1.lcssa.i = phi i64 [ %umax.i, %.preheader30.i ], [ %umax.i, %bb.co ], [ %.sroa.09.1.i1555, %bb.cx ], [ %.sroa.09.1.i1555, %bb.cz ] ; 3 uses
  %i.kp = sub i64 %.sroa.09.1.lcssa.i, %.sroa.09.0493.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.kq = load i64, ptr %i.gz, align 8, !alias.scope !1884, !noalias !1878, !noundef !5 ; 3 uses
  %i.kr = load i64, ptr %i.gy, align 8, !range !10, !alias.scope !1884, !noalias !1878, !noundef !5
  %i.ks = icmp eq i64 %i.kq, %i.kr
  br i1 %i.ks, label %bb.cp, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i

bb.cp:                                            ; preds = %._crit_edge1557
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gy)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1878

bb.cq:                                            ; preds = %.lr.ph1556
  %i.kt = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.cr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1878

bb.cr:                                            ; preds = %bb.cq
  br i1 %i.kt, label %.loopexit24.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %.lr.ph1556
  %i.ku = mul i64 %.sroa.09.1.i1555, %i.gm        ; 2 uses
  %i.kv = add i64 %.sroa.09.1.i1555, %invariant.op470.i ; 3 uses
  %i.kw = icmp ult i64 %i.kv, %i.ap
  br i1 %i.kw, label %bb.ct, label %.invoke.i

bb.ct:                                            ; preds = %bb.cs
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.kv
  %.val206.i = load i64, ptr %i.kx, align 8, !noalias !1878, !noundef !5
  %.val207.i = load i64, ptr %i.ig, align 8, !noalias !1878, !noundef !5
  %i.ky = icmp eq i64 %.val206.i, %.val207.i
  %.pre726.i = load ptr, ptr %i.gw, align 8, !noalias !1878 ; 4 uses
  %.pre727.i = load i64, ptr %i.gx, align 8, !noalias !1878 ; 8 uses
  br i1 %i.ky, label %bb.cu, label %._crit_edge730.i

._crit_edge730.i:                                 ; preds = %bb.ct
  %.pre735.i = add i64 %.sroa.09.1.i1555, 1       ; 2 uses
  %.pre737.i = mul i64 %.pre735.i, %i.gm
  br label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.kz = add i64 %i.ku, %.sroa.038.0492.i        ; 3 uses
  %i.la = icmp ult i64 %i.kz, %.pre727.i
  br i1 %i.la, label %bb.cw, label %.invoke.i

bb.cv:                                            ; preds = %bb.cx, %._crit_edge730.i
  %.pre-phi738.i.a = phi i64 [ %.pre737.i, %._crit_edge730.i ], [ %i.le, %bb.cx ]
  %.pre-phi736.i = phi i64 [ %.pre735.i, %._crit_edge730.i ], [ %i.ld, %bb.cx ] ; 2 uses
  %i.lb = add i64 %.pre-phi738.i.a, %.sroa.038.0492.i ; 3 uses
  %i.lc = icmp ult i64 %i.lb, %.pre727.i
  br i1 %i.lc, label %bb.cy, label %.invoke.i

bb.cw:                                            ; preds = %bb.cu
  %i.ld = add i64 %.sroa.09.1.i1555, 1            ; 2 uses
  %i.le = mul i64 %i.ld, %i.gm                    ; 2 uses
  %i.lf = add i64 %i.le, %i.iz                    ; 3 uses
  %i.lg = icmp ult i64 %i.lf, %.pre727.i
  br i1 %i.lg, label %bb.cx, label %.invoke.i

bb.cx:                                            ; preds = %bb.cw
  %i.lh = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.kz
  %i.li = load i8, ptr %i.lh, align 1, !noalias !1878, !noundef !5
  %i.lj = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.lf
  %i.lk = load i8, ptr %i.lj, align 1, !noalias !1878, !noundef !5
  %i.ll = add i8 %i.lk, 1
  %i.lm = icmp eq i8 %i.li, %i.ll
  br i1 %i.lm, label %._crit_edge1557, label %bb.cv

bb.cy:                                            ; preds = %bb.cv
  %i.ln = add i64 %i.ku, %i.iz                    ; 3 uses
  %i.lo = icmp ult i64 %i.ln, %.pre727.i
  br i1 %i.lo, label %bb.cz, label %.invoke.i

bb.cz:                                            ; preds = %bb.cy
  %i.lp = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.lb
  %i.lq = load i8, ptr %i.lp, align 1, !noalias !1878, !noundef !5
  %i.lr = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.ln
  %i.ls = load i8, ptr %i.lr, align 1, !noalias !1878, !noundef !5
  %.not167.i = icmp ult i8 %i.lq, %i.ls
  br i1 %.not167.i, label %._crit_edge1557, label %bb.co

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.da, %._crit_edge482.i, %bb.cp, %._crit_edge1557, %bb.cc, %._crit_edge.i
  %.sink1026.i = phi i64 [ %i.jm, %._crit_edge.i ], [ %i.lz, %._crit_edge482.i ], [ %i.lz, %bb.da ], [ %i.jm, %bb.cc ], [ %i.kq, %bb.cp ], [ %i.kq, %._crit_edge1557 ] ; 3 uses
  %.sink1023.i = phi i64 [ 1, %._crit_edge.i ], [ 0, %._crit_edge482.i ], [ 0, %bb.da ], [ 1, %bb.cc ], [ 2, %bb.cp ], [ 2, %._crit_edge1557 ]
  %.sink1020.i = phi i64 [ %i.jl, %._crit_edge.i ], [ %i.hw, %._crit_edge482.i ], [ %i.hw, %bb.da ], [ %i.jl, %bb.cc ], [ %i.hw, %bb.cp ], [ %i.hw, %._crit_edge1557 ]
  %.sink.i = phi i64 [ %i.hw, %._crit_edge.i ], [ %i.ly, %._crit_edge482.i ], [ %i.ly, %bb.da ], [ %i.hw, %bb.cc ], [ %i.kp, %bb.cp ], [ %i.kp, %._crit_edge1557 ]
  %.sroa.038.3.i = phi i64 [ %.sroa.038.1.lcssa.i, %._crit_edge.i ], [ %.sroa.038.4.lcssa.i, %._crit_edge482.i ], [ %.sroa.038.4.lcssa.i, %bb.da ], [ %.sroa.038.1.lcssa.i, %bb.cc ], [ %.sroa.038.0492.i, %bb.cp ], [ %.sroa.038.0492.i, %._crit_edge1557 ] ; 5 uses
  %.sroa.09.3.i = phi i64 [ %.sroa.09.0493.i, %._crit_edge.i ], [ %.sroa.09.4.lcssa.i, %._crit_edge482.i ], [ %.sroa.09.4.lcssa.i, %bb.da ], [ %.sroa.09.0493.i, %bb.cc ], [ %.sroa.09.1.lcssa.i, %bb.cp ], [ %.sroa.09.1.lcssa.i, %._crit_edge1557 ] ; 5 uses
  %i.lt = load ptr, ptr %i.ha, align 8, !noalias !1878, !nonnull !5, !noundef !5
  %i.lu = getelementptr inbounds nuw [40 x i8], ptr %i.lt, i64 %.sink1026.i ; 4 uses
  store i64 %.sink1023.i, ptr %i.lu, align 8, !noalias !1878
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  store i64 %i.hv, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !1878
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  store i64 %.sink1020.i, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !1878
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  store i64 %.sink.i, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !1878
  %i.lv = add i64 %.sink1026.i, 1                 ; 4 uses
  store i64 %i.lv, ptr %i.gz, align 8, !noalias !1878
  %i.lw = icmp ult i64 %.sroa.09.3.i, %i.ge       ; 3 uses
  %i.lx = icmp ult i64 %.sroa.038.3.i, %i.gd      ; 2 uses
  %or.cond.i77 = select i1 %i.lw, i1 %i.lx, i1 false
  br i1 %or.cond.i77, label %bb.bk, label %._crit_edge496.i

._crit_edge482.i:                                 ; preds = %bb.dj, %bb.di, %bb.df, %.preheader.i
  %.sroa.038.4.lcssa.i = phi i64 [ %.sroa.038.0492.i, %.preheader.i ], [ %i.mt, %bb.dj ], [ %.sroa.038.4479.i, %bb.df ], [ %.sroa.038.4479.i, %bb.di ] ; 3 uses
  %.sroa.09.4.lcssa.i = phi i64 [ %.sroa.09.0493.i, %.preheader.i ], [ %i.mr, %bb.dj ], [ %.sroa.09.4480.i, %bb.df ], [ %.sroa.09.4480.i, %bb.di ] ; 2 uses
  %i.ly = sub nuw i64 %.sroa.038.4.lcssa.i, %.sroa.038.0492.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.lz = load i64, ptr %i.gz, align 8, !alias.scope !1885, !noalias !1878, !noundef !5 ; 3 uses
  %i.ma = load i64, ptr %i.gy, align 8, !range !10, !alias.scope !1885, !noalias !1878, !noundef !5
  %i.mb = icmp eq i64 %i.lz, %i.ma
  br i1 %i.mb, label %bb.da, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i

bb.da:                                            ; preds = %._crit_edge482.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gy)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1878

.lr.ph481.i:                                      ; preds = %.preheader.i, %bb.dj
  %.sroa.09.4480.i = phi i64 [ %i.mr, %bb.dj ], [ %.sroa.09.0493.i, %.preheader.i ] ; 5 uses
  %.sroa.038.4479.i = phi i64 [ %i.mt, %bb.dj ], [ %.sroa.038.0492.i, %.preheader.i ] ; 6 uses
  %i.mc = and i64 %.sroa.038.4479.i, 1023
  %i.md = icmp eq i64 %i.mc, 0
  %or.cond180.i = select i1 %.sroa.05.0.not494.i, i1 %i.md, i1 false
  br i1 %or.cond180.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.dd, %.lr.ph481.i
  %i.me = mul i64 %.sroa.09.4480.i, %i.gm
  %i.mf = add i64 %.sroa.09.4480.i, %invariant.op470.i ; 2 uses
  %i.mg = icmp ult i64 %i.mf, %i.ap
  br i1 %i.mg, label %bb.de, label %.invoke.i

bb.dc:                                            ; preds = %.lr.ph481.i
  %i.mh = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1878

bb.dd:                                            ; preds = %bb.dc
  br i1 %i.mh, label %.loopexit24.i, label %bb.db

bb.de:                                            ; preds = %bb.db
  %i.mi = add i64 %.sroa.038.4479.i, %invariant.op.i ; 2 uses
  %i.mj = icmp ult i64 %i.mi, %i.am
  br i1 %i.mj, label %bb.df, label %.invoke.i

bb.df:                                            ; preds = %bb.de
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.mf
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.mi
  %.val204.i = load i64, ptr %i.mk, align 8, !noalias !1878, !noundef !5
  %.val205.i = load i64, ptr %i.ml, align 8, !noalias !1878, !noundef !5
  %i.mm = icmp eq i64 %.val204.i, %.val205.i
  br i1 %i.mm, label %bb.dg, label %._crit_edge482.i

bb.dg:                                            ; preds = %bb.df
  %i.mn = add i64 %i.me, %.sroa.038.4479.i        ; 3 uses
  %i.mo = load ptr, ptr %i.gw, align 8, !noalias !1878, !nonnull !5, !noundef !5 ; 2 uses
  %i.mp = load i64, ptr %i.gx, align 8, !noalias !1878, !noundef !5 ; 4 uses
  %i.mq = icmp ult i64 %i.mn, %i.mp
  br i1 %i.mq, label %bb.dh, label %.invoke.i

bb.dh:                                            ; preds = %bb.dg
  %i.mr = add nuw i64 %.sroa.09.4480.i, 1         ; 4 uses
  %i.ms = mul i64 %i.mr, %i.gm
  %i.mt = add nuw i64 %.sroa.038.4479.i, 1        ; 4 uses
  %i.mu = add i64 %i.mt, %i.ms                    ; 3 uses
  %i.mv = icmp ult i64 %i.mu, %i.mp
  br i1 %i.mv, label %bb.di, label %.invoke.i

bb.di:                                            ; preds = %bb.dh
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.mn
  %i.mx = load i8, ptr %i.mw, align 1, !noalias !1878, !noundef !5
  %i.my = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.mu
  %i.mz = load i8, ptr %i.my, align 1, !noalias !1878, !noundef !5
  %i.na = add i8 %i.mz, 1
  %i.nb = icmp eq i8 %i.mx, %i.na
  br i1 %i.nb, label %bb.dj, label %._crit_edge482.i

bb.dj:                                            ; preds = %bb.di
  %i.nc = icmp ult i64 %i.mr, %i.ge
  %i.nd = icmp ult i64 %i.mt, %i.gd
  %or.cond177.i = and i1 %i.nc, %i.nd
  br i1 %or.cond177.i, label %.lr.ph481.i, label %._crit_edge482.i

.loopexit24.i:                                    ; preds = %bb.dm, %bb.do, %bb.bs, %bb.cr, %bb.ce, %bb.dd, %bb.dz
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.sink.split.i unwind label %bb.dk, !noalias !1878

bb.dk:                                            ; preds = %.loopexit24.i
  %i.ne = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.dl, !noalias !1878

bb.dl:                                            ; preds = %bb.dk
  %i.nf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !1878
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ge, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dk
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp1598, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ne, %bb.dk ], [ %i.vj, %bb.ge ], [ %lpad.loopexit.split-lp1644, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

bb.dm:                                            ; preds = %.lr.ph469.split.i
  br i1 %i.hc, label %.loopexit24.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.dm
  %i.ng = mul i64 %i.hb, %i.gm                    ; 2 uses
  %i.nh = mul i64 %.sroa.0102.0468.i, %i.gm       ; 2 uses
  %.reass.i = add i64 %i.hb, %invariant.op470.i   ; 4 uses
  %i.ni = icmp ult i64 %.reass.i, %i.ap
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.reass.i
  %.fr.i = freeze i1 %i.ni
  br i1 %.fr.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.dx
  %.sroa.0105.0432.us.i = phi i64 [ %i.nk, %bb.dx ], [ %i.gd, %.lr.ph.i ] ; 3 uses
  %i.nk = add i64 %.sroa.0105.0432.us.i, -1       ; 6 uses
  %i.nl = and i64 %i.nk, 1023
  %i.nm = icmp eq i64 %i.nl, 0
  br i1 %i.nm, label %bb.dn, label %bb.dp

bb.dn:                                            ; preds = %.lr.ph.split.us.i
  %i.nn = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.do unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1878

bb.do:                                            ; preds = %bb.dn
  br i1 %i.nn, label %.loopexit24.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do, %.lr.ph.split.us.i
  %.reass.us.i = add i64 %i.nk, %invariant.op.i   ; 3 uses
  %i.no = icmp ult i64 %.reass.us.i, %i.am
  br i1 %i.no, label %bb.dq, label %.invoke.i

bb.dq:                                            ; preds = %bb.dp
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.reass.us.i
  %.val.us.i = load i64, ptr %i.nj, align 8, !noalias !1878, !noundef !5
  %.val203.us.i = load i64, ptr %i.np, align 8, !noalias !1878, !noundef !5
  %i.nq = icmp eq i64 %.val.us.i, %.val203.us.i
  br i1 %i.nq, label %bb.du, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.nr = add i64 %i.nk, %i.nh                    ; 3 uses
  %i.ns = load ptr, ptr %i.gw, align 8, !noalias !1878, !nonnull !5, !noundef !5 ; 3 uses
  %i.nt = load i64, ptr %i.gx, align 8, !noalias !1878, !noundef !5 ; 5 uses
  %i.nu = icmp ult i64 %i.nr, %i.nt
  br i1 %i.nu, label %bb.ds, label %.invoke.i

bb.ds:                                            ; preds = %bb.dr
  %i.nv = add i64 %.sroa.0105.0432.us.i, %i.ng    ; 3 uses
  %i.nw = icmp ult i64 %i.nv, %i.nt
  br i1 %i.nw, label %bb.dt, label %.invoke.i

bb.dt:                                            ; preds = %bb.ds
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.nr
  %i.ny = load i8, ptr %i.nx, align 1, !noalias !1878, !noundef !5
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.nv
  %i.oa = load i8, ptr %i.nz, align 1, !noalias !1878, !noundef !5
  %.sroa.0.0.i.us.i = call noundef i8 @llvm.umax.i8(i8 %i.oa, i8 %i.ny)
  br label %bb.dw

bb.du:                                            ; preds = %bb.dq
  %i.ob = add i64 %.sroa.0105.0432.us.i, %i.nh    ; 3 uses
  %i.oc = load i64, ptr %i.gx, align 8, !noalias !1878, !noundef !5 ; 3 uses
  %i.od = icmp ult i64 %i.ob, %i.oc
  br i1 %i.od, label %bb.dv, label %.invoke.i

bb.dv:                                            ; preds = %bb.du
  %i.oe = load ptr, ptr %i.gw, align 8, !noalias !1878, !nonnull !5, !noundef !5 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.ob
  %i.og = load i8, ptr %i.of, align 1, !noalias !1878, !noundef !5
  %i.oh = add i8 %i.og, 1
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.dt
  %i.oi = phi ptr [ %i.oe, %bb.dv ], [ %i.ns, %bb.dt ]
  %i.oj = phi i64 [ %i.oc, %bb.dv ], [ %i.nt, %bb.dt ] ; 2 uses
  %.sroa.04.0.us.i = phi i8 [ %i.oh, %bb.dv ], [ %.sroa.0.0.i.us.i, %bb.dt ]
  %i.ok = add i64 %i.nk, %i.ng                    ; 3 uses
  %i.ol = icmp ult i64 %i.ok, %i.oj
  br i1 %i.ol, label %bb.dx, label %.invoke.i

bb.dx:                                            ; preds = %bb.dw
  %i.om = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.ok
  store i8 %.sroa.04.0.us.i, ptr %i.om, align 1, !noalias !1878
  %.not168.us.i = icmp eq i64 %i.nk, 0
  br i1 %.not168.us.i, label %..loopexit39_crit_edge.split.us.i, label %.lr.ph.split.us.i

..loopexit39_crit_edge.split.us.i:                ; preds = %bb.dx
  %.not.i78 = icmp eq i64 %i.hb, 0
  br i1 %.not.i78, label %.lr.ph495.i, label %.lr.ph469.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.on = and i64 %i.gd, 1023
  %i.oo = icmp eq i64 %i.on, 1
  br i1 %i.oo, label %bb.dy, label %.invoke.i

bb.dy:                                            ; preds = %.lr.ph.split.i
  %i.op = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1878

bb.dz:                                            ; preds = %bb.dy
  br i1 %i.op, label %.loopexit24.i, label %.invoke.i

bb.ea:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.oq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !1878
  unreachable

bb.eb:                                            ; preds = %bb.bg
  br i1 %i.gl, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.or = add i64 %i.ge, 1                        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1886
  %i.os = add i64 %i.gd, 1
  %i.ot = mul i64 %i.os, %i.or                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1887)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1888
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.ot, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !1888
  %i.ou = load i64, ptr %i.a, align 8, !range !9, !noalias !1888, !noundef !5
  %i.ov = trunc nuw i64 %i.ou to i1
  %i.ow = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ox = load i64, ptr %i.ow, align 8, !range !17, !noalias !1888, !noundef !5 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ov, label %bb.ed, label %.lr.ph484.i, !prof !13

bb.ed:                                            ; preds = %bb.ec
  %i.oz = load i64, ptr %i.oy, align 8, !noalias !1888
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ox, i64 %i.oz) #28, !noalias !1888
  unreachable

.lr.ph484.i:                                      ; preds = %bb.ec
  %i.pa = load ptr, ptr %i.oy, align 8, !noalias !1888, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1888
  store i64 %i.ox, ptr %i.b, align 8, !alias.scope !1887, !noalias !1886
  %i.pb = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 7 uses
  store ptr %i.pa, ptr %i.pb, align 8, !alias.scope !1887, !noalias !1886
  %i.pc = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  store i64 %i.ot, ptr %i.pc, align 8, !alias.scope !1887, !noalias !1886
  %invariant.op.i94 = sub i64 %.sroa.0190.0, %i.aq ; 4 uses
  %invariant.op485.i = sub i64 %.sroa.0.0, %i.an  ; 3 uses
  br label %.lr.ph484.split.i

.lr.ph511.i:                                      ; preds = %..loopexit39_crit_edge.split.us.i152
  %i.pd = getelementptr inbounds nuw i8, ptr %.val51, i64 120 ; 10 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.val51, i64 136 ; 6 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %.val51, i64 128 ; 3 uses
  br label %bb.ee

.lr.ph484.split.i:                                ; preds = %.lr.ph484.i, %..loopexit39_crit_edge.split.us.i152
  %.sroa.0102.0483.i = phi i64 [ %i.pg, %..loopexit39_crit_edge.split.us.i152 ], [ %i.gd, %.lr.ph484.i ] ; 2 uses
  %i.pg = add i64 %.sroa.0102.0483.i, -1          ; 4 uses
  %i.ph = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1886

._crit_edge512.i:                                 ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i120
  br i1 %i.ub, label %bb.ef, label %bb.eh

bb.ee:                                            ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i120, %.lr.ph511.i
  %.sroa.05.0.not510.i = phi i1 [ true, %.lr.ph511.i ], [ false, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i120 ] ; 3 uses
  %.sroa.09.0509.i = phi i64 [ 0, %.lr.ph511.i ], [ %.sroa.09.3.i122, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i120 ] ; 14 uses
  %.sroa.039.0508.i = phi i64 [ 0, %.lr.ph511.i ], [ %.sroa.039.3.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i120 ] ; 17 uses
  %i.pi = and i64 %.sroa.039.0508.i, 1023
  %i.pj = icmp eq i64 %i.pi, 0
  %or.cond170.i105 = select i1 %.sroa.05.0.not510.i, i1 %i.pj, i1 false ; 2 uses
  br i1 %or.cond170.i105, label %bb.el, label %bb.ek

bb.ef:                                            ; preds = %._crit_edge512.i
  %i.pk = add i64 %.sroa.09.3.i122, %.sroa.0.0    ; 2 uses
  %i.pl = sub nuw i64 %i.gd, %.sroa.09.3.i122
  %i.pm = add i64 %.sroa.039.3.i, %.sroa.0190.0   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.pn = load i64, ptr %i.pd, align 8, !range !10, !alias.scope !1889, !noalias !1886, !noundef !5
  %i.po = icmp eq i64 %i.ua, %i.pn
  br i1 %i.po, label %bb.eg, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101

bb.eg:                                            ; preds = %bb.ef
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.pd)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1886

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101: ; preds = %bb.eg, %bb.ef
  %i.pp = load ptr, ptr %i.pf, align 8, !alias.scope !1889, !noalias !1886, !nonnull !5, !noundef !5
  %i.pq = getelementptr inbounds nuw [40 x i8], ptr %i.pp, i64 %i.ua ; 4 uses
  store i64 1, ptr %i.pq, align 8, !noalias !1886
  %.sroa.42.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  store i64 %i.pk, ptr %.sroa.42.0..sroa_idx.i102, align 8, !noalias !1886
  %.sroa.53.0..sroa_idx.i103 = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  store i64 %i.pl, ptr %.sroa.53.0..sroa_idx.i103, align 8, !noalias !1886
  %.sroa.64.0..sroa_idx.i104 = getelementptr inbounds nuw i8, ptr %i.pq, i64 24
  store i64 %i.pm, ptr %.sroa.64.0..sroa_idx.i104, align 8, !noalias !1886
  %i.pr = add i64 %.sink1039.i, 2                 ; 2 uses
  store i64 %i.pr, ptr %i.pe, align 8, !alias.scope !1889, !noalias !1886
  br i1 %i.uc, label %bb.ei, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread304

bb.eh:                                            ; preds = %._crit_edge512.i
  br i1 %i.uc, label %._crit_edge894, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread304

._crit_edge894:                                   ; preds = %bb.eh
  %.pre900 = add i64 %.sroa.09.3.i122, %.sroa.0.0
  %.pre902 = add i64 %.sroa.039.3.i, %.sroa.0190.0
  br label %bb.ei

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gh, %bb.el, %bb.ew, %bb.fj, %bb.fu, %bb.fw, %bb.ex, %bb.fk, %.lr.ph484.split.i, %bb.gs, %.invoke.i106, %bb.ej, %bb.eg
  %lpad.loopexit.split-lp1644 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.b) #26
          to label %common.resume unwind label %bb.gw, !noalias !1886

bb.ei:                                            ; preds = %._crit_edge894, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101
  %.pre-phi903 = phi i64 [ %.pre902, %._crit_edge894 ], [ %i.pm, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101 ]
  %.pre-phi901 = phi i64 [ %.pre900, %._crit_edge894 ], [ %i.pk, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101 ]
  %i.ps = phi i64 [ %i.ua, %._crit_edge894 ], [ %i.pr, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101 ] ; 3 uses
  %i.pt = sub nuw i64 %i.ge, %.sroa.039.3.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.pu = load i64, ptr %i.pd, align 8, !range !10, !alias.scope !1890, !noalias !1886, !noundef !5
  %i.pv = icmp eq i64 %i.ps, %i.pu
  br i1 %i.pv, label %bb.ej, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i86

bb.ej:                                            ; preds = %bb.ei
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.pd)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i86 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1886

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i86: ; preds = %bb.ej, %bb.ei
  %i.pw = load ptr, ptr %i.pf, align 8, !alias.scope !1890, !noalias !1886, !nonnull !5, !noundef !5
  %i.px = getelementptr inbounds nuw [40 x i8], ptr %i.pw, i64 %i.ps ; 4 uses
  store i64 2, ptr %i.px, align 8, !noalias !1886
  %.sroa.412.0..sroa_idx.i87 = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  store i64 %.pre-phi901, ptr %.sroa.412.0..sroa_idx.i87, align 8, !noalias !1886
  %.sroa.513.0..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  store i64 %.pre-phi903, ptr %.sroa.513.0..sroa_idx.i88, align 8, !noalias !1886
  %.sroa.614.0..sroa_idx.i89 = getelementptr inbounds nuw i8, ptr %i.px, i64 24
  store i64 %i.pt, ptr %.sroa.614.0..sroa_idx.i89, align 8, !noalias !1886
  %i.py = add i64 %i.ps, 1
  store i64 %i.py, ptr %i.pe, align 8, !alias.scope !1890, !noalias !1886
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread304

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread304: ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101, %bb.eh, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i86
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.b), !noalias !1886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1886
  br label %bb.ba

bb.ek:                                            ; preds = %bb.em, %bb.ee
  %i.pz = mul i64 %.sroa.09.0509.i, %i.or         ; 4 uses
  %i.qa = add i64 %.sroa.09.0509.i, %.sroa.0.0    ; 2 uses
  %i.qb = add i64 %.sroa.039.0508.i, %.sroa.0190.0 ; 7 uses
  %i.qc = sub i64 %i.qb, %i.aq                    ; 3 uses
  %i.qd = icmp ult i64 %i.qc, %i.ap
  br i1 %i.qd, label %bb.en, label %.invoke.i106

.invoke.i106:                                     ; preds = %bb.gq, %bb.go, %bb.gm, %bb.gl, %bb.gj, %bb.et, %bb.er, %bb.eq, %bb.ep, %bb.en, %bb.ek, %bb.fs, %bb.fq, %bb.fp, %bb.fo, %bb.fm, %bb.ff, %bb.fd, %bb.fc, %bb.fb, %bb.ez, %bb.fy, %bb.fv, %bb.gb, %bb.ga, %bb.gv, %bb.gu
  %i.qe = phi i64 [ %i.sl, %bb.ff ], [ %.reass.i143, %bb.gu ], [ %.reass486.i, %bb.gv ], [ %i.ts, %bb.fs ], [ %i.qc, %bb.ek ], [ %i.uz, %bb.gb ], [ %i.ap, %bb.fv ], [ %i.us, %bb.ga ], [ %i.am, %bb.fy ], [ %i.rv, %bb.ez ], [ %i.rz, %bb.fb ], [ %i.sd, %bb.fd ], [ %i.sb, %bb.fc ], [ %i.ta, %bb.fm ], [ %i.te, %bb.fo ], [ %i.tk, %bb.fq ], [ %i.tg, %bb.fp ], [ %i.qn, %bb.ep ], [ %i.qp, %bb.eq ], [ %i.rf, %bb.et ], [ %i.qj, %bb.en ], [ %i.qu, %bb.er ], [ %i.vw, %bb.gl ], [ %.reass.us.i146, %bb.gj ], [ %i.wp, %bb.gq ], [ %i.wa, %bb.gm ], [ %i.wg, %bb.go ]
  %i.qf = phi i64 [ %.pre745.i.a, %bb.ff ], [ %i.ap, %bb.gu ], [ %i.am, %bb.gv ], [ %.pre743.i, %bb.fs ], [ %i.ap, %bb.ek ], [ %i.uu, %bb.gb ], [ %i.ap, %bb.fv ], [ %i.uu, %bb.ga ], [ %i.am, %bb.fy ], [ %i.ap, %bb.ez ], [ %.pre745.i.a, %bb.fb ], [ %.pre745.i.a, %bb.fd ], [ %.pre745.i.a, %bb.fc ], [ %i.am, %bb.fm ], [ %.pre743.i, %bb.fo ], [ %.pre743.i, %bb.fq ], [ %.pre743.i, %bb.fp ], [ %.pre741.i, %bb.ep ], [ %.pre741.i, %bb.eq ], [ %.pre741.i, %bb.et ], [ %i.am, %bb.en ], [ %.pre741.i, %bb.er ], [ %i.vy, %bb.gl ], [ %i.ap, %bb.gj ], [ %i.wo, %bb.gq ], [ %i.vy, %bb.gm ], [ %i.wh, %bb.go ]
  %i.qg = phi ptr [ @91, %bb.ff ], [ @102, %bb.gu ], [ @103, %bb.gv ], [ @97, %bb.fs ], [ @80, %bb.ek ], [ @101, %bb.gb ], [ @98, %bb.fv ], [ @100, %bb.ga ], [ @99, %bb.fy ], [ @86, %bb.ez ], [ @88, %bb.fb ], [ @89, %bb.fd ], [ @90, %bb.fc ], [ @93, %bb.fm ], [ @94, %bb.fo ], [ @95, %bb.fq ], [ @96, %bb.fp ], [ @82, %bb.ep ], [ @84, %bb.eq ], [ @85, %bb.et ], [ @81, %bb.en ], [ @83, %bb.er ], [ @104, %bb.gl ], [ @102, %bb.gj ], [ @107, %bb.gq ], [ @105, %bb.gm ], [ @106, %bb.go ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.qe, i64 noundef %i.qf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qg) #28
          to label %.cont.i107 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1886

.cont.i107:                                       ; preds = %.invoke.i106
  unreachable

bb.el:                                            ; preds = %bb.ee
  %i.qh = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.em unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1886

bb.em:                                            ; preds = %bb.el
  br i1 %i.qh, label %.loopexit24.i127, label %bb.ek

bb.en:                                            ; preds = %bb.ek
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.qc ; 2 uses
  %i.qj = sub i64 %i.qa, %i.an                    ; 3 uses
  %i.qk = icmp ult i64 %i.qj, %i.am
  br i1 %i.qk, label %bb.eo, label %.invoke.i106

bb.eo:                                            ; preds = %bb.en
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.qj ; 2 uses
  %.val210.i108 = load i64, ptr %i.qi, align 8, !noalias !1886, !noundef !5
  %.val211.i109 = load i64, ptr %i.ql, align 8, !noalias !1886, !noundef !5
  %i.qm = icmp eq i64 %.val210.i108, %.val211.i109
  %.pre.i110 = load ptr, ptr %i.pb, align 8, !noalias !1886 ; 4 uses
  %.pre741.i = load i64, ptr %i.pc, align 8, !noalias !1886 ; 8 uses
  br i1 %i.qm, label %bb.ep, label %._crit_edge747.i

._crit_edge747.i:                                 ; preds = %bb.eo
  %.pre748.i = add nuw i64 %.sroa.09.0509.i, 1
  %.pre749.i = mul i64 %.pre748.i, %i.or
  br label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.qn = add i64 %i.pz, %.sroa.039.0508.i        ; 3 uses
  %i.qo = icmp ult i64 %i.qn, %.pre741.i
  br i1 %i.qo, label %bb.er, label %.invoke.i106

bb.eq:                                            ; preds = %bb.es, %._crit_edge747.i
  %.pre-phi750.i = phi i64 [ %.pre749.i, %._crit_edge747.i ], [ %i.qs, %bb.es ] ; 3 uses
  %i.qp = add i64 %.pre-phi750.i, %.sroa.039.0508.i ; 3 uses
  %i.qq = icmp ult i64 %i.qp, %.pre741.i
  br i1 %i.qq, label %bb.et, label %.invoke.i106

bb.er:                                            ; preds = %bb.ep
  %i.qr = add nuw i64 %.sroa.09.0509.i, 1
  %i.qs = mul i64 %i.qr, %i.or                    ; 2 uses
  %i.qt = add nuw i64 %.sroa.039.0508.i, 1
  %i.qu = add i64 %i.qt, %i.qs                    ; 3 uses
  %i.qv = icmp ult i64 %i.qu, %.pre741.i
  br i1 %i.qv, label %bb.es, label %.invoke.i106

bb.es:                                            ; preds = %bb.er
  %i.qw = getelementptr inbounds nuw i8, ptr %.pre.i110, i64 %i.qn
  %i.qx = load i8, ptr %i.qw, align 1, !noalias !1886, !noundef !5
  %i.qy = getelementptr inbounds nuw i8, ptr %.pre.i110, i64 %i.qu
  %i.qz = load i8, ptr %i.qy, align 1, !noalias !1886, !noundef !5
  %i.ra = add i8 %i.qz, 1
  %i.rb = icmp eq i8 %i.qx, %i.ra
  br i1 %i.rb, label %.preheader.i134, label %bb.eq

.preheader.i134:                                  ; preds = %bb.es
  %i.rc = icmp ult i64 %.sroa.09.0509.i, %i.gd
  %i.rd = icmp ult i64 %.sroa.039.0508.i, %i.ge
  %or.cond177494.i = select i1 %i.rc, i1 %i.rd, i1 false
  br i1 %or.cond177494.i, label %.lr.ph497.i, label %._crit_edge498.i

bb.et:                                            ; preds = %bb.eq
  %i.re = add i64 %.sroa.039.0508.i, 1            ; 3 uses
  %i.rf = add i64 %i.re, %i.pz                    ; 3 uses
  %i.rg = icmp ult i64 %i.rf, %.pre741.i
  br i1 %i.rg, label %bb.eu, label %.invoke.i106

bb.eu:                                            ; preds = %bb.et
  %i.rh = getelementptr inbounds nuw i8, ptr %.pre.i110, i64 %i.qp
  %i.ri = load i8, ptr %i.rh, align 1, !noalias !1886, !noundef !5
  %i.rj = getelementptr inbounds nuw i8, ptr %.pre.i110, i64 %i.rf
  %i.rk = load i8, ptr %i.rj, align 1, !noalias !1886, !noundef !5
  %.not164.i111 = icmp ult i8 %i.ri, %i.rk
  br i1 %.not164.i111, label %.preheader25.i129, label %.preheader30.i112

.preheader30.i112:                                ; preds = %bb.eu
  %umax.i113 = call i64 @llvm.umax.i64(i64 %.sroa.09.0509.i, i64 %i.gd) ; 3 uses
  %exitcond.not.i1151546.not = icmp ult i64 %.sroa.09.0509.i, %i.gd
  br i1 %exitcond.not.i1151546.not, label %.lr.ph1548, label %._crit_edge1549

.preheader25.i129:                                ; preds = %bb.eu
  %i.rl = icmp ult i64 %.sroa.039.0508.i, %i.ge
  br i1 %i.rl, label %.lr.ph489.i, label %._crit_edge.i130

.lr.ph489.i:                                      ; preds = %.preheader25.i129
  %i.rm = add i64 %.pre-phi750.i, 1
  %i.rn = add i64 %i.pz, 1
  br label %bb.ev

bb.ev:                                            ; preds = %bb.fh, %.lr.ph489.i
  %.sroa.039.1488.i = phi i64 [ %.sroa.039.0508.i, %.lr.ph489.i ], [ %i.ss, %bb.fh ] ; 9 uses
  %i.ro = and i64 %.sroa.039.1488.i, 1023
  %i.rp = icmp eq i64 %i.ro, 0
  %or.cond173.i131 = and i1 %.sroa.05.0.not510.i, %i.rp
  br i1 %or.cond173.i131, label %bb.ex, label %bb.ez

._crit_edge.i130:                                 ; preds = %bb.fh, %bb.fg, %bb.fe, %.preheader25.i129
  %.sroa.039.1.lcssa.i = phi i64 [ %.sroa.039.0508.i, %.preheader25.i129 ], [ %i.ge, %bb.fh ], [ %.sroa.039.1488.i, %bb.fg ], [ %.sroa.039.1488.i, %bb.fe ] ; 3 uses
  %i.rq = sub nuw i64 %.sroa.039.1.lcssa.i, %.sroa.039.0508.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.rr = load i64, ptr %i.pe, align 8, !alias.scope !1891, !noalias !1886, !noundef !5 ; 3 uses
  %i.rs = load i64, ptr %i.pd, align 8, !range !10, !alias.scope !1891, !noalias !1886, !noundef !5
  %i.rt = icmp eq i64 %i.rr, %i.rs
  br i1 %i.rt, label %bb.ew, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i120

bb.ew:                                            ; preds = %._crit_edge.i130
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.pd)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1886

bb.ex:                                            ; preds = %bb.ev
  %i.ru = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.ey unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1886

bb.ey:                                            ; preds = %bb.ex
  br i1 %i.ru, label %.loopexit24.i127, label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ev
  %i.rv = add i64 %.sroa.039.1488.i, %invariant.op.i94 ; 3 uses
  %i.rw = icmp ult i64 %i.rv, %i.ap
  br i1 %i.rw, label %bb.fa, label %.invoke.i106

bb.fa:                                            ; preds = %bb.ez
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.rv
  %.val208.i132 = load i64, ptr %i.rx, align 8, !noalias !1886, !noundef !5
  %.val209.i133 = load i64, ptr %i.ql, align 8, !noalias !1886, !noundef !5
  %i.ry = icmp eq i64 %.val208.i132, %.val209.i133
  %.pre744.i.a = load ptr, ptr %i.pb, align 8, !noalias !1886 ; 4 uses
  %.pre745.i.a = load i64, ptr %i.pc, align 8, !noalias !1886 ; 8 uses
  br i1 %i.ry, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.rz = add i64 %.sroa.039.1488.i, %i.pz        ; 3 uses
  %i.sa = icmp ult i64 %i.rz, %.pre745.i.a
  br i1 %i.sa, label %bb.fd, label %.invoke.i106

bb.fc:                                            ; preds = %bb.fe, %bb.fa
  %i.sb = add i64 %.sroa.039.1488.i, %.pre-phi750.i ; 3 uses
  %i.sc = icmp ult i64 %i.sb, %.pre745.i.a
  br i1 %i.sc, label %bb.ff, label %.invoke.i106

bb.fd:                                            ; preds = %bb.fb
  %i.sd = add i64 %i.rm, %.sroa.039.1488.i        ; 3 uses
  %i.se = icmp ult i64 %i.sd, %.pre745.i.a
  br i1 %i.se, label %bb.fe, label %.invoke.i106

bb.fe:                                            ; preds = %bb.fd
  %i.sf = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.rz
  %i.sg = load i8, ptr %i.sf, align 1, !noalias !1886, !noundef !5
  %i.sh = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.sd
  %i.si = load i8, ptr %i.sh, align 1, !noalias !1886, !noundef !5
  %i.sj = add i8 %i.si, 1
  %i.sk = icmp eq i8 %i.sg, %i.sj
  br i1 %i.sk, label %._crit_edge.i130, label %bb.fc

bb.ff:                                            ; preds = %bb.fc
  %i.sl = add i64 %i.rn, %.sroa.039.1488.i        ; 3 uses
  %i.sm = icmp ult i64 %i.sl, %.pre745.i.a
  br i1 %i.sm, label %bb.fg, label %.invoke.i106

bb.fg:                                            ; preds = %bb.ff
  %i.sn = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.sb
  %i.so = load i8, ptr %i.sn, align 1, !noalias !1886, !noundef !5
  %i.sp = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.sl
  %i.sq = load i8, ptr %i.sp, align 1, !noalias !1886, !noundef !5
  %i.sr = icmp ult i8 %i.so, %i.sq
  br i1 %i.sr, label %bb.fh, label %._crit_edge.i130

bb.fh:                                            ; preds = %bb.fg
  %i.ss = add nuw i64 %.sroa.039.1488.i, 1        ; 2 uses
  %i.st = icmp ult i64 %i.ss, %i.ge
  br i1 %i.st, label %bb.ev, label %._crit_edge.i130

bb.fi:                                            ; preds = %bb.ft
  %exitcond.not.i115 = icmp eq i64 %.pre-phi752.i, %umax.i113
  br i1 %exitcond.not.i115, label %._crit_edge1549, label %.lr.ph1548

.lr.ph1548:                                       ; preds = %.preheader30.i112, %bb.fi
  %.sroa.09.1.i1141547 = phi i64 [ %.pre-phi752.i, %bb.fi ], [ %.sroa.09.0509.i, %.preheader30.i112 ] ; 6 uses
  br i1 %or.cond170.i105, label %bb.fk, label %bb.fm

._crit_edge1549:                                  ; preds = %bb.fi, %bb.fr, %bb.ft, %.preheader30.i112
  %.sroa.09.1.lcssa.i119 = phi i64 [ %umax.i113, %.preheader30.i112 ], [ %umax.i113, %bb.fi ], [ %.sroa.09.1.i1141547, %bb.fr ], [ %.sroa.09.1.i1141547, %bb.ft ] ; 3 uses
  %i.su = sub nuw i64 %.sroa.09.1.lcssa.i119, %.sroa.09.0509.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.sv = load i64, ptr %i.pe, align 8, !alias.scope !1892, !noalias !1886, !noundef !5 ; 3 uses
  %i.sw = load i64, ptr %i.pd, align 8, !range !10, !alias.scope !1892, !noalias !1886, !noundef !5
  %i.sx = icmp eq i64 %i.sv, %i.sw
  br i1 %i.sx, label %bb.fj, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i120

bb.fj:                                            ; preds = %._crit_edge1549
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.pd)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1886

bb.fk:                                            ; preds = %.lr.ph1548
  %i.sy = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1886

bb.fl:                                            ; preds = %bb.fk
  br i1 %i.sy, label %.loopexit24.i127, label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %.lr.ph1548
  %i.sz = mul i64 %.sroa.09.1.i1141547, %i.or     ; 2 uses
  %i.ta = add i64 %.sroa.09.1.i1141547, %invariant.op485.i ; 3 uses
  %i.tb = icmp ult i64 %i.ta, %i.am
  br i1 %i.tb, label %bb.fn, label %.invoke.i106

bb.fn:                                            ; preds = %bb.fm
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ta
  %.val206.i116 = load i64, ptr %i.qi, align 8, !noalias !1886, !noundef !5
  %.val207.i117 = load i64, ptr %i.tc, align 8, !noalias !1886, !noundef !5
  %i.td = icmp eq i64 %.val206.i116, %.val207.i117
  %.pre742.i = load ptr, ptr %i.pb, align 8, !noalias !1886 ; 4 uses
  %.pre743.i = load i64, ptr %i.pc, align 8, !noalias !1886 ; 8 uses
  br i1 %i.td, label %bb.fo, label %._crit_edge746.i

._crit_edge746.i:                                 ; preds = %bb.fn
  %.pre751.i = add i64 %.sroa.09.1.i1141547, 1    ; 2 uses
  %.pre753.i = mul i64 %.pre751.i, %i.or
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.te = add i64 %i.sz, %.sroa.039.0508.i        ; 3 uses
  %i.tf = icmp ult i64 %i.te, %.pre743.i
  br i1 %i.tf, label %bb.fq, label %.invoke.i106

bb.fp:                                            ; preds = %bb.fr, %._crit_edge746.i
  %.pre-phi754.i.a = phi i64 [ %.pre753.i, %._crit_edge746.i ], [ %i.tj, %bb.fr ]
  %.pre-phi752.i = phi i64 [ %.pre751.i, %._crit_edge746.i ], [ %i.ti, %bb.fr ] ; 2 uses
  %i.tg = add i64 %.pre-phi754.i.a, %.sroa.039.0508.i ; 3 uses
  %i.th = icmp ult i64 %i.tg, %.pre743.i
  br i1 %i.th, label %bb.fs, label %.invoke.i106

bb.fq:                                            ; preds = %bb.fo
  %i.ti = add i64 %.sroa.09.1.i1141547, 1         ; 2 uses
  %i.tj = mul i64 %i.ti, %i.or                    ; 2 uses
  %i.tk = add i64 %i.tj, %i.re                    ; 3 uses
  %i.tl = icmp ult i64 %i.tk, %.pre743.i
  br i1 %i.tl, label %bb.fr, label %.invoke.i106

bb.fr:                                            ; preds = %bb.fq
  %i.tm = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.te
  %i.tn = load i8, ptr %i.tm, align 1, !noalias !1886, !noundef !5
  %i.to = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.tk
  %i.tp = load i8, ptr %i.to, align 1, !noalias !1886, !noundef !5
  %i.tq = add i8 %i.tp, 1
  %i.tr = icmp eq i8 %i.tn, %i.tq
  br i1 %i.tr, label %._crit_edge1549, label %bb.fp

bb.fs:                                            ; preds = %bb.fp
  %i.ts = add i64 %i.sz, %i.re                    ; 3 uses
  %i.tt = icmp ult i64 %i.ts, %.pre743.i
  br i1 %i.tt, label %bb.ft, label %.invoke.i106

bb.ft:                                            ; preds = %bb.fs
  %i.tu = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.tg
  %i.tv = load i8, ptr %i.tu, align 1, !noalias !1886, !noundef !5
  %i.tw = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.ts
  %i.tx = load i8, ptr %i.tw, align 1, !noalias !1886, !noundef !5
  %.not167.i118 = icmp ult i8 %i.tv, %i.tx
  br i1 %.not167.i118, label %._crit_edge1549, label %bb.fi

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i120: ; preds = %bb.fu, %._crit_edge498.i, %bb.fj, %._crit_edge1549, %bb.ew, %._crit_edge.i130
  %.sink1039.i = phi i64 [ %i.ue, %._crit_edge498.i ], [ %i.rr, %._crit_edge.i130 ], [ %i.ue, %bb.fu ], [ %i.rr, %bb.ew ], [ %i.sv, %bb.fj ], [ %i.sv, %._crit_edge1549 ] ; 3 uses
  %.sink1036.i = phi i64 [ 0, %._crit_edge498.i ], [ 2, %._crit_edge.i130 ], [ 0, %bb.fu ], [ 2, %bb.ew ], [ 1, %bb.fj ], [ 1, %._crit_edge1549 ]
  %.sink1033.i = phi i64 [ %i.qb, %._crit_edge498.i ], [ %i.qb, %._crit_edge.i130 ], [ %i.qb, %bb.fu ], [ %i.qb, %bb.ew ], [ %i.su, %bb.fj ], [ %i.su, %._crit_edge1549 ]
  %.sink.i121 = phi i64 [ %i.ud, %._crit_edge498.i ], [ %i.rq, %._crit_edge.i130 ], [ %i.ud, %bb.fu ], [ %i.rq, %bb.ew ], [ %i.qb, %bb.fj ], [ %i.qb, %._crit_edge1549 ]
  %.sroa.039.3.i = phi i64 [ %.sroa.039.4.lcssa.i, %._crit_edge498.i ], [ %.sroa.039.1.lcssa.i, %._crit_edge.i130 ], [ %.sroa.039.4.lcssa.i, %bb.fu ], [ %.sroa.039.1.lcssa.i, %bb.ew ], [ %.sroa.039.0508.i, %bb.fj ], [ %.sroa.039.0508.i, %._crit_edge1549 ] ; 5 uses
  %.sroa.09.3.i122 = phi i64 [ %.sroa.09.4.lcssa.i135, %._crit_edge498.i ], [ %.sroa.09.0509.i, %._crit_edge.i130 ], [ %.sroa.09.4.lcssa.i135, %bb.fu ], [ %.sroa.09.0509.i, %bb.ew ], [ %.sroa.09.1.lcssa.i119, %bb.fj ], [ %.sroa.09.1.lcssa.i119, %._crit_edge1549 ] ; 5 uses
  %i.ty = load ptr, ptr %i.pf, align 8, !noalias !1886, !nonnull !5, !noundef !5
  %i.tz = getelementptr inbounds nuw [40 x i8], ptr %i.ty, i64 %.sink1039.i ; 4 uses
  store i64 %.sink1036.i, ptr %i.tz, align 8, !noalias !1886
  %.sroa.417.0..sroa_idx.i123 = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  store i64 %i.qa, ptr %.sroa.417.0..sroa_idx.i123, align 8, !noalias !1886
  %.sroa.518.0..sroa_idx.i124 = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  store i64 %.sink1033.i, ptr %.sroa.518.0..sroa_idx.i124, align 8, !noalias !1886
  %.sroa.619.0..sroa_idx.i125 = getelementptr inbounds nuw i8, ptr %i.tz, i64 24
  store i64 %.sink.i121, ptr %.sroa.619.0..sroa_idx.i125, align 8, !noalias !1886
  %i.ua = add i64 %.sink1039.i, 1                 ; 4 uses
  store i64 %i.ua, ptr %i.pe, align 8, !noalias !1886
  %i.ub = icmp ult i64 %.sroa.09.3.i122, %i.gd    ; 2 uses
  %i.uc = icmp ult i64 %.sroa.039.3.i, %i.ge      ; 3 uses
  %or.cond.i126 = select i1 %i.ub, i1 %i.uc, i1 false
  br i1 %or.cond.i126, label %bb.ee, label %._crit_edge512.i

._crit_edge498.i:                                 ; preds = %bb.gd, %bb.gc, %bb.fz, %.preheader.i134
  %.sroa.039.4.lcssa.i = phi i64 [ %.sroa.039.0508.i, %.preheader.i134 ], [ %i.uy, %bb.gd ], [ %.sroa.039.4495.i, %bb.fz ], [ %.sroa.039.4495.i, %bb.gc ] ; 2 uses
  %.sroa.09.4.lcssa.i135 = phi i64 [ %.sroa.09.0509.i, %.preheader.i134 ], [ %i.uw, %bb.gd ], [ %.sroa.09.4496.i, %bb.fz ], [ %.sroa.09.4496.i, %bb.gc ] ; 3 uses
  %i.ud = sub i64 %.sroa.09.4.lcssa.i135, %.sroa.09.0509.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.ue = load i64, ptr %i.pe, align 8, !alias.scope !1893, !noalias !1886, !noundef !5 ; 3 uses
  %i.uf = load i64, ptr %i.pd, align 8, !range !10, !alias.scope !1893, !noalias !1886, !noundef !5
  %i.ug = icmp eq i64 %i.ue, %i.uf
  br i1 %i.ug, label %bb.fu, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i120

bb.fu:                                            ; preds = %._crit_edge498.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.pd)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1886

.lr.ph497.i:                                      ; preds = %.preheader.i134, %bb.gd
  %.sroa.09.4496.i = phi i64 [ %i.uw, %bb.gd ], [ %.sroa.09.0509.i, %.preheader.i134 ] ; 5 uses
  %.sroa.039.4495.i = phi i64 [ %i.uy, %bb.gd ], [ %.sroa.039.0508.i, %.preheader.i134 ] ; 6 uses
  %i.uh = and i64 %.sroa.039.4495.i, 1023
  %i.ui = icmp eq i64 %i.uh, 0
  %or.cond180.i136 = select i1 %.sroa.05.0.not510.i, i1 %i.ui, i1 false
  br i1 %or.cond180.i136, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fx, %.lr.ph497.i
  %i.uj = mul i64 %.sroa.09.4496.i, %i.or
  %i.uk = add i64 %.sroa.039.4495.i, %invariant.op.i94 ; 2 uses
  %i.ul = icmp ult i64 %i.uk, %i.ap
  br i1 %i.ul, label %bb.fy, label %.invoke.i106

bb.fw:                                            ; preds = %.lr.ph497.i
  %i.um = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1886

bb.fx:                                            ; preds = %bb.fw
  br i1 %i.um, label %.loopexit24.i127, label %bb.fv

bb.fy:                                            ; preds = %bb.fv
  %i.un = add i64 %.sroa.09.4496.i, %invariant.op485.i ; 2 uses
  %i.uo = icmp ult i64 %i.un, %i.am
  br i1 %i.uo, label %bb.fz, label %.invoke.i106

bb.fz:                                            ; preds = %bb.fy
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.uk
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.un
  %.val204.i137 = load i64, ptr %i.up, align 8, !noalias !1886, !noundef !5
  %.val205.i138 = load i64, ptr %i.uq, align 8, !noalias !1886, !noundef !5
  %i.ur = icmp eq i64 %.val204.i137, %.val205.i138
  br i1 %i.ur, label %bb.ga, label %._crit_edge498.i

bb.ga:                                            ; preds = %bb.fz
  %i.us = add i64 %i.uj, %.sroa.039.4495.i        ; 3 uses
  %i.ut = load ptr, ptr %i.pb, align 8, !noalias !1886, !nonnull !5, !noundef !5 ; 2 uses
  %i.uu = load i64, ptr %i.pc, align 8, !noalias !1886, !noundef !5 ; 4 uses
  %i.uv = icmp ult i64 %i.us, %i.uu
  br i1 %i.uv, label %bb.gb, label %.invoke.i106

bb.gb:                                            ; preds = %bb.ga
  %i.uw = add nuw i64 %.sroa.09.4496.i, 1         ; 4 uses
  %i.ux = mul i64 %i.uw, %i.or
  %i.uy = add nuw i64 %.sroa.039.4495.i, 1        ; 4 uses
  %i.uz = add i64 %i.uy, %i.ux                    ; 3 uses
  %i.va = icmp ult i64 %i.uz, %i.uu
  br i1 %i.va, label %bb.gc, label %.invoke.i106

bb.gc:                                            ; preds = %bb.gb
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ut, i64 %i.us
  %i.vc = load i8, ptr %i.vb, align 1, !noalias !1886, !noundef !5
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ut, i64 %i.uz
  %i.ve = load i8, ptr %i.vd, align 1, !noalias !1886, !noundef !5
  %i.vf = add i8 %i.ve, 1
  %i.vg = icmp eq i8 %i.vc, %i.vf
  br i1 %i.vg, label %bb.gd, label %._crit_edge498.i

bb.gd:                                            ; preds = %bb.gc
  %i.vh = icmp ult i64 %i.uw, %i.gd
  %i.vi = icmp ult i64 %i.uy, %i.ge
  %or.cond177.i139 = and i1 %i.vh, %i.vi
  br i1 %or.cond177.i139, label %.lr.ph497.i, label %._crit_edge498.i

.loopexit24.i127:                                 ; preds = %bb.gg, %bb.gi, %bb.em, %bb.fl, %bb.ey, %bb.fx, %bb.gt
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.ge, !noalias !1886

bb.ge:                                            ; preds = %.loopexit24.i127
  %i.vj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.gf, !noalias !1886

bb.gf:                                            ; preds = %bb.ge
  %i.vk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !1886
  unreachable

bb.gg:                                            ; preds = %.lr.ph484.split.i
  br i1 %i.ph, label %.loopexit24.i127, label %.lr.ph.i140

.lr.ph.i140:                                      ; preds = %bb.gg
  %i.vl = mul i64 %i.pg, %i.or                    ; 2 uses
  %i.vm = mul i64 %.sroa.0102.0483.i, %i.or       ; 2 uses
  %.reass486.i = add i64 %i.pg, %invariant.op485.i ; 3 uses
  %i.vn = icmp ult i64 %.reass486.i, %i.am
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.reass486.i
  %.fr.i141 = freeze i1 %i.vn
  br i1 %.fr.i141, label %.lr.ph.split.us.i144, label %.lr.ph.split.i142

.lr.ph.split.us.i144:                             ; preds = %.lr.ph.i140, %bb.gr
  %.sroa.0105.0432.us.i145 = phi i64 [ %i.vp, %bb.gr ], [ %i.ge, %.lr.ph.i140 ] ; 3 uses
  %i.vp = add i64 %.sroa.0105.0432.us.i145, -1    ; 6 uses
  %i.vq = and i64 %i.vp, 1023
  %i.vr = icmp eq i64 %i.vq, 0
  br i1 %i.vr, label %bb.gh, label %bb.gj

bb.gh:                                            ; preds = %.lr.ph.split.us.i144
  %i.vs = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1886

bb.gi:                                            ; preds = %bb.gh
  br i1 %i.vs, label %.loopexit24.i127, label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %.lr.ph.split.us.i144
end_hunk_5
begin_hunk_6_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIBT_mEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter:bb.a
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit154

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit154: ; preds = %bb.gy, %bb.gz
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xf, i64 128 ; 2 uses
  %i.xm = load ptr, ptr %i.xl, align 8, !alias.scope !1897, !noalias !1896, !nonnull !5, !noundef !5
  %i.xn = getelementptr inbounds nuw [40 x i8], ptr %i.xm, i64 %i.xi ; 4 uses
  store i64 1, ptr %i.xn, align 8, !noalias !1896
  %.sroa.4241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xn, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4241.0..sroa_idx, align 8, !noalias !1896
  %.sroa.5242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xn, i64 16
  store i64 %i.xe, ptr %.sroa.5242.0..sroa_idx, align 8, !noalias !1896
  %.sroa.6243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xn, i64 24
  store i64 %.sroa.0190.0, ptr %.sroa.6243.0..sroa_idx, align 8, !noalias !1896
  %i.xo = add i64 %i.xi, 1                        ; 3 uses
  store i64 %i.xo, ptr %i.xh, align 8, !alias.scope !1897, !noalias !1896
  %i.xp = sub nuw i64 %i.as, %.sroa.0190.0
  %i.xq = load i64, ptr %i.xg, align 8, !range !10, !alias.scope !1899, !noalias !1900, !noundef !5
  %i.xr = icmp eq i64 %i.xo, %i.xq
  br i1 %i.xr, label %bb.ha, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit155

bb.ha:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit154
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.xg), !noalias !1901
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit155

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit155: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit154, %bb.ha
  %i.xs = load ptr, ptr %i.xl, align 8, !alias.scope !1899, !noalias !1900, !nonnull !5, !noundef !5
  %i.xt = getelementptr inbounds nuw [40 x i8], ptr %i.xs, i64 %i.xo ; 4 uses
  store i64 2, ptr %i.xt, align 8, !noalias !1900
  %.sroa.4256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xt, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4256.0..sroa_idx, align 8, !noalias !1900
  %.sroa.5257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xt, i64 16
  store i64 %.sroa.0190.0, ptr %.sroa.5257.0..sroa_idx, align 8, !noalias !1900
  %.sroa.6258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xt, i64 24
  store i64 %i.xp, ptr %.sroa.6258.0..sroa_idx, align 8, !noalias !1900
  %i.xu = add i64 %i.xi, 2
  store i64 %i.xu, ptr %i.xh, align 8, !alias.scope !1899, !noalias !1900
  br label %bb.ba

.thread:                                          ; preds = %bb.az
  %i.xv = sub nuw i64 %i.as, %.sroa.0190.0
  call void @llvm.experimental.noalias.scope.decl(metadata !1902)
  call void @llvm.experimental.noalias.scope.decl(metadata !1903)
  %i.xw = load ptr, ptr %0, align 8, !alias.scope !1904, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 120 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xw, i64 136 ; 2 uses
  %i.xz = load i64, ptr %i.xy, align 8, !alias.scope !1905, !noalias !1904, !noundef !5 ; 3 uses
  %i.ya = load i64, ptr %i.xx, align 8, !range !10, !alias.scope !1905, !noalias !1904, !noundef !5
  %i.yb = icmp eq i64 %i.xz, %i.ya
  br i1 %i.yb, label %bb.hb, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit156

bb.hb:                                            ; preds = %.thread
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.xx), !noalias !1906
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit156

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit156: ; preds = %.thread, %bb.hb
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xw, i64 128
  %i.yd = load ptr, ptr %i.yc, align 8, !alias.scope !1905, !noalias !1904, !nonnull !5, !noundef !5
  %i.ye = getelementptr inbounds nuw [40 x i8], ptr %i.yd, i64 %i.xz ; 4 uses
  store i64 2, ptr %i.ye, align 8, !noalias !1904
  %.sroa.4261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4261.0..sroa_idx, align 8, !noalias !1904
  %.sroa.5262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ye, i64 16
  store i64 %.sroa.0190.0, ptr %.sroa.5262.0..sroa_idx, align 8, !noalias !1904
  %.sroa.6263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ye, i64 24
  store i64 %i.xv, ptr %.sroa.6263.0..sroa_idx, align 8, !noalias !1904
  %i.yf = add i64 %i.xz, 1
  store i64 %i.yf, ptr %i.xy, align 8, !alias.scope !1905, !noalias !1904
  br label %bb.ba

bb.hc:                                            ; preds = %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !1907)
  call void @llvm.experimental.noalias.scope.decl(metadata !1908)
  %i.yg = load ptr, ptr %0, align 8, !alias.scope !1909, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 120 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yg, i64 136 ; 2 uses
  %i.yj = load i64, ptr %i.yi, align 8, !alias.scope !1910, !noalias !1909, !noundef !5 ; 3 uses
  %i.yk = load i64, ptr %i.yh, align 8, !range !10, !alias.scope !1910, !noalias !1909, !noundef !5
  %i.yl = icmp eq i64 %i.yj, %i.yk
  br i1 %i.yl, label %bb.hd, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit157

bb.hd:                                            ; preds = %bb.hc
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.yh), !noalias !1911
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit157

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit157: ; preds = %bb.hc, %bb.hd
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yg, i64 128
  %i.yn = load ptr, ptr %i.ym, align 8, !alias.scope !1910, !noalias !1909, !nonnull !5, !noundef !5
  %i.yo = getelementptr inbounds nuw [40 x i8], ptr %i.yn, i64 %i.yj ; 4 uses
  store i64 0, ptr %i.yo, align 8, !noalias !1909
  %.sroa.4231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yo, i64 8
  store i64 %i.ar, ptr %.sroa.4231.0..sroa_idx, align 8, !noalias !1909
  %.sroa.5232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yo, i64 16
  store i64 %i.as, ptr %.sroa.5232.0..sroa_idx, align 8, !noalias !1909
  %.sroa.6233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yo, i64 24
  store i64 %.sroa.0.0.i54, ptr %.sroa.6233.0..sroa_idx, align 8, !noalias !1909
  %i.yp = add i64 %i.yj, 1
  store i64 %i.yp, ptr %i.yi, align 8, !alias.scope !1910, !noalias !1909
  br label %bb.he

bb.he:                                            ; preds = %bb.ba, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit157
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = tail call fastcc noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit, %bb.a
  %i.i = add i64 %i.h, %2                         ; 3 uses
  %i.j = add i64 %i.h, %5                         ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2052)
  %i.k = icmp uge i64 %i.i, %3
  %i.l = icmp uge i64 %i.j, %6
  %or.cond.i53 = or i1 %i.k, %i.l
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  br i1 %or.cond.i53, label %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge, label %.lr.ph.i.i.i.i

._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge: ; preds = %bb.b
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert879 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.pre880 = load i64, ptr %.phi.trans.insert879, align 8
  %.phi.trans.insert881 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre882 = load ptr, ptr %.phi.trans.insert881, align 8
  %.phi.trans.insert883 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre884 = load i64, ptr %.phi.trans.insert883, align 8
  %.phi.trans.insert885 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre886 = load i64, ptr %.phi.trans.insert885, align 8
  %.phi.trans.insert887 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre888 = load ptr, ptr %.phi.trans.insert887, align 8
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = sub nuw i64 %3, %i.i                     ; 2 uses
  %i.s = sub nuw i64 %6, %i.j                     ; 2 uses
  %i.t = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !2052 ; 4 uses
  %i.u = load i64, ptr %i.m, align 8, !alias.scope !2052 ; 5 uses
  %i.v = load ptr, ptr %i.n, align 8, !alias.scope !2052, !nonnull !5 ; 4 uses
  %i.w = load i64, ptr %i.o, align 8, !alias.scope !2051 ; 4 uses
  %i.x = load i64, ptr %i.p, align 8, !alias.scope !2051 ; 5 uses
  %i.y = load ptr, ptr %i.q, align 8, !alias.scope !2051, !nonnull !5 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %i.z = phi i64 [ %3, %.lr.ph.i.i.i.i ], [ %i.ac, %bb.g ]
  %.sroa.01.033.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ak, %bb.g ] ; 3 uses
  %i.aa = phi i64 [ %6, %.lr.ph.i.i.i.i ], [ %i.ab, %bb.g ]
  %i.ab = add i64 %i.aa, -1                       ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.01.033.i.i.i.i, %i.r
  br i1 %exitcond.not.i.i.i.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = add i64 %i.z, -1                        ; 2 uses
  %i.ad = sub i64 %i.ab, %i.t                     ; 3 uses
  %i.ae = icmp ult i64 %i.ad, %i.u
  br i1 %i.ae, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #28, !noalias !2053
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i: ; preds = %bb.d
  %i.af = sub i64 %i.ac, %i.w                     ; 3 uses
  %i.ag = icmp ult i64 %i.af, %i.x
  br i1 %i.ag, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.af, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #28, !noalias !2054
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ad
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.af
  %.val.i.i.i.i.i = load i64, ptr %i.ah, align 8, !noalias !2055, !noundef !5
  %.val10.i.i.i.i.i = load i64, ptr %i.ai, align 8, !noalias !2055, !noundef !5
  %i.aj = icmp eq i64 %.val.i.i.i.i.i, %.val10.i.i.i.i.i
  br i1 %i.aj, label %bb.g, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit

bb.g:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i
  %i.ak = add nuw i64 %.sroa.01.033.i.i.i.i, 1    ; 2 uses
  %exitcond65.not.i.i.i.i = icmp eq i64 %i.ak, %i.s
  br i1 %exitcond65.not.i.i.i.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.c

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.c, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i, %bb.g, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge
  %i.al = phi ptr [ %.pre888, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.y, %bb.g ], [ %i.y, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.y, %bb.c ] ; 10 uses
  %i.am = phi i64 [ %.pre886, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.x, %bb.g ], [ %i.x, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.x, %bb.c ] ; 23 uses
  %i.an = phi i64 [ %.pre884, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.w, %bb.g ], [ %i.w, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.w, %bb.c ] ; 5 uses
  %i.ao = phi ptr [ %.pre882, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.v, %bb.g ], [ %i.v, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.v, %bb.c ] ; 11 uses
  %i.ap = phi i64 [ %.pre880, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.u, %bb.g ], [ %i.u, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.u, %bb.c ] ; 27 uses
  %i.aq = phi i64 [ %.pre, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.t, %bb.g ], [ %i.t, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.t, %bb.c ] ; 8 uses
  %.sroa.0.0.i54 = phi i64 [ 0, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.r, %bb.c ], [ %.sroa.01.033.i.i.i.i, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.s, %bb.g ] ; 4 uses
  %i.ar = sub i64 %3, %.sroa.0.0.i54              ; 9 uses
  %i.as = sub i64 %6, %.sroa.0.0.i54              ; 9 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2057)
  %i.az = load ptr, ptr %0, align 8, !alias.scope !2058, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 120 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 136 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !2059, !noalias !2058, !noundef !5 ; 3 uses
  %i.bd = load i64, ptr %i.ba, align 8, !range !10, !alias.scope !2059, !noalias !2058, !noundef !5
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.i, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba), !noalias !2060
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.h, %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 128
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !2059, !noalias !2058, !nonnull !5, !noundef !5
  %i.bh = getelementptr inbounds nuw [40 x i8], ptr %i.bg, i64 %i.bc ; 4 uses
  store i64 0, ptr %i.bh, align 8, !noalias !2058
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !2058
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %5, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !2058
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store i64 %i.h, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !2058
  %i.bi = add i64 %i.bc, 1
  store i64 %i.bi, ptr %i.bb, align 8, !alias.scope !2059, !noalias !2058
  br label %bb.b

bb.j:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.0190.0 = phi i64 [ %i.j, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.0190.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit ] ; 36 uses
  %.sroa.0.0 = phi i64 [ %i.i, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit ] ; 33 uses
  %i.bj = icmp ult i64 %.sroa.0.0, %i.ar          ; 2 uses
  %i.bk = icmp ult i64 %.sroa.0190.0, %i.as       ; 3 uses
  %or.cond307 = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %or.cond307, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit, %bb.j
  br i1 %i.bj, label %bb.ay, label %bb.az

bb.l:                                             ; preds = %bb.j
  %i.bl = sub nuw i64 %i.ar, %.sroa.0.0           ; 5 uses
  %i.bm = sub nuw i64 %i.as, %.sroa.0190.0        ; 6 uses
  %i.bn = icmp ult i64 %i.bl, 97
  %i.bo = icmp ult i64 %i.bm, 97
  %or.cond.i = or i1 %i.bo, %i.bn
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i55 = call noundef i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bl) ; 2 uses
  %.sroa.0.0.i56 = call noundef i64 @llvm.umax.i64(i64 %i.bm, i64 %i.bl)
  %i.bp = shl nuw i64 %.sroa.0.0.i55, 1
  %i.bq = icmp slt i64 %.sroa.0.0.i55, 0
  br i1 %i.bq, label %bb.n, label %bb.o, !prof !13

bb.n:                                             ; preds = %bb.m
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.052.0.i = phi i64 [ -1, %bb.n ], [ %i.bp, %bb.m ]
  %i.br = icmp ult i64 %.sroa.0.0.i56, %.sroa.052.0.i
  br i1 %i.br, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not.i = icmp ule i64 %i.bm, %i.bl
  %i.bs = icmp ule i64 %i.bl, %i.bm
  %.not.i.fr = freeze i1 %.not.i
  %i.bt = sub i64 %.sroa.0190.0, %i.aq            ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %i.ap
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bt
  br label %bb.q

.loopexit:                                        ; preds = %.outer, %bb.ae, %bb.t, %bb.ad
  %.sroa.525.2.i.ph.lcssa480 = phi i64 [ %.sroa.525.2.i.ph634, %bb.t ], [ %.sroa.525.2.i.ph634, %bb.ae ], [ %.sroa.525.2.i.ph634, %bb.ad ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa473 = phi i64 [ %.sroa.023.1.i.ph635, %bb.t ], [ %.sroa.023.1.i.ph635, %bb.ae ], [ %.sroa.023.1.i.ph635, %bb.ad ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa466 = phi i64 [ %.sroa.9.2.i.ph636, %bb.t ], [ %.sroa.9.2.i.ph636, %bb.ae ], [ %.sroa.9.2.i.ph636, %bb.ad ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa459 = phi i64 [ %.sroa.12.2.i.ph637, %bb.t ], [ %.sroa.12.2.i.ph637, %bb.ae ], [ %.sroa.12.2.i.ph637, %bb.ad ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %.not.i59 = icmp ugt i64 %spec.select308, 4
  %or.cond313 = or i1 %i.bw, %.not.i59
  br i1 %or.cond313, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit
  %.sroa.12.0.i642 = phi i64 [ undef, %bb.p ], [ %.sroa.12.2.i.ph.lcssa459, %.loopexit ]
  %.sroa.9.0.i641 = phi i64 [ undef, %bb.p ], [ %.sroa.9.2.i.ph.lcssa466, %.loopexit ]
  %.sroa.023.0.i640 = phi i64 [ 0, %bb.p ], [ %.sroa.023.1.i.ph.lcssa473, %.loopexit ]
  %.sroa.525.0.i639 = phi i64 [ undef, %bb.p ], [ %.sroa.525.2.i.ph.lcssa480, %.loopexit ]
  %.sroa.0223.0638 = phi i64 [ 0, %bb.p ], [ %spec.select308, %.loopexit ] ; 11 uses
  %i.bw = icmp eq i64 %.sroa.0223.0638, 4         ; 2 uses
  %i.bx = add nuw nsw i64 %.sroa.0223.0638, 1
  %spec.select308 = select i1 %i.bw, i64 4, i64 %i.bx ; 2 uses
  %i.by = icmp eq i64 %.sroa.0223.0638, 0
  %i.bz = add i64 %.sroa.0223.0638, %.sroa.0.0    ; 2 uses
  %i.ca = sub i64 %i.bz, %i.an                    ; 5 uses
  %i.cb = icmp ult i64 %i.ca, %i.am               ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ca ; 2 uses
  %i.cd = sub i64 %i.ar, %i.bz
  br label %.lr.ph

bb.r:                                             ; preds = %.loopexit
  %i.ce = trunc nuw i64 %.sroa.023.1.i.ph.lcssa473 to i1
  br i1 %i.ce, label %.loopexit390, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit

.loopexit390:                                     ; preds = %bb.af, %bb.r
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa480, %bb.r ], [ %.sroa.0223.0638, %bb.af ] ; 4 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa466, %bb.r ], [ %.us-phi546, %bb.af ] ; 4 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa459, %bb.r ], [ %.sroa.01.0.i.lcssa, %bb.af ] ; 3 uses
  %i.cf = icmp eq i64 %.sroa.525.1.i, 0
  %i.cg = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  br i1 %i.cf, label %bb.an, label %bb.ao

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.t
  %.sroa.0224.0521 = phi i64 [ %spec.select310, %bb.t ], [ %.sroa.0224.0.ph633, %.lr.ph.split ] ; 3 uses
  %i.ch = icmp eq i64 %.sroa.0224.0521, 4         ; 3 uses
  %i.ci = add nuw nsw i64 %.sroa.0224.0521, 1
  %spec.select310 = select i1 %i.ch, i64 4, i64 %i.ci ; 3 uses
  %i.cj = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2061
  br i1 %i.cj, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.s

bb.s:                                             ; preds = %.lr.ph.split.split
  %.not645 = icmp eq i64 %.sroa.0224.0521, 0
  br i1 %.not645, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30
  %.not.i61 = icmp ugt i64 %spec.select310, 4
  %or.cond314 = select i1 %i.ch, i1 true, i1 %.not.i61
  br i1 %or.cond314, label %.loopexit, label %.lr.ph.split.split

bb.u:                                             ; preds = %bb.s
  br i1 %i.bu, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit31, label %.split.loopexit1117

.split.loopexit1117:                              ; preds = %bb.u
  %i.ck = sub i64 %.sroa.0190.0, %i.aq
  br label %.split

.split:                                           ; preds = %bb.ac, %.split.loopexit1117
  %.us-phi = phi i64 [ %i.ck, %.split.loopexit1117 ], [ %i.db, %bb.ac ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #28, !noalias !2062
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit31: ; preds = %bb.u
  br i1 %i.cb, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30, label %.split531

.split531:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit31, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit31.us
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ca, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #28, !noalias !2063
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit31
  %.val49 = load i64, ptr %i.bv, align 8, !noundef !5
  %.val50 = load i64, ptr %i.cc, align 8, !noundef !5
  %.not311 = icmp eq i64 %.val49, %.val50
  br i1 %.not311, label %.split535, label %bb.t

.split535.loopexit:                               ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30.us
  %.pre893 = sub i64 %i.as, %i.da
  br label %.split535

.split535:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30, %.split535.loopexit
  %.pre-phi = phi i64 [ %.pre893, %.split535.loopexit ], [ %i.bm, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30 ]
  %.us-phi541 = phi i64 [ %i.da, %.split535.loopexit ], [ %.sroa.0190.0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30 ]
  %.us-phi544 = phi i1 [ %i.cx, %.split535.loopexit ], [ %i.ch, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30 ]
  %.us-phi545 = phi i64 [ %spec.select310.us, %.split535.loopexit ], [ %spec.select310, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30 ] ; 2 uses
  %.us-phi546 = phi i64 [ %.sroa.0224.0521.us, %.split535.loopexit ], [ 0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30 ] ; 6 uses
  %.sroa.0.0.i65 = call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %i.cd) ; 3 uses
  %.not646 = icmp eq i64 %.sroa.0.0.i65, 0
  br i1 %.not646, label %.outer, label %.lr.ph630

.lr.ph630:                                        ; preds = %.split535
  %i.cl = sub i64 %.us-phi541, %i.aq              ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph630, %bb.aa
  %.sroa.01.0.i629 = phi i64 [ 0, %.lr.ph630 ], [ %i.cv, %bb.aa ] ; 5 uses
  %i.cm = and i64 %.sroa.01.0.i629, 1023
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.co = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2061
  br i1 %i.co, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cp = add nuw i64 %i.cl, %.sroa.01.0.i629     ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.ap
  br i1 %i.cq, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit29, label %bb.y

bb.y:                                             ; preds = %bb.x
  %umax = call i64 @llvm.umax.i64(i64 %i.ap, i64 %i.cl)
end_hunk_6
begin_hunk_7_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter:bb.a
  store i64 2, ptr %i.eo, align 8, !noalias !2072
  %.sroa.4266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4266.0..sroa_idx, align 8, !noalias !2072
  %.sroa.5267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store i64 %.sroa.0190.0, ptr %.sroa.5267.0..sroa_idx, align 8, !noalias !2072
  %.sroa.6268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6268.0..sroa_idx, align 8, !noalias !2072
  %i.ep = add i64 %i.ej, 1                        ; 2 uses
  store i64 %i.ep, ptr %i.ei, align 8, !alias.scope !2071, !noalias !2072
  br label %bb.ap

bb.at:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !2074)
  call void @llvm.experimental.noalias.scope.decl(metadata !2075), !noalias !2067
  %i.eq = load ptr, ptr %0, align 8, !alias.scope !2076, !noalias !2067, !nonnull !5, !align !6, !noundef !5 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 120 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 136 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !2077, !noalias !2078, !noundef !5 ; 3 uses
  %i.eu = load i64, ptr %i.er, align 8, !range !10, !alias.scope !2077, !noalias !2078, !noundef !5
  %i.ev = icmp eq i64 %i.et, %i.eu
  br i1 %i.ev, label %bb.au, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit70

bb.au:                                            ; preds = %bb.at
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.er), !noalias !2079
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit70

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit70: ; preds = %bb.at, %bb.au
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 128
  %i.ex = load ptr, ptr %i.ew, align 8, !alias.scope !2077, !noalias !2078, !nonnull !5, !noundef !5
  %i.ey = getelementptr inbounds nuw [40 x i8], ptr %i.ex, i64 %i.et ; 4 uses
  store i64 1, ptr %i.ey, align 8, !noalias !2078
  %.sroa.4251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4251.0..sroa_idx, align 8, !noalias !2078
  %.sroa.5252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5252.0..sroa_idx, align 8, !noalias !2078
  %.sroa.6253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  store i64 %.sroa.0190.0, ptr %.sroa.6253.0..sroa_idx, align 8, !noalias !2078
  %i.ez = add i64 %i.et, 1                        ; 2 uses
  store i64 %i.ez, ptr %i.es, align 8, !alias.scope !2077, !noalias !2078
  br label %bb.ap

bb.av:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !2080)
  call void @llvm.experimental.noalias.scope.decl(metadata !2081), !noalias !2067
  %i.fa = load ptr, ptr %0, align 8, !alias.scope !2082, !noalias !2067, !nonnull !5, !align !6, !noundef !5 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 120 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 136 ; 3 uses
  %i.fd = load i64, ptr %i.fc, align 8, !alias.scope !2083, !noalias !2084, !noundef !5 ; 4 uses
  %i.fe = load i64, ptr %i.fb, align 8, !range !10, !alias.scope !2083, !noalias !2084, !noundef !5
  %i.ff = icmp eq i64 %i.fd, %i.fe
  br i1 %i.ff, label %bb.aw, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit71

bb.aw:                                            ; preds = %bb.av
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fb), !noalias !2085
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit71

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit71: ; preds = %bb.av, %bb.aw
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 128 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !alias.scope !2083, !noalias !2084, !nonnull !5, !noundef !5
  %i.fi = getelementptr inbounds nuw [40 x i8], ptr %i.fh, i64 %i.fd ; 4 uses
  store i64 1, ptr %i.fi, align 8, !noalias !2084
  %.sroa.4271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4271.0..sroa_idx, align 8, !noalias !2084
  %.sroa.5272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5272.0..sroa_idx, align 8, !noalias !2084
  %.sroa.6273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  store i64 %.sroa.0190.0, ptr %.sroa.6273.0..sroa_idx, align 8, !noalias !2084
  %i.fj = add i64 %i.fd, 1                        ; 3 uses
  store i64 %i.fj, ptr %i.fc, align 8, !alias.scope !2083, !noalias !2084
  %i.fk = load i64, ptr %i.fb, align 8, !range !10, !alias.scope !2086, !noalias !2084, !noundef !5
  %i.fl = icmp eq i64 %i.fj, %i.fk
  br i1 %i.fl, label %bb.ax, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit72

bb.ax:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit71
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fb), !noalias !2087
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit72

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit72: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit71, %bb.ax
  %i.fm = load ptr, ptr %i.fg, align 8, !alias.scope !2086, !noalias !2084, !nonnull !5, !noundef !5
  %i.fn = getelementptr inbounds nuw [40 x i8], ptr %i.fm, i64 %i.fj ; 4 uses
  store i64 2, ptr %i.fn, align 8, !noalias !2084
  %.sroa.4276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4276.0..sroa_idx, align 8, !noalias !2084
  %.sroa.5277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store i64 %.sroa.0190.0, ptr %.sroa.5277.0..sroa_idx, align 8, !noalias !2084
  %.sroa.6278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6278.0..sroa_idx, align 8, !noalias !2084
  %i.fo = add i64 %i.fd, 2                        ; 2 uses
  store i64 %i.fo, ptr %i.fc, align 8, !alias.scope !2086, !noalias !2084
  br label %bb.ap

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split, %.lr.ph.split.us, %bb.w, %bb.l, %bb.o, %bb.r, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit68
  %.sroa.0190.2 = phi i64 [ %.sroa.0190.0, %bb.l ], [ %.sroa.0190.0, %bb.o ], [ %.sroa.0190.0, %bb.r ], [ %i.eg, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit68 ], [ %.sroa.0190.0, %.lr.ph.split.split ], [ %.sroa.0190.0, %.lr.ph.split.us ], [ %.sroa.0190.0, %bb.w ], [ %.sroa.0190.0, %.lr.ph.split.split.us ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.l ], [ %.sroa.0.0, %bb.o ], [ %.sroa.0.0, %bb.r ], [ %i.ef, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit68 ], [ %.sroa.0.0, %.lr.ph.split.split ], [ %.sroa.0.0, %.lr.ph.split.us ], [ %.sroa.0.0, %bb.w ], [ %.sroa.0.0, %.lr.ph.split.split.us ] ; 2 uses
  %i.fp = icmp eq i64 %.sroa.0.2, %.sroa.0.0
  %i.fq = icmp eq i64 %.sroa.0190.2, %.sroa.0190.0
  %or.cond = select i1 %i.fp, i1 %i.fq, i1 false
  br i1 %or.cond, label %bb.k, label %bb.j

bb.ay:                                            ; preds = %bb.k
  br i1 %i.bk, label %bb.bd, label %bb.bb

bb.az:                                            ; preds = %bb.k
  br i1 %i.bk, label %.thread, label %bb.ba

bb.ba:                                            ; preds = %.sink.split.i.thread, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread304, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit73, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit156, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit155, %bb.gx, %bb.az
  %.not26 = icmp eq i64 %.sroa.0.0.i54, 0
  br i1 %.not26, label %bb.he, label %bb.hc

bb.bb:                                            ; preds = %bb.ay
  %i.fr = sub nuw i64 %i.ar, %.sroa.0.0
  call void @llvm.experimental.noalias.scope.decl(metadata !2088)
  call void @llvm.experimental.noalias.scope.decl(metadata !2089)
  %i.fs = load ptr, ptr %0, align 8, !alias.scope !2090, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 120 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 136 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !alias.scope !2091, !noalias !2090, !noundef !5 ; 3 uses
  %i.fw = load i64, ptr %i.ft, align 8, !range !10, !alias.scope !2091, !noalias !2090, !noundef !5
  %i.fx = icmp eq i64 %i.fv, %i.fw
  br i1 %i.fx, label %bb.bc, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit73

bb.bc:                                            ; preds = %bb.bb
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ft), !noalias !2092
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit73

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit73: ; preds = %bb.bb, %bb.bc
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fs, i64 128
  %i.fz = load ptr, ptr %i.fy, align 8, !alias.scope !2091, !noalias !2090, !nonnull !5, !noundef !5
  %i.ga = getelementptr inbounds nuw [40 x i8], ptr %i.fz, i64 %i.fv ; 4 uses
  store i64 1, ptr %i.ga, align 8, !noalias !2090
  %.sroa.4246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4246.0..sroa_idx, align 8, !noalias !2090
  %.sroa.5247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store i64 %i.fr, ptr %.sroa.5247.0..sroa_idx, align 8, !noalias !2090
  %.sroa.6248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  store i64 %.sroa.0190.0, ptr %.sroa.6248.0..sroa_idx, align 8, !noalias !2090
  %i.gb = add i64 %i.fv, 1
  store i64 %i.gb, ptr %i.fu, align 8, !alias.scope !2091, !noalias !2090
  br label %bb.ba

bb.bd:                                            ; preds = %bb.ay
  %i.gc = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2093
  br i1 %i.gc, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gd = sub nuw i64 %i.ar, %.sroa.0.0           ; 22 uses
  %i.ge = sub nuw i64 %i.as, %.sroa.0190.0        ; 22 uses
  %i.gf = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.gd, i64 %i.ge) ; 2 uses
  %i.gg = extractvalue { i64, i1 } %i.gf, 1
  br i1 %i.gg, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.bf, !prof !13

bb.bf:                                            ; preds = %bb.be
  %i.gh = extractvalue { i64, i1 } %i.gf, 0
  %.sroa.0.0.i75 = call noundef i64 @llvm.umax.i64(i64 %i.ge, i64 %i.gd)
  %.sroa.0.0.i74 = call noundef i64 @llvm.umin.i64(i64 %i.ge, i64 %i.gd)
  %i.gi = add i64 %.sroa.0.0.i74, -65
  %or.cond.i27 = icmp ult i64 %i.gi, -64
  %i.gj = icmp ult i64 %.sroa.0.0.i75, 512
  %or.cond1.i = or i1 %i.gj, %or.cond.i27
  %i.gk = icmp ugt i64 %i.gh, 64000000
  %or.cond3.i = select i1 %or.cond1.i, i1 true, i1 %i.gk
  br i1 %or.cond3.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.not.i28 = icmp ugt i64 %i.gd, %i.ge
  %.val51 = load ptr, ptr %0, align 8             ; 16 uses
  %i.gl = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !5 ; 2 uses
  br i1 %.not.i28, label %bb.bh, label %bb.eb

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.gl, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gm = add i64 %i.gd, 1                        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2094
  %i.gn = add nuw i64 %i.ge, 1
  %i.go = mul i64 %i.gm, %i.gn                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2095)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2096
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.go, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !2096
  %i.gp = load i64, ptr %i.c, align 8, !range !9, !noalias !2096, !noundef !5
  %i.gq = trunc nuw i64 %i.gp to i1
  %i.gr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gs = load i64, ptr %i.gr, align 8, !range !17, !noalias !2096, !noundef !5 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.gq, label %bb.bj, label %.lr.ph469.i, !prof !13

bb.bj:                                            ; preds = %bb.bi
  %i.gu = load i64, ptr %i.gt, align 8, !noalias !2096
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.gs, i64 %i.gu) #28, !noalias !2096
  unreachable

.lr.ph469.i:                                      ; preds = %bb.bi
  %i.gv = load ptr, ptr %i.gt, align 8, !noalias !2096, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2096
  store i64 %i.gs, ptr %i.d, align 8, !alias.scope !2095, !noalias !2094
  %i.gw = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store ptr %i.gv, ptr %i.gw, align 8, !alias.scope !2095, !noalias !2094
  %i.gx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 7 uses
  store i64 %i.go, ptr %i.gx, align 8, !alias.scope !2095, !noalias !2094
  %invariant.op470.i = sub i64 %.sroa.0190.0, %i.aq ; 3 uses
  %invariant.op.i = sub i64 %.sroa.0.0, %i.an     ; 3 uses
  br label %.lr.ph469.split.i

.lr.ph495.i:                                      ; preds = %..loopexit39_crit_edge.split.us.i
  %i.gy = getelementptr inbounds nuw i8, ptr %.val51, i64 120 ; 10 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.val51, i64 136 ; 6 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.val51, i64 128 ; 3 uses
  br label %bb.bk

.lr.ph469.split.i:                                ; preds = %.lr.ph469.i, %..loopexit39_crit_edge.split.us.i
  %.sroa.0102.0468.i = phi i64 [ %i.hb, %..loopexit39_crit_edge.split.us.i ], [ %i.ge, %.lr.ph469.i ] ; 2 uses
  %i.hb = add i64 %.sroa.0102.0468.i, -1          ; 4 uses
  %i.hc = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2094

._crit_edge496.i:                                 ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i
  br i1 %i.lx, label %bb.bl, label %bb.bn

bb.bk:                                            ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i, %.lr.ph495.i
  %.sroa.05.0.not494.i = phi i1 [ true, %.lr.ph495.i ], [ false, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i ] ; 3 uses
  %.sroa.09.0493.i = phi i64 [ 0, %.lr.ph495.i ], [ %.sroa.09.3.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i ] ; 13 uses
  %.sroa.038.0492.i = phi i64 [ 0, %.lr.ph495.i ], [ %.sroa.038.3.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i ] ; 18 uses
  %i.hd = and i64 %.sroa.038.0492.i, 1023
  %i.he = icmp eq i64 %i.hd, 0
  %or.cond170.i = select i1 %.sroa.05.0.not494.i, i1 %i.he, i1 false ; 2 uses
  br i1 %or.cond170.i, label %bb.br, label %bb.bq

bb.bl:                                            ; preds = %._crit_edge496.i
  %i.hf = add i64 %.sroa.038.3.i, %.sroa.0.0      ; 2 uses
  %i.hg = sub nuw i64 %i.gd, %.sroa.038.3.i
  %i.hh = add i64 %.sroa.09.3.i, %.sroa.0190.0    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.hi = load i64, ptr %i.gy, align 8, !range !10, !alias.scope !2097, !noalias !2094, !noundef !5
  %i.hj = icmp eq i64 %i.lv, %i.hi
  br i1 %i.hj, label %bb.bm, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gy)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2094

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i: ; preds = %bb.bm, %bb.bl
  %i.hk = load ptr, ptr %i.ha, align 8, !alias.scope !2097, !noalias !2094, !nonnull !5, !noundef !5
  %i.hl = getelementptr inbounds nuw [40 x i8], ptr %i.hk, i64 %i.lv ; 4 uses
  store i64 1, ptr %i.hl, align 8, !noalias !2094
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store i64 %i.hf, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !2094
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  store i64 %i.hg, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !2094
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  store i64 %i.hh, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !2094
  %i.hm = add i64 %.sink1026.i, 2                 ; 2 uses
  store i64 %i.hm, ptr %i.gz, align 8, !alias.scope !2097, !noalias !2094
  br i1 %i.lw, label %bb.bo, label %.sink.split.i.thread

bb.bn:                                            ; preds = %._crit_edge496.i
  br i1 %i.lw, label %._crit_edge895, label %.sink.split.i.thread

._crit_edge895:                                   ; preds = %bb.bn
  %.pre896 = add i64 %.sroa.038.3.i, %.sroa.0.0
  %.pre898 = add i64 %.sroa.09.3.i, %.sroa.0190.0
  br label %bb.bo

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dn, %bb.br, %bb.cc, %bb.cp, %bb.da, %bb.dc, %bb.cd, %bb.cq, %.lr.ph469.split.i, %bb.dy, %.invoke.i, %bb.bp, %bb.bm
  %lpad.loopexit.split-lp1598 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.d) #26
          to label %common.resume unwind label %bb.ea, !noalias !2094

bb.bo:                                            ; preds = %._crit_edge895, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i
  %.pre-phi899 = phi i64 [ %.pre898, %._crit_edge895 ], [ %i.hh, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i ]
  %.pre-phi897 = phi i64 [ %.pre896, %._crit_edge895 ], [ %i.hf, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i ]
  %i.hn = phi i64 [ %i.lv, %._crit_edge895 ], [ %i.hm, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i ] ; 3 uses
  %i.ho = sub nuw i64 %i.ge, %.sroa.09.3.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.hp = load i64, ptr %i.gy, align 8, !range !10, !alias.scope !2098, !noalias !2094, !noundef !5
  %i.hq = icmp eq i64 %i.hn, %i.hp
  br i1 %i.hq, label %bb.bp, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i

bb.bp:                                            ; preds = %bb.bo
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gy)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2094

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i: ; preds = %bb.bp, %bb.bo
  %i.hr = load ptr, ptr %i.ha, align 8, !alias.scope !2098, !noalias !2094, !nonnull !5, !noundef !5
  %i.hs = getelementptr inbounds nuw [40 x i8], ptr %i.hr, i64 %i.hn ; 4 uses
  store i64 2, ptr %i.hs, align 8, !noalias !2094
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store i64 %.pre-phi897, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !2094
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store i64 %.pre-phi899, ptr %.sroa.513.0..sroa_idx.i, align 8, !noalias !2094
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  store i64 %i.ho, ptr %.sroa.614.0..sroa_idx.i, align 8, !noalias !2094
  %i.ht = add i64 %i.hn, 1
  store i64 %i.ht, ptr %i.gz, align 8, !alias.scope !2098, !noalias !2094
  br label %.sink.split.i.thread

.sink.split.i.thread:                             ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i, %bb.bn, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.d), !noalias !2094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2094
  br label %bb.ba

.sink.split.i:                                    ; preds = %.loopexit24.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !2094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2094
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread

bb.bq:                                            ; preds = %bb.bs, %bb.bk
  %i.hu = mul i64 %.sroa.09.0493.i, %i.gm         ; 4 uses
  %i.hv = add i64 %.sroa.038.0492.i, %.sroa.0.0   ; 2 uses
  %i.hw = add i64 %.sroa.09.0493.i, %.sroa.0190.0 ; 7 uses
  %i.hx = sub i64 %i.hw, %i.aq                    ; 3 uses
  %i.hy = icmp ult i64 %i.hx, %i.ap
  br i1 %i.hy, label %bb.bt, label %.invoke.i

.invoke.i:                                        ; preds = %bb.dw, %bb.du, %bb.ds, %bb.dr, %bb.dp, %bb.bz, %bb.bx, %bb.bw, %bb.bv, %bb.bt, %bb.bq, %bb.cy, %bb.cw, %bb.cv, %bb.cu, %bb.cs, %bb.cl, %bb.cj, %bb.ci, %bb.ch, %bb.cf, %bb.de, %bb.db, %bb.dh, %bb.dg, %bb.dz, %.lr.ph.split.i
  %i.hz = phi i64 [ %i.kg, %bb.cl ], [ %.reass.i, %bb.dz ], [ %.reass.i, %.lr.ph.split.i ], [ %i.ln, %bb.cy ], [ %i.hx, %bb.bq ], [ %i.mu, %bb.dh ], [ %i.ap, %bb.db ], [ %i.mn, %bb.dg ], [ %i.am, %bb.de ], [ %i.jq, %bb.cf ], [ %i.ju, %bb.ch ], [ %i.jy, %bb.cj ], [ %i.jw, %bb.ci ], [ %i.kv, %bb.cs ], [ %i.kz, %bb.cu ], [ %i.lf, %bb.cw ], [ %i.lb, %bb.cv ], [ %i.ii, %bb.bv ], [ %i.ik, %bb.bw ], [ %i.ja, %bb.bz ], [ %i.ie, %bb.bt ], [ %i.ip, %bb.bx ], [ %i.nr, %bb.dr ], [ %.reass.us.i, %bb.dp ], [ %i.ok, %bb.dw ], [ %i.nv, %bb.ds ], [ %i.ob, %bb.du ]
  %i.ia = phi i64 [ %.pre729.i.a, %bb.cl ], [ %i.ap, %bb.dz ], [ %i.ap, %.lr.ph.split.i ], [ %.pre727.i, %bb.cy ], [ %i.ap, %bb.bq ], [ %i.mp, %bb.dh ], [ %i.ap, %bb.db ], [ %i.mp, %bb.dg ], [ %i.am, %bb.de ], [ %i.am, %bb.cf ], [ %.pre729.i.a, %bb.ch ], [ %.pre729.i.a, %bb.cj ], [ %.pre729.i.a, %bb.ci ], [ %i.ap, %bb.cs ], [ %.pre727.i, %bb.cu ], [ %.pre727.i, %bb.cw ], [ %.pre727.i, %bb.cv ], [ %.pre725.i, %bb.bv ], [ %.pre725.i, %bb.bw ], [ %.pre725.i, %bb.bz ], [ %i.am, %bb.bt ], [ %.pre725.i, %bb.bx ], [ %i.nt, %bb.dr ], [ %i.am, %bb.dp ], [ %i.oj, %bb.dw ], [ %i.nt, %bb.ds ], [ %i.oc, %bb.du ]
  %i.ib = phi ptr [ @63, %bb.cl ], [ @74, %bb.dz ], [ @74, %.lr.ph.split.i ], [ @69, %bb.cy ], [ @52, %bb.bq ], [ @73, %bb.dh ], [ @70, %bb.db ], [ @72, %bb.dg ], [ @71, %bb.de ], [ @59, %bb.cf ], [ @60, %bb.ch ], [ @61, %bb.cj ], [ @62, %bb.ci ], [ @64, %bb.cs ], [ @66, %bb.cu ], [ @67, %bb.cw ], [ @68, %bb.cv ], [ @54, %bb.bv ], [ @56, %bb.bw ], [ @57, %bb.bz ], [ @53, %bb.bt ], [ @55, %bb.bx ], [ @76, %bb.dr ], [ @75, %bb.dp ], [ @79, %bb.dw ], [ @77, %bb.ds ], [ @78, %bb.du ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.hz, i64 noundef %i.ia, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ib) #28
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2094

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.br:                                            ; preds = %bb.bk
  %i.ic = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.bs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2094

bb.bs:                                            ; preds = %bb.br
  br i1 %i.ic, label %.loopexit24.i, label %bb.bq

bb.bt:                                            ; preds = %bb.bq
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.hx ; 2 uses
  %i.ie = sub i64 %i.hv, %i.an                    ; 3 uses
  %i.if = icmp ult i64 %i.ie, %i.am
  br i1 %i.if, label %bb.bu, label %.invoke.i

bb.bu:                                            ; preds = %bb.bt
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ie ; 2 uses
  %.val210.i = load i64, ptr %i.id, align 8, !noalias !2094, !noundef !5
  %.val211.i = load i64, ptr %i.ig, align 8, !noalias !2094, !noundef !5
  %i.ih = icmp eq i64 %.val210.i, %.val211.i
  %.pre.i = load ptr, ptr %i.gw, align 8, !noalias !2094 ; 4 uses
  %.pre725.i = load i64, ptr %i.gx, align 8, !noalias !2094 ; 8 uses
  br i1 %i.ih, label %bb.bv, label %._crit_edge731.i

._crit_edge731.i:                                 ; preds = %bb.bu
  %.pre732.i = add nuw i64 %.sroa.09.0493.i, 1
  %.pre733.i = mul i64 %.pre732.i, %i.gm
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ii = add i64 %i.hu, %.sroa.038.0492.i        ; 3 uses
  %i.ij = icmp ult i64 %i.ii, %.pre725.i
  br i1 %i.ij, label %bb.bx, label %.invoke.i

bb.bw:                                            ; preds = %bb.by, %._crit_edge731.i
  %.pre-phi734.i = phi i64 [ %.pre733.i, %._crit_edge731.i ], [ %i.in, %bb.by ] ; 3 uses
  %i.ik = add i64 %.pre-phi734.i, %.sroa.038.0492.i ; 3 uses
  %i.il = icmp ult i64 %i.ik, %.pre725.i
  br i1 %i.il, label %bb.bz, label %.invoke.i

bb.bx:                                            ; preds = %bb.bv
  %i.im = add nuw i64 %.sroa.09.0493.i, 1
  %i.in = mul i64 %i.im, %i.gm                    ; 2 uses
  %i.io = add nuw i64 %.sroa.038.0492.i, 1
  %i.ip = add i64 %i.io, %i.in                    ; 3 uses
  %i.iq = icmp ult i64 %i.ip, %.pre725.i
  br i1 %i.iq, label %bb.by, label %.invoke.i

bb.by:                                            ; preds = %bb.bx
  %i.ir = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ii
  %i.is = load i8, ptr %i.ir, align 1, !noalias !2094, !noundef !5
  %i.it = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ip
  %i.iu = load i8, ptr %i.it, align 1, !noalias !2094, !noundef !5
  %i.iv = add i8 %i.iu, 1
  %i.iw = icmp eq i8 %i.is, %i.iv
  br i1 %i.iw, label %.preheader.i, label %bb.bw

.preheader.i:                                     ; preds = %bb.by
  %i.ix = icmp ult i64 %.sroa.09.0493.i, %i.ge
  %i.iy = icmp ult i64 %.sroa.038.0492.i, %i.gd
  %or.cond177478.i = select i1 %i.ix, i1 %i.iy, i1 false
  br i1 %or.cond177478.i, label %.lr.ph481.i, label %._crit_edge482.i

bb.bz:                                            ; preds = %bb.bw
  %i.iz = add i64 %.sroa.038.0492.i, 1            ; 3 uses
  %i.ja = add i64 %i.iz, %i.hu                    ; 3 uses
  %i.jb = icmp ult i64 %i.ja, %.pre725.i
  br i1 %i.jb, label %bb.ca, label %.invoke.i

bb.ca:                                            ; preds = %bb.bz
  %i.jc = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ik
  %i.jd = load i8, ptr %i.jc, align 1, !noalias !2094, !noundef !5
  %i.je = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ja
  %i.jf = load i8, ptr %i.je, align 1, !noalias !2094, !noundef !5
  %.not164.i = icmp ult i8 %i.jd, %i.jf
  br i1 %.not164.i, label %.preheader25.i, label %.preheader30.i

.preheader30.i:                                   ; preds = %bb.ca
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.09.0493.i, i64 %i.ge) ; 3 uses
  %exitcond.not.i1554.not = icmp ult i64 %.sroa.09.0493.i, %i.ge
  br i1 %exitcond.not.i1554.not, label %.lr.ph1556, label %._crit_edge1557

.preheader25.i:                                   ; preds = %bb.ca
  %i.jg = icmp ult i64 %.sroa.038.0492.i, %i.gd
  br i1 %i.jg, label %.lr.ph473.i, label %._crit_edge.i

.lr.ph473.i:                                      ; preds = %.preheader25.i
  %i.jh = add i64 %.pre-phi734.i, 1
  %i.ji = add i64 %i.hu, 1
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cn, %.lr.ph473.i
  %.sroa.038.1472.i = phi i64 [ %.sroa.038.0492.i, %.lr.ph473.i ], [ %i.kn, %bb.cn ] ; 9 uses
  %i.jj = and i64 %.sroa.038.1472.i, 1023
  %i.jk = icmp eq i64 %i.jj, 0
  %or.cond173.i = and i1 %.sroa.05.0.not494.i, %i.jk
  br i1 %or.cond173.i, label %bb.cd, label %bb.cf

._crit_edge.i:                                    ; preds = %bb.cn, %bb.cm, %bb.ck, %.preheader25.i
  %.sroa.038.1.lcssa.i = phi i64 [ %.sroa.038.0492.i, %.preheader25.i ], [ %i.gd, %bb.cn ], [ %.sroa.038.1472.i, %bb.cm ], [ %.sroa.038.1472.i, %bb.ck ] ; 3 uses
  %i.jl = sub nuw i64 %.sroa.038.1.lcssa.i, %.sroa.038.0492.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.jm = load i64, ptr %i.gz, align 8, !alias.scope !2099, !noalias !2094, !noundef !5 ; 3 uses
  %i.jn = load i64, ptr %i.gy, align 8, !range !10, !alias.scope !2099, !noalias !2094, !noundef !5
  %i.jo = icmp eq i64 %i.jm, %i.jn
  br i1 %i.jo, label %bb.cc, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i

bb.cc:                                            ; preds = %._crit_edge.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gy)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2094

bb.cd:                                            ; preds = %bb.cb
  %i.jp = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.ce unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2094

bb.ce:                                            ; preds = %bb.cd
  br i1 %i.jp, label %.loopexit24.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cb
  %i.jq = add i64 %.sroa.038.1472.i, %invariant.op.i ; 3 uses
  %i.jr = icmp ult i64 %i.jq, %i.am
  br i1 %i.jr, label %bb.cg, label %.invoke.i

bb.cg:                                            ; preds = %bb.cf
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.jq
  %.val208.i = load i64, ptr %i.id, align 8, !noalias !2094, !noundef !5
  %.val209.i = load i64, ptr %i.js, align 8, !noalias !2094, !noundef !5
  %i.jt = icmp eq i64 %.val208.i, %.val209.i
  %.pre728.i.a = load ptr, ptr %i.gw, align 8, !noalias !2094 ; 4 uses
  %.pre729.i.a = load i64, ptr %i.gx, align 8, !noalias !2094 ; 8 uses
  br i1 %i.jt, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.ju = add i64 %.sroa.038.1472.i, %i.hu        ; 3 uses
  %i.jv = icmp ult i64 %i.ju, %.pre729.i.a
  br i1 %i.jv, label %bb.cj, label %.invoke.i

bb.ci:                                            ; preds = %bb.ck, %bb.cg
  %i.jw = add i64 %.sroa.038.1472.i, %.pre-phi734.i ; 3 uses
  %i.jx = icmp ult i64 %i.jw, %.pre729.i.a
  br i1 %i.jx, label %bb.cl, label %.invoke.i

bb.cj:                                            ; preds = %bb.ch
  %i.jy = add i64 %i.jh, %.sroa.038.1472.i        ; 3 uses
  %i.jz = icmp ult i64 %i.jy, %.pre729.i.a
  br i1 %i.jz, label %bb.ck, label %.invoke.i

bb.ck:                                            ; preds = %bb.cj
  %i.ka = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.ju
  %i.kb = load i8, ptr %i.ka, align 1, !noalias !2094, !noundef !5
  %i.kc = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.jy
  %i.kd = load i8, ptr %i.kc, align 1, !noalias !2094, !noundef !5
  %i.ke = add i8 %i.kd, 1
  %i.kf = icmp eq i8 %i.kb, %i.ke
  br i1 %i.kf, label %._crit_edge.i, label %bb.ci

bb.cl:                                            ; preds = %bb.ci
  %i.kg = add i64 %i.ji, %.sroa.038.1472.i        ; 3 uses
  %i.kh = icmp ult i64 %i.kg, %.pre729.i.a
  br i1 %i.kh, label %bb.cm, label %.invoke.i

bb.cm:                                            ; preds = %bb.cl
  %i.ki = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.jw
  %i.kj = load i8, ptr %i.ki, align 1, !noalias !2094, !noundef !5
  %i.kk = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.kg
  %i.kl = load i8, ptr %i.kk, align 1, !noalias !2094, !noundef !5
  %i.km = icmp ult i8 %i.kj, %i.kl
  br i1 %i.km, label %bb.cn, label %._crit_edge.i

bb.cn:                                            ; preds = %bb.cm
  %i.kn = add nuw i64 %.sroa.038.1472.i, 1        ; 2 uses
  %i.ko = icmp ult i64 %i.kn, %i.gd
  br i1 %i.ko, label %bb.cb, label %._crit_edge.i

bb.co:                                            ; preds = %bb.cz
  %exitcond.not.i = icmp eq i64 %.pre-phi736.i, %umax.i
  br i1 %exitcond.not.i, label %._crit_edge1557, label %.lr.ph1556

.lr.ph1556:                                       ; preds = %.preheader30.i, %bb.co
  %.sroa.09.1.i1555 = phi i64 [ %.pre-phi736.i, %bb.co ], [ %.sroa.09.0493.i, %.preheader30.i ] ; 6 uses
  br i1 %or.cond170.i, label %bb.cq, label %bb.cs

._crit_edge1557:                                  ; preds = %bb.co, %bb.cx, %bb.cz, %.preheader30.i
  %.sroa.09.1.lcssa.i = phi i64 [ %umax.i, %.preheader30.i ], [ %umax.i, %bb.co ], [ %.sroa.09.1.i1555, %bb.cx ], [ %.sroa.09.1.i1555, %bb.cz ] ; 3 uses
  %i.kp = sub i64 %.sroa.09.1.lcssa.i, %.sroa.09.0493.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.kq = load i64, ptr %i.gz, align 8, !alias.scope !2100, !noalias !2094, !noundef !5 ; 3 uses
  %i.kr = load i64, ptr %i.gy, align 8, !range !10, !alias.scope !2100, !noalias !2094, !noundef !5
  %i.ks = icmp eq i64 %i.kq, %i.kr
  br i1 %i.ks, label %bb.cp, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i

bb.cp:                                            ; preds = %._crit_edge1557
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gy)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2094

bb.cq:                                            ; preds = %.lr.ph1556
  %i.kt = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.cr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2094

bb.cr:                                            ; preds = %bb.cq
  br i1 %i.kt, label %.loopexit24.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %.lr.ph1556
  %i.ku = mul i64 %.sroa.09.1.i1555, %i.gm        ; 2 uses
  %i.kv = add i64 %.sroa.09.1.i1555, %invariant.op470.i ; 3 uses
  %i.kw = icmp ult i64 %i.kv, %i.ap
  br i1 %i.kw, label %bb.ct, label %.invoke.i

bb.ct:                                            ; preds = %bb.cs
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.kv
  %.val206.i = load i64, ptr %i.kx, align 8, !noalias !2094, !noundef !5
  %.val207.i = load i64, ptr %i.ig, align 8, !noalias !2094, !noundef !5
  %i.ky = icmp eq i64 %.val206.i, %.val207.i
  %.pre726.i = load ptr, ptr %i.gw, align 8, !noalias !2094 ; 4 uses
  %.pre727.i = load i64, ptr %i.gx, align 8, !noalias !2094 ; 8 uses
  br i1 %i.ky, label %bb.cu, label %._crit_edge730.i

._crit_edge730.i:                                 ; preds = %bb.ct
  %.pre735.i = add i64 %.sroa.09.1.i1555, 1       ; 2 uses
  %.pre737.i = mul i64 %.pre735.i, %i.gm
  br label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.kz = add i64 %i.ku, %.sroa.038.0492.i        ; 3 uses
  %i.la = icmp ult i64 %i.kz, %.pre727.i
  br i1 %i.la, label %bb.cw, label %.invoke.i

bb.cv:                                            ; preds = %bb.cx, %._crit_edge730.i
  %.pre-phi738.i.a = phi i64 [ %.pre737.i, %._crit_edge730.i ], [ %i.le, %bb.cx ]
  %.pre-phi736.i = phi i64 [ %.pre735.i, %._crit_edge730.i ], [ %i.ld, %bb.cx ] ; 2 uses
  %i.lb = add i64 %.pre-phi738.i.a, %.sroa.038.0492.i ; 3 uses
  %i.lc = icmp ult i64 %i.lb, %.pre727.i
  br i1 %i.lc, label %bb.cy, label %.invoke.i

bb.cw:                                            ; preds = %bb.cu
  %i.ld = add i64 %.sroa.09.1.i1555, 1            ; 2 uses
  %i.le = mul i64 %i.ld, %i.gm                    ; 2 uses
  %i.lf = add i64 %i.le, %i.iz                    ; 3 uses
  %i.lg = icmp ult i64 %i.lf, %.pre727.i
  br i1 %i.lg, label %bb.cx, label %.invoke.i

bb.cx:                                            ; preds = %bb.cw
  %i.lh = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.kz
  %i.li = load i8, ptr %i.lh, align 1, !noalias !2094, !noundef !5
  %i.lj = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.lf
  %i.lk = load i8, ptr %i.lj, align 1, !noalias !2094, !noundef !5
  %i.ll = add i8 %i.lk, 1
  %i.lm = icmp eq i8 %i.li, %i.ll
  br i1 %i.lm, label %._crit_edge1557, label %bb.cv

bb.cy:                                            ; preds = %bb.cv
  %i.ln = add i64 %i.ku, %i.iz                    ; 3 uses
  %i.lo = icmp ult i64 %i.ln, %.pre727.i
  br i1 %i.lo, label %bb.cz, label %.invoke.i

bb.cz:                                            ; preds = %bb.cy
  %i.lp = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.lb
  %i.lq = load i8, ptr %i.lp, align 1, !noalias !2094, !noundef !5
  %i.lr = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.ln
  %i.ls = load i8, ptr %i.lr, align 1, !noalias !2094, !noundef !5
  %.not167.i = icmp ult i8 %i.lq, %i.ls
  br i1 %.not167.i, label %._crit_edge1557, label %bb.co

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.da, %._crit_edge482.i, %bb.cp, %._crit_edge1557, %bb.cc, %._crit_edge.i
  %.sink1026.i = phi i64 [ %i.jm, %._crit_edge.i ], [ %i.lz, %._crit_edge482.i ], [ %i.lz, %bb.da ], [ %i.jm, %bb.cc ], [ %i.kq, %bb.cp ], [ %i.kq, %._crit_edge1557 ] ; 3 uses
  %.sink1023.i = phi i64 [ 1, %._crit_edge.i ], [ 0, %._crit_edge482.i ], [ 0, %bb.da ], [ 1, %bb.cc ], [ 2, %bb.cp ], [ 2, %._crit_edge1557 ]
  %.sink1020.i = phi i64 [ %i.jl, %._crit_edge.i ], [ %i.hw, %._crit_edge482.i ], [ %i.hw, %bb.da ], [ %i.jl, %bb.cc ], [ %i.hw, %bb.cp ], [ %i.hw, %._crit_edge1557 ]
  %.sink.i = phi i64 [ %i.hw, %._crit_edge.i ], [ %i.ly, %._crit_edge482.i ], [ %i.ly, %bb.da ], [ %i.hw, %bb.cc ], [ %i.kp, %bb.cp ], [ %i.kp, %._crit_edge1557 ]
  %.sroa.038.3.i = phi i64 [ %.sroa.038.1.lcssa.i, %._crit_edge.i ], [ %.sroa.038.4.lcssa.i, %._crit_edge482.i ], [ %.sroa.038.4.lcssa.i, %bb.da ], [ %.sroa.038.1.lcssa.i, %bb.cc ], [ %.sroa.038.0492.i, %bb.cp ], [ %.sroa.038.0492.i, %._crit_edge1557 ] ; 5 uses
  %.sroa.09.3.i = phi i64 [ %.sroa.09.0493.i, %._crit_edge.i ], [ %.sroa.09.4.lcssa.i, %._crit_edge482.i ], [ %.sroa.09.4.lcssa.i, %bb.da ], [ %.sroa.09.0493.i, %bb.cc ], [ %.sroa.09.1.lcssa.i, %bb.cp ], [ %.sroa.09.1.lcssa.i, %._crit_edge1557 ] ; 5 uses
  %i.lt = load ptr, ptr %i.ha, align 8, !noalias !2094, !nonnull !5, !noundef !5
  %i.lu = getelementptr inbounds nuw [40 x i8], ptr %i.lt, i64 %.sink1026.i ; 4 uses
  store i64 %.sink1023.i, ptr %i.lu, align 8, !noalias !2094
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  store i64 %i.hv, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !2094
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  store i64 %.sink1020.i, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !2094
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  store i64 %.sink.i, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !2094
  %i.lv = add i64 %.sink1026.i, 1                 ; 4 uses
  store i64 %i.lv, ptr %i.gz, align 8, !noalias !2094
  %i.lw = icmp ult i64 %.sroa.09.3.i, %i.ge       ; 3 uses
  %i.lx = icmp ult i64 %.sroa.038.3.i, %i.gd      ; 2 uses
  %or.cond.i77 = select i1 %i.lw, i1 %i.lx, i1 false
  br i1 %or.cond.i77, label %bb.bk, label %._crit_edge496.i

._crit_edge482.i:                                 ; preds = %bb.dj, %bb.di, %bb.df, %.preheader.i
  %.sroa.038.4.lcssa.i = phi i64 [ %.sroa.038.0492.i, %.preheader.i ], [ %i.mt, %bb.dj ], [ %.sroa.038.4479.i, %bb.df ], [ %.sroa.038.4479.i, %bb.di ] ; 3 uses
  %.sroa.09.4.lcssa.i = phi i64 [ %.sroa.09.0493.i, %.preheader.i ], [ %i.mr, %bb.dj ], [ %.sroa.09.4480.i, %bb.df ], [ %.sroa.09.4480.i, %bb.di ] ; 2 uses
  %i.ly = sub nuw i64 %.sroa.038.4.lcssa.i, %.sroa.038.0492.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.lz = load i64, ptr %i.gz, align 8, !alias.scope !2101, !noalias !2094, !noundef !5 ; 3 uses
  %i.ma = load i64, ptr %i.gy, align 8, !range !10, !alias.scope !2101, !noalias !2094, !noundef !5
  %i.mb = icmp eq i64 %i.lz, %i.ma
  br i1 %i.mb, label %bb.da, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i

bb.da:                                            ; preds = %._crit_edge482.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gy)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2094

.lr.ph481.i:                                      ; preds = %.preheader.i, %bb.dj
  %.sroa.09.4480.i = phi i64 [ %i.mr, %bb.dj ], [ %.sroa.09.0493.i, %.preheader.i ] ; 5 uses
  %.sroa.038.4479.i = phi i64 [ %i.mt, %bb.dj ], [ %.sroa.038.0492.i, %.preheader.i ] ; 6 uses
  %i.mc = and i64 %.sroa.038.4479.i, 1023
  %i.md = icmp eq i64 %i.mc, 0
  %or.cond180.i = select i1 %.sroa.05.0.not494.i, i1 %i.md, i1 false
  br i1 %or.cond180.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.dd, %.lr.ph481.i
  %i.me = mul i64 %.sroa.09.4480.i, %i.gm
  %i.mf = add i64 %.sroa.09.4480.i, %invariant.op470.i ; 2 uses
  %i.mg = icmp ult i64 %i.mf, %i.ap
  br i1 %i.mg, label %bb.de, label %.invoke.i

bb.dc:                                            ; preds = %.lr.ph481.i
  %i.mh = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2094

bb.dd:                                            ; preds = %bb.dc
  br i1 %i.mh, label %.loopexit24.i, label %bb.db

bb.de:                                            ; preds = %bb.db
  %i.mi = add i64 %.sroa.038.4479.i, %invariant.op.i ; 2 uses
  %i.mj = icmp ult i64 %i.mi, %i.am
  br i1 %i.mj, label %bb.df, label %.invoke.i

bb.df:                                            ; preds = %bb.de
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.mf
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.mi
  %.val204.i = load i64, ptr %i.mk, align 8, !noalias !2094, !noundef !5
  %.val205.i = load i64, ptr %i.ml, align 8, !noalias !2094, !noundef !5
  %i.mm = icmp eq i64 %.val204.i, %.val205.i
  br i1 %i.mm, label %bb.dg, label %._crit_edge482.i

bb.dg:                                            ; preds = %bb.df
  %i.mn = add i64 %i.me, %.sroa.038.4479.i        ; 3 uses
  %i.mo = load ptr, ptr %i.gw, align 8, !noalias !2094, !nonnull !5, !noundef !5 ; 2 uses
  %i.mp = load i64, ptr %i.gx, align 8, !noalias !2094, !noundef !5 ; 4 uses
  %i.mq = icmp ult i64 %i.mn, %i.mp
  br i1 %i.mq, label %bb.dh, label %.invoke.i

bb.dh:                                            ; preds = %bb.dg
  %i.mr = add nuw i64 %.sroa.09.4480.i, 1         ; 4 uses
  %i.ms = mul i64 %i.mr, %i.gm
  %i.mt = add nuw i64 %.sroa.038.4479.i, 1        ; 4 uses
  %i.mu = add i64 %i.mt, %i.ms                    ; 3 uses
  %i.mv = icmp ult i64 %i.mu, %i.mp
  br i1 %i.mv, label %bb.di, label %.invoke.i

bb.di:                                            ; preds = %bb.dh
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.mn
  %i.mx = load i8, ptr %i.mw, align 1, !noalias !2094, !noundef !5
  %i.my = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.mu
  %i.mz = load i8, ptr %i.my, align 1, !noalias !2094, !noundef !5
  %i.na = add i8 %i.mz, 1
  %i.nb = icmp eq i8 %i.mx, %i.na
  br i1 %i.nb, label %bb.dj, label %._crit_edge482.i

bb.dj:                                            ; preds = %bb.di
  %i.nc = icmp ult i64 %i.mr, %i.ge
  %i.nd = icmp ult i64 %i.mt, %i.gd
  %or.cond177.i = and i1 %i.nc, %i.nd
  br i1 %or.cond177.i, label %.lr.ph481.i, label %._crit_edge482.i

.loopexit24.i:                                    ; preds = %bb.dm, %bb.do, %bb.bs, %bb.cr, %bb.ce, %bb.dd, %bb.dz
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.sink.split.i unwind label %bb.dk, !noalias !2094

bb.dk:                                            ; preds = %.loopexit24.i
  %i.ne = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.dl, !noalias !2094

bb.dl:                                            ; preds = %bb.dk
  %i.nf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !2094
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ge, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dk
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp1598, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ne, %bb.dk ], [ %i.vj, %bb.ge ], [ %lpad.loopexit.split-lp1644, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

bb.dm:                                            ; preds = %.lr.ph469.split.i
  br i1 %i.hc, label %.loopexit24.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.dm
  %i.ng = mul i64 %i.hb, %i.gm                    ; 2 uses
  %i.nh = mul i64 %.sroa.0102.0468.i, %i.gm       ; 2 uses
  %.reass.i = add i64 %i.hb, %invariant.op470.i   ; 4 uses
  %i.ni = icmp ult i64 %.reass.i, %i.ap
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.reass.i
  %.fr.i = freeze i1 %i.ni
  br i1 %.fr.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.dx
  %.sroa.0105.0432.us.i = phi i64 [ %i.nk, %bb.dx ], [ %i.gd, %.lr.ph.i ] ; 3 uses
  %i.nk = add i64 %.sroa.0105.0432.us.i, -1       ; 6 uses
  %i.nl = and i64 %i.nk, 1023
  %i.nm = icmp eq i64 %i.nl, 0
  br i1 %i.nm, label %bb.dn, label %bb.dp

bb.dn:                                            ; preds = %.lr.ph.split.us.i
  %i.nn = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.do unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2094

bb.do:                                            ; preds = %bb.dn
  br i1 %i.nn, label %.loopexit24.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do, %.lr.ph.split.us.i
  %.reass.us.i = add i64 %i.nk, %invariant.op.i   ; 3 uses
  %i.no = icmp ult i64 %.reass.us.i, %i.am
  br i1 %i.no, label %bb.dq, label %.invoke.i

bb.dq:                                            ; preds = %bb.dp
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.reass.us.i
  %.val.us.i = load i64, ptr %i.nj, align 8, !noalias !2094, !noundef !5
  %.val203.us.i = load i64, ptr %i.np, align 8, !noalias !2094, !noundef !5
  %i.nq = icmp eq i64 %.val.us.i, %.val203.us.i
  br i1 %i.nq, label %bb.du, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.nr = add i64 %i.nk, %i.nh                    ; 3 uses
  %i.ns = load ptr, ptr %i.gw, align 8, !noalias !2094, !nonnull !5, !noundef !5 ; 3 uses
  %i.nt = load i64, ptr %i.gx, align 8, !noalias !2094, !noundef !5 ; 5 uses
  %i.nu = icmp ult i64 %i.nr, %i.nt
  br i1 %i.nu, label %bb.ds, label %.invoke.i

bb.ds:                                            ; preds = %bb.dr
  %i.nv = add i64 %.sroa.0105.0432.us.i, %i.ng    ; 3 uses
  %i.nw = icmp ult i64 %i.nv, %i.nt
  br i1 %i.nw, label %bb.dt, label %.invoke.i

bb.dt:                                            ; preds = %bb.ds
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.nr
  %i.ny = load i8, ptr %i.nx, align 1, !noalias !2094, !noundef !5
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.nv
  %i.oa = load i8, ptr %i.nz, align 1, !noalias !2094, !noundef !5
  %.sroa.0.0.i.us.i = call noundef i8 @llvm.umax.i8(i8 %i.oa, i8 %i.ny)
  br label %bb.dw

bb.du:                                            ; preds = %bb.dq
  %i.ob = add i64 %.sroa.0105.0432.us.i, %i.nh    ; 3 uses
  %i.oc = load i64, ptr %i.gx, align 8, !noalias !2094, !noundef !5 ; 3 uses
  %i.od = icmp ult i64 %i.ob, %i.oc
  br i1 %i.od, label %bb.dv, label %.invoke.i

bb.dv:                                            ; preds = %bb.du
  %i.oe = load ptr, ptr %i.gw, align 8, !noalias !2094, !nonnull !5, !noundef !5 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.ob
  %i.og = load i8, ptr %i.of, align 1, !noalias !2094, !noundef !5
  %i.oh = add i8 %i.og, 1
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.dt
  %i.oi = phi ptr [ %i.oe, %bb.dv ], [ %i.ns, %bb.dt ]
  %i.oj = phi i64 [ %i.oc, %bb.dv ], [ %i.nt, %bb.dt ] ; 2 uses
  %.sroa.04.0.us.i = phi i8 [ %i.oh, %bb.dv ], [ %.sroa.0.0.i.us.i, %bb.dt ]
  %i.ok = add i64 %i.nk, %i.ng                    ; 3 uses
  %i.ol = icmp ult i64 %i.ok, %i.oj
  br i1 %i.ol, label %bb.dx, label %.invoke.i

bb.dx:                                            ; preds = %bb.dw
  %i.om = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.ok
  store i8 %.sroa.04.0.us.i, ptr %i.om, align 1, !noalias !2094
  %.not168.us.i = icmp eq i64 %i.nk, 0
  br i1 %.not168.us.i, label %..loopexit39_crit_edge.split.us.i, label %.lr.ph.split.us.i

..loopexit39_crit_edge.split.us.i:                ; preds = %bb.dx
  %.not.i78 = icmp eq i64 %i.hb, 0
  br i1 %.not.i78, label %.lr.ph495.i, label %.lr.ph469.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.on = and i64 %i.gd, 1023
  %i.oo = icmp eq i64 %i.on, 1
  br i1 %i.oo, label %bb.dy, label %.invoke.i

bb.dy:                                            ; preds = %.lr.ph.split.i
  %i.op = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2094

bb.dz:                                            ; preds = %bb.dy
  br i1 %i.op, label %.loopexit24.i, label %.invoke.i

bb.ea:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.oq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !2094
  unreachable

bb.eb:                                            ; preds = %bb.bg
  br i1 %i.gl, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.or = add i64 %i.ge, 1                        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2102
  %i.os = add i64 %i.gd, 1
  %i.ot = mul i64 %i.os, %i.or                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2103)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2104
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.ot, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !2104
  %i.ou = load i64, ptr %i.a, align 8, !range !9, !noalias !2104, !noundef !5
  %i.ov = trunc nuw i64 %i.ou to i1
  %i.ow = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ox = load i64, ptr %i.ow, align 8, !range !17, !noalias !2104, !noundef !5 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ov, label %bb.ed, label %.lr.ph484.i, !prof !13

bb.ed:                                            ; preds = %bb.ec
  %i.oz = load i64, ptr %i.oy, align 8, !noalias !2104
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ox, i64 %i.oz) #28, !noalias !2104
  unreachable

.lr.ph484.i:                                      ; preds = %bb.ec
  %i.pa = load ptr, ptr %i.oy, align 8, !noalias !2104, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2104
  store i64 %i.ox, ptr %i.b, align 8, !alias.scope !2103, !noalias !2102
  %i.pb = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 7 uses
  store ptr %i.pa, ptr %i.pb, align 8, !alias.scope !2103, !noalias !2102
  %i.pc = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  store i64 %i.ot, ptr %i.pc, align 8, !alias.scope !2103, !noalias !2102
  %invariant.op.i94 = sub i64 %.sroa.0190.0, %i.aq ; 4 uses
  %invariant.op485.i = sub i64 %.sroa.0.0, %i.an  ; 3 uses
  br label %.lr.ph484.split.i

.lr.ph511.i:                                      ; preds = %..loopexit39_crit_edge.split.us.i152
  %i.pd = getelementptr inbounds nuw i8, ptr %.val51, i64 120 ; 10 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.val51, i64 136 ; 6 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %.val51, i64 128 ; 3 uses
  br label %bb.ee

.lr.ph484.split.i:                                ; preds = %.lr.ph484.i, %..loopexit39_crit_edge.split.us.i152
  %.sroa.0102.0483.i = phi i64 [ %i.pg, %..loopexit39_crit_edge.split.us.i152 ], [ %i.gd, %.lr.ph484.i ] ; 2 uses
  %i.pg = add i64 %.sroa.0102.0483.i, -1          ; 4 uses
  %i.ph = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2102

._crit_edge512.i:                                 ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i120
  br i1 %i.ub, label %bb.ef, label %bb.eh

bb.ee:                                            ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i120, %.lr.ph511.i
  %.sroa.05.0.not510.i = phi i1 [ true, %.lr.ph511.i ], [ false, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i120 ] ; 3 uses
  %.sroa.09.0509.i = phi i64 [ 0, %.lr.ph511.i ], [ %.sroa.09.3.i122, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i120 ] ; 14 uses
  %.sroa.039.0508.i = phi i64 [ 0, %.lr.ph511.i ], [ %.sroa.039.3.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i120 ] ; 17 uses
  %i.pi = and i64 %.sroa.039.0508.i, 1023
  %i.pj = icmp eq i64 %i.pi, 0
  %or.cond170.i105 = select i1 %.sroa.05.0.not510.i, i1 %i.pj, i1 false ; 2 uses
  br i1 %or.cond170.i105, label %bb.el, label %bb.ek

bb.ef:                                            ; preds = %._crit_edge512.i
  %i.pk = add i64 %.sroa.09.3.i122, %.sroa.0.0    ; 2 uses
  %i.pl = sub nuw i64 %i.gd, %.sroa.09.3.i122
  %i.pm = add i64 %.sroa.039.3.i, %.sroa.0190.0   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.pn = load i64, ptr %i.pd, align 8, !range !10, !alias.scope !2105, !noalias !2102, !noundef !5
  %i.po = icmp eq i64 %i.ua, %i.pn
  br i1 %i.po, label %bb.eg, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101

bb.eg:                                            ; preds = %bb.ef
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.pd)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2102

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101: ; preds = %bb.eg, %bb.ef
  %i.pp = load ptr, ptr %i.pf, align 8, !alias.scope !2105, !noalias !2102, !nonnull !5, !noundef !5
  %i.pq = getelementptr inbounds nuw [40 x i8], ptr %i.pp, i64 %i.ua ; 4 uses
  store i64 1, ptr %i.pq, align 8, !noalias !2102
  %.sroa.42.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  store i64 %i.pk, ptr %.sroa.42.0..sroa_idx.i102, align 8, !noalias !2102
  %.sroa.53.0..sroa_idx.i103 = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  store i64 %i.pl, ptr %.sroa.53.0..sroa_idx.i103, align 8, !noalias !2102
  %.sroa.64.0..sroa_idx.i104 = getelementptr inbounds nuw i8, ptr %i.pq, i64 24
  store i64 %i.pm, ptr %.sroa.64.0..sroa_idx.i104, align 8, !noalias !2102
  %i.pr = add i64 %.sink1039.i, 2                 ; 2 uses
  store i64 %i.pr, ptr %i.pe, align 8, !alias.scope !2105, !noalias !2102
  br i1 %i.uc, label %bb.ei, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread304

bb.eh:                                            ; preds = %._crit_edge512.i
  br i1 %i.uc, label %._crit_edge894, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread304

._crit_edge894:                                   ; preds = %bb.eh
  %.pre900 = add i64 %.sroa.09.3.i122, %.sroa.0.0
  %.pre902 = add i64 %.sroa.039.3.i, %.sroa.0190.0
  br label %bb.ei

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gh, %bb.el, %bb.ew, %bb.fj, %bb.fu, %bb.fw, %bb.ex, %bb.fk, %.lr.ph484.split.i, %bb.gs, %.invoke.i106, %bb.ej, %bb.eg
  %lpad.loopexit.split-lp1644 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.b) #26
          to label %common.resume unwind label %bb.gw, !noalias !2102

bb.ei:                                            ; preds = %._crit_edge894, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101
  %.pre-phi903 = phi i64 [ %.pre902, %._crit_edge894 ], [ %i.pm, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101 ]
  %.pre-phi901 = phi i64 [ %.pre900, %._crit_edge894 ], [ %i.pk, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101 ]
  %i.ps = phi i64 [ %i.ua, %._crit_edge894 ], [ %i.pr, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101 ] ; 3 uses
  %i.pt = sub nuw i64 %i.ge, %.sroa.039.3.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.pu = load i64, ptr %i.pd, align 8, !range !10, !alias.scope !2106, !noalias !2102, !noundef !5
  %i.pv = icmp eq i64 %i.ps, %i.pu
  br i1 %i.pv, label %bb.ej, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i86

bb.ej:                                            ; preds = %bb.ei
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.pd)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i86 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2102

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i86: ; preds = %bb.ej, %bb.ei
  %i.pw = load ptr, ptr %i.pf, align 8, !alias.scope !2106, !noalias !2102, !nonnull !5, !noundef !5
  %i.px = getelementptr inbounds nuw [40 x i8], ptr %i.pw, i64 %i.ps ; 4 uses
  store i64 2, ptr %i.px, align 8, !noalias !2102
  %.sroa.412.0..sroa_idx.i87 = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  store i64 %.pre-phi901, ptr %.sroa.412.0..sroa_idx.i87, align 8, !noalias !2102
  %.sroa.513.0..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  store i64 %.pre-phi903, ptr %.sroa.513.0..sroa_idx.i88, align 8, !noalias !2102
  %.sroa.614.0..sroa_idx.i89 = getelementptr inbounds nuw i8, ptr %i.px, i64 24
  store i64 %i.pt, ptr %.sroa.614.0..sroa_idx.i89, align 8, !noalias !2102
  %i.py = add i64 %i.ps, 1
  store i64 %i.py, ptr %i.pe, align 8, !alias.scope !2106, !noalias !2102
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread304

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread304: ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101, %bb.eh, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i86
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.b), !noalias !2102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2102
  br label %bb.ba

bb.ek:                                            ; preds = %bb.em, %bb.ee
  %i.pz = mul i64 %.sroa.09.0509.i, %i.or         ; 4 uses
  %i.qa = add i64 %.sroa.09.0509.i, %.sroa.0.0    ; 2 uses
  %i.qb = add i64 %.sroa.039.0508.i, %.sroa.0190.0 ; 7 uses
  %i.qc = sub i64 %i.qb, %i.aq                    ; 3 uses
  %i.qd = icmp ult i64 %i.qc, %i.ap
  br i1 %i.qd, label %bb.en, label %.invoke.i106

.invoke.i106:                                     ; preds = %bb.gq, %bb.go, %bb.gm, %bb.gl, %bb.gj, %bb.et, %bb.er, %bb.eq, %bb.ep, %bb.en, %bb.ek, %bb.fs, %bb.fq, %bb.fp, %bb.fo, %bb.fm, %bb.ff, %bb.fd, %bb.fc, %bb.fb, %bb.ez, %bb.fy, %bb.fv, %bb.gb, %bb.ga, %bb.gv, %bb.gu
  %i.qe = phi i64 [ %i.sl, %bb.ff ], [ %.reass.i143, %bb.gu ], [ %.reass486.i, %bb.gv ], [ %i.ts, %bb.fs ], [ %i.qc, %bb.ek ], [ %i.uz, %bb.gb ], [ %i.ap, %bb.fv ], [ %i.us, %bb.ga ], [ %i.am, %bb.fy ], [ %i.rv, %bb.ez ], [ %i.rz, %bb.fb ], [ %i.sd, %bb.fd ], [ %i.sb, %bb.fc ], [ %i.ta, %bb.fm ], [ %i.te, %bb.fo ], [ %i.tk, %bb.fq ], [ %i.tg, %bb.fp ], [ %i.qn, %bb.ep ], [ %i.qp, %bb.eq ], [ %i.rf, %bb.et ], [ %i.qj, %bb.en ], [ %i.qu, %bb.er ], [ %i.vw, %bb.gl ], [ %.reass.us.i146, %bb.gj ], [ %i.wp, %bb.gq ], [ %i.wa, %bb.gm ], [ %i.wg, %bb.go ]
  %i.qf = phi i64 [ %.pre745.i.a, %bb.ff ], [ %i.ap, %bb.gu ], [ %i.am, %bb.gv ], [ %.pre743.i, %bb.fs ], [ %i.ap, %bb.ek ], [ %i.uu, %bb.gb ], [ %i.ap, %bb.fv ], [ %i.uu, %bb.ga ], [ %i.am, %bb.fy ], [ %i.ap, %bb.ez ], [ %.pre745.i.a, %bb.fb ], [ %.pre745.i.a, %bb.fd ], [ %.pre745.i.a, %bb.fc ], [ %i.am, %bb.fm ], [ %.pre743.i, %bb.fo ], [ %.pre743.i, %bb.fq ], [ %.pre743.i, %bb.fp ], [ %.pre741.i, %bb.ep ], [ %.pre741.i, %bb.eq ], [ %.pre741.i, %bb.et ], [ %i.am, %bb.en ], [ %.pre741.i, %bb.er ], [ %i.vy, %bb.gl ], [ %i.ap, %bb.gj ], [ %i.wo, %bb.gq ], [ %i.vy, %bb.gm ], [ %i.wh, %bb.go ]
  %i.qg = phi ptr [ @91, %bb.ff ], [ @102, %bb.gu ], [ @103, %bb.gv ], [ @97, %bb.fs ], [ @80, %bb.ek ], [ @101, %bb.gb ], [ @98, %bb.fv ], [ @100, %bb.ga ], [ @99, %bb.fy ], [ @86, %bb.ez ], [ @88, %bb.fb ], [ @89, %bb.fd ], [ @90, %bb.fc ], [ @93, %bb.fm ], [ @94, %bb.fo ], [ @95, %bb.fq ], [ @96, %bb.fp ], [ @82, %bb.ep ], [ @84, %bb.eq ], [ @85, %bb.et ], [ @81, %bb.en ], [ @83, %bb.er ], [ @104, %bb.gl ], [ @102, %bb.gj ], [ @107, %bb.gq ], [ @105, %bb.gm ], [ @106, %bb.go ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.qe, i64 noundef %i.qf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qg) #28
          to label %.cont.i107 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2102

.cont.i107:                                       ; preds = %.invoke.i106
  unreachable

bb.el:                                            ; preds = %bb.ee
  %i.qh = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.em unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2102

bb.em:                                            ; preds = %bb.el
  br i1 %i.qh, label %.loopexit24.i127, label %bb.ek

bb.en:                                            ; preds = %bb.ek
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.qc ; 2 uses
  %i.qj = sub i64 %i.qa, %i.an                    ; 3 uses
  %i.qk = icmp ult i64 %i.qj, %i.am
  br i1 %i.qk, label %bb.eo, label %.invoke.i106

bb.eo:                                            ; preds = %bb.en
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.qj ; 2 uses
  %.val210.i108 = load i64, ptr %i.qi, align 8, !noalias !2102, !noundef !5
  %.val211.i109 = load i64, ptr %i.ql, align 8, !noalias !2102, !noundef !5
  %i.qm = icmp eq i64 %.val210.i108, %.val211.i109
  %.pre.i110 = load ptr, ptr %i.pb, align 8, !noalias !2102 ; 4 uses
  %.pre741.i = load i64, ptr %i.pc, align 8, !noalias !2102 ; 8 uses
  br i1 %i.qm, label %bb.ep, label %._crit_edge747.i

._crit_edge747.i:                                 ; preds = %bb.eo
  %.pre748.i = add nuw i64 %.sroa.09.0509.i, 1
  %.pre749.i = mul i64 %.pre748.i, %i.or
  br label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.qn = add i64 %i.pz, %.sroa.039.0508.i        ; 3 uses
  %i.qo = icmp ult i64 %i.qn, %.pre741.i
  br i1 %i.qo, label %bb.er, label %.invoke.i106

bb.eq:                                            ; preds = %bb.es, %._crit_edge747.i
  %.pre-phi750.i = phi i64 [ %.pre749.i, %._crit_edge747.i ], [ %i.qs, %bb.es ] ; 3 uses
  %i.qp = add i64 %.pre-phi750.i, %.sroa.039.0508.i ; 3 uses
  %i.qq = icmp ult i64 %i.qp, %.pre741.i
  br i1 %i.qq, label %bb.et, label %.invoke.i106

bb.er:                                            ; preds = %bb.ep
  %i.qr = add nuw i64 %.sroa.09.0509.i, 1
  %i.qs = mul i64 %i.qr, %i.or                    ; 2 uses
  %i.qt = add nuw i64 %.sroa.039.0508.i, 1
  %i.qu = add i64 %i.qt, %i.qs                    ; 3 uses
  %i.qv = icmp ult i64 %i.qu, %.pre741.i
  br i1 %i.qv, label %bb.es, label %.invoke.i106

bb.es:                                            ; preds = %bb.er
  %i.qw = getelementptr inbounds nuw i8, ptr %.pre.i110, i64 %i.qn
  %i.qx = load i8, ptr %i.qw, align 1, !noalias !2102, !noundef !5
  %i.qy = getelementptr inbounds nuw i8, ptr %.pre.i110, i64 %i.qu
  %i.qz = load i8, ptr %i.qy, align 1, !noalias !2102, !noundef !5
  %i.ra = add i8 %i.qz, 1
  %i.rb = icmp eq i8 %i.qx, %i.ra
  br i1 %i.rb, label %.preheader.i134, label %bb.eq

.preheader.i134:                                  ; preds = %bb.es
  %i.rc = icmp ult i64 %.sroa.09.0509.i, %i.gd
  %i.rd = icmp ult i64 %.sroa.039.0508.i, %i.ge
  %or.cond177494.i = select i1 %i.rc, i1 %i.rd, i1 false
  br i1 %or.cond177494.i, label %.lr.ph497.i, label %._crit_edge498.i

bb.et:                                            ; preds = %bb.eq
  %i.re = add i64 %.sroa.039.0508.i, 1            ; 3 uses
  %i.rf = add i64 %i.re, %i.pz                    ; 3 uses
  %i.rg = icmp ult i64 %i.rf, %.pre741.i
  br i1 %i.rg, label %bb.eu, label %.invoke.i106

bb.eu:                                            ; preds = %bb.et
  %i.rh = getelementptr inbounds nuw i8, ptr %.pre.i110, i64 %i.qp
  %i.ri = load i8, ptr %i.rh, align 1, !noalias !2102, !noundef !5
  %i.rj = getelementptr inbounds nuw i8, ptr %.pre.i110, i64 %i.rf
  %i.rk = load i8, ptr %i.rj, align 1, !noalias !2102, !noundef !5
  %.not164.i111 = icmp ult i8 %i.ri, %i.rk
  br i1 %.not164.i111, label %.preheader25.i129, label %.preheader30.i112

.preheader30.i112:                                ; preds = %bb.eu
  %umax.i113 = call i64 @llvm.umax.i64(i64 %.sroa.09.0509.i, i64 %i.gd) ; 3 uses
  %exitcond.not.i1151546.not = icmp ult i64 %.sroa.09.0509.i, %i.gd
  br i1 %exitcond.not.i1151546.not, label %.lr.ph1548, label %._crit_edge1549

.preheader25.i129:                                ; preds = %bb.eu
  %i.rl = icmp ult i64 %.sroa.039.0508.i, %i.ge
  br i1 %i.rl, label %.lr.ph489.i, label %._crit_edge.i130

.lr.ph489.i:                                      ; preds = %.preheader25.i129
  %i.rm = add i64 %.pre-phi750.i, 1
  %i.rn = add i64 %i.pz, 1
  br label %bb.ev

bb.ev:                                            ; preds = %bb.fh, %.lr.ph489.i
  %.sroa.039.1488.i = phi i64 [ %.sroa.039.0508.i, %.lr.ph489.i ], [ %i.ss, %bb.fh ] ; 9 uses
  %i.ro = and i64 %.sroa.039.1488.i, 1023
  %i.rp = icmp eq i64 %i.ro, 0
  %or.cond173.i131 = and i1 %.sroa.05.0.not510.i, %i.rp
  br i1 %or.cond173.i131, label %bb.ex, label %bb.ez

._crit_edge.i130:                                 ; preds = %bb.fh, %bb.fg, %bb.fe, %.preheader25.i129
  %.sroa.039.1.lcssa.i = phi i64 [ %.sroa.039.0508.i, %.preheader25.i129 ], [ %i.ge, %bb.fh ], [ %.sroa.039.1488.i, %bb.fg ], [ %.sroa.039.1488.i, %bb.fe ] ; 3 uses
  %i.rq = sub nuw i64 %.sroa.039.1.lcssa.i, %.sroa.039.0508.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.rr = load i64, ptr %i.pe, align 8, !alias.scope !2107, !noalias !2102, !noundef !5 ; 3 uses
  %i.rs = load i64, ptr %i.pd, align 8, !range !10, !alias.scope !2107, !noalias !2102, !noundef !5
  %i.rt = icmp eq i64 %i.rr, %i.rs
  br i1 %i.rt, label %bb.ew, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i120

bb.ew:                                            ; preds = %._crit_edge.i130
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.pd)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2102

bb.ex:                                            ; preds = %bb.ev
  %i.ru = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.ey unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2102

bb.ey:                                            ; preds = %bb.ex
  br i1 %i.ru, label %.loopexit24.i127, label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ev
  %i.rv = add i64 %.sroa.039.1488.i, %invariant.op.i94 ; 3 uses
  %i.rw = icmp ult i64 %i.rv, %i.ap
  br i1 %i.rw, label %bb.fa, label %.invoke.i106

bb.fa:                                            ; preds = %bb.ez
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.rv
  %.val208.i132 = load i64, ptr %i.rx, align 8, !noalias !2102, !noundef !5
  %.val209.i133 = load i64, ptr %i.ql, align 8, !noalias !2102, !noundef !5
  %i.ry = icmp eq i64 %.val208.i132, %.val209.i133
  %.pre744.i.a = load ptr, ptr %i.pb, align 8, !noalias !2102 ; 4 uses
  %.pre745.i.a = load i64, ptr %i.pc, align 8, !noalias !2102 ; 8 uses
  br i1 %i.ry, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.rz = add i64 %.sroa.039.1488.i, %i.pz        ; 3 uses
  %i.sa = icmp ult i64 %i.rz, %.pre745.i.a
  br i1 %i.sa, label %bb.fd, label %.invoke.i106

bb.fc:                                            ; preds = %bb.fe, %bb.fa
  %i.sb = add i64 %.sroa.039.1488.i, %.pre-phi750.i ; 3 uses
  %i.sc = icmp ult i64 %i.sb, %.pre745.i.a
  br i1 %i.sc, label %bb.ff, label %.invoke.i106

bb.fd:                                            ; preds = %bb.fb
  %i.sd = add i64 %i.rm, %.sroa.039.1488.i        ; 3 uses
  %i.se = icmp ult i64 %i.sd, %.pre745.i.a
  br i1 %i.se, label %bb.fe, label %.invoke.i106

bb.fe:                                            ; preds = %bb.fd
  %i.sf = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.rz
  %i.sg = load i8, ptr %i.sf, align 1, !noalias !2102, !noundef !5
  %i.sh = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.sd
  %i.si = load i8, ptr %i.sh, align 1, !noalias !2102, !noundef !5
  %i.sj = add i8 %i.si, 1
  %i.sk = icmp eq i8 %i.sg, %i.sj
  br i1 %i.sk, label %._crit_edge.i130, label %bb.fc

bb.ff:                                            ; preds = %bb.fc
  %i.sl = add i64 %i.rn, %.sroa.039.1488.i        ; 3 uses
  %i.sm = icmp ult i64 %i.sl, %.pre745.i.a
  br i1 %i.sm, label %bb.fg, label %.invoke.i106

bb.fg:                                            ; preds = %bb.ff
  %i.sn = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.sb
  %i.so = load i8, ptr %i.sn, align 1, !noalias !2102, !noundef !5
  %i.sp = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.sl
  %i.sq = load i8, ptr %i.sp, align 1, !noalias !2102, !noundef !5
  %i.sr = icmp ult i8 %i.so, %i.sq
  br i1 %i.sr, label %bb.fh, label %._crit_edge.i130

bb.fh:                                            ; preds = %bb.fg
  %i.ss = add nuw i64 %.sroa.039.1488.i, 1        ; 2 uses
  %i.st = icmp ult i64 %i.ss, %i.ge
  br i1 %i.st, label %bb.ev, label %._crit_edge.i130

bb.fi:                                            ; preds = %bb.ft
  %exitcond.not.i115 = icmp eq i64 %.pre-phi752.i, %umax.i113
  br i1 %exitcond.not.i115, label %._crit_edge1549, label %.lr.ph1548

.lr.ph1548:                                       ; preds = %.preheader30.i112, %bb.fi
  %.sroa.09.1.i1141547 = phi i64 [ %.pre-phi752.i, %bb.fi ], [ %.sroa.09.0509.i, %.preheader30.i112 ] ; 6 uses
  br i1 %or.cond170.i105, label %bb.fk, label %bb.fm

._crit_edge1549:                                  ; preds = %bb.fi, %bb.fr, %bb.ft, %.preheader30.i112
  %.sroa.09.1.lcssa.i119 = phi i64 [ %umax.i113, %.preheader30.i112 ], [ %umax.i113, %bb.fi ], [ %.sroa.09.1.i1141547, %bb.fr ], [ %.sroa.09.1.i1141547, %bb.ft ] ; 3 uses
  %i.su = sub nuw i64 %.sroa.09.1.lcssa.i119, %.sroa.09.0509.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.sv = load i64, ptr %i.pe, align 8, !alias.scope !2108, !noalias !2102, !noundef !5 ; 3 uses
  %i.sw = load i64, ptr %i.pd, align 8, !range !10, !alias.scope !2108, !noalias !2102, !noundef !5
  %i.sx = icmp eq i64 %i.sv, %i.sw
  br i1 %i.sx, label %bb.fj, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i120

bb.fj:                                            ; preds = %._crit_edge1549
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.pd)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2102

bb.fk:                                            ; preds = %.lr.ph1548
  %i.sy = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2102

bb.fl:                                            ; preds = %bb.fk
  br i1 %i.sy, label %.loopexit24.i127, label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %.lr.ph1548
  %i.sz = mul i64 %.sroa.09.1.i1141547, %i.or     ; 2 uses
  %i.ta = add i64 %.sroa.09.1.i1141547, %invariant.op485.i ; 3 uses
  %i.tb = icmp ult i64 %i.ta, %i.am
  br i1 %i.tb, label %bb.fn, label %.invoke.i106

bb.fn:                                            ; preds = %bb.fm
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ta
  %.val206.i116 = load i64, ptr %i.qi, align 8, !noalias !2102, !noundef !5
  %.val207.i117 = load i64, ptr %i.tc, align 8, !noalias !2102, !noundef !5
  %i.td = icmp eq i64 %.val206.i116, %.val207.i117
  %.pre742.i = load ptr, ptr %i.pb, align 8, !noalias !2102 ; 4 uses
  %.pre743.i = load i64, ptr %i.pc, align 8, !noalias !2102 ; 8 uses
  br i1 %i.td, label %bb.fo, label %._crit_edge746.i

._crit_edge746.i:                                 ; preds = %bb.fn
  %.pre751.i = add i64 %.sroa.09.1.i1141547, 1    ; 2 uses
  %.pre753.i = mul i64 %.pre751.i, %i.or
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.te = add i64 %i.sz, %.sroa.039.0508.i        ; 3 uses
  %i.tf = icmp ult i64 %i.te, %.pre743.i
  br i1 %i.tf, label %bb.fq, label %.invoke.i106

bb.fp:                                            ; preds = %bb.fr, %._crit_edge746.i
  %.pre-phi754.i.a = phi i64 [ %.pre753.i, %._crit_edge746.i ], [ %i.tj, %bb.fr ]
  %.pre-phi752.i = phi i64 [ %.pre751.i, %._crit_edge746.i ], [ %i.ti, %bb.fr ] ; 2 uses
  %i.tg = add i64 %.pre-phi754.i.a, %.sroa.039.0508.i ; 3 uses
  %i.th = icmp ult i64 %i.tg, %.pre743.i
  br i1 %i.th, label %bb.fs, label %.invoke.i106

bb.fq:                                            ; preds = %bb.fo
  %i.ti = add i64 %.sroa.09.1.i1141547, 1         ; 2 uses
  %i.tj = mul i64 %i.ti, %i.or                    ; 2 uses
  %i.tk = add i64 %i.tj, %i.re                    ; 3 uses
  %i.tl = icmp ult i64 %i.tk, %.pre743.i
  br i1 %i.tl, label %bb.fr, label %.invoke.i106

bb.fr:                                            ; preds = %bb.fq
  %i.tm = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.te
  %i.tn = load i8, ptr %i.tm, align 1, !noalias !2102, !noundef !5
  %i.to = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.tk
  %i.tp = load i8, ptr %i.to, align 1, !noalias !2102, !noundef !5
  %i.tq = add i8 %i.tp, 1
  %i.tr = icmp eq i8 %i.tn, %i.tq
  br i1 %i.tr, label %._crit_edge1549, label %bb.fp

bb.fs:                                            ; preds = %bb.fp
  %i.ts = add i64 %i.sz, %i.re                    ; 3 uses
  %i.tt = icmp ult i64 %i.ts, %.pre743.i
  br i1 %i.tt, label %bb.ft, label %.invoke.i106

bb.ft:                                            ; preds = %bb.fs
  %i.tu = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.tg
  %i.tv = load i8, ptr %i.tu, align 1, !noalias !2102, !noundef !5
  %i.tw = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.ts
  %i.tx = load i8, ptr %i.tw, align 1, !noalias !2102, !noundef !5
  %.not167.i118 = icmp ult i8 %i.tv, %i.tx
  br i1 %.not167.i118, label %._crit_edge1549, label %bb.fi

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i120: ; preds = %bb.fu, %._crit_edge498.i, %bb.fj, %._crit_edge1549, %bb.ew, %._crit_edge.i130
  %.sink1039.i = phi i64 [ %i.ue, %._crit_edge498.i ], [ %i.rr, %._crit_edge.i130 ], [ %i.ue, %bb.fu ], [ %i.rr, %bb.ew ], [ %i.sv, %bb.fj ], [ %i.sv, %._crit_edge1549 ] ; 3 uses
  %.sink1036.i = phi i64 [ 0, %._crit_edge498.i ], [ 2, %._crit_edge.i130 ], [ 0, %bb.fu ], [ 2, %bb.ew ], [ 1, %bb.fj ], [ 1, %._crit_edge1549 ]
  %.sink1033.i = phi i64 [ %i.qb, %._crit_edge498.i ], [ %i.qb, %._crit_edge.i130 ], [ %i.qb, %bb.fu ], [ %i.qb, %bb.ew ], [ %i.su, %bb.fj ], [ %i.su, %._crit_edge1549 ]
  %.sink.i121 = phi i64 [ %i.ud, %._crit_edge498.i ], [ %i.rq, %._crit_edge.i130 ], [ %i.ud, %bb.fu ], [ %i.rq, %bb.ew ], [ %i.qb, %bb.fj ], [ %i.qb, %._crit_edge1549 ]
  %.sroa.039.3.i = phi i64 [ %.sroa.039.4.lcssa.i, %._crit_edge498.i ], [ %.sroa.039.1.lcssa.i, %._crit_edge.i130 ], [ %.sroa.039.4.lcssa.i, %bb.fu ], [ %.sroa.039.1.lcssa.i, %bb.ew ], [ %.sroa.039.0508.i, %bb.fj ], [ %.sroa.039.0508.i, %._crit_edge1549 ] ; 5 uses
  %.sroa.09.3.i122 = phi i64 [ %.sroa.09.4.lcssa.i135, %._crit_edge498.i ], [ %.sroa.09.0509.i, %._crit_edge.i130 ], [ %.sroa.09.4.lcssa.i135, %bb.fu ], [ %.sroa.09.0509.i, %bb.ew ], [ %.sroa.09.1.lcssa.i119, %bb.fj ], [ %.sroa.09.1.lcssa.i119, %._crit_edge1549 ] ; 5 uses
  %i.ty = load ptr, ptr %i.pf, align 8, !noalias !2102, !nonnull !5, !noundef !5
  %i.tz = getelementptr inbounds nuw [40 x i8], ptr %i.ty, i64 %.sink1039.i ; 4 uses
  store i64 %.sink1036.i, ptr %i.tz, align 8, !noalias !2102
  %.sroa.417.0..sroa_idx.i123 = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  store i64 %i.qa, ptr %.sroa.417.0..sroa_idx.i123, align 8, !noalias !2102
  %.sroa.518.0..sroa_idx.i124 = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  store i64 %.sink1033.i, ptr %.sroa.518.0..sroa_idx.i124, align 8, !noalias !2102
  %.sroa.619.0..sroa_idx.i125 = getelementptr inbounds nuw i8, ptr %i.tz, i64 24
  store i64 %.sink.i121, ptr %.sroa.619.0..sroa_idx.i125, align 8, !noalias !2102
  %i.ua = add i64 %.sink1039.i, 1                 ; 4 uses
  store i64 %i.ua, ptr %i.pe, align 8, !noalias !2102
  %i.ub = icmp ult i64 %.sroa.09.3.i122, %i.gd    ; 2 uses
  %i.uc = icmp ult i64 %.sroa.039.3.i, %i.ge      ; 3 uses
  %or.cond.i126 = select i1 %i.ub, i1 %i.uc, i1 false
  br i1 %or.cond.i126, label %bb.ee, label %._crit_edge512.i

._crit_edge498.i:                                 ; preds = %bb.gd, %bb.gc, %bb.fz, %.preheader.i134
  %.sroa.039.4.lcssa.i = phi i64 [ %.sroa.039.0508.i, %.preheader.i134 ], [ %i.uy, %bb.gd ], [ %.sroa.039.4495.i, %bb.fz ], [ %.sroa.039.4495.i, %bb.gc ] ; 2 uses
  %.sroa.09.4.lcssa.i135 = phi i64 [ %.sroa.09.0509.i, %.preheader.i134 ], [ %i.uw, %bb.gd ], [ %.sroa.09.4496.i, %bb.fz ], [ %.sroa.09.4496.i, %bb.gc ] ; 3 uses
  %i.ud = sub i64 %.sroa.09.4.lcssa.i135, %.sroa.09.0509.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.ue = load i64, ptr %i.pe, align 8, !alias.scope !2109, !noalias !2102, !noundef !5 ; 3 uses
  %i.uf = load i64, ptr %i.pd, align 8, !range !10, !alias.scope !2109, !noalias !2102, !noundef !5
  %i.ug = icmp eq i64 %i.ue, %i.uf
  br i1 %i.ug, label %bb.fu, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i120

bb.fu:                                            ; preds = %._crit_edge498.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.pd)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2102

.lr.ph497.i:                                      ; preds = %.preheader.i134, %bb.gd
  %.sroa.09.4496.i = phi i64 [ %i.uw, %bb.gd ], [ %.sroa.09.0509.i, %.preheader.i134 ] ; 5 uses
  %.sroa.039.4495.i = phi i64 [ %i.uy, %bb.gd ], [ %.sroa.039.0508.i, %.preheader.i134 ] ; 6 uses
  %i.uh = and i64 %.sroa.039.4495.i, 1023
  %i.ui = icmp eq i64 %i.uh, 0
  %or.cond180.i136 = select i1 %.sroa.05.0.not510.i, i1 %i.ui, i1 false
  br i1 %or.cond180.i136, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fx, %.lr.ph497.i
  %i.uj = mul i64 %.sroa.09.4496.i, %i.or
  %i.uk = add i64 %.sroa.039.4495.i, %invariant.op.i94 ; 2 uses
  %i.ul = icmp ult i64 %i.uk, %i.ap
  br i1 %i.ul, label %bb.fy, label %.invoke.i106

bb.fw:                                            ; preds = %.lr.ph497.i
  %i.um = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2102

bb.fx:                                            ; preds = %bb.fw
  br i1 %i.um, label %.loopexit24.i127, label %bb.fv

bb.fy:                                            ; preds = %bb.fv
  %i.un = add i64 %.sroa.09.4496.i, %invariant.op485.i ; 2 uses
  %i.uo = icmp ult i64 %i.un, %i.am
  br i1 %i.uo, label %bb.fz, label %.invoke.i106

bb.fz:                                            ; preds = %bb.fy
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.uk
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.un
  %.val204.i137 = load i64, ptr %i.up, align 8, !noalias !2102, !noundef !5
  %.val205.i138 = load i64, ptr %i.uq, align 8, !noalias !2102, !noundef !5
  %i.ur = icmp eq i64 %.val204.i137, %.val205.i138
  br i1 %i.ur, label %bb.ga, label %._crit_edge498.i

bb.ga:                                            ; preds = %bb.fz
  %i.us = add i64 %i.uj, %.sroa.039.4495.i        ; 3 uses
  %i.ut = load ptr, ptr %i.pb, align 8, !noalias !2102, !nonnull !5, !noundef !5 ; 2 uses
  %i.uu = load i64, ptr %i.pc, align 8, !noalias !2102, !noundef !5 ; 4 uses
  %i.uv = icmp ult i64 %i.us, %i.uu
  br i1 %i.uv, label %bb.gb, label %.invoke.i106

bb.gb:                                            ; preds = %bb.ga
  %i.uw = add nuw i64 %.sroa.09.4496.i, 1         ; 4 uses
  %i.ux = mul i64 %i.uw, %i.or
  %i.uy = add nuw i64 %.sroa.039.4495.i, 1        ; 4 uses
  %i.uz = add i64 %i.uy, %i.ux                    ; 3 uses
  %i.va = icmp ult i64 %i.uz, %i.uu
  br i1 %i.va, label %bb.gc, label %.invoke.i106

bb.gc:                                            ; preds = %bb.gb
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ut, i64 %i.us
  %i.vc = load i8, ptr %i.vb, align 1, !noalias !2102, !noundef !5
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ut, i64 %i.uz
  %i.ve = load i8, ptr %i.vd, align 1, !noalias !2102, !noundef !5
  %i.vf = add i8 %i.ve, 1
  %i.vg = icmp eq i8 %i.vc, %i.vf
  br i1 %i.vg, label %bb.gd, label %._crit_edge498.i

bb.gd:                                            ; preds = %bb.gc
  %i.vh = icmp ult i64 %i.uw, %i.gd
  %i.vi = icmp ult i64 %i.uy, %i.ge
  %or.cond177.i139 = and i1 %i.vh, %i.vi
  br i1 %or.cond177.i139, label %.lr.ph497.i, label %._crit_edge498.i

.loopexit24.i127:                                 ; preds = %bb.gg, %bb.gi, %bb.em, %bb.fl, %bb.ey, %bb.fx, %bb.gt
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.ge, !noalias !2102

bb.ge:                                            ; preds = %.loopexit24.i127
  %i.vj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.gf, !noalias !2102

bb.gf:                                            ; preds = %bb.ge
  %i.vk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !2102
  unreachable

bb.gg:                                            ; preds = %.lr.ph484.split.i
  br i1 %i.ph, label %.loopexit24.i127, label %.lr.ph.i140

.lr.ph.i140:                                      ; preds = %bb.gg
  %i.vl = mul i64 %i.pg, %i.or                    ; 2 uses
  %i.vm = mul i64 %.sroa.0102.0483.i, %i.or       ; 2 uses
  %.reass486.i = add i64 %i.pg, %invariant.op485.i ; 3 uses
  %i.vn = icmp ult i64 %.reass486.i, %i.am
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.reass486.i
  %.fr.i141 = freeze i1 %i.vn
  br i1 %.fr.i141, label %.lr.ph.split.us.i144, label %.lr.ph.split.i142

.lr.ph.split.us.i144:                             ; preds = %.lr.ph.i140, %bb.gr
  %.sroa.0105.0432.us.i145 = phi i64 [ %i.vp, %bb.gr ], [ %i.ge, %.lr.ph.i140 ] ; 3 uses
  %i.vp = add i64 %.sroa.0105.0432.us.i145, -1    ; 6 uses
  %i.vq = and i64 %i.vp, 1023
  %i.vr = icmp eq i64 %i.vq, 0
  br i1 %i.vr, label %bb.gh, label %bb.gj

bb.gh:                                            ; preds = %.lr.ph.split.us.i144
  %i.vs = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2102

bb.gi:                                            ; preds = %bb.gh
  br i1 %i.vs, label %.loopexit24.i127, label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %.lr.ph.split.us.i144
end_hunk_7
begin_hunk_8_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter:bb.a
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit154

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit154: ; preds = %bb.gy, %bb.gz
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xf, i64 128 ; 2 uses
  %i.xm = load ptr, ptr %i.xl, align 8, !alias.scope !2113, !noalias !2112, !nonnull !5, !noundef !5
  %i.xn = getelementptr inbounds nuw [40 x i8], ptr %i.xm, i64 %i.xi ; 4 uses
  store i64 1, ptr %i.xn, align 8, !noalias !2112
  %.sroa.4241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xn, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4241.0..sroa_idx, align 8, !noalias !2112
  %.sroa.5242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xn, i64 16
  store i64 %i.xe, ptr %.sroa.5242.0..sroa_idx, align 8, !noalias !2112
  %.sroa.6243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xn, i64 24
  store i64 %.sroa.0190.0, ptr %.sroa.6243.0..sroa_idx, align 8, !noalias !2112
  %i.xo = add i64 %i.xi, 1                        ; 3 uses
  store i64 %i.xo, ptr %i.xh, align 8, !alias.scope !2113, !noalias !2112
  %i.xp = sub nuw i64 %i.as, %.sroa.0190.0
  %i.xq = load i64, ptr %i.xg, align 8, !range !10, !alias.scope !2115, !noalias !2116, !noundef !5
  %i.xr = icmp eq i64 %i.xo, %i.xq
  br i1 %i.xr, label %bb.ha, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit155

bb.ha:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit154
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.xg), !noalias !2117
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit155

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit155: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit154, %bb.ha
  %i.xs = load ptr, ptr %i.xl, align 8, !alias.scope !2115, !noalias !2116, !nonnull !5, !noundef !5
  %i.xt = getelementptr inbounds nuw [40 x i8], ptr %i.xs, i64 %i.xo ; 4 uses
  store i64 2, ptr %i.xt, align 8, !noalias !2116
  %.sroa.4256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xt, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4256.0..sroa_idx, align 8, !noalias !2116
  %.sroa.5257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xt, i64 16
  store i64 %.sroa.0190.0, ptr %.sroa.5257.0..sroa_idx, align 8, !noalias !2116
  %.sroa.6258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xt, i64 24
  store i64 %i.xp, ptr %.sroa.6258.0..sroa_idx, align 8, !noalias !2116
  %i.xu = add i64 %i.xi, 2
  store i64 %i.xu, ptr %i.xh, align 8, !alias.scope !2115, !noalias !2116
  br label %bb.ba

.thread:                                          ; preds = %bb.az
  %i.xv = sub nuw i64 %i.as, %.sroa.0190.0
  call void @llvm.experimental.noalias.scope.decl(metadata !2118)
  call void @llvm.experimental.noalias.scope.decl(metadata !2119)
  %i.xw = load ptr, ptr %0, align 8, !alias.scope !2120, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 120 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xw, i64 136 ; 2 uses
  %i.xz = load i64, ptr %i.xy, align 8, !alias.scope !2121, !noalias !2120, !noundef !5 ; 3 uses
  %i.ya = load i64, ptr %i.xx, align 8, !range !10, !alias.scope !2121, !noalias !2120, !noundef !5
  %i.yb = icmp eq i64 %i.xz, %i.ya
  br i1 %i.yb, label %bb.hb, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit156

bb.hb:                                            ; preds = %.thread
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.xx), !noalias !2122
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit156

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit156: ; preds = %.thread, %bb.hb
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xw, i64 128
  %i.yd = load ptr, ptr %i.yc, align 8, !alias.scope !2121, !noalias !2120, !nonnull !5, !noundef !5
  %i.ye = getelementptr inbounds nuw [40 x i8], ptr %i.yd, i64 %i.xz ; 4 uses
  store i64 2, ptr %i.ye, align 8, !noalias !2120
  %.sroa.4261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4261.0..sroa_idx, align 8, !noalias !2120
  %.sroa.5262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ye, i64 16
  store i64 %.sroa.0190.0, ptr %.sroa.5262.0..sroa_idx, align 8, !noalias !2120
  %.sroa.6263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ye, i64 24
  store i64 %i.xv, ptr %.sroa.6263.0..sroa_idx, align 8, !noalias !2120
  %i.yf = add i64 %i.xz, 1
  store i64 %i.yf, ptr %i.xy, align 8, !alias.scope !2121, !noalias !2120
  br label %bb.ba

bb.hc:                                            ; preds = %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !2123)
  call void @llvm.experimental.noalias.scope.decl(metadata !2124)
  %i.yg = load ptr, ptr %0, align 8, !alias.scope !2125, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 120 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yg, i64 136 ; 2 uses
  %i.yj = load i64, ptr %i.yi, align 8, !alias.scope !2126, !noalias !2125, !noundef !5 ; 3 uses
  %i.yk = load i64, ptr %i.yh, align 8, !range !10, !alias.scope !2126, !noalias !2125, !noundef !5
  %i.yl = icmp eq i64 %i.yj, %i.yk
  br i1 %i.yl, label %bb.hd, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit157

bb.hd:                                            ; preds = %bb.hc
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.yh), !noalias !2127
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit157

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit157: ; preds = %bb.hc, %bb.hd
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yg, i64 128
  %i.yn = load ptr, ptr %i.ym, align 8, !alias.scope !2126, !noalias !2125, !nonnull !5, !noundef !5
  %i.yo = getelementptr inbounds nuw [40 x i8], ptr %i.yn, i64 %i.yj ; 4 uses
  store i64 0, ptr %i.yo, align 8, !noalias !2125
  %.sroa.4231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yo, i64 8
  store i64 %i.ar, ptr %.sroa.4231.0..sroa_idx, align 8, !noalias !2125
  %.sroa.5232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yo, i64 16
  store i64 %i.as, ptr %.sroa.5232.0..sroa_idx, align 8, !noalias !2125
  %.sroa.6233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yo, i64 24
  store i64 %.sroa.0.0.i54, ptr %.sroa.6233.0..sroa_idx, align 8, !noalias !2125
  %i.yp = add i64 %i.yj, 1
  store i64 %i.yp, ptr %i.yi, align 8, !alias.scope !2126, !noalias !2125
  br label %bb.he

bb.he:                                            ; preds = %bb.ba, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit157
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = tail call fastcc noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit, %bb.a
  %i.i = add i64 %i.h, %2                         ; 3 uses
  %i.j = add i64 %i.h, %5                         ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2348)
  %i.k = icmp uge i64 %i.i, %3
  %i.l = icmp uge i64 %i.j, %6
  %or.cond.i53 = or i1 %i.k, %i.l
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  br i1 %or.cond.i53, label %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge, label %.lr.ph.i.i.i.i

._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge: ; preds = %bb.b
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert886 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.pre887 = load i64, ptr %.phi.trans.insert886, align 8
  %.phi.trans.insert888 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre889 = load ptr, ptr %.phi.trans.insert888, align 8
  %.phi.trans.insert890 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre891 = load i64, ptr %.phi.trans.insert890, align 8
  %.phi.trans.insert892 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre893 = load i64, ptr %.phi.trans.insert892, align 8
  %.phi.trans.insert894 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre895 = load ptr, ptr %.phi.trans.insert894, align 8
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = sub nuw i64 %3, %i.i                     ; 2 uses
  %i.s = sub nuw i64 %6, %i.j                     ; 2 uses
  %i.t = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !2348 ; 4 uses
  %i.u = load i64, ptr %i.m, align 8, !alias.scope !2348 ; 5 uses
  %i.v = load ptr, ptr %i.n, align 8, !alias.scope !2348, !nonnull !5 ; 4 uses
  %i.w = load i64, ptr %i.o, align 8, !alias.scope !2347 ; 4 uses
  %i.x = load i64, ptr %i.p, align 8, !alias.scope !2347 ; 5 uses
  %i.y = load ptr, ptr %i.q, align 8, !alias.scope !2347, !nonnull !5 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %i.z = phi i64 [ %3, %.lr.ph.i.i.i.i ], [ %i.ac, %bb.g ]
  %.sroa.01.033.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ak, %bb.g ] ; 3 uses
  %i.aa = phi i64 [ %6, %.lr.ph.i.i.i.i ], [ %i.ab, %bb.g ]
  %i.ab = add i64 %i.aa, -1                       ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.01.033.i.i.i.i, %i.r
  br i1 %exitcond.not.i.i.i.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = add i64 %i.z, -1                        ; 2 uses
  %i.ad = sub i64 %i.ab, %i.t                     ; 3 uses
  %i.ae = icmp ult i64 %i.ad, %i.u
  br i1 %i.ae, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #28, !noalias !2349
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i: ; preds = %bb.d
  %i.af = sub i64 %i.ac, %i.w                     ; 3 uses
  %i.ag = icmp ult i64 %i.af, %i.x
  br i1 %i.ag, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.af, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #28, !noalias !2350
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ad
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.af
  %.val.i.i.i.i.i = load i32, ptr %i.ah, align 4, !noalias !2351, !noundef !5
  %.val10.i.i.i.i.i = load i32, ptr %i.ai, align 4, !noalias !2351, !noundef !5
  %i.aj = icmp eq i32 %.val.i.i.i.i.i, %.val10.i.i.i.i.i
  br i1 %i.aj, label %bb.g, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit

bb.g:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i
  %i.ak = add nuw i64 %.sroa.01.033.i.i.i.i, 1    ; 2 uses
  %exitcond65.not.i.i.i.i = icmp eq i64 %i.ak, %i.s
  br i1 %exitcond65.not.i.i.i.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.c

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.c, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i, %bb.g, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge
  %i.al = phi ptr [ %.pre895, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.y, %bb.g ], [ %i.y, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.y, %bb.c ] ; 10 uses
  %i.am = phi i64 [ %.pre893, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.x, %bb.g ], [ %i.x, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.x, %bb.c ] ; 23 uses
  %i.an = phi i64 [ %.pre891, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.w, %bb.g ], [ %i.w, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.w, %bb.c ] ; 5 uses
  %i.ao = phi ptr [ %.pre889, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.v, %bb.g ], [ %i.v, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.v, %bb.c ] ; 11 uses
  %i.ap = phi i64 [ %.pre887, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.u, %bb.g ], [ %i.u, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.u, %bb.c ] ; 27 uses
  %i.aq = phi i64 [ %.pre, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.t, %bb.g ], [ %i.t, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.t, %bb.c ] ; 8 uses
  %.sroa.0.0.i54 = phi i64 [ 0, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.r, %bb.c ], [ %.sroa.01.033.i.i.i.i, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.s, %bb.g ] ; 4 uses
  %i.ar = sub i64 %3, %.sroa.0.0.i54              ; 9 uses
  %i.as = sub i64 %6, %.sroa.0.0.i54              ; 9 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2353)
  %i.az = load ptr, ptr %0, align 8, !alias.scope !2354, !nonnull !5, !align !6, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2355)
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !2355, !noalias !2354, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 120 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 136 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !2356, !noalias !2357, !noundef !5 ; 3 uses
  %i.be = load i64, ptr %i.bb, align 8, !range !10, !alias.scope !2356, !noalias !2357, !noundef !5
  %i.bf = icmp eq i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.i, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb), !noalias !2358
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.h, %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 128
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !2356, !noalias !2357, !nonnull !5, !noundef !5
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %i.bh, i64 %i.bd ; 4 uses
  store i64 0, ptr %i.bi, align 8, !noalias !2357
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !2357
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i64 %5, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !2357
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store i64 %i.h, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !2357
  %i.bj = add i64 %i.bd, 1
  store i64 %i.bj, ptr %i.bc, align 8, !alias.scope !2356, !noalias !2357
  br label %bb.b

bb.j:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.0197.0 = phi i64 [ %i.j, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.0197.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit ] ; 36 uses
  %.sroa.0.0 = phi i64 [ %i.i, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit ] ; 33 uses
  %i.bk = icmp ult i64 %.sroa.0.0, %i.ar          ; 2 uses
  %i.bl = icmp ult i64 %.sroa.0197.0, %i.as       ; 3 uses
  %or.cond314 = select i1 %i.bk, i1 %i.bl, i1 false
  br i1 %or.cond314, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit, %bb.j
  br i1 %i.bk, label %bb.ay, label %bb.az

bb.l:                                             ; preds = %bb.j
  %i.bm = sub nuw i64 %i.ar, %.sroa.0.0           ; 5 uses
  %i.bn = sub nuw i64 %i.as, %.sroa.0197.0        ; 6 uses
  %i.bo = icmp ult i64 %i.bm, 97
  %i.bp = icmp ult i64 %i.bn, 97
  %or.cond.i = or i1 %i.bp, %i.bo
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i55 = call noundef i64 @llvm.umin.i64(i64 %i.bn, i64 %i.bm) ; 2 uses
  %.sroa.0.0.i56 = call noundef i64 @llvm.umax.i64(i64 %i.bn, i64 %i.bm)
  %i.bq = shl nuw i64 %.sroa.0.0.i55, 1
  %i.br = icmp slt i64 %.sroa.0.0.i55, 0
  br i1 %i.br, label %bb.n, label %bb.o, !prof !13

bb.n:                                             ; preds = %bb.m
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.052.0.i = phi i64 [ -1, %bb.n ], [ %i.bq, %bb.m ]
  %i.bs = icmp ult i64 %.sroa.0.0.i56, %.sroa.052.0.i
  br i1 %i.bs, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not.i = icmp ule i64 %i.bn, %i.bm
  %i.bt = icmp ule i64 %i.bm, %i.bn
  %.not.i.fr = freeze i1 %.not.i
  %i.bu = sub i64 %.sroa.0197.0, %i.aq            ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.ap
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.bu
  br label %bb.q

.loopexit:                                        ; preds = %.outer, %bb.ae, %bb.t, %bb.ad
  %.sroa.525.2.i.ph.lcssa487 = phi i64 [ %.sroa.525.2.i.ph641, %bb.t ], [ %.sroa.525.2.i.ph641, %bb.ae ], [ %.sroa.525.2.i.ph641, %bb.ad ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa480 = phi i64 [ %.sroa.023.1.i.ph642, %bb.t ], [ %.sroa.023.1.i.ph642, %bb.ae ], [ %.sroa.023.1.i.ph642, %bb.ad ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa473 = phi i64 [ %.sroa.9.2.i.ph643, %bb.t ], [ %.sroa.9.2.i.ph643, %bb.ae ], [ %.sroa.9.2.i.ph643, %bb.ad ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa466 = phi i64 [ %.sroa.12.2.i.ph644, %bb.t ], [ %.sroa.12.2.i.ph644, %bb.ae ], [ %.sroa.12.2.i.ph644, %bb.ad ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %.not.i59 = icmp ugt i64 %spec.select315, 4
  %or.cond320 = or i1 %i.bx, %.not.i59
  br i1 %or.cond320, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit
  %.sroa.12.0.i649 = phi i64 [ undef, %bb.p ], [ %.sroa.12.2.i.ph.lcssa466, %.loopexit ]
  %.sroa.9.0.i648 = phi i64 [ undef, %bb.p ], [ %.sroa.9.2.i.ph.lcssa473, %.loopexit ]
  %.sroa.023.0.i647 = phi i64 [ 0, %bb.p ], [ %.sroa.023.1.i.ph.lcssa480, %.loopexit ]
  %.sroa.525.0.i646 = phi i64 [ undef, %bb.p ], [ %.sroa.525.2.i.ph.lcssa487, %.loopexit ]
  %.sroa.0230.0645 = phi i64 [ 0, %bb.p ], [ %spec.select315, %.loopexit ] ; 11 uses
  %i.bx = icmp eq i64 %.sroa.0230.0645, 4         ; 2 uses
  %i.by = add nuw nsw i64 %.sroa.0230.0645, 1
  %spec.select315 = select i1 %i.bx, i64 4, i64 %i.by ; 2 uses
  %i.bz = icmp eq i64 %.sroa.0230.0645, 0
  %i.ca = add i64 %.sroa.0230.0645, %.sroa.0.0    ; 2 uses
  %i.cb = sub i64 %i.ca, %i.an                    ; 5 uses
  %i.cc = icmp ult i64 %i.cb, %i.am               ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.cb ; 2 uses
  %i.ce = sub i64 %i.ar, %i.ca
  br label %.lr.ph

bb.r:                                             ; preds = %.loopexit
  %i.cf = trunc nuw i64 %.sroa.023.1.i.ph.lcssa480 to i1
  br i1 %i.cf, label %.loopexit397, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit

.loopexit397:                                     ; preds = %bb.af, %bb.r
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa487, %bb.r ], [ %.sroa.0230.0645, %bb.af ] ; 4 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa473, %bb.r ], [ %.us-phi553, %bb.af ] ; 4 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa466, %bb.r ], [ %.sroa.01.0.i.lcssa, %bb.af ] ; 3 uses
  %i.cg = icmp eq i64 %.sroa.525.1.i, 0
  %i.ch = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  br i1 %i.cg, label %bb.an, label %bb.ao

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.t
  %.sroa.0231.0528 = phi i64 [ %spec.select317, %bb.t ], [ %.sroa.0231.0.ph640, %.lr.ph.split ] ; 3 uses
  %i.ci = icmp eq i64 %.sroa.0231.0528, 4         ; 3 uses
  %i.cj = add nuw nsw i64 %.sroa.0231.0528, 1
  %spec.select317 = select i1 %i.ci, i64 4, i64 %i.cj ; 3 uses
  %i.ck = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2359
  br i1 %i.ck, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.s

bb.s:                                             ; preds = %.lr.ph.split.split
  %.not652 = icmp eq i64 %.sroa.0231.0528, 0
  br i1 %.not652, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30
  %.not.i61 = icmp ugt i64 %spec.select317, 4
  %or.cond321 = select i1 %i.ci, i1 true, i1 %.not.i61
  br i1 %or.cond321, label %.loopexit, label %.lr.ph.split.split

bb.u:                                             ; preds = %bb.s
  br i1 %i.bv, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit31, label %.split.loopexit1109

.split.loopexit1109:                              ; preds = %bb.u
  %i.cl = sub i64 %.sroa.0197.0, %i.aq
  br label %.split

.split:                                           ; preds = %bb.ac, %.split.loopexit1109
  %.us-phi = phi i64 [ %i.cl, %.split.loopexit1109 ], [ %i.dc, %bb.ac ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #28, !noalias !2360
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit31: ; preds = %bb.u
  br i1 %i.cc, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30, label %.split538

.split538:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit31, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit31.us
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cb, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #28, !noalias !2361
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit31
  %.val49 = load i32, ptr %i.bw, align 4, !noundef !5
  %.val50 = load i32, ptr %i.cd, align 4, !noundef !5
  %.not318 = icmp eq i32 %.val49, %.val50
  br i1 %.not318, label %.split542, label %bb.t

.split542.loopexit:                               ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30.us
  %.pre897 = sub i64 %i.as, %i.db
  br label %.split542

.split542:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30, %.split542.loopexit
  %.pre-phi = phi i64 [ %.pre897, %.split542.loopexit ], [ %i.bn, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30 ]
  %.us-phi548 = phi i64 [ %i.db, %.split542.loopexit ], [ %.sroa.0197.0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30 ]
  %.us-phi551 = phi i1 [ %i.cy, %.split542.loopexit ], [ %i.ci, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30 ]
  %.us-phi552 = phi i64 [ %spec.select317.us, %.split542.loopexit ], [ %spec.select317, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30 ] ; 2 uses
  %.us-phi553 = phi i64 [ %.sroa.0231.0528.us, %.split542.loopexit ], [ 0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30 ] ; 6 uses
  %.sroa.0.0.i65 = call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %i.ce) ; 3 uses
  %.not653 = icmp eq i64 %.sroa.0.0.i65, 0
  br i1 %.not653, label %.outer, label %.lr.ph637

.lr.ph637:                                        ; preds = %.split542
  %i.cm = sub i64 %.us-phi548, %i.aq              ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph637, %bb.aa
  %.sroa.01.0.i636 = phi i64 [ 0, %.lr.ph637 ], [ %i.cw, %bb.aa ] ; 5 uses
  %i.cn = and i64 %.sroa.01.0.i636, 1023
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cp = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2359
  br i1 %i.cp, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cq = add nuw i64 %i.cm, %.sroa.01.0.i636     ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.ap
  br i1 %i.cr, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit29, label %bb.y

end_hunk_8
begin_hunk_9_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter:bb.a
  store i64 %.sroa.9.1.i, ptr %.sroa.6275.0..sroa_idx, align 8, !noalias !2374
  %i.es = add i64 %i.em, 1
  store i64 %i.es, ptr %i.el, align 8, !alias.scope !2373, !noalias !2374
  br label %bb.ap

bb.at:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !2376)
  call void @llvm.experimental.noalias.scope.decl(metadata !2377), !noalias !2365
  %i.et = load ptr, ptr %0, align 8, !alias.scope !2378, !noalias !2365, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2379), !noalias !2365
  %i.eu = load ptr, ptr %i.et, align 8, !alias.scope !2379, !noalias !2380, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 120 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 136 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !2381, !noalias !2382, !noundef !5 ; 3 uses
  %i.ey = load i64, ptr %i.ev, align 8, !range !10, !alias.scope !2381, !noalias !2382, !noundef !5
  %i.ez = icmp eq i64 %i.ex, %i.ey
  br i1 %i.ez, label %bb.au, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit70

bb.au:                                            ; preds = %bb.at
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ev), !noalias !2383
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit70

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit70: ; preds = %bb.at, %bb.au
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 128
  %i.fb = load ptr, ptr %i.fa, align 8, !alias.scope !2381, !noalias !2382, !nonnull !5, !noundef !5
  %i.fc = getelementptr inbounds nuw [40 x i8], ptr %i.fb, i64 %i.ex ; 4 uses
  store i64 1, ptr %i.fc, align 8, !noalias !2382
  %.sroa.4258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4258.0..sroa_idx, align 8, !noalias !2382
  %.sroa.5259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5259.0..sroa_idx, align 8, !noalias !2382
  %.sroa.6260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  store i64 %.sroa.0197.0, ptr %.sroa.6260.0..sroa_idx, align 8, !noalias !2382
  %i.fd = add i64 %i.ex, 1
  store i64 %i.fd, ptr %i.ew, align 8, !alias.scope !2381, !noalias !2382
  br label %bb.ap

bb.av:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !2384)
  call void @llvm.experimental.noalias.scope.decl(metadata !2385), !noalias !2365
  %i.fe = load ptr, ptr %0, align 8, !alias.scope !2386, !noalias !2365, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2387), !noalias !2365
  %i.ff = load ptr, ptr %i.fe, align 8, !alias.scope !2387, !noalias !2388, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 120 ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 136 ; 3 uses
  %i.fi = load i64, ptr %i.fh, align 8, !alias.scope !2389, !noalias !2390, !noundef !5 ; 4 uses
  %i.fj = load i64, ptr %i.fg, align 8, !range !10, !alias.scope !2389, !noalias !2390, !noundef !5
  %i.fk = icmp eq i64 %i.fi, %i.fj
  br i1 %i.fk, label %bb.aw, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit71

bb.aw:                                            ; preds = %bb.av
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fg), !noalias !2391
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit71

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit71: ; preds = %bb.av, %bb.aw
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 128 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !alias.scope !2389, !noalias !2390, !nonnull !5, !noundef !5
  %i.fn = getelementptr inbounds nuw [40 x i8], ptr %i.fm, i64 %i.fi ; 4 uses
  store i64 1, ptr %i.fn, align 8, !noalias !2390
  %.sroa.4278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4278.0..sroa_idx, align 8, !noalias !2390
  %.sroa.5279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5279.0..sroa_idx, align 8, !noalias !2390
  %.sroa.6280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  store i64 %.sroa.0197.0, ptr %.sroa.6280.0..sroa_idx, align 8, !noalias !2390
  %i.fo = add i64 %i.fi, 1                        ; 3 uses
  store i64 %i.fo, ptr %i.fh, align 8, !alias.scope !2389, !noalias !2390
  %i.fp = load i64, ptr %i.fg, align 8, !range !10, !alias.scope !2392, !noalias !2390, !noundef !5
  %i.fq = icmp eq i64 %i.fo, %i.fp
  br i1 %i.fq, label %bb.ax, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit72

bb.ax:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit71
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fg), !noalias !2393
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit72

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit72: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit71, %bb.ax
  %i.fr = load ptr, ptr %i.fl, align 8, !alias.scope !2392, !noalias !2390, !nonnull !5, !noundef !5
  %i.fs = getelementptr inbounds nuw [40 x i8], ptr %i.fr, i64 %i.fo ; 4 uses
  store i64 2, ptr %i.fs, align 8, !noalias !2390
  %.sroa.4283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4283.0..sroa_idx, align 8, !noalias !2390
  %.sroa.5284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store i64 %.sroa.0197.0, ptr %.sroa.5284.0..sroa_idx, align 8, !noalias !2390
  %.sroa.6285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6285.0..sroa_idx, align 8, !noalias !2390
  %i.ft = add i64 %i.fi, 2
  store i64 %i.ft, ptr %i.fh, align 8, !alias.scope !2392, !noalias !2390
  br label %bb.ap

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split, %.lr.ph.split.us, %bb.w, %bb.l, %bb.o, %bb.r, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit68
  %.sroa.0197.2 = phi i64 [ %.sroa.0197.0, %bb.l ], [ %.sroa.0197.0, %bb.o ], [ %.sroa.0197.0, %bb.r ], [ %i.ei, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit68 ], [ %.sroa.0197.0, %.lr.ph.split.split ], [ %.sroa.0197.0, %.lr.ph.split.us ], [ %.sroa.0197.0, %bb.w ], [ %.sroa.0197.0, %.lr.ph.split.split.us ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.l ], [ %.sroa.0.0, %bb.o ], [ %.sroa.0.0, %bb.r ], [ %i.eh, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit68 ], [ %.sroa.0.0, %.lr.ph.split.split ], [ %.sroa.0.0, %.lr.ph.split.us ], [ %.sroa.0.0, %bb.w ], [ %.sroa.0.0, %.lr.ph.split.split.us ] ; 2 uses
  %i.fu = icmp eq i64 %.sroa.0.2, %.sroa.0.0
  %i.fv = icmp eq i64 %.sroa.0197.2, %.sroa.0197.0
  %or.cond = select i1 %i.fu, i1 %i.fv, i1 false
  br i1 %or.cond, label %bb.k, label %bb.j

bb.ay:                                            ; preds = %bb.k
  br i1 %i.bl, label %bb.bd, label %bb.bb

bb.az:                                            ; preds = %bb.k
  br i1 %i.bl, label %.thread, label %bb.ba

bb.ba:                                            ; preds = %.sink.split.i.thread, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread311, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit73, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit163, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit162, %bb.gx, %bb.az
  %.not26 = icmp eq i64 %.sroa.0.0.i54, 0
  br i1 %.not26, label %bb.he, label %bb.hc

bb.bb:                                            ; preds = %bb.ay
  %i.fw = sub nuw i64 %i.ar, %.sroa.0.0
  call void @llvm.experimental.noalias.scope.decl(metadata !2394)
  call void @llvm.experimental.noalias.scope.decl(metadata !2395)
  %i.fx = load ptr, ptr %0, align 8, !alias.scope !2396, !nonnull !5, !align !6, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !2397)
  %i.fy = load ptr, ptr %i.fx, align 8, !alias.scope !2397, !noalias !2396, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 120 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 136 ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !alias.scope !2398, !noalias !2399, !noundef !5 ; 3 uses
  %i.gc = load i64, ptr %i.fz, align 8, !range !10, !alias.scope !2398, !noalias !2399, !noundef !5
  %i.gd = icmp eq i64 %i.gb, %i.gc
  br i1 %i.gd, label %bb.bc, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit73

bb.bc:                                            ; preds = %bb.bb
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fz), !noalias !2400
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit73

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit73: ; preds = %bb.bb, %bb.bc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 128
  %i.gf = load ptr, ptr %i.ge, align 8, !alias.scope !2398, !noalias !2399, !nonnull !5, !noundef !5
  %i.gg = getelementptr inbounds nuw [40 x i8], ptr %i.gf, i64 %i.gb ; 4 uses
  store i64 1, ptr %i.gg, align 8, !noalias !2399
  %.sroa.4253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4253.0..sroa_idx, align 8, !noalias !2399
  %.sroa.5254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store i64 %i.fw, ptr %.sroa.5254.0..sroa_idx, align 8, !noalias !2399
  %.sroa.6255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  store i64 %.sroa.0197.0, ptr %.sroa.6255.0..sroa_idx, align 8, !noalias !2399
  %i.gh = add i64 %i.gb, 1
  store i64 %i.gh, ptr %i.ga, align 8, !alias.scope !2398, !noalias !2399
  br label %bb.ba

bb.bd:                                            ; preds = %bb.ay
  %i.gi = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2401
  br i1 %i.gi, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gj = sub nuw i64 %i.ar, %.sroa.0.0           ; 22 uses
  %i.gk = sub nuw i64 %i.as, %.sroa.0197.0        ; 22 uses
  %i.gl = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.gj, i64 %i.gk) ; 2 uses
  %i.gm = extractvalue { i64, i1 } %i.gl, 1
  br i1 %i.gm, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.bf, !prof !13

bb.bf:                                            ; preds = %bb.be
  %i.gn = extractvalue { i64, i1 } %i.gl, 0
  %.sroa.0.0.i75 = call noundef i64 @llvm.umax.i64(i64 %i.gk, i64 %i.gj)
  %.sroa.0.0.i74 = call noundef i64 @llvm.umin.i64(i64 %i.gk, i64 %i.gj)
  %i.go = add i64 %.sroa.0.0.i74, -65
  %or.cond.i27 = icmp ult i64 %i.go, -64
  %i.gp = icmp ult i64 %.sroa.0.0.i75, 512
  %or.cond1.i = or i1 %i.gp, %or.cond.i27
  %i.gq = icmp ugt i64 %i.gn, 64000000
  %or.cond3.i = select i1 %or.cond1.i, i1 true, i1 %i.gq
  br i1 %or.cond3.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.not.i28 = icmp ugt i64 %i.gj, %i.gk
  %.val51 = load ptr, ptr %0, align 8             ; 20 uses
  %i.gr = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !5 ; 2 uses
  br i1 %.not.i28, label %bb.bh, label %bb.eb

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.gr, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gs = add i64 %i.gj, 1                        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2402
  %i.gt = add nuw i64 %i.gk, 1
  %i.gu = mul i64 %i.gs, %i.gt                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2403)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2404
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.gu, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !2404
  %i.gv = load i64, ptr %i.c, align 8, !range !9, !noalias !2404, !noundef !5
  %i.gw = trunc nuw i64 %i.gv to i1
  %i.gx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gy = load i64, ptr %i.gx, align 8, !range !17, !noalias !2404, !noundef !5 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.gw, label %bb.bj, label %.lr.ph469.i, !prof !13

bb.bj:                                            ; preds = %bb.bi
  %i.ha = load i64, ptr %i.gz, align 8, !noalias !2404
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.gy, i64 %i.ha) #28, !noalias !2404
  unreachable

.lr.ph469.i:                                      ; preds = %bb.bi
  %i.hb = load ptr, ptr %i.gz, align 8, !noalias !2404, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2404
  store i64 %i.gy, ptr %i.d, align 8, !alias.scope !2403, !noalias !2402
  %i.hc = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store ptr %i.hb, ptr %i.hc, align 8, !alias.scope !2403, !noalias !2402
  %i.hd = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 7 uses
  store i64 %i.gu, ptr %i.hd, align 8, !alias.scope !2403, !noalias !2402
  %invariant.op470.i = sub i64 %.sroa.0197.0, %i.aq ; 3 uses
  %invariant.op.i = sub i64 %.sroa.0.0, %i.an     ; 3 uses
  br label %.lr.ph469.split.i

.lr.ph469.split.i:                                ; preds = %.lr.ph469.i, %..loopexit39_crit_edge.split.us.i
  %.sroa.0102.0468.i = phi i64 [ %i.he, %..loopexit39_crit_edge.split.us.i ], [ %i.gk, %.lr.ph469.i ] ; 2 uses
  %i.he = add i64 %.sroa.0102.0468.i, -1          ; 4 uses
  %i.hf = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2402

._crit_edge496.i:                                 ; preds = %bb.cz
  br i1 %i.mu, label %bb.bk, label %bb.bm

.lr.ph495.i:                                      ; preds = %..loopexit39_crit_edge.split.us.i, %bb.cz
  %.sroa.05.0.not494.i = phi i1 [ false, %bb.cz ], [ true, %..loopexit39_crit_edge.split.us.i ] ; 3 uses
  %.sroa.09.0493.i = phi i64 [ %.sroa.09.3.i, %bb.cz ], [ 0, %..loopexit39_crit_edge.split.us.i ] ; 12 uses
  %.sroa.038.0492.i = phi i64 [ %.sroa.038.3.i, %bb.cz ], [ 0, %..loopexit39_crit_edge.split.us.i ] ; 17 uses
  %i.hg = and i64 %.sroa.038.0492.i, 1023
  %i.hh = icmp eq i64 %i.hg, 0
  %or.cond170.i = select i1 %.sroa.05.0.not494.i, i1 %i.hh, i1 false ; 2 uses
  br i1 %or.cond170.i, label %bb.bq, label %bb.bp

bb.bk:                                            ; preds = %._crit_edge496.i
  %i.hi = add i64 %.sroa.038.3.i, %.sroa.0.0      ; 2 uses
  %i.hj = sub nuw i64 %i.gj, %.sroa.038.3.i
  %i.hk = add i64 %.sroa.09.3.i, %.sroa.0197.0    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.hl = load ptr, ptr %.val51, align 8, !alias.scope !2405, !noalias !2406, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 120 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 136 ; 2 uses
  %i.ho = load i64, ptr %i.hn, align 8, !alias.scope !2407, !noalias !2402, !noundef !5 ; 3 uses
  %i.hp = load i64, ptr %i.hm, align 8, !range !10, !alias.scope !2407, !noalias !2402, !noundef !5
  %i.hq = icmp eq i64 %i.ho, %i.hp
  br i1 %i.hq, label %bb.bl, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hm)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2402

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i: ; preds = %bb.bl, %bb.bk
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hl, i64 128
  %i.hs = load ptr, ptr %i.hr, align 8, !alias.scope !2407, !noalias !2402, !nonnull !5, !noundef !5
  %i.ht = getelementptr inbounds nuw [40 x i8], ptr %i.hs, i64 %i.ho ; 4 uses
  store i64 1, ptr %i.ht, align 8, !noalias !2402
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store i64 %i.hi, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !2402
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  store i64 %i.hj, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !2402
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  store i64 %i.hk, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !2402
  %i.hu = add i64 %i.ho, 1
  store i64 %i.hu, ptr %i.hn, align 8, !alias.scope !2407, !noalias !2402
  br i1 %i.mt, label %bb.bn, label %.sink.split.i.thread

bb.bm:                                            ; preds = %._crit_edge496.i
  br i1 %i.mt, label %._crit_edge899, label %.sink.split.i.thread

._crit_edge899:                                   ; preds = %bb.bm
  %.pre900 = add i64 %.sroa.038.3.i, %.sroa.0.0
  %.pre902 = add i64 %.sroa.09.3.i, %.sroa.0197.0
  br label %bb.bn

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dn, %bb.bq, %bb.cb, %bb.co, %bb.da, %bb.dc, %bb.cc, %bb.cp, %.lr.ph469.split.i, %bb.dy, %.invoke.i, %bb.bo, %bb.bl
  %lpad.loopexit.split-lp1585 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.d) #26
          to label %common.resume unwind label %bb.ea, !noalias !2402

bb.bn:                                            ; preds = %._crit_edge899, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i
  %.pre-phi903 = phi i64 [ %.pre902, %._crit_edge899 ], [ %i.hk, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i ]
  %.pre-phi901 = phi i64 [ %.pre900, %._crit_edge899 ], [ %i.hi, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i ]
  %i.hv = sub nuw i64 %i.gk, %.sroa.09.3.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.hw = load ptr, ptr %.val51, align 8, !alias.scope !2408, !noalias !2409, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 120 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 136 ; 2 uses
  %i.hz = load i64, ptr %i.hy, align 8, !alias.scope !2410, !noalias !2402, !noundef !5 ; 3 uses
  %i.ia = load i64, ptr %i.hx, align 8, !range !10, !alias.scope !2410, !noalias !2402, !noundef !5
  %i.ib = icmp eq i64 %i.hz, %i.ia
  br i1 %i.ib, label %bb.bo, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hx)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2402

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i: ; preds = %bb.bo, %bb.bn
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hw, i64 128
  %i.id = load ptr, ptr %i.ic, align 8, !alias.scope !2410, !noalias !2402, !nonnull !5, !noundef !5
  %i.ie = getelementptr inbounds nuw [40 x i8], ptr %i.id, i64 %i.hz ; 4 uses
  store i64 2, ptr %i.ie, align 8, !noalias !2402
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store i64 %.pre-phi901, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !2402
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  store i64 %.pre-phi903, ptr %.sroa.513.0..sroa_idx.i, align 8, !noalias !2402
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  store i64 %i.hv, ptr %.sroa.614.0..sroa_idx.i, align 8, !noalias !2402
  %i.if = add i64 %i.hz, 1
  store i64 %i.if, ptr %i.hy, align 8, !alias.scope !2410, !noalias !2402
  br label %.sink.split.i.thread

.sink.split.i.thread:                             ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i, %bb.bm, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.d), !noalias !2402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2402
  br label %bb.ba

.sink.split.i:                                    ; preds = %.loopexit24.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !2402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2402
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread

bb.bp:                                            ; preds = %bb.br, %.lr.ph495.i
  %i.ig = mul i64 %.sroa.09.0493.i, %i.gs         ; 4 uses
  %i.ih = add i64 %.sroa.038.0492.i, %.sroa.0.0   ; 4 uses
  %i.ii = add i64 %.sroa.09.0493.i, %.sroa.0197.0 ; 4 uses
  %i.ij = sub i64 %i.ii, %i.aq                    ; 3 uses
  %i.ik = icmp ult i64 %i.ij, %i.ap
  br i1 %i.ik, label %bb.bs, label %.invoke.i

.invoke.i:                                        ; preds = %bb.dw, %bb.du, %bb.ds, %bb.dr, %bb.dp, %bb.by, %bb.bw, %bb.bv, %bb.bu, %bb.bs, %bb.bp, %bb.cx, %bb.cv, %bb.cu, %bb.ct, %bb.cr, %bb.ck, %bb.ci, %bb.ch, %bb.cg, %bb.ce, %bb.de, %bb.db, %bb.dh, %bb.dg, %bb.dz, %.lr.ph.split.i
  %i.il = phi i64 [ %i.kz, %bb.ck ], [ %.reass.i, %bb.dz ], [ %.reass.i, %.lr.ph.split.i ], [ %i.mn, %bb.cx ], [ %i.ij, %bb.bp ], [ %i.ny, %bb.dh ], [ %i.ap, %bb.db ], [ %i.nr, %bb.dg ], [ %i.am, %bb.de ], [ %i.kj, %bb.ce ], [ %i.kn, %bb.cg ], [ %i.kr, %bb.ci ], [ %i.kp, %bb.ch ], [ %i.lv, %bb.cr ], [ %i.lz, %bb.ct ], [ %i.mf, %bb.cv ], [ %i.mb, %bb.cu ], [ %i.iu, %bb.bu ], [ %i.iw, %bb.bv ], [ %i.jm, %bb.by ], [ %i.iq, %bb.bs ], [ %i.jb, %bb.bw ], [ %i.ov, %bb.dr ], [ %.reass.us.i, %bb.dp ], [ %i.po, %bb.dw ], [ %i.oz, %bb.ds ], [ %i.pf, %bb.du ]
  %i.im = phi i64 [ %.pre729.i.a, %bb.ck ], [ %i.ap, %bb.dz ], [ %i.ap, %.lr.ph.split.i ], [ %.pre727.i, %bb.cx ], [ %i.ap, %bb.bp ], [ %i.nt, %bb.dh ], [ %i.ap, %bb.db ], [ %i.nt, %bb.dg ], [ %i.am, %bb.de ], [ %i.am, %bb.ce ], [ %.pre729.i.a, %bb.cg ], [ %.pre729.i.a, %bb.ci ], [ %.pre729.i.a, %bb.ch ], [ %i.ap, %bb.cr ], [ %.pre727.i, %bb.ct ], [ %.pre727.i, %bb.cv ], [ %.pre727.i, %bb.cu ], [ %.pre725.i, %bb.bu ], [ %.pre725.i, %bb.bv ], [ %.pre725.i, %bb.by ], [ %i.am, %bb.bs ], [ %.pre725.i, %bb.bw ], [ %i.ox, %bb.dr ], [ %i.am, %bb.dp ], [ %i.pn, %bb.dw ], [ %i.ox, %bb.ds ], [ %i.pg, %bb.du ]
  %i.in = phi ptr [ @63, %bb.ck ], [ @74, %bb.dz ], [ @74, %.lr.ph.split.i ], [ @69, %bb.cx ], [ @52, %bb.bp ], [ @73, %bb.dh ], [ @70, %bb.db ], [ @72, %bb.dg ], [ @71, %bb.de ], [ @59, %bb.ce ], [ @60, %bb.cg ], [ @61, %bb.ci ], [ @62, %bb.ch ], [ @64, %bb.cr ], [ @66, %bb.ct ], [ @67, %bb.cv ], [ @68, %bb.cu ], [ @54, %bb.bu ], [ @56, %bb.bv ], [ @57, %bb.by ], [ @53, %bb.bs ], [ @55, %bb.bw ], [ @76, %bb.dr ], [ @75, %bb.dp ], [ @79, %bb.dw ], [ @77, %bb.ds ], [ @78, %bb.du ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.il, i64 noundef %i.im, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.in) #28
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2402

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.bq:                                            ; preds = %.lr.ph495.i
  %i.io = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.br unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2402

bb.br:                                            ; preds = %bb.bq
  br i1 %i.io, label %.loopexit24.i, label %bb.bp

bb.bs:                                            ; preds = %bb.bp
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ij ; 2 uses
  %i.iq = sub i64 %i.ih, %i.an                    ; 3 uses
  %i.ir = icmp ult i64 %i.iq, %i.am
  br i1 %i.ir, label %bb.bt, label %.invoke.i

bb.bt:                                            ; preds = %bb.bs
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.iq ; 2 uses
  %.val210.i = load i32, ptr %i.ip, align 4, !noalias !2402, !noundef !5
  %.val211.i = load i32, ptr %i.is, align 4, !noalias !2402, !noundef !5
  %i.it = icmp eq i32 %.val210.i, %.val211.i
  %.pre.i = load ptr, ptr %i.hc, align 8, !noalias !2402 ; 4 uses
  %.pre725.i = load i64, ptr %i.hd, align 8, !noalias !2402 ; 8 uses
  br i1 %i.it, label %bb.bu, label %._crit_edge731.i

._crit_edge731.i:                                 ; preds = %bb.bt
  %.pre732.i = add nuw i64 %.sroa.09.0493.i, 1
  %.pre733.i = mul i64 %.pre732.i, %i.gs
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.iu = add i64 %i.ig, %.sroa.038.0492.i        ; 3 uses
  %i.iv = icmp ult i64 %i.iu, %.pre725.i
  br i1 %i.iv, label %bb.bw, label %.invoke.i

bb.bv:                                            ; preds = %bb.bx, %._crit_edge731.i
  %.pre-phi734.i = phi i64 [ %.pre733.i, %._crit_edge731.i ], [ %i.iz, %bb.bx ] ; 3 uses
  %i.iw = add i64 %.pre-phi734.i, %.sroa.038.0492.i ; 3 uses
  %i.ix = icmp ult i64 %i.iw, %.pre725.i
  br i1 %i.ix, label %bb.by, label %.invoke.i

bb.bw:                                            ; preds = %bb.bu
  %i.iy = add nuw i64 %.sroa.09.0493.i, 1
  %i.iz = mul i64 %i.iy, %i.gs                    ; 2 uses
  %i.ja = add nuw i64 %.sroa.038.0492.i, 1
  %i.jb = add i64 %i.ja, %i.iz                    ; 3 uses
  %i.jc = icmp ult i64 %i.jb, %.pre725.i
  br i1 %i.jc, label %bb.bx, label %.invoke.i

bb.bx:                                            ; preds = %bb.bw
  %i.jd = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.iu
  %i.je = load i8, ptr %i.jd, align 1, !noalias !2402, !noundef !5
  %i.jf = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.jb
  %i.jg = load i8, ptr %i.jf, align 1, !noalias !2402, !noundef !5
  %i.jh = add i8 %i.jg, 1
  %i.ji = icmp eq i8 %i.je, %i.jh
  br i1 %i.ji, label %.preheader.i, label %bb.bv

.preheader.i:                                     ; preds = %bb.bx
  %i.jj = icmp ult i64 %.sroa.09.0493.i, %i.gk
  %i.jk = icmp ult i64 %.sroa.038.0492.i, %i.gj
  %or.cond177478.i = select i1 %i.jj, i1 %i.jk, i1 false
  br i1 %or.cond177478.i, label %.lr.ph481.i, label %._crit_edge482.i

bb.by:                                            ; preds = %bb.bv
  %i.jl = add nuw i64 %.sroa.038.0492.i, 1        ; 3 uses
  %i.jm = add i64 %i.jl, %i.ig                    ; 3 uses
  %i.jn = icmp ult i64 %i.jm, %.pre725.i
  br i1 %i.jn, label %bb.bz, label %.invoke.i

bb.bz:                                            ; preds = %bb.by
  %i.jo = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.iw
  %i.jp = load i8, ptr %i.jo, align 1, !noalias !2402, !noundef !5
  %i.jq = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.jm
  %i.jr = load i8, ptr %i.jq, align 1, !noalias !2402, !noundef !5
  %.not164.i = icmp ult i8 %i.jp, %i.jr
  br i1 %.not164.i, label %.preheader25.i, label %.preheader30.i

.preheader30.i:                                   ; preds = %bb.bz
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.09.0493.i, i64 %i.gk) ; 3 uses
  %exitcond.not.i1542.not = icmp ult i64 %.sroa.09.0493.i, %i.gk
  br i1 %exitcond.not.i1542.not, label %.lr.ph1544, label %._crit_edge1545

.preheader25.i:                                   ; preds = %bb.bz
  %i.js = icmp ult i64 %.sroa.038.0492.i, %i.gj
  br i1 %i.js, label %.lr.ph473.i, label %._crit_edge.i

.lr.ph473.i:                                      ; preds = %.preheader25.i
  %i.jt = add i64 %.pre-phi734.i, 1
  %i.ju = add i64 %i.ig, 1
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cm, %.lr.ph473.i
  %.sroa.038.1472.i = phi i64 [ %.sroa.038.0492.i, %.lr.ph473.i ], [ %i.lg, %bb.cm ] ; 9 uses
  %i.jv = and i64 %.sroa.038.1472.i, 1023
  %i.jw = icmp eq i64 %i.jv, 0
  %or.cond173.i = and i1 %.sroa.05.0.not494.i, %i.jw
  br i1 %or.cond173.i, label %bb.cc, label %bb.ce

._crit_edge.i:                                    ; preds = %bb.cm, %bb.cl, %bb.cj, %.preheader25.i
  %.sroa.038.1.lcssa.i = phi i64 [ %.sroa.038.0492.i, %.preheader25.i ], [ %i.gj, %bb.cm ], [ %.sroa.038.1472.i, %bb.cl ], [ %.sroa.038.1472.i, %bb.cj ] ; 2 uses
  %i.jx = sub nuw i64 %.sroa.038.1.lcssa.i, %.sroa.038.0492.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.jy = load ptr, ptr %.val51, align 8, !alias.scope !2411, !noalias !2412, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 120 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 136 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8, !alias.scope !2413, !noalias !2402, !noundef !5 ; 3 uses
  %i.kc = load i64, ptr %i.jz, align 8, !range !10, !alias.scope !2413, !noalias !2402, !noundef !5
  %i.kd = icmp eq i64 %i.kb, %i.kc
  br i1 %i.kd, label %bb.cb, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i

bb.cb:                                            ; preds = %._crit_edge.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jz)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2402

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.cb, %._crit_edge.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jy, i64 128
  %i.kf = load ptr, ptr %i.ke, align 8, !alias.scope !2413, !noalias !2402, !nonnull !5, !noundef !5
  %i.kg = getelementptr inbounds nuw [40 x i8], ptr %i.kf, i64 %i.kb ; 4 uses
  store i64 1, ptr %i.kg, align 8, !noalias !2402
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store i64 %i.ih, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !2402
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  store i64 %i.jx, ptr %.sroa.58.0..sroa_idx.i, align 8, !noalias !2402
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  store i64 %i.ii, ptr %.sroa.69.0..sroa_idx.i, align 8, !noalias !2402
  %i.kh = add i64 %i.kb, 1
  store i64 %i.kh, ptr %i.ka, align 8, !alias.scope !2413, !noalias !2402
  br label %bb.cz

bb.cc:                                            ; preds = %bb.ca
  %i.ki = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2402

bb.cd:                                            ; preds = %bb.cc
  br i1 %i.ki, label %.loopexit24.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.ca
  %i.kj = add i64 %.sroa.038.1472.i, %invariant.op.i ; 3 uses
  %i.kk = icmp ult i64 %i.kj, %i.am
  br i1 %i.kk, label %bb.cf, label %.invoke.i

bb.cf:                                            ; preds = %bb.ce
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.kj
  %.val208.i = load i32, ptr %i.ip, align 4, !noalias !2402, !noundef !5
  %.val209.i = load i32, ptr %i.kl, align 4, !noalias !2402, !noundef !5
  %i.km = icmp eq i32 %.val208.i, %.val209.i
  %.pre728.i.a = load ptr, ptr %i.hc, align 8, !noalias !2402 ; 4 uses
  %.pre729.i.a = load i64, ptr %i.hd, align 8, !noalias !2402 ; 8 uses
  br i1 %i.km, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.kn = add i64 %.sroa.038.1472.i, %i.ig        ; 3 uses
  %i.ko = icmp ult i64 %i.kn, %.pre729.i.a
  br i1 %i.ko, label %bb.ci, label %.invoke.i

bb.ch:                                            ; preds = %bb.cj, %bb.cf
  %i.kp = add i64 %.sroa.038.1472.i, %.pre-phi734.i ; 3 uses
  %i.kq = icmp ult i64 %i.kp, %.pre729.i.a
  br i1 %i.kq, label %bb.ck, label %.invoke.i

bb.ci:                                            ; preds = %bb.cg
  %i.kr = add i64 %i.jt, %.sroa.038.1472.i        ; 3 uses
  %i.ks = icmp ult i64 %i.kr, %.pre729.i.a
  br i1 %i.ks, label %bb.cj, label %.invoke.i

bb.cj:                                            ; preds = %bb.ci
  %i.kt = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.kn
  %i.ku = load i8, ptr %i.kt, align 1, !noalias !2402, !noundef !5
  %i.kv = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.kr
  %i.kw = load i8, ptr %i.kv, align 1, !noalias !2402, !noundef !5
  %i.kx = add i8 %i.kw, 1
  %i.ky = icmp eq i8 %i.ku, %i.kx
  br i1 %i.ky, label %._crit_edge.i, label %bb.ch

bb.ck:                                            ; preds = %bb.ch
  %i.kz = add i64 %i.ju, %.sroa.038.1472.i        ; 3 uses
  %i.la = icmp ult i64 %i.kz, %.pre729.i.a
  br i1 %i.la, label %bb.cl, label %.invoke.i

bb.cl:                                            ; preds = %bb.ck
  %i.lb = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.kp
  %i.lc = load i8, ptr %i.lb, align 1, !noalias !2402, !noundef !5
  %i.ld = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.kz
  %i.le = load i8, ptr %i.ld, align 1, !noalias !2402, !noundef !5
  %i.lf = icmp ult i8 %i.lc, %i.le
  br i1 %i.lf, label %bb.cm, label %._crit_edge.i

bb.cm:                                            ; preds = %bb.cl
  %i.lg = add nuw i64 %.sroa.038.1472.i, 1        ; 2 uses
  %i.lh = icmp ult i64 %i.lg, %i.gj
  br i1 %i.lh, label %bb.ca, label %._crit_edge.i

bb.cn:                                            ; preds = %bb.cy
  %exitcond.not.i = icmp eq i64 %.pre-phi736.i, %umax.i
  br i1 %exitcond.not.i, label %._crit_edge1545, label %.lr.ph1544

.lr.ph1544:                                       ; preds = %.preheader30.i, %bb.cn
  %.sroa.09.1.i1543 = phi i64 [ %.pre-phi736.i, %bb.cn ], [ %.sroa.09.0493.i, %.preheader30.i ] ; 6 uses
  br i1 %or.cond170.i, label %bb.cp, label %bb.cr

._crit_edge1545:                                  ; preds = %bb.cn, %bb.cw, %bb.cy, %.preheader30.i
  %.sroa.09.1.lcssa.i = phi i64 [ %umax.i, %.preheader30.i ], [ %umax.i, %bb.cn ], [ %.sroa.09.1.i1543, %bb.cw ], [ %.sroa.09.1.i1543, %bb.cy ] ; 2 uses
  %i.li = sub i64 %.sroa.09.1.lcssa.i, %.sroa.09.0493.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.lj = load ptr, ptr %.val51, align 8, !alias.scope !2414, !noalias !2415, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 120 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 136 ; 2 uses
  %i.lm = load i64, ptr %i.ll, align 8, !alias.scope !2416, !noalias !2402, !noundef !5 ; 3 uses
  %i.ln = load i64, ptr %i.lk, align 8, !range !10, !alias.scope !2416, !noalias !2402, !noundef !5
  %i.lo = icmp eq i64 %i.lm, %i.ln
  br i1 %i.lo, label %bb.co, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i

bb.co:                                            ; preds = %._crit_edge1545
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lk)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2402

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.co, %._crit_edge1545
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lj, i64 128
  %i.lq = load ptr, ptr %i.lp, align 8, !alias.scope !2416, !noalias !2402, !nonnull !5, !noundef !5
  %i.lr = getelementptr inbounds nuw [40 x i8], ptr %i.lq, i64 %i.lm ; 4 uses
  store i64 2, ptr %i.lr, align 8, !noalias !2402
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  store i64 %i.ih, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !2402
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  store i64 %i.ii, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !2402
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lr, i64 24
  store i64 %i.li, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !2402
  %i.ls = add i64 %i.lm, 1
  store i64 %i.ls, ptr %i.ll, align 8, !alias.scope !2416, !noalias !2402
  br label %bb.cz

bb.cp:                                            ; preds = %.lr.ph1544
  %i.lt = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.cq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2402

bb.cq:                                            ; preds = %bb.cp
  br i1 %i.lt, label %.loopexit24.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %.lr.ph1544
  %i.lu = mul i64 %.sroa.09.1.i1543, %i.gs        ; 2 uses
  %i.lv = add i64 %.sroa.09.1.i1543, %invariant.op470.i ; 3 uses
  %i.lw = icmp ult i64 %i.lv, %i.ap
  br i1 %i.lw, label %bb.cs, label %.invoke.i

bb.cs:                                            ; preds = %bb.cr
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.lv
  %.val206.i = load i32, ptr %i.lx, align 4, !noalias !2402, !noundef !5
  %.val207.i = load i32, ptr %i.is, align 4, !noalias !2402, !noundef !5
  %i.ly = icmp eq i32 %.val206.i, %.val207.i
  %.pre726.i = load ptr, ptr %i.hc, align 8, !noalias !2402 ; 4 uses
  %.pre727.i = load i64, ptr %i.hd, align 8, !noalias !2402 ; 8 uses
  br i1 %i.ly, label %bb.ct, label %._crit_edge730.i

._crit_edge730.i:                                 ; preds = %bb.cs
  %.pre735.i = add i64 %.sroa.09.1.i1543, 1       ; 2 uses
  %.pre737.i = mul i64 %.pre735.i, %i.gs
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.lz = add i64 %i.lu, %.sroa.038.0492.i        ; 3 uses
  %i.ma = icmp ult i64 %i.lz, %.pre727.i
  br i1 %i.ma, label %bb.cv, label %.invoke.i

bb.cu:                                            ; preds = %bb.cw, %._crit_edge730.i
  %.pre-phi738.i.a = phi i64 [ %.pre737.i, %._crit_edge730.i ], [ %i.me, %bb.cw ]
  %.pre-phi736.i = phi i64 [ %.pre735.i, %._crit_edge730.i ], [ %i.md, %bb.cw ] ; 2 uses
  %i.mb = add i64 %.pre-phi738.i.a, %.sroa.038.0492.i ; 3 uses
  %i.mc = icmp ult i64 %i.mb, %.pre727.i
  br i1 %i.mc, label %bb.cx, label %.invoke.i

bb.cv:                                            ; preds = %bb.ct
  %i.md = add i64 %.sroa.09.1.i1543, 1            ; 2 uses
  %i.me = mul i64 %i.md, %i.gs                    ; 2 uses
  %i.mf = add i64 %i.me, %i.jl                    ; 3 uses
  %i.mg = icmp ult i64 %i.mf, %.pre727.i
  br i1 %i.mg, label %bb.cw, label %.invoke.i

bb.cw:                                            ; preds = %bb.cv
  %i.mh = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.lz
  %i.mi = load i8, ptr %i.mh, align 1, !noalias !2402, !noundef !5
  %i.mj = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.mf
  %i.mk = load i8, ptr %i.mj, align 1, !noalias !2402, !noundef !5
  %i.ml = add i8 %i.mk, 1
  %i.mm = icmp eq i8 %i.mi, %i.ml
  br i1 %i.mm, label %._crit_edge1545, label %bb.cu

bb.cx:                                            ; preds = %bb.cu
  %i.mn = add i64 %i.lu, %i.jl                    ; 3 uses
  %i.mo = icmp ult i64 %i.mn, %.pre727.i
  br i1 %i.mo, label %bb.cy, label %.invoke.i

bb.cy:                                            ; preds = %bb.cx
  %i.mp = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.mb
  %i.mq = load i8, ptr %i.mp, align 1, !noalias !2402, !noundef !5
  %i.mr = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.mn
  %i.ms = load i8, ptr %i.mr, align 1, !noalias !2402, !noundef !5
  %.not167.i = icmp ult i8 %i.mq, %i.ms
  br i1 %.not167.i, label %._crit_edge1545, label %bb.cn

bb.cz:                                            ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i
  %.sroa.038.3.i = phi i64 [ %.sroa.038.0492.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i ], [ %.sroa.038.1.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i ], [ %.sroa.038.4.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i ] ; 5 uses
  %.sroa.09.3.i = phi i64 [ %.sroa.09.1.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i ], [ %.sroa.09.0493.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i ], [ %.sroa.09.4.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i ] ; 5 uses
  %i.mt = icmp ult i64 %.sroa.09.3.i, %i.gk       ; 3 uses
  %i.mu = icmp ult i64 %.sroa.038.3.i, %i.gj      ; 2 uses
  %or.cond.i77 = select i1 %i.mt, i1 %i.mu, i1 false
  br i1 %or.cond.i77, label %.lr.ph495.i, label %._crit_edge496.i

._crit_edge482.i:                                 ; preds = %bb.dj, %bb.di, %bb.df, %.preheader.i
  %.sroa.038.4.lcssa.i = phi i64 [ %.sroa.038.0492.i, %.preheader.i ], [ %i.nx, %bb.dj ], [ %.sroa.038.4479.i, %bb.df ], [ %.sroa.038.4479.i, %bb.di ] ; 2 uses
  %.sroa.09.4.lcssa.i = phi i64 [ %.sroa.09.0493.i, %.preheader.i ], [ %i.nv, %bb.dj ], [ %.sroa.09.4480.i, %bb.df ], [ %.sroa.09.4480.i, %bb.di ]
  %i.mv = sub nuw i64 %.sroa.038.4.lcssa.i, %.sroa.038.0492.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.mw = load ptr, ptr %.val51, align 8, !alias.scope !2417, !noalias !2418, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 120 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 136 ; 2 uses
  %i.mz = load i64, ptr %i.my, align 8, !alias.scope !2419, !noalias !2402, !noundef !5 ; 3 uses
  %i.na = load i64, ptr %i.mx, align 8, !range !10, !alias.scope !2419, !noalias !2402, !noundef !5
  %i.nb = icmp eq i64 %i.mz, %i.na
  br i1 %i.nb, label %bb.da, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i

bb.da:                                            ; preds = %._crit_edge482.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mx)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2402

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.da, %._crit_edge482.i
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mw, i64 128
  %i.nd = load ptr, ptr %i.nc, align 8, !alias.scope !2419, !noalias !2402, !nonnull !5, !noundef !5
  %i.ne = getelementptr inbounds nuw [40 x i8], ptr %i.nd, i64 %i.mz ; 4 uses
  store i64 0, ptr %i.ne, align 8, !noalias !2402
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  store i64 %i.ih, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2402
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  store i64 %i.ii, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2402
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ne, i64 24
  store i64 %i.mv, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !2402
  %i.nf = add i64 %i.mz, 1
  store i64 %i.nf, ptr %i.my, align 8, !alias.scope !2419, !noalias !2402
  br label %bb.cz

.lr.ph481.i:                                      ; preds = %.preheader.i, %bb.dj
  %.sroa.09.4480.i = phi i64 [ %i.nv, %bb.dj ], [ %.sroa.09.0493.i, %.preheader.i ] ; 5 uses
  %.sroa.038.4479.i = phi i64 [ %i.nx, %bb.dj ], [ %.sroa.038.0492.i, %.preheader.i ] ; 6 uses
  %i.ng = and i64 %.sroa.038.4479.i, 1023
  %i.nh = icmp eq i64 %i.ng, 0
  %or.cond180.i = select i1 %.sroa.05.0.not494.i, i1 %i.nh, i1 false
  br i1 %or.cond180.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.dd, %.lr.ph481.i
  %i.ni = mul i64 %.sroa.09.4480.i, %i.gs
  %i.nj = add i64 %.sroa.09.4480.i, %invariant.op470.i ; 2 uses
  %i.nk = icmp ult i64 %i.nj, %i.ap
  br i1 %i.nk, label %bb.de, label %.invoke.i

bb.dc:                                            ; preds = %.lr.ph481.i
  %i.nl = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2402

bb.dd:                                            ; preds = %bb.dc
  br i1 %i.nl, label %.loopexit24.i, label %bb.db

bb.de:                                            ; preds = %bb.db
  %i.nm = add i64 %.sroa.038.4479.i, %invariant.op.i ; 2 uses
  %i.nn = icmp ult i64 %i.nm, %i.am
  br i1 %i.nn, label %bb.df, label %.invoke.i

bb.df:                                            ; preds = %bb.de
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.nj
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.nm
  %.val204.i = load i32, ptr %i.no, align 4, !noalias !2402, !noundef !5
  %.val205.i = load i32, ptr %i.np, align 4, !noalias !2402, !noundef !5
  %i.nq = icmp eq i32 %.val204.i, %.val205.i
  br i1 %i.nq, label %bb.dg, label %._crit_edge482.i

bb.dg:                                            ; preds = %bb.df
  %i.nr = add i64 %i.ni, %.sroa.038.4479.i        ; 3 uses
  %i.ns = load ptr, ptr %i.hc, align 8, !noalias !2402, !nonnull !5, !noundef !5 ; 2 uses
  %i.nt = load i64, ptr %i.hd, align 8, !noalias !2402, !noundef !5 ; 4 uses
  %i.nu = icmp ult i64 %i.nr, %i.nt
  br i1 %i.nu, label %bb.dh, label %.invoke.i

bb.dh:                                            ; preds = %bb.dg
  %i.nv = add nuw i64 %.sroa.09.4480.i, 1         ; 4 uses
  %i.nw = mul i64 %i.nv, %i.gs
  %i.nx = add nuw i64 %.sroa.038.4479.i, 1        ; 4 uses
  %i.ny = add i64 %i.nx, %i.nw                    ; 3 uses
  %i.nz = icmp ult i64 %i.ny, %i.nt
  br i1 %i.nz, label %bb.di, label %.invoke.i

bb.di:                                            ; preds = %bb.dh
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.nr
  %i.ob = load i8, ptr %i.oa, align 1, !noalias !2402, !noundef !5
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.ny
  %i.od = load i8, ptr %i.oc, align 1, !noalias !2402, !noundef !5
  %i.oe = add i8 %i.od, 1
  %i.of = icmp eq i8 %i.ob, %i.oe
  br i1 %i.of, label %bb.dj, label %._crit_edge482.i

bb.dj:                                            ; preds = %bb.di
  %i.og = icmp ult i64 %i.nv, %i.gk
  %i.oh = icmp ult i64 %i.nx, %i.gj
  %or.cond177.i = and i1 %i.og, %i.oh
  br i1 %or.cond177.i, label %.lr.ph481.i, label %._crit_edge482.i

.loopexit24.i:                                    ; preds = %bb.dm, %bb.do, %bb.br, %bb.cq, %bb.cd, %bb.dd, %bb.dz
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.sink.split.i unwind label %bb.dk, !noalias !2402

bb.dk:                                            ; preds = %.loopexit24.i
  %i.oi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.dl, !noalias !2402

bb.dl:                                            ; preds = %bb.dk
  %i.oj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !2402
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ge, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dk
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp1585, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.oi, %bb.dk ], [ %i.xl, %bb.ge ], [ %lpad.loopexit.split-lp1630, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

bb.dm:                                            ; preds = %.lr.ph469.split.i
  br i1 %i.hf, label %.loopexit24.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.dm
  %i.ok = mul i64 %i.he, %i.gs                    ; 2 uses
  %i.ol = mul i64 %.sroa.0102.0468.i, %i.gs       ; 2 uses
  %.reass.i = add i64 %i.he, %invariant.op470.i   ; 4 uses
  %i.om = icmp ult i64 %.reass.i, %i.ap
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.reass.i
  %.fr.i = freeze i1 %i.om
  br i1 %.fr.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.dx
  %.sroa.0105.0432.us.i = phi i64 [ %i.oo, %bb.dx ], [ %i.gj, %.lr.ph.i ] ; 3 uses
  %i.oo = add i64 %.sroa.0105.0432.us.i, -1       ; 6 uses
  %i.op = and i64 %i.oo, 1023
  %i.oq = icmp eq i64 %i.op, 0
  br i1 %i.oq, label %bb.dn, label %bb.dp

bb.dn:                                            ; preds = %.lr.ph.split.us.i
  %i.or = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.do unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2402

bb.do:                                            ; preds = %bb.dn
  br i1 %i.or, label %.loopexit24.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do, %.lr.ph.split.us.i
  %.reass.us.i = add i64 %i.oo, %invariant.op.i   ; 3 uses
  %i.os = icmp ult i64 %.reass.us.i, %i.am
  br i1 %i.os, label %bb.dq, label %.invoke.i

bb.dq:                                            ; preds = %bb.dp
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.reass.us.i
  %.val.us.i = load i32, ptr %i.on, align 4, !noalias !2402, !noundef !5
  %.val203.us.i = load i32, ptr %i.ot, align 4, !noalias !2402, !noundef !5
  %i.ou = icmp eq i32 %.val.us.i, %.val203.us.i
  br i1 %i.ou, label %bb.du, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ov = add i64 %i.oo, %i.ol                    ; 3 uses
  %i.ow = load ptr, ptr %i.hc, align 8, !noalias !2402, !nonnull !5, !noundef !5 ; 3 uses
  %i.ox = load i64, ptr %i.hd, align 8, !noalias !2402, !noundef !5 ; 5 uses
  %i.oy = icmp ult i64 %i.ov, %i.ox
  br i1 %i.oy, label %bb.ds, label %.invoke.i

bb.ds:                                            ; preds = %bb.dr
  %i.oz = add i64 %.sroa.0105.0432.us.i, %i.ok    ; 3 uses
  %i.pa = icmp ult i64 %i.oz, %i.ox
  br i1 %i.pa, label %bb.dt, label %.invoke.i

bb.dt:                                            ; preds = %bb.ds
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.ov
  %i.pc = load i8, ptr %i.pb, align 1, !noalias !2402, !noundef !5
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.oz
  %i.pe = load i8, ptr %i.pd, align 1, !noalias !2402, !noundef !5
  %.sroa.0.0.i.us.i = call noundef i8 @llvm.umax.i8(i8 %i.pe, i8 %i.pc)
  br label %bb.dw

bb.du:                                            ; preds = %bb.dq
  %i.pf = add i64 %.sroa.0105.0432.us.i, %i.ol    ; 3 uses
  %i.pg = load i64, ptr %i.hd, align 8, !noalias !2402, !noundef !5 ; 3 uses
  %i.ph = icmp ult i64 %i.pf, %i.pg
  br i1 %i.ph, label %bb.dv, label %.invoke.i

bb.dv:                                            ; preds = %bb.du
  %i.pi = load ptr, ptr %i.hc, align 8, !noalias !2402, !nonnull !5, !noundef !5 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 %i.pf
  %i.pk = load i8, ptr %i.pj, align 1, !noalias !2402, !noundef !5
  %i.pl = add i8 %i.pk, 1
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.dt
  %i.pm = phi ptr [ %i.pi, %bb.dv ], [ %i.ow, %bb.dt ]
  %i.pn = phi i64 [ %i.pg, %bb.dv ], [ %i.ox, %bb.dt ] ; 2 uses
  %.sroa.04.0.us.i = phi i8 [ %i.pl, %bb.dv ], [ %.sroa.0.0.i.us.i, %bb.dt ]
  %i.po = add i64 %i.oo, %i.ok                    ; 3 uses
  %i.pp = icmp ult i64 %i.po, %i.pn
  br i1 %i.pp, label %bb.dx, label %.invoke.i

bb.dx:                                            ; preds = %bb.dw
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.po
  store i8 %.sroa.04.0.us.i, ptr %i.pq, align 1, !noalias !2402
  %.not168.us.i = icmp eq i64 %i.oo, 0
  br i1 %.not168.us.i, label %..loopexit39_crit_edge.split.us.i, label %.lr.ph.split.us.i

..loopexit39_crit_edge.split.us.i:                ; preds = %bb.dx
  %.not.i78 = icmp eq i64 %i.he, 0
  br i1 %.not.i78, label %.lr.ph495.i, label %.lr.ph469.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.pr = and i64 %i.gj, 1023
  %i.ps = icmp eq i64 %i.pr, 1
  br i1 %i.ps, label %bb.dy, label %.invoke.i

bb.dy:                                            ; preds = %.lr.ph.split.i
  %i.pt = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2402

bb.dz:                                            ; preds = %bb.dy
  br i1 %i.pt, label %.loopexit24.i, label %.invoke.i

bb.ea:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.pu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !2402
  unreachable

bb.eb:                                            ; preds = %bb.bg
  br i1 %i.gr, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.pv = add i64 %i.gk, 1                        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2420
  %i.pw = add i64 %i.gj, 1
  %i.px = mul i64 %i.pw, %i.pv                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2421)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2422
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.px, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !2422
  %i.py = load i64, ptr %i.a, align 8, !range !9, !noalias !2422, !noundef !5
  %i.pz = trunc nuw i64 %i.py to i1
  %i.qa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.qb = load i64, ptr %i.qa, align 8, !range !17, !noalias !2422, !noundef !5 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.pz, label %bb.ed, label %.lr.ph484.i, !prof !13

bb.ed:                                            ; preds = %bb.ec
  %i.qd = load i64, ptr %i.qc, align 8, !noalias !2422
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.qb, i64 %i.qd) #28, !noalias !2422
  unreachable

.lr.ph484.i:                                      ; preds = %bb.ec
  %i.qe = load ptr, ptr %i.qc, align 8, !noalias !2422, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2422
  store i64 %i.qb, ptr %i.b, align 8, !alias.scope !2421, !noalias !2420
  %i.qf = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 7 uses
  store ptr %i.qe, ptr %i.qf, align 8, !alias.scope !2421, !noalias !2420
  %i.qg = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  store i64 %i.px, ptr %i.qg, align 8, !alias.scope !2421, !noalias !2420
  %invariant.op.i94 = sub i64 %.sroa.0197.0, %i.aq ; 4 uses
  %invariant.op485.i = sub i64 %.sroa.0.0, %i.an  ; 3 uses
  br label %.lr.ph484.split.i

.lr.ph484.split.i:                                ; preds = %.lr.ph484.i, %..loopexit39_crit_edge.split.us.i159
  %.sroa.0102.0483.i = phi i64 [ %i.qh, %..loopexit39_crit_edge.split.us.i159 ], [ %i.gj, %.lr.ph484.i ] ; 2 uses
  %i.qh = add i64 %.sroa.0102.0483.i, -1          ; 4 uses
  %i.qi = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2420

._crit_edge512.i:                                 ; preds = %bb.ft
  br i1 %i.vw, label %bb.ee, label %bb.eg

.lr.ph511.i:                                      ; preds = %..loopexit39_crit_edge.split.us.i159, %bb.ft
  %.sroa.05.0.not510.i = phi i1 [ false, %bb.ft ], [ true, %..loopexit39_crit_edge.split.us.i159 ] ; 3 uses
  %.sroa.09.0509.i = phi i64 [ %.sroa.09.3.i124, %bb.ft ], [ 0, %..loopexit39_crit_edge.split.us.i159 ] ; 13 uses
  %.sroa.039.0508.i = phi i64 [ %.sroa.039.3.i, %bb.ft ], [ 0, %..loopexit39_crit_edge.split.us.i159 ] ; 16 uses
  %i.qj = and i64 %.sroa.039.0508.i, 1023
  %i.qk = icmp eq i64 %i.qj, 0
  %or.cond170.i105 = select i1 %.sroa.05.0.not510.i, i1 %i.qk, i1 false ; 2 uses
  br i1 %or.cond170.i105, label %bb.ek, label %bb.ej

bb.ee:                                            ; preds = %._crit_edge512.i
  %i.ql = add i64 %.sroa.09.3.i124, %.sroa.0.0    ; 2 uses
  %i.qm = sub nuw i64 %i.gj, %.sroa.09.3.i124
  %i.qn = add i64 %.sroa.039.3.i, %.sroa.0197.0   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.qo = load ptr, ptr %.val51, align 8, !alias.scope !2423, !noalias !2424, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 120 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qo, i64 136 ; 2 uses
  %i.qr = load i64, ptr %i.qq, align 8, !alias.scope !2425, !noalias !2420, !noundef !5 ; 3 uses
  %i.qs = load i64, ptr %i.qp, align 8, !range !10, !alias.scope !2425, !noalias !2420, !noundef !5
  %i.qt = icmp eq i64 %i.qr, %i.qs
  br i1 %i.qt, label %bb.ef, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101

bb.ef:                                            ; preds = %bb.ee
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.qp)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2420

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101: ; preds = %bb.ef, %bb.ee
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qo, i64 128
  %i.qv = load ptr, ptr %i.qu, align 8, !alias.scope !2425, !noalias !2420, !nonnull !5, !noundef !5
  %i.qw = getelementptr inbounds nuw [40 x i8], ptr %i.qv, i64 %i.qr ; 4 uses
  store i64 1, ptr %i.qw, align 8, !noalias !2420
  %.sroa.42.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  store i64 %i.ql, ptr %.sroa.42.0..sroa_idx.i102, align 8, !noalias !2420
  %.sroa.53.0..sroa_idx.i103 = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  store i64 %i.qm, ptr %.sroa.53.0..sroa_idx.i103, align 8, !noalias !2420
  %.sroa.64.0..sroa_idx.i104 = getelementptr inbounds nuw i8, ptr %i.qw, i64 24
  store i64 %i.qn, ptr %.sroa.64.0..sroa_idx.i104, align 8, !noalias !2420
  %i.qx = add i64 %i.qr, 1
  store i64 %i.qx, ptr %i.qq, align 8, !alias.scope !2425, !noalias !2420
  br i1 %i.vx, label %bb.eh, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread311

bb.eg:                                            ; preds = %._crit_edge512.i
  br i1 %i.vx, label %._crit_edge898, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread311

._crit_edge898:                                   ; preds = %bb.eg
  %.pre904 = add i64 %.sroa.09.3.i124, %.sroa.0.0
  %.pre906 = add i64 %.sroa.039.3.i, %.sroa.0197.0
  br label %bb.eh

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gh, %bb.ek, %bb.ev, %bb.fi, %bb.fu, %bb.fw, %bb.ew, %bb.fj, %.lr.ph484.split.i, %bb.gs, %.invoke.i106, %bb.ei, %bb.ef
  %lpad.loopexit.split-lp1630 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.b) #26
          to label %common.resume unwind label %bb.gw, !noalias !2420

bb.eh:                                            ; preds = %._crit_edge898, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101
  %.pre-phi907 = phi i64 [ %.pre906, %._crit_edge898 ], [ %i.qn, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101 ]
  %.pre-phi905 = phi i64 [ %.pre904, %._crit_edge898 ], [ %i.ql, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101 ]
  %i.qy = sub nuw i64 %i.gk, %.sroa.039.3.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.qz = load ptr, ptr %.val51, align 8, !alias.scope !2426, !noalias !2427, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 120 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qz, i64 136 ; 2 uses
  %i.rc = load i64, ptr %i.rb, align 8, !alias.scope !2428, !noalias !2420, !noundef !5 ; 3 uses
  %i.rd = load i64, ptr %i.ra, align 8, !range !10, !alias.scope !2428, !noalias !2420, !noundef !5
  %i.re = icmp eq i64 %i.rc, %i.rd
  br i1 %i.re, label %bb.ei, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i86

bb.ei:                                            ; preds = %bb.eh
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ra)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i86 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2420

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i86: ; preds = %bb.ei, %bb.eh
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qz, i64 128
  %i.rg = load ptr, ptr %i.rf, align 8, !alias.scope !2428, !noalias !2420, !nonnull !5, !noundef !5
  %i.rh = getelementptr inbounds nuw [40 x i8], ptr %i.rg, i64 %i.rc ; 4 uses
  store i64 2, ptr %i.rh, align 8, !noalias !2420
  %.sroa.412.0..sroa_idx.i87 = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  store i64 %.pre-phi905, ptr %.sroa.412.0..sroa_idx.i87, align 8, !noalias !2420
  %.sroa.513.0..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %i.rh, i64 16
  store i64 %.pre-phi907, ptr %.sroa.513.0..sroa_idx.i88, align 8, !noalias !2420
  %.sroa.614.0..sroa_idx.i89 = getelementptr inbounds nuw i8, ptr %i.rh, i64 24
  store i64 %i.qy, ptr %.sroa.614.0..sroa_idx.i89, align 8, !noalias !2420
  %i.ri = add i64 %i.rc, 1
  store i64 %i.ri, ptr %i.rb, align 8, !alias.scope !2428, !noalias !2420
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread311

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit.thread311: ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i101, %bb.eg, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i86
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.b), !noalias !2420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2420
  br label %bb.ba

bb.ej:                                            ; preds = %bb.el, %.lr.ph511.i
  %i.rj = mul i64 %.sroa.09.0509.i, %i.pv         ; 4 uses
  %i.rk = add i64 %.sroa.09.0509.i, %.sroa.0.0    ; 4 uses
  %i.rl = add i64 %.sroa.039.0508.i, %.sroa.0197.0 ; 4 uses
  %i.rm = sub i64 %i.rl, %i.aq                    ; 3 uses
  %i.rn = icmp ult i64 %i.rm, %i.ap
  br i1 %i.rn, label %bb.em, label %.invoke.i106

.invoke.i106:                                     ; preds = %bb.gq, %bb.go, %bb.gm, %bb.gl, %bb.gj, %bb.es, %bb.eq, %bb.ep, %bb.eo, %bb.em, %bb.ej, %bb.fr, %bb.fp, %bb.fo, %bb.fn, %bb.fl, %bb.fe, %bb.fc, %bb.fb, %bb.fa, %bb.ey, %bb.fy, %bb.fv, %bb.gb, %bb.ga, %bb.gv, %bb.gu
  %i.ro = phi i64 [ %i.uc, %bb.fe ], [ %.reass.i150, %bb.gu ], [ %.reass486.i, %bb.gv ], [ %i.vq, %bb.fr ], [ %i.rm, %bb.ej ], [ %i.xb, %bb.gb ], [ %i.ap, %bb.fv ], [ %i.wu, %bb.ga ], [ %i.am, %bb.fy ], [ %i.tm, %bb.ey ], [ %i.tq, %bb.fa ], [ %i.tu, %bb.fc ], [ %i.ts, %bb.fb ], [ %i.uy, %bb.fl ], [ %i.vc, %bb.fn ], [ %i.vi, %bb.fp ], [ %i.ve, %bb.fo ], [ %i.rx, %bb.eo ], [ %i.rz, %bb.ep ], [ %i.sp, %bb.es ], [ %i.rt, %bb.em ], [ %i.se, %bb.eq ], [ %i.xy, %bb.gl ], [ %.reass.us.i153, %bb.gj ], [ %i.yr, %bb.gq ], [ %i.yc, %bb.gm ], [ %i.yi, %bb.go ]
  %i.rp = phi i64 [ %.pre745.i.a, %bb.fe ], [ %i.ap, %bb.gu ], [ %i.am, %bb.gv ], [ %.pre743.i, %bb.fr ], [ %i.ap, %bb.ej ], [ %i.ww, %bb.gb ], [ %i.ap, %bb.fv ], [ %i.ww, %bb.ga ], [ %i.am, %bb.fy ], [ %i.ap, %bb.ey ], [ %.pre745.i.a, %bb.fa ], [ %.pre745.i.a, %bb.fc ], [ %.pre745.i.a, %bb.fb ], [ %i.am, %bb.fl ], [ %.pre743.i, %bb.fn ], [ %.pre743.i, %bb.fp ], [ %.pre743.i, %bb.fo ], [ %.pre741.i, %bb.eo ], [ %.pre741.i, %bb.ep ], [ %.pre741.i, %bb.es ], [ %i.am, %bb.em ], [ %.pre741.i, %bb.eq ], [ %i.ya, %bb.gl ], [ %i.ap, %bb.gj ], [ %i.yq, %bb.gq ], [ %i.ya, %bb.gm ], [ %i.yj, %bb.go ]
  %i.rq = phi ptr [ @91, %bb.fe ], [ @102, %bb.gu ], [ @103, %bb.gv ], [ @97, %bb.fr ], [ @80, %bb.ej ], [ @101, %bb.gb ], [ @98, %bb.fv ], [ @100, %bb.ga ], [ @99, %bb.fy ], [ @86, %bb.ey ], [ @88, %bb.fa ], [ @89, %bb.fc ], [ @90, %bb.fb ], [ @93, %bb.fl ], [ @94, %bb.fn ], [ @95, %bb.fp ], [ @96, %bb.fo ], [ @82, %bb.eo ], [ @84, %bb.ep ], [ @85, %bb.es ], [ @81, %bb.em ], [ @83, %bb.eq ], [ @104, %bb.gl ], [ @102, %bb.gj ], [ @107, %bb.gq ], [ @105, %bb.gm ], [ @106, %bb.go ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ro, i64 noundef %i.rp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.rq) #28
          to label %.cont.i107 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2420

.cont.i107:                                       ; preds = %.invoke.i106
  unreachable

bb.ek:                                            ; preds = %.lr.ph511.i
  %i.rr = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.el unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2420

bb.el:                                            ; preds = %bb.ek
  br i1 %i.rr, label %.loopexit24.i126, label %bb.ej

bb.em:                                            ; preds = %bb.ej
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.rm ; 2 uses
  %i.rt = sub i64 %i.rk, %i.an                    ; 3 uses
  %i.ru = icmp ult i64 %i.rt, %i.am
  br i1 %i.ru, label %bb.en, label %.invoke.i106

bb.en:                                            ; preds = %bb.em
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.rt ; 2 uses
  %.val210.i108 = load i32, ptr %i.rs, align 4, !noalias !2420, !noundef !5
  %.val211.i109 = load i32, ptr %i.rv, align 4, !noalias !2420, !noundef !5
  %i.rw = icmp eq i32 %.val210.i108, %.val211.i109
  %.pre.i110 = load ptr, ptr %i.qf, align 8, !noalias !2420 ; 4 uses
  %.pre741.i = load i64, ptr %i.qg, align 8, !noalias !2420 ; 8 uses
  br i1 %i.rw, label %bb.eo, label %._crit_edge747.i

._crit_edge747.i:                                 ; preds = %bb.en
  %.pre748.i = add nuw i64 %.sroa.09.0509.i, 1
  %.pre749.i = mul i64 %.pre748.i, %i.pv
  br label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.rx = add i64 %i.rj, %.sroa.039.0508.i        ; 3 uses
  %i.ry = icmp ult i64 %i.rx, %.pre741.i
  br i1 %i.ry, label %bb.eq, label %.invoke.i106

bb.ep:                                            ; preds = %bb.er, %._crit_edge747.i
  %.pre-phi750.i = phi i64 [ %.pre749.i, %._crit_edge747.i ], [ %i.sc, %bb.er ] ; 3 uses
  %i.rz = add i64 %.pre-phi750.i, %.sroa.039.0508.i ; 3 uses
  %i.sa = icmp ult i64 %i.rz, %.pre741.i
  br i1 %i.sa, label %bb.es, label %.invoke.i106

bb.eq:                                            ; preds = %bb.eo
  %i.sb = add nuw i64 %.sroa.09.0509.i, 1
  %i.sc = mul i64 %i.sb, %i.pv                    ; 2 uses
  %i.sd = add nuw i64 %.sroa.039.0508.i, 1
  %i.se = add i64 %i.sd, %i.sc                    ; 3 uses
  %i.sf = icmp ult i64 %i.se, %.pre741.i
  br i1 %i.sf, label %bb.er, label %.invoke.i106

bb.er:                                            ; preds = %bb.eq
  %i.sg = getelementptr inbounds nuw i8, ptr %.pre.i110, i64 %i.rx
  %i.sh = load i8, ptr %i.sg, align 1, !noalias !2420, !noundef !5
  %i.si = getelementptr inbounds nuw i8, ptr %.pre.i110, i64 %i.se
  %i.sj = load i8, ptr %i.si, align 1, !noalias !2420, !noundef !5
  %i.sk = add i8 %i.sj, 1
  %i.sl = icmp eq i8 %i.sh, %i.sk
  br i1 %i.sl, label %.preheader.i137, label %bb.ep

.preheader.i137:                                  ; preds = %bb.er
  %i.sm = icmp ult i64 %.sroa.09.0509.i, %i.gj
  %i.sn = icmp ult i64 %.sroa.039.0508.i, %i.gk
  %or.cond177494.i = select i1 %i.sm, i1 %i.sn, i1 false
  br i1 %or.cond177494.i, label %.lr.ph497.i, label %._crit_edge498.i

bb.es:                                            ; preds = %bb.ep
  %i.so = add i64 %.sroa.039.0508.i, 1            ; 3 uses
  %i.sp = add i64 %i.so, %i.rj                    ; 3 uses
  %i.sq = icmp ult i64 %i.sp, %.pre741.i
  br i1 %i.sq, label %bb.et, label %.invoke.i106

bb.et:                                            ; preds = %bb.es
  %i.sr = getelementptr inbounds nuw i8, ptr %.pre.i110, i64 %i.rz
  %i.ss = load i8, ptr %i.sr, align 1, !noalias !2420, !noundef !5
  %i.st = getelementptr inbounds nuw i8, ptr %.pre.i110, i64 %i.sp
  %i.su = load i8, ptr %i.st, align 1, !noalias !2420, !noundef !5
  %.not164.i111 = icmp ult i8 %i.ss, %i.su
  br i1 %.not164.i111, label %.preheader25.i128, label %.preheader30.i112

.preheader30.i112:                                ; preds = %bb.et
  %umax.i113 = call i64 @llvm.umax.i64(i64 %.sroa.09.0509.i, i64 %i.gj) ; 3 uses
  %exitcond.not.i1151534.not = icmp ult i64 %.sroa.09.0509.i, %i.gj
  br i1 %exitcond.not.i1151534.not, label %.lr.ph1536, label %._crit_edge1537

.preheader25.i128:                                ; preds = %bb.et
  %i.sv = icmp ult i64 %.sroa.039.0508.i, %i.gk
  br i1 %i.sv, label %.lr.ph489.i, label %._crit_edge.i129

.lr.ph489.i:                                      ; preds = %.preheader25.i128
  %i.sw = add i64 %.pre-phi750.i, 1
  %i.sx = add i64 %i.rj, 1
  br label %bb.eu

bb.eu:                                            ; preds = %bb.fg, %.lr.ph489.i
  %.sroa.039.1488.i = phi i64 [ %.sroa.039.0508.i, %.lr.ph489.i ], [ %i.uj, %bb.fg ] ; 9 uses
  %i.sy = and i64 %.sroa.039.1488.i, 1023
  %i.sz = icmp eq i64 %i.sy, 0
  %or.cond173.i134 = and i1 %.sroa.05.0.not510.i, %i.sz
  br i1 %or.cond173.i134, label %bb.ew, label %bb.ey

._crit_edge.i129:                                 ; preds = %bb.fg, %bb.ff, %bb.fd, %.preheader25.i128
  %.sroa.039.1.lcssa.i = phi i64 [ %.sroa.039.0508.i, %.preheader25.i128 ], [ %i.gk, %bb.fg ], [ %.sroa.039.1488.i, %bb.ff ], [ %.sroa.039.1488.i, %bb.fd ] ; 2 uses
  %i.ta = sub nuw i64 %.sroa.039.1.lcssa.i, %.sroa.039.0508.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.tb = load ptr, ptr %.val51, align 8, !alias.scope !2429, !noalias !2430, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 120 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 136 ; 2 uses
  %i.te = load i64, ptr %i.td, align 8, !alias.scope !2431, !noalias !2420, !noundef !5 ; 3 uses
  %i.tf = load i64, ptr %i.tc, align 8, !range !10, !alias.scope !2431, !noalias !2420, !noundef !5
  %i.tg = icmp eq i64 %i.te, %i.tf
  br i1 %i.tg, label %bb.ev, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i130

bb.ev:                                            ; preds = %._crit_edge.i129
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.tc)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i130 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2420

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i130: ; preds = %bb.ev, %._crit_edge.i129
  %i.th = getelementptr inbounds nuw i8, ptr %i.tb, i64 128
  %i.ti = load ptr, ptr %i.th, align 8, !alias.scope !2431, !noalias !2420, !nonnull !5, !noundef !5
  %i.tj = getelementptr inbounds nuw [40 x i8], ptr %i.ti, i64 %i.te ; 4 uses
  store i64 2, ptr %i.tj, align 8, !noalias !2420
  %.sroa.417.0..sroa_idx.i131 = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  store i64 %i.rk, ptr %.sroa.417.0..sroa_idx.i131, align 8, !noalias !2420
  %.sroa.518.0..sroa_idx.i132 = getelementptr inbounds nuw i8, ptr %i.tj, i64 16
  store i64 %i.rl, ptr %.sroa.518.0..sroa_idx.i132, align 8, !noalias !2420
  %.sroa.619.0..sroa_idx.i133 = getelementptr inbounds nuw i8, ptr %i.tj, i64 24
  store i64 %i.ta, ptr %.sroa.619.0..sroa_idx.i133, align 8, !noalias !2420
  %i.tk = add i64 %i.te, 1
  store i64 %i.tk, ptr %i.td, align 8, !alias.scope !2431, !noalias !2420
  br label %bb.ft

bb.ew:                                            ; preds = %bb.eu
  %i.tl = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.ex unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2420

bb.ex:                                            ; preds = %bb.ew
  br i1 %i.tl, label %.loopexit24.i126, label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.eu
  %i.tm = add i64 %.sroa.039.1488.i, %invariant.op.i94 ; 3 uses
  %i.tn = icmp ult i64 %i.tm, %i.ap
  br i1 %i.tn, label %bb.ez, label %.invoke.i106

bb.ez:                                            ; preds = %bb.ey
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.tm
  %.val208.i135 = load i32, ptr %i.to, align 4, !noalias !2420, !noundef !5
  %.val209.i136 = load i32, ptr %i.rv, align 4, !noalias !2420, !noundef !5
  %i.tp = icmp eq i32 %.val208.i135, %.val209.i136
  %.pre744.i.a = load ptr, ptr %i.qf, align 8, !noalias !2420 ; 4 uses
  %.pre745.i.a = load i64, ptr %i.qg, align 8, !noalias !2420 ; 8 uses
  br i1 %i.tp, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.tq = add i64 %.sroa.039.1488.i, %i.rj        ; 3 uses
  %i.tr = icmp ult i64 %i.tq, %.pre745.i.a
  br i1 %i.tr, label %bb.fc, label %.invoke.i106

bb.fb:                                            ; preds = %bb.fd, %bb.ez
  %i.ts = add i64 %.sroa.039.1488.i, %.pre-phi750.i ; 3 uses
  %i.tt = icmp ult i64 %i.ts, %.pre745.i.a
  br i1 %i.tt, label %bb.fe, label %.invoke.i106

bb.fc:                                            ; preds = %bb.fa
  %i.tu = add i64 %i.sw, %.sroa.039.1488.i        ; 3 uses
  %i.tv = icmp ult i64 %i.tu, %.pre745.i.a
  br i1 %i.tv, label %bb.fd, label %.invoke.i106

bb.fd:                                            ; preds = %bb.fc
  %i.tw = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.tq
  %i.tx = load i8, ptr %i.tw, align 1, !noalias !2420, !noundef !5
  %i.ty = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.tu
  %i.tz = load i8, ptr %i.ty, align 1, !noalias !2420, !noundef !5
  %i.ua = add i8 %i.tz, 1
  %i.ub = icmp eq i8 %i.tx, %i.ua
  br i1 %i.ub, label %._crit_edge.i129, label %bb.fb

bb.fe:                                            ; preds = %bb.fb
  %i.uc = add i64 %i.sx, %.sroa.039.1488.i        ; 3 uses
  %i.ud = icmp ult i64 %i.uc, %.pre745.i.a
  br i1 %i.ud, label %bb.ff, label %.invoke.i106

bb.ff:                                            ; preds = %bb.fe
  %i.ue = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.ts
  %i.uf = load i8, ptr %i.ue, align 1, !noalias !2420, !noundef !5
  %i.ug = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.uc
  %i.uh = load i8, ptr %i.ug, align 1, !noalias !2420, !noundef !5
  %i.ui = icmp ult i8 %i.uf, %i.uh
  br i1 %i.ui, label %bb.fg, label %._crit_edge.i129

bb.fg:                                            ; preds = %bb.ff
  %i.uj = add nuw i64 %.sroa.039.1488.i, 1        ; 2 uses
  %i.uk = icmp ult i64 %i.uj, %i.gk
  br i1 %i.uk, label %bb.eu, label %._crit_edge.i129

bb.fh:                                            ; preds = %bb.fs
  %exitcond.not.i115 = icmp eq i64 %.pre-phi752.i, %umax.i113
  br i1 %exitcond.not.i115, label %._crit_edge1537, label %.lr.ph1536

.lr.ph1536:                                       ; preds = %.preheader30.i112, %bb.fh
  %.sroa.09.1.i1141535 = phi i64 [ %.pre-phi752.i, %bb.fh ], [ %.sroa.09.0509.i, %.preheader30.i112 ] ; 6 uses
  br i1 %or.cond170.i105, label %bb.fj, label %bb.fl

._crit_edge1537:                                  ; preds = %bb.fh, %bb.fq, %bb.fs, %.preheader30.i112
  %.sroa.09.1.lcssa.i119 = phi i64 [ %umax.i113, %.preheader30.i112 ], [ %umax.i113, %bb.fh ], [ %.sroa.09.1.i1141535, %bb.fq ], [ %.sroa.09.1.i1141535, %bb.fs ] ; 2 uses
  %i.ul = sub nuw i64 %.sroa.09.1.lcssa.i119, %.sroa.09.0509.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.um = load ptr, ptr %.val51, align 8, !alias.scope !2432, !noalias !2433, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 120 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.um, i64 136 ; 2 uses
  %i.up = load i64, ptr %i.uo, align 8, !alias.scope !2434, !noalias !2420, !noundef !5 ; 3 uses
  %i.uq = load i64, ptr %i.un, align 8, !range !10, !alias.scope !2434, !noalias !2420, !noundef !5
  %i.ur = icmp eq i64 %i.up, %i.uq
  br i1 %i.ur, label %bb.fi, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i120

bb.fi:                                            ; preds = %._crit_edge1537
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.un)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2420

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i120: ; preds = %bb.fi, %._crit_edge1537
  %i.us = getelementptr inbounds nuw i8, ptr %i.um, i64 128
  %i.ut = load ptr, ptr %i.us, align 8, !alias.scope !2434, !noalias !2420, !nonnull !5, !noundef !5
  %i.uu = getelementptr inbounds nuw [40 x i8], ptr %i.ut, i64 %i.up ; 4 uses
  store i64 1, ptr %i.uu, align 8, !noalias !2420
  %.sroa.47.0..sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  store i64 %i.rk, ptr %.sroa.47.0..sroa_idx.i121, align 8, !noalias !2420
  %.sroa.58.0..sroa_idx.i122 = getelementptr inbounds nuw i8, ptr %i.uu, i64 16
  store i64 %i.ul, ptr %.sroa.58.0..sroa_idx.i122, align 8, !noalias !2420
  %.sroa.69.0..sroa_idx.i123 = getelementptr inbounds nuw i8, ptr %i.uu, i64 24
  store i64 %i.rl, ptr %.sroa.69.0..sroa_idx.i123, align 8, !noalias !2420
  %i.uv = add i64 %i.up, 1
  store i64 %i.uv, ptr %i.uo, align 8, !alias.scope !2434, !noalias !2420
  br label %bb.ft

bb.fj:                                            ; preds = %.lr.ph1536
  %i.uw = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2420

bb.fk:                                            ; preds = %bb.fj
  br i1 %i.uw, label %.loopexit24.i126, label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %.lr.ph1536
  %i.ux = mul i64 %.sroa.09.1.i1141535, %i.pv     ; 2 uses
  %i.uy = add i64 %.sroa.09.1.i1141535, %invariant.op485.i ; 3 uses
  %i.uz = icmp ult i64 %i.uy, %i.am
  br i1 %i.uz, label %bb.fm, label %.invoke.i106

bb.fm:                                            ; preds = %bb.fl
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.uy
  %.val206.i116 = load i32, ptr %i.rs, align 4, !noalias !2420, !noundef !5
  %.val207.i117 = load i32, ptr %i.va, align 4, !noalias !2420, !noundef !5
  %i.vb = icmp eq i32 %.val206.i116, %.val207.i117
  %.pre742.i = load ptr, ptr %i.qf, align 8, !noalias !2420 ; 4 uses
  %.pre743.i = load i64, ptr %i.qg, align 8, !noalias !2420 ; 8 uses
  br i1 %i.vb, label %bb.fn, label %._crit_edge746.i

._crit_edge746.i:                                 ; preds = %bb.fm
  %.pre751.i = add i64 %.sroa.09.1.i1141535, 1    ; 2 uses
  %.pre753.i = mul i64 %.pre751.i, %i.pv
  br label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.vc = add i64 %i.ux, %.sroa.039.0508.i        ; 3 uses
  %i.vd = icmp ult i64 %i.vc, %.pre743.i
  br i1 %i.vd, label %bb.fp, label %.invoke.i106

bb.fo:                                            ; preds = %bb.fq, %._crit_edge746.i
  %.pre-phi754.i.a = phi i64 [ %.pre753.i, %._crit_edge746.i ], [ %i.vh, %bb.fq ]
  %.pre-phi752.i = phi i64 [ %.pre751.i, %._crit_edge746.i ], [ %i.vg, %bb.fq ] ; 2 uses
  %i.ve = add i64 %.pre-phi754.i.a, %.sroa.039.0508.i ; 3 uses
  %i.vf = icmp ult i64 %i.ve, %.pre743.i
  br i1 %i.vf, label %bb.fr, label %.invoke.i106

bb.fp:                                            ; preds = %bb.fn
  %i.vg = add i64 %.sroa.09.1.i1141535, 1         ; 2 uses
  %i.vh = mul i64 %i.vg, %i.pv                    ; 2 uses
  %i.vi = add i64 %i.vh, %i.so                    ; 3 uses
  %i.vj = icmp ult i64 %i.vi, %.pre743.i
  br i1 %i.vj, label %bb.fq, label %.invoke.i106

bb.fq:                                            ; preds = %bb.fp
  %i.vk = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.vc
  %i.vl = load i8, ptr %i.vk, align 1, !noalias !2420, !noundef !5
  %i.vm = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.vi
  %i.vn = load i8, ptr %i.vm, align 1, !noalias !2420, !noundef !5
  %i.vo = add i8 %i.vn, 1
  %i.vp = icmp eq i8 %i.vl, %i.vo
  br i1 %i.vp, label %._crit_edge1537, label %bb.fo

bb.fr:                                            ; preds = %bb.fo
  %i.vq = add i64 %i.ux, %i.so                    ; 3 uses
  %i.vr = icmp ult i64 %i.vq, %.pre743.i
  br i1 %i.vr, label %bb.fs, label %.invoke.i106

bb.fs:                                            ; preds = %bb.fr
  %i.vs = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.ve
  %i.vt = load i8, ptr %i.vs, align 1, !noalias !2420, !noundef !5
  %i.vu = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.vq
  %i.vv = load i8, ptr %i.vu, align 1, !noalias !2420, !noundef !5
  %.not167.i118 = icmp ult i8 %i.vt, %i.vv
  br i1 %.not167.i118, label %._crit_edge1537, label %bb.fh

bb.ft:                                            ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i139, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i120, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i130
  %.sroa.039.3.i = phi i64 [ %.sroa.039.0508.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i120 ], [ %.sroa.039.1.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i130 ], [ %.sroa.039.4.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i139 ] ; 5 uses
  %.sroa.09.3.i124 = phi i64 [ %.sroa.09.1.lcssa.i119, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i120 ], [ %.sroa.09.0509.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i130 ], [ %.sroa.09.4.lcssa.i138, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i139 ] ; 5 uses
  %i.vw = icmp ult i64 %.sroa.09.3.i124, %i.gj    ; 2 uses
  %i.vx = icmp ult i64 %.sroa.039.3.i, %i.gk      ; 3 uses
  %or.cond.i125 = select i1 %i.vw, i1 %i.vx, i1 false
  br i1 %or.cond.i125, label %.lr.ph511.i, label %._crit_edge512.i

._crit_edge498.i:                                 ; preds = %bb.gd, %bb.gc, %bb.fz, %.preheader.i137
  %.sroa.039.4.lcssa.i = phi i64 [ %.sroa.039.0508.i, %.preheader.i137 ], [ %i.xa, %bb.gd ], [ %.sroa.039.4495.i, %bb.fz ], [ %.sroa.039.4495.i, %bb.gc ]
  %.sroa.09.4.lcssa.i138 = phi i64 [ %.sroa.09.0509.i, %.preheader.i137 ], [ %i.wy, %bb.gd ], [ %.sroa.09.4496.i, %bb.fz ], [ %.sroa.09.4496.i, %bb.gc ] ; 2 uses
  %i.vy = sub i64 %.sroa.09.4.lcssa.i138, %.sroa.09.0509.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.vz = load ptr, ptr %.val51, align 8, !alias.scope !2435, !noalias !2436, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 120 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vz, i64 136 ; 2 uses
  %i.wc = load i64, ptr %i.wb, align 8, !alias.scope !2437, !noalias !2420, !noundef !5 ; 3 uses
  %i.wd = load i64, ptr %i.wa, align 8, !range !10, !alias.scope !2437, !noalias !2420, !noundef !5
  %i.we = icmp eq i64 %i.wc, %i.wd
  br i1 %i.we, label %bb.fu, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i139

bb.fu:                                            ; preds = %._crit_edge498.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.wa)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i139 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2420

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i139: ; preds = %bb.fu, %._crit_edge498.i
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vz, i64 128
  %i.wg = load ptr, ptr %i.wf, align 8, !alias.scope !2437, !noalias !2420, !nonnull !5, !noundef !5
  %i.wh = getelementptr inbounds nuw [40 x i8], ptr %i.wg, i64 %i.wc ; 4 uses
  store i64 0, ptr %i.wh, align 8, !noalias !2420
  %.sroa.4.0..sroa_idx.i140 = getelementptr inbounds nuw i8, ptr %i.wh, i64 8
  store i64 %i.rk, ptr %.sroa.4.0..sroa_idx.i140, align 8, !noalias !2420
  %.sroa.5.0..sroa_idx.i141 = getelementptr inbounds nuw i8, ptr %i.wh, i64 16
  store i64 %i.rl, ptr %.sroa.5.0..sroa_idx.i141, align 8, !noalias !2420
  %.sroa.6.0..sroa_idx.i142 = getelementptr inbounds nuw i8, ptr %i.wh, i64 24
  store i64 %i.vy, ptr %.sroa.6.0..sroa_idx.i142, align 8, !noalias !2420
  %i.wi = add i64 %i.wc, 1
  store i64 %i.wi, ptr %i.wb, align 8, !alias.scope !2437, !noalias !2420
  br label %bb.ft

.lr.ph497.i:                                      ; preds = %.preheader.i137, %bb.gd
  %.sroa.09.4496.i = phi i64 [ %i.wy, %bb.gd ], [ %.sroa.09.0509.i, %.preheader.i137 ] ; 5 uses
  %.sroa.039.4495.i = phi i64 [ %i.xa, %bb.gd ], [ %.sroa.039.0508.i, %.preheader.i137 ] ; 6 uses
  %i.wj = and i64 %.sroa.039.4495.i, 1023
  %i.wk = icmp eq i64 %i.wj, 0
  %or.cond180.i143 = select i1 %.sroa.05.0.not510.i, i1 %i.wk, i1 false
  br i1 %or.cond180.i143, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fx, %.lr.ph497.i
  %i.wl = mul i64 %.sroa.09.4496.i, %i.pv
  %i.wm = add i64 %.sroa.039.4495.i, %invariant.op.i94 ; 2 uses
  %i.wn = icmp ult i64 %i.wm, %i.ap
  br i1 %i.wn, label %bb.fy, label %.invoke.i106

bb.fw:                                            ; preds = %.lr.ph497.i
  %i.wo = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2420

bb.fx:                                            ; preds = %bb.fw
  br i1 %i.wo, label %.loopexit24.i126, label %bb.fv

bb.fy:                                            ; preds = %bb.fv
  %i.wp = add i64 %.sroa.09.4496.i, %invariant.op485.i ; 2 uses
  %i.wq = icmp ult i64 %i.wp, %i.am
  br i1 %i.wq, label %bb.fz, label %.invoke.i106

bb.fz:                                            ; preds = %bb.fy
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.wm
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.wp
  %.val204.i144 = load i32, ptr %i.wr, align 4, !noalias !2420, !noundef !5
  %.val205.i145 = load i32, ptr %i.ws, align 4, !noalias !2420, !noundef !5
  %i.wt = icmp eq i32 %.val204.i144, %.val205.i145
  br i1 %i.wt, label %bb.ga, label %._crit_edge498.i

bb.ga:                                            ; preds = %bb.fz
  %i.wu = add i64 %i.wl, %.sroa.039.4495.i        ; 3 uses
  %i.wv = load ptr, ptr %i.qf, align 8, !noalias !2420, !nonnull !5, !noundef !5 ; 2 uses
  %i.ww = load i64, ptr %i.qg, align 8, !noalias !2420, !noundef !5 ; 4 uses
  %i.wx = icmp ult i64 %i.wu, %i.ww
  br i1 %i.wx, label %bb.gb, label %.invoke.i106

bb.gb:                                            ; preds = %bb.ga
  %i.wy = add nuw i64 %.sroa.09.4496.i, 1         ; 4 uses
  %i.wz = mul i64 %i.wy, %i.pv
  %i.xa = add nuw i64 %.sroa.039.4495.i, 1        ; 4 uses
  %i.xb = add i64 %i.xa, %i.wz                    ; 3 uses
  %i.xc = icmp ult i64 %i.xb, %i.ww
  br i1 %i.xc, label %bb.gc, label %.invoke.i106

bb.gc:                                            ; preds = %bb.gb
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wv, i64 %i.wu
  %i.xe = load i8, ptr %i.xd, align 1, !noalias !2420, !noundef !5
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wv, i64 %i.xb
  %i.xg = load i8, ptr %i.xf, align 1, !noalias !2420, !noundef !5
  %i.xh = add i8 %i.xg, 1
  %i.xi = icmp eq i8 %i.xe, %i.xh
  br i1 %i.xi, label %bb.gd, label %._crit_edge498.i

bb.gd:                                            ; preds = %bb.gc
  %i.xj = icmp ult i64 %i.wy, %i.gj
  %i.xk = icmp ult i64 %i.xa, %i.gk
  %or.cond177.i146 = and i1 %i.xj, %i.xk
  br i1 %or.cond177.i146, label %.lr.ph497.i, label %._crit_edge498.i

.loopexit24.i126:                                 ; preds = %bb.gg, %bb.gi, %bb.el, %bb.fk, %bb.ex, %bb.fx, %bb.gt
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.ge, !noalias !2420

bb.ge:                                            ; preds = %.loopexit24.i126
  %i.xl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.gf, !noalias !2420

bb.gf:                                            ; preds = %bb.ge
  %i.xm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !2420
  unreachable

bb.gg:                                            ; preds = %.lr.ph484.split.i
  br i1 %i.qi, label %.loopexit24.i126, label %.lr.ph.i147

.lr.ph.i147:                                      ; preds = %bb.gg
  %i.xn = mul i64 %i.qh, %i.pv                    ; 2 uses
  %i.xo = mul i64 %.sroa.0102.0483.i, %i.pv       ; 2 uses
  %.reass486.i = add i64 %i.qh, %invariant.op485.i ; 3 uses
  %i.xp = icmp ult i64 %.reass486.i, %i.am
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.reass486.i
  %.fr.i148 = freeze i1 %i.xp
  br i1 %.fr.i148, label %.lr.ph.split.us.i151, label %.lr.ph.split.i149

.lr.ph.split.us.i151:                             ; preds = %.lr.ph.i147, %bb.gr
  %.sroa.0105.0432.us.i152 = phi i64 [ %i.xr, %bb.gr ], [ %i.gk, %.lr.ph.i147 ] ; 3 uses
  %i.xr = add i64 %.sroa.0105.0432.us.i152, -1    ; 6 uses
  %i.xs = and i64 %i.xr, 1023
  %i.xt = icmp eq i64 %i.xs, 0
  br i1 %i.xt, label %bb.gh, label %bb.gj

bb.gh:                                            ; preds = %.lr.ph.split.us.i151
  %i.xu = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2420

bb.gi:                                            ; preds = %bb.gh
end_hunk_9
begin_hunk_10_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter:bb.a
  store i64 %i.zg, ptr %.sroa.5249.0..sroa_idx, align 8, !noalias !2443
  %.sroa.6250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zq, i64 24
  store i64 %.sroa.0197.0, ptr %.sroa.6250.0..sroa_idx, align 8, !noalias !2443
  %i.zr = add i64 %i.zl, 1
  store i64 %i.zr, ptr %i.zk, align 8, !alias.scope !2442, !noalias !2443
  %i.zs = sub nuw i64 %i.as, %.sroa.0197.0
  call void @llvm.experimental.noalias.scope.decl(metadata !2445)
  %i.zt = load ptr, ptr %i.zh, align 8, !alias.scope !2445, !noalias !2446, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 120 ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zt, i64 136 ; 2 uses
  %i.zw = load i64, ptr %i.zv, align 8, !alias.scope !2447, !noalias !2448, !noundef !5 ; 3 uses
  %i.zx = load i64, ptr %i.zu, align 8, !range !10, !alias.scope !2447, !noalias !2448, !noundef !5
  %i.zy = icmp eq i64 %i.zw, %i.zx
  br i1 %i.zy, label %bb.ha, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit162

bb.ha:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit161
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zu), !noalias !2449
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit162

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit162: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit161, %bb.ha
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zt, i64 128
  %i.aaa = load ptr, ptr %i.zz, align 8, !alias.scope !2447, !noalias !2448, !nonnull !5, !noundef !5
  %i.aab = getelementptr inbounds nuw [40 x i8], ptr %i.aaa, i64 %i.zw ; 4 uses
  store i64 2, ptr %i.aab, align 8, !noalias !2448
  %.sroa.4263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aab, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4263.0..sroa_idx, align 8, !noalias !2448
  %.sroa.5264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aab, i64 16
  store i64 %.sroa.0197.0, ptr %.sroa.5264.0..sroa_idx, align 8, !noalias !2448
  %.sroa.6265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aab, i64 24
  store i64 %i.zs, ptr %.sroa.6265.0..sroa_idx, align 8, !noalias !2448
  %i.aac = add i64 %i.zw, 1
  store i64 %i.aac, ptr %i.zv, align 8, !alias.scope !2447, !noalias !2448
  br label %bb.ba

.thread:                                          ; preds = %bb.az
  %i.aad = sub nuw i64 %i.as, %.sroa.0197.0
  call void @llvm.experimental.noalias.scope.decl(metadata !2450)
  call void @llvm.experimental.noalias.scope.decl(metadata !2451)
  %i.aae = load ptr, ptr %0, align 8, !alias.scope !2452, !nonnull !5, !align !6, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !2453)
  %i.aaf = load ptr, ptr %i.aae, align 8, !alias.scope !2453, !noalias !2452, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 120 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aaf, i64 136 ; 2 uses
  %i.aai = load i64, ptr %i.aah, align 8, !alias.scope !2454, !noalias !2455, !noundef !5 ; 3 uses
  %i.aaj = load i64, ptr %i.aag, align 8, !range !10, !alias.scope !2454, !noalias !2455, !noundef !5
  %i.aak = icmp eq i64 %i.aai, %i.aaj
  br i1 %i.aak, label %bb.hb, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit163

bb.hb:                                            ; preds = %.thread
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aag), !noalias !2456
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit163

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit163: ; preds = %.thread, %bb.hb
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aaf, i64 128
  %i.aam = load ptr, ptr %i.aal, align 8, !alias.scope !2454, !noalias !2455, !nonnull !5, !noundef !5
  %i.aan = getelementptr inbounds nuw [40 x i8], ptr %i.aam, i64 %i.aai ; 4 uses
  store i64 2, ptr %i.aan, align 8, !noalias !2455
  %.sroa.4268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aan, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4268.0..sroa_idx, align 8, !noalias !2455
  %.sroa.5269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aan, i64 16
  store i64 %.sroa.0197.0, ptr %.sroa.5269.0..sroa_idx, align 8, !noalias !2455
  %.sroa.6270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aan, i64 24
  store i64 %i.aad, ptr %.sroa.6270.0..sroa_idx, align 8, !noalias !2455
  %i.aao = add i64 %i.aai, 1
  store i64 %i.aao, ptr %i.aah, align 8, !alias.scope !2454, !noalias !2455
  br label %bb.ba

bb.hc:                                            ; preds = %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !2457)
  call void @llvm.experimental.noalias.scope.decl(metadata !2458)
  %i.aap = load ptr, ptr %0, align 8, !alias.scope !2459, !nonnull !5, !align !6, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !2460)
  %i.aaq = load ptr, ptr %i.aap, align 8, !alias.scope !2460, !noalias !2459, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 120 ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aaq, i64 136 ; 2 uses
  %i.aat = load i64, ptr %i.aas, align 8, !alias.scope !2461, !noalias !2462, !noundef !5 ; 3 uses
  %i.aau = load i64, ptr %i.aar, align 8, !range !10, !alias.scope !2461, !noalias !2462, !noundef !5
  %i.aav = icmp eq i64 %i.aat, %i.aau
  br i1 %i.aav, label %bb.hd, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit164

bb.hd:                                            ; preds = %bb.hc
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aar), !noalias !2463
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit164

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit164: ; preds = %bb.hc, %bb.hd
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aaq, i64 128
  %i.aax = load ptr, ptr %i.aaw, align 8, !alias.scope !2461, !noalias !2462, !nonnull !5, !noundef !5
  %i.aay = getelementptr inbounds nuw [40 x i8], ptr %i.aax, i64 %i.aat ; 4 uses
  store i64 0, ptr %i.aay, align 8, !noalias !2462
  %.sroa.4238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aay, i64 8
  store i64 %i.ar, ptr %.sroa.4238.0..sroa_idx, align 8, !noalias !2462
  %.sroa.5239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aay, i64 16
  store i64 %i.as, ptr %.sroa.5239.0..sroa_idx, align 8, !noalias !2462
  %.sroa.6240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aay, i64 24
  store i64 %.sroa.0.0.i54, ptr %.sroa.6240.0..sroa_idx, align 8, !noalias !2462
  %i.aaz = add i64 %i.aat, 1
  store i64 %i.aaz, ptr %i.aas, align 8, !alias.scope !2461, !noalias !2462
  br label %bb.he

bb.he:                                            ; preds = %bb.ba, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit164
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = tail call fastcc noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit, %bb.a
  %i.i = add i64 %i.h, %2                         ; 3 uses
  %i.j = add i64 %i.h, %5                         ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2561)
  %i.k = icmp uge i64 %i.i, %3
  %i.l = icmp uge i64 %i.j, %6
  %or.cond.i51 = or i1 %i.k, %i.l
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  br i1 %or.cond.i51, label %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge, label %.lr.ph.i.i.i.i

._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge: ; preds = %bb.b
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert877 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.pre878 = load i64, ptr %.phi.trans.insert877, align 8
  %.phi.trans.insert879 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre880 = load ptr, ptr %.phi.trans.insert879, align 8
  %.phi.trans.insert881 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre882 = load i64, ptr %.phi.trans.insert881, align 8
  %.phi.trans.insert883 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre884 = load i64, ptr %.phi.trans.insert883, align 8
  %.phi.trans.insert885 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre886 = load ptr, ptr %.phi.trans.insert885, align 8
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = sub nuw i64 %3, %i.i                     ; 2 uses
  %i.s = sub nuw i64 %6, %i.j                     ; 2 uses
  %i.t = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !2561 ; 4 uses
  %i.u = load i64, ptr %i.m, align 8, !alias.scope !2561 ; 5 uses
  %i.v = load ptr, ptr %i.n, align 8, !alias.scope !2561, !nonnull !5 ; 4 uses
  %i.w = load i64, ptr %i.o, align 8, !alias.scope !2560 ; 4 uses
  %i.x = load i64, ptr %i.p, align 8, !alias.scope !2560 ; 5 uses
  %i.y = load ptr, ptr %i.q, align 8, !alias.scope !2560, !nonnull !5 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %i.z = phi i64 [ %3, %.lr.ph.i.i.i.i ], [ %i.ac, %bb.g ]
  %.sroa.01.033.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ak, %bb.g ] ; 3 uses
  %i.aa = phi i64 [ %6, %.lr.ph.i.i.i.i ], [ %i.ab, %bb.g ]
  %i.ab = add i64 %i.aa, -1                       ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.01.033.i.i.i.i, %i.r
  br i1 %exitcond.not.i.i.i.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = add i64 %i.z, -1                        ; 2 uses
  %i.ad = sub i64 %i.ab, %i.t                     ; 3 uses
  %i.ae = icmp ult i64 %i.ad, %i.u
  br i1 %i.ae, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #28, !noalias !2562
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i: ; preds = %bb.d
  %i.af = sub i64 %i.ac, %i.w                     ; 3 uses
  %i.ag = icmp ult i64 %i.af, %i.x
  br i1 %i.ag, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.af, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #28, !noalias !2563
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ad
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.af
  %.val.i.i.i.i.i = load i32, ptr %i.ah, align 4, !noalias !2564, !noundef !5
  %.val10.i.i.i.i.i = load i32, ptr %i.ai, align 4, !noalias !2564, !noundef !5
  %i.aj = icmp eq i32 %.val.i.i.i.i.i, %.val10.i.i.i.i.i
  br i1 %i.aj, label %bb.g, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit

bb.g:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i
  %i.ak = add nuw i64 %.sroa.01.033.i.i.i.i, 1    ; 2 uses
  %exitcond65.not.i.i.i.i = icmp eq i64 %i.ak, %i.s
  br i1 %exitcond65.not.i.i.i.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.c

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.c, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i, %bb.g, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge
  %i.al = phi ptr [ %.pre886, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.y, %bb.g ], [ %i.y, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.y, %bb.c ] ; 10 uses
  %i.am = phi i64 [ %.pre884, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.x, %bb.g ], [ %i.x, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.x, %bb.c ] ; 23 uses
  %i.an = phi i64 [ %.pre882, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.w, %bb.g ], [ %i.w, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.w, %bb.c ] ; 5 uses
  %i.ao = phi ptr [ %.pre880, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.v, %bb.g ], [ %i.v, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.v, %bb.c ] ; 11 uses
  %i.ap = phi i64 [ %.pre878, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.u, %bb.g ], [ %i.u, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.u, %bb.c ] ; 27 uses
  %i.aq = phi i64 [ %.pre, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.t, %bb.g ], [ %i.t, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.t, %bb.c ] ; 8 uses
  %.sroa.0.0.i52 = phi i64 [ 0, %._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.r, %bb.c ], [ %.sroa.01.033.i.i.i.i, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ %i.s, %bb.g ] ; 4 uses
  %i.ar = sub i64 %3, %.sroa.0.0.i52              ; 9 uses
  %i.as = sub i64 %6, %.sroa.0.0.i52              ; 9 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 37 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 25 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 14 uses
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !2565, !noundef !5 ; 3 uses
  %i.bf = load i64, ptr %i.bc, align 8, !range !10, !alias.scope !2565, !noundef !5
  %i.bg = icmp eq i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.i, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc), !noalias !2566
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.h, %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !2565, !nonnull !5, !noundef !5
  %i.bj = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %i.be ; 4 uses
  store i64 0, ptr %i.bj, align 8
  %.sroa.4234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %2, ptr %.sroa.4234.0..sroa_idx, align 8
  %.sroa.5235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 %5, ptr %.sroa.5235.0..sroa_idx, align 8
  %.sroa.6236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store i64 %i.h, ptr %.sroa.6236.0..sroa_idx, align 8
  %i.bk = add i64 %i.be, 1
  store i64 %i.bk, ptr %i.bd, align 8, !alias.scope !2565
  br label %bb.b

bb.j:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.0188.0 = phi i64 [ %i.j, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.0188.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit ] ; 39 uses
  %.sroa.0.0 = phi i64 [ %i.i, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit ] ; 31 uses
  %i.bl = icmp ult i64 %.sroa.0.0, %i.ar          ; 2 uses
  %i.bm = icmp ult i64 %.sroa.0188.0, %i.as       ; 3 uses
  %or.cond305 = select i1 %i.bl, i1 %i.bm, i1 false
  br i1 %or.cond305, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit, %bb.j
  br i1 %i.bl, label %bb.av, label %bb.aw

bb.l:                                             ; preds = %bb.j
  %i.bn = sub nuw i64 %i.ar, %.sroa.0.0           ; 5 uses
  %i.bo = sub nuw i64 %i.as, %.sroa.0188.0        ; 6 uses
  %i.bp = icmp ult i64 %i.bn, 97
  %i.bq = icmp ult i64 %i.bo, 97
  %or.cond.i = or i1 %i.bq, %i.bp
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i53 = call noundef i64 @llvm.umin.i64(i64 %i.bo, i64 %i.bn) ; 2 uses
  %.sroa.0.0.i54 = call noundef i64 @llvm.umax.i64(i64 %i.bo, i64 %i.bn)
  %i.br = shl nuw i64 %.sroa.0.0.i53, 1
  %i.bs = icmp slt i64 %.sroa.0.0.i53, 0
  br i1 %i.bs, label %bb.n, label %bb.o, !prof !13

bb.n:                                             ; preds = %bb.m
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.052.0.i = phi i64 [ -1, %bb.n ], [ %i.br, %bb.m ]
  %i.bt = icmp ult i64 %.sroa.0.0.i54, %.sroa.052.0.i
  br i1 %i.bt, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not.i = icmp ule i64 %i.bo, %i.bn
  %i.bu = icmp ule i64 %i.bn, %i.bo
  %.not.i.fr = freeze i1 %.not.i
  %i.bv = sub i64 %.sroa.0188.0, %i.aq            ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.ap
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.bv
  br label %bb.q

.loopexit:                                        ; preds = %.outer, %bb.ae, %bb.t, %bb.ad
  %.sroa.525.2.i.ph.lcssa478 = phi i64 [ %.sroa.525.2.i.ph632, %bb.t ], [ %.sroa.525.2.i.ph632, %bb.ae ], [ %.sroa.525.2.i.ph632, %bb.ad ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa471 = phi i64 [ %.sroa.023.1.i.ph633, %bb.t ], [ %.sroa.023.1.i.ph633, %bb.ae ], [ %.sroa.023.1.i.ph633, %bb.ad ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa464 = phi i64 [ %.sroa.9.2.i.ph634, %bb.t ], [ %.sroa.9.2.i.ph634, %bb.ae ], [ %.sroa.9.2.i.ph634, %bb.ad ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa457 = phi i64 [ %.sroa.12.2.i.ph635, %bb.t ], [ %.sroa.12.2.i.ph635, %bb.ae ], [ %.sroa.12.2.i.ph635, %bb.ad ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %.not.i57 = icmp ugt i64 %spec.select306, 4
  %or.cond311 = or i1 %i.by, %.not.i57
  br i1 %or.cond311, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit
  %.sroa.12.0.i640 = phi i64 [ undef, %bb.p ], [ %.sroa.12.2.i.ph.lcssa457, %.loopexit ]
  %.sroa.9.0.i639 = phi i64 [ undef, %bb.p ], [ %.sroa.9.2.i.ph.lcssa464, %.loopexit ]
  %.sroa.023.0.i638 = phi i64 [ 0, %bb.p ], [ %.sroa.023.1.i.ph.lcssa471, %.loopexit ]
  %.sroa.525.0.i637 = phi i64 [ undef, %bb.p ], [ %.sroa.525.2.i.ph.lcssa478, %.loopexit ]
  %.sroa.0221.0636 = phi i64 [ 0, %bb.p ], [ %spec.select306, %.loopexit ] ; 11 uses
  %i.by = icmp eq i64 %.sroa.0221.0636, 4         ; 2 uses
  %i.bz = add nuw nsw i64 %.sroa.0221.0636, 1
  %spec.select306 = select i1 %i.by, i64 4, i64 %i.bz ; 2 uses
  %i.ca = icmp eq i64 %.sroa.0221.0636, 0
  %i.cb = add i64 %.sroa.0221.0636, %.sroa.0.0    ; 2 uses
  %i.cc = sub i64 %i.cb, %i.an                    ; 5 uses
  %i.cd = icmp ult i64 %i.cc, %i.am               ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.cc ; 2 uses
  %i.cf = sub i64 %i.ar, %i.cb
  br label %.lr.ph

bb.r:                                             ; preds = %.loopexit
  %i.cg = trunc nuw i64 %.sroa.023.1.i.ph.lcssa471 to i1
  br i1 %i.cg, label %.loopexit388, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit

.loopexit388:                                     ; preds = %bb.af, %bb.r
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa478, %bb.r ], [ %.sroa.0221.0636, %bb.af ] ; 5 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa464, %bb.r ], [ %.us-phi544, %bb.af ] ; 6 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa457, %bb.r ], [ %.sroa.01.0.i.lcssa, %bb.af ] ; 3 uses
  %i.ch = icmp eq i64 %.sroa.525.1.i, 0
  %i.ci = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  %.pre887 = load i64, ptr %i.ba, align 8, !noalias !2567 ; 10 uses
  br i1 %i.ch, label %bb.an, label %bb.ao

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.t
  %.sroa.0222.0519 = phi i64 [ %spec.select308, %bb.t ], [ %.sroa.0222.0.ph631, %.lr.ph.split ] ; 3 uses
  %i.cj = icmp eq i64 %.sroa.0222.0519, 4         ; 3 uses
  %i.ck = add nuw nsw i64 %.sroa.0222.0519, 1
  %spec.select308 = select i1 %i.cj, i64 4, i64 %i.ck ; 3 uses
  %i.cl = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2568
  br i1 %i.cl, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.s

bb.s:                                             ; preds = %.lr.ph.split.split
  %.not643 = icmp eq i64 %.sroa.0222.0519, 0
  br i1 %.not643, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30
  %.not.i59 = icmp ugt i64 %spec.select308, 4
  %or.cond312 = select i1 %i.cj, i1 true, i1 %.not.i59
  br i1 %or.cond312, label %.loopexit, label %.lr.ph.split.split

bb.u:                                             ; preds = %bb.s
  br i1 %i.bw, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit31, label %.split.loopexit1112

.split.loopexit1112:                              ; preds = %bb.u
  %i.cm = sub i64 %.sroa.0188.0, %i.aq
  br label %.split

.split:                                           ; preds = %bb.ac, %.split.loopexit1112
  %.us-phi = phi i64 [ %i.cm, %.split.loopexit1112 ], [ %i.dd, %bb.ac ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #28, !noalias !2569
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit31: ; preds = %bb.u
  br i1 %i.cd, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30, label %.split529

.split529:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit31, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit31.us
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cc, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #28, !noalias !2570
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit31
  %.val49 = load i32, ptr %i.bx, align 4, !noundef !5
  %.val50 = load i32, ptr %i.ce, align 4, !noundef !5
  %.not309 = icmp eq i32 %.val49, %.val50
  br i1 %.not309, label %.split533, label %bb.t

.split533.loopexit:                               ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30.us
  %.pre888 = sub i64 %i.as, %i.dc
  br label %.split533

.split533:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30, %.split533.loopexit
  %.pre-phi = phi i64 [ %.pre888, %.split533.loopexit ], [ %i.bo, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30 ]
  %.us-phi539 = phi i64 [ %i.dc, %.split533.loopexit ], [ %.sroa.0188.0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30 ]
  %.us-phi542 = phi i1 [ %i.cz, %.split533.loopexit ], [ %i.cj, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30 ]
  %.us-phi543 = phi i64 [ %spec.select308.us, %.split533.loopexit ], [ %spec.select308, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30 ] ; 2 uses
  %.us-phi544 = phi i64 [ %.sroa.0222.0519.us, %.split533.loopexit ], [ 0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit30 ] ; 6 uses
  %.sroa.0.0.i63 = call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %i.cf) ; 3 uses
  %.not644 = icmp eq i64 %.sroa.0.0.i63, 0
  br i1 %.not644, label %.outer, label %.lr.ph628

.lr.ph628:                                        ; preds = %.split533
  %i.cn = sub i64 %.us-phi539, %i.aq              ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph628, %bb.aa
  %.sroa.01.0.i627 = phi i64 [ 0, %.lr.ph628 ], [ %i.cx, %bb.aa ] ; 5 uses
  %i.co = and i64 %.sroa.01.0.i627, 1023
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cq = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2568
  br i1 %i.cq, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cr = add nuw i64 %i.cn, %.sroa.01.0.i627     ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.ap
  br i1 %i.cs, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit29, label %bb.y

bb.y:                                             ; preds = %bb.x
end_hunk_10
begin_hunk_11_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter:bb.a
  br label %.outer

bb.an:                                            ; preds = %.loopexit388
  br i1 %i.ci, label %bb.ap, label %bb.ar

bb.ao:                                            ; preds = %.loopexit388
  %i.dv = load i64, ptr %i.az, align 8, !range !10, !noalias !2567, !noundef !5
  %i.dw = icmp eq i64 %.pre887, %i.dv             ; 2 uses
  br i1 %i.ci, label %bb.as, label %bb.at

.sink.split.sink.split:                           ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit69, %bb.as, %bb.ar
  %.pre887.sink.ph = phi i64 [ %.pre887, %bb.as ], [ %.pre887, %bb.ar ], [ %i.eo, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit69 ]
  %.sink1296.ph = phi i64 [ 1, %bb.as ], [ 2, %bb.ar ], [ 2, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit69 ]
  %.sroa.0188.0.sink.ph = phi i64 [ %.sroa.525.1.i, %bb.as ], [ %.sroa.0188.0, %bb.ar ], [ %.sroa.0188.0, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit69 ]
  %.sroa.9.1.i.sink.ph = phi i64 [ %.sroa.0188.0, %bb.as ], [ %.sroa.9.1.i, %bb.ar ], [ %.sroa.9.1.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit69 ]
  %.sink1293.ph = phi i64 [ 1, %bb.as ], [ 1, %bb.ar ], [ 2, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit69 ]
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az), !noalias !2567
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit69, %bb.as, %bb.ar
  %.pre887.sink = phi i64 [ %.pre887, %bb.as ], [ %i.eo, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit69 ], [ %.pre887, %bb.ar ], [ %.pre887.sink.ph, %.sink.split.sink.split ]
  %.sink1296 = phi i64 [ 1, %bb.as ], [ 2, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit69 ], [ 2, %bb.ar ], [ %.sink1296.ph, %.sink.split.sink.split ]
  %.sroa.0188.0.sink = phi i64 [ %.sroa.525.1.i, %bb.as ], [ %.sroa.0188.0, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit69 ], [ %.sroa.0188.0, %bb.ar ], [ %.sroa.0188.0.sink.ph, %.sink.split.sink.split ]
  %.sroa.9.1.i.sink = phi i64 [ %.sroa.0188.0, %bb.as ], [ %.sroa.9.1.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit69 ], [ %.sroa.9.1.i, %bb.ar ], [ %.sroa.9.1.i.sink.ph, %.sink.split.sink.split ]
  %.sink1293 = phi i64 [ 1, %bb.as ], [ 2, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit69 ], [ 1, %bb.ar ], [ %.sink1293.ph, %.sink.split.sink.split ]
  %i.dx = load ptr, ptr %i.bb, align 8, !noalias !2567, !nonnull !5, !noundef !5
  %i.dy = getelementptr inbounds nuw [40 x i8], ptr %i.dx, i64 %.pre887.sink ; 4 uses
  store i64 %.sink1296, ptr %i.dy, align 8, !noalias !2567
  %.sroa.4254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4254.0..sroa_idx, align 8, !noalias !2567
  %.sroa.5255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store i64 %.sroa.0188.0.sink, ptr %.sroa.5255.0..sroa_idx, align 8, !noalias !2567
  %.sroa.6256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  store i64 %.sroa.9.1.i.sink, ptr %.sroa.6256.0..sroa_idx, align 8, !noalias !2567
  %i.dz = add i64 %.pre887, %.sink1293            ; 2 uses
  store i64 %i.dz, ptr %i.ba, align 8, !noalias !2567
  br label %bb.ap

bb.ap:                                            ; preds = %.sink.split, %bb.an
  %i.ea = phi i64 [ %.pre887, %bb.an ], [ %i.dz, %.sink.split ] ; 3 uses
  %i.eb = add i64 %.sroa.525.1.i, %.sroa.0.0      ; 2 uses
  %i.ec = add i64 %.sroa.9.1.i, %.sroa.0188.0     ; 2 uses
  %i.ed = load i64, ptr %i.az, align 8, !range !10, !alias.scope !2574, !noalias !2567, !noundef !5
  %i.ee = icmp eq i64 %i.ea, %i.ed
  br i1 %i.ee, label %bb.aq, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit66

bb.aq:                                            ; preds = %bb.ap
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az), !noalias !2575
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit66

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit66: ; preds = %bb.ap, %bb.aq
  %i.ef = load ptr, ptr %i.bb, align 8, !alias.scope !2574, !noalias !2567, !nonnull !5, !noundef !5
  %i.eg = getelementptr inbounds nuw [40 x i8], ptr %i.ef, i64 %i.ea ; 4 uses
  store i64 0, ptr %i.eg, align 8, !noalias !2567
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store i64 %i.eb, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !2567
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store i64 %i.ec, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !2567
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  store i64 %.sroa.12.1.i, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !2567
  %i.eh = add i64 %i.ea, 1
  store i64 %i.eh, ptr %i.ba, align 8, !alias.scope !2574, !noalias !2567
  %i.ei = add i64 %i.eb, %.sroa.12.1.i
  %i.ej = add i64 %i.ec, %.sroa.12.1.i
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit

bb.ar:                                            ; preds = %bb.an
  %i.ek = load i64, ptr %i.az, align 8, !range !10, !alias.scope !2576, !noalias !2567, !noundef !5
  %i.el = icmp eq i64 %.pre887, %i.ek
  br i1 %i.el, label %.sink.split.sink.split, label %.sink.split

bb.as:                                            ; preds = %bb.ao
  br i1 %i.dw, label %.sink.split.sink.split, label %.sink.split

bb.at:                                            ; preds = %bb.ao
  br i1 %i.dw, label %bb.au, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit69

bb.au:                                            ; preds = %bb.at
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az), !noalias !2577
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit69

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit69: ; preds = %bb.at, %bb.au
  %i.em = load ptr, ptr %i.bb, align 8, !alias.scope !2578, !noalias !2567, !nonnull !5, !noundef !5
  %i.en = getelementptr inbounds nuw [40 x i8], ptr %i.em, i64 %.pre887 ; 4 uses
  store i64 1, ptr %i.en, align 8, !noalias !2567
  %.sroa.4269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4269.0..sroa_idx, align 8, !noalias !2567
  %.sroa.5270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5270.0..sroa_idx, align 8, !noalias !2567
  %.sroa.6271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  store i64 %.sroa.0188.0, ptr %.sroa.6271.0..sroa_idx, align 8, !noalias !2567
  %i.eo = add i64 %.pre887, 1                     ; 4 uses
  store i64 %i.eo, ptr %i.ba, align 8, !alias.scope !2578, !noalias !2567
  %i.ep = load i64, ptr %i.az, align 8, !range !10, !alias.scope !2579, !noalias !2567, !noundef !5
  %i.eq = icmp eq i64 %i.eo, %i.ep
  br i1 %i.eq, label %.sink.split.sink.split, label %.sink.split

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split, %.lr.ph.split.us, %bb.w, %bb.l, %bb.o, %bb.r, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit66
  %.sroa.0188.2 = phi i64 [ %.sroa.0188.0, %bb.l ], [ %.sroa.0188.0, %bb.o ], [ %.sroa.0188.0, %bb.r ], [ %i.ej, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit66 ], [ %.sroa.0188.0, %.lr.ph.split.split ], [ %.sroa.0188.0, %.lr.ph.split.us ], [ %.sroa.0188.0, %bb.w ], [ %.sroa.0188.0, %.lr.ph.split.split.us ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.l ], [ %.sroa.0.0, %bb.o ], [ %.sroa.0.0, %bb.r ], [ %i.ei, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit66 ], [ %.sroa.0.0, %.lr.ph.split.split ], [ %.sroa.0.0, %.lr.ph.split.us ], [ %.sroa.0.0, %bb.w ], [ %.sroa.0.0, %.lr.ph.split.split.us ] ; 2 uses
  %i.er = icmp eq i64 %.sroa.0.2, %.sroa.0.0
  %i.es = icmp eq i64 %.sroa.0188.2, %.sroa.0188.0
  %or.cond = select i1 %i.er, i1 %i.es, i1 false
  br i1 %or.cond, label %bb.k, label %bb.j

bb.av:                                            ; preds = %bb.k
  br i1 %i.bm, label %bb.ba, label %bb.ay

bb.aw:                                            ; preds = %bb.k
  br i1 %i.bm, label %.thread, label %bb.ax

bb.ax:                                            ; preds = %.sink.split.i.thread, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit.thread302, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit71, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit154, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit153, %bb.gs, %bb.aw
  %.not26 = icmp eq i64 %.sroa.0.0.i52, 0
  br i1 %.not26, label %bb.gz, label %bb.gx

bb.ay:                                            ; preds = %bb.av
  %i.et = sub nuw i64 %i.ar, %.sroa.0.0
  %i.eu = load i64, ptr %i.ba, align 8, !alias.scope !2580, !noundef !5 ; 3 uses
  %i.ev = load i64, ptr %i.az, align 8, !range !10, !alias.scope !2580, !noundef !5
  %i.ew = icmp eq i64 %i.eu, %i.ev
  br i1 %i.ew, label %bb.az, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit71

bb.az:                                            ; preds = %bb.ay
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az), !noalias !2581
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit71

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit71: ; preds = %bb.ay, %bb.az
  %i.ex = load ptr, ptr %i.bb, align 8, !alias.scope !2580, !nonnull !5, !noundef !5
  %i.ey = getelementptr inbounds nuw [40 x i8], ptr %i.ex, i64 %i.eu ; 4 uses
  store i64 1, ptr %i.ey, align 8
  %.sroa.4244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4244.0..sroa_idx, align 8
  %.sroa.5245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i64 %i.et, ptr %.sroa.5245.0..sroa_idx, align 8
  %.sroa.6246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  store i64 %.sroa.0188.0, ptr %.sroa.6246.0..sroa_idx, align 8
  %i.ez = add i64 %i.eu, 1
  store i64 %i.ez, ptr %i.ba, align 8, !alias.scope !2580
  br label %bb.ax

bb.ba:                                            ; preds = %bb.av
  %i.fa = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2582
  br i1 %i.fa, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fb = sub nuw i64 %i.ar, %.sroa.0.0           ; 22 uses
  %i.fc = sub nuw i64 %i.as, %.sroa.0188.0        ; 22 uses
  %i.fd = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.fb, i64 %i.fc) ; 2 uses
  %i.fe = extractvalue { i64, i1 } %i.fd, 1
  br i1 %i.fe, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.bc, !prof !13

bb.bc:                                            ; preds = %bb.bb
  %i.ff = extractvalue { i64, i1 } %i.fd, 0
  %.sroa.0.0.i73 = call noundef i64 @llvm.umax.i64(i64 %i.fc, i64 %i.fb)
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.fc, i64 %i.fb)
  %i.fg = add i64 %.sroa.0.0.i72, -65
  %or.cond.i27 = icmp ult i64 %i.fg, -64
  %i.fh = icmp ult i64 %.sroa.0.0.i73, 512
  %or.cond1.i = or i1 %i.fh, %or.cond.i27
  %i.fi = icmp ugt i64 %i.ff, 64000000
  %or.cond3.i = select i1 %or.cond1.i, i1 true, i1 %i.fi
  br i1 %or.cond3.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.not.i28 = icmp ugt i64 %i.fb, %i.fc
  br i1 %.not.i28, label %bb.be, label %bb.dx

bb.be:                                            ; preds = %bb.bd
  call void @llvm.experimental.noalias.scope.decl(metadata !2583)
  %i.fj = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2584
  br i1 %i.fj, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fk = add i64 %i.fb, 1                        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2584
  %i.fl = add nuw i64 %i.fc, 1
  %i.fm = mul i64 %i.fk, %i.fl                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2585)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2586
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.fm, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !2587
  %i.fn = load i64, ptr %i.c, align 8, !range !9, !noalias !2586, !noundef !5
  %i.fo = trunc nuw i64 %i.fn to i1
  %i.fp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !range !17, !noalias !2586, !noundef !5 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.fo, label %bb.bg, label %.lr.ph687.i, !prof !13

bb.bg:                                            ; preds = %bb.bf
  %i.fs = load i64, ptr %i.fr, align 8, !noalias !2586
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.fq, i64 %i.fs) #28, !noalias !2587
  unreachable

.lr.ph687.i:                                      ; preds = %bb.bf
  %i.ft = load ptr, ptr %i.fr, align 8, !noalias !2586, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2586
  store i64 %i.fq, ptr %i.d, align 8, !alias.scope !2585, !noalias !2584
  %i.fu = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store ptr %i.ft, ptr %i.fu, align 8, !alias.scope !2585, !noalias !2584
  %i.fv = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 7 uses
  store i64 %i.fm, ptr %i.fv, align 8, !alias.scope !2585, !noalias !2584
  %invariant.op688.i = sub i64 %.sroa.0188.0, %i.aq ; 3 uses
  %invariant.op.i = sub i64 %.sroa.0.0, %i.an     ; 3 uses
  br label %.lr.ph687.split.i

.lr.ph687.split.i:                                ; preds = %.lr.ph687.i, %..loopexit257_crit_edge.split.us.i
  %.sroa.0102.0686.i = phi i64 [ %i.fw, %..loopexit257_crit_edge.split.us.i ], [ %i.fc, %.lr.ph687.i ] ; 2 uses
  %i.fw = add i64 %.sroa.0102.0686.i, -1          ; 4 uses
  %i.fx = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.di unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2588

._crit_edge714.i:                                 ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i
  br i1 %i.ks, label %bb.bh, label %bb.bj

.lr.ph713.i:                                      ; preds = %..loopexit257_crit_edge.split.us.i, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i
  %.sroa.05.0.not712.i = phi i1 [ false, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i ], [ true, %..loopexit257_crit_edge.split.us.i ] ; 3 uses
  %.sroa.09.0711.i = phi i64 [ %.sroa.09.3.i, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i ], [ 0, %..loopexit257_crit_edge.split.us.i ] ; 13 uses
  %.sroa.038.0710.i = phi i64 [ %.sroa.038.3.i, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i ], [ 0, %..loopexit257_crit_edge.split.us.i ] ; 18 uses
  %i.fy = and i64 %.sroa.038.0710.i, 1023
  %i.fz = icmp eq i64 %i.fy, 0
  %or.cond170.i = select i1 %.sroa.05.0.not712.i, i1 %i.fz, i1 false ; 2 uses
  br i1 %or.cond170.i, label %bb.bn, label %bb.bm

bb.bh:                                            ; preds = %._crit_edge714.i
  %i.ga = add i64 %.sroa.038.3.i, %.sroa.0.0      ; 2 uses
  %i.gb = sub nuw i64 %i.fb, %.sroa.038.3.i
  %i.gc = add i64 %.sroa.09.3.i, %.sroa.0188.0    ; 2 uses
  %i.gd = load i64, ptr %i.az, align 8, !range !10, !alias.scope !2589, !noundef !5
  %i.ge = icmp eq i64 %i.kq, %i.gd
  br i1 %i.ge, label %bb.bi, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2588

_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i: ; preds = %bb.bi, %bb.bh
  %i.gf = load ptr, ptr %i.bb, align 8, !alias.scope !2589, !nonnull !5, !noundef !5
  %i.gg = getelementptr inbounds nuw [40 x i8], ptr %i.gf, i64 %i.kq ; 4 uses
  store i64 1, ptr %i.gg, align 8, !noalias !2588
  %.sroa.4225.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store i64 %i.ga, ptr %.sroa.4225.0..sroa_idx.i, align 8, !noalias !2588
  %.sroa.5226.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store i64 %i.gb, ptr %.sroa.5226.0..sroa_idx.i, align 8, !noalias !2588
  %.sroa.6227.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  store i64 %i.gc, ptr %.sroa.6227.0..sroa_idx.i, align 8, !noalias !2588
  %i.gh = add i64 %.sink1244.i, 2                 ; 2 uses
  store i64 %i.gh, ptr %i.ba, align 8, !alias.scope !2589
  br i1 %i.kr, label %bb.bk, label %.sink.split.i.thread

bb.bj:                                            ; preds = %._crit_edge714.i
  br i1 %i.kr, label %._crit_edge890, label %.sink.split.i.thread

._crit_edge890:                                   ; preds = %bb.bj
  %.pre891 = add i64 %.sroa.038.3.i, %.sroa.0.0
  %.pre893 = add i64 %.sroa.09.3.i, %.sroa.0188.0
  br label %bb.bk

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dj, %bb.bn, %bb.by, %bb.cl, %bb.cw, %bb.cy, %bb.bz, %bb.cm, %.lr.ph687.split.i, %bb.du, %.invoke.i, %bb.bl, %bb.bi
  %lpad.loopexit.split-lp1600 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.d) #26
          to label %common.resume unwind label %bb.dw, !noalias !2588

bb.bk:                                            ; preds = %._crit_edge890, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i
  %.pre-phi894 = phi i64 [ %.pre893, %._crit_edge890 ], [ %i.gc, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i ]
  %.pre-phi892 = phi i64 [ %.pre891, %._crit_edge890 ], [ %i.ga, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i ]
  %i.gi = phi i64 [ %i.kq, %._crit_edge890 ], [ %i.gh, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i ] ; 3 uses
  %i.gj = sub nuw i64 %i.fc, %.sroa.09.3.i
  %i.gk = load i64, ptr %i.az, align 8, !range !10, !alias.scope !2590, !noundef !5
  %i.gl = icmp eq i64 %i.gi, %i.gk
  br i1 %i.gl, label %bb.bl, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2588

_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i: ; preds = %bb.bl, %bb.bk
  %i.gm = load ptr, ptr %i.bb, align 8, !alias.scope !2590, !nonnull !5, !noundef !5
  %i.gn = getelementptr inbounds nuw [40 x i8], ptr %i.gm, i64 %i.gi ; 4 uses
  store i64 2, ptr %i.gn, align 8, !noalias !2588
  %.sroa.4235.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store i64 %.pre-phi892, ptr %.sroa.4235.0..sroa_idx.i, align 8, !noalias !2588
  %.sroa.5236.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store i64 %.pre-phi894, ptr %.sroa.5236.0..sroa_idx.i, align 8, !noalias !2588
  %.sroa.6237.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  store i64 %i.gj, ptr %.sroa.6237.0..sroa_idx.i, align 8, !noalias !2588
  %i.go = add i64 %i.gi, 1
  store i64 %i.go, ptr %i.ba, align 8, !alias.scope !2590
  br label %.sink.split.i.thread

.sink.split.i.thread:                             ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i, %bb.bj, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.d), !noalias !2588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2584
  br label %bb.ax

.sink.split.i:                                    ; preds = %.loopexit242.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !2588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2584
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit.thread

bb.bm:                                            ; preds = %bb.bo, %.lr.ph713.i
  %i.gp = mul i64 %.sroa.09.0711.i, %i.fk         ; 4 uses
  %i.gq = add i64 %.sroa.038.0710.i, %.sroa.0.0   ; 2 uses
  %i.gr = add i64 %.sroa.09.0711.i, %.sroa.0188.0 ; 7 uses
  %i.gs = sub i64 %i.gr, %i.aq                    ; 3 uses
  %i.gt = icmp ult i64 %i.gs, %i.ap
  br i1 %i.gt, label %bb.bp, label %.invoke.i

.invoke.i:                                        ; preds = %bb.ds, %bb.dq, %bb.do, %bb.dn, %bb.dl, %bb.bv, %bb.bt, %bb.bs, %bb.br, %bb.bp, %bb.bm, %bb.cu, %bb.cs, %bb.cr, %bb.cq, %bb.co, %bb.ch, %bb.cf, %bb.ce, %bb.cd, %bb.cb, %bb.da, %bb.cx, %bb.dd, %bb.dc, %bb.dv, %.lr.ph.split.i
  %i.gu = phi i64 [ %i.jb, %bb.ch ], [ %.reass.i, %bb.dv ], [ %.reass.i, %.lr.ph.split.i ], [ %i.ki, %bb.cu ], [ %i.gs, %bb.bm ], [ %i.lp, %bb.dd ], [ %i.ap, %bb.cx ], [ %i.li, %bb.dc ], [ %i.am, %bb.da ], [ %i.il, %bb.cb ], [ %i.ip, %bb.cd ], [ %i.it, %bb.cf ], [ %i.ir, %bb.ce ], [ %i.jq, %bb.co ], [ %i.ju, %bb.cq ], [ %i.ka, %bb.cs ], [ %i.jw, %bb.cr ], [ %i.hd, %bb.br ], [ %i.hf, %bb.bs ], [ %i.hv, %bb.bv ], [ %i.gz, %bb.bp ], [ %i.hk, %bb.bt ], [ %i.mm, %bb.dn ], [ %.reass.us.i, %bb.dl ], [ %i.nf, %bb.ds ], [ %i.mq, %bb.do ], [ %i.mw, %bb.dq ]
  %i.gv = phi i64 [ %.pre947.i.a, %bb.ch ], [ %i.ap, %bb.dv ], [ %i.ap, %.lr.ph.split.i ], [ %.pre945.i, %bb.cu ], [ %i.ap, %bb.bm ], [ %i.lk, %bb.dd ], [ %i.ap, %bb.cx ], [ %i.lk, %bb.dc ], [ %i.am, %bb.da ], [ %i.am, %bb.cb ], [ %.pre947.i.a, %bb.cd ], [ %.pre947.i.a, %bb.cf ], [ %.pre947.i.a, %bb.ce ], [ %i.ap, %bb.co ], [ %.pre945.i, %bb.cq ], [ %.pre945.i, %bb.cs ], [ %.pre945.i, %bb.cr ], [ %.pre943.i, %bb.br ], [ %.pre943.i, %bb.bs ], [ %.pre943.i, %bb.bv ], [ %i.am, %bb.bp ], [ %.pre943.i, %bb.bt ], [ %i.mo, %bb.dn ], [ %i.am, %bb.dl ], [ %i.ne, %bb.ds ], [ %i.mo, %bb.do ], [ %i.mx, %bb.dq ]
  %i.gw = phi ptr [ @63, %bb.ch ], [ @74, %bb.dv ], [ @74, %.lr.ph.split.i ], [ @69, %bb.cu ], [ @52, %bb.bm ], [ @73, %bb.dd ], [ @70, %bb.cx ], [ @72, %bb.dc ], [ @71, %bb.da ], [ @59, %bb.cb ], [ @60, %bb.cd ], [ @61, %bb.cf ], [ @62, %bb.ce ], [ @64, %bb.co ], [ @66, %bb.cq ], [ @67, %bb.cs ], [ @68, %bb.cr ], [ @54, %bb.br ], [ @56, %bb.bs ], [ @57, %bb.bv ], [ @53, %bb.bp ], [ @55, %bb.bt ], [ @76, %bb.dn ], [ @75, %bb.dl ], [ @79, %bb.ds ], [ @77, %bb.do ], [ @78, %bb.dq ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.gu, i64 noundef %i.gv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gw) #28
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2588

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.bn:                                            ; preds = %.lr.ph713.i
  %i.gx = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.bo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2588

bb.bo:                                            ; preds = %bb.bn
  br i1 %i.gx, label %.loopexit242.i, label %bb.bm

bb.bp:                                            ; preds = %bb.bm
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.gs ; 2 uses
  %i.gz = sub i64 %i.gq, %i.an                    ; 3 uses
  %i.ha = icmp ult i64 %i.gz, %i.am
  br i1 %i.ha, label %bb.bq, label %.invoke.i

bb.bq:                                            ; preds = %bb.bp
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.gz ; 2 uses
  %.val208.i = load i32, ptr %i.gy, align 4, !noalias !2588, !noundef !5
  %.val209.i = load i32, ptr %i.hb, align 4, !noalias !2588, !noundef !5
  %i.hc = icmp eq i32 %.val208.i, %.val209.i
  %.pre.i = load ptr, ptr %i.fu, align 8, !noalias !2584 ; 4 uses
  %.pre943.i = load i64, ptr %i.fv, align 8, !noalias !2584 ; 8 uses
  br i1 %i.hc, label %bb.br, label %._crit_edge949.i

._crit_edge949.i:                                 ; preds = %bb.bq
  %.pre950.i = add nuw i64 %.sroa.09.0711.i, 1
  %.pre951.i = mul i64 %.pre950.i, %i.fk
  br label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.hd = add i64 %i.gp, %.sroa.038.0710.i        ; 3 uses
  %i.he = icmp ult i64 %i.hd, %.pre943.i
  br i1 %i.he, label %bb.bt, label %.invoke.i

bb.bs:                                            ; preds = %bb.bu, %._crit_edge949.i
  %.pre-phi952.i = phi i64 [ %.pre951.i, %._crit_edge949.i ], [ %i.hi, %bb.bu ] ; 3 uses
  %i.hf = add i64 %.pre-phi952.i, %.sroa.038.0710.i ; 3 uses
  %i.hg = icmp ult i64 %i.hf, %.pre943.i
  br i1 %i.hg, label %bb.bv, label %.invoke.i

bb.bt:                                            ; preds = %bb.br
  %i.hh = add nuw i64 %.sroa.09.0711.i, 1
  %i.hi = mul i64 %i.hh, %i.fk                    ; 2 uses
  %i.hj = add nuw i64 %.sroa.038.0710.i, 1
  %i.hk = add i64 %i.hj, %i.hi                    ; 3 uses
  %i.hl = icmp ult i64 %i.hk, %.pre943.i
  br i1 %i.hl, label %bb.bu, label %.invoke.i

bb.bu:                                            ; preds = %bb.bt
  %i.hm = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.hd
  %i.hn = load i8, ptr %i.hm, align 1, !noalias !2588, !noundef !5
  %i.ho = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.hk
  %i.hp = load i8, ptr %i.ho, align 1, !noalias !2588, !noundef !5
  %i.hq = add i8 %i.hp, 1
  %i.hr = icmp eq i8 %i.hn, %i.hq
  br i1 %i.hr, label %.preheader.i, label %bb.bs

.preheader.i:                                     ; preds = %bb.bu
  %i.hs = icmp ult i64 %.sroa.09.0711.i, %i.fc
  %i.ht = icmp ult i64 %.sroa.038.0710.i, %i.fb
  %or.cond177696.i = select i1 %i.hs, i1 %i.ht, i1 false
  br i1 %or.cond177696.i, label %.lr.ph699.i, label %._crit_edge700.i

bb.bv:                                            ; preds = %bb.bs
  %i.hu = add i64 %.sroa.038.0710.i, 1            ; 3 uses
  %i.hv = add i64 %i.hu, %i.gp                    ; 3 uses
  %i.hw = icmp ult i64 %i.hv, %.pre943.i
  br i1 %i.hw, label %bb.bw, label %.invoke.i

bb.bw:                                            ; preds = %bb.bv
  %i.hx = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.hf
  %i.hy = load i8, ptr %i.hx, align 1, !noalias !2588, !noundef !5
  %i.hz = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.hv
  %i.ia = load i8, ptr %i.hz, align 1, !noalias !2588, !noundef !5
  %.not164.i = icmp ult i8 %i.hy, %i.ia
  br i1 %.not164.i, label %.preheader243.i, label %.preheader248.i

.preheader248.i:                                  ; preds = %bb.bw
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.09.0711.i, i64 %i.fc) ; 3 uses
  %exitcond.not.i1556.not = icmp ult i64 %.sroa.09.0711.i, %i.fc
  br i1 %exitcond.not.i1556.not, label %.lr.ph1558, label %._crit_edge1559

.preheader243.i:                                  ; preds = %bb.bw
  %i.ib = icmp ult i64 %.sroa.038.0710.i, %i.fb
  br i1 %i.ib, label %.lr.ph691.i, label %._crit_edge.i

.lr.ph691.i:                                      ; preds = %.preheader243.i
  %i.ic = add i64 %.pre-phi952.i, 1
  %i.id = add i64 %i.gp, 1
  br label %bb.bx

bb.bx:                                            ; preds = %bb.cj, %.lr.ph691.i
  %.sroa.038.1690.i = phi i64 [ %.sroa.038.0710.i, %.lr.ph691.i ], [ %i.ji, %bb.cj ] ; 9 uses
  %i.ie = and i64 %.sroa.038.1690.i, 1023
  %i.if = icmp eq i64 %i.ie, 0
  %or.cond173.i = and i1 %.sroa.05.0.not712.i, %i.if
  br i1 %or.cond173.i, label %bb.bz, label %bb.cb

._crit_edge.i:                                    ; preds = %bb.cj, %bb.ci, %bb.cg, %.preheader243.i
  %.sroa.038.1.lcssa.i = phi i64 [ %.sroa.038.0710.i, %.preheader243.i ], [ %i.fb, %bb.cj ], [ %.sroa.038.1690.i, %bb.ci ], [ %.sroa.038.1690.i, %bb.cg ] ; 3 uses
  %i.ig = sub nuw i64 %.sroa.038.1.lcssa.i, %.sroa.038.0710.i ; 2 uses
  %i.ih = load i64, ptr %i.ba, align 8, !alias.scope !2591, !noundef !5 ; 3 uses
  %i.ii = load i64, ptr %i.az, align 8, !range !10, !alias.scope !2591, !noundef !5
  %i.ij = icmp eq i64 %i.ih, %i.ii
  br i1 %i.ij, label %bb.by, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i

bb.by:                                            ; preds = %._crit_edge.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2588

bb.bz:                                            ; preds = %bb.bx
  %i.ik = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.ca unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2588

bb.ca:                                            ; preds = %bb.bz
  br i1 %i.ik, label %.loopexit242.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bx
  %i.il = add i64 %.sroa.038.1690.i, %invariant.op.i ; 3 uses
  %i.im = icmp ult i64 %i.il, %i.am
  br i1 %i.im, label %bb.cc, label %.invoke.i

bb.cc:                                            ; preds = %bb.cb
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.il
  %.val206.i = load i32, ptr %i.gy, align 4, !noalias !2588, !noundef !5
  %.val207.i = load i32, ptr %i.in, align 4, !noalias !2588, !noundef !5
  %i.io = icmp eq i32 %.val206.i, %.val207.i
  %.pre946.i.a = load ptr, ptr %i.fu, align 8, !noalias !2584 ; 4 uses
  %.pre947.i.a = load i64, ptr %i.fv, align 8, !noalias !2584 ; 8 uses
  br i1 %i.io, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.ip = add i64 %.sroa.038.1690.i, %i.gp        ; 3 uses
  %i.iq = icmp ult i64 %i.ip, %.pre947.i.a
  br i1 %i.iq, label %bb.cf, label %.invoke.i

bb.ce:                                            ; preds = %bb.cg, %bb.cc
  %i.ir = add i64 %.sroa.038.1690.i, %.pre-phi952.i ; 3 uses
  %i.is = icmp ult i64 %i.ir, %.pre947.i.a
  br i1 %i.is, label %bb.ch, label %.invoke.i

bb.cf:                                            ; preds = %bb.cd
  %i.it = add i64 %i.ic, %.sroa.038.1690.i        ; 3 uses
  %i.iu = icmp ult i64 %i.it, %.pre947.i.a
  br i1 %i.iu, label %bb.cg, label %.invoke.i

bb.cg:                                            ; preds = %bb.cf
  %i.iv = getelementptr inbounds nuw i8, ptr %.pre946.i.a, i64 %i.ip
  %i.iw = load i8, ptr %i.iv, align 1, !noalias !2588, !noundef !5
  %i.ix = getelementptr inbounds nuw i8, ptr %.pre946.i.a, i64 %i.it
  %i.iy = load i8, ptr %i.ix, align 1, !noalias !2588, !noundef !5
  %i.iz = add i8 %i.iy, 1
  %i.ja = icmp eq i8 %i.iw, %i.iz
  br i1 %i.ja, label %._crit_edge.i, label %bb.ce

bb.ch:                                            ; preds = %bb.ce
  %i.jb = add i64 %i.id, %.sroa.038.1690.i        ; 3 uses
  %i.jc = icmp ult i64 %i.jb, %.pre947.i.a
  br i1 %i.jc, label %bb.ci, label %.invoke.i

bb.ci:                                            ; preds = %bb.ch
  %i.jd = getelementptr inbounds nuw i8, ptr %.pre946.i.a, i64 %i.ir
  %i.je = load i8, ptr %i.jd, align 1, !noalias !2588, !noundef !5
  %i.jf = getelementptr inbounds nuw i8, ptr %.pre946.i.a, i64 %i.jb
  %i.jg = load i8, ptr %i.jf, align 1, !noalias !2588, !noundef !5
  %i.jh = icmp ult i8 %i.je, %i.jg
  br i1 %i.jh, label %bb.cj, label %._crit_edge.i

bb.cj:                                            ; preds = %bb.ci
  %i.ji = add nuw i64 %.sroa.038.1690.i, 1        ; 2 uses
  %i.jj = icmp ult i64 %i.ji, %i.fb
  br i1 %i.jj, label %bb.bx, label %._crit_edge.i

bb.ck:                                            ; preds = %bb.cv
  %exitcond.not.i = icmp eq i64 %.pre-phi954.i, %umax.i
  br i1 %exitcond.not.i, label %._crit_edge1559, label %.lr.ph1558

.lr.ph1558:                                       ; preds = %.preheader248.i, %bb.ck
  %.sroa.09.1.i1557 = phi i64 [ %.pre-phi954.i, %bb.ck ], [ %.sroa.09.0711.i, %.preheader248.i ] ; 6 uses
  br i1 %or.cond170.i, label %bb.cm, label %bb.co

._crit_edge1559:                                  ; preds = %bb.ck, %bb.ct, %bb.cv, %.preheader248.i
  %.sroa.09.1.lcssa.i = phi i64 [ %umax.i, %.preheader248.i ], [ %umax.i, %bb.ck ], [ %.sroa.09.1.i1557, %bb.ct ], [ %.sroa.09.1.i1557, %bb.cv ] ; 3 uses
  %i.jk = sub i64 %.sroa.09.1.lcssa.i, %.sroa.09.0711.i ; 2 uses
  %i.jl = load i64, ptr %i.ba, align 8, !alias.scope !2592, !noundef !5 ; 3 uses
  %i.jm = load i64, ptr %i.az, align 8, !range !10, !alias.scope !2592, !noundef !5
  %i.jn = icmp eq i64 %i.jl, %i.jm
  br i1 %i.jn, label %bb.cl, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i

bb.cl:                                            ; preds = %._crit_edge1559
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2588

bb.cm:                                            ; preds = %.lr.ph1558
  %i.jo = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.cn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2588

bb.cn:                                            ; preds = %bb.cm
  br i1 %i.jo, label %.loopexit242.i, label %bb.co

bb.co:                                            ; preds = %bb.cn, %.lr.ph1558
  %i.jp = mul i64 %.sroa.09.1.i1557, %i.fk        ; 2 uses
  %i.jq = add i64 %.sroa.09.1.i1557, %invariant.op688.i ; 3 uses
  %i.jr = icmp ult i64 %i.jq, %i.ap
  br i1 %i.jr, label %bb.cp, label %.invoke.i

bb.cp:                                            ; preds = %bb.co
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.jq
  %.val204.i = load i32, ptr %i.js, align 4, !noalias !2588, !noundef !5
  %.val205.i = load i32, ptr %i.hb, align 4, !noalias !2588, !noundef !5
  %i.jt = icmp eq i32 %.val204.i, %.val205.i
  %.pre944.i = load ptr, ptr %i.fu, align 8, !noalias !2584 ; 4 uses
  %.pre945.i = load i64, ptr %i.fv, align 8, !noalias !2584 ; 8 uses
  br i1 %i.jt, label %bb.cq, label %._crit_edge948.i

._crit_edge948.i:                                 ; preds = %bb.cp
  %.pre953.i = add i64 %.sroa.09.1.i1557, 1       ; 2 uses
  %.pre955.i = mul i64 %.pre953.i, %i.fk
  br label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.ju = add i64 %i.jp, %.sroa.038.0710.i        ; 3 uses
  %i.jv = icmp ult i64 %i.ju, %.pre945.i
  br i1 %i.jv, label %bb.cs, label %.invoke.i

bb.cr:                                            ; preds = %bb.ct, %._crit_edge948.i
  %.pre-phi956.i.a = phi i64 [ %.pre955.i, %._crit_edge948.i ], [ %i.jz, %bb.ct ]
  %.pre-phi954.i = phi i64 [ %.pre953.i, %._crit_edge948.i ], [ %i.jy, %bb.ct ] ; 2 uses
  %i.jw = add i64 %.pre-phi956.i.a, %.sroa.038.0710.i ; 3 uses
  %i.jx = icmp ult i64 %i.jw, %.pre945.i
  br i1 %i.jx, label %bb.cu, label %.invoke.i

bb.cs:                                            ; preds = %bb.cq
  %i.jy = add i64 %.sroa.09.1.i1557, 1            ; 2 uses
  %i.jz = mul i64 %i.jy, %i.fk                    ; 2 uses
  %i.ka = add i64 %i.jz, %i.hu                    ; 3 uses
  %i.kb = icmp ult i64 %i.ka, %.pre945.i
  br i1 %i.kb, label %bb.ct, label %.invoke.i

bb.ct:                                            ; preds = %bb.cs
  %i.kc = getelementptr inbounds nuw i8, ptr %.pre944.i, i64 %i.ju
  %i.kd = load i8, ptr %i.kc, align 1, !noalias !2588, !noundef !5
  %i.ke = getelementptr inbounds nuw i8, ptr %.pre944.i, i64 %i.ka
  %i.kf = load i8, ptr %i.ke, align 1, !noalias !2588, !noundef !5
  %i.kg = add i8 %i.kf, 1
  %i.kh = icmp eq i8 %i.kd, %i.kg
  br i1 %i.kh, label %._crit_edge1559, label %bb.cr

bb.cu:                                            ; preds = %bb.cr
  %i.ki = add i64 %i.jp, %i.hu                    ; 3 uses
  %i.kj = icmp ult i64 %i.ki, %.pre945.i
  br i1 %i.kj, label %bb.cv, label %.invoke.i

bb.cv:                                            ; preds = %bb.cu
  %i.kk = getelementptr inbounds nuw i8, ptr %.pre944.i, i64 %i.jw
  %i.kl = load i8, ptr %i.kk, align 1, !noalias !2588, !noundef !5
  %i.km = getelementptr inbounds nuw i8, ptr %.pre944.i, i64 %i.ki
  %i.kn = load i8, ptr %i.km, align 1, !noalias !2588, !noundef !5
  %.not167.i = icmp ult i8 %i.kl, %i.kn
  br i1 %.not167.i, label %._crit_edge1559, label %bb.ck

_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.cw, %._crit_edge700.i, %bb.cl, %._crit_edge1559, %bb.by, %._crit_edge.i
  %.sink1244.i = phi i64 [ %i.ih, %bb.by ], [ %i.ku, %bb.cw ], [ %i.ku, %._crit_edge700.i ], [ %i.ih, %._crit_edge.i ], [ %i.jl, %._crit_edge1559 ], [ %i.jl, %bb.cl ] ; 3 uses
  %.sink1241.i = phi i64 [ 1, %bb.by ], [ 0, %bb.cw ], [ 0, %._crit_edge700.i ], [ 1, %._crit_edge.i ], [ 2, %._crit_edge1559 ], [ 2, %bb.cl ]
  %.sink1238.i = phi i64 [ %i.ig, %bb.by ], [ %i.gr, %bb.cw ], [ %i.gr, %._crit_edge700.i ], [ %i.ig, %._crit_edge.i ], [ %i.gr, %._crit_edge1559 ], [ %i.gr, %bb.cl ]
  %.sink.i = phi i64 [ %i.gr, %bb.by ], [ %i.kt, %bb.cw ], [ %i.kt, %._crit_edge700.i ], [ %i.gr, %._crit_edge.i ], [ %i.jk, %._crit_edge1559 ], [ %i.jk, %bb.cl ]
  %.sroa.038.3.i = phi i64 [ %.sroa.038.1.lcssa.i, %bb.by ], [ %.sroa.038.4.lcssa.i, %bb.cw ], [ %.sroa.038.4.lcssa.i, %._crit_edge700.i ], [ %.sroa.038.1.lcssa.i, %._crit_edge.i ], [ %.sroa.038.0710.i, %._crit_edge1559 ], [ %.sroa.038.0710.i, %bb.cl ] ; 5 uses
  %.sroa.09.3.i = phi i64 [ %.sroa.09.0711.i, %bb.by ], [ %.sroa.09.4.lcssa.i, %bb.cw ], [ %.sroa.09.4.lcssa.i, %._crit_edge700.i ], [ %.sroa.09.0711.i, %._crit_edge.i ], [ %.sroa.09.1.lcssa.i, %._crit_edge1559 ], [ %.sroa.09.1.lcssa.i, %bb.cl ] ; 5 uses
  %i.ko = load ptr, ptr %i.bb, align 8, !alias.scope !2583, !nonnull !5, !noundef !5
  %i.kp = getelementptr inbounds nuw [40 x i8], ptr %i.ko, i64 %.sink1244.i ; 4 uses
  store i64 %.sink1241.i, ptr %i.kp, align 8, !noalias !2588
  %.sroa.4230.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  store i64 %i.gq, ptr %.sroa.4230.0..sroa_idx.i, align 8, !noalias !2588
  %.sroa.5231.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  store i64 %.sink1238.i, ptr %.sroa.5231.0..sroa_idx.i, align 8, !noalias !2588
  %.sroa.6232.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  store i64 %.sink.i, ptr %.sroa.6232.0..sroa_idx.i, align 8, !noalias !2588
  %i.kq = add i64 %.sink1244.i, 1                 ; 4 uses
  store i64 %i.kq, ptr %i.ba, align 8, !alias.scope !2583
  %i.kr = icmp ult i64 %.sroa.09.3.i, %i.fc       ; 3 uses
  %i.ks = icmp ult i64 %.sroa.038.3.i, %i.fb      ; 2 uses
  %or.cond.i75 = select i1 %i.kr, i1 %i.ks, i1 false
  br i1 %or.cond.i75, label %.lr.ph713.i, label %._crit_edge714.i

._crit_edge700.i:                                 ; preds = %bb.df, %bb.de, %bb.db, %.preheader.i
  %.sroa.038.4.lcssa.i = phi i64 [ %.sroa.038.0710.i, %.preheader.i ], [ %i.lo, %bb.df ], [ %.sroa.038.4697.i, %bb.db ], [ %.sroa.038.4697.i, %bb.de ] ; 3 uses
  %.sroa.09.4.lcssa.i = phi i64 [ %.sroa.09.0711.i, %.preheader.i ], [ %i.lm, %bb.df ], [ %.sroa.09.4698.i, %bb.db ], [ %.sroa.09.4698.i, %bb.de ] ; 2 uses
  %i.kt = sub nuw i64 %.sroa.038.4.lcssa.i, %.sroa.038.0710.i ; 2 uses
  %i.ku = load i64, ptr %i.ba, align 8, !alias.scope !2593, !noundef !5 ; 3 uses
  %i.kv = load i64, ptr %i.az, align 8, !range !10, !alias.scope !2593, !noundef !5
  %i.kw = icmp eq i64 %i.ku, %i.kv
  br i1 %i.kw, label %bb.cw, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i

bb.cw:                                            ; preds = %._crit_edge700.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2588

.lr.ph699.i:                                      ; preds = %.preheader.i, %bb.df
  %.sroa.09.4698.i = phi i64 [ %i.lm, %bb.df ], [ %.sroa.09.0711.i, %.preheader.i ] ; 5 uses
  %.sroa.038.4697.i = phi i64 [ %i.lo, %bb.df ], [ %.sroa.038.0710.i, %.preheader.i ] ; 6 uses
  %i.kx = and i64 %.sroa.038.4697.i, 1023
  %i.ky = icmp eq i64 %i.kx, 0
  %or.cond180.i = select i1 %.sroa.05.0.not712.i, i1 %i.ky, i1 false
  br i1 %or.cond180.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cz, %.lr.ph699.i
  %i.kz = mul i64 %.sroa.09.4698.i, %i.fk
  %i.la = add i64 %.sroa.09.4698.i, %invariant.op688.i ; 2 uses
  %i.lb = icmp ult i64 %i.la, %i.ap
  br i1 %i.lb, label %bb.da, label %.invoke.i

bb.cy:                                            ; preds = %.lr.ph699.i
  %i.lc = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.cz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2588

bb.cz:                                            ; preds = %bb.cy
  br i1 %i.lc, label %.loopexit242.i, label %bb.cx

bb.da:                                            ; preds = %bb.cx
  %i.ld = add i64 %.sroa.038.4697.i, %invariant.op.i ; 2 uses
  %i.le = icmp ult i64 %i.ld, %i.am
  br i1 %i.le, label %bb.db, label %.invoke.i

bb.db:                                            ; preds = %bb.da
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.la
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ld
  %.val202.i = load i32, ptr %i.lf, align 4, !noalias !2588, !noundef !5
  %.val203.i = load i32, ptr %i.lg, align 4, !noalias !2588, !noundef !5
  %i.lh = icmp eq i32 %.val202.i, %.val203.i
  br i1 %i.lh, label %bb.dc, label %._crit_edge700.i

bb.dc:                                            ; preds = %bb.db
  %i.li = add i64 %i.kz, %.sroa.038.4697.i        ; 3 uses
  %i.lj = load ptr, ptr %i.fu, align 8, !noalias !2584, !nonnull !5, !noundef !5 ; 2 uses
  %i.lk = load i64, ptr %i.fv, align 8, !noalias !2584, !noundef !5 ; 4 uses
  %i.ll = icmp ult i64 %i.li, %i.lk
  br i1 %i.ll, label %bb.dd, label %.invoke.i

bb.dd:                                            ; preds = %bb.dc
  %i.lm = add nuw i64 %.sroa.09.4698.i, 1         ; 4 uses
  %i.ln = mul i64 %i.lm, %i.fk
  %i.lo = add nuw i64 %.sroa.038.4697.i, 1        ; 4 uses
  %i.lp = add i64 %i.lo, %i.ln                    ; 3 uses
  %i.lq = icmp ult i64 %i.lp, %i.lk
  br i1 %i.lq, label %bb.de, label %.invoke.i

bb.de:                                            ; preds = %bb.dd
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.li
  %i.ls = load i8, ptr %i.lr, align 1, !noalias !2588, !noundef !5
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.lp
  %i.lu = load i8, ptr %i.lt, align 1, !noalias !2588, !noundef !5
  %i.lv = add i8 %i.lu, 1
  %i.lw = icmp eq i8 %i.ls, %i.lv
  br i1 %i.lw, label %bb.df, label %._crit_edge700.i

bb.df:                                            ; preds = %bb.de
  %i.lx = icmp ult i64 %i.lm, %i.fc
  %i.ly = icmp ult i64 %i.lo, %i.fb
  %or.cond177.i = and i1 %i.lx, %i.ly
  br i1 %or.cond177.i, label %.lr.ph699.i, label %._crit_edge700.i

.loopexit242.i:                                   ; preds = %bb.di, %bb.dk, %bb.bo, %bb.cn, %bb.ca, %bb.cz, %bb.dv
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.sink.split.i unwind label %bb.dg, !noalias !2588

bb.dg:                                            ; preds = %.loopexit242.i
  %i.lz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.dh, !noalias !2588

bb.dh:                                            ; preds = %bb.dg
  %i.ma = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !2588
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fz, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dg
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp1600, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.lz, %bb.dg ], [ %i.uc, %bb.fz ], [ %lpad.loopexit.split-lp1646, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

bb.di:                                            ; preds = %.lr.ph687.split.i
  br i1 %i.fx, label %.loopexit242.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.di
  %i.mb = mul i64 %i.fw, %i.fk                    ; 2 uses
  %i.mc = mul i64 %.sroa.0102.0686.i, %i.fk       ; 2 uses
  %.reass.i = add i64 %i.fw, %invariant.op688.i   ; 4 uses
  %i.md = icmp ult i64 %.reass.i, %i.ap
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.reass.i
  %.fr.i = freeze i1 %i.md
  br i1 %.fr.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.dt
  %.sroa.0105.0650.us.i = phi i64 [ %i.mf, %bb.dt ], [ %i.fb, %.lr.ph.i ] ; 3 uses
  %i.mf = add i64 %.sroa.0105.0650.us.i, -1       ; 6 uses
  %i.mg = and i64 %i.mf, 1023
  %i.mh = icmp eq i64 %i.mg, 0
  br i1 %i.mh, label %bb.dj, label %bb.dl

bb.dj:                                            ; preds = %.lr.ph.split.us.i
  %i.mi = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2588

bb.dk:                                            ; preds = %bb.dj
  br i1 %i.mi, label %.loopexit242.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %.lr.ph.split.us.i
  %.reass.us.i = add i64 %i.mf, %invariant.op.i   ; 3 uses
  %i.mj = icmp ult i64 %.reass.us.i, %i.am
  br i1 %i.mj, label %bb.dm, label %.invoke.i

bb.dm:                                            ; preds = %bb.dl
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.reass.us.i
  %.val.us.i = load i32, ptr %i.me, align 4, !noalias !2588, !noundef !5
  %.val201.us.i = load i32, ptr %i.mk, align 4, !noalias !2588, !noundef !5
  %i.ml = icmp eq i32 %.val.us.i, %.val201.us.i
  br i1 %i.ml, label %bb.dq, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.mm = add i64 %i.mf, %i.mc                    ; 3 uses
  %i.mn = load ptr, ptr %i.fu, align 8, !noalias !2584, !nonnull !5, !noundef !5 ; 3 uses
  %i.mo = load i64, ptr %i.fv, align 8, !noalias !2584, !noundef !5 ; 5 uses
  %i.mp = icmp ult i64 %i.mm, %i.mo
  br i1 %i.mp, label %bb.do, label %.invoke.i

bb.do:                                            ; preds = %bb.dn
  %i.mq = add i64 %.sroa.0105.0650.us.i, %i.mb    ; 3 uses
  %i.mr = icmp ult i64 %i.mq, %i.mo
  br i1 %i.mr, label %bb.dp, label %.invoke.i

bb.dp:                                            ; preds = %bb.do
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.mm
  %i.mt = load i8, ptr %i.ms, align 1, !noalias !2588, !noundef !5
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.mq
  %i.mv = load i8, ptr %i.mu, align 1, !noalias !2588, !noundef !5
  %.sroa.0.0.i.us.i = call noundef i8 @llvm.umax.i8(i8 %i.mv, i8 %i.mt)
  br label %bb.ds

bb.dq:                                            ; preds = %bb.dm
  %i.mw = add i64 %.sroa.0105.0650.us.i, %i.mc    ; 3 uses
  %i.mx = load i64, ptr %i.fv, align 8, !noalias !2584, !noundef !5 ; 3 uses
  %i.my = icmp ult i64 %i.mw, %i.mx
  br i1 %i.my, label %bb.dr, label %.invoke.i

bb.dr:                                            ; preds = %bb.dq
  %i.mz = load ptr, ptr %i.fu, align 8, !noalias !2584, !nonnull !5, !noundef !5 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.mw
  %i.nb = load i8, ptr %i.na, align 1, !noalias !2588, !noundef !5
  %i.nc = add i8 %i.nb, 1
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dp
  %i.nd = phi ptr [ %i.mz, %bb.dr ], [ %i.mn, %bb.dp ]
  %i.ne = phi i64 [ %i.mx, %bb.dr ], [ %i.mo, %bb.dp ] ; 2 uses
  %.sroa.04.0.us.i = phi i8 [ %i.nc, %bb.dr ], [ %.sroa.0.0.i.us.i, %bb.dp ]
  %i.nf = add i64 %i.mf, %i.mb                    ; 3 uses
  %i.ng = icmp ult i64 %i.nf, %i.ne
  br i1 %i.ng, label %bb.dt, label %.invoke.i

bb.dt:                                            ; preds = %bb.ds
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.nf
  store i8 %.sroa.04.0.us.i, ptr %i.nh, align 1, !noalias !2588
  %.not168.us.i = icmp eq i64 %i.mf, 0
  br i1 %.not168.us.i, label %..loopexit257_crit_edge.split.us.i, label %.lr.ph.split.us.i

..loopexit257_crit_edge.split.us.i:               ; preds = %bb.dt
  %.not.i76 = icmp eq i64 %i.fw, 0
  br i1 %.not.i76, label %.lr.ph713.i, label %.lr.ph687.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.ni = and i64 %i.fb, 1023
  %i.nj = icmp eq i64 %i.ni, 1
  br i1 %i.nj, label %bb.du, label %.invoke.i

bb.du:                                            ; preds = %.lr.ph.split.i
  %i.nk = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2588

bb.dv:                                            ; preds = %bb.du
  br i1 %i.nk, label %.loopexit242.i, label %.invoke.i

bb.dw:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.nl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !2588
  unreachable

bb.dx:                                            ; preds = %bb.bd
  call void @llvm.experimental.noalias.scope.decl(metadata !2594)
  %i.nm = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2595
  br i1 %i.nm, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.nn = add i64 %i.fc, 1                        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2595
  %i.no = add i64 %i.fb, 1
  %i.np = mul i64 %i.no, %i.nn                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2596)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2597
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.np, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !2598
  %i.nq = load i64, ptr %i.a, align 8, !range !9, !noalias !2597, !noundef !5
  %i.nr = trunc nuw i64 %i.nq to i1
  %i.ns = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.nt = load i64, ptr %i.ns, align 8, !range !17, !noalias !2597, !noundef !5 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.nr, label %bb.dz, label %.lr.ph702.i, !prof !13

bb.dz:                                            ; preds = %bb.dy
  %i.nv = load i64, ptr %i.nu, align 8, !noalias !2597
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.nt, i64 %i.nv) #28, !noalias !2598
  unreachable

.lr.ph702.i:                                      ; preds = %bb.dy
  %i.nw = load ptr, ptr %i.nu, align 8, !noalias !2597, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2597
  store i64 %i.nt, ptr %i.b, align 8, !alias.scope !2596, !noalias !2595
  %i.nx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 7 uses
  store ptr %i.nw, ptr %i.nx, align 8, !alias.scope !2596, !noalias !2595
  %i.ny = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  store i64 %i.np, ptr %i.ny, align 8, !alias.scope !2596, !noalias !2595
  %invariant.op.i92 = sub i64 %.sroa.0188.0, %i.aq ; 4 uses
  %invariant.op703.i = sub i64 %.sroa.0.0, %i.an  ; 3 uses
  br label %.lr.ph702.split.i

.lr.ph702.split.i:                                ; preds = %.lr.ph702.i, %..loopexit257_crit_edge.split.us.i150
  %.sroa.0102.0701.i = phi i64 [ %i.nz, %..loopexit257_crit_edge.split.us.i150 ], [ %i.fb, %.lr.ph702.i ] ; 2 uses
  %i.nz = add i64 %.sroa.0102.0701.i, -1          ; 4 uses
  %i.oa = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2599

._crit_edge730.i:                                 ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i118
  br i1 %i.su, label %bb.ea, label %bb.ec

.lr.ph729.i:                                      ; preds = %..loopexit257_crit_edge.split.us.i150, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i118
  %.sroa.05.0.not728.i = phi i1 [ false, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i118 ], [ true, %..loopexit257_crit_edge.split.us.i150 ] ; 3 uses
  %.sroa.09.0727.i = phi i64 [ %.sroa.09.3.i120, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i118 ], [ 0, %..loopexit257_crit_edge.split.us.i150 ] ; 14 uses
  %.sroa.039.0726.i = phi i64 [ %.sroa.039.3.i, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i118 ], [ 0, %..loopexit257_crit_edge.split.us.i150 ] ; 17 uses
  %i.ob = and i64 %.sroa.039.0726.i, 1023
  %i.oc = icmp eq i64 %i.ob, 0
  %or.cond170.i103 = select i1 %.sroa.05.0.not728.i, i1 %i.oc, i1 false ; 2 uses
  br i1 %or.cond170.i103, label %bb.eg, label %bb.ef

bb.ea:                                            ; preds = %._crit_edge730.i
  %i.od = add i64 %.sroa.09.3.i120, %.sroa.0.0    ; 2 uses
  %i.oe = sub nuw i64 %i.fb, %.sroa.09.3.i120
  %i.of = add i64 %.sroa.039.3.i, %.sroa.0188.0   ; 2 uses
  %i.og = load i64, ptr %i.az, align 8, !range !10, !alias.scope !2600, !noundef !5
  %i.oh = icmp eq i64 %i.st, %i.og
  br i1 %i.oh, label %bb.eb, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i99

bb.eb:                                            ; preds = %bb.ea
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2599

_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i99: ; preds = %bb.eb, %bb.ea
  %i.oi = load ptr, ptr %i.bb, align 8, !alias.scope !2600, !nonnull !5, !noundef !5
  %i.oj = getelementptr inbounds nuw [40 x i8], ptr %i.oi, i64 %i.st ; 4 uses
  store i64 1, ptr %i.oj, align 8, !noalias !2599
  %.sroa.4225.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  store i64 %i.od, ptr %.sroa.4225.0..sroa_idx.i100, align 8, !noalias !2599
  %.sroa.5226.0..sroa_idx.i101 = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  store i64 %i.oe, ptr %.sroa.5226.0..sroa_idx.i101, align 8, !noalias !2599
  %.sroa.6227.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %i.oj, i64 24
  store i64 %i.of, ptr %.sroa.6227.0..sroa_idx.i102, align 8, !noalias !2599
  %i.ok = add i64 %.sink1257.i, 2                 ; 2 uses
  store i64 %i.ok, ptr %i.ba, align 8, !alias.scope !2600
  br i1 %i.sv, label %bb.ed, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit.thread302

bb.ec:                                            ; preds = %._crit_edge730.i
  br i1 %i.sv, label %._crit_edge889, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit.thread302

._crit_edge889:                                   ; preds = %bb.ec
  %.pre895 = add i64 %.sroa.09.3.i120, %.sroa.0.0
  %.pre897 = add i64 %.sroa.039.3.i, %.sroa.0188.0
  br label %bb.ed

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gc, %bb.eg, %bb.er, %bb.fe, %bb.fp, %bb.fr, %bb.es, %bb.ff, %.lr.ph702.split.i, %bb.gn, %.invoke.i104, %bb.ee, %bb.eb
  %lpad.loopexit.split-lp1646 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.b) #26
          to label %common.resume unwind label %bb.gr, !noalias !2599

bb.ed:                                            ; preds = %._crit_edge889, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i99
  %.pre-phi898 = phi i64 [ %.pre897, %._crit_edge889 ], [ %i.of, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i99 ]
  %.pre-phi896 = phi i64 [ %.pre895, %._crit_edge889 ], [ %i.od, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i99 ]
  %i.ol = phi i64 [ %i.st, %._crit_edge889 ], [ %i.ok, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i99 ] ; 3 uses
  %i.om = sub nuw i64 %i.fc, %.sroa.039.3.i
  %i.on = load i64, ptr %i.az, align 8, !range !10, !alias.scope !2601, !noundef !5
  %i.oo = icmp eq i64 %i.ol, %i.on
  br i1 %i.oo, label %bb.ee, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i84

bb.ee:                                            ; preds = %bb.ed
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i84 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2599

_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i84: ; preds = %bb.ee, %bb.ed
  %i.op = load ptr, ptr %i.bb, align 8, !alias.scope !2601, !nonnull !5, !noundef !5
  %i.oq = getelementptr inbounds nuw [40 x i8], ptr %i.op, i64 %i.ol ; 4 uses
  store i64 2, ptr %i.oq, align 8, !noalias !2599
  %.sroa.4235.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  store i64 %.pre-phi896, ptr %.sroa.4235.0..sroa_idx.i85, align 8, !noalias !2599
  %.sroa.5236.0..sroa_idx.i86 = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  store i64 %.pre-phi898, ptr %.sroa.5236.0..sroa_idx.i86, align 8, !noalias !2599
  %.sroa.6237.0..sroa_idx.i87 = getelementptr inbounds nuw i8, ptr %i.oq, i64 24
  store i64 %i.om, ptr %.sroa.6237.0..sroa_idx.i87, align 8, !noalias !2599
  %i.or = add i64 %i.ol, 1
  store i64 %i.or, ptr %i.ba, align 8, !alias.scope !2601
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit.thread302

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit.thread302: ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit181.i99, %bb.ec, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit182.i84
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.b), !noalias !2599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2595
  br label %bb.ax

bb.ef:                                            ; preds = %bb.eh, %.lr.ph729.i
  %i.os = mul i64 %.sroa.09.0727.i, %i.nn         ; 4 uses
  %i.ot = add i64 %.sroa.09.0727.i, %.sroa.0.0    ; 2 uses
  %i.ou = add i64 %.sroa.039.0726.i, %.sroa.0188.0 ; 7 uses
  %i.ov = sub i64 %i.ou, %i.aq                    ; 3 uses
  %i.ow = icmp ult i64 %i.ov, %i.ap
  br i1 %i.ow, label %bb.ei, label %.invoke.i104

.invoke.i104:                                     ; preds = %bb.gl, %bb.gj, %bb.gh, %bb.gg, %bb.ge, %bb.eo, %bb.em, %bb.el, %bb.ek, %bb.ei, %bb.ef, %bb.fn, %bb.fl, %bb.fk, %bb.fj, %bb.fh, %bb.fa, %bb.ey, %bb.ex, %bb.ew, %bb.eu, %bb.ft, %bb.fq, %bb.fw, %bb.fv, %bb.gq, %bb.gp
  %i.ox = phi i64 [ %i.re, %bb.fa ], [ %.reass.i141, %bb.gp ], [ %.reass704.i, %bb.gq ], [ %i.sl, %bb.fn ], [ %i.ov, %bb.ef ], [ %i.ts, %bb.fw ], [ %i.ap, %bb.fq ], [ %i.tl, %bb.fv ], [ %i.am, %bb.ft ], [ %i.qo, %bb.eu ], [ %i.qs, %bb.ew ], [ %i.qw, %bb.ey ], [ %i.qu, %bb.ex ], [ %i.rt, %bb.fh ], [ %i.rx, %bb.fj ], [ %i.sd, %bb.fl ], [ %i.rz, %bb.fk ], [ %i.pg, %bb.ek ], [ %i.pi, %bb.el ], [ %i.py, %bb.eo ], [ %i.pc, %bb.ei ], [ %i.pn, %bb.em ], [ %i.up, %bb.gg ], [ %.reass.us.i144, %bb.ge ], [ %i.vi, %bb.gl ], [ %i.ut, %bb.gh ], [ %i.uz, %bb.gj ]
  %i.oy = phi i64 [ %.pre963.i.a, %bb.fa ], [ %i.ap, %bb.gp ], [ %i.am, %bb.gq ], [ %.pre961.i, %bb.fn ], [ %i.ap, %bb.ef ], [ %i.tn, %bb.fw ], [ %i.ap, %bb.fq ], [ %i.tn, %bb.fv ], [ %i.am, %bb.ft ], [ %i.ap, %bb.eu ], [ %.pre963.i.a, %bb.ew ], [ %.pre963.i.a, %bb.ey ], [ %.pre963.i.a, %bb.ex ], [ %i.am, %bb.fh ], [ %.pre961.i, %bb.fj ], [ %.pre961.i, %bb.fl ], [ %.pre961.i, %bb.fk ], [ %.pre959.i, %bb.ek ], [ %.pre959.i, %bb.el ], [ %.pre959.i, %bb.eo ], [ %i.am, %bb.ei ], [ %.pre959.i, %bb.em ], [ %i.ur, %bb.gg ], [ %i.ap, %bb.ge ], [ %i.vh, %bb.gl ], [ %i.ur, %bb.gh ], [ %i.va, %bb.gj ]
  %i.oz = phi ptr [ @91, %bb.fa ], [ @102, %bb.gp ], [ @103, %bb.gq ], [ @97, %bb.fn ], [ @80, %bb.ef ], [ @101, %bb.fw ], [ @98, %bb.fq ], [ @100, %bb.fv ], [ @99, %bb.ft ], [ @86, %bb.eu ], [ @88, %bb.ew ], [ @89, %bb.ey ], [ @90, %bb.ex ], [ @93, %bb.fh ], [ @94, %bb.fj ], [ @95, %bb.fl ], [ @96, %bb.fk ], [ @82, %bb.ek ], [ @84, %bb.el ], [ @85, %bb.eo ], [ @81, %bb.ei ], [ @83, %bb.em ], [ @104, %bb.gg ], [ @102, %bb.ge ], [ @107, %bb.gl ], [ @105, %bb.gh ], [ @106, %bb.gj ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ox, i64 noundef %i.oy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oz) #28
          to label %.cont.i105 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2599

.cont.i105:                                       ; preds = %.invoke.i104
  unreachable

bb.eg:                                            ; preds = %.lr.ph729.i
  %i.pa = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.eh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2599

bb.eh:                                            ; preds = %bb.eg
  br i1 %i.pa, label %.loopexit242.i125, label %bb.ef

bb.ei:                                            ; preds = %bb.ef
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ov ; 2 uses
  %i.pc = sub i64 %i.ot, %i.an                    ; 3 uses
  %i.pd = icmp ult i64 %i.pc, %i.am
  br i1 %i.pd, label %bb.ej, label %.invoke.i104

bb.ej:                                            ; preds = %bb.ei
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.pc ; 2 uses
  %.val208.i106 = load i32, ptr %i.pb, align 4, !noalias !2599, !noundef !5
  %.val209.i107 = load i32, ptr %i.pe, align 4, !noalias !2599, !noundef !5
  %i.pf = icmp eq i32 %.val208.i106, %.val209.i107
  %.pre.i108 = load ptr, ptr %i.nx, align 8, !noalias !2595 ; 4 uses
  %.pre959.i = load i64, ptr %i.ny, align 8, !noalias !2595 ; 8 uses
  br i1 %i.pf, label %bb.ek, label %._crit_edge965.i

._crit_edge965.i:                                 ; preds = %bb.ej
  %.pre966.i = add nuw i64 %.sroa.09.0727.i, 1
  %.pre967.i = mul i64 %.pre966.i, %i.nn
  br label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.pg = add i64 %i.os, %.sroa.039.0726.i        ; 3 uses
  %i.ph = icmp ult i64 %i.pg, %.pre959.i
  br i1 %i.ph, label %bb.em, label %.invoke.i104

bb.el:                                            ; preds = %bb.en, %._crit_edge965.i
  %.pre-phi968.i = phi i64 [ %.pre967.i, %._crit_edge965.i ], [ %i.pl, %bb.en ] ; 3 uses
  %i.pi = add i64 %.pre-phi968.i, %.sroa.039.0726.i ; 3 uses
  %i.pj = icmp ult i64 %i.pi, %.pre959.i
  br i1 %i.pj, label %bb.eo, label %.invoke.i104

bb.em:                                            ; preds = %bb.ek
  %i.pk = add nuw i64 %.sroa.09.0727.i, 1
  %i.pl = mul i64 %i.pk, %i.nn                    ; 2 uses
  %i.pm = add nuw i64 %.sroa.039.0726.i, 1
  %i.pn = add i64 %i.pm, %i.pl                    ; 3 uses
  %i.po = icmp ult i64 %i.pn, %.pre959.i
  br i1 %i.po, label %bb.en, label %.invoke.i104

bb.en:                                            ; preds = %bb.em
  %i.pp = getelementptr inbounds nuw i8, ptr %.pre.i108, i64 %i.pg
  %i.pq = load i8, ptr %i.pp, align 1, !noalias !2599, !noundef !5
  %i.pr = getelementptr inbounds nuw i8, ptr %.pre.i108, i64 %i.pn
  %i.ps = load i8, ptr %i.pr, align 1, !noalias !2599, !noundef !5
  %i.pt = add i8 %i.ps, 1
  %i.pu = icmp eq i8 %i.pq, %i.pt
  br i1 %i.pu, label %.preheader.i132, label %bb.el

.preheader.i132:                                  ; preds = %bb.en
  %i.pv = icmp ult i64 %.sroa.09.0727.i, %i.fb
  %i.pw = icmp ult i64 %.sroa.039.0726.i, %i.fc
  %or.cond177712.i = select i1 %i.pv, i1 %i.pw, i1 false
  br i1 %or.cond177712.i, label %.lr.ph715.i, label %._crit_edge716.i

bb.eo:                                            ; preds = %bb.el
  %i.px = add i64 %.sroa.039.0726.i, 1            ; 3 uses
  %i.py = add i64 %i.px, %i.os                    ; 3 uses
  %i.pz = icmp ult i64 %i.py, %.pre959.i
  br i1 %i.pz, label %bb.ep, label %.invoke.i104

bb.ep:                                            ; preds = %bb.eo
  %i.qa = getelementptr inbounds nuw i8, ptr %.pre.i108, i64 %i.pi
  %i.qb = load i8, ptr %i.qa, align 1, !noalias !2599, !noundef !5
  %i.qc = getelementptr inbounds nuw i8, ptr %.pre.i108, i64 %i.py
  %i.qd = load i8, ptr %i.qc, align 1, !noalias !2599, !noundef !5
  %.not164.i109 = icmp ult i8 %i.qb, %i.qd
  br i1 %.not164.i109, label %.preheader243.i127, label %.preheader248.i110

.preheader248.i110:                               ; preds = %bb.ep
  %umax.i111 = call i64 @llvm.umax.i64(i64 %.sroa.09.0727.i, i64 %i.fb) ; 3 uses
  %exitcond.not.i1131548.not = icmp ult i64 %.sroa.09.0727.i, %i.fb
  br i1 %exitcond.not.i1131548.not, label %.lr.ph1550, label %._crit_edge1551

.preheader243.i127:                               ; preds = %bb.ep
  %i.qe = icmp ult i64 %.sroa.039.0726.i, %i.fc
  br i1 %i.qe, label %.lr.ph707.i, label %._crit_edge.i128

.lr.ph707.i:                                      ; preds = %.preheader243.i127
  %i.qf = add i64 %.pre-phi968.i, 1
  %i.qg = add i64 %i.os, 1
  br label %bb.eq

bb.eq:                                            ; preds = %bb.fc, %.lr.ph707.i
  %.sroa.039.1706.i = phi i64 [ %.sroa.039.0726.i, %.lr.ph707.i ], [ %i.rl, %bb.fc ] ; 9 uses
  %i.qh = and i64 %.sroa.039.1706.i, 1023
  %i.qi = icmp eq i64 %i.qh, 0
  %or.cond173.i129 = and i1 %.sroa.05.0.not728.i, %i.qi
  br i1 %or.cond173.i129, label %bb.es, label %bb.eu

._crit_edge.i128:                                 ; preds = %bb.fc, %bb.fb, %bb.ez, %.preheader243.i127
  %.sroa.039.1.lcssa.i = phi i64 [ %.sroa.039.0726.i, %.preheader243.i127 ], [ %i.fc, %bb.fc ], [ %.sroa.039.1706.i, %bb.fb ], [ %.sroa.039.1706.i, %bb.ez ] ; 3 uses
  %i.qj = sub nuw i64 %.sroa.039.1.lcssa.i, %.sroa.039.0726.i ; 2 uses
  %i.qk = load i64, ptr %i.ba, align 8, !alias.scope !2602, !noundef !5 ; 3 uses
  %i.ql = load i64, ptr %i.az, align 8, !range !10, !alias.scope !2602, !noundef !5
  %i.qm = icmp eq i64 %i.qk, %i.ql
  br i1 %i.qm, label %bb.er, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i118

bb.er:                                            ; preds = %._crit_edge.i128
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i118 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2599

bb.es:                                            ; preds = %bb.eq
  %i.qn = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.et unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2599

bb.et:                                            ; preds = %bb.es
  br i1 %i.qn, label %.loopexit242.i125, label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.eq
  %i.qo = add i64 %.sroa.039.1706.i, %invariant.op.i92 ; 3 uses
  %i.qp = icmp ult i64 %i.qo, %i.ap
  br i1 %i.qp, label %bb.ev, label %.invoke.i104

bb.ev:                                            ; preds = %bb.eu
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.qo
  %.val206.i130 = load i32, ptr %i.qq, align 4, !noalias !2599, !noundef !5
  %.val207.i131 = load i32, ptr %i.pe, align 4, !noalias !2599, !noundef !5
  %i.qr = icmp eq i32 %.val206.i130, %.val207.i131
  %.pre962.i.a = load ptr, ptr %i.nx, align 8, !noalias !2595 ; 4 uses
  %.pre963.i.a = load i64, ptr %i.ny, align 8, !noalias !2595 ; 8 uses
  br i1 %i.qr, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.qs = add i64 %.sroa.039.1706.i, %i.os        ; 3 uses
  %i.qt = icmp ult i64 %i.qs, %.pre963.i.a
  br i1 %i.qt, label %bb.ey, label %.invoke.i104

bb.ex:                                            ; preds = %bb.ez, %bb.ev
  %i.qu = add i64 %.sroa.039.1706.i, %.pre-phi968.i ; 3 uses
  %i.qv = icmp ult i64 %i.qu, %.pre963.i.a
  br i1 %i.qv, label %bb.fa, label %.invoke.i104

bb.ey:                                            ; preds = %bb.ew
  %i.qw = add i64 %i.qf, %.sroa.039.1706.i        ; 3 uses
  %i.qx = icmp ult i64 %i.qw, %.pre963.i.a
  br i1 %i.qx, label %bb.ez, label %.invoke.i104

bb.ez:                                            ; preds = %bb.ey
  %i.qy = getelementptr inbounds nuw i8, ptr %.pre962.i.a, i64 %i.qs
  %i.qz = load i8, ptr %i.qy, align 1, !noalias !2599, !noundef !5
  %i.ra = getelementptr inbounds nuw i8, ptr %.pre962.i.a, i64 %i.qw
  %i.rb = load i8, ptr %i.ra, align 1, !noalias !2599, !noundef !5
  %i.rc = add i8 %i.rb, 1
  %i.rd = icmp eq i8 %i.qz, %i.rc
  br i1 %i.rd, label %._crit_edge.i128, label %bb.ex

bb.fa:                                            ; preds = %bb.ex
  %i.re = add i64 %i.qg, %.sroa.039.1706.i        ; 3 uses
  %i.rf = icmp ult i64 %i.re, %.pre963.i.a
  br i1 %i.rf, label %bb.fb, label %.invoke.i104

bb.fb:                                            ; preds = %bb.fa
  %i.rg = getelementptr inbounds nuw i8, ptr %.pre962.i.a, i64 %i.qu
  %i.rh = load i8, ptr %i.rg, align 1, !noalias !2599, !noundef !5
  %i.ri = getelementptr inbounds nuw i8, ptr %.pre962.i.a, i64 %i.re
  %i.rj = load i8, ptr %i.ri, align 1, !noalias !2599, !noundef !5
  %i.rk = icmp ult i8 %i.rh, %i.rj
  br i1 %i.rk, label %bb.fc, label %._crit_edge.i128

bb.fc:                                            ; preds = %bb.fb
  %i.rl = add nuw i64 %.sroa.039.1706.i, 1        ; 2 uses
  %i.rm = icmp ult i64 %i.rl, %i.fc
  br i1 %i.rm, label %bb.eq, label %._crit_edge.i128

bb.fd:                                            ; preds = %bb.fo
  %exitcond.not.i113 = icmp eq i64 %.pre-phi970.i, %umax.i111
  br i1 %exitcond.not.i113, label %._crit_edge1551, label %.lr.ph1550

.lr.ph1550:                                       ; preds = %.preheader248.i110, %bb.fd
  %.sroa.09.1.i1121549 = phi i64 [ %.pre-phi970.i, %bb.fd ], [ %.sroa.09.0727.i, %.preheader248.i110 ] ; 6 uses
  br i1 %or.cond170.i103, label %bb.ff, label %bb.fh

._crit_edge1551:                                  ; preds = %bb.fd, %bb.fm, %bb.fo, %.preheader248.i110
  %.sroa.09.1.lcssa.i117 = phi i64 [ %umax.i111, %.preheader248.i110 ], [ %umax.i111, %bb.fd ], [ %.sroa.09.1.i1121549, %bb.fm ], [ %.sroa.09.1.i1121549, %bb.fo ] ; 3 uses
  %i.rn = sub nuw i64 %.sroa.09.1.lcssa.i117, %.sroa.09.0727.i ; 2 uses
  %i.ro = load i64, ptr %i.ba, align 8, !alias.scope !2603, !noundef !5 ; 3 uses
  %i.rp = load i64, ptr %i.az, align 8, !range !10, !alias.scope !2603, !noundef !5
  %i.rq = icmp eq i64 %i.ro, %i.rp
  br i1 %i.rq, label %bb.fe, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i118

bb.fe:                                            ; preds = %._crit_edge1551
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i118 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2599

bb.ff:                                            ; preds = %.lr.ph1550
  %i.rr = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2599

bb.fg:                                            ; preds = %bb.ff
  br i1 %i.rr, label %.loopexit242.i125, label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %.lr.ph1550
  %i.rs = mul i64 %.sroa.09.1.i1121549, %i.nn     ; 2 uses
  %i.rt = add i64 %.sroa.09.1.i1121549, %invariant.op703.i ; 3 uses
  %i.ru = icmp ult i64 %i.rt, %i.am
  br i1 %i.ru, label %bb.fi, label %.invoke.i104

bb.fi:                                            ; preds = %bb.fh
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.rt
  %.val204.i114 = load i32, ptr %i.pb, align 4, !noalias !2599, !noundef !5
  %.val205.i115 = load i32, ptr %i.rv, align 4, !noalias !2599, !noundef !5
  %i.rw = icmp eq i32 %.val204.i114, %.val205.i115
  %.pre960.i = load ptr, ptr %i.nx, align 8, !noalias !2595 ; 4 uses
  %.pre961.i = load i64, ptr %i.ny, align 8, !noalias !2595 ; 8 uses
  br i1 %i.rw, label %bb.fj, label %._crit_edge964.i

._crit_edge964.i:                                 ; preds = %bb.fi
  %.pre969.i = add i64 %.sroa.09.1.i1121549, 1    ; 2 uses
  %.pre971.i = mul i64 %.pre969.i, %i.nn
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.rx = add i64 %i.rs, %.sroa.039.0726.i        ; 3 uses
  %i.ry = icmp ult i64 %i.rx, %.pre961.i
  br i1 %i.ry, label %bb.fl, label %.invoke.i104

bb.fk:                                            ; preds = %bb.fm, %._crit_edge964.i
  %.pre-phi972.i.a = phi i64 [ %.pre971.i, %._crit_edge964.i ], [ %i.sc, %bb.fm ]
  %.pre-phi970.i = phi i64 [ %.pre969.i, %._crit_edge964.i ], [ %i.sb, %bb.fm ] ; 2 uses
  %i.rz = add i64 %.pre-phi972.i.a, %.sroa.039.0726.i ; 3 uses
  %i.sa = icmp ult i64 %i.rz, %.pre961.i
  br i1 %i.sa, label %bb.fn, label %.invoke.i104

bb.fl:                                            ; preds = %bb.fj
  %i.sb = add i64 %.sroa.09.1.i1121549, 1         ; 2 uses
  %i.sc = mul i64 %i.sb, %i.nn                    ; 2 uses
  %i.sd = add i64 %i.sc, %i.px                    ; 3 uses
  %i.se = icmp ult i64 %i.sd, %.pre961.i
  br i1 %i.se, label %bb.fm, label %.invoke.i104

bb.fm:                                            ; preds = %bb.fl
  %i.sf = getelementptr inbounds nuw i8, ptr %.pre960.i, i64 %i.rx
  %i.sg = load i8, ptr %i.sf, align 1, !noalias !2599, !noundef !5
  %i.sh = getelementptr inbounds nuw i8, ptr %.pre960.i, i64 %i.sd
  %i.si = load i8, ptr %i.sh, align 1, !noalias !2599, !noundef !5
  %i.sj = add i8 %i.si, 1
  %i.sk = icmp eq i8 %i.sg, %i.sj
  br i1 %i.sk, label %._crit_edge1551, label %bb.fk

bb.fn:                                            ; preds = %bb.fk
  %i.sl = add i64 %i.rs, %i.px                    ; 3 uses
  %i.sm = icmp ult i64 %i.sl, %.pre961.i
  br i1 %i.sm, label %bb.fo, label %.invoke.i104

bb.fo:                                            ; preds = %bb.fn
  %i.sn = getelementptr inbounds nuw i8, ptr %.pre960.i, i64 %i.rz
  %i.so = load i8, ptr %i.sn, align 1, !noalias !2599, !noundef !5
  %i.sp = getelementptr inbounds nuw i8, ptr %.pre960.i, i64 %i.sl
  %i.sq = load i8, ptr %i.sp, align 1, !noalias !2599, !noundef !5
  %.not167.i116 = icmp ult i8 %i.so, %i.sq
  br i1 %.not167.i116, label %._crit_edge1551, label %bb.fd

_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i118: ; preds = %bb.fp, %._crit_edge716.i, %bb.fe, %._crit_edge1551, %bb.er, %._crit_edge.i128
  %.sink1257.i = phi i64 [ %i.sx, %bb.fp ], [ %i.qk, %bb.er ], [ %i.sx, %._crit_edge716.i ], [ %i.qk, %._crit_edge.i128 ], [ %i.ro, %._crit_edge1551 ], [ %i.ro, %bb.fe ] ; 3 uses
  %.sink1254.i = phi i64 [ 0, %bb.fp ], [ 2, %bb.er ], [ 0, %._crit_edge716.i ], [ 2, %._crit_edge.i128 ], [ 1, %._crit_edge1551 ], [ 1, %bb.fe ]
  %.sink1251.i = phi i64 [ %i.ou, %bb.fp ], [ %i.ou, %bb.er ], [ %i.ou, %._crit_edge716.i ], [ %i.ou, %._crit_edge.i128 ], [ %i.rn, %._crit_edge1551 ], [ %i.rn, %bb.fe ]
  %.sink.i119 = phi i64 [ %i.sw, %bb.fp ], [ %i.qj, %bb.er ], [ %i.sw, %._crit_edge716.i ], [ %i.qj, %._crit_edge.i128 ], [ %i.ou, %._crit_edge1551 ], [ %i.ou, %bb.fe ]
  %.sroa.039.3.i = phi i64 [ %.sroa.039.4.lcssa.i, %bb.fp ], [ %.sroa.039.1.lcssa.i, %bb.er ], [ %.sroa.039.4.lcssa.i, %._crit_edge716.i ], [ %.sroa.039.1.lcssa.i, %._crit_edge.i128 ], [ %.sroa.039.0726.i, %._crit_edge1551 ], [ %.sroa.039.0726.i, %bb.fe ] ; 5 uses
  %.sroa.09.3.i120 = phi i64 [ %.sroa.09.4.lcssa.i133, %bb.fp ], [ %.sroa.09.0727.i, %bb.er ], [ %.sroa.09.4.lcssa.i133, %._crit_edge716.i ], [ %.sroa.09.0727.i, %._crit_edge.i128 ], [ %.sroa.09.1.lcssa.i117, %._crit_edge1551 ], [ %.sroa.09.1.lcssa.i117, %bb.fe ] ; 5 uses
  %i.sr = load ptr, ptr %i.bb, align 8, !alias.scope !2594, !nonnull !5, !noundef !5
  %i.ss = getelementptr inbounds nuw [40 x i8], ptr %i.sr, i64 %.sink1257.i ; 4 uses
  store i64 %.sink1254.i, ptr %i.ss, align 8, !noalias !2599
  %.sroa.4230.0..sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  store i64 %i.ot, ptr %.sroa.4230.0..sroa_idx.i121, align 8, !noalias !2599
  %.sroa.5231.0..sroa_idx.i122 = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  store i64 %.sink1251.i, ptr %.sroa.5231.0..sroa_idx.i122, align 8, !noalias !2599
  %.sroa.6232.0..sroa_idx.i123 = getelementptr inbounds nuw i8, ptr %i.ss, i64 24
  store i64 %.sink.i119, ptr %.sroa.6232.0..sroa_idx.i123, align 8, !noalias !2599
  %i.st = add i64 %.sink1257.i, 1                 ; 4 uses
  store i64 %i.st, ptr %i.ba, align 8, !alias.scope !2594
  %i.su = icmp ult i64 %.sroa.09.3.i120, %i.fb    ; 2 uses
  %i.sv = icmp ult i64 %.sroa.039.3.i, %i.fc      ; 3 uses
  %or.cond.i124 = select i1 %i.su, i1 %i.sv, i1 false
  br i1 %or.cond.i124, label %.lr.ph729.i, label %._crit_edge730.i

._crit_edge716.i:                                 ; preds = %bb.fy, %bb.fx, %bb.fu, %.preheader.i132
  %.sroa.039.4.lcssa.i = phi i64 [ %.sroa.039.0726.i, %.preheader.i132 ], [ %i.tr, %bb.fy ], [ %.sroa.039.4713.i, %bb.fu ], [ %.sroa.039.4713.i, %bb.fx ] ; 2 uses
  %.sroa.09.4.lcssa.i133 = phi i64 [ %.sroa.09.0727.i, %.preheader.i132 ], [ %i.tp, %bb.fy ], [ %.sroa.09.4714.i, %bb.fu ], [ %.sroa.09.4714.i, %bb.fx ] ; 3 uses
  %i.sw = sub i64 %.sroa.09.4.lcssa.i133, %.sroa.09.0727.i ; 2 uses
  %i.sx = load i64, ptr %i.ba, align 8, !alias.scope !2604, !noundef !5 ; 3 uses
  %i.sy = load i64, ptr %i.az, align 8, !range !10, !alias.scope !2604, !noundef !5
  %i.sz = icmp eq i64 %i.sx, %i.sy
  br i1 %i.sz, label %bb.fp, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i118

bb.fp:                                            ; preds = %._crit_edge716.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i118 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2599

.lr.ph715.i:                                      ; preds = %.preheader.i132, %bb.fy
  %.sroa.09.4714.i = phi i64 [ %i.tp, %bb.fy ], [ %.sroa.09.0727.i, %.preheader.i132 ] ; 5 uses
  %.sroa.039.4713.i = phi i64 [ %i.tr, %bb.fy ], [ %.sroa.039.0726.i, %.preheader.i132 ] ; 6 uses
  %i.ta = and i64 %.sroa.039.4713.i, 1023
  %i.tb = icmp eq i64 %i.ta, 0
  %or.cond180.i134 = select i1 %.sroa.05.0.not728.i, i1 %i.tb, i1 false
  br i1 %or.cond180.i134, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fs, %.lr.ph715.i
  %i.tc = mul i64 %.sroa.09.4714.i, %i.nn
  %i.td = add i64 %.sroa.039.4713.i, %invariant.op.i92 ; 2 uses
  %i.te = icmp ult i64 %i.td, %i.ap
  br i1 %i.te, label %bb.ft, label %.invoke.i104

bb.fr:                                            ; preds = %.lr.ph715.i
  %i.tf = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2599

bb.fs:                                            ; preds = %bb.fr
  br i1 %i.tf, label %.loopexit242.i125, label %bb.fq

bb.ft:                                            ; preds = %bb.fq
  %i.tg = add i64 %.sroa.09.4714.i, %invariant.op703.i ; 2 uses
  %i.th = icmp ult i64 %i.tg, %i.am
  br i1 %i.th, label %bb.fu, label %.invoke.i104

bb.fu:                                            ; preds = %bb.ft
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.td
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.tg
  %.val202.i135 = load i32, ptr %i.ti, align 4, !noalias !2599, !noundef !5
  %.val203.i136 = load i32, ptr %i.tj, align 4, !noalias !2599, !noundef !5
  %i.tk = icmp eq i32 %.val202.i135, %.val203.i136
  br i1 %i.tk, label %bb.fv, label %._crit_edge716.i

bb.fv:                                            ; preds = %bb.fu
  %i.tl = add i64 %i.tc, %.sroa.039.4713.i        ; 3 uses
  %i.tm = load ptr, ptr %i.nx, align 8, !noalias !2595, !nonnull !5, !noundef !5 ; 2 uses
  %i.tn = load i64, ptr %i.ny, align 8, !noalias !2595, !noundef !5 ; 4 uses
  %i.to = icmp ult i64 %i.tl, %i.tn
  br i1 %i.to, label %bb.fw, label %.invoke.i104

bb.fw:                                            ; preds = %bb.fv
  %i.tp = add nuw i64 %.sroa.09.4714.i, 1         ; 4 uses
  %i.tq = mul i64 %i.tp, %i.nn
  %i.tr = add nuw i64 %.sroa.039.4713.i, 1        ; 4 uses
  %i.ts = add i64 %i.tr, %i.tq                    ; 3 uses
  %i.tt = icmp ult i64 %i.ts, %i.tn
  br i1 %i.tt, label %bb.fx, label %.invoke.i104

bb.fx:                                            ; preds = %bb.fw
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tm, i64 %i.tl
  %i.tv = load i8, ptr %i.tu, align 1, !noalias !2599, !noundef !5
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tm, i64 %i.ts
  %i.tx = load i8, ptr %i.tw, align 1, !noalias !2599, !noundef !5
  %i.ty = add i8 %i.tx, 1
  %i.tz = icmp eq i8 %i.tv, %i.ty
  br i1 %i.tz, label %bb.fy, label %._crit_edge716.i

bb.fy:                                            ; preds = %bb.fx
  %i.ua = icmp ult i64 %i.tp, %i.fb
  %i.ub = icmp ult i64 %i.tr, %i.fc
  %or.cond177.i137 = and i1 %i.ua, %i.ub
  br i1 %or.cond177.i137, label %.lr.ph715.i, label %._crit_edge716.i

.loopexit242.i125:                                ; preds = %bb.gb, %bb.gd, %bb.eh, %bb.fg, %bb.et, %bb.fs, %bb.go
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.fz, !noalias !2599

bb.fz:                                            ; preds = %.loopexit242.i125
  %i.uc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.ga, !noalias !2599

bb.ga:                                            ; preds = %bb.fz
  %i.ud = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !2599
  unreachable

bb.gb:                                            ; preds = %.lr.ph702.split.i
  br i1 %i.oa, label %.loopexit242.i125, label %.lr.ph.i138

.lr.ph.i138:                                      ; preds = %bb.gb
  %i.ue = mul i64 %i.nz, %i.nn                    ; 2 uses
  %i.uf = mul i64 %.sroa.0102.0701.i, %i.nn       ; 2 uses
  %.reass704.i = add i64 %i.nz, %invariant.op703.i ; 3 uses
  %i.ug = icmp ult i64 %.reass704.i, %i.am
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.reass704.i
  %.fr.i139 = freeze i1 %i.ug
  br i1 %.fr.i139, label %.lr.ph.split.us.i142, label %.lr.ph.split.i140

.lr.ph.split.us.i142:                             ; preds = %.lr.ph.i138, %bb.gm
  %.sroa.0105.0650.us.i143 = phi i64 [ %i.ui, %bb.gm ], [ %i.fc, %.lr.ph.i138 ] ; 3 uses
  %i.ui = add i64 %.sroa.0105.0650.us.i143, -1    ; 6 uses
  %i.uj = and i64 %i.ui, 1023
  %i.uk = icmp eq i64 %i.uj, 0
  br i1 %i.uk, label %bb.gc, label %bb.ge

bb.gc:                                            ; preds = %.lr.ph.split.us.i142
  %i.ul = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2599

bb.gd:                                            ; preds = %bb.gc
  br i1 %i.ul, label %.loopexit242.i125, label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %.lr.ph.split.us.i142
  %.reass.us.i144 = add i64 %i.ui, %invariant.op.i92 ; 3 uses
end_hunk_11
