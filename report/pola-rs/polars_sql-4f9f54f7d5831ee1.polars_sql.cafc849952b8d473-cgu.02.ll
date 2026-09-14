Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_sql-4f9f54f7d5831ee1.polars_sql.cafc849952b8d473-cgu.02?download=true
inline.NumInlined: 8278
inline.NumDeleted: 3136
begin_hunk_0_@_RNvXsrD_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_10CopySourceNtNtCscgRAwXFJnXP_4core5clone5Clone5clone:bb.a
  br i1 %i.e, label %bb.b, label %bb.d, !dbg !86714

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !86715
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86712), !dbg !86716
  %i.g = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query5QueryE13new_uninit_inBM_(), !dbg !86717, !noalias !86712, !inline_history !2049 ; 3 uses
  %i.h = load ptr, ptr %i.f, align 8, !dbg !86718, !alias.scope !86712, !nonnull !1416, !noundef !1416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !86719, !noalias !86713
  invoke fastcc void @_RNvXs1w_NtNtCsaRr8xKSRVhT_9sqlparser3ast5queryNtB6_5QueryNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(1400) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.h) #46
          to label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query5QueryENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit unwind label %bb.c, !dbg !86720, !noalias !86712, !inline_history !994

common.resume:                                    ; preds = %bb.e, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.l, %bb.e ]
  resume { ptr, i32 } %common.resume.op, !dbg !86721

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 1400, i64 noundef 8) #45, !dbg !86722, !noalias !86712, !inline_history !2049
  br label %common.resume, !dbg !86723

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query5QueryENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.g, ptr noundef nonnull align 8 dereferenceable(1400) %i.a, i64 1400, i1 false), !dbg !86724, !noalias !86713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !86725, !noalias !86713
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !86726
  store ptr %i.g, ptr %i.j, align 8, !dbg !86726
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !86726
  br label %bb.g, !dbg !86727

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !86728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !86729
  call void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast14ObjectNamePartENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBJ_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !dbg !86730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !86731
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBJ_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %bb.f unwind label %bb.e, !dbg !86731

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.c) #41
          to label %common.resume unwind label %bb.h, !dbg !86732

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !86733
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !86733
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !86733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !86732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !86732
  br label %bb.g, !dbg !86727

bb.g:                                             ; preds = %bb.f, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query5QueryENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit
  ret void, !dbg !86734

bb.h:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !86714
  unreachable, !dbg !86714
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc noundef zeroext i1 @_RNvXsrF_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_10CopySourceNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #2 !dbg !86735 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !86761, !range !1569, !noundef !1416
  %i.b = icmp eq i64 %i.a, -9223372036854775808, !dbg !86761 ; 2 uses
  %i.c = load i64, ptr %1, align 8, !dbg !86762, !range !1569, !noundef !1416
  %i.d = icmp eq i64 %i.c, -9223372036854775808, !dbg !86762 ; 3 uses
  %i.e = xor i1 %i.b, %i.d, !dbg !86763
  br i1 %i.e, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !86763

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.d, !dbg !86763

_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.d, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, %bb.e, %bb.f, %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.j, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ false, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit ], [ %i.w, %bb.f ], [ false, %bb.d ], !dbg !86764
  ret i1 %.sroa.0.0, !dbg !86765

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.d), !dbg !86763
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !86766
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !86766
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86756), !dbg !86767
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86757), !dbg !86767
  %i.h = load ptr, ptr %i.f, align 8, !dbg !86768, !alias.scope !86756, !noalias !86758, !nonnull !1416, !noundef !1416
  %i.i = load ptr, ptr %i.g, align 8, !dbg !86769, !alias.scope !86757, !noalias !86759, !nonnull !1416, !noundef !1416
  %i.j = tail call fastcc noundef zeroext i1 @_RNvXs1y_NtNtCsaRr8xKSRVhT_9sqlparser3ast5queryNtB6_5QueryNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.i) #46, !dbg !86770, !noalias !86760, !inline_history !1013
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !86771

bb.d:                                             ; preds = %bb.b
  %i.k = xor i1 %i.d, true, !dbg !86763
  tail call void @llvm.assume(i1 %i.k), !dbg !86763
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !86772
  %.val1.i = load i64, ptr %i.l, align 8, !dbg !86772, !noundef !1416 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !86772
  %.val3.i = load i64, ptr %i.m, align 8, !dbg !86772, !noundef !1416
  %i.n = icmp eq i64 %.val1.i, %.val3.i, !dbg !86773
  br i1 %i.n, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !86773

