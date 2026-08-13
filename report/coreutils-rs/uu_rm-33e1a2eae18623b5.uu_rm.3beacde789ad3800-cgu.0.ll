inline.NumInlined: 1389
inline.NumDeleted: 691
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvCs58W9blM4WiW_5uu_rm14prompt_descend:bb.a
  %i.al = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k) #21
  store ptr %i.al, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.am = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #21 ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.am, 0
  %i.ao = extractvalue { ptr, i64 } %i.am, 1
  store ptr %i.an, ptr %i.j, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.ao, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.i, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs58W9blM4WiW_5uu_rm, ptr %.sroa.416.0..sroa_idx, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.m, ptr %i.aq, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXsm_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_ENtNtCs6JMX4GRUq9U_4core3fmt7Display3fmtCs58W9blM4WiW_5uu_rm, ptr %.sroa.420.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !746
  store ptr %i.l, ptr %i.d, align 8, !noalias !746
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !noalias !746
  %i.as = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @7, ptr noundef nonnull @24, ptr noundef nonnull %i.i) #21
  %i.at = load ptr, ptr %i.ar, align 8, !noalias !746, !noundef !4 ; 7 uses
  %.not.i5.i = icmp eq ptr %i.at, null            ; 2 uses
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit
  br i1 %.not.i5.i, label %bb.l, label %bb.m, !prof !134

bb.h:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit
  br i1 %.not.i5.i, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs58W9blM4WiW_5uu_rm.exit.i.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !746
  %i.au = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.av = and i64 %i.au, 3
  switch i64 %i.av, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i.i
    i64 1, label %bb.k
  ], !prof !126

bb.j:                                             ; preds = %bb.i
  %i.aw = icmp ult ptr %i.at, inttoptr (i64 188978561024 to ptr)
  %i.ax = and i64 %i.au, 1095216660480
  %i.ay = icmp ne i64 %i.ax, 1095216660480
  call void @llvm.assume(i1 %i.aw)
  call void @llvm.assume(i1 %i.ay)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.az = getelementptr i8, ptr %i.at, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.az, ptr %i.ba, align 8, !alias.scope !751, !noalias !746
  store i8 3, ptr %i.c, align 8, !alias.scope !751, !noalias !746
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ba) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !746
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs58W9blM4WiW_5uu_rm.exit.i.thread

bb.l:                                             ; preds = %bb.g
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs58W9blM4WiW_5uu_rm.exit.i.thread: ; preds = %bb.h, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !746
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bb = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.bc = and i64 %i.bb, 3
  switch i64 %i.bc, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i
    i64 3, label %bb.n
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i
    i64 1, label %bb.o
  ], !prof !126

bb.n:                                             ; preds = %bb.m
  %i.bd = icmp ult ptr %i.at, inttoptr (i64 188978561024 to ptr)
  %i.be = and i64 %i.bb, 1095216660480
  %i.bf = icmp ne i64 %i.be, 1095216660480
  call void @llvm.assume(i1 %i.bd)
  call void @llvm.assume(i1 %i.bf)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i

bb.o:                                             ; preds = %bb.m
  %i.bg = getelementptr i8, ptr %i.at, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.bg, ptr %i.bh, align 8, !alias.scope !754
  store i8 3, ptr %i.b, align 8, !alias.scope !754
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bh) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs58W9blM4WiW_5uu_rm.exit.i.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.val24 = load ptr, ptr %i.l, align 8, !nonnull !4, !align !131, !noundef !4 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val24, i64 12 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !noundef !4
  %i.bk = add i32 %i.bj, -1                       ; 2 uses
  store i32 %i.bk, ptr %i.bi, align 4
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.p, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs58W9blM4WiW_5uu_rm.exit

bb.p:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit
  store atomic i64 0, ptr %.val24 monotonic, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.val24, i64 8 ; 2 uses
  %i.bn = atomicrmw xchg ptr %i.bm, i32 0 release, align 4
  %i.bo = icmp eq i32 %i.bn, 2
  br i1 %i.bo, label %bb.q, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs58W9blM4WiW_5uu_rm.exit, !prof !134

bb.q:                                             ; preds = %bb.p
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bm) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs58W9blM4WiW_5uu_rm.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs58W9blM4WiW_5uu_rm.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.val21 = load ptr, ptr %i.m, align 8           ; 4 uses
  %.val22 = load ptr, ptr %i.ak, align 8, !nonnull !4, !align !131, !noundef !4 ; 3 uses
  %i.bp = load ptr, ptr %.val22, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.bp, null
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs58W9blM4WiW_5uu_rm.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21) ]
  call void %i.bp(ptr noundef nonnull %.val21) #23, !inline_history !757
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs58W9blM4WiW_5uu_rm.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %.val22, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !range !40, !invariant.load !4 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECs58W9blM4WiW_5uu_rm.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %.val22, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !range !130, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) %i.bu) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECs58W9blM4WiW_5uu_rm.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECs58W9blM4WiW_5uu_rm.exit: ; preds = %bb.s, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.u

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECs58W9blM4WiW_5uu_rm.exit
  %i.bv = call noundef zeroext i1 @_RNvCsh036I4OHgIr_6uucore8read_yes() #21
  ret i1 %i.bv
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, ptr } @_RNvCs58W9blM4WiW_5uu_rm18handle_parse_error(ptr noalias noundef nonnull align 8 captures(address) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.4.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [64 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 13 uses
  %i.j = alloca [712 x i8], align 8               ; 14 uses
  %i.k = alloca [56 x i8], align 8                ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [176 x i8], align 8               ; 6 uses
  %i.n = alloca [56 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [16 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 16 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %.idx = mul nuw nsw i64 %2, 24                  ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %switch = icmp samesign ult i64 %2, 2
  br i1 %switch, label %.loopexit263, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNCNvCs58W9blM4WiW_5uu_rm18handle_parse_error0E0B1Z_.exit.i.i, %.lr.ph.i.i
  %i.ah = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %i.ai, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNCNvCs58W9blM4WiW_5uu_rm18handle_parse_error0E0B1Z_.exit.i.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !758)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !758, !noalias !761, !noundef !4 ; 4 uses
  %i.al = icmp samesign ugt i64 %i.ak, 1
  br i1 %i.al, label %_RINvMNtCs6JMX4GRUq9U_4core6resultINtB3_6ResultRShNtCsh036I4OHgIr_6uucore17NonUtf8OsStrErrorE9is_ok_andNCNCNvCs58W9blM4WiW_5uu_rm18handle_parse_error00EB1I_.exit.i.i.i.i, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNCNvCs58W9blM4WiW_5uu_rm18handle_parse_error0E0B1Z_.exit.i.i

_RINvMNtCs6JMX4GRUq9U_4core6resultINtB3_6ResultRShNtCsh036I4OHgIr_6uucore17NonUtf8OsStrErrorE9is_ok_andNCNCNvCs58W9blM4WiW_5uu_rm18handle_parse_error00EB1I_.exit.i.i.i.i: ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !758, !noalias !761, !nonnull !4, !noundef !4 ; 4 uses
  %i.ao = load i8, ptr %i.an, align 1, !alias.scope !766, !noalias !769, !noundef !4
  %i.ap = icmp eq i8 %i.ao, 45
  br i1 %i.ap, label %bb.c, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNCNvCs58W9blM4WiW_5uu_rm18handle_parse_error0E0B1Z_.exit.i.i

bb.c:                                             ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6resultINtB3_6ResultRShNtCsh036I4OHgIr_6uucore17NonUtf8OsStrErrorE9is_ok_andNCNCNvCs58W9blM4WiW_5uu_rm18handle_parse_error00EB1I_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !772
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs16symlink_metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef %i.ak) #21, !noalias !772
  %i.aq = load i64, ptr %i.m, align 8, !range !201, !noalias !772, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %i.aq, 2
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ar = load ptr, ptr %i.af, align 8, !noalias !772, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !776
  %i.as = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.at = and i64 %i.as, 3
  switch i64 %i.at, label %.unreachabledefault [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i.i.i.i
    i64 3, label %bb.e
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i.i.i.i
    i64 1, label %bb.f
  ], !prof !126

.unreachabledefault:                              ; preds = %bb.d
  unreachable

default.unreachable:                              ; preds = %bb.dn
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.au = icmp ult ptr %i.ar, inttoptr (i64 188978561024 to ptr)
  %i.av = and i64 %i.as, 1095216660480
  %i.aw = icmp ne i64 %i.av, 1095216660480
  call void @llvm.assume(i1 %i.au)
  call void @llvm.assume(i1 %i.aw)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ax = getelementptr i8, ptr %i.ar, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  store ptr %i.ax, ptr %i.ag, align 8, !alias.scope !777, !noalias !776
  store i8 3, ptr %i.l, align 8, !alias.scope !777, !noalias !776
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #21, !noalias !776
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !776
  br label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNCNvCs58W9blM4WiW_5uu_rm18handle_parse_error0E0B1Z_.exit.i.i

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNCNvCs58W9blM4WiW_5uu_rm18handle_parse_error0E0B1Z_.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i.i.i.i, %_RINvMNtCs6JMX4GRUq9U_4core6resultINtB3_6ResultRShNtCsh036I4OHgIr_6uucore17NonUtf8OsStrErrorE9is_ok_andNCNCNvCs58W9blM4WiW_5uu_rm18handle_parse_error00EB1I_.exit.i.i.i.i, %bb.b
  %i.ay = icmp eq ptr %i.ai, %i.ad
  br i1 %i.ay, label %.loopexit263, label %bb.b

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !772
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 249
  %i.ba = load i8, ptr %i.az, align 1, !range !780, !noundef !4
  switch i8 %i.ba, label %bb.bd [
    i8 12, label %.loopexit263
    i8 14, label %.loopexit263
  ]

.loopexit263:                                     ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNCNvCs58W9blM4WiW_5uu_rm18handle_parse_error0E0B1Z_.exit.i.i, %bb.a, %bb.g, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !781
  call void @_RNvCs58W9blM4WiW_5uu_rm6uu_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.j) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !781
  call void @llvm.experimental.noalias.scope.decl(metadata !785)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !788
  call void @llvm.experimental.noalias.scope.decl(metadata !790)
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %_RINvMCsczSSEuChxEj_8clap_lexNtB3_7RawArgs3newRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterBI_EECs58W9blM4WiW_5uu_rm.exit.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i: ; preds = %.loopexit263
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !793
  %i.bb = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.idx, i64 noundef range(i64 1, 9) 8) #21, !noalias !793 ; 3 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.h, label %.preheader.i.i.i.i.i.i.i

