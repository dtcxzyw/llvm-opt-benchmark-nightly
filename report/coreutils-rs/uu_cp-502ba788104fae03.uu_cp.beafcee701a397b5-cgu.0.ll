Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_cp-502ba788104fae03.uu_cp.beafcee701a397b5-cgu.0?download=true
inline.NumInlined: 2514
inline.NumDeleted: 1152
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgn1j6LDYpaP_5uu_cp:bb.a

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !36, !noalias !1613, !noundef !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !1613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1613
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #43
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !1613, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1613
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !1613
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !1613
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1626, !noundef !7 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgn1j6LDYpaP_5uu_cp.exit.i.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgn1j6LDYpaP_5uu_cp.exit
  %i.g = phi i64 [ %i.d, %.lr.ph ], [ %i.bf, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgn1j6LDYpaP_5uu_cp.exit ]
  %..i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.g, i64 32)
  %i.h = call { i64, ptr } @_RNvXs4_NtNtCs2vKOLqTMYjT_3std2io4pipeRNtB5_10PipeReaderNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull %i.b, i64 noundef %..i.i) #39 ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 14 uses
  %i.k = trunc nuw i64 %i.i to i1
  %i.l = ptrtoint ptr %i.j to i64                 ; 6 uses
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.c, align 8, !alias.scope !1626, !noundef !7 ; 2 uses
  %.not.i = icmp ult i64 %i.m, %i.l
  br i1 %.not.i, label %bb.d, label %.loopexit, !prof !10

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @256, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @258) #41
  unreachable

bb.e:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.n = and i64 %i.l, 3
  switch i64 %i.n, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit
    i64 0, label %.split10
    i64 1, label %.split9
  ], !prof !21

default.unreachable:                              ; preds = %bb.e
  unreachable

.split:                                           ; preds = %bb.e
  %i.o = lshr i64 %i.l, 32
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #39
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !7, !noundef !7
  %i.t = call noundef zeroext i1 %i.s(i32 noundef %i.p) #39, !inline_history !0
  br i1 %i.t, label %.thread, label %.loopexit12

.split10:                                         ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.v = load i8, ptr %i.u, align 8, !range !33, !noundef !7
  %i.w = icmp eq i8 %i.v, 35
  br i1 %i.w, label %.thread, label %.loopexit12

.split9:                                          ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.j, i64 31
  %i.y = load i8, ptr %i.x, align 8, !range !33, !noundef !7
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

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgn1j6LDYpaP_5uu_cp.exit.i.thread: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgn1j6LDYpaP_5uu_cp.exit, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !1627, !noundef !7 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, -1
  call void @llvm.assume(i1 %i.ag)
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgn1j6LDYpaP_5uu_cp.exit

.loopexit:                                        ; preds = %bb.c
  %i.ah = sub nuw i64 %i.m, %i.l
  store i64 %i.ah, ptr %i.c, align 8, !alias.scope !1626
  %i.ai = ptrtoint ptr %i.j to i64                ; 6 uses
  %i.aj = icmp ult ptr %i.j, inttoptr (i64 33 to ptr)
  br i1 %i.aj, label %bb.f, label %bb.h, !prof !1628

bb.f:                                             ; preds = %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !1629)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !1630, !noundef !7 ; 5 uses
  %i.am = load i64, ptr %1, align 8, !range !8, !alias.scope !1630, !noundef !7
  %i.an = sub i64 %i.am, %i.al
  %i.ao = icmp ult i64 %i.an, %i.ai
  br i1 %i.ao, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgn1j6LDYpaP_5uu_cp.exit.thread.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgn1j6LDYpaP_5uu_cp.exit.i, !prof !1631

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgn1j6LDYpaP_5uu_cp.exit.thread.i: ; preds = %bb.f
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.al, i64 noundef %i.ai, i64 noundef 1, i64 noundef 1) #39
  %i.ap = load i64, ptr %i.ak, align 8, !alias.scope !1629, !noundef !7 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, -1
  call void @llvm.assume(i1 %i.aq)
  br label %bb.g

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgn1j6LDYpaP_5uu_cp.exit.i: ; preds = %bb.f
  %i.ar = icmp sgt i64 %i.al, -1
  call void @llvm.assume(i1 %i.ar)
  %.not.i3 = icmp eq ptr %i.j, null
  br i1 %.not.i3, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgn1j6LDYpaP_5uu_cp.exit, label %bb.g

bb.g:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgn1j6LDYpaP_5uu_cp.exit.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgn1j6LDYpaP_5uu_cp.exit.thread.i
  %i.as = phi i64 [ %i.ap, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgn1j6LDYpaP_5uu_cp.exit.thread.i ], [ %i.al, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgn1j6LDYpaP_5uu_cp.exit.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !1629, !nonnull !7, !noundef !7
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr nonnull readonly align 1 %i.b, i64 %i.ai, i1 false), !noalias !1629
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgn1j6LDYpaP_5uu_cp.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgn1j6LDYpaP_5uu_cp.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgn1j6LDYpaP_5uu_cp.exit.i.thread, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgn1j6LDYpaP_5uu_cp.exit.i, %bb.g
  %i.aw = phi ptr [ %i.ak, %bb.g ], [ %i.ak, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgn1j6LDYpaP_5uu_cp.exit.i ], [ %i.ae, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgn1j6LDYpaP_5uu_cp.exit.i.thread ]
  %.sroa.4.0.i.ph3035 = phi ptr [ %i.j, %bb.g ], [ null, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgn1j6LDYpaP_5uu_cp.exit.i ], [ null, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgn1j6LDYpaP_5uu_cp.exit.i.thread ]
  %i.ax = phi i64 [ %i.ai, %bb.g ], [ %i.ai, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgn1j6LDYpaP_5uu_cp.exit.i ], [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgn1j6LDYpaP_5uu_cp.exit.i.thread ]
  %i.ay = phi i64 [ %i.as, %bb.g ], [ %i.al, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgn1j6LDYpaP_5uu_cp.exit.i ], [ %i.af, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgn1j6LDYpaP_5uu_cp.exit.i.thread ]
  %i.az = add i64 %i.ay, %i.ax
  store i64 %i.az, ptr %i.aw, align 8, !alias.scope !1629
  br label %.loopexit12

bb.h:                                             ; preds = %.loopexit
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ai, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #41
  unreachable

