Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/markup5ever_rcdom-94565011a5cef294.markup5ever_rcdom.fea42dc744c38c8-cgu.0?download=true
inline.NumInlined: 238
inline.NumDeleted: 156
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE9pop_frontB1l_:bb.a
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %i.f = add i64 %i.e, 1                          ; 2 uses
  %i.g = load i64, ptr %0, align 8, !range !10, !noundef !5 ; 3 uses
  %.not = icmp ult i64 %i.f, %i.g
  %i.h = select i1 %.not, i64 0, i64 %i.g
  %.sroa.01.0 = sub nuw i64 %i.f, %i.h
  store i64 %.sroa.01.0, ptr %i.d, align 8
  %i.i = add i64 %i.b, -1                         ; 2 uses
  store i64 %i.i, ptr %i.a, align 8
  %i.j = icmp ult i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.e
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  invoke void @_RNvXs_Cs1mImOlsSUsK_17markup5ever_rcdomNtB4_4NodeNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b, !inline_history !203

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.val4.i = load ptr, ptr %i.d, align 8, !alias.scope !208, !noundef !5
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEEB1O_(ptr %.val4.i) #25, !inline_history !203
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEEB1K_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #25
          to label %.body2 unwind label %bb.i, !inline_history !203

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !208, !noundef !5 ; 3 uses
  %magicptr.i.i.i = ptrtoint ptr %.val.i to i64
  %magicptr.off.i.i.i = add i64 %magicptr.i.i.i, -1
  %switch.i.i.i = icmp ult i64 %magicptr.off.i.i.i, -2
  br i1 %switch.i.i.i, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEEB1O_.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noalias !209, !noundef !5
  %i.i = add i64 %i.h, -1                         ; 2 uses
  store i64 %i.i, ptr %i.g, align 8, !noalias !209
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEEB1O_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 136, i64 noundef 8) #22, !noalias !209
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEEB1O_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEEB1O_.exit: ; preds = %bb.e, %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB15_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEEB1O_.exit.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEEB1O_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body2 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB15_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEEB1O_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEEB1O_.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEEB1K_.exit unwind label %bb.h

.body2:                                           ; preds = %bb.h, %bb.f, %bb.b
  %.pn2.i = phi { ptr, i32 } [ %i.c, %bb.b ], [ %i.n, %bb.h ], [ %i.l, %bb.f ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs1mImOlsSUsK_17markup5ever_rcdom8NodeDataEBD_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.b) #25
          to label %.body unwind label %bb.i, !inline_history !203

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB15_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEEB1O_.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEEB1K_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB15_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEEB1O_.exit.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs1mImOlsSUsK_17markup5ever_rcdom8NodeDataEBD_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBD_.exit unwind label %bb.j, !inline_history !203

bb.i:                                             ; preds = %.body2, %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !inline_history !203
  unreachable

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEEB1K_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body2, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.j ], [ %.pn2.i, %.body2 ]
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeRNtNtBG_5alloc6GlobalEEB1a_(ptr nonnull %i.a) #25
  resume { ptr, i32 } %eh.lpad-body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBD_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEEB1K_.exit
  %i.q = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeRNtNtBG_5alloc6GlobalEEB1a_.exit, label %bb.k

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBD_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !noundef !5
  %i.t = add i64 %i.s, -1                         ; 2 uses
  store i64 %i.t, ptr %i.r, align 8
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeRNtNtBG_5alloc6GlobalEEB1a_.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 136, i64 noundef 8) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeRNtNtBG_5alloc6GlobalEEB1a_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeRNtNtBG_5alloc6GlobalEEB1a_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBD_.exit, %bb.k, %bb.l
  ret void
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RNvMsg_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9downgradeBF_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  %.val.i = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.c = icmp ne i64 %.val.i, 0
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add i64 %.val.i, 1                       ; 2 uses
  store i64 %i.d, ptr %i.b, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_RNvYINtNtCsexYYUdYSQU6_5alloc2rc7RcInnerNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtB5_10RcInnerPtr8inc_weakBE_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvYINtNtCsexYYUdYSQU6_5alloc2rc7RcInnerNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtB5_10RcInnerPtr8inc_weakBE_.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameINtB2_10EquivalentBq_E10equivalentCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !213, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !214, !noundef !5 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.d, label %_RNvXsf_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.d, label %_RNvXsf_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load i64, ptr %0, align 8, !range !8, !alias.scope !213, !noundef !5
  %i.h = load i64, ptr %1, align 8, !range !8, !alias.scope !214, !noundef !5
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %bb.e, label %_RNvXsf_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !8, !alias.scope !213, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !8, !alias.scope !214, !noundef !5
  %i.n = icmp eq i64 %i.k, %i.m
  br label %_RNvXsf_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

