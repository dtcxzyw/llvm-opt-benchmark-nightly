Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.11?download=true
inline.NumInlined: 186
inline.NumDeleted: 98
begin_hunk_0_@_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeE16case_fold_simpleB9_:bb.a
    #dbg_value(i64 %.sroa.01.014, !6687, !DIExpression(), !6690)
  %i.i = add nuw nsw i64 %.sroa.01.014, 1, !dbg !6740 ; 2 uses
    #dbg_value(i64 %i.i, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6696)
    #dbg_value(i64 %.sroa.01.014, !6660, !DIExpression(), !6699)
    #dbg_value(i64 %.sroa.01.014, !6700, !DIExpression(), !6704)
    #dbg_value(i64 %.sroa.01.014, !6705, !DIExpression(), !6709)
    #dbg_value(i64 %.sroa.01.014, !6710, !DIExpression(), !6714)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6741
    #dbg_value(ptr %0, !6701, !DIExpression(), !6715)
    #dbg_value(ptr %0, !6716, !DIExpression(), !6719)
    #dbg_value(ptr %0, !6720, !DIExpression(), !6723)
    #dbg_value(ptr %0, !6724, !DIExpression(), !6727)
  %i.j = load i64, ptr %i.e, align 8, !dbg !6742, !noundef !348 ; 2 uses
    #dbg_value(ptr poison, !6706, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6709)
    #dbg_value(ptr poison, !6711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6714)
    #dbg_value(i64 %i.j, !6706, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6709)
    #dbg_value(i64 %i.j, !6711, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6714)
  %i.k = icmp ult i64 %.sroa.01.014, %i.j, !dbg !6743
  br i1 %i.k, label %bb.e, label %bb.f, !dbg !6743

bb.d:                                             ; preds = %bb.a, %bb.g, %._crit_edge
  %.sroa.0.0 = phi i1 [ false, %._crit_edge ], [ true, %bb.g ], [ false, %bb.a ], !dbg !6679
  ret i1 %.sroa.0.0, !dbg !6739

bb.e:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.h, align 8, !dbg !6744, !nonnull !348, !noundef !348
    #dbg_value(ptr %i.l, !6706, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6709)
    #dbg_value(ptr %i.l, !6711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6714)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.01.014, !dbg !6745
  %i.n = load <2 x i32>, ptr %i.m, align 4, !dbg !6746
  store <2 x i32> %i.n, ptr %i.a, align 8, !dbg !6746
  %i.o = call noundef zeroext i1 @_RNvXsd_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_17ClassUnicodeRangeNtNtB5_8interval8Interval16case_fold_simple(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !6747
  br i1 %i.o, label %bb.g, label %bb.h, !dbg !6748

bb.f:                                             ; preds = %bb.c
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.01.014, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #13, !dbg !6743
  unreachable, !dbg !6743

bb.g:                                             ; preds = %bb.e
  call fastcc void @_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeE12canonicalizeB9_(ptr noalias nofree noundef align 8 dereferenceable(32) %0), !dbg !6749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6750
  br label %bb.d, !dbg !6751

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6750
    #dbg_value(i64 %i.i, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6696)
    #dbg_value(ptr undef, !6672, !DIExpression(), !6678)
    #dbg_value(ptr undef, !6674, !DIExpression(), !6677)
    #dbg_value(ptr undef, !6664, !DIExpression(), !6671)
    #dbg_value(ptr undef, !6665, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6697)
  %exitcond.not = icmp eq i64 %i.i, %i.f, !dbg !6736
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !dbg !6670
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeE20symmetric_differenceB9_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6753 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
    #dbg_value(ptr %0, !6823, !DIExpression(), !6827)
    #dbg_value(ptr %0, !6828, !DIExpression(), !6833)
    #dbg_value(ptr %1, !6824, !DIExpression(), !6827)
    #dbg_declare(ptr %i.a, !6825, !DIExpression(), !6834)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6838
  call void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBJ_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0), !dbg !6839
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !6839 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !dbg !6839, !range !901, !noundef !348
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !6839
  store i8 %i.c, ptr %i.d, align 8, !dbg !6839
  invoke void @_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeE9intersectB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.c unwind label %bb.b, !dbg !6840

bb.b:                                             ; preds = %.noexc3, %bb.f, %bb.e, %_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeE5unionB9_.exit, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs3roNzt6HBWW_12regex_syntax3hir8interval11IntervalSetNtBG_17ClassUnicodeRangeEEBI_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #10
          to label %common.resume unwind label %bb.j, !dbg !6841