bb.h:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %.idx) #24, !noalias !800
  unreachable

.preheader.i.i.i.i.i.i.i:                         ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNCNvXs_CsczSSEuChxEj_8clap_lexNtB1O_7RawArgsINtNtBa_7convert4FromINtNtNtBa_5slice4iter4IterBV_EE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4q_3VecBV_E14extend_trustedINtB4_3MapB2K_B1H_EE0E0E0Cs58W9blM4WiW_5uu_rm.exit.i.i.i.i.i.i.i.i.i.i
  %i.bd = phi i64 [ %i.bl, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNCNvXs_CsczSSEuChxEj_8clap_lexNtB1O_7RawArgsINtNtBa_7convert4FromINtNtNtBa_5slice4iter4IterBV_EE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4q_3VecBV_E14extend_trustedINtB4_3MapB2K_B1H_EE0E0E0Cs58W9blM4WiW_5uu_rm.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.bd ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %.val11.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bf, align 8, !alias.scope !801, !noalias !804, !nonnull !4, !noundef !4
  %i.bg = getelementptr i8, ptr %i.be, i64 16
  %.val12.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bg, align 8, !alias.scope !801, !noalias !804, !noundef !4 ; 6 uses
  %i.bh = icmp eq i64 %.val12.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bh, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNCNvXs_CsczSSEuChxEj_8clap_lexNtB1O_7RawArgsINtNtBa_7convert4FromINtNtNtBa_5slice4iter4IterBV_EE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4q_3VecBV_E14extend_trustedINtB4_3MapB2K_B1H_EE0E0E0Cs58W9blM4WiW_5uu_rm.exit.i.i.i.i.i.i.i.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !818
  %i.bi = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val12.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #21, !noalias !818 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val12.i.i.i.i.i.i.i.i.i.i) #24, !noalias !835
  unreachable

bb.j:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr nonnull readonly align 1 %.val11.i.i.i.i.i.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.val12.i.i.i.i.i.i.i.i.i.i, i1 false), !noalias !836
  br label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNCNvXs_CsczSSEuChxEj_8clap_lexNtB1O_7RawArgsINtNtBa_7convert4FromINtNtNtBa_5slice4iter4IterBV_EE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4q_3VecBV_E14extend_trustedINtB4_3MapB2K_B1H_EE0E0E0Cs58W9blM4WiW_5uu_rm.exit.i.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNCNvXs_CsczSSEuChxEj_8clap_lexNtB1O_7RawArgsINtNtBa_7convert4FromINtNtNtBa_5slice4iter4IterBV_EE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4q_3VecBV_E14extend_trustedINtB4_3MapB2K_B1H_EE0E0E0Cs58W9blM4WiW_5uu_rm.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %.preheader.i.i.i.i.i.i.i
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bi, %bb.j ], [ inttoptr (i64 1 to ptr), %.preheader.i.i.i.i.i.i.i ]
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %i.bd ; 3 uses
  store i64 %.val12.i.i.i.i.i.i.i.i.i.i, ptr %i.bk, align 8, !noalias !837
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !837
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 %.val12.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !837
  %i.bl = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %i.bm = icmp eq i64 %i.bl, %2
  br i1 %i.bm, label %_RINvMCsczSSEuChxEj_8clap_lexNtB3_7RawArgs3newRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterBI_EECs58W9blM4WiW_5uu_rm.exit.i.i, label %.preheader.i.i.i.i.i.i.i

_RINvMCsczSSEuChxEj_8clap_lexNtB3_7RawArgs3newRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterBI_EECs58W9blM4WiW_5uu_rm.exit.i.i: ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNCNvXs_CsczSSEuChxEj_8clap_lexNtB1O_7RawArgsINtNtBa_7convert4FromINtNtNtBa_5slice4iter4IterBV_EE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4q_3VecBV_E14extend_trustedINtB4_3MapB2K_B1H_EE0E0E0Cs58W9blM4WiW_5uu_rm.exit.i.i.i.i.i.i.i.i.i.i, %.loopexit263
  %.sroa.10.0.i13.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %.loopexit263 ], [ %i.bb, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNCNvXs_CsczSSEuChxEj_8clap_lexNtB1O_7RawArgsINtNtBa_7convert4FromINtNtNtBa_5slice4iter4IterBV_EE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4q_3VecBV_E14extend_trustedINtB4_3MapB2K_B1H_EE0E0E0Cs58W9blM4WiW_5uu_rm.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  store i64 %2, ptr %i.i, align 8, !alias.scope !790, !noalias !788
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 7 uses
  store ptr %.sroa.10.0.i13.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !790, !noalias !788
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 9 uses
  store i64 %2, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !790, !noalias !788
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 700
  %.val47.i.i = load i32, ptr %i.bn, align 4, !alias.scope !785, !noalias !842, !noundef !4 ; 2 uses
  %i.bo = and i32 %.val47.i.i, 2048
  %.not98.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not98.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RINvMCsczSSEuChxEj_8clap_lexNtB3_7RawArgs3newRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterBI_EECs58W9blM4WiW_5uu_rm.exit.i.i
  %.not.i.i.a = icmp eq i64 %2, 0
  br i1 %.not.i.i.a, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.n, %bb.m, %bb.k, %_RINvMCsczSSEuChxEj_8clap_lexNtB3_7RawArgs3newRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterBI_EECs58W9blM4WiW_5uu_rm.exit.i.i
  %i.bp = phi i64 [ 0, %_RINvMCsczSSEuChxEj_8clap_lexNtB3_7RawArgs3newRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterBI_EECs58W9blM4WiW_5uu_rm.exit.i.i ], [ 1, %bb.n ], [ 1, %bb.m ], [ 1, %bb.k ] ; 5 uses
  %i.bq = and i32 %.val47.i.i, 67108864
  %.not99.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not99.i.i, label %bb.ao, label %bb.ar

bb.m:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i13.i.i.i.i.i, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !788, !nonnull !4, !noundef !4
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i13.i.i.i.i.i, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !788, !noundef !4
  %i.bv = call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path9file_stem(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bs, i64 noundef %i.bu) #21, !noalias !788 ; 2 uses
  %i.bw = extractvalue { ptr, i64 } %i.bv, 0      ; 2 uses
  %.not41.i.i = icmp eq ptr %i.bw, null
  br i1 %.not41.i.i, label %bb.l, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = extractvalue { ptr, i64 } %i.bv, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !843
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef %i.bx) #21, !noalias !788
  %i.by = load i64, ptr %i.f, align 8, !range !493, !noalias !843, !noundef !4
  %i.bz = trunc nuw i64 %i.by to i1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !843, !nonnull !4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !843 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !843
  br i1 %i.bz, label %bb.l, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !788
  %.not.i.i.i = icmp slt i64 %i.cd, 0
  br i1 %.not.i.i.i, label %bb.q, label %bb.p, !prof !658

bb.p:                                             ; preds = %bb.o
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs58W9blM4WiW_5uu_rm.exit.thread81.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.p
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !846
  %i.cf = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.cd, i64 noundef range(i64 1, 9) 1) #21, !noalias !846 ; 3 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.q, label %bb.an

bb.q:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.o
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.o ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.cd) #24, !noalias !788
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs58W9blM4WiW_5uu_rm.exit.thread81.i.i: ; preds = %bb.an, %bb.p
  %i.ch = phi ptr [ %i.cf, %bb.an ], [ inttoptr (i64 1 to ptr), %bb.p ] ; 2 uses
  store i64 %i.cd, ptr %i.h, align 8, !noalias !788
  %.sroa.423.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr %i.ch, ptr %.sroa.423.0..sroa_idx.i.i, align 8, !noalias !788
  %.sroa.624.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 %i.cd, ptr %.sroa.624.0..sroa_idx.i.i, align 8, !noalias !788
  call void @llvm.experimental.noalias.scope.decl(metadata !849)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !852
  call void @llvm.experimental.noalias.scope.decl(metadata !853)
  call void @llvm.experimental.noalias.scope.decl(metadata !856)
  call void @llvm.experimental.noalias.scope.decl(metadata !858)
  call void @llvm.experimental.noalias.scope.decl(metadata !860)
  %i.ci = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !863, !noalias !864, !noundef !4 ; 6 uses
  %i.cj = icmp ult i64 %i.ci, 384307168202282326
  call void @llvm.assume(i1 %i.cj)
  %i.ck = icmp eq i64 %i.ci, 0
  br i1 %i.ck, label %bb.r, label %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE6spliceINtNtNtCs6JMX4GRUq9U_4core3ops5range5RangejEINtNtNtNtB1D_4iter8adapters3map3MapINtNtNtB1D_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3i_INtNtB1D_7convert4IntoBG_E4intoEECs58W9blM4WiW_5uu_rm.exit.i.i.i, !prof !134

bb.r:                                             ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs58W9blM4WiW_5uu_rm.exit.thread81.i.i
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 1, i64 noundef range(i64 0, 384307168202282326) 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #22, !noalias !866
  unreachable

