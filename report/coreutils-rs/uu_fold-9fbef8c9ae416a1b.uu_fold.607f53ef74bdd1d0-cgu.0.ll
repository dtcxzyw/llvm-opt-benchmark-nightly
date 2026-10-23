Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_fold-9fbef8c9ae416a1b.uu_fold.607f53ef74bdd1d0-cgu.0?download=true
inline.NumInlined: 349
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvCs8hEv8bFEvN4_7uu_fold4fold:bb.a
  %i.cv = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w) #19
  store ptr %i.cv, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.cw = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #19 ; 2 uses
  %i.cx = extractvalue { ptr, i64 } %i.cw, 0
  %i.cy = extractvalue { ptr, i64 } %i.cw, 1
  store ptr %i.cx, ptr %i.v, align 8
  store i64 %i.cy, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.v, ptr %i.u, align 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs8hEv8bFEvN4_7uu_fold, ptr %.sroa.427.0..sroa_idx, align 8
  store ptr %i.y, ptr %i.an, align 8
  store ptr @_RNvXsm_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorENtNtCs6JMX4GRUq9U_4core3fmt7Display3fmtCs8hEv8bFEvN4_7uu_fold, ptr %.sroa.431.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !420
  store ptr %i.x, ptr %i.r, align 8, !noalias !420
  store ptr null, ptr %i.ao, align 8, !noalias !420
  %i.cz = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @14, ptr noundef nonnull @29, ptr noundef nonnull %i.u) #19
  %i.da = load ptr, ptr %i.ao, align 8, !noalias !420, !noundef !4 ; 7 uses
  %.not.i5.i = icmp eq ptr %i.da, null            ; 2 uses
  br i1 %i.cz, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  br i1 %.not.i5.i, label %bb.r, label %bb.s, !prof !7

bb.n:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  br i1 %.not.i5.i, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs8hEv8bFEvN4_7uu_fold.exit.i.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !420
  %i.db = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.dc = and i64 %i.db, 3
  switch i64 %i.dc, label %.unreachabledefault [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8hEv8bFEvN4_7uu_fold.exit.i.i.i
    i64 3, label %bb.p
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8hEv8bFEvN4_7uu_fold.exit.i.i.i
    i64 1, label %bb.q
  ], !prof !13

.unreachabledefault:                              ; preds = %bb.o
  unreachable

default.unreachable:                              ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs8hEv8bFEvN4_7uu_fold.exit.i.i, %bb.s, %bb.cv, %bb.cq
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.dd = icmp ult ptr %i.da, inttoptr (i64 188978561024 to ptr)
  %i.de = and i64 %i.db, 1095216660480
  %i.df = icmp ne i64 %i.de, 1095216660480
  call void @llvm.assume(i1 %i.dd)
  call void @llvm.assume(i1 %i.df)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8hEv8bFEvN4_7uu_fold.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.dg = getelementptr i8, ptr %i.da, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dg) ]
  store ptr %i.dg, ptr %i.ap, align 8, !alias.scope !421, !noalias !420
  store i8 3, ptr %i.q, align 8, !alias.scope !421, !noalias !420
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap) #19
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8hEv8bFEvN4_7uu_fold.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8hEv8bFEvN4_7uu_fold.exit.i.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !420
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs8hEv8bFEvN4_7uu_fold.exit.i.thread

bb.r:                                             ; preds = %bb.m
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #21
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs8hEv8bFEvN4_7uu_fold.exit.i.thread: ; preds = %bb.n, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8hEv8bFEvN4_7uu_fold.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !420
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8hEv8bFEvN4_7uu_fold.exit

bb.s:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.dh = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.di = and i64 %i.dh, 3
  switch i64 %i.di, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8hEv8bFEvN4_7uu_fold.exit.i
    i64 3, label %bb.t
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8hEv8bFEvN4_7uu_fold.exit.i
    i64 1, label %bb.u
  ], !prof !13

bb.t:                                             ; preds = %bb.s
  %i.dj = icmp ult ptr %i.da, inttoptr (i64 188978561024 to ptr)
  %i.dk = and i64 %i.dh, 1095216660480
  %i.dl = icmp ne i64 %i.dk, 1095216660480
  call void @llvm.assume(i1 %i.dj)
  call void @llvm.assume(i1 %i.dl)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8hEv8bFEvN4_7uu_fold.exit.i

bb.u:                                             ; preds = %bb.s
  %i.dm = getelementptr i8, ptr %i.da, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dm) ]
  store ptr %i.dm, ptr %i.aq, align 8, !alias.scope !422
  store i8 3, ptr %i.p, align 8, !alias.scope !422
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aq) #19
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8hEv8bFEvN4_7uu_fold.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8hEv8bFEvN4_7uu_fold.exit.i: ; preds = %bb.u, %bb.t, %bb.s, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8hEv8bFEvN4_7uu_fold.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8hEv8bFEvN4_7uu_fold.exit: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs8hEv8bFEvN4_7uu_fold.exit.i.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8hEv8bFEvN4_7uu_fold.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.val39 = load ptr, ptr %i.x, align 8, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.val39, i64 12 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !noundef !4
  %i.dp = add i32 %i.do, -1                       ; 2 uses
  store i32 %i.dp, ptr %i.dn, align 4
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.v, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs8hEv8bFEvN4_7uu_fold.exit

bb.v:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8hEv8bFEvN4_7uu_fold.exit
  store atomic i64 0, ptr %.val39 monotonic, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %.val39, i64 8 ; 2 uses
  %i.ds = atomicrmw xchg ptr %i.dr, i32 0 release, align 4
  %i.dt = icmp eq i32 %i.ds, 2
  br i1 %i.dt, label %bb.w, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs8hEv8bFEvN4_7uu_fold.exit, !prof !7

bb.w:                                             ; preds = %bb.v
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.dr) #19
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs8hEv8bFEvN4_7uu_fold.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs8hEv8bFEvN4_7uu_fold.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8hEv8bFEvN4_7uu_fold.exit, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.val40 = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !423)
  call void @llvm.experimental.noalias.scope.decl(metadata !424)
  %i.du = load i64, ptr %.val40, align 8, !range !12, !alias.scope !425, !noundef !4 ; 2 uses
  %i.dv = icmp sgt i64 %i.du, 0
  br i1 %i.dv, label %bb.x, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs8hEv8bFEvN4_7uu_fold.exit.i.i

