Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/coreutils.coreutils.f62e4db4eae9fc3c-cgu.0?download=true
inline.NumInlined: 9927
inline.NumDeleted: 3951
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RINvCs3Kbw3eh1oGk_8uu_sleep6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBB_6cloned6ClonedINtNtNtBF_5slice4iter4IterB2c_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit41

bb.ay:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1720
  %i.ff = ptrtoint ptr %i.ex to i64               ; 2 uses
  %i.fg = and i64 %i.ff, 3
  switch i64 %i.fg, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i39
    i64 3, label %bb.az
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i39
    i64 1, label %bb.ba
  ], !prof !91

bb.az:                                            ; preds = %bb.ay
  %i.fh = icmp ult ptr %i.ex, inttoptr (i64 188978561024 to ptr)
  %i.fi = and i64 %i.ff, 1095216660480
  %i.fj = icmp ne i64 %i.fi, 1095216660480
  call void @llvm.assume(i1 %i.fh)
  call void @llvm.assume(i1 %i.fj)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i39

bb.ba:                                            ; preds = %bb.ay
  %i.fk = getelementptr i8, ptr %i.ex, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fk) ]
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.fk, ptr %i.fl, align 8, !alias.scope !1723, !noalias !1720
  store i8 3, ptr %i.b, align 8, !alias.scope !1723, !noalias !1720
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fl) #45, !noalias !1720
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i39

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i39: ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1720
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit41

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit41: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i34.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %.val27 = load ptr, ptr %i.ad, align 8, !nonnull !12, !align !249, !noundef !12 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.val27, i64 12 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !noundef !12
  %i.fo = add i32 %i.fn, -1                       ; 2 uses
  store i32 %i.fo, ptr %i.fm, align 4
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.bb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit

bb.bb:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit41
  store atomic i64 0, ptr %.val27 monotonic, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %.val27, i64 8 ; 2 uses
  %i.fr = atomicrmw xchg ptr %i.fq, i32 0 release, align 4
  %i.fs = icmp eq i32 %i.fr, 2
  br i1 %i.fs, label %bb.bc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit, !prof !48

bb.bc:                                            ; preds = %bb.bb
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.fq) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit41, %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.bd

bb.bd:                                            ; preds = %.split, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit
  %i.ft = load ptr, ptr %i.ah, align 8, !nonnull !12, !noundef !12
  %i.fu = load ptr, ptr %i.du, align 8, !nonnull !12, !align !249, !noundef !12
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 96
  %i.fw = load ptr, ptr %i.fv, align 8, !invariant.load !12, !nonnull !12
  %i.fx = call noundef zeroext i1 %i.fw(ptr noundef nonnull %i.ft) #51
  br i1 %i.fx, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.fy = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore16execution_phrase() #45 ; 2 uses
  %i.fz = extractvalue { ptr, i64 } %i.fy, 0
  %i.ga = extractvalue { ptr, i64 } %i.fy, 1
  store ptr %i.fz, ptr %i.x, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %i.ga, ptr %i.gb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.x, ptr %i.w, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.420.0..sroa_idx, align 8
  %i.gc = call noundef ptr @_RNvXso_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StderrNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @7, ptr noundef nonnull %i.w) #45 ; 4 uses
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit44, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1726
  %i.ge = ptrtoint ptr %i.gc to i64               ; 2 uses
  %i.gf = and i64 %i.ge, 3
  switch i64 %i.gf, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i42
    i64 3, label %bb.bg
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i42
    i64 1, label %bb.bh
  ], !prof !91

bb.bg:                                            ; preds = %bb.bf
  %i.gg = icmp ult ptr %i.gc, inttoptr (i64 188978561024 to ptr)
  %i.gh = and i64 %i.ge, 1095216660480
  %i.gi = icmp ne i64 %i.gh, 1095216660480
  call void @llvm.assume(i1 %i.gg)
  call void @llvm.assume(i1 %i.gi)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i42

bb.bh:                                            ; preds = %bb.bf
  %i.gj = getelementptr i8, ptr %i.gc, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gj) ]
  %i.gk = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.gj, ptr %i.gk, align 8, !alias.scope !1729, !noalias !1726
  store i8 3, ptr %i.a, align 8, !alias.scope !1729, !noalias !1726
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gk) #45, !noalias !1726
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i42

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i42: ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1726
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit44

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit44: ; preds = %bb.be, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bd, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit44
  %i.gl = load ptr, ptr %i.ah, align 8, !nonnull !12, !noundef !12
  %i.gm = load ptr, ptr %i.du, align 8, !nonnull !12, !align !249, !noundef !12
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 88
  %i.go = load ptr, ptr %i.gn, align 8, !invariant.load !12, !nonnull !12
  %i.gp = call noundef i32 %i.go(ptr noundef nonnull %i.gl) #51
  call void @llvm.experimental.noalias.scope.decl(metadata !1732)
  call void @llvm.experimental.noalias.scope.decl(metadata !1735)
  %.val.i.i = load i64, ptr %i.ag, align 8, !range !63, !alias.scope !1738, !noundef !12 ; 2 uses
  %i.gq = icmp eq i64 %.val.i.i, 0
  br i1 %i.gq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val1.i.i = load ptr, ptr %i.gr, align 8, !alias.scope !1738, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !1738
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.experimental.noalias.scope.decl(metadata !1739)
  %i.gs = load ptr, ptr %i.du, align 8, !alias.scope !1739, !nonnull !12, !align !249, !noundef !12 ; 3 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !invariant.load !12, !noalias !1739 ; 2 uses
  %.not.i45 = icmp eq ptr %i.gt, null
  br i1 %.not.i45, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit
  %i.gu = load ptr, ptr %i.ah, align 8, !alias.scope !1739, !nonnull !12, !noundef !12
  call void %i.gt(ptr noundef nonnull %i.gu) #51, !noalias !1739, !inline_history !266
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gw = load i64, ptr %i.gv, align 8, !range !63, !invariant.load !12, !noalias !1739 ; 2 uses
  %i.gx = icmp eq i64 %i.gw, 0
  br i1 %i.gx, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsl8pJiQOn4hA_9coreutils.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.bl
  %.val.i46 = load ptr, ptr %i.ah, align 8, !alias.scope !1739, !nonnull !12, !noundef !12
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gz = load i64, ptr %i.gy, align 8, !range !267, !invariant.load !12, !noalias !1739
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i46, i64 noundef %i.gw, i64 noundef range(i64 1, -9223372036854775807) %i.gz) #45, !noalias !1739
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.bl, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.ah
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB2_12block_signalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1742)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !80, !alias.scope !1742, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1742 ; 2 uses
  %i.f = icmp ne i64 %i.e, 0                      ; 2 uses
  %or.cond4.not.i = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond4.not.i, label %.preheader.i, label %_RINvMs_Cs41JD7yXDh97_6uu_envNtB5_13SignalRequest15for_each_signalNCINvB5_19apply_signal_actionNvB5_12block_signalE0ECsl8pJiQOn4hA_9coreutils.exit

