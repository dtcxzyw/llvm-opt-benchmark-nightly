inline.NumInlined: 474
inline.NumDeleted: 321
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECs5RPjO8Kzn89_6uu_tee:bb.a

bb.e:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs5RPjO8Kzn89_6uu_tee.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val2.i = load i64, ptr %i.l, align 8, !range !16, !alias.scope !25, !noundef !5 ; 2 uses
  %i.m = icmp sgt i64 %.val2.i, 0
  br i1 %i.m, label %bb.f, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs5RPjO8Kzn89_6uu_tee.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val3.i = load ptr, ptr %i.n, align 8, !alias.scope !25, !nonnull !5, !noundef !5
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !32
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs5RPjO8Kzn89_6uu_tee.exit

bb.g:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs5RPjO8Kzn89_6uu_tee.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4.i = load ptr, ptr %i.o, align 8, !alias.scope !25 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val5.i = load ptr, ptr %i.p, align 8, !alias.scope !25, !nonnull !5, !align !35, !noundef !5 ; 3 uses
  %i.q = load ptr, ptr %.val5.i, align 8, !invariant.load !5, !noalias !25 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  tail call void %i.q(ptr noundef nonnull %.val4.i) #21, !noalias !25, !inline_history !36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !6, !invariant.load !5, !noalias !25 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs5RPjO8Kzn89_6uu_tee.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !37, !invariant.load !5, !noalias !25
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.v) #20, !noalias !25
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs5RPjO8Kzn89_6uu_tee.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs5RPjO8Kzn89_6uu_tee.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs5RPjO8Kzn89_6uu_tee.exit, %bb.c, %bb.d, %bb.e, %bb.f, %bb.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i
  ret void
}

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
define void @_RINvNtCs6JMX4GRUq9U_4core9panicking13assert_failedINtNtB4_6result6ResultjNtNtNtNtCscC7ZI6NG8RX_6rustix7backend2io5errno5ErrnoEBM_ECs5RPjO8Kzn89_6uu_tee(i8 noundef range(i8 0, 3) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noundef %3, ptr %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noundef %3, ptr %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #22
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes10drain_pipeNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBU_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load i32, ptr %i.g, align 8, !range !4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 4 uses
  %.fr75 = freeze i32 %i.h
  %i.j = trunc i32 %.fr75 to i1                   ; 2 uses
  br i1 %i.j, label %.split.us, label %_RNvXs0_Cs5RPjO8Kzn89_6uu_teeNtB5_11NamedWriterNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned4AsFd5as_fd.exit

.split.us:                                        ; preds = %bb.a
  %i.k = load i32, ptr %i.i, align 4, !range !38
  %i.l = zext i32 %i.k to i64
  %i.m = inttoptr i64 %i.l to ptr
  br label %_RNvXs0_Cs5RPjO8Kzn89_6uu_teeNtB5_11NamedWriterNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned4AsFd5as_fd.exit.us

_RNvXs0_Cs5RPjO8Kzn89_6uu_teeNtB5_11NamedWriterNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned4AsFd5as_fd.exit.us: ; preds = %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit.us, %.split.us
  %.sroa.0.068.us = phi i64 [ %3, %.split.us ], [ %i.v, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit.us ] ; 3 uses
  %i.n = tail call noundef i32 @_RNvXsy_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeReaderNtB5_4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %1) #20
  %i.o = zext i32 %i.n to i64
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = inttoptr i64 %.sroa.0.068.us to ptr
  %i.r = tail call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},{r8},{r9},~{memory}"(ptr nonnull inttoptr (i64 275 to ptr), ptr %i.p, ptr null, ptr %i.m, ptr null, ptr nonnull %i.q, ptr null) #20, !noalias !39, !srcloc !42
  %i.s = extractvalue { ptr, i32, i32 } %i.r, 0   ; 3 uses
  %.not.i.i.us = icmp sgt ptr %i.s, inttoptr (i64 -4096 to ptr)
  %i.t = icmp slt ptr %i.s, null
  %.sroa.0.0.i.i.us = and i1 %.not.i.i.us, %i.t
  br i1 %.sroa.0.0.i.i.us, label %.split70.us, label %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit.us

_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit.us: ; preds = %_RNvXs0_Cs5RPjO8Kzn89_6uu_teeNtB5_11NamedWriterNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned4AsFd5as_fd.exit.us
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %.sroa.0.068.us, %i.u            ; 2 uses
  %.not.us = icmp eq i64 %i.v, 0
  br i1 %.not.us, label %.split74.us, label %_RNvXs0_Cs5RPjO8Kzn89_6uu_teeNtB5_11NamedWriterNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned4AsFd5as_fd.exit.us

.split74.us:                                      ; preds = %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit.us
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.w, align 1
  store i8 0, ptr %0, align 8
  br label %bb.b

_RNvXs0_Cs5RPjO8Kzn89_6uu_teeNtB5_11NamedWriterNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned4AsFd5as_fd.exit: ; preds = %bb.a, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit
  %.sroa.0.068 = phi i64 [ %i.ak, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit ], [ %3, %bb.a ] ; 3 uses
  %i.x = tail call noundef i32 @_RNvXsy_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeReaderNtB5_4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %1) #20
  %i.y = tail call noundef i32 @_RNvXs3_NtNtNtCs2vKOLqTMYjT_3std3sys2fd4unixNtB5_8FileDescNtNtNtNtBb_2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.i) #20
  %i.z = zext i32 %i.x to i64
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = zext i32 %i.y to i64
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = inttoptr i64 %.sroa.0.068 to ptr
  %i.ae = tail call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},{r8},{r9},~{memory}"(ptr nonnull inttoptr (i64 275 to ptr), ptr %i.aa, ptr null, ptr %i.ac, ptr null, ptr nonnull %i.ad, ptr null) #20, !noalias !39, !srcloc !42
  %i.af = extractvalue { ptr, i32, i32 } %i.ae, 0 ; 3 uses
  %.not.i.i = icmp sgt ptr %i.af, inttoptr (i64 -4096 to ptr)
  %i.ag = icmp slt ptr %i.af, null
  %.sroa.0.0.i.i = and i1 %.not.i.i, %i.ag
  br i1 %.sroa.0.0.i.i, label %.split70.us, label %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit

bb.b:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5RPjO8Kzn89_6uu_tee.exit, %.split74.us
  ret void

.split70.us:                                      ; preds = %_RNvXs0_Cs5RPjO8Kzn89_6uu_teeNtB5_11NamedWriterNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned4AsFd5as_fd.exit, %_RNvXs0_Cs5RPjO8Kzn89_6uu_teeNtB5_11NamedWriterNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned4AsFd5as_fd.exit.us
  %.us-phi72 = phi i64 [ %.sroa.0.068.us, %_RNvXs0_Cs5RPjO8Kzn89_6uu_teeNtB5_11NamedWriterNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned4AsFd5as_fd.exit.us ], [ %.sroa.0.068, %_RNvXs0_Cs5RPjO8Kzn89_6uu_teeNtB5_11NamedWriterNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned4AsFd5as_fd.exit ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.not.i = icmp slt i64 %.us-phi72, 0
  br i1 %.not.i, label %bb.c, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i, !prof !43

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %.split70.us
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !44
  %i.ah = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.us-phi72, i64 noundef range(i64 1, 9) 1) #20, !noalias !44 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.c, label %bb.d

_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit: ; preds = %_RNvXs0_Cs5RPjO8Kzn89_6uu_teeNtB5_11NamedWriterNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned4AsFd5as_fd.exit
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %.sroa.0.068, %i.aj             ; 2 uses
  %.not = icmp eq i64 %i.ak, 0
  br i1 %.not, label %.split74.us, label %_RNvXs0_Cs5RPjO8Kzn89_6uu_teeNtB5_11NamedWriterNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned4AsFd5as_fd.exit

bb.c:                                             ; preds = %.split70.us, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %.split70.us ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %.us-phi72) #23
  unreachable