bb.x:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs8hEv8bFEvN4_7uu_fold.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %.val40, i64 8
  %.val1.i.i.i = load ptr, ptr %i.dw, align 8, !alias.scope !425, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.du, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !425
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs8hEv8bFEvN4_7uu_fold.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs8hEv8bFEvN4_7uu_fold.exit.i.i: ; preds = %bb.x, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs8hEv8bFEvN4_7uu_fold.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %.val40, i64 24
  %.val.i.i = load ptr, ptr %i.dx, align 8, !alias.scope !423, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !423
  %i.dy = ptrtoint ptr %.val.i.i to i64           ; 2 uses
  %i.dz = and i64 %i.dy, 3
  switch i64 %i.dz, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECs8hEv8bFEvN4_7uu_fold.exit
    i64 3, label %bb.y
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECs8hEv8bFEvN4_7uu_fold.exit
    i64 1, label %bb.z
  ], !prof !13

bb.y:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs8hEv8bFEvN4_7uu_fold.exit.i.i
  %i.ea = icmp ult ptr %.val.i.i, inttoptr (i64 188978561024 to ptr)
  %i.eb = and i64 %i.dy, 1095216660480
  %i.ec = icmp ne i64 %i.eb, 1095216660480
  call void @llvm.assume(i1 %i.ea)
  call void @llvm.assume(i1 %i.ec)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECs8hEv8bFEvN4_7uu_fold.exit

bb.z:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs8hEv8bFEvN4_7uu_fold.exit.i.i
  %i.ed = getelementptr i8, ptr %.val.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ed) ]
  store ptr %i.ed, ptr %i.ar, align 8, !alias.scope !426, !noalias !423
  store i8 3, ptr %i.o, align 8, !alias.scope !426, !noalias !423
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ar) #19, !noalias !423
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECs8hEv8bFEvN4_7uu_fold.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECs8hEv8bFEvN4_7uu_fold.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs8hEv8bFEvN4_7uu_fold.exit.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs8hEv8bFEvN4_7uu_fold.exit.i.i, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !423
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val40, i64 noundef 32, i64 noundef 8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %.backedge

.backedge:                                        ; preds = %bb.cj, %bb.cl, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECs8hEv8bFEvN4_7uu_fold.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.ee = icmp eq ptr %i.bt, %i.ai
  br i1 %i.ee, label %._crit_edge, label %bb.c

.split34:                                         ; preds = %.thread, %bb.f
  %i.ef = load i32, ptr %i.al, align 4, !range !14, !noundef !4
  store i32 %i.ef, ptr %i.aa, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !427
  %i.eg = call noundef dereferenceable_or_null(8192) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 8192, i64 noundef range(i64 1, 9) 1) #19, !noalias !427 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %bb.aa, label %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2_9BufReaderQDNtNtB6_4read4ReadEL_E13with_capacityCs8hEv8bFEvN4_7uu_fold.exit

bb.aa:                                            ; preds = %.split34
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 8192) #23, !noalias !428
  unreachable

_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2_9BufReaderQDNtNtB6_4read4ReadEL_E13with_capacityCs8hEv8bFEvN4_7uu_fold.exit: ; preds = %.split34, %.split36
  %.sroa.36.0 = phi ptr [ @30, %.split36 ], [ @28, %.split34 ] ; 2 uses
  %.sroa.32101.0 = phi ptr [ %i.ab, %.split36 ], [ %i.aa, %.split34 ] ; 2 uses
  %.sroa.0.0111 = phi ptr [ %i.ck, %.split36 ], [ %i.eg, %.split34 ] ; 7 uses
  %.sroa.023.1 = phi i1 [ false, %.split36 ], [ true, %.split34 ] ; 2 uses
  br i1 %2, label %bb.ab, label %bb.bd

bb.ab:                                            ; preds = %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2_9BufReaderQDNtNtB6_4read4ReadEL_E13with_capacityCs8hEv8bFEvN4_7uu_fold.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !429)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !430
  store i64 0, ptr %i.n, align 8, !noalias !430
  store ptr inttoptr (i64 1 to ptr), ptr %i.bn, align 8, !noalias !430
  store i64 0, ptr %i.bo, align 8, !noalias !430
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.36.0, i64 72
  br label %bb.ac

thread-pre-split.i:                               ; preds = %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs8hEv8bFEvN4_7uu_fold.exit53.i, %bb.au, %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs8hEv8bFEvN4_7uu_fold.exit.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs8hEv8bFEvN4_7uu_fold.exit.i
  %.sink.i = phi i64 [ %i.hl, %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs8hEv8bFEvN4_7uu_fold.exit53.i ], [ %i.gy, %bb.au ], [ %i.ff, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs8hEv8bFEvN4_7uu_fold.exit.i ], [ %i.gy, %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs8hEv8bFEvN4_7uu_fold.exit.i ] ; 2 uses
  %i.ej = phi ptr [ %i.fg, %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs8hEv8bFEvN4_7uu_fold.exit53.i ], [ %i.fg, %bb.au ], [ %i.fc, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs8hEv8bFEvN4_7uu_fold.exit.i ], [ %i.fg, %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs8hEv8bFEvN4_7uu_fold.exit.i ]
  %i.ek = phi i8 [ %i.eo, %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs8hEv8bFEvN4_7uu_fold.exit53.i ], [ %i.eo, %bb.au ], [ %9, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs8hEv8bFEvN4_7uu_fold.exit.i ], [ %i.eo, %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs8hEv8bFEvN4_7uu_fold.exit.i ]
  %i.el = phi i64 [ %i.ep, %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs8hEv8bFEvN4_7uu_fold.exit53.i ], [ %i.ep, %bb.au ], [ %10, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs8hEv8bFEvN4_7uu_fold.exit.i ], [ %i.ep, %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs8hEv8bFEvN4_7uu_fold.exit.i ]
  %i.em = phi i64 [ %i.eq, %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs8hEv8bFEvN4_7uu_fold.exit53.i ], [ %i.eq, %bb.au ], [ %10, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs8hEv8bFEvN4_7uu_fold.exit.i ], [ %i.eq, %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs8hEv8bFEvN4_7uu_fold.exit.i ]
  store i64 %.sink.i, ptr %i.bo, align 8, !noalias !430
  br label %bb.ac

