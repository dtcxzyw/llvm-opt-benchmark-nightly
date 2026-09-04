Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_tail-cba96ed9f34a954b.uu_tail.c5e32ca4799a957a-cgu.0?download=true
inline.NumInlined: 2464
inline.NumDeleted: 1150
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgZlHlzpN0xi_7uu_tail:bb.a
bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !32, !noalias !1686, !noundef !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !1686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1686
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #39
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !1686, !nonnull !10, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1686
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !1686
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !1686
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1699, !noalias !1700, !noundef !10 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgZlHlzpN0xi_7uu_tail.exit.i.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit
  %i.g = phi i64 [ %i.d, %.lr.ph ], [ %i.bf, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit ]
  %..i.i = call noundef range(i64 1, 33) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.g, i64 32)
  %i.h = call { i64, ptr } @_RNvXs4_NtNtCs2vKOLqTMYjT_3std2io4pipeRNtB5_10PipeReaderNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull %i.b, i64 noundef %..i.i) #33 ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 14 uses
  %i.k = trunc nuw i64 %i.i to i1
  %i.l = ptrtoint ptr %i.j to i64                 ; 6 uses
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.c, align 8, !alias.scope !1699, !noalias !1700, !noundef !10 ; 2 uses
  %.not.i = icmp ult i64 %i.m, %i.l
  br i1 %.not.i, label %bb.d, label %.loopexit, !prof !18

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @234, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #37
  unreachable

bb.e:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.n = and i64 %i.l, 3
  switch i64 %i.n, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit
    i64 0, label %.split10
    i64 1, label %.split9
  ], !prof !23

default.unreachable:                              ; preds = %bb.e
  unreachable

.split:                                           ; preds = %bb.e
  %i.o = lshr i64 %i.l, 32
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #33
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !10, !noundef !10
  %i.t = call noundef zeroext i1 %i.s(i32 noundef %i.p) #33, !inline_history !2
  br i1 %i.t, label %.thread, label %.loopexit12

.split10:                                         ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.v = load i8, ptr %i.u, align 8, !range !31, !noundef !10
  %i.w = icmp eq i8 %i.v, 35
  br i1 %i.w, label %.thread, label %.loopexit12

.split9:                                          ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.j, i64 31
  %i.y = load i8, ptr %i.x, align 8, !range !31, !noundef !10
  %i.z = icmp eq i8 %i.y, 35
  br i1 %i.z, label %bb.j, label %.loopexit12

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %bb.e
  %i.aa = lshr i64 %i.l, 32
  %i.ab = icmp ult ptr %i.j, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.aa to i8
  %spec.select.i.i.i = select i1 %i.ab, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.ac = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.ad, label %bb.i, label %.loopexit12

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgZlHlzpN0xi_7uu_tail.exit.i.thread: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !1701, !noundef !10 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, -1
  call void @llvm.assume(i1 %i.ag)
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgZlHlzpN0xi_7uu_tail.exit

.loopexit:                                        ; preds = %bb.c
  %i.ah = sub nuw i64 %i.m, %i.l
  store i64 %i.ah, ptr %i.c, align 8, !alias.scope !1699, !noalias !1700
  %i.ai = ptrtoint ptr %i.j to i64                ; 6 uses
  %i.aj = icmp ult ptr %i.j, inttoptr (i64 33 to ptr)
  br i1 %i.aj, label %bb.f, label %bb.h, !prof !1702

bb.f:                                             ; preds = %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !1703)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !1704, !noundef !10 ; 5 uses
  %i.am = load i64, ptr %1, align 8, !range !11, !alias.scope !1704, !noundef !10
  %i.an = sub i64 %i.am, %i.al
  %i.ao = icmp ult i64 %i.an, %i.ai
  br i1 %i.ao, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgZlHlzpN0xi_7uu_tail.exit.thread.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgZlHlzpN0xi_7uu_tail.exit.i, !prof !1705

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgZlHlzpN0xi_7uu_tail.exit.thread.i: ; preds = %bb.f
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.al, i64 noundef %i.ai, i64 noundef 1, i64 noundef 1) #33
  %i.ap = load i64, ptr %i.ak, align 8, !alias.scope !1703, !noundef !10 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, -1
  call void @llvm.assume(i1 %i.aq)
  br label %bb.g

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgZlHlzpN0xi_7uu_tail.exit.i: ; preds = %bb.f
  %i.ar = icmp sgt i64 %i.al, -1
  call void @llvm.assume(i1 %i.ar)
  %.not.i3 = icmp eq ptr %i.j, null
  br i1 %.not.i3, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgZlHlzpN0xi_7uu_tail.exit, label %bb.g

