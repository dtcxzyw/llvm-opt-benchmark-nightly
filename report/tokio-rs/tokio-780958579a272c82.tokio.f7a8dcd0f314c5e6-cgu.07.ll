Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.07?download=true
inline.NumInlined: 365
inline.NumDeleted: 133
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque7DropperNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool4TaskEEB1F_:bb.a
  %i.b = icmp eq i64 %i.d, %.8.val
  br i1 %i.b, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB4_7DropperNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool4TaskENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1b_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool4TaskEBJ_.exit.i.i
  %.sroa.0.0.i.i1 = phi i64 [ %i.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool4TaskEBJ_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.0.i.i1
  %i.d = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  invoke void @_RNvXse_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_11UnownedTaskNtNtNtB7_8blocking8schedule16BlockingScheduleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool4TaskEBJ_.exit.i.i unwind label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool4TaskEBJ_.exit7.i.i: ; preds = %.lr.ph3
  %i.e = add nuw nsw i64 %.sroa.0.1.i.i2, 1       ; 2 uses
  %i.f = icmp eq i64 %i.e, %.8.val
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool4TaskEBJ_.exit7.i.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %i.d, %.8.val
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool4TaskEBJ_.exit7.i.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool4TaskEBJ_.exit7.i.i
  %.sroa.0.1.i.i2 = phi i64 [ %i.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool4TaskEBJ_.exit7.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i2
  invoke void @_RNvXse_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_11UnownedTaskNtNtNtB7_8blocking8schedule16BlockingScheduleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool4TaskEBJ_.exit7.i.i unwind label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool4TaskEBJ_.exit7.i.i._crit_edge: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool4TaskEBJ_.exit7.i.i, %bb.b
  resume { ptr, i32 } %i.g

bb.c:                                             ; preds = %.lr.ph3
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RNvXs_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB4_7DropperNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool4TaskENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1b_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool4TaskEBJ_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5LocalINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6handle6HandleEEEBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs3_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queueINtB5_5LocalINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB7_6handle6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBd_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !118, !nonnull !4, !noundef !4
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !118
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBC_NtNtB1e_6handle6HandleEEEEB1k_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBx_NtNtBL_6handle6HandleEEE9drop_slowBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBC_NtNtB1e_6handle6HandleEEEEB1k_.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !121, !nonnull !4, !noundef !4
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !121
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBC_NtNtB1e_6handle6HandleEEEEB1k_.exit1

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBx_NtNtBL_6handle6HandleEEE9drop_slowBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #28
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBC_NtNtB1e_6handle6HandleEEEEB1k_.exit1

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBC_NtNtB1e_6handle6HandleEEEEB1k_.exit1: ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBC_NtNtB1e_6handle6HandleEEEEB1k_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrEECslghKHtsL3a4_5tokio(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = ptrtoint ptr %.val to i64                ; 2 uses
  %i.e = and i64 %i.d, 3
  switch i64 %i.e, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i
    i64 3, label %bb.c
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i
    i64 1, label %bb.d
  ], !prof !14

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.g = and i64 %i.d, 1095216660480
  %i.h = icmp ne i64 %i.g, 1095216660480
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.h)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !124
  store i8 3, ptr %i.a, align 8, !alias.scope !124
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB4_2io5error5ErrorEEB14_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB4_2io5error5ErrorEEB13_.exit
  %.sroa.0.09 = phi i64 [ 0, %.lr.ph ], [ %i.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB4_2io5error5ErrorEEB13_.exit ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.09 ; 3 uses
  %i.e = add nuw nsw i64 %.sroa.0.09, 1           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.f = load i32, ptr %i.d, align 8, !range !13, !alias.scope !135, !noundef !4
  %.not.i = icmp eq i32 %i.f, 2
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !139, !nonnull !4, !noundef !4
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !139
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB4_2io5error5ErrorEEB13_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsaL1QbXo9JQH_3std2fs8DirEntryE9drop_slowCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB4_2io5error5ErrorEEB13_.exit unwind label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val.i = load ptr, ptr %i.k, align 8, !alias.scope !135, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !135
  %i.l = ptrtoint ptr %.val.i to i64              ; 2 uses
  %i.m = and i64 %i.l, 3
  switch i64 %i.m, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i
    i64 3, label %bb.f
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i
    i64 1, label %bb.g
  ], !prof !14

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.n = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.o = and i64 %i.l, 1095216660480
  %i.p = icmp ne i64 %i.o, 1095216660480
  call void @llvm.assume(i1 %i.n)
  call void @llvm.assume(i1 %i.p)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %.val.i, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  store ptr %i.q, ptr %i.c, align 8, !alias.scope !140, !noalias !135
  store i8 3, ptr %i.a, align 8, !alias.scope !140, !noalias !135
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i unwind label %bb.i, !noalias !135

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !135
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB4_2io5error5ErrorEEB13_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB4_2io5error5ErrorEEB13_.exit: ; preds = %bb.d, %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i
  %i.r = icmp eq i64 %i.e, %1
  br i1 %i.r, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB4_2io5error5ErrorEEB13_.exit, %bb.a
  ret void

bb.h:                                             ; preds = %.lr.ph19
  %i.s = add nuw nsw i64 %.sroa.0.117, 1          ; 2 uses
  %i.t = icmp eq i64 %i.s, %1
  br i1 %i.t, label %._crit_edge20, label %.lr.ph19

bb.i:                                             ; preds = %bb.g, %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = icmp eq i64 %i.e, %1
  br i1 %i.v, label %._crit_edge20, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.i, %bb.h
  %.sroa.0.117 = phi i64 [ %i.s, %bb.h ], [ %i.e, %bb.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.117
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB4_2io5error5ErrorEEB13_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.w) #25
          to label %bb.h unwind label %bb.j

._crit_edge20:                                    ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.u

bb.j:                                             ; preds = %.lr.ph19
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr null, ptr %i.c, align 8
  %i.d = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @3, ptr noundef nonnull %1, ptr noundef nonnull %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrEECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #25
          to label %bb.l unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !noundef !4 ; 5 uses
  %.not = icmp eq ptr %i.f, null                  ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.not, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit, !prof !15

bb.e:                                             ; preds = %bb.c
  br i1 %.not, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i
    i64 3, label %bb.g
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i
    i64 1, label %bb.h
  ], !prof !14

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.i = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  call void @llvm.assume(i1 %i.i)
  call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i