bb.ac:                                            ; preds = %thread-pre-split.i, %bb.ab
  %i.en = phi ptr [ %i.ej, %thread-pre-split.i ], [ inttoptr (i64 1 to ptr), %bb.ab ]
  %i.eo = phi i8 [ %i.ek, %thread-pre-split.i ], [ 0, %bb.ab ] ; 5 uses
  %i.ep = phi i64 [ %i.el, %thread-pre-split.i ], [ 0, %bb.ab ] ; 5 uses
  %i.eq = phi i64 [ %i.em, %thread-pre-split.i ], [ 0, %bb.ab ] ; 5 uses
  %i.er = phi i64 [ %.sink.i, %thread-pre-split.i ], [ 0, %bb.ab ] ; 15 uses
  %.not.i54 = icmp ugt i64 %i.er, %5
  br i1 %.not.i54, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not.i.i55 = icmp ult i64 %i.eq, %i.ep
  br i1 %.not.i.i55, label %_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultRShNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_B1i_INtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCINvCs8hEv8bFEvN4_7uu_fold18fold_file_bytewiseQDNtNtNtB2a_2io4read4ReadEL_INtNtNtB45_8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEE0EB3j_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !431
  store ptr %.sroa.0.0111, ptr %i.m, align 8, !noalias !431
  store i64 8192, ptr %i.bp, align 8, !noalias !431
  store i64 0, ptr %i.bq, align 8, !noalias !431
  store i8 %i.eo, ptr %i.br, align 8, !noalias !431
  %i.es = load ptr, ptr %i.ei, align 8, !invariant.load !4, !noalias !432, !nonnull !4
  %i.et = call noundef ptr %i.es(ptr noundef nonnull %.sroa.32101.0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m) #22, !noalias !433, !inline_history !317 ; 2 uses
  %.not3.i.i = icmp eq ptr %i.et, null
  br i1 %.not3.i.i, label %6, label %.loopexit99.i

6:                                                ; preds = %bb.ae
  %7 = load i8, ptr %i.br, align 8, !range !8, !noalias !431, !noundef !4
  %8 = load i64, ptr %i.bq, align 8, !noalias !431, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !431
  br label %_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultRShNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_B1i_INtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCINvCs8hEv8bFEvN4_7uu_fold18fold_file_bytewiseQDNtNtNtB2a_2io4read4ReadEL_INtNtNtB45_8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEE0EB3j_.exit.i

.loopexit99.i:                                    ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !431
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i), !noalias !434
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.0.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 19) #19, !noalias !435
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !436
  %i.eu = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef 8) #19, !noalias !436 ; 4 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %bb.af, label %bb.ag, !prof !7

bb.af:                                            ; preds = %.loopexit99.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #23, !noalias !436
  unreachable

bb.ag:                                            ; preds = %.loopexit99.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eu, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, i64 24, i1 false), !noalias !435
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  store ptr %i.et, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !435
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i), !noalias !434
  br label %bb.aw

_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultRShNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_B1i_INtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCINvCs8hEv8bFEvN4_7uu_fold18fold_file_bytewiseQDNtNtNtB2a_2io4read4ReadEL_INtNtNtB45_8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEE0EB3j_.exit.i: ; preds = %bb.ad, %6
  %9 = phi i8 [ %i.eo, %bb.ad ], [ %7, %6 ]
  %10 = phi i64 [ %i.ep, %bb.ad ], [ %8, %6 ]     ; 4 uses
  %11 = phi i64 [ %i.eq, %bb.ad ], [ 0, %6 ]      ; 3 uses
  %12 = sub nuw i64 %10, %11                      ; 4 uses
  %13 = getelementptr inbounds nuw i8, ptr %.sroa.0.0111, i64 %11
  %i.ew = icmp eq i64 %10, %11
  br i1 %i.ew, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultRShNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_B1i_INtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCINvCs8hEv8bFEvN4_7uu_fold18fold_file_bytewiseQDNtNtNtB2a_2io4read4ReadEL_INtNtNtB45_8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEE0EB3j_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %i.ex = load i64, ptr %i.n, align 8, !range !6, !alias.scope !438, !noalias !430, !noundef !4
  %i.ey = sub nsw i64 %i.ex, %i.er
  %i.ez = icmp ugt i64 %12, %i.ey
  br i1 %i.ez, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs8hEv8bFEvN4_7uu_fold.exit.thread.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs8hEv8bFEvN4_7uu_fold.exit.i, !prof !7

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs8hEv8bFEvN4_7uu_fold.exit.thread.i.i: ; preds = %bb.ah
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8hEv8bFEvN4_7uu_fold(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %i.er, i64 noundef %12, i64 noundef 1, i64 noundef 1) #19, !noalias !439
  %i.fa = load i64, ptr %i.bo, align 8, !alias.scope !437, !noalias !430, !noundef !4 ; 2 uses
  %i.fb = icmp sgt i64 %i.fa, -1
  call void @llvm.assume(i1 %i.fb)
  %.pre.i = load ptr, ptr %i.bn, align 8, !alias.scope !437, !noalias !430
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs8hEv8bFEvN4_7uu_fold.exit.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs8hEv8bFEvN4_7uu_fold.exit.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs8hEv8bFEvN4_7uu_fold.exit.thread.i.i, %bb.ah
  %i.fc = phi ptr [ %.pre.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs8hEv8bFEvN4_7uu_fold.exit.thread.i.i ], [ %i.en, %bb.ah ] ; 2 uses
  %i.fd = phi i64 [ %i.fa, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs8hEv8bFEvN4_7uu_fold.exit.thread.i.i ], [ %i.er, %bb.ah ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fd
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fe, ptr nonnull readonly align 1 %13, i64 %12, i1 false), !noalias !440
  %i.ff = add i64 %i.fd, %12
  br label %thread-pre-split.i

bb.ai:                                            ; preds = %bb.ac
  %i.fg = load ptr, ptr %i.bn, align 8, !noalias !430, !nonnull !4, !noundef !4 ; 14 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %5 ; 2 uses
  br i1 %i.bs, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ai, %bb.aj
  %.sroa.02.07.i.i = phi i64 [ %i.fl, %bb.aj ], [ 0, %bb.ai ] ; 3 uses
  %i.fi = phi ptr [ %i.fk, %bb.aj ], [ %i.fg, %bb.ai ] ; 2 uses
  %.val.i.i57 = load i8, ptr %i.fi, align 1, !noalias !441, !noundef !4
  %i.fj = icmp eq i8 %.val.i.i57, 10
  br i1 %i.fj, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 1 ; 2 uses
  %i.fl = add nuw i64 %.sroa.02.07.i.i, 1
  %i.fm = icmp eq ptr %i.fk, %i.fh
  br i1 %i.fm, label %.loopexit.i, label %.lr.ph.i.i

bb.ak:                                            ; preds = %_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultRShNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_B1i_INtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCINvCs8hEv8bFEvN4_7uu_fold18fold_file_bytewiseQDNtNtNtB2a_2io4read4ReadEL_INtNtNtB45_8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEE0EB3j_.exit.i
  %i.fn = icmp eq i64 %i.er, 0
  br i1 %i.fn, label %bb.bb, label %bb.az