bb.g:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgZlHlzpN0xi_7uu_tail.exit.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgZlHlzpN0xi_7uu_tail.exit.thread.i
  %i.as = phi i64 [ %i.ap, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgZlHlzpN0xi_7uu_tail.exit.thread.i ], [ %i.al, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgZlHlzpN0xi_7uu_tail.exit.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !1703, !nonnull !10, !noundef !10
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr nonnull readonly align 1 %i.b, i64 %i.ai, i1 false), !noalias !1703
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgZlHlzpN0xi_7uu_tail.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgZlHlzpN0xi_7uu_tail.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgZlHlzpN0xi_7uu_tail.exit.i.thread, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgZlHlzpN0xi_7uu_tail.exit.i, %bb.g
  %i.aw = phi ptr [ %i.ak, %bb.g ], [ %i.ak, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgZlHlzpN0xi_7uu_tail.exit.i ], [ %i.ae, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgZlHlzpN0xi_7uu_tail.exit.i.thread ]
  %.sroa.4.0.i.ph3035 = phi ptr [ %i.j, %bb.g ], [ null, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgZlHlzpN0xi_7uu_tail.exit.i ], [ null, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgZlHlzpN0xi_7uu_tail.exit.i.thread ]
  %i.ax = phi i64 [ %i.ai, %bb.g ], [ %i.ai, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgZlHlzpN0xi_7uu_tail.exit.i ], [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgZlHlzpN0xi_7uu_tail.exit.i.thread ]
  %i.ay = phi i64 [ %i.as, %bb.g ], [ %i.al, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgZlHlzpN0xi_7uu_tail.exit.i ], [ %i.af, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgZlHlzpN0xi_7uu_tail.exit.i.thread ]
  %i.az = add i64 %i.ay, %i.ax
  store i64 %i.az, ptr %i.aw, align 8, !alias.scope !1703
  br label %.loopexit12

bb.h:                                             ; preds = %.loopexit
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ai, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #37
  unreachable

.loopexit12:                                      ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split9, %.split10, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgZlHlzpN0xi_7uu_tail.exit
  %.sroa.3.0 = phi ptr [ %.sroa.4.0.i.ph3035, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgZlHlzpN0xi_7uu_tail.exit ], [ %i.j, %.split10 ], [ %i.j, %.split9 ], [ %i.j, %.split ], [ %i.j, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  %.sroa.0.0 = phi i64 [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgZlHlzpN0xi_7uu_tail.exit ], [ 1, %.split10 ], [ 1, %.split9 ], [ 1, %.split ], [ 1, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ba = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.bb = insertvalue { i64, ptr } %i.ba, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.bb

.thread:                                          ; preds = %.split, %.split10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1706
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit

bb.i:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1706
  %i.bc = and i64 %i.l, 1095216660480
  %i.bd = icmp ne i64 %i.bc, 1095216660480
  call void @llvm.assume(i1 %i.ab)
  call void @llvm.assume(i1 %i.bd)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit

bb.j:                                             ; preds = %.split9
  %i.be = getelementptr i8, ptr %i.j, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1706
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  store ptr %i.be, ptr %i.f, align 8, !alias.scope !1707, !noalias !1706
  store i8 3, ptr %i.a, align 8, !alias.scope !1707, !noalias !1706
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #33, !noalias !1706
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit: ; preds = %bb.i, %bb.j, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1706
  %i.bf = load i64, ptr %i.c, align 8, !alias.scope !1699, !noalias !1700, !noundef !10 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgZlHlzpN0xi_7uu_tail.exit.i.thread, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RINvXs1h_NtCs2vKOLqTMYjT_3std4pathNtB7_4PathNtNtCs6JMX4GRUq9U_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  switch i64 %1, label %.lr.ph.preheader.split.split [
    i64 0, label %bb.q
    i64 1, label %._crit_edge.loopexit.peel.begin.thread
    i64 2, label %.lr.ph.peel
  ]

.lr.ph.preheader.split.split:                     ; preds = %.split
  %i.b = add i64 %1, -3
  br label %.lr.ph

.lr.ph.peel:                                      ; preds = %.split, %bb.s
  %i.c = phi i64 [ 0, %.split ], [ %.sroa.0.1, %bb.s ] ; 4 uses
  %i.d = phi i64 [ 0, %.split ], [ %.sroa.012.2, %bb.s ] ; 3 uses
  %i.e = phi i64 [ 0, %.split ], [ %i.av, %bb.s ] ; 6 uses
  %i.f = add nuw i64 %i.e, 1                      ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %i.h = load i8, ptr %i.g, align 1, !noundef !10
  %i.i = icmp eq i8 %i.h, 47
  br i1 %i.i, label %bb.a, label %._crit_edge.loopexit.peel.begin

bb.a:                                             ; preds = %.lr.ph.peel
  %i.j = icmp ugt i64 %i.e, %i.c
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %i.e, %i.c                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.m = add i64 %i.k, %i.d                       ; 2 uses
  %i.n = tail call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 62)
  tail call fastcc void @_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write(ptr noalias nofree noundef align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.k) #38
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.012.3.peel51 = phi i64 [ %i.n, %bb.b ], [ %i.d, %bb.a ]
  %i.o = sub nuw i64 %1, %i.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.f ; 2 uses
  %i.q = icmp eq i64 %i.o, 1
  %i.r = load i8, ptr %i.p, align 1, !noundef !10
  %i.s = icmp eq i8 %i.r, 46                      ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.s, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.u = load i8, ptr %i.t, align 1, !noundef !10
  %i.v = icmp eq i8 %i.u, 47
  br i1 %i.v, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.c
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.024.0.peel52 = phi i64 [ 1, %bb.f ], [ 0, %bb.g ], [ 1, %bb.e ]
  %i.w = add i64 %.sroa.024.0.peel52, %i.f
  br label %._crit_edge.loopexit.peel.begin

._crit_edge.loopexit.peel.begin:                  ; preds = %.lr.ph.peel, %bb.h
  %.sroa.012.2.peel = phi i64 [ %.sroa.012.3.peel51, %bb.h ], [ %i.d, %.lr.ph.peel ] ; 3 uses
  %.sroa.0.1.peel = phi i64 [ %i.w, %bb.h ], [ %i.c, %.lr.ph.peel ] ; 4 uses
  %i.x = add nuw i64 %i.e, 2                      ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.z = load i8, ptr %i.y, align 1, !noundef !10
  %i.aa = icmp eq i8 %i.z, 47
  br i1 %i.aa, label %bb.i, label %._crit_edge

._crit_edge.loopexit.peel.begin.thread:           ; preds = %.split
  %i.ab = load i8, ptr %0, align 1, !noundef !10
  %i.ac = icmp eq i8 %i.ab, 47
  br i1 %i.ac, label %.thread48, label %._crit_edge

bb.i:                                             ; preds = %._crit_edge.loopexit.peel.begin
  %.not = icmp ult i64 %i.e, %.sroa.0.1.peel
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = sub nuw i64 %i.f, %.sroa.0.1.peel       ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.1.peel
  %i.af = add i64 %i.ad, %.sroa.012.2.peel        ; 2 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 62)
  tail call fastcc void @_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write(ptr noalias nofree noundef align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef %i.ad) #38
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.012.3.peel = phi i64 [ %i.ag, %bb.j ], [ %.sroa.012.2.peel, %bb.i ] ; 6 uses
  %i.ah = sub nuw i64 %1, %i.x
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.x ; 3 uses
  %i.aj = icmp eq i64 %i.ah, 1
  br i1 %i.aj, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not27.peel = icmp eq i64 %1, %i.x
  br i1 %.not27.peel, label %.thread48, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = load i8, ptr %i.ai, align 1, !noundef !10
  %i.al = icmp eq i8 %i.ak, 46
  br i1 %i.al, label %bb.n, label %.thread48

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.an = load i8, ptr %i.am, align 1, !noundef !10
  %i.ao = icmp eq i8 %i.an, 47
  br i1 %i.ao, label %bb.p, label %.thread48

