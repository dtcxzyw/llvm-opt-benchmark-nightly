Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_head-5633259948fb89df.uu_head.c1001c42bb4a17df-cgu.0?download=true
inline.NumInlined: 820
inline.NumDeleted: 501
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvCsgzkSwV7OBv7_7uu_head9head_file:bb.a
  br i1 %i.ef, label %bb.ai, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgzkSwV7OBv7_7uu_head.exit, !prof !98

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ed) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgzkSwV7OBv7_7uu_head.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgzkSwV7OBv7_7uu_head.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgzkSwV7OBv7_7uu_head.exit.i, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !698
  %i.eg = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.eh = insertvalue { i64, ptr } %i.eg, ptr %.sroa.4.0.in.i, 1
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef 65536, i64 noundef 1) #22
  br label %bb.ha

bb.aj:                                            ; preds = %bb.a, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !794)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !797
  call void @_RNvMs2_NtCs2vKOLqTMYjT_3std2fsNtB5_4File8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.ad, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0) #22, !noalias !794
  %i.ei = load i64, ptr %i.ad, align 8, !range !554, !noalias !797, !noundef !19
  %i.ej = icmp eq i64 %i.ei, 2
  br i1 %i.ej, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !797, !nonnull !19, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !797
  br label %_RNvCsgzkSwV7OBv7_7uu_head19head_backwards_file.exit

bb.al:                                            ; preds = %bb.aj
  %.sroa.1426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %.sroa.1426.0.copyload.i = load i64, ptr %.sroa.1426.0..sroa_idx.i, align 8, !noalias !797
  %.sroa.1527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  %.sroa.1527.0.copyload.i = load i64, ptr %.sroa.1527.0..sroa_idx.i, align 8, !noalias !797 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !797
  %i.em = tail call { i64, ptr } @_RNvXsc_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs6JMX4GRUq9U_4core2io4seek4Seek15stream_position(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0) #22, !noalias !794 ; 2 uses
  %i.en = extractvalue { i64, ptr } %i.em, 0
  %i.eo = extractvalue { i64, ptr } %i.em, 1      ; 5 uses
  %i.ep = icmp eq i64 %i.en, 0
  br i1 %i.ep, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eo) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !799
  %i.eq = ptrtoint ptr %i.eo to i64               ; 2 uses
  %i.er = and i64 %i.eq, 3
  switch i64 %i.er, label %default.unreachable563 [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i
    i64 3, label %bb.an
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i
    i64 1, label %bb.ao
  ], !prof !80

bb.an:                                            ; preds = %bb.am
  %i.es = icmp ult ptr %i.eo, inttoptr (i64 188978561024 to ptr)
  %i.et = and i64 %i.eq, 1095216660480
  %i.eu = icmp ne i64 %i.et, 1095216660480
  tail call void @llvm.assume(i1 %i.es)
  tail call void @llvm.assume(i1 %i.eu)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.ev = getelementptr i8, ptr %i.eo, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ev) ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %i.ev, ptr %i.ew, align 8, !alias.scope !804, !noalias !799
  store i8 3, ptr %i.ac, align 8, !alias.scope !804, !noalias !799
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ew) #22, !noalias !807
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i: ; preds = %bb.ao, %bb.an, %bb.am, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !799
  br label %_RNvCsgzkSwV7OBv7_7uu_head11is_seekable.exit.i

bb.ap:                                            ; preds = %bb.al
  %i.ex = tail call { i64, ptr } @_RNvXsc_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs6JMX4GRUq9U_4core2io4seek4Seek4seek(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, i64 noundef 1, i64 noundef 0) #22, !noalias !794 ; 2 uses
  %i.ey = extractvalue { i64, ptr } %i.ex, 0
  %i.ez = extractvalue { i64, ptr } %i.ex, 1      ; 4 uses
  %i.fa = icmp eq i64 %i.ey, 0
  br i1 %i.fa, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultyNtNtNtB4_2io5error5ErrorE6unwrapCsgzkSwV7OBv7_7uu_head.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ez) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !808
  %i.fb = ptrtoint ptr %i.ez to i64               ; 2 uses
  %i.fc = and i64 %i.fb, 3
  switch i64 %i.fc, label %default.unreachable563 [
    i64 2, label %.thread.i.i
    i64 3, label %bb.ar
    i64 0, label %.thread.i.i
    i64 1, label %bb.as
  ], !prof !80

