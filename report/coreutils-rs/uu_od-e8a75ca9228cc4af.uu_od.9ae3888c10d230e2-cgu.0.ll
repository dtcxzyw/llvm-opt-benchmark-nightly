Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_od-e8a75ca9228cc4af.uu_od.9ae3888c10d230e2-cgu.0?download=true
inline.NumInlined: 1209
inline.NumDeleted: 626
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvMs_NtCsdit6BuOJVAc_5uu_od16multifile_readerNtB4_15MultifileReader9next_file:bb.a
  call void @llvm.assume(i1 %i.cm)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i

bb.x:                                             ; preds = %bb.v
  %i.cn = getelementptr i8, ptr %i.cb, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cn) ]
  store ptr %i.cn, ptr %i.z, align 8, !alias.scope !1795
  store i8 3, ptr %i.e, align 8, !alias.scope !1795
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #29
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i: ; preds = %bb.x, %bb.w, %bb.v, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdit6BuOJVAc_5uu_od.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdit6BuOJVAc_5uu_od.exit: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdit6BuOJVAc_5uu_od.exit.i.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8
  store ptr %i.aj, ptr %.sroa.03.sroa.4.0..sroa_idx, align 8
  store i64 %i.ak, ptr %.sroa.03.sroa.5.0..sroa_idx, align 8
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.i, align 8
  store ptr @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.414.0..sroa_idx, align 8
  store ptr %i.o, ptr %i.aa, align 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsdit6BuOJVAc_5uu_od, ptr %.sroa.418.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1796
  store ptr %i.n, ptr %i.d, align 8, !noalias !1796
  store ptr null, ptr %i.ab, align 8, !noalias !1796
  %i.co = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @15, ptr noundef nonnull @159, ptr noundef nonnull %i.i) #29
  %i.cp = load ptr, ptr %i.ab, align 8, !noalias !1796, !noundef !5 ; 7 uses
  %.not.i5.i37 = icmp eq ptr %i.cp, null          ; 2 uses
  br i1 %i.co, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdit6BuOJVAc_5uu_od.exit
  br i1 %.not.i5.i37, label %bb.ad, label %bb.ae, !prof !12

bb.z:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdit6BuOJVAc_5uu_od.exit
  br i1 %.not.i5.i37, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdit6BuOJVAc_5uu_od.exit.i39.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1796
  %i.cq = ptrtoint ptr %i.cp to i64               ; 2 uses
  %i.cr = and i64 %i.cq, 3
  switch i64 %i.cr, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i.i.i38
    i64 3, label %bb.ab
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i.i.i38
    i64 1, label %bb.ac
  ], !prof !13

bb.ab:                                            ; preds = %bb.aa
  %i.cs = icmp ult ptr %i.cp, inttoptr (i64 188978561024 to ptr)
  %i.ct = and i64 %i.cq, 1095216660480
  %i.cu = icmp ne i64 %i.ct, 1095216660480
  call void @llvm.assume(i1 %i.cs)
  call void @llvm.assume(i1 %i.cu)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i.i.i38

bb.ac:                                            ; preds = %bb.aa
  %i.cv = getelementptr i8, ptr %i.cp, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cv) ]
  store ptr %i.cv, ptr %i.ac, align 8, !alias.scope !1797, !noalias !1796
  store i8 3, ptr %i.c, align 8, !alias.scope !1797, !noalias !1796
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac) #29
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i.i.i38

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i.i.i38: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1796
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdit6BuOJVAc_5uu_od.exit.i39.thread

bb.ad:                                            ; preds = %bb.y
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @16, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #30
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdit6BuOJVAc_5uu_od.exit.i39.thread: ; preds = %bb.z, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1796
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdit6BuOJVAc_5uu_od.exit46

bb.ae:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1796
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cw = ptrtoint ptr %i.cp to i64               ; 2 uses
  %i.cx = and i64 %i.cw, 3
  switch i64 %i.cx, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i44
    i64 3, label %bb.af
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i44
    i64 1, label %bb.ag
  ], !prof !13

bb.af:                                            ; preds = %bb.ae
  %i.cy = icmp ult ptr %i.cp, inttoptr (i64 188978561024 to ptr)
  %i.cz = and i64 %i.cw, 1095216660480
  %i.da = icmp ne i64 %i.cz, 1095216660480
  call void @llvm.assume(i1 %i.cy)
  call void @llvm.assume(i1 %i.da)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i44

bb.ag:                                            ; preds = %bb.ae
  %i.db = getelementptr i8, ptr %i.cp, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.db) ]
  store ptr %i.db, ptr %i.ad, align 8, !alias.scope !1798
  store i8 3, ptr %i.b, align 8, !alias.scope !1798
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad) #29
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i44

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i44: ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdit6BuOJVAc_5uu_od.exit46

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdit6BuOJVAc_5uu_od.exit46: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdit6BuOJVAc_5uu_od.exit.i39.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.val28 = load ptr, ptr %i.n, align 8, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.val28, i64 12 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !noundef !5
  %i.de = add i32 %i.dd, -1                       ; 2 uses
  store i32 %i.de, ptr %i.dc, align 4
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.ah, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdit6BuOJVAc_5uu_od.exit