_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE6spliceINtNtNtCs6JMX4GRUq9U_4core3ops5range5RangejEINtNtNtNtB1D_4iter8adapters3map3MapINtNtNtB1D_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3i_INtNtB1D_7convert4IntoBG_E4intoEECs58W9blM4WiW_5uu_rm.exit.i.i.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs58W9blM4WiW_5uu_rm.exit.thread81.i.i
  %i.cl = ptrtoint ptr %i.h to i64
  store i64 1, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !863, !noalias !864
  %i.cm = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !863, !noalias !864, !nonnull !4, !noundef !4 ; 3 uses
  %i.cn = add nsw i64 %i.ci, -1                   ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !853, !noalias !869
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 7 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !853, !noalias !869
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 4 uses
  store i64 %i.cn, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !853, !noalias !869
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 4 uses
  store i64 0, ptr %i.co, align 8, !alias.scope !870, !noalias !871
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 1, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !870, !noalias !871
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %i.cl, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !alias.scope !870, !noalias !871
  call void @llvm.experimental.noalias.scope.decl(metadata !872)
  call void @llvm.experimental.noalias.scope.decl(metadata !875)
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !alias.scope !878, !noalias !852
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !878, !noalias !852
  %i.cp = icmp eq i64 %i.ci, 1
  br i1 %i.cp, label %bb.s, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE4fillINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1W_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB36_INtNtB1W_7convert4IntoBZ_E4intoEECs58W9blM4WiW_5uu_rm.exit.i.i.i.i.i

bb.s:                                             ; preds = %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE6spliceINtNtNtCs6JMX4GRUq9U_4core3ops5range5RangejEINtNtNtNtB1D_4iter8adapters3map3MapINtNtNtB1D_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3i_INtNtB1D_7convert4IntoBG_E4intoEECs58W9blM4WiW_5uu_rm.exit.i.i.i
  call fastcc void @_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB4_10SpecExtendBT_QINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB27_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3h_INtNtB27_7convert4IntoBT_E4intoEE11spec_extendCs58W9blM4WiW_5uu_rm(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.co) #21, !noalias !788
  br label %_RNvXs1_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB10_5array4iter8IntoIterRNtNtB9_6string6StringKj1_ENvYB2a_INtNtB10_7convert4IntoNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE4intoEENtNtNtB10_3ops4drop4Drop4dropCs58W9blM4WiW_5uu_rm.exit.i.i.i.i

bb.t:                                             ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs7tKScEop1B6_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCs58W9blM4WiW_5uu_rm.exit.thread6.peel.i37.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !879
  br label %bb.v

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE9move_tailCs58W9blM4WiW_5uu_rm.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !879
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !886
  %i.cq = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef range(i64 1, 9) 8) #21, !noalias !886 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 24) #24, !noalias !889
  unreachable

_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE4fillINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1W_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB36_INtNtB1W_7convert4IntoBZ_E4intoEECs58W9blM4WiW_5uu_rm.exit.i.i.i.i.i: ; preds = %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE6spliceINtNtNtCs6JMX4GRUq9U_4core3ops5range5RangejEINtNtNtNtB1D_4iter8adapters3map3MapINtNtNtB1D_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3i_INtNtB1D_7convert4IntoBG_E4intoEECs58W9blM4WiW_5uu_rm.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !890)
  %i.cs = load i64, ptr %i.i, align 8, !range !40, !alias.scope !849, !noalias !893, !noundef !4
  %i.ct = icmp eq i64 %i.cs, %i.ci
  br i1 %i.ct, label %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE9move_tailCs58W9blM4WiW_5uu_rm.exit.i.i.i.i.i, label %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE9move_tailCs58W9blM4WiW_5uu_rm.exit.i.i.i.thread.i.i, !prof !134

_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE9move_tailCs58W9blM4WiW_5uu_rm.exit.i.i.i.thread.i.i: ; preds = %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE4fillINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1W_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB36_INtNtB1W_7convert4IntoBZ_E4intoEECs58W9blM4WiW_5uu_rm.exit.i.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.cw = mul nuw nsw i64 %i.cn, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cv, ptr nonnull align 8 %i.cu, i64 %i.cw, i1 false), !noalias !893
  store i64 2, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !894, !noalias !852
  br label %.lr.ph.i29.i.i.i.i.i

_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE9move_tailCs58W9blM4WiW_5uu_rm.exit.i.i.i.i.i: ; preds = %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE4fillINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1W_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB36_INtNtB1W_7convert4IntoBZ_E4intoEECs58W9blM4WiW_5uu_rm.exit.i.i.i.i.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs58W9blM4WiW_5uu_rm(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.ci, i64 noundef 1, i64 noundef 8, i64 noundef 24) #21, !noalias !893
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !849, !noalias !893 ; 3 uses
  %.pre.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !849, !noalias !895 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 48
end_hunk_0
begin_hunk_1_@_RNvCs58W9blM4WiW_5uu_rm6remove:bb.a
  %i.fd = and i8 %.val26.i.i, 1
  %or.cond.not.i.i.i.i = icmp eq i8 %i.fd, 0
  %cond.i.i.i = icmp eq i8 %.val27.i.i, 3
  %i.fe = icmp eq i8 %.val27.i.i, 2               ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.495.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.497.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.598.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %.sroa.4102.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.4.0..sroa_idx.i179.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.5.0..sroa_idx.i180.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.4106.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.4110.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.fn = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.476.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.478.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.579.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %.sroa.483.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.4.0..sroa_idx.i158.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.5.0..sroa_idx.i159.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.487.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %.sroa.491.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.sroa.457.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.459.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.560.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %.sroa.464.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.sroa.4.0..sroa_idx.i137.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.5.0..sroa_idx.i138.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ge = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.468.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.sroa.472.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.sroa.438.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.sroa.440.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.sroa.541.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.gn = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %.sroa.445.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.go = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.gp = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.sroa.449.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %.sroa.453.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.gu = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 6
  %.val28.i.i = load i8, ptr %i.gz, align 1       ; 6 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 5 uses
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %.sroa.534.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.hi = load i8, ptr %i.ec, align 1, !range !132
  %i.hj = trunc nuw i8 %i.hi to i1
  %i.hk = load i8, ptr %i.fb, align 1, !range !495
  %i.hl = icmp eq i8 %i.hk, 2                     ; 2 uses
  %.sroa.822.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.923.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.hn = load i8, ptr %i.hm, align 1, !range !132
  %i.ho = trunc nuw i8 %i.hn to i1
  %.sroa.1223.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.hp = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.val14.i.i.i = load i8, ptr %i.fa, align 1
  %i.hs = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.hx = load i8, ptr %2, align 1, !range !132
  %i.hy = trunc nuw i8 %i.hx to i1                ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 5 uses
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 2 uses
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.010.2 = xor i1 %i.hy, true
  %i.ih = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %_RNvCs58W9blM4WiW_5uu_rm10handle_dir.exit
  %.sroa.0.0.ph228 = phi i1 [ false, %.lr.ph.lr.ph ], [ %i.ach, %_RNvCs58W9blM4WiW_5uu_rm10handle_dir.exit ] ; 4 uses
  %.sroa.07.0.ph226 = phi i1 [ false, %.lr.ph.lr.ph ], [ %.sroa.07.1, %_RNvCs58W9blM4WiW_5uu_rm10handle_dir.exit ] ; 3 uses
  %.sroa.08.0.ph225 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %.us-phi, %_RNvCs58W9blM4WiW_5uu_rm10handle_dir.exit ] ; 5 uses
  %.sroa.10.0.ph224 = phi i64 [ undef, %.lr.ph.lr.ph ], [ %.sroa.10.1, %_RNvCs58W9blM4WiW_5uu_rm10handle_dir.exit ] ; 13 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.08.0.ph225, i64 16 ; 6 uses
  %i.ij = load ptr, ptr %.sroa.08.0.ph225, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.08.0.ph225, i64 8
  %i.il = load i64, ptr %i.ik, align 8, !noundef !4 ; 7 uses
  %.not.us = icmp eq i64 %i.il, 0                 ; 2 uses
  br i1 %.not232, label %.split, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.us, label %.split, label %.lr.ph206.preheader

.lr.ph206.preheader:                              ; preds = %.lr.ph.split
  %i.im = getelementptr i8, ptr %i.ij, i64 %i.il
  %i.in = getelementptr i8, ptr %i.im, i64 -1
  %i.io = load i8, ptr %i.in, align 1, !noundef !4
  %i.ip = icmp eq i8 %i.io, 47
  br i1 %i.ip, label %bb.b, label %.split

bb.b:                                             ; preds = %.lr.ph206.preheader
  %i.iq = call fastcc noundef zeroext i1 @_RNvCs58W9blM4WiW_5uu_rm12is_root_path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ij, i64 noundef %i.il) #21
  br i1 %i.iq, label %bb.c, label %.split

bb.c:                                             ; preds = %bb.b
  call fastcc void @_RNvCs58W9blM4WiW_5uu_rm24show_preserve_root_error(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ij, i64 noundef %i.il) #21
  %i.ir = icmp eq ptr %i.ii, %i.dy
  br i1 %i.ir, label %.outer._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.08.0.ph225, i64 32 ; 2 uses
  %i.it = load ptr, ptr %i.ii, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.08.0.ph225, i64 24
  %i.iv = load i64, ptr %i.iu, align 8, !noundef !4 ; 2 uses
  %.not.peel = icmp eq i64 %i.iv, 0
  br i1 %.not.peel, label %.split, label %.lr.ph206

bb.e:                                             ; preds = %bb.g
  %i.iw = getelementptr inbounds nuw i8, ptr %i.jc, i64 16 ; 2 uses
  %i.ix = load ptr, ptr %i.jc, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.iz = load i64, ptr %i.iy, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.iz, 0
  br i1 %.not, label %.split, label %.lr.ph206, !llvm.loop !1503

.outer._crit_edge:                                ; preds = %_RNvCs58W9blM4WiW_5uu_rm10handle_dir.exit, %bb.c, %bb.g
  %.sroa.07.0.ph.lcssa192.ph = phi i1 [ %.sroa.07.0.ph226, %bb.g ], [ %.sroa.07.0.ph226, %bb.c ], [ %.sroa.07.1, %_RNvCs58W9blM4WiW_5uu_rm10handle_dir.exit ]
  %.sroa.0.0.lcssa.ph = phi i1 [ true, %bb.g ], [ true, %bb.c ], [ %i.ach, %_RNvCs58W9blM4WiW_5uu_rm10handle_dir.exit ] ; 2 uses
  %.pr = load ptr, ptr %i.dx, align 8
  %.not33 = icmp eq ptr %.pr, null
  br i1 %.not33, label %.outer._crit_edge.thread, label %bb.js

