Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_rm-33e1a2eae18623b5.uu_rm.3beacde789ad3800-cgu.0?download=true
inline.NumInlined: 1389
inline.NumDeleted: 691
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtNtCs58W9blM4WiW_5uu_rm8platform4unix29remove_dir_with_special_cases:bb.a
  %i.g = tail call noundef ptr @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs10remove_dir(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) #21 ; 5 uses
  %.not.not = icmp ne ptr %i.g, null              ; 2 uses
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call fastcc { ptr, ptr } @_RNvCs58W9blM4WiW_5uu_rm25verbose_removed_directory(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i8 %.6.val) #21 ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  tail call fastcc void @_RNvCs58W9blM4WiW_5uu_rm26report_verbose_write_error(ptr noundef %i.i, ptr %i.j) #21
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2961
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) #21, !noalias !2962
  %i.k = load i64, ptr %i.e, align 8, !range !13, !noalias !2961, !noundef !5
  %i.l = icmp eq i64 %i.k, 2
  br i1 %i.l, label %bb.d, label %_RNvNtNtCs58W9blM4WiW_5uu_rm8platform4unix11is_readable.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !2961, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2961
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2963
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = and i64 %i.o, 3
  switch i64 %i.p, label %default.unreachable [
    i64 2, label %_RNvNtNtCs58W9blM4WiW_5uu_rm8platform4unix11is_readable.exit.thread
    i64 3, label %bb.e
    i64 0, label %_RNvNtNtCs58W9blM4WiW_5uu_rm8platform4unix11is_readable.exit.thread
    i64 1, label %bb.f
  ], !prof !7

default.unreachable:                              ; preds = %bb.n, %bb.j, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.q = icmp ult ptr %i.n, inttoptr (i64 188978561024 to ptr)
  %i.r = and i64 %i.o, 1095216660480
  %i.s = icmp ne i64 %i.r, 1095216660480
  call void @llvm.assume(i1 %i.q)
  call void @llvm.assume(i1 %i.s)
  br label %_RNvNtNtCs58W9blM4WiW_5uu_rm8platform4unix11is_readable.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %i.n, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !alias.scope !2964, !noalias !2963
  store i8 3, ptr %i.d, align 8, !alias.scope !2964, !noalias !2963
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #21, !noalias !2965
  br label %_RNvNtNtCs58W9blM4WiW_5uu_rm8platform4unix11is_readable.exit.thread

_RNvNtNtCs58W9blM4WiW_5uu_rm8platform4unix11is_readable.exit.thread: ; preds = %bb.d, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2963
  br label %bb.n

_RNvNtNtCs58W9blM4WiW_5uu_rm8platform4unix11is_readable.exit: ; preds = %bb.c
  %.sroa.71.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.71.0.copyload.i = load i32, ptr %.sroa.71.0..sroa_idx.i, align 8, !noalias !2966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2961
  %i.v = and i32 %.sroa.71.0.copyload.i, 256
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.n, label %bb.g

bb.g:                                             ; preds = %_RNvNtNtCs58W9blM4WiW_5uu_rm8platform4unix11is_readable.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !2967)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2968
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs8read_dir(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) #21, !noalias !2967
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.x = load i8, ptr %i.w, align 8, !range !24, !noalias !2968, !noundef !5 ; 2 uses
  %.sink2.i = load ptr, ptr %i.c, align 8, !noalias !2968, !nonnull !5, !noundef !5 ; 5 uses
  store ptr %.sink2.i, ptr %i.f, align 8, !alias.scope !2967, !noalias !2969
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 %i.x, ptr %i.y, align 8, !alias.scope !2967, !noalias !2969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2968
  %.not2 = icmp eq i8 %i.x, 2
  br i1 %.not2, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = atomicrmw sub ptr %.sink2.i, i64 1 release, align 8, !noalias !2970
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #20
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call fastcc void @_RNvCs58W9blM4WiW_5uu_rm18show_removal_error(ptr noundef nonnull %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) #21
  br label %bb.m

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2971
  %i.ab = ptrtoint ptr %.sink2.i to i64           ; 2 uses
  %i.ac = and i64 %i.ab, 3
  switch i64 %i.ac, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit10
    i64 3, label %bb.k
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit10
    i64 1, label %bb.l
  ], !prof !7