bb.c:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !6835), !dbg !6842
  call void @llvm.experimental.noalias.scope.decl(metadata !6836), !dbg !6842
    #dbg_value(ptr %0, !1337, !DIExpression(), !6759)
    #dbg_value(ptr %1, !1339, !DIExpression(), !6759)
    #dbg_value(ptr %1, !1341, !DIExpression(), !6761)
    #dbg_value(ptr %1, !1343, !DIExpression(), !6763)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !6843
  %i.g = load i64, ptr %i.f, align 8, !dbg !6843, !alias.scope !6836, !noundef !348 ; 5 uses
  %i.h = icmp ult i64 %i.g, 1152921504606846976, !dbg !6844
  call void @llvm.assume(i1 %i.h), !dbg !6845
  %i.i = icmp eq i64 %i.g, 0, !dbg !6846
  br i1 %i.i, label %_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeE5unionB9_.exit, label %bb.d, !dbg !6847

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %0, !1345, !DIExpression(), !6765)
    #dbg_value(ptr %0, !1352, !DIExpression(), !6767)
    #dbg_value(ptr %0, !1358, !DIExpression(), !6769)
    #dbg_value(ptr %0, !1360, !DIExpression(), !6771)
    #dbg_value(ptr %0, !1362, !DIExpression(), !6773)
    #dbg_value(ptr %1, !1348, !DIExpression(), !6774)
    #dbg_value(ptr %1, !1352, !DIExpression(), !6776)
    #dbg_value(ptr %1, !1358, !DIExpression(), !6778)
    #dbg_value(ptr %1, !1360, !DIExpression(), !6780)
    #dbg_value(ptr %1, !1362, !DIExpression(), !6782)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6848
  %i.k = load i64, ptr %i.j, align 8, !dbg !6848, !alias.scope !6835, !noundef !348
    #dbg_value(i64 %i.k, !1367, !DIExpression(), !6784)
    #dbg_value(ptr poison, !1370, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6785)
    #dbg_value(i64 %i.k, !1370, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6785)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !6849
    #dbg_value(ptr poison, !1371, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6785)
    #dbg_value(i64 %i.g, !1371, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6785)
  %i.m = icmp eq i64 %i.k, %i.g, !dbg !6850
  %.pre.i = load ptr, ptr %i.l, align 8, !dbg !6851, !alias.scope !6836 ; 3 uses
  br i1 %i.m, label %bb.e, label %bb.f, !dbg !6850

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %.pre.i, !1371, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6785)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6852
  %i.o = load ptr, ptr %i.n, align 8, !dbg !6852, !alias.scope !6835, !nonnull !348, !noundef !348
    #dbg_value(ptr %i.o, !1370, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6785)
  %i.p = invoke noundef zeroext i1 @_RNvXs2_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull %i.o, ptr noundef nonnull %.pre.i, i64 noundef %i.g)
          to label %.noexc unwind label %bb.b, !dbg !6853, !noalias !6837

.noexc:                                           ; preds = %bb.e
  br i1 %i.p, label %_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeE5unionB9_.exit, label %bb.f, !dbg !6854

bb.f:                                             ; preds = %.noexc, %bb.d
    #dbg_value(ptr %0, !1388, !DIExpression(), !6800)
    #dbg_value(ptr %1, !1389, !DIExpression(), !6801)
    #dbg_value(ptr %1, !1384, !DIExpression(), !6802)
    #dbg_value(ptr %1, !1358, !DIExpression(), !6803)
    #dbg_value(ptr %1, !1360, !DIExpression(), !6804)
    #dbg_value(ptr %1, !1362, !DIExpression(), !6805)
    #dbg_value(i64 %i.g, !1393, !DIExpression(), !6808)
    #dbg_value(i64 %i.g, !1403, !DIExpression(), !6810)
    #dbg_value(ptr %.pre.i, !1401, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6811)
    #dbg_value(ptr %.pre.i, !1397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6812)
    #dbg_value(i64 %i.g, !1401, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6811)
    #dbg_value(i64 %i.g, !1397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6812)
    #dbg_value(ptr %.pre.i, !1398, !DIExpression(), !6813)
    #dbg_value(ptr %.pre.i, !1404, !DIExpression(), !6810)
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %i.g, !dbg !6855
  invoke void @_RNvXs2_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEINtB5_10SpecExtendRBU_INtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterBU_EE11spec_extendBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.pre.i, ptr noundef nonnull %i.q)
          to label %.noexc3 unwind label %bb.b, !dbg !6856, !noalias !6836

.noexc3:                                          ; preds = %bb.f
  invoke fastcc void @_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeE12canonicalizeB9_(ptr noalias nofree noundef align 8 dereferenceable(32) %0)
          to label %.noexc4 unwind label %bb.b, !dbg !6857, !noalias !6836

.noexc4:                                          ; preds = %.noexc3
  %i.r = load i8, ptr %i.b, align 8, !dbg !6858, !range !901, !alias.scope !6835, !noundef !348
  %i.s = trunc nuw i8 %i.r to i1, !dbg !6858
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !6858
  %i.u = load i8, ptr %i.t, align 8, !dbg !6858, !range !901, !alias.scope !6836
  %.sroa.0.0.i = select i1 %i.s, i8 %i.u, i8 0, !dbg !6858
  store i8 %.sroa.0.0.i, ptr %i.b, align 8, !dbg !6859, !alias.scope !6835
  br label %_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeE5unionB9_.exit, !dbg !6860

_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeE5unionB9_.exit: ; preds = %.noexc4, %.noexc, %bb.c
  invoke void @_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeE10differenceB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.b, !dbg !6861