bb.al:                                            ; preds = %.lr.ph.i.i
  %i.fo = icmp ult i64 %.sroa.02.07.i.i, %5
  call void @llvm.assume(i1 %i.fo)
  %i.fp = add nuw i64 %.sroa.02.07.i.i, 1         ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !442)
  %i.fq = load i64, ptr %i.ac, align 8, !range !6, !alias.scope !443, !noundef !4
  %i.fr = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !443, !noundef !4 ; 4 uses
  %i.fs = icmp sgt i64 %i.fr, -1
  call void @llvm.assume(i1 %i.fs)
  %i.ft = sub nsw i64 %i.fq, %i.fr
  %i.fu = icmp ult i64 %i.fp, %i.ft
  br i1 %i.fu, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit52.thread.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit52.i, !prof !9

.loopexit.i:                                      ; preds = %bb.aj, %bb.ai
  br i1 %or.cond.not, label %.lr.ph448, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCINvCs8hEv8bFEvN4_7uu_fold18fold_file_bytewiseQDNtNtNtCs7tKScEop1B6_5alloc2io4read4ReadEL_INtNtNtB2y_8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEs1_0EB1M_.exit.i

_RNCINvCs8hEv8bFEvN4_7uu_fold18fold_file_bytewiseQDNtNtNtCs7tKScEop1B6_5alloc2io4read4ReadEL_INtNtNtBQ_8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEs1_0B4_.exit.i.i: ; preds = %.lr.ph448
  %.not98.i = icmp eq ptr %i.fg, %i.fw
  br i1 %.not98.i, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCINvCs8hEv8bFEvN4_7uu_fold18fold_file_bytewiseQDNtNtNtCs7tKScEop1B6_5alloc2io4read4ReadEL_INtNtNtB2y_8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEs1_0EB1M_.exit.i, label %.lr.ph448

.lr.ph448:                                        ; preds = %.loopexit.i, %_RNCINvCs8hEv8bFEvN4_7uu_fold18fold_file_bytewiseQDNtNtNtCs7tKScEop1B6_5alloc2io4read4ReadEL_INtNtNtBQ_8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEs1_0B4_.exit.i.i
  %.sroa.03.0.i.i447 = phi i64 [ %i.fx, %_RNCINvCs8hEv8bFEvN4_7uu_fold18fold_file_bytewiseQDNtNtNtCs7tKScEop1B6_5alloc2io4read4ReadEL_INtNtNtBQ_8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEs1_0B4_.exit.i.i ], [ %5, %.loopexit.i ] ; 2 uses
  %i.fv = phi ptr [ %i.fw, %_RNCINvCs8hEv8bFEvN4_7uu_fold18fold_file_bytewiseQDNtNtNtCs7tKScEop1B6_5alloc2io4read4ReadEL_INtNtNtBQ_8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEs1_0B4_.exit.i.i ], [ %i.fh, %.loopexit.i ]
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 -1 ; 3 uses
  %i.fx = add i64 %.sroa.03.0.i.i447, -1          ; 2 uses
  %.val.i45.i = load i8, ptr %i.fw, align 1, !noalias !444, !noundef !4
  switch i8 %.val.i45.i, label %_RNCINvCs8hEv8bFEvN4_7uu_fold18fold_file_bytewiseQDNtNtNtCs7tKScEop1B6_5alloc2io4read4ReadEL_INtNtNtBQ_8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEs1_0B4_.exit.i.i [
    i8 32, label %bb.am
    i8 9, label %bb.am
    i8 10, label %bb.am
    i8 12, label %bb.am
  ]

bb.am:                                            ; preds = %.lr.ph448, %.lr.ph448, %.lr.ph448, %.lr.ph448
  %i.fy = icmp ult i64 %i.fx, %5
  call void @llvm.assume(i1 %i.fy)
  br label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCINvCs8hEv8bFEvN4_7uu_fold18fold_file_bytewiseQDNtNtNtCs7tKScEop1B6_5alloc2io4read4ReadEL_INtNtNtB2y_8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEs1_0EB1M_.exit.i

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCINvCs8hEv8bFEvN4_7uu_fold18fold_file_bytewiseQDNtNtNtCs7tKScEop1B6_5alloc2io4read4ReadEL_INtNtNtB2y_8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEs1_0EB1M_.exit.i: ; preds = %_RNCINvCs8hEv8bFEvN4_7uu_fold18fold_file_bytewiseQDNtNtNtCs7tKScEop1B6_5alloc2io4read4ReadEL_INtNtNtBQ_8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEs1_0B4_.exit.i.i, %bb.am, %.loopexit.i
  %.sroa.015.0.i = phi i64 [ %5, %.loopexit.i ], [ %.sroa.03.0.i.i447, %bb.am ], [ %5, %_RNCINvCs8hEv8bFEvN4_7uu_fold18fold_file_bytewiseQDNtNtNtCs7tKScEop1B6_5alloc2io4read4ReadEL_INtNtNtBQ_8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEs1_0B4_.exit.i.i ] ; 11 uses
  %.not31.i = icmp ugt i64 %.sroa.015.0.i, %i.er
  br i1 %.not31.i, label %bb.an, label %bb.ao, !prof !11

bb.an:                                            ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCINvCs8hEv8bFEvN4_7uu_fold18fold_file_bytewiseQDNtNtNtCs7tKScEop1B6_5alloc2io4read4ReadEL_INtNtNtB2y_8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEs1_0EB1M_.exit.i
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.015.0.i, i64 noundef %i.er, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #21, !noalias !439
  unreachable

bb.ao:                                            ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCINvCs8hEv8bFEvN4_7uu_fold18fold_file_bytewiseQDNtNtNtCs7tKScEop1B6_5alloc2io4read4ReadEL_INtNtNtB2y_8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEs1_0EB1M_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !445)
  %i.fz = load i64, ptr %i.ac, align 8, !range !6, !alias.scope !446, !noundef !4
  %i.ga = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !446, !noundef !4 ; 4 uses
  %i.gb = icmp sgt i64 %i.ga, -1
  call void @llvm.assume(i1 %i.gb)
  %i.gc = sub nsw i64 %i.fz, %i.ga
  %i.gd = icmp ult i64 %.sroa.015.0.i, %i.gc
  br i1 %i.gd, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit.thread.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit.i, !prof !9

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit.thread.i: ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !447)
  %i.ge = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !448, !nonnull !4, !noundef !4
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.ga
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gf, ptr nonnull readonly align 1 %i.fg, i64 range(i64 0, -9223372036854775808) %.sroa.015.0.i, i1 false), !noalias !449
  %i.gg = add nuw i64 %i.ga, %.sroa.015.0.i
  store i64 %i.gg, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !448
  br label %bb.aq

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit.i: ; preds = %bb.ao
  %i.gh = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE14write_all_coldCs8hEv8bFEvN4_7uu_fold(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fg, i64 noundef range(i64 0, -9223372036854775808) %.sroa.015.0.i) #20, !noalias !439 ; 2 uses
  %.not32.i = icmp eq ptr %i.gh, null
  br i1 %.not32.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit.i
  %i.gi = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.gh) #19, !noalias !439 ; 2 uses
  %i.gj = extractvalue { ptr, ptr } %i.gi, 0
  %i.gk = extractvalue { ptr, ptr } %i.gi, 1
  br label %bb.aw

