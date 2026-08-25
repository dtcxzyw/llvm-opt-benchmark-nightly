Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_dd-289641d59659d41f.uu_dd.8952a91ac67bbfe3-cgu.0?download=true
inline.NumInlined: 1600
inline.NumDeleted: 713
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_RINvNtNtCs2vKOLqTMYjT_3std3sys9backtrace28___rust_begin_short_backtraceNCNvNtCsbMXVmEvvZJf_5uu_dd8progress16gen_prog_updater0uEB1d_:bb.a

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvB10_.exit.i.i.i: ; preds = %bb.dr, %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i12.i.i.i.i, %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4zeroINtB19_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvs_0INtNtCs6JMX4GRUq9U_4core6result6ResultB1y_NtNtB7_4mpsc16RecvTimeoutErrorEEB1C_.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i
  %.pre.i.i.i = phi i32 [ %.pre45.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i ], [ %.pre.pre.i.i.i, %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4zeroINtB19_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvs_0INtNtCs6JMX4GRUq9U_4core6result6ResultB1y_NtNtB7_4mpsc16RecvTimeoutErrorEEB1C_.exit.i.i.i.i ], [ -1, %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i12.i.i.i.i ], [ -1, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1011
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !922
  br label %bb.ds

bb.ds:                                            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvB10_.exit.i.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvB10_.exit.i.i.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvB10_.exit.i.i.i
  %.sroa.6.0.copyload11.i.i = phi i32 [ %.pre.i.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvB10_.exit.i.i.i ], [ %.sink.i.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvB10_.exit.i.i.i ], [ %i.fp, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvB10_.exit.i.i.i ] ; 2 uses
  %i.nn = icmp eq i32 %.sroa.6.0.copyload11.i.i, -1
  br i1 %i.nn, label %.loopexit.i.i, label %bb.dt

.loopexit.i.i:                                    ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !922
  br label %_RNvYNCNvNtCsbMXVmEvvZJf_5uu_dd8progress16gen_prog_updater0INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceuE9call_onceB8_.exit

bb.dt:                                            ; preds = %bb.ds
  %.sroa.0.0.copyload9.i.i = load i64, ptr %i.ab, align 16, !noalias !851
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !851
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %.sroa.8.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(84) %.sroa.548.0..sroa_idx.i.i.i.i, i64 84, i1 false), !noalias !851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !922
  store i64 %.sroa.0.0.copyload9.i.i, ptr %i.ad, align 16, !noalias !851
  store i32 %.sroa.6.0.copyload11.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !851
  %i.no = load i8, ptr %i.cz, align 16, !range !242, !noalias !851, !noundef !8
  switch i8 %i.no, label %default.unreachable [
    i8 0, label %bb.du
    i8 1, label %bb.dv
    i8 2, label %bb.dw
  ]

bb.du:                                            ; preds = %bb.dt
  br i1 %i.dc, label %bb.ec, label %bb.eg

bb.dv:                                            ; preds = %bb.dt
  %i.np = trunc nuw i8 %.sroa.0.0.i.i to i1
  call void @_RNvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB2_10ProgUpdate20print_transfer_stats(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.ad, i1 noundef zeroext %i.np) #27, !noalias !851
  br label %bb.eg

bb.dw:                                            ; preds = %bb.dt
  switch i8 %i.db, label %default.unreachable [
    i8 -1, label %bb.dx
    i8 0, label %bb.dx
    i8 1, label %bb.dy
    i8 2, label %_RNvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB2_10ProgUpdate17print_final_stats.exit.i.i
  ]

bb.dx:                                            ; preds = %bb.dw, %bb.dw
  %i.nq = trunc nuw i8 %.sroa.0.0.i.i to i1
  call void @_RNvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB2_10ProgUpdate20print_transfer_stats(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.ad, i1 noundef zeroext %i.nq) #27, !noalias !851
  br label %_RNvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB2_10ProgUpdate17print_final_stats.exit.i.i

bb.dy:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1098
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.c, align 8, !noalias !1098
  %i.nr = call fastcc noundef ptr @_RINvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB3_10ProgUpdate14write_io_linesNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StderrEB5_(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.ad, ptr noalias nofree noundef align 8 dereferenceable(8) %i.c) #27, !noalias !851 ; 4 uses
  %.not.i.i7.i.i = icmp eq ptr %i.nr, null
  br i1 %.not.i.i7.i.i, label %_RNvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB2_10ProgUpdate14print_io_lines.exit.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1103
  %i.ns = ptrtoint ptr %i.nr to i64               ; 2 uses
  %i.nt = and i64 %i.ns, 3
  switch i64 %i.nt, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbMXVmEvvZJf_5uu_dd.exit4.i.i.i.i
    i64 3, label %bb.ea
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbMXVmEvvZJf_5uu_dd.exit4.i.i.i.i
    i64 1, label %bb.eb
  ], !prof !113

