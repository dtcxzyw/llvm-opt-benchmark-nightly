Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/bulk.bulk.93260328f3fcf1fb-cgu.12?download=true
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultNtCscDgBWNIBxoJ_4bulk11ClientStatsNtCsbHiBx3jRrxb_6anyhow5ErrorEEEEB2o_:bb.a
  br i1 %i.l, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultNtCscDgBWNIBxoJ_4bulk11ClientStatsNtCsbHiBx3jRrxb_6anyhow5ErrorEEEB1L_.exit, !dbg !7788

bb.g:                                             ; preds = %bb.f
    #dbg_value(i8 2, !6483, !DIExpression(), !7789)
  fence acquire, !dbg !7791
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataE9drop_slowCsar2VadbF9t7_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultNtCscDgBWNIBxoJ_4bulk11ClientStatsNtCsbHiBx3jRrxb_6anyhow5ErrorEEEB1L_.exit unwind label %bb.h, !dbg !7792

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECscDgBWNIBxoJ_4bulk.exit.i: ; preds = %bb.h, %bb.d, %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.b, %bb.d ], [ %i.b, %bb.b ], [ %i.b, %bb.c ]
    #dbg_value(ptr %i.a, !7793, !DIExpression(), !7801)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_NtCscDgBWNIBxoJ_4bulk11ClientStatsNtCsbHiBx3jRrxb_6anyhow5ErrorEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEB1p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(456) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultIB1n_NtCscDgBWNIBxoJ_4bulk11ClientStatsNtCsbHiBx3jRrxb_6anyhow5ErrorEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEEB1P_.exit.i unwind label %bb.i, !dbg !7803

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECscDgBWNIBxoJ_4bulk.exit.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECscDgBWNIBxoJ_4bulk.exit.i, %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !7709
  unreachable, !dbg !7709

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultIB1n_NtCscDgBWNIBxoJ_4bulk11ClientStatsNtCsbHiBx3jRrxb_6anyhow5ErrorEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEEB1P_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECscDgBWNIBxoJ_4bulk.exit.i
  resume { ptr, i32 } %.pn.i, !dbg !7709

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultNtCscDgBWNIBxoJ_4bulk11ClientStatsNtCsbHiBx3jRrxb_6anyhow5ErrorEEEB1L_.exit: ; preds = %bb.e, %bb.f, %bb.g
    #dbg_value(ptr %i.a, !7793, !DIExpression(), !7804)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_NtCscDgBWNIBxoJ_4bulk11ClientStatsNtCsbHiBx3jRrxb_6anyhow5ErrorEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEB1p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(456) %i.a), !dbg !7806
  ret void, !dbg !7700
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEEECscDgBWNIBxoJ_4bulk(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7807 {
bb.a:
  %i.a = alloca [0 x i8], align 1
    #dbg_value(ptr %0, !7812, !DIExpression(), !7813)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7814 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7815), !dbg !7814
    #dbg_value(ptr %i.b, !7818, !DIExpression(), !7824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7826), !dbg !7829
    #dbg_value(ptr poison, !7830, !DIExpression(), !7886)
    #dbg_value(ptr poison, !7919, !DIExpression(), !7927)
    #dbg_value(ptr %i.b, !7907, !DIExpression(), !7929)
    #dbg_declare(ptr poison, !7909, !DIExpression(), !7930)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7931 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !7931, !range !5894, !alias.scope !7932, !noundef !42 ; 2 uses
  %i.e = trunc nuw i64 %i.d to i1, !dbg !7933
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !7933 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !dbg !7933, !alias.scope !7932 ; 5 uses
  %i.h = icmp ne ptr %i.g, null, !dbg !7933
  %.sroa.0.0.i.i = select i1 %i.e, i1 %i.h, i1 false, !dbg !7933
    #dbg_value(i8 poison, !7908, !DIExpression(), !7934)
    #dbg_value(ptr %i.c, !7901, !DIExpression(), !7935)
    #dbg_value(ptr %i.c, !7893, !DIExpression(), !7936)
    #dbg_value(ptr %i.c, !7894, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7937)
    #dbg_value(ptr undef, !7830, !DIExpression(), !7886)
    #dbg_value(ptr %i.c, !7884, !DIExpression(), !7938)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7939), !dbg !7942
    #dbg_value(ptr %i.c, !7943, !DIExpression(), !7954)
    #dbg_declare(ptr poison, !7951, !DIExpression(), !7956)
    #dbg_declare(ptr poison, !7950, !DIExpression(), !7956)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7957), !dbg !7960
    #dbg_value(ptr %i.c, !7961, !DIExpression(), !7973)
    #dbg_declare(ptr poison, !7969, !DIExpression(), !7975)
    #dbg_value(ptr poison, !7976, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !7982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7984), !dbg !7987
    #dbg_value(ptr %i.c, !5885, !DIExpression(), !7988)
  %i.i = icmp eq i64 %i.d, 0, !dbg !7990
  br i1 %i.i, label %.thread.i.i, label %bb.b, !dbg !7990

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !7990
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !dbg !7990, !alias.scope !7991 ; 6 uses
    #dbg_value(ptr poison, !5895, !DIExpression(), !7992)
  %i.k = icmp eq ptr %i.g, null, !dbg !7994
  br i1 %i.k, label %.thread.i.i, label %bb.c, !dbg !7994

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr poison, !5904, !DIExpression(), !7995)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i.i.i) ]
  %i.l = load ptr, ptr %.val1.i.i.i.i.i.i.i, align 8, !dbg !7997, !invariant.load !42, !noalias !7991 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null, !dbg !7997
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d, !dbg !7997

bb.d:                                             ; preds = %bb.c
  invoke void %i.l(ptr noundef nonnull %i.g)
          to label %bb.e unwind label %bb.g, !dbg !7997, !noalias !7991