bb.ah:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdit6BuOJVAc_5uu_od.exit46
  store atomic i64 0, ptr %.val28 monotonic, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.val28, i64 8 ; 2 uses
  %i.dh = atomicrmw xchg ptr %i.dg, i32 0 release, align 4
  %i.di = icmp eq i32 %i.dh, 2
  br i1 %i.di, label %bb.ai, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdit6BuOJVAc_5uu_od.exit, !prof !12

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.dg) #29
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdit6BuOJVAc_5uu_od.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdit6BuOJVAc_5uu_od.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdit6BuOJVAc_5uu_od.exit46, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i8 1, ptr %i.ae, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  switch i64 %i.ba, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit
    i64 3, label %bb.aj
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit
    i64 1, label %bb.ak
  ], !prof !13

bb.aj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdit6BuOJVAc_5uu_od.exit
  %i.dj = icmp ult ptr %i.ay, inttoptr (i64 188978561024 to ptr)
  %i.dk = and i64 %i.az, 1095216660480
  %i.dl = icmp ne i64 %i.dk, 1095216660480
  call void @llvm.assume(i1 %i.dj)
  call void @llvm.assume(i1 %i.dl)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit

bb.ak:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdit6BuOJVAc_5uu_od.exit
  %i.dm = getelementptr i8, ptr %i.ay, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dm) ]
  store ptr %i.dm, ptr %i.af, align 8, !alias.scope !1799
  store i8 3, ptr %i.a, align 8, !alias.scope !1799
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.af) #29
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdit6BuOJVAc_5uu_od.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdit6BuOJVAc_5uu_od.exit, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.dn = icmp eq i64 %i.an, 0
  br i1 %i.dn, label %._crit_edge, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCsdit6BuOJVAc_5uu_od16multifile_reader11InputSourceE6removeBI_.exit

bb.al:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdit6BuOJVAc_5uu_od16multifile_reader13CurrentReaderEEB11_.exit30, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdit6BuOJVAc_5uu_od16multifile_reader13CurrentReaderEEB11_.exit32, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdit6BuOJVAc_5uu_od16multifile_reader13CurrentReaderEEB11_.exit
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalReE4nextCsdit6BuOJVAc_5uu_od(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !24, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalReE7get_endCsdit6BuOJVAc_5uu_od.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1 = load i64, ptr %i.e, align 8, !noundef !5 ; 30 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1824)
  %i.f = load i64, ptr %0, align 8, !range !15, !alias.scope !1824, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.g, label %bb.l, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.j = load i8, ptr %i.i, align 2, !range !24, !alias.scope !1825, !noundef !5
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.ai, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.promoted.i = load i64, ptr %i.h, align 8, !alias.scope !1824 ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.promoted52.i = load i8, ptr %i.l, align 8, !alias.scope !1825 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  %i.m = trunc nuw i8 %.promoted52.i to i1        ; 2 uses
  %i.n = icmp eq i64 %.promoted.i, 0
  br i1 %i.n, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %.val1
  br i1 %.not.i.i.i.peel, label %bb.d, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.c
  %i.o = icmp eq i64 %.promoted.i, %.val1
  br i1 %i.o, label %bb.e, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 %.promoted.i
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !1827, !noalias !1828, !noundef !5
  %i.r = icmp sgt i8 %i.q, -65
  br i1 %i.r, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %.split.i.i.i.peel, %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %.promoted.i ; 4 uses
  %i.t = icmp samesign eq i64 %.promoted.i, %.val1
  br i1 %i.t, label %.loopexit51, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i8, ptr %i.s, align 1, !noalias !1829, !noundef !5 ; 5 uses
  %i.v = icmp sgt i8 %i.u, -1
  br i1 %i.v, label %bb.g, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i.i.i.peel

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i.i.i.peel: ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.x = and i8 %i.u, 31
  %i.y = zext nneg i8 %i.x to i32                 ; 3 uses
  %i.z = add nuw nsw i64 %.promoted.i, 1
  %i.aa = icmp samesign ne i64 %i.z, %.val1
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = load i8, ptr %i.w, align 1, !noalias !1829, !noundef !5
  %i.ac = shl nuw nsw i32 %i.y, 6
  %i.ad = and i8 %i.ab, 63
  %i.ae = zext nneg i8 %i.ad to i32               ; 2 uses
  %i.af = or disjoint i32 %i.ac, %i.ae
  %i.ag = icmp samesign ugt i8 %i.u, -33
  br i1 %i.ag, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i.i.i.peel, label %bb.h

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i.i.i.peel
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.ai = add nuw nsw i64 %.promoted.i, 2
  %i.aj = icmp samesign ne i64 %i.ai, %.val1
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = load i8, ptr %i.ah, align 1, !noalias !1829, !noundef !5
  %i.al = shl nuw nsw i32 %i.ae, 6
  %i.am = and i8 %i.ak, 63
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = or disjoint i32 %i.al, %i.an            ; 2 uses
  %i.ap = shl nuw nsw i32 %i.y, 12
  %i.aq = or disjoint i32 %i.ao, %i.ap
  %i.ar = icmp samesign ugt i8 %i.u, -17
  br i1 %i.ar, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i.i.i.peel, label %bb.h

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i.i.i.peel
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  %i.at = add nuw nsw i64 %.promoted.i, 3
  %i.au = icmp samesign ne i64 %i.at, %.val1
  tail call void @llvm.assume(i1 %i.au)
  %i.av = load i8, ptr %i.as, align 1, !noalias !1829, !noundef !5
  %i.aw = shl nuw nsw i32 %i.y, 18
  %i.ax = and i32 %i.aw, 1835008
  %i.ay = shl nuw nsw i32 %i.ao, 6
  %i.az = and i8 %i.av, 63
  %i.ba = zext nneg i8 %i.az to i32
  %i.bb = or disjoint i32 %i.ay, %i.ba
  %i.bc = or disjoint i32 %i.bb, %i.ax
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = zext nneg i8 %i.u to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i.i.i.peel, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i.i.i.peel, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.aq, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i.i.i.peel ], [ %i.bc, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i.i.i.peel ], [ %i.af, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i.i.i.peel ], [ %i.bd, %bb.g ] ; 4 uses
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.be)
  br i1 %i.m, label %.loopexit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.bf, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.bg, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.bh, i64 3, i64 4
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !1824, !noundef !5 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, -1
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !1824, !nonnull !5, !noundef !5 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !1824, !noundef !5 ; 16 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.bq = add nsw i64 %i.bo, -1                   ; 5 uses
  br i1 %i.bk, label %bb.aa, label %bb.s

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.j ], [ %..i.i.peel, %bb.k ], [ 1, %bb.i ]
  %i.br = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 16 uses
  store i64 %i.br, ptr %i.h, align 8, !alias.scope !1830
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1831)
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i = icmp ult i64 %i.br, %.val1
  br i1 %.not.i.i.i, label %bb.o, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.n
  %i.bt = icmp eq i64 %i.br, %.val1
  br i1 %i.bt, label %bb.p, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %.val, i64 %i.br
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !1827, !noalias !1832, !noundef !5
  %i.bw = icmp sgt i8 %i.bv, -65
  br i1 %i.bw, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o, %.split.i.i.i, %bb.m
  %i.bx = icmp samesign eq i64 %i.br, %.val1
  br i1 %i.bx, label %bb.ah, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %i.br
  %i.bz = load i8, ptr %i.by, align 1, !noalias !1833, !noundef !5 ; 3 uses
  %i.ca = icmp sgt i8 %i.bz, -1
  br i1 %i.ca, label %.loopexit.i, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i.i.i: ; preds = %bb.q
  %i.cb = add nuw nsw i64 %i.br, 1
  %i.cc = icmp samesign ne i64 %i.cb, %.val1
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = icmp samesign ugt i8 %i.bz, -33
  br i1 %i.cd, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i.i.i, label %.loopexit.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i.i.i
  %i.ce = add nuw nsw i64 %i.br, 2
  %i.cf = icmp samesign ne i64 %i.ce, %.val1
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = icmp samesign ugt i8 %i.bz, -17
  br i1 %i.cg, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i.i.i, label %.loopexit.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i.i.i
  %i.ch = add nuw nsw i64 %i.br, 3
  %i.ci = icmp samesign ne i64 %i.ch, %.val1
  tail call void @llvm.assume(i1 %i.ci)
  br label %.loopexit.i