_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !86772
  %.val2.i = load ptr, ptr %i.o, align 8, !dbg !86772, !nonnull !1416, !noundef !1416
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !86772
  %.val.i = load ptr, ptr %i.p, align 8, !dbg !86772, !nonnull !1416, !noundef !1416
  %i.q = tail call noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtCsaRr8xKSRVhT_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull %.val.i, ptr noundef nonnull %.val2.i, i64 noundef %.val1.i), !dbg !86774
  br i1 %i.q, label %bb.e, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !86775

bb.e:                                             ; preds = %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !86776
  %.val1.i5 = load i64, ptr %i.r, align 8, !dbg !86776, !noundef !1416 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !86776
  %.val3.i6 = load i64, ptr %i.s, align 8, !dbg !86776, !noundef !1416
  %i.t = icmp eq i64 %.val1.i5, %.val3.i6, !dbg !86777
  br i1 %i.t, label %bb.f, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !86777

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !86776
  %.val2.i7 = load ptr, ptr %i.u, align 8, !dbg !86776, !nonnull !1416, !noundef !1416
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !86776
  %.val.i8 = load ptr, ptr %i.v, align 8, !dbg !86776, !nonnull !1416, !noundef !1416
  %i.w = tail call noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull %.val.i8, ptr noundef nonnull %.val2.i7, i64 noundef %.val1.i5), !dbg !86778
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !86779
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc void @_RNvXsrN_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_10CopyTargetNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #2 !dbg !86780 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !dbg !86782, !range !1654, !noundef !1416 ; 2 uses
  %switch = icmp samesign ult i64 %i.a, 2, !dbg !86782
  br i1 %switch, label %bb.b, label %.sink.split, !dbg !86782

.sink.split:                                      ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !86783
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !86782
  tail call void @_RNvXs4_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b), !dbg !86783
  br label %bb.b, !dbg !86782

bb.b:                                             ; preds = %bb.a, %.sink.split
  store i64 %i.a, ptr %0, align 8, !dbg !86782
  ret void, !dbg !86784
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsu_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_15FunctionOptionsNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 2 captures(none) dereferenceable(6) %0, ptr noalias noundef nonnull readonly align 2 captures(none) dereferenceable(6) %1) unnamed_addr #15 !dbg !86785 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !86824
  %i.b = load i8, ptr %i.a, align 2, !dbg !86824, !range !1459, !noundef !1416
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !86824
  %i.d = load i8, ptr %i.c, align 2, !dbg !86824, !range !1459, !noundef !1416
  %i.e = icmp eq i8 %i.b, %i.d, !dbg !86824
  br i1 %i.e, label %bb.b, label %bb.d, !dbg !86803

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !86825
  %i.g = load i16, ptr %i.f, align 2, !dbg !86825, !noundef !1416
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !86825
  %i.i = load i16, ptr %i.h, align 2, !dbg !86825, !noundef !1416
  %i.j = icmp eq i16 %i.g, %i.i, !dbg !86825
  br i1 %i.j, label %bb.c, label %bb.d, !dbg !86806

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %0, align 2, !dbg !86826, !range !1604, !noundef !1416 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !86826
  %.not = icmp eq i8 %i.k, 2, !dbg !86826
  %i.m = load i8, ptr %1, align 2, !dbg !86826, !range !1604, !noundef !1416 ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e, !dbg !86827

bb.d:                                             ; preds = %bb.g, %bb.e, %bb.a, %bb.b, %bb.h, %bb.f
  %.sroa.0.0.shrunk = phi i1 [ %i.s, %bb.h ], [ true, %bb.g ], [ false, %bb.e ], [ false, %bb.a ], [ %i.p, %bb.f ], [ false, %bb.b ]
  ret i1 %.sroa.0.0.shrunk, !dbg !86828

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !86826
  %i.o = icmp eq i8 %i.k, %i.m
  br i1 %i.o, label %bb.g, label %bb.d, !dbg !86827

bb.f:                                             ; preds = %bb.c
  %i.p = icmp eq i8 %i.m, 2, !dbg !86826
  br label %bb.d, !dbg !86827

bb.g:                                             ; preds = %bb.e
  %or.cond.not = icmp eq i8 %i.k, 0, !dbg !86829
  br i1 %or.cond.not, label %bb.d, label %bb.h, !dbg !86829

