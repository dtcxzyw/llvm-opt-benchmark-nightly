Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.12?download=true
inline.NumInlined: 2412
inline.NumDeleted: 784
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext13report_errors:bb.a
_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit23: ; preds = %bb.ah
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit23
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %bb.f, %.body, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.al:                                            ; preds = %bb.n
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext16run_if_statement(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(304) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = tail call noundef nonnull align 8 ptr @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  tail call void @_RNvNtCs8frGy5WneL6_4fish5trace16trace_if_enabled(ptr noundef nonnull align 8 %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @81, i64 noundef 2)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.val2378 = load i32, ptr %i.d, align 8, !noundef !5
  %.not.i79 = icmp eq i32 %.val2378, 0
  br i1 %.not.i79, label %.lr.ph82, label %.thread56

.lr.ph82:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.g = load i64, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.e, align 8, !nonnull !5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph82, %bb.t
  %.sroa.01.081 = phi i64 [ 0, %.lr.ph82 ], [ %i.ba, %bb.t ] ; 4 uses
  %.sroa.07.080 = phi ptr [ %2, %.lr.ph82 ], [ %i.be, %bb.t ] ; 4 uses
  %i.i = tail call noundef zeroext i1 @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext12check_cancel(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  br i1 %i.i, label %.thread56, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader26fish_is_unwinding_for_exit()
  br i1 %i.j, label %.thread56, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef nonnull align 8 ptr @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1) ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.m = load i8, ptr %i.l, align 8, !range !711, !noundef !5
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.thread56, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 143
  %i.p = load i8, ptr %i.o, align 1, !range !711, !noundef !5
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.thread56, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 145
  %i.s = load i8, ptr %i.r, align 1, !range !91, !noundef !5
  %.not1.i = icmp eq i8 %i.s, 0
  br i1 %.not1.i, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext19check_end_execution.exit, label %.thread56

_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext19check_end_execution.exit: ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.07.080, i64 16
  %i.u = tail call fastcc noundef i8 @_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext19run_job_conjunction(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.t)
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.h, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext18run_andor_job_list.exit.thread

bb.g:                                             ; preds = %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext18run_andor_job_list.exit.thread110
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.07.080, i64 192
  br label %.critedge

bb.h:                                             ; preds = %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext19check_end_execution.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.07.080, i64 176
  tail call void @llvm.experimental.noalias.scope.decl(metadata !989)
  %.val.i = load ptr, ptr %i.x, align 8, !alias.scope !989, !noalias !992, !nonnull !5, !noundef !5 ; 2 uses
  %i.y = getelementptr i8, ptr %.sroa.07.080, i64 184
  %.val3.i = load i64, ptr %i.y, align 8, !alias.scope !989, !noalias !992, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %.val3.i, 160
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx
  %i.aa = icmp eq i64 %.val3.i, 0
  br i1 %i.aa, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext18run_andor_job_list.exit.thread110, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.ab = load i32, ptr %i.d, align 8, !alias.scope !995, !noalias !998, !noundef !5
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.split, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext18run_andor_job_list.exit.thread

.lr.ph.splitthread-pre-split:                     ; preds = %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext30test_and_run_1_job_conjunction.exit
  %.val.i43.pr = load i32, ptr %i.d, align 8, !alias.scope !995, !noalias !998
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %.val.i43 = phi i32 [ %.val.i43.pr, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ]
  %.sroa.01.0.i77 = phi ptr [ %i.ad, %.lr.ph.splitthread-pre-split ], [ %.val.i, %.lr.ph ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i77, i64 160 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  %.not.i.i = icmp eq i32 %.val.i43, 0
  br i1 %.not.i.i, label %bb.i, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext30test_and_run_1_job_conjunction.exit

bb.i:                                             ; preds = %.lr.ph.split
  %i.ae = tail call noundef zeroext i1 @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext12check_cancel(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !1002, !inline_history !1003
  br i1 %i.ae, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext30test_and_run_1_job_conjunction.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = tail call noundef zeroext i1 @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader26fish_is_unwinding_for_exit(), !noalias !1002, !inline_history !1003
  br i1 %i.af, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext30test_and_run_1_job_conjunction.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = tail call noundef nonnull align 8 ptr @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1), !noalias !1002, !inline_history !1003 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 144
  %i.ai = load i8, ptr %i.ah, align 8, !range !711, !noalias !1002, !noundef !5
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext30test_and_run_1_job_conjunction.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 143
  %i.al = load i8, ptr %i.ak, align 1, !range !711, !noalias !1002, !noundef !5
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext30test_and_run_1_job_conjunction.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 145
  %i.ao = load i8, ptr %i.an, align 1, !range !91, !noalias !1002, !noundef !5
  %.not1.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not1.i.i, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext19check_end_execution.exit.i, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext30test_and_run_1_job_conjunction.exit

_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext19check_end_execution.exit.i: ; preds = %bb.m
  %i.ap = load i32, ptr %.sroa.01.0.i77, align 8, !range !1004, !alias.scope !1001, !noalias !1005, !noundef !5
  %.not4.i = icmp eq i32 %i.ap, 2
  br i1 %.not4.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext19check_end_execution.exit.i
  %i.aq = tail call noundef nonnull align 8 ptr @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1), !noalias !1002, !inline_history !1003
  %i.ar = tail call noundef i32 @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser11last_status(ptr noundef nonnull align 8 %i.aq), !noalias !1002, !inline_history !1003 ; 2 uses
  %i.as = getelementptr i8, ptr %.sroa.01.0.i77, i64 12
  %.val5.i = load i8, ptr %i.as, align 4, !range !1006, !alias.scope !1001, !noalias !1005, !noundef !5
  switch i8 %.val5.i, label %bb.o [
    i8 1, label %.split
    i8 15, label %bb.p
  ], !prof !1007

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #34, !noalias !1002, !inline_history !1003
  unreachable

.split:                                           ; preds = %bb.n
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %bb.q, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext30test_and_run_1_job_conjunction.exit

bb.p:                                             ; preds = %bb.n
  %i.at = icmp eq i32 %i.ar, 0
  br i1 %i.at, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext30test_and_run_1_job_conjunction.exit, label %bb.q

bb.q:                                             ; preds = %.split, %bb.p, %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext19check_end_execution.exit.i
  %i.au = tail call fastcc noundef i8 @_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext19run_job_conjunction(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.sroa.01.0.i77)
  %i.av = icmp eq i8 %i.au, 0
  br label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext30test_and_run_1_job_conjunction.exit

_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext30test_and_run_1_job_conjunction.exit: ; preds = %bb.j, %bb.i, %bb.k, %bb.m, %.lr.ph.split, %bb.l, %.split, %bb.p, %bb.q
  %.sroa.0.0.i45 = phi i1 [ %i.av, %bb.q ], [ true, %.split ], [ true, %bb.p ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.k ], [ false, %bb.m ], [ false, %.lr.ph.split ], [ false, %bb.l ]
  %i.aw = icmp eq ptr %i.ad, %i.z
  br i1 %i.aw, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext18run_andor_job_list.exit, label %.lr.ph.splitthread-pre-split, !llvm.loop !1008

_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext18run_andor_job_list.exit: ; preds = %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext30test_and_run_1_job_conjunction.exit
  br i1 %.sroa.0.0.i45, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext18run_andor_job_list.exit.thread110, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext18run_andor_job_list.exit.thread

_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext18run_andor_job_list.exit.thread110: ; preds = %bb.h, %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext18run_andor_job_list.exit
  %i.ax = tail call noundef nonnull align 8 ptr @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  %i.ay = tail call noundef i32 @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser11last_status(ptr noundef nonnull align 8 %i.ax)
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.g, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext18run_andor_job_list.exit.thread

_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext18run_andor_job_list.exit.thread: ; preds = %.lr.ph, %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext19check_end_execution.exit, %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext18run_andor_job_list.exit, %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext18run_andor_job_list.exit.thread110
  %i.ba = add i64 %.sroa.01.081, 1
  %i.bb = icmp eq i64 %.sroa.01.081, -1
  br i1 %i.bb, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext18run_andor_job_list.exit.thread
  %exitcond.not = icmp eq i64 %.sroa.01.081, %i.g
  br i1 %exitcond.not, label %.thread56, label %bb.t

bb.s:                                             ; preds = %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext18run_andor_job_list.exit.thread
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #34
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw [224 x i8], ptr %i.h, i64 %.sroa.01.081
  %i.bd = tail call noundef nonnull align 8 ptr @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  tail call void @_RNvNtCs8frGy5WneL6_4fish5trace16trace_if_enabled(ptr noundef nonnull align 8 %i.bd, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @84, i64 noundef 7)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.val23 = load i32, ptr %i.d, align 8, !noundef !5
  %.not.i = icmp eq i32 %.val23, 0
  br i1 %.not.i, label %bb.b, label %.thread56

.thread56:                                        ; preds = %bb.c, %bb.b, %bb.d, %bb.f, %bb.t, %bb.e, %bb.r, %bb.a
  %.sroa.0.054 = phi i8 [ 2, %bb.a ], [ 0, %bb.r ], [ 1, %bb.e ], [ 2, %bb.t ], [ 1, %bb.f ], [ 2, %bb.d ], [ 2, %bb.b ], [ 2, %bb.c ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.bg = load i32, ptr %i.bf, align 8, !range !1004, !noundef !5
  %.not18 = icmp eq i32 %i.bg, 2
  %i.bh = tail call noundef nonnull align 8 ptr @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1) ; 2 uses
  br i1 %.not18, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %.thread56
  tail call void @_RNvNtCs8frGy5WneL6_4fish5trace16trace_if_enabled(ptr noundef nonnull align 8 %i.bh, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @85, i64 noundef 4)
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 256
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.u
  %.sroa.0.055 = phi i8 [ %.sroa.0.054, %bb.u ], [ 0, %bb.g ]
  %.sroa.011.2 = phi ptr [ %i.bi, %bb.u ], [ %i.w, %bb.g ] ; 2 uses
  %i.bj = tail call noundef nonnull align 8 ptr @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 4, ptr %i.bk, align 8, !alias.scope !1010
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i8 0, ptr %i.bm, align 1, !alias.scope !1010
  store ptr null, ptr %i.a, align 8, !alias.scope !1010
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i8 0, i64 16, i1 false), !alias.scope !1010
  %i.bn = call noundef i64 @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser10push_block(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %i.bj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val.i29 = load ptr, ptr %.sroa.011.2, align 8, !alias.scope !1013, !noalias !1016, !nonnull !5, !noundef !5 ; 2 uses
  %i.bo = getelementptr i8, ptr %.sroa.011.2, i64 8
  %.val3.i30 = load i64, ptr %i.bo, align 8, !alias.scope !1013, !noalias !1016, !noundef !5 ; 2 uses
  %.idx105 = mul nuw nsw i64 %.val3.i30, 160
  %i.bp = getelementptr inbounds nuw i8, ptr %.val.i29, i64 %.idx105
  %i.bq = icmp eq i64 %.val3.i30, 0
  br i1 %i.bq, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext12run_job_list.exit, label %.lr.ph104

.lr.ph104:                                        ; preds = %.critedge, %.lr.ph104
  %.sroa.01.0.i31103 = phi ptr [ %i.br, %.lr.ph104 ], [ %.val.i29, %.critedge ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i31103, i64 160 ; 2 uses
  %i.bs = call fastcc noundef i8 @_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext30test_and_run_1_job_conjunction(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %.sroa.01.0.i31103) ; 0 uses
  %i.bt = icmp eq ptr %i.br, %i.bp
  br i1 %i.bt, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext12run_job_list.exit, label %.lr.ph104

_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext12run_job_list.exit: ; preds = %.lr.ph104, %.critedge
  %.val22 = load i32, ptr %i.d, align 8, !noundef !5
  %.not.i33 = icmp eq i32 %.val22, 0
  br i1 %.not.i33, label %bb.v, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext19check_end_execution.exit37

bb.v:                                             ; preds = %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext12run_job_list.exit
  %i.bu = call noundef zeroext i1 @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext12check_cancel(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  br i1 %i.bu, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext19check_end_execution.exit37, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bv = call noundef zeroext i1 @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader26fish_is_unwinding_for_exit()
  br i1 %i.bv, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext19check_end_execution.exit37, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bw = call noundef nonnull align 8 ptr @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1) ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 144
  %i.by = load i8, ptr %i.bx, align 8, !range !711, !noundef !5
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext19check_end_execution.exit37, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 143
  %i.cb = load i8, ptr %i.ca, align 1, !range !711, !noundef !5
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext19check_end_execution.exit37, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 145
  %i.ce = load i8, ptr %i.cd, align 1, !range !91, !noundef !5
  %.not1.i35 = icmp eq i8 %i.ce, 0
  %spec.select = select i1 %.not1.i35, i8 %.sroa.0.055, i8 1
  br label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext19check_end_execution.exit37

_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext19check_end_execution.exit37: ; preds = %bb.z, %bb.w, %bb.v, %bb.x, %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext12run_job_list.exit, %bb.y
  %i.cf = phi i8 [ %spec.select, %bb.z ], [ 2, %bb.w ], [ 2, %bb.v ], [ 2, %bb.x ], [ 2, %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext12run_job_list.exit ], [ 1, %bb.y ]
  %i.cg = call noundef nonnull align 8 ptr @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  call void @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser9pop_block(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %i.cg, i64 noundef %i.bn)
  br label %bb.ab

bb.aa:                                            ; preds = %.thread56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs1_NtNtCs8frGy5WneL6_4fish3env3varNtB5_8Statuses4just(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, i32 noundef 0)
  call void @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser17set_last_statuses(ptr noundef nonnull align 8 %i.bh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ab

bb.ab:                                            ; preds = %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext19check_end_execution.exit37, %bb.aa
  %.sroa.0.1 = phi i8 [ %i.cf, %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext19check_end_execution.exit37 ], [ %.sroa.0.054, %bb.aa ]
  %i.ch = call noundef nonnull align 8 ptr @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  call void @_RNvNtCs8frGy5WneL6_4fish5trace16trace_if_enabled(ptr noundef nonnull align 8 %i.ch, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @86, i64 noundef 6)
  %.val = load i32, ptr %i.d, align 8, !noundef !5
  %.not.i38 = icmp eq i32 %.val, 0
  br i1 %.not.i38, label %bb.ac, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext19check_end_execution.exit42

bb.ac:                                            ; preds = %bb.ab
  %i.ci = call noundef zeroext i1 @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext12check_cancel(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  br i1 %i.ci, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext19check_end_execution.exit42, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cj = call noundef zeroext i1 @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader26fish_is_unwinding_for_exit()
  br i1 %i.cj, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext19check_end_execution.exit42, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ck = call noundef nonnull align 8 ptr @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1) ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 144
  %i.cm = load i8, ptr %i.cl, align 8, !range !711, !noundef !5
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext19check_end_execution.exit42, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 143
  %i.cp = load i8, ptr %i.co, align 1, !range !711, !noundef !5
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext19check_end_execution.exit42, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 145
  %i.cs = load i8, ptr %i.cr, align 1, !range !91, !noundef !5
  %.not1.i40 = icmp eq i8 %i.cs, 0
  %spec.select69 = select i1 %.not1.i40, i8 %.sroa.0.1, i8 1
  br label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext19check_end_execution.exit42

_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext19check_end_execution.exit42: ; preds = %bb.ag, %bb.ad, %bb.ac, %bb.ae, %bb.ab, %bb.af
  %i.ct = phi i8 [ %spec.select69, %bb.ag ], [ 2, %bb.ad ], [ 2, %bb.ac ], [ 2, %bb.ae ], [ 2, %bb.ab ], [ 1, %bb.af ]
  ret i8 %i.ct
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 4) i8 @_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext19run_begin_statement(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  tail call void @_RNvNtCs8frGy5WneL6_4fish5trace16trace_if_enabled(ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @100, i64 noundef 5)
  %i.c = tail call noundef nonnull align 8 ptr @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtCs8frGy5WneL6_4fish6parserNtB4_5Block11scope_block(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, i8 noundef 9)
  %i.d = call noundef i64 @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser10push_block(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val.i = load ptr, ptr %2, align 8, !alias.scope !1019, !noalias !1022, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val3.i = load i64, ptr %i.e, align 8, !alias.scope !1019, !noalias !1022, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %.val3.i, 160
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx
  %i.g = icmp eq i64 %.val3.i, 0
  br i1 %i.g, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext12run_job_list.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.0.i1 = phi ptr [ %i.h, %.lr.ph ], [ %.val.i, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i1, i64 160 ; 2 uses
  %i.i = call fastcc noundef i8 @_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext30test_and_run_1_job_conjunction(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %.sroa.01.0.i1)
  %i.j = icmp eq ptr %i.h, %i.f
  br i1 %i.j, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext12run_job_list.exit, label %.lr.ph

_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext12run_job_list.exit: ; preds = %.lr.ph, %bb.a
  %.sroa.0.0.i.lcssa = phi i8 [ 0, %bb.a ], [ %i.i, %.lr.ph ]
  %i.k = call noundef nonnull align 8 ptr @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  call void @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser9pop_block(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %i.k, i64 noundef %i.d)
  %i.l = call noundef nonnull align 8 ptr @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  call void @_RNvNtCs8frGy5WneL6_4fish5trace16trace_if_enabled(ptr noundef nonnull align 8 %i.l, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @101, i64 noundef 9)
  ret i8 %.sroa.0.0.i.lcssa
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 4) i8 @_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext19run_block_statement(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [1 x i8], align 1                 ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [48 x i8], align 8                ; 15 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 9 uses
  %i.p = alloca [48 x i8], align 8                ; 13 uses
  %i.q = alloca [24 x i8], align 8                ; 10 uses
  %i.r = alloca [24 x i8], align 8                ; 12 uses
  %i.s = alloca [24 x i8], align 8                ; 10 uses
  %i.t = alloca [24 x i8], align 8                ; 15 uses
  %i.u = alloca [24 x i8], align 8                ; 12 uses
  %i.v = alloca [40 x i8], align 8                ; 7 uses
  %i.w = alloca [32 x i8], align 8                ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 16 uses
  %i.y = alloca [1 x i8], align 1                 ; 3 uses
  %i.z = alloca [1 x i8], align 1                 ; 3 uses
  %i.aa = alloca [1 x i8], align 1                ; 3 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [40 x i8], align 8               ; 7 uses
  %i.ad = alloca [56 x i8], align 8               ; 5 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [1 x i8], align 1                ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 6 uses
  %i.ah = alloca [32 x i8], align 8               ; 8 uses
end_hunk_0
begin_hunk_1_@_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext22populate_plain_process:bb.a
bb.br:                                            ; preds = %bb.bp
  %i.gm = load i64, ptr %i.bd, align 8, !range !4, !alias.scope !1430, !noalias !1410, !noundef !5
  %i.gn = icmp eq i64 %i.gm, -1
  br i1 %i.gn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit79.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i75.i unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %.body76.i unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i75.i: ; preds = %bb.bs
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit79.i unwind label %bb.bv

.body76.i:                                        ; preds = %bb.bv, %bb.bt, %bb.bn
  %.pn38.i = phi { ptr, i32 } [ %i.gf, %bb.bn ], [ %i.gq, %bb.bv ], [ %i.go, %bb.bt ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bf) #36
          to label %.thread15.i unwind label %bb.at

bb.bv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i75.i
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %.body76.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit79.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i75.i, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !1410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !1410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false), !noalias !1410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !1410
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i81.i unwind label %bb.bw

bb.bw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit79.i
  %i.gr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %.body82.i unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i81.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit79.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit85.i unwind label %bb.by

bb.by:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i81.i
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %.body82.i

.body82.i:                                        ; preds = %bb.by, %bb.bw
  %eh.lpad-body83.i = phi { ptr, i32 } [ %i.gt, %bb.by ], [ %i.gr, %bb.bw ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false), !noalias !1410
  br label %.thread15.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit85.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i81.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false), !noalias !1410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !1410
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32
  %i.gu = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 121) 48, i64 noundef 8) #32 ; 3 uses
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %bb.bz, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit87.i, !prof !9

bb.bz:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit85.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #35
          to label %.noexc86.i unwind label %.thread29.i

.noexc86.i:                                       ; preds = %bb.bz
  unreachable

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit87.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit85.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gu, ptr noundef nonnull align 8 dereferenceable(48) %i.bh, i64 48, i1 false)
  store i64 1, ptr %i.bc, align 8, !noalias !1410
  %i.gw = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.gu, ptr %i.gw, align 8, !noalias !1410
  %i.gx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 1, ptr %i.gx, align 8, !noalias !1410
  invoke fastcc void @_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext13report_errors(ptr nonnull readonly %.24.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, i32 noundef 123, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bc)
          to label %bb.cb unwind label %bb.ca