bb.ea:                                            ; preds = %bb.dz
  %i.nu = icmp ult ptr %i.nr, inttoptr (i64 188978561024 to ptr)
  %i.nv = and i64 %i.ns, 1095216660480
  %i.nw = icmp ne i64 %i.nv, 1095216660480
  call void @llvm.assume(i1 %i.nu)
  call void @llvm.assume(i1 %i.nw)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbMXVmEvvZJf_5uu_dd.exit4.i.i.i.i

bb.eb:                                            ; preds = %bb.dz
  %i.nx = getelementptr i8, ptr %i.nr, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nx) ]
  %i.ny = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.nx, ptr %i.ny, align 8, !alias.scope !1106, !noalias !1103
  store i8 3, ptr %i.b, align 8, !alias.scope !1106, !noalias !1103
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ny) #27, !noalias !1103
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbMXVmEvvZJf_5uu_dd.exit4.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbMXVmEvvZJf_5uu_dd.exit4.i.i.i.i: ; preds = %bb.eb, %bb.ea, %bb.dz, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1103
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error13set_exit_code(i32 noundef 1) #27, !noalias !1098
  br label %_RNvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB2_10ProgUpdate14print_io_lines.exit.i.i.i

_RNvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB2_10ProgUpdate14print_io_lines.exit.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbMXVmEvvZJf_5uu_dd.exit4.i.i.i.i, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1098
  br label %_RNvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB2_10ProgUpdate17print_final_stats.exit.i.i

_RNvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB2_10ProgUpdate17print_final_stats.exit.i.i: ; preds = %_RNvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB2_10ProgUpdate14print_io_lines.exit.i.i.i, %bb.dx, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !851
  br label %_RNvYNCNvNtCsbMXVmEvvZJf_5uu_dd8progress16gen_prog_updater0INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceuE9call_onceB8_.exit

bb.ec:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1109
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.a, align 8, !noalias !1109
  %i.nz = call fastcc { ptr, ptr } @_RINvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB3_10ProgUpdate15write_prog_lineNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StderrEB5_(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.ad, ptr noalias nofree noundef align 8 dereferenceable(8) %i.a, i1 noundef zeroext true) #27, !noalias !851 ; 2 uses
  %i.oa = extractvalue { ptr, ptr } %i.nz, 0      ; 3 uses
  %i.ob = extractvalue { ptr, ptr } %i.nz, 1      ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.oa, null
  br i1 %.not.i.i.i, label %_RNvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB2_10ProgUpdate17reprint_prog_line.exit.i.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ob) ]
  %i.oc = load ptr, ptr %i.ob, align 8, !invariant.load !8, !noalias !1109 ; 2 uses
  %.not.i.i4.i.i.i = icmp eq ptr %i.oc, null
  br i1 %.not.i.i4.i.i.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void %i.oc(ptr noundef nonnull %i.oa) #33, !noalias !1109, !inline_history !1112
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %i.od = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.oe = load i64, ptr %i.od, align 8, !range !184, !invariant.load !8, !noalias !1109 ; 2 uses
  %i.of = icmp eq i64 %i.oe, 0
  br i1 %i.of, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsbMXVmEvvZJf_5uu_dd.exit6.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i5.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i5.i.i.i: ; preds = %bb.ef
  %i.og = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  %i.oh = load i64, ptr %i.og, align 8, !range !601, !invariant.load !8, !noalias !1109
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.oa, i64 noundef %i.oe, i64 noundef range(i64 1, -9223372036854775807) %i.oh) #27, !noalias !1109
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsbMXVmEvvZJf_5uu_dd.exit6.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsbMXVmEvvZJf_5uu_dd.exit6.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i5.i.i.i, %bb.ef
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error13set_exit_code(i32 noundef 1) #27, !noalias !1109
  br label %_RNvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB2_10ProgUpdate17reprint_prog_line.exit.i.i

_RNvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB2_10ProgUpdate17reprint_prog_line.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsbMXVmEvvZJf_5uu_dd.exit6.i.i.i, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1109
  br label %bb.eg

