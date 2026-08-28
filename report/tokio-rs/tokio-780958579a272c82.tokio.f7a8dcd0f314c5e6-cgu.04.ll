Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.04?download=true
inline.NumInlined: 435
inline.NumDeleted: 229
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEEB21_:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 24 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  invoke void @_RNvXs3_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queueINtB5_5LocalINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB7_6handle6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBd_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEEB14_.exit.i.i.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !31, !nonnull !5, !noundef !5
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !32
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.f, label %.body.i.i.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBx_NtNtBL_6handle6HandleEEE9drop_slowBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #26
          to label %.body.i.i.i.i unwind label %bb.i

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEEB14_.exit.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.k = load ptr, ptr %i.f, align 8, !alias.scope !39, !nonnull !5, !noundef !5
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !40
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5LocalINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6handle6HandleEEEBM_.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBx_NtNtBL_6handle6HandleEEE9drop_slowBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5LocalINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6handle6HandleEEEBM_.exit.i.i.i.i unwind label %bb.l

bb.i:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

.body.i.i.i.i:                                    ; preds = %bb.l, %bb.f, %bb.e, %bb.d
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.t, %bb.l ], [ %i.g, %bb.f ], [ %i.g, %bb.e ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !44, !noundef !5 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.q, label %bb.j

bb.j:                                             ; preds = %.body.i.i.i.i
  %i.r = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !45
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park5InnerE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #26
          to label %bb.q unwind label %bb.o

bb.l:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5LocalINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6handle6HandleEEEBM_.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !55, !noundef !5 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEB1k_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5LocalINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6handle6HandleEEEBM_.exit.i.i.i.i
  %i.x = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !56
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEB1k_.exit.i.i

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park5InnerE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEB1k_.exit.i.i unwind label %bb.p

bb.o:                                             ; preds = %bb.k, %bb.d
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.k, %bb.j, %.body.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.aa, %bb.p ], [ %.pn.i.i.i.i, %bb.k ], [ %.pn.i.i.i.i, %bb.j ], [ %.pn.i.i.i.i, %.body.i.i.i.i ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 120, i64 noundef 8) #24
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEB1k_.exit.i.i: ; preds = %bb.n, %bb.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5LocalINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6handle6HandleEEEBM_.exit.i.i.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 120, i64 noundef 8) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEEB25_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEEB25_.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEB1k_.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread4CoreEEEB1E_(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread4CoreEEB1i_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread4CoreEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %.0.val)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread4CoreEEB1i_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 152, i64 noundef 8) #24
  resume { ptr, i32 } %i.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread4CoreEEB1i_.exit: ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 152, i64 noundef 8) #24
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEEB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !5
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXsd_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB7_9scheduler12multi_thread6handle6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !63, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECslghKHtsL3a4_5tokio.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECslghKHtsL3a4_5tokio.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslghKHtsL3a4_5tokio7runtime5TimerEEB11_(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !64, !noundef !5
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslghKHtsL3a4_5tokio7runtime5TimerEBF_.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslghKHtsL3a4_5tokio7runtime5TimerEBF_.exit: ; preds = %bb.l, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit.i.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs0_NvNtNtNtCslghKHtsL3a4_5tokio7runtime4time5entry1__NtB7_10TimerEntryNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %0)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #25
          to label %bb.i unwind label %bb.m

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.d = load i64, ptr %0, align 8, !range !68, !alias.scope !65, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %1 = icmp eq i64 %i.d, 0
  br i1 %1, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !75, !nonnull !5, !noundef !5
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !75
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit.i.i unwind label %bb.k

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.i = load ptr, ptr %i.e, align 8, !alias.scope !82, !nonnull !5, !noundef !5
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !82
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit.i.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit.i.i unwind label %bb.k

bb.i:                                             ; preds = %bb.k, %bb.c
  %.pn.i.i = phi { ptr, i32 } [ %i.q, %bb.k ], [ %i.c, %bb.c ]
  %i.l = getelementptr i8, ptr %0, i64 48
  %.val3.i.i = load ptr, ptr %i.l, align 8, !align !16, !noundef !5 ; 2 uses
  %i.m = icmp eq ptr %.val3.i.i, null
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5entry11TimerSharedEBJ_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr i8, ptr %0, i64 56
  %.val4.i.i = load ptr, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  invoke void %i.p(ptr noundef %.val4.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5entry11TimerSharedEBJ_.exit.i.i unwind label %bb.m, !inline_history !83

bb.k:                                             ; preds = %bb.h, %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.r = getelementptr i8, ptr %0, i64 48
  %.val.i.i = load ptr, ptr %i.r, align 8, !align !16, !noundef !5 ; 2 uses
  %i.s = icmp eq ptr %.val.i.i, null
  br i1 %i.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslghKHtsL3a4_5tokio7runtime5TimerEBF_.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit.i.i
  %i.t = getelementptr i8, ptr %0, i64 56
  %.val2.i.i = load ptr, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5
  tail call void %i.v(ptr noundef %.val2.i.i), !inline_history !84
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslghKHtsL3a4_5tokio7runtime5TimerEBF_.exit

bb.m:                                             ; preds = %bb.j, %bb.c
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5entry11TimerSharedEBJ_.exit.i.i: ; preds = %bb.j, %bb.i
  resume { ptr, i32 } %.pn.i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEEB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !64, !noundef !5 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %1 = icmp eq i64 %i.a, 0
  br i1 %1, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !94, !nonnull !5, !noundef !5
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !94
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.g = load ptr, ptr %i.c, align 8, !alias.scope !101, !nonnull !5, !noundef !5
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !101
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1m_(ptr noalias nofree noundef nonnull align 128 dereferenceable(896) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 4 uses
  %i.c = load i64, ptr %i.b, align 16, !range !63, !alias.scope !102, !noundef !5
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECslghKHtsL3a4_5tokio.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio.exit.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECslghKHtsL3a4_5tokio.exit.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio.exit.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.e, %bb.c ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6SharedEBJ_(ptr noalias nofree noundef nonnull align 128 dereferenceable(768) %i.a) #25
          to label %bb.g unwind label %bb.w

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECslghKHtsL3a4_5tokio.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio.exit.i.i, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 376
  %.val1.i.i = load i64, ptr %i.h, align 8, !alias.scope !110, !noundef !5 ; 2 uses
  %i.i = icmp eq i64 %.val1.i.i, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime4task4list10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBI_9scheduler14current_thread6HandleEEEBK_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECslghKHtsL3a4_5tokio.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.val.i.i = load ptr, ptr %i.j, align 16, !alias.scope !110, !nonnull !5, !noundef !5
  %i.k = mul nuw nsw i64 %.val1.i.i, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.k, i64 noundef 8) #24, !noalias !107
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime4task4list10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBI_9scheduler14current_thread6HandleEEEBK_.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime4task4list10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBI_9scheduler14current_thread6HandleEEEBK_.exit.i.i: ; preds = %bb.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECslghKHtsL3a4_5tokio.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6config6ConfigEBH_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6SharedEBJ_.exit.i unwind label %bb.h

bb.g:                                             ; preds = %bb.h, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.n, %bb.h ], [ %eh.lpad-body.i, %.body.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 560
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6driver6HandleEBH_(ptr noalias nofree noundef align 8 dereferenceable(208) %i.m) #25
          to label %bb.i unwind label %bb.w

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime4task4list10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBI_9scheduler14current_thread6HandleEEEBK_.exit.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6SharedEBJ_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime4task4list10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBI_9scheduler14current_thread6HandleEEEBK_.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 560
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6driver6HandleEBH_(ptr noalias nofree noundef align 8 dereferenceable(208) %i.o)
          to label %bb.l unwind label %bb.k

bb.i:                                             ; preds = %bb.k, %bb.g
  %.pn2.i = phi { ptr, i32 } [ %i.t, %bb.k ], [ %.pn.i, %bb.g ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !120, !nonnull !5, !noundef !5
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !121
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool7SpawnerEBJ_.exit.i

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool5InnerE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool7SpawnerEBJ_.exit.i unwind label %bb.w

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6SharedEBJ_.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6SharedEBJ_.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !131, !nonnull !5, !noundef !5
  %i.w = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !132
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool7SpawnerEBJ_.exit9.i

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool5InnerE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool7SpawnerEBJ_.exit9.i unwind label %bb.n

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool7SpawnerEBJ_.exit.i: ; preds = %bb.n, %bb.j, %bb.i
  %.pn4.i = phi { ptr, i32 } [ %i.z, %bb.n ], [ %.pn2.i, %bb.j ], [ %.pn2.i, %bb.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 512
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks9TaskHooksEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.y) #25
          to label %common.resume.i unwind label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool7SpawnerEBJ_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool7SpawnerEBJ_.exit9.i: ; preds = %bb.m, %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.ab = load ptr, ptr %i.aa, align 128, !alias.scope !139, !noundef !5 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool7SpawnerEBJ_.exit9.i
  %i.ad = atomicrmw sub ptr %i.ab, i64 1 release, align 8, !noalias !140
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit.i.i

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.aa) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit.i.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.ah = load ptr, ptr %i.ag, align 16, !alias.scope !148, !noundef !5 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %common.resume.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aj = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !149
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %common.resume.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ag) #26
          to label %common.resume.i unwind label %bb.v

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit.i.i: ; preds = %bb.p, %bb.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool7SpawnerEBJ_.exit9.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.am = load ptr, ptr %i.al, align 16, !alias.scope !157, !noundef !5 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEBJ_.exit, label %bb.t

bb.t:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit.i.i
  %i.ao = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !158
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEBJ_.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.al) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEBJ_.exit