bb.ca:                                            ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit87.i
  %i.gy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bc) #36
          to label %.body71.i unwind label %bb.at

bb.cb:                                            ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit87.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %bb.cd unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.gz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %.body71.i unwind label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEEB1c_.exit92.i unwind label %bb.bk

bb.ce:                                            ; preds = %bb.cc
  %i.ha = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEEB1c_.exit92.i: ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !1410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !1410
  br label %bb.q

.thread15.i:                                      ; preds = %.body82.i, %.body76.i, %.thread29.i
  %.pn4018.i = phi { ptr, i32 } [ %lpad.thr_comm27.i, %.thread29.i ], [ %.pn38.i, %.body76.i ], [ %eh.lpad-body83.i, %.body82.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bh) #36
          to label %.body71.i unwind label %bb.at

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEEB1c_.exit.i: ; preds = %bb.aw, %bb.q
  %.sroa.0.1.i = phi i8 [ %.sroa.0.0.i, %bb.q ], [ 0, %bb.aw ] ; 2 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %bb.cg unwind label %bb.cf

.body:                                            ; preds = %.thread102, %bb.oj, %.thread16, %bb.ok, %bb.cf, %bb.ax, %bb.r, %.body71.i, %bb.cs
  %.pn59 = phi { ptr, i32 } [ %.pn5596, %bb.cs ], [ %.pn42.i, %.body71.i ], [ %i.hb, %bb.cf ], [ %i.fd, %bb.ax ], [ %i.do, %bb.r ], [ %.pn5720, %bb.ok ], [ %.pn5720, %.thread16 ], [ %.pn5720, %bb.oj ], [ %eh.lpad-body156, %.thread102 ]
  %.sroa.018.0 = phi i8 [ %.sroa.018.1198, %bb.cs ], [ 1, %.body71.i ], [ %.sroa.018.1, %bb.cf ], [ 1, %bb.ax ], [ 1, %bb.r ], [ %.sroa.018.221, %bb.ok ], [ %.sroa.018.221, %.thread16 ], [ %.sroa.018.221, %bb.oj ], [ 0, %.thread102 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ck) #36
          to label %.body161 unwind label %bb.lj