bb.k:                                             ; preds = %bb.j
  %i.ad = icmp ult ptr %.sink2.i, inttoptr (i64 188978561024 to ptr)
  %i.ae = and i64 %i.ab, 1095216660480
  %i.af = icmp ne i64 %i.ae, 1095216660480
  call void @llvm.assume(i1 %i.ad)
  call void @llvm.assume(i1 %i.af)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit10

bb.l:                                             ; preds = %bb.j
  %i.ag = getelementptr i8, ptr %.sink2.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !alias.scope !2972, !noalias !2971
  store i8 3, ptr %i.b, align 8, !alias.scope !2972, !noalias !2971
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #21, !noalias !2971
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit10

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit10: ; preds = %bb.j, %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.n

bb.m:                                             ; preds = %bb.b, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit
  ret i1 %.not.not

bb.n:                                             ; preds = %_RNvNtNtCs58W9blM4WiW_5uu_rm8platform4unix11is_readable.exit, %_RNvNtNtCs58W9blM4WiW_5uu_rm8platform4unix11is_readable.exit.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit10
  call fastcc void @_RNvCs58W9blM4WiW_5uu_rm28show_permission_denied_error(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ai = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.aj = and i64 %i.ai, 3
  switch i64 %i.aj, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit
    i64 3, label %bb.o
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit
    i64 1, label %bb.p
  ], !prof !7

bb.o:                                             ; preds = %bb.n
  %i.ak = icmp ult ptr %i.g, inttoptr (i64 188978561024 to ptr)
  %i.al = and i64 %i.ai, 1095216660480
  %i.am = icmp ne i64 %i.al, 1095216660480
  call void @llvm.assume(i1 %i.ak)
  call void @llvm.assume(i1 %i.am)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit

bb.p:                                             ; preds = %bb.n
  %i.an = getelementptr i8, ptr %i.g, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8, !alias.scope !2973
  store i8 3, ptr %i.a, align 8, !alias.scope !2973
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ao) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit: ; preds = %bb.n, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtCs58W9blM4WiW_5uu_rm8platform4unix30safe_remove_dir_recursive_impl(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %2, ptr noalias nofree noundef nonnull readonly captures(none) dereferenceable(10) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [4 x i8], align 4                 ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 10 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 6 uses
  %i.z = alloca [152 x i8], align 8               ; 8 uses
  %i.aa = alloca [24 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @_RNvMs1_NtNtCsh036I4OHgIr_6uucore8features14safe_traversalNtB5_5DirFd8read_dir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %2) #21
  %i.ac = load i64, ptr %i.ab, align 8, !range !15, !noundef !5 ; 3 uses
  %i.ad = icmp eq i64 %i.ac, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val44 = load ptr, ptr %i.ae, align 8, !nonnull !5, !noundef !5 ; 10 uses
  br i1 %i.ad, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.af = ptrtoint ptr %.val44 to i64             ; 4 uses
  %i.ag = and i64 %i.af, 3                        ; 2 uses
  switch i64 %i.ag, label %default.unreachable [
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 0, label %bb.e
    i64 1, label %bb.f
  ], !prof !7

default.unreachable:                              ; preds = %bb.ca, %bb.bw, %_RNvNtNtCs58W9blM4WiW_5uu_rm8platform4unix24handle_permission_denied.exit, %bb.bj, %bb.av, %bb.z, %bb.v, %bb.cm, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.ah = lshr i64 %i.af, 32
  %i.ai = trunc nuw i64 %i.ah to i32
  %i.aj = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !5, !noundef !5
  %i.am = call noundef i8 %i.al(i32 noundef %i.ai) #21, !inline_history !0
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit

bb.d:                                             ; preds = %bb.b
  %i.an = lshr i64 %i.af, 32
  %i.ao = icmp ult ptr %.val44, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.an to i8  ; 2 uses
  %i.ap = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.ao)
  call void @llvm.assume(i1 %i.ap)
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit

bb.e:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %.val44, i64 16
  %i.ar = load i8, ptr %i.aq, align 8, !range !21, !noundef !5
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit

bb.f:                                             ; preds = %bb.b
  %i.as = getelementptr i8, ptr %.val44, i64 31
  %i.at = load i8, ptr %i.as, align 8, !range !21, !noundef !5
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.i = phi i8 [ %i.am, %bb.c ], [ %switch.idx.cast.i.i.i, %bb.d ], [ %i.ar, %bb.e ], [ %i.at, %bb.f ]
  %i.au = icmp eq i8 %.sroa.0.0.i, 1
  %i.av = load i8, ptr %3, align 1                ; 3 uses
  br i1 %i.au, label %bb.cj, label %bb.ci

bb.g:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.ay = icmp ult i64 %i.ax, 384307168202282326
  call void @llvm.assume(i1 %i.ay)
  %.idx = mul nuw nsw i64 %i.ax, 24
  %i.az = getelementptr inbounds nuw i8, ptr %.val44, i64 %.idx ; 3 uses
  %i.ba = icmp eq i64 %i.ax, 0
  br i1 %i.ba, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs58W9blM4WiW_5uu_rm.exit.i.i, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs58W9blM4WiW_5uu_rm.exit.lr.ph

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs58W9blM4WiW_5uu_rm.exit.lr.ph: ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %.sroa.312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %.sroa.415.sroa.2.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 7 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 7 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val52 = load i8, ptr %i.be, align 1           ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 9
  %.val53 = load i8, ptr %i.bf, align 1, !range !18 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 6
  %.val55 = load i8, ptr %i.bg, align 1           ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !range !10
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.bl = load i8, ptr %i.bk, align 1, !range !10
  %i.bm = trunc nuw i8 %i.bl to i1
  %i.bn = icmp eq i8 %.val53, 2                   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val48 = load i8, ptr %3, align 1              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.8116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  br label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs58W9blM4WiW_5uu_rm.exit

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs58W9blM4WiW_5uu_rm.exit: ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs58W9blM4WiW_5uu_rm.exit.lr.ph, %.backedge
  %.sroa.0.0159 = phi i8 [ 0, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs58W9blM4WiW_5uu_rm.exit.lr.ph ], [ %.sroa.0.0.be, %.backedge ] ; 8 uses
  %.sroa.4.0158 = phi ptr [ %.val44, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs58W9blM4WiW_5uu_rm.exit.lr.ph ], [ %i.ce, %.backedge ] ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.4.0158, i64 24 ; 5 uses
  %.sroa.091.0.copyload92 = load i64, ptr %.sroa.4.0158, align 8, !noalias !3020 ; 4 uses
  %.sroa.893.0..sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.0158, i64 8
  %.sroa.893.sroa.0.0.copyload = load ptr, ptr %.sroa.893.0..sroa.4.8..sroa_idx, align 8, !noalias !3020 ; 8 uses
  %.sroa.893.sroa.6.0..sroa.893.0..sroa.4.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.0158, i64 16
  %.sroa.893.sroa.6.0.copyload = load i64, ptr %.sroa.893.sroa.6.0..sroa.893.0..sroa.4.8..sroa_idx.sroa_idx, align 8, !noalias !3020 ; 6 uses
  %.not = icmp eq i64 %.sroa.091.0.copyload92, -1
  br i1 %.not, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs58W9blM4WiW_5uu_rm.exit.thread, label %bb.h

