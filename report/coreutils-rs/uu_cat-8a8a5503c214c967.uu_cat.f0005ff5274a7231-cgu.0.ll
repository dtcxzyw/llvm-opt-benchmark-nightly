inline.NumInlined: 454
inline.NumDeleted: 269
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEECskBwnbTnIhiv_6uu_cat:bb.a
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECskBwnbTnIhiv_6uu_cat.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECskBwnbTnIhiv_6uu_cat.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECskBwnbTnIhiv_6uu_cat.exit, %bb.g, %bb.h
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECskBwnbTnIhiv_6uu_cat(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !335, !noundef !5 ; 2 uses
  %i.a = icmp sgt i64 %.val, 0
  br i1 %i.a, label %bb.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECskBwnbTnIhiv_6uu_cat.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECskBwnbTnIhiv_6uu_cat.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECskBwnbTnIhiv_6uu_cat.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.d = load i64, ptr %i.c, align 8, !range !339, !alias.scope !336, !noundef !5 ; 3 uses
  %i.e = icmp ne i64 %i.d, 3
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i64 %i.d, -2
  %i.g = icmp samesign ugt i64 %i.d, 1
  %i.h = select i1 %i.g, i64 %i.f, i64 1
  switch i64 %i.h, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECskBwnbTnIhiv_6uu_cat.exit [
    i64 0, label %bb.c
    i64 1, label %bb.e
    i64 2, label %bb.g
  ]

bb.c:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECskBwnbTnIhiv_6uu_cat.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load i64, ptr %i.i, align 8, !range !335, !alias.scope !336, !noundef !5 ; 2 uses
  %i.j = icmp sgt i64 %.val.i, 0
  br i1 %i.j, label %bb.d, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECskBwnbTnIhiv_6uu_cat.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i = load ptr, ptr %i.k, align 8, !alias.scope !336, !nonnull !5, !noundef !5
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !336
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECskBwnbTnIhiv_6uu_cat.exit

bb.e:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECskBwnbTnIhiv_6uu_cat.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val2.i = load i64, ptr %i.l, align 8, !range !335, !alias.scope !336, !noundef !5 ; 2 uses
  %i.m = icmp sgt i64 %.val2.i, 0
  br i1 %i.m, label %bb.f, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECskBwnbTnIhiv_6uu_cat.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val3.i = load ptr, ptr %i.n, align 8, !alias.scope !336, !nonnull !5, !noundef !5
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !336
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECskBwnbTnIhiv_6uu_cat.exit

bb.g:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECskBwnbTnIhiv_6uu_cat.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4.i = load ptr, ptr %i.o, align 8, !alias.scope !336 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val5.i = load ptr, ptr %i.p, align 8, !alias.scope !336, !nonnull !5, !align !334, !noundef !5 ; 3 uses
  %i.q = load ptr, ptr %.val5.i, align 8, !invariant.load !5, !noalias !336 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  tail call void %i.q(ptr noundef nonnull %.val4.i) #25, !noalias !336, !inline_history !340
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !16, !invariant.load !5, !noalias !336 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECskBwnbTnIhiv_6uu_cat.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !341, !invariant.load !5, !noalias !336
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.v) #23, !noalias !336
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECskBwnbTnIhiv_6uu_cat.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECskBwnbTnIhiv_6uu_cat.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECskBwnbTnIhiv_6uu_cat.exit, %bb.c, %bb.d, %bb.e, %bb.f, %bb.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes10drain_pipeNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECskBwnbTnIhiv_6uu_cat(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  br label %bb.c

bb.b:                                             ; preds = %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.g, align 1
  store i8 0, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit
  %.sroa.0.048 = phi i64 [ %1, %bb.a ], [ %i.r, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit ] ; 11 uses
  %i.h = tail call noundef i32 @_RNvXsy_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeReaderNtB5_4AsFd5as_fd(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @_RNvNvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_auto10PIPE_CACHE) #23
  %i.i = zext i32 %i.h to i64
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = inttoptr i64 %.sroa.0.048 to ptr
  %i.l = tail call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},{r8},{r9},~{memory}"(ptr nonnull inttoptr (i64 275 to ptr), ptr %i.j, ptr null, ptr nonnull inttoptr (i64 1 to ptr), ptr null, ptr nonnull %i.k, ptr null) #23, !noalias !342, !srcloc !345
  %i.m = extractvalue { ptr, i32, i32 } %i.l, 0   ; 3 uses
  %.not.i.i = icmp sgt ptr %i.m, inttoptr (i64 -4096 to ptr)
  %i.n = icmp slt ptr %i.m, null
  %.sroa.0.0.i.i = and i1 %.not.i.i, %i.n
  br i1 %.sroa.0.0.i.i, label %bb.e, label %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit

bb.d:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECskBwnbTnIhiv_6uu_cat.exit, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.not.i = icmp slt i64 %.sroa.0.048, 0
  br i1 %.not.i, label %bb.f, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i, !prof !346

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.e
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !347
  %i.o = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.048, i64 noundef range(i64 1, 9) 1) #23, !noalias !347 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.g

_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit: ; preds = %bb.c
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %.sroa.0.048, %i.q               ; 2 uses
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.f:                                             ; preds = %bb.e, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.e ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %.sroa.0.048) #26
  unreachable