bb.ar:                                            ; preds = %bb.aq
  %i.fd = icmp ult ptr %i.ez, inttoptr (i64 188978561024 to ptr)
  %i.fe = and i64 %i.fb, 1095216660480
  %i.ff = icmp ne i64 %i.fe, 1095216660480
  tail call void @llvm.assume(i1 %i.fd)
  tail call void @llvm.assume(i1 %i.ff)
  br label %.thread.i.i

bb.as:                                            ; preds = %bb.aq
  %i.fg = getelementptr i8, ptr %i.ez, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fg) ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr %i.fg, ptr %i.fh, align 8, !alias.scope !811, !noalias !808
  store i8 3, ptr %i.ab, align 8, !alias.scope !811, !noalias !808
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fh) #22, !noalias !814
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.as, %bb.ar, %bb.aq, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !808
  br label %_RNvCsgzkSwV7OBv7_7uu_head11is_seekable.exit.i

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultyNtNtNtB4_2io5error5ErrorE6unwrapCsgzkSwV7OBv7_7uu_head.exit.i.i: ; preds = %bb.ap
  %i.fi = ptrtoint ptr %i.eo to i64
  %i.fj = tail call { i64, ptr } @_RNvXsc_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs6JMX4GRUq9U_4core2io4seek4Seek4seek(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, i64 noundef 0, i64 noundef %i.fi) #22, !noalias !794 ; 2 uses
  %i.fk = extractvalue { i64, ptr } %i.fj, 0
  %i.fl = extractvalue { i64, ptr } %i.fj, 1      ; 4 uses
  %i.fm = icmp eq i64 %i.fk, 0
  br i1 %i.fm, label %_RNvCsgzkSwV7OBv7_7uu_head11is_seekable.exit.i, label %bb.at

bb.at:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultyNtNtNtB4_2io5error5ErrorE6unwrapCsgzkSwV7OBv7_7uu_head.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fl) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !815
  %i.fn = ptrtoint ptr %i.fl to i64               ; 2 uses
  %i.fo = and i64 %i.fn, 3
  switch i64 %i.fo, label %default.unreachable563 [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i14.i.i
    i64 3, label %bb.au
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i14.i.i
    i64 1, label %bb.av
  ], !prof !80

bb.au:                                            ; preds = %bb.at
  %i.fp = icmp ult ptr %i.fl, inttoptr (i64 188978561024 to ptr)
  %i.fq = and i64 %i.fn, 1095216660480
  %i.fr = icmp ne i64 %i.fq, 1095216660480
  tail call void @llvm.assume(i1 %i.fp)
  tail call void @llvm.assume(i1 %i.fr)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i14.i.i

bb.av:                                            ; preds = %bb.at
  %i.fs = getelementptr i8, ptr %i.fl, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fs) ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store ptr %i.fs, ptr %i.ft, align 8, !alias.scope !818, !noalias !815
  store i8 3, ptr %i.aa, align 8, !alias.scope !818, !noalias !815
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ft) #22, !noalias !821
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i14.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i14.i.i: ; preds = %bb.av, %bb.au, %bb.at, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !815
  br label %_RNvCsgzkSwV7OBv7_7uu_head11is_seekable.exit.i

_RNvCsgzkSwV7OBv7_7uu_head11is_seekable.exit.i:   ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i14.i.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultyNtNtNtB4_2io5error5ErrorE6unwrapCsgzkSwV7OBv7_7uu_head.exit.i.i, %.thread.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i
  %.not.i3 = phi i1 [ true, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i ], [ true, %.thread.i.i ], [ false, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultyNtNtNtB4_2io5error5ErrorE6unwrapCsgzkSwV7OBv7_7uu_head.exit.i.i ], [ true, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i14.i.i ]
  %i.fu = add i64 %.sroa.1527.0.copyload.i, -536870913
  %i.fv = icmp ult i64 %i.fu, -536870912
  %.sroa.013.0.i = select i1 %i.fv, i64 512, i64 %.sroa.1527.0.copyload.i
  %i.fw = icmp ule i64 %.sroa.1426.0.copyload.i, %.sroa.013.0.i
  %or.cond3.i = select i1 %.not.i3, i1 true, i1 %i.fw
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 42
  %i.fy = load i8, ptr %i.fx, align 2, !range !70, !alias.scope !794, !noalias !822
  %i.fz = trunc nuw i8 %i.fy to i1
  %or.cond6.i = select i1 %or.cond3.i, i1 true, i1 %i.fz
  br i1 %or.cond6.i, label %bb.aw, label %bb.fw