bb.d:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  store i64 %.us-phi72, ptr %i.f, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr %i.ah, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  store i64 0, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %1, ptr %i.e, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.us-phi72, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 7 uses
  store i64 %.us-phi72, ptr %i.ao, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.ap = icmp samesign ult i64 %.us-phi72, 32
  br i1 %i.ap, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge88.i, %bb.d
  %.pre81.i = phi i64 [ %.pre81.pre.i, %._crit_edge88.i ], [ %.us-phi72, %bb.d ]
  %.pre.i = phi i64 [ %.pr.pre, %._crit_edge88.i ], [ 0, %bb.d ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.ay = call fastcc { i64, ptr } @_RINvNvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #20 ; 2 uses
  %i.az = extractvalue { i64, ptr } %i.ay, 0
  %i.ba = extractvalue { i64, ptr } %i.ay, 1      ; 2 uses
  %i.bb = trunc nuw i64 %i.az to i1
  br i1 %i.bb, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = icmp eq ptr %i.ba, null
  %.pr.pre = load i64, ptr %i.am, align 8         ; 2 uses
  br i1 %i.bc, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit.thread33, label %._crit_edge88.i

._crit_edge88.i:                                  ; preds = %bb.g
  %.pre81.pre.i = load i64, ptr %i.f, align 8, !range !6, !alias.scope !50, !noalias !47
  br label %bb.e

bb.h:                                             ; preds = %bb.w, %bb.e
  %i.bd = phi i64 [ %.pre81.i, %bb.e ], [ %i.bx, %bb.w ] ; 3 uses
  %i.be = phi i64 [ %.pre.i, %bb.e ], [ %i.dz, %bb.w ] ; 2 uses
  %.sroa.037.3.i = phi i64 [ 8192, %bb.e ], [ %.sroa.037.4.i, %bb.w ] ; 5 uses
  %i.bf = icmp eq i64 %i.be, %i.bd
  %i.bg = icmp eq i64 %i.bd, %.us-phi72
  %or.cond46.i = and i1 %i.bg, %i.bf
  br i1 %or.cond46.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i, %bb.h
  %i.bh = phi i64 [ %.pre83.i, %._crit_edge.i ], [ %i.bd, %bb.h ] ; 6 uses
  %i.bi = phi i64 [ %.pre82.i, %._crit_edge.i ], [ %i.be, %bb.h ] ; 7 uses
  %i.bj = icmp sgt i64 %i.bi, -1
  call void @llvm.assume(i1 %i.bj)
  %i.bk = icmp eq i64 %i.bi, %i.bh
  %.pre84.i = load ptr, ptr %i.al, align 8, !alias.scope !50, !noalias !47 ; 2 uses
  br i1 %i.bk, label %bb.m, label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.bl = call fastcc { i64, ptr } @_RINvNvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #20 ; 2 uses
  %i.bm = extractvalue { i64, ptr } %i.bl, 0
  %i.bn = extractvalue { i64, ptr } %i.bl, 1      ; 2 uses
  %i.bo = trunc nuw i64 %i.bm to i1
  br i1 %i.bo, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = icmp eq ptr %i.bn, null
  %.pre82.i = load i64, ptr %i.am, align 8        ; 3 uses
  br i1 %i.bp, label %bb.l, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.k
  %.pre83.i = load i64, ptr %i.f, align 8, !range !6, !alias.scope !50, !noalias !47
  br label %bb.i

bb.l:                                             ; preds = %bb.k
  %i.bq = icmp sgt i64 %.pre82.i, -1
  call void @llvm.assume(i1 %i.bq)
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit.thread33

bb.m:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.br = add nuw i64 %i.bh, 32
  %i.bs = shl nuw i64 %i.bh, 1
  %..i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.br, i64 range(i64 0, -1) %i.bs) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !58
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, i64 %i.bh, ptr %.pre84.i, i64 noundef %..i.i.i.i, i64 noundef 1, i64 noundef 1) #20, !noalias !59
  %i.bt = load i64, ptr %i.c, align 8, !range !60, !noalias !58, !noundef !5
  %i.bu = trunc nuw i64 %i.bt to i1
  br i1 %i.bu, label %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5RPjO8Kzn89_6uu_tee.exit.i, label %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5RPjO8Kzn89_6uu_tee.exit.thread.i

_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5RPjO8Kzn89_6uu_tee.exit.thread.i: ; preds = %bb.m
  %i.bv = load ptr, ptr %i.aq, align 8, !noalias !58, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !58
  store ptr %i.bv, ptr %i.al, align 8, !alias.scope !59, !noalias !47
  %i.bw = icmp sgt i64 %..i.i.i.i, -1
  call void @llvm.assume(i1 %i.bw)
  store i64 %..i.i.i.i, ptr %i.f, align 8, !alias.scope !59, !noalias !47
  %.pre.i.i = sub nuw nsw i64 %..i.i.i.i, %i.bh
  %4 = icmp samesign ugt i64 %.pre.i.i, 31
  call void @llvm.assume(i1 %4)
  br label %bb.n

_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5RPjO8Kzn89_6uu_tee.exit.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !58
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit.thread

bb.n:                                             ; preds = %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5RPjO8Kzn89_6uu_tee.exit.thread.i, %bb.i
  %i.bx = phi i64 [ %i.bh, %bb.i ], [ %..i.i.i.i, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5RPjO8Kzn89_6uu_tee.exit.thread.i ] ; 2 uses
  %i.by = phi ptr [ %.pre84.i, %bb.i ], [ %i.bv, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5RPjO8Kzn89_6uu_tee.exit.thread.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bi
  %i.ca = sub nsw i64 %i.bx, %i.bi                ; 2 uses
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.037.3.i, i64 %i.ca) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !61
  store ptr %i.bz, ptr %i.d, align 8, !noalias !61
  store i64 %..i.i, ptr %i.ar, align 8, !noalias !61
  store i64 0, ptr %i.as, align 8, !noalias !61
  store i8 0, ptr %i.at, align 8, !noalias !61
  %i.cb = load i64, ptr %i.ao, align 8, !alias.scope !62, !noalias !65, !noundef !5 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.thread.thread.i, label %.lr.ph.i

_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.thread.thread.i: ; preds = %bb.n
  store i64 %i.bi, ptr %i.am, align 8, !alias.scope !50, !noalias !47
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit.thread37

.lr.ph.i:                                         ; preds = %bb.n, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i
  %i.cd = phi i64 [ %i.dx, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i ], [ %i.cb, %bb.n ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.ce = load i64, ptr %i.ar, align 8, !alias.scope !69, !noalias !71, !noundef !5
  %i.cf = load i64, ptr %i.as, align 8, !alias.scope !69, !noalias !71, !noundef !5 ; 4 uses
  %i.cg = sub i64 %i.ce, %i.cf                    ; 2 uses
  %i.ch = icmp ult i64 %i.cd, %i.cg
  br i1 %i.ch, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  %i.ci = call noundef ptr @_RNvXs4_NtNtCs2vKOLqTMYjT_3std2io4pipeRNtB5_10PipeReaderNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #20, !noalias !50
  %i.cj = load i64, ptr %i.as, align 8, !alias.scope !69, !noalias !71, !noundef !5 ; 2 uses
  %.neg.i.i = sub i64 %i.cf, %i.cj
  %i.ck = load i64, ptr %i.ao, align 8, !alias.scope !72, !noalias !73, !noundef !5
  %i.cl = add i64 %.neg.i.i, %i.ck
  store i64 %i.cl, ptr %i.ao, align 8, !alias.scope !72, !noalias !73
  br label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.i

bb.p:                                             ; preds = %.lr.ph.i
  %i.cm = load i8, ptr %i.at, align 8, !range !74, !alias.scope !69, !noalias !71, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !75
  %i.cn = load ptr, ptr %i.d, align 8, !alias.scope !69, !noalias !71, !nonnull !5, !noundef !5
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cf ; 2 uses
  %i.cp = trunc nuw i8 %i.cm to i1
  store ptr %i.co, ptr %i.b, align 8, !noalias !75
  store i64 %i.cd, ptr %i.au, align 8, !noalias !75
  store i64 0, ptr %i.av, align 8, !noalias !75
  store i8 0, ptr %i.aw, align 8, !noalias !75
  br i1 %i.cp, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cq = call noundef ptr @_RNvXs4_NtNtCs2vKOLqTMYjT_3std2io4pipeRNtB5_10PipeReaderNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #20, !noalias !73 ; 2 uses
  %i.cr = load i8, ptr %i.aw, align 8, !range !74, !noalias !75, !noundef !5
  %i.cs = trunc nuw i8 %i.cr to i1
  %i.ct = load i64, ptr %i.av, align 8, !noalias !75, !noundef !5 ; 2 uses
  br i1 %i.cs, label %_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCs5RPjO8Kzn89_6uu_tee.exit.i.i, label %bb.s

bb.r:                                             ; preds = %bb.p
  store i8 1, ptr %i.aw, align 8, !noalias !75
  %i.cu = call noundef ptr @_RNvXs4_NtNtCs2vKOLqTMYjT_3std2io4pipeRNtB5_10PipeReaderNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #20, !noalias !73
  %i.cv = load i64, ptr %i.av, align 8, !noalias !75, !noundef !5
  br label %bb.s

bb.s:                                             ; preds = %_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCs5RPjO8Kzn89_6uu_tee.exit.i.i, %bb.r, %bb.q
  %.sroa.09.0.i.i = phi i64 [ %i.cv, %bb.r ], [ %i.ct, %_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCs5RPjO8Kzn89_6uu_tee.exit.i.i ], [ %i.ct, %bb.q ] ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.cu, %bb.r ], [ %i.cq, %_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCs5RPjO8Kzn89_6uu_tee.exit.i.i ], [ %i.cq, %bb.q ]
  %i.cw = add i64 %.sroa.09.0.i.i, %i.cf          ; 2 uses
  store i64 %i.cw, ptr %i.as, align 8, !alias.scope !69, !noalias !71
  %i.cx = load i64, ptr %i.ao, align 8, !alias.scope !72, !noalias !73, !noundef !5
  %i.cy = sub i64 %i.cx, %.sroa.09.0.i.i
  store i64 %i.cy, ptr %i.ao, align 8, !alias.scope !72, !noalias !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !75
  br label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.i

