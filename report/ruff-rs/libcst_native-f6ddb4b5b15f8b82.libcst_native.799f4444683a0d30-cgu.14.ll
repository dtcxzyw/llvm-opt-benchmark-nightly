Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/libcst_native-f6ddb4b5b15f8b82.libcst_native.799f4444683a0d30-cgu.14?download=true
inline.NumInlined: 671
inline.NumDeleted: 255
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement13DeflatedSuiteEEEB1p_:bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedStatementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement13DeflatedSuiteEEB1n_.exit

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement28DeflatedSimpleStatementSuiteEBH_.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %common.resume.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement28DeflatedSimpleStatementSuiteEBH_.exit.i.i: ; preds = %bb.e
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement13DeflatedSuiteEEB1n_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement13DeflatedSuiteEEB1n_.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement21DeflatedIndentedBlockEBH_.exit.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement28DeflatedSimpleStatementSuiteEBH_.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEEB1p_(ptr noalias noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !716 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !717)
  %i.b = load i64, ptr %i.a, align 8, !range !718, !alias.scope !717, !noundef !7 ; 3 uses
  %.not.i = icmp eq i64 %i.b, -1
  br i1 %.not.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEB1n_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !719)
  %i.c = xor i64 %i.b, -9223372036854775808
  %i.d = icmp slt i64 %i.b, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 15
  switch i64 %i.e, label %bb.c [
    i64 0, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEB1n_.exit
    i64 1, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEB1n_.exit
    i64 2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEB1n_.exit
    i64 3, label %bb.l
    i64 4, label %bb.n
    i64 5, label %bb.o
    i64 6, label %bb.u
    i64 7, label %bb.x
    i64 8, label %bb.aj
    i64 9, label %bb.ap
    i64 10, label %bb.aw
    i64 11, label %bb.bc
    i64 12, label %bb.bf
    i64 13, label %bb.bi
    i64 14, label %bb.bl
  ]

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression12DeflatedNameEBH_(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.a)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB1f_(ptr noalias noundef align 8 dereferenceable(8) %i.g) #16
          to label %.body.i.i.i unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !720)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !721, !nonnull !7, !noundef !7 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef align 8 dereferenceable(16) %i.i) #18
          to label %bb.g unwind label %bb.f, !noalias !720, !inline_history !19

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 16, i64 noundef 8) #15, !noalias !720, !inline_history !19
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.f, %bb.d
  %.pn.i.i.i = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.j, %bb.f ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedTypeParametersEEB13_(ptr noalias noundef align 8 dereferenceable(40) %i.k) #16
          to label %common.resume.i.i unwind label %bb.k

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 16, i64 noundef 8) #15, !noalias !720, !inline_history !19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !range !14, !alias.scope !722, !noundef !7
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEB1n_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedTypeParametersEBH_.exit.i.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.l)
          to label %common.resume.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume.i.i:                                ; preds = %common.resume.i.i.i.i, %bb.bj, %bb.bg, %bb.bd, %bb.az, %bb.ay, %bb.as, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit.i.i.i, %.body.i5.i.i, %bb.ag, %.body3.i.i.i, %bb.v, %bb.q, %bb.p, %bb.i, %.body.i.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %common.resume.op.i.i.i.i, %common.resume.i.i.i.i ], [ %.pn.i.i.i, %.body.i.i.i ], [ %i.w, %bb.p ], [ %i.af, %bb.v ], [ %.pn.i2.i.i, %.body3.i.i.i ], [ %eh.lpad-body.i.i.i, %.body.i5.i.i ], [ %.pn.i6.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit.i.i.i ], [ %i.bs, %bb.ay ], [ %i.cb, %bb.bd ], [ %i.ce, %bb.bg ], [ %i.o, %bb.i ], [ %i.w, %bb.q ], [ %i.au, %bb.ag ], [ %.pn.i6.i.i, %bb.as ], [ %i.bs, %bb.az ], [ %i.ch, %bb.bj ]
  resume { ptr, i32 } %common.resume.op.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedTypeParametersEBH_.exit.i.i.i.i: ; preds = %bb.h
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.l)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEB1n_.exit

bb.k:                                             ; preds = %.body.i.i.i, %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.l:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !range !16, !alias.scope !723, !noundef !7
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEB1n_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.r), !inline_history !0
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEB1n_.exit

bb.n:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.u)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEB1n_.exit

bb.o:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !724)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.v)
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !range !16, !alias.scope !725, !noundef !7
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %common.resume.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.x)
          to label %common.resume.i.i unwind label %bb.t, !inline_history !0