bb.g:                                             ; preds = %_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeE5unionB9_.exit
    #dbg_value(ptr %i.a, !853, !DIExpression(), !6815)
    #dbg_value(ptr %i.a, !834, !DIExpression(), !6817)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs3roNzt6HBWW_12regex_syntax3hir8interval11IntervalSetNtBG_17ClassUnicodeRangeEEBI_.exit unwind label %bb.h, !dbg !6862

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !837, !DIExpression(), !6819)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %common.resume unwind label %bb.i, !dbg !6863

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #11, !dbg !6862
  unreachable, !dbg !6862

common.resume:                                    ; preds = %bb.b, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %common.resume.op, !dbg !6827

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs3roNzt6HBWW_12regex_syntax3hir8interval11IntervalSetNtBG_17ClassUnicodeRangeEEBI_.exit: ; preds = %bb.g
    #dbg_value(ptr %i.a, !837, !DIExpression(), !6821)
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a), !dbg !6864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6841
  ret void, !dbg !6865

bb.j:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #11, !dbg !6866
  unreachable, !dbg !6866
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeE4pushB9_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i32 noundef range(i32 0, 1114112) %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6877 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !7001, !DIExpression(), !7008)
    #dbg_value(ptr poison, !7011, !DIExpression(), !7014)
    #dbg_value(ptr poison, !7009, !DIExpression(), !7015)
  %i.b = alloca [8 x i8], align 4                 ; 6 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  store i32 %2, ptr %i.c, align 4
    #dbg_value(ptr %0, !6988, !DIExpression(), !7016)
    #dbg_declare(ptr %i.b, !6989, !DIExpression(), !7017)
    #dbg_value(i64 1, !7018, !DIExpression(), !7022)
    #dbg_value(i64 1, !7023, !DIExpression(), !7027)
    #dbg_value(i64 1, !7028, !DIExpression(), !7032)
    #dbg_value(ptr %0, !7033, !DIExpression(), !7036)
    #dbg_value(ptr %0, !7037, !DIExpression(), !7040)
    #dbg_value(ptr %0, !7041, !DIExpression(), !7044)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7198
  %i.e = load ptr, ptr %i.d, align 8, !dbg !7198, !nonnull !348, !noundef !348 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7199
  %i.g = load i64, ptr %i.f, align 8, !dbg !7199, !noundef !348 ; 13 uses
    #dbg_value(ptr %i.e, !7048, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7054)
    #dbg_value(i64 %i.g, !7048, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7054)
    #dbg_value(ptr %i.b, !7051, !DIExpression(), !7054)
    #dbg_value(ptr %i.b, !7055, !DIExpression(), !6902)
    #dbg_value(ptr %i.e, !7060, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6902)
    #dbg_value(ptr %i.e, !7071, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6905)
    #dbg_value(ptr %i.e, !7074, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6908)
    #dbg_value(ptr %i.e, !7071, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6910)
    #dbg_value(ptr %i.e, !7074, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6912)
    #dbg_value(i64 %i.g, !7060, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6902)
    #dbg_value(i64 %i.g, !7071, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6905)
    #dbg_value(i64 %i.g, !7074, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6908)
    #dbg_value(i64 %i.g, !7071, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6910)
    #dbg_value(i64 %i.g, !7074, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6912)
    #dbg_value(ptr poison, !7080, !DIExpression(), !6915)
    #dbg_value(ptr poison, !7080, !DIExpression(), !6917)
    #dbg_value(ptr poison, !7080, !DIExpression(), !6919)
    #dbg_value(i64 %i.g, !7061, !DIExpression(), !6920)
  switch i64 %i.g, label %.lr.ph.i [
    i64 0, label %.thread
    i64 1, label %._crit_edge.i
  ], !dbg !7200

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.05.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.w, %.lr.ph.i ], !dbg !7201 ; 2 uses
    #dbg_value(i64 %.sroa.05.0.lcssa.i, !7072, !DIExpression(), !6910)
    #dbg_value(i64 %.sroa.05.0.lcssa.i, !7077, !DIExpression(), !6912)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.sroa.05.0.lcssa.i, !dbg !7202 ; 2 uses
  %.val27.i = load i32, ptr %i.h, align 4, !dbg !7203, !range !1329, !alias.scope !7083, !noundef !348 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 4, !dbg !7203
  %.val28.i = load i32, ptr %i.i, align 4, !dbg !7203, !alias.scope !7083
    #dbg_value(ptr poison, !7084, !DIExpression(DW_OP_deref, DW_OP_deref), !6925)
    #dbg_value(ptr poison, !7088, !DIExpression(), !6925)
    #dbg_value(ptr poison, !1330, !DIExpression(), !6927)
    #dbg_value(ptr poison, !1334, !DIExpression(), !6927)
    #dbg_value(ptr poison, !7090, !DIExpression(), !6930)
    #dbg_value(ptr poison, !7094, !DIExpression(), !6931)
  %i.j = tail call i8 @llvm.ucmp.i8.i32(i32 %.val27.i, i32 %1), !dbg !7204
  %i.k = icmp eq i32 %.val27.i, %1, !dbg !7205
  %i.l = tail call i8 @llvm.ucmp.i8.i32(i32 %.val28.i, i32 %2), !dbg !7205
  %.sroa.0.0.i.i.i = select i1 %i.k, i8 %i.l, i8 %i.j, !dbg !7205 ; 2 uses
    #dbg_value(i8 %.sroa.0.0.i.i.i, !7066, !DIExpression(), !6932)
    #dbg_value(ptr poison, !7081, !DIExpression(), !6933)
  %i.m = icmp eq i8 %.sroa.0.0.i.i.i, 0, !dbg !7206
  br i1 %i.m, label %_RINvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRange16binary_search_byNCNvB2_13binary_search0EBz_.exit, label %bb.b, !dbg !7206

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.01.033.i = phi i64 [ %i.x, %.lr.ph.i ], [ %i.g, %bb.a ] ; 2 uses
  %.sroa.05.032.i = phi i64 [ %i.w, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
    #dbg_value(i64 %.sroa.01.033.i, !7061, !DIExpression(), !6920)
    #dbg_value(i64 %.sroa.05.032.i, !7062, !DIExpression(), !6934)
  %i.n = lshr i64 %.sroa.01.033.i, 1, !dbg !7207  ; 2 uses
    #dbg_value(i64 %i.n, !7063, !DIExpression(), !6935)
  %i.o = add nuw nsw i64 %i.n, %.sroa.05.032.i, !dbg !7208 ; 3 uses
    #dbg_value(i64 %i.o, !7064, !DIExpression(), !6936)
    #dbg_value(i64 %i.o, !7072, !DIExpression(), !6905)
    #dbg_value(i64 %i.o, !7077, !DIExpression(), !6908)
  %i.p = icmp ult i64 %i.o, %i.g, !dbg !7209
  tail call void @llvm.assume(i1 %i.p), !dbg !7210
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.o, !dbg !7211 ; 2 uses
  %.val24.i = load i32, ptr %i.q, align 4, !dbg !7212, !range !1329, !alias.scope !7083, !noundef !348 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 4, !dbg !7212
  %.val25.i = load i32, ptr %i.r, align 4, !dbg !7212, !alias.scope !7083
    #dbg_value(ptr poison, !7084, !DIExpression(DW_OP_deref, DW_OP_deref), !6938)
    #dbg_value(ptr poison, !7088, !DIExpression(), !6938)
    #dbg_value(ptr poison, !1330, !DIExpression(), !6940)
    #dbg_value(ptr poison, !1334, !DIExpression(), !6940)
    #dbg_value(ptr poison, !7090, !DIExpression(), !6942)
    #dbg_value(ptr poison, !7094, !DIExpression(), !6943)
  %i.s = icmp eq i32 %.val24.i, %1, !dbg !7213
    #dbg_value(i8 poison, !7065, !DIExpression(), !6944)
    #dbg_value(ptr poison, !7081, !DIExpression(), !6945)
  %i.t = icmp ugt i32 %.val25.i, %2, !dbg !7214
  %i.u = icmp samesign ugt i32 %.val24.i, %1, !dbg !7214
  %i.v = select i1 %i.s, i1 %i.t, i1 %i.u, !dbg !7213
    #dbg_value(i1 %i.v, !1167, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6947)
    #dbg_value(i64 %.sroa.05.032.i, !1171, !DIExpression(), !6947)
    #dbg_value(i64 %i.o, !1172, !DIExpression(), !6947)
    #dbg_value(i64 %.sroa.05.032.i, !1173, !DIExpression(), !6948)
    #dbg_value(i64 %i.o, !1174, !DIExpression(), !6949)
    #dbg_value(ptr undef, !1176, !DIExpression(), !6950)
    #dbg_value(ptr undef, !1177, !DIExpression(), !6951)
    #dbg_value(ptr poison, !1178, !DIExpression(), !6952)
    #dbg_value(ptr poison, !1179, !DIExpression(), !6953)
    #dbg_value(ptr poison, !1180, !DIExpression(), !6954)
  %i.w = select i1 %i.v, i64 %.sroa.05.032.i, i64 %i.o, !dbg !7215, !unpredictable !348 ; 2 uses
    #dbg_value(i64 %i.w, !7062, !DIExpression(), !6934)
  %i.x = sub nuw nsw i64 %.sroa.01.033.i, %i.n, !dbg !7216 ; 2 uses
    #dbg_value(i64 %i.x, !7061, !DIExpression(), !6920)
  %i.y = icmp ugt i64 %i.x, 1, !dbg !7217
  br i1 %i.y, label %.lr.ph.i, label %._crit_edge.i, !dbg !7217

bb.b:                                             ; preds = %._crit_edge.i
    #dbg_value(ptr poison, !7081, !DIExpression(), !6955)
  %i.z = icmp eq i8 %.sroa.0.0.i.i.i, -1, !dbg !7218
  %i.aa = zext i1 %i.z to i64, !dbg !7219
  %i.ab = add nuw nsw i64 %.sroa.05.0.lcssa.i, %i.aa, !dbg !7220 ; 6 uses
    #dbg_value(i64 %i.ab, !7067, !DIExpression(), !6956)
  %i.ac = icmp samesign ule i64 %i.ab, %i.g, !dbg !7221
    #dbg_value(i1 true, !7096, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6959)
  tail call void @llvm.assume(i1 %i.ac), !dbg !7222
    #dbg_value(i64 %i.ab, !6990, !DIExpression(), !7098)
    #dbg_value(i64 %i.ab, !7019, !DIExpression(), !7022)
    #dbg_value(i64 %i.ab, !6991, !DIExpression(), !7099)
  %i.ad = icmp eq i64 %i.ab, 0, !dbg !7223
  br i1 %i.ad, label %.thread, label %bb.c, !dbg !7223

bb.c:                                             ; preds = %bb.b
  %i.ae = add nsw i64 %i.ab, -1, !dbg !7224       ; 2 uses
    #dbg_value(i64 %i.ae, !6992, !DIExpression(), !7100)
    #dbg_value(i64 %i.ae, !7101, !DIExpression(), !7105)
    #dbg_value(i64 %i.ae, !7106, !DIExpression(), !7110)
    #dbg_value(i64 %i.ae, !7111, !DIExpression(), !7115)
    #dbg_value(ptr %0, !7102, !DIExpression(), !7116)
    #dbg_value(ptr %0, !7033, !DIExpression(), !7118)
    #dbg_value(ptr %0, !7037, !DIExpression(), !7121)
    #dbg_value(ptr %0, !7041, !DIExpression(), !7124)
    #dbg_value(i64 %i.g, !7107, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7110)
    #dbg_value(i64 %i.g, !7112, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7115)
    #dbg_value(ptr %i.e, !7107, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7110)
    #dbg_value(ptr %i.e, !7112, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7115)
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ae, !dbg !7225
    #dbg_value(ptr %i.af, !6993, !DIExpression(), !7125)
  %i.ag = call { i32, i32 } @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNtNtB4_8interval8Interval5unionB6_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.af, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.b), !dbg !7226 ; 2 uses
  %i.ah = extractvalue { i32, i32 } %i.ag, 0, !dbg !7226 ; 3 uses
  %.not = icmp eq i32 %i.ah, -1, !dbg !7227
  br i1 %.not, label %.thread, label %bb.d, !dbg !7228