bb.eg:                                            ; preds = %_RNvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB2_10ProgUpdate17reprint_prog_line.exit.i.i, %bb.dv, %bb.du
  %.sroa.0.1.i.i = phi i8 [ 1, %_RNvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB2_10ProgUpdate17reprint_prog_line.exit.i.i ], [ %.sroa.0.0.i.i, %bb.du ], [ 0, %bb.dv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !851
  br label %bb.w

_RNvYNCNvNtCsbMXVmEvvZJf_5uu_dd8progress16gen_prog_updater0INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceuE9call_onceB8_.exit: ; preds = %.loopexit.i.i, %_RNvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB2_10ProgUpdate17print_final_stats.exit.i.i
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCNvNtCsbMXVmEvvZJf_5uu_dd8progress16gen_prog_updater0EBH_(i64 %.val.i.i, ptr %.val5.i.i) #27, !noalias !845
  call void asm sideeffect "", "~{memory}"() #27, !srcloc !833
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNtNtCsh036I4OHgIr_6uucore4mods2io16read_and_discardNtNtCs2vKOLqTMYjT_3std2fs4FileECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 10 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 6 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 6 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %2) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  %.not = icmp eq i64 %..i, 0
  br i1 %.not, label %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsbMXVmEvvZJf_5uu_dd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1116)
  %..i14.i.i = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 range(i64 0, -1) 8) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1119
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.f, i64 0, ptr nonnull inttoptr (i64 1 to ptr), i64 noundef %..i14.i.i, i64 noundef 1, i64 noundef 1) #27, !noalias !1119
  %i.k = load i64, ptr %i.f, align 8, !range !22, !noalias !1119, !noundef !8
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %.thread, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbMXVmEvvZJf_5uu_dd.exit.i

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1119
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit18

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbMXVmEvvZJf_5uu_dd.exit.i: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !1119, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1119
  store ptr %i.n, ptr %i.i, align 8, !alias.scope !1119
  %i.o = icmp sgt i64 %..i14.i.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i.i, ptr %i.h, align 8, !alias.scope !1119
  br label %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsbMXVmEvvZJf_5uu_dd.exit

_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsbMXVmEvvZJf_5uu_dd.exit: ; preds = %bb.a, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbMXVmEvvZJf_5uu_dd.exit.i
  %.not77 = icmp eq i64 %1, 0
  br i1 %.not77, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsbMXVmEvvZJf_5uu_dd.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.ak
  %.sroa.05.074 = phi i64 [ 0, %.lr.ph ], [ %.sroa.05.1, %bb.ak ] ; 4 uses
  %i.aa = sub nuw i64 %1, %.sroa.05.074
  %..i14 = call noundef i64 @llvm.umin.i64(i64 %2, i64 %i.aa) ; 2 uses
  store i64 0, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %0, ptr %i.g, align 8
  store i64 %..i14, ptr %i.p, align 8
  store i64 %..i14, ptr %i.q, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  %i.ab = load i64, ptr %i.h, align 8, !range !184, !alias.scope !1123, !noalias !1120, !noundef !8 ; 3 uses
  %i.ac = icmp samesign ult i64 %i.ab, 32
  br i1 %i.ac, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.ad = call fastcc { i64, ptr } @_RINvNvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #27 ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ad, 0
  %i.af = extractvalue { i64, ptr } %i.ad, 1      ; 2 uses
  %i.ag = trunc nuw i64 %i.ae to i1
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = ptrtoint ptr %i.af to i64
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.ai = icmp eq ptr %i.af, null
  br i1 %i.ai, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.thread29.thread, label %._crit_edge88.i

._crit_edge88.i:                                  ; preds = %bb.f
  %.pre.pre.i = load i64, ptr %i.j, align 8, !alias.scope !1123, !noalias !1120
  %.pre81.pre.i = load i64, ptr %i.h, align 8, !range !184, !alias.scope !1123, !noalias !1120
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge88.i, %bb.c
  %.ph = phi i64 [ %i.ab, %bb.c ], [ %.pre81.pre.i, %._crit_edge88.i ]
  %.ph187 = phi i64 [ 0, %bb.c ], [ %.pre.pre.i, %._crit_edge88.i ]
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.y
  %i.aj = phi i64 [ %i.be, %bb.y ], [ %.ph, %.preheader ] ; 3 uses
  %i.ak = phi i64 [ %i.dd, %bb.y ], [ %.ph187, %.preheader ] ; 2 uses
  %.sroa.037.3.i = phi i64 [ %.sroa.037.4.i, %bb.y ], [ 8192, %.preheader ] ; 5 uses
  %i.al = icmp eq i64 %i.ak, %i.aj
  %i.am = icmp eq i64 %i.aj, %i.ab
  %or.cond46.i = and i1 %i.am, %i.al
  br i1 %or.cond46.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %bb.g
  %i.an = phi i64 [ %.pre83.i, %._crit_edge.i ], [ %i.aj, %bb.g ] ; 5 uses
  %i.ao = phi i64 [ %.pre82.i, %._crit_edge.i ], [ %i.ak, %bb.g ] ; 8 uses
  %i.ap = icmp sgt i64 %i.ao, -1
  call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp eq i64 %i.ao, %i.an
  %.pre84.i = load ptr, ptr %i.i, align 8, !alias.scope !1123, !noalias !1120 ; 2 uses
  br i1 %i.aq, label %bb.m, label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.ar = call fastcc { i64, ptr } @_RINvNvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #27 ; 2 uses
  %i.as = extractvalue { i64, ptr } %i.ar, 0
  %i.at = extractvalue { i64, ptr } %i.ar, 1      ; 2 uses
  %i.au = trunc nuw i64 %i.as to i1
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.av = ptrtoint ptr %i.at to i64
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.aw = icmp eq ptr %i.at, null
  %.pre82.i = load i64, ptr %i.j, align 8, !alias.scope !1123, !noalias !1120 ; 3 uses
  br i1 %i.aw, label %bb.l, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.k
  %.pre83.i = load i64, ptr %i.h, align 8, !range !184, !alias.scope !1123, !noalias !1120
  br label %bb.h