bb.r:                                             ; preds = %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !range !16, !alias.scope !726, !noundef !7
  %i.ac = icmp eq i64 %i.ab, -1
  br i1 %i.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEB1n_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.aa), !inline_history !0
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEB1n_.exit

bb.t:                                             ; preds = %bb.q
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !727
  unreachable

bb.u:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ae)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14DeflatedImportEBH_.exit.i.i unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ae)
          to label %common.resume.i.i unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14DeflatedImportEBH_.exit.i.i: ; preds = %bb.u
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ae)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEB1n_.exit

bb.x:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  %.val.i.i.i = load i64, ptr %i.ah, align 8, !range !20, !alias.scope !729, !noundef !7
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !729 ; 6 uses
  switch i64 %.val.i.i.i, label %bb.aa [
    i64 2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB13_.exit.i.i.i
    i64 0, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i) ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression12DeflatedNameEBH_(ptr noalias noundef nonnull align 8 dereferenceable(64) %.val2.i.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i.i.i.i unwind label %bb.z, !noalias !729

common.resume.i.i.i.i.i:                          ; preds = %bb.ab, %bb.z
  %.sink.i.i.i.i.i = phi i64 [ 128, %bb.ab ], [ 64, %bb.z ]
  %common.resume.op.i.i.i.i.i = phi { ptr, i32 } [ %i.al, %bb.ab ], [ %i.ak, %bb.z ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i, i64 noundef %.sink.i.i.i.i.i, i64 noundef 8) #15, !noalias !729
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportNamesEBH_(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #16
          to label %.body3.i.i.i unwind label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i.i.i

bb.aa:                                            ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i) ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression17DeflatedAttributeEBH_(ptr noalias noundef nonnull align 8 dereferenceable(128) %.val2.i.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i.i.i.i unwind label %bb.ab, !noalias !729, !inline_history !2

bb.ab:                                            ; preds = %bb.aa
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i.i.i.i: ; preds = %bb.aa, %bb.y
  %.sink1.i.i.i.i.i = phi i64 [ 64, %bb.y ], [ 128, %bb.aa ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i, i64 noundef %.sink1.i.i.i.i.i, i64 noundef 8) #15, !noalias !729
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB13_.exit.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB13_.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i.i.i.i, %bb.x
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.an = load i64, ptr %i.am, align 8, !range !14, !alias.scope !730, !noundef !7
  %i.ao = icmp eq i64 %i.an, -1
  br i1 %i.ao, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportNamesEBH_.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB13_.exit.i.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasEEB1d_.exit.i.i.i.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %.body3.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasEEB1d_.exit.i.i.i.i: ; preds = %bb.ac
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportNamesEBH_.exit.i.i.i unwind label %bb.af

.body3.i.i.i:                                     ; preds = %bb.af, %bb.ad, %common.resume.i.i.i.i.i
  %.pn.i2.i.i = phi { ptr, i32 } [ %common.resume.op.i.i.i.i.i, %common.resume.i.i.i.i.i ], [ %i.as, %bb.af ], [ %i.ap, %bb.ad ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op11DeflatedDotEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.ar) #16
          to label %common.resume.i.i unwind label %bb.ai

bb.af:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasEEB1d_.exit.i.i.i.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body3.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportNamesEBH_.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasEEB1d_.exit.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB13_.exit.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op11DeflatedDotENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedImportFromEBH_.exit.i.i unwind label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportNamesEBH_.exit.i.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op11DeflatedDotENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %common.resume.i.i unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.ai:                                            ; preds = %.body3.i.i.i, %common.resume.i.i.i.i.i
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedImportFromEBH_.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportNamesEBH_.exit.i.i.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op11DeflatedDotENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEB1n_.exit

bb.aj:                                            ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement20DeflatedAssignTargetENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement20DeflatedAssignTargetENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %.body.i5.i.i unwind label %bb.am

bb.al:                                            ; preds = %bb.aj
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement20DeflatedAssignTargetENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14DeflatedAssignEBH_.exit.i.i unwind label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i5.i.i

.body.i5.i.i:                                     ; preds = %bb.an, %bb.ak
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bb, %bb.an ], [ %i.az, %bb.ak ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ax) #16
          to label %common.resume.i.i unwind label %bb.ao

bb.ao:                                            ; preds = %.body.i5.i.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14DeflatedAssignEBH_.exit.i.i: ; preds = %bb.al
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ax)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEB1n_.exit

bb.ap:                                            ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !731)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.bd)
          to label %bb.ar unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit.i.i.i unwind label %bb.av, !inline_history !700