bb.h:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %i.f, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !143
  store i8 3, ptr %i.a, align 8, !alias.scope !143
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i, %bb.e, %bb.d
  %.sroa.0.0 = phi ptr [ %i.f, %bb.d ], [ null, %bb.e ], [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.0

bb.i:                                             ; preds = %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #24
          to label %bb.j unwind label %bb.b

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.l:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazy7destroyNtNtNtCslghKHtsL3a4_5tokio7runtime4park10ParkThreadEB1a_(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !12, !noundef !4
  store i8 2, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtNtCsaL1QbXo9JQH_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtNtCslghKHtsL3a4_5tokio7runtime4park10ParkThreadE0EB1E_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !153, !nonnull !4, !noundef !4
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !153
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtNtCsaL1QbXo9JQH_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtNtCslghKHtsL3a4_5tokio7runtime4park10ParkThreadE0EB1E_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCslghKHtsL3a4_5tokio7runtime4park5InnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #28
          to label %_RINvNtNtCsaL1QbXo9JQH_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtNtCslghKHtsL3a4_5tokio7runtime4park10ParkThreadE0EB1E_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCsaL1QbXo9JQH_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop() #27
          to label %.noexc1.i unwind label %bb.e

.noexc1.i:                                        ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtNtCsaL1QbXo9JQH_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtNtCslghKHtsL3a4_5tokio7runtime4park10ParkThreadE0EB1E_.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker12with_currentuNCNvMs2_B4_NtNtB6_6handle6Handle13schedule_task0E0Bc_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr nofree noundef align 8 captures(address_is_null) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !range !6, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6Handle16push_remote_task(ptr noundef nonnull align 8 %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.4.0.copyload), !noalias !158
  tail call void @_RNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6Handle20notify_parked_remote(ptr noundef nonnull align 8 %.sroa.0.0.copyload), !noalias !158
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %.pre.i2 = load ptr, ptr %i.a, align 8, !alias.scope !159 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !159, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !noalias !159, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = icmp eq ptr %.pre.i2, %i.h
  br i1 %i.i, label %bb.f, label %bb.e

end_hunk_0
begin_hunk_1_@_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel20next_expiration_time:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load i64, ptr %i.d, align 8
  %.sroa.3.0 = select i1 %i.c, i64 %i.e, i64 undef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = insertvalue { i64, i64 } poison, i64 %i.b, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = tail call { ptr, i64 } @_RINvXsb_NtNtCs1xwejQucwHj_5alloc5boxed4iterINtB8_3BoxSNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5level5LevelEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1X_8adapters3map3MapINtNtNtB1Z_3ops5range5RangejENvMBS_BQ_3newEEB10_(i64 noundef 0, i64 noundef 6) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 3 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.e = icmp eq i64 %i.d, 6
  br i1 %i.e, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtCs1xwejQucwHj_5alloc5boxed3BoxANtNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5level5Levelj6_EIBI_SB1h_EE6unwrapB1r_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !182
  store ptr %i.c, ptr %i.a, align 8, !noalias !182
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %i.d, ptr %i.f, align 8, !noalias !182
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #24
          to label %bb.e unwind label %bb.c, !noalias !182

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %.val1.i = load i64, ptr %i.f, align 8, !alias.scope !183, !noalias !182, !noundef !4 ; 2 uses
  %i.h = icmp eq i64 %.val1.i, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5level5LevelEEB1l_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !183, !noalias !182, !nonnull !4, !noundef !4
  %i.i = mul nuw nsw i64 %.val1.i, 1040
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef 8) #29, !noalias !184
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5level5LevelEEB1l_.exit

bb.e:                                             ; preds = %bb.b
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5level5LevelEEB1l_.exit: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.g

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtCs1xwejQucwHj_5alloc5boxed3BoxANtNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5level5Levelj6_EIBI_SB1h_EE6unwrapB1r_.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.j, align 8
  store ptr %i.c, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel4poll(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !204, !noundef !4 ; 2 uses
  %.not.i42 = icmp eq ptr %i.j, null
  br i1 %.not.i42, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit11, %bb.a
  %.lcssa = phi ptr [ %i.j, %bb.a ], [ %i.bg, %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit11 ] ; 3 uses
  %i.o = load ptr, ptr %.lcssa, align 8, !noalias !205, !noundef !4 ; 3 uses
  store ptr %i.o, ptr %i.i, align 8, !alias.scope !205
  %.not6.i = icmp eq ptr %i.o, null
  br i1 %.not6.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr null, ptr %i.p, align 8, !noalias !205
  br label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_.exit7.sink.split

bb.c:                                             ; preds = %._crit_edge
  store ptr null, ptr %i.h, align 8, !alias.scope !205
  br label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_.exit7.sink.split

bb.d:                                             ; preds = %.lr.ph, %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit11
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call fastcc void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel15next_expiration(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.q = load i64, ptr %i.g, align 8, !range !6, !noundef !4
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.e, label %bb.f

_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_.exit7.sink.split: ; preds = %bb.c, %bb.b, %bb.k, %bb.l
  %.sink = phi ptr [ %i.w, %bb.k ], [ %i.w, %bb.l ], [ %.lcssa, %bb.b ], [ %.lcssa, %bb.c ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink, i8 0, i64 16, i1 false), !noalias !4
  br label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_.exit7

_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_.exit7: ; preds = %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_.exit7.sink.split, %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit ], [ %.sink, %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_.exit7.sink.split ]
  ret ptr %.sroa.0.0

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.k, align 8, !noundef !4 ; 7 uses
  %.not3 = icmp ugt i64 %i.s, %1
  br i1 %.not3, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !206)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %1, ptr %i.f, align 8, !noalias !206
  %i.t = load i64, ptr %i.n, align 8, !alias.scope !206, !noundef !4 ; 2 uses
  %.not.i4 = icmp ugt i64 %i.t, %1
  br i1 %.not.i4, label %bb.g, label %bb.h, !prof !15

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !206
  store ptr %i.n, ptr %i.e, align 8, !noalias !206
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsX_NtNtCs3oUPovFnLWP_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !206
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.u, align 8, !noalias !206
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsX_NtNtCs3oUPovFnLWP_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !206
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @23, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #23
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.v = icmp ugt i64 %1, %i.t
  br i1 %i.v, label %bb.i, label %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit

bb.i:                                             ; preds = %bb.h
  store i64 %1, ptr %i.n, align 8, !alias.scope !206
  br label %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit

_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.w = load ptr, ptr %i.i, align 8, !alias.scope !207, !noundef !4 ; 4 uses
  %.not.i5 = icmp eq ptr %i.w, null
  br i1 %.not.i5, label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_.exit7, label %bb.j

bb.j:                                             ; preds = %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit
  %i.x = load ptr, ptr %i.w, align 8, !noalias !207, !noundef !4 ; 3 uses
  store ptr %i.x, ptr %i.i, align 8, !alias.scope !207
  %.not6.i6 = icmp eq ptr %i.x, null
  br i1 %.not6.i6, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr null, ptr %i.y, align 8, !noalias !207
  br label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_.exit7.sink.split

bb.l:                                             ; preds = %bb.j
  store ptr null, ptr %i.h, align 8, !alias.scope !207
  br label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_.exit7.sink.split

bb.m:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.z = load i64, ptr %i.l, align 8, !alias.scope !209, !noundef !4 ; 3 uses
  %i.aa = icmp ult i64 %i.z, 6
  br i1 %i.aa, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ab = load ptr, ptr %0, align 8, !alias.scope !208, !nonnull !4, !noundef !4 ; 2 uses
  %i.ac = getelementptr inbounds nuw [1040 x i8], ptr %i.ab, i64 %i.z ; 2 uses
  %i.ad = load i64, ptr %i.m, align 8, !alias.scope !209, !noundef !4 ; 4 uses
  %i.ae = and i64 %i.ad, 63
  %i.af = shl nuw i64 1, %i.ae
  %i.ag = xor i64 %i.af, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 1032 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !210, !noundef !4
  %i.aj = and i64 %i.ai, %i.ag
  store i64 %i.aj, ptr %i.ah, align 8, !noalias !210
  %i.ak = icmp ult i64 %i.ad, 64
  br i1 %i.ak, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.m
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.z, i64 noundef 6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #23, !noalias !210
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ad ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !noalias !210, !noundef !4 ; 2 uses
  %.not.i11.i = icmp eq ptr %i.an, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false), !noalias !210
  br i1 %.not.i11.i, label %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel18process_expiration.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p
  %.promoted.i = load ptr, ptr %i.h, align 8, !alias.scope !208
  %.promoted15.i = load ptr, ptr %i.i, align 8, !alias.scope !208
  br label %.lr.ph.i.a