bb.e:                                             ; preds = %bb.d, %bb.c
    #dbg_value(ptr poison, !5915, !DIExpression(), !7998)
    #dbg_value(ptr poison, !5921, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8000)
    #dbg_value(ptr %.val1.i.i.i.i.i.i.i, !5921, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8000)
    #dbg_value(ptr poison, !5952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8001)
    #dbg_value(ptr poison, !5964, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8003)
    #dbg_value(ptr poison, !5972, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8005)
    #dbg_value(ptr poison, !5983, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8007)
    #dbg_value(ptr %.val1.i.i.i.i.i.i.i, !5952, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8001)
    #dbg_value(ptr %.val1.i.i.i.i.i.i.i, !5964, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8003)
    #dbg_value(ptr %.val1.i.i.i.i.i.i.i, !5972, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8005)
    #dbg_value(ptr %.val1.i.i.i.i.i.i.i, !5983, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8007)
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 8, !dbg !8009
  %i.n = load i64, ptr %i.m, align 8, !dbg !8009, !range !5989, !invariant.load !42, !noalias !7991 ; 2 uses
    #dbg_value(i64 poison, !5937, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8010)
    #dbg_value(i64 %i.n, !5937, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8010)
  %i.o = icmp eq i64 %i.n, 0, !dbg !8011
  br i1 %i.o, label %.thread.i.i, label %bb.f, !dbg !8011

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 16, !dbg !8009
  %i.q = load i64, ptr %i.p, align 8, !dbg !8012, !range !5993, !invariant.load !42, !noalias !7991
    #dbg_value(i64 %i.q, !5937, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8010)
    #dbg_value(ptr %i.g, !5952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8001)
    #dbg_value(ptr %i.g, !5964, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8003)
    #dbg_value(ptr %i.g, !5972, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8005)
    #dbg_value(ptr %i.g, !5983, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8007)
    #dbg_value(ptr %i.g, !5921, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8000)
    #dbg_value(ptr poison, !5994, !DIExpression(), !8013)
    #dbg_value(ptr poison, !6006, !DIExpression(), !8015)
    #dbg_value(ptr %i.g, !6002, !DIExpression(), !8013)
    #dbg_value(ptr %i.g, !6011, !DIExpression(), !8015)
    #dbg_value(ptr %i.g, !6015, !DIExpression(), !8017)
    #dbg_value(ptr %i.g, !6024, !DIExpression(), !8019)
    #dbg_value(i64 %i.q, !6003, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8013)
    #dbg_value(i64 %i.q, !6012, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8015)
    #dbg_value(i64 %i.q, !6021, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8017)
    #dbg_value(i64 %i.q, !6027, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8019)
    #dbg_value(i64 %i.n, !6003, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8013)
    #dbg_value(i64 %i.n, !6012, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8015)
    #dbg_value(i64 %i.n, !6021, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8017)
    #dbg_value(i64 %i.n, !6027, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8019)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef range(i64 1, -9223372036854775808) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #19, !dbg !8021, !noalias !7991
  br label %.thread.i.i, !dbg !8022

bb.g:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
          catch ptr null
    #dbg_value(ptr poison, !5915, !DIExpression(), !8023)
    #dbg_value(ptr poison, !5921, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8025)
    #dbg_value(ptr %.val1.i.i.i.i.i.i.i, !5921, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8025)
    #dbg_value(ptr poison, !5952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8026)
    #dbg_value(ptr poison, !5964, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8028)
    #dbg_value(ptr poison, !5972, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8030)
    #dbg_value(ptr poison, !5983, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8032)
    #dbg_value(ptr %.val1.i.i.i.i.i.i.i, !5952, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8026)
    #dbg_value(ptr %.val1.i.i.i.i.i.i.i, !5964, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8028)
    #dbg_value(ptr %.val1.i.i.i.i.i.i.i, !5972, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8030)
    #dbg_value(ptr %.val1.i.i.i.i.i.i.i, !5983, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8032)
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 8, !dbg !8034
  %i.t = load i64, ptr %i.s, align 8, !dbg !8034, !range !5989, !invariant.load !42, !noalias !7991 ; 2 uses
    #dbg_value(i64 poison, !5937, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8035)
    #dbg_value(i64 %i.t, !5937, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8035)
  %i.u = icmp eq i64 %i.t, 0, !dbg !8036
  br i1 %i.u, label %.body.i.i.i.i.i.i, label %bb.h, !dbg !8036

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 16, !dbg !8034
  %i.w = load i64, ptr %i.v, align 8, !dbg !8037, !range !5993, !invariant.load !42, !noalias !7991
    #dbg_value(i64 %i.w, !5937, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8035)
    #dbg_value(ptr %i.g, !5952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8026)
    #dbg_value(ptr %i.g, !5964, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8028)
    #dbg_value(ptr %i.g, !5972, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8030)
    #dbg_value(ptr %i.g, !5983, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8032)
    #dbg_value(ptr %i.g, !5921, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8025)
    #dbg_value(ptr poison, !5994, !DIExpression(), !8038)
    #dbg_value(ptr poison, !6006, !DIExpression(), !8040)
    #dbg_value(ptr %i.g, !6002, !DIExpression(), !8038)
    #dbg_value(ptr %i.g, !6011, !DIExpression(), !8040)
    #dbg_value(ptr %i.g, !6015, !DIExpression(), !8042)
    #dbg_value(ptr %i.g, !6024, !DIExpression(), !8044)
    #dbg_value(i64 %i.w, !6003, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8038)
    #dbg_value(i64 %i.w, !6012, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8040)
    #dbg_value(i64 %i.w, !6021, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8042)
    #dbg_value(i64 %i.w, !6027, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8044)
    #dbg_value(i64 %i.t, !6003, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8038)
    #dbg_value(i64 %i.t, !6012, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8040)
    #dbg_value(i64 %i.t, !6021, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8042)
    #dbg_value(i64 %i.t, !6027, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8044)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef range(i64 1, 536870913) %i.w) #19, !dbg !8046, !noalias !7991
  br label %.body.i.i.i.i.i.i, !dbg !8047

