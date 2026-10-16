Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/find_msvc_tools-762109e8b810eaf1.find_msvc_tools.2d7dcf19d5894587-cgu.0?download=true
inline.NumInlined: 322
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtBM_10find_tools18find_tool_with_envs_0EBM_:bb.a

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %1)
          to label %.body.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolEBF_.exit.i unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.g, %bb.e
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.f, %bb.g ], [ %i.d, %bb.e ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringB19_EEECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.g) #35
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %.body.i.i
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.i:                                             ; preds = %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolEBF_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringB19_EEECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.i)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolEEB11_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolEEB11_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolEBF_.exit.i, %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtNtBM_10find_tools5impl_21find_msvc_environments0_0EBM_(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) %0, ptr align 8 %1, ptr nofree readonly align 8 captures(none) %2, ptr nofree readonly align 8 captures(none) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 12 uses
  %i.g = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.g, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolEEB11_.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %2, align 8
  %i.h = getelementptr i8, ptr %2, i64 8
  %.val2 = load ptr, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %.val2, i64 24
  %.val2.val = load ptr, ptr %i.i, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void %.val2.val(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr %.val, ptr nonnull @11, i64 4) #32
          to label %.noexc unwind label %bb.p, !inline_history !18

.noexc:                                           ; preds = %bb.c
  %i.j = load i64, ptr %i.f, align 8, !noalias !23 ; 3 uses
  %.not.i.i = icmp eq i64 %i.j, -2
  br i1 %.not.i.i, label %.thread.i, label %bb.e

bb.d:                                             ; preds = %bb.g, %_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtB4_9try_trait3Try6branchCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i.i.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvEEB11_(ptr nonnull align 8 %i.f) #35
          to label %.body unwind label %bb.o, !noalias !23

bb.e:                                             ; preds = %.noexc
  %.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load ptr, ptr %.sroa.gep.i, align 8, !noalias !23 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.l, null
  br i1 %.not.i2.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = icmp eq i64 %i.j, -1
  %.pn6.idx.i.i.i.i.i = select i1 %i.m, i64 16, i64 0
  %.pn6.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 %.pn6.idx.i.i.i.i.i
  %i.n = load ptr, ptr %3, align 8, !noalias !23
  %.sroa.gep1.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.pn4.i.i.i.i.i = load i64, ptr %.sroa.gep1.i, align 8, !noalias !23
  call void @llvm.experimental.noalias.scope.decl(metadata !24)
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !26
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %.pn6.i.i.i.i.i, ptr %i.o, align 8, !noalias !27
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.pn4.i.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !27
  %.sroa.32.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i8 0, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 8, !noalias !27
  store ptr %i.n, ptr %i.e, align 8, !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !27
  store ptr %i.e, ptr %i.d, align 8, !noalias !27
  br label %_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtB4_9try_trait3Try6branchCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i.i.i.i

_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtB4_9try_trait3Try6branchCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i.i.i.i: ; preds = %.noexc3.i, %bb.f
  invoke void @_RNvXs6_NtCsaL1QbXo9JQH_3std3envNtB5_10SplitPathsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.o)
          to label %.noexc.i unwind label %bb.d, !noalias !23

.noexc.i:                                         ; preds = %_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtB4_9try_trait3Try6branchCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i.i.i.i
  %i.p = load i64, ptr %i.c, align 8, !noalias !27
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.p, -1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !27
  invoke void @_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldNtNtCsaL1QbXo9JQH_3std4path7PathBufBZ_uINtNtNtBa_3ops12control_flow11ControlFlowBZ_ENCNCNvNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools5impl_21find_msvc_environment00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkBZ_NCB2n_s_0E0E0B2v_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.a) #32
          to label %.noexc3.i unwind label %bb.d, !noalias !23

.noexc3.i:                                        ; preds = %bb.g
  %i.q = load i64, ptr %i.b, align 8, !noalias !27 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.q, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtB4_9try_trait3Try6branchCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.noexc3.i
  %.sroa.4.0..sroa_idx3.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx3.i.i.i.i.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !27
  store i64 %i.q, ptr %0, align 8, !alias.scope !27
  %.sroa.2.0..sroa_idx.i1.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.2.0..sroa_idx.i1.i.i.i.i, align 8, !alias.scope !27
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !27
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !27
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !27
  br label %_RNvYNCNvNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools5impl_21find_msvc_environment0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEE9call_onceBa_.exit.i.i

bb.i:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !27
  store i64 -1, ptr %0, align 8, !alias.scope !27
  br label %_RNvYNCNvNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools5impl_21find_msvc_environment0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEE9call_onceBa_.exit.i.i

_RNvYNCNvNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools5impl_21find_msvc_environment0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEE9call_onceBa_.exit.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !26
  %.pre.i = load i64, ptr %i.f, align 8, !noalias !23
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE8and_thenNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolNCNvNtNtB1C_10find_tools5impl_21find_msvc_environment0EB1C_.exit.i

.thread.i:                                        ; preds = %bb.e, %.noexc
  store i64 -1, ptr %0, align 8, !alias.scope !23
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE8and_thenNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolNCNvNtNtB1C_10find_tools5impl_21find_msvc_environment0EB1C_.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE8and_thenNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolNCNvNtNtB1C_10find_tools5impl_21find_msvc_environment0EB1C_.exit.i: ; preds = %.thread.i, %_RNvYNCNvNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools5impl_21find_msvc_environment0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEE9call_onceBa_.exit.i.i
  %i.r = phi i64 [ %i.j, %.thread.i ], [ %.pre.i, %_RNvYNCNvNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools5impl_21find_msvc_environment0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEE9call_onceBa_.exit.i.i ]
  switch i64 %i.r, label %bb.j [
    i64 -2, label %bb.q
    i64 -1, label %bb.m
  ]

bb.j:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE8and_thenNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolNCNvNtNtB1C_10find_tools5impl_21find_msvc_environment0EB1C_.exit.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i unwind label %bb.k, !noalias !23

bb.k:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.f)
          to label %.body unwind label %bb.l, !noalias !23

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !23
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.f)
          to label %bb.q unwind label %bb.p

bb.m:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE8and_thenNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolNCNvNtNtB1C_10find_tools5impl_21find_msvc_environment0EB1C_.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !noalias !23
  %4 = atomicrmw add ptr %i.v, i64 -1 release, align 8, !noalias !23
  %i.w = icmp eq i64 %4, 1
  br i1 %i.w, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE9drop_slowCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull readonly align 8 %i.u) #36, !noalias !23
  br label %bb.q

bb.o:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !23
  unreachable

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i, %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.k, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.y, %bb.p ], [ %i.s, %bb.k ], [ %i.k, %bb.d ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolEEB11_(ptr nonnull align 8 %1) #35
          to label %common.resume unwind label %bb.w

bb.q:                                             ; preds = %bb.n, %bb.m, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE8and_thenNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolNCNvNtNtB1C_10find_tools5impl_21find_msvc_environment0EB1C_.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.z = load i64, ptr %1, align 8
  %i.aa = icmp eq i64 %i.z, -1
  br i1 %i.aa, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolEEB11_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i4 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %1)
          to label %.body.i.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i4: ; preds = %bb.r
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolEBF_.exit.i unwind label %bb.u

bb.u:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i4
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.u, %bb.s
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ad, %bb.u ], [ %i.ab, %bb.s ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringB19_EEECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.ae) #35
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %.body.i.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %.body, %.body.i.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolEBF_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i4
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringB19_EEECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.ag)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolEEB11_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolEEB11_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolEBF_.exit.i, %bb.q, %bb.b
  ret void

bb.w:                                             ; preds = %.body
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtNtBM_10find_tools5impl_21find_msvc_environments_0EBM_(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) %0, ptr align 8 %1, ptr nofree readonly align 8 captures(none) %2, ptr nofree readonly align 8 captures(none) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolEEB11_.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %2, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.g = load i64, ptr %3, align 8, !noalias !32
  %i.h = icmp eq i64 %i.g, -1
  %i.i = getelementptr i8, ptr %3, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !32
  %.pn6.idx.i.i.i = select i1 %i.h, i64 16, i64 0
  %.pn6.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.pn6.idx.i.i.i
  %.pn4.in.i.i.i = getelementptr i8, ptr %3, i64 16
  %.pn4.i.i.i = load i64, ptr %.pn4.in.i.i.i, align 8, !noalias !32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !32
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %.pn6.i.i.i, ptr %i.k, align 8, !noalias !34
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.pn4.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !34
  %.sroa.32.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i8 0, ptr %.sroa.32.0..sroa_idx.i.i, align 8, !noalias !34
  store ptr %.val, ptr %i.e, align 8, !noalias !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !34
  store ptr %i.e, ptr %i.d, align 8, !noalias !34
  br label %_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtB4_9try_trait3Try6branchCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i.i

_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtB4_9try_trait3Try6branchCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i.i: ; preds = %.noexc2, %bb.c
  invoke void @_RNvXs6_NtCsaL1QbXo9JQH_3std3envNtB5_10SplitPathsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.k)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtB4_9try_trait3Try6branchCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i.i
  %i.l = load i64, ptr %i.c, align 8, !noalias !34
  %.not.i.i.i.i.i = icmp eq i64 %i.l, -1
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !34
  invoke void @_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldNtNtCsaL1QbXo9JQH_3std4path7PathBufBZ_uINtNtNtBa_3ops12control_flow11ControlFlowBZ_ENCNCNvNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools5impl_21find_msvc_environment00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkBZ_NCB2n_s_0E0E0B2v_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.a) #32
          to label %.noexc2 unwind label %bb.g