bb.cf:                                            ; preds = %bb.lh, %bb.cn, %.noexc85, %bb.cl, %bb.ck, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEEB1c_.exit.i, %bb.co, %bb.ch
  %.sroa.018.1 = phi i8 [ 1, %bb.co ], [ %.sroa.018.4, %bb.lh ], [ 1, %bb.cn ], [ 1, %bb.ch ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEEB1c_.exit.i ], [ 1, %bb.ck ], [ 1, %bb.cl ], [ 1, %.noexc85 ]
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cg:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEEB1c_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !1410
  %i.hc = icmp eq i8 %.sroa.0.1.i, 0
  br i1 %i.hc, label %bb.ch, label %bb.ol

bb.ch:                                            ; preds = %bb.cg
  %i.hd = invoke noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish4proc7no_exec()
          to label %bb.ci unwind label %bb.cf

bb.ci:                                            ; preds = %bb.ch
  br i1 %i.hd, label %bb.ol, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.he = load i64, ptr %.sroa.532.0..sroa_idx, align 8, !noundef !5 ; 4 uses
  %i.hf = icmp ult i64 %i.he, 2305843009213693952
  call void @llvm.assume(i1 %i.hf)
  %i.hg = icmp eq i64 %i.he, 0
  br i1 %i.hg, label %bb.co, label %bb.ck, !prof !9

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  %i.hh = load ptr, ptr %.sroa.427.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.hi = invoke noundef i8 @_RNvMsr_NtCs8frGy5WneL6_4fish3astNtB5_18DecoratedStatement10decoration(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
          to label %.noexc unwind label %bb.cf

.noexc:                                           ; preds = %bb.ck
  switch i8 %i.hi, label %default.unreachable [
    i8 0, label %bb.cl
    i8 1, label %.thread11
    i8 2, label %.thread
    i8 3, label %bb.cm
  ]

default.unreachable:                              ; preds = %.noexc
  unreachable

bb.cl:                                            ; preds = %.noexc
  %i.hj = invoke noundef nonnull align 8 ptr @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0)
          to label %.noexc85 unwind label %bb.cf