.body.i.i.i.i.i.i:                                ; preds = %bb.h, %bb.g
  store i64 0, ptr %i.c, align 8, !dbg !7987, !alias.scope !8048
  %i.x = extractvalue { ptr, i32 } %i.r, 0, !dbg !8049
    #dbg_value(ptr undef, !7919, !DIExpression(), !7927)
    #dbg_value(ptr %i.x, !7924, !DIExpression(), !7927)
  %i.y = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.x)
          to label %bb.j unwind label %bb.i, !dbg !8050, !noalias !7932 ; 2 uses

bb.i:                                             ; preds = %.body.i.i.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #18, !dbg !8051, !noalias !7932
  unreachable, !dbg !8051

.thread.i.i:                                      ; preds = %bb.f, %bb.e, %bb.b, %bb.a
  store i64 0, ptr %i.c, align 8, !dbg !7987, !alias.scope !8048
    #dbg_value(ptr undef, !7894, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7937)
    #dbg_value(ptr %i.c, !7894, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7937)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit.i.i, !dbg !8052

bb.j:                                             ; preds = %.body.i.i.i.i.i.i
  %i.aa = extractvalue { ptr, ptr } %i.y, 0, !dbg !8050 ; 2 uses
  %i.ab = extractvalue { ptr, ptr } %i.y, 1, !dbg !8050 ; 2 uses
    #dbg_value(ptr %i.ab, !7894, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7937)
    #dbg_value(ptr %i.aa, !7894, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7937)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  %.not.i.i = icmp eq ptr %i.aa, null, !dbg !8053
  br i1 %.not.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit.i.i, label %bb.k, !dbg !8052

bb.k:                                             ; preds = %bb.j
  %i.ac = invoke noundef ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCscDgBWNIBxoJ_4bulk(ptr noalias nofree noundef nonnull %i.a, ptr noundef nonnull @11, ptr noundef nonnull inttoptr (i64 125 to ptr))
          to label %bb.m unwind label %bb.l, !dbg !8054, !noalias !7932

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit.i.i: ; preds = %bb.j, %.thread.i.i
    #dbg_value(ptr poison, !5895, !DIExpression(), !8055)
  %i.ad = load ptr, ptr %i.b, align 8, !dbg !8057, !alias.scope !7815, !noundef !42 ; 3 uses
  %.not7.i.i = icmp eq ptr %i.ad, null, !dbg !8057
  br i1 %.not7.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECscDgBWNIBxoJ_4bulk.exit5.i, label %bb.q, !dbg !8058

bb.l:                                             ; preds = %bb.n, %bb.m, %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk(ptr nonnull %i.aa, ptr nonnull %i.ab) #17
          to label %.body.i unwind label %bb.p, !dbg !8059, !noalias !7932

bb.m:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECscDgBWNIBxoJ_4bulk(ptr %i.ac)
          to label %bb.n unwind label %bb.l, !dbg !8060, !noalias !7932

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCsG258MDvU3F_3std7process5abort() #21
          to label %bb.o unwind label %bb.l, !dbg !8061, !noalias !7932

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !8063, !noalias !7932
  unreachable, !dbg !8063

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit.i.i
    #dbg_value(ptr %i.b, !7915, !DIExpression(), !8064)
    #dbg_value(ptr %i.b, !8065, !DIExpression(), !8071)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16, !dbg !8073
  invoke void @_RNvMNtNtCsG258MDvU3F_3std6thread6scopedNtB2_9ScopeData29decrement_num_running_threads(ptr noundef nonnull align 8 %i.ag, i1 noundef zeroext %.sroa.0.0.i.i)
          to label %bb.u unwind label %bb.r, !dbg !8074, !noalias !7815

bb.r:                                             ; preds = %bb.q
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !7829

.body.i:                                          ; preds = %bb.r, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ah, %bb.r ], [ %i.ae, %bb.l ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8075), !dbg !7829
    #dbg_value(ptr %i.b, !7713, !DIExpression(), !8078)
  %i.ai = load ptr, ptr %i.b, align 8, !dbg !8080, !alias.scope !8081, !noundef !42 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null, !dbg !8080
  br i1 %i.aj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECscDgBWNIBxoJ_4bulk.exit.i, label %bb.s, !dbg !8080

bb.s:                                             ; preds = %.body.i
    #dbg_value(ptr %i.b, !7727, !DIExpression(), !8082)
    #dbg_value(ptr %i.b, !7735, !DIExpression(), !8084)
    #dbg_value(i64 1, !7740, !DIExpression(), !8086)
    #dbg_value(i8 1, !7744, !DIExpression(), !8086)
    #dbg_value(i64 1, !7747, !DIExpression(), !8088)
    #dbg_value(i8 1, !7751, !DIExpression(), !8088)
    #dbg_value(ptr %i.ai, !7743, !DIExpression(), !8090)
    #dbg_value(ptr %i.ai, !7750, !DIExpression(), !8088)
  %i.ak = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !dbg !8091, !noalias !8092
  %i.al = icmp eq i64 %i.ak, 1, !dbg !8097
  br i1 %i.al, label %bb.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECscDgBWNIBxoJ_4bulk.exit.i, !dbg !8097

bb.t:                                             ; preds = %bb.s
    #dbg_value(i8 2, !6483, !DIExpression(), !8098)
  fence acquire, !dbg !8100
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataE9drop_slowCsar2VadbF9t7_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECscDgBWNIBxoJ_4bulk.exit.i unwind label %bb.ae, !dbg !8101

bb.u:                                             ; preds = %bb.q
    #dbg_value(ptr %i.b, !7713, !DIExpression(), !8102)
    #dbg_value(ptr %i.b, !7727, !DIExpression(), !8104)
    #dbg_value(ptr %i.b, !7735, !DIExpression(), !8106)
    #dbg_value(i64 1, !7740, !DIExpression(), !8108)
    #dbg_value(i8 1, !7744, !DIExpression(), !8108)
    #dbg_value(i64 1, !7747, !DIExpression(), !8110)
    #dbg_value(i8 1, !7751, !DIExpression(), !8110)
    #dbg_value(ptr %i.ad, !7743, !DIExpression(), !8112)
    #dbg_value(ptr %i.ad, !7750, !DIExpression(), !8110)
  %i.am = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !dbg !8113, !noalias !8114
  %i.an = icmp eq i64 %i.am, 1, !dbg !8121
  br i1 %i.an, label %bb.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECscDgBWNIBxoJ_4bulk.exit5.i, !dbg !8121