bb.o:                                             ; preds = %bb.k
  %i.ap = load i8, ptr %i.ai, align 1, !noundef !10
  %i.aq = icmp eq i8 %i.ap, 46
  br i1 %i.aq, label %bb.p, label %.thread48

.thread48:                                        ; preds = %._crit_edge.loopexit.peel.begin.thread, %bb.o, %bb.n, %bb.m, %bb.l
  %.sroa.012.3.peel45 = phi i64 [ %.sroa.012.3.peel, %bb.o ], [ %.sroa.012.3.peel, %bb.n ], [ %.sroa.012.3.peel, %bb.m ], [ %.sroa.012.3.peel, %bb.l ], [ 0, %._crit_edge.loopexit.peel.begin.thread ]
  %i.ar = phi i64 [ %i.x, %bb.o ], [ %i.x, %bb.n ], [ %i.x, %bb.m ], [ %i.x, %bb.l ], [ 1, %._crit_edge.loopexit.peel.begin.thread ]
  br label %bb.p

bb.p:                                             ; preds = %.thread48, %bb.o, %bb.n
  %.sroa.012.3.peel44 = phi i64 [ %.sroa.012.3.peel, %bb.o ], [ %.sroa.012.3.peel45, %.thread48 ], [ %.sroa.012.3.peel, %bb.n ]
  %i.as = phi i64 [ %i.x, %bb.o ], [ %i.ar, %.thread48 ], [ %i.x, %bb.n ]
  %.sroa.024.0.peel = phi i64 [ 1, %bb.o ], [ 0, %.thread48 ], [ 1, %bb.n ]
  %i.at = add i64 %.sroa.024.0.peel, %i.as
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.peel.begin, %bb.p, %._crit_edge.loopexit.peel.begin.thread
  %.sroa.012.0.lcssa = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.thread ], [ %.sroa.012.3.peel44, %bb.p ], [ %.sroa.012.2.peel, %._crit_edge.loopexit.peel.begin ] ; 2 uses
  %.sroa.0.0.lcssa = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.thread ], [ %i.at, %bb.p ], [ %.sroa.0.1.peel, %._crit_edge.loopexit.peel.begin ] ; 3 uses
  %i.au = icmp ult i64 %.sroa.0.0.lcssa, %1
  br i1 %i.au, label %bb.r, label %bb.q

.lr.ph:                                           ; preds = %.lr.ph.preheader.split.split, %bb.s
  %.sroa.0.032 = phi i64 [ %.sroa.0.1, %bb.s ], [ 0, %.lr.ph.preheader.split.split ] ; 4 uses
  %.sroa.012.031 = phi i64 [ %.sroa.012.2, %bb.s ], [ 0, %.lr.ph.preheader.split.split ] ; 3 uses
  %.sroa.019.030 = phi i64 [ %i.av, %bb.s ], [ 0, %.lr.ph.preheader.split.split ] ; 5 uses
  %i.av = add nuw i64 %.sroa.019.030, 1           ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.019.030
  %i.ax = load i8, ptr %i.aw, align 1, !noundef !10
  %i.ay = icmp eq i8 %i.ax, 47
  br i1 %i.ay, label %bb.t, label %bb.s

bb.q:                                             ; preds = %.split, %._crit_edge, %bb.r
  %.sroa.012.1 = phi i64 [ %i.bc, %bb.r ], [ %.sroa.012.0.lcssa, %._crit_edge ], [ %1, %.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1711
  store i64 %.sroa.012.1, ptr %i.a, align 8, !noalias !1711
  call fastcc void @_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1711
  ret void

bb.r:                                             ; preds = %._crit_edge
  %i.az = sub nuw i64 %1, %.sroa.0.0.lcssa        ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.lcssa
  %i.bb = add i64 %i.az, %.sroa.012.0.lcssa       ; 2 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 62)
  tail call fastcc void @_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write(ptr noalias nofree noundef align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ba, i64 noundef %i.az) #38
  br label %bb.q