.noexc85:                                         ; preds = %bb.cl
  %i.hk = invoke noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish8function6exists(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.hh, i64 noundef %i.he, ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %i.hj)
          to label %.noexc86 unwind label %bb.cf

.noexc86:                                         ; preds = %.noexc85
  br i1 %i.hk, label %.thread, label %bb.cn

bb.cm:                                            ; preds = %.noexc
  br label %.thread11

bb.cn:                                            ; preds = %.noexc86
  %i.hl = invoke noundef align 8 ptr @_RINvCs5UXtnEuoeIl_11fish_common18get_by_sorted_nameNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc11BuiltinDataEBV_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.hh, i64 noundef %i.he, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @551, i64 noundef 64)
          to label %bb.cp unwind label %bb.cf     ; 2 uses

bb.co:                                            ; preds = %bb.cj
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @135, ptr noundef nonnull inttoptr (i64 101 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #35
          to label %bb.dm unwind label %bb.cf

.thread:                                          ; preds = %.noexc86, %.noexc
  %.sink.i.ph = phi i64 [ 2, %.noexc86 ], [ 1, %.noexc ]
  store i64 %.sink.i.ph, ptr %i.cj, align 8, !alias.scope !1433, !noalias !1436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  br label %bb.cq

.thread11:                                        ; preds = %.noexc, %bb.cm
  %.sink.i.ph10 = phi i64 [ 4, %bb.cm ], [ 0, %.noexc ]
  store i64 %.sink.i.ph10, ptr %i.cj, align 8, !alias.scope !1433, !noalias !1436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  br label %bb.cr

bb.cp:                                            ; preds = %bb.cn
  %.not.i84 = icmp ne ptr %i.hl, null
  %..i = zext i1 %.not.i84 to i64
  store i64 %..i, ptr %i.cj, align 8, !alias.scope !1433, !noalias !1436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  %not..not.i84.not = icmp eq ptr %i.hl, null
  br i1 %not..not.i84.not, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %.thread, %bb.cp
  store i64 0, ptr %i.ci, align 8
  %.sroa.427.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.427.0..sroa_idx28, align 8
  %.sroa.532.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i64 0, ptr %.sroa.532.0..sroa_idx33, align 8
  br label %bb.mi

bb.cr:                                            ; preds = %.thread11, %bb.cp
  %i.hm = invoke noundef nonnull align 8 ptr @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0)
          to label %bb.cu unwind label %bb.ct