bb.v:                                             ; preds = %bb.u
    #dbg_value(i8 2, !6483, !DIExpression(), !8122)
  fence acquire, !dbg !8124
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataE9drop_slowCsar2VadbF9t7_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECscDgBWNIBxoJ_4bulk.exit5.i unwind label %bb.w, !dbg !8125

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECscDgBWNIBxoJ_4bulk.exit.i: ; preds = %bb.w, %bb.t, %bb.s, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.ao, %bb.w ], [ %eh.lpad-body.i, %bb.t ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.s ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECscDgBWNIBxoJ_4bulk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #17
          to label %common.resume.i unwind label %bb.ae, !dbg !7829

bb.w:                                             ; preds = %bb.v
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECscDgBWNIBxoJ_4bulk.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECscDgBWNIBxoJ_4bulk.exit5.i: ; preds = %bb.v, %bb.u, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8126), !dbg !7829
    #dbg_value(ptr %i.c, !5877, !DIExpression(), !8129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8131), !dbg !8134
    #dbg_value(ptr %i.c, !5885, !DIExpression(), !8135)
  %i.ap = load i64, ptr %i.c, align 8, !dbg !8137, !range !5894, !alias.scope !8138, !noundef !42
  %i.aq = icmp eq i64 %i.ap, 0, !dbg !8137
  br i1 %i.aq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEECscDgBWNIBxoJ_4bulk.exit, label %bb.x, !dbg !8137

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECscDgBWNIBxoJ_4bulk.exit5.i
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !dbg !8137, !alias.scope !8138, !noundef !42 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !8137
  %.val1.i.i.i = load ptr, ptr %i.ar, align 8, !dbg !8137, !alias.scope !8138 ; 6 uses
    #dbg_value(ptr poison, !5895, !DIExpression(), !8139)
  %i.as = icmp eq ptr %.val.i.i.i, null, !dbg !8141
  br i1 %i.as, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEECscDgBWNIBxoJ_4bulk.exit, label %bb.y, !dbg !8141

bb.y:                                             ; preds = %bb.x
    #dbg_value(ptr poison, !5904, !DIExpression(), !8142)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  %i.at = load ptr, ptr %.val1.i.i.i, align 8, !dbg !8144, !invariant.load !42, !noalias !8145 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.at, null, !dbg !8144
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %bb.z, !dbg !8144

bb.z:                                             ; preds = %bb.y
  invoke void %i.at(ptr noundef nonnull %.val.i.i.i)
          to label %bb.aa unwind label %bb.ac, !dbg !8144, !noalias !8145

bb.aa:                                            ; preds = %bb.z, %bb.y
    #dbg_value(ptr poison, !5915, !DIExpression(), !8146)
    #dbg_value(ptr poison, !5921, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8148)
    #dbg_value(ptr %.val1.i.i.i, !5921, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8148)
    #dbg_value(ptr poison, !5952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8149)
    #dbg_value(ptr poison, !5964, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8151)
    #dbg_value(ptr poison, !5972, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8153)
    #dbg_value(ptr poison, !5983, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8155)
    #dbg_value(ptr %.val1.i.i.i, !5952, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8149)
    #dbg_value(ptr %.val1.i.i.i, !5964, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8151)
    #dbg_value(ptr %.val1.i.i.i, !5972, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8153)
    #dbg_value(ptr %.val1.i.i.i, !5983, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8155)
  %i.au = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8, !dbg !8157
  %i.av = load i64, ptr %i.au, align 8, !dbg !8157, !range !5989, !invariant.load !42, !noalias !8145 ; 2 uses
    #dbg_value(i64 poison, !5937, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8158)
    #dbg_value(i64 %i.av, !5937, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8158)
  %i.aw = icmp eq i64 %i.av, 0, !dbg !8159
  br i1 %i.aw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEECscDgBWNIBxoJ_4bulk.exit, label %bb.ab, !dbg !8159

bb.ab:                                            ; preds = %bb.aa
  %i.ax = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16, !dbg !8157
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !8160, !range !5993, !invariant.load !42, !noalias !8145
    #dbg_value(i64 %i.ay, !5937, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8158)
    #dbg_value(ptr %.val.i.i.i, !5952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8149)
    #dbg_value(ptr %.val.i.i.i, !5964, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8151)
    #dbg_value(ptr %.val.i.i.i, !5972, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8153)
    #dbg_value(ptr %.val.i.i.i, !5983, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8155)
    #dbg_value(ptr %.val.i.i.i, !5921, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8148)
    #dbg_value(ptr poison, !5994, !DIExpression(), !8161)
    #dbg_value(ptr poison, !6006, !DIExpression(), !8163)
    #dbg_value(ptr %.val.i.i.i, !6002, !DIExpression(), !8161)
    #dbg_value(ptr %.val.i.i.i, !6011, !DIExpression(), !8163)
    #dbg_value(ptr %.val.i.i.i, !6015, !DIExpression(), !8165)
    #dbg_value(ptr %.val.i.i.i, !6024, !DIExpression(), !8167)
    #dbg_value(i64 %i.ay, !6003, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8161)
    #dbg_value(i64 %i.ay, !6012, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8163)
    #dbg_value(i64 %i.ay, !6021, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8165)
    #dbg_value(i64 %i.ay, !6027, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8167)
    #dbg_value(i64 %i.av, !6003, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8161)
    #dbg_value(i64 %i.av, !6012, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8163)
    #dbg_value(i64 %i.av, !6021, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8165)
    #dbg_value(i64 %i.av, !6027, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8167)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.av, i64 noundef range(i64 1, 536870913) %i.ay) #19, !dbg !8169, !noalias !8145
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEECscDgBWNIBxoJ_4bulk.exit, !dbg !8170