bb.aw:                                            ; preds = %_RNvCsgzkSwV7OBv7_7uu_head11is_seekable.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !823)
  switch i64 %i.ah, label %bb.ax [
    i64 1, label %bb.ay
    i64 3, label %bb.el
  ], !prof !826

bb.ax:                                            ; preds = %bb.aw
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #25, !noalias !827
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.ga = load i64, ptr %i.ai, align 8, !alias.scope !827, !noalias !828, !noundef !19 ; 6 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 43
  %i.gc = load i8, ptr %i.gb, align 1, !range !697, !alias.scope !827, !noalias !828, !noundef !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !830
  %i.gd = call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() #22, !noalias !833
  store ptr %i.gd, ptr %i.z, align 8, !noalias !830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !830
  %i.ge = call noundef nonnull align 8 ptr @_RNvMsa_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stdout4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z) #22, !noalias !833
  store ptr %i.ge, ptr %i.y, align 8, !noalias !830
  %i.gf = icmp eq i64 %i.ga, 0
  br i1 %i.gf, label %bb.az, label %bb.ci

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !834
  call void @_RNvXsf_NtNtNtNtCs2vKOLqTMYjT_3std3sys2io11kernel_copy5linuxNtNtBd_2fs4FileNtB5_8CopyRead10properties(ptr noalias nofree noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0) #22, !noalias !850
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !834
  call void @_RNvXsz_NtNtNtNtCs2vKOLqTMYjT_3std3sys2io11kernel_copy5linuxNtNtNtBd_2io5stdio10StdoutLockNtB5_9CopyWrite10properties(ptr noalias nofree noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y) #22, !noalias !851
  %.sroa.017.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !noalias !834 ; 2 uses
  %.sroa.320.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %.sroa.320.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.320.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !834 ; 2 uses
  %.sroa.828.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %.sroa.828.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.828.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !834 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.x, i64 176
  %i.gh = load i32, ptr %i.gg, align 8, !range !445, !noalias !834, !noundef !19
  %i.gi = getelementptr inbounds nuw i8, ptr %i.x, i64 180
  %i.gj = load i32, ptr %i.gi, align 4, !noalias !834 ; 3 uses
  %.sroa.038.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.w, align 8, !noalias !834 ; 4 uses
  %.sroa.645.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %.sroa.645.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.645.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !834 ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.w, i64 180
  %i.gl = load i32, ptr %i.gk, align 4, !noalias !834 ; 3 uses
  %i.gm = trunc nuw i32 %i.gh to i1
  %i.gn = getelementptr inbounds nuw i8, ptr %i.w, i64 176
  %i.go = load i32, ptr %i.gn, align 8, !range !445, !noalias !834
  %i.gp = trunc nuw i32 %i.go to i1
  %or.cond66.i.i.i.i.i.i.i.i = select i1 %i.gm, i1 %i.gp, i1 false
  br i1 %or.cond66.i.i.i.i.i.i.i.i, label %bb.ba, label %.thread.i.i.i.i9

bb.ba:                                            ; preds = %bb.az
  %i.gq = call noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #22, !noalias !851 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gq, null
  %i.gr = ptrtoint ptr %i.gq to i64               ; 8 uses
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %bb.bb, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4copy4copyQNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtBI_2io5stdio10StdoutLockECsgzkSwV7OBv7_7uu_head.exit.thread.i.i.i

_RINvNtNtCs7tKScEop1B6_5alloc2io4copy4copyQNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtBI_2io5stdio10StdoutLockECsgzkSwV7OBv7_7uu_head.exit.thread.i.i.i: ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !834
  br label %bb.ed