bb.l:                                             ; preds = %bb.k
  %i.ax = icmp sgt i64 %.pre82.i, -1
  call void @llvm.assume(i1 %i.ax)
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.thread29

bb.m:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  %i.ay = add nuw i64 %i.an, 32
  %i.az = shl nuw i64 %i.an, 1
  %..i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ay, i64 range(i64 0, -1) %i.az) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1131
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.d, i64 %i.an, ptr %.pre84.i, i64 noundef %..i.i.i.i, i64 noundef 1, i64 noundef 1) #27, !noalias !1131
  %i.ba = load i64, ptr %i.d, align 8, !range !22, !noalias !1131, !noundef !8
  %i.bb = trunc nuw i64 %i.ba to i1
  br i1 %i.bb, label %bb.n, label %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsbMXVmEvvZJf_5uu_dd.exit.i

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1131
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.thread

_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsbMXVmEvvZJf_5uu_dd.exit.i: ; preds = %bb.m
  %i.bc = load ptr, ptr %i.r, align 8, !noalias !1131, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1131
  store ptr %i.bc, ptr %i.i, align 8, !alias.scope !1132, !noalias !1120
  %i.bd = icmp sgt i64 %..i.i.i.i, -1
  call void @llvm.assume(i1 %i.bd)
  store i64 %..i.i.i.i, ptr %i.h, align 8, !alias.scope !1132, !noalias !1120
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsbMXVmEvvZJf_5uu_dd.exit.i, %bb.h
  %i.be = phi i64 [ %i.an, %bb.h ], [ %..i.i.i.i, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsbMXVmEvvZJf_5uu_dd.exit.i ] ; 2 uses
  %i.bf = phi ptr [ %.pre84.i, %bb.h ], [ %i.bc, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsbMXVmEvvZJf_5uu_dd.exit.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ao
  %i.bh = sub nsw i64 %i.be, %i.ao                ; 2 uses
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.037.3.i, i64 %i.bh) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1133
  store ptr %i.bg, ptr %i.e, align 8, !noalias !1133
  store i64 %..i.i, ptr %i.s, align 8, !noalias !1133
  store i64 0, ptr %i.t, align 8, !noalias !1133
  store i8 0, ptr %i.u, align 8, !noalias !1133
  %.promoted.i = load i64, ptr %i.q, align 8, !alias.scope !1134, !noalias !1137 ; 2 uses
  %i.bi = icmp eq i64 %.promoted.i, 0
  br i1 %i.bi, label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.thread.thread.i, label %.lr.ph.i

_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.thread.thread.i: ; preds = %bb.o
  store i64 %i.ao, ptr %i.j, align 8, !alias.scope !1123, !noalias !1120
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.thread34

.lr.ph.i:                                         ; preds = %bb.o
  %.val15.i.i = load ptr, ptr %i.g, align 8, !alias.scope !1120, !noalias !1123, !nonnull !8, !align !1139 ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit.i, %.lr.ph.i
  %i.bj = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.cg, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit.i ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  %i.bk = load i64, ptr %i.s, align 8, !alias.scope !1141, !noalias !1142, !noundef !8
  %i.bl = load i64, ptr %i.t, align 8, !alias.scope !1141, !noalias !1142, !noundef !8 ; 4 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = icmp ult i64 %i.bj, %i.bm
  br i1 %i.bn, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = call noundef ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %.val15.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e) #27, !noalias !1142
  %i.bp = load i64, ptr %i.t, align 8, !alias.scope !1141, !noalias !1142, !noundef !8 ; 2 uses
  %.neg.i.i = add i64 %i.bl, %i.bj
  %i.bq = sub i64 %.neg.i.i, %i.bp
  br label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.i