.loopexit:                                        ; preds = %bb.o, %.split.i.i.i, %bb.d, %.split.i.i.i.peel
  %.lcssa47 = phi i8 [ %.promoted52.i, %.split.i.i.i.peel ], [ %.promoted52.i, %bb.d ], [ 1, %.split.i.i.i ], [ 1, %bb.o ]
  %.lcssa44 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.d ], [ %i.br, %.split.i.i.i ], [ %i.br, %bb.o ]
  %i.cj = xor i8 %.lcssa47, 1
  store i8 %i.cj, ptr %i.l, align 8, !alias.scope !1825
  tail call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, i64 noundef %.lcssa44, i64 noundef %.val1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #30, !noalias !1832
  unreachable

.loopexit51:                                      ; preds = %bb.e
  %i.ck = xor i8 %.promoted52.i, 1
  store i8 %i.ck, ptr %i.l, align 8, !alias.scope !1825
  br i1 %i.m, label %bb.ah, label %bb.r

bb.r:                                             ; preds = %.loopexit51
  store i8 1, ptr %i.i, align 2, !alias.scope !1825
  br label %bb.ai

.loopexit.i:                                      ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i.i.i, %bb.q, %bb.h
  %.lcssa46 = phi i64 [ %.promoted.i, %bb.h ], [ %i.br, %bb.q ], [ %i.br, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i.i.i ], [ %i.br, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i.i.i ], [ %i.br, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i.i.i ] ; 2 uses
  store i8 0, ptr %i.l, align 8, !alias.scope !1825
  br label %bb.ah

bb.s:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1836)
  %.promoted.i.i = load i64, ptr %i.bp, align 8, !alias.scope !1837 ; 2 uses
  %i.cl = add i64 %.promoted.i.i, %i.bq           ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %.val1
  br i1 %i.cm, label %.lr.ph.i1.i, label %._crit_edge.i.i