_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCs5RPjO8Kzn89_6uu_tee.exit.i.i: ; preds = %bb.q
  %i.cz = sub nuw i64 %i.cg, %i.cd
  %i.da = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cd
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.da, i8 0, i64 range(i64 0, -9223372036854775808) %i.cz, i1 false), !alias.scope !76, !noalias !81
  store i8 1, ptr %i.at, align 8, !alias.scope !69, !noalias !71
  br label %bb.s

_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.i: ; preds = %bb.s, %bb.o
  %i.db = phi i64 [ %i.cj, %bb.o ], [ %i.cw, %bb.s ]
  %.sroa.0.0.i48.i = phi ptr [ %i.ci, %bb.o ], [ %.sroa.01.0.i.i, %bb.s ] ; 7 uses
  %i.dc = ptrtoint ptr %.sroa.0.0.i48.i to i64    ; 4 uses
  %.not45.i = icmp eq ptr %.sroa.0.0.i48.i, null
  br i1 %.not45.i, label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.i
  %i.dd = and i64 %i.dc, 3
  switch i64 %i.dd, label %default.unreachable [
    i64 2, label %.split.i
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
    i64 0, label %.split58.i
    i64 1, label %.split57.i
  ], !prof !83

default.unreachable:                              ; preds = %bb.t
  unreachable

.split.i:                                         ; preds = %bb.t
  %i.de = lshr i64 %i.dc, 32
  %i.df = trunc nuw i64 %i.de to i32
  %i.dg = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #20, !noalias !50
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !50, !nonnull !5, !noundef !5
  %i.dj = call noundef zeroext i1 %i.di(i32 noundef %i.df) #20, !noalias !50, !inline_history !84
  br i1 %i.dj, label %.thread61.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit

.split58.i:                                       ; preds = %bb.t
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i48.i, i64 16
  %i.dl = load i8, ptr %i.dk, align 8, !range !85, !noalias !50, !noundef !5
  %i.dm = icmp eq i8 %i.dl, 35
  br i1 %i.dm, label %.thread61.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit

.split57.i:                                       ; preds = %bb.t
  %i.dn = getelementptr i8, ptr %.sroa.0.0.i48.i, i64 31
  %i.do = load i8, ptr %i.dn, align 8, !range !85, !noalias !50, !noundef !5
  %i.dp = icmp eq i8 %i.do, 35
  br i1 %i.dp, label %bb.v, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i: ; preds = %bb.t
  %i.dq = lshr i64 %i.dc, 32
  %i.dr = icmp ult ptr %.sroa.0.0.i48.i, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i = trunc i64 %i.dq to i8
  %spec.select.i.i.i.i = select i1 %i.dr, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.ds = icmp ne i8 %spec.select.i.i.i.i, -1
  call void @llvm.assume(i1 %i.ds)
  %i.dt = icmp eq i8 %spec.select.i.i.i.i, 35
  br i1 %i.dt, label %bb.u, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit

.thread61.i:                                      ; preds = %.split58.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i

bb.u:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61
  %i.du = and i64 %i.dc, 1095216660480
  %i.dv = icmp ne i64 %i.du, 1095216660480
  call void @llvm.assume(i1 %i.dr)
  call void @llvm.assume(i1 %i.dv)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i

bb.v:                                             ; preds = %.split57.i
  %i.dw = getelementptr i8, ptr %.sroa.0.0.i48.i, i64 -1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dw) ]
  store ptr %i.dw, ptr %i.ax, align 8, !alias.scope !86, !noalias !61
  store i8 3, ptr %i.a, align 8, !alias.scope !86, !noalias !61
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ax) #20, !noalias !50
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i: ; preds = %bb.v, %bb.u, %.thread61.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !61
  %i.dx = load i64, ptr %i.ao, align 8, !alias.scope !89, !noalias !91, !noundef !5 ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit._RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.thread.loopexit_crit_edge.i, label %.lr.ph.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit._RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.thread.loopexit_crit_edge.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i
  %.pre86.pre.i = load i64, ptr %i.as, align 8, !noalias !61
  br label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.thread.i

_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.thread.i: ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit._RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.thread.loopexit_crit_edge.i
  %.pre86.i = phi i64 [ %.pre86.pre.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit._RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.thread.loopexit_crit_edge.i ], [ %i.db, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.i ] ; 3 uses
  %.pre87.i = load i8, ptr %i.at, align 8, !range !74, !noalias !61
  %i.dz = add i64 %.pre86.i, %i.bi                ; 3 uses
  store i64 %i.dz, ptr %i.am, align 8, !alias.scope !50, !noalias !47
  %i.ea = icmp eq i64 %.pre86.i, 0
  br i1 %i.ea, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit.thread37, label %bb.x

bb.w:                                             ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %.sroa.037.4.i = phi i64 [ -1, %bb.aa ], [ %i.ee, %bb.z ], [ %.sroa.037.3.i, %bb.y ], [ -1, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !61
  br label %bb.h

bb.x:                                             ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.thread.i
  %i.eb = trunc nuw i8 %.pre87.i to i1
  br i1 %i.eb, label %bb.y, label %bb.w

bb.y:                                             ; preds = %bb.x
  %i.ec = icmp uge i64 %i.ca, %.sroa.037.3.i
  %i.ed = icmp eq i64 %.pre86.i, %..i.i
  %or.cond.i = and i1 %i.ec, %i.ed
  br i1 %or.cond.i, label %bb.z, label %bb.w

bb.z:                                             ; preds = %bb.y
  %i.ee = shl nuw i64 %.sroa.037.3.i, 1
  %i.ef = icmp slt i64 %.sroa.037.3.i, 0
  br i1 %i.ef, label %bb.aa, label %bb.w, !prof !93

bb.aa:                                            ; preds = %bb.z
  br label %bb.w

_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit.thread37: ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.thread.i, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.thread.thread.i
end_hunk_0
begin_hunk_1_@_RNvCs5RPjO8Kzn89_6uu_tee3tee:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %.val.i110.i = load i64, ptr %i.l, align 8, !range !6, !alias.scope !314, !noalias !224, !noundef !5 ; 2 uses
  %i.ks = icmp eq i64 %.val.i110.i, 0
  br i1 %i.ks, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit.i, label %bb.bq

bb.bq:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5RPjO8Kzn89_6uu_tee.exit.thread300.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kl, i64 noundef %.val.i110.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !314
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit.i: ; preds = %bb.bq, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5RPjO8Kzn89_6uu_tee.exit.thread300.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !224
  switch i64 %i.kn, label %thread-pre-split.i.i [
    i64 0, label %.loopexit.i
    i64 1, label %bb.br
  ]

bb.br:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit.i
  %i.kt = load i8, ptr %i.kr, align 1, !alias.scope !317, !noalias !320, !noundef !5 ; 2 uses
  switch i8 %i.kt, label %bb.bs [
    i8 43, label %.loopexit.i
    i8 45, label %.loopexit.i
  ]

thread-pre-split.i.i:                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit.i
  %.pr.i.i = load i8, ptr %i.kr, align 1, !alias.scope !317, !noalias !320
  br label %bb.bs

bb.bs:                                            ; preds = %thread-pre-split.i.i, %bb.br
  %i.ku = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.kt, %bb.br ]
  switch i8 %i.ku, label %bb.bz [
    i8 43, label %bb.bt
    i8 45, label %bb.bu
  ]

bb.bt:                                            ; preds = %bb.bs
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kr, i64 1
  %i.kw = add nsw i64 %i.kn, -1
  br label %bb.bz

bb.bu:                                            ; preds = %bb.bs
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kr, i64 1 ; 2 uses
  %i.ky = add nsw i64 %i.kn, -1                   ; 3 uses
  %i.kz = icmp samesign ult i64 %i.kn, 17
  br i1 %i.kz, label %.preheader114.i.i, label %.lr.ph.i.i

.preheader114.i.i:                                ; preds = %bb.bu
  %.not103137.i.i = icmp eq i64 %i.ky, 0
  br i1 %.not103137.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph141.i.i

.lr.ph.i.i:                                       ; preds = %bb.bu, %bb.bx
  %.sroa.0.1136.i.i = phi ptr [ %i.la, %bb.bx ], [ %i.kx, %bb.bu ] ; 2 uses
  %.sroa.26.1135.i.i = phi i64 [ %i.lb, %bb.bx ], [ %i.ky, %bb.bu ]
  %.sroa.084.0134.i.i = phi i64 [ %i.lm, %bb.bx ], [ 0, %bb.bu ]
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i, i64 1
  %i.lb = add nsw i64 %.sroa.26.1135.i.i, -1      ; 2 uses
  %i.lc = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i, i64 10) ; 2 uses
  %i.ld = extractvalue { i64, i1 } %i.lc, 0
  %i.le = extractvalue { i64, i1 } %i.lc, 1
  br i1 %i.le, label %.loopexit.i, label %bb.bv, !prof !93