bb.ar:                                            ; preds = %bb.ap
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.bg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit2.i.i.i unwind label %bb.at, !inline_history !700

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit.i.i.i: ; preds = %bb.at, %bb.aq
  %.pn.i6.i.i = phi { ptr, i32 } [ %i.bk, %bb.at ], [ %i.be, %bb.aq ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !range !16, !alias.scope !732, !noundef !7
  %i.bj = icmp eq i64 %i.bi, -1
  br i1 %i.bj, label %common.resume.i.i, label %bb.as

bb.as:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit.i.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.bh)
          to label %common.resume.i.i unwind label %bb.av, !inline_history !0

bb.at:                                            ; preds = %bb.ar
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit2.i.i.i: ; preds = %bb.ar
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !range !16, !alias.scope !733, !noundef !7
  %i.bn = icmp eq i64 %i.bm, -1
  br i1 %i.bn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEB1n_.exit, label %bb.au

bb.au:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit2.i.i.i
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.bl), !inline_history !0
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEB1n_.exit

bb.av:                                            ; preds = %bb.as, %bb.aq
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !734
  unreachable

bb.aw:                                            ; preds = %bb.b
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !735)
  %i.bq = load i64, ptr %i.bp, align 8, !range !16, !alias.scope !736, !noundef !7
  %i.br = icmp eq i64 %i.bq, -1
  br i1 %i.br, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB13_.exit.i8.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.bp)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB13_.exit.i8.i.i unwind label %bb.ay, !inline_history !0

bb.ay:                                            ; preds = %bb.ax
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !range !16, !alias.scope !737, !noundef !7
  %i.bv = icmp eq i64 %i.bu, -1
  br i1 %i.bv, label %common.resume.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.bt)
          to label %common.resume.i.i unwind label %bb.bb

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB13_.exit.i8.i.i: ; preds = %bb.ax, %bb.aw
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !range !16, !alias.scope !738, !noundef !7
  %i.by = icmp eq i64 %i.bx, -1
  br i1 %i.by, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEB1n_.exit, label %bb.ba

bb.ba:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB13_.exit.i8.i.i
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.bw), !inline_history !713
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEB1n_.exit

bb.bb:                                            ; preds = %bb.az
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !739
  unreachable

bb.bc:                                            ; preds = %bb.b
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtBX_6hybrid2id11LazyStateIDEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsarohYtwVpE2_13libcst_native:bb.a
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [24 x i8], ptr %.sroa.05.1.i.i, i64 %i.t
  %i.v = add i64 %.sroa.107.013.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !802)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !803)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !804, !noalias !797, !nonnull !7, !noundef !7
  %i.y = atomicrmw add ptr %i.x, i64 -1 release, align 8, !noalias !805
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsarohYtwVpE2_13libcst_native.exit.i.i

bb.e:                                             ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECsarohYtwVpE2_13libcst_native.exit.i.i
  fence acquire
  tail call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE9drop_slowCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w), !noalias !797
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsarohYtwVpE2_13libcst_native.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsarohYtwVpE2_13libcst_native.exit.i.i: ; preds = %bb.e, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECsarohYtwVpE2_13libcst_native.exit.i.i
  %i.aa = icmp eq i64 %i.v, 0
  br i1 %i.aa, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsarohYtwVpE2_13libcst_native.exit.i, label %bb.d

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsarohYtwVpE2_13libcst_native.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsarohYtwVpE2_13libcst_native.exit.i.i, %bb.b
  %i.ab = mul i64 %i.b, 24
  %i.ac = icmp slt i64 %i.b, 768614336404564650
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = and i64 %i.ab, -16                      ; 2 uses
  %i.ae = add i64 %i.ad, 32                       ; 2 uses
  %i.af = add nsw i64 %i.b, 17
  %i.ag = add i64 %i.af, %i.ae                    ; 4 uses
  %i.ah = icmp uge i64 %i.ag, %i.ae
  %i.ai = icmp ult i64 %i.ag, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ah)
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %i.ag, 0
  br i1 %i.aj, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCscdodAO9FK5_5alloc5alloc6GlobalECsarohYtwVpE2_13libcst_native.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsarohYtwVpE2_13libcst_native.exit.i
  %i.ak = load ptr, ptr %0, align 8, !alias.scope !795, !nonnull !7, !noundef !7
  %i.al = sub i64 -32, %i.ad
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #15, !noalias !795
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCscdodAO9FK5_5alloc5alloc6GlobalECsarohYtwVpE2_13libcst_native.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCscdodAO9FK5_5alloc5alloc6GlobalECsarohYtwVpE2_13libcst_native.exit: ; preds = %bb.a, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsarohYtwVpE2_13libcst_native.exit.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1C_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 !guid !818 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !819)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !819, !noundef !7 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB20_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !820)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !821, !noundef !7 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEEB1X_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !821, !nonnull !7, !noundef !7 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !822
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEEB1p_.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEEB1p_.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEEB1p_.exit.i.i ] ; 2 uses
  %.sroa.86.014.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEEB1p_.exit.i.i ] ; 2 uses
  %.sroa.107.013.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEEB1p_.exit.i.i ]
  %.not12.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEE9next_implKb0_EB1I_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !823
  %i.m = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -512 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEE9next_implKb0_EB1I_.exit.i.i