bb.g:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  store i64 %.sroa.0.048, ptr %i.f, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr %i.o, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  store i64 0, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @_RNvNvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_auto10PIPE_CACHE, ptr %i.e, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.0.048, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 7 uses
  store i64 %.sroa.0.048, ptr %i.v, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.w = icmp samesign ult i64 %.sroa.0.048, 32
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge88.i, %bb.g
  %.pre81.i = phi i64 [ %.pre81.pre.i, %._crit_edge88.i ], [ %.sroa.0.048, %bb.g ]
  %.pre.i = phi i64 [ %.pr.pre, %._crit_edge88.i ], [ 0, %bb.g ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.af = call fastcc { i64, ptr } @_RINvNvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #23 ; 2 uses
  %i.ag = extractvalue { i64, ptr } %i.af, 0
  %i.ah = extractvalue { i64, ptr } %i.af, 1      ; 2 uses
  %i.ai = trunc nuw i64 %i.ag to i1
  br i1 %i.ai, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = icmp eq ptr %i.ah, null
  %.pr.pre = load i64, ptr %i.t, align 8          ; 2 uses
  br i1 %i.aj, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit.thread15, label %._crit_edge88.i

._crit_edge88.i:                                  ; preds = %bb.j
  %.pre81.pre.i = load i64, ptr %i.f, align 8, !range !16, !alias.scope !353, !noalias !350
  br label %bb.h

bb.k:                                             ; preds = %bb.z, %bb.h
  %i.ak = phi i64 [ %.pre81.i, %bb.h ], [ %i.be, %bb.z ] ; 3 uses
  %i.al = phi i64 [ %.pre.i, %bb.h ], [ %i.dg, %bb.z ] ; 2 uses
  %.sroa.037.3.i = phi i64 [ 8192, %bb.h ], [ %.sroa.037.4.i, %bb.z ] ; 5 uses
  %i.am = icmp eq i64 %i.al, %i.ak
  %i.an = icmp eq i64 %i.ak, %.sroa.0.048
  %or.cond46.i = and i1 %i.an, %i.am
  br i1 %or.cond46.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i, %bb.k
  %i.ao = phi i64 [ %.pre83.i, %._crit_edge.i ], [ %i.ak, %bb.k ] ; 5 uses
  %i.ap = phi i64 [ %.pre82.i, %._crit_edge.i ], [ %i.al, %bb.k ] ; 7 uses
  %i.aq = icmp sgt i64 %i.ap, -1
  call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp eq i64 %i.ap, %i.ao
  %.pre84.i = load ptr, ptr %i.s, align 8, !alias.scope !353, !noalias !350 ; 2 uses
  br i1 %i.ar, label %bb.p, label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.as = call fastcc { i64, ptr } @_RINvNvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #23 ; 2 uses
  %i.at = extractvalue { i64, ptr } %i.as, 0
  %i.au = extractvalue { i64, ptr } %i.as, 1      ; 2 uses
  %i.av = trunc nuw i64 %i.at to i1
  br i1 %i.av, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = icmp eq ptr %i.au, null
  %.pre82.i = load i64, ptr %i.t, align 8         ; 3 uses
  br i1 %i.aw, label %bb.o, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.n
  %.pre83.i = load i64, ptr %i.f, align 8, !range !16, !alias.scope !353, !noalias !350
  br label %bb.l

bb.o:                                             ; preds = %bb.n
  %i.ax = icmp sgt i64 %.pre82.i, -1
  call void @llvm.assume(i1 %i.ax)
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit.thread15

bb.p:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !355)
  call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.ay = add nuw i64 %i.ao, 32
  %i.az = shl nuw i64 %i.ao, 1
  %..i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ay, i64 range(i64 0, -1) %i.az) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !361
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskBwnbTnIhiv_6uu_cat(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, i64 %i.ao, ptr %.pre84.i, i64 noundef %..i.i.i.i, i64 noundef 1, i64 noundef 1) #23, !noalias !362
  %i.ba = load i64, ptr %i.c, align 8, !range !363, !noalias !361, !noundef !5
  %i.bb = trunc nuw i64 %i.ba to i1
  br i1 %i.bb, label %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCskBwnbTnIhiv_6uu_cat.exit.i, label %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCskBwnbTnIhiv_6uu_cat.exit.thread.i

_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCskBwnbTnIhiv_6uu_cat.exit.thread.i: ; preds = %bb.p
  %i.bc = load ptr, ptr %i.x, align 8, !noalias !361, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !361
  store ptr %i.bc, ptr %i.s, align 8, !alias.scope !362, !noalias !350
  %i.bd = icmp sgt i64 %..i.i.i.i, -1
  call void @llvm.assume(i1 %i.bd)
  store i64 %..i.i.i.i, ptr %i.f, align 8, !alias.scope !362, !noalias !350
  br label %bb.q

_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCskBwnbTnIhiv_6uu_cat.exit.i: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !361
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit.thread

bb.q:                                             ; preds = %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCskBwnbTnIhiv_6uu_cat.exit.thread.i, %bb.l
  %i.be = phi i64 [ %i.ao, %bb.l ], [ %..i.i.i.i, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCskBwnbTnIhiv_6uu_cat.exit.thread.i ] ; 2 uses
  %i.bf = phi ptr [ %.pre84.i, %bb.l ], [ %i.bc, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCskBwnbTnIhiv_6uu_cat.exit.thread.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ap
  %i.bh = sub nsw i64 %i.be, %i.ap                ; 2 uses
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.037.3.i, i64 %i.bh) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !364
  store ptr %i.bg, ptr %i.d, align 8, !noalias !364
  store i64 %..i.i, ptr %i.y, align 8, !noalias !364
  store i64 0, ptr %i.z, align 8, !noalias !364
  store i8 0, ptr %i.aa, align 8, !noalias !364
  %i.bi = load i64, ptr %i.v, align 8, !alias.scope !365, !noalias !368, !noundef !5 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.thread.thread.i, label %.lr.ph.i

_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.thread.thread.i: ; preds = %bb.q
  store i64 %i.ap, ptr %i.t, align 8, !alias.scope !353, !noalias !350
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit.thread19

.lr.ph.i:                                         ; preds = %bb.q, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i
  %i.bk = phi i64 [ %i.de, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i ], [ %i.bi, %bb.q ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.bl = load i64, ptr %i.y, align 8, !alias.scope !372, !noalias !374, !noundef !5
  %i.bm = load i64, ptr %i.z, align 8, !alias.scope !372, !noalias !374, !noundef !5 ; 4 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 2 uses
  %i.bo = icmp ult i64 %i.bk, %i.bn
  br i1 %i.bo, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i
  %i.bp = call noundef ptr @_RNvXs4_NtNtCs2vKOLqTMYjT_3std2io4pipeRNtB5_10PipeReaderNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #23, !noalias !353
  %i.bq = load i64, ptr %i.z, align 8, !alias.scope !372, !noalias !374, !noundef !5 ; 2 uses
  %.neg.i.i = sub i64 %i.bm, %i.bq
  %i.br = load i64, ptr %i.v, align 8, !alias.scope !375, !noalias !376, !noundef !5
  %i.bs = add i64 %.neg.i.i, %i.br
  store i64 %i.bs, ptr %i.v, align 8, !alias.scope !375, !noalias !376
  br label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.i

bb.s:                                             ; preds = %.lr.ph.i
  %i.bt = load i8, ptr %i.aa, align 8, !range !4, !alias.scope !372, !noalias !374, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !377
  %i.bu = load ptr, ptr %i.d, align 8, !alias.scope !372, !noalias !374, !nonnull !5, !noundef !5
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bm ; 2 uses
  %i.bw = trunc nuw i8 %i.bt to i1
  store ptr %i.bv, ptr %i.b, align 8, !noalias !377
  store i64 %i.bk, ptr %i.ab, align 8, !noalias !377
  store i64 0, ptr %i.ac, align 8, !noalias !377
  store i8 0, ptr %i.ad, align 8, !noalias !377
  br i1 %i.bw, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = call noundef ptr @_RNvXs4_NtNtCs2vKOLqTMYjT_3std2io4pipeRNtB5_10PipeReaderNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #23, !noalias !376 ; 2 uses
  %i.by = load i8, ptr %i.ad, align 8, !range !4, !noalias !377, !noundef !5
  %i.bz = trunc nuw i8 %i.by to i1
  %i.ca = load i64, ptr %i.ac, align 8, !noalias !377, !noundef !5 ; 2 uses
  br i1 %i.bz, label %_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCskBwnbTnIhiv_6uu_cat.exit.i.i, label %bb.v

bb.u:                                             ; preds = %bb.s
  store i8 1, ptr %i.ad, align 8, !noalias !377
  %i.cb = call noundef ptr @_RNvXs4_NtNtCs2vKOLqTMYjT_3std2io4pipeRNtB5_10PipeReaderNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #23, !noalias !376
  %i.cc = load i64, ptr %i.ac, align 8, !noalias !377, !noundef !5
  br label %bb.v

bb.v:                                             ; preds = %_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCskBwnbTnIhiv_6uu_cat.exit.i.i, %bb.u, %bb.t
  %.sroa.09.0.i.i = phi i64 [ %i.cc, %bb.u ], [ %i.ca, %_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCskBwnbTnIhiv_6uu_cat.exit.i.i ], [ %i.ca, %bb.t ] ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.cb, %bb.u ], [ %i.bx, %_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCskBwnbTnIhiv_6uu_cat.exit.i.i ], [ %i.bx, %bb.t ]
  %i.cd = add i64 %.sroa.09.0.i.i, %i.bm          ; 2 uses
  store i64 %i.cd, ptr %i.z, align 8, !alias.scope !372, !noalias !374
  %i.ce = load i64, ptr %i.v, align 8, !alias.scope !375, !noalias !376, !noundef !5
  %i.cf = sub i64 %i.ce, %.sroa.09.0.i.i
  store i64 %i.cf, ptr %i.v, align 8, !alias.scope !375, !noalias !376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !377
  br label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.i