bb.s:                                             ; preds = %bb.y, %.lr.ph
  %.sroa.012.2 = phi i64 [ %.sroa.012.3, %bb.y ], [ %.sroa.012.031, %.lr.ph ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %i.bn, %bb.y ], [ %.sroa.0.032, %.lr.ph ] ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.019.030, %i.b
  br i1 %exitcond.not, label %.lr.ph.peel, label %.lr.ph, !llvm.loop !1710

bb.t:                                             ; preds = %.lr.ph
  %i.bd = icmp ugt i64 %.sroa.019.030, %.sroa.0.032
  br i1 %i.bd, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.v
  %.sroa.012.3 = phi i64 [ %i.bm, %bb.v ], [ %.sroa.012.031, %bb.t ]
  %i.be = sub nuw i64 %1, %i.av
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %i.av ; 2 uses
  %i.bg = icmp eq i64 %i.be, 1
  %i.bh = load i8, ptr %i.bf, align 1, !noundef !10
  %i.bi = icmp eq i8 %i.bh, 46                    ; 2 uses
  br i1 %i.bg, label %bb.w, label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.bj = sub nuw i64 %.sroa.019.030, %.sroa.0.032 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.032
  %i.bl = add i64 %i.bj, %.sroa.012.031           ; 2 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 62)
  tail call fastcc void @_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write(ptr noalias nofree noundef align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bj) #38
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  br i1 %i.bi, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.aa, %bb.z, %bb.w
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.w, %bb.x
  %.sroa.024.0 = phi i64 [ 1, %bb.w ], [ 0, %bb.x ], [ 1, %bb.aa ]
  %i.bn = add i64 %.sroa.024.0, %i.av
  br label %bb.s

bb.z:                                             ; preds = %bb.u
  br i1 %i.bi, label %bb.aa, label %bb.x

bb.aa:                                            ; preds = %bb.z
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !10
  %i.bq = icmp eq i8 %i.bp, 47
  br i1 %i.bq, label %bb.y, label %bb.x
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef i64 @_RINvYNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRNtNtB9_4path7PathBufECsgZlHlzpN0xi_7uu_tail(i64 %.0.val, i64 %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = xor i64 %.0.val, 8317987319222330741
  %i.c = xor i64 %.8.val, 7237128888997146477
  %i.d = xor i64 %.0.val, 7816392313619706465
  %i.e = xor i64 %.8.val, 8387220255154660723
  store i64 %i.b, ptr %i.a, align 8, !alias.scope !1721
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %i.d, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !1721
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 %i.c, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !1721
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store i64 %i.e, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !1721
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.0.val, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !1721
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.8.val, ptr %.sroa.812.0..sroa_idx.i, align 8, !alias.scope !1721
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !1721
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.f, align 8, !noalias !1722, !nonnull !10, !noundef !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.g, align 8, !noalias !1722, !noundef !10
  call fastcc void @_RINvXs1h_NtCs2vKOLqTMYjT_3std4pathNtB7_4PathNtNtCs6JMX4GRUq9U_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #33
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !alias.scope !1723
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !1723
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !1723 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !1723
  %i.h = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !1723, !noundef !10
  %i.i = shl i64 %i.h, 56
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1723, !noundef !10
  %i.l = or i64 %i.i, %i.k                        ; 2 uses
  %i.m = xor i64 %i.l, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.n = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.o = add i64 %i.m, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.p = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.q = xor i64 %i.p, %i.n                       ; 3 uses
  %i.r = tail call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 16)
  %i.s = xor i64 %i.r, %i.o                       ; 3 uses
  %i.t = tail call noundef i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 32)
  %i.u = add i64 %i.o, %i.q                       ; 3 uses
  %i.v = add i64 %i.s, %i.t                       ; 2 uses
  %i.w = tail call noundef i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 17)
  %i.x = xor i64 %i.u, %i.w                       ; 3 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 21)
  %i.z = xor i64 %i.y, %i.v                       ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 32)
  %i.ab = xor i64 %i.v, %i.l
  %i.ac = xor i64 %i.aa, 255
  %i.ad = add i64 %i.ab, %i.x                     ; 3 uses
  %i.ae = add i64 %i.z, %i.ac                     ; 2 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 13)
  %i.ag = xor i64 %i.ad, %i.af                    ; 3 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 16)
  %i.ai = xor i64 %i.ah, %i.ae                    ; 3 uses
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 32)
  %i.ak = add i64 %i.ag, %i.ae                    ; 3 uses
  %i.al = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 17)
  %i.an = xor i64 %i.ak, %i.am                    ; 3 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 21)
  %i.ap = xor i64 %i.ao, %i.al                    ; 3 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 32)
  %i.ar = add i64 %i.an, %i.al                    ; 3 uses
  %i.as = add i64 %i.ap, %i.aq                    ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 13)
  %i.au = xor i64 %i.at, %i.ar                    ; 3 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 16)
  %i.aw = xor i64 %i.av, %i.as                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 32)
  %i.ay = add i64 %i.au, %i.as                    ; 3 uses
  %i.az = add i64 %i.aw, %i.ax                    ; 2 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 17)
  %i.bb = xor i64 %i.ba, %i.ay                    ; 3 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 21)
  %i.bd = xor i64 %i.bc, %i.az                    ; 3 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 32)
  %i.bf = add i64 %i.bb, %i.az
  %i.bg = add i64 %i.bd, %i.be                    ; 2 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 13)
  %i.bi = xor i64 %i.bh, %i.bf                    ; 3 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 16)
  %i.bk = xor i64 %i.bj, %i.bg                    ; 2 uses
  %i.bl = add i64 %i.bi, %i.bg                    ; 3 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 17)
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 21)
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 32)
  %i.bp = xor i64 %i.bn, %i.bm
  %i.bq = xor i64 %i.bp, %i.bo
  %i.br = xor i64 %i.bq, %i.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.br
}