.noexc2:                                          ; preds = %bb.d
  %i.m = load i64, ptr %i.b, align 8, !noalias !34 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.m, -1
  br i1 %.not.i.i.i.i.i.i, label %_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtB4_9try_trait3Try6branchCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.noexc2
  %.sroa.4.0..sroa_idx3.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx3.i.i.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !34
  store i64 %i.m, ptr %0, align 8, !alias.scope !34
  %.sroa.2.0..sroa_idx.i1.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.2.0..sroa_idx.i1.i.i, align 8, !alias.scope !34
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !alias.scope !34
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !34
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !34
  br label %bb.h

bb.f:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !34
  store i64 -1, ptr %0, align 8, !alias.scope !34
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtB4_9try_trait3Try6branchCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolEEB11_(ptr nonnull align 8 %1) #35
          to label %common.resume unwind label %bb.n

bb.h:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !32
  %i.o = load i64, ptr %1, align 8
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolEEB11_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %1)
          to label %.body.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
begin_hunk_1_@_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3U9i7nQCKwt_15find_msvc_tools:bb.a
  %i.o = shl nuw i64 1, %i.n
  %i.p = and i64 %i.o, %i.f
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.n, %._crit_edge
  %storemerge = phi i64 [ 0, %._crit_edge ], [ 1, %bb.n ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.q = add i64 %i.j, %5                         ; 3 uses
  store i64 %i.q, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.r = load i64, ptr %1, align 8                ; 5 uses
  br i1 %6, label %bb.h, label %bb.g

.sink.split:                                      ; preds = %bb.d, %bb.s, %bb.r
  %.sink = phi i64 [ 0, %bb.s ], [ %i.am, %bb.r ], [ 0, %bb.d ]
  %.ph = phi i64 [ %i.at, %bb.s ], [ %i.al, %bb.r ], [ %i.q, %bb.d ]
  store i64 %.sink, ptr %i.g, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.s, %bb.q, %bb.d
  %i.s = phi i64 [ %i.at, %bb.s ], [ %i.al, %bb.q ], [ %i.q, %bb.d ], [ %.ph, %.sink.split ] ; 2 uses
  %i.t = add i64 %i.b, %i.s                       ; 2 uses
  %i.u = icmp ult i64 %i.t, %3
  br i1 %i.u, label %bb.b, label %._crit_edge

bb.g:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.g, align 8
  %.sroa.0.0.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %i.r)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.sroa.speculated.i, %bb.g ], [ %i.r, %bb.e ] ; 3 uses
  %i.w = getelementptr i8, ptr %2, i64 %i.j       ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.01.0, i64 %5)
  %exitcond.not44.not = icmp ult i64 %.sroa.01.0, %5
  br i1 %exitcond.not44.not, label %.lr.ph47, label %._crit_edge48

bb.i:                                             ; preds = %.lr.ph47
  %i.x = add i64 %.sroa.02.045, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %umax
  br i1 %exitcond.not, label %._crit_edge48, label %.lr.ph47

._crit_edge48:                                    ; preds = %bb.i, %bb.h
  br i1 %6, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge48
  %i.y = load i64, ptr %i.g, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge48, %bb.j
  %.sroa.05.0 = phi i64 [ %i.y, %bb.j ], [ 0, %._crit_edge48 ] ; 2 uses
  %i.z = icmp ult i64 %.sroa.05.0, %i.r
  br i1 %i.z, label %.lr.ph51, label %._crit_edge52

bb.l:                                             ; preds = %bb.o
  %i.aa = icmp ult i64 %.sroa.05.0, %i.ac
  br i1 %i.aa, label %.lr.ph51, label %._crit_edge52

._crit_edge52:                                    ; preds = %bb.k, %bb.l
  %i.ab = add i64 %i.j, %5                        ; 2 uses
  store i64 %i.ab, ptr %i.a, align 8
  br i1 %6, label %bb.n, label %bb.m

.lr.ph51:                                         ; preds = %bb.k, %bb.l
  %.sroa.2.049 = phi i64 [ %i.ac, %bb.l ], [ %i.r, %bb.k ]
  %i.ac = add i64 %.sroa.2.049, -1                ; 6 uses
  %i.ad = icmp ult i64 %i.ac, %5
  br i1 %i.ad, label %bb.o, label %bb.p

bb.m:                                             ; preds = %._crit_edge52
  store i64 0, ptr %i.g, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge52
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.ae, align 8, !alias.scope !55
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ab, ptr %i.af, align 8, !alias.scope !55
  br label %bb.c

bb.o:                                             ; preds = %.lr.ph51
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 %i.ac
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = getelementptr i8, ptr %i.w, i64 %i.ac
  %i.aj = load i8, ptr %i.ai, align 1
  %.not17 = icmp eq i8 %i.ah, %i.aj
  br i1 %.not17, label %bb.l, label %bb.q

bb.p:                                             ; preds = %.lr.ph51
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %i.ac, i64 %5, ptr nonnull align 8 @3) #33
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ak = load i64, ptr %i.h, align 8             ; 2 uses
  %i.al = add i64 %i.ak, %i.j                     ; 3 uses
  store i64 %i.al, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = sub i64 %5, %i.ak
  br label %.sink.split

.lr.ph47:                                         ; preds = %bb.h, %bb.i
  %.sroa.02.045 = phi i64 [ %i.x, %bb.i ], [ %.sroa.01.0, %bb.h ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.02.045
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = getelementptr i8, ptr %i.w, i64 %.sroa.02.045
  %i.aq = load i8, ptr %i.ap, align 1
  %.not18 = icmp eq i8 %i.ao, %i.aq
  br i1 %.not18, label %bb.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph47
  %i.ar = add i64 %i.j, 1
  %i.as = add i64 %i.ar, %.sroa.02.045
  %i.at = sub i64 %i.as, %i.r                     ; 3 uses
  store i64 %i.at, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB23_4SyncEL_ECs3U9i7nQCKwt_15find_msvc_tools(ptr %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !invariant.load !5 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.a(ptr %0) #32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxSmEEECs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSmEECs3U9i7nQCKwt_15find_msvc_tools.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSmEECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSmEECs3U9i7nQCKwt_15find_msvc_tools.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i: ; preds = %bb.b
  %i.f = shl nuw nsw i64 %i.d, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr nonnull %i.a, i64 %i.f, i64 4) #38
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSmEECs3U9i7nQCKwt_15find_msvc_tools.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvEEB11_(ptr align 8 %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8
  switch i64 %i.a, label %bb.b [
    i64 -2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvEBF_.exit
    i64 -1, label %bb.e
  ]

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvEBF_.exit: ; preds = %bb.a, %bb.f, %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvEBF_.exit

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %1 = atomicrmw add ptr %i.e, i64 -1 release, align 8
  %i.f = icmp eq i64 %1, 1
  br i1 %i.f, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvEBF_.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE9drop_slowCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull readonly align 8 %i.d) #36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvEBF_.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolEEB11_(ptr align 8 %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolEBF_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0)
          to label %.body.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolEBF_.exit unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.c, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringB19_EEECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.f) #35
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %.body.i
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.h:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringB19_EEECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.h)
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringEECs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs3U9i7nQCKwt_15find_msvc_tools.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i1.i, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs3U9i7nQCKwt_15find_msvc_tools.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i1.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i1.i: ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr %i.f, i64 %i.d, i64 1) #38
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs3U9i7nQCKwt_15find_msvc_tools.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0)
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix6common5StdioEECs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %cond = icmp eq i32 %i.a, 3
  br i1 %cond, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix6common5StdioECs3U9i7nQCKwt_15find_msvc_tools.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix6common5StdioECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.a, %bb.b
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val.i.i.i = load i32, ptr %i.b, align 4
  %i.c = tail call i32 @close(i32 %.val.i.i.i) #38 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix6common5StdioECs3U9i7nQCKwt_15find_msvc_tools.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std3env8VarErrorECs3U9i7nQCKwt_15find_msvc_tools.exit.sink.split unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.c)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.h, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.c, align 8
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std3env8VarErrorECs3U9i7nQCKwt_15find_msvc_tools.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std3env8VarErrorECs3U9i7nQCKwt_15find_msvc_tools.exit.sink.split unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.c)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std3env8VarErrorECs3U9i7nQCKwt_15find_msvc_tools.exit.sink.split: ; preds = %bb.f, %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.c)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std3env8VarErrorECs3U9i7nQCKwt_15find_msvc_tools.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std3env8VarErrorECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std3env8VarErrorECs3U9i7nQCKwt_15find_msvc_tools.exit.sink.split, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3U9i7nQCKwt_15find_msvc_tools.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.c, align 8         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = ptrtoint ptr %.val.i.i to i64            ; 2 uses
  %i.e = and i64 %i.d, 3
  switch i64 %i.e, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3U9i7nQCKwt_15find_msvc_tools.exit
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3U9i7nQCKwt_15find_msvc_tools.exit
    i64 1, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = icmp uge ptr %.val.i.i, inttoptr (i64 188978561024 to ptr)
  %i.g = and i64 %i.d, 1095216660480
  %.not3.i.i.i.i = icmp eq i64 %i.g, 1095216660480
  %.not.i.i.i.i = or i1 %i.f, %.not3.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3U9i7nQCKwt_15find_msvc_tools.exit

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RNvNvNtCs3oUPovFnLWP_4core4hint21unreachable_unchecked18precondition_checkCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 @9) #39
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %.val.i.i, i64 -1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8
  store i8 3, ptr %i.a, align 8
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr nonnull align 8 %i.i)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3U9i7nQCKwt_15find_msvc_tools.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.c, %bb.c, %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2S_4SyncEL_EEECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2D_4SyncEL_EECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %i.b, i64 %i.d)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutuEp6OutputINtNtB15_6result6ResultuNtNtNtB15_2io5error5ErrorENtNtB15_6marker4SendNtB2H_4SyncEL_EENtNtB13_4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0, i64 8, i64 16)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2Z_4SyncEL_EEECs3U9i7nQCKwt_15find_msvc_tools.exit unwind label %bb.c

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutuEp6OutputINtNtB15_6result6ResultuNtNtNtB15_2io5error5ErrorENtNtB15_6marker4SendNtB2H_4SyncEL_EENtNtB13_4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.a
  tail call void @_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0, i64 8, i64 16)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2Z_4SyncEL_EEECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecPaEECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslmXY8IYACQt_5gimli(ptr align 8 %0, i64 8, i64 8)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringB19_EEECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBG_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBG_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.0.i.i1
  %i.h = add i64 %.sroa.0.0.i.i1, 1               ; 4 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBC_EECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.1.i.i2
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBC_EECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %i.m) #35
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  invoke void @_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslmXY8IYACQt_5gimli(ptr align 8 %0, i64 8, i64 48)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringB1g_EEECs3U9i7nQCKwt_15find_msvc_tools.exit unwind label %bb.f

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBG_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.b, %bb.a
  tail call void @_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslmXY8IYACQt_5gimli(ptr align 8 %0, i64 8, i64 48)
  ret void