bb.r:                                             ; preds = %bb.p
  %i.br = load i8, ptr %i.u, align 8, !range !44, !alias.scope !1141, !noalias !1142, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1143
  %i.bs = load ptr, ptr %i.e, align 8, !alias.scope !1141, !noalias !1142, !nonnull !8, !noundef !8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bl ; 2 uses
  %i.bu = trunc nuw i8 %i.br to i1
  store ptr %i.bt, ptr %i.c, align 8, !noalias !1143
  store i64 %i.bj, ptr %i.v, align 8, !noalias !1143
  store i64 0, ptr %i.w, align 8, !noalias !1143
  store i8 0, ptr %i.x, align 8, !noalias !1143
  br i1 %i.bu, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = call noundef ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %.val15.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #27, !noalias !1143 ; 2 uses
  %i.bw = load i8, ptr %i.x, align 8, !range !44, !noalias !1143, !noundef !8
  %i.bx = trunc nuw i8 %i.bw to i1
  %i.by = load i64, ptr %i.w, align 8, !noalias !1143, !noundef !8 ; 2 uses
  br i1 %i.bx, label %_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCsbMXVmEvvZJf_5uu_dd.exit.i.i, label %bb.u

bb.t:                                             ; preds = %bb.r
  store i8 1, ptr %i.x, align 8, !noalias !1143
  %i.bz = call noundef ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %.val15.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #27, !noalias !1143
  %i.ca = load i64, ptr %i.w, align 8, !noalias !1143, !noundef !8
  br label %bb.u

bb.u:                                             ; preds = %_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCsbMXVmEvvZJf_5uu_dd.exit.i.i, %bb.t, %bb.s
  %.sroa.09.0.i.i = phi i64 [ %i.ca, %bb.t ], [ %i.by, %_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCsbMXVmEvvZJf_5uu_dd.exit.i.i ], [ %i.by, %bb.s ] ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.bz, %bb.t ], [ %i.bv, %_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCsbMXVmEvvZJf_5uu_dd.exit.i.i ], [ %i.bv, %bb.s ]
  %i.cb = add i64 %.sroa.09.0.i.i, %i.bl          ; 2 uses
  store i64 %i.cb, ptr %i.t, align 8, !alias.scope !1141, !noalias !1142
  %i.cc = sub i64 %i.bj, %.sroa.09.0.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1143
  br label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.i

_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCsbMXVmEvvZJf_5uu_dd.exit.i.i: ; preds = %bb.s
  %i.cd = sub nuw i64 %i.bm, %i.bj
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bj
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ce, i8 0, i64 range(i64 0, -9223372036854775808) %i.cd, i1 false), !alias.scope !1144, !noalias !1149
  store i8 1, ptr %i.u, align 8, !alias.scope !1141, !noalias !1142
  br label %bb.u

_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.i: ; preds = %bb.u, %bb.q
  %i.cf = phi i64 [ %i.bp, %bb.q ], [ %i.cb, %bb.u ] ; 2 uses
  %i.cg = phi i64 [ %i.bq, %bb.q ], [ %i.cc, %bb.u ] ; 5 uses
  %.sroa.0.0.i47.i = phi ptr [ %i.bo, %bb.q ], [ %.sroa.01.0.i.i, %bb.u ] ; 7 uses
  %i.ch = ptrtoint ptr %.sroa.0.0.i47.i to i64    ; 5 uses
  %.not45.i = icmp eq ptr %.sroa.0.0.i47.i, null
  br i1 %.not45.i, label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.thread.i.loopexit, label %bb.v

bb.v:                                             ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.i
  %i.ci = and i64 %i.ch, 3
  switch i64 %i.ci, label %.unreachabledefault [
    i64 2, label %.split.i
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
    i64 0, label %.split58.i
    i64 1, label %.split57.i
  ], !prof !113

.unreachabledefault:                              ; preds = %bb.v
  unreachable

default.unreachable:                              ; preds = %bb.al, %bb.ae
  unreachable

.split.i:                                         ; preds = %bb.v
  %i.cj = lshr i64 %i.ch, 32
  %i.ck = trunc nuw i64 %i.cj to i32
  %i.cl = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #27, !noalias !1133
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !1133, !nonnull !8, !noundef !8
  %i.co = call noundef zeroext i1 %i.cn(i32 noundef %i.ck) #27, !noalias !1133, !inline_history !1151
  br i1 %i.co, label %.thread61.i, label %.split..thread_crit_edge.i

.split..thread_crit_edge.i:                       ; preds = %.split.i
  store i64 %i.cg, ptr %i.q, align 8
  %.pre85.i = load i64, ptr %i.t, align 8, !noalias !1133
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit

.split58.i:                                       ; preds = %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i47.i, i64 16
  %i.cq = load i8, ptr %i.cp, align 8, !range !1152, !noalias !1133, !noundef !8
  %i.cr = icmp eq i8 %i.cq, 35
  br i1 %i.cr, label %.thread61.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.loopexit