; Function Attrs: cold inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNCINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE4recvs_0uEs0_0CsgZlHlzpN0xi_7uu_tail(ptr nofree captures(none) %.0.val) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call noundef nonnull ptr @_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context3new() #33 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.0.0.copyload = load ptr, ptr %.0.val, align 8 ; 2 uses
  store ptr null, ptr %.0.val, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  call fastcc void @_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB7_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE4recvs_0CsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr nonnull %i.c) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !1730
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgZlHlzpN0xi_7uu_tail.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCs6mPptk5f3AV_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #36
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgZlHlzpN0xi_7uu_tail.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgZlHlzpN0xi_7uu_tail.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #37
  unreachable
}

end_hunk_0
begin_hunk_1_@_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE4recvs_0CsgZlHlzpN0xi_7uu_tail:bb.a
_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i44: ; preds = %bb.au, %bb.at, %bb.as, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgZlHlzpN0xi_7uu_tail.exit43
  %i.fq = atomicrmw xchg ptr %i.dl, i32 0 release, align 4
  %i.fr = icmp eq i32 %i.fq, 2
  br i1 %i.fr, label %bb.av, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgZlHlzpN0xi_7uu_tail.exit45, !prof !18

bb.av:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i44
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.dl) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgZlHlzpN0xi_7uu_tail.exit45

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgZlHlzpN0xi_7uu_tail.exit45: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i44, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.fs, align 8
  br label %bb.an

._crit_edge:                                      ; preds = %bb.ae, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgZlHlzpN0xi_7uu_tail.exit
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #37
  unreachable

bb.aw:                                            ; preds = %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE10wait_readyCsgZlHlzpN0xi_7uu_tail.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.410.0..sroa_idx, i64 48, i1 false)
  br label %bb.an

bb.ax:                                            ; preds = %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE10wait_readyCsgZlHlzpN0xi_7uu_tail.exit
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #37
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE4recvs_0CsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #7 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !10, !align !14, !noundef !10
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !10, !align !35, !noundef !10 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 320 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #38
  %i.h = load atomic i64, ptr %i.f seq_cst, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 128
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 400 ; 2 uses
  %i.l = load i64, ptr %i.k, align 16, !noundef !10
  %i.m = xor i64 %i.l, -1
  %i.n = and i64 %i.j, %i.m
  %i.o = icmp eq i64 %i.n, %i.h
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.q = cmpxchg ptr %i.p, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = load atomic i64, ptr %i.i seq_cst, align 128
  %i.s = load i64, ptr %i.k, align 16, !noundef !10
  %i.t = and i64 %i.s, %i.r
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !10, !align !14, !noundef !10 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load i32, ptr %i.x, align 8, !range !19, !noundef !10 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.y, -1
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.ab = load atomic i64, ptr %i.z acquire, align 8 ; 3 uses
  switch i64 %i.ab, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvMs_NtNtCs2vKOLqTMYjT_3std6thread6threadNtB4_6Thread4park(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa) #33
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.ac = load atomic i64, ptr %i.z acquire, align 8 ; 3 uses
  switch i64 %i.ac, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.f:                                             ; preds = %.split.i
  %i.ad = tail call { i64, i32 } @_RNvMNtCs2vKOLqTMYjT_3std4timeNtB2_7Instant3now() #33 ; 2 uses
  %i.ae = extractvalue { i64, i32 } %i.ad, 0      ; 3 uses
  %i.af = extractvalue { i64, i32 } %i.ad, 1      ; 2 uses
  %i.ag = icmp eq i64 %i.ae, %i.w
  %i.ah = icmp slt i64 %i.ae, %i.w
  %i.ai = icmp samesign ult i32 %i.af, %i.y
  %spec.select.i4 = select i1 %i.ag, i1 %i.ai, i1 %i.ah
  br i1 %spec.select.i4, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = cmpxchg ptr %i.z, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.ak = extractvalue { i64, i1 } %i.aj, 1
  %i.al = extractvalue { i64, i1 } %i.aj, 0
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.al, i64 3)
  br i1 %i.ak, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.am = tail call { i64, i32 } @_RNvXs3_NtCs2vKOLqTMYjT_3std4timeNtB5_7InstantNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Sub3sub(i64 noundef %i.w, i32 noundef range(i32 -1, 1000000000) %i.y, i64 noundef %i.ae, i32 noundef %i.af) #33 ; 2 uses
  %i.an = extractvalue { i64, i32 } %i.am, 0
  %i.ao = extractvalue { i64, i32 } %i.am, 1
  tail call void @_RNvMs_NtNtCs2vKOLqTMYjT_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa, i64 noundef %i.an, i32 noundef %i.ao) #33
  br label %.split.i

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.g ], [ %i.ab, %.split.us.i ], [ %i.ab, %.split.us.i ], [ %i.ac, %.split.i ], [ %i.ac, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 2, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 3, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !36

bb.i:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #37
  unreachable

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3: ; preds = %bb.g, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #38
  %i.ap = load ptr, ptr %i.a, align 8, !noundef !10
  %.not1 = icmp eq ptr %i.ap, null
  br i1 %.not1, label %bb.m, label %bb.k, !prof !18

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgZlHlzpN0xi_7uu_tail.exit, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.k:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1922)
  %i.aq = load ptr, ptr %i.b, align 8, !alias.scope !1923, !nonnull !10, !noundef !10
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !1923
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.l, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgZlHlzpN0xi_7uu_tail.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCs6mPptk5f3AV_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #36
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgZlHlzpN0xi_7uu_tail.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgZlHlzpN0xi_7uu_tail.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #37
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNCNvNtNtCsgZlHlzpN0xi_7uu_tail6follow5watch6follow0B7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %1, i8 %.72.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !10
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !10, !noundef !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = tail call fastcc noundef zeroext i1 @_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs2vKOLqTMYjT_3std4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataNtNtNtBS_4hash6random11RandomStateE12contains_keyNtBQ_4PathEB1t_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k) #33
  br i1 %i.m, label %bb.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvMs_NtNtCsgZlHlzpN0xi_7uu_tail6follow5watchNtB4_8Observer12handle_event(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 dereferenceable(144) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i8 %.72.val) #33
  %i.n = load i64, ptr %i.c, align 8, !range !22, !noundef !10 ; 3 uses
  %i.o = icmp eq i64 %i.n, -1
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !10, !align !14, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit

bb.e:                                             ; preds = %bb.c
  %.sroa.58.0.copyload = load i64, ptr %i.r, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.t = icmp ult i64 %.sroa.58.0.copyload, 384307168202282326
  tail call void @llvm.assume(i1 %i.t)
  %.idx = mul nuw nsw i64 %.sroa.58.0.copyload, 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx ; 3 uses
  %i.v = icmp eq i64 %.sroa.58.0.copyload, 0
  br i1 %i.v, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsgZlHlzpN0xi_7uu_tail.exit.lr.ph

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsgZlHlzpN0xi_7uu_tail.exit.lr.ph: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsgZlHlzpN0xi_7uu_tail.exit

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsgZlHlzpN0xi_7uu_tail.exit: ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsgZlHlzpN0xi_7uu_tail.exit.lr.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit
  %.sroa.4.014 = phi ptr [ %i.q, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsgZlHlzpN0xi_7uu_tail.exit.lr.ph ], [ %i.y, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.4.014, i64 24 ; 5 uses
  %.sroa.01.0.copyload2 = load i64, ptr %.sroa.4.014, align 8, !noalias !1940 ; 4 uses
  %.sroa.7.0..sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.014, i64 8
  %.sroa.7.sroa.0.0.copyload = load ptr, ptr %.sroa.7.0..sroa.4.8..sroa_idx, align 8, !noalias !1940 ; 4 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa.4.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.014, i64 16
  %.sroa.7.sroa.5.0.copyload = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa.4.8..sroa_idx.sroa_idx, align 8, !noalias !1940 ; 2 uses
  %.not9 = icmp eq i64 %.sroa.01.0.copyload2, -1
  br i1 %.not9, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsgZlHlzpN0xi_7uu_tail.exit.thread, label %bb.f

bb.f:                                             ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsgZlHlzpN0xi_7uu_tail.exit
  %i.z = load ptr, ptr %i.w, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.aa = load i64, ptr %i.x, align 8, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1941)
  %.idx24 = mul nuw nsw i64 %i.aa, 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx24
  %.not.not.not.i.not.not.not.i.not23 = icmp eq i64 %i.aa, 0
  br i1 %.not.not.not.i.not.not.not.i.not23, label %_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpNtNtCs2vKOLqTMYjT_3std4path7PathBufNtB5_13SliceContains14slice_containsCsgZlHlzpN0xi_7uu_tail.exit, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %.not.not.not.i.not.not.not.i.not = icmp eq ptr %i.ac, %i.ab
  br i1 %.not.not.not.i.not.not.not.i.not, label %_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpNtNtCs2vKOLqTMYjT_3std4path7PathBufNtB5_13SliceContains14slice_containsCsgZlHlzpN0xi_7uu_tail.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %i.ad = phi ptr [ %i.ac, %bb.g ], [ %i.z, %bb.f ] ; 3 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %.val2.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !1941, !noalias !1942, !nonnull !10, !noundef !10
  %i.af = getelementptr i8, ptr %i.ad, i64 16
  %.val3.i.i = load i64, ptr %i.af, align 8, !alias.scope !1941, !noalias !1942, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1943
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val2.i.i, i64 noundef %.val3.i.i) #33, !noalias !1943
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1943
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload) ]
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.7.sroa.0.0.copyload, i64 noundef %.sroa.7.sroa.5.0.copyload) #33, !noalias !1943
  %i.ag = call fastcc noundef zeroext i1 @_RNvXsl_NtCs2vKOLqTMYjT_3std4pathNtB5_10ComponentsNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.a) #38, !noalias !1943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1943
  br i1 %i.ag, label %bb.k, label %bb.g

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsgZlHlzpN0xi_7uu_tail.exit.thread: ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsgZlHlzpN0xi_7uu_tail.exit
  %i.ah = ptrtoint ptr %i.u to i64
  %i.ai = ptrtoint ptr %i.y to i64
  %i.aj = sub nuw i64 %i.ah, %i.ai
  %i.ak = udiv exact i64 %i.aj, 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1944)
  %i.al = icmp eq ptr %i.u, %i.y
  br i1 %i.al, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsgZlHlzpN0xi_7uu_tail.exit.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i.i
  %.sroa.0.04.i.i.i = phi i64 [ %i.an, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i.i ], [ 0, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsgZlHlzpN0xi_7uu_tail.exit.thread ] ; 2 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.sroa.0.04.i.i.i ; 2 uses
  %i.an = add nuw nsw i64 %.sroa.0.04.i.i.i, 1    ; 2 uses
  %.val.i.i.i = load i64, ptr %i.am, align 8, !range !11, !alias.scope !1944, !noalias !1945, !noundef !10 ; 2 uses
  %i.ao = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ao, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ap = getelementptr i8, ptr %i.am, i64 8
  %.val3.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !1944, !noalias !1945, !nonnull !10, !noundef !10
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !1946
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i
  %i.aq = icmp eq i64 %i.an, %i.ak
  br i1 %i.aq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i, label %.lr.ph.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i.i, %bb.e, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsgZlHlzpN0xi_7uu_tail.exit.thread
  %i.ar = icmp eq i64 %i.n, 0
  br i1 %i.ar, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i
  %i.as = mul nuw i64 %i.n, 24
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !1945
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit: ; preds = %bb.a, %bb.b, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i, %bb.i, %bb.d
  %.sroa.3.0 = phi ptr [ %i.s, %bb.d ], [ undef, %bb.i ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i ], [ undef, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.q, %bb.d ], [ null, %bb.i ], [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i ], [ null, %bb.b ], [ null, %bb.a ]
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs6KYBFtxZ0jn_12notify_types5event5EventECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(40) %1) #33
  %i.at = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.au = insertvalue { ptr, ptr } %i.at, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.au