.preheader.i:                                     ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1742, !noundef !12 ; 3 uses
  %.not.i = icmp ne ptr %i.g, null                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1742 ; 2 uses
  %.not60.i = select i1 %.not.i, i1 %i.f, i1 false
  br i1 %.not60.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.j = ptrtoint ptr %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12block_signalE0Csl8pJiQOn4hA_9coreutils.exit.i, %.lr.ph.i
  %.sroa.6.049.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.07.0.i.i.i.i, %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12block_signalE0Csl8pJiQOn4hA_9coreutils.exit.i ] ; 2 uses
  %.sroa.15.048.i = phi i64 [ %i.i, %.lr.ph.i ], [ %.sroa.78.0.i.i.i.i, %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12block_signalE0Csl8pJiQOn4hA_9coreutils.exit.i ] ; 6 uses
  %.sroa.23.047.i = phi i64 [ %i.e, %.lr.ph.i ], [ %i.k, %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12block_signalE0Csl8pJiQOn4hA_9coreutils.exit.i ]
  %.sroa.10.046.i = phi i64 [ %i.j, %.lr.ph.i ], [ 0, %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12block_signalE0Csl8pJiQOn4hA_9coreutils.exit.i ] ; 2 uses
  %i.k = add i64 %.sroa.23.047.i, -1              ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.6.049.i, null
  br i1 %.not.i.i.i, label %bb.c, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = inttoptr i64 %.sroa.10.046.i to ptr      ; 3 uses
  %i.m = icmp eq i64 %.sroa.15.048.i, 0
  br i1 %i.m, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.c
  %xtraiter = and i64 %.sroa.15.048.i, 7          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.sroa.013.017.i.i.i.prol = phi ptr [ %.sroa.013.0.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %i.l, %.lr.ph.i.i.i.preheader ]
  %.sroa.011.016.i.i.i.prol = phi i64 [ %i.o, %.lr.ph.i.i.i.prol ], [ %.sroa.15.048.i, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.prol, i64 104
  %i.o = add i64 %.sroa.011.016.i.i.i.prol, -1    ; 2 uses
  %.sroa.013.0.i.i.i.prol = load ptr, ptr %i.n, align 8, !noalias !1745, !nonnull !12, !noundef !12 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1750

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.013.0.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %.sroa.013.0.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.sroa.013.017.i.i.i.unr = phi ptr [ %i.l, %.lr.ph.i.i.i.preheader ], [ %.sroa.013.0.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.sroa.011.016.i.i.i.unr = phi i64 [ %.sroa.15.048.i, %.lr.ph.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.prol ]
  %i.p = icmp ult i64 %.sroa.15.048.i, 8
  br i1 %i.p, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.sroa.013.017.i.i.i = phi ptr [ %.sroa.013.0.i.i.i.7, %.lr.ph.i.i.i ], [ %.sroa.013.017.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.sroa.011.016.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i ], [ %.sroa.011.016.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i, i64 104
  %.sroa.013.0.i.i.i = load ptr, ptr %i.q, align 8, !noalias !1745, !nonnull !12, !noundef !12
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i, i64 104
  %.sroa.013.0.i.i.i.1 = load ptr, ptr %i.r, align 8, !noalias !1745, !nonnull !12, !noundef !12
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.1, i64 104
  %.sroa.013.0.i.i.i.2 = load ptr, ptr %i.s, align 8, !noalias !1745, !nonnull !12, !noundef !12
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.2, i64 104
  %.sroa.013.0.i.i.i.3 = load ptr, ptr %i.t, align 8, !noalias !1745, !nonnull !12, !noundef !12
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.3, i64 104
  %.sroa.013.0.i.i.i.4 = load ptr, ptr %i.u, align 8, !noalias !1745, !nonnull !12, !noundef !12
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.4, i64 104
  %.sroa.013.0.i.i.i.5 = load ptr, ptr %i.v, align 8, !noalias !1745, !nonnull !12, !noundef !12
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.5, i64 104
  %.sroa.013.0.i.i.i.6 = load ptr, ptr %i.w, align 8, !noalias !1745, !nonnull !12, !noundef !12
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.6, i64 104
  %i.y = add i64 %.sroa.011.016.i.i.i, -8         ; 2 uses
  %.sroa.013.0.i.i.i.7 = load ptr, ptr %i.x, align 8, !noalias !1745, !nonnull !12, !noundef !12 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i, label %.lr.ph.i.i.i

_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.c, %bb.b
  %.sroa.59.0.copyload.i.i.i = phi i64 [ %.sroa.15.048.i, %bb.b ], [ 0, %bb.c ], [ 0, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i.i = phi i64 [ %.sroa.10.046.i, %bb.b ], [ 0, %bb.c ], [ 0, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i.i = phi ptr [ %.sroa.6.049.i, %bb.b ], [ %i.l, %bb.c ], [ %.sroa.013.0.i.i.i.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %.sroa.013.0.i.i.i.7, %.lr.ph.i.i.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i.i, i64 98
  %i.ab = load i16, ptr %i.aa, align 2, !noalias !1752, !noundef !12
  %i.ac = zext i16 %i.ab to i64
  %i.ad = icmp ult i64 %.sroa.59.0.copyload.i.i.i, %i.ac
  br i1 %i.ad, label %bb.f, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i, %bb.d
  %.sroa.0.022.i.i.i.i.i = phi ptr [ %i.ae, %bb.d ], [ %.sroa.07.0.copyload.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i = phi i64 [ %i.ag, %bb.d ], [ %.sroa.48.0.copyload.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %i.ae = load ptr, ptr %.sroa.0.022.i.i.i.i.i, align 8, !noalias !1761, !noundef !12 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.d
  %i.af = zext i16 %i.ai to i64
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ag = add i64 %.sroa.5.021.i.i.i.i.i, 1       ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i, i64 96
  %i.ai = load i16, ptr %i.ah, align 8, !noalias !1761 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 98
  %i.ak = load i16, ptr %i.aj, align 2, !noalias !1752, !noundef !12
  %i.al = icmp ult i16 %i.ai, %i.ak
  br i1 %i.al, label %._crit_edge.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @807) #50, !noalias !1764
  unreachable

bb.f:                                             ; preds = %._crit_edge.loopexit.i.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i
  %.sroa.10.0.ph.i.i.i.i = phi i64 [ %i.af, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.59.0.copyload.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 5 uses
  %.sroa.7.0.ph.i.i.i.i = phi i64 [ %i.ag, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.48.0.copyload.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 5 uses
  %.sroa.06.0.ph.i.i.i.i = phi ptr [ %i.ae, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.07.0.copyload.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 3 uses
  %i.am = icmp eq i64 %.sroa.7.0.ph.i.i.i.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = add nuw nsw i64 %.sroa.10.0.ph.i.i.i.i, 1
  br label %.loopexit30.i

bb.h:                                             ; preds = %bb.f
  %i.ao = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i.i, i64 112
  %i.aq = getelementptr [8 x i8], ptr %i.ap, i64 %.sroa.10.0.ph.i.i.i.i ; 2 uses
  %xtraiter31 = and i64 %.sroa.7.0.ph.i.i.i.i, 7  ; 2 uses
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.h, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.prol = phi ptr [ %i.ar, %.prol.preheader ], [ %i.aq, %bb.h ]
  %.sroa.019.0.in.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.7.0.ph.i.i.i.i, %bb.h ]
  %prol.iter33 = phi i64 [ %prol.iter33.next, %.prol.preheader ], [ 0, %bb.h ]
  %.sroa.019.0.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.prol, align 8, !noalias !1765, !nonnull !12, !noundef !12 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.prol, i64 104 ; 2 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1769

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.h
  %.sroa.017.0.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.h ], [ %.sroa.017.0.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.unr = phi ptr [ %i.aq, %bb.h ], [ %i.ar, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i.i, %bb.h ], [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ]
  %i.as = icmp ult i64 %.sroa.7.0.ph.i.i.i.i, 8
  br i1 %i.as, label %.loopexit30.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i = phi ptr [ %i.bb, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i, align 8, !noalias !1765, !nonnull !12, !noundef !12
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i, i64 104
  %.sroa.017.0.i.i.i.i.i.1 = load ptr, ptr %i.at, align 8, !noalias !1765, !nonnull !12, !noundef !12
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.1, i64 104
  %.sroa.017.0.i.i.i.i.i.2 = load ptr, ptr %i.au, align 8, !noalias !1765, !nonnull !12, !noundef !12
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.2, i64 104
  %.sroa.017.0.i.i.i.i.i.3 = load ptr, ptr %i.av, align 8, !noalias !1765, !nonnull !12, !noundef !12
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.3, i64 104
  %.sroa.017.0.i.i.i.i.i.4 = load ptr, ptr %i.aw, align 8, !noalias !1765, !nonnull !12, !noundef !12
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.4, i64 104
  %.sroa.017.0.i.i.i.i.i.5 = load ptr, ptr %i.ax, align 8, !noalias !1765, !nonnull !12, !noundef !12
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.5, i64 104
  %.sroa.017.0.i.i.i.i.i.6 = load ptr, ptr %i.ay, align 8, !noalias !1765, !nonnull !12, !noundef !12
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.6, i64 104
  %.sroa.019.0.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.7 = load ptr, ptr %i.az, align 8, !noalias !1765, !nonnull !12, !noundef !12 ; 2 uses
  %i.ba = icmp eq i64 %.sroa.019.0.i.i.i.i.i.7, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.7, i64 104
  br i1 %i.ba, label %.loopexit30.i, label %.new

.loopexit30.i:                                    ; preds = %.prol.loopexit, %.new, %bb.g
  %.sroa.78.0.i.i.i.i = phi i64 [ %i.an, %bb.g ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i.i, %bb.g ], [ %.sroa.017.0.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.7, %.new ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i.i, i64 8
  %i.bd = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.sroa.10.0.ph.i.i.i.i
  %i.bf = load i64, ptr %i.be, align 8, !noalias !1742, !noundef !12 ; 3 uses
  %i.bg = tail call noundef zeroext i1 @_RNvCs41JD7yXDh97_6uu_env15signal_is_valid(i64 noundef %i.bf) #45, !noalias !1742
  br i1 %i.bg, label %bb.i, label %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12block_signalE0Csl8pJiQOn4hA_9coreutils.exit.i

bb.i:                                             ; preds = %.loopexit30.i
  %i.bh = tail call { ptr, ptr } @_RNvCs41JD7yXDh97_6uu_env12block_signal(i64 noundef %i.bf) #45, !noalias !1742 ; 2 uses
  %i.bi = extractvalue { ptr, ptr } %i.bh, 0      ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %bb.j, label %.loopexit29.sink.split.i

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs0_Cs41JD7yXDh97_6uu_envNtB5_15SignalActionLog6record(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bf, i8 noundef 2, i1 noundef zeroext true) #45, !noalias !1742
  br label %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12block_signalE0Csl8pJiQOn4hA_9coreutils.exit.i

_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12block_signalE0Csl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.j, %.loopexit30.i
  %i.bj = icmp eq i64 %i.k, 0
  br i1 %i.bj, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12block_signalE0Csl8pJiQOn4hA_9coreutils.exit.i, %.preheader.i
  br i1 %i.c, label %bb.k, label %_RINvMs_Cs41JD7yXDh97_6uu_envNtB5_13SignalRequest15for_each_signalNCINvB5_19apply_signal_actionNvB5_12block_signalE0ECsl8pJiQOn4hA_9coreutils.exit

bb.k:                                             ; preds = %._crit_edge.i
  %i.bk = tail call noundef i64 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals25signal_number_upper_bound() #45, !noalias !1742 ; 3 uses
  %.not.i7351.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i7351.i, label %_RINvMs_Cs41JD7yXDh97_6uu_envNtB5_13SignalRequest15for_each_signalNCINvB5_19apply_signal_actionNvB5_12block_signalE0ECsl8pJiQOn4hA_9coreutils.exit, label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %bb.k
  br i1 %.not.i, label %.preheader.i.preheader.i, label %.lr.ph54.split.us.i

.lr.ph54.split.us.i:                              ; preds = %.lr.ph54.i, %.backedge.us.i
  %.sroa.03.052.us.i = phi i64 [ %i.bl, %.backedge.us.i ], [ 1, %.lr.ph54.i ] ; 6 uses
  %i.bl = add i64 %.sroa.03.052.us.i, 1
  switch i64 %.sroa.03.052.us.i, label %bb.l [
    i64 19, label %.backedge.us.i
    i64 9, label %.backedge.us.i
  ]

bb.l:                                             ; preds = %.lr.ph54.split.us.i
  %i.bm = tail call noundef zeroext i1 @_RNvCs41JD7yXDh97_6uu_env15signal_is_valid(i64 noundef %.sroa.03.052.us.i) #45, !noalias !1742
  br i1 %i.bm, label %bb.m, label %.backedge.us.i

bb.m:                                             ; preds = %bb.l
  %i.bn = tail call { ptr, ptr } @_RNvCs41JD7yXDh97_6uu_env12block_signal(i64 noundef %.sroa.03.052.us.i) #45, !noalias !1742 ; 2 uses
  %i.bo = extractvalue { ptr, ptr } %i.bn, 0      ; 2 uses
  %.not.i80.us.i = icmp eq ptr %i.bo, null
  br i1 %.not.i80.us.i, label %bb.n, label %.loopexit29.sink.split.i

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvMs0_Cs41JD7yXDh97_6uu_envNtB5_15SignalActionLog6record(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.03.052.us.i, i8 noundef 2, i1 noundef zeroext false) #45, !noalias !1742
  br label %.backedge.us.i

.backedge.us.i:                                   ; preds = %bb.n, %bb.l, %.lr.ph54.split.us.i, %.lr.ph54.split.us.i
  %exitcond.not.i = icmp eq i64 %.sroa.03.052.us.i, %i.bk
  br i1 %exitcond.not.i, label %_RINvMs_Cs41JD7yXDh97_6uu_envNtB5_13SignalRequest15for_each_signalNCINvB5_19apply_signal_actionNvB5_12block_signalE0ECsl8pJiQOn4hA_9coreutils.exit, label %.lr.ph54.split.us.i

.preheader.i.preheader.i:                         ; preds = %.lr.ph54.i, %.backedge.i
  %.sroa.03.052.i = phi i64 [ %i.bp, %.backedge.i ], [ 1, %.lr.ph54.i ] ; 7 uses
  %i.bp = add i64 %.sroa.03.052.i, 1
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.q, %.preheader.i.preheader.i
  %.sroa.3.0.i.i.i = phi i64 [ %i.cf, %bb.q ], [ %i.i, %.preheader.i.preheader.i ] ; 2 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.ce, %bb.q ], [ %i.g, %.preheader.i.preheader.i ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 98
  %i.bs = load i16, ptr %i.br, align 2, !noalias !1770, !noundef !12 ; 2 uses
  %i.bt = zext i16 %i.bs to i64                   ; 3 uses
  %.idx = shl nuw nsw i64 %i.bt, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx
  %i.bv = icmp eq i16 %i.bs, 0
  br i1 %i.bv, label %._crit_edge, label %.lr.ph

bb.o:                                             ; preds = %.lr.ph
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i16, i64 8 ; 2 uses
  %i.bx = add nuw nsw i64 %.sroa.8.0.i.i.i.i15, 1
  %i.by = icmp eq ptr %i.bw, %i.bu
  br i1 %i.by, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.i, %bb.o
  %.sroa.0.03.i.i.i.i16 = phi ptr [ %i.bw, %bb.o ], [ %i.bq, %.preheader.i.i ] ; 2 uses
  %.sroa.8.0.i.i.i.i15 = phi i64 [ %i.bx, %bb.o ], [ 0, %.preheader.i.i ] ; 2 uses
  %.val6.i.i.i.i = load i64, ptr %.sroa.0.03.i.i.i.i16, align 8, !noalias !1770, !noundef !12
  %i.bz = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.sroa.03.052.i, i64 %.val6.i.i.i.i)
  switch i8 %i.bz, label %bb.p [
    i8 -1, label %._crit_edge
    i8 0, label %.backedge.i
    i8 1, label %bb.o
  ]

bb.p:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.o, %.lr.ph, %.preheader.i.i
  %.sroa.4.0.i.ph.i.i.i = phi i64 [ %i.bt, %.preheader.i.i ], [ %i.bt, %bb.o ], [ %.sroa.8.0.i.i.i.i15, %.lr.ph ] ; 2 uses
  %i.ca = icmp eq i64 %.sroa.3.0.i.i.i, 0
  br i1 %i.ca, label %.loopexit.i, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 104
  %i.cc = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i, 12
  tail call void @llvm.assume(i1 %i.cc)
end_hunk_0
begin_hunk_1_@_RINvCs41JD7yXDh97_6uu_env6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBz_6cloned6ClonedINtNtNtBD_5slice4iter4IterB2a_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set8BTreeSetReEECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #45, !noalias !1790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1784
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit
  %.sroa.12.0147.i.i = phi ptr [ %i.ck, %bb.n ], [ %i.av, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit ]
  %.sroa.8.0.i.i = phi ptr [ %i.cj, %bb.n ], [ %i.at, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1791)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val2.i.i.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !1791, !noalias !1784, !nonnull !12, !noundef !12 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.val3.i.i.i.i = load i64, ptr %i.cm, align 8, !alias.scope !1791, !noalias !1784, !noundef !12 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1794)
  %i.cn = icmp eq i64 %.val3.i.i.i.i, 0
  br i1 %i.cn, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.o, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i.i = phi i64 [ %i.cp, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ], [ 0, %bb.o ] ; 2 uses
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %.val2.i.i.i.i, i64 %.sroa.0.03.i.i.i.i.i.i ; 2 uses
  %i.cp = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1797)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.co, align 8, !range !63, !alias.scope !1800, !noalias !1803, !noundef !12 ; 2 uses
  %i.cq = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.cq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.cr, align 8, !alias.scope !1804, !noalias !1803, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !1805
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i: ; preds = %bb.p, %.lr.ph.i.i.i.i.i.i
  %i.cs = icmp eq i64 %i.cp, %.val3.i.i.i.i
  br i1 %i.cs, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i, %bb.o
  %.val.i.i.i.i = load i64, ptr %i.s, align 8, !range !63, !alias.scope !1791, !noalias !1784, !noundef !12 ; 2 uses
  %i.ct = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ct, label %_RINvMs1_Cs41JD7yXDh97_6uu_envNtB6_10EnvAppData15parse_argumentsINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB14_6cloned6ClonedINtNtNtB18_5slice4iter4IterB2F_EEEECsl8pJiQOn4hA_9coreutils.exit.thread.i.i, label %bb.q

bb.q:                                             ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  %i.cu = mul nuw i64 %.val.i.i.i.i, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i, i64 noundef %i.cu, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !1803
  br label %_RINvMs1_Cs41JD7yXDh97_6uu_envNtB6_10EnvAppData15parse_argumentsINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB14_6cloned6ClonedINtNtNtB18_5slice4iter4IterB2F_EEEECsl8pJiQOn4hA_9coreutils.exit.thread.i.i

_RINvMs1_Cs41JD7yXDh97_6uu_envNtB6_10EnvAppData15parse_argumentsINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB14_6cloned6ClonedINtNtNtB18_5slice4iter4IterB2F_EEEECsl8pJiQOn4hA_9coreutils.exit.thread.i.i: ; preds = %bb.q, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1782
  br label %_RINvNvCs41JD7yXDh97_6uu_env6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBI_6cloned6ClonedINtNtNtBM_5slice4iter4IterB2j_EEEECsl8pJiQOn4hA_9coreutils.exit.thread51

_RINvMs1_Cs41JD7yXDh97_6uu_envNtB6_10EnvAppData15parse_argumentsINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB14_6cloned6ClonedINtNtNtB18_5slice4iter4IterB2F_EEEECsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.16.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 56, i1 false), !noalias !1808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1784
  %.sroa.0141.0.copyload.i.i = load i64, ptr %i.s, align 8, !noalias !1784 ; 4 uses
  %.sroa.4.0..sroa_idx142.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx142.i.i, align 8, !noalias !1784 ; 5 uses
  %.sroa.5.0..sroa_idx143.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx143.i.i, align 8, !noalias !1784 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.17.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !1808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1782
  %i.cv = icmp eq i64 %.sroa.0141.0.copyload.i.i, -1
  br i1 %i.cv, label %_RINvNvCs41JD7yXDh97_6uu_env6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBI_6cloned6ClonedINtNtNtBM_5slice4iter4IterB2j_EEEECsl8pJiQOn4hA_9coreutils.exit.thread51, label %bb.r

_RINvNvCs41JD7yXDh97_6uu_env6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBI_6cloned6ClonedINtNtNtBM_5slice4iter4IterB2j_EEEECsl8pJiQOn4hA_9coreutils.exit.thread51: ; preds = %_RINvMs1_Cs41JD7yXDh97_6uu_envNtB6_10EnvAppData15parse_argumentsINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB14_6cloned6ClonedINtNtNtB18_5slice4iter4IterB2F_EEEECsl8pJiQOn4hA_9coreutils.exit.thread.i.i, %_RINvMs1_Cs41JD7yXDh97_6uu_envNtB6_10EnvAppData15parse_argumentsINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB14_6cloned6ClonedINtNtNtB18_5slice4iter4IterB2F_EEEECsl8pJiQOn4hA_9coreutils.exit.i.i
  %.sroa.8.1153.i.i = phi ptr [ %.sroa.8.0.i.i, %_RINvMs1_Cs41JD7yXDh97_6uu_envNtB6_10EnvAppData15parse_argumentsINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB14_6cloned6ClonedINtNtNtB18_5slice4iter4IterB2F_EEEECsl8pJiQOn4hA_9coreutils.exit.thread.i.i ], [ %.sroa.4.0.copyload.i.i, %_RINvMs1_Cs41JD7yXDh97_6uu_envNtB6_10EnvAppData15parse_argumentsINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB14_6cloned6ClonedINtNtNtB18_5slice4iter4IterB2F_EEEECsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 2 uses
  %.sroa.12.1148152.i.i = phi ptr [ %.sroa.12.0147.i.i, %_RINvMs1_Cs41JD7yXDh97_6uu_envNtB6_10EnvAppData15parse_argumentsINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB14_6cloned6ClonedINtNtNtB18_5slice4iter4IterB2F_EEEECsl8pJiQOn4hA_9coreutils.exit.thread.i.i ], [ %.sroa.5.0.copyload.i.i, %_RINvMs1_Cs41JD7yXDh97_6uu_envNtB6_10EnvAppData15parse_argumentsINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB14_6cloned6ClonedINtNtNtB18_5slice4iter4IterB2F_EEEECsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.1153.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.1148152.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1776
  br label %.split

bb.r:                                             ; preds = %_RINvMs1_Cs41JD7yXDh97_6uu_envNtB6_10EnvAppData15parse_argumentsINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB14_6cloned6ClonedINtNtNtB18_5slice4iter4IterB2F_EEEECsl8pJiQOn4hA_9coreutils.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1782
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.16.i.i, i64 56, i1 false), !noalias !1782
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1782
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.17.i.i, i64 24, i1 false), !noalias !1782
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1782
  store i64 %.sroa.0141.0.copyload.i.i, ptr %i.y, align 8, !noalias !1782
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !1782
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !1782
  %i.cw = load i8, ptr %i.z, align 4, !range !80, !alias.scope !1779, !noalias !1809, !noundef !12
  %i.cx = trunc nuw i8 %i.cw to i1
  %i.cy = ptrtoint ptr %.sroa.5.0.copyload.i.i to i64 ; 2 uses
  br i1 %i.cx, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cz = call noundef i8 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches9get_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @248, i64 noundef 5) #45, !noalias !1809
  %i.da = icmp ne i8 %i.cz, 0
  %i.db = zext i1 %i.da to i8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.010.0.i.i = phi i8 [ %i.db, %bb.s ], [ 1, %bb.r ]
  store i8 %.sroa.010.0.i.i, ptr %i.z, align 4, !alias.scope !1779, !noalias !1809
  %i.dc = getelementptr inbounds nuw i8, ptr %i.z, i64 2 ; 3 uses
  %i.dd = load i8, ptr %i.dc, align 2, !range !1480, !alias.scope !1779, !noalias !1809, !noundef !12 ; 2 uses
  %i.de = call noundef i8 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches9get_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @248, i64 noundef 5) #45, !noalias !1809
  %i.df = icmp ugt i8 %i.de, 1
  %i.dg = zext i1 %i.df to i8
  %.not.i.i = icmp eq i8 %i.dd, 2
  %spec.store.select.i.i = select i1 %.not.i.i, i8 %i.dg, i8 %i.dd ; 2 uses
  store i8 %spec.store.select.i.i, ptr %i.dc, align 2, !alias.scope !1779, !noalias !1809
  %i.dh = trunc nuw i8 %spec.store.select.i.i to i1
  br i1 %i.dh, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1782
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1782
  call void @_RNvCs41JD7yXDh97_6uu_env12make_options(ptr noalias nofree noundef nonnull sret([232 x i8]) align 8 captures(none) dereferenceable(232) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w) #45, !noalias !1809
  %i.di = load i64, ptr %i.u, align 8, !range !13, !noalias !1782, !noundef !12 ; 2 uses
  %i.dj = icmp eq i64 %i.di, -1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !1782 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !1782 ; 2 uses
  br i1 %i.dj, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.t
  call void @_RNvCs41JD7yXDh97_6uu_env16debug_print_args(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.4.0.copyload.i.i, i64 noundef %i.cy) #45, !noalias !1809
  store i8 0, ptr %i.dc, align 2, !alias.scope !1779, !noalias !1809
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1782
  br label %bb.cb

bb.x:                                             ; preds = %bb.u
  %.sroa.670.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.623.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.623.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.670.0..sroa_idx.i.i, i64 208, i1 false), !noalias !1782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1782
  store i64 %i.di, ptr %i.v, align 8, !noalias !1782
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.dl, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1782
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.dn, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1782
  call void @_RNvCs41JD7yXDh97_6uu_env29apply_removal_of_all_env_vars(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.v) #45, !noalias !1809
  %i.do = call { ptr, ptr } @_RNvCs41JD7yXDh97_6uu_env16load_config_file(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.v) #45, !noalias !1809 ; 2 uses
  %i.dp = extractvalue { ptr, ptr } %i.do, 0      ; 2 uses
  %.not72.i.i = icmp eq ptr %i.dp, null
  br i1 %.not72.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dq = extractvalue { ptr, ptr } %i.do, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dq) ]
  br label %bb.ca

bb.z:                                             ; preds = %bb.x
  %i.dr = call { ptr, ptr } @_RNvCs41JD7yXDh97_6uu_env20apply_unset_env_vars(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.v) #45, !noalias !1809 ; 2 uses
  %i.ds = extractvalue { ptr, ptr } %i.dr, 0      ; 2 uses
  %.not73.i.i = icmp eq ptr %i.ds, null
  br i1 %.not73.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dt = extractvalue { ptr, ptr } %i.dr, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dt) ]
  br label %bb.ca

bb.ab:                                            ; preds = %bb.z
  call void @_RNvCs41JD7yXDh97_6uu_env24apply_specified_env_vars(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.v) #45, !noalias !1809
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1782
  store ptr null, ptr %i.t, align 8, !alias.scope !1810, !noalias !1782
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !1810, !noalias !1782
  call void @llvm.experimental.noalias.scope.decl(metadata !1813)
  call void @llvm.experimental.noalias.scope.decl(metadata !1816)
  %i.du = getelementptr inbounds nuw i8, ptr %i.v, i64 152
  %i.dv = load i8, ptr %i.du, align 8, !range !80, !alias.scope !1819, !noalias !1820, !noundef !12
  %i.dw = trunc nuw i8 %i.dv to i1                ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !1819, !noalias !1820 ; 2 uses
  %i.dz = icmp ne i64 %i.dy, 0                    ; 2 uses
  %or.cond4.not.i.i.i.i = select i1 %i.dw, i1 true, i1 %i.dz
  br i1 %or.cond4.not.i.i.i.i, label %.preheader.i.i.i.i, label %.loopexit165.i.i

.preheader.i.i.i.i:                               ; preds = %bb.ab
  %i.ea = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  %i.eb = load ptr, ptr %i.ea, align 8, !alias.scope !1819, !noalias !1820, !noundef !12 ; 3 uses
  %.not.i.i.i.i = icmp ne ptr %i.eb, null         ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !1819, !noalias !1820 ; 2 uses
  %.not60.i.i.i.i = select i1 %.not.i.i.i.i, i1 %i.dz, i1 false
  br i1 %.not60.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i
  %i.ee = ptrtoint ptr %i.eb to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.ac