_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEE9next_implKb0_EB1I_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [32 x i8], ptr %.sroa.05.1.i.i, i64 %i.t
  %i.v = add i64 %.sroa.107.013.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -24 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !range !16, !alias.scope !824, !noalias !821, !noundef !7
  %.not.i.i.i.i = icmp eq i64 %i.x, -1
  br i1 %.not.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEEB1p_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEE9next_implKb0_EB1I_.exit.i.i
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.w), !noalias !821
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEEB1p_.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEEB1p_.exit.i.i: ; preds = %bb.e, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEE9next_implKb0_EB1I_.exit.i.i
  %i.y = icmp eq i64 %i.v, 0
  br i1 %i.y, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEEB1X_.exit.i, label %bb.d

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEEB1X_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEEB1p_.exit.i.i, %bb.b
  %i.z = shl i64 %i.b, 5                          ; 2 uses
  %i.aa = add i64 %i.z, 32                        ; 2 uses
  %i.ab = add i64 %i.b, 17
  %i.ac = add i64 %i.ab, %i.aa                    ; 4 uses
  %i.ad = icmp uge i64 %i.ac, %i.aa
  %i.ae = icmp ult i64 %i.ac, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ad)
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = icmp eq i64 %i.ac, 0
  br i1 %i.af, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB20_.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEEB1X_.exit.i
  %i.ag = load ptr, ptr %0, align 8, !alias.scope !819, !nonnull !7, !noundef !7
  %i.ah = sub nuw nsw i64 -32, %i.z
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 %i.ah
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 16) #15, !noalias !819
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB20_.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB20_.exit: ; preds = %bb.a, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEEB1X_.exit.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1C_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !833 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !834)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !834, !noundef !7 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB20_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !835)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !836, !noundef !7 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEEB1X_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !836, !nonnull !7, !noundef !7 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !837
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEEB1p_.exit.i.i, %bb.c
  %.sroa.06.019.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEEB1p_.exit.i.i ] ; 2 uses
  %.sroa.6.018.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEEB1p_.exit.i.i ] ; 2 uses
  %.sroa.87.017.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEEB1p_.exit.i.i ] ; 2 uses
  %.sroa.108.016.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEEB1p_.exit.i.i ]
  %.not12.i.i.i = icmp eq i16 %.sroa.87.017.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEE9next_implKb0_EB1I_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.018.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.06.019.i.i, %bb.d ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !838
  %i.m = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -512 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEE9next_implKb0_EB1I_.exit.i.i

_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEE9next_implKb0_EB1I_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.018.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.019.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.87.017.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i, i64 %i.t ; 2 uses
  %i.v = add i64 %.sroa.108.016.i.i, -1           ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %.val.i.i = load i64, ptr %i.w, align 8, !range !20, !noalias !836, !noundef !7
  %i.x = getelementptr i8, ptr %i.u, i64 -16
  %.val5.i.i = load ptr, ptr %i.x, align 8, !noalias !836 ; 6 uses
  switch i64 %.val.i.i, label %bb.g [
    i64 2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEEB1p_.exit.i.i
    i64 0, label %bb.e
  ]