bb.d:                                             ; preds = %bb.c
  %i.ai = extractvalue { i32, i32 } %i.ag, 1, !dbg !7226 ; 2 uses
    #dbg_value(i32 %i.ah, !6994, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7126)
    #dbg_value(i32 %i.ai, !6994, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7126)
  store i32 %i.ah, ptr %i.b, align 4, !dbg !7229
  store i32 %i.ai, ptr %i.c, align 4, !dbg !7229
    #dbg_value(i64 %i.ae, !6991, !DIExpression(), !7099)
  br label %.thread, !dbg !7230

.thread:                                          ; preds = %bb.a, %bb.c, %bb.d, %bb.b
  %.sroa.4.0.i.ph47 = phi i64 [ 0, %bb.b ], [ %i.ab, %bb.d ], [ %i.ab, %bb.c ], [ %i.g, %bb.a ] ; 3 uses
  %i.aj = phi i32 [ %2, %bb.b ], [ %i.ai, %bb.d ], [ %2, %bb.c ], [ %2, %bb.a ] ; 2 uses
  %i.ak = phi i32 [ %1, %bb.b ], [ %i.ah, %bb.d ], [ %1, %bb.c ], [ %1, %bb.a ] ; 2 uses
  %.sroa.02.1 = phi i64 [ 0, %bb.b ], [ %i.ae, %bb.d ], [ %i.ab, %bb.c ], [ %i.g, %bb.a ], !dbg !7098
    #dbg_value(i64 %.sroa.02.1, !6991, !DIExpression(), !7099)
    #dbg_value(i64 %.sroa.4.0.i.ph47, !6995, !DIExpression(), !7127)
    #dbg_value(ptr %0, !7128, !DIExpression(), !7131)
  %i.al = icmp ult i64 %i.g, 1152921504606846976, !dbg !7231
  call void @llvm.assume(i1 %i.al), !dbg !7232
    #dbg_value(i64 %.sroa.4.0.i.ph47, !6996, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7132)
    #dbg_value(i64 %i.g, !6996, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7132)
    #dbg_value(ptr undef, !7009, !DIExpression(), !7015)
    #dbg_value(ptr undef, !7011, !DIExpression(), !7014)
    #dbg_value(ptr undef, !7001, !DIExpression(), !7008)
    #dbg_value(ptr undef, !7002, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7133)
  %i.am = icmp ult i64 %.sroa.4.0.i.ph47, %i.g, !dbg !7233
  br i1 %i.am, label %.lr.ph, label %._crit_edge, !dbg !7007