bb.h:                                             ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs58W9blM4WiW_5uu_rm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.893.sroa.0.0.copyload) ]
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.893.sroa.0.0.copyload, i64 noundef %.sroa.893.sroa.6.0.copyload) #21, !noalias !3021
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @_RNvMs1_NtNtCsh036I4OHgIr_6uucore8features14safe_traversalNtB5_5DirFd7stat_at(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.z, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.893.sroa.0.0.copyload, i64 noundef %.sroa.893.sroa.6.0.copyload, i1 noundef zeroext true) #21
  %i.cf = load i64, ptr %i.z, align 8, !range !16, !noundef !5
  %i.cg = trunc nuw i64 %i.cf to i1
  br i1 %i.cg, label %bb.k, label %bb.l

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs58W9blM4WiW_5uu_rm.exit.thread: ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs58W9blM4WiW_5uu_rm.exit
  %i.ch = ptrtoint ptr %i.az to i64
  %i.ci = ptrtoint ptr %i.ce to i64
  %i.cj = sub nuw i64 %i.ch, %i.ci
  %i.ck = udiv exact i64 %i.cj, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !3022)
  %i.cl = icmp eq ptr %i.az, %i.ce
  br i1 %i.cl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs58W9blM4WiW_5uu_rm.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs58W9blM4WiW_5uu_rm.exit.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs58W9blM4WiW_5uu_rm.exit.i.i.i
  %.sroa.0.04.i.i.i = phi i64 [ %i.cn, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs58W9blM4WiW_5uu_rm.exit.i.i.i ], [ 0, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs58W9blM4WiW_5uu_rm.exit.thread ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %.sroa.0.04.i.i.i ; 2 uses
  %i.cn = add nuw nsw i64 %.sroa.0.04.i.i.i, 1    ; 2 uses
  %.val.i.i.i = load i64, ptr %i.cm, align 8, !range !6, !alias.scope !3022, !noalias !3023, !noundef !5 ; 2 uses
  %i.co = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.co, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs58W9blM4WiW_5uu_rm.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.cp = getelementptr i8, ptr %i.cm, i64 8
  %.val3.i.i.i = load ptr, ptr %i.cp, align 8, !alias.scope !3022, !noalias !3023, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !3024
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs58W9blM4WiW_5uu_rm.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs58W9blM4WiW_5uu_rm.exit.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i
  %i.cq = icmp eq i64 %i.cn, %i.ck
  br i1 %i.cq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs58W9blM4WiW_5uu_rm.exit.i.i, label %.lr.ph.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs58W9blM4WiW_5uu_rm.exit.i.i: ; preds = %.backedge, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs58W9blM4WiW_5uu_rm.exit.i.i.i, %bb.g, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs58W9blM4WiW_5uu_rm.exit.thread
  %.sroa.0.0161 = phi i8 [ %.sroa.0.0159, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs58W9blM4WiW_5uu_rm.exit.i.i.i ], [ %.sroa.0.0159, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs58W9blM4WiW_5uu_rm.exit.thread ], [ 0, %bb.g ], [ %.sroa.0.0.be, %.backedge ] ; 2 uses
  %i.cr = icmp eq i64 %i.ac, 0
  br i1 %i.cr, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs58W9blM4WiW_5uu_rm.exit, label %bb.j

bb.j:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs58W9blM4WiW_5uu_rm.exit.i.i
  %i.cs = mul nuw i64 %i.ac, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val44, i64 noundef %i.cs, i64 noundef range(i64 1, -9223372036854775807) 8) #21, !noalias !3023
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs58W9blM4WiW_5uu_rm.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs58W9blM4WiW_5uu_rm.exit: ; preds = %bb.j, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs58W9blM4WiW_5uu_rm.exit.i.i, %bb.ck
  %.sroa.0.1 = phi i8 [ %.sroa.0.7, %bb.ck ], [ %.sroa.0.0161, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs58W9blM4WiW_5uu_rm.exit.i.i ], [ %.sroa.0.0161, %bb.j ]
  %i.ct = trunc nuw i8 %.sroa.0.1 to i1
  ret i1 %i.ct

bb.k:                                             ; preds = %bb.h
  %i.cu = load ptr, ptr %i.bb, align 8, !nonnull !5, !noundef !5
  %i.cv = load ptr, ptr %i.bc, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cw = load i64, ptr %i.bd, align 8, !noundef !5
  %i.cx = call fastcc noundef zeroext i1 @_RNvNtNtCs58W9blM4WiW_5uu_rm8platform4unix23handle_error_with_force(ptr noundef nonnull %i.cu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef %i.cw, i8 %.val48) #21
  %i.cy = zext i1 %i.cx to i8
  %i.cz = or i8 %.sroa.0.0159, %i.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.cg