bb.cs:                                            ; preds = %.thread91
  %i.hn = trunc nuw i8 %.sroa.023.497 to i1
  br i1 %i.hn, label %.thread16, label %.body

bb.ct:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i181, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i124, %bb.di, %bb.cu, %bb.cr
  %.sroa.018.3 = phi i8 [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i181 ], [ 1, %bb.di ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i124 ], [ 1, %bb.cu ], [ 1, %bb.cr ]
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %.thread16

bb.cu:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  %i.hp = load ptr, ptr %.sroa.427.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %i.hq = load i64, ptr %.sroa.532.0..sroa_idx, align 8, !noundef !5
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 192 ; 3 uses
  invoke void @_RNvNtCs8frGy5WneL6_4fish4path17path_try_get_path(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ch, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.hp, i64 noundef %i.hq, ptr noundef nonnull %i.hr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) @52)
          to label %bb.cv unwind label %bb.ct

bb.cv:                                            ; preds = %bb.cu
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ch, i64 24 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 8, !range !633, !noundef !5
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ch, i64 28
  %.not.not = icmp eq i32 %i.ht, 0                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  store i64 0, ptr %i.cg, align 8
  %.sroa.427.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.427.0..sroa_idx30, align 8
  %.sroa.532.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i64 0, ptr %.sroa.532.0..sroa_idx35, align 8
  br i1 %.not.not, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.hv = invoke noundef i8 @_RNvMsr_NtCs8frGy5WneL6_4fish3astNtB5_18DecoratedStatement10decoration(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
          to label %bb.db unwind label %bb.da

bb.cx:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i64 24, i1 false)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cg)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.hw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cg)
          to label %.body88 unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.hx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.cx
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cg)
          to label %bb.li unwind label %bb.lk