bb.bv:                                            ; preds = %.lr.ph.i.i
  %i.lf = load i8, ptr %.sroa.0.1136.i.i, align 1, !alias.scope !317, !noalias !320, !noundef !5
  %i.lg = zext i8 %i.lf to i32
  %i.lh = add nsw i32 %i.lg, -48                  ; 2 uses
  %i.li = icmp ult i32 %i.lh, 10
  br i1 %i.li, label %bb.bw, label %.loopexit.i

bb.bw:                                            ; preds = %bb.bv
  %i.lj = zext nneg i32 %i.lh to i64
  %i.lk = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ld, i64 %i.lj) ; 2 uses
  %i.ll = extractvalue { i64, i1 } %i.lk, 1
  br i1 %i.ll, label %.loopexit.i, label %bb.bx, !prof !93

bb.bx:                                            ; preds = %bb.bw
  %i.lm = extractvalue { i64, i1 } %i.lk, 0       ; 2 uses
  %.not102.i.i = icmp eq i64 %i.lb, 0
  br i1 %.not102.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph.i.i

.lr.ph141.i.i:                                    ; preds = %.preheader114.i.i, %bb.by
  %.sroa.0.2140.i.i = phi ptr [ %i.lt, %bb.by ], [ %i.kx, %.preheader114.i.i ] ; 2 uses
  %.sroa.26.2139.i.i = phi i64 [ %i.ls, %bb.by ], [ %i.ky, %.preheader114.i.i ]
  %.sroa.084.2138.i.i = phi i64 [ %i.lv, %bb.by ], [ 0, %.preheader114.i.i ]
  %i.ln = load i8, ptr %.sroa.0.2140.i.i, align 1, !alias.scope !317, !noalias !320, !noundef !5
  %i.lo = zext i8 %i.ln to i32
  %i.lp = add nsw i32 %i.lo, -48                  ; 2 uses
  %i.lq = icmp ult i32 %i.lp, 10
  br i1 %i.lq, label %bb.by, label %.loopexit.i

bb.by:                                            ; preds = %.lr.ph141.i.i
  %i.lr = mul i64 %.sroa.084.2138.i.i, 10
  %i.ls = add nsw i64 %.sroa.26.2139.i.i, -1      ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i.i, i64 1
  %i.lu = zext nneg i32 %i.lp to i64
  %i.lv = sub i64 %i.lr, %i.lu                    ; 2 uses
  %.not103.i.i = icmp eq i64 %i.ls, 0
  br i1 %.not103.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph141.i.i

bb.bz:                                            ; preds = %bb.bt, %bb.bs
  %.sroa.26.0.i.i = phi i64 [ %i.kw, %bb.bt ], [ %i.kn, %bb.bs ] ; 4 uses
  %.sroa.0.0.i113.i = phi ptr [ %i.kv, %bb.bt ], [ %i.kr, %bb.bs ] ; 2 uses
  %i.lw = icmp samesign ult i64 %.sroa.26.0.i.i, 16
  br i1 %i.lw, label %.preheader.i.i, label %.preheader111.i.i

.preheader.i.i:                                   ; preds = %bb.bz
  %.not105146.i.i = icmp eq i64 %.sroa.26.0.i.i, 0
  br i1 %.not105146.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph150.i.i

.preheader111.i.i:                                ; preds = %bb.bz, %bb.cc
  %.sroa.0.3145.i.i = phi ptr [ %i.lx, %bb.cc ], [ %.sroa.0.0.i113.i, %bb.bz ] ; 2 uses
  %.sroa.26.3144.i.i = phi i64 [ %i.ly, %bb.cc ], [ %.sroa.26.0.i.i, %bb.bz ]
  %.sroa.084.3143.i.i = phi i64 [ %i.mj, %bb.cc ], [ 0, %bb.bz ]
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i.i, i64 1
  %i.ly = add nsw i64 %.sroa.26.3144.i.i, -1      ; 2 uses
  %i.lz = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i.i, i64 10) ; 2 uses
  %i.ma = extractvalue { i64, i1 } %i.lz, 0
  %i.mb = extractvalue { i64, i1 } %i.lz, 1
  br i1 %i.mb, label %.loopexit.i, label %bb.ca, !prof !93

bb.ca:                                            ; preds = %.preheader111.i.i
  %i.mc = load i8, ptr %.sroa.0.3145.i.i, align 1, !alias.scope !317, !noalias !320, !noundef !5
  %i.md = zext i8 %i.mc to i32
  %i.me = add nsw i32 %i.md, -48                  ; 2 uses
  %i.mf = icmp ult i32 %i.me, 10
  br i1 %i.mf, label %bb.cb, label %.loopexit.i

bb.cb:                                            ; preds = %bb.ca
  %i.mg = zext nneg i32 %i.me to i64
  %i.mh = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ma, i64 %i.mg) ; 2 uses
  %i.mi = extractvalue { i64, i1 } %i.mh, 1
  br i1 %i.mi, label %.loopexit.i, label %bb.cc, !prof !93

bb.cc:                                            ; preds = %bb.cb
  %i.mj = extractvalue { i64, i1 } %i.mh, 0       ; 2 uses
  %.not104.i.i = icmp eq i64 %i.ly, 0
  br i1 %.not104.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.preheader111.i.i

.lr.ph150.i.i:                                    ; preds = %.preheader.i.i, %bb.cd
  %.sroa.0.4149.i.i = phi ptr [ %i.mq, %bb.cd ], [ %.sroa.0.0.i113.i, %.preheader.i.i ] ; 2 uses
  %.sroa.26.4148.i.i = phi i64 [ %i.mp, %bb.cd ], [ %.sroa.26.0.i.i, %.preheader.i.i ]
  %.sroa.084.4147.i.i = phi i64 [ %i.ms, %bb.cd ], [ 0, %.preheader.i.i ]
  %i.mk = load i8, ptr %.sroa.0.4149.i.i, align 1, !alias.scope !317, !noalias !320, !noundef !5
  %i.ml = zext i8 %i.mk to i32
  %i.mm = add nsw i32 %i.ml, -48                  ; 2 uses
  %i.mn = icmp ult i32 %i.mm, 10
  br i1 %i.mn, label %bb.cd, label %.loopexit.i

bb.cd:                                            ; preds = %.lr.ph150.i.i
  %i.mo = mul i64 %.sroa.084.4147.i.i, 10
  %i.mp = add nsw i64 %.sroa.26.4148.i.i, -1      ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i, i64 1
  %i.mr = zext nneg i32 %i.mm to i64
  %i.ms = add i64 %i.mo, %i.mr                    ; 2 uses
  %.not105.i.i = icmp eq i64 %i.mp, 0
  br i1 %.not105.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph150.i.i

bb.ce:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kp, ptr nonnull align 1 %i.kl, i64 %i.kn, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5RPjO8Kzn89_6uu_tee.exit.thread300.i

.loopexit.i:                                      ; preds = %bb.bw, %bb.bv, %.lr.ph.i.i, %.lr.ph141.i.i, %bb.cb, %bb.ca, %.preheader111.i.i, %.lr.ph150.i.i, %bb.br, %bb.br, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !224
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kr, i64 noundef %i.kn) #25
  %i.mt = load i8, ptr %i.k, align 8, !range !74, !noalias !224, !noundef !5
  %i.mu = trunc nuw i8 %i.mt to i1
  br i1 %i.mu, label %bb.cn, label %bb.cw

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i: ; preds = %bb.bx, %bb.by, %bb.cc, %bb.cd, %.preheader.i.i, %.preheader114.i.i
  %.sroa.15250.0.i = phi i64 [ %i.ms, %bb.cd ], [ %i.lv, %bb.by ], [ %i.mj, %bb.cc ], [ 0, %.preheader.i.i ], [ 0, %.preheader114.i.i ], [ %i.lm, %bb.bx ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.mv = load ptr, ptr %.sroa.410.0..sroa_idx.i, align 8, !alias.scope !322, !noalias !224, !nonnull !5, !noundef !5 ; 3 uses
  %i.mw = load i64, ptr %.sroa.511.0..sroa_idx.i, align 8, !alias.scope !322, !noalias !224, !noundef !5 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !325)
  call void @llvm.experimental.noalias.scope.decl(metadata !328)
  switch i64 %i.mw, label %.lr.ph.i.i.i.i11 [
    i64 0, label %.thread.i.i
    i64 1, label %._crit_edge.i.i.i.i
  ]

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i11, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i
  %.sroa.05.0.lcssa.i.i.i.i = phi i64 [ 0, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i ], [ %i.nm, %.lr.ph.i.i.i.i11 ] ; 4 uses
  %i.mx = getelementptr inbounds nuw [144 x i8], ptr %i.mv, i64 %.sroa.05.0.lcssa.i.i.i.i ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !331)
  call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %.sroa.0.0.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mx, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i.i.i, align 8, !alias.scope !337, !noalias !338, !nonnull !5, !noundef !5
  %.sroa.3.0.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mx, i64 16 ; 2 uses
  %.sroa.3.0.i.i.i.i.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i.i.i.i.i, align 8, !alias.scope !337, !noalias !338, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i.i.i, i64 5)
  %i.my = call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i.i.i.i, ptr nonnull readonly @14, i64 %spec.store.select.i.i.i.i.i.i.i.i), !alias.scope !341, !noalias !345 ; 2 uses
  %i.mz = sext i32 %i.my to i64
  %i.na = icmp eq i32 %i.my, 0
  %i.nb = add i64 %.sroa.3.0.i.i.i.i.i.i.i, -5
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.na, i64 %i.nb, i64 %i.mz ; 2 uses
  %i.nc = icmp eq i64 %spec.select.i.i.i.i.i.i.i.i, 0
  br i1 %i.nc, label %bb.cj, label %bb.cf