bb.l:                                             ; preds = %bb.h
  %.sroa.09.0.copyload = load i64, ptr %i.bb, align 8 ; 3 uses
  %.sroa.312.0.copyload = load i32, ptr %.sroa.312.0..sroa_idx, align 8 ; 3 uses
  %.sroa.415.sroa.2.0.copyload = load i64, ptr %.sroa.415.sroa.2.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.da = and i32 %.sroa.312.0.copyload, 61440
  %i.db = icmp eq i32 %i.da, 16384
  br i1 %i.db, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dc = load ptr, ptr %i.bc, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.dd = load i64, ptr %i.bd, align 8, !noundef !5 ; 2 uses
  %i.de = call fastcc noundef zeroext i1 @_RNvNtNtCs58W9blM4WiW_5uu_rm8platform4unix21prompt_file_with_stat(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dc, i64 noundef %i.dd, i32 %.sroa.312.0.copyload, i64 %.sroa.415.sroa.2.0.copyload, i8 %.val52, i8 %.val53) #21
  br i1 %i.de, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.df = icmp ne i64 %.sroa.09.0.copyload, %4
  %or.cond = and i1 %i.df, %i.bj
  br i1 %or.cond, label %bb.s, label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.dg = call fastcc noundef zeroext i1 @_RNvNtNtCs58W9blM4WiW_5uu_rm8platform4unix13handle_unlink(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.893.sroa.0.0.copyload, i64 noundef %.sroa.893.sroa.6.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dc, i64 noundef %i.dd, i1 noundef zeroext false, i8 %.val55) #21
  %i.dh = zext i1 %i.dg to i8
  %i.di = or i8 %.sroa.0.0159, %i.dh
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.bg
  %.val41 = phi ptr [ %i.hk, %bb.bg ], [ %i.dc, %bb.o ], [ %i.dc, %bb.m ]
  %.sroa.0.2 = phi i8 [ %.sroa.0.4, %bb.bg ], [ %i.di, %bb.o ], [ %.sroa.0.0159, %bb.m ] ; 2 uses
  %.val40 = load i64, ptr %i.aa, align 8, !range !6, !noundef !5 ; 2 uses
  %i.dj = icmp eq i64 %.val40, 0
  br i1 %i.dj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs58W9blM4WiW_5uu_rm.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val41, i64 noundef %.val40, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs58W9blM4WiW_5uu_rm.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs58W9blM4WiW_5uu_rm.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.dk = icmp eq i64 %.sroa.091.0.copyload92, 0
  br i1 %i.dk, label %.backedge, label %.backedge.sink.split

.backedge.sink.split:                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs58W9blM4WiW_5uu_rm.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs58W9blM4WiW_5uu_rm.exit86
  %.sroa.0.0.be.ph = phi i8 [ %.sroa.0.6, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs58W9blM4WiW_5uu_rm.exit86 ], [ %.sroa.0.2, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs58W9blM4WiW_5uu_rm.exit ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.893.sroa.0.0.copyload, i64 noundef %.sroa.091.0.copyload92, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %.backedge

.backedge:                                        ; preds = %.backedge.sink.split, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs58W9blM4WiW_5uu_rm.exit86, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs58W9blM4WiW_5uu_rm.exit
  %.sroa.0.0.be = phi i8 [ %.sroa.0.6, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs58W9blM4WiW_5uu_rm.exit86 ], [ %.sroa.0.2, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs58W9blM4WiW_5uu_rm.exit ], [ %.sroa.0.0.be.ph, %.backedge.sink.split ] ; 2 uses
  %i.dl = icmp eq ptr %i.ce, %i.az
  br i1 %i.dl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs58W9blM4WiW_5uu_rm.exit.i.i, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs58W9blM4WiW_5uu_rm.exit

bb.r:                                             ; preds = %bb.n
  %i.dm = icmp ne i64 %.sroa.09.0.copyload, %5
  %or.cond1 = and i1 %i.dm, %i.bm
  br i1 %or.cond1, label %bb.ar, label %bb.aq

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.x, align 8
  %i.dn = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x) #21
  store ptr %i.dn, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.do = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #21 ; 2 uses
  %i.dp = extractvalue { ptr, i64 } %i.do, 0
  %i.dq = extractvalue { ptr, i64 } %i.do, 1
  store ptr %i.dp, ptr %i.w, align 8
  store i64 %i.dq, ptr %i.bs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.w, ptr %i.v, align 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs58W9blM4WiW_5uu_rm, ptr %.sroa.420.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3025
  store ptr %i.y, ptr %i.l, align 8, !noalias !3025
  store ptr null, ptr %i.bt, align 8, !noalias !3025
  %i.dr = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @7, ptr noundef nonnull @19, ptr noundef nonnull %i.v) #21
  %i.ds = load ptr, ptr %i.bt, align 8, !noalias !3025, !noundef !5 ; 7 uses
  %.not.i5.i = icmp eq ptr %i.ds, null            ; 2 uses
  br i1 %i.dr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  br i1 %.not.i5.i, label %bb.y, label %bb.z, !prof !12