.split57.i:                                       ; preds = %bb.v
  %i.cs = getelementptr i8, ptr %.sroa.0.0.i47.i, i64 31
  %i.ct = load i8, ptr %i.cs, align 8, !range !1152, !noalias !1133, !noundef !8
  %i.cu = icmp eq i8 %i.ct, 35
  br i1 %i.cu, label %bb.x, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.loopexit

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i: ; preds = %bb.v
  %i.cv = lshr i64 %i.ch, 32
  %i.cw = icmp ult ptr %.sroa.0.0.i47.i, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i = trunc i64 %i.cv to i8
  %spec.select.i.i.i.i = select i1 %i.cw, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.cx = icmp ne i8 %spec.select.i.i.i.i, -1
  call void @llvm.assume(i1 %i.cx)
  %i.cy = icmp eq i8 %spec.select.i.i.i.i, 35
  br i1 %i.cy, label %bb.w, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.loopexit

.thread61.i:                                      ; preds = %.split58.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1153
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit.i

bb.w:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1156
  %i.cz = and i64 %i.ch, 1095216660480
  %i.da = icmp ne i64 %i.cz, 1095216660480
  call void @llvm.assume(i1 %i.cw)
  call void @llvm.assume(i1 %i.da)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit.i

bb.x:                                             ; preds = %.split57.i
  %i.db = getelementptr i8, ptr %.sroa.0.0.i47.i, i64 -1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1158
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.db) ]
  store ptr %i.db, ptr %i.y, align 8, !alias.scope !1160, !noalias !1158
  store i8 3, ptr %i.b, align 8, !alias.scope !1160, !noalias !1158
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #27, !noalias !1158
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit.i: ; preds = %bb.x, %bb.w, %.thread61.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1158
  %i.dc = icmp eq i64 %i.cg, 0
  br i1 %i.dc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit._RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.thread.loopexit_crit_edge.i, label %bb.p

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit._RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.thread.loopexit_crit_edge.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit.i
  store i64 0, ptr %i.q, align 8
  %.pre86.pre.i = load i64, ptr %i.t, align 8, !noalias !1133
  br label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.thread.i

_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.thread.i.loopexit: ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.i
  store i64 %i.cg, ptr %i.q, align 8
  br label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.thread.i

_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.thread.i: ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.thread.i.loopexit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit._RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.thread.loopexit_crit_edge.i
  %.pre86.i = phi i64 [ %.pre86.pre.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit._RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.thread.loopexit_crit_edge.i ], [ %i.cf, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.thread.i.loopexit ] ; 3 uses
  %.pre87.i = load i8, ptr %i.u, align 8, !range !44, !noalias !1133
  %i.dd = add i64 %.pre86.i, %i.ao                ; 3 uses
  store i64 %i.dd, ptr %i.j, align 8, !alias.scope !1123, !noalias !1120
  %i.de = icmp eq i64 %.pre86.i, 0
  br i1 %i.de, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.thread34, label %bb.z