.lr.ph.i1.i:                                      ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !1837, !noundef !5
  %i.cp = load i64, ptr %i.h, align 8, !alias.scope !1837 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !1837 ; 2 uses
  %i.cs = sub i64 %i.bo, %i.cr
  %invariant.op = sub i64 1, %i.cp
  br label %.lr.ph.split.i.i

._crit_edge.i.i:                                  ; preds = %bb.v, %bb.s
  store i64 %.val1, ptr %i.bp, align 8, !alias.scope !1837
  br label %bb.ai

.lr.ph.split.i.i:                                 ; preds = %bb.v, %.lr.ph.i1.i
  %i.ct = phi i64 [ %.sink.i4.i, %bb.v ], [ %i.bj, %.lr.ph.i1.i ] ; 3 uses
  %i.cu = phi i64 [ %i.df, %bb.v ], [ %i.cl, %.lr.ph.i1.i ]
  %i.cv = phi i64 [ %i.de, %bb.v ], [ %.promoted.i.i, %.lr.ph.i1.i ] ; 7 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cu
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !1835, !noalias !1838, !noundef !5
  %i.cy = and i8 %i.cx, 63
  %i.cz = zext nneg i8 %i.cy to i64
  %i.da = shl nuw i64 1, %i.cz
  %i.db = and i64 %i.da, %i.co
  %.not.i2.i = icmp eq i64 %i.db, 0
  br i1 %.not.i2.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.split.i.i
  %i.dc = add i64 %i.cv, %i.bo                    ; 2 uses
  store i64 %i.dc, ptr %i.bp, align 8, !alias.scope !1837
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph.split.i.i
  %..i.i3.i = tail call noundef i64 @llvm.umax.i64(i64 %i.ct, i64 %i.cp) ; 2 uses
  %i.dd = icmp ult i64 %..i.i3.i, %i.bo
  br i1 %i.dd, label %.lr.ph, label %.preheader36.i.i.preheader

bb.v:                                             ; preds = %bb.z, %bb.y, %bb.t
  %.sink.i4.i = phi i64 [ 0, %bb.z ], [ %i.cs, %bb.y ], [ 0, %bb.t ] ; 2 uses
  %i.de = phi i64 [ %i.eb, %bb.z ], [ %i.ea, %bb.y ], [ %i.dc, %bb.t ] ; 2 uses
  store i64 %.sink.i4.i, ptr %i.bi, align 8, !alias.scope !1837
  %i.df = add i64 %i.de, %i.bq                    ; 2 uses
  %i.dg = icmp ult i64 %i.df, %.val1
  br i1 %i.dg, label %.lr.ph.split.i.i, label %._crit_edge.i.i

bb.w:                                             ; preds = %.lr.ph
  %i.dh = add nuw nsw i64 %.sroa.04.0.i.i96, 1    ; 2 uses
  %i.di = icmp ult i64 %i.dh, %i.bo
  br i1 %i.di, label %.lr.ph, label %.preheader36.i.i.preheader

.preheader36.i.i.preheader:                       ; preds = %bb.w, %bb.u
  %i.dj = icmp ult i64 %i.ct, %i.cp
  br i1 %i.dj, label %.lr.ph98, label %.split.us.i.i

.lr.ph:                                           ; preds = %bb.u, %bb.w
  %.sroa.04.0.i.i96 = phi i64 [ %i.dh, %bb.w ], [ %..i.i3.i, %bb.u ] ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.04.0.i.i96
  %i.dl = load i8, ptr %i.dk, align 1, !alias.scope !1836, !noalias !1838, !noundef !5
  %i.dm = add i64 %.sroa.04.0.i.i96, %i.cv        ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %.val1
  tail call void @llvm.assume(i1 %i.dn)
  %i.do = getelementptr inbounds nuw i8, ptr %.val, i64 %i.dm
  %i.dp = load i8, ptr %i.do, align 1, !alias.scope !1835, !noalias !1838, !noundef !5
  %.not21.i.i = icmp eq i8 %i.dl, %i.dp
  br i1 %.not21.i.i, label %bb.w, label %bb.z

.preheader36.i.i:                                 ; preds = %bb.x
  %i.dq = icmp ult i64 %i.ct, %i.ds
  br i1 %i.dq, label %.lr.ph98, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %.preheader36.i.i.preheader, %.preheader36.i.i
  %i.dr = add i64 %i.cv, %i.bo                    ; 2 uses
  store i64 %i.dr, ptr %i.bp, align 8, !alias.scope !1837
  store i64 0, ptr %i.bi, align 8, !alias.scope !1837
  br label %bb.ah

.lr.ph98:                                         ; preds = %.preheader36.i.i.preheader, %.preheader36.i.i
  %.sroa.2.0.i.i97 = phi i64 [ %i.ds, %.preheader36.i.i ], [ %i.cp, %.preheader36.i.i.preheader ]
  %i.ds = add i64 %.sroa.2.0.i.i97, -1            ; 6 uses
  %i.dt = icmp ult i64 %i.ds, %i.bo
  br i1 %i.dt, label %bb.x, label %.split32.us.i.i