bb.h:                                             ; preds = %bb.g
  %i.q = load i8, ptr %i.l, align 1, !dbg !86830, !noundef !1416
  %i.r = load i8, ptr %i.n, align 1, !dbg !86830, !noundef !1416
  %i.s = icmp eq i8 %i.q, %i.r, !dbg !86830
  br label %bb.d, !dbg !86829
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc noundef zeroext i1 @_RNvXsvP_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_18CreateFunctionBodyNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2104) %1) unnamed_addr #2 !dbg !86831 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !86885, !range !1704, !noundef !1416 ; 2 uses
  %i.b = add nsw i64 %i.a, -3, !dbg !86885
  %i.c = icmp samesign ugt i64 %i.a, 2, !dbg !86885
  %i.d = select i1 %i.c, i64 %i.b, i64 5, !dbg !86885 ; 2 uses
  %i.e = load i64, ptr %1, align 8, !dbg !86886, !range !1704, !noundef !1416 ; 2 uses
  %i.f = add nsw i64 %i.e, -3, !dbg !86886
  %2 = icmp samesign ult i64 %i.e, 3, !dbg !86886 ; 2 uses
  %i.g = select i1 %2, i64 5, i64 %i.f, !dbg !86886
  %i.h = icmp eq i64 %i.d, %i.g, !dbg !86887
  br i1 %i.h, label %bb.b, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtCsaRr8xKSRVhT_9sqlparser3ast18BeginEndStatementsNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !86887

bb.b:                                             ; preds = %bb.a
  switch i64 %i.d, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.g
    i64 4, label %bb.h
    i64 5, label %bb.i
  ], !dbg !86887

_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtCsaRr8xKSRVhT_9sqlparser3ast18BeginEndStatementsNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.j, %bb.d, %bb.k, %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast9StatementENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit.i.i, %bb.f, %bb.a, %bb.i, %bb.h, %bb.g, %bb.e
  %.sroa.0.0 = phi i1 [ %i.v, %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast9StatementENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit.i.i ], [ %i.p, %bb.e ], [ false, %bb.a ], [ %i.y, %bb.g ], [ %i.ab, %bb.h ], [ %i.ac, %bb.i ], [ false, %bb.f ], [ false, %bb.d ], [ %i.ag, %bb.k ], [ %.mux, %bb.j ], !dbg !86888
  ret i1 %.sroa.0.0, !dbg !86889

bb.c:                                             ; preds = %bb.b
  unreachable, !dbg !86885

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !86890
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 336, !dbg !86891 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !86890
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 336, !dbg !86891 ; 2 uses
  %i.m = tail call fastcc noundef zeroext i1 @_RNvXs7N_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_4ExprNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.k) #46, !dbg !86892, !noalias !86875, !inline_history !1271
  br i1 %i.m, label %bb.j, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtCsaRr8xKSRVhT_9sqlparser3ast18BeginEndStatementsNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !86893

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !86894
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !86894
  %i.p = tail call fastcc noundef zeroext i1 @_RNvXs7N_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_4ExprNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.o) #46, !dbg !86895, !noalias !86876, !inline_history !1271
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtCsaRr8xKSRVhT_9sqlparser3ast18BeginEndStatementsNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !86896

bb.f:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !86897
  %.val1.i = load i64, ptr %i.q, align 8, !dbg !86897, !noundef !1416 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !86897
  %.val3.i = load i64, ptr %i.r, align 8, !dbg !86897, !noundef !1416
  %i.s = icmp eq i64 %.val1.i, %.val3.i, !dbg !86898
  br i1 %i.s, label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast9StatementENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit.i.i, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtCsaRr8xKSRVhT_9sqlparser3ast18BeginEndStatementsNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !86898

_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast9StatementENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit.i.i: ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !86897
  %.val2.i = load ptr, ptr %i.t, align 8, !dbg !86897, !nonnull !1416, !noundef !1416
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !86897
  %.val.i = load ptr, ptr %i.u, align 8, !dbg !86897, !nonnull !1416, !noundef !1416
  %i.v = tail call noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtCsaRr8xKSRVhT_9sqlparser3ast9StatementINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull %.val.i, ptr noundef nonnull %.val2.i, i64 noundef %.val1.i), !dbg !86899
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtCsaRr8xKSRVhT_9sqlparser3ast18BeginEndStatementsNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !86900

bb.g:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !86901
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !86901
  %i.y = tail call fastcc noundef zeroext i1 @_RNvXs7N_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_4ExprNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.x) #46, !dbg !86902, !noalias !86877, !inline_history !1271
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtCsaRr8xKSRVhT_9sqlparser3ast18BeginEndStatementsNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !86896

bb.h:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !86903
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !86903
  %i.ab = tail call fastcc noundef zeroext i1 @_RNvXs7N_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_4ExprNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.aa) #46, !dbg !86904, !noalias !86878, !inline_history !1271
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtCsaRr8xKSRVhT_9sqlparser3ast18BeginEndStatementsNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !86896