.body116:                                         ; preds = %.body183.i, %bb.da, %.body88, %bb.dd
  %.pn = phi { ptr, i32 } [ %eh.lpad-body89, %.body88 ], [ %i.if, %bb.dd ], [ %i.hy, %bb.da ], [ %.pn88.pn.i, %.body183.i ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cg) #36
          to label %bb.lc unwind label %bb.lj

bb.da:                                            ; preds = %bb.dk, %bb.dl, %bb.dg, %bb.dc, %bb.cw
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %.body116

bb.db:                                            ; preds = %bb.cw
  %i.hz = icmp eq i8 %i.hv, 0
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ib = load i64, ptr %i.ia, align 8            ; 2 uses
  %i.ic = icmp eq i64 %i.ib, 0                    ; 2 uses
  %or.cond = select i1 %i.hz, i1 %i.ic, i1 false
  br i1 %or.cond, label %bb.dc, label %.critedge

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  %i.id = load ptr, ptr %.sroa.427.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %i.ie = load i64, ptr %.sroa.532.0..sroa_idx, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  invoke void @_RNvXs7_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStackNtB5_11Environment13get_pwd_slash(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cd, ptr noundef nonnull align 8 %i.hr)
          to label %bb.de unwind label %bb.da

bb.dd:                                            ; preds = %bb.df, %bb.de
  %i.if = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cd) #36
          to label %.body116 unwind label %bb.lj