bb.f:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringB1g_EEECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr align 8 %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr align 8 %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs3U9i7nQCKwt_15find_msvc_tools.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr align 8 %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEECs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %1 = atomicrmw add ptr %i.a, i64 -1 release, align 8
  %i.b = icmp eq i64 %1, 1
  br i1 %i.b, label %bb.b, label %_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE9drop_slowCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull readonly align 8 %0) #36
  br label %_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools.exit

_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrRNtNtBG_5alloc6GlobalEECs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.c, label %_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrRNtNtB7_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %1 = atomicrmw add ptr %i.d, i64 -1 release, align 8
  %i.e = icmp eq i64 %1, 1
  br i1 %i.e, label %bb.c, label %_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrRNtNtB7_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  %i.f = load i64, ptr %i.b, align 8
  %i.g = add i64 %i.f, 23
  %i.h = and i64 %i.g, -8                         ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrRNtNtB7_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr %i.j, i64 %i.h, i64 8) #38
  br label %_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrRNtNtB7_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools.exit

_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrRNtNtB7_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2C_4SyncEL_EECs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !5 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  invoke void %i.c(ptr %i.d)
          to label %._crit_edge unwind label %bb.d

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.e = phi ptr [ %.pre, %._crit_edge ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !invariant.load !5 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutuEp6OutputINtNtBP_6result6ResultuNtNtNtBP_2io5error5ErrorENtNtBP_6marker4SendNtB2p_4SyncEL_ENtNtBN_4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load i64, ptr %i.i, align 8, !invariant.load !5
  %i.k = load ptr, ptr %0, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr %i.k, i64 %i.g, i64 %i.j) #38
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutuEp6OutputINtNtBP_6result6ResultuNtNtNtBP_2io5error5ErrorENtNtBP_6marker4SendNtB2p_4SyncEL_ENtNtBN_4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutuEp6OutputINtNtBP_6result6ResultuNtNtNtBP_2io5error5ErrorENtNtBP_6marker4SendNtB2p_4SyncEL_ENtNtBN_4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.c, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8, !invariant.load !5 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutuEp6OutputINtNtBP_6result6ResultuNtNtNtBP_2io5error5ErrorENtNtBP_6marker4SendNtB2p_4SyncEL_ENtNtBN_4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools.exit2, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit.i1

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit.i1: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = load i64, ptr %i.q, align 8, !invariant.load !5
  %i.s = load ptr, ptr %0, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr %i.s, i64 %i.o, i64 %i.r) #38
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutuEp6OutputINtNtBP_6result6ResultuNtNtNtBP_2io5error5ErrorENtNtBP_6marker4SendNtB2p_4SyncEL_ENtNtBN_4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools.exit2

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutuEp6OutputINtNtBP_6result6ResultuNtNtNtBP_2io5error5ErrorENtNtBP_6marker4SendNtB2p_4SyncEL_ENtNtBN_4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools.exit2: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit.i1, %bb.d
  resume { ptr, i32 } %i.l
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxShEECs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxShENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit.i: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr %i.d, i64 %i.b, i64 1) #38
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxShENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxShENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSmEECs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit.i: ; preds = %bb.a
  %i.d = shl nuw nsw i64 %i.b, 2
  %i.e = load ptr, ptr %0, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr %i.e, i64 %i.d, i64 4) #38
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2Z_4SyncEL_EEECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %0) unnamed_addr #4 {
bb.a:
  tail call void @_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslmXY8IYACQt_5gimli(ptr align 8 %0, i64 8, i64 16)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecPaEECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %0) unnamed_addr #4 {
bb.a:
  tail call void @_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslmXY8IYACQt_5gimli(ptr align 8 %0, i64 8, i64 8)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringB1g_EEECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %0) unnamed_addr #4 {
bb.a:
  tail call void @_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslmXY8IYACQt_5gimli(ptr align 8 %0, i64 8, i64 48)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %0) unnamed_addr #4 {
bb.a:
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_2io5error9ErrorDataNtBE_11CustomOwnerEECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %0) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 8
  %switch = icmp ult i8 %i.a, 3
  br i1 %switch, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr nonnull align 8 %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8BTreeMapNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB1A_EEECs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  tail call void @_RNvXNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB14_EENtNtNtB1R_3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB1A_EEECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsz_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB17_EE10dying_nextCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr align 8 %0)
  %i.c = load ptr, ptr %i.b, align 8
  %.not1.i = icmp eq ptr %i.c, null
  br i1 %.not1.i, label %_RNvXsy_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB17_EENtNtNtB1U_3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools.exit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  call void @_RNvMsz_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB17_EE10dying_nextCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr align 8 %0)
  %i.d = load ptr, ptr %i.b, align 8
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_RNvXsy_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB17_EENtNtNtB1U_3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  invoke void @_RNvMsT_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1E_ENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.b)
          to label %bb.b unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  store ptr %0, ptr %i.a, align 8
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXsy_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB2s_ENtNtBQ_5alloc6GlobalEECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.a) #35
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvXsy_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB17_EENtNtNtB1U_3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvMsT_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEEECs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RNvXNvMsT_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB8_6HandleINtB8_7NodeRefNtNtB8_6marker5DyingpppENtB1p_2KVE12drop_key_valINtB2_7DropperINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEENtNtNtB2s_3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.a)
  br label %_RNvXNvMsT_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB8_6HandleINtB8_7NodeRefNtNtB8_6marker5DyingpppENtB1p_2KVE12drop_key_valINtB2_7DropperINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEENtNtNtB2s_3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools.exit

_RNvXNvMsT_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB8_6HandleINtB8_7NodeRefNtNtB8_6marker5DyingpppENtB1p_2KVE12drop_key_valINtB2_7DropperINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEENtNtNtB2s_3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXsy_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB2s_ENtNtBQ_5alloc6GlobalEECs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8
  call void @_RNvMsz_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB17_EE10dying_nextCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %i.b)
  %i.c = load ptr, ptr %i.a, align 8
  %.not1.i = icmp eq ptr %i.c, null
  br i1 %.not1.i, label %_RNvXNvXsy_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB8_8IntoIterpppENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtB1k_6option6OptionB2c_ENtNtBe_5alloc6GlobalEB1e_4dropCs3U9i7nQCKwt_15find_msvc_tools.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  call void @_RNvMsT_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1E_ENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.a) #32
  %i.d = load ptr, ptr %0, align 8
  call void @_RNvMsz_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB17_EE10dying_nextCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %i.d)
  %i.e = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_RNvXNvXsy_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB8_8IntoIterpppENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtB1k_6option6OptionB2c_ENtNtBe_5alloc6GlobalEB1e_4dropCs3U9i7nQCKwt_15find_msvc_tools.exit, label %.lr.ph.i

_RNvXNvXsy_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB8_8IntoIterpppENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtB1k_6option6OptionB2c_ENtNtBe_5alloc6GlobalEB1e_4dropCs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %.lr.ph.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr align 8 %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3U9i7nQCKwt_15find_msvc_tools.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr align 8 %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs3U9i7nQCKwt_15find_msvc_tools.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs3U9i7nQCKwt_15find_msvc_tools.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvEBF_(ptr align 8 %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEECs3U9i7nQCKwt_15find_msvc_tools.exit

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %1 = atomicrmw add ptr %i.e, i64 -1 release, align 8
  %i.f = icmp eq i64 %1, 1
  br i1 %i.f, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEECs3U9i7nQCKwt_15find_msvc_tools.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE9drop_slowCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull readonly align 8 %i.d) #36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEECs3U9i7nQCKwt_15find_msvc_tools.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.f, %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolEBF_(ptr align 8 %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr align 8 %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr align 8 %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr align 8 %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringB19_EEECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.d) #35
          to label %bb.f unwind label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringB19_EEECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.e)
  ret void