.loopexit12:                                      ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split9, %.split10, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgn1j6LDYpaP_5uu_cp.exit
  %.sroa.3.0 = phi ptr [ %.sroa.4.0.i.ph3035, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgn1j6LDYpaP_5uu_cp.exit ], [ %i.j, %.split10 ], [ %i.j, %.split9 ], [ %i.j, %.split ], [ %i.j, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  %.sroa.0.0 = phi i64 [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgn1j6LDYpaP_5uu_cp.exit ], [ 1, %.split10 ], [ 1, %.split9 ], [ 1, %.split ], [ 1, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ba = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.bb = insertvalue { i64, ptr } %i.ba, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.bb

.thread:                                          ; preds = %.split, %.split10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1632
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgn1j6LDYpaP_5uu_cp.exit

bb.i:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1632
  %i.bc = and i64 %i.l, 1095216660480
  %i.bd = icmp ne i64 %i.bc, 1095216660480
  call void @llvm.assume(i1 %i.ab)
  call void @llvm.assume(i1 %i.bd)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgn1j6LDYpaP_5uu_cp.exit

bb.j:                                             ; preds = %.split9
  %i.be = getelementptr i8, ptr %i.j, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1632
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  store ptr %i.be, ptr %i.f, align 8, !alias.scope !1633, !noalias !1632
  store i8 3, ptr %i.a, align 8, !alias.scope !1633, !noalias !1632
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #39, !noalias !1632
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgn1j6LDYpaP_5uu_cp.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgn1j6LDYpaP_5uu_cp.exit: ; preds = %bb.i, %bb.j, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1632
  %i.bf = load i64, ptr %i.c, align 8, !alias.scope !1626, !noundef !7 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgn1j6LDYpaP_5uu_cp.exit.i.thread, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RINvXs1h_NtCs2vKOLqTMYjT_3std4pathNtB7_4PathNtNtCs6JMX4GRUq9U_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  switch i64 %1, label %bb.a [
    i64 0, label %._crit_edge
    i64 1, label %._crit_edge.loopexit.peel.begin.thread
  ]

bb.a:                                             ; preds = %.split
  %i.b = add i64 %1, -2
  br label %.lr.ph

._crit_edge.loopexit.peel.begin:                  ; preds = %bb.l
  %i.c = add nuw i64 %.sroa.019.030, 2            ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  %i.e = load i8, ptr %i.d, align 1, !noundef !7
  %i.f = icmp eq i8 %i.e, 47
  br i1 %i.f, label %bb.b, label %._crit_edge

._crit_edge.loopexit.peel.begin.thread:           ; preds = %.split
  %i.g = load i8, ptr %0, align 1, !noundef !7
  %i.h = icmp eq i8 %i.g, 47
  br i1 %i.h, label %.thread48, label %._crit_edge

bb.b:                                             ; preds = %._crit_edge.loopexit.peel.begin
  %.not = icmp ult i64 %.sroa.019.030, %.sroa.0.1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = sub nuw i64 %i.aa, %.sroa.0.1            ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.1
  %i.k = add i64 %i.i, %.sroa.012.2               ; 2 uses
  %i.l = tail call noundef i64 @llvm.fshl.i64(i64 %i.k, i64 %i.k, i64 62)
  tail call fastcc void @_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write(ptr noalias nofree noundef align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.i) #42
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.012.3.peel = phi i64 [ %i.l, %bb.c ], [ %.sroa.012.2, %bb.b ] ; 6 uses
  %i.m = sub nuw i64 %1, %i.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 3 uses
  %i.o = icmp eq i64 %i.m, 1
  br i1 %i.o, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not27.peel = icmp eq i64 %1, %i.c
  br i1 %.not27.peel, label %.thread48, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i8, ptr %i.n, align 1, !noundef !7
  %i.q = icmp eq i8 %i.p, 46
  br i1 %i.q, label %bb.g, label %.thread48

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.s = load i8, ptr %i.r, align 1, !noundef !7
  %i.t = icmp eq i8 %i.s, 47
  br i1 %i.t, label %bb.i, label %.thread48

bb.h:                                             ; preds = %bb.d
  %i.u = load i8, ptr %i.n, align 1, !noundef !7
  %i.v = icmp eq i8 %i.u, 46
  br i1 %i.v, label %bb.i, label %.thread48

.thread48:                                        ; preds = %._crit_edge.loopexit.peel.begin.thread, %bb.h, %bb.g, %bb.f, %bb.e
  %.sroa.012.3.peel45 = phi i64 [ %.sroa.012.3.peel, %bb.h ], [ %.sroa.012.3.peel, %bb.g ], [ %.sroa.012.3.peel, %bb.f ], [ %.sroa.012.3.peel, %bb.e ], [ 0, %._crit_edge.loopexit.peel.begin.thread ]
  %i.w = phi i64 [ %i.c, %bb.h ], [ %i.c, %bb.g ], [ %i.c, %bb.f ], [ %i.c, %bb.e ], [ 1, %._crit_edge.loopexit.peel.begin.thread ]
  br label %bb.i

bb.i:                                             ; preds = %.thread48, %bb.h, %bb.g
  %.sroa.012.3.peel44 = phi i64 [ %.sroa.012.3.peel, %bb.h ], [ %.sroa.012.3.peel45, %.thread48 ], [ %.sroa.012.3.peel, %bb.g ]
  %i.x = phi i64 [ %i.c, %bb.h ], [ %i.w, %.thread48 ], [ %i.c, %bb.g ]
  %.sroa.024.0.peel = phi i64 [ 1, %bb.h ], [ 0, %.thread48 ], [ 1, %bb.g ]
  %i.y = add i64 %.sroa.024.0.peel, %i.x
  br label %._crit_edge

._crit_edge:                                      ; preds = %.split, %._crit_edge.loopexit.peel.begin, %bb.i, %._crit_edge.loopexit.peel.begin.thread
  %.sroa.012.0.lcssa = phi i64 [ %1, %.split ], [ %.sroa.012.3.peel44, %bb.i ], [ %.sroa.012.2, %._crit_edge.loopexit.peel.begin ], [ 0, %._crit_edge.loopexit.peel.begin.thread ] ; 2 uses
  %.sroa.0.0.lcssa = phi i64 [ %1, %.split ], [ %i.y, %bb.i ], [ %.sroa.0.1, %._crit_edge.loopexit.peel.begin ], [ 0, %._crit_edge.loopexit.peel.begin.thread ] ; 3 uses
  %i.z = icmp ult i64 %.sroa.0.0.lcssa, %1
  br i1 %i.z, label %bb.k, label %bb.j

.lr.ph:                                           ; preds = %bb.a, %bb.l
  %.sroa.0.032 = phi i64 [ %.sroa.0.1, %bb.l ], [ 0, %bb.a ] ; 4 uses
  %.sroa.012.031 = phi i64 [ %.sroa.012.2, %bb.l ], [ 0, %bb.a ] ; 3 uses
  %.sroa.019.030 = phi i64 [ %i.aa, %bb.l ], [ 0, %bb.a ] ; 7 uses
  %i.aa = add nuw i64 %.sroa.019.030, 1           ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.019.030
  %i.ac = load i8, ptr %i.ab, align 1, !noundef !7
  %i.ad = icmp eq i8 %i.ac, 47
  br i1 %i.ad, label %bb.m, label %bb.l

bb.j:                                             ; preds = %._crit_edge, %bb.k
  %.sroa.012.1 = phi i64 [ %i.ah, %bb.k ], [ %.sroa.012.0.lcssa, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1637
  store i64 %.sroa.012.1, ptr %i.a, align 8, !noalias !1637
  call fastcc void @_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1637
  ret void

bb.k:                                             ; preds = %._crit_edge
  %i.ae = sub nuw i64 %1, %.sroa.0.0.lcssa        ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.lcssa
  %i.ag = add i64 %i.ae, %.sroa.012.0.lcssa       ; 2 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 62)
  tail call fastcc void @_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write(ptr noalias nofree noundef align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %i.ae) #42
  br label %bb.j

bb.l:                                             ; preds = %bb.r, %.lr.ph
  %.sroa.012.2 = phi i64 [ %.sroa.012.3, %bb.r ], [ %.sroa.012.031, %.lr.ph ] ; 4 uses
  %.sroa.0.1 = phi i64 [ %i.as, %bb.r ], [ %.sroa.0.032, %.lr.ph ] ; 5 uses
  %exitcond.not = icmp eq i64 %.sroa.019.030, %i.b
  br i1 %exitcond.not, label %._crit_edge.loopexit.peel.begin, label %.lr.ph, !llvm.loop !1636

bb.m:                                             ; preds = %.lr.ph
  %i.ai = icmp ugt i64 %.sroa.019.030, %.sroa.0.032
  br i1 %i.ai, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.o
  %.sroa.012.3 = phi i64 [ %i.ar, %bb.o ], [ %.sroa.012.031, %bb.m ]
  %i.aj = sub nuw i64 %1, %i.aa
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa ; 2 uses
  %i.al = icmp eq i64 %i.aj, 1
  %i.am = load i8, ptr %i.ak, align 1, !noundef !7
  %i.an = icmp eq i8 %i.am, 46                    ; 2 uses
  br i1 %i.al, label %bb.p, label %bb.s

bb.o:                                             ; preds = %bb.m
  %i.ao = sub nuw i64 %.sroa.019.030, %.sroa.0.032 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.032
  %i.aq = add i64 %i.ao, %.sroa.012.031           ; 2 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 62)
  tail call fastcc void @_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write(ptr noalias nofree noundef align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef %i.ao) #42
  br label %bb.n

bb.p:                                             ; preds = %bb.n
  br i1 %i.an, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.s, %bb.p
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.p, %bb.q
  %.sroa.024.0 = phi i64 [ 1, %bb.p ], [ 0, %bb.q ], [ 1, %bb.t ]
  %i.as = add i64 %.sroa.024.0, %i.aa
  br label %bb.l

bb.s:                                             ; preds = %bb.n
  br i1 %i.an, label %bb.t, label %bb.q

bb.t:                                             ; preds = %bb.s
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.au = load i8, ptr %i.at, align 1, !noundef !7
  %i.av = icmp eq i8 %i.au, 47
  br i1 %i.av, label %bb.r, label %bb.q
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef i64 @_RINvYNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRNtNtB9_4path7PathBufECsgn1j6LDYpaP_5uu_cp(i64 %.0.val, i64 %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = xor i64 %.0.val, 8317987319222330741
  %i.c = xor i64 %.8.val, 7237128888997146477
  %i.d = xor i64 %.0.val, 7816392313619706465
  %i.e = xor i64 %.8.val, 8387220255154660723
  store i64 %i.b, ptr %i.a, align 8, !alias.scope !1647
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %i.d, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !1647
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 %i.c, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !1647
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store i64 %i.e, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !1647
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.0.val, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !1647
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.8.val, ptr %.sroa.812.0..sroa_idx.i, align 8, !alias.scope !1647
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !1647
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.f, align 8, !noalias !1648, !nonnull !7, !noundef !7
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.g, align 8, !noalias !1648, !noundef !7
  call fastcc void @_RINvXs1h_NtCs2vKOLqTMYjT_3std4pathNtB7_4PathNtNtCs6JMX4GRUq9U_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #39
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !alias.scope !1649
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !1649
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !1649 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !1649
  %i.h = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !1649, !noundef !7
  %i.i = shl i64 %i.h, 56
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1649, !noundef !7
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

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef i64 @_RINvYNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationECsgn1j6LDYpaP_5uu_cp(i64 %.0.val, i64 %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = xor i64 %.0.val, 8317987319222330741
  %i.e = xor i64 %.8.val, 7237128888997146477
  %i.f = xor i64 %.0.val, 7816392313619706465
  %i.g = xor i64 %.8.val, 8387220255154660723
  store i64 %i.d, ptr %i.c, align 8, !alias.scope !1664
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 %i.f, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !1664
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 %i.e, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !1664
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store i64 %i.g, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !1664
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.0.val, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !1664
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %.8.val, ptr %.sroa.812.0..sroa_idx.i, align 8, !alias.scope !1664
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !1664
  %.val.i = load i64, ptr %0, align 8, !noalias !1665, !noundef !7
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load i64, ptr %i.h, align 8, !noalias !1665
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1666
  store i64 %.val.i, ptr %i.b, align 8, !noalias !1666
  call fastcc void @_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1667
  store i64 %.val1.i, ptr %i.a, align 8, !noalias !1667
  call fastcc void @_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1667
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.c, align 8, !alias.scope !1668
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !1668
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !1668 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !1668
  %i.i = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !1668, !noundef !7
  %i.j = shl i64 %i.i, 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !1668, !noundef !7
  %i.m = or i64 %i.j, %i.l                        ; 2 uses
  %i.n = xor i64 %i.m, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.o = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.p = add i64 %i.n, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.q = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.r = xor i64 %i.q, %i.o                       ; 3 uses
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 16)
  %i.t = xor i64 %i.s, %i.p                       ; 3 uses
  %i.u = tail call noundef i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 32)
  %i.v = add i64 %i.p, %i.r                       ; 3 uses
  %i.w = add i64 %i.t, %i.u                       ; 2 uses
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 17)
  %i.y = xor i64 %i.v, %i.x                       ; 3 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 21)
  %i.aa = xor i64 %i.z, %i.w                      ; 3 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 32)