bb.de:                                            ; preds = %bb.dc
  %i.ig = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !nonnull !5, !noundef !5
  %i.ii = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ij = load i64, ptr %i.ii, align 8, !noundef !5
  invoke void @_RNvNtCs8frGy5WneL6_4fish4path19path_as_implicit_cd(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ce, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.id, i64 noundef %i.ie, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ih, i64 noundef %i.ij, ptr noundef nonnull %i.hr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) @52)
          to label %bb.df unwind label %bb.dd

bb.df:                                            ; preds = %bb.de
  %i.ik = load i64, ptr %i.ce, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.ik, -1
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ce)
          to label %bb.dg unwind label %bb.dd

bb.dg:                                            ; preds = %bb.df
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cd)
          to label %bb.dh unwind label %bb.da

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  br i1 %.not, label %.critedge, label %bb.di

.critedge:                                        ; preds = %bb.db, %bb.dh
  %i.il = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.im = load i64, ptr %i.il, align 8, !noundef !5 ; 3 uses
  %i.in = icmp ult i64 %i.im, 2305843009213693952
  call void @llvm.assume(i1 %i.in)
  %i.io = icmp eq i64 %i.im, 0                    ; 2 uses
  %i.ip = load ptr, ptr %.sroa.427.0..sroa_idx, align 8, !nonnull !5
  %i.iq = load i64, ptr %.sroa.532.0..sroa_idx, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !nonnull !5
  %.sroa.3.0 = select i1 %i.io, i64 %i.iq, i64 %i.im ; 8 uses
  %.sroa.03.0 = select i1 %i.io, ptr %i.ip, ptr %i.is ; 4 uses
  %i.it = load i32, ptr %i.hs, align 8, !range !633, !noundef !5
  %i.iu = trunc nuw i32 %i.it to i1
  br i1 %i.iu, label %bb.dj, label %bb.dl, !prof !42