bb.aq:                                            ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit.thread.i
  %i.gl = icmp samesign ult i64 %.sroa.015.0.i, %i.er
  br i1 %i.gl, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.sroa.015.0.i ; 2 uses
  %i.gn = load i8, ptr %i.gm, align 1, !noalias !439, !noundef !4
  %i.go = icmp eq i8 %i.gn, 10
  br i1 %i.go, label %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs8hEv8bFEvN4_7uu_fold.exit.i, label %bb.at

bb.as:                                            ; preds = %bb.aq
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.015.0.i, i64 noundef %i.er, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21, !noalias !439
  unreachable

bb.at:                                            ; preds = %bb.ar
  call void @llvm.experimental.noalias.scope.decl(metadata !450)
  %i.gp = load i64, ptr %i.ac, align 8, !range !6, !alias.scope !451, !noundef !4
  %i.gq = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !451, !noundef !4 ; 4 uses
  %i.gr = icmp sgt i64 %i.gq, -1
  call void @llvm.assume(i1 %i.gr)
  %i.gs = sub nsw i64 %i.gp, %i.gq
  %i.gt = icmp ugt i64 %i.gs, 1
  br i1 %i.gt, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit50.thread.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit50.i, !prof !9

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit50.thread.i: ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !452)
  %i.gu = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !453, !nonnull !4, !noundef !4
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gq
  store i8 10, ptr %i.gv, align 1, !noalias !454
  %i.gw = add nuw i64 %i.gq, 1
  store i64 %i.gw, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !453
  br label %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs8hEv8bFEvN4_7uu_fold.exit.i

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit50.i: ; preds = %bb.at
  %i.gx = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE14write_all_coldCs8hEv8bFEvN4_7uu_fold(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1) #20, !noalias !439 ; 2 uses
  %.not33.i = icmp eq ptr %i.gx, null
  br i1 %.not33.i, label %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs8hEv8bFEvN4_7uu_fold.exit.i, label %bb.av

_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs8hEv8bFEvN4_7uu_fold.exit.i: ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit50.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit50.thread.i, %bb.ar
  %i.gy = sub nuw nsw i64 %i.er, %.sroa.015.0.i   ; 3 uses
  %i.gz = icmp samesign eq i64 %.sroa.015.0.i, 0
  br i1 %i.gz, label %thread-pre-split.i, label %bb.au

bb.au:                                            ; preds = %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs8hEv8bFEvN4_7uu_fold.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fg, ptr nonnull align 1 %i.gm, i64 %i.gy, i1 false), !noalias !455
  br label %thread-pre-split.i

bb.av:                                            ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit50.i
  %i.ha = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.gx) #19, !noalias !439 ; 2 uses
  %i.hb = extractvalue { ptr, ptr } %i.ha, 0
  %i.hc = extractvalue { ptr, ptr } %i.ha, 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ba, %bb.ay, %bb.av, %bb.ap, %bb.ag
  %.sroa.7.0.i = phi ptr [ @23, %bb.ag ], [ %i.hz, %bb.ba ], [ %i.hk, %bb.ay ], [ %i.gk, %bb.ap ], [ %i.hc, %bb.av ]
  %.sroa.0.0.i56 = phi ptr [ %i.eu, %bb.ag ], [ %i.hy, %bb.ba ], [ %i.hj, %bb.ay ], [ %i.gj, %bb.ap ], [ %i.hb, %bb.av ] ; 2 uses
  %.val38.i = load i64, ptr %i.n, align 8, !range !6, !noalias !430, !noundef !4 ; 2 uses
  %i.hd = icmp eq i64 %.val38.i, 0
  br i1 %i.hd, label %_RINvCs8hEv8bFEvN4_7uu_fold18fold_file_bytewiseQDNtNtNtCs7tKScEop1B6_5alloc2io4read4ReadEL_INtNtNtBO_8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.val39.i = load ptr, ptr %i.bn, align 8, !noalias !430, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val39.i, i64 noundef %.val38.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !439
  br label %_RINvCs8hEv8bFEvN4_7uu_fold18fold_file_bytewiseQDNtNtNtCs7tKScEop1B6_5alloc2io4read4ReadEL_INtNtNtBO_8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit52.thread.i: ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !456)
  %i.he = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !457, !nonnull !4, !noundef !4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.fr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hf, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.fg, i64 range(i64 0, -9223372036854775808) %i.fp, i1 false), !noalias !458
  %i.hg = add nuw i64 %i.fr, %i.fp
  store i64 %i.hg, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !457
  br label %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs8hEv8bFEvN4_7uu_fold.exit53.i

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit52.i: ; preds = %bb.al
  %i.hh = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE14write_all_coldCs8hEv8bFEvN4_7uu_fold(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fg, i64 noundef range(i64 0, -9223372036854775808) %i.fp) #20, !noalias !439 ; 2 uses
  %.not35.i = icmp eq ptr %i.hh, null
  br i1 %.not35.i, label %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs8hEv8bFEvN4_7uu_fold.exit53.i, label %bb.ay

bb.ay:                                            ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit52.i
  %i.hi = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.hh) #19, !noalias !439 ; 2 uses
  %i.hj = extractvalue { ptr, ptr } %i.hi, 0
  %i.hk = extractvalue { ptr, ptr } %i.hi, 1
  br label %bb.aw

_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs8hEv8bFEvN4_7uu_fold.exit53.i: ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit52.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit52.thread.i
  %i.hl = sub nuw nsw i64 %i.er, %i.fp            ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fp
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fg, ptr nonnull align 1 %i.hm, i64 %i.hl, i1 false), !noalias !459
  br label %thread-pre-split.i