bb.bb:                                            ; preds = %bb.ba
  %i.gs = call i64 @llvm.usub.sat.i64(i64 %.sroa.017.0.copyload.i.i.i.i.i.i.i.i, i64 1)
  switch i64 %i.gs, label %bb.be [
    i64 0, label %bb.bc
    i64 1, label %bb.bs
    i64 2, label %bb.bw
    i64 3, label %bb.bv
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.gt = and i32 %.sroa.320.0.copyload.i.i.i.i.i.i.i.i, 61440 ; 3 uses
  %i.gu = icmp eq i32 %i.gt, 32768
  %i.gv = icmp ne i64 %.sroa.828.0.copyload.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.gu, i1 %i.gv, i1 false
  %i.gw = icmp ult i64 %.sroa.038.0.copyload.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %or.cond67.i.i.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i.i, i1 %i.gw, i1 false
  %i.gx = and i32 %.sroa.645.0.copyload.i.i.i.i.i.i.i.i, 61440
  %i.gy = icmp eq i32 %i.gx, 32768
  %or.cond69.i.i.i.i.i.i.i.i = select i1 %or.cond67.i.i.i.i.i.i.i.i, i1 %i.gy, i1 false
  br i1 %or.cond69.i.i.i.i.i.i.i.i, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !834
  call void @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys2io11kernel_copy5linux18copy_regular_files(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i32 noundef %i.gj, i32 noundef %i.gl, i64 noundef -1) #22, !noalias !851
  %i.gz = load i64, ptr %i.v, align 8, !range !554, !noalias !834, !noundef !19
  switch i64 %i.gz, label %default.unreachable563 [
    i64 0, label %bb.bf
    i64 1, label %bb.bg
    i64 2, label %.thread82.i.i.i.i.i.i.i.i
  ]

bb.be:                                            ; preds = %bb.bs, %bb.bb
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.ha = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.hb = load i64, ptr %i.ha, align 8, !noalias !834, !noundef !19
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bd
  %i.hc = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !noalias !834, !nonnull !19, !noundef !19
  %i.he = ptrtoint ptr %i.hd to i64
  br label %bb.bh

.thread82.i.i.i.i.i.i.i.i:                        ; preds = %bb.bd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.hg = load i64, ptr %i.hf, align 8, !noalias !834, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !834
  br label %bb.bm

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.sroa.12.0.i.i.i.i = phi i64 [ %i.hb, %bb.bf ], [ %i.he, %bb.bg ]
  %.sroa.0.01.i.i.i.i = phi i64 [ 0, %bb.bf ], [ 2, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !834
  br label %_RINvXs_NtNtNtCs7tKScEop1B6_5alloc2io4copy14specializationQNtNtCs2vKOLqTMYjT_3std2fs4FileNtB5_13SpecCopyInner4copyNtNtNtBY_2io5stdio10StdoutLockECsgzkSwV7OBv7_7uu_head.exit.i.i.i.i

bb.bi:                                            ; preds = %bb.bc
  %trunc.i.i.i.i.i.i.i.i = trunc nuw i32 %i.gt to i16
  switch i16 %trunc.i.i.i.i.i.i.i.i, label %bb.br [
    i16 -32768, label %bb.bj
    i16 24576, label %bb.bk
  ]

bb.bj:                                            ; preds = %bb.bi
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.828.0.copyload.i.i.i.i.i.i.i.i, 0
  %.not92.i.i.i.i.i.i.i.i = icmp ugt i64 %.sroa.038.0.copyload.i.i.i.i.i.i.i.i, 1
  %i.hh = select i1 %.not.i.i.i.i.i.i.i.i, i1 true, i1 %.not92.i.i.i.i.i.i.i.i
  br i1 %i.hh, label %bb.br, label %bb.bm

bb.bk:                                            ; preds = %bb.bi
  br i1 %i.gw, label %bb.bm, label %bb.br

bb.bl:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !834
  call void @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys2io11kernel_copy5linux15sendfile_splice(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i1 noundef zeroext false, i32 noundef %i.gj, i32 noundef %i.gl, i64 noundef -1) #22, !noalias !851
  %i.hi = load i64, ptr %i.u, align 8, !range !554, !noalias !834, !noundef !19
  switch i64 %i.hi, label %default.unreachable563 [
    i64 0, label %bb.bn
    i64 1, label %bb.bo
    i64 2, label %bb.bp
  ]

bb.bm:                                            ; preds = %bb.bk, %bb.bj, %.thread82.i.i.i.i.i.i.i.i
  %.sroa.0.17584.i.i.i.i.i.i.i.i = phi i64 [ %i.hg, %.thread82.i.i.i.i.i.i.i.i ], [ %i.gr, %bb.bk ], [ %i.gr, %bb.bj ] ; 4 uses
  %i.hj = trunc i32 %.sroa.645.0.copyload.i.i.i.i.i.i.i.i to i16
  %trunc61.i.i.i.i.i.i.i.i = and i16 %i.hj, -4096
  switch i16 %trunc61.i.i.i.i.i.i.i.i, label %bb.bl [
    i16 4096, label %bb.br
    i16 -16384, label %bb.br
  ]

bb.bn:                                            ; preds = %bb.bl
  %i.hk = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.hl = load i64, ptr %i.hk, align 8, !noalias !834, !noundef !19
  %i.hm = add i64 %i.hl, %.sroa.0.17584.i.i.i.i.i.i.i.i
  br label %bb.bq

bb.bo:                                            ; preds = %bb.bl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !noalias !834, !nonnull !19, !noundef !19
  %i.hp = ptrtoint ptr %i.ho to i64
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bl
  %i.hq = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.hr = load i64, ptr %i.hq, align 8, !noalias !834, !noundef !19
  %i.hs = add i64 %i.hr, %.sroa.0.17584.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !834
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo, %bb.bn
  %.sroa.12.1.i.i.i.i = phi i64 [ %i.hm, %bb.bn ], [ %i.hp, %bb.bo ]
  %.sroa.0.12.i.i.i.i = phi i64 [ 0, %bb.bn ], [ 2, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !834
  br label %_RINvXs_NtNtNtCs7tKScEop1B6_5alloc2io4copy14specializationQNtNtCs2vKOLqTMYjT_3std2fs4FileNtB5_13SpecCopyInner4copyNtNtNtBY_2io5stdio10StdoutLockECsgzkSwV7OBv7_7uu_head.exit.i.i.i.i

bb.br:                                            ; preds = %bb.bp, %bb.bm, %bb.bm, %bb.bk, %bb.bj, %bb.bi
  %.sroa.0.2.i.i.i.i.i.i.i.i = phi i64 [ %i.gr, %bb.bi ], [ %i.hs, %bb.bp ], [ %.sroa.0.17584.i.i.i.i.i.i.i.i, %bb.bm ], [ %.sroa.0.17584.i.i.i.i.i.i.i.i, %bb.bm ], [ %i.gr, %bb.bk ], [ %i.gr, %bb.bj ] ; 2 uses
  %i.ht = icmp eq i32 %i.gt, 4096
  br i1 %i.ht, label %.thread87.i.i.i.i.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bb
  %.sroa.0.3.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.2.i.i.i.i.i.i.i.i, %bb.br ], [ %i.gr, %bb.bb ] ; 4 uses
  %i.hu = call i64 @llvm.usub.sat.i64(i64 %.sroa.038.0.copyload.i.i.i.i.i.i.i.i, i64 1)
  switch i64 %i.hu, label %bb.be [
    i64 0, label %bb.bu
    i64 1, label %.thread.i.i.i.i9
    i64 2, label %bb.bt
    i64 3, label %bb.bt
  ]

bb.bt:                                            ; preds = %bb.bu, %bb.bs, %bb.bs
  %i.hv = icmp ult i64 %.sroa.017.0.copyload.i.i.i.i.i.i.i.i, 2
  br i1 %i.hv, label %.thread87.i.i.i.i.i.i.i.i, label %bb.bw

bb.bu:                                            ; preds = %bb.bs
  %i.hw = and i32 %.sroa.645.0.copyload.i.i.i.i.i.i.i.i, 61440
  %i.hx = icmp eq i32 %i.hw, 4096
  br i1 %i.hx, label %bb.bt, label %.thread.i.i.i.i9

.thread87.i.i.i.i.i.i.i.i:                        ; preds = %bb.bt, %bb.br
  %.sroa.0.489.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.3.i.i.i.i.i.i.i.i, %bb.bt ], [ %.sroa.0.2.i.i.i.i.i.i.i.i, %bb.br ] ; 3 uses
  %i.hy = trunc i32 %.sroa.320.0.copyload.i.i.i.i.i.i.i.i to i16
  %trunc62.i.i.i.i.i.i.i.i = and i16 %i.hy, -4096
  switch i16 %trunc62.i.i.i.i.i.i.i.i, label %bb.bv [
    i16 4096, label %bb.bw
    i16 -16384, label %bb.bw
  ]

bb.bv:                                            ; preds = %.thread87.i.i.i.i.i.i.i.i, %bb.bb
  %.sroa.0.6.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.489.i.i.i.i.i.i.i.i, %.thread87.i.i.i.i.i.i.i.i ], [ %i.gr, %bb.bb ] ; 4 uses
  %i.hz = icmp ult i64 %.sroa.038.0.copyload.i.i.i.i.i.i.i.i, 2
  br i1 %i.hz, label %bb.bx, label %.thread.i.i.i.i9