bb.x:                                             ; preds = %.lr.ph98
  %i.du = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ds
  %i.dv = load i8, ptr %i.du, align 1, !alias.scope !1836, !noalias !1838, !noundef !5
  %i.dw = add i64 %i.ds, %i.cv                    ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %.val1
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = getelementptr inbounds nuw i8, ptr %.val, i64 %i.dw
  %i.dz = load i8, ptr %i.dy, align 1, !alias.scope !1835, !noalias !1838, !noundef !5
  %.not20.i.i = icmp eq i8 %i.dv, %i.dz
  br i1 %.not20.i.i, label %.preheader36.i.i, label %bb.y

.split32.us.i.i:                                  ; preds = %.lr.ph98
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.ds, i64 noundef range(i64 0, -9223372036854775808) %i.bo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #30, !noalias !1839
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.ea = add i64 %i.cv, %i.cr
  br label %bb.v

bb.z:                                             ; preds = %.lr.ph
  %.reass.i.reass.reass = add i64 %i.cv, %invariant.op
  %i.eb = add i64 %.reass.i.reass.reass, %.sroa.04.0.i.i96 ; 2 uses
  store i64 %i.eb, ptr %i.bp, align 8, !alias.scope !1837
  br label %bb.v

bb.aa:                                            ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1842)
  %.promoted.i5.i = load i64, ptr %i.bp, align 8, !alias.scope !1843 ; 3 uses
  %i.ec = add i64 %.promoted.i5.i, %i.bq          ; 3 uses
  %i.ed = icmp ult i64 %i.ec, %.val1
  br i1 %i.ed, label %.lr.ph.i8.i, label %._crit_edge.i6.i

.lr.ph.i8.i:                                      ; preds = %bb.aa
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !1843, !noundef !5 ; 2 uses
  %i.eg = load i64, ptr %i.h, align 8, !alias.scope !1843
  %.fr63.i = freeze i64 %i.eg                     ; 10 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !1843
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.fr63.i, i64 range(i64 0, -9223372036854775808) %i.bo) ; 2 uses
  %i.ej = add i64 %.fr63.i, -1                    ; 2 uses
  %.first_iter.i9.i = icmp ult i64 %i.ej, %i.bo
  %i.ek = sub i64 1, %.fr63.i                     ; 2 uses
  br i1 %.first_iter.i9.i, label %.lr.ph.split.us.i.us.i.preheader, label %.lr.ph.split.us.i.i.preheader

.lr.ph.split.us.i.i.preheader:                    ; preds = %.lr.ph.i8.i
  %exitcond.not.i.i100.not = icmp ult i64 %.fr63.i, %i.bo
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.us.i.preheader:                 ; preds = %.lr.ph.i8.i
  %exitcond.not.i.us.i105.not = icmp ult i64 %.fr63.i, %i.bo
  %.not34.i.us.us.i108 = icmp eq i64 %.fr63.i, 0
  br label %.lr.ph.split.us.i.us.i

.lr.ph.split.us.i.us.i:                           ; preds = %.lr.ph.split.us.i.us.i.preheader, %bb.ad
  %i.el = phi i64 [ %i.fm, %bb.ad ], [ %i.ec, %.lr.ph.split.us.i.us.i.preheader ]
  %i.em = phi i64 [ %i.fl, %bb.ad ], [ %.promoted.i5.i, %.lr.ph.split.us.i.us.i.preheader ] ; 7 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.val, i64 %i.el
  %i.eo = load i8, ptr %i.en, align 1, !alias.scope !1841, !noalias !1838, !noundef !5
  %i.ep = and i8 %i.eo, 63
  %i.eq = zext nneg i8 %i.ep to i64
  %i.er = shl nuw i64 1, %i.eq
  %i.es = and i64 %i.er, %i.ef
  %.not.us.i.us.i = icmp eq i64 %i.es, 0
  br i1 %.not.us.i.us.i, label %bb.ac, label %.preheader35.i.us.i.preheader

.preheader35.i.us.i.preheader:                    ; preds = %.lr.ph.split.us.i.us.i
  br i1 %exitcond.not.i.us.i105.not, label %.lr.ph107, label %.preheader.i10.us.us.i.preheader

.preheader35.i.us.i:                              ; preds = %.lr.ph107
  %i.et = add i64 %.sroa.04.0.us.i.us.i106, 1     ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.et, %umax.i.i
  br i1 %exitcond.not.i.us.i, label %.preheader.i10.us.us.i.preheader, label %.lr.ph107

.preheader.i10.us.us.i.preheader:                 ; preds = %.preheader35.i.us.i, %.preheader35.i.us.i.preheader
  br i1 %.not34.i.us.us.i108, label %.split.us.i12.i, label %.lr.ph110

.lr.ph107:                                        ; preds = %.preheader35.i.us.i.preheader, %.preheader35.i.us.i
  %.sroa.04.0.us.i.us.i106 = phi i64 [ %i.et, %.preheader35.i.us.i ], [ %.fr63.i, %.preheader35.i.us.i.preheader ] ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.04.0.us.i.us.i106
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !1842, !noalias !1838, !noundef !5
  %i.ew = add i64 %.sroa.04.0.us.i.us.i106, %i.em ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %.val1
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ew
  %i.ez = load i8, ptr %i.ey, align 1, !alias.scope !1841, !noalias !1838, !noundef !5
  %.not21.us.i.us.i = icmp eq i8 %i.ev, %i.ez
  br i1 %.not21.us.i.us.i, label %.preheader35.i.us.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph107
  %i.fa = add i64 %i.em, %i.ek
  %i.fb = add i64 %i.fa, %.sroa.04.0.us.i.us.i106
  br label %bb.ad