.lr.ph206:                                        ; preds = %bb.d, %bb.e
  %i.ja = phi i64 [ %i.iz, %bb.e ], [ %i.iv, %bb.d ] ; 5 uses
  %i.jb = phi ptr [ %i.ix, %bb.e ], [ %i.it, %bb.d ] ; 5 uses
  %i.jc = phi ptr [ %i.iw, %bb.e ], [ %i.is, %bb.d ] ; 6 uses
  %i.jd = getelementptr i8, ptr %i.jb, i64 %i.ja
  %i.je = getelementptr i8, ptr %i.jd, i64 -1
  %i.jf = load i8, ptr %i.je, align 1, !noundef !4
  %i.jg = icmp eq i8 %i.jf, 47
  br i1 %i.jg, label %bb.f, label %.split

.split:                                           ; preds = %bb.e, %bb.f, %.lr.ph206, %.lr.ph, %.lr.ph206.preheader, %bb.b, %bb.d, %.lr.ph.split
  %.us-phi = phi ptr [ %i.ii, %.lr.ph ], [ %i.ii, %.lr.ph.split ], [ %i.ii, %.lr.ph206.preheader ], [ %i.ii, %bb.b ], [ %i.is, %bb.d ], [ %i.jc, %.lr.ph206 ], [ %i.jc, %bb.f ], [ %i.iw, %bb.e ] ; 2 uses
  %.us-phi198 = phi ptr [ %i.ij, %.lr.ph ], [ %i.ij, %.lr.ph.split ], [ %i.ij, %.lr.ph206.preheader ], [ %i.ij, %bb.b ], [ %i.it, %bb.d ], [ %i.jb, %.lr.ph206 ], [ %i.jb, %bb.f ], [ %i.ix, %bb.e ] ; 47 uses
  %.us-phi199 = phi i64 [ %i.il, %.lr.ph ], [ 0, %.lr.ph.split ], [ %i.il, %.lr.ph206.preheader ], [ %i.il, %bb.b ], [ 0, %bb.d ], [ %i.ja, %.lr.ph206 ], [ %i.ja, %bb.f ], [ 0, %bb.e ] ; 15 uses
  %.us-phi200 = phi i1 [ %.not.us, %.lr.ph ], [ true, %.lr.ph.split ], [ false, %.lr.ph206.preheader ], [ false, %bb.b ], [ true, %bb.d ], [ false, %.lr.ph206 ], [ false, %bb.f ], [ true, %bb.e ]
  %.us-phi201 = phi i1 [ %.sroa.0.0.ph228, %.lr.ph ], [ %.sroa.0.0.ph228, %.lr.ph.split ], [ %.sroa.0.0.ph228, %.lr.ph206.preheader ], [ %.sroa.0.0.ph228, %bb.b ], [ true, %bb.d ], [ true, %.lr.ph206 ], [ true, %bb.f ], [ true, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp), !noalias !1505
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs16symlink_metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.dp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.us-phi198, i64 noundef %.us-phi199) #21, !noalias !1509
  %i.jh = load i64, ptr %i.dp, align 8, !range !201, !noalias !1505, !noundef !4
  %i.ji = icmp eq i64 %i.jh, 2
  br i1 %i.ji, label %bb.h, label %bb.i

bb.f:                                             ; preds = %.lr.ph206
  %i.jj = call fastcc noundef zeroext i1 @_RNvCs58W9blM4WiW_5uu_rm12is_root_path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jb, i64 noundef %i.ja) #21
  br i1 %i.jj, label %bb.g, label %.split

bb.g:                                             ; preds = %bb.f
  call fastcc void @_RNvCs58W9blM4WiW_5uu_rm24show_preserve_root_error(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jb, i64 noundef %i.ja) #21
  %i.jk = icmp eq ptr %i.jc, %i.dy
  br i1 %i.jk, label %.outer._crit_edge, label %bb.e

bb.h:                                             ; preds = %.split
  %i.jl = load ptr, ptr %i.hw, align 8, !noalias !1505, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp), !noalias !1505
  br i1 %i.hy, label %bb.jp, label %bb.in

bb.i:                                             ; preds = %.split
  %.sroa.8.sroa.4.0.copyload = load i32, ptr %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx61.sroa_idx, align 8, !noalias !1510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp), !noalias !1505
  %i.jm = load ptr, ptr %i.dx, align 8            ; 2 uses
  %.not29 = icmp eq ptr %i.jm, null
  %or.cond34 = select i1 %i.ei, i1 %.not29, i1 false
  br i1 %or.cond34, label %.lr.ph.i.i, label %bb.j

bb.j:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6Mg6kPLyuSp_9indicatif12progress_bar11ProgressBarEECs58W9blM4WiW_5uu_rm.exit, %bb.i
  %i.jn = phi ptr [ %.sroa.064.0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6Mg6kPLyuSp_9indicatif12progress_bar11ProgressBarEECs58W9blM4WiW_5uu_rm.exit ], [ %i.jm, %bb.i ]
  %i.jo = and i32 %.sroa.8.sroa.4.0.copyload, 61440
  %i.jp = icmp eq i32 %i.jo, 16384
  %.not31 = icmp eq ptr %i.jn, null               ; 2 uses
  %. = select i1 %.not31, ptr null, ptr %i.dx     ; 5 uses
  br i1 %i.jp, label %bb.ao, label %bb.an

.lr.ph.i.i:                                       ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.566)
  call void @llvm.experimental.noalias.scope.decl(metadata !1511)
  call void @llvm.experimental.noalias.scope.decl(metadata !1514)
  br i1 %i.ej, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit.us.i.i
  %.sroa.0.022.us.i.i = phi i64 [ %.sroa.0.2.us.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit.us.i.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %.sroa.03.021.us.i.i = phi ptr [ %i.jq, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit.us.i.i ], [ %0, %.lr.ph.i.i ] ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.03.021.us.i.i, i64 16 ; 2 uses
  %i.jr = load ptr, ptr %.sroa.03.021.us.i.i, align 8, !alias.scope !1517, !noalias !1518, !nonnull !4, !noundef !4 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.03.021.us.i.i, i64 8
  %i.jt = load i64, ptr %i.js, align 8, !alias.scope !1517, !noalias !1518, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !noalias !1520
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs16symlink_metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.di, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jr, i64 noundef %i.jt) #21, !noalias !1524
  %i.ju = load i64, ptr %i.di, align 8, !range !201, !noalias !1520, !noundef !4
  %i.jv = icmp eq i64 %i.ju, 2
  br i1 %i.jv, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.us.i.i
  %.sroa.1112.0.copyload.us.i.i = load i32, ptr %.sroa.1112.0..sroa_idx.i.i, align 8, !noalias !1525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !1520
  %i.jw = and i32 %.sroa.1112.0.copyload.us.i.i, 61440
  %i.jx = icmp eq i32 %i.jw, 16384
  br i1 %i.jx, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.jy = add i64 %.sroa.0.022.us.i.i, 1
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit.us.i.i

bb.m:                                             ; preds = %bb.k
  %i.jz = call fastcc noundef i64 @_RNvCs58W9blM4WiW_5uu_rm24count_files_in_directory(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jr, i64 noundef %i.jt) #21, !noalias !1526
  %i.ka = add i64 %i.jz, %.sroa.0.022.us.i.i
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit.us.i.i

bb.n:                                             ; preds = %.lr.ph.split.us.i.i
  %i.kb = load ptr, ptr %i.ek, align 8, !noalias !1520, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !1520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !noalias !1526
  %i.kc = ptrtoint ptr %i.kb to i64               ; 2 uses
  %i.kd = and i64 %i.kc, 3
  switch i64 %i.kd, label %.unreachabledefault [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit11.us.i.i
    i64 3, label %bb.p
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit11.us.i.i
    i64 1, label %bb.o
  ], !prof !126

bb.o:                                             ; preds = %bb.n
  %i.ke = getelementptr i8, ptr %i.kb, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ke) ]
  store ptr %i.ke, ptr %i.el, align 8, !alias.scope !1527, !noalias !1526
  store i8 3, ptr %i.dh, align 8, !alias.scope !1527, !noalias !1526
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.el) #21, !noalias !1526
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit11.us.i.i

bb.p:                                             ; preds = %bb.n
  %i.kf = icmp ult ptr %i.kb, inttoptr (i64 188978561024 to ptr)
  %i.kg = and i64 %i.kc, 1095216660480
  %i.kh = icmp ne i64 %i.kg, 1095216660480
  call void @llvm.assume(i1 %i.kf)
  call void @llvm.assume(i1 %i.kh)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit11.us.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit11.us.i.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !1526
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit.us.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit.us.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit11.us.i.i, %bb.m, %bb.l
  %.sroa.0.2.us.i.i = phi i64 [ %.sroa.0.022.us.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit11.us.i.i ], [ %i.ka, %bb.m ], [ %i.jy, %bb.l ] ; 2 uses
  %i.ki = icmp eq ptr %i.jq, %i.dy
  br i1 %i.ki, label %_RNvCs58W9blM4WiW_5uu_rm11count_files.exit.i, label %.lr.ph.split.us.i.i

.unreachabledefault:                              ; preds = %bb.n
  unreachable