bb.bw:                                            ; preds = %bb.bx, %.thread87.i.i.i.i.i.i.i.i, %.thread87.i.i.i.i.i.i.i.i, %bb.bt, %bb.bb
  %.sroa.0.7.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.6.i.i.i.i.i.i.i.i, %bb.bx ], [ %.sroa.0.489.i.i.i.i.i.i.i.i, %.thread87.i.i.i.i.i.i.i.i ], [ %.sroa.0.489.i.i.i.i.i.i.i.i, %.thread87.i.i.i.i.i.i.i.i ], [ %i.gr, %bb.bb ], [ %.sroa.0.3.i.i.i.i.i.i.i.i, %bb.bt ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !834
  call void @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys2io11kernel_copy5linux15sendfile_splice(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, i1 noundef zeroext true, i32 noundef %i.gj, i32 noundef %i.gl, i64 noundef -1) #22, !noalias !851
  %i.ia = load i64, ptr %i.t, align 8, !range !554, !noalias !834, !noundef !19
  switch i64 %i.ia, label %default.unreachable563 [
    i64 0, label %bb.by
    i64 1, label %bb.bz
    i64 2, label %bb.ca
  ]

bb.bx:                                            ; preds = %bb.bv
  %i.ib = trunc i32 %.sroa.645.0.copyload.i.i.i.i.i.i.i.i to i16
  %trunc63.i.i.i.i.i.i.i.i = and i16 %i.ib, -4096
  switch i16 %trunc63.i.i.i.i.i.i.i.i, label %bb.bw [
    i16 4096, label %.thread.i.i.i.i9
    i16 -16384, label %.thread.i.i.i.i9
  ]

bb.by:                                            ; preds = %bb.bw
  %i.ic = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.id = load i64, ptr %i.ic, align 8, !noalias !834, !noundef !19
  %i.ie = add i64 %i.id, %.sroa.0.7.i.i.i.i.i.i.i.i
  br label %bb.cb

bb.bz:                                            ; preds = %bb.bw
  %i.if = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ig = load ptr, ptr %i.if, align 8, !noalias !834, !nonnull !19, !noundef !19
  %i.ih = ptrtoint ptr %i.ig to i64
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bw
  %i.ii = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ij = load i64, ptr %i.ii, align 8, !noalias !834, !noundef !19
  %i.ik = icmp eq i64 %i.ij, 0
  br i1 %i.ik, label %bb.cc, label %bb.cd, !prof !18

bb.cb:                                            ; preds = %bb.bz, %bb.by
  %.sroa.12.2.i.i.i.i = phi i64 [ %i.ie, %bb.by ], [ %i.ih, %bb.bz ]
  %.sroa.0.2.i.i.i.i = phi i64 [ 0, %bb.by ], [ 2, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !834
  br label %_RINvXs_NtNtNtCs7tKScEop1B6_5alloc2io4copy14specializationQNtNtCs2vKOLqTMYjT_3std2fs4FileNtB5_13SpecCopyInner4copyNtNtNtBY_2io5stdio10StdoutLockECsgzkSwV7OBv7_7uu_head.exit.i.i.i.i

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !834
  br label %.thread.i.i.i.i9

bb.cd:                                            ; preds = %bb.ca
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @117, ptr noundef nonnull inttoptr (i64 195 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #25, !noalias !851
  unreachable

.thread.i.i.i.i9:                                 ; preds = %bb.cc, %bb.bx, %bb.bx, %bb.bv, %bb.bu, %bb.bs, %bb.az
  %.sroa.12.3.ph.i.i.i.i = phi i64 [ %.sroa.0.3.i.i.i.i.i.i.i.i, %bb.bu ], [ %.sroa.0.6.i.i.i.i.i.i.i.i, %bb.bv ], [ %.sroa.0.6.i.i.i.i.i.i.i.i, %bb.bx ], [ %.sroa.0.6.i.i.i.i.i.i.i.i, %bb.bx ], [ %.sroa.0.7.i.i.i.i.i.i.i.i, %bb.cc ], [ 0, %bb.az ], [ %.sroa.0.3.i.i.i.i.i.i.i.i, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !852
  store ptr %i.s, ptr %i.r, align 8, !noalias !852
  %i.il = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 8192, ptr %i.il, align 8, !noalias !852
  %i.im = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store i64 0, ptr %i.im, align 8, !noalias !852
  %i.in = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i8 0, ptr %i.in, align 8, !noalias !852
  %i.io = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  br label %.outer.i.i.i.i.i.i.i

_RINvXs_NtNtNtCs7tKScEop1B6_5alloc2io4copy14specializationQNtNtCs2vKOLqTMYjT_3std2fs4FileNtB5_13SpecCopyInner4copyNtNtNtBY_2io5stdio10StdoutLockECsgzkSwV7OBv7_7uu_head.exit.i.i.i.i: ; preds = %bb.cb, %bb.bq, %bb.bh
  %.sroa.12.3.i.i.i.i = phi i64 [ %.sroa.12.0.i.i.i.i, %bb.bh ], [ %.sroa.12.1.i.i.i.i, %bb.bq ], [ %.sroa.12.2.i.i.i.i, %bb.cb ]
  %.sroa.0.3.i.i.i.i = phi i64 [ %.sroa.0.01.i.i.i.i, %bb.bh ], [ %.sroa.0.12.i.i.i.i, %bb.bq ], [ %.sroa.0.2.i.i.i.i, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !834
  %i.ip = icmp eq i64 %.sroa.0.3.i.i.i.i, 2
  %.sroa.6.1.i33.i.i.i = inttoptr i64 %.sroa.12.3.i.i.i.i to ptr ; 2 uses
  br i1 %i.ip, label %bb.ed, label %bb.ee

.outer.i.i.i.i.i.i.i:                             ; preds = %bb.cf, %.thread.i.i.i.i9
  %.sroa.01.0.ph.i.i.i.i.i.i.i = phi i64 [ %i.jo, %bb.cf ], [ 0, %.thread.i.i.i.i9 ] ; 2 uses
  %i.iq = call noundef ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.r) #22, !noalias !827 ; 2 uses
  %.not11.i.i.i.i.i.i.i = icmp eq ptr %i.iq, null
  br i1 %.not11.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.outer.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i.i.i
  %i.ir = phi ptr [ %i.js, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i.i.i ], [ %i.iq, %.outer.i.i.i.i.i.i.i ] ; 9 uses
  %i.is = ptrtoint ptr %i.ir to i64               ; 4 uses
  %i.it = and i64 %i.is, 3
  switch i64 %i.it, label %default.unreachable563 [
    i64 2, label %.split.i.i.i.i.i.i.i
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i.i.i
    i64 0, label %.split3.i.i.i.i.i.i.i
    i64 1, label %.split2.i.i.i.i.i.i.i
  ], !prof !80

.split.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.iu = lshr i64 %i.is, 32
  %i.iv = trunc nuw i64 %i.iu to i32
  %i.iw = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #22, !noalias !827
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8, !noalias !827, !nonnull !19, !noundef !19
  %i.iz = call noundef zeroext i1 %i.iy(i32 noundef %i.iv) #22, !noalias !827, !inline_history !859
  br i1 %i.iz, label %.thread.i.i.i.i.i.i.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4copy4copyQNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtBI_2io5stdio10StdoutLockECsgzkSwV7OBv7_7uu_head.exit.thread34.i.i.i

.split3.i.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.jb = load i8, ptr %i.ja, align 8, !range !82, !noalias !827, !noundef !19
  %i.jc = icmp eq i8 %i.jb, 35
  br i1 %i.jc, label %.thread.i.i.i.i.i.i.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4copy4copyQNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtBI_2io5stdio10StdoutLockECsgzkSwV7OBv7_7uu_head.exit.thread34.i.i.i

.split2.i.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.jd = getelementptr i8, ptr %i.ir, i64 31
  %i.je = load i8, ptr %i.jd, align 8, !range !82, !noalias !827, !noundef !19
  %i.jf = icmp eq i8 %i.je, 35
  br i1 %i.jf, label %bb.ch, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4copy4copyQNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtBI_2io5stdio10StdoutLockECsgzkSwV7OBv7_7uu_head.exit.thread34.i.i.i

end_hunk_0