_RNvXsf_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.sroa.0.0.i = phi i1 [ %i.n, %bb.e ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.c ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1l_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullEB1m_.exit.thread, label %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullEB1m_.exit

_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullEB1m_.exit.thread: ; preds = %bb.a
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %2 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB19_.exit

_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullEB1m_.exit: ; preds = %bb.a
  %.val = load i64, ptr %0, align 8               ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.d, align 8            ; 2 uses
  %.not.i = icmp ult i64 %.val1, %.val
  %i.e = select i1 %.not.i, i64 0, i64 %.val
  %.sroa.04.0.i = sub nuw i64 %.val1, %i.e        ; 5 uses
  %i.f = sub i64 %.val, %.sroa.04.0.i             ; 2 uses
  %.not11.i = icmp ult i64 %i.f, %i.b
  %i.g = add i64 %.sroa.04.0.i, %i.b
  %.sroa.58.0 = select i1 %.not11.i, i64 %.val, i64 %i.g ; 2 uses
  %.sroa.11.0 = tail call i64 @llvm.usub.sat.i64(i64 %i.b, i64 %i.f) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.04.0.i ; 2 uses
  %i.k = sub i64 %.sroa.58.0, %.sroa.04.0.i       ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.l = icmp eq i64 %.sroa.58.0, %.sroa.04.0.i
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB19_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullEB1m_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i ], [ 0, %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullEB1m_.exit ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.0.09.i ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !238, !nonnull !5, !noundef !5 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noalias !238, !noundef !5
  %i.q = add i64 %i.p, -1                         ; 2 uses
  store i64 %i.q, ptr %i.o, align 8, !noalias !238
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.m) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i unwind label %bb.c, !inline_history !0

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.s = icmp eq i64 %i.n, %i.k
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB19_.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = icmp eq i64 %i.n, %i.k
  br i1 %i.u, label %.body, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.0.110.i ; 2 uses
  %i.w = add nuw nsw i64 %.sroa.0.110.i, 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.x = load ptr, ptr %i.v, align 8, !alias.scope !241, !nonnull !5, !noundef !5 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !noalias !241, !noundef !5
  %i.z = add i64 %i.y, -1                         ; 2 uses
  store i64 %i.z, ptr %i.x, align 8, !noalias !241
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.v) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i unwind label %bb.e, !inline_history !0

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.ab = icmp eq i64 %i.w, %i.k
  br i1 %i.ab, label %.body, label %.lr.ph12.i

bb.e:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !235
  unreachable