default.unreachable:                              ; preds = %bb.jp, %bb.jf, %bb.jb, %bb.iu, %bb.iq, %bb.ie, %bb.ia, %bb.hr, %bb.hn, %bb.gv, %bb.gr, %bb.fw, %bb.fs, %bb.fg, %bb.ey, %bb.eu, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit182.i.i.i.i, %bb.ee, %bb.ea, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit161.i.i.i.i, %bb.dk, %bb.dg, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit140.i.i.i.i, %bb.cp, %bb.cl, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i.i, %bb.br, %bb.bn, %bb.bf, %bb.bb, %bb.r
  unreachable

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit.i.i
  %.sroa.0.022.i.i = phi i64 [ %.sroa.0.2.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %.sroa.03.021.i.i = phi ptr [ %i.kj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit.i.i ], [ %0, %.lr.ph.i.i ] ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.03.021.i.i, i64 16 ; 2 uses
  %i.kk = load ptr, ptr %.sroa.03.021.i.i, align 8, !alias.scope !1517, !noalias !1518, !nonnull !4, !noundef !4
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.03.021.i.i, i64 8
  %i.km = load i64, ptr %i.kl, align 8, !alias.scope !1517, !noalias !1518, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !noalias !1520
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs16symlink_metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.di, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kk, i64 noundef %i.km) #21, !noalias !1524
  %i.kn = load i64, ptr %i.di, align 8, !range !201, !noalias !1520, !noundef !4
  %i.ko = icmp eq i64 %i.kn, 2
  br i1 %i.ko, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split.i.i
  %.sroa.1112.0.copyload.i.i = load i32, ptr %.sroa.1112.0..sroa_idx.i.i, align 8, !noalias !1525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !1520
  %i.kp = and i32 %.sroa.1112.0.copyload.i.i, 61440
  %i.kq = icmp ne i32 %i.kp, 16384
  %i.kr = zext i1 %i.kq to i64
  %spec.select.i.i = add i64 %.sroa.0.022.i.i, %i.kr
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit11.i.i, %bb.q
  %.sroa.0.2.i.i = phi i64 [ %.sroa.0.022.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit11.i.i ], [ %spec.select.i.i, %bb.q ] ; 2 uses
  %i.ks = icmp eq ptr %i.kj, %i.dy
  br i1 %i.ks, label %_RNvCs58W9blM4WiW_5uu_rm11count_files.exit.i, label %.lr.ph.split.i.i

bb.r:                                             ; preds = %.lr.ph.split.i.i
  %i.kt = load ptr, ptr %i.ek, align 8, !noalias !1520, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !1520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !noalias !1526
  %i.ku = ptrtoint ptr %i.kt to i64               ; 2 uses
  %i.kv = and i64 %i.ku, 3
  switch i64 %i.kv, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit11.i.i
    i64 3, label %bb.s
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit11.i.i
    i64 1, label %bb.t
  ], !prof !126

bb.s:                                             ; preds = %bb.r
  %i.kw = icmp ult ptr %i.kt, inttoptr (i64 188978561024 to ptr)
  %i.kx = and i64 %i.ku, 1095216660480
  %i.ky = icmp ne i64 %i.kx, 1095216660480
  call void @llvm.assume(i1 %i.kw)
  call void @llvm.assume(i1 %i.ky)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit11.i.i

bb.t:                                             ; preds = %bb.r
  %i.kz = getelementptr i8, ptr %i.kt, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kz) ]
  store ptr %i.kz, ptr %i.el, align 8, !alias.scope !1527, !noalias !1526
  store i8 3, ptr %i.dh, align 8, !alias.scope !1527, !noalias !1526
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.el) #21, !noalias !1526
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit11.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit11.i.i: ; preds = %bb.t, %bb.s, %bb.r, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !1526
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit.i.i

_RNvCs58W9blM4WiW_5uu_rm11count_files.exit.i:     ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit.us.i.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.2.us.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit.us.i.i ], [ %.sroa.0.2.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit.i.i ] ; 2 uses
  %i.la = icmp eq i64 %.sroa.0.0.lcssa.i.i, 0
  br i1 %i.la, label %_RNvCs58W9blM4WiW_5uu_rm19create_progress_bar.exit, label %bb.u

bb.u:                                             ; preds = %_RNvCs58W9blM4WiW_5uu_rm11count_files.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !noalias !1530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !noalias !1530
  call void @_RNvMs_NtCs6Mg6kPLyuSp_9indicatif12progress_barNtB4_11ProgressBar3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dn, i64 noundef %.sroa.0.0.lcssa.i.i) #21, !noalias !1530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm), !noalias !1530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !noalias !1530
  call void @_RNvMNtCs6Mg6kPLyuSp_9indicatif5styleNtB2_13ProgressStyle13with_template(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 60) #21, !noalias !1530
  call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  call void @llvm.experimental.noalias.scope.decl(metadata !1534)
  %i.lb = load i64, ptr %i.dl, align 8, !range !224, !alias.scope !1534, !noalias !1536, !noundef !4
  %i.lc = icmp eq i64 %i.lb, -1
  br i1 %i.lc, label %bb.v, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtCs6Mg6kPLyuSp_9indicatif5style13ProgressStyleNtBJ_13TemplateErrorE6unwrapCs58W9blM4WiW_5uu_rm.exit.i, !prof !134

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !1537
  %i.ld = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.le = load i32, ptr %i.ld, align 8, !range !1538, !alias.scope !1534, !noalias !1536, !noundef !4
  %i.lf = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
end_hunk_1
begin_hunk_2_@_RNvCs58W9blM4WiW_5uu_rm6remove:bb.a
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtCs6Mg6kPLyuSp_9indicatif5style13ProgressStyleNtBJ_13TemplateErrorE6unwrapCs58W9blM4WiW_5uu_rm.exit.i: ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.dm, ptr noundef nonnull readonly align 8 dereferenceable(136) %i.dl, i64 136, i1 false), !alias.scope !1540, !noalias !1530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !1530
  call void @_RNvMs_NtCs6Mg6kPLyuSp_9indicatif12progress_barNtB4_11ProgressBar10with_style(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.do, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.dn, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.dm) #21, !noalias !1530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !1530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !1530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !noalias !1530
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 20) #21, !noalias !1530
  call void @llvm.experimental.noalias.scope.decl(metadata !1541)
  %i.li = load ptr, ptr %i.do, align 8, !alias.scope !1541, !noalias !1544, !nonnull !4, !noundef !4 ; 9 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16 ; 5 uses
  %i.lk = cmpxchg ptr %i.lj, i32 0, i32 1 acquire monotonic, align 4, !noalias !1547
  %i.ll = extractvalue { i32, i1 } %i.lk, 1
  br i1 %i.ll, label %bb.x, label %bb.w, !prof !133

bb.w:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtCs6Mg6kPLyuSp_9indicatif5style13ProgressStyleNtBJ_13TemplateErrorE6unwrapCs58W9blM4WiW_5uu_rm.exit.i
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.lj) #21, !noalias !1547
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtCs6Mg6kPLyuSp_9indicatif5style13ProgressStyleNtBJ_13TemplateErrorE6unwrapCs58W9blM4WiW_5uu_rm.exit.i
  %i.lm = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1547
  %i.ln = and i64 %i.lm, 9223372036854775807
  %i.lo = icmp eq i64 %i.ln, 0
  br i1 %i.lo, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtCs6Mg6kPLyuSp_9indicatif5state8BarStateE4lockCs58W9blM4WiW_5uu_rm.exit.i.i, label %bb.y, !prof !133

bb.y:                                             ; preds = %bb.x
  %i.lp = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #20, !noalias !1547
  %i.lq = xor i1 %i.lp, true
  %i.lr = zext i1 %i.lq to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtCs6Mg6kPLyuSp_9indicatif5state8BarStateE4lockCs58W9blM4WiW_5uu_rm.exit.i.i

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtCs6Mg6kPLyuSp_9indicatif5state8BarStateE4lockCs58W9blM4WiW_5uu_rm.exit.i.i: ; preds = %bb.y, %bb.x
  %.sroa.01.0.i.i.i.i = phi i8 [ %i.lr, %bb.y ], [ 0, %bb.x ] ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.li, i64 20 ; 2 uses
  %i.lt = load atomic i8, ptr %i.ls monotonic, align 1, !noalias !1547
  %.not.i.i.not.i.i = icmp eq i8 %i.lt, 0
  br i1 %.not.i.i.not.i.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtCs6Mg6kPLyuSp_9indicatif5state8BarStateEINtBM_11PoisonErrorBH_EE6unwrapCs58W9blM4WiW_5uu_rm.exit.i.i, label %bb.z, !prof !133

bb.z:                                             ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtCs6Mg6kPLyuSp_9indicatif5state8BarStateE4lockCs58W9blM4WiW_5uu_rm.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !noalias !1550
  store ptr %i.lj, ptr %i.df, align 8, !noalias !1550
  %i.lu = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i8 %.sroa.01.0.i.i.i.i, ptr %i.lu, align 8, !noalias !1550
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 43, ptr noundef nonnull %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22, !noalias !1550
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtCs6Mg6kPLyuSp_9indicatif5state8BarStateEINtBM_11PoisonErrorBH_EE6unwrapCs58W9blM4WiW_5uu_rm.exit.i.i: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtCs6Mg6kPLyuSp_9indicatif5state8BarStateE4lockCs58W9blM4WiW_5uu_rm.exit.i.i
  %i.lv = trunc nuw i8 %.sroa.01.0.i.i.i.i to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !noalias !1553
  %i.lw = getelementptr inbounds nuw i8, ptr %i.li, i64 536
  %i.lx = load i64, ptr %i.lw, align 8, !noalias !1553, !noundef !4
  call void @_RNvMs1_NtCs6Mg6kPLyuSp_9indicatif5stateNtB5_17TabExpandedString3new(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.dg, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dk, i64 noundef %i.lx) #21, !noalias !1554
  %i.ly = getelementptr inbounds nuw i8, ptr %i.li, i64 64 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  %i.lz = load i64, ptr %i.ly, align 8, !range !208, !alias.scope !1555, !noalias !1553, !noundef !4 ; 3 uses
  %i.ma = icmp eq i64 %i.lz, -2
  br i1 %i.ma, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtCs6Mg6kPLyuSp_9indicatif5state8BarStateEINtBM_11PoisonErrorBH_EE6unwrapCs58W9blM4WiW_5uu_rm.exit.i.i
  %i.mb = getelementptr inbounds nuw i8, ptr %i.li, i64 72
  %.val2.i.i.i = load i64, ptr %i.mb, align 8, !range !224, !alias.scope !1555, !noalias !1553, !noundef !4 ; 2 uses
  %i.mc = icmp sgt i64 %.val2.i.i.i, 0
  br i1 %i.mc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs58W9blM4WiW_5uu_rm.exit.sink.split.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs6Mg6kPLyuSp_9indicatif5state17TabExpandedStringECs58W9blM4WiW_5uu_rm.exit.i.i