.preheader.i10.us.us.i:                           ; preds = %.lr.ph110
  %.not34.i.us.us.i = icmp eq i64 %i.fc, 0
  br i1 %.not34.i.us.us.i, label %.split.us.i12.i, label %.lr.ph110

.lr.ph110:                                        ; preds = %.preheader.i10.us.us.i.preheader, %.preheader.i10.us.us.i
  %.sroa.2.0.us.i.us.us.i109 = phi i64 [ %i.fc, %.preheader.i10.us.us.i ], [ %.fr63.i, %.preheader.i10.us.us.i.preheader ]
  %i.fc = add i64 %.sroa.2.0.us.i.us.us.i109, -1  ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !alias.scope !1842, !noalias !1838, !noundef !5
  %i.ff = add i64 %i.fc, %i.em                    ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %.val1
  tail call void @llvm.assume(i1 %i.fg)
  %i.fh = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ff
  %i.fi = load i8, ptr %i.fh, align 1, !alias.scope !1841, !noalias !1838, !noundef !5
  %.not20.us.i.us.us.i = icmp eq i8 %i.fe, %i.fi
  br i1 %.not20.us.i.us.us.i, label %.preheader.i10.us.us.i, label %.split.us.us.i

.split.us.us.i:                                   ; preds = %.lr.ph110
  %i.fj = add i64 %i.em, %i.ei
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.split.us.i.us.i
  %i.fk = add i64 %i.em, %i.bo                    ; 2 uses
  store i64 %i.fk, ptr %i.bp, align 8, !alias.scope !1843
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.split.us.us.i, %bb.ab
  %i.fl = phi i64 [ %i.fb, %bb.ab ], [ %i.fk, %bb.ac ], [ %i.fj, %.split.us.us.i ] ; 2 uses
  %i.fm = add i64 %i.fl, %i.bq                    ; 2 uses
  %i.fn = icmp ult i64 %i.fm, %.val1
  br i1 %i.fn, label %.lr.ph.split.us.i.us.i, label %._crit_edge.i6.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.preheader, %bb.ag
  %i.fo = phi i64 [ %i.gh, %bb.ag ], [ %i.ec, %.lr.ph.split.us.i.i.preheader ]
  %i.fp = phi i64 [ %i.gg, %bb.ag ], [ %.promoted.i5.i, %.lr.ph.split.us.i.i.preheader ] ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.val, i64 %i.fo
  %i.fr = load i8, ptr %i.fq, align 1, !alias.scope !1841, !noalias !1838, !noundef !5
  %i.fs = and i8 %i.fr, 63
  %i.ft = zext nneg i8 %i.fs to i64
  %i.fu = shl nuw i64 1, %i.ft
  %i.fv = and i64 %i.fu, %i.ef
  %.not.us.i.i = icmp eq i64 %i.fv, 0
  br i1 %.not.us.i.i, label %bb.af, label %.preheader35.i.i.preheader

.preheader35.i.i.preheader:                       ; preds = %.lr.ph.split.us.i.i
  br i1 %exitcond.not.i.i100.not, label %.lr.ph102, label %.preheader.i10.i

.preheader35.i.i:                                 ; preds = %.lr.ph102
  %i.fw = add i64 %.sroa.04.0.us.i.i101, 1        ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fw, %umax.i.i
  br i1 %exitcond.not.i.i, label %.preheader.i10.i, label %.lr.ph102

.lr.ph102:                                        ; preds = %.preheader35.i.i.preheader, %.preheader35.i.i
  %.sroa.04.0.us.i.i101 = phi i64 [ %i.fw, %.preheader35.i.i ], [ %.fr63.i, %.preheader35.i.i.preheader ] ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.04.0.us.i.i101
  %i.fy = load i8, ptr %i.fx, align 1, !alias.scope !1842, !noalias !1838, !noundef !5
  %i.fz = add i64 %.sroa.04.0.us.i.i101, %i.fp    ; 2 uses
  %i.ga = icmp ult i64 %i.fz, %.val1
  tail call void @llvm.assume(i1 %i.ga)
  %i.gb = getelementptr inbounds nuw i8, ptr %.val, i64 %i.fz
  %i.gc = load i8, ptr %i.gb, align 1, !alias.scope !1841, !noalias !1838, !noundef !5
  %.not21.us.i.i = icmp eq i8 %i.fy, %i.gc
  br i1 %.not21.us.i.i, label %.preheader35.i.i, label %bb.ae

.preheader.i10.i:                                 ; preds = %.preheader35.i.i.preheader, %.preheader35.i.i
  %.not34.i.i = icmp eq i64 %.fr63.i, 0
  br i1 %.not34.i.i, label %.split.us.i12.i, label %.split32.us.i11.i