bb.ac:                                            ; preds = %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12reset_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.6.049.i.i.i.i = phi ptr [ null, %.lr.ph.i.i.i.i ], [ %.sroa.07.0.i.i.i.i.i.i.i, %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12reset_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 2 uses
  %.sroa.15.048.i.i.i.i = phi i64 [ %i.ed, %.lr.ph.i.i.i.i ], [ %.sroa.78.0.i.i.i.i.i.i.i, %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12reset_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 6 uses
  %.sroa.23.047.i.i.i.i = phi i64 [ %i.dy, %.lr.ph.i.i.i.i ], [ %i.eh, %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12reset_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i ]
  %.sroa.10.046.i.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i.i.i ], [ 0, %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12reset_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 2 uses
  %i.eh = add i64 %.sroa.23.047.i.i.i.i, -1       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.6.049.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %bb.ad, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.ei = inttoptr i64 %.sroa.10.046.i.i.i.i to ptr ; 3 uses
  %i.ej = icmp eq i64 %.sroa.15.048.i.i.i.i, 0
  br i1 %i.ej, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i79.i.i.preheader

.lr.ph.i.i.i.i79.i.i.preheader:                   ; preds = %bb.ad
  %xtraiter = and i64 %.sroa.15.048.i.i.i.i, 7    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i79.i.i.prol.loopexit, label %.lr.ph.i.i.i.i79.i.i.prol

.lr.ph.i.i.i.i79.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i79.i.i.preheader, %.lr.ph.i.i.i.i79.i.i.prol
  %.sroa.013.017.i.i.i.i.i.i.prol = phi ptr [ %.sroa.013.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i79.i.i.prol ], [ %i.ei, %.lr.ph.i.i.i.i79.i.i.preheader ]
  %.sroa.011.016.i.i.i.i.i.i.prol = phi i64 [ %i.el, %.lr.ph.i.i.i.i79.i.i.prol ], [ %.sroa.15.048.i.i.i.i, %.lr.ph.i.i.i.i79.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i79.i.i.prol ], [ 0, %.lr.ph.i.i.i.i79.i.i.preheader ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.i.i.i.prol, i64 104
  %i.el = add i64 %.sroa.011.016.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.013.0.i.i.i.i.i.i.prol = load ptr, ptr %i.ek, align 8, !noalias !1822, !nonnull !12, !noundef !12 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i79.i.i.prol.loopexit, label %.lr.ph.i.i.i.i79.i.i.prol, !llvm.loop !1827

.lr.ph.i.i.i.i79.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i79.i.i.prol, %.lr.ph.i.i.i.i79.i.i.preheader
  %.sroa.013.0.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i79.i.i.preheader ], [ %.sroa.013.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i79.i.i.prol ]
  %.sroa.013.017.i.i.i.i.i.i.unr = phi ptr [ %i.ei, %.lr.ph.i.i.i.i79.i.i.preheader ], [ %.sroa.013.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i79.i.i.prol ]
  %.sroa.011.016.i.i.i.i.i.i.unr = phi i64 [ %.sroa.15.048.i.i.i.i, %.lr.ph.i.i.i.i79.i.i.preheader ], [ %i.el, %.lr.ph.i.i.i.i79.i.i.prol ]
  %i.em = icmp ult i64 %.sroa.15.048.i.i.i.i, 8
  br i1 %i.em, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i79.i.i

.lr.ph.i.i.i.i79.i.i:                             ; preds = %.lr.ph.i.i.i.i79.i.i.prol.loopexit, %.lr.ph.i.i.i.i79.i.i
  %.sroa.013.017.i.i.i.i.i.i = phi ptr [ %.sroa.013.0.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i79.i.i ], [ %.sroa.013.017.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i79.i.i.prol.loopexit ]
  %.sroa.011.016.i.i.i.i.i.i = phi i64 [ %i.ev, %.lr.ph.i.i.i.i79.i.i ], [ %.sroa.011.016.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i79.i.i.prol.loopexit ]
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.i.i.i, i64 104
  %.sroa.013.0.i.i.i.i.i.i = load ptr, ptr %i.en, align 8, !noalias !1822, !nonnull !12, !noundef !12
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i, i64 104
  %.sroa.013.0.i.i.i.i.i.i.1 = load ptr, ptr %i.eo, align 8, !noalias !1822, !nonnull !12, !noundef !12
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.1, i64 104
  %.sroa.013.0.i.i.i.i.i.i.2 = load ptr, ptr %i.ep, align 8, !noalias !1822, !nonnull !12, !noundef !12
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.2, i64 104
  %.sroa.013.0.i.i.i.i.i.i.3 = load ptr, ptr %i.eq, align 8, !noalias !1822, !nonnull !12, !noundef !12
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.3, i64 104
  %.sroa.013.0.i.i.i.i.i.i.4 = load ptr, ptr %i.er, align 8, !noalias !1822, !nonnull !12, !noundef !12
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.4, i64 104
  %.sroa.013.0.i.i.i.i.i.i.5 = load ptr, ptr %i.es, align 8, !noalias !1822, !nonnull !12, !noundef !12
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.5, i64 104
  %.sroa.013.0.i.i.i.i.i.i.6 = load ptr, ptr %i.et, align 8, !noalias !1822, !nonnull !12, !noundef !12
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.6, i64 104
  %i.ev = add i64 %.sroa.011.016.i.i.i.i.i.i, -8  ; 2 uses
  %.sroa.013.0.i.i.i.i.i.i.7 = load ptr, ptr %i.eu, align 8, !noalias !1822, !nonnull !12, !noundef !12 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i79.i.i

_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i79.i.i.prol.loopexit, %.lr.ph.i.i.i.i79.i.i, %bb.ad, %bb.ac
  %.sroa.59.0.copyload.i.i.i.i.i.i = phi i64 [ %.sroa.15.048.i.i.i.i, %bb.ac ], [ 0, %bb.ad ], [ 0, %.lr.ph.i.i.i.i79.i.i ], [ 0, %.lr.ph.i.i.i.i79.i.i.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i.i.i.i.i = phi i64 [ %.sroa.10.046.i.i.i.i, %bb.ac ], [ 0, %bb.ad ], [ 0, %.lr.ph.i.i.i.i79.i.i ], [ 0, %.lr.ph.i.i.i.i79.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i.i.i.i.i = phi ptr [ %.sroa.6.049.i.i.i.i, %bb.ac ], [ %i.ei, %bb.ad ], [ %.sroa.013.0.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i79.i.i.prol.loopexit ], [ %.sroa.013.0.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i79.i.i ] ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i.i.i.i.i, i64 98
  %i.ey = load i16, ptr %i.ex, align 2, !noalias !1828, !noundef !12
  %i.ez = zext i16 %i.ey to i64
  %i.fa = icmp ult i64 %.sroa.59.0.copyload.i.i.i.i.i.i, %i.ez
  br i1 %i.fa, label %bb.ag, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, %bb.ae
  %.sroa.0.022.i.i.i.i.i.i.i.i = phi ptr [ %i.fb, %bb.ae ], [ %.sroa.07.0.copyload.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i.i.i.i = phi i64 [ %i.fd, %bb.ae ], [ %.sroa.48.0.copyload.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ]
  %i.fb = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i.i.i, align 8, !noalias !1837, !noundef !12 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.af, label %bb.ae

._crit_edge.loopexit.i.i.i.i.i.i.i.i:             ; preds = %bb.ae
  %i.fc = zext i16 %i.ff to i64
  br label %bb.ag

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.fd = add i64 %.sroa.5.021.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i.i.i, i64 96
  %i.ff = load i16, ptr %i.fe, align 8, !noalias !1837 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 98
  %i.fh = load i16, ptr %i.fg, align 2, !noalias !1828, !noundef !12
  %i.fi = icmp ult i16 %i.ff, %i.fh
  br i1 %i.fi, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @807) #50, !noalias !1840
  unreachable

bb.ag:                                            ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i
  %.sroa.10.0.ph.i.i.i.i.i.i.i = phi i64 [ %i.fc, %._crit_edge.loopexit.i.i.i.i.i.i.i.i ], [ %.sroa.59.0.copyload.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ] ; 5 uses
  %.sroa.7.0.ph.i.i.i.i.i.i.i = phi i64 [ %i.fd, %._crit_edge.loopexit.i.i.i.i.i.i.i.i ], [ %.sroa.48.0.copyload.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ] ; 5 uses
  %.sroa.06.0.ph.i.i.i.i.i.i.i = phi ptr [ %i.fb, %._crit_edge.loopexit.i.i.i.i.i.i.i.i ], [ %.sroa.07.0.copyload.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ] ; 3 uses
  %i.fj = icmp eq i64 %.sroa.7.0.ph.i.i.i.i.i.i.i, 0
  br i1 %i.fj, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fk = add nuw nsw i64 %.sroa.10.0.ph.i.i.i.i.i.i.i, 1
  br label %.loopexit30.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.fl = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.fl)
  %i.fm = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i, i64 112
  %i.fn = getelementptr [8 x i8], ptr %i.fm, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i ; 2 uses
  %xtraiter307 = and i64 %.sroa.7.0.ph.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod308.not = icmp eq i64 %xtraiter307, 0
  br i1 %lcmp.mod308.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.ai, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.fo, %.prol.preheader ], [ %i.fn, %bb.ai ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.7.0.ph.i.i.i.i.i.i.i, %bb.ai ]
  %prol.iter309 = phi i64 [ %prol.iter309.next, %.prol.preheader ], [ 0, %bb.ai ]
  %.sroa.019.0.i.i.i.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.prol, align 8, !noalias !1841, !nonnull !12, !noundef !12 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.prol, i64 104 ; 2 uses
  %prol.iter309.next = add i64 %prol.iter309, 1   ; 2 uses
  %prol.iter309.cmp.not = icmp eq i64 %prol.iter309.next, %xtraiter307
  br i1 %prol.iter309.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1845

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.ai
  %.sroa.017.0.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.ai ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.fn, %bb.ai ], [ %i.fo, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i.i.i.i.i, %bb.ai ], [ %.sroa.019.0.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.fp = icmp ult i64 %.sroa.7.0.ph.i.i.i.i.i.i.i, 8
  br i1 %i.fp, label %.loopexit30.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i.i.i.i = phi ptr [ %i.fy, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i, align 8, !noalias !1841, !nonnull !12, !noundef !12
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i, i64 104
  %.sroa.017.0.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.fq, align 8, !noalias !1841, !nonnull !12, !noundef !12
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.1, i64 104
  %.sroa.017.0.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.fr, align 8, !noalias !1841, !nonnull !12, !noundef !12
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.2, i64 104
  %.sroa.017.0.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.fs, align 8, !noalias !1841, !nonnull !12, !noundef !12
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.3, i64 104
  %.sroa.017.0.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.ft, align 8, !noalias !1841, !nonnull !12, !noundef !12
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.4, i64 104
  %.sroa.017.0.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.fu, align 8, !noalias !1841, !nonnull !12, !noundef !12
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.5, i64 104
  %.sroa.017.0.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.fv, align 8, !noalias !1841, !nonnull !12, !noundef !12
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.6, i64 104
  %.sroa.019.0.i.i.i.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.fw, align 8, !noalias !1841, !nonnull !12, !noundef !12 ; 2 uses
  %i.fx = icmp eq i64 %.sroa.019.0.i.i.i.i.i.i.i.i.7, 0
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.7, i64 104
  br i1 %i.fx, label %.loopexit30.i.i.i.i, label %.new

.loopexit30.i.i.i.i:                              ; preds = %.prol.loopexit, %.new, %bb.ah
  %.sroa.78.0.i.i.i.i.i.i.i = phi i64 [ %i.fk, %bb.ah ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i.i.i.i.i, %bb.ah ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.7, %.new ]
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i, i64 8
  %i.ga = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.ga)
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i
  %i.gc = load i64, ptr %i.gb, align 8, !noalias !1846, !noundef !12 ; 4 uses
  %i.gd = call noundef zeroext i1 @_RNvCs41JD7yXDh97_6uu_env15signal_is_valid(i64 noundef %i.gc) #45, !noalias !1846
  br i1 %i.gd, label %bb.aj, label %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12reset_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.aj:                                            ; preds = %.loopexit30.i.i.i.i
  %i.ge = call { ptr, ptr } @_RNvCs41JD7yXDh97_6uu_env12reset_signal(i64 noundef %i.gc) #45, !noalias !1846 ; 2 uses
  %i.gf = extractvalue { ptr, ptr } %i.ge, 0      ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i.i.i, label %bb.ak, label %.loopexit164.i.i

bb.ak:                                            ; preds = %bb.aj
  call void @_RNvMs0_Cs41JD7yXDh97_6uu_envNtB5_15SignalActionLog6record(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef %i.gc, i8 noundef 0, i1 noundef zeroext true) #45, !noalias !1846
  %i.gg = icmp eq i64 %i.gc, 13
  br i1 %i.gg, label %bb.al, label %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12reset_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1847
  store ptr @717, ptr %i.k, align 8, !noalias !1847, !captures !1848
  store i64 12, ptr %i.ef, align 8, !noalias !1847
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1847
  store ptr @718, ptr %i.j, align 8, !noalias !1847, !captures !1848
  store i64 7, ptr %i.eg, align 8, !noalias !1847
  %i.gh = call noundef ptr @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys3env4unix6setenv(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @717, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @718, i64 noundef 7) #45, !noalias !1846 ; 2 uses
  %.not.i.i72.i.i.i.i = icmp eq ptr %i.gh, null
  br i1 %.not.i.i72.i.i.i.i, label %_RINvNtCs2vKOLqTMYjT_3std3env7set_varReBy_ECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  call fastcc void @_RNCINvNtCs2vKOLqTMYjT_3std3env7set_varReBA_E0Csl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j, ptr noundef nonnull %i.gh) #51, !noalias !1846
  unreachable

_RINvNtCs2vKOLqTMYjT_3std3env7set_varReBy_ECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i: ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1847
  br label %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12reset_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12reset_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %_RINvNtCs2vKOLqTMYjT_3std3env7set_varReBy_ECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, %bb.ak, %.loopexit30.i.i.i.i
  %i.gi = icmp eq i64 %i.eh, 0
  br i1 %i.gi, label %._crit_edge.i.i.i.i, label %bb.ac

._crit_edge.i.i.i.i:                              ; preds = %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12reset_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %.preheader.i.i.i.i
  br i1 %i.dw, label %bb.an, label %.loopexit165.i.i

bb.an:                                            ; preds = %._crit_edge.i.i.i.i
  %i.gj = call noundef i64 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals25signal_number_upper_bound() #45, !noalias !1846 ; 3 uses
  %.not.i7351.i.i.i.i = icmp eq i64 %i.gj, 0
  br i1 %.not.i7351.i.i.i.i, label %.loopexit165.i.i, label %.lr.ph54.i.i.i.i

.lr.ph54.i.i.i.i:                                 ; preds = %bb.an
  %i.gk = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br i1 %.not.i.i.i.i, label %.preheader.i.preheader.i.i.i.i, label %.lr.ph54.split.us.i.i.i.i

.lr.ph54.split.us.i.i.i.i:                        ; preds = %.lr.ph54.i.i.i.i, %.backedge.us.i.i.i.i
  %.sroa.03.052.us.i.i.i.i = phi i64 [ %i.gm, %.backedge.us.i.i.i.i ], [ 1, %.lr.ph54.i.i.i.i ] ; 7 uses
  %i.gm = add i64 %.sroa.03.052.us.i.i.i.i, 1
  switch i64 %.sroa.03.052.us.i.i.i.i, label %bb.ao [
    i64 19, label %.backedge.us.i.i.i.i
    i64 9, label %.backedge.us.i.i.i.i
  ]

bb.ao:                                            ; preds = %.lr.ph54.split.us.i.i.i.i
  %i.gn = call noundef zeroext i1 @_RNvCs41JD7yXDh97_6uu_env15signal_is_valid(i64 noundef %.sroa.03.052.us.i.i.i.i) #45, !noalias !1846
  br i1 %i.gn, label %bb.ap, label %.backedge.us.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.go = call { ptr, ptr } @_RNvCs41JD7yXDh97_6uu_env12reset_signal(i64 noundef %.sroa.03.052.us.i.i.i.i) #45, !noalias !1846 ; 2 uses
  %i.gp = extractvalue { ptr, ptr } %i.go, 0      ; 2 uses
  %.not.i80.us.i.i.i.i = icmp eq ptr %i.gp, null
  br i1 %.not.i80.us.i.i.i.i, label %bb.aq, label %.loopexit164.i.i

bb.aq:                                            ; preds = %bb.ap
  call void @_RNvMs0_Cs41JD7yXDh97_6uu_envNtB5_15SignalActionLog6record(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef %.sroa.03.052.us.i.i.i.i, i8 noundef 0, i1 noundef zeroext false) #45, !noalias !1846
  %i.gq = icmp eq i64 %.sroa.03.052.us.i.i.i.i, 13
  br i1 %i.gq, label %bb.ar, label %.backedge.us.i.i.i.i

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1847
  store ptr @717, ptr %i.i, align 8, !noalias !1847, !captures !1848
  store i64 12, ptr %i.gk, align 8, !noalias !1847
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1847
  store ptr @718, ptr %i.h, align 8, !noalias !1847, !captures !1848
  store i64 7, ptr %i.gl, align 8, !noalias !1847
  %i.gr = call noundef ptr @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys3env4unix6setenv(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @717, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @718, i64 noundef 7) #45, !noalias !1846 ; 2 uses
  %.not.i.i82.us.i.i.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i82.us.i.i.i.i, label %_RINvNtCs2vKOLqTMYjT_3std3env7set_varReBy_ECsl8pJiQOn4hA_9coreutils.exit.i83.us.i.i.i.i, label %.split57.us.i.i.i.i

_RINvNtCs2vKOLqTMYjT_3std3env7set_varReBy_ECsl8pJiQOn4hA_9coreutils.exit.i83.us.i.i.i.i: ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1847
  br label %.backedge.us.i.i.i.i

.backedge.us.i.i.i.i:                             ; preds = %_RINvNtCs2vKOLqTMYjT_3std3env7set_varReBy_ECsl8pJiQOn4hA_9coreutils.exit.i83.us.i.i.i.i, %bb.aq, %bb.ao, %.lr.ph54.split.us.i.i.i.i, %.lr.ph54.split.us.i.i.i.i
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.03.052.us.i.i.i.i, %i.gj
  br i1 %exitcond.not.i.i.i.i, label %.loopexit165.i.i, label %.lr.ph54.split.us.i.i.i.i

.preheader.i.preheader.i.i.i.i:                   ; preds = %.lr.ph54.i.i.i.i, %.backedge.i.i.i.i
  %.sroa.03.052.i.i.i.i = phi i64 [ %i.gs, %.backedge.i.i.i.i ], [ 1, %.lr.ph54.i.i.i.i ] ; 8 uses
  %i.gs = add i64 %.sroa.03.052.i.i.i.i, 1
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.au, %.preheader.i.preheader.i.i.i.i
  %.sroa.3.0.i.i.i.i.i.i = phi i64 [ %i.hi, %bb.au ], [ %i.ed, %.preheader.i.preheader.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.hh, %bb.au ], [ %i.eb, %.preheader.i.preheader.i.i.i.i ] ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 98
  %i.gv = load i16, ptr %i.gu, align 2, !noalias !1849, !noundef !12 ; 2 uses
  %i.gw = zext i16 %i.gv to i64                   ; 3 uses
  %.idx = shl nuw nsw i64 %i.gw, 3
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.idx
  %i.gy = icmp eq i16 %i.gv, 0
  br i1 %i.gy, label %._crit_edge, label %.lr.ph

bb.as:                                            ; preds = %.lr.ph
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i.i.i.i259, i64 8 ; 2 uses
  %i.ha = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i.i258, 1
  %i.hb = icmp eq ptr %i.gz, %i.gx
  br i1 %i.hb, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.i.i.i.i, %bb.as
  %.sroa.0.03.i.i.i.i.i.i.i259 = phi ptr [ %i.gz, %bb.as ], [ %i.gt, %.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.8.0.i.i.i.i.i.i.i258 = phi i64 [ %i.ha, %bb.as ], [ 0, %.preheader.i.i.i.i.i ] ; 2 uses
  %.val6.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.03.i.i.i.i.i.i.i259, align 8, !noalias !1849, !noundef !12
  %i.hc = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.sroa.03.052.i.i.i.i, i64 %.val6.i.i.i.i.i.i.i)
  switch i8 %i.hc, label %bb.at [
    i8 -1, label %._crit_edge
    i8 0, label %.backedge.i.i.i.i
    i8 1, label %bb.as
  ]

bb.at:                                            ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.as, %.lr.ph, %.preheader.i.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i.i.i.i = phi i64 [ %i.gw, %.preheader.i.i.i.i.i ], [ %i.gw, %bb.as ], [ %.sroa.8.0.i.i.i.i.i.i.i258, %.lr.ph ] ; 2 uses
  %i.hd = icmp eq i64 %.sroa.3.0.i.i.i.i.i.i, 0
  br i1 %i.hd, label %.loopexit.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %._crit_edge
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 104
  %i.hf = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 12
  call void @llvm.assume(i1 %i.hf)
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  %i.hh = load ptr, ptr %i.hg, align 8, !noalias !1849, !nonnull !12, !noundef !12
  %i.hi = add i64 %.sroa.3.0.i.i.i.i.i.i, -1
  br label %.preheader.i.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %._crit_edge
  switch i64 %.sroa.03.052.i.i.i.i, label %bb.av [
    i64 19, label %.backedge.i.i.i.i
    i64 9, label %.backedge.i.i.i.i
  ]

bb.av:                                            ; preds = %.loopexit.i.i.i.i
  %i.hj = call noundef zeroext i1 @_RNvCs41JD7yXDh97_6uu_env15signal_is_valid(i64 noundef %.sroa.03.052.i.i.i.i) #45, !noalias !1846
  br i1 %i.hj, label %bb.aw, label %.backedge.i.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.hk = call { ptr, ptr } @_RNvCs41JD7yXDh97_6uu_env12reset_signal(i64 noundef %.sroa.03.052.i.i.i.i) #45, !noalias !1846 ; 2 uses
  %i.hl = extractvalue { ptr, ptr } %i.hk, 0      ; 2 uses
  %.not.i80.i.i.i.i = icmp eq ptr %i.hl, null
  br i1 %.not.i80.i.i.i.i, label %bb.ax, label %.loopexit164.i.i

bb.ax:                                            ; preds = %bb.aw
  call void @_RNvMs0_Cs41JD7yXDh97_6uu_envNtB5_15SignalActionLog6record(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef %.sroa.03.052.i.i.i.i, i8 noundef 0, i1 noundef zeroext false) #45, !noalias !1846
  %i.hm = icmp eq i64 %.sroa.03.052.i.i.i.i, 13
  br i1 %i.hm, label %bb.ay, label %.backedge.i.i.i.i

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1847
  store ptr @717, ptr %i.i, align 8, !noalias !1847, !captures !1848
  store i64 12, ptr %i.gk, align 8, !noalias !1847
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1847
  store ptr @718, ptr %i.h, align 8, !noalias !1847, !captures !1848
  store i64 7, ptr %i.gl, align 8, !noalias !1847
  %i.hn = call noundef ptr @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys3env4unix6setenv(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @717, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @718, i64 noundef 7) #45, !noalias !1846 ; 2 uses
  %.not.i.i82.i.i.i.i = icmp eq ptr %i.hn, null
  br i1 %.not.i.i82.i.i.i.i, label %_RINvNtCs2vKOLqTMYjT_3std3env7set_varReBy_ECsl8pJiQOn4hA_9coreutils.exit.i83.i.i.i.i, label %.split57.us.i.i.i.i

.split57.us.i.i.i.i:                              ; preds = %bb.ar, %bb.ay
  %.us-phi58.i.i.i.i = phi ptr [ %i.hn, %bb.ay ], [ %i.gr, %bb.ar ]
  call fastcc void @_RNCINvNtCs2vKOLqTMYjT_3std3env7set_varReBA_E0Csl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noundef nonnull %.us-phi58.i.i.i.i) #51, !noalias !1846
  unreachable

_RINvNtCs2vKOLqTMYjT_3std3env7set_varReBy_ECsl8pJiQOn4hA_9coreutils.exit.i83.i.i.i.i: ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1847
  br label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %.lr.ph, %_RINvNtCs2vKOLqTMYjT_3std3env7set_varReBy_ECsl8pJiQOn4hA_9coreutils.exit.i83.i.i.i.i, %bb.ax, %bb.av, %.loopexit.i.i.i.i, %.loopexit.i.i.i.i
  %exitcond84.not.i.i.i.i = icmp eq i64 %.sroa.03.052.i.i.i.i, %i.gj
  br i1 %exitcond84.not.i.i.i.i, label %.loopexit165.i.i, label %.preheader.i.preheader.i.i.i.i