bb.az:                                            ; preds = %bb.ak
  %i.hn = load ptr, ptr %i.bn, align 8, !noalias !430, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !460)
  %i.ho = load i64, ptr %i.ac, align 8, !range !6, !alias.scope !461, !noundef !4
  %i.hp = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !461, !noundef !4 ; 4 uses
  %i.hq = icmp sgt i64 %i.hp, -1
  call void @llvm.assume(i1 %i.hq)
  %i.hr = sub nsw i64 %i.ho, %i.hp
  %i.hs = icmp ult i64 %i.er, %i.hr
  br i1 %i.hs, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit59.thread.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit59.i, !prof !9

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit59.thread.i: ; preds = %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !462)
  %i.ht = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !463, !nonnull !4, !noundef !4
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hp
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hu, ptr nonnull readonly align 1 %i.hn, i64 range(i64 0, -9223372036854775808) %i.er, i1 false), !noalias !464
  %i.hv = add nuw i64 %i.hp, %i.er
  store i64 %i.hv, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !463
  br label %bb.bb

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit59.i: ; preds = %bb.az
  %i.hw = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE14write_all_coldCs8hEv8bFEvN4_7uu_fold(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hn, i64 noundef range(i64 0, -9223372036854775808) %i.er) #20, !noalias !439 ; 2 uses
  %.not36.i = icmp eq ptr %i.hw, null
  br i1 %.not36.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit59.i
  %i.hx = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.hw) #19, !noalias !439 ; 2 uses
  %i.hy = extractvalue { ptr, ptr } %i.hx, 0
  %i.hz = extractvalue { ptr, ptr } %i.hx, 1
  br label %bb.aw

bb.bb:                                            ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit59.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit59.thread.i, %bb.ak
  %.val.i = load i64, ptr %i.n, align 8, !range !6, !noalias !430, !noundef !4 ; 2 uses
  %i.ia = icmp eq i64 %.val.i, 0
  br i1 %i.ia, label %_RINvCs8hEv8bFEvN4_7uu_fold18fold_file_bytewiseQDNtNtNtCs7tKScEop1B6_5alloc2io4read4ReadEL_INtNtNtBO_8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.val37.i = load ptr, ptr %i.bn, align 8, !noalias !430, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val37.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !439
  br label %_RINvCs8hEv8bFEvN4_7uu_fold18fold_file_bytewiseQDNtNtNtCs7tKScEop1B6_5alloc2io4read4ReadEL_INtNtNtBO_8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit.thread

_RINvCs8hEv8bFEvN4_7uu_fold18fold_file_bytewiseQDNtNtNtCs7tKScEop1B6_5alloc2io4read4ReadEL_INtNtNtBO_8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit.thread: ; preds = %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !430
  br label %.sink.split

_RINvCs8hEv8bFEvN4_7uu_fold18fold_file_bytewiseQDNtNtNtCs7tKScEop1B6_5alloc2io4read4ReadEL_INtNtNtBO_8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !430
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0111, i64 noundef 8192, i64 noundef 1) #19, !noalias !439
  %.not37 = icmp eq ptr %.sroa.0.0.i56, null
  br i1 %.not37, label %bb.cj, label %bb.ck

bb.bd:                                            ; preds = %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2_9BufReaderQDNtNtB6_4read4ReadEL_E13with_capacityCs8hEv8bFEvN4_7uu_fold.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !465)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !466
  store i64 0, ptr %i.l, align 8, !noalias !466
  store ptr inttoptr (i64 1 to ptr), ptr %i.as, align 8, !noalias !466
  store i64 0, ptr %i.at, align 8, !noalias !466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !466
  store i64 0, ptr %i.k, align 8, !noalias !466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !466
  store i64 0, ptr %i.j, align 8, !noalias !466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !466
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !467
  %i.ib = call noundef dereferenceable_or_null(8192) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 8192, i64 noundef range(i64 1, 9) 1) #19, !noalias !467 ; 3 uses
  %i.ic = icmp eq ptr %i.ib, null
  br i1 %i.ic, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 8192) #23, !noalias !468
  unreachable

bb.bf:                                            ; preds = %bb.bd
  store i64 8192, ptr %i.i, align 8, !noalias !466
  store ptr %i.ib, ptr %i.au, align 8, !noalias !466
  store i64 0, ptr %i.av, align 8, !noalias !466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !466
  store i8 %i.ax, ptr %i.aw, align 8, !noalias !466
  store i64 %5, ptr %i.h, align 8, !noalias !466
  store i8 %i.az, ptr %i.ay, align 1, !noalias !466
  store ptr %i.ac, ptr %i.ba, align 8, !noalias !466
  store ptr %i.l, ptr %i.bb, align 8, !noalias !466
  store ptr %i.k, ptr %i.bc, align 8, !noalias !466
  store ptr %i.j, ptr %i.bd, align 8, !noalias !466
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.36.0, i64 72
  %i.ie = load ptr, ptr %i.id, align 8, !invariant.load !4, !noalias !469, !nonnull !4
  br label %.split.i

.split.i:                                         ; preds = %bb.bf, %_RINvCs8hEv8bFEvN4_7uu_fold21process_pending_chunkINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit.i
  %i.if = phi i64 [ %i.kc, %_RINvCs8hEv8bFEvN4_7uu_fold21process_pending_chunkINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit.i ], [ 0, %bb.bf ] ; 6 uses
  %i.ig = phi ptr [ %i.kd, %_RINvCs8hEv8bFEvN4_7uu_fold21process_pending_chunkINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit.i ], [ %i.ib, %bb.bf ]
  %i.ih = phi i8 [ %i.ij, %_RINvCs8hEv8bFEvN4_7uu_fold21process_pending_chunkINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit.i ], [ 0, %bb.bf ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !470
  store ptr %.sroa.0.0111, ptr %i.f, align 8, !noalias !470
  store i64 8192, ptr %i.be, align 8, !noalias !470
  store i64 0, ptr %i.bf, align 8, !noalias !470
  store i8 %i.ih, ptr %i.bg, align 8, !noalias !470
  %i.ii = call noundef ptr %i.ie(ptr noundef nonnull %.sroa.32101.0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f) #22, !noalias !471, !inline_history !368 ; 2 uses
  %.not3.i.i63 = icmp eq ptr %i.ii, null
  br i1 %.not3.i.i63, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQQDNtNtB9_4read4ReadEL_ECs8hEv8bFEvN4_7uu_fold.exit.i71, label %bb.bg

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQQDNtNtB9_4read4ReadEL_ECs8hEv8bFEvN4_7uu_fold.exit.i71: ; preds = %.split.i
  %i.ij = load i8, ptr %i.bg, align 8, !range !8, !noalias !470, !noundef !4
  %i.ik = load i64, ptr %i.bf, align 8, !noalias !470, !noundef !4 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !470
  %i.il = icmp eq i64 %i.ik, 0
  br i1 %i.il, label %bb.bj, label %bb.bk

bb.bg:                                            ; preds = %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !470
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i58), !noalias !472
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.0.i.i58, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 19) #19, !noalias !473
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !474
  %i.im = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef 8) #19, !noalias !474 ; 4 uses
  %i.in = icmp eq ptr %i.im, null
  br i1 %i.in, label %bb.bh, label %bb.bi, !prof !7