bb.v:                                             ; preds = %bb.s
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume.i:                                  ; preds = %bb.s, %bb.r, %bb.q, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool7SpawnerEBJ_.exit.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.af, %bb.s ], [ %i.af, %bb.r ], [ %.pn4.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool7SpawnerEBJ_.exit.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.w:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool7SpawnerEBJ_.exit.i, %bb.j, %bb.g, %.body.i
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEBJ_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit.i.i, %bb.t, %bb.u
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread4CoreEEB1i_(ptr nonnull %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread4CoreEBJ_(ptr noalias nofree noundef align 8 dereferenceable(152) %.0.val)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 152, i64 noundef 8) #24
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 152, i64 noundef 8) #24
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtBI_4sync3ArcNtNtNtB1D_9scheduler14current_thread6HandleEEEEB1F_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtB9_4sync3ArcNtNtNtB1a_9scheduler14current_thread6HandleEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtB7_4sync3ArcNtNtNtBR_9scheduler14current_thread6HandleEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtBG_4sync3ArcNtNtNtB1k_9scheduler14current_thread6HandleEEEEB1m_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtB7_4sync3ArcNtNtNtBR_9scheduler14current_thread6HandleEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtBG_4sync3ArcNtNtNtB1k_9scheduler14current_thread6HandleEEEEB1m_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5LocalINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6handle6HandleEEEBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs3_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queueINtB5_5LocalINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB7_6handle6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBd_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !169, !nonnull !5, !noundef !5
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !169
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBC_NtNtB1e_6handle6HandleEEEEB1k_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBx_NtNtBL_6handle6HandleEEE9drop_slowBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBC_NtNtB1e_6handle6HandleEEEEB1k_.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !176, !nonnull !5, !noundef !5
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !176
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBC_NtNtB1e_6handle6HandleEEEEB1k_.exit1

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBx_NtNtBL_6handle6HandleEEE9drop_slowBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBC_NtNtB1e_6handle6HandleEEEEB1k_.exit1

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBC_NtNtB1e_6handle6HandleEEEEB1k_.exit1: ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBC_NtNtB1e_6handle6HandleEEEEB1k_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslghKHtsL3a4_5tokio.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECslghKHtsL3a4_5tokio.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslghKHtsL3a4_5tokio.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4time5sleep5SleepEBH_(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.a = load i64, ptr %0, align 8, !range !68, !alias.scope !177, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %1 = icmp eq i64 %i.a, 0
  br i1 %1, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !186, !nonnull !5, !noundef !5
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !186
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.f = load ptr, ptr %i.b, align 8, !alias.scope !193, !nonnull !5, !noundef !5
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !193
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslghKHtsL3a4_5tokio7runtime5TimerEEB11_(ptr noundef nonnull align 8 %i.j) #25
          to label %bb.h unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit: ; preds = %bb.d, %bb.b, %bb.c, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslghKHtsL3a4_5tokio7runtime5TimerEEB11_(ptr noundef nonnull align 8 %i.k)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks9TaskHooksEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !194, !noundef !5 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !197
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !202, !noundef !5 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit2, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !205
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit2

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit2 unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit: ; preds = %bb.b, %bb.a, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !210, !noundef !5 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit3, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit
  %i.n = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !213
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit3

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit3

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit3: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit, %bb.g, %bb.h
  ret void

bb.i:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit2: ; preds = %bb.e, %bb.d, %bb.f
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6config6ConfigEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !218, !noundef !5 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !221
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputuNtNtBO_6marker4SendNtB1A_4SyncEL_E9drop_slowCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !226, !noundef !5 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit5, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !229
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit5

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputuNtNtBO_6marker4SendNtB1A_4SyncEL_E9drop_slowCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit5 unwind label %bb.s

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit: ; preds = %bb.b, %bb.a, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !234, !noundef !5 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit7, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit
  %i.o = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !237
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit7

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputuNtNtBO_6marker4SendNtB1A_4SyncEL_E9drop_slowCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit7 unwind label %bb.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit5: ; preds = %bb.e, %bb.d, %bb.f, %bb.k
  %.pn = phi { ptr, i32 } [ %i.v, %bb.k ], [ %i.f, %bb.f ], [ %i.f, %bb.d ], [ %i.f, %bb.e ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !242, !noundef !5 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit5
  %i.t = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !245
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit unwind label %bb.s

bb.k:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit5

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit7: ; preds = %bb.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !250, !noundef !5 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit10, label %bb.l
end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6driver6DriverEBH_:bb.a
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.j, %bb.f, %.body.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.w, %bb.j ], [ %eh.lpad-body.i.i.i.i, %bb.f ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6signal6HandleEBH_.exit.i.i unwind label %bb.k

bb.k:                                             ; preds = %.body.i.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6signal6HandleEBH_.exit.i.i: ; preds = %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime7process6DriverEBH_.exit.i: ; preds = %bb.h, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6driver7IoStackEBH_.exit

bb.l:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !311, !nonnull !5, !noundef !5
  %i.ac = atomicrmw sub ptr %i.ab, i64 1 release, align 8, !noalias !311
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6driver7IoStackEBH_.exit

bb.m:                                             ; preds = %bb.l
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCslghKHtsL3a4_5tokio7runtime4park5InnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6driver7IoStackEBH_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6driver7IoStackEBH_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime7process6DriverEBH_.exit.i, %bb.l, %bb.m
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6driver6HandleEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !alias.scope !312, !noundef !5
  %.not.i = icmp eq i32 %i.b, -1
  br i1 %.not.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val.i.i = load i32, ptr %i.c, align 8, !range !277, !alias.scope !318, !noundef !5
  %i.d = tail call noundef i32 @close(i32 noundef %.val.i.i) #24, !noalias !318 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCshr7Cxz41BpA_8lock_api5mutex5MutexNtNtCsfC2LXmwPSoN_11parking_lot9raw_mutex8RawMutexNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io16registration_set6SyncedEEB2b_.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCshr7Cxz41BpA_8lock_api5mutex5MutexNtNtCsfC2LXmwPSoN_11parking_lot9raw_mutex8RawMutexNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io16registration_set6SyncedEEB2b_.exit.i.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io6driver6HandleEBJ_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCshr7Cxz41BpA_8lock_api5mutex5MutexNtNtCsfC2LXmwPSoN_11parking_lot9raw_mutex8RawMutexNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io16registration_set6SyncedEEB2b_.exit.i.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.pn.i.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.h, %bb.e ]
  %.val3.i.i = load i32, ptr %i.a, align 4, !range !277, !alias.scope !318, !noundef !5
  %i.i = tail call noundef i32 @close(i32 noundef %.val3.i.i) #24 ; 0 uses
  br label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io6driver6HandleEBJ_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCshr7Cxz41BpA_8lock_api5mutex5MutexNtNtCsfC2LXmwPSoN_11parking_lot9raw_mutex8RawMutexNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io16registration_set6SyncedEEB2b_.exit.i.i.i
  %.val2.i.i = load i32, ptr %i.a, align 4, !range !277, !alias.scope !318, !noundef !5
  %i.j = tail call noundef i32 @close(i32 noundef %.val2.i.i) #24 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6driver8IoHandleEBH_.exit

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %i.k = load ptr, ptr %0, align 8, !alias.scope !328, !nonnull !5, !noundef !5
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !328
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6driver8IoHandleEBH_.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCslghKHtsL3a4_5tokio7runtime4park5InnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6driver8IoHandleEBH_.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.i ], [ %.pn.i.i, %bb.f ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !329, !noundef !5
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime6signal6HandleEEB13_.exit, label %bb.j

bb.j:                                             ; preds = %.body
  invoke void @_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime6signal6HandleEEB13_.exit unwind label %bb.o

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6driver8IoHandleEBH_.exit: ; preds = %bb.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io6driver6HandleEBJ_.exit.i, %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !332, !noundef !5
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime6signal6HandleEEB13_.exit7, label %bb.k

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6driver8IoHandleEBH_.exit
  invoke void @_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime6signal6HandleEEB13_.exit7 unwind label %bb.m

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime6signal6HandleEEB13_.exit: ; preds = %.body, %bb.j, %bb.m
  %.pn = phi { ptr, i32 } [ %i.x, %bb.m ], [ %eh.lpad-body, %bb.j ], [ %eh.lpad-body, %.body ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val4 = load i32, ptr %i.u, align 8, !range !335, !noundef !5
  %i.v = icmp eq i32 %.val4, -1
  br i1 %i.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time6handle6HandleEEB15_.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime6signal6HandleEEB13_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val3 = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef 6240, i64 noundef 8) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time6handle6HandleEEB15_.exit

bb.m:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime6signal6HandleEEB13_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime6signal6HandleEEB13_.exit7: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6driver8IoHandleEBH_.exit, %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val2 = load i32, ptr %i.y, align 8, !range !335, !noundef !5
  %i.z = icmp eq i32 %.val2, -1
  br i1 %i.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time6handle6HandleEEB15_.exit8, label %bb.n

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime6signal6HandleEEB13_.exit7
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val = load ptr, ptr %i.aa, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 6240, i64 noundef 8) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time6handle6HandleEEB15_.exit8

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time6handle6HandleEEB15_.exit8: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime6signal6HandleEEB13_.exit7, %bb.n
  ret void

bb.o:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time6handle6HandleEEB15_.exit: ; preds = %bb.l, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime6signal6HandleEEB13_.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle10EnterGuardEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs0_NtNtNtCslghKHtsL3a4_5tokio7runtime7context7currentNtB5_15SetCurrentGuardNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEEB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #25
          to label %bb.j unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.b = load i64, ptr %0, align 8, !range !64, !alias.scope !339, !noundef !5 ; 2 uses
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15SetCurrentGuardEBJ_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %1 = icmp eq i64 %i.b, 0
  br i1 %1, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !351, !nonnull !5, !noundef !5
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !352
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15SetCurrentGuardEBJ_.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15SetCurrentGuardEBJ_.exit

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %i.h = load ptr, ptr %i.d, align 8, !alias.scope !359, !nonnull !5, !noundef !5
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !360
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15SetCurrentGuardEBJ_.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15SetCurrentGuardEBJ_.exit

bb.i:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.j:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15SetCurrentGuardEBJ_.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %i.a = load i64, ptr %0, align 8, !range !68, !alias.scope !361, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %1 = icmp eq i64 %i.a, 0
  br i1 %1, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !370, !nonnull !5, !noundef !5
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !370
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %i.f = load ptr, ptr %i.b, align 8, !alias.scope !377, !nonnull !5, !noundef !5
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !377
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !68, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %1 = icmp eq i64 %i.a, 0
  br i1 %1, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !384, !nonnull !5, !noundef !5
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !384
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  %i.f = load ptr, ptr %i.b, align 8, !alias.scope !391, !nonnull !5, !noundef !5
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !391
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler7ContextEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !68, !noundef !5
  %1 = icmp eq i64 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %1, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !401, !nonnull !5, !noundef !5
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !401
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load ptr, ptr %i.g, align 8, !alias.scope !392, !align !16, !noundef !5
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread4CoreEEEEB1Z_(ptr %.val2.i) #25
          to label %.body.i unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_.exit.i: ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !392, !align !16, !noundef !5 ; 4 uses
  %i.i = icmp eq ptr %.val.i, null
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread4CoreEEEEB1Z_.exit.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_.exit.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread4CoreEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %.val.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread4CoreEEB1i_.exit.i.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 152, i64 noundef 8) #24
  br label %.body.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread4CoreEEB1i_.exit.i.i.i.i: ; preds = %bb.e
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 152, i64 noundef 8) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread4CoreEEEEB1Z_.exit.i