_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCskBwnbTnIhiv_6uu_cat.exit.i.i: ; preds = %bb.t
  %i.cg = sub nuw i64 %i.bn, %i.bk
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bk
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ch, i8 0, i64 range(i64 0, -9223372036854775808) %i.cg, i1 false), !alias.scope !378, !noalias !383
  store i8 1, ptr %i.aa, align 8, !alias.scope !372, !noalias !374
  br label %bb.v

_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.i: ; preds = %bb.v, %bb.r
  %i.ci = phi i64 [ %i.bq, %bb.r ], [ %i.cd, %bb.v ]
  %.sroa.0.0.i48.i = phi ptr [ %i.bp, %bb.r ], [ %.sroa.01.0.i.i, %bb.v ] ; 7 uses
  %i.cj = ptrtoint ptr %.sroa.0.0.i48.i to i64    ; 4 uses
  %.not45.i = icmp eq ptr %.sroa.0.0.i48.i, null
  br i1 %.not45.i, label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.thread.i, label %bb.w

bb.w:                                             ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.i
  %i.ck = and i64 %i.cj, 3
  switch i64 %i.ck, label %default.unreachable [
    i64 2, label %.split.i
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
    i64 0, label %.split58.i
    i64 1, label %.split57.i
  ], !prof !137

default.unreachable:                              ; preds = %bb.w
  unreachable

.split.i:                                         ; preds = %bb.w
  %i.cl = lshr i64 %i.cj, 32
  %i.cm = trunc nuw i64 %i.cl to i32
  %i.cn = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #23, !noalias !353
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !353, !nonnull !5, !noundef !5
  %i.cq = call noundef zeroext i1 %i.cp(i32 noundef %i.cm) #23, !noalias !353, !inline_history !385
  br i1 %i.cq, label %.thread61.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit

.split58.i:                                       ; preds = %bb.w
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i48.i, i64 16
  %i.cs = load i8, ptr %i.cr, align 8, !range !139, !noalias !353, !noundef !5
  %i.ct = icmp eq i8 %i.cs, 35
  br i1 %i.ct, label %.thread61.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit

.split57.i:                                       ; preds = %bb.w
  %i.cu = getelementptr i8, ptr %.sroa.0.0.i48.i, i64 31
  %i.cv = load i8, ptr %i.cu, align 8, !range !139, !noalias !353, !noundef !5
  %i.cw = icmp eq i8 %i.cv, 35
  br i1 %i.cw, label %bb.y, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i: ; preds = %bb.w
  %i.cx = lshr i64 %i.cj, 32
  %i.cy = icmp ult ptr %.sroa.0.0.i48.i, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i = trunc i64 %i.cx to i8
  %spec.select.i.i.i.i = select i1 %i.cy, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.cz = icmp ne i8 %spec.select.i.i.i.i, -1
  call void @llvm.assume(i1 %i.cz)
  %i.da = icmp eq i8 %spec.select.i.i.i.i, 35
  br i1 %i.da, label %bb.x, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit

.thread61.i:                                      ; preds = %.split58.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !364
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i

bb.x:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !364
  %i.db = and i64 %i.cj, 1095216660480
  %i.dc = icmp ne i64 %i.db, 1095216660480
  call void @llvm.assume(i1 %i.cy)
  call void @llvm.assume(i1 %i.dc)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i

bb.y:                                             ; preds = %.split57.i
  %i.dd = getelementptr i8, ptr %.sroa.0.0.i48.i, i64 -1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !364
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dd) ]
  store ptr %i.dd, ptr %i.ae, align 8, !alias.scope !386, !noalias !364
  store i8 3, ptr %i.a, align 8, !alias.scope !386, !noalias !364
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae) #23, !noalias !353
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i: ; preds = %bb.y, %bb.x, %.thread61.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !364
  %i.de = load i64, ptr %i.v, align 8, !alias.scope !389, !noalias !391, !noundef !5 ; 2 uses
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit._RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.thread.loopexit_crit_edge.i, label %.lr.ph.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit._RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.thread.loopexit_crit_edge.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i
  %.pre86.pre.i = load i64, ptr %i.z, align 8, !noalias !364
  br label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.thread.i

_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.thread.i: ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit._RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.thread.loopexit_crit_edge.i
  %.pre86.i = phi i64 [ %.pre86.pre.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit._RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.thread.loopexit_crit_edge.i ], [ %i.ci, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.i ] ; 3 uses
  %.pre87.i = load i8, ptr %i.aa, align 8, !range !4, !noalias !364
  %i.dg = add i64 %.pre86.i, %i.ap                ; 3 uses
  store i64 %i.dg, ptr %i.t, align 8, !alias.scope !353, !noalias !350
  %i.dh = icmp eq i64 %.pre86.i, 0
  br i1 %i.dh, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit.thread19, label %bb.aa