end_hunk_0
begin_hunk_1_@llvm.smax.i8
!1438 = distinct !{!1438, !1437, !"_RINvNtNtNtCs7tKScEop1B6_5alloc2io4copy7generic17stack_buffer_copyNtNtCs2vKOLqTMYjT_3std2fs4FileINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawWriterQB11_EECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1439 = distinct !{null, null, null, null, null}
!1440 = distinct !{!1440, i1 true, !"_RNvXs_NtNtCsh036I4OHgIr_6uucore4mods2ioINtB4_9RawWriterQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5writeCsgn1j6LDYpaP_5uu_cp"}
!1441 = distinct !{!1441, !1440, !"_RNvXs_NtNtCsh036I4OHgIr_6uucore4mods2ioINtB4_9RawWriterQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5writeCsgn1j6LDYpaP_5uu_cp: argument 0"}
!1442 = distinct !{!1442, i1 true, !"_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2io8syscalls5write"}
!1443 = distinct !{!1443, !1442, !"_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2io8syscalls5write: argument 0"}
!1444 = distinct !{!1444, i1 true, !"_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawWriterQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsgn1j6LDYpaP_5uu_cp"}
!1445 = distinct !{!1445, !1444, !"_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawWriterQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsgn1j6LDYpaP_5uu_cp: argument 0"}
!1446 = distinct !{null, null, null, null, null, null}
!1447 = distinct !{!1447, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgn1j6LDYpaP_5uu_cp"}
!1448 = distinct !{!1448, !1447, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgn1j6LDYpaP_5uu_cp: argument 0:thread"}
!1449 = distinct !{!1449, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgn1j6LDYpaP_5uu_cp"}
!1450 = distinct !{!1450, !1449, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgn1j6LDYpaP_5uu_cp: argument 0:thread"}
!1451 = distinct !{!1451, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgn1j6LDYpaP_5uu_cp"}
!1452 = distinct !{!1452, !1451, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1453 = distinct !{!1453, i1 true, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgn1j6LDYpaP_5uu_cp"}
!1454 = distinct !{!1454, !1453, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1455 = !{!1385, !1384, !1383}
!1456 = !{!1385}
!1457 = !{!1387, !1385}
!1458 = !{i64 50786339019582945}
!1459 = !{!1389, !1385}
!1460 = !{i64 50794001241240793}
!1461 = !{!1391, !1385}
!1462 = !{!1393, !1391, !1385}
!1463 = !{!1391, !1394, !1385, !1384, !1383}
!1464 = !{!1396, !1391, !1385}
!1465 = !{!1398}
!1466 = !{!1399}
!1467 = !{!1401}
!1468 = !{!1403}
!1469 = !{!1403, !1401, !1398, !1399, !1391, !1394, !1385, !1384, !1383}
!1470 = !{!1403, !1401, !1399, !1391, !1385}
!1471 = !{!1403, !1401, !1399}
!1472 = !{!1398, !1399, !1391, !1394, !1385, !1384, !1383}
!1473 = !{!1405, !1398}
!1474 = !{!1407}
!1475 = !{!1408}
!1476 = !{!1399, !1391, !1385}
!1477 = !{!1407, !1398}
!1478 = !{!1407, !1408, !1398, !1399, !1391, !1394, !1385, !1384, !1383}
!1479 = !{!1408, !1399, !1391, !1385}
!1480 = !{!1412, !1410}
!1481 = !{!1415, !1398, !1399, !1391, !1394, !1385, !1384, !1383}
!1482 = !{!1417, !1398, !1399, !1391, !1394, !1385, !1384, !1383}
!1483 = !{!1419, !1398, !1399, !1391, !1394, !1385, !1384, !1383}
!1484 = !{!1421}
!1485 = !{!1419, !1399, !1391, !1385}
!1486 = !{!1423, !1398}
!1487 = !{!1425, !1391, !1385}
!1488 = !{!1427, !1391, !1385}
!1489 = !{!1425, !1429, !1391, !1394, !1385, !1384, !1383}
!1490 = !{!1438, !1436, !1434, !1432}
!1491 = !{!1441}
!1492 = !{!1443}
!1493 = !{!1441, !1445, !1438, !1436, !1434, !1432}
!1494 = !{!1448, !1438, !1436, !1434, !1432}
!1495 = !{!1450, !1438, !1436, !1434, !1432}
!1496 = !{!1452, !1438, !1436, !1434, !1432}
!1497 = !{!1454}
!1498 = !{!1452}
!1499 = distinct !{!1499, i1 true, !"_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned7OwnedFdNCINvNtNtB6_2fs3abs4openRNtNtBU_4path4PathE0ECsgn1j6LDYpaP_5uu_cp"}
!1500 = distinct !{!1500, !1499, !"_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned7OwnedFdNCINvNtNtB6_2fs3abs4openRNtNtBU_4path4PathE0ECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1501 = !{!1500}
!1502 = distinct !{!1502, i1 true, !"_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned7OwnedFdNCINvNtNtB6_2fs3abs4openRNtNtBU_4path4PathE0ECsgn1j6LDYpaP_5uu_cp"}
!1503 = distinct !{!1503, !1502, !"_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned7OwnedFdNCINvNtNtB6_2fs3abs4openRNtNtBU_4path4PathE0ECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1504 = !{!1503}
!1505 = distinct !{!1505, i1 true, !"_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned7OwnedFdNCINvNtNtB6_2fs3abs4openRNtNtBU_4path4PathE0ECsgn1j6LDYpaP_5uu_cp"}
!1506 = distinct !{!1506, !1505, !"_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned7OwnedFdNCINvNtNtB6_2fs3abs4openRNtNtBU_4path4PathE0ECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1507 = !{!1506}
!1508 = distinct !{!1508, i1 true, !"_RNvXs8_NtCs7tKScEop1B6_5alloc5sliceINtNtB7_3vec3VecTjReIBy_RNtNtB7_6string6StringEEEINtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable8BufGuardBN_E13with_capacityCsgn1j6LDYpaP_5uu_cp"}
!1509 = distinct !{!1509, !1508, !"_RNvXs8_NtCs7tKScEop1B6_5alloc5sliceINtNtB7_3vec3VecTjReIBy_RNtNtB7_6string6StringEEEINtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable8BufGuardBN_E13with_capacityCsgn1j6LDYpaP_5uu_cp: argument 0"}
!1510 = distinct !{!1510, i1 true, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgn1j6LDYpaP_5uu_cp"}
!1511 = distinct !{!1511, !1510, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgn1j6LDYpaP_5uu_cp: argument 0"}
!1512 = distinct !{!1512, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecTjReIBC_RNtNtBG_6string6StringEEEECsgn1j6LDYpaP_5uu_cp"}
!1513 = distinct !{!1513, !1512, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecTjReIBC_RNtNtBG_6string6StringEEEECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1514 = !{!1511, !1509}
!1515 = !{!1509}
!1516 = !{!1513}
!1517 = distinct !{!1517, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1C_6string6StringEEEECsgn1j6LDYpaP_5uu_cp"}
!1518 = distinct !{!1518, !1517, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1C_6string6StringEEEECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1519 = distinct !{!1519, i1 true, !"_RNvXs5_NtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1p_6string6StringEEENtNtNtBd_3ops4drop4Drop4dropCsgn1j6LDYpaP_5uu_cp"}
!1520 = distinct !{!1520, !1519, !"_RNvXs5_NtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1p_6string6StringEEENtNtNtBd_3ops4drop4Drop4dropCsgn1j6LDYpaP_5uu_cp: argument 0"}
!1521 = !{!1520, !1518}
!1522 = distinct !{!1522, i1 true, !"_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift10create_runTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1c_6string6StringEENCINvMNtB1c_5sliceSB13_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2M_7Options12from_matchess1_0E0EB2M_"}
!1523 = distinct !{!1523, !1522, !"_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift10create_runTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1c_6string6StringEENCINvMNtB1c_5sliceSB13_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2M_7Options12from_matchess1_0E0EB2M_: argument 0"}
!1524 = distinct !{null}
!1525 = distinct !{!1525, i1 true, !"_RINvNvMNtCs6JMX4GRUq9U_4core5sliceSp7reverse7revswapTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBX_6string6StringEEECsgn1j6LDYpaP_5uu_cp"}
!1526 = distinct !{!1526, !1525, !"_RINvNvMNtCs6JMX4GRUq9U_4core5sliceSp7reverse7revswapTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBX_6string6StringEEECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1527 = distinct !{!1527, !1522, !"_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift10create_runTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1c_6string6StringEENCINvMNtB1c_5sliceSB13_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2M_7Options12from_matchess1_0E0EB2M_: argument 2"}
!1528 = distinct !{!1528, !1522, !"_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift10create_runTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1c_6string6StringEENCINvMNtB1c_5sliceSB13_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2M_7Options12from_matchess1_0E0EB2M_: argument 1"}
!1529 = distinct !{!1529, !1525, !"_RINvNvMNtCs6JMX4GRUq9U_4core5sliceSp7reverse7revswapTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBX_6string6StringEEECsgn1j6LDYpaP_5uu_cp: argument 1"}
!1530 = distinct !{!1530, i1 true, !"_RNvMNtCs6JMX4GRUq9U_4core5sliceSTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBD_6string6StringEE7reverseCsgn1j6LDYpaP_5uu_cp"}
!1531 = distinct !{!1531, !1530, !"_RNvMNtCs6JMX4GRUq9U_4core5sliceSTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBD_6string6StringEE7reverseCsgn1j6LDYpaP_5uu_cp: argument 0"}
!1532 = distinct !{null}
!1533 = distinct !{!1533, i1 true, !"_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5merge5mergeTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB16_6string6StringEENCINvMNtB16_5sliceSBX_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2F_7Options12from_matchess1_0E0EB2F_"}
!1534 = distinct !{!1534, !1533, !"_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5merge5mergeTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB16_6string6StringEENCINvMNtB16_5sliceSBX_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2F_7Options12from_matchess1_0E0EB2F_: argument 0"}
!1535 = distinct !{!1535, !1533, !"_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5merge5mergeTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB16_6string6StringEENCINvMNtB16_5sliceSBX_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2F_7Options12from_matchess1_0E0EB2F_: argument 1"}
!1536 = distinct !{!1536, i1 true, !"_RINvMNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5mergeINtB3_10MergeStateTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1j_6string6StringEEE10merge_downNCINvMNtB1j_5sliceSB1a_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB36_7Options12from_matchess1_0E0EB36_"}
!1537 = distinct !{!1537, !1536, !"_RINvMNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5mergeINtB3_10MergeStateTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1j_6string6StringEEE10merge_downNCINvMNtB1j_5sliceSB1a_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB36_7Options12from_matchess1_0E0EB36_: argument 0"}
!1538 = distinct !{!1538, i1 true, !"_RINvMNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5mergeINtB3_10MergeStateTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1j_6string6StringEEE8merge_upNCINvMNtB1j_5sliceSB1a_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB33_7Options12from_matchess1_0E0EB33_"}
!1539 = distinct !{!1539, !1538, !"_RINvMNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5mergeINtB3_10MergeStateTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1j_6string6StringEEE8merge_upNCINvMNtB1j_5sliceSB1a_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB33_7Options12from_matchess1_0E0EB33_: argument 0"}
!1540 = distinct !{!1540, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1y_6string6StringEEEECsgn1j6LDYpaP_5uu_cp"}
!1541 = distinct !{!1541, !1540, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1y_6string6StringEEEECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1542 = distinct !{!1542, i1 true, !"_RNvXs_NtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5mergeINtB4_10MergeStateTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1k_6string6StringEEENtNtNtBc_3ops4drop4Drop4dropCsgn1j6LDYpaP_5uu_cp"}
!1543 = distinct !{!1543, !1542, !"_RNvXs_NtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5mergeINtB4_10MergeStateTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1k_6string6StringEEENtNtNtBc_3ops4drop4Drop4dropCsgn1j6LDYpaP_5uu_cp: argument 0"}
!1544 = !{!1523}
!1545 = !{!1526}
!1546 = !{!1528, !1527}
!1547 = !{!1529}
!1548 = !{!1526, !1531}
!1549 = !{!1529, !1531}
!1550 = !{!1534}
!1551 = !{!1535}
!1552 = !{!1534, !1535}
!1553 = !{!1537}
!1554 = !{!1539}
!1555 = !{!1543, !1541}
!1556 = distinct !{!1556, i1 true, !"_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1B_6string6StringEENCINvMNtB1B_5sliceSB1s_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB3b_7Options12from_matchess1_0E0EB3b_"}
!1557 = distinct !{!1557, !1556, !"_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1B_6string6StringEENCINvMNtB1B_5sliceSB1s_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB3b_7Options12from_matchess1_0E0EB3b_: argument 0"}
!1558 = distinct !{!1558, !1556, !"_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1B_6string6StringEENCINvMNtB1B_5sliceSB1s_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB3b_7Options12from_matchess1_0E0EB3b_: argument 1"}
!1559 = distinct !{!1559, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1C_6string6StringEEEECsgn1j6LDYpaP_5uu_cp"}
!1560 = distinct !{!1560, !1559, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1C_6string6StringEEEECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1561 = distinct !{!1561, i1 true, !"_RNvXs5_NtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1p_6string6StringEEENtNtNtBd_3ops4drop4Drop4dropCsgn1j6LDYpaP_5uu_cp"}
!1562 = distinct !{!1562, !1561, !"_RNvXs5_NtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1p_6string6StringEEENtNtNtBd_3ops4drop4Drop4dropCsgn1j6LDYpaP_5uu_cp: argument 0"}
!1563 = distinct !{!1563, i1 true, !"_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort19bidirectional_mergeTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1p_6string6StringEENCINvMNtB1p_5sliceSB1g_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2Z_7Options12from_matchess1_0E0EB2Z_"}
!1564 = distinct !{!1564, !1563, !"_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort19bidirectional_mergeTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1p_6string6StringEENCINvMNtB1p_5sliceSB1g_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2Z_7Options12from_matchess1_0E0EB2Z_: argument 0"}
!1565 = distinct !{!1565, i1 true, !"_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort8merge_upTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1d_6string6StringEENCINvMNtB1d_5sliceSB14_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2N_7Options12from_matchess1_0E0EB2N_"}
!1566 = distinct !{!1566, !1565, !"_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort8merge_upTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1d_6string6StringEENCINvMNtB1d_5sliceSB14_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2N_7Options12from_matchess1_0E0EB2N_: argument 1"}
!1567 = distinct !{!1567, !1565, !"_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort8merge_upTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1d_6string6StringEENCINvMNtB1d_5sliceSB14_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2N_7Options12from_matchess1_0E0EB2N_: argument 0"}
!1568 = distinct !{!1568, i1 true, !"_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort10merge_downTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1g_6string6StringEENCINvMNtB1g_5sliceSB17_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2Q_7Options12from_matchess1_0E0EB2Q_"}
!1569 = distinct !{!1569, !1568, !"_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort10merge_downTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1g_6string6StringEENCINvMNtB1g_5sliceSB17_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2Q_7Options12from_matchess1_0E0EB2Q_: argument 1"}
!1570 = distinct !{!1570, !1568, !"_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort10merge_downTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1g_6string6StringEENCINvMNtB1g_5sliceSB17_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2Q_7Options12from_matchess1_0E0EB2Q_: argument 0"}
!1571 = distinct !{!1571, i1 true, !"_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot12choose_pivotTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1e_6string6StringEENCINvMNtB1e_5sliceSB15_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2O_7Options12from_matchess1_0E0EB2O_"}
!1572 = distinct !{!1572, !1571, !"_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot12choose_pivotTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1e_6string6StringEENCINvMNtB1e_5sliceSB15_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2O_7Options12from_matchess1_0E0EB2O_: argument 0"}
!1573 = distinct !{!1573, i1 true, !"_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort16stable_partitionTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1m_6string6StringEENCINvMNtB1m_5sliceSB1d_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2W_7Options12from_matchess1_0E0EB2W_"}
!1574 = distinct !{!1574, !1573, !"_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort16stable_partitionTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1m_6string6StringEENCINvMNtB1m_5sliceSB1d_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2W_7Options12from_matchess1_0E0EB2W_: argument 1"}
!1575 = distinct !{!1575, !1573, !"_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort16stable_partitionTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1m_6string6StringEENCINvMNtB1m_5sliceSB1d_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2W_7Options12from_matchess1_0E0EB2W_: argument 0"}
!1576 = distinct !{!1576, i1 true, !"_RNvMNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1q_6string6StringEEE13partition_oneCsgn1j6LDYpaP_5uu_cp"}
!1577 = distinct !{!1577, !1576, !"_RNvMNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1q_6string6StringEEE13partition_oneCsgn1j6LDYpaP_5uu_cp: argument 0"}
!1578 = distinct !{!1578, i1 true, !"_RNvMNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1q_6string6StringEEE13partition_oneCsgn1j6LDYpaP_5uu_cp"}
!1579 = distinct !{!1579, !1578, !"_RNvMNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1q_6string6StringEEE13partition_oneCsgn1j6LDYpaP_5uu_cp: argument 0"}
!1580 = distinct !{!1580, i1 true, !"_RNvMNtCs6JMX4GRUq9U_4core5sliceSTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBD_6string6StringEE12split_at_mutCsgn1j6LDYpaP_5uu_cp"}
!1581 = distinct !{!1581, !1580, !"_RNvMNtCs6JMX4GRUq9U_4core5sliceSTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBD_6string6StringEE12split_at_mutCsgn1j6LDYpaP_5uu_cp: argument 1"}
!1582 = distinct !{!1582, !1580, !"_RNvMNtCs6JMX4GRUq9U_4core5sliceSTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBD_6string6StringEE12split_at_mutCsgn1j6LDYpaP_5uu_cp: argument 0"}
!1583 = distinct !{!1583, i1 true, !"_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort16stable_partitionTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1m_6string6StringEENCINvB2_9quicksortB1d_NCINvMNtB1m_5sliceSB1d_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB3i_7Options12from_matchess1_0E0E0EB3i_"}
!1584 = distinct !{!1584, !1583, !"_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort16stable_partitionTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1m_6string6StringEENCINvB2_9quicksortB1d_NCINvMNtB1m_5sliceSB1d_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB3i_7Options12from_matchess1_0E0E0EB3i_: argument 1"}
!1585 = distinct !{!1585, !1583, !"_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort16stable_partitionTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1m_6string6StringEENCINvB2_9quicksortB1d_NCINvMNtB1m_5sliceSB1d_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB3i_7Options12from_matchess1_0E0E0EB3i_: argument 0"}
!1586 = distinct !{!1586, i1 true, !"_RNvMNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1q_6string6StringEEE13partition_oneCsgn1j6LDYpaP_5uu_cp"}
!1587 = distinct !{!1587, !1586, !"_RNvMNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1q_6string6StringEEE13partition_oneCsgn1j6LDYpaP_5uu_cp: argument 0"}
!1588 = distinct !{!1588, i1 true, !"_RNvMNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1q_6string6StringEEE13partition_oneCsgn1j6LDYpaP_5uu_cp"}
!1589 = distinct !{!1589, !1588, !"_RNvMNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1q_6string6StringEEE13partition_oneCsgn1j6LDYpaP_5uu_cp: argument 0"}
!1590 = !{!1557}
!1591 = !{!1558}
!1592 = !{!1557, !1558}
!1593 = !{!1562, !1560}
!1594 = !{!1564}
!1595 = !{!1564, !1558}
!1596 = !{!1567, !1566}
!1597 = !{!1570, !1569}
!1598 = !{!1564, !1557, !1558}
!1599 = !{!1572}
!1600 = !{!1574}
!1601 = !{!1575}
!1602 = !{!1575, !1574}
!1603 = !{!1577}
!1604 = !{!1579}
!1605 = !{!1582, !1581}
!1606 = !{!1584}
!1607 = !{!1585}
!1608 = !{!1585, !1584}
!1609 = !{!1587}
!1610 = !{!1589}
!1611 = distinct !{!1611, i1 true, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsgn1j6LDYpaP_5uu_cp"}
!1612 = distinct !{!1612, !1611, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsgn1j6LDYpaP_5uu_cp: argument 0"}
!1613 = !{!1612}
!1614 = distinct !{!1614, i1 true, !"_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read4readCsgn1j6LDYpaP_5uu_cp"}
!1615 = distinct !{!1615, !1614, !"_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read4readCsgn1j6LDYpaP_5uu_cp: argument 0"}
!1616 = distinct !{!1616, i1 true, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgn1j6LDYpaP_5uu_cp"}
!1617 = distinct !{!1617, !1616, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgn1j6LDYpaP_5uu_cp: argument 0:thread"}
!1618 = distinct !{!1618, i1 true, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgn1j6LDYpaP_5uu_cp"}
!1619 = distinct !{!1619, !1618, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgn1j6LDYpaP_5uu_cp: argument 0"}
!1620 = distinct !{!1620, i1 true, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgn1j6LDYpaP_5uu_cp"}
!1621 = distinct !{!1621, !1620, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgn1j6LDYpaP_5uu_cp: argument 0"}
!1622 = distinct !{!1622, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgn1j6LDYpaP_5uu_cp"}
!1623 = distinct !{!1623, !1622, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1624 = distinct !{!1624, i1 true, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgn1j6LDYpaP_5uu_cp"}
!1625 = distinct !{!1625, !1624, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1626 = !{!1615}
!1627 = !{!1619, !1617}
!1628 = !{!"branch_weights", i32 2139577918, i32 7905730}
!1629 = !{!1621}
!1630 = !{!1619, !1621}
!1631 = !{!"branch_weights", !"expected", i32 3964497, i32 2143519151}
!1632 = !{!1623}
!1633 = !{!1625}
!1634 = distinct !{!1634, i1 true, !"_RNvYNtNtNtCs2vKOLqTMYjT_3std4hash6random13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher11write_usizeCsgn1j6LDYpaP_5uu_cp"}
!1635 = distinct !{!1635, !1634, !"_RNvYNtNtNtCs2vKOLqTMYjT_3std4hash6random13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher11write_usizeCsgn1j6LDYpaP_5uu_cp: argument 0"}
!1636 = distinct !{!1636, !1638}
!1637 = !{!1635}
!1638 = !{!"llvm.loop.peeled.count", i32 1}
!1639 = distinct !{!1639, i1 true, !"_RNvXs_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB4_11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher12build_hasher"}
!1640 = distinct !{!1640, !1639, !"_RNvXs_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB4_11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher12build_hasher: argument 0"}
!1641 = distinct !{!1641, i1 true, !"_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRNtNtCs2vKOLqTMYjT_3std4path7PathBufNtB8_4Hash4hashNtNtNtBJ_4hash6random13DefaultHasherECsgn1j6LDYpaP_5uu_cp"}
!1642 = distinct !{!1642, !1641, !"_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRNtNtCs2vKOLqTMYjT_3std4path7PathBufNtB8_4Hash4hashNtNtNtBJ_4hash6random13DefaultHasherECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1643 = distinct !{!1643, i1 true, !"_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher6finish"}
!1644 = distinct !{!1644, !1643, !"_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher6finish: argument 0"}
!1645 = distinct !{!1645, i1 true, !"_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsgn1j6LDYpaP_5uu_cp"}
!1646 = distinct !{!1646, !1645, !"_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsgn1j6LDYpaP_5uu_cp: argument 0"}
!1647 = !{!1640}
!1648 = !{!1642}
!1649 = !{!1646, !1644}
!1650 = distinct !{!1650, i1 true, !"_RNvXs_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB4_11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher12build_hasher"}
!1651 = distinct !{!1651, !1650, !"_RNvXs_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB4_11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher12build_hasher: argument 0"}
!1652 = distinct !{!1652, i1 true, !"_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtB8_4Hash4hashNtNtNtCs2vKOLqTMYjT_3std4hash6random13DefaultHasherECsgn1j6LDYpaP_5uu_cp"}
!1653 = distinct !{!1653, !1652, !"_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtB8_4Hash4hashNtNtNtCs2vKOLqTMYjT_3std4hash6random13DefaultHasherECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1654 = distinct !{!1654, i1 true, !"_RINvXs1_NtNtCsh036I4OHgIr_6uucore8features2fsNtB6_15FileInformationNtNtCs6JMX4GRUq9U_4core4hash4Hash4hashNtNtNtCs2vKOLqTMYjT_3std4hash6random13DefaultHasherECsgn1j6LDYpaP_5uu_cp"}
!1655 = distinct !{!1655, !1654, !"_RINvXs1_NtNtCsh036I4OHgIr_6uucore8features2fsNtB6_15FileInformationNtNtCs6JMX4GRUq9U_4core4hash4Hash4hashNtNtNtCs2vKOLqTMYjT_3std4hash6random13DefaultHasherECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1656 = distinct !{!1656, i1 true, !"_RNvYNtNtNtCs2vKOLqTMYjT_3std4hash6random13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher9write_u64Csgn1j6LDYpaP_5uu_cp"}
!1657 = distinct !{!1657, !1656, !"_RNvYNtNtNtCs2vKOLqTMYjT_3std4hash6random13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher9write_u64Csgn1j6LDYpaP_5uu_cp: argument 0"}
!1658 = distinct !{!1658, i1 true, !"_RNvYNtNtNtCs2vKOLqTMYjT_3std4hash6random13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher9write_u64Csgn1j6LDYpaP_5uu_cp"}
!1659 = distinct !{!1659, !1658, !"_RNvYNtNtNtCs2vKOLqTMYjT_3std4hash6random13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher9write_u64Csgn1j6LDYpaP_5uu_cp: argument 0"}
!1660 = distinct !{!1660, i1 true, !"_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher6finish"}
!1661 = distinct !{!1661, !1660, !"_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher6finish: argument 0"}
!1662 = distinct !{!1662, i1 true, !"_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsgn1j6LDYpaP_5uu_cp"}
!1663 = distinct !{!1663, !1662, !"_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsgn1j6LDYpaP_5uu_cp: argument 0"}
!1664 = !{!1651}
!1665 = !{!1653}
!1666 = !{!1657, !1655, !1653}
!1667 = !{!1659, !1655, !1653}
!1668 = !{!1663, !1661}
!1669 = distinct !{!1669, i1 true, !"_RNvXs_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB4_11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher12build_hasher"}
!1670 = distinct !{!1670, !1669, !"_RNvXs_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB4_11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher12build_hasher: argument 0"}
!1671 = distinct !{!1671, i1 true, !"_RINvXsl_NtNtCs6JMX4GRUq9U_4core4hash5implsTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufENtB8_4Hash4hashNtNtNtB1D_4hash6random13DefaultHasherECsgn1j6LDYpaP_5uu_cp"}
!1672 = distinct !{!1672, !1671, !"_RINvXsl_NtNtCs6JMX4GRUq9U_4core4hash5implsTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufENtB8_4Hash4hashNtNtNtB1D_4hash6random13DefaultHasherECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1673 = distinct !{!1673, i1 true, !"_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufENtB8_4Hash4hashNtNtNtB1E_4hash6random13DefaultHasherECsgn1j6LDYpaP_5uu_cp"}
!1674 = distinct !{!1674, !1673, !"_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufENtB8_4Hash4hashNtNtNtB1E_4hash6random13DefaultHasherECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1675 = distinct !{!1675, !1671, !"_RINvXsl_NtNtCs6JMX4GRUq9U_4core4hash5implsTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufENtB8_4Hash4hashNtNtNtB1D_4hash6random13DefaultHasherECsgn1j6LDYpaP_5uu_cp: argument 1"}
!1676 = distinct !{!1676, i1 true, !"_RINvXs1_NtNtCsh036I4OHgIr_6uucore8features2fsNtB6_15FileInformationNtNtCs6JMX4GRUq9U_4core4hash4Hash4hashNtNtNtCs2vKOLqTMYjT_3std4hash6random13DefaultHasherECsgn1j6LDYpaP_5uu_cp"}
!1677 = distinct !{!1677, !1676, !"_RINvXs1_NtNtCsh036I4OHgIr_6uucore8features2fsNtB6_15FileInformationNtNtCs6JMX4GRUq9U_4core4hash4Hash4hashNtNtNtCs2vKOLqTMYjT_3std4hash6random13DefaultHasherECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1678 = distinct !{!1678, i1 true, !"_RNvYNtNtNtCs2vKOLqTMYjT_3std4hash6random13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher9write_u64Csgn1j6LDYpaP_5uu_cp"}
!1679 = distinct !{!1679, !1678, !"_RNvYNtNtNtCs2vKOLqTMYjT_3std4hash6random13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher9write_u64Csgn1j6LDYpaP_5uu_cp: argument 0"}
!1680 = distinct !{!1680, i1 true, !"_RNvYNtNtNtCs2vKOLqTMYjT_3std4hash6random13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher9write_u64Csgn1j6LDYpaP_5uu_cp"}
!1681 = distinct !{!1681, !1680, !"_RNvYNtNtNtCs2vKOLqTMYjT_3std4hash6random13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher9write_u64Csgn1j6LDYpaP_5uu_cp: argument 0"}
!1682 = distinct !{!1682, i1 true, !"_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher6finish"}
!1683 = distinct !{!1683, !1682, !"_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher6finish: argument 0"}
!1684 = distinct !{!1684, i1 true, !"_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsgn1j6LDYpaP_5uu_cp"}
!1685 = distinct !{!1685, !1684, !"_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsgn1j6LDYpaP_5uu_cp: argument 0"}
!1686 = !{!1670}
!1687 = !{!1672}
!1688 = !{!1674}
!1689 = !{!1679, !1677, !1672, !1675, !1674}
!1690 = !{!1681, !1677, !1672, !1675, !1674}
!1691 = !{!1685, !1683}
!1692 = distinct !{!1692, i1 true, !"_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes4pipeKb0_ECsgn1j6LDYpaP_5uu_cp"}
!1693 = distinct !{!1693, !1692, !"_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes4pipeKb0_ECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1694 = distinct !{!1694, i1 true, !"_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls18fcntl_setpipe_size"}
!1695 = distinct !{!1695, !1694, !"_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls18fcntl_setpipe_size: argument 0"}
!1696 = distinct !{!1696, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECsgn1j6LDYpaP_5uu_cp"}
!1697 = distinct !{!1697, !1696, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1698 = distinct !{!1698, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgn1j6LDYpaP_5uu_cp"}
!1699 = distinct !{!1699, !1698, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1700 = distinct !{!1700, i1 true, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgn1j6LDYpaP_5uu_cp"}
!1701 = distinct !{!1701, !1700, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1702 = !{!1693}
!1703 = !{!1695, !1693}
!1704 = !{!1699, !1697}
!1705 = !{!1701}
!1706 = distinct !{!1706, i1 true, !"_RNCINvNtCs7GWc7oqutCf_9hashbrown3map11make_hasherNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufNtNtNtB1J_4hash6random11RandomStateE0Csgn1j6LDYpaP_5uu_cp"}
!1707 = distinct !{!1707, !1706, !"_RNCINvNtCs7GWc7oqutCf_9hashbrown3map11make_hasherNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufNtNtNtB1J_4hash6random11RandomStateE0Csgn1j6LDYpaP_5uu_cp: argument 0"}
!1708 = !{!1707}
!1709 = distinct !{!1709, i1 true, !"_RNCINvNtCs7GWc7oqutCf_9hashbrown3map11make_hasherTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuNtNtNtB1K_4hash6random11RandomStateE0Csgn1j6LDYpaP_5uu_cp"}
!1710 = distinct !{!1710, !1709, !"_RNCINvNtCs7GWc7oqutCf_9hashbrown3map11make_hasherTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuNtNtNtB1K_4hash6random11RandomStateE0Csgn1j6LDYpaP_5uu_cp: argument 0"}
!1711 = !{!1710}
!1712 = distinct !{!1712, i1 true, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgn1j6LDYpaP_5uu_cp"}
!1713 = distinct !{!1713, !1712, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgn1j6LDYpaP_5uu_cp: argument 0"}
!1714 = !{!1713}
!1715 = distinct !{!1715, i1 true, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgn1j6LDYpaP_5uu_cp"}
!1716 = distinct !{!1716, !1715, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgn1j6LDYpaP_5uu_cp: argument 0"}
!1717 = !{!1716}
!1718 = distinct !{!1718, i1 true, !"_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq"}
!1719 = distinct !{!1719, !1718, !"_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq: argument 0"}
!1720 = distinct !{!1720, !1718, !"_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq: argument 1"}
!1721 = !{!1719}
!1722 = !{!1720}
!1723 = distinct !{!1723, i1 true, !"_RNvYNCINvMs0_NtNtCs2vKOLqTMYjT_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtBf_2io4pipe10PipeReaderNtB2o_10PipeWriterEEE10initializeNCINvB1d_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_autoNtNtBf_2fs4FileB4O_E0E0zE0E0INtNtNtB1O_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCsgn1j6LDYpaP_5uu_cp"}
!1724 = distinct !{!1724, !1723, !"_RNvYNCINvMs0_NtNtCs2vKOLqTMYjT_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtBf_2io4pipe10PipeReaderNtB2o_10PipeWriterEEE10initializeNCINvB1d_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_autoNtNtBf_2fs4FileB4O_E0E0zE0E0INtNtNtB1O_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCsgn1j6LDYpaP_5uu_cp: argument 0"}
!1725 = distinct !{!1725, i1 true, !"_RNCINvMs0_NtNtCs2vKOLqTMYjT_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtBc_2io4pipe10PipeReaderNtB2l_10PipeWriterEEE10initializeNCINvB1a_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_autoNtNtBc_2fs4FileB4L_E0E0zE0E0Csgn1j6LDYpaP_5uu_cp"}
!1726 = distinct !{!1726, !1725, !"_RNCINvMs0_NtNtCs2vKOLqTMYjT_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtBc_2io4pipe10PipeReaderNtB2l_10PipeWriterEEE10initializeNCINvB1a_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_autoNtNtBc_2fs4FileB4L_E0E0zE0E0Csgn1j6LDYpaP_5uu_cp: argument 0"}
!1727 = distinct !{!1727, i1 true, !"_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes4pipeKb0_ECsgn1j6LDYpaP_5uu_cp"}
!1728 = distinct !{!1728, !1727, !"_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes4pipeKb0_ECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1729 = distinct !{!1729, i1 true, !"_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls18fcntl_setpipe_size"}
!1730 = distinct !{!1730, !1729, !"_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls18fcntl_setpipe_size: argument 0"}
!1731 = distinct !{!1731, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECsgn1j6LDYpaP_5uu_cp"}
!1732 = distinct !{!1732, !1731, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1733 = distinct !{!1733, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgn1j6LDYpaP_5uu_cp"}
!1734 = distinct !{!1734, !1733, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1735 = distinct !{!1735, i1 true, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgn1j6LDYpaP_5uu_cp"}
!1736 = distinct !{!1736, !1735, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1737 = !{!1724}
!1738 = !{!1726}
!1739 = !{!1728, !1726, !1724}
!1740 = !{!1730, !1728, !1726, !1724}
!1741 = !{!1734, !1732, !1726, !1724}
!1742 = !{!1736}
!1743 = !{!1726, !1724}
!1744 = distinct !{!1744, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgn1j6LDYpaP_5uu_cp"}
!1745 = distinct !{!1745, !1744, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1746 = distinct !{!1746, i1 true, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgn1j6LDYpaP_5uu_cp"}
!1747 = distinct !{!1747, !1746, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1748 = !{!1745}
!1749 = !{!1747}
!1750 = distinct !{!1750, i1 true, !"_RINvNtCs2vKOLqTMYjT_3std2fs14create_dir_allRNtNtB4_4path4PathECsgn1j6LDYpaP_5uu_cp"}
!1751 = distinct !{!1751, !1750, !"_RINvNtCs2vKOLqTMYjT_3std2fs14create_dir_allRNtNtB4_4path4PathECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1752 = distinct !{!1752, i1 true, !"_RNvCsgn1j6LDYpaP_5uu_cp11copy_socket"}
!1753 = distinct !{!1753, !1752, !"_RNvCsgn1j6LDYpaP_5uu_cp11copy_socket: argument 0"}
!1754 = distinct !{!1754, !1752, !"_RNvCsgn1j6LDYpaP_5uu_cp11copy_socket: argument 1"}
!1755 = distinct !{!1755, i1 true, !"_RINvNtCs2vKOLqTMYjT_3std2fs8metadataRNtNtB4_4path4PathECsgn1j6LDYpaP_5uu_cp"}
!1756 = distinct !{!1756, !1755, !"_RINvNtCs2vKOLqTMYjT_3std2fs8metadataRNtNtB4_4path4PathECsgn1j6LDYpaP_5uu_cp: argument 1"}
!1757 = distinct !{!1757, !1755, !"_RINvNtCs2vKOLqTMYjT_3std2fs8metadataRNtNtB4_4path4PathECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1758 = distinct !{!1758, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgn1j6LDYpaP_5uu_cp"}
!1759 = distinct !{!1759, !1758, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1760 = distinct !{!1760, i1 true, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgn1j6LDYpaP_5uu_cp"}
!1761 = distinct !{!1761, !1760, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1762 = distinct !{!1762, i1 true, !"_RINvMs_NtNtNtNtCs2vKOLqTMYjT_3std2os4unix3net8listenerNtB5_12UnixListener4bindRNtNtBd_4path4PathECsgn1j6LDYpaP_5uu_cp"}
!1763 = distinct !{!1763, !1762, !"_RINvMs_NtNtNtNtCs2vKOLqTMYjT_3std2os4unix3net8listenerNtB5_12UnixListener4bindRNtNtBd_4path4PathECsgn1j6LDYpaP_5uu_cp: argument 1"}
!1764 = distinct !{!1764, !1762, !"_RINvMs_NtNtNtNtCs2vKOLqTMYjT_3std2os4unix3net8listenerNtB5_12UnixListener4bindRNtNtBd_4path4PathECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1765 = distinct !{!1765, i1 true, !"_RINvNtNtNtCs2vKOLqTMYjT_3std3sys3pal4unix3cvtlECsgn1j6LDYpaP_5uu_cp"}
!1766 = distinct !{!1766, !1765, !"_RINvNtNtNtCs2vKOLqTMYjT_3std3sys3pal4unix3cvtlECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1767 = distinct !{!1767, i1 true, !"_RINvNtNtNtCs2vKOLqTMYjT_3std3sys3pal4unix3cvtlECsgn1j6LDYpaP_5uu_cp"}
!1768 = distinct !{!1768, !1767, !"_RINvNtNtNtCs2vKOLqTMYjT_3std3sys3pal4unix3cvtlECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1769 = distinct !{!1769, i1 true, !"_RNvCsgn1j6LDYpaP_5uu_cp9copy_fifo"}
!1770 = distinct !{!1770, !1769, !"_RNvCsgn1j6LDYpaP_5uu_cp9copy_fifo: argument 0"}
!1771 = distinct !{!1771, !1769, !"_RNvCsgn1j6LDYpaP_5uu_cp9copy_fifo: argument 1"}
!1772 = distinct !{!1772, i1 true, !"_RINvNtCs2vKOLqTMYjT_3std2fs8metadataRNtNtB4_4path4PathECsgn1j6LDYpaP_5uu_cp"}
!1773 = distinct !{!1773, !1772, !"_RINvNtCs2vKOLqTMYjT_3std2fs8metadataRNtNtB4_4path4PathECsgn1j6LDYpaP_5uu_cp: argument 1"}
!1774 = distinct !{!1774, !1772, !"_RINvNtCs2vKOLqTMYjT_3std2fs8metadataRNtNtB4_4path4PathECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1775 = distinct !{!1775, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgn1j6LDYpaP_5uu_cp"}
!1776 = distinct !{!1776, !1775, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1777 = distinct !{!1777, i1 true, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgn1j6LDYpaP_5uu_cp"}
!1778 = distinct !{!1778, !1777, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1779 = distinct !{!1779, i1 true, !"_RINvNtCsqsXNUdQJE7_3nix6unistd6mkfifoNtNtCs2vKOLqTMYjT_3std4path4PathECsgn1j6LDYpaP_5uu_cp"}
!1780 = distinct !{!1780, !1779, !"_RINvNtCsqsXNUdQJE7_3nix6unistd6mkfifoNtNtCs2vKOLqTMYjT_3std4path4PathECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1781 = distinct !{!1781, i1 true, !"_RINvXs2_CsqsXNUdQJE7_3nixNtNtCs2vKOLqTMYjT_3std4path4PathNtB6_7NixPath13with_nix_pathlNCINvNtB6_6unistd6mkfifoBn_E0ECsgn1j6LDYpaP_5uu_cp"}
!1782 = distinct !{!1782, !1781, !"_RINvXs2_CsqsXNUdQJE7_3nixNtNtCs2vKOLqTMYjT_3std4path4PathNtB6_7NixPath13with_nix_pathlNCINvNtB6_6unistd6mkfifoBn_E0ECsgn1j6LDYpaP_5uu_cp: argument 1"}
!1783 = distinct !{!1783, !1781, !"_RINvXs2_CsqsXNUdQJE7_3nixNtNtCs2vKOLqTMYjT_3std4path4PathNtB6_7NixPath13with_nix_pathlNCINvNtB6_6unistd6mkfifoBn_E0ECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1784 = distinct !{!1784, i1 true, !"_RINvXs1_CsqsXNUdQJE7_3nixShNtB6_7NixPath13with_nix_pathlNCINvNtB6_6unistd6mkfifoNtNtCs2vKOLqTMYjT_3std4path4PathE0ECsgn1j6LDYpaP_5uu_cp"}
!1785 = distinct !{!1785, !1784, !"_RINvXs1_CsqsXNUdQJE7_3nixShNtB6_7NixPath13with_nix_pathlNCINvNtB6_6unistd6mkfifoNtNtCs2vKOLqTMYjT_3std4path4PathE0ECsgn1j6LDYpaP_5uu_cp: argument 1"}
!1786 = distinct !{!1786, !1784, !"_RINvXs1_CsqsXNUdQJE7_3nixShNtB6_7NixPath13with_nix_pathlNCINvNtB6_6unistd6mkfifoNtNtCs2vKOLqTMYjT_3std4path4PathE0ECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1787 = distinct !{!1787, i1 true, !"_RNCNvCsgn1j6LDYpaP_5uu_cp9copy_fifo0B3_"}
!1788 = distinct !{!1788, !1787, !"_RNCNvCsgn1j6LDYpaP_5uu_cp9copy_fifo0B3_: argument 1"}
!1789 = distinct !{!1789, !1787, !"_RNCNvCsgn1j6LDYpaP_5uu_cp9copy_fifo0B3_: argument 0"}
!1790 = distinct !{!1790, i1 true, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgn1j6LDYpaP_5uu_cp"}
!1791 = distinct !{!1791, !1790, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgn1j6LDYpaP_5uu_cp: argument 1"}
!1792 = distinct !{!1792, !1790, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgn1j6LDYpaP_5uu_cp: argument 0"}
!1793 = distinct !{!1793, i1 true, !"_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl"}
!1794 = distinct !{!1794, !1793, !"_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl: argument 1"}
!1795 = distinct !{!1795, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp"}
!1796 = distinct !{!1796, !1795, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1797 = distinct !{!1797, i1 true, !"_RNvCsgn1j6LDYpaP_5uu_cp9copy_node"}
!1798 = distinct !{!1798, !1797, !"_RNvCsgn1j6LDYpaP_5uu_cp9copy_node: argument 0"}
!1799 = distinct !{!1799, !1797, !"_RNvCsgn1j6LDYpaP_5uu_cp9copy_node: argument 1"}
!1800 = distinct !{!1800, i1 true, !"_RINvNtCs2vKOLqTMYjT_3std2fs8metadataRNtNtB4_4path4PathECsgn1j6LDYpaP_5uu_cp"}
!1801 = distinct !{!1801, !1800, !"_RINvNtCs2vKOLqTMYjT_3std2fs8metadataRNtNtB4_4path4PathECsgn1j6LDYpaP_5uu_cp: argument 1"}
!1802 = distinct !{!1802, !1800, !"_RINvNtCs2vKOLqTMYjT_3std2fs8metadataRNtNtB4_4path4PathECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1803 = distinct !{!1803, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgn1j6LDYpaP_5uu_cp"}
!1804 = distinct !{!1804, !1803, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1805 = distinct !{!1805, i1 true, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgn1j6LDYpaP_5uu_cp"}
!1806 = distinct !{!1806, !1805, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1807 = distinct !{!1807, i1 true, !"_RINvNtNtCsqsXNUdQJE7_3nix3sys4stat5mknodNtNtCs2vKOLqTMYjT_3std4path4PathECsgn1j6LDYpaP_5uu_cp"}
!1808 = distinct !{!1808, !1807, !"_RINvNtNtCsqsXNUdQJE7_3nix3sys4stat5mknodNtNtCs2vKOLqTMYjT_3std4path4PathECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1809 = distinct !{!1809, i1 true, !"_RINvXs2_CsqsXNUdQJE7_3nixNtNtCs2vKOLqTMYjT_3std4path4PathNtB6_7NixPath13with_nix_pathlNCINvNtNtB6_3sys4stat5mknodBn_E0ECsgn1j6LDYpaP_5uu_cp"}
!1810 = distinct !{!1810, !1809, !"_RINvXs2_CsqsXNUdQJE7_3nixNtNtCs2vKOLqTMYjT_3std4path4PathNtB6_7NixPath13with_nix_pathlNCINvNtNtB6_3sys4stat5mknodBn_E0ECsgn1j6LDYpaP_5uu_cp: argument 1"}
!1811 = distinct !{!1811, !1809, !"_RINvXs2_CsqsXNUdQJE7_3nixNtNtCs2vKOLqTMYjT_3std4path4PathNtB6_7NixPath13with_nix_pathlNCINvNtNtB6_3sys4stat5mknodBn_E0ECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1812 = distinct !{!1812, i1 true, !"_RINvXs1_CsqsXNUdQJE7_3nixShNtB6_7NixPath13with_nix_pathlNCINvNtNtB6_3sys4stat5mknodNtNtCs2vKOLqTMYjT_3std4path4PathE0ECsgn1j6LDYpaP_5uu_cp"}
!1813 = distinct !{!1813, !1812, !"_RINvXs1_CsqsXNUdQJE7_3nixShNtB6_7NixPath13with_nix_pathlNCINvNtNtB6_3sys4stat5mknodNtNtCs2vKOLqTMYjT_3std4path4PathE0ECsgn1j6LDYpaP_5uu_cp: argument 1"}
!1814 = distinct !{!1814, !1812, !"_RINvXs1_CsqsXNUdQJE7_3nixShNtB6_7NixPath13with_nix_pathlNCINvNtNtB6_3sys4stat5mknodNtNtCs2vKOLqTMYjT_3std4path4PathE0ECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1815 = distinct !{!1815, i1 true, !"_RNCINvNtNtCsqsXNUdQJE7_3nix3sys4stat5mknodNtNtCs2vKOLqTMYjT_3std4path4PathE0Csgn1j6LDYpaP_5uu_cp"}
!1816 = distinct !{!1816, !1815, !"_RNCINvNtNtCsqsXNUdQJE7_3nix3sys4stat5mknodNtNtCs2vKOLqTMYjT_3std4path4PathE0Csgn1j6LDYpaP_5uu_cp: argument 1"}
!1817 = distinct !{!1817, !1815, !"_RNCINvNtNtCsqsXNUdQJE7_3nix3sys4stat5mknodNtNtCs2vKOLqTMYjT_3std4path4PathE0Csgn1j6LDYpaP_5uu_cp: argument 0"}
!1818 = distinct !{!1818, i1 true, !"_RNCNvCsgn1j6LDYpaP_5uu_cp9copy_node0B3_"}
!1819 = distinct !{!1819, !1818, !"_RNCNvCsgn1j6LDYpaP_5uu_cp9copy_node0B3_: argument 1"}
!1820 = distinct !{!1820, !1818, !"_RNCNvCsgn1j6LDYpaP_5uu_cp9copy_node0B3_: argument 0"}
!1821 = distinct !{!1821, i1 true, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgn1j6LDYpaP_5uu_cp"}
!1822 = distinct !{!1822, !1821, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgn1j6LDYpaP_5uu_cp: argument 1"}
!1823 = distinct !{!1823, !1821, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgn1j6LDYpaP_5uu_cp: argument 0"}
!1824 = distinct !{!1824, i1 true, !"_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl"}
!1825 = distinct !{!1825, !1824, !"_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl: argument 1"}
!1826 = distinct !{!1826, i1 true, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgn1j6LDYpaP_5uu_cp"}
!1827 = distinct !{!1827, !1826, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgn1j6LDYpaP_5uu_cp: argument 0"}
!1828 = distinct !{!1828, i1 true, !"_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl"}
!1829 = distinct !{!1829, !1828, !"_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl: argument 1"}
!1830 = distinct !{!1830, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp"}
!1831 = distinct !{!1831, !1830, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1832 = distinct !{!1832, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp"}
!1833 = distinct !{!1833, !1832, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp: argument 0"}
!1834 = distinct !{!1834, i1 true, !"_RNvNtNtCsgn1j6LDYpaP_5uu_cp8platform5linux13copy_on_write"}
!1835 = distinct !{!1835, !1834, !"_RNvNtNtCsgn1j6LDYpaP_5uu_cp8platform5linux13copy_on_write: argument 0"}
!1836 = distinct !{!1836, !1834, !"_RNvNtNtCsgn1j6LDYpaP_5uu_cp8platform5linux13copy_on_write: argument 3"}
!1837 = distinct !{!1837, !1834, !"_RNvNtNtCsgn1j6LDYpaP_5uu_cp8platform5linux13copy_on_write: argument 2"}
!1838 = distinct !{!1838, !1834, !"_RNvNtNtCsgn1j6LDYpaP_5uu_cp8platform5linux13copy_on_write: argument 1"}
end_hunk_1