.lr.ph.i.i.i.i11:                                 ; preds = %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, %.lr.ph.i.i.i.i11
  %.sroa.01.025.i.i.i.i = phi i64 [ %i.nn, %.lr.ph.i.i.i.i11 ], [ %i.mw, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i ] ; 2 uses
  %.sroa.05.024.i.i.i.i = phi i64 [ %i.nm, %.lr.ph.i.i.i.i11 ], [ 0, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i ] ; 2 uses
  %i.nd = lshr i64 %.sroa.01.025.i.i.i.i, 1       ; 2 uses
  %i.ne = add nuw nsw i64 %i.nd, %.sroa.05.024.i.i.i.i ; 3 uses
  %i.nf = icmp ult i64 %i.ne, %i.mw
  call void @llvm.assume(i1 %i.nf)
  %i.ng = getelementptr inbounds nuw [144 x i8], ptr %i.mv, i64 %i.ne ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !346)
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %.sroa.0.0.in.i.i.i14.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %.sroa.0.0.i.i.i15.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i14.i.i.i.i, align 8, !alias.scope !352, !noalias !353, !nonnull !5, !noundef !5
  %.sroa.3.0.in.i.i.i16.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %.sroa.3.0.i.i.i17.i.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i16.i.i.i.i, align 8, !alias.scope !352, !noalias !353, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i22.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i17.i.i.i.i, i64 5)
  %i.nh = call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i15.i.i.i.i, ptr nonnull readonly @14, i64 %spec.store.select.i.i.i.i22.i.i.i.i), !alias.scope !355, !noalias !359 ; 2 uses
  %i.ni = sext i32 %i.nh to i64
  %i.nj = icmp eq i32 %i.nh, 0
  %i.nk = add i64 %.sroa.3.0.i.i.i17.i.i.i.i, -5
  %spec.select.i.i.i.i23.i.i.i.i = select i1 %i.nj, i64 %i.nk, i64 %i.ni
  %i.nl = icmp sgt i64 %spec.select.i.i.i.i23.i.i.i.i, 0
  %i.nm = select i1 %i.nl, i64 %.sroa.05.024.i.i.i.i, i64 %i.ne, !unpredictable !5 ; 2 uses
  %i.nn = sub nuw nsw i64 %.sroa.01.025.i.i.i.i, %i.nd ; 2 uses
  %i.no = icmp ugt i64 %i.nn, 1
  br i1 %i.no, label %.lr.ph.i.i.i.i11, label %._crit_edge.i.i.i.i

bb.cf:                                            ; preds = %._crit_edge.i.i.i.i
  %spec.select.i.i.i.i.lobit.i.i.i.i = lshr i64 %spec.select.i.i.i.i.i.i.i.i, 63
  %i.np = add nuw nsw i64 %spec.select.i.i.i.i.lobit.i.i.i.i, %.sroa.05.0.lcssa.i.i.i.i ; 2 uses
  %i.nq = icmp ule i64 %i.np, %i.mw
  call void @llvm.assume(i1 %i.nq)
  %i.nr = icmp ult i64 %i.mw, 64051194700380388
  call void @llvm.assume(i1 %i.nr)
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.cf, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i
  %.sroa.4.0.i.i.ph47.i.i = phi i64 [ %i.np, %bb.cf ], [ %i.mw, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i ] ; 3 uses
  %i.ns = sitofp i64 %.sroa.15250.0.i to double
  %i.nt = load i64, ptr %i.m, align 8, !range !6, !alias.scope !360, !noalias !363, !noundef !5
  %i.nu = icmp eq i64 %i.mw, %i.nt
  br i1 %i.nu, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.thread.i.i
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #25, !noalias !365
  %.pre.i.i = load ptr, ptr %.sroa.410.0..sroa_idx.i, align 8, !alias.scope !360, !noalias !363
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.thread.i.i
  %i.nv = phi ptr [ %.pre.i.i, %bb.cg ], [ %i.mv, %.thread.i.i ]
  %i.nw = getelementptr inbounds nuw [144 x i8], ptr %i.nv, i64 %.sroa.4.0.i.i.ph47.i.i ; 13 uses
  %i.nx = icmp samesign ult i64 %.sroa.4.0.i.i.ph47.i.i, %i.mw
  br i1 %i.nx, label %bb.ci, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5RPjO8Kzn89_6uu_tee.exit.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 144
  %i.nz = sub nuw nsw i64 %i.mw, %.sroa.4.0.i.i.ph47.i.i
  %i.oa = mul nuw nsw i64 %i.nz, 144
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ny, ptr nonnull align 8 %i.nw, i64 %i.oa, i1 false), !noalias !365
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5RPjO8Kzn89_6uu_tee.exit.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5RPjO8Kzn89_6uu_tee.exit.i.i: ; preds = %bb.ci, %bb.ch
  store i64 -1, ptr %i.nw, align 8
  %.sroa.027.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  store ptr @14, ptr %.sroa.027.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.027.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  store i64 5, ptr %.sroa.027.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.428.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nw, i64 24
  store i64 0, ptr %.sroa.428.0..sroa_idx.i.i, align 8
  %.sroa.630.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nw, i64 40
  store i64 0, ptr %.sroa.630.0..sroa_idx.i.i, align 8
  %.sroa.832.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nw, i64 56
  store i64 0, ptr %.sroa.832.0..sroa_idx.i.i, align 8
  %.sroa.1034.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nw, i64 72
  store i64 0, ptr %.sroa.1034.0..sroa_idx.i.i, align 8
  %.sroa.1236.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nw, i64 88
  store i64 0, ptr %.sroa.1236.0..sroa_idx.i.i, align 8
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nw, i64 104
  store i64 -1, ptr %.sroa.14.0..sroa_idx.i.i, align 8
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nw, i64 128
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.16.0..sroa_idx.i.i, align 8
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nw, i64 136
  store double %i.ns, ptr %.sroa.21.0..sroa_idx.i.i, align 8
  %i.ob = add nuw nsw i64 %i.mw, 1
  store i64 %i.ob, ptr %.sroa.511.0..sroa_idx.i, align 8, !alias.scope !360, !noalias !363
  br label %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs5RPjO8Kzn89_6uu_tee.exit.i

bb.cj:                                            ; preds = %._crit_edge.i.i.i.i
  %i.oc = icmp ult i64 %.sroa.05.0.lcssa.i.i.i.i, %i.mw
  br i1 %i.oc, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.od = sitofp i64 %.sroa.15250.0.i to double
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef align 8 dereferenceable(144) %i.mx) #20, !noalias !322
  store i64 -1, ptr %i.mx, align 8, !noalias !322
  store ptr @14, ptr %.sroa.0.0.in.i.i.i.i.i.i.i, align 8, !noalias !322
  store i64 5, ptr %.sroa.3.0.in.i.i.i.i.i.i.i, align 8, !noalias !322
  %i.oe = getelementptr inbounds nuw i8, ptr %i.mx, i64 24
  store i64 0, ptr %i.oe, align 8, !noalias !322
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mx, i64 40
  store i64 0, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !322
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mx, i64 56
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !322
  %.sroa.64.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mx, i64 72
  store i64 0, ptr %.sroa.64.0..sroa_idx.i.i, align 8, !noalias !322
  %.sroa.75.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mx, i64 88
  store i64 0, ptr %.sroa.75.0..sroa_idx.i.i, align 8, !noalias !322
  %.sroa.86.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mx, i64 104
  store i64 -1, ptr %.sroa.86.0..sroa_idx.i.i, align 8, !noalias !322
  %.sroa.97.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mx, i64 128
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.97.0..sroa_idx.i.i, align 8, !noalias !322
  %.sroa.138.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mx, i64 136
  store double %i.od, ptr %.sroa.138.0..sroa_idx.i.i, align 8, !noalias !322
  br label %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs5RPjO8Kzn89_6uu_tee.exit.i

bb.cl:                                            ; preds = %bb.cj
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i.i.i, i64 noundef %i.mw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22, !noalias !322
  unreachable

_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs5RPjO8Kzn89_6uu_tee.exit.i: ; preds = %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs5RPjO8Kzn89_6uu_tee.exit.i, %bb.ck, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5RPjO8Kzn89_6uu_tee.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !224
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 15, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !224
  br i1 %i.ko, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit116.i, label %bb.cm