bb.q:                                             ; preds = %bb.n
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #23, !noalias !210
  unreachable

.lr.ph.i.a:                                       ; preds = %bb.aa, %.lr.ph.i
  %2 = phi ptr [ %.promoted15.i, %.lr.ph.i ], [ %4, %bb.aa ] ; 3 uses
  %.sroa.4.01214.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %.sroa.4.01213.i, %bb.aa ] ; 5 uses
  %.sroa.4.012.i = phi ptr [ %i.an, %.lr.ph.i ], [ %i.ao, %bb.aa ] ; 13 uses
  %i.ao = load ptr, ptr %.sroa.4.012.i, align 8, !noalias !211, !noundef !4 ; 3 uses
  %.not6.i.i = icmp eq ptr %i.ao, null            ; 2 uses
  br i1 %.not6.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr null, ptr %i.ap, align 8, !noalias !211
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.012.i, i8 0, i64 16, i1 false), !noalias !211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !210
  store ptr %.sroa.4.012.i, ptr %i.d, align 8, !noalias !210
  %i.aq = call { i64, i64 } @_RNvMs9_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_11TimerHandle12mark_pending(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, i64 noundef %i.s), !noalias !210 ; 2 uses
  %i.ar = extractvalue { i64, i64 } %i.aq, 0
  %i.as = trunc nuw i64 %i.ar to i1
  br i1 %i.as, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.at = extractvalue { i64, i64 } %i.aq, 1
  %i.au = xor i64 %i.at, %i.s
  %i.av = or i64 %i.au, 63
  %spec.store.select.i = call i64 @llvm.umin.i64(i64 %i.av, i64 68719476734)
  %i.aw = call range(i64 28, 59) i64 @llvm.ctlz.i64(i64 %spec.store.select.i, i1 true)
  %i.ax = xor i64 %i.aw, 62                       ; 2 uses
  %.lhs.trunc.i = trunc nuw nsw i64 %i.ax to i8
  %i.ay = udiv i8 %.lhs.trunc.i, 6
  %.zext.i = zext nneg i8 %i.ay to i64            ; 2 uses
  %i.az = icmp samesign ult i64 %i.ax, 36
  br i1 %i.az, label %bb.ab, label %bb.ac