.lr.ph:                                           ; preds = %.thread, %bb.i
  %.sroa.08.054 = phi i64 [ %i.ap, %bb.i ], [ %.sroa.4.0.i.ph47, %.thread ] ; 4 uses
  %i.an = phi i32 [ %i.ay, %bb.i ], [ %i.ak, %.thread ]
  %i.ao = phi i32 [ %i.az, %bb.i ], [ %i.aj, %.thread ]
    #dbg_value(i64 %.sroa.08.054, !6995, !DIExpression(), !7127)
    #dbg_value(i64 %.sroa.08.054, !7012, !DIExpression(), !7134)
    #dbg_value(i64 %.sroa.08.054, !7024, !DIExpression(), !7027)
    #dbg_value(i64 %.sroa.08.054, !7029, !DIExpression(), !7032)
  %i.ap = add i64 %.sroa.08.054, 1, !dbg !7234    ; 2 uses
    #dbg_value(i64 %i.ap, !6996, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7132)
    #dbg_value(i64 %.sroa.08.054, !6997, !DIExpression(), !7135)
    #dbg_value(i64 %.sroa.08.054, !7101, !DIExpression(), !7137)
    #dbg_value(i64 %.sroa.08.054, !7106, !DIExpression(), !7140)
    #dbg_value(i64 %.sroa.08.054, !7111, !DIExpression(), !7143)
    #dbg_value(ptr %0, !7102, !DIExpression(), !7144)
    #dbg_value(ptr %0, !7033, !DIExpression(), !7146)
    #dbg_value(ptr %0, !7037, !DIExpression(), !7149)
    #dbg_value(ptr %0, !7041, !DIExpression(), !7152)
    #dbg_value(ptr poison, !7107, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7140)
    #dbg_value(ptr poison, !7112, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7143)
    #dbg_value(i64 %i.g, !7107, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7140)
    #dbg_value(i64 %i.g, !7112, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7143)
  %exitcond.not = icmp eq i64 %.sroa.08.054, %i.g, !dbg !7235
  br i1 %exitcond.not, label %bb.h, label %bb.g, !dbg !7235