.split32.us.i11.i:                                ; preds = %.preheader.i10.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.ej, i64 noundef range(i64 0, -9223372036854775808) %i.bo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #30, !noalias !1844
  unreachable

bb.ae:                                            ; preds = %.lr.ph102
  %i.gd = add i64 %i.fp, %i.ek
  %i.ge = add i64 %i.gd, %.sroa.04.0.us.i.i101
  br label %bb.ag

bb.af:                                            ; preds = %.lr.ph.split.us.i.i
  %i.gf = add i64 %i.fp, %i.bo
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.gg = phi i64 [ %i.ge, %bb.ae ], [ %i.gf, %bb.af ] ; 2 uses
  %i.gh = add i64 %i.gg, %i.bq                    ; 2 uses
  %i.gi = icmp ult i64 %i.gh, %.val1
  br i1 %i.gi, label %.lr.ph.split.us.i.i, label %._crit_edge.i6.i

._crit_edge.i6.i:                                 ; preds = %bb.ag, %bb.ad, %bb.aa
  store i64 %.val1, ptr %i.bp, align 8, !alias.scope !1843
  br label %bb.ai

.split.us.i12.i:                                  ; preds = %.preheader.i10.us.us.i.preheader, %.preheader.i10.us.us.i, %.preheader.i10.i
  %.us-phi.i = phi i64 [ %i.fp, %.preheader.i10.i ], [ %i.em, %.preheader.i10.us.us.i ], [ %i.em, %.preheader.i10.us.us.i.preheader ] ; 2 uses
  %i.gj = add i64 %.us-phi.i, %i.bo               ; 2 uses
  store i64 %i.gj, ptr %i.bp, align 8, !alias.scope !1843
  br label %bb.ah

bb.ah:                                            ; preds = %bb.p, %.split.us.i12.i, %.split.us.i.i, %.loopexit.i, %.loopexit51
  %.sroa.8.0.ph = phi i64 [ %.val1, %.loopexit51 ], [ %.lcssa46, %.loopexit.i ], [ %i.dr, %.split.us.i.i ], [ %i.gj, %.split.us.i12.i ], [ %.val1, %bb.p ]
  %.sroa.4.02.ph = phi i64 [ %.val1, %.loopexit51 ], [ %.lcssa46, %.loopexit.i ], [ %i.cv, %.split.us.i.i ], [ %.us-phi.i, %.split.us.i12.i ], [ %.val1, %bb.p ]
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !noundef !5 ; 2 uses
  %i.gm = sub nuw i64 %.sroa.4.02.ph, %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %.val, i64 %i.gl
  store i64 %.sroa.8.0.ph, ptr %i.gk, align 8
  br label %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalReE7get_endCsdit6BuOJVAc_5uu_od.exit

bb.ai:                                            ; preds = %.preheader.i, %bb.r, %._crit_edge.i.i, %._crit_edge.i6.i
  store i8 1, ptr %i.a, align 1, !alias.scope !1845
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gp = load i8, ptr %i.go, align 8, !range !24, !alias.scope !1845, !noundef !5
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %._crit_edge.i, label %bb.aj

._crit_edge.i:                                    ; preds = %bb.ai
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !1845
  %.phi.trans.insert2.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre3.i = load i64, ptr %.phi.trans.insert2.i, align 8, !alias.scope !1845
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gs = load i64, ptr %i.gr, align 8, !alias.scope !1845, !noundef !5 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.gu = load i64, ptr %i.gt, align 8, !alias.scope !1845, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.gs, %i.gu
  br i1 %.not.i, label %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalReE7get_endCsdit6BuOJVAc_5uu_od.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge.i
  %i.gv = phi i64 [ %.pre3.i, %._crit_edge.i ], [ %i.gs, %bb.aj ]
  %i.gw = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.gu, %bb.aj ] ; 2 uses
  %i.gx = sub nuw i64 %i.gv, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %.val, i64 %i.gw
  br label %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalReE7get_endCsdit6BuOJVAc_5uu_od.exit