.body.i:                                          ; preds = %bb.f, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.j, %bb.f ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler5defer5DeferEBJ_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k) #25
          to label %common.resume unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread4CoreEEEEB1Z_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread4CoreEEB1i_.exit.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs3oUPovFnLWP_4core4task4wake5WakerENtNtNtBL_3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread7ContextEBJ_.exit unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread4CoreEEEEB1Z_.exit.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3oUPovFnLWP_4core4task4wake5WakerENtNtNtBS_3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.m, %bb.p, %.body.i, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.m, %bb.g ], [ %i.y, %bb.p ], [ %.pn.i2, %bb.m ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %.body.i, %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.j:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.p = load ptr, ptr %i.b, align 8, !alias.scope !411, !nonnull !5, !noundef !5
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !411
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEEB1j_.exit.i

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEEB1j_.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i5 = load ptr, ptr %i.t, align 8, !alias.scope !402, !align !16, !noundef !5
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEEB21_(ptr %.val2.i5) #25
          to label %bb.m unwind label %bb.r

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEEB1j_.exit.i: ; preds = %bb.k, %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i1 = load ptr, ptr %i.u, align 8, !alias.scope !402, !align !16, !noundef !5
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEEB21_(ptr %.val.i1)
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.n, %bb.l
  %.pn.i2 = phi { ptr, i32 } [ %i.w, %bb.n ], [ %i.s, %bb.l ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler5defer5DeferEBJ_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.v) #25
          to label %common.resume unwind label %bb.r

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEEB1j_.exit.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEEB1j_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs3oUPovFnLWP_4core4task4wake5WakerENtNtNtBL_3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread7ContextEBJ_.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3oUPovFnLWP_4core4task4wake5WakerENtNtNtBS_3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.r:                                             ; preds = %bb.m, %bb.l
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread7ContextEBJ_.exit: ; preds = %bb.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread4CoreEEEEB1Z_.exit.i
  %.sink = phi ptr [ %i.l, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread4CoreEEEEB1Z_.exit.i ], [ %i.x, %bb.o ]
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3oUPovFnLWP_4core4task4wake5WakerENtNtNtBS_3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sink)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool12BlockingPoolEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs2_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB5_12BlockingPoolNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !421, !nonnull !5, !noundef !5
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !421
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool7SpawnerEBJ_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool5InnerE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool7SpawnerEBJ_.exit unwind label %bb.n

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !431, !nonnull !5, !noundef !5
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !431
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool7SpawnerEBJ_.exit3

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool5InnerE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool7SpawnerEBJ_.exit3 unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool7SpawnerEBJ_.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.a, %bb.c ], [ %i.a, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking8shutdown8ReceiverEBJ_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.h) #25
          to label %common.resume unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool7SpawnerEBJ_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool7SpawnerEBJ_.exit3: ; preds = %bb.d, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  invoke void @_RNvXs2_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool7SpawnerEBJ_.exit3
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
end_hunk_1
begin_hunk_2_@_RINvNtNtCslghKHtsL3a4_5tokio7runtime7context14with_scheduleruNCNvXs5_NtNtB4_9scheduler14current_threadINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB15_6HandleENtNtB4_4task8Schedule8schedule0EB6_:bb.a
          to label %.noexc5 unwind label %bb.f

.noexc5:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !alias.scope !511, !noalias !509, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 424
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6injectINtB2_6InjectINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB4_14current_thread6HandleEE4pushB8_(ptr noundef nonnull align 8 %i.n, ptr noundef nonnull %i.j)
          to label %.noexc11.invoke unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i17, i64 40
  invoke void @_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime7context6scopedINtB3_6ScopedNtNtB7_9scheduler7ContextE4withNCNvXs5_NtB15_14current_threadINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB1G_6HandleENtNtB7_4task8Schedule8schedule0uEB9_(ptr noundef nonnull align 8 %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noundef nonnull %i.j)
          to label %_RNCNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB7_6HandleENtNtBb_4task8Schedule8schedule0Bd_.exit unwind label %bb.f

bb.f:                                             ; preds = %.noexc11.invoke, %bb.i, %bb.e, %bb.d, %bb.c, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i, %bb.j
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %i.a, align 8, !alias.scope !514, !align !16, !noundef !5
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNCNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB15_6HandleENtNtB19_4task8Schedule8schedule0EEB1b_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsd_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNCNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB15_6HandleENtNtB19_4task8Schedule8schedule0EEB1b_.exit unwind label %bb.l

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_14with_scheduleruNCNvXs5_NtNtBY_9scheduler14current_threadINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB2p_6HandleENtNtBY_4task8Schedule8schedule0E0uEB10_.exit: ; preds = %.noexc
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %.pre, null
  br i1 %.not, label %bb.j, label %bb.i, !prof !15

_RNCNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB7_6HandleENtNtBb_4task8Schedule8schedule0Bd_.exit: ; preds = %.noexc11.invoke, %bb.e
  %i.s = load ptr, ptr %i.a, align 8, !alias.scope !517, !align !16, !noundef !5
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNCNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB15_6HandleENtNtB19_4task8Schedule8schedule0EEB1b_.exit10, label %bb.h

bb.h:                                             ; preds = %_RNCNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB7_6HandleENtNtBb_4task8Schedule8schedule0Bd_.exit
  call void @_RNvXsd_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNCNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB15_6HandleENtNtB19_4task8Schedule8schedule0EEB1b_.exit10

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNCNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB15_6HandleENtNtB19_4task8Schedule8schedule0EEB1b_.exit10: ; preds = %_RNCNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB7_6HandleENtNtBb_4task8Schedule8schedule0Bd_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.i:                                             ; preds = %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_14with_scheduleruNCNvXs5_NtNtBY_9scheduler14current_threadINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB2p_6HandleENtNtBY_4task8Schedule8schedule0E0uEB10_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pre13) ]
  %i.u = load ptr, ptr %.pre, align 8, !alias.scope !520, !nonnull !5, !noundef !5 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 424
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6injectINtB2_6InjectINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB4_14current_thread6HandleEE4pushB8_(ptr noundef nonnull align 8 %i.v, ptr noundef nonnull %.pre13)
          to label %.noexc11.invoke unwind label %bb.f

.noexc11.invoke:                                  ; preds = %bb.i, %bb.d
  %.sink = phi ptr [ %i.m, %bb.d ], [ %i.u, %bb.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sink, i64 560
  invoke void @_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime6driverNtB4_6Handle6unpark(ptr noundef nonnull align 8 %i.w)
          to label %_RNCNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB7_6HandleENtNtBb_4task8Schedule8schedule0Bd_.exit unwind label %bb.f

bb.j:                                             ; preds = %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_14with_scheduleruNCNvXs5_NtNtBY_9scheduler14current_threadINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB2p_6HandleENtNtBY_4task8Schedule8schedule0E0uEB10_.exit
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #22
          to label %bb.k unwind label %bb.f

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNCNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB15_6HandleENtNtB19_4task8Schedule8schedule0EEB1b_.exit: ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5localINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB4_6handle6HandleEEBa_() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = tail call { ptr, i64 } @_RINvXsb_NtNtCs1xwejQucwHj_5alloc5boxed4iterINtB8_3BoxSINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitINtNtNtBZ_7runtime4task8NotifiedINtNtBa_4sync3ArcNtNtNtNtB2R_9scheduler12multi_thread6handle6HandleEEEEEINtNtNtNtB1Y_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB4z_8adapters4take4TakeINtNtNtB4z_7sources11repeat_with10RepeatWithNCINvNtB3D_5queue5localB3i_E0EEEBZ_(i64 noundef 256) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 4 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !523
  store i64 %i.d, ptr %i.a, align 8, !noalias !523
  %i.e = icmp eq i64 %i.d, 256
  br i1 %i.e, label %_RINvNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue15make_fixed_sizeINtNtNtNtBa_4loom3std11unsafe_cell10UnsafeCellINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitINtNtB8_4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB4_6handle6HandleEEEEEBa_.exit, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @0, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #22
          to label %bb.e unwind label %bb.c, !noalias !523

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = icmp eq i64 %i.d, 0
  br i1 %i.g, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw nsw i64 %i.d, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.c, i64 noundef range(i64 1, -9223372036854775808) %i.h, i64 noundef 8) #24
  br label %common.resume

bb.e:                                             ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.g ], [ %i.f, %bb.d ], [ %i.f, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue15make_fixed_sizeINtNtNtNtBa_4loom3std11unsafe_cell10UnsafeCellINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitINtNtB8_4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB4_6handle6HandleEEEEEBa_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !523
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !526
  %i.i = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 897) 40, i64 noundef range(i64 8, 129) 8) #24, !noalias !526 ; 9 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerINtBH_3ArcNtNtB15_6handle6HandleEEEE3newB1b_.exit, !prof !15

bb.f:                                             ; preds = %_RINvNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue15make_fixed_sizeINtNtNtNtBa_4loom3std11unsafe_cell10UnsafeCellINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitINtNtB8_4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB4_6handle6HandleEEEEEBa_.exit
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #22
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 2048, i64 noundef 8) #24
  br label %common.resume

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerINtBH_3ArcNtNtB15_6handle6HandleEEEE3newB1b_.exit: ; preds = %_RINvNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue15make_fixed_sizeINtNtNtNtBa_4loom3std11unsafe_cell10UnsafeCellINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitINtNtB8_4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB4_6handle6HandleEEEEEBa_.exit
  store i64 1, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx7, align 8
  %.sroa.5.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx8, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i32 0, ptr %.sroa.8.0..sroa_idx, align 8
  %i.l = atomicrmw add ptr %i.i, i64 1 monotonic, align 8
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerINtBH_3ArcNtNtB15_6handle6HandleEEEE3newB1b_.exit
  %i.n = insertvalue { ptr, ptr } poison, ptr %i.i, 0
  %i.o = insertvalue { ptr, ptr } %i.n, ptr %i.i, 1
  ret { ptr, ptr } %i.o