.loopexit165.i.i:                                 ; preds = %.backedge.us.i.i.i.i, %.backedge.i.i.i.i, %bb.an, %._crit_edge.i.i.i.i, %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !1852)
  call void @llvm.experimental.noalias.scope.decl(metadata !1855)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.hp = load i8, ptr %i.ho, align 8, !range !80, !alias.scope !1858, !noalias !1859, !noundef !12
  %i.hq = trunc nuw i8 %i.hp to i1                ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  %i.hs = load i64, ptr %i.hr, align 8, !alias.scope !1858, !noalias !1859 ; 2 uses
  %i.ht = icmp ne i64 %i.hs, 0                    ; 2 uses
  %or.cond4.not.i.i80.i.i = select i1 %i.hq, i1 true, i1 %i.ht
  br i1 %or.cond4.not.i.i80.i.i, label %.preheader.i.i83.i.i, label %.loopexit160.i.i

.preheader.i.i83.i.i:                             ; preds = %.loopexit165.i.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.hv = load ptr, ptr %i.hu, align 8, !alias.scope !1858, !noalias !1859, !noundef !12 ; 3 uses
  %.not.i.i84.i.i = icmp ne ptr %i.hv, null       ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.hx = load i64, ptr %i.hw, align 8, !alias.scope !1858, !noalias !1859 ; 2 uses
  %.not60.i.i85.i.i = select i1 %.not.i.i84.i.i, i1 %i.ht, i1 false
  br i1 %.not60.i.i85.i.i, label %.lr.ph.i.i111.i.i, label %._crit_edge.i.i86.i.i

.lr.ph.i.i111.i.i:                                ; preds = %.preheader.i.i83.i.i
  %i.hy = ptrtoint ptr %i.hv to i64
  br label %bb.az

bb.az:                                            ; preds = %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_13ignore_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %.lr.ph.i.i111.i.i
  %.sroa.6.049.i.i112.i.i = phi ptr [ null, %.lr.ph.i.i111.i.i ], [ %.sroa.07.0.i.i.i.i.i135.i.i, %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_13ignore_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 2 uses
  %.sroa.15.048.i.i113.i.i = phi i64 [ %i.hx, %.lr.ph.i.i111.i.i ], [ %.sroa.78.0.i.i.i.i.i134.i.i, %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_13ignore_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 6 uses
  %.sroa.23.047.i.i114.i.i = phi i64 [ %i.hs, %.lr.ph.i.i111.i.i ], [ %i.hz, %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_13ignore_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i ]
  %.sroa.10.046.i.i115.i.i = phi i64 [ %i.hy, %.lr.ph.i.i111.i.i ], [ 0, %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_13ignore_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 2 uses
  %i.hz = add i64 %.sroa.23.047.i.i114.i.i, -1    ; 2 uses
  %.not.i.i.i.i116.i.i = icmp eq ptr %.sroa.6.049.i.i112.i.i, null
  br i1 %.not.i.i.i.i116.i.i, label %bb.ba, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i117.i.i

bb.ba:                                            ; preds = %bb.az
  %i.ia = inttoptr i64 %.sroa.10.046.i.i115.i.i to ptr ; 3 uses
  %i.ib = icmp eq i64 %.sroa.15.048.i.i113.i.i, 0
  br i1 %i.ib, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i117.i.i, label %.lr.ph.i.i.i.i137.i.i.preheader

.lr.ph.i.i.i.i137.i.i.preheader:                  ; preds = %bb.ba
  %xtraiter310 = and i64 %.sroa.15.048.i.i113.i.i, 7 ; 2 uses
  %lcmp.mod311.not = icmp eq i64 %xtraiter310, 0
  br i1 %lcmp.mod311.not, label %.lr.ph.i.i.i.i137.i.i.prol.loopexit, label %.lr.ph.i.i.i.i137.i.i.prol

.lr.ph.i.i.i.i137.i.i.prol:                       ; preds = %.lr.ph.i.i.i.i137.i.i.preheader, %.lr.ph.i.i.i.i137.i.i.prol
  %.sroa.013.017.i.i.i.i138.i.i.prol = phi ptr [ %.sroa.013.0.i.i.i.i140.i.i.prol, %.lr.ph.i.i.i.i137.i.i.prol ], [ %i.ia, %.lr.ph.i.i.i.i137.i.i.preheader ]
  %.sroa.011.016.i.i.i.i139.i.i.prol = phi i64 [ %i.id, %.lr.ph.i.i.i.i137.i.i.prol ], [ %.sroa.15.048.i.i113.i.i, %.lr.ph.i.i.i.i137.i.i.preheader ]
  %prol.iter312 = phi i64 [ %prol.iter312.next, %.lr.ph.i.i.i.i137.i.i.prol ], [ 0, %.lr.ph.i.i.i.i137.i.i.preheader ]
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.i138.i.i.prol, i64 104
  %i.id = add i64 %.sroa.011.016.i.i.i.i139.i.i.prol, -1 ; 2 uses
  %.sroa.013.0.i.i.i.i140.i.i.prol = load ptr, ptr %i.ic, align 8, !noalias !1861, !nonnull !12, !noundef !12 ; 3 uses
  %prol.iter312.next = add i64 %prol.iter312, 1   ; 2 uses
  %prol.iter312.cmp.not = icmp eq i64 %prol.iter312.next, %xtraiter310
  br i1 %prol.iter312.cmp.not, label %.lr.ph.i.i.i.i137.i.i.prol.loopexit, label %.lr.ph.i.i.i.i137.i.i.prol, !llvm.loop !1866

.lr.ph.i.i.i.i137.i.i.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i137.i.i.prol, %.lr.ph.i.i.i.i137.i.i.preheader
  %.sroa.013.0.i.i.i.i140.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i137.i.i.preheader ], [ %.sroa.013.0.i.i.i.i140.i.i.prol, %.lr.ph.i.i.i.i137.i.i.prol ]
  %.sroa.013.017.i.i.i.i138.i.i.unr = phi ptr [ %i.ia, %.lr.ph.i.i.i.i137.i.i.preheader ], [ %.sroa.013.0.i.i.i.i140.i.i.prol, %.lr.ph.i.i.i.i137.i.i.prol ]
  %.sroa.011.016.i.i.i.i139.i.i.unr = phi i64 [ %.sroa.15.048.i.i113.i.i, %.lr.ph.i.i.i.i137.i.i.preheader ], [ %i.id, %.lr.ph.i.i.i.i137.i.i.prol ]
  %i.ie = icmp ult i64 %.sroa.15.048.i.i113.i.i, 8
  br i1 %i.ie, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i117.i.i, label %.lr.ph.i.i.i.i137.i.i

.lr.ph.i.i.i.i137.i.i:                            ; preds = %.lr.ph.i.i.i.i137.i.i.prol.loopexit, %.lr.ph.i.i.i.i137.i.i
  %.sroa.013.017.i.i.i.i138.i.i = phi ptr [ %.sroa.013.0.i.i.i.i140.i.i.7, %.lr.ph.i.i.i.i137.i.i ], [ %.sroa.013.017.i.i.i.i138.i.i.unr, %.lr.ph.i.i.i.i137.i.i.prol.loopexit ]
  %.sroa.011.016.i.i.i.i139.i.i = phi i64 [ %i.in, %.lr.ph.i.i.i.i137.i.i ], [ %.sroa.011.016.i.i.i.i139.i.i.unr, %.lr.ph.i.i.i.i137.i.i.prol.loopexit ]
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.i138.i.i, i64 104
  %.sroa.013.0.i.i.i.i140.i.i = load ptr, ptr %i.if, align 8, !noalias !1861, !nonnull !12, !noundef !12
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i140.i.i, i64 104
  %.sroa.013.0.i.i.i.i140.i.i.1 = load ptr, ptr %i.ig, align 8, !noalias !1861, !nonnull !12, !noundef !12
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i140.i.i.1, i64 104
  %.sroa.013.0.i.i.i.i140.i.i.2 = load ptr, ptr %i.ih, align 8, !noalias !1861, !nonnull !12, !noundef !12
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i140.i.i.2, i64 104
  %.sroa.013.0.i.i.i.i140.i.i.3 = load ptr, ptr %i.ii, align 8, !noalias !1861, !nonnull !12, !noundef !12
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i140.i.i.3, i64 104
  %.sroa.013.0.i.i.i.i140.i.i.4 = load ptr, ptr %i.ij, align 8, !noalias !1861, !nonnull !12, !noundef !12
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i140.i.i.4, i64 104
  %.sroa.013.0.i.i.i.i140.i.i.5 = load ptr, ptr %i.ik, align 8, !noalias !1861, !nonnull !12, !noundef !12
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i140.i.i.5, i64 104
  %.sroa.013.0.i.i.i.i140.i.i.6 = load ptr, ptr %i.il, align 8, !noalias !1861, !nonnull !12, !noundef !12
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i140.i.i.6, i64 104
  %i.in = add i64 %.sroa.011.016.i.i.i.i139.i.i, -8 ; 2 uses
  %.sroa.013.0.i.i.i.i140.i.i.7 = load ptr, ptr %i.im, align 8, !noalias !1861, !nonnull !12, !noundef !12 ; 2 uses
  %i.io = icmp eq i64 %i.in, 0
  br i1 %i.io, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i117.i.i, label %.lr.ph.i.i.i.i137.i.i

_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i117.i.i: ; preds = %.lr.ph.i.i.i.i137.i.i.prol.loopexit, %.lr.ph.i.i.i.i137.i.i, %bb.ba, %bb.az
  %.sroa.59.0.copyload.i.i.i.i118.i.i = phi i64 [ %.sroa.15.048.i.i113.i.i, %bb.az ], [ 0, %bb.ba ], [ 0, %.lr.ph.i.i.i.i137.i.i ], [ 0, %.lr.ph.i.i.i.i137.i.i.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i.i.i119.i.i = phi i64 [ %.sroa.10.046.i.i115.i.i, %bb.az ], [ 0, %bb.ba ], [ 0, %.lr.ph.i.i.i.i137.i.i ], [ 0, %.lr.ph.i.i.i.i137.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i.i.i120.i.i = phi ptr [ %.sroa.6.049.i.i112.i.i, %bb.az ], [ %i.ia, %bb.ba ], [ %.sroa.013.0.i.i.i.i140.i.i.lcssa.unr, %.lr.ph.i.i.i.i137.i.i.prol.loopexit ], [ %.sroa.013.0.i.i.i.i140.i.i.7, %.lr.ph.i.i.i.i137.i.i ] ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i.i.i120.i.i, i64 98
  %i.iq = load i16, ptr %i.ip, align 2, !noalias !1867, !noundef !12
  %i.ir = zext i16 %i.iq to i64
  %i.is = icmp ult i64 %.sroa.59.0.copyload.i.i.i.i118.i.i, %i.ir
  br i1 %i.is, label %bb.bd, label %.lr.ph.i.i.i.i.i.i121.i.i

.lr.ph.i.i.i.i.i.i121.i.i:                        ; preds = %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i117.i.i, %bb.bb
  %.sroa.0.022.i.i.i.i.i.i122.i.i = phi ptr [ %i.it, %bb.bb ], [ %.sroa.07.0.copyload.i.i.i.i120.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i117.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i.i123.i.i = phi i64 [ %i.iv, %bb.bb ], [ %.sroa.48.0.copyload.i.i.i.i119.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i117.i.i ]
  %i.it = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i122.i.i, align 8, !noalias !1876, !noundef !12 ; 4 uses
  %.not.i.i.i.i.i.i.i124.i.i = icmp eq ptr %i.it, null
  br i1 %.not.i.i.i.i.i.i.i124.i.i, label %bb.bc, label %bb.bb

._crit_edge.loopexit.i.i.i.i.i.i125.i.i:          ; preds = %bb.bb
  %i.iu = zext i16 %i.ix to i64
  br label %bb.bd

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i.i.i121.i.i
  %i.iv = add i64 %.sroa.5.021.i.i.i.i.i.i123.i.i, 1 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i122.i.i, i64 96
  %i.ix = load i16, ptr %i.iw, align 8, !noalias !1876 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.it, i64 98
  %i.iz = load i16, ptr %i.iy, align 2, !noalias !1867, !noundef !12
  %i.ja = icmp ult i16 %i.ix, %i.iz
  br i1 %i.ja, label %._crit_edge.loopexit.i.i.i.i.i.i125.i.i, label %.lr.ph.i.i.i.i.i.i121.i.i

bb.bc:                                            ; preds = %.lr.ph.i.i.i.i.i.i121.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @807) #50, !noalias !1879
  unreachable

bb.bd:                                            ; preds = %._crit_edge.loopexit.i.i.i.i.i.i125.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i117.i.i
  %.sroa.10.0.ph.i.i.i.i.i126.i.i = phi i64 [ %i.iu, %._crit_edge.loopexit.i.i.i.i.i.i125.i.i ], [ %.sroa.59.0.copyload.i.i.i.i118.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i117.i.i ] ; 5 uses
  %.sroa.7.0.ph.i.i.i.i.i127.i.i = phi i64 [ %i.iv, %._crit_edge.loopexit.i.i.i.i.i.i125.i.i ], [ %.sroa.48.0.copyload.i.i.i.i119.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i117.i.i ] ; 5 uses
  %.sroa.06.0.ph.i.i.i.i.i128.i.i = phi ptr [ %i.it, %._crit_edge.loopexit.i.i.i.i.i.i125.i.i ], [ %.sroa.07.0.copyload.i.i.i.i120.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i117.i.i ] ; 3 uses
  %i.jb = icmp eq i64 %.sroa.7.0.ph.i.i.i.i.i127.i.i, 0
  br i1 %i.jb, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.jc = add nuw nsw i64 %.sroa.10.0.ph.i.i.i.i.i126.i.i, 1
  br label %.loopexit30.i.i133.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.jd = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i.i126.i.i, 11
  call void @llvm.assume(i1 %i.jd)
  %i.je = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i.i.i128.i.i, i64 112
  %i.jf = getelementptr [8 x i8], ptr %i.je, i64 %.sroa.10.0.ph.i.i.i.i.i126.i.i ; 2 uses
  %xtraiter317 = and i64 %.sroa.7.0.ph.i.i.i.i.i127.i.i, 7 ; 2 uses
  %lcmp.mod318.not = icmp eq i64 %xtraiter317, 0
  br i1 %lcmp.mod318.not, label %.prol.loopexit315, label %.prol.preheader314

.prol.preheader314:                               ; preds = %bb.bf, %.prol.preheader314
  %.sroa.017.0.in.i.i.i.i.i.i129.i.i.prol = phi ptr [ %i.jg, %.prol.preheader314 ], [ %i.jf, %bb.bf ]
  %.sroa.019.0.in.i.i.i.i.i.i130.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.i131.i.i.prol, %.prol.preheader314 ], [ %.sroa.7.0.ph.i.i.i.i.i127.i.i, %bb.bf ]
  %prol.iter319 = phi i64 [ %prol.iter319.next, %.prol.preheader314 ], [ 0, %bb.bf ]
  %.sroa.019.0.i.i.i.i.i.i131.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.i130.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i132.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i129.i.i.prol, align 8, !noalias !1880, !nonnull !12, !noundef !12 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i132.i.i.prol, i64 104 ; 2 uses
  %prol.iter319.next = add i64 %prol.iter319, 1   ; 2 uses
  %prol.iter319.cmp.not = icmp eq i64 %prol.iter319.next, %xtraiter317
  br i1 %prol.iter319.cmp.not, label %.prol.loopexit315, label %.prol.preheader314, !llvm.loop !1884

.prol.loopexit315:                                ; preds = %.prol.preheader314, %bb.bf
  %.sroa.017.0.i.i.i.i.i.i132.i.i.lcssa.unr = phi ptr [ poison, %bb.bf ], [ %.sroa.017.0.i.i.i.i.i.i132.i.i.prol, %.prol.preheader314 ]
  %.sroa.017.0.in.i.i.i.i.i.i129.i.i.unr = phi ptr [ %i.jf, %bb.bf ], [ %i.jg, %.prol.preheader314 ]
  %.sroa.019.0.in.i.i.i.i.i.i130.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i.i.i127.i.i, %bb.bf ], [ %.sroa.019.0.i.i.i.i.i.i131.i.i.prol, %.prol.preheader314 ]
  %i.jh = icmp ult i64 %.sroa.7.0.ph.i.i.i.i.i127.i.i, 8
  br i1 %i.jh, label %.loopexit30.i.i133.i.i, label %.new316

.new316:                                          ; preds = %.prol.loopexit315, %.new316
  %.sroa.017.0.in.i.i.i.i.i.i129.i.i = phi ptr [ %i.jq, %.new316 ], [ %.sroa.017.0.in.i.i.i.i.i.i129.i.i.unr, %.prol.loopexit315 ]
  %.sroa.019.0.in.i.i.i.i.i.i130.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.i131.i.i.7, %.new316 ], [ %.sroa.019.0.in.i.i.i.i.i.i130.i.i.unr, %.prol.loopexit315 ]
  %.sroa.017.0.i.i.i.i.i.i132.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i129.i.i, align 8, !noalias !1880, !nonnull !12, !noundef !12
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i132.i.i, i64 104
  %.sroa.017.0.i.i.i.i.i.i132.i.i.1 = load ptr, ptr %i.ji, align 8, !noalias !1880, !nonnull !12, !noundef !12
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i132.i.i.1, i64 104
  %.sroa.017.0.i.i.i.i.i.i132.i.i.2 = load ptr, ptr %i.jj, align 8, !noalias !1880, !nonnull !12, !noundef !12
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i132.i.i.2, i64 104
  %.sroa.017.0.i.i.i.i.i.i132.i.i.3 = load ptr, ptr %i.jk, align 8, !noalias !1880, !nonnull !12, !noundef !12
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i132.i.i.3, i64 104
  %.sroa.017.0.i.i.i.i.i.i132.i.i.4 = load ptr, ptr %i.jl, align 8, !noalias !1880, !nonnull !12, !noundef !12
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i132.i.i.4, i64 104
  %.sroa.017.0.i.i.i.i.i.i132.i.i.5 = load ptr, ptr %i.jm, align 8, !noalias !1880, !nonnull !12, !noundef !12
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i132.i.i.5, i64 104
  %.sroa.017.0.i.i.i.i.i.i132.i.i.6 = load ptr, ptr %i.jn, align 8, !noalias !1880, !nonnull !12, !noundef !12
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i132.i.i.6, i64 104
  %.sroa.019.0.i.i.i.i.i.i131.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i.i130.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i132.i.i.7 = load ptr, ptr %i.jo, align 8, !noalias !1880, !nonnull !12, !noundef !12 ; 2 uses
  %i.jp = icmp eq i64 %.sroa.019.0.i.i.i.i.i.i131.i.i.7, 0
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i132.i.i.7, i64 104
  br i1 %i.jp, label %.loopexit30.i.i133.i.i, label %.new316

.loopexit30.i.i133.i.i:                           ; preds = %.prol.loopexit315, %.new316, %bb.be
  %.sroa.78.0.i.i.i.i.i134.i.i = phi i64 [ %i.jc, %bb.be ], [ 0, %.new316 ], [ 0, %.prol.loopexit315 ]
  %.sroa.07.0.i.i.i.i.i135.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i.i.i128.i.i, %bb.be ], [ %.sroa.017.0.i.i.i.i.i.i132.i.i.lcssa.unr, %.prol.loopexit315 ], [ %.sroa.017.0.i.i.i.i.i.i132.i.i.7, %.new316 ]
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i.i.i128.i.i, i64 8
  %i.js = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i.i126.i.i, 11
  call void @llvm.assume(i1 %i.js)
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %.sroa.10.0.ph.i.i.i.i.i126.i.i
  %i.ju = load i64, ptr %i.jt, align 8, !noalias !1885, !noundef !12 ; 3 uses
  %i.jv = call noundef zeroext i1 @_RNvCs41JD7yXDh97_6uu_env15signal_is_valid(i64 noundef %i.ju) #45, !noalias !1885
  br i1 %i.jv, label %bb.bg, label %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_13ignore_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.bg:                                            ; preds = %.loopexit30.i.i133.i.i
  %i.jw = call { ptr, ptr } @_RNvCs41JD7yXDh97_6uu_env13ignore_signal(i64 noundef %i.ju) #45, !noalias !1885 ; 2 uses
  %i.jx = extractvalue { ptr, ptr } %i.jw, 0      ; 2 uses
  %.not.i.i.i136.i.i = icmp eq ptr %i.jx, null
  br i1 %.not.i.i.i136.i.i, label %bb.bh, label %.loopexit164.i.i