bb.ab:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtCs6Mg6kPLyuSp_9indicatif5state8BarStateEINtBM_11PoisonErrorBH_EE6unwrapCs58W9blM4WiW_5uu_rm.exit.i.i
  %i.md = icmp sgt i64 %i.lz, 0
  br i1 %i.md, label %bb.ac, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs58W9blM4WiW_5uu_rm.exit6.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.me = getelementptr inbounds nuw i8, ptr %i.li, i64 72
  %.val1.i.i.i = load ptr, ptr %i.me, align 8, !alias.scope !1555, !noalias !1553, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.lz, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1558
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs58W9blM4WiW_5uu_rm.exit6.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs58W9blM4WiW_5uu_rm.exit6.i.i.i: ; preds = %bb.ac, %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !1561)
  call void @llvm.experimental.noalias.scope.decl(metadata !1564)
  %i.mf = getelementptr inbounds nuw i8, ptr %i.li, i64 112
  %.val.i.i.i.i.i = load i32, ptr %i.mf, align 8, !alias.scope !1567, !noalias !1553, !noundef !4
  switch i32 %.val.i.i.i.i.i, label %bb.ad [
    i32 3, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs6Mg6kPLyuSp_9indicatif5state17TabExpandedStringECs58W9blM4WiW_5uu_rm.exit.i.i
    i32 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs6Mg6kPLyuSp_9indicatif5state17TabExpandedStringECs58W9blM4WiW_5uu_rm.exit.i.i
    i32 0, label %bb.ae
  ], !prof !1568

bb.ad:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs58W9blM4WiW_5uu_rm.exit6.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @89, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #22, !noalias !1569
  unreachable

bb.ae:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs58W9blM4WiW_5uu_rm.exit6.i.i.i
  %i.mg = getelementptr inbounds nuw i8, ptr %i.li, i64 88
  %.val.i.i.i.i.i.i = load i64, ptr %i.mg, align 8, !range !40, !alias.scope !1570, !noalias !1553, !noundef !4 ; 2 uses
  %i.mh = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.mh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs6Mg6kPLyuSp_9indicatif5state17TabExpandedStringECs58W9blM4WiW_5uu_rm.exit.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs58W9blM4WiW_5uu_rm.exit.sink.split.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs58W9blM4WiW_5uu_rm.exit.sink.split.i.i.i: ; preds = %bb.ae, %bb.aa
  %.sink7.i.i.i = phi i64 [ 16, %bb.aa ], [ 32, %bb.ae ]
  %.val.i.i.i.sink.i.i.i = phi i64 [ %.val2.i.i.i, %bb.aa ], [ %.val.i.i.i.i.i.i, %bb.ae ]
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ly, i64 %.sink7.i.i.i
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.mi, align 8, !alias.scope !1555, !noalias !1553, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.sink.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1573
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs6Mg6kPLyuSp_9indicatif5state17TabExpandedStringECs58W9blM4WiW_5uu_rm.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs6Mg6kPLyuSp_9indicatif5state17TabExpandedStringECs58W9blM4WiW_5uu_rm.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs58W9blM4WiW_5uu_rm.exit.sink.split.i.i.i, %bb.ae, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs58W9blM4WiW_5uu_rm.exit6.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs58W9blM4WiW_5uu_rm.exit6.i.i.i, %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ly, ptr noundef nonnull align 8 dereferenceable(64) %i.dg, i64 64, i1 false), !noalias !1553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !1553
  br i1 %i.lv, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs6Mg6kPLyuSp_9indicatif5state17TabExpandedStringECs58W9blM4WiW_5uu_rm.exit.i.i
  %i.mj = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1553
  %i.mk = and i64 %i.mj, 9223372036854775807
  %i.ml = icmp eq i64 %i.mk, 0
  br i1 %i.ml, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.ag, !prof !133

bb.ag:                                            ; preds = %bb.af
  %i.mm = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #20, !noalias !1553
  br i1 %i.mm, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store atomic i8 1, ptr %i.ls monotonic, align 4, !noalias !1553
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.ah, %bb.ag, %bb.af, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs6Mg6kPLyuSp_9indicatif5state17TabExpandedStringECs58W9blM4WiW_5uu_rm.exit.i.i
  %i.mn = atomicrmw xchg ptr %i.lj, i32 0 release, align 4, !noalias !1553
  %i.mo = icmp eq i32 %i.mn, 2
  br i1 %i.mo, label %bb.ai, label %_RINvMs_NtCs6Mg6kPLyuSp_9indicatif12progress_barNtB5_11ProgressBar12with_messageNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit.i, !prof !134

bb.ai:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.lj) #21, !noalias !1553
  br label %_RINvMs_NtCs6Mg6kPLyuSp_9indicatif12progress_barNtB5_11ProgressBar12with_messageNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit.i

_RINvMs_NtCs6Mg6kPLyuSp_9indicatif12progress_barNtB5_11ProgressBar12with_messageNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit.i: ; preds = %bb.ai, %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.566, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.566.0..sroa_idx67, i64 16, i1 false), !noalias !1511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !1530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !noalias !1530
  br label %_RNvCs58W9blM4WiW_5uu_rm19create_progress_bar.exit

_RNvCs58W9blM4WiW_5uu_rm19create_progress_bar.exit: ; preds = %_RNvCs58W9blM4WiW_5uu_rm11count_files.exit.i, %_RINvMs_NtCs6Mg6kPLyuSp_9indicatif12progress_barNtB5_11ProgressBar12with_messageNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit.i
  %.sroa.064.0 = phi ptr [ %i.li, %_RINvMs_NtCs6Mg6kPLyuSp_9indicatif12progress_barNtB5_11ProgressBar12with_messageNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit.i ], [ null, %_RNvCs58W9blM4WiW_5uu_rm11count_files.exit.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1574)
  %i.mp = load ptr, ptr %i.dx, align 8, !alias.scope !1574, !noundef !4 ; 2 uses
  %i.mq = icmp eq ptr %i.mp, null
  br i1 %i.mq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6Mg6kPLyuSp_9indicatif12progress_bar11ProgressBarEECs58W9blM4WiW_5uu_rm.exit, label %bb.aj

bb.aj:                                            ; preds = %_RNvCs58W9blM4WiW_5uu_rm19create_progress_bar.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1577)
  %i.mr = atomicrmw sub ptr %i.mp, i64 1 release, align 8, !noalias !1580
  %i.ms = icmp eq i64 %i.mr, 1
  br i1 %i.ms, label %bb.ak, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex5MutexNtNtCs6Mg6kPLyuSp_9indicatif5state8BarStateEEECs58W9blM4WiW_5uu_rm.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex5MutexNtNtCs6Mg6kPLyuSp_9indicatif5state8BarStateEE9drop_slowB1z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dx) #20
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex5MutexNtNtCs6Mg6kPLyuSp_9indicatif5state8BarStateEEECs58W9blM4WiW_5uu_rm.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex5MutexNtNtCs6Mg6kPLyuSp_9indicatif5state8BarStateEEECs58W9blM4WiW_5uu_rm.exit.i.i: ; preds = %bb.ak, %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !1585)
  call void @llvm.experimental.noalias.scope.decl(metadata !1588)
  %i.mt = load ptr, ptr %i.em, align 8, !alias.scope !1591, !nonnull !4, !noundef !4
  %i.mu = atomicrmw sub ptr %i.mt, i64 1 release, align 8, !noalias !1592
  %i.mv = icmp eq i64 %i.mu, 1
  br i1 %i.mv, label %bb.al, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtCs6Mg6kPLyuSp_9indicatif5state14AtomicPositionEECs58W9blM4WiW_5uu_rm.exit.i.i

bb.al:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex5MutexNtNtCs6Mg6kPLyuSp_9indicatif5state8BarStateEEECs58W9blM4WiW_5uu_rm.exit.i.i
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtCs6Mg6kPLyuSp_9indicatif5state14AtomicPositionE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.em) #20
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtCs6Mg6kPLyuSp_9indicatif5state14AtomicPositionEECs58W9blM4WiW_5uu_rm.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtCs6Mg6kPLyuSp_9indicatif5state14AtomicPositionEECs58W9blM4WiW_5uu_rm.exit.i.i: ; preds = %bb.al, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex5MutexNtNtCs6Mg6kPLyuSp_9indicatif5state8BarStateEEECs58W9blM4WiW_5uu_rm.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1593)
  call void @llvm.experimental.noalias.scope.decl(metadata !1596)
  %i.mw = load ptr, ptr %i.en, align 8, !alias.scope !1599, !nonnull !4, !noundef !4
  %i.mx = atomicrmw sub ptr %i.mw, i64 1 release, align 8, !noalias !1600
  %i.my = icmp eq i64 %i.mx, 1
  br i1 %i.my, label %bb.am, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6Mg6kPLyuSp_9indicatif12progress_bar11ProgressBarEECs58W9blM4WiW_5uu_rm.exit