._crit_edge:                                      ; preds = %bb.i, %bb.g, %.thread
  %.lcssa51.a = phi i32 [ %i.aj, %.thread ], [ %i.ao, %bb.g ], [ %i.az, %bb.i ] ; 2 uses
  %.lcssa49 = phi i32 [ %i.ak, %.thread ], [ %i.an, %bb.g ], [ %i.ay, %bb.i ] ; 2 uses
  %.sroa.08.0.lcssa = phi i64 [ %.sroa.4.0.i.ph47, %.thread ], [ %.sroa.08.054, %bb.g ], [ %i.g, %bb.i ], !dbg !7099
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7236
    #dbg_value(i32 %.lcssa49, !7154, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7174)
    #dbg_value(i32 %.lcssa51.a, !7154, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7174)
  %i.aq = icmp ult i32 %.lcssa49, 1114112, !dbg !7237
  call void @llvm.assume(i1 %i.aq), !dbg !7237
  %i.ar = icmp ult i32 %.lcssa51.a, 1114112, !dbg !7237
  call void @llvm.assume(i1 %i.ar), !dbg !7237
    #dbg_value(ptr %0, !7175, !DIExpression(), !6975)
    #dbg_value(i64 %.sroa.02.1, !7185, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6975)
    #dbg_value(i64 %.sroa.08.0.lcssa, !7185, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6975)
    #dbg_value(i32 %.lcssa49, !7186, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6975)
    #dbg_value(i32 %.lcssa51.a, !7186, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6975)
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7238 ; 3 uses
  call void @_RINvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE5drainINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEEBJ_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.as, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef range(i64 0, 1152921504606846976) %.sroa.02.1, i64 noundef range(i64 0, 1152921504606846976) %.sroa.08.0.lcssa), !dbg !7239
  store i32 %.lcssa49, ptr %i.a, align 8, !dbg !7238, !alias.scope !7188
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 4, !dbg !7238
  store i32 %.lcssa51.a, ptr %3, align 4, !dbg !7238, !alias.scope !7188
    #dbg_value(ptr %i.a, !7190, !DIExpression(), !6980)
  invoke void @_RNvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEENtNtNtB10_3ops4drop4Drop4dropB1K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter7sources4once4OnceNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEEEB1X_.exit unwind label %bb.e, !dbg !7240

bb.e:                                             ; preds = %._crit_edge
  %i.at = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.as, !1259, !DIExpression(), !6982)
  invoke void @_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc3vec5drainINtB5_5DrainNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.as)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec5drain5DrainNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEEB1m_.exit.i unwind label %bb.f, !dbg !7241

bb.f:                                             ; preds = %bb.e
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #11, !dbg !7240
  unreachable, !dbg !7240

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec5drain5DrainNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEEB1m_.exit.i: ; preds = %bb.e
  resume { ptr, i32 } %i.at, !dbg !7240

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter7sources4once4OnceNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEEEB1X_.exit: ; preds = %._crit_edge
    #dbg_value(ptr %i.as, !1259, !DIExpression(), !6984)
  call void @_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc3vec5drainINtB5_5DrainNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.as), !dbg !7242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7243
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7244
  store i8 0, ptr %i.av, align 8, !dbg !7244
  br label %_RINvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRange16binary_search_byNCNvB2_13binary_search0EBz_.exit, !dbg !7245

bb.g:                                             ; preds = %.lr.ph
    #dbg_value(ptr %i.e, !7107, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7140)
    #dbg_value(ptr %i.e, !7112, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7143)
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.sroa.08.054, !dbg !7246
    #dbg_value(ptr %i.aw, !6998, !DIExpression(), !7196)
  %i.ax = call { i32, i32 } @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNtNtB4_8interval8Interval5unionB6_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.aw), !dbg !7247 ; 2 uses
  %i.ay = extractvalue { i32, i32 } %i.ax, 0, !dbg !7247 ; 4 uses
  %.not42 = icmp eq i32 %i.ay, -1, !dbg !7248
  br i1 %.not42, label %._crit_edge, label %bb.i, !dbg !7249