bb.e:                                             ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEE9next_implKb0_EB1I_.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i) ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression12DeflatedNameEBH_(ptr noalias noundef nonnull align 8 dereferenceable(64) %.val5.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i.i.i.i unwind label %bb.f, !noalias !836

common.resume.i.i.i.i.i:                          ; preds = %bb.h, %bb.f
  %.sink.i.i.i.i.i = phi i64 [ 128, %bb.h ], [ 64, %bb.f ]
  %common.resume.op.i.i.i.i.i = phi { ptr, i32 } [ %i.z, %bb.h ], [ %i.y, %bb.f ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i, i64 noundef %.sink.i.i.i.i.i, i64 noundef 8) #15, !noalias !836
  resume { ptr, i32 } %common.resume.op.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i.i.i

bb.g:                                             ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEE9next_implKb0_EB1I_.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i) ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression17DeflatedAttributeEBH_(ptr noalias noundef nonnull align 8 dereferenceable(128) %.val5.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i.i.i.i unwind label %bb.h, !noalias !836, !inline_history !2

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i.i.i.i: ; preds = %bb.g, %bb.e
  %.sink1.i.i.i.i.i = phi i64 [ 64, %bb.e ], [ 128, %bb.g ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i, i64 noundef %.sink1.i.i.i.i.i, i64 noundef 8) #15, !noalias !836
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEEB1p_.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEEB1p_.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i.i.i.i, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEE9next_implKb0_EB1I_.exit.i.i
  %i.aa = icmp eq i64 %i.v, 0
  br i1 %i.aa, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEEB1X_.exit.i, label %bb.d

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEEB1X_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEEB1p_.exit.i.i, %bb.b
  %i.ab = shl i64 %i.b, 5                         ; 2 uses
  %i.ac = add i64 %i.ab, 32                       ; 2 uses
  %i.ad = add i64 %i.b, 17
  %i.ae = add i64 %i.ad, %i.ac                    ; 4 uses
  %i.af = icmp uge i64 %i.ae, %i.ac
  %i.ag = icmp ult i64 %i.ae, 9223372036854775793
  tail call void @llvm.assume(i1 %i.af)
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp eq i64 %i.ae, 0
  br i1 %i.ah, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB20_.exit, label %bb.i

bb.i:                                             ; preds = %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEEB1X_.exit.i
  %i.ai = load ptr, ptr %0, align 8, !alias.scope !834, !nonnull !7, !noundef !7
  %i.aj = sub nuw nsw i64 -32, %i.ab
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 %i.aj
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 16) #15, !noalias !834
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB20_.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB20_.exit: ; preds = %bb.a, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEEB1X_.exit.i, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement13DeflatedSuiteEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1C_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 !guid !847 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !848)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !848, !noundef !7 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement13DeflatedSuiteEENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB20_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !849)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !850, !noundef !7 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement13DeflatedSuiteEEEB1X_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !850, !nonnull !7, !noundef !7 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !851
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement13DeflatedSuiteEEE9next_implKb0_EB1I_.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement13DeflatedSuiteEEE9next_implKb0_EB1I_.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement13DeflatedSuiteEEE9next_implKb0_EB1I_.exit.i.i ] ; 2 uses
  %.sroa.86.014.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement13DeflatedSuiteEEE9next_implKb0_EB1I_.exit.i.i ] ; 2 uses
  %.sroa.107.013.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement13DeflatedSuiteEEE9next_implKb0_EB1I_.exit.i.i ]
  %.not12.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement13DeflatedSuiteEEE9next_implKb0_EB1I_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !852
  %i.m = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -1280 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement13DeflatedSuiteEEE9next_implKb0_EB1I_.exit.i.i

_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement13DeflatedSuiteEEE9next_implKb0_EB1I_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [80 x i8], ptr %.sroa.05.1.i.i, i64 %i.t
  %i.v = add i64 %.sroa.107.013.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -80
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement13DeflatedSuiteEEEB1p_(ptr noalias noundef align 8 dereferenceable(80) %i.w), !noalias !850
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement13DeflatedSuiteEEEB1X_.exit.i, label %bb.d

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement13DeflatedSuiteEEEB1X_.exit.i: ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement13DeflatedSuiteEEE9next_implKb0_EB1I_.exit.i.i, %bb.b
  %i.y = mul i64 %i.b, 80                         ; 2 uses
  %i.z = add i64 %i.y, 80                         ; 2 uses
  %i.aa = add i64 %i.b, 17
  %i.ab = add i64 %i.aa, %i.z                     ; 4 uses
  %i.ac = icmp uge i64 %i.ab, %i.z
  %i.ad = icmp ult i64 %i.ab, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ac)
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp eq i64 %i.ab, 0
  br i1 %i.ae, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement13DeflatedSuiteEENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB20_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement13DeflatedSuiteEEEB1X_.exit.i
  %i.af = load ptr, ptr %0, align 8, !alias.scope !848, !nonnull !7, !noundef !7
  %i.ag = sub i64 -80, %i.y
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 16) #15, !noalias !848
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement13DeflatedSuiteEENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB20_.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement13DeflatedSuiteEENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB20_.exit: ; preds = %bb.a, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement13DeflatedSuiteEEEB1X_.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1C_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 !guid !861 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !862)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !862, !noundef !7 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB20_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !863)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !864, !noundef !7 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEEB1X_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !864, !nonnull !7, !noundef !7 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !865
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEE9next_implKb0_EB1I_.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEE9next_implKb0_EB1I_.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEE9next_implKb0_EB1I_.exit.i.i ] ; 2 uses
  %.sroa.86.014.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEE9next_implKb0_EB1I_.exit.i.i ] ; 2 uses
  %.sroa.107.013.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEE9next_implKb0_EB1I_.exit.i.i ]
  %.not12.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEE9next_implKb0_EB1I_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !866
  %i.m = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -2560 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEE9next_implKb0_EB1I_.exit.i.i