bb.z:                                             ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.sroa.037.4.i = phi i64 [ -1, %bb.ad ], [ %i.dl, %bb.ac ], [ %.sroa.037.3.i, %bb.ab ], [ -1, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !364
  br label %bb.k

bb.aa:                                            ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.thread.i
  %i.di = trunc nuw i8 %.pre87.i to i1
  br i1 %i.di, label %bb.ab, label %bb.z

bb.ab:                                            ; preds = %bb.aa
  %i.dj = icmp uge i64 %i.bh, %.sroa.037.3.i
  %i.dk = icmp eq i64 %.pre86.i, %..i.i
  %or.cond.i = and i1 %i.dj, %i.dk
  br i1 %or.cond.i, label %bb.ac, label %bb.z

bb.ac:                                            ; preds = %bb.ab
  %i.dl = shl nuw i64 %.sroa.037.3.i, 1
  %i.dm = icmp slt i64 %.sroa.037.3.i, 0
  br i1 %i.dm, label %bb.ad, label %bb.z, !prof !12

bb.ad:                                            ; preds = %bb.ac
  br label %bb.z

_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit.thread19: ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.thread.i, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.thread.thread.i
end_hunk_0
begin_hunk_1_@_RNvXs3_CskBwnbTnIhiv_6uu_catNtB5_8CatErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt:bb.a
bb.t:                                             ; preds = %thread-pre-split.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  %i.bk = add nsw i64 %i.ae, -1                   ; 3 uses
  %i.bl = icmp samesign ult i64 %i.ae, 17
  br i1 %i.bl, label %.preheader114.i, label %.lr.ph.i

.preheader114.i:                                  ; preds = %bb.t
  %.not103137.i = icmp eq i64 %i.bk, 0
  br i1 %.not103137.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskBwnbTnIhiv_6uu_cat.exit.i, label %.lr.ph141.i

.lr.ph.i:                                         ; preds = %bb.t, %bb.w
  %.sroa.0.1136.i = phi ptr [ %i.bm, %bb.w ], [ %i.bj, %bb.t ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.bn, %bb.w ], [ %i.bk, %bb.t ]
  %.sroa.084.0134.i = phi i64 [ %i.by, %bb.w ], [ 0, %bb.t ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.bn = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
  %i.bo = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.bp = extractvalue { i64, i1 } %i.bo, 0
  %i.bq = extractvalue { i64, i1 } %i.bo, 1
  br i1 %i.bq, label %.thread, label %bb.u, !prof !12

bb.u:                                             ; preds = %.lr.ph.i
  %i.br = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !909, !noalias !912, !noundef !5
  %i.bs = zext i8 %i.br to i32
  %i.bt = add nsw i32 %i.bs, -48                  ; 2 uses
  %i.bu = icmp ult i32 %i.bt, 10
  br i1 %i.bu, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.bv = zext nneg i32 %i.bt to i64
  %i.bw = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.bp, i64 %i.bv) ; 2 uses
  %i.bx = extractvalue { i64, i1 } %i.bw, 1
  br i1 %i.bx, label %.thread, label %bb.w, !prof !12

bb.w:                                             ; preds = %bb.v
  %i.by = extractvalue { i64, i1 } %i.bw, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.bn, 0
  br i1 %.not102.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskBwnbTnIhiv_6uu_cat.exit.i, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %.preheader114.i, %bb.x
  %.sroa.0.2140.i = phi ptr [ %i.cf, %bb.x ], [ %i.bj, %.preheader114.i ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.ce, %bb.x ], [ %i.bk, %.preheader114.i ]
  %.sroa.084.2138.i = phi i64 [ %i.ch, %bb.x ], [ 0, %.preheader114.i ]
  %i.bz = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !909, !noalias !912, !noundef !5
  %i.ca = zext i8 %i.bz to i32
  %i.cb = add nsw i32 %i.ca, -48                  ; 2 uses
  %i.cc = icmp ult i32 %i.cb, 10
  br i1 %i.cc, label %bb.x, label %.thread

bb.x:                                             ; preds = %.lr.ph141.i
  %i.cd = mul i64 %.sroa.084.2138.i, 10
  %i.ce = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.cg = zext nneg i32 %i.cb to i64
  %i.ch = sub i64 %i.cd, %i.cg                    ; 2 uses
  %.not103.i = icmp eq i64 %i.ce, 0
  br i1 %.not103.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskBwnbTnIhiv_6uu_cat.exit.i, label %.lr.ph141.i

bb.y:                                             ; preds = %bb.r, %bb.s, %thread-pre-split.i
  %.sroa.26.0.i = phi i64 [ %i.bi, %bb.s ], [ %i.ae, %thread-pre-split.i ], [ %i.ae, %bb.r ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.bh, %bb.s ], [ %i.ag, %thread-pre-split.i ], [ %i.ag, %bb.r ] ; 2 uses
  %i.ci = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.ci, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.y
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskBwnbTnIhiv_6uu_cat.exit.i, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.y, %bb.ab
  %.sroa.0.3145.i = phi ptr [ %i.cj, %bb.ab ], [ %.sroa.0.0.i, %bb.y ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.ck, %bb.ab ], [ %.sroa.26.0.i, %bb.y ]
  %.sroa.084.3143.i = phi i64 [ %i.cv, %bb.ab ], [ 0, %bb.y ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.ck = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.cl = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.cm = extractvalue { i64, i1 } %i.cl, 0
  %i.cn = extractvalue { i64, i1 } %i.cl, 1
  br i1 %i.cn, label %.thread, label %bb.z, !prof !12

bb.z:                                             ; preds = %.preheader111.i
  %i.co = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !909, !noalias !912, !noundef !5
  %i.cp = zext i8 %i.co to i32
  %i.cq = add nsw i32 %i.cp, -48                  ; 2 uses
  %i.cr = icmp ult i32 %i.cq, 10
  br i1 %i.cr, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.cs = zext nneg i32 %i.cq to i64
  %i.ct = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.cm, i64 %i.cs) ; 2 uses
  %i.cu = extractvalue { i64, i1 } %i.ct, 1
  br i1 %i.cu, label %.thread, label %bb.ab, !prof !12

bb.ab:                                            ; preds = %bb.aa
  %i.cv = extractvalue { i64, i1 } %i.ct, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.ck, 0
  br i1 %.not104.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskBwnbTnIhiv_6uu_cat.exit.i, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i, %bb.ac
  %.sroa.0.4149.i = phi ptr [ %i.dc, %bb.ac ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.db, %bb.ac ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.084.4147.i = phi i64 [ %i.de, %bb.ac ], [ 0, %.preheader.i ]
  %i.cw = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !909, !noalias !912, !noundef !5
  %i.cx = zext i8 %i.cw to i32
  %i.cy = add nsw i32 %i.cx, -48                  ; 2 uses
  %i.cz = icmp ult i32 %i.cy, 10
  br i1 %i.cz, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %.lr.ph150.i
  %i.da = mul i64 %.sroa.084.4147.i, 10
  %i.db = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.dd = zext nneg i32 %i.cy to i64
  %i.de = add i64 %i.da, %i.dd                    ; 2 uses
  %.not105.i = icmp eq i64 %i.db, 0
  br i1 %.not105.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskBwnbTnIhiv_6uu_cat.exit.i, label %.lr.ph150.i

.thread:                                          ; preds = %.lr.ph.i, %bb.v, %bb.u, %.lr.ph141.i, %.preheader111.i, %bb.z, %bb.aa, %.lr.ph150.i, %bb.r, %bb.r, %bb.f
  %.ph = phi ptr [ inttoptr (i64 1 to ptr), %bb.f ], [ %i.ag, %.preheader111.i ], [ %i.ag, %.lr.ph150.i ], [ %i.ag, %bb.r ], [ %i.ag, %.lr.ph141.i ], [ %i.ag, %bb.r ], [ %i.ag, %bb.aa ], [ %i.ag, %bb.z ], [ %i.ag, %bb.u ], [ %i.ag, %bb.v ], [ %i.ag, %.lr.ph.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.ae) #22
  %i.df = load i8, ptr %i.k, align 8, !range !4, !noundef !5
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.ae, label %bb.an

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskBwnbTnIhiv_6uu_cat.exit.i: ; preds = %bb.w, %bb.x, %bb.ab, %bb.ac, %.preheader.i, %.preheader114.i
  %.sroa.15187.0 = phi i64 [ %i.ch, %bb.x ], [ 0, %.preheader114.i ], [ %i.de, %bb.ac ], [ 0, %.preheader.i ], [ %i.cv, %bb.ab ], [ %i.by, %bb.w ]
  %i.dh = sitofp i64 %.sroa.15187.0 to double
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #22, !noalias !914
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !917, !noalias !914 ; 11 uses
  store i64 -1, ptr %.pre.i, align 8
  %.sroa.027.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  store ptr @61, ptr %.sroa.027.sroa.4.0..sroa_idx.i, align 8
  %.sroa.027.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  store i64 8, ptr %.sroa.027.sroa.5.0..sroa_idx.i, align 8
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  store i64 0, ptr %.sroa.428.0..sroa_idx.i, align 8
  %.sroa.630.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 40
  store i64 0, ptr %.sroa.630.0..sroa_idx.i, align 8
  %.sroa.832.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 56
  store i64 0, ptr %.sroa.832.0..sroa_idx.i, align 8
  %.sroa.1034.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 72
  store i64 0, ptr %.sroa.1034.0..sroa_idx.i, align 8
  %.sroa.1236.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 88
  store i64 0, ptr %.sroa.1236.0..sroa_idx.i, align 8
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 104
  store i64 -1, ptr %.sroa.14.0..sroa_idx.i, align 8
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 128
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.16.0..sroa_idx.i, align 8
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 136
  store double %i.dh, ptr %.sroa.21.0..sroa_idx.i, align 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !917, !noalias !914
  br label %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECskBwnbTnIhiv_6uu_cat.exit

_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECskBwnbTnIhiv_6uu_cat.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskBwnbTnIhiv_6uu_cat.exit.i, %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECskBwnbTnIhiv_6uu_cat.exit
  %i.di = phi ptr [ %.ph, %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECskBwnbTnIhiv_6uu_cat.exit ], [ %i.ag, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskBwnbTnIhiv_6uu_cat.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 26, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.dj = icmp eq i64 %i.ae, 0
  br i1 %i.dj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit117, label %bb.ad

bb.ad:                                            ; preds = %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECskBwnbTnIhiv_6uu_cat.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.di, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit117

bb.ae:                                            ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !921)
  %i.dk = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !921, !noalias !924, !nonnull !5, !noundef !5 ; 3 uses
  %i.dl = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !921, !noalias !924, !noundef !5 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !926)
  call void @llvm.experimental.noalias.scope.decl(metadata !929)
  switch i64 %i.dl, label %.lr.ph.i.i.i129 [
    i64 0, label %bb.ag
    i64 1, label %._crit_edge.i.i.i118
  ]

._crit_edge.i.i.i118:                             ; preds = %.lr.ph.i.i.i129, %bb.ae
  %.sroa.05.0.lcssa.i.i.i119 = phi i64 [ 0, %bb.ae ], [ %i.eb, %.lr.ph.i.i.i129 ] ; 4 uses
  %i.dm = getelementptr inbounds nuw [144 x i8], ptr %i.dk, i64 %.sroa.05.0.lcssa.i.i.i119 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !932)
  call void @llvm.experimental.noalias.scope.decl(metadata !935)
  %.sroa.0.0.in.i.i.i.i.i.i120 = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i121 = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i.i120, align 8, !alias.scope !938, !noalias !939, !nonnull !5, !noundef !5
  %.sroa.3.0.in.i.i.i.i.i.i122 = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %.sroa.3.0.i.i.i.i.i.i123 = load i64, ptr %.sroa.3.0.in.i.i.i.i.i.i122, align 8, !alias.scope !938, !noalias !939, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i124 = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i.i123, i64 8)
  %i.dn = call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i.i.i121, ptr nonnull readonly @61, i64 %spec.store.select.i.i.i.i.i.i.i124), !alias.scope !942, !noalias !946 ; 2 uses
  %i.do = sext i32 %i.dn to i64
  %i.dp = icmp eq i32 %i.dn, 0
  %i.dq = add i64 %.sroa.3.0.i.i.i.i.i.i123, -8
  %spec.select.i.i.i.i.i.i.i125 = select i1 %i.dp, i64 %i.dq, i64 %i.do ; 2 uses
  %i.dr = icmp eq i64 %spec.select.i.i.i.i.i.i.i125, 0
  br i1 %i.dr, label %bb.ak, label %bb.af