bb.ac:                                            ; preds = %bb.z
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
    #dbg_value(ptr poison, !5915, !DIExpression(), !8171)
    #dbg_value(ptr poison, !5921, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8173)
    #dbg_value(ptr %.val1.i.i.i, !5921, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8173)
    #dbg_value(ptr poison, !5952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8174)
    #dbg_value(ptr poison, !5964, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8176)
    #dbg_value(ptr poison, !5972, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8178)
    #dbg_value(ptr poison, !5983, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8180)
    #dbg_value(ptr %.val1.i.i.i, !5952, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8174)
    #dbg_value(ptr %.val1.i.i.i, !5964, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8176)
    #dbg_value(ptr %.val1.i.i.i, !5972, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8178)
    #dbg_value(ptr %.val1.i.i.i, !5983, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8180)
  %i.ba = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8, !dbg !8182
  %i.bb = load i64, ptr %i.ba, align 8, !dbg !8182, !range !5989, !invariant.load !42, !noalias !8145 ; 2 uses
    #dbg_value(i64 poison, !5937, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8183)
    #dbg_value(i64 %i.bb, !5937, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8183)
  %i.bc = icmp eq i64 %i.bb, 0, !dbg !8184
  br i1 %i.bc, label %common.resume.i, label %bb.ad, !dbg !8184

end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtCsG258MDvU3F_3std6thread9lifecycleINtB5_9JoinInneruE4joinCscDgBWNIBxoJ_4bulk:bb.a
    #dbg_value(ptr %i.g, !8344, !DIExpression(), !16466)
    #dbg_value(i64 1, !8354, !DIExpression(), !16468)
    #dbg_value(i8 1, !8358, !DIExpression(), !16468)
    #dbg_value(i64 1, !8361, !DIExpression(), !16470)
    #dbg_value(i8 1, !8365, !DIExpression(), !16470)
  %i.t = load ptr, ptr %i.g, align 8, !dbg !16472, !alias.scope !16474, !nonnull !42, !noundef !42
    #dbg_value(ptr %i.t, !8357, !DIExpression(), !16475)
    #dbg_value(ptr %i.t, !8364, !DIExpression(), !16470)
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !16476, !noalias !16474
  %i.v = icmp eq i64 %i.u, 1, !dbg !16477
  br i1 %i.v, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEEECscDgBWNIBxoJ_4bulk.exit, !dbg !16477

bb.k:                                             ; preds = %bb.j
    #dbg_value(i8 2, !6483, !DIExpression(), !16478)
  fence acquire, !dbg !16480
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEE9drop_slowCsar2VadbF9t7_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEEECscDgBWNIBxoJ_4bulk.exit unwind label %bb.m, !dbg !16481

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECscDgBWNIBxoJ_4bulk.exit11: ; preds = %bb.g, %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16482), !dbg !16269
    #dbg_value(ptr %i.g, !8325, !DIExpression(), !16485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16487), !dbg !16490
    #dbg_value(ptr %i.g, !8339, !DIExpression(), !16491)
    #dbg_value(ptr %i.g, !8344, !DIExpression(), !16493)
    #dbg_value(i64 1, !8354, !DIExpression(), !16495)
    #dbg_value(i8 1, !8358, !DIExpression(), !16495)
    #dbg_value(i64 1, !8361, !DIExpression(), !16497)
    #dbg_value(i8 1, !8365, !DIExpression(), !16497)
  %i.w = load ptr, ptr %i.g, align 8, !dbg !16499, !alias.scope !16501, !nonnull !42, !noundef !42
    #dbg_value(ptr %i.w, !8357, !DIExpression(), !16502)
    #dbg_value(ptr %i.w, !8364, !DIExpression(), !16497)
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !dbg !16503, !noalias !16501
  %i.y = icmp eq i64 %i.x, 1, !dbg !16504
  br i1 %i.y, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEEECscDgBWNIBxoJ_4bulk.exit13, !dbg !16504

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECscDgBWNIBxoJ_4bulk.exit11
    #dbg_value(i8 2, !6483, !DIExpression(), !16505)
  fence acquire, !dbg !16507
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEE9drop_slowCsar2VadbF9t7_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #20, !dbg !16508
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEEECscDgBWNIBxoJ_4bulk.exit13, !dbg !16508

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEEECscDgBWNIBxoJ_4bulk.exit13: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECscDgBWNIBxoJ_4bulk.exit11, %bb.l
  %i.z = insertvalue { ptr, ptr } poison, ptr %.sroa.4.0.copyload, 0, !dbg !16509
  %i.aa = insertvalue { ptr, ptr } %i.z, ptr %.sroa.5.0.copyload, 1, !dbg !16509
  ret { ptr, ptr } %i.aa, !dbg !16509