bb.h:                                             ; preds = %.lr.ph
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.g, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #13, !dbg !7235
  unreachable, !dbg !7235

bb.i:                                             ; preds = %bb.g
  %i.az = extractvalue { i32, i32 } %i.ax, 1, !dbg !7247 ; 3 uses
    #dbg_value(i32 %i.ay, !6999, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7197)
    #dbg_value(i32 %i.az, !6999, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7197)
  store i32 %i.ay, ptr %i.b, align 4, !dbg !7250
  store i32 %i.az, ptr %i.c, align 4, !dbg !7250
    #dbg_value(i64 %i.ap, !6995, !DIExpression(), !7127)
    #dbg_value(i64 %i.ap, !6996, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7132)
    #dbg_value(ptr undef, !7009, !DIExpression(), !7015)
    #dbg_value(ptr undef, !7011, !DIExpression(), !7014)
    #dbg_value(ptr undef, !7001, !DIExpression(), !7008)
    #dbg_value(ptr undef, !7002, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7133)
  %exitcond62.not = icmp eq i64 %i.ap, %i.g, !dbg !7233
  br i1 %exitcond62.not, label %._crit_edge, label %.lr.ph, !dbg !7007

_RINvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRange16binary_search_byNCNvB2_13binary_search0EBz_.exit: ; preds = %._crit_edge.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter7sources4once4OnceNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEEEB1X_.exit
  ret void, !dbg !7245
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeE5unionB9_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 !dbg !230 {
bb.a:
    #dbg_value(ptr %0, !1337, !DIExpression(), !7251)
    #dbg_value(ptr %1, !1339, !DIExpression(), !7251)
    #dbg_value(ptr %1, !1341, !DIExpression(), !7253)
    #dbg_value(ptr %1, !1343, !DIExpression(), !7255)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !7306
  %i.b = load i64, ptr %i.a, align 8, !dbg !7306, !noundef !348 ; 5 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976, !dbg !7307
  tail call void @llvm.assume(i1 %i.c), !dbg !7308
  %i.d = icmp eq i64 %i.b, 0, !dbg !7309
  br i1 %i.d, label %bb.e, label %bb.b, !dbg !7310

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !1345, !DIExpression(), !7257)
    #dbg_value(ptr %0, !1352, !DIExpression(), !7259)
    #dbg_value(ptr %0, !1358, !DIExpression(), !7261)
    #dbg_value(ptr %0, !1360, !DIExpression(), !7263)
    #dbg_value(ptr %0, !1362, !DIExpression(), !7265)
    #dbg_value(ptr %1, !1348, !DIExpression(), !7266)
    #dbg_value(ptr %1, !1352, !DIExpression(), !7268)
    #dbg_value(ptr %1, !1358, !DIExpression(), !7270)
    #dbg_value(ptr %1, !1360, !DIExpression(), !7272)
    #dbg_value(ptr %1, !1362, !DIExpression(), !7274)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7311
  %i.f = load i64, ptr %i.e, align 8, !dbg !7311, !noundef !348
    #dbg_value(i64 %i.f, !1367, !DIExpression(), !7276)
    #dbg_value(ptr poison, !1370, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7277)
    #dbg_value(i64 %i.f, !1370, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7277)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !7312
    #dbg_value(ptr poison, !1371, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7277)
    #dbg_value(i64 %i.b, !1371, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7277)
  %i.h = icmp eq i64 %i.f, %i.b, !dbg !7313
  %.pre = load ptr, ptr %i.g, align 8, !dbg !7314 ; 3 uses
  br i1 %i.h, label %bb.c, label %bb.d, !dbg !7313

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %.pre, !1371, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7277)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7315
  %i.j = load ptr, ptr %i.i, align 8, !dbg !7315, !nonnull !348, !noundef !348
    #dbg_value(ptr %i.j, !1370, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7277)
  %i.k = tail call noundef zeroext i1 @_RNvXs2_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull %i.j, ptr noundef nonnull %.pre, i64 noundef %i.b), !dbg !7316
  br i1 %i.k, label %bb.e, label %bb.d, !dbg !7256