bb.e:                                             ; preds = %.body
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.f:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std3env8VarErrorECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr align 8 %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr align 8 %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process7CommandECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %0) unnamed_addr #4 {
bb.a:
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix6common7CommandECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error11CustomOwnerECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %0) unnamed_addr #4 {
bb.a:
  tail call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.val.i = load ptr, ptr %0, align 8             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %.val.i to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs3U9i7nQCKwt_15find_msvc_tools.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs3U9i7nQCKwt_15find_msvc_tools.exit
    i64 1, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp uge ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %.not3.i.i.i = icmp eq i64 %i.e, 1095216660480
  %.not.i.i.i = or i1 %i.d, %.not3.i.i.i
  br i1 %.not.i.i.i, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs3U9i7nQCKwt_15find_msvc_tools.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RNvNvNtCs3oUPovFnLWP_4core4hint21unreachable_unchecked18precondition_checkCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 @9) #39
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val.i, i64 -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8
  store i8 3, ptr %i.a, align 8
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr nonnull align 8 %i.g)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs3U9i7nQCKwt_15find_msvc_tools.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8
  store i8 0, ptr %.val, align 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxShEECs3U9i7nQCKwt_15find_msvc_tools.exit2, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i1

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i1: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr %i.d, i64 %i.b, i64 1) #38
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxShEECs3U9i7nQCKwt_15find_msvc_tools.exit2

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxShEECs3U9i7nQCKwt_15find_msvc_tools.exit2: ; preds = %bb.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i1
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr align 8 %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs3U9i7nQCKwt_15find_msvc_tools.exit unwind label %bb.b
end_hunk_1
begin_hunk_2_@_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools:bb.a
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %xtraiter = and i64 %.sroa.2.sroa.3.0.copyload, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.022.025.prol = phi ptr [ %i.d, %.lr.ph.prol ], [ %.sroa.2.sroa.2.0.copyload, %.lr.ph.preheader ]
  %.sroa.020.024.prol = phi i64 [ %i.e, %.lr.ph.prol ], [ %.sroa.2.sroa.3.0.copyload, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.022.025.prol, i64 544
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = add i64 %.sroa.020.024.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !61

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.d, %.lr.ph.prol ]
  %.sroa.022.025.unr = phi ptr [ %.sroa.2.sroa.2.0.copyload, %.lr.ph.preheader ], [ %i.d, %.lr.ph.prol ]
  %.sroa.020.024.unr = phi i64 [ %.sroa.2.sroa.3.0.copyload, %.lr.ph.preheader ], [ %i.e, %.lr.ph.prol ]
  %i.f = icmp ult i64 %.sroa.2.sroa.3.0.copyload, 8
  br i1 %i.f, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  store ptr %.sroa.2.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.2.sroa.2.0.copyload, ptr %.sroa.210.0..sroa_idx, align 8
  %.sroa.311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.2.sroa.3.0.copyload, ptr %.sroa.311.0..sroa_idx, align 8
  br label %bb.d

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.preheader
  %.sroa.022.0.lcssa = phi ptr [ %.sroa.2.sroa.2.0.copyload, %.preheader ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.v, %.lr.ph ]
  store ptr %.sroa.022.0.lcssa, ptr %0, align 8
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27.0..sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.022.025 = phi ptr [ %i.v, %.lr.ph ], [ %.sroa.022.025.unr, %.lr.ph.prol.loopexit ]
  %.sroa.020.024 = phi i64 [ %i.w, %.lr.ph ], [ %.sroa.020.024.unr, %.lr.ph.prol.loopexit ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.022.025, i64 544
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 544
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 544
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 544
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 544
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 544
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 544
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 544
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = add i64 %.sroa.020.024, -8               ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind uwtable
define align 8 ptr @_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10init_frontCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree align 8 captures(ret: address, provenance) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8              ; 5 uses
  %.sroa.012.015 = load ptr, ptr %i.e, align 8    ; 3 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %xtraiter = and i64 %i.g, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.012.017.prol = phi ptr [ %.sroa.012.0.prol, %.lr.ph.prol ], [ %.sroa.012.015, %.lr.ph.preheader ]
  %.sroa.010.016.prol = phi i64 [ %i.j, %.lr.ph.prol ], [ %i.g, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.017.prol, i64 544
  %i.j = add i64 %.sroa.010.016.prol, -1          ; 2 uses
  %.sroa.012.0.prol = load ptr, ptr %i.i, align 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !62

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.012.0.lcssa21.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.012.0.prol, %.lr.ph.prol ]
  %.sroa.012.017.unr = phi ptr [ %.sroa.012.015, %.lr.ph.preheader ], [ %.sroa.012.0.prol, %.lr.ph.prol ]
  %.sroa.010.016.unr = phi i64 [ %i.g, %.lr.ph.preheader ], [ %i.j, %.lr.ph.prol ]
  %i.k = icmp ult i64 %i.g, 8
  br i1 %i.k, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.c
  %.sroa.012.0.lcssa = phi ptr [ %.sroa.012.015, %bb.c ], [ %.sroa.012.0.lcssa21.unr, %.lr.ph.prol.loopexit ], [ %.sroa.012.0.7, %.lr.ph ]
  store i64 1, ptr %0, align 8
  store ptr %.sroa.012.0.lcssa, ptr %i.c, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.012.017 = phi ptr [ %.sroa.012.0.7, %.lr.ph ], [ %.sroa.012.017.unr, %.lr.ph.prol.loopexit ]
  %.sroa.010.016 = phi i64 [ %i.t, %.lr.ph ], [ %.sroa.010.016.unr, %.lr.ph.prol.loopexit ]
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.012.017, i64 544
  %.sroa.012.0 = load ptr, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.012.0, i64 544
  %.sroa.012.0.1 = load ptr, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.012.0.1, i64 544
  %.sroa.012.0.2 = load ptr, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.012.0.2, i64 544
  %.sroa.012.0.3 = load ptr, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.0.3, i64 544
  %.sroa.012.0.4 = load ptr, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.0.4, i64 544
  %.sroa.012.0.5 = load ptr, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.012.0.5, i64 544
  %.sroa.012.0.6 = load ptr, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.012.0.6, i64 544
  %i.t = add i64 %.sroa.010.016, -8               ; 2 uses
  %.sroa.012.0.7 = load ptr, ptr %i.s, align 8    ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %.not14 = icmp eq ptr %i.w, null
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.sroa.0.0 = phi ptr [ %i.v, %bb.d ], [ null, %bb.a ]
  ret ptr %.sroa.0.0

bb.f:                                             ; preds = %bb.d
  tail call fastcc void @_RNvNvNtCs3oUPovFnLWP_4core4hint21unreachable_unchecked18precondition_checkCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 @13) #39
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMse_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1r_ENtB19_14LeafOrInternalE6ascendCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr %1, i64 %2) unnamed_addr #16 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %2, 1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.d = load i16, ptr %i.c, align 8
  %i.e = zext i16 %i.d to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %1 to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink26 = phi i64 [ %i.f, %bb.c ], [ %i.b, %bb.b ]
  %.sink25 = phi i64 [ %2, %bb.c ], [ %i.e, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink26, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink25, ptr %i.h, align 8
  store ptr %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE9drop_slowCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrRNtNtBG_5alloc6GlobalEECs3U9i7nQCKwt_15find_msvc_tools.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %1 = atomicrmw add ptr %i.e, i64 -1 release, align 8
  %i.f = icmp eq i64 %1, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrRNtNtBG_5alloc6GlobalEECs3U9i7nQCKwt_15find_msvc_tools.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  %i.g = add i64 %i.c, 23
  %i.h = and i64 %i.g, -8                         ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrRNtNtBG_5alloc6GlobalEECs3U9i7nQCKwt_15find_msvc_tools.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr %i.a, i64 %i.h, i64 8) #38
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrRNtNtBG_5alloc6GlobalEECs3U9i7nQCKwt_15find_msvc_tools.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrRNtNtBG_5alloc6GlobalEECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1R_ENtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, 1
  store ptr %i.c, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.c, i64 552
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %i.e ; 2 uses
  %xtraiter = and i64 %i.b, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.c, %.prol.preheader
  %.sroa.019.0.in.prol = phi ptr [ %i.l, %.prol.preheader ], [ %i.k, %bb.c ]
  %.sroa.021.0.in.prol = phi i64 [ %.sroa.021.0.prol, %.prol.preheader ], [ %i.b, %bb.c ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.c ]
  %.sroa.021.0.prol = add i64 %.sroa.021.0.in.prol, -1 ; 2 uses
  %.sroa.019.0.prol = load ptr, ptr %.sroa.019.0.in.prol, align 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.019.0.prol, i64 544 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !63

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.c
  %.sroa.019.0.lcssa.unr = phi ptr [ poison, %bb.c ], [ %.sroa.019.0.prol, %.prol.preheader ]
  %.sroa.019.0.in.unr = phi ptr [ %i.k, %bb.c ], [ %i.l, %.prol.preheader ]
  %.sroa.021.0.in.unr = phi i64 [ %i.b, %bb.c ], [ %.sroa.021.0.prol, %.prol.preheader ]
  %i.m = icmp ult i64 %i.b, 8
  br i1 %i.m, label %.unr-lcssa, label %.new