_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEE9next_implKb0_EB1I_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [160 x i8], ptr %.sroa.05.1.i.i, i64 %i.t
  %i.v = add i64 %.sroa.107.013.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -160
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEEB1p_(ptr noalias noundef align 8 dereferenceable(160) %i.w), !noalias !864
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEEB1X_.exit.i, label %bb.d

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEEB1X_.exit.i: ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEE9next_implKb0_EB1I_.exit.i.i, %bb.b
  %i.y = mul i64 %i.b, 160                        ; 2 uses
  %i.z = add i64 %i.y, 160                        ; 2 uses
  %i.aa = add i64 %i.b, 17
  %i.ab = add i64 %i.aa, %i.z                     ; 4 uses
  %i.ac = icmp uge i64 %i.ab, %i.z
  %i.ad = icmp ult i64 %i.ab, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ac)
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp eq i64 %i.ab, 0
  br i1 %i.ae, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB20_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEEB1X_.exit.i
  %i.af = load ptr, ptr %0, align 8, !alias.scope !862, !nonnull !7, !noundef !7
  %i.ag = sub i64 -160, %i.y
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 16) #15, !noalias !862
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB20_.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB20_.exit: ; preds = %bb.a, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEEB1X_.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1C_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 !guid !879 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !880)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !880, !noundef !7 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB20_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !881)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !882, !noundef !7 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEEEB1X_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !882, !nonnull !7, !noundef !7 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !883
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEEEB1p_.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEEEB1p_.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEEEB1p_.exit.i.i ] ; 2 uses
  %.sroa.86.014.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEEEB1p_.exit.i.i ] ; 2 uses
  %.sroa.107.013.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEEEB1p_.exit.i.i ]
  %.not12.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEEE9next_implKb0_EB1I_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !884
  %i.m = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -512 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEEE9next_implKb0_EB1I_.exit.i.i

_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEEE9next_implKb0_EB1I_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [32 x i8], ptr %.sroa.05.1.i.i, i64 %i.t
  %i.v = add i64 %.sroa.107.013.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -24 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !range !21, !alias.scope !885, !noalias !882, !noundef !7
  %.not.i.i.i.i = icmp eq i64 %i.x, -1
  br i1 %.not.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEEEB1p_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEEE9next_implKb0_EB1I_.exit.i.i
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.w), !noalias !882
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEEEB1p_.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEEEB1p_.exit.i.i: ; preds = %bb.e, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEEE9next_implKb0_EB1I_.exit.i.i
  %i.y = icmp eq i64 %i.v, 0
  br i1 %i.y, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEEEB1X_.exit.i, label %bb.d

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEEEB1X_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEEEB1p_.exit.i.i, %bb.b
  %i.z = shl i64 %i.b, 5                          ; 2 uses
  %i.aa = add i64 %i.z, 32                        ; 2 uses
  %i.ab = add i64 %i.b, 17
  %i.ac = add i64 %i.ab, %i.aa                    ; 4 uses
  %i.ad = icmp uge i64 %i.ac, %i.aa
  %i.ae = icmp ult i64 %i.ac, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ad)
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = icmp eq i64 %i.ac, 0
  br i1 %i.af, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB20_.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEEEB1X_.exit.i
  %i.ag = load ptr, ptr %0, align 8, !alias.scope !880, !nonnull !7, !noundef !7
  %i.ah = sub nuw nsw i64 -32, %i.z
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 %i.ah
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 16) #15, !noalias !880
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB20_.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB20_.exit: ; preds = %bb.a, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEEEB1X_.exit.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultTNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op14DeflatedCompOpNtNtB1B_10expression18DeflatedExpressionEEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1D_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 !guid !898 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !899, !noundef !7 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultTNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op14DeflatedCompOpNtNtB1Z_10expression18DeflatedExpressionEEENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB21_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !900)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !901, !noundef !7 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCslbOqntPwjz2_11peg_runtime10RuleResultTNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op14DeflatedCompOpNtNtB1W_10expression18DeflatedExpressionEEEEB1Y_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !901, !nonnull !7, !noundef !7 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !902
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultTNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op14DeflatedCompOpNtNtB1o_10expression18DeflatedExpressionEEEEB1q_.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultTNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op14DeflatedCompOpNtNtB1o_10expression18DeflatedExpressionEEEEB1q_.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultTNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op14DeflatedCompOpNtNtB1o_10expression18DeflatedExpressionEEEEB1q_.exit.i.i ] ; 2 uses
  %.sroa.86.014.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultTNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op14DeflatedCompOpNtNtB1o_10expression18DeflatedExpressionEEEEB1q_.exit.i.i ] ; 2 uses
  %.sroa.107.013.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultTNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op14DeflatedCompOpNtNtB1o_10expression18DeflatedExpressionEEEEB1q_.exit.i.i ]
  %.not12.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultTNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op14DeflatedCompOpNtNtB1H_10expression18DeflatedExpressionEEEE9next_implKb0_EB1J_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !903
  %i.m = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -896 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultTNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op14DeflatedCompOpNtNtB1H_10expression18DeflatedExpressionEEEE9next_implKb0_EB1J_.exit.i.i