.lr.ph.i.i.i129:                                  ; preds = %bb.ae, %.lr.ph.i.i.i129
  %.sroa.01.025.i.i.i130 = phi i64 [ %i.ec, %.lr.ph.i.i.i129 ], [ %i.dl, %bb.ae ] ; 2 uses
  %.sroa.05.024.i.i.i131 = phi i64 [ %i.eb, %.lr.ph.i.i.i129 ], [ 0, %bb.ae ] ; 2 uses
  %i.ds = lshr i64 %.sroa.01.025.i.i.i130, 1      ; 2 uses
  %i.dt = add nuw i64 %i.ds, %.sroa.05.024.i.i.i131 ; 3 uses
  %i.du = icmp ult i64 %i.dt, %i.dl
  call void @llvm.assume(i1 %i.du)
  %i.dv = getelementptr inbounds nuw [144 x i8], ptr %i.dk, i64 %i.dt ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !947)
  call void @llvm.experimental.noalias.scope.decl(metadata !950)
  %.sroa.0.0.in.i.i.i14.i.i.i132 = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.sroa.0.0.i.i.i15.i.i.i133 = load ptr, ptr %.sroa.0.0.in.i.i.i14.i.i.i132, align 8, !alias.scope !953, !noalias !954, !nonnull !5, !noundef !5
  %.sroa.3.0.in.i.i.i16.i.i.i134 = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %.sroa.3.0.i.i.i17.i.i.i135 = load i64, ptr %.sroa.3.0.in.i.i.i16.i.i.i134, align 8, !alias.scope !953, !noalias !954, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i22.i.i.i136 = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i17.i.i.i135, i64 8)
  %i.dw = call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i15.i.i.i133, ptr nonnull readonly @61, i64 %spec.store.select.i.i.i.i22.i.i.i136), !alias.scope !956, !noalias !960 ; 2 uses
  %i.dx = sext i32 %i.dw to i64
  %i.dy = icmp eq i32 %i.dw, 0
  %i.dz = add i64 %.sroa.3.0.i.i.i17.i.i.i135, -8
  %spec.select.i.i.i.i23.i.i.i137 = select i1 %i.dy, i64 %i.dz, i64 %i.dx
  %i.ea = icmp sgt i64 %spec.select.i.i.i.i23.i.i.i137, 0
  %i.eb = select i1 %i.ea, i64 %.sroa.05.024.i.i.i131, i64 %i.dt, !unpredictable !5 ; 2 uses
  %i.ec = sub i64 %.sroa.01.025.i.i.i130, %i.ds   ; 2 uses
  %i.ed = icmp ugt i64 %i.ec, 1
  br i1 %i.ed, label %.lr.ph.i.i.i129, label %._crit_edge.i.i.i118