bb.d:                                             ; preds = %.unr-lcssa, %bb.b
  ret void

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.019.0.in = phi ptr [ %i.v, %.new ], [ %.sroa.019.0.in.unr, %.prol.loopexit ]
  %.sroa.021.0.in = phi i64 [ %.sroa.021.0.7, %.new ], [ %.sroa.021.0.in.unr, %.prol.loopexit ]
  %.sroa.019.0 = load ptr, ptr %.sroa.019.0.in, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.019.0, i64 544
  %.sroa.019.0.1 = load ptr, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.019.0.1, i64 544
  %.sroa.019.0.2 = load ptr, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.019.0.2, i64 544
  %.sroa.019.0.3 = load ptr, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.019.0.3, i64 544
  %.sroa.019.0.4 = load ptr, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.019.0.4, i64 544
  %.sroa.019.0.5 = load ptr, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.019.0.5, i64 544
  %.sroa.019.0.6 = load ptr, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.019.0.6, i64 544
  %.sroa.021.0.7 = add i64 %.sroa.021.0.in, -8    ; 2 uses
  %.sroa.019.0.7 = load ptr, ptr %i.t, align 8    ; 2 uses
  %i.u = icmp eq i64 %.sroa.021.0.7, 0
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.019.0.7, i64 544
  br i1 %i.u, label %.unr-lcssa, label %.new

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %.sroa.019.0.lcssa = phi ptr [ %.sroa.019.0.lcssa.unr, %.prol.loopexit ], [ %.sroa.019.0.7, %.new ]
  store ptr %.sroa.019.0.lcssa, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsz_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB17_EE10dying_nextCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree align 8 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 2 uses
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i, align 8 ; 4 uses
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.2.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i, align 8 ; 5 uses
  store i64 0, ptr %1, align 8
  %i.e = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.e, label %bb.c, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1K_EE16deallocating_endNtNtBc_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.2.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %.preheader.i.i, label %_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.thread7.i

.preheader.i.i:                                   ; preds = %bb.c
  %i.f = icmp eq i64 %.sroa.2.sroa.3.0.copyload.i.i, 0
  br i1 %i.f, label %_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.preheader.i.i
  %xtraiter = and i64 %.sroa.2.sroa.3.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.025.i.i.prol = phi ptr [ %i.h, %.lr.ph.i.i.prol ], [ %.sroa.2.sroa.2.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.024.i.i.prol = phi i64 [ %i.i, %.lr.ph.i.i.prol ], [ %.sroa.2.sroa.3.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.prol, i64 544
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = add i64 %.sroa.020.024.i.i.prol, -1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !64

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa11.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %.sroa.022.025.i.i.unr = phi ptr [ %.sroa.2.sroa.2.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %.sroa.020.024.i.i.unr = phi i64 [ %.sroa.2.sroa.3.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.i, %.lr.ph.i.i.prol ]
  %i.j = icmp ult i64 %.sroa.2.sroa.3.0.copyload.i.i, 8
  br i1 %i.j, label %_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.025.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %.sroa.022.025.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.024.i.i = phi i64 [ %i.aa, %.lr.ph.i.i ], [ %.sroa.020.024.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i, i64 544
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 544
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 544
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 544
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 544
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 544
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 544
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 544
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = add i64 %.sroa.020.024.i.i, -8          ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.i, label %.lr.ph.i.i

_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.preheader.i.i
  %.sroa.0.0.i = phi ptr [ %.sroa.2.sroa.2.0.copyload.i.i, %.preheader.i.i ], [ %.lcssa11.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.z, %.lr.ph.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, null
  br i1 %.not.i, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1K_EE16deallocating_endNtNtBc_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools.exit, label %_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.thread7.i

_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.thread7.i: ; preds = %_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.i, %bb.c
  %.sroa.0.012.i = phi ptr [ %.sroa.0.0.i, %_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.i ], [ %.sroa.2.sroa.0.0.copyload.i.i, %bb.c ] ; 3 uses
  %.sroa.5.011.i = phi ptr [ null, %_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.i ], [ %.sroa.2.sroa.2.0.copyload.i.i, %bb.c ]
  %i.ac = ptrtoint ptr %.sroa.5.011.i to i64      ; 2 uses
  %i.ad = load ptr, ptr %.sroa.0.012.i, align 8   ; 2 uses
  %.not.i.i5.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i5.i.i, label %_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1S_ENtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools.exit.i, label %.lr.ph.i1.i

.lr.ph.i1.i:                                      ; preds = %_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.thread7.i, %.lr.ph.i1.i
  %i.ae = phi ptr [ %i.ag, %.lr.ph.i1.i ], [ %i.ad, %_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.thread7.i ] ; 3 uses
  %.sroa.0.07.i.i = phi ptr [ %i.ae, %.lr.ph.i1.i ], [ %.sroa.0.012.i, %_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.thread7.i ]
  %.sroa.3.06.i.i = phi i64 [ %i.af, %.lr.ph.i1.i ], [ %i.ac, %_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.thread7.i ] ; 2 uses
  %i.af = add i64 %.sroa.3.06.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.3.06.i.i, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 544, i64 640
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr nonnull %.sroa.0.07.i.i, i64 %..i.i.i, i64 8) #38
  %i.ag = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i, label %_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1S_ENtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools.exit.i, label %.lr.ph.i1.i

_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1S_ENtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools.exit.i: ; preds = %.lr.ph.i1.i, %_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.thread7.i
  %.sroa.3.0.lcssa.i.i = phi i64 [ %i.ac, %_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.thread7.i ], [ %i.af, %.lr.ph.i1.i ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.0.012.i, %_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.thread7.i ], [ %i.ae, %.lr.ph.i1.i ]
end_hunk_2
begin_hunk_3_@_RNvNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools18find_tool_with_env:bb.a
  %i.cs = tail call zeroext i1 @_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs3U9i7nQCKwt_15find_msvc_tools(ptr %3, i64 %4, ptr nonnull @19, i64 6) #32
  br i1 %i.cs, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtBM_10find_tools18find_tool_with_envs0_0EBM_.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %i.ct = tail call zeroext i1 @_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs3U9i7nQCKwt_15find_msvc_tools(ptr %3, i64 %4, ptr nonnull @20, i64 5) #32
  br i1 %i.ct, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtBM_10find_tools18find_tool_with_envs0_0EBM_.exit, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.cu = tail call zeroext i1 @_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs3U9i7nQCKwt_15find_msvc_tools(ptr %3, i64 %4, ptr nonnull @21, i64 4) #32
  br i1 %i.cu, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtBM_10find_tools18find_tool_with_envs0_0EBM_.exit, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.cv = tail call zeroext i1 @_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs3U9i7nQCKwt_15find_msvc_tools(ptr %3, i64 %4, ptr nonnull @22, i64 4) #32
  br i1 %i.cv, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtBM_10find_tools18find_tool_with_envs0_0EBM_.exit, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.cw = tail call zeroext i1 @_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs3U9i7nQCKwt_15find_msvc_tools(ptr %3, i64 %4, ptr nonnull @23, i64 2) #32
  br i1 %i.cw, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtBM_10find_tools18find_tool_with_envs0_0EBM_.exit, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.cx = tail call zeroext i1 @_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs3U9i7nQCKwt_15find_msvc_tools(ptr %3, i64 %4, ptr nonnull @24, i64 3) #32
  br i1 %i.cx, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtBM_10find_tools18find_tool_with_envs0_0EBM_.exit, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools18find_tool_with_env0EB1I_.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools18find_tool_with_env0EB1I_.exit: ; preds = %.preheader.4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %3, ptr %i.n, align 8, !noalias !80
  %i.cy = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %4, ptr %i.cy, align 8, !noalias !80
  store ptr %5, ptr %i.m, align 8, !noalias !80
  %i.cz = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %6, ptr %i.cz, align 8, !noalias !80
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !invariant.load !5, !noalias !80, !nonnull !5 ; 2 uses
  call void %i.db(ptr nonnull sret([24 x i8]) align 8 %i.k, ptr %5, ptr nonnull @27, i64 12) #32, !noalias !80, !inline_history !77
  %i.dc = load i64, ptr %i.k, align 8, !noalias !80 ; 2 uses
  %.not.i.i = icmp eq i64 %i.dc, -2
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools18find_tool_with_env0EB1I_.exit
  store i64 -1, ptr %i.o, align 8, !alias.scope !80
  br label %_RNvNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools5impl_21find_msvc_environment.exit

bb.d:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools18find_tool_with_env0EB1I_.exit
  %.sroa.4.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx16.i, i64 16, i1 false), !noalias !80
  store i64 %i.dc, ptr %i.l, align 8, !noalias !80
  invoke void %i.db(ptr nonnull sret([24 x i8]) align 8 %i.i, ptr %5, ptr nonnull @28, i64 12)
          to label %bb.f unwind label %bb.e, !noalias !80

.body.i:                                          ; preds = %bb.p, %bb.g, %bb.e
  %.pn.i = phi { ptr, i32 } [ %lpad.phi.i, %bb.g ], [ %i.dd, %bb.e ], [ %i.dm, %bb.p ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvEBF_(ptr nonnull align 8 %i.l) #35
          to label %common.resume.i unwind label %bb.y, !noalias !80

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i, %bb.d
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.f:                                             ; preds = %bb.d
  %i.de = load i64, ptr %i.i, align 8, !noalias !80 ; 2 uses
  %.not.i2.i = icmp eq i64 %i.de, -2
  br i1 %.not.i2.i, label %bb.z, label %bb.h

.loopexit.i:                                      ; preds = %bb.i, %_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtB4_9try_trait3Try6branchCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp.i:                             ; preds = %bb.m, %bb.l
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvEBF_(ptr nonnull align 8 %i.j) #35
          to label %.body.i unwind label %bb.y, !noalias !80

bb.h:                                             ; preds = %bb.f
  %.sroa.420.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.223.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.223.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.420.0..sroa_idx21.i, i64 16, i1 false), !noalias !80
  store i64 %i.de, ptr %i.j, align 8, !noalias !80
  store ptr %i.n, ptr %i.h, align 8, !noalias !80
  %i.df = load i64, ptr %i.l, align 8, !noalias !80
  %i.dg = icmp eq i64 %i.df, -1
  %i.dh = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !80
  %.pn6.idx.i.i.i = select i1 %i.dg, i64 16, i64 0
  %.pn6.i.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.pn6.idx.i.i.i
  %.pn4.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.pn4.i.i.i = load i64, ptr %.pn4.in.i.i.i, align 8, !noalias !80
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !80
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %.pn6.i.i.i, ptr %i.di, align 8, !noalias !82
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.pn4.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !82
  %.sroa.32.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i8 0, ptr %.sroa.32.0..sroa_idx.i.i, align 8, !noalias !82
  store ptr %i.n, ptr %i.e, align 8, !noalias !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !82
  store ptr %i.e, ptr %i.d, align 8, !noalias !82
  br label %_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtB4_9try_trait3Try6branchCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i.i

_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtB4_9try_trait3Try6branchCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i.i: ; preds = %.noexc4.i, %bb.h
  invoke void @_RNvXs6_NtCsaL1QbXo9JQH_3std3envNtB5_10SplitPathsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.di)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !80

.noexc.i:                                         ; preds = %_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtB4_9try_trait3Try6branchCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i.i
  %i.dj = load i64, ptr %i.c, align 8, !noalias !82
  %.not.i.i.i.i.i = icmp eq i64 %i.dj, -1
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !82
  invoke void @_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldNtNtCsaL1QbXo9JQH_3std4path7PathBufBZ_uINtNtNtBa_3ops12control_flow11ControlFlowBZ_ENCNCNvNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools5impl_21find_msvc_environment00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkBZ_NCB2n_s_0E0E0B2v_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.a) #32
          to label %.noexc4.i unwind label %.loopexit.i, !noalias !80

.noexc4.i:                                        ; preds = %bb.i
  %i.dk = load i64, ptr %i.b, align 8, !noalias !82 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.dk, -1
  br i1 %.not.i.i.i.i.i.i, label %_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtB4_9try_trait3Try6branchCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.noexc4.i
  %.sroa.4.0..sroa_idx3.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx3.i.i.i.i.i, i64 16, i1 false), !noalias !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !82
  store i64 %i.dk, ptr %i.f, align 8, !alias.scope !81, !noalias !80
  %.sroa.2.0..sroa_idx.i1.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %.sroa.2.0..sroa_idx.i1.i.i, align 8, !alias.scope !81, !noalias !80
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !alias.scope !81, !noalias !80
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !81, !noalias !80
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !81, !noalias !80
  br label %bb.l