bb.am:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtCs6Mg6kPLyuSp_9indicatif5state14AtomicPositionEECs58W9blM4WiW_5uu_rm.exit.i.i
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex5MutexINtNtCs6JMX4GRUq9U_4core6option6OptionNtNtCs6Mg6kPLyuSp_9indicatif12progress_bar6TickerEEE9drop_slowCs58W9blM4WiW_5uu_rm(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.en) #20
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6Mg6kPLyuSp_9indicatif12progress_bar11ProgressBarEECs58W9blM4WiW_5uu_rm.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6Mg6kPLyuSp_9indicatif12progress_bar11ProgressBarEECs58W9blM4WiW_5uu_rm.exit: ; preds = %_RNvCs58W9blM4WiW_5uu_rm19create_progress_bar.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtCs6Mg6kPLyuSp_9indicatif5state14AtomicPositionEECs58W9blM4WiW_5uu_rm.exit.i.i, %bb.am
  store ptr %.sroa.064.0, ptr %i.dx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.566, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.566)
  br label %bb.j

bb.an:                                            ; preds = %bb.j
  %i.mz = call fastcc noundef zeroext i1 @_RNvCs58W9blM4WiW_5uu_rm11remove_file(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.us-phi198, i64 noundef %.us-phi199, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(10) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.) #21
  br label %_RNvCs58W9blM4WiW_5uu_rm10handle_dir.exit

bb.ao:                                            ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !1601)
  call void @llvm.experimental.noalias.scope.decl(metadata !1604)
  %i.na = icmp ugt i64 %.us-phi199, 1
  br i1 %i.na, label %bb.ap, label %_RNvCs58W9blM4WiW_5uu_rm22clean_trailing_slashes.exit.i

bb.ap:                                            ; preds = %bb.ao
  %i.nb = add i64 %.us-phi199, -1                 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.us-phi198, i64 %i.nb
  %i.nd = load i8, ptr %i.nc, align 1, !alias.scope !1607, !noalias !1608, !noundef !4
  %i.ne = icmp eq i8 %i.nd, 47
  br i1 %i.ne, label %.lr.ph577, label %_RNvCs58W9blM4WiW_5uu_rm22clean_trailing_slashes.exit.i

.preheader.i.i:                                   ; preds = %.lr.ph577
  %i.nf = icmp ugt i64 %i.ni, 1
  br i1 %i.nf, label %.lr.ph577, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.i.i, %.lr.ph577
  %.sroa.01.0.i.i = phi i64 [ %i.ni, %.lr.ph577 ], [ %i.nb, %.preheader.i.i ] ; 3 uses
  %i.ng = icmp ult i64 %.sroa.01.0.i.i, %.us-phi199
  br i1 %i.ng, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs58W9blM4WiW_5uu_rm.exit.i.i, label %bb.aq, !prof !133

bb.aq:                                            ; preds = %._crit_edge
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.01.0.i.i, i64 noundef range(i64 0, -9223372036854775808) %.us-phi199, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #22, !noalias !1611
  unreachable

_RNvXs8_NtNtCs6JMX4GRUq9U_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs58W9blM4WiW_5uu_rm.exit.i.i: ; preds = %._crit_edge
  %i.nh = add nuw nsw i64 %.sroa.01.0.i.i, 1
  br label %_RNvCs58W9blM4WiW_5uu_rm22clean_trailing_slashes.exit.i

.lr.ph577:                                        ; preds = %bb.ap, %.preheader.i.i
  %.sroa.05.0.i.i576 = phi i64 [ %i.ni, %.preheader.i.i ], [ %.us-phi199, %bb.ap ] ; 2 uses
  %i.ni = add i64 %.sroa.05.0.i.i576, -1          ; 3 uses
  %i.nj = getelementptr i8, ptr %.us-phi198, i64 %.sroa.05.0.i.i576
  %i.nk = getelementptr i8, ptr %i.nj, i64 -2
  %i.nl = load i8, ptr %i.nk, align 1, !alias.scope !1607, !noalias !1608, !noundef !4
  %i.nm = icmp eq i8 %i.nl, 47
  br i1 %i.nm, label %.preheader.i.i, label %._crit_edge

_RNvCs58W9blM4WiW_5uu_rm22clean_trailing_slashes.exit.i: ; preds = %_RNvXs8_NtNtCs6JMX4GRUq9U_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs58W9blM4WiW_5uu_rm.exit.i.i, %bb.ap, %bb.ao
  %.sroa.4.1.i.i = phi i64 [ %.us-phi199, %bb.ap ], [ %i.nh, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs58W9blM4WiW_5uu_rm.exit.i.i ], [ %.us-phi199, %bb.ao ] ; 50 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1615)
  %i.nn = icmp samesign eq i64 %.sroa.4.1.i.i, 0
  br i1 %i.nn, label %_RNvCs58W9blM4WiW_5uu_rm35path_is_current_or_parent_directory.exit.thread.i, label %.lr.ph580

.lr.ph580:                                        ; preds = %_RNvCs58W9blM4WiW_5uu_rm22clean_trailing_slashes.exit.i
  %i.no = getelementptr inbounds nuw i8, ptr %.us-phi198, i64 %.sroa.4.1.i.i
  br label %bb.as

bb.ar:                                            ; preds = %bb.as
  %i.np = icmp eq ptr %.us-phi198, %i.nr
  br i1 %i.np, label %_RNvCs58W9blM4WiW_5uu_rm35path_is_current_or_parent_directory.exit.thread.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph580, %bb.ar
  %.sroa.03.0.i.i.i579 = phi i64 [ %.sroa.4.1.i.i, %.lr.ph580 ], [ %i.ns, %bb.ar ] ; 11 uses
  %i.nq = phi ptr [ %i.no, %.lr.ph580 ], [ %i.nr, %bb.ar ]
  %i.nr = getelementptr inbounds i8, ptr %i.nq, i64 -1 ; 3 uses
  %i.ns = add i64 %.sroa.03.0.i.i.i579, -1        ; 2 uses
  %.val.i.i.i = load i8, ptr %i.nr, align 1, !alias.scope !1618, !noalias !1619, !noundef !4
  %.not.i.i.i = icmp eq i8 %.val.i.i.i, 47
  br i1 %.not.i.i.i, label %bb.ar, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs58W9blM4WiW_5uu_rm.exit.i52.i

_RNvXs8_NtNtCs6JMX4GRUq9U_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs58W9blM4WiW_5uu_rm.exit.i52.i: ; preds = %bb.as
  %i.nt = icmp ult i64 %i.ns, %.sroa.4.1.i.i
  call void @llvm.assume(i1 %i.nt)
  %i.nu = icmp samesign eq i64 %.sroa.03.0.i.i.i579, 0
  br i1 %i.nu, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvCs58W9blM4WiW_5uu_rm35path_is_current_or_parent_directorys_0EB1L_.exit.i.i, label %.lr.ph582

.lr.ph582:                                        ; preds = %_RNvXs8_NtNtCs6JMX4GRUq9U_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs58W9blM4WiW_5uu_rm.exit.i52.i
  %i.nv = getelementptr inbounds nuw i8, ptr %.us-phi198, i64 %.sroa.03.0.i.i.i579
  br label %bb.au

bb.at:                                            ; preds = %bb.au
  %i.nw = icmp eq ptr %.us-phi198, %i.ny
  br i1 %i.nw, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvCs58W9blM4WiW_5uu_rm35path_is_current_or_parent_directorys_0EB1L_.exit.i.i, label %bb.au

bb.au:                                            ; preds = %.lr.ph582, %bb.at
  %.sroa.03.0.i21.i.i581 = phi i64 [ %.sroa.03.0.i.i.i579, %.lr.ph582 ], [ %i.nz, %bb.at ] ; 5 uses
  %i.nx = phi ptr [ %i.nv, %.lr.ph582 ], [ %i.ny, %bb.at ]
  %i.ny = getelementptr inbounds i8, ptr %i.nx, i64 -1 ; 3 uses
  %i.nz = add i64 %.sroa.03.0.i21.i.i581, -1      ; 2 uses
  %.val.i22.i.i = load i8, ptr %i.ny, align 1, !alias.scope !1618, !noalias !1622, !noundef !4
  %i.oa = icmp eq i8 %.val.i22.i.i, 47
  br i1 %i.oa, label %bb.av, label %bb.at

bb.av:                                            ; preds = %bb.au
  %i.ob = icmp ult i64 %i.nz, %.sroa.03.0.i.i.i579
  call void @llvm.assume(i1 %i.ob)
  %i.oc = icmp ugt i64 %.sroa.03.0.i21.i.i581, %.sroa.03.0.i.i.i579
  br i1 %i.oc, label %bb.ax, label %bb.aw, !prof !134

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvCs58W9blM4WiW_5uu_rm35path_is_current_or_parent_directorys_0EB1L_.exit.i.i: ; preds = %bb.at, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs58W9blM4WiW_5uu_rm.exit.i52.i, %bb.aw
  %.sroa.05.0.i53.i = phi ptr [ %i.oe, %bb.aw ], [ %.us-phi198, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs58W9blM4WiW_5uu_rm.exit.i52.i ], [ %.us-phi198, %bb.at ] ; 2 uses
  %.sroa.8.0.i.i = phi i64 [ %i.od, %bb.aw ], [ %.sroa.03.0.i.i.i579, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs58W9blM4WiW_5uu_rm.exit.i52.i ], [ %.sroa.03.0.i.i.i579, %bb.at ]
  switch i64 %.sroa.8.0.i.i, label %_RNvCs58W9blM4WiW_5uu_rm35path_is_current_or_parent_directory.exit.thread.i [
    i64 1, label %_RNvCs58W9blM4WiW_5uu_rm35path_is_current_or_parent_directory.exit.i
    i64 2, label %.split.i
  ]

bb.aw:                                            ; preds = %bb.av
  %i.od = sub nuw nsw i64 %.sroa.03.0.i.i.i579, %.sroa.03.0.i21.i.i581
  %i.oe = getelementptr inbounds nuw i8, ptr %.us-phi198, i64 %.sroa.03.0.i21.i.i581
  br label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvCs58W9blM4WiW_5uu_rm35path_is_current_or_parent_directorys_0EB1L_.exit.i.i

bb.ax:                                            ; preds = %bb.av
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.03.0.i21.i.i581, i64 noundef %.sroa.03.0.i.i.i579, i64 noundef %.sroa.03.0.i.i.i579, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #22, !noalias !1625
  unreachable