bb.bh:                                            ; preds = %bb.bg
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #23, !noalias !474
  unreachable

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.im, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i58, i64 24, i1 false), !noalias !473
  %.sroa.4.0..sroa_idx.i.i65 = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  store ptr %i.ii, ptr %.sroa.4.0..sroa_idx.i.i65, align 8, !noalias !473
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i58), !noalias !472
  br label %bb.bz

bb.bj:                                            ; preds = %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQQDNtNtB9_4read4ReadEL_ECs8hEv8bFEvN4_7uu_fold.exit.i71
  %i.io = icmp eq i64 %i.if, 0
  br i1 %i.io, label %bb.bu, label %bb.bt

bb.bk:                                            ; preds = %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQQDNtNtB9_4read4ReadEL_ECs8hEv8bFEvN4_7uu_fold.exit.i71
  call void @llvm.experimental.noalias.scope.decl(metadata !475)
  %i.ip = load i64, ptr %i.i, align 8, !range !6, !alias.scope !476, !noalias !466, !noundef !4
  %i.iq = sub nsw i64 %i.ip, %i.if
  %i.ir = icmp ugt i64 %i.ik, %i.iq
  br i1 %i.ir, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs8hEv8bFEvN4_7uu_fold.exit.thread.i.i76, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs8hEv8bFEvN4_7uu_fold.exit.i72, !prof !7

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs8hEv8bFEvN4_7uu_fold.exit.thread.i.i76: ; preds = %bb.bk
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8hEv8bFEvN4_7uu_fold(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.if, i64 noundef %i.ik, i64 noundef 1, i64 noundef 1) #19, !noalias !468
  %i.is = load i64, ptr %i.av, align 8, !alias.scope !475, !noalias !466, !noundef !4 ; 2 uses
  %i.it = icmp sgt i64 %i.is, -1
  call void @llvm.assume(i1 %i.it)
  %.pre.i77 = load ptr, ptr %i.au, align 8, !alias.scope !475, !noalias !466
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs8hEv8bFEvN4_7uu_fold.exit.i72

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs8hEv8bFEvN4_7uu_fold.exit.i72: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs8hEv8bFEvN4_7uu_fold.exit.thread.i.i76, %bb.bk
  %i.iu = phi ptr [ %.pre.i77, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs8hEv8bFEvN4_7uu_fold.exit.thread.i.i76 ], [ %i.ig, %bb.bk ] ; 2 uses
  %i.iv = phi i64 [ %i.is, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs8hEv8bFEvN4_7uu_fold.exit.thread.i.i76 ], [ %i.if, %bb.bk ] ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.iv
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iw, ptr nonnull readonly align 1 %.sroa.0.0111, i64 %i.ik, i1 false), !noalias !475
  %i.ix = add i64 %i.iv, %i.ik                    ; 6 uses
  store i64 %i.ix, ptr %i.av, align 8, !alias.scope !475, !noalias !466
  call void @llvm.experimental.noalias.scope.decl(metadata !477)
  %i.iy = icmp sgt i64 %i.ix, -1
  call void @llvm.assume(i1 %i.iy)
  %i.iz = icmp eq i64 %i.ix, 0
  br i1 %i.iz, label %_RINvCs8hEv8bFEvN4_7uu_fold21process_pending_chunkINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit.i, label %.lr.ph.i.i73

.lr.ph.i.i73:                                     ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs8hEv8bFEvN4_7uu_fold.exit.i72
  %i.ja = load ptr, ptr %i.au, align 8, !alias.scope !477, !noalias !466, !nonnull !4, !noundef !4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !478
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ja, i64 noundef %i.ix) #19, !noalias !479
  %i.jb = load i64, ptr %i.e, align 8, !range !10, !noalias !478, !noundef !4
  %i.jc = trunc nuw i64 %i.jb to i1
  br i1 %i.jc, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i73, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECs8hEv8bFEvN4_7uu_fold.exit.i.i
  %i.jd = phi i64 [ %i.jx, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECs8hEv8bFEvN4_7uu_fold.exit.i.i ], [ %i.ix, %.lr.ph.i.i73 ] ; 8 uses
  %i.je = load i64, ptr %i.bh, align 8, !noalias !478, !noundef !4 ; 7 uses
  %i.jf = load i8, ptr %i.bi, align 8, !range !8, !noalias !478, !noundef !4
  %i.jg = trunc nuw i8 %i.jf to i1
  br i1 %i.jg, label %bb.bn, label %bb.bo

._crit_edge.i:                                    ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECs8hEv8bFEvN4_7uu_fold.exit.i.i, %.lr.ph.i.i73
  %.lcssa94.i = phi i64 [ %i.ix, %.lr.ph.i.i73 ], [ %i.jx, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECs8hEv8bFEvN4_7uu_fold.exit.i.i ] ; 2 uses
  store i64 %.lcssa94.i, ptr %i.av, align 8, !noalias !466
  %i.jh = load ptr, ptr %i.bh, align 8, !noalias !478, !nonnull !4, !noundef !4
  %i.ji = load i64, ptr %i.bi, align 8, !noalias !478, !noundef !4
  %i.jj = call fastcc { ptr, ptr } @_RINvCs8hEv8bFEvN4_7uu_fold17process_utf8_lineINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jh, i64 noundef %i.ji, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.h) #19, !noalias !480 ; 2 uses
  %i.jk = extractvalue { ptr, ptr } %i.jj, 0      ; 2 uses
  %.not.i39.i = icmp eq ptr %i.jk, null
  br i1 %.not.i39.i, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %._crit_edge.i
  store i64 0, ptr %i.av, align 8, !alias.scope !477, !noalias !466
  br label %.loopexit.sink.split.i.i

.loopexit.i75:                                    ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCs8hEv8bFEvN4_7uu_fold.exit.i.i
  store i64 %i.jd, ptr %i.av, align 8, !noalias !466
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bn, %.loopexit.i75, %._crit_edge.i
  %i.jl = phi i64 [ 0, %bb.bn ], [ %.lcssa94.i, %._crit_edge.i ], [ %i.jd, %.loopexit.i75 ]
  %.lcssa90.sink.i.i = phi { ptr, ptr } [ %i.jn, %bb.bn ], [ %i.jj, %._crit_edge.i ], [ %i.ju, %.loopexit.i75 ]
  %.sroa.0.0.i.i = phi ptr [ %i.jo, %bb.bn ], [ %i.jk, %._crit_edge.i ], [ %i.jv, %.loopexit.i75 ]
  %i.jm = extractvalue { ptr, ptr } %.lcssa90.sink.i.i, 1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jm) ]
  br label %.loopexit.sink.split.i.i