bb.cm:                                            ; preds = %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs5RPjO8Kzn89_6uu_tee.exit.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kr, i64 noundef %i.kn, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !366
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit116.i

bb.cn:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !224
  call void @llvm.experimental.noalias.scope.decl(metadata !369)
  %i.of = load ptr, ptr %.sroa.410.0..sroa_idx.i, align 8, !alias.scope !369, !noalias !372, !nonnull !5, !noundef !5 ; 3 uses
  %i.og = load i64, ptr %.sroa.511.0..sroa_idx.i, align 8, !alias.scope !369, !noalias !372, !noundef !5 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  call void @llvm.experimental.noalias.scope.decl(metadata !377)
  switch i64 %i.og, label %.lr.ph.i.i.i130.i [
    i64 0, label %bb.cp
    i64 1, label %._crit_edge.i.i.i117.i
  ]

._crit_edge.i.i.i117.i:                           ; preds = %.lr.ph.i.i.i130.i, %bb.cn
  %.sroa.05.0.lcssa.i.i.i118.i = phi i64 [ 0, %bb.cn ], [ %i.ow, %.lr.ph.i.i.i130.i ] ; 4 uses
  %i.oh = getelementptr inbounds nuw [144 x i8], ptr %i.of, i64 %.sroa.05.0.lcssa.i.i.i118.i ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %.sroa.0.0.in.i.i.i.i.i.i119.i = getelementptr inbounds nuw i8, ptr %i.oh, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i120.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i.i119.i, align 8, !alias.scope !386, !noalias !387, !nonnull !5, !noundef !5
  %.sroa.3.0.in.i.i.i.i.i.i121.i = getelementptr inbounds nuw i8, ptr %i.oh, i64 16 ; 2 uses
  %.sroa.3.0.i.i.i.i.i.i122.i = load i64, ptr %.sroa.3.0.in.i.i.i.i.i.i121.i, align 8, !alias.scope !386, !noalias !387, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i123.i = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i.i122.i, i64 5)
  %i.oi = call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i.i.i120.i, ptr nonnull readonly @14, i64 %spec.store.select.i.i.i.i.i.i.i123.i), !alias.scope !390, !noalias !394 ; 2 uses
  %i.oj = sext i32 %i.oi to i64
  %i.ok = icmp eq i32 %i.oi, 0
  %i.ol = add i64 %.sroa.3.0.i.i.i.i.i.i122.i, -5
  %spec.select.i.i.i.i.i.i.i124.i = select i1 %i.ok, i64 %i.ol, i64 %i.oj ; 2 uses
  %i.om = icmp eq i64 %spec.select.i.i.i.i.i.i.i124.i, 0
  br i1 %i.om, label %bb.ct, label %bb.co

.lr.ph.i.i.i130.i:                                ; preds = %bb.cn, %.lr.ph.i.i.i130.i
  %.sroa.01.025.i.i.i131.i = phi i64 [ %i.ox, %.lr.ph.i.i.i130.i ], [ %i.og, %bb.cn ] ; 2 uses
  %.sroa.05.024.i.i.i132.i = phi i64 [ %i.ow, %.lr.ph.i.i.i130.i ], [ 0, %bb.cn ] ; 2 uses
  %i.on = lshr i64 %.sroa.01.025.i.i.i131.i, 1    ; 2 uses
  %i.oo = add nuw nsw i64 %i.on, %.sroa.05.024.i.i.i132.i ; 3 uses
  %i.op = icmp ult i64 %i.oo, %i.og
  call void @llvm.assume(i1 %i.op)
  %i.oq = getelementptr inbounds nuw [144 x i8], ptr %i.of, i64 %i.oo ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !395)
  call void @llvm.experimental.noalias.scope.decl(metadata !398)
  %.sroa.0.0.in.i.i.i14.i.i.i133.i = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  %.sroa.0.0.i.i.i15.i.i.i134.i = load ptr, ptr %.sroa.0.0.in.i.i.i14.i.i.i133.i, align 8, !alias.scope !401, !noalias !402, !nonnull !5, !noundef !5
  %.sroa.3.0.in.i.i.i16.i.i.i135.i = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %.sroa.3.0.i.i.i17.i.i.i136.i = load i64, ptr %.sroa.3.0.in.i.i.i16.i.i.i135.i, align 8, !alias.scope !401, !noalias !402, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i22.i.i.i137.i = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i17.i.i.i136.i, i64 5)
  %i.or = call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i15.i.i.i134.i, ptr nonnull readonly @14, i64 %spec.store.select.i.i.i.i22.i.i.i137.i), !alias.scope !404, !noalias !408 ; 2 uses
  %i.os = sext i32 %i.or to i64
  %i.ot = icmp eq i32 %i.or, 0
  %i.ou = add i64 %.sroa.3.0.i.i.i17.i.i.i136.i, -5
  %spec.select.i.i.i.i23.i.i.i138.i = select i1 %i.ot, i64 %i.ou, i64 %i.os
  %i.ov = icmp sgt i64 %spec.select.i.i.i.i23.i.i.i138.i, 0
  %i.ow = select i1 %i.ov, i64 %.sroa.05.024.i.i.i132.i, i64 %i.oo, !unpredictable !5 ; 2 uses
  %i.ox = sub nuw nsw i64 %.sroa.01.025.i.i.i131.i, %i.on ; 2 uses
  %i.oy = icmp ugt i64 %i.ox, 1
  br i1 %i.oy, label %.lr.ph.i.i.i130.i, label %._crit_edge.i.i.i117.i

bb.co:                                            ; preds = %._crit_edge.i.i.i117.i
  %spec.select.i.i.i.i.lobit.i.i.i125.i = lshr i64 %spec.select.i.i.i.i.i.i.i124.i, 63
  %i.oz = add nuw nsw i64 %spec.select.i.i.i.i.lobit.i.i.i125.i, %.sroa.05.0.lcssa.i.i.i118.i ; 2 uses
  %i.pa = icmp ule i64 %i.oz, %i.og
  call void @llvm.assume(i1 %i.pa)
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.sroa.4.0.i.i.ph.i.i = phi i64 [ %i.oz, %bb.co ], [ %i.og, %bb.cn ] ; 3 uses
  %i.pb = icmp ult i64 %i.og, 64051194700380388
  call void @llvm.assume(i1 %i.pb)
  %i.pc = load i64, ptr %i.m, align 8, !range !6, !alias.scope !409, !noalias !412, !noundef !5
  %i.pd = icmp eq i64 %i.og, %i.pc
  br i1 %i.pd, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #25, !noalias !414
  %.pre.i128.i = load ptr, ptr %.sroa.410.0..sroa_idx.i, align 8, !alias.scope !409, !noalias !412
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.pe = phi ptr [ %.pre.i128.i, %bb.cq ], [ %i.of, %bb.cp ]
  %i.pf = getelementptr inbounds nuw [144 x i8], ptr %i.pe, i64 %.sroa.4.0.i.i.ph.i.i ; 9 uses
  %i.pg = icmp samesign ult i64 %.sroa.4.0.i.i.ph.i.i, %i.og
  br i1 %i.pg, label %bb.cs, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5RPjO8Kzn89_6uu_tee.exit.i126.i

bb.cs:                                            ; preds = %bb.cr
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pf, i64 144
  %i.pi = sub nuw nsw i64 %i.og, %.sroa.4.0.i.i.ph.i.i
  %i.pj = mul nuw nsw i64 %i.pi, 144
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ph, ptr nonnull align 8 %i.pf, i64 %i.pj, i1 false), !noalias !414
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5RPjO8Kzn89_6uu_tee.exit.i126.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5RPjO8Kzn89_6uu_tee.exit.i126.i: ; preds = %bb.cs, %bb.cr
  store i64 -1, ptr %i.pf, align 8, !noalias !415
  %.sroa.05.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  store ptr @14, ptr %.sroa.05.sroa.4.0..sroa_idx.i.i, align 8, !noalias !415
  %.sroa.05.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  store i64 5, ptr %.sroa.05.sroa.5.0..sroa_idx.i.i, align 8, !noalias !415
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.pf, i64 24
  store i64 2, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !415
  %.sroa.57.0..sroa_idx.i127.i = getelementptr inbounds nuw i8, ptr %i.pf, i64 32
  store i64 %i.kn, ptr %.sroa.57.0..sroa_idx.i127.i, align 8
  %.sroa.5253.0..sroa.57.0..sroa_idx.i127.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pf, i64 40
  store ptr %i.kr, ptr %.sroa.5253.0..sroa.57.0..sroa_idx.i127.sroa_idx.i, align 8
  %.sroa.6255.0..sroa.57.0..sroa_idx.i127.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pf, i64 48
  store i64 %i.kn, ptr %.sroa.6255.0..sroa.57.0..sroa_idx.i127.sroa_idx.i, align 8
  %i.pk = add nuw nsw i64 %i.og, 1
  store i64 %i.pk, ptr %.sroa.511.0..sroa_idx.i, align 8, !alias.scope !409, !noalias !412
  br label %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit.i