_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpNtNtCs2vKOLqTMYjT_3std4path7PathBufNtB5_13SliceContains14slice_containsCsgZlHlzpN0xi_7uu_tail.exit: ; preds = %bb.g, %bb.f
  %i.av = load i64, ptr %i.x, align 8, !alias.scope !1947, !noalias !1948, !noundef !10 ; 3 uses
  %i.aw = load i64, ptr %2, align 8, !range !11, !alias.scope !1947, !noalias !1948, !noundef !10
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.j, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufE8push_mutCsgZlHlzpN0xi_7uu_tail.exit

bb.j:                                             ; preds = %_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpNtNtCs2vKOLqTMYjT_3std4path7PathBufNtB5_13SliceContains14slice_containsCsgZlHlzpN0xi_7uu_tail.exit
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtCs2vKOLqTMYjT_3std4path7PathBufE8grow_oneCs6KYBFtxZ0jn_12notify_types(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #36, !noalias !1948
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufE8push_mutCsgZlHlzpN0xi_7uu_tail.exit

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufE8push_mutCsgZlHlzpN0xi_7uu_tail.exit: ; preds = %_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpNtNtCs2vKOLqTMYjT_3std4path7PathBufNtB5_13SliceContains14slice_containsCsgZlHlzpN0xi_7uu_tail.exit, %bb.j
  %i.ay = load ptr, ptr %i.w, align 8, !alias.scope !1947, !noalias !1948, !nonnull !10, !noundef !10
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %i.av ; 3 uses
  store i64 %.sroa.01.0.copyload2, ptr %i.az, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %.sroa.7.sroa.0.0.copyload, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %.sroa.7.sroa.5.0.copyload, ptr %.sroa.57.0..sroa_idx, align 8
  %i.ba = add i64 %i.av, 1
  store i64 %i.ba, ptr %i.x, align 8, !alias.scope !1947, !noalias !1948
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit

bb.k:                                             ; preds = %.lr.ph
  %i.bb = icmp eq i64 %.sroa.01.0.copyload2, 0
  br i1 %i.bb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload, i64 noundef %.sroa.01.0.copyload2, i64 noundef range(i64 1, -9223372036854775807) 1) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit: ; preds = %bb.l, %bb.k, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufE8push_mutCsgZlHlzpN0xi_7uu_tail.exit
  %i.bc = icmp eq ptr %i.y, %i.u
  br i1 %i.bc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsgZlHlzpN0xi_7uu_tail.exit
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #7 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !10, !align !14, !noundef !10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !range !15, !invariant.load !10
  %i.e = add nsw i64 %i.d, -1
  %i.f = and i64 %i.e, -16
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !10, !nonnull !10
  call void %i.j(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.h) #38, !inline_history !1949
  %i.k = load i128, ptr %i.a, align 16, !noundef !10
  %.not.i = icmp eq i128 %i.k, -49237559333878691962261109163680243548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not.i, label %_RINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsgZlHlzpN0xi_7uu_tail.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #37
  unreachable

_RINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsgZlHlzpN0xi_7uu_tail.exit: ; preds = %bb.a
  ret ptr %i.h
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2vKOLqTMYjT_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtBh_2io4pipe10PipeReaderNtB2q_10PipeWriterEEE10initializeNCINvB1f_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes12send_n_bytesQNtNtBh_2fs4FileQNtNtB2s_5stdio10StdoutLockE0E0zE0E0INtNtNtB1Q_3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCsgZlHlzpN0xi_7uu_tail(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 4                 ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !10, !align !14, !noundef !10 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1962)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.d, align 8, !alias.scope !1962, !noalias !1963 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1962, !noalias !1963 ; 3 uses
  store ptr null, ptr %i.d, align 8, !alias.scope !1962, !noalias !1963
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.i, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i64, ptr %.sroa.0.0.copyload.i.i, align 8, !noalias !1964 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1964
  call void @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys4pipe4unix4pipe(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b) #33, !noalias !1964
  %i.e = load i32, ptr %i.b, align 8, !range !30, !noalias !1964, !noundef !10
  %i.f = trunc nuw i32 %i.e to i1
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load i32, ptr %i.g, align 4, !range !27, !noalias !1964, !noundef !10 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i32, ptr %i.i, align 8, !range !27, !noalias !1964, !noundef !10 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1964
  store i32 %i.h, ptr %i.c, align 4, !noalias !1964
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.j, ptr %i.k, align 4, !noalias !1964
  %i.l = icmp ugt i64 %.val.i.i.i, 65536
  br i1 %i.l, label %bb.d, label %_RNvYNCINvMs0_NtNtCs2vKOLqTMYjT_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtBf_2io4pipe10PipeReaderNtB2o_10PipeWriterEEE10initializeNCINvB1d_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes12send_n_bytesQNtNtBf_2fs4FileQNtNtB2q_5stdio10StdoutLockE0E0zE0E0INtNtNtB1O_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCsgZlHlzpN0xi_7uu_tail.exit