bb.i:                                             ; preds = %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerINtBH_3ArcNtNtB15_6handle6HandleEEEE3newB1b_.exit
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslghKHtsL3a4_5tokio(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #2 {
bb.a:
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %2, 3                            ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.a
  %scevgep5 = getelementptr i8, ptr %1, i64 %i.a
  %bound0 = icmp ult ptr %0, %scevgep5
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.b, align 1, !alias.scope !534, !noalias !537
  %wide.load6 = load <2 x i64>, ptr %i.d, align 1, !alias.scope !534, !noalias !537
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load7 = load <2 x i64>, ptr %i.c, align 1, !alias.scope !537, !noalias !529
  %wide.load8 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !537, !noalias !529
  store <2 x i64> %wide.load7, ptr %i.b, align 1, !alias.scope !534, !noalias !537
  store <2 x i64> %wide.load8, ptr %i.d, align 1, !alias.scope !534, !noalias !537
  store <2 x i64> %wide.load, ptr %i.c, align 1, !alias.scope !537, !noalias !529
  store <2 x i64> %wide.load6, ptr %i.e, align 1, !alias.scope !537, !noalias !529
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !539

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.04.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.04.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.g = or disjoint i64 %.sroa.0.04.ph, 1
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.ph ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532)
  %.sroa.0.0.copyload.i.prol = load i64, ptr %i.h, align 1, !alias.scope !529, !noalias !532
  %.sroa.02.0.copyload.i.prol = load i64, ptr %i.i, align 1, !alias.scope !532, !noalias !529
  store i64 %.sroa.02.0.copyload.i.prol, ptr %i.h, align 1, !alias.scope !529, !noalias !532
  store i64 %.sroa.0.0.copyload.i.prol, ptr %i.i, align 1, !alias.scope !532, !noalias !529
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.04.unr = phi i64 [ %.sroa.0.04.ph, %scalar.ph.preheader ], [ %i.g, %scalar.ph.prol ]
  %i.j = icmp eq i64 %2, %.neg
  br i1 %i.j, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.04 = phi i64 [ %i.n, %scalar.ph ], [ %.sroa.0.04.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.k = add nuw i64 %.sroa.0.04, 1               ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532)
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 1, !alias.scope !529, !noalias !532
  %.sroa.02.0.copyload.i = load i64, ptr %i.m, align 1, !alias.scope !532, !noalias !529
  store i64 %.sroa.02.0.copyload.i, ptr %i.l, align 1, !alias.scope !529, !noalias !532
  store i64 %.sroa.0.0.copyload.i, ptr %i.m, align 1, !alias.scope !532, !noalias !529
  %i.n = add nuw i64 %.sroa.0.04, 2               ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.k ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.o, align 1, !alias.scope !542, !noalias !544
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.p, align 1, !alias.scope !544, !noalias !542
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.o, align 1, !alias.scope !542, !noalias !544
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.p, align 1, !alias.scope !544, !noalias !542
  %exitcond.not.1 = icmp eq i64 %i.n, %2
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !546
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB4_7Builder3new0B8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 15, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !68, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !547, !noundef !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = icmp samesign ugt i64 %i.e, 14
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.h, ptr noundef nonnull align 1 dereferenceable(15) @24, i64 15, i1 false)
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 15, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB9_7Builder3new0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_once6vtableBd_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree readnone captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !554
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 15, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !554
  %i.b = load i64, ptr %i.a, align 8, !range !68, !noalias !554, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !547, !noalias !554, !noundef !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvYNCNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB7_7Builder3new0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceBb_.exit, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !554
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #22, !noalias !554
  unreachable

_RNvYNCNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB7_7Builder3new0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceBb_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !554, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = icmp samesign ugt i64 %i.e, 14
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !554
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.h, ptr noundef nonnull align 1 dereferenceable(15) @24, i64 15, i1 false), !noalias !554
  store i64 %i.e, ptr %0, align 8, !alias.scope !554
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !554
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 15, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !554
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i64 0, 64) i64 @_RNvMNtNtCslghKHtsL3a4_5tokio2io5readyNtB2_5Ready12intersection(i64 noundef %0, i64 noundef %1) unnamed_addr #4 {
bb.a:
  %2 = and i64 %1, 1
  %.not.i = icmp eq i64 %2, 0
  %spec.select.i = select i1 %.not.i, i64 0, i64 5 ; 2 uses
  %i.a = and i64 %1, 2
  %.not8.i = icmp eq i64 %i.a, 0
  %i.b = or disjoint i64 %spec.select.i, 10
  %.sroa.0.1.i = select i1 %.not8.i, i64 %spec.select.i, i64 %i.b ; 2 uses
  %i.c = and i64 %1, 16
  %.not9.i = icmp eq i64 %i.c, 0
  %i.d = or i64 %.sroa.0.1.i, 20
  %.sroa.0.2.i = select i1 %.not9.i, i64 %.sroa.0.1.i, i64 %i.d
  %i.e = and i64 %1, 32
  %.sroa.0.3.i = or disjoint i64 %.sroa.0.2.i, %i.e
  %i.f = and i64 %.sroa.0.3.i, %0
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_RNvMNtNtCslghKHtsL3a4_5tokio2io5readyNtB2_5Ready9satisfies(i64 noundef %0, i64 noundef %1) unnamed_addr #4 {
bb.a:
  %2 = and i64 %1, 1
  %.not.i = icmp eq i64 %2, 0
  %spec.select.i = select i1 %.not.i, i64 0, i64 5 ; 2 uses
  %i.a = and i64 %1, 2
  %.not8.i = icmp eq i64 %i.a, 0
  %i.b = or disjoint i64 %spec.select.i, 10
  %.sroa.0.1.i = select i1 %.not8.i, i64 %spec.select.i, i64 %i.b ; 2 uses
  %i.c = and i64 %1, 16
  %.not9.i = icmp eq i64 %i.c, 0
  %i.d = or i64 %.sroa.0.1.i, 20
  %.sroa.0.2.i = select i1 %.not9.i, i64 %.sroa.0.1.i, i64 %i.d
  %i.e = and i64 %1, 32
  %.sroa.0.3.i = or disjoint i64 %.sroa.0.2.i, %i.e
  %i.f = and i64 %.sroa.0.3.i, %0
  %i.g = icmp ne i64 %i.f, 0
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime10task_hooksNtB2_9TaskHooks5spawn(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !5   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !16, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !555, !invariant.load !5
  %i.f = add nsw i64 %i.e, -1
  %i.g = and i64 %i.f, -16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !5, !nonnull !5
  tail call void %i.k(ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder11build_local(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 dereferenceable(240) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.d = load i8, ptr %i.c, align 4, !range !556, !noundef !5
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @30, ptr noundef nonnull inttoptr (i64 93 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !560
  %i.f = tail call noundef nonnull ptr @_RNvNtNtCsaL1QbXo9JQH_3std6thread7current7current(), !noalias !560 ; 3 uses
  store ptr %i.f, ptr %i.b, align 8, !noalias !560
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !562, !noalias !560, !noundef !5
  %i.i = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !563
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26, !noalias !560
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !560
  call fastcc void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder39build_current_thread_runtime_components(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %1, i64 noundef %i.h), !noalias !557
  %i.k = load i64, ptr %i.a, align 8, !range !64, !noalias !560, !noundef !5 ; 2 uses
  %i.l = icmp eq i64 %i.k, 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !560
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !560
  br label %_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder34build_current_thread_local_runtime.exit

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit.i
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.56.0..sroa_idx.i, i64 40, i1 false), !noalias !572
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load <2 x ptr>, ptr %.sroa.67.0..sroa_idx.i, align 8, !noalias !560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !560
  store <2 x ptr> %i.o, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !557, !noalias !572
  br label %_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder34build_current_thread_local_runtime.exit

_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder34build_current_thread_local_runtime.exit: ; preds = %bb.e, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.p, align 8, !alias.scope !557, !noalias !572
  store i64 %i.k, ptr %0, align 8, !alias.scope !557, !noalias !572
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder14event_interval(ptr noalias nofree noundef returned writeonly align 8 captures(ret: address, provenance) dereferenceable(240) %0, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @33, ptr noundef nonnull inttoptr (i64 75 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 %1, ptr %i.a, align 8
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder14worker_threads(ptr noalias nofree noundef returned writeonly align 8 captures(ret: address, provenance) dereferenceable(240) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @34, ptr noundef nonnull inttoptr (i64 67 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  store i64 1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder16new_multi_thread(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([240 x i8]) align 8 captures(none) dereferenceable(240) %0) unnamed_addr #1 {
bb.a:
  tail call fastcc void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(240) %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder18new_current_thread(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([240 x i8]) align 8 captures(none) dereferenceable(240) %0) unnamed_addr #1 {
bb.a:
  tail call fastcc void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(240) %0, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder20max_blocking_threads(ptr noalias nofree noundef returned writeonly align 8 captures(ret: address, provenance) dereferenceable(240) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @35, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %1, ptr %i.a, align 8
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder21global_queue_interval(ptr noalias nofree noundef returned writeonly align 8 captures(ret: address, provenance) dereferenceable(240) %0, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @36, ptr noundef nonnull inttoptr (i64 89 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %1, ptr %i.b, align 4
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder39build_current_thread_runtime_components(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [896 x i8], align 128             ; 19 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [152 x i8], align 8               ; 10 uses
  %i.g = alloca [56 x i8], align 8                ; 4 uses
  %.sroa.08.i = alloca [224 x i8], align 128      ; 5 uses
  %.sroa.710.i = alloca [60 x i8], align 4        ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 7 uses
  %i.l = alloca [128 x i8], align 128             ; 5 uses
end_hunk_2
begin_hunk_3_@_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder5build:bb.a

bb.v:                                             ; preds = %bb.s
  %i.by = atomicrmw add ptr %i.bw, i64 1 monotonic, align 8, !noalias !663
  %i.bz = icmp slt i64 %i.by, 0
  br i1 %i.bz, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.x, %bb.s
  %i.ca = phi <2 x ptr> [ %i.cd, %bb.x ], [ <ptr null, ptr undef>, %bb.s ]
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !666, !noalias !663, !noundef !5 ; 2 uses
  %.not41.i = icmp eq ptr %i.cc, null
  br i1 %.not41.i, label %bb.aa, label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.cd = load <2 x ptr>, ptr %i.bv, align 8, !alias.scope !666, !noalias !663
  br label %bb.w

bb.y:                                             ; preds = %bb.v
  tail call void @llvm.trap()
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.ce = atomicrmw add ptr %i.cc, i64 1 monotonic, align 8, !noalias !663
  %i.cf = icmp slt i64 %i.ce, 0
  br i1 %i.cf, label %bb.ac, label %bb.ab

bb.aa:                                            ; preds = %bb.ab, %bb.w
  %i.cg = phi <2 x ptr> [ %i.cw, %bb.ab ], [ <ptr null, ptr undef>, %bb.w ]
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.cj = load i32, ptr %i.ci, align 8, !alias.scope !666, !noalias !663, !noundef !5
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.cl = load <2 x i32>, ptr %i.ch, align 8, !alias.scope !666, !noalias !663
  store <2 x i32> %i.cl, ptr %i.l, align 8, !noalias !668
  %i.cm = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  store i32 %i.cj, ptr %i.cm, align 8, !noalias !668
  %i.cn = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store <2 x ptr> %i.bo, ptr %i.cn, align 8, !noalias !668
  %i.co = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store <2 x ptr> %i.bu, ptr %i.co, align 8, !noalias !668
  %i.cp = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store <2 x ptr> %i.ca, ptr %i.cp, align 8, !noalias !668
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store <2 x ptr> %i.cg, ptr %i.cq, align 8, !noalias !668
  %i.cr = getelementptr inbounds nuw i8, ptr %i.l, i64 92
  %i.cs = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 4 dereferenceable(16) %i.r, i64 16, i1 false), !noalias !668
  %i.ct = load <4 x i8>, ptr %i.ck, align 8, !alias.scope !666, !noalias !663
  store <4 x i8> %i.ct, ptr %i.cr, align 4, !noalias !668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !668
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !range !63, !alias.scope !666, !noalias !663, !noundef !5
  %.not42.i = icmp eq i64 %i.cv, -1
  br i1 %.not42.i, label %bb.ae, label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.cw = load <2 x ptr>, ptr %i.cb, align 8, !alias.scope !666, !noalias !663
  br label %bb.aa

bb.ac:                                            ; preds = %bb.z
  tail call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !668
  invoke void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cu)
          to label %bb.al unwind label %bb.bb, !noalias !663

bb.ae:                                            ; preds = %bb.aa
  store i64 -1, ptr %i.k, align 8, !noalias !668
  br label %bb.af

bb.af:                                            ; preds = %bb.al, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !668
  store ptr %i.be, ptr %i.f, align 8, !noalias !669
  %i.cx = invoke noundef nonnull ptr @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB2_6Parker3new(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.x)
          to label %bb.ag unwind label %bb.ah, !noalias !663

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !669
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.d, ptr noundef nonnull align 8 dereferenceable(208) %i.n, i64 208, i1 false), !noalias !677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !669
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %i.l, i64 96, i1 false), !noalias !678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !669
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !679
  invoke void @_RNvNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6create(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, i64 noundef %.sroa.0.0.i, ptr noundef nonnull %i.cx, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(208) %i.d, ptr noundef nonnull %i.be, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.am unwind label %.body.i, !noalias !663

bb.ah:                                            ; preds = %bb.af
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #25
          to label %bb.aj unwind label %bb.ai, !noalias !680

bb.ai:                                            ; preds = %.critedge5.i.i, %bb.ak, %bb.aj, %bb.ah
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !681
  unreachable

bb.aj:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6config6ConfigEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.l) #25
          to label %.critedge.i.i unwind label %bb.ai, !noalias !682

.critedge.i.i:                                    ; preds = %bb.aj
  %i.da = atomicrmw sub ptr %i.be, i64 1 release, align 8, !noalias !683
  %i.db = icmp eq i64 %i.da, 1
  br i1 %i.db, label %bb.ak, label %.critedge5.i.i

bb.ak:                                            ; preds = %.critedge.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool5InnerE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #26
          to label %.critedge5.i.i unwind label %bb.ai, !noalias !682

.critedge5.i.i:                                   ; preds = %bb.ak, %.critedge.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6driver6HandleEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.n) #25
          to label %.thread90.i unwind label %bb.ai, !noalias !681

.body.i:                                          ; preds = %bb.ag
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.thread90.i

bb.al:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !668
  br label %bb.af

bb.am:                                            ; preds = %bb.ag
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !669
  %i.de = load ptr, ptr %i.e, align 8, !noalias !669, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i64 24, i1 false), !noalias !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !668
  store i64 1, ptr %i.j, align 8, !noalias !668
  %i.df = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.de, ptr %i.df, align 8, !noalias !668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !668
  invoke void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime6handleNtB2_6Handle5enter(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j)
          to label %bb.ao unwind label %bb.an, !noalias !663

bb.an:                                            ; preds = %bb.am
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread71.i

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !668
  invoke void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB2_6Launch6launch(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.aq unwind label %bb.ap, !noalias !663

bb.ap:                                            ; preds = %bb.ao
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle10EnterGuardEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #25
          to label %.thread71.i unwind label %bb.az, !noalias !663

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !668
  %i.dh = load i64, ptr %i.j, align 8, !range !68, !noalias !668, !noundef !5
  %i.di = load ptr, ptr %i.df, align 8, !noalias !668, !noundef !5
  store i64 1, ptr %0, align 8, !alias.scope !663, !noalias !666
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.dh, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !663, !noalias !666
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.di, ptr %.sroa.520.0..sroa_idx.i, align 8, !alias.scope !663, !noalias !666
  %.sroa.621.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.be, ptr %.sroa.621.0..sroa_idx.i, align 8, !alias.scope !663, !noalias !666
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.bf, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !663, !noalias !666
  invoke void @_RNvXs0_NtNtNtCslghKHtsL3a4_5tokio7runtime7context7currentNtB5_15SetCurrentGuardNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.as unwind label %bb.ar, !noalias !663

bb.ar:                                            ; preds = %bb.aq
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEEB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #25
          to label %.thread101.i unwind label %bb.ay, !noalias !663

bb.as:                                            ; preds = %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !690)
  %i.dk = load i64, ptr %i.i, align 8, !range !64, !alias.scope !693, !noalias !668, !noundef !5 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 2
  br i1 %i.dl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle10EnterGuardEBH_.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !698)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %2 = icmp eq i64 %i.dk, 0
  br i1 %2, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !701)
  call void @llvm.experimental.noalias.scope.decl(metadata !704)
  %i.dn = load ptr, ptr %i.dm, align 8, !alias.scope !707, !noalias !668, !nonnull !5, !noundef !5
  %i.do = atomicrmw sub ptr %i.dn, i64 1 release, align 8, !noalias !708
  %i.dp = icmp eq i64 %i.do, 1
  br i1 %i.dp, label %bb.av, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle10EnterGuardEBH_.exit.i

bb.av:                                            ; preds = %bb.au
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dm) #26, !noalias !663
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle10EnterGuardEBH_.exit.i

bb.aw:                                            ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !709)
  call void @llvm.experimental.noalias.scope.decl(metadata !712)
  %i.dq = load ptr, ptr %i.dm, align 8, !alias.scope !715, !noalias !668, !nonnull !5, !noundef !5
  %i.dr = atomicrmw sub ptr %i.dq, i64 1 release, align 8, !noalias !716
  %i.ds = icmp eq i64 %i.dr, 1
  br i1 %i.ds, label %bb.ax, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle10EnterGuardEBH_.exit.i

bb.ax:                                            ; preds = %bb.aw
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dm) #26, !noalias !663
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle10EnterGuardEBH_.exit.i

bb.ay:                                            ; preds = %bb.ar
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !663
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle10EnterGuardEBH_.exit.i: ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !668
  br label %_RNvMs6_NtNtCslghKHtsL3a4_5tokio7runtime7builderNtB5_7Builder22build_threaded_runtime.exit

bb.az:                                            ; preds = %bb.bh, %bb.bg, %.thread90.i, %bb.bf, %.critedge46.i, %.critedge.i, %bb.bd, %bb.bb, %bb.ba, %.thread71.i, %bb.ap
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !663
  unreachable

.thread81.i:                                      ; preds = %.thread71.i
  br i1 %.sroa.025.076.i, label %bb.ba, label %.thread90.i

.thread71.i:                                      ; preds = %bb.ap, %bb.an
  %.pn80.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.an ], [ %i.dg, %bb.ap ] ; 2 uses
  %.sroa.025.076.i = phi i1 [ true, %bb.an ], [ false, %bb.ap ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.j) #25
          to label %.thread81.i unwind label %bb.az, !noalias !663

bb.ba:                                            ; preds = %.thread81.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6LaunchEBL_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #25
          to label %.thread90.i unwind label %bb.az, !noalias !663

bb.bb:                                            ; preds = %bb.ad
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6config6ConfigEBH_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.l) #25
          to label %bb.bc unwind label %bb.az, !noalias !663

bb.bc:                                            ; preds = %bb.bb
  %i.dw = atomicrmw sub ptr %i.be, i64 1 release, align 8, !noalias !717
  %i.dx = icmp eq i64 %i.dw, 1
  br i1 %i.dx, label %bb.bd, label %.critedge.i

bb.bd:                                            ; preds = %bb.bc
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool5InnerE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #26
          to label %.critedge.i unwind label %bb.az, !noalias !663

.critedge.i:                                      ; preds = %bb.bd, %bb.bc
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6driver6HandleEBH_(ptr noalias nofree noundef align 8 dereferenceable(208) %i.n) #25
          to label %.critedge46.i unwind label %bb.az, !noalias !663

.critedge46.i:                                    ; preds = %.critedge.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6driver6DriverEBH_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.o) #25
          to label %.thread90.i unwind label %bb.az, !noalias !663

bb.be:                                            ; preds = %bb.l, %bb.j
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = atomicrmw sub ptr %i.be, i64 1 release, align 8, !noalias !724
  %i.ea = icmp eq i64 %i.dz, 1
  br i1 %i.ea, label %bb.bf, label %.thread90.i

bb.bf:                                            ; preds = %bb.be
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool5InnerE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #26
          to label %.thread90.i unwind label %bb.az, !noalias !663