bb.u:                                             ; preds = %bb.s
  br i1 %.not.i5.i, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs58W9blM4WiW_5uu_rm.exit.i.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3025
  %i.dt = ptrtoint ptr %i.ds to i64               ; 2 uses
  %i.du = and i64 %i.dt, 3
  switch i64 %i.du, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i.i
    i64 3, label %bb.w
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i.i
    i64 1, label %bb.x
  ], !prof !7

bb.w:                                             ; preds = %bb.v
  %i.dv = icmp ult ptr %i.ds, inttoptr (i64 188978561024 to ptr)
  %i.dw = and i64 %i.dt, 1095216660480
  %i.dx = icmp ne i64 %i.dw, 1095216660480
  call void @llvm.assume(i1 %i.dv)
  call void @llvm.assume(i1 %i.dx)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.dy = getelementptr i8, ptr %i.ds, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dy) ]
  store ptr %i.dy, ptr %i.bu, align 8, !alias.scope !3026, !noalias !3025
  store i8 3, ptr %i.k, align 8, !alias.scope !3026, !noalias !3025
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bu) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i.i: ; preds = %bb.x, %bb.w, %bb.v, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3025
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs58W9blM4WiW_5uu_rm.exit.i.thread

bb.y:                                             ; preds = %bb.t
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs58W9blM4WiW_5uu_rm.exit.i.thread: ; preds = %bb.u, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3025
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit

bb.z:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.dz = ptrtoint ptr %i.ds to i64               ; 2 uses
  %i.ea = and i64 %i.dz, 3
  switch i64 %i.ea, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i
    i64 3, label %bb.aa
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i
    i64 1, label %bb.ab
  ], !prof !7

bb.aa:                                            ; preds = %bb.z
  %i.eb = icmp ult ptr %i.ds, inttoptr (i64 188978561024 to ptr)
  %i.ec = and i64 %i.dz, 1095216660480
  %i.ed = icmp ne i64 %i.ec, 1095216660480
  call void @llvm.assume(i1 %i.eb)
  call void @llvm.assume(i1 %i.ed)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.ee = getelementptr i8, ptr %i.ds, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ee) ]
  store ptr %i.ee, ptr %i.bv, align 8, !alias.scope !3027
  store i8 3, ptr %i.j, align 8, !alias.scope !3027
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bv) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i: ; preds = %bb.ab, %bb.aa, %bb.z, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs58W9blM4WiW_5uu_rm.exit.i.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 0, ptr %i.t, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.422.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.523.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ef = load ptr, ptr %i.bc, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.eg = load i64, ptr %i.bd, align 8, !noundef !5
  store i64 1, ptr %i.s, align 8
  store ptr %i.ef, ptr %.sroa.425.0..sroa_idx, align 8
  store i64 %i.eg, ptr %.sroa.526.0..sroa_idx, align 8
  store i8 1, ptr %i.bw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3028
  store i64 0, ptr %i.i, align 8, !noalias !3028
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3028
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !3028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3028
  store i64 1610612768, ptr %i.bx, align 8, !noalias !3028
  store ptr %i.i, ptr %i.h, align 8, !noalias !3028
  store ptr @109, ptr %i.by, align 8, !noalias !3028
  %i.eh = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #21, !noalias !3029
  br i1 %i.eh, label %bb.ac, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs58W9blM4WiW_5uu_rm.exit, !prof !12

bb.ac:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #22, !noalias !3029
  unreachable
end_hunk_0