bb.af:                                            ; preds = %._crit_edge.i.i.i118
  %spec.select.i.i.i.i.lobit.i.i.i126 = lshr i64 %spec.select.i.i.i.i.i.i.i125, 63
  %i.ee = add nuw nsw i64 %spec.select.i.i.i.i.lobit.i.i.i126, %.sroa.05.0.lcssa.i.i.i119 ; 2 uses
  %i.ef = icmp ule i64 %i.ee, %i.dl
  call void @llvm.assume(i1 %i.ef)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sroa.4.0.i.i.ph.i = phi i64 [ %i.ee, %bb.af ], [ %i.dl, %bb.ae ] ; 3 uses
  %i.eg = icmp ult i64 %i.dl, 64051194700380388
  call void @llvm.assume(i1 %i.eg)
  %i.eh = load i64, ptr %i.l, align 8, !range !16, !alias.scope !961, !noalias !964, !noundef !5
  %i.ei = icmp eq i64 %i.dl, %i.eh
  br i1 %i.ei, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #22, !noalias !964
  %.pre.i128 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !961, !noalias !964
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ej = phi ptr [ %.pre.i128, %bb.ah ], [ %i.dk, %bb.ag ]
  %i.ek = getelementptr inbounds nuw [144 x i8], ptr %i.ej, i64 %.sroa.4.0.i.i.ph.i ; 9 uses
  %i.el = icmp samesign ult i64 %.sroa.4.0.i.i.ph.i, %i.dl
  br i1 %i.el, label %bb.aj, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskBwnbTnIhiv_6uu_cat.exit.i127

bb.aj:                                            ; preds = %bb.ai
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 144
  %i.en = sub nuw nsw i64 %i.dl, %.sroa.4.0.i.i.ph.i
  %i.eo = mul nuw nsw i64 %i.en, 144
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.em, ptr nonnull align 8 %i.ek, i64 %i.eo, i1 false), !noalias !964
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskBwnbTnIhiv_6uu_cat.exit.i127

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskBwnbTnIhiv_6uu_cat.exit.i127: ; preds = %bb.aj, %bb.ai
  store i64 -1, ptr %i.ek, align 8, !noalias !924
  %.sroa.05.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store ptr @61, ptr %.sroa.05.sroa.4.0..sroa_idx.i, align 8, !noalias !924
  %.sroa.05.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i64 8, ptr %.sroa.05.sroa.5.0..sroa_idx.i, align 8, !noalias !924
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  store i64 2, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !924
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  store i64 %i.ae, ptr %.sroa.57.0..sroa_idx.i, align 8
  %.sroa.5190.0..sroa.57.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  store ptr %.ph, ptr %.sroa.5190.0..sroa.57.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.6.0..sroa.57.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  store i64 %i.ae, ptr %.sroa.6.0..sroa.57.0..sroa_idx.i.sroa_idx, align 8
  %i.ep = add nuw nsw i64 %i.dl, 1
  store i64 %i.ep, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !961, !noalias !964
  br label %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit

bb.ak:                                            ; preds = %._crit_edge.i.i.i118
  %i.eq = icmp ult i64 %.sroa.05.0.lcssa.i.i.i119, %i.dl
  br i1 %i.eq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECskBwnbTnIhiv_6uu_cat(ptr noalias nofree noundef align 8 dereferenceable(144) %i.dm) #23, !noalias !966
  store i64 -1, ptr %i.dm, align 8, !noalias !966
  store ptr @61, ptr %.sroa.0.0.in.i.i.i.i.i.i120, align 8, !noalias !966
  store i64 8, ptr %.sroa.3.0.in.i.i.i.i.i.i122, align 8, !noalias !966
  %i.er = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store i64 2, ptr %i.er, align 8, !noalias !966
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  store i64 %i.ae, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !921
  %.sroa.5190.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  store ptr %.ph, ptr %.sroa.5190.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !noalias !921
  %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  store i64 %i.ae, ptr %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !noalias !921
  br label %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i.i119, i64 noundef %i.dl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #21, !noalias !966
  unreachable

_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskBwnbTnIhiv_6uu_cat.exit.i127, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 26, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit117

bb.an:                                            ; preds = %.thread
  %i.es = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.et = load double, ptr %i.es, align 8, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !967)
  %i.eu = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !967, !nonnull !5, !noundef !5 ; 3 uses
  %i.ev = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !967, !noundef !5 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !970)
  call void @llvm.experimental.noalias.scope.decl(metadata !973)
  switch i64 %i.ev, label %.lr.ph.i.i.i174 [
    i64 0, label %.thread.i147
    i64 1, label %._crit_edge.i.i.i138
  ]