bb.k:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !82
  store i64 -1, ptr %i.f, align 8, !alias.scope !81, !noalias !80
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !80
  invoke void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtNtBM_10find_tools5impl_21find_msvc_environments_0EBM_(ptr nonnull sret([56 x i8]) align 8 %i.g, ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.j)
          to label %bb.m unwind label %.loopexit.split-lp.i, !noalias !80

bb.m:                                             ; preds = %bb.l
  invoke void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtNtBM_10find_tools5impl_21find_msvc_environments0_0EBM_(ptr nonnull sret([56 x i8]) align 8 %i.o, ptr nonnull align 8 %i.g, ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.h)
          to label %bb.n unwind label %.loopexit.split-lp.i

bb.n:                                             ; preds = %bb.m
  %i.dl = load i64, ptr %i.j, align 8, !noalias !80
  %.not.i5.i = icmp eq i64 %i.dl, -1
  br i1 %.not.i5.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i unwind label %bb.p, !noalias !80

bb.p:                                             ; preds = %bb.o
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.j)
          to label %.body.i unwind label %bb.q, !noalias !80

bb.q:                                             ; preds = %bb.p
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !80
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i: ; preds = %bb.o
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvEBF_.exit.i unwind label %bb.e, !noalias !80

bb.r:                                             ; preds = %bb.n
  %i.do = load ptr, ptr %.sroa.223.0..sroa_idx.i, align 8, !noalias !80
  %7 = atomicrmw add ptr %i.do, i64 -1 release, align 8, !noalias !80
  %i.dp = icmp eq i64 %7, 1
  br i1 %i.dp, label %bb.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvEBF_.exit.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE9drop_slowCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull readonly align 8 %.sroa.223.0..sroa_idx.i) #36, !noalias !80
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvEBF_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvEBF_.exit.i: ; preds = %bb.s, %bb.r, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i
  %i.dq = load i64, ptr %i.l, align 8, !noalias !80
  %.not.i7.i = icmp eq i64 %i.dq, -1
  br i1 %.not.i7.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvEBF_.exit.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i9.i unwind label %bb.u, !noalias !80

bb.u:                                             ; preds = %bb.t
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.l)
          to label %common.resume.i unwind label %bb.v, !noalias !80

bb.v:                                             ; preds = %bb.u
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !80
  unreachable

common.resume.i:                                  ; preds = %bb.ab, %bb.u, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.dx, %bb.ab ], [ %i.dr, %bb.u ], [ %.pn.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i9.i: ; preds = %bb.t
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.l), !noalias !80
  br label %_RNvNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools5impl_21find_msvc_environment.exit

bb.w:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvEBF_.exit.i
  %i.dt = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !80
  %8 = atomicrmw add ptr %i.dt, i64 -1 release, align 8, !noalias !80
  %i.du = icmp eq i64 %8, 1
  br i1 %i.du, label %bb.x, label %_RNvNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools5impl_21find_msvc_environment.exit

bb.x:                                             ; preds = %bb.w
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE9drop_slowCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull readonly align 8 %.sroa.2.0..sroa_idx.i) #36, !noalias !80
  br label %_RNvNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools5impl_21find_msvc_environment.exit

bb.y:                                             ; preds = %bb.g, %.body.i
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !80
  unreachable

bb.z:                                             ; preds = %bb.f
  store i64 -1, ptr %i.o, align 8, !alias.scope !80
  %i.dw = load i64, ptr %i.l, align 8, !noalias !80
  %.not.i11.i = icmp eq i64 %i.dw, -1
  br i1 %.not.i11.i, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i13.i unwind label %bb.ab, !noalias !80

bb.ab:                                            ; preds = %bb.aa
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.l)
          to label %common.resume.i unwind label %bb.ac, !noalias !80

bb.ac:                                            ; preds = %bb.ab
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !80
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i13.i: ; preds = %bb.aa
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.l), !noalias !80
  br label %_RNvNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools5impl_21find_msvc_environment.exit

bb.ad:                                            ; preds = %bb.z
  %i.dz = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !80
  %9 = atomicrmw add ptr %i.dz, i64 -1 release, align 8, !noalias !80
  %i.ea = icmp eq i64 %9, 1
  br i1 %i.ea, label %bb.ae, label %_RNvNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools5impl_21find_msvc_environment.exit

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE9drop_slowCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull readonly align 8 %.sroa.2.0..sroa_idx.i) #36, !noalias !80
  br label %_RNvNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools5impl_21find_msvc_environment.exit

_RNvNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools5impl_21find_msvc_environment.exit: ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i9.i, %bb.w, %bb.x, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i13.i, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.eb = load i64, ptr %i.o, align 8             ; 2 uses
  %.not.i = icmp eq i64 %i.eb, -1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtBM_10find_tools18find_tool_with_envs0_0EBM_.exit, label %bb.af

bb.af:                                            ; preds = %_RNvNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools5impl_21find_msvc_environment.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.4.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx32, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx, i64 48, i1 false)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtBM_10find_tools18find_tool_with_envs0_0EBM_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtBM_10find_tools18find_tool_with_envs0_0EBM_.exit: ; preds = %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %_RNvNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools5impl_21find_msvc_environment.exit, %bb.b, %select.unfold, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit27.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit24.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit21.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit12.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit6.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit3.i, %bb.a, %bb.af
  %.sink = phi i64 [ %i.eb, %bb.af ], [ -1, %bb.b ], [ -1, %_RNvNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools5impl_21find_msvc_environment.exit ], [ -1, %select.unfold ], [ -1, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit27.i ], [ -1, %bb.a ], [ -1, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit3.i ], [ -1, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit6.i ], [ -1, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit12.i ], [ -1, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit21.i ], [ -1, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit24.i ], [ -1, %.preheader.4 ], [ -1, %.preheader.3 ], [ -1, %.preheader.2 ], [ -1, %.preheader.1 ], [ -1, %.preheader.preheader ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools4find(ptr nofree writeonly sret([200 x i8]) align 8 captures(none) %0, ptr %1, i64 %2, ptr %3, i64 %4) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [56 x i8], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr nonnull sret([104 x i8]) align 8 %i.a, ptr %1, i64 %2, ptr nonnull @25, i64 1)
  call fastcc void @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs3U9i7nQCKwt_15find_msvc_tools(ptr noalias align 8 %i.b, ptr align 8 %i.a) #32
  %i.d = load i64, ptr %i.b, align 8
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit.thread.i

_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.k = sub nuw i64 %2, %i.i
  %i.l = call zeroext i1 @_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull %i.j, i64 %i.k, ptr nonnull @26, i64 4) #32
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %i.c, align 8
  br label %_RNvNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools9find_tool.exit