bb.d:                                             ; preds = %bb.b, %bb.c
    #dbg_value(ptr %0, !1388, !DIExpression(), !7292)
    #dbg_value(ptr %1, !1389, !DIExpression(), !7293)
    #dbg_value(ptr %1, !1384, !DIExpression(), !7294)
    #dbg_value(ptr %1, !1358, !DIExpression(), !7295)
    #dbg_value(ptr %1, !1360, !DIExpression(), !7296)
    #dbg_value(ptr %1, !1362, !DIExpression(), !7297)
    #dbg_value(i64 %i.b, !1393, !DIExpression(), !7300)
    #dbg_value(i64 %i.b, !1403, !DIExpression(), !7302)
    #dbg_value(ptr %.pre, !1401, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7303)
    #dbg_value(ptr %.pre, !1397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7304)
    #dbg_value(i64 %i.b, !1401, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7303)
    #dbg_value(i64 %i.b, !1397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7304)
    #dbg_value(ptr %.pre, !1398, !DIExpression(), !7305)
    #dbg_value(ptr %.pre, !1404, !DIExpression(), !7302)
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.b, !dbg !7317
  tail call void @_RNvXs2_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEINtB5_10SpecExtendRBU_INtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterBU_EE11spec_extendBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %.pre, ptr noundef nonnull %i.l), !dbg !7318
  tail call fastcc void @_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeE12canonicalizeB9_(ptr noalias nofree noundef align 8 dereferenceable(32) %0), !dbg !7319
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7320 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !dbg !7320, !range !901, !noundef !348
  %i.o = trunc nuw i8 %i.n to i1, !dbg !7320
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !7320
  %i.q = load i8, ptr %i.p, align 8, !dbg !7320, !range !901
  %.sroa.0.0 = select i1 %i.o, i8 %i.q, i8 0, !dbg !7320
  store i8 %.sroa.0.0, ptr %i.m, align 8, !dbg !7321
  br label %bb.e, !dbg !7322

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  ret void, !dbg !7322
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeE6negateB9_(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7331 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !1245, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7333)
    #dbg_value(ptr poison, !1246, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7333)
    #dbg_value(ptr poison, !7495, !DIExpression(), !7502)
    #dbg_value(ptr poison, !7505, !DIExpression(), !7508)
    #dbg_value(ptr poison, !7503, !DIExpression(), !7509)
    #dbg_value(ptr %0, !7484, !DIExpression(), !7510)
    #dbg_value(i64 0, !7511, !DIExpression(), !7516)
    #dbg_value(i64 0, !7517, !DIExpression(), !7522)
    #dbg_value(i64 0, !7523, !DIExpression(), !7528)
    #dbg_value(i64 0, !7511, !DIExpression(), !7530)
    #dbg_value(i64 0, !7517, !DIExpression(), !7533)
    #dbg_value(i64 0, !7523, !DIExpression(), !7536)
    #dbg_value(i64 1, !7537, !DIExpression(), !7541)
    #dbg_value(i64 1, !7542, !DIExpression(), !7546)
    #dbg_value(ptr %0, !7547, !DIExpression(), !7550)
    #dbg_value(ptr %0, !7551, !DIExpression(), !7554)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7679 ; 9 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !7679, !noundef !348 ; 7 uses
  %i.d = icmp ult i64 %i.c, 1152921504606846976, !dbg !7680
  tail call void @llvm.assume(i1 %i.d), !dbg !7681
  %i.e = icmp eq i64 %i.c, 0, !dbg !7682
  br i1 %i.e, label %bb.b, label %bb.d, !dbg !7683

bb.b:                                             ; preds = %bb.a
    #dbg_value(i32 0, !7485, !DIExpression(), !7555)
    #dbg_value(i32 1114111, !7486, !DIExpression(), !7555)
    #dbg_value(ptr %0, !7556, !DIExpression(), !7560)
  %i.f = tail call { i32, i32 } @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNtNtB4_8interval8Interval6createB6_(i32 noundef 0, i32 noundef 1114111), !dbg !7684 ; 2 uses
  %i.g = extractvalue { i32, i32 } %i.f, 0, !dbg !7684
  %i.h = extractvalue { i32, i32 } %i.f, 1, !dbg !7684
    #dbg_value(i32 %i.g, !7557, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7560)
    #dbg_value(i32 %i.h, !7557, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7560)
    #dbg_value(ptr %0, !1299, !DIExpression(), !7347)
    #dbg_value(ptr %0, !1308, !DIExpression(), !7349)
    #dbg_value(i32 %i.g, !1304, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7347)
    #dbg_value(i32 %i.h, !1304, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7347)
    #dbg_value(i64 8, !1313, !DIExpression(), !7352)
  %i.i = load i64, ptr %i.b, align 8, !dbg !7685, !alias.scope !7561, !noundef !348 ; 3 uses
    #dbg_value(i64 %i.i, !1305, !DIExpression(), !7355)
    #dbg_value(i64 %i.i, !1321, !DIExpression(), !7357)
    #dbg_value(ptr %0, !1319, !DIExpression(), !7358)
  %i.j = load i64, ptr %0, align 8, !dbg !7686, !range !962, !alias.scope !7561, !noundef !348
  %i.k = icmp eq i64 %i.i, %i.j, !dbg !7687
  br i1 %i.k, label %bb.c, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_.exit, !dbg !7687

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #12, !dbg !7688
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_.exit, !dbg !7689

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_.exit: ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7690
  %i.m = load ptr, ptr %i.l, align 8, !dbg !7690, !alias.scope !7561, !nonnull !348, !noundef !348
    #dbg_value(ptr %i.m, !1322, !DIExpression(), !7357)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.i, !dbg !7691 ; 2 uses
    #dbg_value(ptr %i.n, !1306, !DIExpression(), !7362)
    #dbg_value(ptr %i.n, !1324, !DIExpression(), !7364)
    #dbg_value(i32 %i.g, !1327, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7364)
    #dbg_value(i32 %i.h, !1327, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7364)
  store i32 %i.g, ptr %i.n, align 4, !dbg !7692
end_hunk_0