bb.i:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %2), !dbg !86887
  %i.ac = tail call fastcc noundef zeroext i1 @_RNvXs2X_NtNtCsaRr8xKSRVhT_9sqlparser3ast5queryNtB6_6SelectNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2104) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2104) %1) #46, !dbg !86905, !noalias !86879, !inline_history !86862
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtCsaRr8xKSRVhT_9sqlparser3ast18BeginEndStatementsNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !86896

bb.j:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86880), !dbg !86906
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86881), !dbg !86906
  %i.ad = load i64, ptr %i.j, align 8, !dbg !86907, !range !1593, !alias.scope !86880, !noalias !86882, !noundef !1416
  %.not.i = icmp eq i64 %i.ad, 69, !dbg !86907    ; 2 uses
  %i.ae = load i64, ptr %i.l, align 8, !dbg !86907, !range !1593, !alias.scope !86881, !noalias !86883, !noundef !1416
  %i.af = icmp eq i64 %i.ae, 69, !dbg !86907      ; 2 uses
  %brmerge = or i1 %.not.i, %i.af, !dbg !86908
  %.mux = and i1 %.not.i, %i.af, !dbg !86908
  br i1 %brmerge, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtCsaRr8xKSRVhT_9sqlparser3ast18BeginEndStatementsNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %bb.k, !dbg !86908

bb.k:                                             ; preds = %bb.j
  %i.ag = tail call fastcc noundef zeroext i1 @_RNvXs7N_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_4ExprNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.l) #46, !dbg !86909, !noalias !86884, !inline_history !1282
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtCsaRr8xKSRVhT_9sqlparser3ast18BeginEndStatementsNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !86909
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc void @_RNvXswh_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_15MacroDefinitionNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(328) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !86910 {
bb.a:
  %i.a = alloca [1400 x i8], align 8              ; 4 uses
  %i.b = load i64, ptr %1, align 8, !dbg !86930, !range !1593, !noundef !1416
  %i.c = icmp eq i64 %i.b, 69, !dbg !86930
  br i1 %i.c, label %bb.b, label %bb.d, !dbg !86930

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !86931
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86928), !dbg !86932
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query5QueryE13new_uninit_inBM_(), !dbg !86933, !noalias !86928, !inline_history !2049 ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !dbg !86934, !alias.scope !86928, !nonnull !1416, !noundef !1416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !86935, !noalias !86929
  invoke fastcc void @_RNvXs1w_NtNtCsaRr8xKSRVhT_9sqlparser3ast5queryNtB6_5QueryNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(1400) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.f) #46
          to label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query5QueryENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit unwind label %bb.c, !dbg !86936, !noalias !86928, !inline_history !994

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 1400, i64 noundef 8) #45, !dbg !86937, !noalias !86928, !inline_history !2049
  resume { ptr, i32 } %i.g, !dbg !86938

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query5QueryENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.e, ptr noundef nonnull align 8 dereferenceable(1400) %i.a, i64 1400, i1 false), !dbg !86939, !noalias !86929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !86940, !noalias !86929
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !86941
  store ptr %i.e, ptr %i.h, align 8, !dbg !86941
  store i64 69, ptr %0, align 8, !dbg !86941
  br label %bb.e, !dbg !86942

bb.d:                                             ; preds = %bb.a
  tail call fastcc void @_RNvXs7L_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_4ExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %1) #46, !dbg !86943
  br label %bb.e, !dbg !86942

bb.e:                                             ; preds = %bb.d, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query5QueryENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit
  ret void, !dbg !86944
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc noundef zeroext i1 @_RNvXswj_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_15MacroDefinitionNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %1) unnamed_addr #2 !dbg !86945 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !86969, !range !1593, !noundef !1416
  %i.b = icmp eq i64 %i.a, 69, !dbg !86969        ; 2 uses
  %i.c = load i64, ptr %1, align 8, !dbg !86970, !range !1593, !noundef !1416
  %i.d = icmp eq i64 %i.c, 69, !dbg !86970        ; 3 uses
  %i.e = xor i1 %i.b, %i.d, !dbg !86971
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !86971

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.d, label %bb.e, !dbg !86971