bb.d:                                             ; preds = %bb.c
  %i.m = call noundef i32 @_RNvXsy_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeReaderNtB5_4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c) #33, !noalias !1964
  %i.n = icmp ugt i64 %.val.i.i.i, 2147483647
  br i1 %i.n, label %_RNvYNCINvMs0_NtNtCs2vKOLqTMYjT_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtBf_2io4pipe10PipeReaderNtB2o_10PipeWriterEEE10initializeNCINvB1d_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes12send_n_bytesQNtNtBf_2fs4FileQNtNtB2q_5stdio10StdoutLockE0E0zE0E0INtNtNtB1O_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCsgZlHlzpN0xi_7uu_tail.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = zext i32 %i.m to i64
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = inttoptr i64 %.val.i.i.i to ptr
  %i.r = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},~{memory}"(ptr nonnull inttoptr (i64 72 to ptr), ptr %i.p, ptr nonnull inttoptr (i64 1031 to ptr), ptr nonnull %i.q) #40, !noalias !1965, !srcloc !33 ; 0 uses
  br label %_RNvYNCINvMs0_NtNtCs2vKOLqTMYjT_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtBf_2io4pipe10PipeReaderNtB2o_10PipeWriterEEE10initializeNCINvB1d_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes12send_n_bytesQNtNtBf_2fs4FileQNtNtB2q_5stdio10StdoutLockE0E0zE0E0INtNtNtB1O_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCsgZlHlzpN0xi_7uu_tail.exit

bb.f:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !1964, !nonnull !10, !noundef !10 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1966
  %i.u = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.v = and i64 %i.u, 3
  switch i64 %i.v, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i.i
    i64 3, label %bb.g
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i.i
    i64 1, label %bb.h
  ], !prof !23

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult ptr %i.t, inttoptr (i64 188978561024 to ptr)
  %i.x = and i64 %i.u, 1095216660480
  %i.y = icmp ne i64 %i.x, 1095216660480
  tail call void @llvm.assume(i1 %i.w)
  tail call void @llvm.assume(i1 %i.y)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr i8, ptr %i.t, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !alias.scope !1967, !noalias !1966
  store i8 3, ptr %i.a, align 8, !alias.scope !1967, !noalias !1966
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) #33, !noalias !1966
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1966
  br label %_RNvYNCINvMs0_NtNtCs2vKOLqTMYjT_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtBf_2io4pipe10PipeReaderNtB2o_10PipeWriterEEE10initializeNCINvB1d_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes12send_n_bytesQNtNtBf_2fs4FileQNtNtB2q_5stdio10StdoutLockE0E0zE0E0INtNtNtB1O_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCsgZlHlzpN0xi_7uu_tail.exit

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #37, !noalias !1964
  unreachable

_RNvYNCINvMs0_NtNtCs2vKOLqTMYjT_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtBf_2io4pipe10PipeReaderNtB2o_10PipeWriterEEE10initializeNCINvB1d_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes12send_n_bytesQNtNtBf_2fs4FileQNtNtB2q_5stdio10StdoutLockE0E0zE0E0INtNtNtB1O_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCsgZlHlzpN0xi_7uu_tail.exit: ; preds = %bb.c, %bb.d, %bb.e, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i.i
  %.sroa.3.0.i.i.i.i.i = phi i32 [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i.i ], [ %i.j, %bb.e ], [ %i.j, %bb.d ], [ %i.j, %bb.c ]
  %.sroa.0.0.i.i.i.i.i = phi i32 [ -1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i.i ], [ %i.h, %bb.e ], [ %i.h, %bb.d ], [ %i.h, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1964
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i) ]
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %.sroa.5.sroa.0.0.copyload.i.i, align 4, !noalias !1964
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.0.copyload.i.i, i64 4
  store i32 %.sroa.3.0.i.i.i.i.i, ptr %i.ab, align 4, !noalias !1964
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2vKOLqTMYjT_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtBh_2io4pipe10PipeReaderNtB2q_10PipeWriterEEE10initializeNCINvB1f_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_autoNtNtBh_2fs4FileNtNtB2s_5stdio10StdoutLockE0E0zE0E0INtNtNtB1Q_3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCsgZlHlzpN0xi_7uu_tail(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 4                 ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !10, !align !14, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1982)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1982, !noalias !1983, !align !34, !noundef !10 ; 3 uses
  store ptr null, ptr %i.d, align 8, !alias.scope !1982, !noalias !1983
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.f, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1984
  call void @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys4pipe4unix4pipe(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b) #33, !noalias !1984
  %i.f = load i32, ptr %i.b, align 8, !range !30, !noalias !1984, !noundef !10
end_hunk_1