.thread90.i:                                      ; preds = %bb.bf, %bb.be, %.critedge46.i, %bb.ba, %.thread81.i, %.body.i, %.critedge5.i.i
  %cond.i = phi i1 [ false, %bb.bf ], [ false, %bb.be ], [ true, %.body.i ], [ true, %bb.ba ], [ true, %.critedge46.i ], [ true, %.thread81.i ], [ true, %.critedge5.i.i ]
  %.pn.pn6594.i = phi { ptr, i32 } [ %i.dy, %bb.bf ], [ %i.dy, %bb.be ], [ %i.dc, %.body.i ], [ %.pn80.i, %bb.ba ], [ %i.dv, %.critedge46.i ], [ %.pn80.i, %.thread81.i ], [ %i.cy, %.critedge5.i.i ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool12BlockingPoolEBJ_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.t) #25
          to label %bb.h unwind label %bb.az, !noalias !663

bb.bg:                                            ; preds = %.thread.i, %bb.h
  %.pn.pn.pn58.i = phi { ptr, i32 } [ %i.bd, %.thread.i ], [ %.pn.pn6594.i, %bb.h ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6driver6HandleEBH_(ptr noalias nofree noundef align 8 dereferenceable(208) %i.w) #25
          to label %bb.bh unwind label %bb.az, !noalias !663

.thread101.i:                                     ; preds = %bb.bh, %bb.ar, %bb.h
  %.pn.pn.pn59.i = phi { ptr, i32 } [ %.pn.pn6594.i, %bb.h ], [ %.pn.pn.pn58.i, %bb.bh ], [ %i.dj, %bb.ar ]
  resume { ptr, i32 } %.pn.pn.pn59.i

bb.bh:                                            ; preds = %bb.bg
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6driver6DriverEBH_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.x) #25
          to label %.thread101.i unwind label %bb.az, !noalias !663

bb.bi:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !731)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !734
  call fastcc void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder39build_current_thread_runtime_components(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %1, i64 noundef 0), !noalias !731
  %i.eb = load i64, ptr %i.a, align 8, !range !64, !noalias !734, !noundef !5 ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 2
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !noalias !734 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.ec, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !734
  store ptr %i.ee, ptr %i.ef, align 8, !alias.scope !731, !noalias !736
  br label %_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder28build_current_thread_runtime.exit

bb.bk:                                            ; preds = %bb.bi
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ef, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.58.0..sroa_idx.i, i64 40, i1 false), !noalias !736
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.eg = load <2 x ptr>, ptr %.sroa.69.0..sroa_idx.i, align 8, !noalias !734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !734
  store i64 %i.eb, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !731, !noalias !736
  store ptr %i.ee, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !731, !noalias !736
  store <2 x ptr> %i.eg, ptr %.sroa.63.0..sroa_idx.i, align 8, !alias.scope !731, !noalias !736
  br label %_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder28build_current_thread_runtime.exit

_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder28build_current_thread_runtime.exit: ; preds = %bb.bj, %bb.bk
  %.sink.i = phi i64 [ 2, %bb.bj ], [ 0, %bb.bk ]
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !731, !noalias !736
  br label %_RNvMs6_NtNtCslghKHtsL3a4_5tokio7runtime7builderNtB5_7Builder22build_threaded_runtime.exit

_RNvMs6_NtNtCslghKHtsL3a4_5tokio7runtime7builderNtB5_7Builder22build_threaded_runtime.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle10EnterGuardEBH_.exit.i, %bb.f, %_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder28build_current_thread_runtime.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime7context7currentNtB4_7Context11set_current(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i64, ptr %1, align 8, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.g, !prof !4

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val = load i64, ptr %2, align 8, !range !68, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val2 = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = trunc nuw i64 %.val to i1
  %i.g = atomicrmw add ptr %.val2, i64 1 monotonic, align 8
  %i.h = icmp slt i64 %i.g, 0                     ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.f, label %bb.i

bb.d:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #27
  unreachable

bb.h:                                             ; preds = %bb.j
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEEB13_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #25
end_hunk_3
begin_hunk_4_@_RNvMs1_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB5_7Context8run_task:bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #22
          to label %bb.q unwind label %bb.s, !noalias !802

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread4CoreEEB1i_.exit.i.i, %bb.b
  %i.m = phi i64 [ 0, %bb.b ], [ %i.l, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread4CoreEEB1i_.exit.i.i ]
  store ptr %2, ptr %i.g, align 8, !noalias !802
  store i64 %i.m, ptr %i.d, align 8, !noalias !802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !802
  store ptr %1, ptr %i.b, align 8, !noalias !802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !802
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = load i8, ptr %i.o, align 8, !range !484, !noalias !802, !noundef !5
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i.i.i, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i.i, !prof !4

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i.i: ; preds = %bb.e
  %i.r = invoke noundef ptr @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE16get_or_init_slowB1h_(ptr noundef nonnull align 8 %i.n)
          to label %.noexc.i.i unwind label %bb.k ; 2 uses

.noexc.i.i:                                       ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i.i
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i.i.i

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i.i.i: ; preds = %.noexc.i.i, %bb.e
  %.sroa.0.0.i.i2.i.i.i = phi ptr [ %i.r, %.noexc.i.i ], [ %i.n, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i.i, i64 68 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !range !556, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i.i, i64 69 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1
  store i8 1, ptr %i.t, align 1
  store i8 -128, ptr %i.v, align 1
  br label %bb.f

bb.f:                                             ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i.i.i, %.noexc.i.i
  %.sroa.3.0.i.i.i = phi i8 [ %i.w, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i.i.i ], [ undef, %.noexc.i.i ]
  %i.x = phi i8 [ %i.u, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i.i.i ], [ 2, %.noexc.i.i ] ; 3 uses
  store i8 %i.x, ptr %i.a, align 1, !noalias !802
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %.sroa.3.0.i.i.i, ptr %i.y, align 1, !noalias !802
  invoke void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task3rawNtB4_7RawTask4poll(ptr noundef nonnull %1)
          to label %_RNCNCNvMs1_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB9_7Context8run_task00Bf_.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.x, 2
  br i1 %.not.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs1_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtBJ_7Context8run_task0EBP_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXNvNtNtCslghKHtsL3a4_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs1_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtBJ_7Context8run_task0EBP_.exit.i unwind label %bb.j

_RNCNCNvMs1_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB9_7Context8run_task00Bf_.exit.i.i: ; preds = %bb.f
  %.not.i5.i.i = icmp eq i8 %i.x, 2
  br i1 %.not.i5.i.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_RNCNCNvMs1_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB9_7Context8run_task00Bf_.exit.i.i
  call void @_RNvXNvNtNtCslghKHtsL3a4_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.a)
  br label %bb.l

bb.j:                                             ; preds = %bb.k, %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.k:                                             ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsd_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs1_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtBJ_7Context8run_task0EBP_.exit.i unwind label %bb.j

bb.l:                                             ; preds = %bb.i, %_RNCNCNvMs1_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB9_7Context8run_task00Bf_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !802
  %i.ac = load i64, ptr %i.d, align 8, !noalias !802, !noundef !5
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %bb.n, !prof !4

bb.m:                                             ; preds = %bb.l
  store i64 -1, ptr %i.d, align 8, !noalias !802
  %i.ae = load ptr, ptr %i.g, align 8, !noalias !802, !align !16, !noundef !5 ; 2 uses
  store ptr null, ptr %i.g, align 8, !noalias !802
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %bb.o, label %_RINvMs1_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB6_7Context5enteruNCNvB2_8run_task0EBc_.exit, !prof !15

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtCs3oUPovFnLWP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #22
  unreachable

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load i64, ptr %i.d, align 8, !noalias !802, !noundef !5
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.d, align 8, !noalias !802
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs1_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtBJ_7Context8run_task0EBP_.exit.i

bb.q:                                             ; preds = %bb.o, %bb.d
  unreachable

bb.r:                                             ; preds = %bb.t, %bb.s
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.s:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread4CoreEEEB1E_(ptr nonnull align 8 %2) #25
          to label %bb.t unwind label %bb.r

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs1_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtBJ_7Context8run_task0EBP_.exit.i: ; preds = %bb.t, %bb.p, %bb.k, %bb.h, %bb.g
  %.pn21.i = phi { ptr, i32 } [ %.pn.i, %bb.t ], [ %i.z, %bb.g ], [ %i.z, %bb.h ], [ %i.af, %bb.p ], [ %i.ab, %bb.k ]
  resume { ptr, i32 } %.pn21.i

bb.t:                                             ; preds = %bb.s, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.i, %.body.i ], [ %i.aj, %bb.s ]
  invoke void @_RNvXsd_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs1_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtBJ_7Context8run_task0EBP_.exit.i unwind label %bb.r

_RINvMs1_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB6_7Context5enteruNCNvB2_8run_task0EBc_.exit: ; preds = %bb.m
  store i64 0, ptr %i.d, align 8, !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.ae
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queueINtB5_5StealINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB7_6handle6HandleEE10steal_intoBd_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(72) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !noundef !5 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load atomic i64, ptr %i.f acquire, align 8
  %i.h = lshr i64 %i.g, 32
  %i.i = trunc nuw i64 %i.h to i32
  %i.j = sub i32 %i.e, %i.i
  %i.k = icmp ugt i32 %i.j, 128
  br i1 %i.k, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !805)
  %i.l = load ptr, ptr %0, align 8, !alias.scope !805, !noalias !808, !nonnull !5, !noundef !5 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 3 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8, !noalias !810 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !810
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.p = lshr i64 %i.n, 32
  %i.q = trunc nuw i64 %i.p to i32                ; 2 uses
  %i.r = trunc i64 %i.n to i32
  %i.s = load atomic i32, ptr %i.o acquire, align 8, !noalias !810
  %.not41.i = icmp eq i32 %i.q, %i.r
  br i1 %.not41.i, label %.lr.ph.i, label %_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queueINtB5_5StealINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB7_6handle6HandleEE11steal_into2Bd_.exit.thread

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.t = phi i32 [ %i.ah, %bb.d ], [ %i.s, %bb.b ] ; 2 uses
  %i.u = phi i32 [ %i.af, %bb.d ], [ %i.q, %bb.b ] ; 6 uses
  %.sroa.08.042.i = phi i64 [ %.sroa.01.0.i.i, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queueINtB5_5StealINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB7_6handle6HandleEE11steal_into2Bd_.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.w = sub i32 %i.t, %i.u                       ; 2 uses
  %i.x = lshr i32 %i.w, 1
  %i.y = sub nuw i32 %i.w, %i.x                   ; 6 uses
  %i.z = add i32 %i.y, %i.u
  %i.aa = zext i32 %i.z to i64
  %i.ab = and i64 %.sroa.08.042.i, -4294967296
  %i.ac = or disjoint i64 %i.ab, %i.aa            ; 2 uses
  %i.ad = cmpxchg weak ptr %i.m, i64 %.sroa.08.042.i, i64 %i.ac acq_rel acquire, align 8, !noalias !810 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.ad, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.ad, 0 ; 3 uses
  %i.ae = lshr i64 %.sroa.01.0.i.i, 32
  %i.af = trunc nuw i64 %i.ae to i32              ; 2 uses
  %i.ag = trunc i64 %.sroa.01.0.i.i to i32
  %i.ah = load atomic i32, ptr %i.o acquire, align 8, !noalias !810
  %.not.i = icmp eq i32 %i.af, %i.ag
  br i1 %.not.i, label %.lr.ph.i, label %_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queueINtB5_5StealINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB7_6handle6HandleEE11steal_into2Bd_.exit.thread

bb.e:                                             ; preds = %bb.c
  store i32 %i.y, ptr %i.b, align 4, !noalias !810
  %i.ai = icmp ult i32 %i.y, 129
  br i1 %i.ai, label %.preheader35.i, label %bb.f, !prof !4

.preheader35.i:                                   ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.y, i32 1) ; 3 uses
  %xtraiter = and i32 %umax, 1
  %i.al = icmp ult i32 %i.y, 2
  br i1 %i.al, label %.epil.preheader, label %.preheader35.i.new