bb.u:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !210
  store ptr %.sroa.4.012.i, ptr %i.c, align 8, !noalias !213
  %i.ba = icmp eq ptr %.sroa.4.01214.i, %.sroa.4.012.i
  br i1 %i.ba, label %bb.w, label %bb.v, !prof !17

bb.v:                                             ; preds = %bb.u
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i, i64 8
  store ptr %.sroa.4.01214.i, ptr %i.bb, align 8, !noalias !213
  store ptr null, ptr %.sroa.4.012.i, align 8, !noalias !213
  %.not1.i.i = icmp eq ptr %.sroa.4.01214.i, null
  br i1 %.not1.i.i, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.u
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedINtNtB4_6option6OptionINtNtNtB4_3ptr8non_null7NonNullNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5entry11TimerSharedEEBM_EB1L_(i8 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #23, !noalias !209
  unreachable

bb.x:                                             ; preds = %bb.v
  store ptr %.sroa.4.012.i, ptr %.sroa.4.01214.i, align 8, !noalias !213
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  store ptr %.sroa.4.012.i, ptr %i.h, align 8, !alias.scope !214
  %.not2.i.i = icmp eq ptr %2, null
  br i1 %.not2.i.i, label %bb.z, label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE10push_frontB9_.exit.i

bb.z:                                             ; preds = %bb.y
  store ptr %.sroa.4.012.i, ptr %i.i, align 8, !alias.scope !214
  br label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE10push_frontB9_.exit.i

_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE10push_frontB9_.exit.i: ; preds = %bb.z, %bb.y
  %3 = phi ptr [ %2, %bb.y ], [ %.sroa.4.012.i, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !210
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE10push_frontB9_.exit.i
  %4 = phi ptr [ %2, %bb.ab ], [ %3, %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE10push_frontB9_.exit.i ]
  %.sroa.4.01213.i = phi ptr [ %.sroa.4.01214.i, %bb.ab ], [ %.sroa.4.012.i, %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE10push_frontB9_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !210
  br i1 %.not6.i.i, label %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel18process_expiration.exit, label %.lr.ph.i.a

bb.ab:                                            ; preds = %bb.t
  %i.bc = getelementptr inbounds nuw [1040 x i8], ptr %i.ab, i64 %.zext.i
  call void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5levelNtB2_5Level9add_entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(1040) %i.bc, ptr noundef nonnull %.sroa.4.012.i), !noalias !210
  br label %bb.aa

bb.ac:                                            ; preds = %bb.t
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.zext.i, i64 noundef 6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #23, !noalias !210
  unreachable

_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel18process_expiration.exit: ; preds = %bb.aa, %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.s, ptr %i.b, align 8, !noalias !215
  %i.bd = load i64, ptr %i.n, align 8, !alias.scope !215, !noundef !4 ; 2 uses
  %.not.i8 = icmp ugt i64 %i.bd, %i.s
  br i1 %.not.i8, label %bb.ad, label %bb.ae, !prof !15

bb.ad:                                            ; preds = %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel18process_expiration.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !215
  store ptr %i.n, ptr %i.a, align 8, !noalias !215
  %.sroa.42.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsX_NtNtCs3oUPovFnLWP_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i9, align 8, !noalias !215
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.be, align 8, !noalias !215
  %.sroa.46.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsX_NtNtCs3oUPovFnLWP_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i10, align 8, !noalias !215
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @23, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #23
  unreachable

bb.ae:                                            ; preds = %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel18process_expiration.exit
  %i.bf = icmp ugt i64 %i.s, %i.bd
  br i1 %i.bf, label %bb.af, label %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit11

bb.af:                                            ; preds = %bb.ae
  store i64 %i.s, ptr %i.n, align 8, !alias.scope !215
  br label %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit11

_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit11: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bg = load ptr, ptr %i.i, align 8, !alias.scope !216, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %bb.d, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel6insert(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = call noundef i64 @_RNvMs9_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_11TimerHandle9sync_when(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.not = icmp ugt i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = xor i64 %i.d, %i.b
  %i.f = or i64 %i.e, 63
  %spec.store.select = call i64 @llvm.umin.i64(i64 %i.f, i64 68719476734)
  %i.g = call range(i64 28, 59) i64 @llvm.ctlz.i64(i64 %spec.store.select, i1 true)
  %i.h = xor i64 %i.g, 62                         ; 2 uses
  %.lhs.trunc = trunc nuw nsw i64 %i.h to i8
  %i.i = udiv i8 %.lhs.trunc, 6
  %.zext = zext nneg i8 %i.i to i64               ; 2 uses
  %i.j = icmp samesign ult i64 %i.h, 36
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw [1040 x i8], ptr %i.k, i64 %.zext
  call void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5levelNtB2_5Level9add_entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(1040) %i.l, ptr noundef nonnull %1)
  %i.m = inttoptr i64 %i.b to ptr
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.zext, i64 noundef 6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #23
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.c
  %.sroa.3.0 = phi ptr [ %i.m, %bb.c ], [ %1, %bb.a ]
  %.sroa.0.0 = phi i64 [ 0, %bb.c ], [ 1, %bb.a ]
  %i.n = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.o = insertvalue { i64, ptr } %i.n, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel6remove(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_RNvMs6_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_11TimerShared15registered_when(ptr noundef nonnull align 8 %1) ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.d = load ptr, ptr %1, align 8, !noalias !219, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noalias !219, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.f, ptr %i.g, align 8, !noalias !219
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !219, !noundef !4
  %.not6.i = icmp eq ptr %i.h, %1
  br i1 %.not6.i, label %bb.f, label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE6removeB9_.exit

bb.e:                                             ; preds = %bb.f, %bb.c
  %i.i = phi ptr [ %i.k, %bb.f ], [ %i.f, %bb.c ] ; 2 uses
  %.not7.i = icmp eq ptr %i.i, null
  br i1 %.not7.i, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !219, !noundef !4 ; 2 uses
  store ptr %i.k, ptr %i.c, align 8, !alias.scope !219
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %1, align 8, !noalias !219, !noundef !4
  store ptr %i.l, ptr %i.i, align 8, !noalias !219
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !219, !noundef !4
  %.not9.i = icmp eq ptr %i.n, %1
  br i1 %.not9.i, label %bb.j, label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE6removeB9_.exit

bb.i:                                             ; preds = %bb.j, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !noalias !219
  br label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE6removeB9_.exit

bb.j:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %1, align 8, !noalias !219, !noundef !4
  store ptr %i.o, ptr %i.m, align 8, !alias.scope !219
  br label %bb.i

bb.k:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noundef !4
  %i.r = xor i64 %i.q, %i.a
  %i.s = or i64 %i.r, 63
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.s, i64 68719476734)
  %i.t = tail call range(i64 28, 59) i64 @llvm.ctlz.i64(i64 %spec.store.select, i1 true)
  %i.u = xor i64 %i.t, 62                         ; 2 uses
  %.lhs.trunc = trunc nuw nsw i64 %i.u to i8
  %i.v = udiv i8 %.lhs.trunc, 6
  %.zext = zext nneg i8 %i.v to i64               ; 2 uses
  %i.w = icmp samesign ult i64 %i.u, 36
  br i1 %i.w, label %bb.l, label %bb.m

_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE6removeB9_.exit: ; preds = %bb.i, %bb.h, %bb.d, %bb.l
  ret void

bb.l:                                             ; preds = %bb.k
  %i.x = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds nuw [1040 x i8], ptr %i.x, i64 %.zext
  tail call void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5levelNtB2_5Level12remove_entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(1040) %i.y, ptr noundef nonnull %1)
  br label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE6removeB9_.exit

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.zext, i64 noundef 6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel7poll_at(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel15next_expiration(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.b = load i64, ptr %i.a, align 8, !range !6, !noundef !4 ; 2 uses
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load i64, ptr %i.d, align 8
  %.sroa.3.0 = select i1 %i.c, i64 %i.e, i64 undef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = insertvalue { i64, i64 } poison, i64 %i.b, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime7metrics7runtimeNtB2_14RuntimeMetrics15num_alive_tasks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = trunc nuw i64 %.val to i1
  br i1 %i.b, label %bb.b, label %bb.c
end_hunk_1
begin_hunk_2_@llvm.experimental.noalias.scope.decl
!23 = distinct !{!23, !22, !"_RNCINvNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker12with_currentuNCNvMs2_B4_NtNtB6_6handle6Handle13schedule_task0E0Bc_: argument 0"}
!24 = distinct !{!24, i1 true, !"_RNCNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB9_6handle6Handle13schedule_task0Bf_"}
!25 = distinct !{!25, !24, !"_RNCNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB9_6handle6Handle13schedule_task0Bf_: argument 0"}
!26 = !{!25, !23}
!27 = distinct !{!27, i1 true, !"_RNCNvNtNtCslghKHtsL3a4_5tokio7runtime7context5defer0B7_"}
!28 = distinct !{!28, !27, !"_RNCNvNtNtCslghKHtsL3a4_5tokio7runtime7context5defer0B7_: argument 0"}
!29 = distinct !{!29, i1 true, !"_RNvMs3_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_7Context5defer"}
!30 = distinct !{!30, !29, !"_RNvMs3_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_7Context5defer: argument 0"}
!31 = distinct !{!31, i1 true, !"_RNCNvNtNtCslghKHtsL3a4_5tokio7runtime7context5defer0B7_"}
!32 = distinct !{!32, !31, !"_RNCNvNtNtCslghKHtsL3a4_5tokio7runtime7context5defer0B7_: argument 0"}
!33 = distinct !{null}
!34 = !{!30, !28}
!35 = !{!32}
!36 = distinct !{!36, i1 true, !"_RNCNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB7_6HandleENtNtBb_4task8Schedule8schedule0Bd_"}
!37 = distinct !{!37, !36, !"_RNCNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB7_6HandleENtNtBb_4task8Schedule8schedule0Bd_: argument 0"}
!38 = !{!37}
!39 = distinct !{!39, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime4park10ParkThreadEBH_"}
!40 = distinct !{!40, !39, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime4park10ParkThreadEBH_: argument 0"}
!41 = distinct !{!41, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCslghKHtsL3a4_5tokio7runtime4park5InnerEEB1f_"}
!42 = distinct !{!42, !41, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCslghKHtsL3a4_5tokio7runtime4park5InnerEEB1f_: argument 0"}
!43 = distinct !{!43, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCslghKHtsL3a4_5tokio7runtime4park5InnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_"}
!44 = distinct !{!44, !43, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCslghKHtsL3a4_5tokio7runtime4park5InnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_: argument 0"}
!45 = !{!"branch_weights", i32 2, i32 385005382, i32 1761597465, i32 880799}
!46 = !{!44, !42, !40}
!47 = distinct !{!47, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryEBH_"}
!48 = distinct !{!48, !47, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryEBH_: argument 0"}
!49 = distinct !{!49, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsaL1QbXo9JQH_3std2fs8DirEntryEECslghKHtsL3a4_5tokio"}
!50 = distinct !{!50, !49, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsaL1QbXo9JQH_3std2fs8DirEntryEECslghKHtsL3a4_5tokio: argument 0"}
!51 = distinct !{!51, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsaL1QbXo9JQH_3std2fs8DirEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio"}
!52 = distinct !{!52, !51, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsaL1QbXo9JQH_3std2fs8DirEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio: argument 0"}
!53 = distinct !{!53, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECslghKHtsL3a4_5tokio"}
!54 = distinct !{!54, !53, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECslghKHtsL3a4_5tokio: argument 0"}
!55 = !{!48}
!56 = !{!50}
!57 = !{!52}
!58 = !{!52, !50, !48}
!59 = !{!54}
!60 = distinct !{!60, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECslghKHtsL3a4_5tokio"}
!61 = distinct !{!61, !60, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECslghKHtsL3a4_5tokio: argument 0"}
!62 = !{!61}
!63 = distinct !{!63, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEBL_"}
!64 = distinct !{!64, !63, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEBL_: argument 0"}
!65 = distinct !{!65, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEEB14_"}
!66 = distinct !{!66, !65, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEEB14_: argument 0"}
!67 = distinct !{!67, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBC_NtNtB1e_6handle6HandleEEEEB1k_"}
!68 = distinct !{!68, !67, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBC_NtNtB1e_6handle6HandleEEEEB1k_: argument 0"}
!69 = distinct !{!69, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBx_NtNtBL_6handle6HandleEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBR_"}
!70 = distinct !{!70, !69, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBx_NtNtBL_6handle6HandleEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBR_: argument 0"}
!71 = distinct !{!71, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5LocalINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6handle6HandleEEEBM_"}
!72 = distinct !{!72, !71, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5LocalINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6handle6HandleEEEBM_: argument 0"}
!73 = distinct !{!73, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBC_NtNtB1e_6handle6HandleEEEEB1k_"}
!74 = distinct !{!74, !73, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBC_NtNtB1e_6handle6HandleEEEEB1k_: argument 0"}
!75 = distinct !{!75, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBx_NtNtBL_6handle6HandleEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBR_"}
!76 = distinct !{!76, !75, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBx_NtNtBL_6handle6HandleEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBR_: argument 0"}
!77 = distinct !{!77, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6ParkerEEB17_"}
!78 = distinct !{!78, !77, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6ParkerEEB17_: argument 0"}
!79 = distinct !{!79, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6ParkerEBL_"}
!80 = distinct !{!80, !79, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6ParkerEBL_: argument 0"}
!81 = distinct !{!81, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park5InnerEEB1j_"}
!82 = distinct !{!82, !81, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park5InnerEEB1j_: argument 0"}
!83 = distinct !{!83, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park5InnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_"}
!84 = distinct !{!84, !83, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park5InnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_: argument 0"}
!85 = distinct !{!85, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6ParkerEEB17_"}
!86 = distinct !{!86, !85, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6ParkerEEB17_: argument 0"}
!87 = distinct !{!87, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6ParkerEBL_"}
!88 = distinct !{!88, !87, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6ParkerEBL_: argument 0"}
!89 = distinct !{!89, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park5InnerEEB1j_"}
!90 = distinct !{!90, !89, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park5InnerEEB1j_: argument 0"}
!91 = distinct !{!91, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park5InnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_"}
!92 = distinct !{!92, !91, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park5InnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_: argument 0"}
!93 = !{!66, !64}
!94 = !{!68}
!95 = !{!70}
!96 = !{!70, !68, !72, !64}
!97 = !{!70, !68}
!98 = !{!74}
!99 = !{!76}
!100 = !{!76, !74, !72, !64}
!101 = !{!76, !74}
!102 = !{!78}
!103 = !{!78, !64}
!104 = !{!84, !82, !80, !78}
!105 = !{!86}
!106 = !{!86, !64}
!107 = !{!92, !90, !88, !86}
!108 = distinct !{!108, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBC_NtNtB1e_6handle6HandleEEEEB1k_"}
!109 = distinct !{!109, !108, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBC_NtNtB1e_6handle6HandleEEEEB1k_: argument 0"}
!110 = distinct !{!110, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBx_NtNtBL_6handle6HandleEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBR_"}
!111 = distinct !{!111, !110, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBx_NtNtBL_6handle6HandleEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBR_: argument 0"}
!112 = distinct !{!112, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBC_NtNtB1e_6handle6HandleEEEEB1k_"}
!113 = distinct !{!113, !112, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBC_NtNtB1e_6handle6HandleEEEEB1k_: argument 0"}
!114 = distinct !{!114, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBx_NtNtBL_6handle6HandleEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBR_"}
!115 = distinct !{!115, !114, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBx_NtNtBL_6handle6HandleEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBR_: argument 0"}
!116 = !{!109}
!117 = !{!111}
!118 = !{!111, !109}
!119 = !{!113}
!120 = !{!115}
!121 = !{!115, !113}
!122 = distinct !{!122, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECslghKHtsL3a4_5tokio"}
!123 = distinct !{!123, !122, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECslghKHtsL3a4_5tokio: argument 0"}
!124 = !{!123}
!125 = distinct !{!125, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB4_2io5error5ErrorEEB13_"}
!126 = distinct !{!126, !125, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB4_2io5error5ErrorEEB13_: argument 0"}
!127 = distinct !{!127, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryEBH_"}
!128 = distinct !{!128, !127, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryEBH_: argument 0"}
!129 = distinct !{!129, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsaL1QbXo9JQH_3std2fs8DirEntryEECslghKHtsL3a4_5tokio"}
!130 = distinct !{!130, !129, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsaL1QbXo9JQH_3std2fs8DirEntryEECslghKHtsL3a4_5tokio: argument 0"}
!131 = distinct !{!131, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsaL1QbXo9JQH_3std2fs8DirEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio"}
!132 = distinct !{!132, !131, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsaL1QbXo9JQH_3std2fs8DirEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio: argument 0"}
!133 = distinct !{!133, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECslghKHtsL3a4_5tokio"}
!134 = distinct !{!134, !133, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECslghKHtsL3a4_5tokio: argument 0"}
!135 = !{!126}
!136 = !{!128}
!137 = !{!130}
!138 = !{!132}
!139 = !{!132, !130, !128, !126}
!140 = !{!134}
!141 = distinct !{!141, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECslghKHtsL3a4_5tokio"}
!142 = distinct !{!142, !141, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECslghKHtsL3a4_5tokio: argument 0"}
!143 = !{!142}
!144 = distinct !{!144, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime4park10ParkThreadEBH_"}
!145 = distinct !{!145, !144, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime4park10ParkThreadEBH_: argument 0"}
!146 = distinct !{!146, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCslghKHtsL3a4_5tokio7runtime4park5InnerEEB1f_"}
!147 = distinct !{!147, !146, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCslghKHtsL3a4_5tokio7runtime4park5InnerEEB1f_: argument 0"}
!148 = distinct !{!148, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCslghKHtsL3a4_5tokio7runtime4park5InnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_"}
!149 = distinct !{!149, !148, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCslghKHtsL3a4_5tokio7runtime4park5InnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_: argument 0"}
!150 = !{!145}
!151 = !{!147}
!152 = !{!149}
!153 = !{!149, !147, !145}
!154 = distinct !{!154, i1 true, !"_RNCNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB9_6handle6Handle13schedule_task0Bf_"}
!155 = distinct !{!155, !154, !"_RNCNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB9_6handle6Handle13schedule_task0Bf_: argument 0"}
!156 = distinct !{!156, i1 true, !"_RNCNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB9_6handle6Handle13schedule_task0Bf_"}
!157 = distinct !{!157, !156, !"_RNCNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB9_6handle6Handle13schedule_task0Bf_: argument 0"}
!158 = !{!155}
!159 = !{!157}
!160 = distinct !{!160, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio"}
!161 = distinct !{!161, !160, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio: argument 0"}
!162 = distinct !{!162, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECslghKHtsL3a4_5tokio"}
!163 = distinct !{!163, !162, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECslghKHtsL3a4_5tokio: argument 0"}
!164 = distinct !{!164, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECslghKHtsL3a4_5tokio"}
!165 = distinct !{!165, !164, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECslghKHtsL3a4_5tokio: argument 0"}
!166 = distinct !{!166, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio"}
!167 = distinct !{!167, !166, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio: argument 0"}
!168 = distinct !{!168, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio"}
!169 = distinct !{!169, !168, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio: argument 0"}
!170 = distinct !{!170, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECslghKHtsL3a4_5tokio"}
!171 = distinct !{!171, !170, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECslghKHtsL3a4_5tokio: argument 0"}
!172 = distinct !{!172, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECslghKHtsL3a4_5tokio"}
!173 = distinct !{!173, !172, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECslghKHtsL3a4_5tokio: argument 0"}
!174 = distinct !{!174, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio"}
!175 = distinct !{!175, !174, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio: argument 0"}
!176 = !{!167, !165, !163, !161}
!177 = !{!175, !173, !171, !169}
!178 = distinct !{!178, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtCs1xwejQucwHj_5alloc5boxed3BoxANtNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5level5Levelj6_EIBI_SB1h_EE6unwrapB1r_"}
!179 = distinct !{!179, !178, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtCs1xwejQucwHj_5alloc5boxed3BoxANtNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5level5Levelj6_EIBI_SB1h_EE6unwrapB1r_: argument 0"}
!180 = distinct !{!180, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5level5LevelEEB1l_"}
!181 = distinct !{!181, !180, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5level5LevelEEB1l_: argument 0"}
!182 = !{!179}
!183 = !{!181}
!184 = !{!181, !179}
!185 = distinct !{!185, i1 true, !"_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_"}
!186 = distinct !{!186, !185, !"_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_: argument 0:pre.rot"}
!187 = distinct !{!187, i1 true, !"_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_"}
!188 = distinct !{!188, !187, !"_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_: argument 0"}
!189 = distinct !{!189, i1 true, !"_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed"}
!190 = distinct !{!190, !189, !"_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed: argument 0"}
!191 = distinct !{!191, i1 true, !"_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_"}
!192 = distinct !{!192, !191, !"_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_: argument 0"}
!193 = distinct !{!193, i1 true, !"_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel18process_expiration"}
!194 = distinct !{!194, !193, !"_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel18process_expiration: argument 0"}
!195 = distinct !{!195, !193, !"_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel18process_expiration: argument 1"}
!196 = distinct !{!196, i1 true, !"_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_"}
!197 = distinct !{!197, !196, !"_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_: argument 0"}
!198 = distinct !{!198, i1 true, !"_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE10push_frontB9_"}
!199 = distinct !{!199, !198, !"_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE10push_frontB9_: argument 0"}
!200 = distinct !{!200, i1 true, !"_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed"}
!201 = distinct !{!201, !200, !"_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed: argument 0"}
!202 = distinct !{!202, i1 true, !"_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_"}
!203 = distinct !{!203, !202, !"_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_: argument 0:h.rot"}
!204 = !{!186}
!205 = !{!188}
!206 = !{!190}
!207 = !{!192}
!208 = !{!194}
!209 = !{!195}
!210 = !{!194, !195}
!211 = !{!197, !194, !195}
!212 = !{!199}
!213 = !{!199, !194, !195}
!214 = !{!199, !194}
!215 = !{!201}
!216 = !{!203}
!217 = distinct !{!217, i1 true, !"_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE6removeB9_"}
!218 = distinct !{!218, !217, !"_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE6removeB9_: argument 0"}
!219 = !{!218}
!220 = distinct !{!220, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs3oUPovFnLWP_4core4task4wake5WakerE8push_mutCslghKHtsL3a4_5tokio"}
!221 = distinct !{!221, !220, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs3oUPovFnLWP_4core4task4wake5WakerE8push_mutCslghKHtsL3a4_5tokio: argument 0"}
!222 = distinct !{!222, !220, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs3oUPovFnLWP_4core4task4wake5WakerE8push_mutCslghKHtsL3a4_5tokio: argument 1"}
!223 = distinct !{null, null}
!224 = !{!221}
!225 = !{!222}
!226 = distinct !{!226, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio"}
!227 = distinct !{!227, !226, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio: argument 0"}
!228 = distinct !{!228, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECslghKHtsL3a4_5tokio"}
!229 = distinct !{!229, !228, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECslghKHtsL3a4_5tokio: argument 0"}
!230 = distinct !{!230, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECslghKHtsL3a4_5tokio"}
!231 = distinct !{!231, !230, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECslghKHtsL3a4_5tokio: argument 0"}
!232 = distinct !{!232, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio"}
!233 = distinct !{!233, !232, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio: argument 0"}
!234 = !{!233, !231, !229, !227}
!235 = !{i64 0, i64 3}
!236 = distinct !{!236, i1 true, !"_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB1a_2io5error5ErrorEE24handle_capacity_increaseB1N_"}
!237 = distinct !{!237, !236, !"_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB1a_2io5error5ErrorEE24handle_capacity_increaseB1N_: argument 0"}
!238 = !{!237}
!239 = distinct !{!239, i1 true, !"_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtB9_4sync3ArcNtNtNtB1a_9scheduler14current_thread6HandleEEE24handle_capacity_increaseB1c_"}
!240 = distinct !{!240, !239, !"_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtB9_4sync3ArcNtNtNtB1a_9scheduler14current_thread6HandleEEE24handle_capacity_increaseB1c_: argument 0"}
!241 = !{!240}
!242 = distinct !{!242, i1 true, !"_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtB9_4sync3ArcNtNtNtB1c_4task5local6SharedEEE24handle_capacity_increaseB1c_"}
!243 = distinct !{!243, !242, !"_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtB9_4sync3ArcNtNtNtB1c_4task5local6SharedEEE24handle_capacity_increaseB1c_: argument 0"}
!244 = !{!243}
!245 = distinct !{!245, i1 true, !"_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool4TaskE24handle_capacity_increaseB1d_"}
!246 = distinct !{!246, !245, !"_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool4TaskE24handle_capacity_increaseB1d_: argument 0"}
!247 = !{!246}
!248 = distinct !{!248, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECslghKHtsL3a4_5tokio"}
!249 = distinct !{!249, !248, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECslghKHtsL3a4_5tokio: argument 0"}
!250 = !{!249}
!251 = distinct !{!251, i1 true, !"_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB1b_2io5error5ErrorEE12slice_rangesNtNtNtB1b_3ops5range9RangeFullEB1O_"}
!252 = distinct !{!252, !251, !"_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB1b_2io5error5ErrorEE12slice_rangesNtNtNtB1b_3ops5range9RangeFullEB1O_: argument 0"}
!253 = !{!252}
!254 = distinct !{!254, i1 true, !"_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtBa_4sync3ArcNtNtNtB1b_9scheduler14current_thread6HandleEEE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1d_"}
!255 = distinct !{!255, !254, !"_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtBa_4sync3ArcNtNtNtB1b_9scheduler14current_thread6HandleEEE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1d_: argument 0"}
!256 = !{!255}
!257 = distinct !{!257, i1 true, !"_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtBa_4sync3ArcNtNtNtB1d_4task5local6SharedEEE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1d_"}
!258 = distinct !{!258, !257, !"_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtBa_4sync3ArcNtNtNtB1d_4task5local6SharedEEE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1d_: argument 0"}
!259 = !{!258}
!260 = distinct !{!260, i1 true, !"_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool4TaskE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1e_"}
!261 = distinct !{!261, !260, !"_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool4TaskE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1e_: argument 0"}
!262 = !{!261}
!263 = distinct !{!263, i1 true, !"_RINvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6inject6syncedNtB6_6Synced3popINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBa_14current_thread6HandleEEBe_"}
!264 = distinct !{!264, !263, !"_RINvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6inject6syncedNtB6_6Synced3popINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBa_14current_thread6HandleEEBe_: argument 0"}
!265 = !{!264}
!266 = distinct !{!266, i1 true, !"_RINvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6inject6syncedNtB6_6Synced3popINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBa_12multi_thread6handle6HandleEEBe_"}
!267 = distinct !{!267, !266, !"_RINvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6inject6syncedNtB6_6Synced3popINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBa_12multi_thread6handle6HandleEEBe_: argument 0"}
!268 = !{!267}
!269 = !{i64 4}
!270 = distinct !{!270, i1 true, !"_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime2io12scheduled_io6WaiterE6removeB9_"}
!271 = distinct !{!271, !270, !"_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime2io12scheduled_io6WaiterE6removeB9_: argument 0"}
!272 = !{!271}
!273 = distinct !{!273, i1 true, !"_RINvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6inject6syncedNtB6_6Synced3popINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBa_12multi_thread6handle6HandleEEBe_"}
!274 = distinct !{!274, !273, !"_RINvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6inject6syncedNtB6_6Synced3popINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBa_12multi_thread6handle6HandleEEBe_: argument 0"}
!275 = !{!274}
!276 = distinct !{!276, i1 true, !"_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw"}
!277 = distinct !{!277, !276, !"_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw: argument 0"}
!278 = distinct !{!278, i1 true, !"_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCslghKHtsL3a4_5tokio"}
!279 = distinct !{!279, !278, !"_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCslghKHtsL3a4_5tokio: argument 0"}
!280 = distinct !{!280, !278, !"_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCslghKHtsL3a4_5tokio: argument 1"}
!281 = distinct !{!281, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECslghKHtsL3a4_5tokio"}
!282 = distinct !{!282, !281, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECslghKHtsL3a4_5tokio: argument 0"}
!283 = !{!277}
!284 = !{!279}
!285 = !{!279, !280}
!286 = !{!282}
!287 = distinct !{null}
end_hunk_2