.split.i:                                         ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvCs58W9blM4WiW_5uu_rm35path_is_current_or_parent_directorys_0EB1L_.exit.i.i
  %i.of = load i16, ptr %.sroa.05.0.i53.i, align 1, !alias.scope !1618, !noalias !1608, !noundef !4
  %i.og = icmp eq i16 %i.of, 11822
  br i1 %i.og, label %bb.ay, label %_RNvCs58W9blM4WiW_5uu_rm35path_is_current_or_parent_directory.exit.thread.i

_RNvCs58W9blM4WiW_5uu_rm35path_is_current_or_parent_directory.exit.i: ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvCs58W9blM4WiW_5uu_rm35path_is_current_or_parent_directorys_0EB1L_.exit.i.i
  %i.oh = load i8, ptr %.sroa.05.0.i53.i, align 1, !alias.scope !1618, !noalias !1608, !noundef !4
  %i.oi = icmp eq i8 %i.oh, 46
  br i1 %i.oi, label %bb.ay, label %_RNvCs58W9blM4WiW_5uu_rm35path_is_current_or_parent_directory.exit.thread.i

_RNvCs58W9blM4WiW_5uu_rm35path_is_current_or_parent_directory.exit.thread.i: ; preds = %bb.ar, %_RNvCs58W9blM4WiW_5uu_rm22clean_trailing_slashes.exit.i, %_RNvCs58W9blM4WiW_5uu_rm35path_is_current_or_parent_directory.exit.i, %.split.i, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvCs58W9blM4WiW_5uu_rm35path_is_current_or_parent_directorys_0EB1L_.exit.i.i
  %i.oj = call fastcc noundef zeroext i1 @_RNvCs58W9blM4WiW_5uu_rm12is_root_path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.us-phi198, i64 noundef %.sroa.4.1.i.i) #21, !noalias !1608 ; 2 uses
  br i1 %i.ej, label %bb.bj, label %bb.bi

bb.ay:                                            ; preds = %_RNvCs58W9blM4WiW_5uu_rm35path_is_current_or_parent_directory.exit.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !noalias !1626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !noalias !1626
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.dd, align 8, !noalias !1626
  %i.ok = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dd) #21, !noalias !1608
  store ptr %i.ok, ptr %i.de, align 8, !noalias !1626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !1626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !noalias !1626
  %i.ol = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #21, !noalias !1608 ; 2 uses
  %i.om = extractvalue { ptr, i64 } %i.ol, 0
  %i.on = extractvalue { ptr, i64 } %i.ol, 1
  store ptr %i.om, ptr %i.dc, align 8, !noalias !1626
  store i64 %i.on, ptr %i.eo, align 8, !noalias !1626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !noalias !1626
  store ptr %i.dc, ptr %i.db, align 8, !noalias !1626
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs58W9blM4WiW_5uu_rm, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !1627
  store ptr %i.de, ptr %i.cs, align 8, !noalias !1627
  store ptr null, ptr %i.ep, align 8, !noalias !1627
  %i.oo = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @7, ptr noundef nonnull @19, ptr noundef nonnull %i.db) #21, !noalias !1608
  %i.op = load ptr, ptr %i.ep, align 8, !noalias !1627, !noundef !4 ; 7 uses
  %.not.i5.i.i = icmp eq ptr %i.op, null          ; 2 uses
  br i1 %i.oo, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  br i1 %.not.i5.i.i, label %bb.be, label %bb.bf, !prof !134

bb.ba:                                            ; preds = %bb.ay
  br i1 %.not.i5.i.i, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs58W9blM4WiW_5uu_rm.exit.i.thread.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !1627
  %i.oq = ptrtoint ptr %i.op to i64               ; 2 uses
  %i.or = and i64 %i.oq, 3
  switch i64 %i.or, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i.i.i
    i64 3, label %bb.bc
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i.i.i
    i64 1, label %bb.bd
  ], !prof !126

bb.bc:                                            ; preds = %bb.bb
  %i.os = icmp ult ptr %i.op, inttoptr (i64 188978561024 to ptr)
  %i.ot = and i64 %i.oq, 1095216660480
  %i.ou = icmp ne i64 %i.ot, 1095216660480
  call void @llvm.assume(i1 %i.os)
  call void @llvm.assume(i1 %i.ou)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.ov = getelementptr i8, ptr %i.op, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ov) ]
  store ptr %i.ov, ptr %i.eq, align 8, !alias.scope !1632, !noalias !1627
  store i8 3, ptr %i.cr, align 8, !alias.scope !1632, !noalias !1627
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.eq) #21, !noalias !1608
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i.i.i: ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !1627
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs58W9blM4WiW_5uu_rm.exit.i.thread.i

bb.be:                                            ; preds = %bb.az
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !1608
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs58W9blM4WiW_5uu_rm.exit.i.thread.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i.i.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !1627
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit.i

bb.bf:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !1627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !1626
  %i.ow = ptrtoint ptr %i.op to i64               ; 2 uses
  %i.ox = and i64 %i.ow, 3
  switch i64 %i.ox, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i
    i64 3, label %bb.bg
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i
    i64 1, label %bb.bh
  ], !prof !126

bb.bg:                                            ; preds = %bb.bf
  %i.oy = icmp ult ptr %i.op, inttoptr (i64 188978561024 to ptr)
  %i.oz = and i64 %i.ow, 1095216660480
  %i.pa = icmp ne i64 %i.oz, 1095216660480
  call void @llvm.assume(i1 %i.oy)
  call void @llvm.assume(i1 %i.pa)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.pb = getelementptr i8, ptr %i.op, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pb) ]
  store ptr %i.pb, ptr %i.er, align 8, !alias.scope !1635, !noalias !1626
  store i8 3, ptr %i.cq, align 8, !alias.scope !1635, !noalias !1626
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.er) #21, !noalias !1608
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i: ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !1626
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i, %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs58W9blM4WiW_5uu_rm.exit.i.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !1626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !1626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !1626
  %.not.i.i = icmp slt i64 %.sroa.4.1.i.i, 0
  br i1 %.not.i.i, label %bb.hx, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i, !prof !658

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs58W9blM4WiW_5uu_rm.exit.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1638
  %i.pc = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.4.1.i.i, i64 noundef range(i64 1, 9) 1) #21, !noalias !1638 ; 3 uses
  %i.pd = icmp eq ptr %i.pc, null
  br i1 %i.pd, label %bb.hx, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs58W9blM4WiW_5uu_rm.exit.thread137.i

bb.bi:                                            ; preds = %_RNvCs58W9blM4WiW_5uu_rm35path_is_current_or_parent_directory.exit.thread.i
  %or.cond42.i = select i1 %i.oj, i1 %i.ez, i1 false
  %or.cond46.i = select i1 %.not43.i, i1 true, i1 %or.cond42.i
  br i1 %or.cond46.i, label %bb.bk, label %bb.bv

bb.bj:                                            ; preds = %_RNvCs58W9blM4WiW_5uu_rm35path_is_current_or_parent_directory.exit.thread.i
  %or.cond.i = select i1 %i.oj, i1 %i.hj, i1 false
  br i1 %or.cond.i, label %bb.hw, label %bb.gg

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !1626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !1626
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.cx, align 8, !noalias !1626
  %i.pe = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cx) #21, !noalias !1608
  store ptr %i.pe, ptr %i.cy, align 8, !noalias !1626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !1626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !1626
  %i.pf = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #21, !noalias !1608 ; 2 uses
  %i.pg = extractvalue { ptr, i64 } %i.pf, 0
  %i.ph = extractvalue { ptr, i64 } %i.pf, 1
  store ptr %i.pg, ptr %i.cw, align 8, !noalias !1626
  store i64 %i.ph, ptr %i.ha, align 8, !noalias !1626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !1626
  store ptr %i.cw, ptr %i.cv, align 8, !noalias !1626
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs58W9blM4WiW_5uu_rm, ptr %.sroa.425.0..sroa_idx.i, align 8, !noalias !1626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !1641
  store ptr %i.cy, ptr %i.cp, align 8, !noalias !1641
  store ptr null, ptr %i.hb, align 8, !noalias !1641
  %i.pi = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @7, ptr noundef nonnull @19, ptr noundef nonnull %i.cv) #21, !noalias !1608
  %i.pj = load ptr, ptr %i.hb, align 8, !noalias !1641, !noundef !4 ; 7 uses
  %.not.i5.i58.i = icmp eq ptr %i.pj, null        ; 2 uses
  br i1 %i.pi, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  br i1 %.not.i5.i58.i, label %bb.bq, label %bb.br, !prof !134

bb.bm:                                            ; preds = %bb.bk
  br i1 %.not.i5.i58.i, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs58W9blM4WiW_5uu_rm.exit.i60.thread.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !1641
  %i.pk = ptrtoint ptr %i.pj to i64               ; 2 uses
  %i.pl = and i64 %i.pk, 3
  switch i64 %i.pl, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i.i59.i
    i64 3, label %bb.bo
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i.i59.i
    i64 1, label %bb.bp
  ], !prof !126

bb.bo:                                            ; preds = %bb.bn
  %i.pm = icmp ult ptr %i.pj, inttoptr (i64 188978561024 to ptr)
  %i.pn = and i64 %i.pk, 1095216660480
  %i.po = icmp ne i64 %i.pn, 1095216660480
  call void @llvm.assume(i1 %i.pm)
  call void @llvm.assume(i1 %i.po)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i.i59.i

bb.bp:                                            ; preds = %bb.bn
  %i.pp = getelementptr i8, ptr %i.pj, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pp) ]
  store ptr %i.pp, ptr %i.hc, align 8, !alias.scope !1646, !noalias !1641
  store i8 3, ptr %i.co, align 8, !alias.scope !1646, !noalias !1641
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hc) #21, !noalias !1608
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs58W9blM4WiW_5uu_rm.exit.i.i.i59.i

end_hunk_2