bb.bh:                                            ; preds = %bb.bg
  call void @_RNvMs0_Cs41JD7yXDh97_6uu_envNtB5_15SignalActionLog6record(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef %i.ju, i8 noundef 1, i1 noundef zeroext true) #45, !noalias !1885
  br label %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_13ignore_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_13ignore_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.bh, %.loopexit30.i.i133.i.i
  %i.jy = icmp eq i64 %i.hz, 0
  br i1 %i.jy, label %._crit_edge.i.i86.i.i, label %bb.az

._crit_edge.i.i86.i.i:                            ; preds = %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_13ignore_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %.preheader.i.i83.i.i
  br i1 %i.hq, label %bb.bi, label %.loopexit160.i.i

bb.bi:                                            ; preds = %._crit_edge.i.i86.i.i
  %i.jz = call noundef i64 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals25signal_number_upper_bound() #45, !noalias !1885 ; 3 uses
  %.not.i7351.i.i87.i.i = icmp eq i64 %i.jz, 0
  br i1 %.not.i7351.i.i87.i.i, label %.loopexit160.i.i, label %.lr.ph54.i.i88.i.i

.lr.ph54.i.i88.i.i:                               ; preds = %bb.bi
  br i1 %.not.i.i84.i.i, label %.preheader.i.preheader.i.i97.i.i, label %.lr.ph54.split.us.i.i89.i.i

.lr.ph54.split.us.i.i89.i.i:                      ; preds = %.lr.ph54.i.i88.i.i, %.backedge.us.i.i91.i.i
  %.sroa.03.052.us.i.i90.i.i = phi i64 [ %i.ka, %.backedge.us.i.i91.i.i ], [ 1, %.lr.ph54.i.i88.i.i ] ; 6 uses
  %i.ka = add i64 %.sroa.03.052.us.i.i90.i.i, 1
  switch i64 %.sroa.03.052.us.i.i90.i.i, label %bb.bj [
    i64 19, label %.backedge.us.i.i91.i.i
    i64 9, label %.backedge.us.i.i91.i.i
  ]

bb.bj:                                            ; preds = %.lr.ph54.split.us.i.i89.i.i
  %i.kb = call noundef zeroext i1 @_RNvCs41JD7yXDh97_6uu_env15signal_is_valid(i64 noundef %.sroa.03.052.us.i.i90.i.i) #45, !noalias !1885
  br i1 %i.kb, label %bb.bk, label %.backedge.us.i.i91.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.kc = call { ptr, ptr } @_RNvCs41JD7yXDh97_6uu_env13ignore_signal(i64 noundef %.sroa.03.052.us.i.i90.i.i) #45, !noalias !1885 ; 2 uses
  %i.kd = extractvalue { ptr, ptr } %i.kc, 0      ; 2 uses
  %.not.i80.us.i.i93.i.i = icmp eq ptr %i.kd, null
  br i1 %.not.i80.us.i.i93.i.i, label %bb.bl, label %.loopexit164.i.i

bb.bl:                                            ; preds = %bb.bk
  call void @_RNvMs0_Cs41JD7yXDh97_6uu_envNtB5_15SignalActionLog6record(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef %.sroa.03.052.us.i.i90.i.i, i8 noundef 1, i1 noundef zeroext false) #45, !noalias !1885
  br label %.backedge.us.i.i91.i.i

.backedge.us.i.i91.i.i:                           ; preds = %bb.bl, %bb.bj, %.lr.ph54.split.us.i.i89.i.i, %.lr.ph54.split.us.i.i89.i.i
  %exitcond.not.i.i92.i.i = icmp eq i64 %.sroa.03.052.us.i.i90.i.i, %i.jz
  br i1 %exitcond.not.i.i92.i.i, label %.loopexit160.i.i, label %.lr.ph54.split.us.i.i89.i.i

.preheader.i.preheader.i.i97.i.i:                 ; preds = %.lr.ph54.i.i88.i.i, %.backedge.i.i106.i.i
  %.sroa.03.052.i.i98.i.i = phi i64 [ %i.ke, %.backedge.i.i106.i.i ], [ 1, %.lr.ph54.i.i88.i.i ] ; 7 uses
  %i.ke = add i64 %.sroa.03.052.i.i98.i.i, 1
  br label %.preheader.i.i.i99.i.i

.preheader.i.i.i99.i.i:                           ; preds = %bb.bo, %.preheader.i.preheader.i.i97.i.i
  %.sroa.3.0.i.i.i.i100.i.i = phi i64 [ %i.ku, %bb.bo ], [ %i.hx, %.preheader.i.preheader.i.i97.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i101.i.i = phi ptr [ %i.kt, %bb.bo ], [ %i.hv, %.preheader.i.preheader.i.i97.i.i ] ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i101.i.i, i64 8 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i101.i.i, i64 98
  %i.kh = load i16, ptr %i.kg, align 2, !noalias !1886, !noundef !12 ; 2 uses
  %i.ki = zext i16 %i.kh to i64                   ; 3 uses
  %.idx269 = shl nuw nsw i64 %i.ki, 3
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 %.idx269
  %i.kk = icmp eq i16 %i.kh, 0
  br i1 %i.kk, label %._crit_edge265, label %.lr.ph264

bb.bm:                                            ; preds = %.lr.ph264
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i.i103.i.i263, i64 8 ; 2 uses
  %i.km = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i102.i.i262, 1
  %i.kn = icmp eq ptr %i.kl, %i.kj
  br i1 %i.kn, label %._crit_edge265, label %.lr.ph264

.lr.ph264:                                        ; preds = %.preheader.i.i.i99.i.i, %bb.bm
  %.sroa.0.03.i.i.i.i.i103.i.i263 = phi ptr [ %i.kl, %bb.bm ], [ %i.kf, %.preheader.i.i.i99.i.i ] ; 2 uses
  %.sroa.8.0.i.i.i.i.i102.i.i262 = phi i64 [ %i.km, %bb.bm ], [ 0, %.preheader.i.i.i99.i.i ] ; 2 uses
  %.val6.i.i.i.i.i104.i.i = load i64, ptr %.sroa.0.03.i.i.i.i.i103.i.i263, align 8, !noalias !1886, !noundef !12
  %i.ko = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.sroa.03.052.i.i98.i.i, i64 %.val6.i.i.i.i.i104.i.i)
  switch i8 %i.ko, label %bb.bn [
    i8 -1, label %._crit_edge265
    i8 0, label %.backedge.i.i106.i.i
    i8 1, label %bb.bm
  ]

bb.bn:                                            ; preds = %.lr.ph264
  unreachable

._crit_edge265:                                   ; preds = %bb.bm, %.lr.ph264, %.preheader.i.i.i99.i.i
  %.sroa.4.0.i.ph.i.i.i.i108.i.i = phi i64 [ %i.ki, %.preheader.i.i.i99.i.i ], [ %i.ki, %bb.bm ], [ %.sroa.8.0.i.i.i.i.i102.i.i262, %.lr.ph264 ] ; 2 uses
  %i.kp = icmp eq i64 %.sroa.3.0.i.i.i.i100.i.i, 0
  br i1 %i.kp, label %.loopexit.i.i109.i.i, label %bb.bo

bb.bo:                                            ; preds = %._crit_edge265
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i101.i.i, i64 104
  %i.kr = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i108.i.i, 12
  call void @llvm.assume(i1 %i.kr)
end_hunk_1
begin_hunk_2_@_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterB1J_EEENtNtNtBa_6traits8iterator8Iterator7collectINtB10_3VecB1J_EECsl8pJiQOn4hA_9coreutils:bb.a
  %i.as = icmp eq i64 %.sroa.6.0.copyload.i, 0
  br i1 %i.as, label %_RINvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4folduQNCINvNvB1G_8for_each4callBX_NCINvMsk_B8_INtB8_3VecBX_E14extend_trustedINtNtNtB1M_8adapters5chain5ChainBI_INtNtB3V_6cloned6ClonedINtNtNtB1O_5slice4iter4IterBX_EEEE0E0ECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.at = mul nuw i64 %.sroa.6.0.copyload.i, 24
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload.i, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !30636
  br label %_RINvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4folduQNCINvNvB1G_8for_each4callBX_NCINvMsk_B8_INtB8_3VecBX_E14extend_trustedINtNtNtB1M_8adapters5chain5ChainBI_INtNtB3V_6cloned6ClonedINtNtNtB1O_5slice4iter4IterBX_EEEE0E0ECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i

_RINvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4folduQNCINvNvB1G_8for_each4callBX_NCINvMsk_B8_INtB8_3VecBX_E14extend_trustedINtNtNtB1M_8adapters5chain5ChainBI_INtNtB3V_6cloned6ClonedINtNtNtB1O_5slice4iter4IterBX_EEEE0E0ECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i: ; preds = %bb.o, %._crit_edge.i.i.i.i.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i
  %.sroa.5.1.i.i.i.i.i.i = phi i64 [ %i.am, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ], [ %.sroa.5.0.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ], [ %.sroa.5.0.i.i.i.i.i.i, %bb.o ] ; 3 uses
  br i1 %.not7.i.i.i.i, label %_RINvXsf_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1w_8adapters5chain5ChainINtNtB6_9into_iter8IntoIterBG_EINtNtB2I_6cloned6ClonedINtNtNtB1y_5slice4iter4IterBG_EEEECsl8pJiQOn4hA_9coreutils.exit, label %bb.p

bb.p:                                             ; preds = %_RINvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4folduQNCINvNvB1G_8for_each4callBX_NCINvMsk_B8_INtB8_3VecBX_E14extend_trustedINtNtNtB1M_8adapters5chain5ChainBI_INtNtB3V_6cloned6ClonedINtNtNtB1O_5slice4iter4IterBX_EEEE0E0ECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.copyload.i) ]
  %i.au = icmp eq ptr %.sroa.9.0.copyload.i, %.sroa.10.0.copyload.i
  br i1 %i.au, label %_RINvXsf_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1w_8adapters5chain5ChainINtNtB6_9into_iter8IntoIterBG_EINtNtB2I_6cloned6ClonedINtNtNtB1y_5slice4iter4IterBG_EEEECsl8pJiQOn4hA_9coreutils.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = ptrtoint ptr %.sroa.10.0.copyload.i to i64
  %i.aw = ptrtoint ptr %.sroa.9.0.copyload.i to i64
  %i.ax = sub nuw i64 %i.av, %i.aw
  %i.ay = udiv exact i64 %i.ax, 24
  br label %bb.r

bb.r:                                             ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB3h_3VecBV_E14extend_trustedINtNtB6_5chain5ChainINtNtB3h_9into_iter8IntoIterBV_EINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEEE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i, %bb.q
  %i.az = phi i64 [ %.sroa.5.1.i.i.i.i.i.i, %bb.q ], [ %i.bh, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB3h_3VecBV_E14extend_trustedINtNtB6_5chain5ChainINtNtB3h_9into_iter8IntoIterBV_EINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEEE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.q ], [ %i.bi, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB3h_3VecBV_E14extend_trustedINtNtB6_5chain5ChainINtNtB3h_9into_iter8IntoIterBV_EINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEEE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %.sroa.9.0.copyload.i, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %.val11.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bb, align 8, !noalias !30646, !nonnull !12, !noundef !12
  %i.bc = getelementptr i8, ptr %i.ba, i64 16
  %.val12.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bc, align 8, !noalias !30646, !noundef !12 ; 6 uses
  %i.bd = icmp eq i64 %.val12.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bd, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB3h_3VecBV_E14extend_trustedINtNtB6_5chain5ChainINtNtB3h_9into_iter8IntoIterBV_EINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEEE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !30651
  %i.be = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val12.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #45, !noalias !30651 ; 3 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val12.i.i.i.i.i.i.i.i.i) #52, !noalias !30665
  unreachable

bb.u:                                             ; preds = %bb.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.be, ptr nonnull readonly align 1 %.val11.i.i.i.i.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.val12.i.i.i.i.i.i.i.i.i, i1 false), !noalias !30666
  br label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB3h_3VecBV_E14extend_trustedINtNtB6_5chain5ChainINtNtB3h_9into_iter8IntoIterBV_EINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEEE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB3h_3VecBV_E14extend_trustedINtNtB6_5chain5ChainINtNtB3h_9into_iter8IntoIterBV_EINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEEE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.u, %bb.r
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.be, %bb.u ], [ inttoptr (i64 1 to ptr), %bb.r ]
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.az ; 3 uses
  store i64 %.val12.i.i.i.i.i.i.i.i.i, ptr %i.bg, align 8, !noalias !30667
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !30667
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 %.val12.i.i.i.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !30667
  %i.bh = add i64 %i.az, 1                        ; 2 uses
  %i.bi = add nuw i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, %i.ay
  br i1 %i.bj, label %_RINvXsf_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1w_8adapters5chain5ChainINtNtB6_9into_iter8IntoIterBG_EINtNtB2I_6cloned6ClonedINtNtNtB1y_5slice4iter4IterBG_EEEECsl8pJiQOn4hA_9coreutils.exit, label %bb.r

_RINvXsf_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1w_8adapters5chain5ChainINtNtB6_9into_iter8IntoIterBG_EINtNtB2I_6cloned6ClonedINtNtNtB1y_5slice4iter4IterBG_EEEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB3h_3VecBV_E14extend_trustedINtNtB6_5chain5ChainINtNtB3h_9into_iter8IntoIterBV_EINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEEE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i, %.thread.i, %bb.j, %_RINvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4folduQNCINvNvB1G_8for_each4callBX_NCINvMsk_B8_INtB8_3VecBX_E14extend_trustedINtNtNtB1M_8adapters5chain5ChainBI_INtNtB3V_6cloned6ClonedINtNtNtB1O_5slice4iter4IterBX_EEEE0E0ECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i, %bb.p
  %i.bk = phi ptr [ %i.w, %bb.j ], [ %i.w, %bb.p ], [ %i.w, %_RINvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4folduQNCINvNvB1G_8for_each4callBX_NCINvMsk_B8_INtB8_3VecBX_E14extend_trustedINtNtNtB1M_8adapters5chain5ChainBI_INtNtB3V_6cloned6ClonedINtNtNtB1O_5slice4iter4IterBX_EEEE0E0ECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i ], [ %i.g, %.thread.i ], [ %i.w, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB3h_3VecBV_E14extend_trustedINtNtB6_5chain5ChainINtNtB3h_9into_iter8IntoIterBV_EINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEEE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i ]
  %storemerge.i.i.i.i.i.i = phi i64 [ 0, %bb.j ], [ %.sroa.5.1.i.i.i.i.i.i, %bb.p ], [ %.sroa.5.1.i.i.i.i.i.i, %_RINvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4folduQNCINvNvB1G_8for_each4callBX_NCINvMsk_B8_INtB8_3VecBX_E14extend_trustedINtNtNtB1M_8adapters5chain5ChainBI_INtNtB3V_6cloned6ClonedINtNtNtB1O_5slice4iter4IterBX_EEEE0E0ECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i ], [ 0, %.thread.i ], [ %i.bh, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB3h_3VecBV_E14extend_trustedINtNtB6_5chain5ChainINtNtB3h_9into_iter8IntoIterBV_EINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEEE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i ]
  store i64 %storemerge.i.i.i.i.i.i, ptr %i.bk, align 8, !alias.scope !30635, !noalias !30672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !30673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !30616
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5_14PrimeBufferExt7factorsNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr nofree readonly captures(address) %.8.val, i64 %.16.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.8.val1612 = ptrtoaddr ptr %.8.val to i64
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 11 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 13 uses
  %i.q = alloca [24 x i8], align 8                ; 15 uses
  %i.r = alloca [24 x i8], align 8                ; 19 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 5 uses
  %i.v = alloca [8 x i8], align 8                 ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
  %i.x = alloca [8 x i8], align 8                 ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 10 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 9 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 8 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [24 x i8], align 8               ; 5 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 8 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 7 uses
  %i.ar = alloca [24 x i8], align 8               ; 10 uses
  %i.as = alloca [24 x i8], align 8               ; 6 uses
  %i.at = alloca [24 x i8], align 8               ; 6 uses
  %i.au = alloca [48 x i8], align 8               ; 7 uses
  %i.av = alloca [24 x i8], align 8               ; 11 uses
  %i.aw = alloca [24 x i8], align 8               ; 8 uses
  %i.ax = alloca [24 x i8], align 8               ; 4 uses
  %i.ay = alloca [24 x i8], align 8               ; 4 uses
  %i.az = alloca [24 x i8], align 8               ; 13 uses
  %i.ba = alloca [24 x i8], align 8               ; 6 uses
  %i.bb = alloca [24 x i8], align 8               ; 10 uses
  %i.bc = alloca [24 x i8], align 8               ; 6 uses
  %i.bd = alloca [24 x i8], align 8               ; 6 uses
  %i.be = alloca [24 x i8], align 8               ; 5 uses
  %i.bf = alloca [24 x i8], align 8               ; 4 uses
  %i.bg = alloca [24 x i8], align 8               ; 4 uses
  %i.bh = alloca [24 x i8], align 8               ; 6 uses
  %i.bi = alloca [24 x i8], align 8               ; 7 uses
  %i.bj = alloca [24 x i8], align 8               ; 5 uses
  %i.bk = alloca [24 x i8], align 8               ; 5 uses
  %i.bl = alloca [24 x i8], align 8               ; 10 uses
  %i.bm = alloca [24 x i8], align 8               ; 6 uses
  %i.bn = alloca [24 x i8], align 8               ; 11 uses
  %i.bo = alloca [24 x i8], align 8               ; 6 uses
  %i.bp = alloca [24 x i8], align 8               ; 6 uses
  %i.bq = alloca [24 x i8], align 8               ; 6 uses
  %i.br = alloca [24 x i8], align 8               ; 4 uses
  %i.bs = alloca [24 x i8], align 8               ; 6 uses
  %i.bt = alloca [24 x i8], align 8               ; 4 uses
  %i.bu = alloca [24 x i8], align 8               ; 6 uses
  %i.bv = alloca [24 x i8], align 8               ; 6 uses
  %i.bw = alloca [24 x i8], align 8               ; 4 uses
  %i.bx = alloca [24 x i8], align 8               ; 6 uses
  %i.by = alloca [24 x i8], align 8               ; 6 uses
  %i.bz = alloca [24 x i8], align 8               ; 4 uses
  %i.ca = alloca [24 x i8], align 8               ; 12 uses
  %i.cb = alloca [24 x i8], align 8               ; 6 uses
  %i.cc = alloca [24 x i8], align 8               ; 14 uses
  %i.cd = alloca [24 x i8], align 8               ; 6 uses
  %i.ce = alloca [24 x i8], align 8               ; 6 uses
  %i.cf = alloca [48 x i8], align 8               ; 9 uses
  %i.cg = alloca [24 x i8], align 8               ; 11 uses
  %i.ch = alloca [24 x i8], align 8               ; 4 uses
  %i.ci = alloca [24 x i8], align 8               ; 4 uses
  %i.cj = alloca [24 x i8], align 8               ; 13 uses
  %i.ck = alloca [24 x i8], align 8               ; 6 uses
  %i.cl = alloca [24 x i8], align 8               ; 10 uses
  %i.cm = alloca [24 x i8], align 8               ; 6 uses
  %i.cn = alloca [24 x i8], align 8               ; 5 uses
  %i.co = alloca [24 x i8], align 8               ; 8 uses
  %i.cp = alloca [24 x i8], align 8               ; 4 uses
  %i.cq = alloca [24 x i8], align 8               ; 4 uses
  %i.cr = alloca [24 x i8], align 8               ; 6 uses
  %i.cs = alloca [24 x i8], align 8               ; 6 uses
  %i.ct = alloca [24 x i8], align 8               ; 13 uses
  %i.cu = alloca [24 x i8], align 8               ; 8 uses
  %i.cv = alloca [24 x i8], align 8               ; 4 uses
  %i.cw = alloca [24 x i8], align 8               ; 12 uses
  %i.cx = alloca [24 x i8], align 8               ; 10 uses
  %i.cy = alloca [24 x i8], align 8               ; 4 uses
  %i.cz = alloca [24 x i8], align 8               ; 11 uses
  %i.da = alloca [24 x i8], align 8               ; 8 uses
  %i.db = alloca [8 x i8], align 8                ; 5 uses
  %i.dc = alloca [8 x i8], align 8                ; 5 uses
  %i.dd = alloca [24 x i8], align 8               ; 10 uses
  %i.de = alloca [24 x i8], align 8               ; 6 uses
  %i.df = alloca [32 x i8], align 8               ; 3 uses
  %i.dg = alloca [56 x i8], align 8               ; 7 uses
  %i.dh = alloca [24 x i8], align 8               ; 8 uses
  %i.di = alloca [24 x i8], align 8               ; 9 uses
  %i.dj = alloca [72 x i8], align 8               ; 15 uses
  %i.dk = alloca [24 x i8], align 8               ; 6 uses
  %i.dl = alloca [48 x i8], align 8               ; 6 uses
  %i.dm = alloca [48 x i8], align 8               ; 8 uses
  %i.dn = alloca [24 x i8], align 8               ; 4 uses
  %i.do = alloca [24 x i8], align 8               ; 4 uses
  %i.dp = alloca [24 x i8], align 8               ; 6 uses
  %i.dq = alloca [24 x i8], align 8               ; 4 uses
  %i.dr = alloca [24 x i8], align 8               ; 11 uses
  %i.ds = alloca [24 x i8], align 8               ; 14 uses
  %.sroa.5 = alloca i64, align 8                  ; 5 uses
  %i.dt = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.11 = alloca i64, align 8                 ; 7 uses
  %i.du = alloca [24 x i8], align 8               ; 4 uses
  %i.dv = alloca [24 x i8], align 8               ; 6 uses
  %i.dw = alloca [24 x i8], align 8               ; 15 uses
  %i.dx = alloca [24 x i8], align 8               ; 8 uses
  %i.dy = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.5.i.i.i.i.i.i.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 5 uses
  %.sroa.42.i.i.i.i.i.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %i.dz = alloca [24 x i8], align 8               ; 9 uses
  %i.ea = alloca [72 x i8], align 8               ; 15 uses
  %i.eb = alloca [24 x i8], align 8               ; 6 uses
  %i.ec = alloca [24 x i8], align 8               ; 6 uses
  %i.ed = alloca [24 x i8], align 8               ; 4 uses
  %i.ee = alloca [56 x i8], align 8               ; 7 uses
  %i.ef = alloca [24 x i8], align 8               ; 54 uses
  %i.eg = alloca [24 x i8], align 8               ; 6 uses
  %i.eh = alloca [24 x i8], align 8               ; 11 uses
  %i.ei = alloca [24 x i8], align 8               ; 6 uses
  %i.ej = alloca [24 x i8], align 8               ; 9 uses
  %i.ek = alloca [24 x i8], align 8               ; 9 uses
  %i.el = alloca [24 x i8], align 8               ; 5 uses
  %i.em = alloca [24 x i8], align 8               ; 6 uses
  %i.en = alloca [24 x i8], align 8               ; 6 uses
  %i.eo = load i64, ptr %1, align 8, !range !13, !alias.scope !30674, !noalias !30677, !noundef !12 ; 3 uses
  %.not.i = icmp eq i64 %i.eo, -1
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.eq = load i64, ptr %i.ep, align 8, !range !46, !alias.scope !30674, !noalias !30677, !noundef !12
  %i.er = trunc nuw i64 %i.eq to i1
  br i1 %i.er, label %.lr.ph.preheader.thread.i, label %.loopexit