bb.ct:                                            ; preds = %._crit_edge.i.i.i117.i
  %i.pl = icmp ult i64 %.sroa.05.0.lcssa.i.i.i118.i, %i.og
  br i1 %i.pl, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef align 8 dereferenceable(144) %i.oh) #20, !noalias !416
  store i64 -1, ptr %i.oh, align 8, !noalias !416
  store ptr @14, ptr %.sroa.0.0.in.i.i.i.i.i.i119.i, align 8, !noalias !416
  store i64 5, ptr %.sroa.3.0.in.i.i.i.i.i.i121.i, align 8, !noalias !416
  %i.pm = getelementptr inbounds nuw i8, ptr %i.oh, i64 24
  store i64 2, ptr %i.pm, align 8, !noalias !416
  %.sroa.4.0..sroa_idx.i129.i = getelementptr inbounds nuw i8, ptr %i.oh, i64 32
  store i64 %i.kn, ptr %.sroa.4.0..sroa_idx.i129.i, align 8, !noalias !369
  %.sroa.5253.0..sroa.4.0..sroa_idx.i129.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.oh, i64 40
  store ptr %i.kr, ptr %.sroa.5253.0..sroa.4.0..sroa_idx.i129.sroa_idx.i, align 8, !noalias !369
  %.sroa.6255.0..sroa.4.0..sroa_idx.i129.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.oh, i64 48
  store i64 %i.kn, ptr %.sroa.6255.0..sroa.4.0..sroa_idx.i129.sroa_idx.i, align 8, !noalias !369
  br label %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit.i

bb.cv:                                            ; preds = %bb.ct
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i.i118.i, i64 noundef %i.og, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22, !noalias !416
  unreachable

_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit.i: ; preds = %bb.cu, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5RPjO8Kzn89_6uu_tee.exit.i126.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !224
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 15, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !224
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit116.i

bb.cw:                                            ; preds = %.loopexit.i
  %i.pn = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.po = load double, ptr %i.pn, align 8, !noalias !224, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !417)
  %i.pp = load ptr, ptr %.sroa.410.0..sroa_idx.i, align 8, !alias.scope !417, !noalias !224, !nonnull !5, !noundef !5 ; 3 uses
  %i.pq = load i64, ptr %.sroa.511.0..sroa_idx.i, align 8, !alias.scope !417, !noalias !224, !noundef !5 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !420)
  call void @llvm.experimental.noalias.scope.decl(metadata !423)
  switch i64 %i.pq, label %.lr.ph.i.i.i175.i [
    i64 0, label %.thread.i148.i
    i64 1, label %._crit_edge.i.i.i139.i
  ]

._crit_edge.i.i.i139.i:                           ; preds = %.lr.ph.i.i.i175.i, %bb.cw
  %.sroa.05.0.lcssa.i.i.i140.i = phi i64 [ 0, %bb.cw ], [ %i.qg, %.lr.ph.i.i.i175.i ] ; 4 uses
  %i.pr = getelementptr inbounds nuw [144 x i8], ptr %i.pp, i64 %.sroa.05.0.lcssa.i.i.i140.i ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !426)
  call void @llvm.experimental.noalias.scope.decl(metadata !429)
  %.sroa.0.0.in.i.i.i.i.i.i141.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i142.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i.i141.i, align 8, !alias.scope !432, !noalias !433, !nonnull !5, !noundef !5
  %.sroa.3.0.in.i.i.i.i.i.i143.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 16 ; 2 uses
  %.sroa.3.0.i.i.i.i.i.i144.i = load i64, ptr %.sroa.3.0.in.i.i.i.i.i.i143.i, align 8, !alias.scope !432, !noalias !433, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i145.i = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i.i144.i, i64 5)
  %i.ps = call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i.i.i142.i, ptr nonnull readonly @14, i64 %spec.store.select.i.i.i.i.i.i.i145.i), !alias.scope !436, !noalias !440 ; 2 uses
  %i.pt = sext i32 %i.ps to i64
  %i.pu = icmp eq i32 %i.ps, 0
  %i.pv = add i64 %.sroa.3.0.i.i.i.i.i.i144.i, -5
  %spec.select.i.i.i.i.i.i.i146.i = select i1 %i.pu, i64 %i.pv, i64 %i.pt ; 2 uses
  %i.pw = icmp eq i64 %spec.select.i.i.i.i.i.i.i146.i, 0
  br i1 %i.pw, label %bb.db, label %bb.cx

.lr.ph.i.i.i175.i:                                ; preds = %bb.cw, %.lr.ph.i.i.i175.i
  %.sroa.01.025.i.i.i176.i = phi i64 [ %i.qh, %.lr.ph.i.i.i175.i ], [ %i.pq, %bb.cw ] ; 2 uses
  %.sroa.05.024.i.i.i177.i = phi i64 [ %i.qg, %.lr.ph.i.i.i175.i ], [ 0, %bb.cw ] ; 2 uses
  %i.px = lshr i64 %.sroa.01.025.i.i.i176.i, 1    ; 2 uses
  %i.py = add nuw nsw i64 %i.px, %.sroa.05.024.i.i.i177.i ; 3 uses
  %i.pz = icmp ult i64 %i.py, %i.pq
  call void @llvm.assume(i1 %i.pz)
  %i.qa = getelementptr inbounds nuw [144 x i8], ptr %i.pp, i64 %i.py ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !441)
  call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %.sroa.0.0.in.i.i.i14.i.i.i178.i = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  %.sroa.0.0.i.i.i15.i.i.i179.i = load ptr, ptr %.sroa.0.0.in.i.i.i14.i.i.i178.i, align 8, !alias.scope !447, !noalias !448, !nonnull !5, !noundef !5
  %.sroa.3.0.in.i.i.i16.i.i.i180.i = getelementptr inbounds nuw i8, ptr %i.qa, i64 16
  %.sroa.3.0.i.i.i17.i.i.i181.i = load i64, ptr %.sroa.3.0.in.i.i.i16.i.i.i180.i, align 8, !alias.scope !447, !noalias !448, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i22.i.i.i182.i = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i17.i.i.i181.i, i64 5)
  %i.qb = call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i15.i.i.i179.i, ptr nonnull readonly @14, i64 %spec.store.select.i.i.i.i22.i.i.i182.i), !alias.scope !450, !noalias !454 ; 2 uses
  %i.qc = sext i32 %i.qb to i64
  %i.qd = icmp eq i32 %i.qb, 0
  %i.qe = add i64 %.sroa.3.0.i.i.i17.i.i.i181.i, -5
  %spec.select.i.i.i.i23.i.i.i183.i = select i1 %i.qd, i64 %i.qe, i64 %i.qc
  %i.qf = icmp sgt i64 %spec.select.i.i.i.i23.i.i.i183.i, 0
  %i.qg = select i1 %i.qf, i64 %.sroa.05.024.i.i.i177.i, i64 %i.py, !unpredictable !5 ; 2 uses
  %i.qh = sub nuw nsw i64 %.sroa.01.025.i.i.i176.i, %i.px ; 2 uses
  %i.qi = icmp ugt i64 %i.qh, 1
  br i1 %i.qi, label %.lr.ph.i.i.i175.i, label %._crit_edge.i.i.i139.i

bb.cx:                                            ; preds = %._crit_edge.i.i.i139.i
  %spec.select.i.i.i.i.lobit.i.i.i147.i = lshr i64 %spec.select.i.i.i.i.i.i.i146.i, 63
  %i.qj = add nuw nsw i64 %spec.select.i.i.i.i.lobit.i.i.i147.i, %.sroa.05.0.lcssa.i.i.i140.i ; 2 uses
  %i.qk = icmp ule i64 %i.qj, %i.pq
  call void @llvm.assume(i1 %i.qk)
  %i.ql = icmp ult i64 %i.pq, 64051194700380388
  call void @llvm.assume(i1 %i.ql)
  br label %.thread.i148.i

.thread.i148.i:                                   ; preds = %bb.cx, %bb.cw
  %.sroa.4.0.i.i.ph47.i149.i = phi i64 [ %i.qj, %bb.cx ], [ %i.pq, %bb.cw ] ; 3 uses
  %i.qm = load i64, ptr %i.m, align 8, !range !6, !alias.scope !455, !noalias !458, !noundef !5
  %i.qn = icmp eq i64 %i.pq, %i.qm
  br i1 %i.qn, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %.thread.i148.i
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #25, !noalias !460
  %.pre.i164.i = load ptr, ptr %.sroa.410.0..sroa_idx.i, align 8, !alias.scope !455, !noalias !458
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %.thread.i148.i
  %i.qo = phi ptr [ %.pre.i164.i, %bb.cy ], [ %i.pp, %.thread.i148.i ]
  %i.qp = getelementptr inbounds nuw [144 x i8], ptr %i.qo, i64 %.sroa.4.0.i.i.ph47.i149.i ; 13 uses
  %i.qq = icmp samesign ult i64 %.sroa.4.0.i.i.ph47.i149.i, %i.pq
  br i1 %i.qq, label %bb.da, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5RPjO8Kzn89_6uu_tee.exit.i150.i