bb.c:                                             ; preds = %bb.a, %bb.e, %bb.d
  %.sroa.0.0.shrunk = phi i1 [ %i.j, %bb.d ], [ %i.l, %bb.e ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.shrunk, !dbg !86972

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.d), !dbg !86971
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !86973
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !86973
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86963), !dbg !86974
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86964), !dbg !86974
  %i.h = load ptr, ptr %i.f, align 8, !dbg !86975, !alias.scope !86963, !noalias !86965, !nonnull !1416, !noundef !1416
  %i.i = load ptr, ptr %i.g, align 8, !dbg !86976, !alias.scope !86964, !noalias !86966, !nonnull !1416, !noundef !1416
  %i.j = tail call fastcc noundef zeroext i1 @_RNvXs1y_NtNtCsaRr8xKSRVhT_9sqlparser3ast5queryNtB6_5QueryNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.i) #46, !dbg !86977, !noalias !86967, !inline_history !1013
  br label %bb.c, !dbg !86978

bb.e:                                             ; preds = %bb.b
  %i.k = xor i1 %i.d, true, !dbg !86971
  tail call void @llvm.assume(i1 %i.k), !dbg !86971
  %i.l = tail call fastcc noundef zeroext i1 @_RNvXs7N_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_4ExprNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %1) #46, !dbg !86979, !noalias !86968, !inline_history !1271
  br label %bb.c, !dbg !86978
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc void @_RNvXswr_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_10SchemaNameNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !86980 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  %i.d = load i64, ptr %1, align 8, !dbg !87003, !range !1589, !noundef !1416 ; 2 uses
  %i.e = xor i64 %i.d, -9223372036854775808, !dbg !87003
  %i.f = icmp slt i64 %i.d, 0, !dbg !87003
  %i.g = select i1 %i.f, i64 %i.e, i64 2, !dbg !87003
  switch i64 %i.g, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ], !dbg !87003

bb.b:                                             ; preds = %bb.a
  unreachable, !dbg !87003

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !87004
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !87005
  tail call void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast14ObjectNamePartENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBJ_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h), !dbg !87006
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !87005
  br label %bb.f, !dbg !87007

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !87008
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !87009
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86997), !dbg !87009
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86998), !dbg !87009
  call void @_RNvXs4_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.j), !dbg !87010
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !87011
  %.val.i = load i32, ptr %i.k, align 8, !dbg !87011, !range !2071, !alias.scope !86998, !noalias !86997, !noundef !1416
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !87012
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !87013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.l, i64 32, i1 false), !dbg !87014, !alias.scope !86999
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 56, !dbg !87013
  store i32 %.val.i, ptr %i.n, align 8, !dbg !87013, !alias.scope !86997, !noalias !86998
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !87015
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !dbg !87015
  store i64 -9223372036854775807, ptr %0, align 8, !dbg !87015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !87016
  br label %bb.f, !dbg !87007

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !87017
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !87018
  call void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast14ObjectNamePartENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBJ_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !dbg !87019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !87020
  call void @llvm.experimental.noalias.scope.decl(metadata !87000), !dbg !87020
  call void @llvm.experimental.noalias.scope.decl(metadata !87001), !dbg !87020
  invoke void @_RNvXs4_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.p)
          to label %bb.h unwind label %bb.g, !dbg !87021

bb.f:                                             ; preds = %bb.h, %bb.d, %bb.c
  ret void, !dbg !87022

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.b) #41
          to label %bb.j unwind label %bb.i, !dbg !87023

bb.h:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !87024
  %.val.i1 = load i32, ptr %i.r, align 8, !dbg !87024, !range !2071, !alias.scope !87001, !noalias !87000, !noundef !1416
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !87025
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !87026
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.s, i64 32, i1 false), !dbg !87027, !alias.scope !87002
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !87026
  store i32 %.val.i1, ptr %i.u, align 8, !dbg !87026, !alias.scope !87000, !noalias !87001
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !87028
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !87028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !dbg !87028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !87023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !87023
  br label %bb.f, !dbg !87007

bb.i:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !87003
  unreachable, !dbg !87003

bb.j:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.q, !dbg !87003
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc void @_RNvXsx_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers17stmt_data_loadingNtB5_18FileStagingCommandNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !87029 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !87038
  call void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast14ObjectNamePartENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBJ_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !dbg !87039
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !87040
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !87040 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !87036), !dbg !87040
  call void @llvm.experimental.noalias.scope.decl(metadata !87037), !dbg !87040
  %i.d = load i64, ptr %i.c, align 8, !dbg !87041, !range !1569, !alias.scope !87037, !noalias !87036, !noundef !1416
  %.not.i = icmp eq i64 %i.d, -9223372036854775808, !dbg !87041
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !87042

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs4_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit unwind label %bb.d, !dbg !87043
end_hunk_0