.lr.ph.preheader.thread.i:                        ; preds = %bb.b
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %.lr.ph.preheader.split.i

bb.c:                                             ; preds = %bb.a
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ev = load i64, ptr %i.eu, align 8, !alias.scope !30674, !noalias !30677, !noundef !12 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.ex = shl nuw nsw i64 %i.ev, 3                ; 2 uses
  %i.ey = load ptr, ptr %i.ep, align 8, !alias.scope !30674, !noalias !30677, !nonnull !12, !noundef !12 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ex
  %i.fa = add nsw i64 %i.ex, -17
  %i.fb = icmp ult i64 %i.fa, -9
  br i1 %i.fb, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive7to_u128.exit, label %.lr.ph.preheader.split.i

.lr.ph.preheader.split.i:                         ; preds = %.lr.ph.preheader.i, %.lr.ph.preheader.thread.i
  %.sroa.06.02023.i = phi ptr [ %i.es, %.lr.ph.preheader.thread.i ], [ %i.ey, %.lr.ph.preheader.i ]
  %i.fc = phi ptr [ %i.et, %.lr.ph.preheader.thread.i ], [ %i.ez, %.lr.ph.preheader.i ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.split.i
  %.sroa.0.013.i = phi i128 [ %i.fi, %.lr.ph.i ], [ 0, %.lr.ph.preheader.split.i ]
  %.sroa.02.012.i = phi i8 [ %i.fj, %.lr.ph.i ], [ 0, %.lr.ph.preheader.split.i ] ; 2 uses
  %.sroa.05.011.i = phi ptr [ %i.fd, %.lr.ph.i ], [ %.sroa.06.02023.i, %.lr.ph.preheader.split.i ] ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.05.011.i, i64 8 ; 2 uses
  %i.fe = load i64, ptr %.sroa.05.011.i, align 8, !noalias !30677, !noundef !12
  %i.ff = zext i64 %i.fe to i128
  %i.fg = zext nneg i8 %.sroa.02.012.i to i128
  %i.fh = shl nuw i128 %i.ff, %i.fg
  %i.fi = or i128 %i.fh, %.sroa.0.013.i           ; 2 uses
  %i.fj = add nuw i8 %.sroa.02.012.i, 64
  %i.fk = icmp eq ptr %i.fd, %i.fc
  br i1 %i.fk, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %.lr.ph.i, %bb.c, %bb.b
  %.sroa.5.067.ph = phi i128 [ 0, %bb.c ], [ 0, %bb.b ], [ %i.fi, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em)
  call void @_RNvNtCs6BhVcHPqRq6_9num_prime8nt_funcs12factorize128(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.em, i128 noundef %.sroa.5.067.ph) #45
  %i.fl = load ptr, ptr %i.em, align 8, !noundef !12 ; 3 uses
  %.not113 = icmp ne ptr %i.fl, null              ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.fn = load i64, ptr %i.fm, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.fp = load i64, ptr %i.fo, align 8
  %.sroa.0.sroa.7.sroa.6.0 = select i1 %.not113, i64 %i.fp, i64 undef ; 2 uses
  %.sroa.0.sroa.0.0 = zext i1 %.not113 to i64     ; 2 uses
  %.sroa.5.0 = select i1 %.not113, i64 %i.fn, i64 0 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em)
  call void @llvm.experimental.noalias.scope.decl(metadata !30679)
  %i.fq = shl i64 %.sroa.5.0, 5                   ; 4 uses
  %i.fr = icmp ugt i64 %.sroa.5.0, 576460752303423487
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.fq, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i = or i1 %i.fr, %.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.f, label %bb.d, !prof !328

bb.d:                                             ; preds = %.loopexit
  %i.fs = icmp eq i64 %i.fq, 0
  br i1 %i.fs, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !30682
  %i.ft = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.fq, i64 noundef range(i64 1, 9) 8) #45, !noalias !30682 ; 2 uses
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %bb.f, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e, %.loopexit
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 8, %bb.e ], [ 0, %.loopexit ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %i.fq) #52, !noalias !30698
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.10.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.d ], [ %i.ft, %bb.e ] ; 5 uses
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.sroa.5.0, %bb.e ] ; 4 uses
  %i.fv = icmp samesign ule i64 %.sroa.5.0, %.sroa.4.0.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.fv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea), !noalias !30699
  store i64 %.sroa.0.sroa.0.0, ptr %i.ea, align 8, !noalias !30712
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !30712
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store ptr %i.fl, ptr %.sroa.52.0..sroa_idx, align 8, !noalias !30712
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store i64 %.sroa.0.sroa.7.sroa.6.0, ptr %.sroa.6.0..sroa_idx3, align 8, !noalias !30712
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  store i64 %.sroa.0.sroa.0.0, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !30712
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  store ptr null, ptr %.sroa.8.0..sroa_idx5, align 8, !noalias !30712
  %.sroa.9.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  store ptr %i.fl, ptr %.sroa.9.0..sroa_idx6, align 8, !noalias !30712
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  store i64 %.sroa.0.sroa.7.sroa.6.0, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !30712
  %.sroa.4.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 64
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx2.i.i.i.i.i, align 8, !noalias !30713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz), !noalias !30714
  call fastcc void @_RNvMsz_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_8IntoIterojE10dying_nextCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.dz, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ea) #45, !noalias !30721
  %i.fw = load ptr, ptr %i.dz, align 8, !noalias !30714, !noundef !12 ; 2 uses
  %.not.i9.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fw, null
  br i1 %.not.i9.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.fx = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 6 uses
  br label %bb.g

bb.g:                                             ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldTojETNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEuNCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB1U_14PrimeBufferExt7factorsBZ_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4i_3VecBY_E14extend_trustedINtB4_3MapINtNtNtNtB4k_11collections5btree3map8IntoIterojEB1M_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.fz = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.gz, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldTojETNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEuNCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB1U_14PrimeBufferExt7factorsBZ_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4i_3VecBY_E14extend_trustedINtB4_3MapINtNtNtNtB4k_11collections5btree3map8IntoIterojEB1M_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ga = phi ptr [ %i.fw, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.ha, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldTojETNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEuNCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB1U_14PrimeBufferExt7factorsBZ_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4i_3VecBY_E14extend_trustedINtB4_3MapINtNtNtNtB4k_11collections5btree3map8IntoIterojEB1M_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.42.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !30714 ; 2 uses
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %.sroa.42.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  %i.gc = load i128, ptr %i.gb, align 16, !noalias !30722, !noundef !12 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 184
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %.sroa.42.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  %i.gf = load i64, ptr %i.ge, align 8, !noalias !30722, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !30714
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.42.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy), !noalias !30725
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noundef nonnull align 8 dereferenceable(24) @899, i64 24, i1 false), !noalias !30725
  %i.gg = icmp eq i128 %i.gc, 0
  br i1 %i.gg, label %_RNCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB7_14PrimeBufferExt7factorsNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintE0Csl8pJiQOn4hA_9coreutils.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.backedge
  %.sroa.0.0.copyload15.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload15.i.i.i.i.i.i.i.i.i.i.i.i.be, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.backedge ], [ -1, %bb.g ]
  %i.gh = phi i64 [ %.be, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.backedge ], [ undef, %bb.g ] ; 4 uses
  %i.gi = phi i64 [ %.be1624, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.backedge ], [ -1, %bb.g ] ; 2 uses
  %.sroa.0.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i128 [ %.sroa.0.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i.be, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.backedge ], [ %i.gc, %bb.g ] ; 3 uses
  %i.gj = trunc i128 %.sroa.0.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30734)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gi, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gk = icmp eq i64 %i.gh, %i.gi
  br i1 %i.gk, label %bb.i, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecyE8push_mutCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCsioiJd4mgmsb_10num_bigint(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dy) #53, !noalias !30725
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecyE8push_mutCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecyE8push_mutCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.gl = load ptr, ptr %i.fy, align 8, !alias.scope !30737, !noalias !30725, !nonnull !12, !noundef !12
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.gh
  store i64 %i.gj, ptr %i.gm, align 8, !noalias !30725
  %i.gn = add i64 %i.gh, 1                        ; 2 uses
  store i64 %i.gn, ptr %i.fx, align 8, !alias.scope !30737, !noalias !30725
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dy, align 8, !alias.scope !30734, !noalias !30725 ; 2 uses
  br label %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits4push.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.go = load i64, ptr %i.fy, align 8, !range !46, !alias.scope !30734, !noalias !30725, !noundef !12
  %i.gp = trunc nuw i64 %i.go to i1
  br i1 %i.gp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !30740
  %i.gq = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #45, !noalias !30740 ; 4 uses
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %bb.m, label %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits4push.exit.i.i.i.thread.i.i.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  store i64 1, ptr %i.fy, align 8, !alias.scope !30734, !noalias !30725
  store i64 %i.gj, ptr %i.fx, align 8, !alias.scope !30734, !noalias !30725
end_hunk_2
begin_hunk_3_@_RNSNvYNCINvNtNtCs2vKOLqTMYjT_3std6thread9lifecycle15spawn_uncheckedNCINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtBd_3ffi6os_str8OsStringEINtNtB1N_6cloned6ClonedINtNtNtB1R_5slice4iter4IterB3o_EEEEs0_0INtNtB1R_6result6ResultuINtNtB2H_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEs_0INtNtNtB1R_3ops8function6FnOnceuE9call_once6vtableCsl8pJiQOn4hA_9coreutils:bb.a

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !63, !invariant.load !12, !noalias !34094 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEIB1p_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsl8pJiQOn4hA_9coreutils.exit.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !267, !invariant.load !12, !noalias !34094
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) %i.ad) #45, !noalias !34094
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEIB1p_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEIB1p_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.f, %bb.c, %bb.a
  store i64 0, ptr %i.l, align 8, !noalias !34075
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !34075
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !34075
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34075
  store ptr %i.k, ptr %i.c, align 8, !noalias !34075
  %i.ae = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !34096
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.j, label %_RNCINvNtNtCs2vKOLqTMYjT_3std6thread9lifecycle15spawn_uncheckedNCINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtB8_3ffi6os_str8OsStringEINtNtB1I_6cloned6ClonedINtNtNtB1M_5slice4iter4IterB3j_EEEEs0_0INtNtB1M_6result6ResultuINtNtB2C_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEs_0Csl8pJiQOn4hA_9coreutils.exit

bb.j:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEIB1p_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsl8pJiQOn4hA_9coreutils.exit.i
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultuINtNtB7_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #53, !noalias !34075
  br label %_RNCINvNtNtCs2vKOLqTMYjT_3std6thread9lifecycle15spawn_uncheckedNCINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtB8_3ffi6os_str8OsStringEINtNtB1I_6cloned6ClonedINtNtNtB1M_5slice4iter4IterB3j_EEEEs0_0INtNtB1M_6result6ResultuINtNtB2C_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEs_0Csl8pJiQOn4hA_9coreutils.exit

_RNCINvNtNtCs2vKOLqTMYjT_3std6thread9lifecycle15spawn_uncheckedNCINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtB8_3ffi6os_str8OsStringEINtNtB1I_6cloned6ClonedINtNtNtB1M_5slice4iter4IterB3j_EEEEs0_0INtNtB1M_6result6ResultuINtNtB2C_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEs_0Csl8pJiQOn4hA_9coreutils.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEIB1p_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsl8pJiQOn4hA_9coreutils.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !34075
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.520.i)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNSNvYNCINvNvCsgN7rS7e43TA_7uu_more6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBQ_6cloned6ClonedINtNtNtBU_5slice4iter4IterB2r_EEEE0INtNtNtBU_3ops8function6FnOnceTRNtNtB2x_5panic13PanicHookInfoEE9call_once6vtableCsl8pJiQOn4hA_9coreutils(ptr nofree readnone captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34101
  store ptr %1, ptr %i.b, align 8, !noalias !34104
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6__print(ptr noundef nonnull @203, ptr noundef nonnull inttoptr (i64 3 to ptr)) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34104
  store ptr %i.b, ptr %i.a, align 8, !noalias !34104
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRNtNtCs2vKOLqTMYjT_3std5panic13PanicHookInfoNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !34104
  call void @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6__print(ptr noundef nonnull @6, ptr noundef nonnull %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34101
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvCs2S1mliNQtKX_8uu_b2sum6uu_app(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @381, i64 noundef 11) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @382, i64 noundef 11) #45
  call void @_RNvCs4dRV7rdzHEF_18uu_checksum_common35standalone_checksum_app_with_length(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @383, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 5, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvCs2zc8TnwZULP_10uu_sha1sum6uu_app(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @393, i64 noundef 13) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @394, i64 noundef 13) #45
  call void @_RNvCs4dRV7rdzHEF_18uu_checksum_common23standalone_checksum_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @395, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 7, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvCs4ymIm62sNTP_12uu_sha256sum6uu_app(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @426, i64 noundef 15) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @427, i64 noundef 15) #45
  call void @_RNvCs4dRV7rdzHEF_18uu_checksum_common23standalone_checksum_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @428, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 9, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvCs9lcmpQqrDDI_9uu_md5sum6uu_app(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @482, i64 noundef 12) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @483, i64 noundef 12) #45
  call void @_RNvCs4dRV7rdzHEF_18uu_checksum_common23standalone_checksum_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @484, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 6, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvCsPCkMm39seU_12uu_sha384sum6uu_app(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @485, i64 noundef 15) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @486, i64 noundef 15) #45
  call void @_RNvCs4dRV7rdzHEF_18uu_checksum_common23standalone_checksum_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @487, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 9, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvCsg8hoetmhRmG_12uu_sha224sum6uu_app(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @568, i64 noundef 15) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @569, i64 noundef 15) #45
  call void @_RNvCs4dRV7rdzHEF_18uu_checksum_common23standalone_checksum_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @570, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 9, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvCskAyBsUMQctw_12uu_sha512sum6uu_app(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @685, i64 noundef 15) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @686, i64 noundef 15) #45
  call void @_RNvCs4dRV7rdzHEF_18uu_checksum_common23standalone_checksum_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @687, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 9, ptr %i.d, align 8
  ret void
}

; Function Attrs: noreturn nounwind nonlazybind uwtable
define hidden void @_RNvCsl8pJiQOn4hA_9coreutils4main() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [2 x i8], align 2                 ; 6 uses
  %.sroa.4172 = alloca i64, align 8               ; 7 uses
  %.sroa.9173 = alloca i64, align 8               ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 9 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 5 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 3 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = tail call { ptr, ptr } @_RNvCsh036I4OHgIr_6uucore7args_os() #45 ; 2 uses
  %i.ac = extractvalue { ptr, ptr } %i.ab, 0      ; 8 uses
  %i.ad = extractvalue { ptr, ptr } %i.ab, 1      ; 5 uses
  %i.ae = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend5param4auxv9getauxval, i64 16) monotonic, align 8, !noalias !34107 ; 2 uses
  %magicptr.i.i.i = ptrtoint ptr %i.ae to i64     ; 2 uses
  switch i64 %magicptr.i.i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend5param4auxv12linux_execfn.exit.i
  ], !prof !34111

bb.b:                                             ; preds = %bb.a
  %i.af = load ptr, ptr @_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend5param4auxv9getauxval, align 8, !noalias !34107, !nonnull !12, !noundef !12
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend5param4auxv9getauxval, i64 8), align 8, !noalias !34107, !noundef !12
  %i.ah = tail call noundef ptr @_RNvNtCscC7ZI6NG8RX_6rustix4weak5fetch(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %i.ag) #45, !noalias !34107 ; 2 uses
  store atomic ptr %i.ah, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend5param4auxv9getauxval, i64 16) release, align 8, !noalias !34107
  br label %_RNvMNtCscC7ZI6NG8RX_6rustix4weakINtB2_4WeakFUKCyEONtNtCs6JMX4GRUq9U_4core3ffi6c_voidE3getCsl8pJiQOn4hA_9coreutils.exit.i.i

bb.c:                                             ; preds = %bb.a
  fence acquire
  br label %_RNvMNtCscC7ZI6NG8RX_6rustix4weakINtB2_4WeakFUKCyEONtNtCs6JMX4GRUq9U_4core3ffi6c_voidE3getCsl8pJiQOn4hA_9coreutils.exit.i.i

_RNvMNtCscC7ZI6NG8RX_6rustix4weakINtB2_4WeakFUKCyEONtNtCs6JMX4GRUq9U_4core3ffi6c_voidE3getCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i = phi ptr [ %i.ah, %bb.b ], [ %i.ae, %bb.c ] ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.i.i.i, null
  br i1 %.not.i.i, label %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend5param4auxv12linux_execfn.exit.i, label %bb.d

bb.d:                                             ; preds = %_RNvMNtCscC7ZI6NG8RX_6rustix4weakINtB2_4WeakFUKCyEONtNtCs6JMX4GRUq9U_4core3ffi6c_voidE3getCsl8pJiQOn4hA_9coreutils.exit.i.i
  %i.ai = tail call noundef ptr %.sroa.0.0.i.i.i(i64 noundef 31) #45, !noalias !34107, !inline_history !34112 ; 2 uses
  %i.aj = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ai) #45, !noalias !34107
  br label %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend5param4auxv12linux_execfn.exit.i