bb.da:                                            ; preds = %bb.cz
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qp, i64 144
  %i.qs = sub nuw nsw i64 %i.pq, %.sroa.4.0.i.i.ph47.i149.i
  %i.qt = mul nuw nsw i64 %i.qs, 144
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.qr, ptr nonnull align 8 %i.qp, i64 %i.qt, i1 false), !noalias !460
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5RPjO8Kzn89_6uu_tee.exit.i150.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5RPjO8Kzn89_6uu_tee.exit.i150.i: ; preds = %bb.da, %bb.cz
  store i64 -1, ptr %i.qp, align 8
  %.sroa.027.sroa.4.0..sroa_idx.i151.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  store ptr @14, ptr %.sroa.027.sroa.4.0..sroa_idx.i151.i, align 8
  %.sroa.027.sroa.5.0..sroa_idx.i152.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  store i64 5, ptr %.sroa.027.sroa.5.0..sroa_idx.i152.i, align 8
  %.sroa.428.0..sroa_idx.i153.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 24
  store i64 0, ptr %.sroa.428.0..sroa_idx.i153.i, align 8
  %.sroa.630.0..sroa_idx.i154.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 40
  store i64 0, ptr %.sroa.630.0..sroa_idx.i154.i, align 8
  %.sroa.832.0..sroa_idx.i155.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 56
  store i64 0, ptr %.sroa.832.0..sroa_idx.i155.i, align 8
  %.sroa.1034.0..sroa_idx.i156.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 72
  store i64 0, ptr %.sroa.1034.0..sroa_idx.i156.i, align 8
  %.sroa.1236.0..sroa_idx.i157.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 88
  store i64 0, ptr %.sroa.1236.0..sroa_idx.i157.i, align 8
  %.sroa.14.0..sroa_idx.i158.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 104
  store i64 -1, ptr %.sroa.14.0..sroa_idx.i158.i, align 8
  %.sroa.16.0..sroa_idx.i159.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 128
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.16.0..sroa_idx.i159.i, align 8
  %.sroa.21.0..sroa_idx.i163.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 136
  store double %i.po, ptr %.sroa.21.0..sroa_idx.i163.i, align 8
  %i.qu = add nuw nsw i64 %i.pq, 1
  store i64 %i.qu, ptr %.sroa.511.0..sroa_idx.i, align 8, !alias.scope !455, !noalias !458
  br label %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs5RPjO8Kzn89_6uu_tee.exit.i

bb.db:                                            ; preds = %._crit_edge.i.i.i139.i
  %i.qv = icmp ult i64 %.sroa.05.0.lcssa.i.i.i140.i, %i.pq
  br i1 %i.qv, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef align 8 dereferenceable(144) %i.pr) #20, !noalias !417
  store i64 -1, ptr %i.pr, align 8, !noalias !417
  store ptr @14, ptr %.sroa.0.0.in.i.i.i.i.i.i141.i, align 8, !noalias !417
  store i64 5, ptr %.sroa.3.0.in.i.i.i.i.i.i143.i, align 8, !noalias !417
  %i.qw = getelementptr inbounds nuw i8, ptr %i.pr, i64 24
  store i64 0, ptr %i.qw, align 8, !noalias !417
  %.sroa.42.0..sroa_idx.i165.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 40
  store i64 0, ptr %.sroa.42.0..sroa_idx.i165.i, align 8, !noalias !417
  %.sroa.53.0..sroa_idx.i166.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 56
  store i64 0, ptr %.sroa.53.0..sroa_idx.i166.i, align 8, !noalias !417
  %.sroa.64.0..sroa_idx.i167.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 72
  store i64 0, ptr %.sroa.64.0..sroa_idx.i167.i, align 8, !noalias !417
  %.sroa.75.0..sroa_idx.i168.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 88
  store i64 0, ptr %.sroa.75.0..sroa_idx.i168.i, align 8, !noalias !417
  %.sroa.86.0..sroa_idx.i169.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 104
  store i64 -1, ptr %.sroa.86.0..sroa_idx.i169.i, align 8, !noalias !417
  %.sroa.97.0..sroa_idx.i170.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 128
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.97.0..sroa_idx.i170.i, align 8, !noalias !417
  %.sroa.138.0..sroa_idx.i174.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 136
  store double %i.po, ptr %.sroa.138.0..sroa_idx.i174.i, align 8, !noalias !417
  br label %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs5RPjO8Kzn89_6uu_tee.exit.i

bb.dd:                                            ; preds = %bb.db
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i.i140.i, i64 noundef %i.pq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22, !noalias !417
  unreachable

_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs5RPjO8Kzn89_6uu_tee.exit.i: ; preds = %bb.dc, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5RPjO8Kzn89_6uu_tee.exit.i150.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !224
  br label %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs5RPjO8Kzn89_6uu_tee.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit116.i: ; preds = %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit.i, %bb.cm, %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs5RPjO8Kzn89_6uu_tee.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !224
  store ptr %i.n, ptr %i.i, align 8, !noalias !224
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !224
  %i.qx = call noundef ptr @_RNvXso_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StderrNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @16, ptr noundef nonnull %i.i) #20 ; 4 uses
  %i.qy = icmp eq ptr %i.qx, null
  br i1 %i.qy, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i, label %bb.de

bb.de:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit116.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !224
  %i.qz = ptrtoint ptr %i.qx to i64               ; 2 uses
  %i.ra = and i64 %i.qz, 3
  switch i64 %i.ra, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i184.i
    i64 3, label %bb.df
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i184.i
    i64 1, label %bb.dg
  ], !prof !83

bb.df:                                            ; preds = %bb.de
  %i.rb = icmp ult ptr %i.qx, inttoptr (i64 188978561024 to ptr)
  %i.rc = and i64 %i.qz, 1095216660480
  %i.rd = icmp ne i64 %i.rc, 1095216660480
  call void @llvm.assume(i1 %i.rb)
  call void @llvm.assume(i1 %i.rd)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i184.i

bb.dg:                                            ; preds = %bb.de
  %i.re = getelementptr i8, ptr %i.qx, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.re) ]
  %i.rf = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.re, ptr %i.rf, align 8, !alias.scope !461, !noalias !224
  store i8 3, ptr %i.b, align 8, !alias.scope !461, !noalias !224
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.rf) #20
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i184.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i184.i: ; preds = %bb.dg, %bb.df, %bb.de, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !224
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i184.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit116.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !224
  call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %.val.i186.i = load i64, ptr %i.n, align 8, !range !6, !alias.scope !464, !noalias !224, !noundef !5 ; 2 uses
  %i.rg = icmp eq i64 %.val.i186.i, 0
  br i1 %i.rg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit188.i, label %bb.dh

bb.dh:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i
  %i.rh = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val1.i187.i = load ptr, ptr %i.rh, align 8, !alias.scope !464, !noalias !224, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i187.i, i64 noundef %.val.i186.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !464
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit188.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit188.i: ; preds = %bb.dh, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !224
  br label %.loopexit314.i.thread

_RNvMCs5RPjO8Kzn89_6uu_teeNtB2_11MultiWriter15copy_unbuffered.exit: ; preds = %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterE6retainNCNvMBH_NtBH_11MultiWriter15copy_unbuffered0EBH_.exit.i
  %i.ri = call noundef i32 @close(i32 noundef %i.dh) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !224
  %i.rj = call noundef i32 @close(i32 noundef %i.df) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !224
  %i.rk = call noundef i32 @close(i32 noundef %i.db) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !224
  %i.rl = call noundef i32 @close(i32 noundef %i.cz) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !224
  br label %bb.dt

bb.di:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterE10insert_mutBG_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals24ensure_stdout_not_broken(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ag) #20
  %i.rm = load i8, ptr %i.ag, align 8, !range !74, !noundef !5
  %i.rn = trunc nuw i8 %i.rm to i1
  br i1 %i.rn, label %bb.dj, label %bb.dm

bb.dj:                                            ; preds = %bb.di
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.rp = load ptr, ptr %i.ro, align 8, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.rq = ptrtoint ptr %i.rp to i64               ; 2 uses
  %i.rr = and i64 %i.rq, 3
  switch i64 %i.rr, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit13
    i64 3, label %bb.dk
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit13
    i64 1, label %bb.dl
  ], !prof !83

bb.dk:                                            ; preds = %bb.dj
  %i.rs = icmp ult ptr %i.rp, inttoptr (i64 188978561024 to ptr)
  %i.rt = and i64 %i.rq, 1095216660480
  %i.ru = icmp ne i64 %i.rt, 1095216660480
  call void @llvm.assume(i1 %i.rs)
  call void @llvm.assume(i1 %i.ru)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit13

bb.dl:                                            ; preds = %bb.dj
  %i.rv = getelementptr i8, ptr %i.rp, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rv) ]
end_hunk_1