bb.m:                                             ; preds = %bb.n, %bb.k, %bb.c
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !16510
  unreachable, !dbg !16510

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEEECscDgBWNIBxoJ_4bulk.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECscDgBWNIBxoJ_4bulk.exit, %bb.n, %bb.j, %bb.k
  %.pn = phi { ptr, i32 } [ %i.s, %bb.j ], [ %i.s, %bb.k ], [ %i.c, %bb.n ], [ %i.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECscDgBWNIBxoJ_4bulk.exit ]
  resume { ptr, i32 } %.pn, !dbg !16510

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.b, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16269 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16511), !dbg !16269
    #dbg_value(ptr %i.ac, !8325, !DIExpression(), !16514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16516), !dbg !16519
    #dbg_value(ptr %i.ac, !8339, !DIExpression(), !16520)
    #dbg_value(ptr %i.ac, !8344, !DIExpression(), !16522)
    #dbg_value(i64 1, !8354, !DIExpression(), !16524)
    #dbg_value(i8 1, !8358, !DIExpression(), !16524)
    #dbg_value(i64 1, !8361, !DIExpression(), !16526)
    #dbg_value(i8 1, !8365, !DIExpression(), !16526)
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !16528, !alias.scope !16530, !nonnull !42, !noundef !42
    #dbg_value(ptr %i.ad, !8357, !DIExpression(), !16531)
    #dbg_value(ptr %i.ad, !8364, !DIExpression(), !16526)
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !dbg !16532, !noalias !16530
  %i.af = icmp eq i64 %i.ae, 1, !dbg !16533
  br i1 %i.af, label %bb.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEEECscDgBWNIBxoJ_4bulk.exit, !dbg !16533

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECscDgBWNIBxoJ_4bulk.exit
    #dbg_value(i8 2, !6483, !DIExpression(), !16534)
  fence acquire, !dbg !16536
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEE9drop_slowCsar2VadbF9t7_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEEECscDgBWNIBxoJ_4bulk.exit unwind label %bb.m, !dbg !16537
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16538 {
bb.a:
    #dbg_value(ptr %0, !16545, !DIExpression(), !16546)
    #dbg_value(ptr %0, !16547, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16555)
    #dbg_value(ptr %0, !16557, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16565)
    #dbg_value(ptr %0, !16567, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16575)
    #dbg_value(ptr %0, !16577, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16585)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16587
  %i.b = load i32, ptr %i.a, align 8, !dbg !16595, !noundef !42
  switch i32 %i.b, label %bb.b [
    i32 3, label %bb.c
    i32 2, label %bb.i
    i32 0, label %bb.f
  ], !dbg !16595, !prof !16596

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #23, !dbg !16597
  unreachable, !dbg !16597

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !16598, !DIExpression(), !16606)
    #dbg_value(ptr %0, !16608, !DIExpression(), !16615)
    #dbg_value(ptr %0, !16617, !DIExpression(), !16622)
    #dbg_value(ptr %0, !16624, !DIExpression(), !16630)
    #dbg_value(ptr %0, !16632, !DIExpression(), !16640)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsG258MDvU3F_3std9backtrace14BacktraceFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %.sink.split unwind label %bb.d, !dbg !16642

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !16643, !DIExpression(), !16651)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsG258MDvU3F_3std9backtrace14BacktraceFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %common.resume unwind label %bb.e, !dbg !16653

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !16642
  unreachable, !dbg !16642

common.resume:                                    ; preds = %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.e, %bb.g ]
  resume { ptr, i32 } %common.resume.op, !dbg !16546

bb.f:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !16654, !DIExpression(), !16661)
    #dbg_value(ptr %0, !16663, !DIExpression(), !16669)
    #dbg_value(ptr %0, !16624, !DIExpression(), !16672)
    #dbg_value(ptr %0, !16632, !DIExpression(), !16674)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsG258MDvU3F_3std9backtrace14BacktraceFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %.sink.split unwind label %bb.g, !dbg !16676

bb.g:                                             ; preds = %bb.f
  %i.e = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !16643, !DIExpression(), !16677)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsG258MDvU3F_3std9backtrace14BacktraceFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %common.resume unwind label %bb.h, !dbg !16679

bb.h:                                             ; preds = %bb.g
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !16676
  unreachable, !dbg !16676

.sink.split:                                      ; preds = %bb.f, %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsG258MDvU3F_3std9backtrace14BacktraceFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0), !dbg !16546
  br label %bb.i, !dbg !16680