bb.y:                                             ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z
  %.sroa.037.4.i = phi i64 [ -1, %bb.ac ], [ %i.di, %bb.ab ], [ %.sroa.037.3.i, %bb.aa ], [ -1, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1133
  br label %bb.g

bb.z:                                             ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.thread.i
  %i.df = trunc nuw i8 %.pre87.i to i1
  br i1 %i.df, label %bb.aa, label %bb.y

bb.aa:                                            ; preds = %bb.z
  %i.dg = icmp uge i64 %i.bh, %.sroa.037.3.i
  %i.dh = icmp eq i64 %.pre86.i, %..i.i
  %or.cond.i = and i1 %i.dg, %i.dh
  br i1 %or.cond.i, label %bb.ab, label %bb.y

bb.ab:                                            ; preds = %bb.aa
  %i.di = shl nuw i64 %.sroa.037.3.i, 1
  %i.dj = icmp slt i64 %.sroa.037.3.i, 0
  br i1 %i.dj, label %bb.ac, label %bb.y, !prof !33

bb.ac:                                            ; preds = %bb.ab
  br label %bb.y

_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.thread: ; preds = %bb.e, %bb.j, %bb.n
  %.sroa.8.1.i.ph = phi i64 [ 163208757251, %bb.n ], [ %i.av, %bb.j ], [ %i.ah, %bb.e ] ; 2 uses
  %i.dk = inttoptr i64 %.sroa.8.1.i.ph to ptr
  br label %bb.ae

_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.thread34: ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.thread.i, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.thread.thread.i
  %.sroa.8.0.i.ph = phi i64 [ %i.ao, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.thread.thread.i ], [ %i.dd, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1133
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.thread29

_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.loopexit: ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %.split57.i, %.split58.i
  store i64 %i.cg, ptr %i.q, align 8
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit

_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit: ; preds = %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.loopexit, %.split..thread_crit_edge.i
  %3 = phi i64 [ %.pre85.i, %.split..thread_crit_edge.i ], [ %i.cf, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.loopexit ]
  %i.dl = add i64 %3, %i.ao
  store i64 %i.dl, ptr %i.j, align 8, !alias.scope !1123, !noalias !1120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1133
  br label %bb.ae

.loopexit:                                        ; preds = %bb.ak, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsbMXVmEvvZJf_5uu_dd.exit, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.thread29.thread
  %.sroa.05.065 = phi i64 [ %.sroa.05.074, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.thread29.thread ], [ 0, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsbMXVmEvvZJf_5uu_dd.exit ], [ %.sroa.05.1, %bb.ak ] ; 2 uses
  %.val11 = load i64, ptr %i.h, align 8, !range !184, !noundef !8 ; 2 uses
  %i.dm = icmp eq i64 %.val11, 0
  br i1 %i.dm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit18, label %bb.ad

bb.ad:                                            ; preds = %.loopexit
  %.val12 = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef %.val11, i64 noundef range(i64 1, -9223372036854775807) 1) #27
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit18

bb.ae:                                            ; preds = %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.thread
  %i.dn = phi ptr [ %i.dk, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.thread ], [ %.sroa.0.0.i47.i, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit ] ; 6 uses
  %.sroa.8.1.i26 = phi i64 [ %.sroa.8.1.i.ph, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.thread ], [ %i.ch, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dn) ]
  %i.do = and i64 %.sroa.8.1.i26, 3               ; 2 uses
  switch i64 %i.do, label %default.unreachable [
    i64 2, label %bb.af
    i64 3, label %bb.ag
    i64 0, label %bb.ah
    i64 1, label %bb.ai
  ], !prof !113

bb.af:                                            ; preds = %bb.ae
  %i.dp = lshr i64 %.sroa.8.1.i26, 32
  %i.dq = trunc nuw i64 %i.dp to i32
  %i.dr = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #27
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !nonnull !8, !noundef !8
  %i.du = call noundef i8 %i.dt(i32 noundef %i.dq) #27, !inline_history !1163
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit

bb.ag:                                            ; preds = %bb.ae
  %i.dv = lshr i64 %.sroa.8.1.i26, 32
  %i.dw = icmp ult ptr %i.dn, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.dv to i8  ; 2 uses
  %i.dx = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.dw)
  call void @llvm.assume(i1 %i.dx)
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit

bb.ah:                                            ; preds = %bb.ae
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dz = load i8, ptr %i.dy, align 8, !range !1152, !noundef !8
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit

bb.ai:                                            ; preds = %bb.ae
  %i.ea = getelementptr i8, ptr %i.dn, i64 31
  %i.eb = load i8, ptr %i.ea, align 8, !range !1152, !noundef !8
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.af, %bb.ag, %bb.ah, %bb.ai
  %.sroa.0.0.i15 = phi i8 [ %i.du, %bb.af ], [ %switch.idx.cast.i.i.i, %bb.ag ], [ %i.dz, %bb.ah ], [ %i.eb, %bb.ai ]
  %i.ec = icmp eq i8 %.sroa.0.0.i15, 35
  br i1 %i.ec, label %bb.al, label %bb.ao

_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.thread29: ; preds = %bb.l, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.thread34
  %.sroa.8.1.i32 = phi i64 [ %.sroa.8.0.i.ph, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.thread34 ], [ %.pre82.i, %bb.l ] ; 2 uses
  %i.ed = icmp eq i64 %.sroa.8.1.i32, 0
  br i1 %i.ed, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.thread29.thread, label %bb.aj

_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.thread29.thread: ; preds = %bb.f, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.thread29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.loopexit