bb.di:                                            ; preds = %bb.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ch)
          to label %bb.ll unwind label %bb.ct

bb.dj:                                            ; preds = %.critedge
  %i.iv = load i32, ptr %i.hu, align 4            ; 3 uses
  %i.iw = load atomic ptr, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8
  %.not.i91 = icmp eq ptr %i.iw, @130
  br i1 %.not.i91, label %bb.dn, label %bb.dk, !prof !42

bb.dk:                                            ; preds = %bb.dj
  invoke void @_RNvNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @130)
          to label %bb.dn unwind label %bb.da

bb.dl:                                            ; preds = %.critedge
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #35
          to label %bb.dm unwind label %bb.da

bb.dm:                                            ; preds = %bb.lu, %bb.lq, %bb.dl, %bb.co
  unreachable

bb.dn:                                            ; preds = %bb.dj, %bb.dk
  %i.ix = sext i32 %i.iv to i64
  %i.iy = shl nsw i64 %i.ix, 32
  %i.iz = or disjoint i64 %i.iy, 2
  %i.ja = inttoptr i64 %i.iz to ptr
  call void @llvm.experimental.noalias.scope.decl(metadata !1440)
  %i.jb = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc117.i unwind label %bb.do

.noexc117.i:                                      ; preds = %bb.dn
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8, !nonnull !5, !noundef !5
  %i.je = invoke noundef i8 %i.jd(i32 noundef %i.iv)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i unwind label %bb.do, !inline_history !1443

.body183.i:                                       ; preds = %.thread79.i, %bb.kx, %bb.kv, %bb.kg, %.thread61.i, %bb.kc, %bb.ka, %bb.jl, %.thread43.i, %bb.jh, %bb.jf, %bb.iq, %bb.ih, %bb.ib, %.body.i102, %bb.do
  %.pn88.pn.i = phi { ptr, i32 } [ %.pn8864.i, %.thread61.i ], [ %lpad.thr_comm.split-lp74.i, %bb.jl ], [ %.pn70.i, %.body.i102 ], [ %.pn8246.i, %.thread43.i ], [ %lpad.thr_comm.split-lp56.i, %bb.iq ], [ %.pn7682.i, %.thread79.i ], [ %lpad.thr_comm.split-lp92.i, %bb.kg ], [ %i.qw, %bb.ib ], [ %i.jf, %bb.do ], [ %i.qy, %bb.ih ], [ %i.sy, %bb.jf ], [ %i.sz, %bb.jh ], [ %i.ue, %bb.ka ], [ %i.uf, %bb.kc ], [ %i.vk, %bb.kv ], [ %i.vl, %bb.kx ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish(ptr nonnull %i.ja) #36
          to label %.body116 unwind label %.loopexit.split-lp98.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.do:                                            ; preds = %.loopexit113.i, %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit.i, %bb.im, %bb.il, %bb.ii, %bb.ic, %.noexc117.i, %bb.dn
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %.body183.i

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i: ; preds = %.noexc117.i
  %.not.i93 = icmp eq i8 %i.je, 0
  br i1 %.not.i93, label %bb.dp, label %bb.ik

bb.dp:                                            ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1444
  store i64 0, ptr %i.ac, align 8, !noalias !1444
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.jg, align 8, !noalias !1444
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 6 uses
  store i64 0, ptr %i.jh, align 8, !noalias !1444
end_hunk_1