_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend5param4auxv12linux_execfn.exit.i: ; preds = %bb.d, %_RNvMNtCscC7ZI6NG8RX_6rustix4weakINtB2_4WeakFUKCyEONtNtCs6JMX4GRUq9U_4core3ffi6c_voidE3getCsl8pJiQOn4hA_9coreutils.exit.i.i, %bb.a
  %.sroa.3.0.i.i = phi i64 [ %i.aj, %bb.d ], [ 0, %_RNvMNtCscC7ZI6NG8RX_6rustix4weakINtB2_4WeakFUKCyEONtNtCs6JMX4GRUq9U_4core3ffi6c_voidE3getCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ %magicptr.i.i.i, %bb.a ] ; 16 uses
  %.sroa.0.0.i.i = phi ptr [ %i.ai, %bb.d ], [ @510, %_RNvMNtCscC7ZI6NG8RX_6rustix4weakINtB2_4WeakFUKCyEONtNtCs6JMX4GRUq9U_4core3ffi6c_voidE3getCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ @510, %bb.a ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  %i.ak = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ak, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend5param4auxv12linux_execfn.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 3 uses
  %i.am = getelementptr i8, ptr %i.ac, i64 8
  %.val.i.i = load ptr, ptr %i.am, align 8, !noalias !34113, !nonnull !12, !noundef !12
  %i.an = getelementptr i8, ptr %i.ac, i64 16
  %.val2.i.i = load i64, ptr %i.an, align 8, !noalias !34113, !noundef !12 ; 14 uses
  %i.ao = icmp eq i64 %.val2.i.i, 0               ; 2 uses
  br i1 %i.ao, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread66.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !34117
  %i.ap = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i.i, i64 noundef range(i64 1, 9) 1) #45, !noalias !34117 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.g, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val2.i.i) #52, !noalias !34127
  unreachable

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr nonnull readonly align 1 %.val.i.i, i64 range(i64 0, -9223372036854775808) %.val2.i.i, i1 false), !noalias !34128
  %.not.i = icmp eq i64 %.val2.i.i, -1
  br i1 %.not.i, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread66.i, !prof !4546

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread66.i: ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i, %bb.e
  %.sroa.6.072.i = phi ptr [ %i.ap, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i ], [ inttoptr (i64 1 to ptr), %bb.e ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !34107
  store i16 0, ptr %i.i, align 2, !noalias !34107
  %i.ar = icmp samesign eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.ar, label %.loopexit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread66.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %.sroa.3.0.i.i
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.at = icmp eq ptr %.sroa.0.0.i.i, %i.av
  br i1 %i.at, label %.loopexit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.03.0.i.i.i315 = phi i64 [ %.sroa.3.0.i.i, %.lr.ph ], [ %i.aw, %bb.h ] ; 3 uses
  %i.au = phi ptr [ %i.as, %.lr.ph ], [ %i.av, %bb.h ]
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -1 ; 3 uses
  %i.aw = add i64 %.sroa.03.0.i.i.i315, -1        ; 2 uses
  %.val.i.i.i = load i8, ptr %i.av, align 1, !noalias !34129, !noundef !12
  %i.ax = icmp eq i8 %.val.i.i.i, 47
  br i1 %i.ax, label %bb.j, label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.ay = icmp ult i64 %i.aw, %.sroa.3.0.i.i
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = sub nuw i64 %.sroa.3.0.i.i, %.sroa.03.0.i.i.i315
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %.sroa.03.0.i.i.i315
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.h, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread66.i, %bb.j
  %.sroa.5.1.i.i = phi i64 [ %i.az, %bb.j ], [ %.sroa.3.0.i.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread66.i ], [ %.sroa.3.0.i.i, %bb.h ] ; 2 uses
  %.sroa.0.1.i.i = phi ptr [ %i.ba, %bb.j ], [ %.sroa.0.0.i.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread66.i ], [ %.sroa.0.0.i.i, %bb.h ]
  %i.bb = icmp samesign eq i64 %.val2.i.i, 0
  br i1 %i.bb, label %_RNvXsg_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_5SplithNCINvNtNtCsdSs45UTkAAB_9coreutils6common10validation11binary_pathINtNtNtNtB9_4iter8adapters6cloned6ClonedINtB5_4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEs_0ENtNtNtB20_6traits12double_ended19DoubleEndedIterator9next_backCsl8pJiQOn4hA_9coreutils.exit.i, label %.lr.ph317

.lr.ph317:                                        ; preds = %.loopexit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.6.072.i, i64 %.val2.i.i
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %i.bd = icmp eq ptr %.sroa.6.072.i, %i.bf
  br i1 %i.bd, label %_RNvXsg_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_5SplithNCINvNtNtCsdSs45UTkAAB_9coreutils6common10validation11binary_pathINtNtNtNtB9_4iter8adapters6cloned6ClonedINtB5_4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEs_0ENtNtNtB20_6traits12double_ended19DoubleEndedIterator9next_backCsl8pJiQOn4hA_9coreutils.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph317, %bb.k
  %.sroa.03.0.i.i29.i316 = phi i64 [ %.val2.i.i, %.lr.ph317 ], [ %i.bg, %bb.k ] ; 3 uses
  %i.be = phi ptr [ %i.bc, %.lr.ph317 ], [ %i.bf, %bb.k ]
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -1 ; 3 uses
  %i.bg = add i64 %.sroa.03.0.i.i29.i316, -1      ; 2 uses
  %.val.i.i30.i = load i8, ptr %i.bf, align 1, !noalias !34134, !noundef !12
  %i.bh = icmp eq i8 %.val.i.i30.i, 47
  br i1 %i.bh, label %bb.m, label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.bi = icmp ult i64 %i.bg, %.val2.i.i
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = sub nuw i64 %.val2.i.i, %.sroa.03.0.i.i29.i316
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.6.072.i, i64 %.sroa.03.0.i.i29.i316
  br label %_RNvXsg_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_5SplithNCINvNtNtCsdSs45UTkAAB_9coreutils6common10validation11binary_pathINtNtNtNtB9_4iter8adapters6cloned6ClonedINtB5_4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEs_0ENtNtNtB20_6traits12double_ended19DoubleEndedIterator9next_backCsl8pJiQOn4hA_9coreutils.exit.i

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i: ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend5param4auxv12linux_execfn.exit.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @338) #50, !noalias !34107
  unreachable

_RNvXsg_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_5SplithNCINvNtNtCsdSs45UTkAAB_9coreutils6common10validation11binary_pathINtNtNtNtB9_4iter8adapters6cloned6ClonedINtB5_4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEs_0ENtNtNtB20_6traits12double_ended19DoubleEndedIterator9next_backCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.k, %.loopexit.i, %bb.m
  %.sroa.5.1.i31.i = phi i64 [ %i.bj, %bb.m ], [ %.val2.i.i, %.loopexit.i ], [ %.val2.i.i, %bb.k ]
  %.sroa.0.1.i32.i = phi ptr [ %i.bk, %bb.m ], [ %.sroa.6.072.i, %.loopexit.i ], [ %.sroa.6.072.i, %bb.k ]
  %i.bl = icmp eq i64 %.sroa.5.1.i.i, %.sroa.5.1.i31.i
  br i1 %i.bl, label %.split.i, label %bb.n

.split.i:                                         ; preds = %_RNvXsg_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_5SplithNCINvNtNtCsdSs45UTkAAB_9coreutils6common10validation11binary_pathINtNtNtNtB9_4iter8adapters6cloned6ClonedINtB5_4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEs_0ENtNtNtB20_6traits12double_ended19DoubleEndedIterator9next_backCsl8pJiQOn4hA_9coreutils.exit.i
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %.sroa.0.1.i.i, ptr nonnull %.sroa.0.1.i32.i, i64 %.sroa.5.1.i.i), !noalias !34107
  %i.bm = icmp eq i32 %bcmp.i, 0
  br i1 %i.bm, label %bb.v, label %bb.n

bb.n:                                             ; preds = %.split.i, %_RNvXsg_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_5SplithNCINvNtNtCsdSs45UTkAAB_9coreutils6common10validation11binary_pathINtNtNtNtB9_4iter8adapters6cloned6ClonedINtB5_4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEs_0ENtNtNtB20_6traits12double_ended19DoubleEndedIterator9next_backCsl8pJiQOn4hA_9coreutils.exit.i
  %.not.i33.i = icmp samesign ult i64 %.sroa.3.0.i.i, 6
  br i1 %.not.i33.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.thread.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.n
  %i.bn = load i32, ptr %.sroa.0.0.i.i, align 1
  %i.bo = xor i32 1869770799, %i.bn
  %i.bp = getelementptr i8, ptr %.sroa.0.0.i.i, i64 4
  %i.bq = load i16, ptr %i.bp, align 1
  %i.br = zext i16 %i.bq to i32
  %i.bs = xor i32 12131, %i.br
  %i.bt = or i32 %i.bo, %i.bs
  %i.bu = icmp ne i32 %i.bt, 0
  %i.bv = zext i1 %i.bu to i32
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.v, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.thread.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.thread.i: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.i, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !34107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !34139
  store i128 18446745954905227264, ptr %i.f, align 16, !noalias !34139
  call void @_RNvMsj_NtCs2vKOLqTMYjT_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.3.0.i.i) #45, !noalias !34107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !34139
  %i.bx = load i32, ptr %i.h, align 8, !range !575, !noalias !34107, !noundef !12
  %i.by = trunc nuw i32 %i.bx to i1
  br i1 %i.by, label %.thread.i, label %bb.o

.thread.i:                                        ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.thread.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !34107, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !34107
  br label %bb.p

bb.o:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.thread.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !range !639, !noalias !34107, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !34107
  store i32 %i.cc, ptr %i.g, align 4, !noalias !34107
  %i.cd = call fastcc noundef ptr @_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactNtNtCs2vKOLqTMYjT_3std2fs4FileECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 4 dereferenceable(4) %i.g, ptr noalias nofree noundef nonnull %i.i, i64 noundef 2) #45, !noalias !34107 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34143)
  %.val.i35.i = load i32, ptr %i.g, align 4, !range !639, !alias.scope !34143, !noalias !34107, !noundef !12
  %i.ce = call noundef i32 @close(i32 noundef %.val.i35.i) #45, !noalias !34146 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !34107
end_hunk_3
begin_hunk_4_@_RNvCsl8pJiQOn4hA_9coreutils4main:bb.a
  %i.hn = or disjoint i64 %.sroa.03.0.i10.i.i.i.i.i.i, 1
  %i.ho = icmp samesign ult i64 %i.hn, %i.hi
  br i1 %i.ho, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hp = getelementptr i8, ptr %i.fo, i64 %i.hj
  %i.hq = getelementptr i8, ptr %i.hp, i64 %.sroa.03.0.i10.i.i.i.i.i.i
  %.sroa.015.0.copyload.i15.i.i.i.i.i.i = load i16, ptr %i.hq, align 1, !alias.scope !34251, !noalias !34264
  %i.hr = zext i16 %.sroa.015.0.copyload.i15.i.i.i.i.i.i to i64
  %i.hs = shl nuw nsw i64 %.sroa.03.0.i10.i.i.i.i.i.i, 3
  %i.ht = shl nuw nsw i64 %i.hr, %i.hs
  %i.hu = or i64 %i.ht, %.sroa.0.0.i11.i.i.i.i.i.i
  %i.hv = or disjoint i64 %.sroa.03.0.i10.i.i.i.i.i.i, 2
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sroa.03.1.i12.i.i.i.i.i.i = phi i64 [ %i.hv, %bb.ay ], [ %.sroa.03.0.i10.i.i.i.i.i.i, %bb.ax ] ; 3 uses
  %.sroa.0.1.i13.i.i.i.i.i.i = phi i64 [ %i.hu, %bb.ay ], [ %.sroa.0.0.i11.i.i.i.i.i.i, %bb.ax ] ; 2 uses
  %i.hw = icmp samesign ult i64 %.sroa.03.1.i12.i.i.i.i.i.i, %i.hi
  br i1 %i.hw, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hx = add nuw i64 %.sroa.03.1.i12.i.i.i.i.i.i, %i.hj ; 2 uses
  %i.hy = icmp ult i64 %i.hx, %i.fq
  call void @llvm.assume(i1 %i.hy)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.hx
  %i.ia = load i8, ptr %i.hz, align 1, !alias.scope !34251, !noalias !34264, !noundef !12
  %i.ib = zext i8 %i.ia to i64
  %i.ic = shl nuw nsw i64 %.sroa.03.1.i12.i.i.i.i.i.i, 3
  %i.id = shl nuw nsw i64 %i.ib, %i.ic
  %i.ie = or i64 %i.id, %.sroa.0.1.i13.i.i.i.i.i.i
  br label %bb.bb

.lr.ph.i.i.i.i.i.i107:                            ; preds = %bb.av, %.lr.ph.i.i.i.i.i.i107
  %i.if = phi i64 [ %i.iy, %.lr.ph.i.i.i.i.i.i107 ], [ %i.hg, %bb.av ]
  %i.ig = phi i64 [ %i.ix, %.lr.ph.i.i.i.i.i.i107 ], [ %i.hf, %bb.av ] ; 3 uses
  %i.ih = phi i64 [ %i.iu, %.lr.ph.i.i.i.i.i.i107 ], [ %i.hd, %bb.av ]
  %.sroa.0.118.i.i.i.i.i.i = phi i64 [ %i.ja, %.lr.ph.i.i.i.i.i.i107 ], [ 0, %bb.av ] ; 2 uses
  %i.ii = phi i64 [ %i.iz, %.lr.ph.i.i.i.i.i.i107 ], [ %i.hh, %bb.av ]
  %i.ij = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.sroa.0.118.i.i.i.i.i.i
  %.sroa.07.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ij, align 1, !alias.scope !34271, !noalias !34264 ; 2 uses
  %i.ik = xor i64 %.sroa.07.0.copyload.i.i.i.i.i.i, %i.ih ; 3 uses
  %i.il = add i64 %i.ii, %i.ig                    ; 3 uses
  %i.im = call noundef i64 @llvm.fshl.i64(i64 %i.ig, i64 %i.ig, i64 13)
  %i.in = xor i64 %i.il, %i.im                    ; 3 uses
  %i.io = call noundef i64 @llvm.fshl.i64(i64 %i.il, i64 %i.il, i64 32)
  %i.ip = add i64 %i.ik, %i.if                    ; 2 uses
  %i.iq = call noundef i64 @llvm.fshl.i64(i64 %i.ik, i64 %i.ik, i64 16)
  %i.ir = xor i64 %i.ip, %i.iq                    ; 3 uses
  %i.is = add i64 %i.ir, %i.io                    ; 2 uses
  %i.it = call noundef i64 @llvm.fshl.i64(i64 %i.ir, i64 %i.ir, i64 21)
  %i.iu = xor i64 %i.it, %i.is                    ; 2 uses
  %i.iv = add i64 %i.ip, %i.in                    ; 3 uses
  %i.iw = call noundef i64 @llvm.fshl.i64(i64 %i.in, i64 %i.in, i64 17)
  %i.ix = xor i64 %i.iv, %i.iw                    ; 2 uses
  %i.iy = call noundef i64 @llvm.fshl.i64(i64 %i.iv, i64 %i.iv, i64 32) ; 2 uses
  %i.iz = xor i64 %i.is, %.sroa.07.0.copyload.i.i.i.i.i.i ; 2 uses
  %i.ja = add nuw i64 %.sroa.0.118.i.i.i.i.i.i, 8 ; 2 uses
  %i.jb = icmp ult i64 %i.ja, %i.hj
  br i1 %i.jb, label %.lr.ph.i.i.i.i.i.i107, label %._crit_edge.i.i.i.i.i.i

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %.sroa.0.2.i14.i.i.i.i.i.i = phi i64 [ %i.ie, %bb.ba ], [ %.sroa.0.1.i13.i.i.i.i.i.i, %bb.az ]
  %i.jc = shl i64 %i.fq, 56
  %i.jd = add i64 %i.jc, 576460752303423488
  %i.je = or i64 %.sroa.0.2.i14.i.i.i.i.i.i, %i.jd ; 2 uses
  %i.jf = xor i64 %i.je, %.sroa.26.2.i.i          ; 3 uses
  %i.jg = call noundef i64 @llvm.fshl.i64(i64 %i.jf, i64 %i.jf, i64 16)
  %i.jh = add i64 %i.jf, %.sroa.10.2.i.i          ; 2 uses
  %i.ji = xor i64 %i.jg, %i.jh                    ; 3 uses
  %i.jj = add i64 %.sroa.0.2.i.i, %.sroa.18.2.i.i ; 3 uses
  %i.jk = call noundef i64 @llvm.fshl.i64(i64 %i.jj, i64 %i.jj, i64 32)
  %i.jl = add i64 %i.ji, %i.jk                    ; 2 uses
  %i.jm = xor i64 %i.jl, %i.je
  %i.jn = call noundef i64 @llvm.fshl.i64(i64 %.sroa.18.2.i.i, i64 %.sroa.18.2.i.i, i64 13)
  %i.jo = xor i64 %i.jj, %i.jn                    ; 3 uses
  %i.jp = add i64 %i.jh, %i.jo                    ; 3 uses
  %i.jq = call noundef i64 @llvm.fshl.i64(i64 %i.jo, i64 %i.jo, i64 17)
  %i.jr = xor i64 %i.jp, %i.jq                    ; 3 uses
  %i.js = add i64 %i.jm, %i.jr                    ; 3 uses
  %i.jt = call noundef i64 @llvm.fshl.i64(i64 %i.jr, i64 %i.jr, i64 13)
  %i.ju = xor i64 %i.js, %i.jt                    ; 3 uses
  %i.jv = call noundef i64 @llvm.fshl.i64(i64 %i.ji, i64 %i.ji, i64 21)
  %i.jw = xor i64 %i.jv, %i.jl                    ; 3 uses
  %i.jx = call noundef i64 @llvm.fshl.i64(i64 %i.jp, i64 %i.jp, i64 32)
  %i.jy = xor i64 %i.jx, 238
  %i.jz = add i64 %i.jw, %i.jy                    ; 2 uses
  %i.ka = add i64 %i.ju, %i.jz                    ; 3 uses
  %i.kb = call noundef i64 @llvm.fshl.i64(i64 %i.ju, i64 %i.ju, i64 17)
  %i.kc = xor i64 %i.ka, %i.kb                    ; 3 uses
  %i.kd = call noundef i64 @llvm.fshl.i64(i64 %i.kc, i64 %i.kc, i64 13)
  %i.ke = call noundef i64 @llvm.fshl.i64(i64 %i.jw, i64 %i.jw, i64 16)
  %i.kf = xor i64 %i.ke, %i.jz                    ; 3 uses
  %i.kg = call noundef i64 @llvm.fshl.i64(i64 %i.js, i64 %i.js, i64 32)
  %i.kh = add i64 %i.kf, %i.kg                    ; 2 uses
  %i.ki = add i64 %i.kc, %i.kh                    ; 3 uses
  %i.kj = xor i64 %i.kd, %i.ki                    ; 3 uses
  %i.kk = call noundef i64 @llvm.fshl.i64(i64 %i.kj, i64 %i.kj, i64 17)
  %i.kl = call noundef i64 @llvm.fshl.i64(i64 %i.kf, i64 %i.kf, i64 21)
  %i.km = xor i64 %i.kl, %i.kh                    ; 3 uses
  %i.kn = call noundef i64 @llvm.fshl.i64(i64 %i.ka, i64 %i.ka, i64 32)
  %i.ko = add i64 %i.km, %i.kn                    ; 2 uses
  %i.kp = add i64 %i.kj, %i.ko                    ; 3 uses
  %i.kq = xor i64 %i.kk, %i.kp                    ; 3 uses
  %i.kr = call noundef i64 @llvm.fshl.i64(i64 %i.kq, i64 %i.kq, i64 13)
  %i.ks = call noundef i64 @llvm.fshl.i64(i64 %i.km, i64 %i.km, i64 16)
  %i.kt = xor i64 %i.ks, %i.ko                    ; 3 uses
  %i.ku = call noundef i64 @llvm.fshl.i64(i64 %i.ki, i64 %i.ki, i64 32)
  %i.kv = add i64 %i.kt, %i.ku                    ; 2 uses
  %i.kw = add i64 %i.kq, %i.kv                    ; 3 uses
  %i.kx = xor i64 %i.kr, %i.kw                    ; 3 uses
  %i.ky = call noundef i64 @llvm.fshl.i64(i64 %i.kt, i64 %i.kt, i64 21)
  %i.kz = xor i64 %i.ky, %i.kv                    ; 3 uses
  %i.la = call noundef i64 @llvm.fshl.i64(i64 %i.kp, i64 %i.kp, i64 32)
  %i.lb = add i64 %i.kz, %i.la                    ; 2 uses
  %i.lc = add i64 %i.kx, %i.lb                    ; 3 uses
  %i.ld = call noundef i64 @llvm.fshl.i64(i64 %i.lc, i64 %i.lc, i64 32) ; 2 uses
  %i.le = call noundef i64 @llvm.fshl.i64(i64 %i.kz, i64 %i.kz, i64 16)
  %i.lf = xor i64 %i.le, %i.lb                    ; 3 uses
  %i.lg = call noundef i64 @llvm.fshl.i64(i64 %i.lf, i64 %i.lf, i64 21) ; 2 uses
  %i.lh = xor i64 %i.ld, %i.lg
  %i.li = call noundef i64 @llvm.fshl.i64(i64 %i.kx, i64 %i.kx, i64 17)
  %i.lj = xor i64 %i.li, %i.lc                    ; 2 uses
  %i.lk = xor i64 %i.lh, %i.lj                    ; 2 uses
  %i.ll = lshr i64 %i.lk, 32
  %i.lm = trunc nuw i64 %i.ll to i32
  %i.ln = urem i32 %i.lm, 27
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr @814, i64 %i.lo ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 4
  %i.lr = load i32, ptr %i.lq, align 4, !alias.scope !34272, !noalias !34275, !noundef !12
  %i.ls = xor i64 %i.lj, 221                      ; 3 uses
  %i.lt = call noundef i64 @llvm.fshl.i64(i64 %i.kw, i64 %i.kw, i64 32)
  %i.lu = add i64 %i.lf, %i.lt                    ; 2 uses
  %i.lv = add i64 %i.ls, %i.lu                    ; 3 uses
  %i.lw = call noundef i64 @llvm.fshl.i64(i64 %i.lv, i64 %i.lv, i64 32)
  %i.lx = xor i64 %i.lg, %i.lu                    ; 3 uses
  %i.ly = call noundef i64 @llvm.fshl.i64(i64 %i.lx, i64 %i.lx, i64 16)
  %i.lz = add i64 %i.lx, %i.ld                    ; 2 uses
  %i.ma = xor i64 %i.ly, %i.lz                    ; 3 uses
  %i.mb = add i64 %i.lw, %i.ma                    ; 2 uses
  %i.mc = call noundef i64 @llvm.fshl.i64(i64 %i.ma, i64 %i.ma, i64 21)
  %i.md = xor i64 %i.mb, %i.mc                    ; 3 uses
  %i.me = call noundef i64 @llvm.fshl.i64(i64 %i.md, i64 %i.md, i64 16)
  %i.mf = call noundef i64 @llvm.fshl.i64(i64 %i.ls, i64 %i.ls, i64 13)
  %i.mg = xor i64 %i.mf, %i.lv                    ; 3 uses
  %i.mh = add i64 %i.mg, %i.lz                    ; 3 uses
  %i.mi = call noundef i64 @llvm.fshl.i64(i64 %i.mh, i64 %i.mh, i64 32)
  %i.mj = add i64 %i.md, %i.mi                    ; 2 uses
  %i.mk = xor i64 %i.me, %i.mj                    ; 3 uses
  %i.ml = call noundef i64 @llvm.fshl.i64(i64 %i.mk, i64 %i.mk, i64 21)
  %i.mm = call noundef i64 @llvm.fshl.i64(i64 %i.mg, i64 %i.mg, i64 17)
  %i.mn = xor i64 %i.mh, %i.mm                    ; 3 uses
  %i.mo = add i64 %i.mn, %i.mb                    ; 3 uses
  %i.mp = call noundef i64 @llvm.fshl.i64(i64 %i.mo, i64 %i.mo, i64 32)
  %i.mq = add i64 %i.mk, %i.mp                    ; 2 uses
  %i.mr = xor i64 %i.ml, %i.mq                    ; 3 uses
  %i.ms = call noundef i64 @llvm.fshl.i64(i64 %i.mr, i64 %i.mr, i64 16)
  %i.mt = call noundef i64 @llvm.fshl.i64(i64 %i.mn, i64 %i.mn, i64 13)
  %i.mu = xor i64 %i.mt, %i.mo                    ; 3 uses
  %i.mv = add i64 %i.mu, %i.mj                    ; 3 uses
  %i.mw = call noundef i64 @llvm.fshl.i64(i64 %i.mv, i64 %i.mv, i64 32)
  %i.mx = add i64 %i.mr, %i.mw                    ; 2 uses
  %i.my = xor i64 %i.ms, %i.mx                    ; 2 uses
  %i.mz = call noundef i64 @llvm.fshl.i64(i64 %i.my, i64 %i.my, i64 21)
  %i.na = call noundef i64 @llvm.fshl.i64(i64 %i.mu, i64 %i.mu, i64 17)
  %i.nb = xor i64 %i.na, %i.mv                    ; 3 uses
  %i.nc = call noundef i64 @llvm.fshl.i64(i64 %i.nb, i64 %i.nb, i64 13)
  %i.nd = add i64 %i.nb, %i.mq
  %i.ne = xor i64 %i.nc, %i.nd                    ; 3 uses
  %i.nf = call noundef i64 @llvm.fshl.i64(i64 %i.ne, i64 %i.ne, i64 17)
  %i.ng = xor i64 %i.mz, %i.nf
  %i.nh = add i64 %i.ne, %i.mx                    ; 2 uses
  %i.ni = lshr i64 %i.nh, 32
  %i.nj = xor i64 %i.ng, %i.ni
  %i.nk = xor i64 %i.nj, %i.nh
  %i.nl = trunc i64 %i.nk to i32
  %i.nm = load i32, ptr %i.lp, align 4, !alias.scope !34272, !noalias !34275, !noundef !12
  %i.nn = trunc i64 %i.lk to i32
  %i.no = mul i32 %i.nm, %i.nn
  %i.np = add i32 %i.no, %i.lr
  %i.nq = add i32 %i.np, %i.nl
  %i.nr = urem i32 %i.nq, 79
  %i.ns = zext nneg i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr @815, i64 %i.ns
  %i.nu = load i64, ptr %i.nt, align 8, !noalias !34277, !noundef !12
  %i.nv = getelementptr inbounds nuw [32 x i8], ptr @880, i64 %i.nu ; 4 uses
  %i.nw = getelementptr i8, ptr %i.nv, i64 8
  %.val6.i = load i64, ptr %i.nw, align 8, !noalias !34277, !noundef !12
  %i.nx = icmp eq i64 %.val6.i, %i.fq
  br i1 %i.nx, label %_RNvXCsbV8h3pAeO5B_10phf_sharedReINtB2_5PhfEqeE6phf_eqCsl8pJiQOn4hA_9coreutils.exit.i, label %_RINvMs2_NtCs5Jw8sa4iA4K_3phf11ordered_mapINtB6_10OrderedMapReTFINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB14_6cloned6ClonedINtNtNtB18_5slice4iter4IterB2F_EEEElFENtNtNtCsgNwXemyrBWj_12clap_builder7builder7command7CommandEE12get_internaleECsl8pJiQOn4hA_9coreutils.exit