.preheader35.i.new:                               ; preds = %.preheader35.i
  %unroll_iter = and i32 %umax, 254
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !810
  store ptr %i.b, ptr %i.a, align 8, !noalias !810
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !810
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #27, !noalias !810
  unreachable

bb.g:                                             ; preds = %bb.g, %.preheader35.i.new
  %.sroa.024.044.i = phi i32 [ 0, %.preheader35.i.new ], [ %i.ay, %bb.g ] ; 4 uses
  %niter = phi i32 [ 0, %.preheader35.i.new ], [ %niter.next.1, %bb.g ]
  %i.am = or disjoint i32 %.sroa.024.044.i, 1     ; 2 uses
  %i.an = add i32 %.sroa.024.044.i, %i.e
  %i.ao = and i32 %i.an, 255
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = load ptr, ptr %i.aj, align 8, !noalias !810, !nonnull !5, !noundef !5
  %i.ar = add i32 %.sroa.024.044.i, %i.u
  %i.as = and i32 %i.ar, 255
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !noalias !810, !nonnull !5, !noundef !5
  %i.aw = load ptr, ptr %i.ak, align 8, !noalias !810, !nonnull !5, !noundef !5
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ap
  store ptr %i.av, ptr %i.ax, align 8, !noalias !810
  %i.ay = add nuw nsw i32 %.sroa.024.044.i, 2     ; 2 uses
  %i.az = add i32 %i.am, %i.e
  %i.ba = and i32 %i.az, 255
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = load ptr, ptr %i.aj, align 8, !noalias !810, !nonnull !5, !noundef !5
  %i.bd = add i32 %i.am, %i.u
  %i.be = and i32 %i.bd, 255
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !810, !nonnull !5, !noundef !5
  %i.bi = load ptr, ptr %i.ak, align 8, !noalias !810, !nonnull !5, !noundef !5
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bb
  store ptr %i.bh, ptr %i.bj, align 8, !noalias !810
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.preheader.unr-lcssa, label %bb.g