bb.i:                                             ; preds = %.sink.split, %bb.a
  ret void, !dbg !16680
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsG258MDvU3F_3std6thread9lifecycleINtB5_6PacketINtNtCskKLDkoKarTP_4core6result6ResultNtCscDgBWNIBxoJ_4bulk11ClientStatsNtCsbHiBx3jRrxb_6anyhow5ErrorEENtNtNtBZ_3ops4drop4Drop4dropB1y_(ptr noalias nofree noundef align 8 dereferenceable(456) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16681 {
bb.a:
  %i.a = alloca [0 x i8], align 1
    #dbg_value(ptr poison, !16690, !DIExpression(), !16723)
    #dbg_value(ptr poison, !16738, !DIExpression(), !16746)
    #dbg_value(ptr %0, !16683, !DIExpression(), !16748)
    #dbg_declare(ptr poison, !16686, !DIExpression(), !16749)
  %i.b = load i64, ptr %0, align 8, !dbg !16750, !range !6065, !noundef !42
  %i.c = icmp eq i64 %i.b, -2, !dbg !16751
    #dbg_value(i8 poison, !16684, !DIExpression(), !16752)
    #dbg_value(ptr %0, !16736, !DIExpression(), !16753)
    #dbg_value(ptr %0, !16730, !DIExpression(), !16754)
    #dbg_value(ptr %0, !16731, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16755)
    #dbg_value(ptr undef, !16690, !DIExpression(), !16723)
    #dbg_value(ptr %0, !16721, !DIExpression(), !16756)
    #dbg_value(ptr %0, !16757, !DIExpression(), !16766)
    #dbg_declare(ptr poison, !16763, !DIExpression(), !16768)
    #dbg_declare(ptr poison, !16762, !DIExpression(), !16768)
    #dbg_value(ptr %0, !16769, !DIExpression(), !16777)
    #dbg_declare(ptr poison, !16774, !DIExpression(), !16779)
    #dbg_value(ptr poison, !16780, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !16786)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_NtCscDgBWNIBxoJ_4bulk11ClientStatsNtCsbHiBx3jRrxb_6anyhow5ErrorEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEB1p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(448) %0)
          to label %.thread unwind label %.body, !dbg !16788

.body:                                            ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  store i64 -3, ptr %0, align 8, !dbg !16788, !alias.scope !16789
  %i.e = extractvalue { ptr, i32 } %i.d, 0, !dbg !16794
    #dbg_value(ptr undef, !16738, !DIExpression(), !16746)
    #dbg_value(ptr %i.e, !16743, !DIExpression(), !16746)
  %i.f = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.e)
          to label %bb.c unwind label %bb.b, !dbg !16795 ; 2 uses

bb.b:                                             ; preds = %.body
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #18, !dbg !16796
  unreachable, !dbg !16796

.thread:                                          ; preds = %bb.a
  store i64 -3, ptr %0, align 8, !dbg !16788, !alias.scope !16789
    #dbg_value(ptr undef, !16731, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16755)
    #dbg_value(ptr %0, !16731, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16755)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, !dbg !16797

bb.c:                                             ; preds = %.body
  %i.h = extractvalue { ptr, ptr } %i.f, 0, !dbg !16795 ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.f, 1, !dbg !16795 ; 2 uses
    #dbg_value(ptr %i.i, !16731, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16755)
    #dbg_value(ptr %i.h, !16731, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16755)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %.not7 = icmp eq ptr %i.h, null, !dbg !16737
  br i1 %.not7, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, label %bb.d, !dbg !16797

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCscDgBWNIBxoJ_4bulk(ptr noalias nofree noundef nonnull %i.a, ptr noundef nonnull @11, ptr noundef nonnull inttoptr (i64 125 to ptr))
          to label %bb.f unwind label %bb.e, !dbg !16798

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.c, %.thread
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 448, !dbg !16799
  %i.l = load ptr, ptr %i.k, align 8, !dbg !16799, !noundef !42 ; 2 uses
  %.not8 = icmp eq ptr %i.l, null, !dbg !16799
  br i1 %.not8, label %bb.l, label %bb.k, !dbg !16800

bb.e:                                             ; preds = %bb.f, %bb.g, %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk(ptr nonnull %i.h, ptr nonnull %i.i) #17
          to label %bb.j unwind label %bb.i, !dbg !16801

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECscDgBWNIBxoJ_4bulk(ptr %i.j)
          to label %bb.g unwind label %bb.e, !dbg !16802

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCsG258MDvU3F_3std7process5abort() #21
          to label %bb.h unwind label %bb.e, !dbg !16803

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !16805
  unreachable, !dbg !16805

bb.j:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.m, !dbg !16805

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit
    #dbg_value(ptr %0, !16688, !DIExpression(DW_OP_plus_uconst, 448, DW_OP_stack_value), !16806)
    #dbg_value(ptr %0, !16807, !DIExpression(DW_OP_plus_uconst, 448, DW_OP_stack_value), !16810)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !16812
  tail call void @_RNvMNtNtCsG258MDvU3F_3std6thread6scopedNtB2_9ScopeData29decrement_num_running_threads(ptr noundef nonnull align 8 %i.o, i1 noundef zeroext %i.c), !dbg !16813
  br label %bb.l, !dbg !16814

bb.l:                                             ; preds = %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit
  ret void, !dbg !16815
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCshovLROGBtMy_11quinn_proto15transport_error5ErrorNtB6_5Debug3fmtCscDgBWNIBxoJ_4bulk(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !16816 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !16824, !DIExpression(), !16828)
    #dbg_value(ptr %1, !16825, !DIExpression(), !16828)
  %i.b = load ptr, ptr %0, align 8, !dbg !16829, !nonnull !42, !align !6107, !noundef !42 ; 3 uses
    #dbg_value(ptr %i.b, !16830, !DIExpression(), !16838)
    #dbg_value(ptr %1, !16837, !DIExpression(), !16838)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !16840
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16841, !noalias !16842
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !16841
  store ptr %i.d, ptr %i.a, align 8, !dbg !16841, !noalias !16842
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 4, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14), !dbg !16846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16847, !noalias !16842
  ret i1 %i.e, !dbg !16848
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsar2VadbF9t7_5tokio4sync7oneshotINtB5_8ReceiverbENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 !dbg !16849 {
bb.a:
    #dbg_value(ptr %0, !16857, !DIExpression(), !16863)
    #dbg_declare(ptr poison, !16864, !DIExpression(), !16876)
    #dbg_value(ptr %0, !16886, !DIExpression(), !16908)
  %i.a = load ptr, ptr %0, align 8, !dbg !16910, !noundef !42 ; 6 uses
  %.not = icmp eq ptr %i.a, null, !dbg !16910
  br i1 %.not, label %bb.f, label %bb.b, !dbg !16911

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !16858, !DIExpression(), !16912)
    #dbg_value(ptr %0, !16913, !DIExpression(), !16918)
    #dbg_value(ptr %0, !16913, !DIExpression(), !16920)
    #dbg_value(ptr %i.a, !16922, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !16930)
    #dbg_value(i64 4, !16932, !DIExpression(), !16937)
    #dbg_value(i8 2, !16936, !DIExpression(), !16937)
    #dbg_value(i64 4, !16945, !DIExpression(), !16950)
    #dbg_value(i8 2, !16949, !DIExpression(), !16950)
    #dbg_declare(ptr poison, !16952, !DIExpression(), !16956)
    #dbg_declare(ptr poison, !16958, !DIExpression(), !16964)
    #dbg_value(i64 -2, !16971, !DIExpression(), !16976)
    #dbg_value(i8 3, !16975, !DIExpression(), !16976)
    #dbg_value(i64 -2, !16984, !DIExpression(), !16989)
    #dbg_value(i8 3, !16988, !DIExpression(), !16989)
    #dbg_value(ptr %i.a, !16941, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16991)
    #dbg_value(ptr %i.a, !16992, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16995)
    #dbg_value(ptr %i.a, !16997, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !17000)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !17002 ; 2 uses
    #dbg_value(ptr %i.b, !16935, !DIExpression(), !16937)
    #dbg_value(ptr %i.b, !16948, !DIExpression(), !16950)
  %i.c = atomicrmw or ptr %i.b, i64 4 acquire, align 8, !dbg !17003 ; 3 uses
    #dbg_value(i64 %i.c, !16928, !DIExpression(), !17004)
  %i.d = and i64 %i.c, 10, !dbg !17005
  %or.cond.not.i = icmp eq i64 %i.d, 8, !dbg !17005
  br i1 %or.cond.not.i, label %bb.d, label %bb.c, !dbg !17005

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.e = and i64 %i.c, 3, !dbg !17006
  %or.cond3.not.i = icmp eq i64 %i.e, 1, !dbg !17006
  br i1 %or.cond3.not.i, label %bb.e, label %_RNvMs4_NtNtCsar2VadbF9t7_5tokio4sync7oneshotINtB5_5InnerbE5closeCscDgBWNIBxoJ_4bulk.exit, !dbg !17006

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17007
    #dbg_value(ptr %i.f, !16922, !DIExpression(), !16930)
    #dbg_value(ptr %i.f, !16941, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16991)
    #dbg_value(ptr %i.f, !16992, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16995)
    #dbg_value(ptr %i.f, !16997, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !17000)
    #dbg_value(ptr %i.f, !16955, !DIExpression(), !17008)
    #dbg_value(ptr %i.f, !16968, !DIExpression(), !17009)
    #dbg_value(ptr %i.f, !16961, !DIExpression(), !17010)
    #dbg_value(ptr %i.f, !16962, !DIExpression(), !17011)
    #dbg_value(ptr %i.f, !17012, !DIExpression(), !17015)
  %i.g = load ptr, ptr %i.f, align 8, !dbg !17019, !nonnull !42, !align !6107, !noundef !42
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !17019
  %i.i = load ptr, ptr %i.h, align 8, !dbg !17019, !nonnull !42, !noundef !42
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !17020
  %i.k = load ptr, ptr %i.j, align 8, !dbg !17020, !noundef !42
  tail call void %i.i(ptr noundef %i.k), !dbg !17019, !inline_history !17021
  br label %bb.c, !dbg !17022