_RNvXCsbV8h3pAeO5B_10phf_sharedReINtB2_5PhfEqeE6phf_eqCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.bb
  %.val5.i = load ptr, ptr %i.nv, align 8, !noalias !34277, !nonnull !12, !noundef !12
  %bcmp.i.i.i109 = call i32 @bcmp(ptr nonnull readonly %.val5.i, ptr nonnull readonly %i.fo, i64 %i.fq), !alias.scope !34278, !noalias !34282
  %i.ny = icmp eq i32 %bcmp.i.i.i109, 0
  br i1 %i.ny, label %bb.bc, label %_RINvMs2_NtCs5Jw8sa4iA4K_3phf11ordered_mapINtB6_10OrderedMapReTFINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB14_6cloned6ClonedINtNtNtB18_5slice4iter4IterB2F_EEEElFENtNtNtCsgNwXemyrBWj_12clap_builder7builder7command7CommandEE12get_internaleECsl8pJiQOn4hA_9coreutils.exit

bb.bc:                                            ; preds = %_RNvXCsbV8h3pAeO5B_10phf_sharedReINtB2_5PhfEqeE6phf_eqCsl8pJiQOn4hA_9coreutils.exit.i
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  %0 = ptrtoint ptr %i.nv to i64
  store i64 %0, ptr %.sroa.4172, align 8, !alias.scope !34246, !noalias !34283
  br label %_RINvMs2_NtCs5Jw8sa4iA4K_3phf11ordered_mapINtB6_10OrderedMapReTFINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB14_6cloned6ClonedINtNtNtB18_5slice4iter4IterB2F_EEEElFENtNtNtCsgNwXemyrBWj_12clap_builder7builder7command7CommandEE12get_internaleECsl8pJiQOn4hA_9coreutils.exit

_RINvMs2_NtCs5Jw8sa4iA4K_3phf11ordered_mapINtB6_10OrderedMapReTFINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB14_6cloned6ClonedINtNtNtB18_5slice4iter4IterB2F_EEEElFENtNtNtCsgNwXemyrBWj_12clap_builder7builder7command7CommandEE12get_internaleECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.bb, %_RNvXCsbV8h3pAeO5B_10phf_sharedReINtB2_5PhfEqeE6phf_eqCsl8pJiQOn4hA_9coreutils.exit.i, %bb.bc
  %.sink29.i.sroa.phi = phi ptr [ %.sroa.4172, %_RNvXCsbV8h3pAeO5B_10phf_sharedReINtB2_5PhfEqeE6phf_eqCsl8pJiQOn4hA_9coreutils.exit.i ], [ %.sroa.9173, %bb.bc ], [ %.sroa.4172, %bb.bb ]
  %.sink.i108 = phi ptr [ null, %_RNvXCsbV8h3pAeO5B_10phf_sharedReINtB2_5PhfEqeE6phf_eqCsl8pJiQOn4hA_9coreutils.exit.i ], [ %i.nz, %bb.bc ], [ null, %bb.bb ]
  store ptr %.sink.i108, ptr %.sink29.i.sroa.phi, align 8, !alias.scope !34246, !noalias !34283
  %.sroa.4172.0..sroa.4172.0..sroa.4172.0..sroa.4172.8. = load i64, ptr %.sroa.4172, align 8, !noundef !12
  %.not64 = icmp eq i64 %.sroa.4172.0..sroa.4172.0..sroa.4172.0..sroa.4172.8., 0
  br i1 %.not64, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_RINvMs2_NtCs5Jw8sa4iA4K_3phf11ordered_mapINtB6_10OrderedMapReTFINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB14_6cloned6ClonedINtNtNtB18_5slice4iter4IterB2F_EEEElFENtNtNtCsgNwXemyrBWj_12clap_builder7builder7command7CommandEE12get_internaleECsl8pJiQOn4hA_9coreutils.exit
  %.sroa.9173.0..sroa.9173.0..sroa.9173.0..sroa.9173.16. = load i64, ptr %.sroa.9173, align 8, !range !19053, !noundef !12
  %1 = inttoptr i64 %.sroa.9173.0..sroa.9173.0..sroa.9173.0..sroa.9173.16. to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4172)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9173)
  %i.oa = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12
  call void @_RNvNtNtCsdSs45UTkAAB_9coreutils6common10validation26setup_localization_or_exit(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fo, i64 noundef %i.fq) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ob = call fastcc noundef ptr @_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 24) #51 ; 6 uses
  store i64 %.sroa.9145.0, ptr %i.ob, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  store ptr %.sroa.6144.0, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.411.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  store i64 %.sroa.9145.0, ptr %.sroa.411.0..sroa_idx12, align 8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !34284)
  store ptr %i.ob, ptr %i.l, align 8, !alias.scope !34287
  %.sroa.4156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.ob, ptr %.sroa.4156.0..sroa_idx, align 8, !alias.scope !34287
  %.sroa.5157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 1, ptr %.sroa.5157.0..sroa_idx, align 8, !alias.scope !34287
  %.sroa.6158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.oc, ptr %.sroa.6158.0..sroa_idx, align 8, !alias.scope !34287
  %i.od = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %.sroa.0130.0, ptr %i.od, align 8, !alias.scope !34289, !noalias !34284
  %i.oe = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr %i.ad, ptr %i.oe, align 8, !alias.scope !34289, !noalias !34284
  %i.of = call noundef i32 %i.oa(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.l) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @_RNvNtCs2vKOLqTMYjT_3std7process4exit(i32 noundef %i.of) #52
  unreachable

bb.be:                                            ; preds = %_RINvMs2_NtCs5Jw8sa4iA4K_3phf11ordered_mapINtB6_10OrderedMapReTFINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB14_6cloned6ClonedINtNtNtB18_5slice4iter4IterB2F_EEEElFENtNtNtCsgNwXemyrBWj_12clap_builder7builder7command7CommandEE12get_internaleECsl8pJiQOn4hA_9coreutils.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4172)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9173)
  switch i64 %i.fq, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit [
    i64 6, label %bb.bf
    i64 2, label %bb.bh
    i64 0, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.thread
  ]

bb.bf:                                            ; preds = %bb.be
  %i.og = load i32, ptr %i.fo, align 1
  %i.oh = xor i32 %i.og, 1701326125
  %i.oi = getelementptr i8, ptr %i.fo, i64 4
  %i.oj = load i16, ptr %i.oi, align 1
  %i.ok = zext i16 %i.oj to i32
  %i.ol = xor i32 %i.ok, 28780
  %i.om = or i32 %i.oh, %i.ol
  %i.on = icmp ne i32 %i.om, 0
  %i.oo = zext i1 %i.on to i32
  %i.op = icmp eq i32 %i.oo, 0
  br i1 %i.op, label %bb.bg, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit

bb.bg:                                            ; preds = %bb.bh, %bb.bf
  call fastcc void @_RINvCsl8pJiQOn4hA_9coreutils5usageINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBB_6cloned6ClonedINtNtNtBF_5slice4iter4IterB2c_EEEEB2_(ptr nonnull @880, i64 79, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cu, i64 noundef %i.cv) #45
  call void @_RNvNtCs2vKOLqTMYjT_3std7process4exit(i32 noundef 0) #52
  unreachable

bb.bh:                                            ; preds = %bb.be
  %i.oq = load i16, ptr %i.fo, align 1
  %i.or = icmp ne i16 %i.oq, 26669
  %i.os = zext i1 %i.or to i32
  %i.ot = icmp eq i32 %i.os, 0
  br i1 %i.ot, label %bb.bg, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.be, %bb.bh, %bb.bf
  %rhsc = load i8, ptr %i.fo, align 1
  %i.ou = icmp eq i8 %rhsc, 45
  br i1 %i.ou, label %bb.bi, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.thread

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.thread: ; preds = %bb.be, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit
  call void @_RNvNtNtCsdSs45UTkAAB_9coreutils6common10validation9not_found(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6144.0, i64 noundef %.sroa.9145.0) #52
  unreachable

bb.bi:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit
  call void @_RNvNtNtCsdSs45UTkAAB_9coreutils6common10validation19unrecognized_option(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cu, i64 noundef %i.cv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6144.0, i64 noundef %.sroa.9145.0) #52
  unreachable

bb.bj:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.gs, ptr %i.p, align 8
  %i.ov = ptrtoint ptr %i.gs to i64               ; 3 uses
  %i.ow = and i64 %i.ov, 3
  switch i64 %i.ow, label %default.unreachable [
    i64 2, label %bb.bk
    i64 3, label %bb.bl
    i64 0, label %bb.bm
    i64 1, label %bb.bn
  ], !prof !91

bb.bk:                                            ; preds = %bb.bj
  %i.ox = lshr i64 %i.ov, 32
  %i.oy = trunc nuw i64 %i.ox to i32
  %i.oz = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #45
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %i.pb = load ptr, ptr %i.pa, align 8, !nonnull !12, !noundef !12
  %i.pc = call noundef i8 %i.pb(i32 noundef %i.oy) #45, !inline_history !5493
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit

bb.bl:                                            ; preds = %bb.bj
  %i.pd = lshr i64 %i.ov, 32
  %i.pe = icmp ult ptr %i.gs, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.pd to i8  ; 2 uses
  %i.pf = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.pe)
  call void @llvm.assume(i1 %i.pf)
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit

bb.bm:                                            ; preds = %bb.bj
  %i.pg = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.ph = load i8, ptr %i.pg, align 8, !range !605, !noundef !12
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit

bb.bn:                                            ; preds = %bb.bj
  %i.pi = getelementptr i8, ptr %i.gs, i64 31
  %i.pj = load i8, ptr %i.pi, align 8, !range !605, !noundef !12
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.bk, %bb.bl, %bb.bm, %bb.bn
  %.sroa.0.0.i114 = phi i8 [ %i.pc, %bb.bk ], [ %switch.idx.cast.i.i.i, %bb.bl ], [ %i.ph, %bb.bm ], [ %i.pj, %bb.bn ]
  %.not58 = icmp eq i8 %.sroa.0.0.i114, 11
  br i1 %.not58, label %bb.bp, label %bb.bq

bb.bo:                                            ; preds = %bb.bp, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @_RNvNtCs2vKOLqTMYjT_3std7process4exit(i32 noundef 0) #52
  unreachable

bb.bp:                                            ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit
  call void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.bo

bb.bq:                                            ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error11strip_errno(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.n, ptr %i.m, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.448.0..sroa_idx, align 8
  %i.pk = call noundef ptr @_RNvXso_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StderrNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @215, ptr noundef nonnull %i.m) #45
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils(ptr %i.pk) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @_RNvNtCs2vKOLqTMYjT_3std7process4exit(i32 noundef 1) #52
  unreachable

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.ao, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.pl = call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() #45
  store ptr %i.pl, ptr %i.y, align 8
  %i.pm = call noundef nonnull align 8 ptr @_RNvMsa_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stdout4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y) #45
  store ptr %i.pm, ptr %i.z, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.pn = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.br

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit104.thread222: ; preds = %bb.ap, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit104
  %.sroa.8149.0226 = phi ptr [ %i.gf, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit104 ], [ inttoptr (i64 1 to ptr), %bb.ap ]
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils(i64 %.val2.i99, ptr nonnull %.sroa.8149.0226) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.aa, align 8
  %i.pq = call noundef ptr @_RNvXso_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StderrNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @883, ptr noundef nonnull inttoptr (i64 57 to ptr)) #45
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils(ptr %i.pq) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @_RNvNtCs2vKOLqTMYjT_3std7process4exit(i32 noundef 1) #52
  unreachable

bb.br:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit, %bb.ce
  %.sroa.0151.0.idx250 = phi i64 [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit ], [ %.sroa.0151.0.add, %bb.ce ] ; 2 uses
  %.sroa.0151.0.ptr = getelementptr inbounds nuw i8, ptr @880, i64 %.sroa.0151.0.idx250
  %.sroa.0151.0.add = add nuw nsw i64 %.sroa.0151.0.idx250, 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %.sroa.0151.0.ptr, ptr %i.x, align 8, !captures !1848
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.x, ptr %i.w, align 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.436.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !34290
  store ptr %i.z, ptr %i.d, align 8, !noalias !34290
  store ptr null, ptr %i.pn, align 8, !noalias !34290
  %i.pr = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @325, ptr noundef nonnull @6, ptr noundef nonnull %i.w) #45
  %i.ps = load ptr, ptr %i.pn, align 8, !noalias !34290, !noundef !12 ; 11 uses
  %.not.i5.i = icmp eq ptr %i.ps, null            ; 2 uses
  br i1 %i.pr, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  br i1 %.not.i5.i, label %bb.bx, label %bb.bz, !prof !48

bb.bt:                                            ; preds = %bb.br
  br i1 %.not.i5.i, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECsl8pJiQOn4hA_9coreutils.exit.i.thread, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34295
  %i.pt = ptrtoint ptr %i.ps to i64               ; 2 uses
  %i.pu = and i64 %i.pt, 3
  switch i64 %i.pu, label %default.unreachable [
end_hunk_4