bb.aj:                                            ; preds = %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.thread29
  %i.ee = add i64 %.sroa.8.1.i32, %.sroa.05.074
  br label %bb.ak

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit18: ; preds = %bb.ad, %.loopexit, %bb.ap, %bb.ao, %.thread
  %.sroa.4.0 = phi i64 [ %.sroa.8.1.i26, %bb.ap ], [ 163208757251, %.thread ], [ %.sroa.8.1.i26, %bb.ao ], [ %.sroa.05.065, %.loopexit ], [ %.sroa.05.065, %bb.ad ]
  %.sroa.0.0 = phi i64 [ 1, %bb.ap ], [ 1, %.thread ], [ 1, %bb.ao ], [ 0, %.loopexit ], [ 0, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ef = inttoptr i64 %.sroa.4.0 to ptr
  %i.eg = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.eh = insertvalue { i64, ptr } %i.eg, ptr %i.ef, 1
  ret { i64, ptr } %i.eh

bb.ak:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit, %bb.aj
  %.sroa.05.1 = phi i64 [ %.sroa.05.074, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit ], [ %i.ee, %bb.aj ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ei = icmp ult i64 %.sroa.05.1, %1
  br i1 %i.ei, label %bb.c, label %.loopexit

bb.al:                                            ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1164
  switch i64 %i.do, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit
    i64 3, label %bb.am
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit
    i64 1, label %bb.an
  ], !prof !113

bb.am:                                            ; preds = %bb.al
  %i.ej = icmp ult ptr %i.dn, inttoptr (i64 188978561024 to ptr)
  %i.ek = and i64 %.sroa.8.1.i26, 1095216660480
  %i.el = icmp ne i64 %i.ek, 1095216660480
  call void @llvm.assume(i1 %i.ej)
  call void @llvm.assume(i1 %i.el)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit

bb.an:                                            ; preds = %bb.al
  %i.em = getelementptr i8, ptr %i.dn, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.em) ]
  store ptr %i.em, ptr %i.z, align 8, !alias.scope !1167, !noalias !1164
  store i8 3, ptr %i.a, align 8, !alias.scope !1167, !noalias !1164
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #27, !noalias !1164
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit: ; preds = %bb.al, %bb.al, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1164
  br label %bb.ak

bb.ao:                                            ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.val.pre = load i64, ptr %i.h, align 8, !range !184 ; 2 uses
  %i.en = icmp eq i64 %.val.pre, 0
  br i1 %i.en, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit18, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.val10 = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %.val.pre, i64 noundef range(i64 1, -9223372036854775807) 1) #27
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit18
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef ptr @_RINvNtNtNtCsh036I4OHgIr_6uucore8features6format10num_format12write_outputQINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %2, i64 noundef %3, i8 noundef range(i8 0, 3) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [64 x i8], align 8                ; 11 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [48 x i8], align 8                ; 10 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [48 x i8], align 8                ; 9 uses
  %i.q = icmp eq i64 %3, 0
  br i1 %i.q, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !8, !noundef !8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noundef !8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !1182, !noalias !1185, !noundef !8 ; 5 uses
  %i.x = load i64, ptr %0, align 8, !range !184, !alias.scope !1182, !noalias !1185, !noundef !8 ; 2 uses
  %i.y = sub i64 %i.x, %i.w
  %i.z = icmp ugt i64 %i.u, %i.y
  br i1 %i.z, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i, !prof !33

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i.i.i.i: ; preds = %bb.b
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.w, i64 noundef range(i64 0, -9223372036854775808) %i.u, i64 noundef 1, i64 noundef 1) #27, !noalias !1185
  %i.aa = load i64, ptr %i.v, align 8, !alias.scope !1190, !noalias !1185, !noundef !8 ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, -1
  tail call void @llvm.assume(i1 %i.ab)
  br label %bb.c

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i: ; preds = %bb.b
  %i.ac = icmp sgt i64 %i.w, -1
  tail call void @llvm.assume(i1 %i.ac)
  %.not.i.i.i.i.i = icmp samesign eq i64 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core2io5implsQINtNtCs7tKScEop1B6_5alloc3vec3VechENtNtB6_5write5Write9write_allCsbMXVmEvvZJf_5uu_dd.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i.i.i.i
  %i.ad = phi i64 [ %i.aa, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i.i.i.i ], [ %i.w, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !1190, !noalias !1185, !nonnull !8, !noundef !8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull readonly align 1 %i.s, i64 range(i64 0, -9223372036854775808) %i.u, i1 false), !noalias !1190
  %.pre167 = load i64, ptr %0, align 8, !range !184, !alias.scope !1191, !noalias !1202
  br label %_RNvXs_NtNtCs6JMX4GRUq9U_4core2io5implsQINtNtCs7tKScEop1B6_5alloc3vec3VechENtNtB6_5write5Write9write_allCsbMXVmEvvZJf_5uu_dd.exit

_RNvXs_NtNtCs6JMX4GRUq9U_4core2io5implsQINtNtCs7tKScEop1B6_5alloc3vec3VechENtNtB6_5write5Write9write_allCsbMXVmEvvZJf_5uu_dd.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i, %bb.c
  %i.ah = phi i64 [ %.pre167, %bb.c ], [ %i.x, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i ]
  %i.ai = phi i64 [ %i.ad, %bb.c ], [ %i.w, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i ]
  %i.aj = add nuw i64 %i.ai, %i.u                 ; 6 uses
  store i64 %i.aj, ptr %i.v, align 8, !alias.scope !1190, !noalias !1185
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !8, !noundef !8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noundef !8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1207)
end_hunk_0