_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalReE7get_endCsdit6BuOJVAc_5uu_od.exit: ; preds = %bb.ak, %bb.aj, %bb.ah, %bb.a
  %.sroa.4.1 = phi i64 [ undef, %bb.a ], [ %i.gm, %bb.ah ], [ %i.gx, %bb.ak ], [ undef, %bb.aj ]
  %.sroa.0.1 = phi ptr [ null, %bb.a ], [ %i.gn, %bb.ah ], [ %i.gy, %bb.ak ], [ null, %bb.aj ]
  %i.gz = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %i.ha = insertvalue { ptr, i64 } %i.gz, i64 %.sroa.4.1, 1
  ret { ptr, i64 } %i.ha
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintE9drop_slowCsdit6BuOJVAc_5uu_od(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECsdit6BuOJVAc_5uu_od.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECsdit6BuOJVAc_5uu_od.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef 8) #29
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECsdit6BuOJVAc_5uu_od.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECsdit6BuOJVAc_5uu_od.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #5 {
bb.a:
  switch i64 %2, label %thread-pre-split [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.a, align 1
  br label %bb.c

bb.c:                                             ; preds = %.loopexit113, %bb.v, %bb.w, %bb.p, %bb.y, %bb.n, %bb.m, %.loopexit118, %bb.e, %.loopexit, %bb.b
  %.sink = phi i8 [ 1, %.loopexit113 ], [ 1, %bb.v ], [ 1, %bb.w ], [ 1, %bb.p ], [ 1, %bb.y ], [ 1, %bb.n ], [ 1, %bb.m ], [ 1, %.loopexit118 ], [ 1, %bb.e ], [ 0, %.loopexit ], [ 1, %bb.b ]
  store i8 %.sink, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !noundef !5    ; 2 uses
  switch i8 %i.b, label %bb.f [
    i8 43, label %bb.e
    i8 45, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.c, align 1
  br label %bb.c

thread-pre-split:                                 ; preds = %bb.a
  %.pr = load i8, ptr %1, align 1
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split, %bb.d
  %i.d = phi i8 [ %.pr, %thread-pre-split ], [ %i.b, %bb.d ]
  switch i8 %i.d, label %bb.q [
    i8 43, label %bb.g
    i8 45, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = add nsw i64 %2, -1
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.h = add nsw i64 %2, -1                       ; 3 uses
  %i.i = icmp samesign ult i64 %2, 17
  br i1 %i.i, label %.preheader114, label %.lr.ph

.preheader114:                                    ; preds = %bb.h
  %.not103137 = icmp eq i64 %i.h, 0
  br i1 %.not103137, label %.loopexit, label %.lr.ph141

.loopexit:                                        ; preds = %bb.l, %bb.o, %bb.u, %bb.x, %.preheader114, %.preheader
  %.sroa.084.1 = phi i64 [ %i.ak, %bb.o ], [ %i.bn, %bb.x ], [ %i.bc, %bb.u ], [ 0, %.preheader ], [ 0, %.preheader114 ], [ %i.z, %bb.l ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.084.1, ptr %i.j, align 8
  br label %bb.c

.lr.ph:                                           ; preds = %bb.h, %bb.l
  %.sroa.0.1136 = phi ptr [ %i.k, %bb.l ], [ %i.g, %bb.h ] ; 2 uses
  %.sroa.26.1135 = phi i64 [ %i.l, %bb.l ], [ %i.h, %bb.h ]
  %.sroa.084.0134 = phi i64 [ %i.z, %bb.l ], [ 0, %bb.h ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.1136, i64 1
  %i.l = add nsw i64 %.sroa.26.1135, -1           ; 2 uses
  %i.m = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134, i64 10) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 0
  %i.o = extractvalue { i64, i1 } %i.m, 1
  %i.p = load i8, ptr %.sroa.0.1136, align 1, !noundef !5 ; 2 uses
  br i1 %i.o, label %bb.j, label %bb.i, !prof !12

bb.i:                                             ; preds = %.lr.ph
  %i.q = zext i8 %i.p to i32
  %i.r = add nsw i32 %i.q, -48                    ; 2 uses
  %i.s = icmp ult i32 %i.r, 10
  br i1 %i.s, label %bb.k, label %.loopexit118

bb.j:                                             ; preds = %.lr.ph
  %i.t = add i8 %i.p, -48
  %i.u = icmp ult i8 %i.t, 10
  br i1 %i.u, label %bb.n, label %.loopexit118

bb.k:                                             ; preds = %bb.i
  %i.v = zext nneg i32 %i.r to i64
  %i.w = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.n, i64 %i.v) ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1
  br i1 %i.x, label %bb.m, label %bb.l, !prof !12

.loopexit118:                                     ; preds = %bb.i, %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.y, align 1
  br label %bb.c

bb.l:                                             ; preds = %bb.k
  %i.z = extractvalue { i64, i1 } %i.w, 0         ; 2 uses
  %.not102 = icmp eq i64 %i.l, 0
  br i1 %.not102, label %.loopexit, label %.lr.ph

bb.m:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 3, ptr %i.aa, align 1
  br label %bb.c

bb.n:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 3, ptr %i.ab, align 1
  br label %bb.c

.lr.ph141:                                        ; preds = %.preheader114, %bb.o
  %.sroa.0.2140 = phi ptr [ %i.ai, %bb.o ], [ %i.g, %.preheader114 ] ; 2 uses
  %.sroa.26.2139 = phi i64 [ %i.ah, %bb.o ], [ %i.h, %.preheader114 ]
  %.sroa.084.2138 = phi i64 [ %i.ak, %bb.o ], [ 0, %.preheader114 ]
  %i.ac = load i8, ptr %.sroa.0.2140, align 1, !noundef !5
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add nsw i32 %i.ad, -48                  ; 2 uses
  %i.af = icmp ult i32 %i.ae, 10
  br i1 %i.af, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph141
  %i.ag = mul i64 %.sroa.084.2138, 10
  %i.ah = add nsw i64 %.sroa.26.2139, -1          ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.2140, i64 1
  %i.aj = zext nneg i32 %i.ae to i64
  %i.ak = sub i64 %i.ag, %i.aj                    ; 2 uses
  %.not103 = icmp eq i64 %i.ah, 0
  br i1 %.not103, label %.loopexit, label %.lr.ph141

bb.p:                                             ; preds = %.lr.ph141
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.al, align 1
  br label %bb.c
end_hunk_0