._crit_edge.i.i.i138:                             ; preds = %.lr.ph.i.i.i174, %bb.an
  %.sroa.05.0.lcssa.i.i.i139 = phi i64 [ 0, %bb.an ], [ %i.fl, %.lr.ph.i.i.i174 ] ; 4 uses
  %i.ew = getelementptr inbounds nuw [144 x i8], ptr %i.eu, i64 %.sroa.05.0.lcssa.i.i.i139 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !976)
  call void @llvm.experimental.noalias.scope.decl(metadata !979)
  %.sroa.0.0.in.i.i.i.i.i.i140 = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i141 = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i.i140, align 8, !alias.scope !982, !noalias !983, !nonnull !5, !noundef !5
  %.sroa.3.0.in.i.i.i.i.i.i142 = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  %.sroa.3.0.i.i.i.i.i.i143 = load i64, ptr %.sroa.3.0.in.i.i.i.i.i.i142, align 8, !alias.scope !982, !noalias !983, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i144 = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i.i143, i64 8)
  %i.ex = call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i.i.i141, ptr nonnull readonly @61, i64 %spec.store.select.i.i.i.i.i.i.i144), !alias.scope !986, !noalias !990 ; 2 uses
  %i.ey = sext i32 %i.ex to i64
  %i.ez = icmp eq i32 %i.ex, 0
  %i.fa = add i64 %.sroa.3.0.i.i.i.i.i.i143, -8
  %spec.select.i.i.i.i.i.i.i145 = select i1 %i.ez, i64 %i.fa, i64 %i.ey ; 2 uses
  %i.fb = icmp eq i64 %spec.select.i.i.i.i.i.i.i145, 0
  br i1 %i.fb, label %bb.as, label %bb.ao

.lr.ph.i.i.i174:                                  ; preds = %bb.an, %.lr.ph.i.i.i174
  %.sroa.01.025.i.i.i175 = phi i64 [ %i.fm, %.lr.ph.i.i.i174 ], [ %i.ev, %bb.an ] ; 2 uses
  %.sroa.05.024.i.i.i176 = phi i64 [ %i.fl, %.lr.ph.i.i.i174 ], [ 0, %bb.an ] ; 2 uses
  %i.fc = lshr i64 %.sroa.01.025.i.i.i175, 1      ; 2 uses
  %i.fd = add nuw i64 %i.fc, %.sroa.05.024.i.i.i176 ; 3 uses
  %i.fe = icmp ult i64 %i.fd, %i.ev
  call void @llvm.assume(i1 %i.fe)
  %i.ff = getelementptr inbounds nuw [144 x i8], ptr %i.eu, i64 %i.fd ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !991)
  call void @llvm.experimental.noalias.scope.decl(metadata !994)
  %.sroa.0.0.in.i.i.i14.i.i.i177 = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %.sroa.0.0.i.i.i15.i.i.i178 = load ptr, ptr %.sroa.0.0.in.i.i.i14.i.i.i177, align 8, !alias.scope !997, !noalias !998, !nonnull !5, !noundef !5
  %.sroa.3.0.in.i.i.i16.i.i.i179 = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %.sroa.3.0.i.i.i17.i.i.i180 = load i64, ptr %.sroa.3.0.in.i.i.i16.i.i.i179, align 8, !alias.scope !997, !noalias !998, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i22.i.i.i181 = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i17.i.i.i180, i64 8)
  %i.fg = call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i15.i.i.i178, ptr nonnull readonly @61, i64 %spec.store.select.i.i.i.i22.i.i.i181), !alias.scope !1000, !noalias !1004 ; 2 uses
  %i.fh = sext i32 %i.fg to i64
  %i.fi = icmp eq i32 %i.fg, 0
  %i.fj = add i64 %.sroa.3.0.i.i.i17.i.i.i180, -8
  %spec.select.i.i.i.i23.i.i.i182 = select i1 %i.fi, i64 %i.fj, i64 %i.fh
  %i.fk = icmp sgt i64 %spec.select.i.i.i.i23.i.i.i182, 0
  %i.fl = select i1 %i.fk, i64 %.sroa.05.024.i.i.i176, i64 %i.fd, !unpredictable !5 ; 2 uses
  %i.fm = sub i64 %.sroa.01.025.i.i.i175, %i.fc   ; 2 uses
  %i.fn = icmp ugt i64 %i.fm, 1
  br i1 %i.fn, label %.lr.ph.i.i.i174, label %._crit_edge.i.i.i138

bb.ao:                                            ; preds = %._crit_edge.i.i.i138
  %spec.select.i.i.i.i.lobit.i.i.i146 = lshr i64 %spec.select.i.i.i.i.i.i.i145, 63
  %i.fo = add nuw nsw i64 %spec.select.i.i.i.i.lobit.i.i.i146, %.sroa.05.0.lcssa.i.i.i139 ; 2 uses
  %i.fp = icmp ule i64 %i.fo, %i.ev
  call void @llvm.assume(i1 %i.fp)
  %i.fq = icmp ult i64 %i.ev, 64051194700380388
  call void @llvm.assume(i1 %i.fq)
  br label %.thread.i147

.thread.i147:                                     ; preds = %bb.ao, %bb.an
  %.sroa.4.0.i.i.ph47.i148 = phi i64 [ %i.fo, %bb.ao ], [ %i.ev, %bb.an ] ; 3 uses
  %i.fr = load i64, ptr %i.l, align 8, !range !16, !alias.scope !1005, !noalias !1008, !noundef !5
  %i.fs = icmp eq i64 %i.ev, %i.fr
  br i1 %i.fs, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.thread.i147
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #22, !noalias !1008
  %.pre.i163 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1005, !noalias !1008
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.thread.i147
  %i.ft = phi ptr [ %.pre.i163, %bb.ap ], [ %i.eu, %.thread.i147 ]
  %i.fu = getelementptr inbounds nuw [144 x i8], ptr %i.ft, i64 %.sroa.4.0.i.i.ph47.i148 ; 13 uses
  %i.fv = icmp samesign ult i64 %.sroa.4.0.i.i.ph47.i148, %i.ev
  br i1 %i.fv, label %bb.ar, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskBwnbTnIhiv_6uu_cat.exit.i149