bb.bn:                                            ; preds = %.lr.ph.i
  %i.jn = call fastcc { ptr, ptr } @_RINvCs8hEv8bFEvN4_7uu_fold21process_non_utf8_lineINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ja, i64 noundef %i.jd, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.h) #19, !noalias !480 ; 2 uses
  %i.jo = extractvalue { ptr, ptr } %i.jn, 0      ; 2 uses
  store i64 0, ptr %i.av, align 8, !alias.scope !477, !noalias !466
  %.not21.i.i = icmp eq ptr %i.jo, null
  br i1 %.not21.i.i, label %.loopexit.sink.split.i.i, label %bb.bm

bb.bo:                                            ; preds = %.lr.ph.i
  %i.jp = icmp eq i64 %i.je, 0
  br i1 %i.jp, label %.loopexit.sink.split.i.loopexit.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !478
  %.not19.i.i = icmp ugt i64 %i.je, %i.jd
  br i1 %.not19.i.i, label %bb.bq, label %bb.br, !prof !7

bb.bq:                                            ; preds = %bb.bp
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.je, i64 noundef %i.jd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #21, !noalias !479
  unreachable

bb.br:                                            ; preds = %bb.bp
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ja, i64 noundef %i.je) #19, !noalias !479
  call void @llvm.experimental.noalias.scope.decl(metadata !481)
  %i.jq = load i64, ptr %i.d, align 8, !range !10, !alias.scope !481, !noalias !478, !noundef !4
  %i.jr = trunc nuw i64 %i.jq to i1
  br i1 %i.jr, label %bb.bs, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCs8hEv8bFEvN4_7uu_fold.exit.i.i, !prof !7

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !482
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !noalias !478
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 12, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @45, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #21, !noalias !483
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCs8hEv8bFEvN4_7uu_fold.exit.i.i: ; preds = %bb.br
  %i.js = load ptr, ptr %i.bj, align 8, !alias.scope !481, !noalias !478, !nonnull !4, !noundef !4
  %i.jt = load i64, ptr %i.bk, align 8, !alias.scope !481, !noalias !478, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !478
  %i.ju = call fastcc { ptr, ptr } @_RINvCs8hEv8bFEvN4_7uu_fold17process_utf8_lineINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.js, i64 noundef %i.jt, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.h) #19, !noalias !480 ; 2 uses
  %i.jv = extractvalue { ptr, ptr } %i.ju, 0      ; 2 uses
  %.not20.i.i = icmp eq ptr %i.jv, null
  br i1 %.not20.i.i, label %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs8hEv8bFEvN4_7uu_fold.exit.i.i, label %.loopexit.i75

_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs8hEv8bFEvN4_7uu_fold.exit.i.i: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCs8hEv8bFEvN4_7uu_fold.exit.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.jd, %i.je
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.sink.split.i.loopexit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECs8hEv8bFEvN4_7uu_fold.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECs8hEv8bFEvN4_7uu_fold.exit.i.i: ; preds = %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs8hEv8bFEvN4_7uu_fold.exit.i.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.je
  %i.jx = sub nuw nsw i64 %i.jd, %i.je            ; 4 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ja, ptr nonnull align 1 %i.jw, i64 %i.jx, i1 false), !noalias !484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !478
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !478
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ja, i64 noundef %i.jx) #19, !noalias !479
  %i.jy = load i64, ptr %i.e, align 8, !range !10, !noalias !478, !noundef !4
  %i.jz = trunc nuw i64 %i.jy to i1
  br i1 %i.jz, label %.lr.ph.i, label %._crit_edge.i

.loopexit.sink.split.i.loopexit.i:                ; preds = %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs8hEv8bFEvN4_7uu_fold.exit.i.i, %bb.bo
  %i.ka = phi i64 [ %i.jd, %bb.bo ], [ 0, %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs8hEv8bFEvN4_7uu_fold.exit.i.i ] ; 2 uses
  store i64 %i.ka, ptr %i.av, align 8, !noalias !466
  br label %.loopexit.sink.split.i.i

.loopexit.sink.split.i.i:                         ; preds = %.loopexit.sink.split.i.loopexit.i, %bb.bn, %bb.bm, %bb.bl
  %i.kb = phi i64 [ 0, %bb.bl ], [ %i.jl, %bb.bm ], [ 0, %bb.bn ], [ %i.ka, %.loopexit.sink.split.i.loopexit.i ]
  %.sroa.5.1.ph.i.i = phi ptr [ undef, %bb.bl ], [ %i.jm, %bb.bm ], [ undef, %bb.bn ], [ undef, %.loopexit.sink.split.i.loopexit.i ]
  %.sroa.0.1.ph.i.i = phi ptr [ null, %bb.bl ], [ %.sroa.0.0.i.i, %bb.bm ], [ null, %bb.bn ], [ null, %.loopexit.sink.split.i.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !478
  br label %_RINvCs8hEv8bFEvN4_7uu_fold21process_pending_chunkINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit.i

_RINvCs8hEv8bFEvN4_7uu_fold21process_pending_chunkINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit.i: ; preds = %.loopexit.sink.split.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs8hEv8bFEvN4_7uu_fold.exit.i72
  %i.kc = phi i64 [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs8hEv8bFEvN4_7uu_fold.exit.i72 ], [ %i.kb, %.loopexit.sink.split.i.i ]
  %i.kd = phi ptr [ %i.iu, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs8hEv8bFEvN4_7uu_fold.exit.i72 ], [ %i.ja, %.loopexit.sink.split.i.i ]
  %.sroa.5.1.i.i = phi ptr [ undef, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs8hEv8bFEvN4_7uu_fold.exit.i72 ], [ %.sroa.5.1.ph.i.i, %.loopexit.sink.split.i.i ] ; 2 uses
  %.sroa.0.1.i.i = phi ptr [ null, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs8hEv8bFEvN4_7uu_fold.exit.i72 ], [ %.sroa.0.1.ph.i.i, %.loopexit.sink.split.i.i ] ; 2 uses
  %.not.i74 = icmp eq ptr %.sroa.0.1.i.i, null
  br i1 %.not.i74, label %.split.i, label %bb.ci

bb.bt:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !466
  %i.ke = load ptr, ptr %i.au, align 8, !noalias !466, !nonnull !4, !noundef !4 ; 2 uses
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ke, i64 noundef %i.if) #19, !noalias !468
  %i.kf = load i64, ptr %i.g, align 8, !range !10, !noalias !466, !noundef !4
  %i.kg = trunc nuw i64 %i.kf to i1
  br i1 %i.kg, label %bb.bv, label %bb.bw

bb.bu:                                            ; preds = %bb.bx, %bb.bj
  %i.kh = load i64, ptr %i.at, align 8, !noalias !466, !noundef !4 ; 6 uses
  %i.ki = icmp sgt i64 %i.kh, -1
end_hunk_0