bb.e:                                             ; preds = %bb.c
    #dbg_value(ptr %i.a, !16980, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !17023)
    #dbg_value(ptr %i.a, !16992, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !17024)
    #dbg_value(ptr %i.a, !16997, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !17026)
    #dbg_value(ptr %i.b, !16974, !DIExpression(), !16976)
    #dbg_value(ptr %i.b, !16987, !DIExpression(), !16989)
  %i.l = atomicrmw and ptr %i.b, i64 -2 acq_rel, align 8, !dbg !17029 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !17030
  tail call void @_RNvMNtNtCsar2VadbF9t7_5tokio4sync7oneshotNtB2_4Task9drop_task(ptr noundef nonnull align 8 %i.m), !dbg !17031
  br label %_RNvMs4_NtNtCsar2VadbF9t7_5tokio4sync7oneshotINtB5_5InnerbE5closeCscDgBWNIBxoJ_4bulk.exit, !dbg !17032

_RNvMs4_NtNtCsar2VadbF9t7_5tokio4sync7oneshotINtB5_5InnerbE5closeCscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.c, %bb.e
    #dbg_value(i64 %i.c, !16861, !DIExpression(), !17033)
    #dbg_value(i64 %i.c, !17034, !DIExpression(), !17037)
  %i.n = and i64 %i.c, 2, !dbg !17039
  %.not8 = icmp eq i64 %i.n, 0, !dbg !17039
  br i1 %.not8, label %bb.f, label %bb.g, !dbg !17040

bb.f:                                             ; preds = %bb.g, %_RNvMs4_NtNtCsar2VadbF9t7_5tokio4sync7oneshotINtB5_5InnerbE5closeCscDgBWNIBxoJ_4bulk.exit, %bb.a
  ret void, !dbg !17041

bb.g:                                             ; preds = %_RNvMs4_NtNtCsar2VadbF9t7_5tokio4sync7oneshotINtB5_5InnerbE5closeCscDgBWNIBxoJ_4bulk.exit
    #dbg_value(ptr %i.a, !16884, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !17042)
    #dbg_value(ptr %i.a, !16875, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !17043)
    #dbg_value(ptr %i.a, !17044, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !17052)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !17054
    #dbg_value(ptr %i.o, !17055, !DIExpression(), !17060)
    #dbg_value(ptr %i.o, !17062, !DIExpression(), !17069)
    #dbg_value(ptr %i.o, !17071, !DIExpression(), !17076)
  store i8 2, ptr %i.o, align 1, !dbg !17078
  br label %bb.f, !dbg !17079
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsar2VadbF9t7_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 !dbg !10884 {
bb.a:
    #dbg_value(ptr %0, !10883, !DIExpression(), !17080)
    #dbg_declare(ptr poison, !10898, !DIExpression(), !17081)
    #dbg_value(ptr %0, !10923, !DIExpression(), !17084)
  %i.a = load ptr, ptr %0, align 8, !dbg !17086, !noundef !42 ; 6 uses
  %.not = icmp eq ptr %i.a, null, !dbg !17086
  br i1 %.not, label %bb.f, label %bb.b, !dbg !17087

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10888, !DIExpression(), !17088)
    #dbg_value(ptr %0, !10950, !DIExpression(), !17089)
    #dbg_value(ptr %0, !10950, !DIExpression(), !17091)
    #dbg_value(ptr %i.a, !10959, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !17093)
    #dbg_value(i64 4, !10969, !DIExpression(), !17095)
    #dbg_value(i8 2, !10975, !DIExpression(), !17095)
    #dbg_value(i64 4, !10988, !DIExpression(), !17098)
    #dbg_value(i8 2, !10992, !DIExpression(), !17098)
    #dbg_declare(ptr poison, !10995, !DIExpression(), !17100)
    #dbg_declare(ptr poison, !11010, !DIExpression(), !17102)
    #dbg_value(i64 -2, !11038, !DIExpression(), !17105)
    #dbg_value(i8 3, !11043, !DIExpression(), !17105)
    #dbg_value(i64 -2, !11053, !DIExpression(), !17108)
    #dbg_value(i8 3, !11057, !DIExpression(), !17108)
    #dbg_value(ptr %i.a, !10984, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !17110)
    #dbg_value(ptr %i.a, !11061, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !17111)
    #dbg_value(ptr %i.a, !11070, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !17113)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !17115 ; 2 uses
    #dbg_value(ptr %i.b, !10973, !DIExpression(), !17095)
    #dbg_value(ptr %i.b, !10991, !DIExpression(), !17098)
  %i.c = atomicrmw or ptr %i.b, i64 4 acquire, align 8, !dbg !17116 ; 3 uses
    #dbg_value(i64 %i.c, !10965, !DIExpression(), !17117)
  %i.d = and i64 %i.c, 10, !dbg !17118
  %or.cond.not.i = icmp eq i64 %i.d, 8, !dbg !17118
  br i1 %or.cond.not.i, label %bb.d, label %bb.c, !dbg !17118

end_hunk_1