bb.ar:                                            ; preds = %bb.aq
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 144
  %i.fx = sub nuw nsw i64 %i.ev, %.sroa.4.0.i.i.ph47.i148
  %i.fy = mul nuw nsw i64 %i.fx, 144
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fw, ptr nonnull align 8 %i.fu, i64 %i.fy, i1 false), !noalias !1008
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskBwnbTnIhiv_6uu_cat.exit.i149

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskBwnbTnIhiv_6uu_cat.exit.i149: ; preds = %bb.ar, %bb.aq
  store i64 -1, ptr %i.fu, align 8
  %.sroa.027.sroa.4.0..sroa_idx.i150 = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store ptr @61, ptr %.sroa.027.sroa.4.0..sroa_idx.i150, align 8
  %.sroa.027.sroa.5.0..sroa_idx.i151 = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store i64 8, ptr %.sroa.027.sroa.5.0..sroa_idx.i151, align 8
  %.sroa.428.0..sroa_idx.i152 = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  store i64 0, ptr %.sroa.428.0..sroa_idx.i152, align 8
  %.sroa.630.0..sroa_idx.i153 = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  store i64 0, ptr %.sroa.630.0..sroa_idx.i153, align 8
  %.sroa.832.0..sroa_idx.i154 = getelementptr inbounds nuw i8, ptr %i.fu, i64 56
  store i64 0, ptr %.sroa.832.0..sroa_idx.i154, align 8
  %.sroa.1034.0..sroa_idx.i155 = getelementptr inbounds nuw i8, ptr %i.fu, i64 72
  store i64 0, ptr %.sroa.1034.0..sroa_idx.i155, align 8
  %.sroa.1236.0..sroa_idx.i156 = getelementptr inbounds nuw i8, ptr %i.fu, i64 88
  store i64 0, ptr %.sroa.1236.0..sroa_idx.i156, align 8
  %.sroa.14.0..sroa_idx.i157 = getelementptr inbounds nuw i8, ptr %i.fu, i64 104
  store i64 -1, ptr %.sroa.14.0..sroa_idx.i157, align 8
  %.sroa.16.0..sroa_idx.i158 = getelementptr inbounds nuw i8, ptr %i.fu, i64 128
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.16.0..sroa_idx.i158, align 8
  %.sroa.21.0..sroa_idx.i162 = getelementptr inbounds nuw i8, ptr %i.fu, i64 136
  store double %i.et, ptr %.sroa.21.0..sroa_idx.i162, align 8
  %i.fz = add nuw nsw i64 %i.ev, 1
  store i64 %i.fz, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1005, !noalias !1008
  br label %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECskBwnbTnIhiv_6uu_cat.exit

bb.as:                                            ; preds = %._crit_edge.i.i.i138
  %i.ga = icmp ult i64 %.sroa.05.0.lcssa.i.i.i139, %i.ev
  br i1 %i.ga, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECskBwnbTnIhiv_6uu_cat(ptr noalias nofree noundef align 8 dereferenceable(144) %i.ew) #23, !noalias !967
  store i64 -1, ptr %i.ew, align 8, !noalias !967
  store ptr @61, ptr %.sroa.0.0.in.i.i.i.i.i.i140, align 8, !noalias !967
  store i64 8, ptr %.sroa.3.0.in.i.i.i.i.i.i142, align 8, !noalias !967
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  store i64 0, ptr %i.gb, align 8, !noalias !967
  %.sroa.42.0..sroa_idx.i164 = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  store i64 0, ptr %.sroa.42.0..sroa_idx.i164, align 8, !noalias !967
  %.sroa.53.0..sroa_idx.i165 = getelementptr inbounds nuw i8, ptr %i.ew, i64 56
  store i64 0, ptr %.sroa.53.0..sroa_idx.i165, align 8, !noalias !967
  %.sroa.64.0..sroa_idx.i166 = getelementptr inbounds nuw i8, ptr %i.ew, i64 72
  store i64 0, ptr %.sroa.64.0..sroa_idx.i166, align 8, !noalias !967
  %.sroa.75.0..sroa_idx.i167 = getelementptr inbounds nuw i8, ptr %i.ew, i64 88
  store i64 0, ptr %.sroa.75.0..sroa_idx.i167, align 8, !noalias !967
  %.sroa.86.0..sroa_idx.i168 = getelementptr inbounds nuw i8, ptr %i.ew, i64 104
  store i64 -1, ptr %.sroa.86.0..sroa_idx.i168, align 8, !noalias !967
  %.sroa.97.0..sroa_idx.i169 = getelementptr inbounds nuw i8, ptr %i.ew, i64 128
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.97.0..sroa_idx.i169, align 8, !noalias !967
  %.sroa.138.0..sroa_idx.i173 = getelementptr inbounds nuw i8, ptr %i.ew, i64 136
  store double %i.et, ptr %.sroa.138.0..sroa_idx.i173, align 8, !noalias !967
  br label %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECskBwnbTnIhiv_6uu_cat.exit

bb.au:                                            ; preds = %bb.as
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i.i139, i64 noundef %i.ev, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #21, !noalias !967
  unreachable

_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECskBwnbTnIhiv_6uu_cat.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskBwnbTnIhiv_6uu_cat.exit.i149, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECskBwnbTnIhiv_6uu_cat.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit117: ; preds = %bb.ad, %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECskBwnbTnIhiv_6uu_cat.exit, %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.m, ptr %i.i, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.422.0..sroa_idx, align 8
  %i.gc = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !nonnull !5, !align !334, !noundef !5
  %i.gf = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.gc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ge, ptr noundef nonnull @28, ptr noundef nonnull %i.i) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.val106 = load i64, ptr %i.m, align 8, !range !16, !noundef !5 ; 2 uses
  %i.gg = icmp eq i64 %.val106, 0
  br i1 %i.gg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit183, label %bb.av

bb.av:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit117
  %i.gh = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val107 = load ptr, ptr %i.gh, align 8, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val107, i64 noundef %.val106, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit183

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit183: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit117, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.o
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs_CskBwnbTnIhiv_6uu_catNtB4_8CatErrorINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtNtCscC7ZI6NG8RX_6rustix7backend2io5errno5ErrnoE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i16 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load atomic ptr, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8
  %.not.i = icmp eq ptr %i.a, @19
  br i1 %.not.i, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #23
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit: ; preds = %bb.a, %bb.b
  %i.b = sext i16 %1 to i64
  %.neg = mul nsw i64 %i.b, -4294967296
  %i.c = or disjoint i64 %.neg, 2
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #23
  ret i1 %i.e
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNCNvNvMNtNtCs2vKOLqTMYjT_3std2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error17from_raw_os_error9FUNCTIONS0INtNtNtBK_3ops8function6FnOnceTlQNtNtBK_3fmt9FormatterEE9call_onceCskBwnbTnIhiv_6uu_cat(i32 noundef %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1010
  call void @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys2io5error4unix12error_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %0) #23, !noalias !1010
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noalias !1010, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noalias !1010, !noundef !5
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e) #23
  %.val.i = load i64, ptr %i.a, align 8, !range !16, !noalias !1010, !noundef !5 ; 2 uses
  %i.g = icmp eq i64 %.val.i, 0
  br i1 %i.g, label %_RNCNvNvMNtNtCs2vKOLqTMYjT_3std2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error17from_raw_os_error9FUNCTIONS0CskBwnbTnIhiv_6uu_cat.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RNCNvNvMNtNtCs2vKOLqTMYjT_3std2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error17from_raw_os_error9FUNCTIONS0CskBwnbTnIhiv_6uu_cat.exit

_RNCNvNvMNtNtCs2vKOLqTMYjT_3std2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error17from_raw_os_error9FUNCTIONS0CskBwnbTnIhiv_6uu_cat.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1010
  ret i1 %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMsa_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stdout4lock(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0
end_hunk_1