.preheader.i.preheader.unr-lcssa:                 ; preds = %bb.g
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.preheader.unr-lcssa, %.preheader35.i
  %.sroa.024.044.i.epil.init = phi i32 [ 0, %.preheader35.i ], [ %i.ay, %.preheader.i.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i32 %umax to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.bk = add i32 %.sroa.024.044.i.epil.init, %i.e
  %i.bl = and i32 %i.bk, 255
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = load ptr, ptr %i.aj, align 8, !noalias !810, !nonnull !5, !noundef !5
  %i.bo = add i32 %.sroa.024.044.i.epil.init, %i.u
  %i.bp = and i32 %i.bo, 255
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !810, !nonnull !5, !noundef !5
  %i.bt = load ptr, ptr %i.ak, align 8, !noalias !810, !nonnull !5, !noundef !5
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bm
  store ptr %i.bs, ptr %i.bu, align 8, !noalias !810
  br label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.i.preheader.unr-lcssa, %.epil.preheader
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.018.0.i = phi i64 [ %.sroa.01.0.i34.i, %.preheader.i ], [ %i.ac, %.preheader.i.preheader ] ; 2 uses
  %i.bv = and i64 %.sroa.018.0.i, 4294967295
  %i.bw = mul nuw i64 %i.bv, 4294967297
  %i.bx = cmpxchg weak ptr %i.m, i64 %.sroa.018.0.i, i64 %i.bw acq_rel acquire, align 8, !noalias !810 ; 2 uses
  %.sroa.18.0.in.i31.i = extractvalue { i64, i1 } %i.bx, 1
  %.sroa.01.0.i34.i = extractvalue { i64, i1 } %i.bx, 0
  br i1 %.sroa.18.0.in.i31.i, label %bb.h, label %.preheader.i

_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queueINtB5_5StealINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB7_6handle6HandleEE11steal_into2Bd_.exit.thread: ; preds = %bb.d, %.lr.ph.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !810
  br label %bb.j

bb.h:                                             ; preds = %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !810
  %i.by = add nsw i32 %i.y, -1                    ; 2 uses
  %i.bz = add i32 %i.by, %i.e                     ; 2 uses
  %i.ca = and i32 %i.bz, 255
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = load ptr, ptr %i.ak, align 8, !nonnull !5, !noundef !5
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cf = icmp eq i32 %i.by, 0
  br i1 %i.cf, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store atomic i32 %i.bz, ptr %i.d release, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queueINtB5_5StealINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB7_6handle6HandleEE11steal_into2Bd_.exit.thread, %bb.a, %bb.i
  %.sroa.0.0 = phi ptr [ %i.ce, %bb.i ], [ null, %bb.a ], [ null, %_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queueINtB5_5StealINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB7_6handle6HandleEE11steal_into2Bd_.exit.thread ], [ %i.ce, %bb.h ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef range(i64 0, 4294967296) i64 @_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queueINtB5_5StealINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB7_6handle6HandleEE3lenBd_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load atomic i64, ptr %i.b acquire, align 8
  %i.d = trunc i64 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = load atomic i32, ptr %i.e acquire, align 8
  %i.g = sub i32 %i.f, %i.d
  %i.h = zext i32 %i.g to i64
  ret i64 %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 128 ptr @_RNvMs2_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB5_6Handle14worker_metrics(ptr nofree noundef nonnull readnone returned align 128 captures(ret: address, provenance) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  ret ptr %0

bb.c:                                             ; preds = %bb.a
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @57, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs2_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB5_6Handle15num_alive_tasks(ptr noundef nonnull align 128 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = tail call noundef i64 @_RNvMs_NtNtCslghKHtsL3a4_5tokio4util14metric_atomicsNtB4_17MetricAtomicUsize4load(ptr noundef nonnull align 8 %i.a, i8 noundef 0)
  ret i64 %i.b
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef i64 @_RNvMs2_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB5_6Handle21injection_queue_depth(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load atomic i64, ptr %i.a acquire, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define { ptr, ptr } @_RNvMs2_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB5_6Handle9waker_ref(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store atomic i8 1, ptr %i.b release, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.d = insertvalue { ptr, ptr } { ptr @59, ptr poison }, ptr %i.c, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCslghKHtsL3a4_5tokio4time8interval11interval_at(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, i64 noundef %3, i32 noundef range(i32 0, 1000000000) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 5 uses
  %i.b = icmp eq i64 %3, 0
  %i.c = icmp ne i64 %3, 0
  %i.d = icmp ne i32 %4, 0
  %spec.select = select i1 %i.b, i1 %i.d, i1 %i.c
  br i1 %spec.select, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @60, ptr noundef nonnull inttoptr (i64 53 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !811)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !811
  call void @_RNvNtNtCslghKHtsL3a4_5tokio4time5sleep11sleep_until(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61), !noalias !811
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !814
  %i.e = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 897) 112, i64 noundef range(i64 8, 129) 8) #24, !noalias !814 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %_RNvNtNtCslghKHtsL3a4_5tokio4time8interval20internal_interval_at.exit, !prof !15

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #22
          to label %.noexc.i unwind label %bb.e, !noalias !811

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4time5sleep5SleepEBH_(ptr noundef nonnull align 8 dereferenceable(112) %i.a) #25
          to label %bb.g unwind label %bb.f, !noalias !811

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !811
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.g

_RNvNtNtCslghKHtsL3a4_5tokio4time8interval20internal_interval_at.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.e, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !811
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.i, align 8, !alias.scope !811
  store i64 %3, ptr %0, align 8, !alias.scope !811
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %4, ptr %i.j, align 8, !alias.scope !811
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.k, align 8, !alias.scope !811
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCslghKHtsL3a4_5tokio4time8interval8interval(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 5 uses
  %i.b = icmp eq i64 %1, 0
  %i.c = icmp ne i64 %1, 0
  %i.d = icmp ne i32 %2, 0
  %spec.select = select i1 %i.b, i1 %i.d, i1 %i.c
  br i1 %spec.select, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @60, ptr noundef nonnull inttoptr (i64 53 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = tail call { i64, i32 } @_RNvMNtNtCslghKHtsL3a4_5tokio4time7instantNtB2_7Instant3now() ; 2 uses
  %i.f = extractvalue { i64, i32 } %i.e, 0
  %i.g = extractvalue { i64, i32 } %i.e, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !817)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !817
  call void @_RNvNtNtCslghKHtsL3a4_5tokio4time5sleep11sleep_until(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, i64 noundef %i.f, i32 noundef range(i32 0, 1000000000) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61), !noalias !817
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !820
  %i.h = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 897) 112, i64 noundef range(i64 8, 129) 8) #24, !noalias !820 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %_RNvNtNtCslghKHtsL3a4_5tokio4time8interval20internal_interval_at.exit, !prof !15

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #22
          to label %.noexc.i unwind label %bb.e, !noalias !817
end_hunk_4
begin_hunk_5_@_RNvNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread9shutdown2:bb.a
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 240
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEE22close_and_shutdown_allB8_(ptr noundef nonnull align 8 %i.d, i64 noundef 0)
          to label %.preheader15 unwind label %.loopexit.split-lp.loopexit.split-lp

.preheader15:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.b

.loopexit:                                        ; preds = %.preheader, %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.g, %bb.b
  %lpad.loopexit16 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.n, %bb.p, %bb.m, %bb.k, %bb.h, %bb.a
  %lpad.loopexit.split-lp17 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.c, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.i, %bb.d ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit16, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp17, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread4CoreEEB1i_(ptr %0) #25
          to label %bb.s unwind label %bb.r

bb.b:                                             ; preds = %.preheader15, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEEBI_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !835)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !835
  %i.g = invoke noundef ptr @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtB9_4sync3ArcNtNtNtB1a_9scheduler14current_thread6HandleEEE9pop_frontB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit ; 4 uses

.noexc:                                           ; preds = %bb.b
  store ptr %i.g, ptr %i.a, align 8, !noalias !835
  %i.h = load i64, ptr %i.f, align 8, !alias.scope !835, !noundef !5
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime7metrics6workerNtB2_13WorkerMetrics15set_queue_depth(ptr noundef nonnull align 128 %1, i64 noundef %i.h)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = icmp eq ptr %i.g, null
  br i1 %i.j, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsd_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.f:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !835
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.g, ptr %i.c, align 8
  invoke void @_RNvXsd_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEEBI_.exit unwind label %.loopexit.split-lp.loopexit

bb.h:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.m = invoke noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6injectINtB2_6InjectINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB4_14current_thread6HandleEE5closeB8_(ptr noundef nonnull align 8 %i.l)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEEBI_.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.b

.preheader:                                       ; preds = %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEEBI_.exit10
  %i.n = invoke noundef ptr @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6injectINtB2_6InjectINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB4_14current_thread6HandleEE3popB8_(ptr noundef nonnull align 8 %i.l)
          to label %bb.i unwind label %.loopexit  ; 2 uses

bb.i:                                             ; preds = %.preheader
  %.not6 = icmp eq ptr %i.n, null
  br i1 %.not6, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.n, ptr %i.b, align 8
  invoke void @_RNvXsd_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEEBI_.exit10 unwind label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.p = invoke noundef i64 @_RNvMs_NtNtCslghKHtsL3a4_5tokio4util14metric_atomicsNtB4_17MetricAtomicUsize4load(ptr noundef nonnull align 8 %i.o, i8 noundef 0)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEEBI_.exit10: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader

bb.l:                                             ; preds = %bb.k
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.n, label %bb.m, !prof !4

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #22
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.l
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime7metrics5batchNtB2_12MetricsBatch6submit(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 128 %1, i64 noundef 0)
          to label %_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB5_4Core14submit_metrics.exit unwind label %.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.m
  unreachable

_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB5_4Core14submit_metrics.exit: ; preds = %bb.n
  %i.s = load i64, ptr %0, align 8, !range !474, !noundef !5
  %.not7 = icmp eq i64 %i.s, -1
  br i1 %.not7, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB5_4Core14submit_metrics.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 432
  invoke void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime6driverNtB2_6Driver8shutdown(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 %i.t)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p, %_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB5_4Core14submit_metrics.exit
  ret ptr %0

bb.r:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.s:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCslghKHtsL3a4_5tokio7process3impNtNtCsaL1QbXo9JQH_3std7process5ChildNtNtB2_6orphan4Wait8try_wait(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 4 dereferenceable(28) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMsT_NtCsaL1QbXo9JQH_3std7processNtB5_5Child8try_wait(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 4 dereferenceable(28) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtNtCslghKHtsL3a4_5tokio4loom3std7barrierNtB2_7BarrierNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr nofree noundef nonnull readnone align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 7)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtNtCslghKHtsL3a4_5tokio4loom3std7barrierNtB5_17BarrierWaitResultNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 17)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = load i8, ptr %0, align 1, !range !556, !noundef !5
  store i8 %i.c, ptr %i.a, align 1
  %i.d = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66)
  %i.e = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCsaL1QbXo9JQH_3std7process5ChildNtB6_5Debug3fmtCslghKHtsL3a4_5tokio(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !838, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXs1_NtCsaL1QbXo9JQH_3std7processNtB5_5ChildNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(28) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtNtCslghKHtsL3a4_5tokio2io5readyNtB5_5ReadyNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.h = load i64, ptr %0, align 8, !noundef !5   ; 3 uses
  %2 = and i64 %i.h, 1
  %.not = icmp eq i64 %2, 0
  %i.i = trunc i64 %i.h to i8                     ; 4 uses
  %i.j = lshr i8 %i.i, 2
  %i.k = and i8 %i.j, 1                           ; 2 uses
  %storemerge = select i1 %.not, i8 %i.k, i8 1
  store i8 %storemerge, ptr %i.f, align 1
  %i.l = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 11, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.m = and i64 %i.h, 2
  %.not1 = icmp eq i64 %i.m, 0
  %i.n = lshr i8 %i.i, 3
  %i.o = and i8 %i.n, 1                           ; 2 uses
  %storemerge2 = select i1 %.not1, i8 %i.o, i8 1
  store i8 %storemerge2, ptr %i.e, align 1
  %i.p = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 11, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.k, ptr %i.d, align 1
  %i.q = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 14, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.o, ptr %i.c, align 1
  %i.r = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 15, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.s = lshr i8 %i.i, 5
  %i.t = and i8 %i.s, 1
  store i8 %i.t, ptr %i.b, align 1
  %i.u = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 8, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = lshr i8 %i.i, 4
  %i.w = and i8 %i.v, 1
  store i8 %i.w, ptr %i.a, align 1
  %i.x = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret i1 %i.y
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queueINtB5_5LocalINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB7_6handle6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBd_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #26
  br i1 %i.g, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !839)
  %i.h = load ptr, ptr %0, align 8, !alias.scope !839, !nonnull !5, !noundef !5 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8, !noalias !839 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.l = lshr i64 %i.j, 32
  %i.m = trunc nuw i64 %i.l to i32                ; 2 uses
  %i.n = trunc i64 %i.j to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !839
  store i32 %i.m, ptr %i.b, align 4, !noalias !839
  %i.o = load i32, ptr %i.k, align 8, !noalias !839, !noundef !5
  %i.p = icmp eq i32 %i.o, %i.n
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEEB14_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.i
  %i.q = phi i32 [ %i.ad, %bb.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.r = phi i32 [ %i.ac, %bb.i ], [ %i.m, %bb.c ] ; 2 uses
  %.sroa.04.010.i = phi i64 [ %.sroa.01.0.i.i, %bb.i ], [ %i.j, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !839
  %i.s = add i32 %i.q, 1                          ; 4 uses
  store i32 %i.s, ptr %i.a, align 4, !noalias !839
  %i.t = icmp eq i32 %i.r, %i.q
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.u = icmp eq i32 %i.s, %i.r
  br i1 %i.u, label %bb.g, label %bb.f, !prof !15

bb.e:                                             ; preds = %.lr.ph.i
  %i.v = zext i32 %i.s to i64
  %i.w = mul nuw i64 %i.v, 4294967297
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.x = zext i32 %i.s to i64
  %i.y = and i64 %.sroa.04.010.i, -4294967296
  %i.z = or disjoint i64 %i.y, %i.x
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedmmECsaL1QbXo9JQH_3std(i8 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #27, !noalias !839
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  %.sroa.01.0.i = phi i64 [ %i.w, %bb.e ], [ %i.z, %bb.f ]
  %i.aa = cmpxchg weak ptr %i.i, i64 %.sroa.04.010.i, i64 %.sroa.01.0.i acq_rel acquire, align 8, !noalias !839 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.aa, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.aa, 0 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !839
  %i.ab = lshr i64 %.sroa.01.0.i.i, 32
  %i.ac = trunc nuw i64 %i.ab to i32              ; 2 uses
  %i.ad = trunc i64 %.sroa.01.0.i.i to i32        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !839
  store i32 %i.ac, ptr %i.b, align 4, !noalias !839
  %i.ae = load i32, ptr %i.k, align 8, !noalias !839, !noundef !5
  %i.af = icmp eq i32 %i.ae, %i.ad
  br i1 %i.af, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEEB14_.exit, label %.lr.ph.i

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEEB14_.exit, %bb.b
  ret void

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !839
  %i.ag = and i64 %.sroa.04.010.i, 255
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !839, !nonnull !5, !noundef !5
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !839, !nonnull !5, !noundef !5
  store ptr %i.ak, ptr %i.c, align 8
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEEB14_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @75, ptr noundef nonnull inttoptr (i64 31 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEEB14_.exit: ; preds = %bb.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio4loom3std10atomic_u32NtB5_9AtomicU32NtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noundef nonnull align 4 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsP_NtNtCs3oUPovFnLWP_4core4sync6atomicINtB5_6AtomicmENtNtB9_3fmt5Debug3fmt(ptr noundef nonnull align 4 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB5_6HandleNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr nofree noundef nonnull readnone align 128 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 30)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCs3oUPovFnLWP_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @78)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB5_6HandleNtNtNtBb_4util4wake4Wake11wake_by_ref(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  %i.c = atomicrmw xchg ptr %i.b, i8 1 release, align 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %_RINvNtNtCslghKHtsL3a4_5tokio7runtime7context14with_scheduleruNCNvXs6_NtNtB4_9scheduler14current_threadNtB15_6HandleNtNtNtB6_4util4wake4Wake11wake_by_ref0EB6_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i8, ptr %i.e, align 8, !range !484, !noalias !842, !noundef !5
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i, !prof !4

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i: ; preds = %bb.b
  %i.h = tail call noundef ptr @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE16get_or_init_slowB1h_(ptr noundef nonnull align 8 %i.d), !noalias !842 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_14with_scheduleruNCNvXs6_NtNtBY_9scheduler14current_threadNtB2p_6HandleNtNtNtB10_4util4wake4Wake11wake_by_ref0E0uEB10_.exit.i, label %bb.c

bb.c:                                             ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i, %bb.b
  %.sroa.0.0.i.i2.i.i = phi ptr [ %i.h, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i, i64 70
  %i.k = load i8, ptr %i.j, align 1, !range !484, !noalias !847, !noundef !5
  %.not3.i.i.i = icmp eq i8 %i.k, 2
  br i1 %.not3.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  tail call void @_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime6driverNtB4_6Handle6unpark(ptr noundef nonnull align 8 %i.l), !noalias !847
  br label %_RINvNtNtCslghKHtsL3a4_5tokio7runtime7context14with_scheduleruNCNvXs6_NtNtB4_9scheduler14current_threadNtB15_6HandleNtNtNtB6_4util4wake4Wake11wake_by_ref0EB6_.exit
end_hunk_5
