Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish_feature_flags-0c98e5a31d6f7a25.fish_feature_flags.88469887bbadd4b4-cgu.0?download=true
begin_hunk_0
@_RNvNCNKNvCsbHolxaesP1E_18fish_feature_flags20LOCAL_OVERRIDE_STACK0023___RUST_STD_INTERNAL_VAL = thread_local global <{ [33 x i8], [7 x i8] }> <{ [33 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@32 = private unnamed_addr constant [29 x i8] c"crates/widestring/src/lib.rs\00", align 1
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @32, [16 x i8] c"\1C\00\00\00\00\00\00\008\03\00\00%\00\00\00" }>, align 8

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eager7destroyINtNtCs3oUPovFnLWP_4core4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCsbHolxaesP1E_18fish_feature_flags11FeatureFlagbEEEEB2g_(ptr nofree noundef captures(none) initializes((32, 33)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %i.a, align 1
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val.i.i = load i64, ptr %i.b, align 8         ; 2 uses
  %i.c = icmp eq i64 %.val.i.i, 0
  br i1 %i.c, label %_RINvNtNtCsaL1QbXo9JQH_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyINtNtCs3oUPovFnLWP_4core4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCsbHolxaesP1E_18fish_feature_flags11FeatureFlagbEEEE0EB2K_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.e = shl nuw i64 %.val.i.i, 1
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 1) #9
  br label %_RINvNtNtCsaL1QbXo9JQH_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyINtNtCs3oUPovFnLWP_4core4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCsbHolxaesP1E_18fish_feature_flags11FeatureFlagbEEEE0EB2K_.exit

_RINvNtNtCsaL1QbXo9JQH_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyINtNtCs3oUPovFnLWP_4core4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCsbHolxaesP1E_18fish_feature_flags11FeatureFlagbEEEE0EB2K_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvCsbHolxaesP1E_18fish_feature_flags12feature_test(i8 noundef range(i8 0, 10) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvCsbHolxaesP1E_18fish_feature_flags20LOCAL_OVERRIDE_STACK0023___RUST_STD_INTERNAL_VAL) ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !5, !noundef !4
  switch i8 %i.c, label %default.unreachable [
    i8 0, label %bb.c
    i8 2, label %bb.g
    i8 1, label %bb.b
  ], !prof !6

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.a, ptr noundef nonnull @_RINvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eager7destroyINtNtCs3oUPovFnLWP_4core4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCsbHolxaesP1E_18fish_feature_flags11FeatureFlagbEEEEB2g_)
  store i8 0, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load i64, ptr %i.a, align 8, !noundef !4 ; 4 uses
  %i.e = icmp ult i64 %i.d, 9223372036854775807
  br i1 %i.e, label %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCsbHolxaesP1E_18fish_feature_flags11FeatureFlagbEEE6borrowB1j_.exit.i.i.i, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #10
  unreachable

_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCsbHolxaesP1E_18fish_feature_flags11FeatureFlagbEEE6borrowB1j_.exit.i.i.i: ; preds = %bb.c
  %i.f = add nuw nsw i64 %i.d, 1
  store i64 %i.f, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = load i64, ptr %i.i, align 8, !noundef !4 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCsbHolxaesP1E_18fish_feature_flags11FeatureFlagbEEE6borrowB1j_.exit.i.i.i
  %.idx = shl nuw nsw i64 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.m = icmp eq ptr %i.h, %i.n
  br i1 %i.m, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.5.0.i.i.i9 = phi ptr [ %i.l, %.lr.ph ], [ %i.n, %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.i9, i64 -2 ; 3 uses
  %i.o = load i8, ptr %i.n, align 1, !range !8, !noundef !4
  %i.p = icmp eq i8 %0, %i.o
  br i1 %i.p, label %bb.h, label %bb.e

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #10
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.i9, i64 -1
  %i.r = load i8, ptr %i.q, align 1, !range !9, !noundef !4
  store i64 %i.d, ptr %i.a, align 8
  %i.s = trunc nuw i8 %i.r to i1
  br label %bb.i

._crit_edge:                                      ; preds = %bb.e, %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCsbHolxaesP1E_18fish_feature_flags11FeatureFlagbEEE6borrowB1j_.exit.i.i.i
  store i64 %i.d, ptr %i.a, align 8
  %i.t = zext nneg i8 %0 to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_RNvCsbHolxaesP1E_18fish_feature_flags8FEATURES, i64 %i.t
  %i.v = load atomic i8, ptr %i.u seq_cst, align 1
  %i.w = icmp ne i8 %i.v, 0
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.0.0 = phi i1 [ %i.s, %bb.h ], [ %i.w, %._crit_edge ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCsbHolxaesP1E_18fish_feature_flagsNtB2_8Features15set_from_string(ptr nofree noundef nonnull captures(none) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 44, ptr %.sroa.3.0..sroa_idx, align 8
  %i.b = call { ptr, i64 } @_RNvXsg_Cskr4qsHYS30i_15fish_widestringNtB5_17WStrCharSplitIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %.not34 = icmp eq ptr %i.c, null
  br i1 %.not34, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 9
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge
  %i.l = phi ptr [ %i.bb, %.backedge ], [ %i.c, %.lr.ph.preheader ]
  %i.m = phi { ptr, i64 } [ %i.ba, %.backedge ], [ %i.b, %.lr.ph.preheader ]
  %i.n = extractvalue { ptr, i64 } %i.m, 1
  %i.o = call { ptr, i64 } @_RNvMsX_NtCslLGyqsphxMB_10widestring6utfstrNtB5_8Utf32Str4trim(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.l, i64 noundef %i.n) ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.o, 0        ; 6 uses
  %i.q = extractvalue { ptr, i64 } %i.o, 1        ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.backedge, label %bb.b

._crit_edge:                                      ; preds = %.backedge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !10)
  %i.s = call noundef i64 @_RNvNtNtCs3oUPovFnLWP_4core3str5count23char_count_general_case(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 3), !noalias !10 ; 4 uses
  %i.t = and i64 %i.q, 4611686018427387903        ; 5 uses
  %exitcond.i113 = icmp eq i64 %i.t, 0
  br i1 %exitcond.i113, label %_RINvCskr4qsHYS30i_15fish_widestring18iter_prefixes_iterNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsINtNtNtNtBX_4iter8adapters6copied6CopiedINtNtNtBX_5slice4iter4ItercEEECsbHolxaesP1E_18fish_feature_flags.exit.i, label %.lr.ph117

bb.c:                                             ; preds = %.lr.ph117
  %exitcond.i = icmp eq i64 %i.t, 1
  br i1 %exitcond.i, label %_RINvCskr4qsHYS30i_15fish_widestring18iter_prefixes_iterNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsINtNtNtNtBX_4iter8adapters6copied6CopiedINtNtNtBX_5slice4iter4ItercEEECsbHolxaesP1E_18fish_feature_flags.exit.i, label %.lr.ph117.1

.lr.ph117.1:                                      ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.v = load i32, ptr %i.u, align 4, !range !13, !alias.scope !10, !noalias !14, !noundef !4
  %i.w = icmp eq i32 %i.v, 111
  br i1 %i.w, label %bb.d, label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph117.1
  %exitcond.i.1 = icmp eq i64 %i.t, 2
  br i1 %exitcond.i.1, label %_RINvCskr4qsHYS30i_15fish_widestring18iter_prefixes_iterNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsINtNtNtNtBX_4iter8adapters6copied6CopiedINtNtNtBX_5slice4iter4ItercEEECsbHolxaesP1E_18fish_feature_flags.exit.i, label %.lr.ph117.2

.lr.ph117.2:                                      ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.y = load i32, ptr %i.x, align 4, !range !13, !alias.scope !10, !noalias !14, !noundef !4
  %i.z = icmp eq i32 %i.y, 45
  %.not.i.i.i = icmp samesign ugt i64 %i.t, 2
  %or.cond = select i1 %i.z, i1 %.not.i.i.i, i1 false
  br i1 %or.cond, label %bb.e, label %.lr.ph.i

.lr.ph117:                                        ; preds = %bb.b
  %i.aa = load i32, ptr %i.p, align 4, !range !13, !alias.scope !10, !noalias !14, !noundef !4
  %i.ab = icmp eq i32 %i.aa, 110
  br i1 %i.ab, label %bb.c, label %.lr.ph.i

_RINvCskr4qsHYS30i_15fish_widestring18iter_prefixes_iterNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsINtNtNtNtBX_4iter8adapters6copied6CopiedINtNtNtBX_5slice4iter4ItercEEECsbHolxaesP1E_18fish_feature_flags.exit.i: ; preds = %bb.c, %bb.d, %bb.b
  %.not.i.i.i.old = icmp samesign ugt i64 %i.t, 2
  br i1 %.not.i.i.i.old, label %bb.e, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph117.2, %_RINvCskr4qsHYS30i_15fish_widestring18iter_prefixes_iterNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsINtNtNtNtBX_4iter8adapters6copied6CopiedINtNtNtBX_5slice4iter4ItercEEECsbHolxaesP1E_18fish_feature_flags.exit.i
  %i.ac = icmp ugt i64 %i.s, %i.q
  br i1 %i.ac, label %bb.f, label %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt10slice_fromCsbHolxaesP1E_18fish_feature_flags.exit.i, !prof !17

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.s, i64 noundef range(i64 1, 0) %i.q, i64 noundef range(i64 1, 0) %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #10, !noalias !18
  unreachable

_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt10slice_fromCsbHolxaesP1E_18fish_feature_flags.exit.i: ; preds = %bb.e
  %i.ad = sub nuw i64 %i.q, %i.s
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.s
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph117, %.lr.ph117.1, %.lr.ph117.2, %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt10slice_fromCsbHolxaesP1E_18fish_feature_flags.exit.i, %_RINvCskr4qsHYS30i_15fish_widestring18iter_prefixes_iterNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsINtNtNtNtBX_4iter8adapters6copied6CopiedINtNtNtBX_5slice4iter4ItercEEECsbHolxaesP1E_18fish_feature_flags.exit.i
  %.sroa.3.0.i = phi i64 [ %i.ad, %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt10slice_fromCsbHolxaesP1E_18fish_feature_flags.exit.i ], [ undef, %_RINvCskr4qsHYS30i_15fish_widestring18iter_prefixes_iterNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsINtNtNtNtBX_4iter8adapters6copied6CopiedINtNtNtBX_5slice4iter4ItercEEECsbHolxaesP1E_18fish_feature_flags.exit.i ], [ undef, %.lr.ph117.2 ], [ undef, %.lr.ph117.1 ], [ undef, %.lr.ph117 ]
  %.sroa.0.0.i = phi ptr [ %i.ae, %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt10slice_fromCsbHolxaesP1E_18fish_feature_flags.exit.i ], [ null, %_RINvCskr4qsHYS30i_15fish_widestring18iter_prefixes_iterNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsINtNtNtNtBX_4iter8adapters6copied6CopiedINtNtNtBX_5slice4iter4ItercEEECsbHolxaesP1E_18fish_feature_flags.exit.i ], [ null, %.lr.ph117.2 ], [ null, %.lr.ph117.1 ], [ null, %.lr.ph117 ] ; 2 uses
  %.not21 = icmp eq ptr %.sroa.0.0.i, null        ; 4 uses
  %.sroa.07.0 = select i1 %.not21, ptr %i.p, ptr %.sroa.0.0.i ; 42 uses
  %.sroa.510.0 = select i1 %.not21, i64 %i.q, i64 %.sroa.3.0.i ; 3 uses
  %i.af = shl nuw i64 %.sroa.510.0, 2             ; 10 uses
  switch i64 %.sroa.510.0, label %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.thread.i.9 [
    i64 14, label %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i
    i64 12, label %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.1
    i64 13, label %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.2
    i64 23, label %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.3
    i64 19, label %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.4
    i64 16, label %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.5
    i64 11, label %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.6
    i64 15, label %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.7
    i64 10, label %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.8
    i64 21, label %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.9
  ]

_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i: ; preds = %.lr.ph.i
  %bcmp.i.i = call i32 @bcmp(ptr nonnull @5, ptr nonnull %.sroa.07.0, i64 %i.af), !noalias !21
  %i.ag = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ag, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCsbHolxaesP1E_18fish_feature_flags15FeatureMetadataENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMBS_NtBS_8Features15set_from_string0EBS_.exit, label %.backedge

_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.1: ; preds = %.lr.ph.i
  %bcmp.i.i.1 = call i32 @bcmp(ptr nonnull @8, ptr nonnull %.sroa.07.0, i64 %i.af), !noalias !21
  %i.ah = icmp eq i32 %bcmp.i.i.1, 0
  br i1 %i.ah, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCsbHolxaesP1E_18fish_feature_flags15FeatureMetadataENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMBS_NtBS_8Features15set_from_string0EBS_.exit, label %.backedge

_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.2: ; preds = %.lr.ph.i
  %bcmp.i.i.2 = call i32 @bcmp(ptr nonnull @10, ptr nonnull %.sroa.07.0, i64 %i.af), !noalias !21
  %i.ai = icmp eq i32 %bcmp.i.i.2, 0
  br i1 %i.ai, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCsbHolxaesP1E_18fish_feature_flags15FeatureMetadataENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMBS_NtBS_8Features15set_from_string0EBS_.exit, label %.backedge

_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.3: ; preds = %.lr.ph.i
  %bcmp.i.i.3 = call i32 @bcmp(ptr nonnull @13, ptr nonnull %.sroa.07.0, i64 %i.af), !noalias !21
  %i.aj = icmp eq i32 %bcmp.i.i.3, 0
  br i1 %i.aj, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCsbHolxaesP1E_18fish_feature_flags15FeatureMetadataENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMBS_NtBS_8Features15set_from_string0EBS_.exit, label %.backedge

_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.4: ; preds = %.lr.ph.i
  %bcmp.i.i.4 = call i32 @bcmp(ptr nonnull @16, ptr nonnull %.sroa.07.0, i64 %i.af), !noalias !21
  %i.ak = icmp eq i32 %bcmp.i.i.4, 0
  br i1 %i.ak, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCsbHolxaesP1E_18fish_feature_flags15FeatureMetadataENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMBS_NtBS_8Features15set_from_string0EBS_.exit, label %.backedge

_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.5: ; preds = %.lr.ph.i
  %bcmp.i.i.5 = call i32 @bcmp(ptr nonnull @19, ptr nonnull %.sroa.07.0, i64 %i.af), !noalias !21
  %i.al = icmp eq i32 %bcmp.i.i.5, 0
  br i1 %i.al, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCsbHolxaesP1E_18fish_feature_flags15FeatureMetadataENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMBS_NtBS_8Features15set_from_string0EBS_.exit, label %.backedge

_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.6: ; preds = %.lr.ph.i
  %bcmp.i.i.6 = call i32 @bcmp(ptr nonnull @21, ptr nonnull %.sroa.07.0, i64 %i.af), !noalias !21
  %i.am = icmp eq i32 %bcmp.i.i.6, 0
  br i1 %i.am, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCsbHolxaesP1E_18fish_feature_flags15FeatureMetadataENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMBS_NtBS_8Features15set_from_string0EBS_.exit, label %.backedge

_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.7: ; preds = %.lr.ph.i
  %bcmp.i.i.7 = call i32 @bcmp(ptr nonnull @23, ptr nonnull %.sroa.07.0, i64 %i.af), !noalias !21
  %i.an = icmp eq i32 %bcmp.i.i.7, 0
  br i1 %i.an, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCsbHolxaesP1E_18fish_feature_flags15FeatureMetadataENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMBS_NtBS_8Features15set_from_string0EBS_.exit, label %.backedge

_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.8: ; preds = %.lr.ph.i
  %bcmp.i.i.8 = call i32 @bcmp(ptr nonnull @26, ptr nonnull %.sroa.07.0, i64 %i.af), !noalias !21
  %i.ao = icmp eq i32 %bcmp.i.i.8, 0
  br i1 %i.ao, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCsbHolxaesP1E_18fish_feature_flags15FeatureMetadataENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMBS_NtBS_8Features15set_from_string0EBS_.exit, label %.backedge

_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.9: ; preds = %.lr.ph.i
  %bcmp.i.i.9 = call i32 @bcmp(ptr nonnull @28, ptr nonnull %.sroa.07.0, i64 %i.af), !noalias !21
  %i.ap = icmp eq i32 %bcmp.i.i.9, 0
  br i1 %i.ap, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCsbHolxaesP1E_18fish_feature_flags15FeatureMetadataENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMBS_NtBS_8Features15set_from_string0EBS_.exit, label %.backedge

_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.thread.i.9: ; preds = %.lr.ph.i
  %i.aq = icmp eq i64 %.sroa.510.0, 3
  %i.ar = zext i1 %.not21 to i8                   ; 8 uses
  br i1 %i.aq, label %bb.h, label %.backedge

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCsbHolxaesP1E_18fish_feature_flags15FeatureMetadataENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMBS_NtBS_8Features15set_from_string0EBS_.exit: ; preds = %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.9, %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.8, %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.7, %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.6, %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.5, %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.4, %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.3, %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.2, %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.1, %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i
  %.ptr.lcssa = phi ptr [ @31, %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @31, i64 56), %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.1 ], [ getelementptr inbounds nuw (i8, ptr @31, i64 112), %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.2 ], [ getelementptr inbounds nuw (i8, ptr @31, i64 168), %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.3 ], [ getelementptr inbounds nuw (i8, ptr @31, i64 224), %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.4 ], [ getelementptr inbounds nuw (i8, ptr @31, i64 280), %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.5 ], [ getelementptr inbounds nuw (i8, ptr @31, i64 336), %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.6 ], [ getelementptr inbounds nuw (i8, ptr @31, i64 392), %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.7 ], [ getelementptr inbounds nuw (i8, ptr @31, i64 448), %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.8 ], [ getelementptr inbounds nuw (i8, ptr @31, i64 504), %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.9 ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.ptr.lcssa, i64 50
  %i.at = load i8, ptr %i.as, align 2, !range !9, !noundef !4
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %.backedge, label %bb.g

bb.g:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCsbHolxaesP1E_18fish_feature_flags15FeatureMetadataENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMBS_NtBS_8Features15set_from_string0EBS_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %.ptr.lcssa, i64 48
  %i.aw = load i8, ptr %i.av, align 8, !range !8, !noundef !4
  %i.ax = zext nneg i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.ax
  %i.az = zext i1 %.not21 to i8
  store atomic i8 %i.az, ptr %i.ay seq_cst, align 1
  br label %.backedge

.backedge:                                        ; preds = %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i, %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.1, %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.2, %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.3, %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.9, %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.8, %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.7, %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.6, %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.5, %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.i.4, %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.thread.i.9, %bb.ad, %bb.ae, %bb.g, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCsbHolxaesP1E_18fish_feature_flags15FeatureMetadataENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMBS_NtBS_8Features15set_from_string0EBS_.exit, %.lr.ph
  %i.ba = call { ptr, i64 } @_RNvXsg_Cskr4qsHYS30i_15fish_widestringNtB5_17WStrCharSplitIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) ; 2 uses
  %i.bb = extractvalue { ptr, i64 } %i.ba, 0      ; 2 uses
  %.not = icmp eq ptr %i.bb, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %_RNCNvMCsbHolxaesP1E_18fish_feature_flagsNtB4_8Features15set_from_string0B4_.exit.thread.i.9
  %i.bc = load i64, ptr %.sroa.07.0, align 1
  %i.bd = xor i64 197568495667, %i.bc
  %i.be = getelementptr i8, ptr %.sroa.07.0, i64 8
  %i.bf = load i32, ptr %i.be, align 1
  %i.bg = zext i32 %i.bf to i64
  %i.bh = xor i64 48, %i.bg
  %i.bi = or i64 %i.bd, %i.bh
  %i.bj = icmp ne i64 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = load i64, ptr %.sroa.07.0, align 1
  %i.bn = xor i64 %i.bm, 463856468065
  %i.bo = getelementptr i8, ptr %.sroa.07.0, i64 8
  %i.bp = load i32, ptr %i.bo, align 1
  %i.bq = zext i32 %i.bp to i64
  %i.br = xor i64 %i.bq, 108
  %i.bs = or i64 %i.bn, %i.br
  %i.bt = icmp ne i64 %i.bs, 0
  %i.bu = zext i1 %i.bt to i32
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.i
  store atomic i8 %i.ar, ptr %i.d seq_cst, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bw = load i64, ptr %.sroa.07.0, align 1
  %i.bx = xor i64 197568495667, %i.bw
  %i.by = getelementptr i8, ptr %.sroa.07.0, i64 8
  %i.bz = load i32, ptr %i.by, align 1
  %i.ca = zext i32 %i.bz to i64
  %i.cb = xor i64 49, %i.ca
  %i.cc = or i64 %i.bx, %i.cb
  %i.cd = icmp ne i64 %i.cc, 0
  %i.ce = zext i1 %i.cd to i32
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = load i64, ptr %.sroa.07.0, align 1
  %i.ch = xor i64 %i.cg, 463856468065
  %i.ci = getelementptr i8, ptr %.sroa.07.0, i64 8
  %i.cj = load i32, ptr %i.ci, align 1
  %i.ck = zext i32 %i.cj to i64
  %i.cl = xor i64 %i.ck, 108
  %i.cm = or i64 %i.ch, %i.cl
  %i.cn = icmp ne i64 %i.cm, 0
  %i.co = zext i1 %i.cn to i32
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.l
  store atomic i8 %i.ar, ptr %i.e seq_cst, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cq = load i64, ptr %.sroa.07.0, align 1
  %i.cr = xor i64 197568495667, %i.cq
  %i.cs = getelementptr i8, ptr %.sroa.07.0, i64 8
  %i.ct = load i32, ptr %i.cs, align 1
  %i.cu = zext i32 %i.ct to i64
  %i.cv = xor i64 52, %i.cu
  %i.cw = or i64 %i.cr, %i.cv
  %i.cx = icmp ne i64 %i.cw, 0
  %i.cy = zext i1 %i.cx to i32
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.da = load i64, ptr %.sroa.07.0, align 1
  %i.db = xor i64 %i.da, 463856468065
  %i.dc = getelementptr i8, ptr %.sroa.07.0, i64 8
  %i.dd = load i32, ptr %i.dc, align 1
  %i.de = zext i32 %i.dd to i64
  %i.df = xor i64 %i.de, 108
  %i.dg = or i64 %i.db, %i.df
  %i.dh = icmp ne i64 %i.dg, 0
  %i.di = zext i1 %i.dh to i32
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.o
  store atomic i8 %i.ar, ptr %i.f seq_cst, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dk = load i64, ptr %.sroa.07.0, align 1
  %i.dl = xor i64 197568495668, %i.dk
  %i.dm = getelementptr i8, ptr %.sroa.07.0, i64 8
  %i.dn = load i32, ptr %i.dm, align 1
  %i.do = zext i32 %i.dn to i64
  %i.dp = xor i64 48, %i.do
  %i.dq = or i64 %i.dl, %i.dp
  %i.dr = icmp ne i64 %i.dq, 0
  %i.ds = zext i1 %i.dr to i32
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.du = load i64, ptr %.sroa.07.0, align 1
  %i.dv = xor i64 %i.du, 463856468065
  %i.dw = getelementptr i8, ptr %.sroa.07.0, i64 8
  %i.dx = load i32, ptr %i.dw, align 1
  %i.dy = zext i32 %i.dx to i64
end_hunk_0