bb.d:                                             ; preds = %bb.b, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit.i, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit.thread.i
  %.sroa.3.0.i = phi i64 [ %2, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit.i ], [ %i.g, %bb.b ], [ %2, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit.thread.i ]
  %.sroa.0.0.i = phi ptr [ null, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit.i ], [ %1, %bb.b ], [ %1, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit.thread.i ]
  call void @_RNvNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools18find_tool_with_env(ptr nonnull sret([56 x i8]) align 8 %i.c, ptr %.sroa.0.0.i, i64 %.sroa.3.0.i, ptr %3, i64 %4, ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull align 8 @17)
  br label %_RNvNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools9find_tool.exit

_RNvNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools9find_tool.exit: ; preds = %bb.c, %bb.d
  call void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE3mapNtNtCsaL1QbXo9JQH_3std7process7CommandNCNvNtBM_10find_tools4find0EBM_(ptr sret([200 x i8]) align 8 %0, ptr nonnull align 8 %i.c) #32
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools9find_tool(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) %0, ptr %1, i64 %2, ptr %3, i64 %4) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr nonnull sret([104 x i8]) align 8 %i.a, ptr %1, i64 %2, ptr nonnull @25, i64 1)
  call fastcc void @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs3U9i7nQCKwt_15find_msvc_tools(ptr noalias align 8 %i.b, ptr align 8 %i.a) #32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit.thread

_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %i.j = sub nuw i64 %2, %i.h
  %i.k = call zeroext i1 @_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull %i.i, i64 %i.j, ptr nonnull @26, i64 4) #32
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit.thread, %bb.b, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit
  %.sroa.3.0 = phi i64 [ %2, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit ], [ %i.f, %bb.b ], [ %2, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit.thread ]
  %.sroa.0.0 = phi ptr [ null, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit ], [ %1, %bb.b ], [ %1, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit.thread ]
  call void @_RNvNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools18find_tool_with_env(ptr sret([56 x i8]) align 8 %0, ptr %.sroa.0.0, i64 %.sroa.3.0, ptr %3, i64 %4, ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull align 8 @17)
  br label %bb.d
}

; Function Attrs: cold inlinehint noreturn nounwind nonlazybind uwtable
define internal fastcc void @_RNvNvNtCs3oUPovFnLWP_4core4hint21unreachable_unchecked18precondition_checkCs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %0) unnamed_addr #18 {
bb.a:
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_nounwind_fmt(ptr nonnull @29, ptr nonnull inttoptr (i64 399 to ptr), i1 zeroext false, ptr align 8 %0) #40
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRNtNtCsaL1QbXo9JQH_3std4path4PathINtB2_5AsRefBw_E6as_refCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %i.c, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtB2_5AsRefNtNtNtBA_3ffi6os_str5OsStrE6as_refCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8
  %i.d = insertvalue { ptr, i64 } poison, ptr %.val, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %.val1, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtB2_5AsRefNtBy_5OsStrE6as_refCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8
  %i.d = insertvalue { ptr, i64 } poison, ptr %.val, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %.val1, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertReINtB2_5AsRefNtNtCsaL1QbXo9JQH_3std4path4PathE6as_refCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %i.c, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertReINtB2_5AsRefNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE6as_refCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %i.c, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtB4_9try_trait3Try11from_outputCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8)) %0) unnamed_addr #3 {
end_hunk_3
begin_hunk_4_@_RNvXNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB14_EENtNtNtB1R_3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools:bb.a
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.39.0.copyload = load i64, ptr %.sroa.39.0..sroa_idx, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.28.0.copyload = load i64, ptr %.sroa.28.0..sroa_idx, align 8 ; 2 uses
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %.sroa.215.0..sroa_idx, align 8
  %.sroa.215.sroa.2.0..sroa.215.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.07.0.copyload, ptr %.sroa.215.sroa.2.0..sroa.215.0..sroa_idx.sroa_idx, align 8
  %.sroa.215.sroa.3.0..sroa.215.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.28.0.copyload, ptr %.sroa.215.sroa.3.0..sroa.215.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.sroa.07.0.copyload, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.28.0.copyload, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink31 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %.sroa.39.0.copyload.sink = phi i64 [ %.sroa.39.0.copyload, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink31, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sink31, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %.sroa.39.0.copyload.sink, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsz_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB17_EE10dying_nextCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.c)
  %i.f = load ptr, ptr %i.b, align 8
  %.not1.i.i = icmp eq ptr %i.f, null
  br i1 %.not1.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB1A_EEECs3U9i7nQCKwt_15find_msvc_tools.exit, label %.lr.ph.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  call void @_RNvMsz_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB17_EE10dying_nextCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.c)
  %i.g = load ptr, ptr %i.b, align 8
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB1A_EEECs3U9i7nQCKwt_15find_msvc_tools.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  invoke void @_RNvMsT_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1E_ENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.b)
          to label %bb.d unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  store ptr %i.c, ptr %i.a, align 8
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXsy_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB2s_ENtNtBQ_5alloc6GlobalEECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.a) #35
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB1A_EEECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtB8_5slice4iter4IterTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringB1c_EENtB2_12IntoIterator9into_iterCs3U9i7nQCKwt_15find_msvc_tools(ptr %0, ptr %1) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXNvMsT_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB8_6HandleINtB8_7NodeRefNtNtB8_6marker5DyingpppENtB1p_2KVE12drop_key_valINtB2_7DropperINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEENtNtNtB2s_3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs3U9i7nQCKwt_15find_msvc_tools.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs3U9i7nQCKwt_15find_msvc_tools.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNvXsy_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB8_8IntoIterpppENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtB1k_6option6OptionB2c_ENtNtBe_5alloc6GlobalEB1e_4dropCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8
  call void @_RNvMsz_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB17_EE10dying_nextCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %i.b)
  %i.c = load ptr, ptr %i.a, align 8
  %.not1 = icmp eq ptr %i.c, null
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  call void @_RNvMsT_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1E_ENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.a) #32
  %i.d = load ptr, ptr %0, align 8
  call void @_RNvMsz_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB17_EE10dying_nextCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %i.d)
  %i.e = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXs0_NtCs3U9i7nQCKwt_15find_msvc_tools10find_toolsNtB5_3EnvNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %i.a, -1
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %.pn6.idx = select i1 %i.b, i64 16, i64 0
  %.pn6 = getelementptr inbounds nuw i8, ptr %i.d, i64 %.pn6.idx
  %.pn4.in = getelementptr i8, ptr %0, i64 16
  %.pn4 = load i64, ptr %.pn4.in, align 8
  %.pn3 = insertvalue { ptr, i64 } poison, ptr %.pn6, 0
  %.pn = insertvalue { ptr, i64 } %.pn3, i64 %.pn4, 1
  ret { ptr, i64 } %.pn
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define void @_RNvXs0_NtCs3oUPovFnLWP_4core5allocRNtNtCs1xwejQucwHj_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readnone align 8 captures(none) %0, ptr captures(address) %1, i64 %2, i64 %3) unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr %1, i64 %3, i64 %2) #38
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutuEp6OutputINtNtB1c_6result6ResultuNtNtNtB1c_2io5error5ErrorENtNtB1c_6marker4SendNtB2O_4SyncEL_EENtNtB1a_4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %0) unnamed_addr #4 {
bb.a:
  tail call void @_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslmXY8IYACQt_5gimli(ptr align 8 %0, i64 8, i64 16)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecPaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %0) unnamed_addr #4 {
bb.a:
  tail call void @_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslmXY8IYACQt_5gimli(ptr align 8 %0, i64 8, i64 8)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBN_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %0) unnamed_addr #4 {
bb.a:
  tail call void @_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslmXY8IYACQt_5gimli(ptr align 8 %0, i64 8, i64 48)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCs3U9i7nQCKwt_15find_msvc_tools10find_toolsNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_3EnvE4from(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load i64, ptr %1, align 8
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEECs3U9i7nQCKwt_15find_msvc_tools.exit2

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEECs3U9i7nQCKwt_15find_msvc_tools.exit2: ; preds = %bb.i, %bb.h, %bb.b
  ret void

bb.c:                                             ; preds = %bb.f, %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  %2 = atomicrmw add ptr %i.h, i64 -1 release, align 8
  %i.f = icmp eq i64 %2, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEECs3U9i7nQCKwt_15find_msvc_tools.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE9drop_slowCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull readonly align 8 %i.b) #36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEECs3U9i7nQCKwt_15find_msvc_tools.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8              ; 5 uses
  store ptr %i.h, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslmXY8IYACQt_5gimli(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %i.j, i1 zeroext false, i64 1, i64 1)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.e
  %i.m = load i64, ptr %i.a, align 8
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.n, label %bb.f, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i

bb.f:                                             ; preds = %.noexc
  %i.r = load i64, ptr %i.q, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 %i.p, i64 %i.r) #37
          to label %.noexc1 unwind label %bb.c