_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultTNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op14DeflatedCompOpNtNtB1H_10expression18DeflatedExpressionEEEE9next_implKb0_EB1J_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [56 x i8], ptr %.sroa.05.1.i.i, i64 %i.t ; 2 uses
  %i.v = add i64 %.sroa.107.013.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -48
  %i.x = load i64, ptr %i.w, align 8, !range !22, !alias.scope !904, !noalias !901, !noundef !7
  %.not.i.i.i.i = icmp eq i64 %i.x, -1
  br i1 %.not.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultTNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op14DeflatedCompOpNtNtB1o_10expression18DeflatedExpressionEEEEB1q_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultTNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op14DeflatedCompOpNtNtB1H_10expression18DeflatedExpressionEEEE9next_implKb0_EB1J_.exit.i.i
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 -24
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef readonly align 8 dereferenceable(16) %i.y), !noalias !901
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultTNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op14DeflatedCompOpNtNtB1o_10expression18DeflatedExpressionEEEEB1q_.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultTNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op14DeflatedCompOpNtNtB1o_10expression18DeflatedExpressionEEEEB1q_.exit.i.i: ; preds = %bb.e, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTjINtCslbOqntPwjz2_11peg_runtime10RuleResultTNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op14DeflatedCompOpNtNtB1H_10expression18DeflatedExpressionEEEE9next_implKb0_EB1J_.exit.i.i
  %i.z = icmp eq i64 %i.v, 0
  br i1 %i.z, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCslbOqntPwjz2_11peg_runtime10RuleResultTNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op14DeflatedCompOpNtNtB1W_10expression18DeflatedExpressionEEEEB1Y_.exit.i, label %bb.d

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCslbOqntPwjz2_11peg_runtime10RuleResultTNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op14DeflatedCompOpNtNtB1W_10expression18DeflatedExpressionEEEEB1Y_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultTNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op14DeflatedCompOpNtNtB1o_10expression18DeflatedExpressionEEEEB1q_.exit.i.i, %bb.b
  %i.aa = mul i64 %i.b, 56
  %i.ab = icmp slt i64 %i.b, 329406144173384850
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = and i64 %i.aa, -16                      ; 2 uses
  %i.ad = add i64 %i.ac, 64                       ; 2 uses
  %i.ae = add nsw i64 %i.b, 17
  %i.af = add i64 %i.ae, %i.ad                    ; 4 uses
  %i.ag = icmp uge i64 %i.af, %i.ad
  %i.ah = icmp ult i64 %i.af, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ag)
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.af, 0
  br i1 %i.ai, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultTNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op14DeflatedCompOpNtNtB1Z_10expression18DeflatedExpressionEEENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB21_.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCslbOqntPwjz2_11peg_runtime10RuleResultTNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op14DeflatedCompOpNtNtB1W_10expression18DeflatedExpressionEEEEB1Y_.exit.i
  %i.aj = load ptr, ptr %0, align 8, !alias.scope !899, !nonnull !7, !noundef !7
  %i.ak = sub i64 -64, %i.ac
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #15, !noalias !899
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultTNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op14DeflatedCompOpNtNtB1Z_10expression18DeflatedExpressionEEENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB21_.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultTNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op14DeflatedCompOpNtNtB1Z_10expression18DeflatedExpressionEEENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB21_.exit: ; preds = %bb.a, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCslbOqntPwjz2_11peg_runtime10RuleResultTNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op14DeflatedCompOpNtNtB1W_10expression18DeflatedExpressionEEEEB1Y_.exit.i, %bb.f
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtBb_8RawTableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEE14reserve_rehashNCINvNtBd_3map11make_hasherjBW_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0Es_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTOhEE9call_onceB1I_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality !guid !909 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !16, !alias.scope !910, !noundef !7
  %.not.i.i.i = icmp eq i64 %i.b, -1
  br i1 %.not.i.i.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0Es_0B1F_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.a)
  br label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0Es_0B1F_.exit

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0Es_0B1F_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtBb_8RawTableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEE14reserve_rehashNCINvNtBd_3map11make_hasherjBW_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0Es_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTOhEE9call_onceB1I_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality !guid !911 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load i64, ptr %i.a, align 8, !range !20, !noundef !7
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.b, align 8            ; 6 uses
  switch i64 %.val, label %bb.d [
    i64 2, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0Es_0B1F_.exit
    i64 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression12DeflatedNameEBH_(ptr noalias noundef nonnull align 8 dereferenceable(64) %.val2)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i.i.i unwind label %bb.c

common.resume.i.i.i.i:                            ; preds = %bb.e, %bb.c
  %.sink.i.i.i.i = phi i64 [ 128, %bb.e ], [ 64, %bb.c ]
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.c, %bb.c ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %.sink.i.i.i.i, i64 noundef 8) #15
  resume { ptr, i32 } %common.resume.op.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression17DeflatedAttributeEBH_(ptr noalias noundef nonnull align 8 dereferenceable(128) %.val2)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i.i.i unwind label %bb.e, !inline_history !2

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i.i.i: ; preds = %bb.d, %bb.b
  %.sink1.i.i.i.i = phi i64 [ 64, %bb.b ], [ 128, %bb.d ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %.sink1.i.i.i.i, i64 noundef 8) #15
  br label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0Es_0B1F_.exit

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0Es_0B1F_.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtBb_8RawTableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement13DeflatedSuiteEEE14reserve_rehashNCINvNtBd_3map11make_hasherjBW_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0Es_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTOhEE9call_onceB1I_(ptr noundef nonnull %0) unnamed_addr #3 personality ptr @rust_eh_personality !guid !912 {
bb.a:
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement13DeflatedSuiteEEEB1p_(ptr noalias noundef nonnull align 8 dereferenceable(80) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtBb_8RawTableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEE14reserve_rehashNCINvNtBd_3map11make_hasherjBW_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0Es_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTOhEE9call_onceB1I_(ptr noundef nonnull %0) unnamed_addr #3 personality ptr @rust_eh_personality !guid !913 {
bb.a:
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEEB1p_(ptr noalias noundef nonnull align 8 dereferenceable(160) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtBb_8RawTableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEEE14reserve_rehashNCINvNtBd_3map11make_hasherjBW_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0Es_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTOhEE9call_onceB1I_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality !guid !918 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !21, !alias.scope !919, !noundef !7
  %.not.i.i.i = icmp eq i64 %i.b, -1
  br i1 %.not.i.i.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0Es_0B1F_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.a)
  br label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0Es_0B1F_.exit

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0Es_0B1F_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtBb_8RawTableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultTNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op14DeflatedCompOpNtNtB1H_10expression18DeflatedExpressionEEEE14reserve_rehashNCINvNtBd_3map11make_hasherjBW_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0Es_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTOhEE9call_onceB1J_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality !guid !924 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !22, !alias.scope !925, !noundef !7
  %.not.i.i.i = icmp eq i64 %i.b, -1
  br i1 %.not.i.i.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultTNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op14DeflatedCompOpNtNtB1E_10expression18DeflatedExpressionEEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0Es_0B1G_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef readonly align 8 dereferenceable(16) %i.c)
  br label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultTNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op14DeflatedCompOpNtNtB1E_10expression18DeflatedExpressionEEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0Es_0B1G_.exit

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTjINtCslbOqntPwjz2_11peg_runtime10RuleResultTNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op14DeflatedCompOpNtNtB1E_10expression18DeflatedExpressionEEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0Es_0B1G_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #8

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression11DeflatedArgENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression13DeflatedParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression14DeflatedCompIfENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression17DeflatedLeftParenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedRightParenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression19DeflatedDictElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression24DeflatedComparisonTargetENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression24DeflatedSubscriptElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression30DeflatedFormattedStringContentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression30DeflatedTemplatedStringContentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op11DeflatedDotENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement16DeflatedNameItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedStatementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement20DeflatedAssignTargetENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression11DeflatedArgENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression13DeflatedParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression14DeflatedCompIfENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression17DeflatedLeftParenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedRightParenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression19DeflatedDictElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression24DeflatedComparisonTargetENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression24DeflatedSubscriptElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression30DeflatedFormattedStringContentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression30DeflatedTemplatedStringContentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op11DeflatedDotENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement16DeflatedNameItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedStatementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement20DeflatedAssignTargetENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRjECsarohYtwVpE2_13libcst_native(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1
end_hunk_1