.body:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i, %bb.c
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque7DropperINtNtBI_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1N_(ptr nonnull %i.i, i64 %.sroa.11.0) #25
          to label %common.resume unwind label %bb.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB19_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i, %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullEB1m_.exit.thread, %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullEB1m_.exit
  %3 = phi ptr [ %2, %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullEB1m_.exit.thread ], [ %i.i, %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullEB1m_.exit ], [ %i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i ] ; 2 uses
  %.sroa.11.025 = phi i64 [ 0, %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullEB1m_.exit.thread ], [ %.sroa.11.0, %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullEB1m_.exit ], [ %.sroa.11.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %4 = icmp eq i64 %.sroa.11.025, 0
  br i1 %4, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque7DropperINtNtBI_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1N_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB19_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i.i.i
  %.sroa.0.09.i.i.i = phi i64 [ %i.ae, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i.i.i ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB19_.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.0.09.i.i.i ; 2 uses
  %i.ae = add nuw nsw i64 %.sroa.0.09.i.i.i, 1    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.af = load ptr, ptr %i.ad, align 8, !alias.scope !245, !nonnull !5, !noundef !5 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !noalias !245, !noundef !5
  %i.ah = add i64 %i.ag, -1                       ; 2 uses
  store i64 %i.ah, ptr %i.af, align 8, !noalias !245
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.ad) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i.i.i unwind label %bb.g, !inline_history !0

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i
  %i.aj = icmp eq i64 %i.ae, %.sroa.11.025
  br i1 %i.aj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque7DropperINtNtBI_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1N_.exit, label %.lr.ph.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = icmp eq i64 %i.ae, %.sroa.11.025
  br i1 %i.al, label %common.resume, label %.lr.ph12.i.i.i

.lr.ph12.i.i.i:                                   ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i.i.i
  %.sroa.0.110.i.i.i = phi i64 [ %i.an, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i.i.i ], [ %i.ae, %bb.g ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.0.110.i.i.i ; 2 uses
  %i.an = add nuw nsw i64 %.sroa.0.110.i.i.i, 1   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.ao = load ptr, ptr %i.am, align 8, !alias.scope !248, !nonnull !5, !noundef !5 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !248, !noundef !5
  %i.aq = add i64 %i.ap, -1                       ; 2 uses
  store i64 %i.aq, ptr %i.ao, align 8, !noalias !248
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i.i.i

bb.h:                                             ; preds = %.lr.ph12.i.i.i
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.am) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i.i.i unwind label %bb.i, !inline_history !0

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i.i.i: ; preds = %bb.h, %.lr.ph12.i.i.i
  %i.as = icmp eq i64 %i.an, %.sroa.11.025
  br i1 %i.as, label %common.resume, label %.lr.ph12.i.i.i

common.resume:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i.i.i, %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %bb.g ], [ %i.t, %.body ], [ %i.ak, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !242
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque7DropperINtNtBI_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1N_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB19_.exit
  ret void

bb.j:                                             ; preds = %.body
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1d_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBI_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = add i64 %i.d, -1                         ; 2 uses
  store i64 %i.e, ptr %i.c, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 136, i64 noundef 8) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_4cell7RefCellINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBW_3fmt4UTF8EENtB6_5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !255
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 7)
  %i.e = load i64, ptr %i.d, align 8, !noalias !255, !noundef !5 ; 2 uses
  %i.f = icmp ult i64 %i.e, 9223372036854775807
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !255
  store ptr @30, ptr %i.a, align 8, !noalias !255
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 21 to ptr), ptr %i.g, align 8, !noalias !255
  %i.h = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !255
  br label %_RNvXsv_NtCskKLDkoKarTP_4core3fmtINtNtB7_4cell7RefCellINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBU_3fmt4UTF8EENtB5_5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.c:                                             ; preds = %bb.a
  %i.i = add nuw nsw i64 %i.e, 1
  store i64 %i.i, ptr %i.d, align 8, !noalias !255
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !255
  store ptr %i.j, ptr %i.b, align 8, !noalias !255
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.d, ptr %i.k, align 8, !noalias !255
  %i.l = invoke noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %.val.i3.i = load ptr, ptr %i.k, align 8, !alias.scope !256, !noalias !255, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.m = load i64, ptr %.val.i3.i, align 8, !noalias !256, !noundef !5
  %i.n = add i64 %i.m, -1
  store i64 %i.n, ptr %.val.i3.i, align 8, !noalias !256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !255
  br label %_RNvXsv_NtCskKLDkoKarTP_4core3fmtINtNtB7_4cell7RefCellINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBU_3fmt4UTF8EENtB5_5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %.val.i.i = load ptr, ptr %i.k, align 8, !alias.scope !257, !noalias !255, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.p = load i64, ptr %.val.i.i, align 8, !noalias !257, !noundef !5
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %.val.i.i, align 8, !noalias !257
  resume { ptr, i32 } %i.o

_RNvXsv_NtCskKLDkoKarTP_4core3fmtINtNtB7_4cell7RefCellINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBU_3fmt4UTF8EENtB5_5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.b, %bb.d
  %i.r = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !255
  ret i1 %i.r
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtB6_5Debug3fmtB13_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = tail call noundef zeroext i1 @_RNvXs0_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_4NodeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtB6_5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !260
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.c, ptr %i.a, align 8, !noalias !260
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 4, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !260
  ret i1 %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !272, !noundef !5
  %i.c = add i64 %i.b, 8
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !272
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !272, !noundef !5 ; 5 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %..i.i = tail call noundef range(i64 0, 9) i64 @llvm.umin.i64(i64 range(i64 9, 8) %i.g, i64 8) ; 2 uses
  %i.h = icmp ugt i64 %i.g, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i.i = load i32, ptr %1, align 1, !alias.scope !274
  %i.i = zext i32 %.sroa.014.0.copyload.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = or disjoint i64 %.sroa.03.0.i.i, 1
  %i.k = icmp samesign ult i64 %i.j, %..i.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.03.0.i.i
  %.sroa.015.0.copyload.i.i = load i16, ptr %i.l, align 1, !alias.scope !274
  %i.m = zext i16 %.sroa.015.0.copyload.i.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i.i
  %i.q = or disjoint i64 %.sroa.03.0.i.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.03.0.i.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0.i.i, %bb.d ] ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.03.1.i.i, %..i.i
  br i1 %i.r, label %bb.g, label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !274, !noundef !5
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i.i
  br label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i

_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.0.2.i.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.1.i.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !272, !noundef !5
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8, !alias.scope !272
  %i.ae = icmp ugt i64 %i.e, 8
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 5 uses
  %i.af = sub nuw nsw i64 8, %.sroa.0.0.i         ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, 8
  %i.ai = icmp ult i64 %.sroa.0.0.i, %i.ah
  br i1 %i.ai, label %._crit_edge.i, label %bb.k

bb.i:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !272, !noundef !5
  %i.al = xor i64 %i.ak, %i.ad                    ; 3 uses
  %i.am = load i64, ptr %0, align 8, !alias.scope !275, !noundef !5
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !275, !noundef !5 ; 3 uses
  %i.ap = add i64 %i.ao, %i.am                    ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !275, !noundef !5
end_hunk_0