.noexc1:                                          ; preds = %bb.f
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i: ; preds = %.noexc
  %i.s = load ptr, ptr %i.q, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull readonly align 1 %i.l, i64 %i.j, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i
  store i64 %i.p, ptr %0, align 8
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %.sroa.25.0..sroa_idx.i, align 8
  %.sroa.36.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.j, ptr %.sroa.36.0..sroa_idx.i, align 8
  %3 = atomicrmw add ptr %i.h, i64 -1 release, align 8
  %i.t = icmp eq i64 %3, 1
  br i1 %i.t, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEECs3U9i7nQCKwt_15find_msvc_tools.exit2

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE9drop_slowCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull readonly align 8 %i.b) #36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEECs3U9i7nQCKwt_15find_msvc_tools.exit2

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define align 8 ptr @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBQ_EENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.e, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define ptr @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0, i64 %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define ptr @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.e, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e                   ; 2 uses
  store i64 %i.f, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.h, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtCs3U9i7nQCKwt_15find_msvc_tools10find_toolsNtB5_12StdEnvGetterNtB5_9EnvGetter7get_env(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr nofree readnone captures(none) %1, ptr %2, i64 %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  call void @_RNvNtNtNtCsaL1QbXo9JQH_3std3sys3env4unix6getenv(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %2, i64 %3)
  %i.b = load i64, ptr %i.a, align 8
  %.not.i = icmp eq i64 %i.b, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE3mapNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvNcNtB1v_5Owned0EB1z_.exit

bb.c:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE3mapNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvNcNtB1v_5Owned0EB1z_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE3mapNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvNcNtB1v_5Owned0EB1z_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define { i64, i64 } @_RNvXs3_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl14spec_next_backCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %0, align 8
  %i.c = load i64, ptr %i.a, align 8              ; 2 uses
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, -1                         ; 2 uses
  store i64 %i.e, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.e, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.f = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0, ptr %1, ptr %2, ptr %3, ptr %4) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub nuw i64 %i.a, %i.b
  %i.d = ptrtoint ptr %4 to i64
  %i.e = ptrtoint ptr %3 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %.sroa.0.0.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.c)
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.0.sroa.speculated.i, ptr %i.k, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define { ptr, ptr } @_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw i64 %i.b, 1
  store i64 %i.f, ptr %i.a, align 8
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.b
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.k, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  %i.l = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.m
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define { i64, i64 } @_RNvXs5_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits12double_ended19DoubleEndedIterator9next_backCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %0, align 8
  %i.c = load i64, ptr %i.a, align 8              ; 2 uses
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl14spec_next_backCs3U9i7nQCKwt_15find_msvc_tools.exit

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, -1                         ; 2 uses
  store i64 %i.e, ptr %i.a, align 8
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl14spec_next_backCs3U9i7nQCKwt_15find_msvc_tools.exit

_RNvXs3_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl14spec_next_backCs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.e, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.f = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %.sroa.3.0.i, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXs8_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXs8_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBG_EENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutuEp6OutputINtNtBP_6result6ResultuNtNtNtBP_2io5error5ErrorENtNtBP_6marker4SendNtB2p_4SyncEL_ENtNtBN_4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !invariant.load !5 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit

bb.b:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit, %bb.a
  ret void

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !invariant.load !5
  %i.h = load ptr, ptr %0, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr %i.h, i64 %i.d, i64 %i.g) #38
  br label %bb.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxShENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit

bb.b:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit, %bb.a
  ret void

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr %i.d, i64 %i.b, i64 1) #38
  br label %bb.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit

bb.b:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit, %bb.a
  ret void

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.a
  %i.d = shl nuw nsw i64 %i.b, 2
  %i.e = load ptr, ptr %0, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr %i.e, i64 %i.d, i64 4) #38
  br label %bb.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvXs9_NtNtCs3oUPovFnLWP_4core3ops12control_flowINtB5_11ControlFlowuENtNtB9_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly captures(none) %0, ptr nofree readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = load i8, ptr %1, align 1
  %i.c = xor i8 %i.b, %i.a
  %i.d = and i8 %i.c, 1
  %i.e = icmp eq i8 %i.d, 0
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXsB_NtCs1xwejQucwHj_5alloc6stringeNtB5_8ToString9to_stringCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree readonly captures(none) %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !85
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslmXY8IYACQt_5gimli(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %2, i1 zeroext false, i64 1, i64 1), !noalias !85
  %i.b = load i64, ptr %i.a, align 8, !noalias !85
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !85 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !85
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 %i.e, i64 %i.g) #37, !noalias !85
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !85 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !85
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvXs26_NtCs1xwejQucwHj_5alloc6stringeNtB6_12SpecToString14spec_to_stringCs3U9i7nQCKwt_15find_msvc_tools.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr readonly align 1 %1, i64 %2, i1 false), !noalias !85
  br label %_RNvXs26_NtCs1xwejQucwHj_5alloc6stringeNtB6_12SpecToString14spec_to_stringCs3U9i7nQCKwt_15find_msvc_tools.exit

_RNvXs26_NtCs1xwejQucwHj_5alloc6stringeNtB6_12SpecToString14spec_to_stringCs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i, %bb.c
  store i64 %i.e, ptr %0, align 8, !alias.scope !85
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !85
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !85
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define void @_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %1 = atomicrmw add ptr %i.a, i64 -1 release, align 8
  %i.b = icmp eq i64 %1, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE9drop_slowCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %0) #36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i8 @_RNvXsJ_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools10TargetArchENtNtNtB7_3ops9try_trait3Try6branchBO_(i8 returned %0) unnamed_addr #5 {
bb.a:
  ret i8 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsJ_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.a, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsK_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3SdkEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualBO_(ptr nofree writeonly sret([96 x i8]) align 8 captures(none) initializes((0, 8)) %0) unnamed_addr #3 {
bb.a:
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsK_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualBO_(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) initializes((0, 8)) %0) unnamed_addr #3 {
bb.a:
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrRNtNtB7_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.c, label %_RNvXs0_NtCs3oUPovFnLWP_4core5allocRNtNtCs1xwejQucwHj_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %1 = atomicrmw add ptr %i.d, i64 -1 release, align 8
  %i.e = icmp eq i64 %1, 1
  br i1 %i.e, label %bb.c, label %_RNvXs0_NtCs3oUPovFnLWP_4core5allocRNtNtCs1xwejQucwHj_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  %i.f = load i64, ptr %i.b, align 8
  %i.g = add i64 %i.f, 23
  %i.h = and i64 %i.g, -8                         ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RNvXs0_NtCs3oUPovFnLWP_4core5allocRNtNtCs1xwejQucwHj_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr %i.j, i64 %i.h, i64 8) #38
  br label %_RNvXs0_NtCs3oUPovFnLWP_4core5allocRNtNtCs1xwejQucwHj_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit

_RNvXs0_NtCs3oUPovFnLWP_4core5allocRNtNtCs1xwejQucwHj_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = add i64 %i.d, -1
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.i, ptr %0, align 8, !captures !6
  store i64 %i.h, ptr %i.c, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 1, i64 0, i64 0, ptr nonnull align 8 @31) #33
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi ptr [ %i.g, %bb.c ], [ null, %bb.a ]
  %i.j = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.k = insertvalue { ptr, i64 } %i.j, i64 %i.b, 1
  ret { ptr, i64 } %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXs_NtCs3U9i7nQCKwt_15find_msvc_tools10find_toolsNtB4_3EnvINtNtCs3oUPovFnLWP_4core7convert5AsRefNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE6as_ref(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %i.a, -1
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %.pn6.idx.i = select i1 %i.b, i64 16, i64 0
  %.pn6.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.pn6.idx.i
  %.pn4.in.i = getelementptr i8, ptr %0, i64 16
  %.pn4.i = load i64, ptr %.pn4.in.i, align 8
  %.pn3.i = insertvalue { ptr, i64 } poison, ptr %.pn6.i, 0
  %.pn.i = insertvalue { ptr, i64 } %.pn3.i, i64 %.pn4.i, 1
  ret { ptr, i64 } %.pn.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs_NtNtCs3oUPovFnLWP_4core3ops12control_flowINtB4_11ControlFlowNtNtCsaL1QbXo9JQH_3std4path7PathBufEINtNtB6_9try_trait12FromResidualIBK_B12_zEE13from_residualCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, i64 } @_RNvXs_NtNtCs3oUPovFnLWP_4core3ops12control_flowINtB4_11ControlFlowjEINtNtB6_9try_trait12FromResidualIBK_jzEE13from_residualCs3U9i7nQCKwt_15find_msvc_tools(i64 %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %0, 1
  ret { i64, i64 } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3ops12control_flowINtB4_11ControlFlowuEINtNtB6_9try_trait12FromResidualIBK_uzEE13from_residualCs3U9i7nQCKwt_15find_msvc_tools() unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvXs_NtNtCs3oUPovFnLWP_4core5slice4iterRShNtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterCs3U9i7nQCKwt_15find_msvc_tools(ptr %0, i64 %1) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly captures(none) %0, ptr %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  %i.b = icmp ult i64 %2, 16
  br i1 %i.b, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit, label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 %i.a, ptr %1, i64 %2)
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = icmp eq i64 %i.d, 1
  br label %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.sroa.04.09.i = phi i64 [ %i.i, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.09.i
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp eq i8 %i.g, %i.a                    ; 2 uses
  %i.i = add nuw nsw i64 %.sroa.04.09.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %2
  %or.cond = select i1 %i.h, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit, label %.lr.ph.i

_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %.lr.ph.i, %.preheader.i, %bb.b
  %.sroa.0.1.i = phi i1 [ %i.e, %bb.b ], [ false, %.preheader.i ], [ %i.h, %.lr.ph.i ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutuEp6OutputINtNtB15_6result6ResultuNtNtNtB15_2io5error5ErrorENtNtB15_6marker4SendNtB2H_4SyncEL_EENtNtB13_4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2D_4SyncEL_EECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecPaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBG_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBD_EECs3U9i7nQCKwt_15find_msvc_tools.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBD_EECs3U9i7nQCKwt_15find_msvc_tools.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add i64 %.sroa.0.0.i1, 1                 ; 4 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBC_EECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBC_EECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %i.m) #35
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBD_EECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXsv_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexNtNtBP_5range9RangeFullE5indexCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #2 {
end_hunk_4
