Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/pep440_rs-c1a74f8115aa0555.pep440_rs.c28d262894fede59-cgu.01?download=true
inline.NumInlined: 217
inline.NumDeleted: 118
begin_hunk_0_@_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser13parse_pattern:bb.a

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store ptr %i.it, ptr %0, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.iu, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.o

bb.ci:                                            ; preds = %bb.by, %bb.cd, %bb.cb, %bb.bx
  %lpad.thr_comm155 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgHAIXRTqFF5_9pep440_rs(ptr noalias noundef align 8 dereferenceable(24) %i.t) #24
          to label %.thread129 unwind label %bb.cj

bb.cj:                                            ; preds = %.thread129, %bb.ci
  %i.iv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ck:                                            ; preds = %bb.ax, %bb.bl, %bb.o
  ret void

bb.cl:                                            ; preds = %.thread129
  resume { ptr, i32 } %.pn128

.thread129:                                       ; preds = %.thread133.loopexit, %.thread133.loopexit.split-lp, %bb.bz, %bb.ci, %bb.j
  %.pn128 = phi { ptr, i32 } [ %i.bs, %bb.j ], [ %lpad.thr_comm155, %bb.ci ], [ %lpad.thr_comm.split-lp156, %bb.bz ], [ %lpad.loopexit, %.thread133.loopexit ], [ %lpad.loopexit.split-lp, %.thread133.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgHAIXRTqFF5_9pep440_rs7version6ParserEBF_(ptr noalias noundef align 8 dereferenceable(160) %1) #24
          to label %bb.cl unwind label %bb.cj
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser18bump_if_string_set(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(272) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !3 ; 7 uses
  %i.f = icmp ugt i64 %i.e, %i.c
  br i1 %i.f, label %bb.j, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3
  %i.i = sub nuw i64 %i.c, %i.e                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %.not.i = icmp eq i64 %i.c, %i.e
  br i1 %.not.i, label %_RNvMso_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_9StringSet11starts_with.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !395, !noalias !394, !noundef !3 ; 3 uses
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !range !13, !alias.scope !394, !noalias !395, !noundef !3
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %_RNvMso_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_9StringSet11starts_with.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !394, !noalias !395, !nonnull !3, !align !12, !noundef !3 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !394, !noalias !395, !noundef !3 ; 4 uses
  %.idx.i = shl nuw nsw i64 %i.s, 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %_RNvMso_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_9StringSet11starts_with.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.v = add i8 %i.k, -65
  %i.w = icmp ult i8 %i.v, 26
  %i.x = select i1 %i.w, i8 32, i8 0
  %.sroa.010.0.i = or i8 %i.x, %i.k
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.thread.i, %.lr.ph.i
  %.sroa.0.01734.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.ab, %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.thread.i ] ; 3 uses
  %.sroa.8.033.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ac, %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.thread.i ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.01734.i, i64 16 ; 2 uses
  %i.ac = add nuw nsw i64 %.sroa.8.033.i, 1
  %i.ad = load ptr, ptr %.sroa.0.01734.i, align 8, !noalias !394, !nonnull !3, !noundef !3 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.01734.i, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !394, !noundef !3 ; 3 uses
  %.not15.i = icmp eq i64 %i.af, 0
  br i1 %.not15.i, label %bb.g, label %bb.f

.loopexit.sink.split.i:                           ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !396
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.ag = load i8, ptr %i.ad, align 1, !noalias !394, !noundef !3 ; 2 uses
  %i.ah = add i8 %i.ag, -65
  %i.ai = icmp ult i8 %i.ah, 26
  %i.aj = select i1 %i.ai, i8 32, i8 0
  %.sroa.09.0.i = or i8 %i.aj, %i.ag
  %i.ak = icmp ne i8 %.sroa.09.0.i, %.sroa.010.0.i
  %.not.i.i = icmp samesign ugt i64 %i.af, %i.i
  %or.cond.i = select i1 %i.ak, i1 true, i1 %.not.i.i
  br i1 %or.cond.i, label %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.thread.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #21, !noalias !394
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !396
  call void @_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3zipRShBN_ECsgHAIXRTqFF5_9pep440_rs(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef range(i64 1, -9223372036854775808) %i.af, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef range(i64 0, -9223372036854775808) %i.i), !noalias !394
  call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %i.al = load i64, ptr %i.z, align 8, !alias.scope !398, !noalias !396, !noundef !3 ; 3 uses
  %.promoted.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !398, !noalias !396 ; 3 uses
  %.val2.i.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !397, !noalias !396, !nonnull !3
  %.val.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !397, !noalias !396, !nonnull !3
  %umax.i.i.i = call i64 @llvm.umax.i64(i64 %.promoted.i.i.i, i64 %i.al)
  %exitcond.not.i2.not.i.i = icmp ult i64 %.promoted.i.i.i, %i.al
  br i1 %exitcond.not.i2.not.i.i, label %.lr.ph.i.i, label %.loopexit.sink.split.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.am = add i64 %i.an, 1                        ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.am, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit.sink.split.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %i.an = phi i64 [ %i.am, %bb.i ], [ %.promoted.i.i.i, %bb.h ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.an
  %.val.i.i.i = load i8, ptr %i.ao, align 1, !noalias !399, !noundef !3 ; 2 uses
  %.val7.i.i.i = load i8, ptr %i.ap, align 1, !noalias !399, !noundef !3 ; 2 uses
  %i.aq = add i8 %.val.i.i.i, -65
  %i.ar = icmp ult i8 %i.aq, 26
  %i.as = select i1 %i.ar, i8 32, i8 0
  %.sroa.0.0.i.i8.i.i.i = or i8 %i.as, %.val.i.i.i
  %i.at = add i8 %.val7.i.i.i, -65
  %i.au = icmp ult i8 %i.at, 26
  %i.av = select i1 %i.au, i8 32, i8 0
  %.sroa.01.0.i.i.i.i.i = or i8 %i.av, %.val7.i.i.i
  %.not.i.i.i = icmp eq i8 %.sroa.0.0.i.i8.i.i.i, %.sroa.01.0.i.i.i.i.i
  br i1 %.not.i.i.i, label %bb.i, label %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i

_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i: ; preds = %.lr.ph.i.i
  %.not28.i = icmp ult i64 %i.an, %i.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !396
  br i1 %.not28.i, label %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.thread.i, label %.loopexit

_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.thread.i: ; preds = %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i, %bb.f
  %i.aw = icmp eq ptr %i.ab, %i.t
  br i1 %i.aw, label %_RNvMso_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_9StringSet11starts_with.exit.thread, label %bb.e

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.e, i64 noundef %i.c, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #21
  unreachable

.loopexit:                                        ; preds = %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i, %.loopexit.sink.split.i
  %i.ax = icmp ult i64 %.sroa.8.033.i, %i.s
  br i1 %i.ax, label %bb.k, label %bb.l

_RNvMso_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_9StringSet11starts_with.exit.thread: ; preds = %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.thread.i, %bb.d, %bb.b, %bb.c, %bb.m
  %.sroa.3.0 = phi i64 [ %.sroa.8.033.i, %bb.m ], [ undef, %bb.d ], [ undef, %bb.c ], [ undef, %bb.b ], [ undef, %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.thread.i ]
  %.sroa.0.0 = phi i64 [ 1, %bb.m ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.thread.i ]
  %i.ay = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.az = insertvalue { i64, i64 } %i.ay, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.az

bb.k:                                             ; preds = %.loopexit
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.sroa.8.033.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !3
  %i.bd = add i64 %i.bc, %i.e                     ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.e
  br i1 %i.be, label %bb.n, label %bb.m, !prof !10

bb.l:                                             ; preds = %.loopexit
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.033.i, i64 noundef %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #21
  unreachable

bb.m:                                             ; preds = %bb.k
  store i64 %i.bd, ptr %i.d, align 8
  br label %_RNvMso_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_9StringSet11starts_with.exit.thread

bb.n:                                             ; preds = %bb.k
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser9parse_dev(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(160) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !418, !noundef !3 ; 7 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %i.f, %i.d
  br i1 %.not.i, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.d, i64 noundef %i.f, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #21, !noalias !418
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !418, !nonnull !3, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  %i.k = load i8, ptr %i.j, align 1, !noalias !418, !noundef !3
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr @17, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !range !13, !noalias !418, !noundef !3
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.e, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit

bb.e:                                             ; preds = %bb.d
  %i.p = icmp eq i64 %i.d, -1
  br i1 %i.p, label %bb.g, label %bb.f, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.q = add nuw i64 %i.d, 1                      ; 2 uses
  store i64 %i.q, ptr %i.c, align 8, !alias.scope !418
  br label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #21, !noalias !418
  unreachable

_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit: ; preds = %bb.b, %bb.d, %bb.f
  %i.r = phi i64 [ %i.d, %bb.b ], [ %i.d, %bb.d ], [ %i.q, %bb.f ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %.not.i5 = icmp ult i64 %i.r, %i.f
  br i1 %.not.i5, label %bb.h, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser5reset.exit

bb.h:                                             ; preds = %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit
  %i.s = sub nuw i64 %i.f, %i.r                   ; 2 uses
  %.not.i.i = icmp samesign ult i64 %i.s, 3
  br i1 %.not.i.i, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser5reset.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !419, !noalias !420, !nonnull !3, !noundef !3 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !421
  call void @_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3zipRShBN_ECsgHAIXRTqFF5_9pep440_rs(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef range(i64 1, -9223372036854775808) 3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef range(i64 0, -9223372036854775808) %i.s), !noalias !419
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !423, !noalias !421, !noundef !3 ; 3 uses
  %.promoted.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !423, !noalias !421 ; 3 uses
  %.val2.i.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !422, !noalias !421, !nonnull !3
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !422, !noalias !421, !nonnull !3
  %umax.i.i.i = call i64 @llvm.umax.i64(i64 %.promoted.i.i.i, i64 %i.y)
  %exitcond.not.i2.not.i.i = icmp ult i64 %.promoted.i.i.i, %i.y
  br i1 %exitcond.not.i2.not.i.i, label %.lr.ph.i.i, label %.sink.split.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.aa = add i64 %i.ab, 1                        ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.aa, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %.sink.split.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.j
  %i.ab = phi i64 [ %i.aa, %bb.j ], [ %.promoted.i.i.i, %bb.i ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.ab
  %.val.i.i.i = load i8, ptr %i.ac, align 1, !noalias !424, !noundef !3 ; 2 uses
  %.val7.i.i.i = load i8, ptr %i.ad, align 1, !noalias !424, !noundef !3 ; 2 uses
  %i.ae = add i8 %.val.i.i.i, -65
  %i.af = icmp ult i8 %i.ae, 26
  %i.ag = select i1 %i.af, i8 32, i8 0
  %.sroa.0.0.i.i8.i.i.i = or i8 %i.ag, %.val.i.i.i
  %i.ah = add i8 %.val7.i.i.i, -65
  %i.ai = icmp ult i8 %i.ah, 26
  %i.aj = select i1 %i.ai, i8 32, i8 0
  %.sroa.01.0.i.i.i.i.i = or i8 %i.aj, %.val7.i.i.i
  %.not.i.i.i = icmp eq i8 %.sroa.0.0.i.i8.i.i.i, %.sroa.01.0.i.i.i.i.i
  br i1 %.not.i.i.i, label %bb.j, label %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i

_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i: ; preds = %.lr.ph.i.i
  %.not9.i = icmp ult i64 %i.ab, %i.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !421
  br i1 %.not9.i, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser5reset.exit, label %bb.k

.sink.split.i:                                    ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !421
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.i, %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i
  %i.ak = icmp ugt i64 %i.r, -4
  br i1 %i.ak, label %bb.l, label %bb.m, !prof !10

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #21, !noalias !419
  unreachable

_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser5reset.exit: ; preds = %bb.h, %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i, %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit
  store i64 %i.d, ptr %i.c, align 8, !alias.scope !425
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.al = add nuw i64 %i.r, 3                     ; 4 uses
  store i64 %i.al, ptr %i.c, align 8, !alias.scope !419, !noalias !420
  call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %.not.i8 = icmp eq i64 %i.f, %i.al
  br i1 %.not.i8, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit11, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !noalias !426, !noundef !3
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @17, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !range !13, !noalias !426, !noundef !3
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.o, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit11

bb.o:                                             ; preds = %bb.n
  %i.as = icmp eq i64 %i.al, -1
  br i1 %i.as, label %bb.q, label %bb.p, !prof !10

bb.p:                                             ; preds = %bb.o
  %i.at = add nuw i64 %i.r, 4
  store i64 %i.at, ptr %i.c, align 8, !alias.scope !426
  br label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit11

bb.q:                                             ; preds = %bb.o
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #21, !noalias !426
  unreachable

_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit11: ; preds = %bb.m, %bb.n, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser12parse_number(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef align 8 dereferenceable(160) %0)
  %i.au = load i64, ptr %i.b, align 8, !range !5, !noundef !3 ; 2 uses
  %i.av = icmp eq i64 %i.au, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.av, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit11
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !3, !align !12, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.t

bb.s:                                             ; preds = %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit11
  %i.ay = load i64, ptr %i.aw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.az = trunc nuw i64 %i.au to i1
  %. = select i1 %i.az, i64 %i.ay, i64 0
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 1, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %., ptr %i.bb, align 8
  br label %bb.t

bb.t:                                             ; preds = %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser5reset.exit, %bb.r, %bb.s
  %.sroa.0.0 = phi ptr [ %i.ax, %bb.r ], [ null, %bb.s ], [ null, %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser5reset.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser9parse_pre(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(160) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !433, !noundef !3 ; 4 uses
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %i.e, %i.c
  br i1 %.not.i, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.c, i64 noundef %i.e, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #21, !noalias !433
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !433, !nonnull !3, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  %i.j = load i8, ptr %i.i, align 1, !noalias !433, !noundef !3
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @17, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !range !13, !noalias !433, !noundef !3
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit

bb.e:                                             ; preds = %bb.d
  %i.o = icmp eq i64 %i.c, -1
  br i1 %i.o, label %bb.g, label %bb.f, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.p = add nuw i64 %i.c, 1
  store i64 %i.p, ptr %i.b, align 8, !alias.scope !433
  br label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #21, !noalias !433
  unreachable

_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit: ; preds = %bb.b, %bb.d, %bb.f
  %i.q = tail call fastcc { i64, i64 } @_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser18bump_if_string_set(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) @54) ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = extractvalue { i64, i64 } %i.q, 1        ; 3 uses
  %i.t = trunc nuw i64 %i.r to i1
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit
  %i.u = icmp ult i64 %i.s, 8
  br i1 %i.u, label %bb.k, label %bb.r

bb.i:                                             ; preds = %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  %i.v = load i64, ptr %i.d, align 8, !alias.scope !434, !noundef !3
  %.not.i7 = icmp ugt i64 %i.c, %i.v
  br i1 %.not.i7, label %bb.j, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser5reset.exit, !prof !10

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #21, !noalias !434
  unreachable

_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser5reset.exit: ; preds = %bb.i
  store i64 %i.c, ptr %i.b, align 8, !alias.scope !434
  br label %bb.u

bb.k:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr @55, i64 %i.s
  %i.x = load i8, ptr %i.w, align 1, !range !16, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %i.y = load i64, ptr %i.d, align 8, !alias.scope !435, !noundef !3 ; 4 uses
  %i.z = load i64, ptr %i.b, align 8, !alias.scope !435, !noundef !3 ; 6 uses
  %i.aa = icmp ugt i64 %i.z, %i.y
  br i1 %i.aa, label %bb.m, label %bb.l, !prof !10

bb.l:                                             ; preds = %bb.k
  %.not.i8 = icmp eq i64 %i.y, %i.z
  br i1 %.not.i8, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit11, label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.z, i64 noundef %i.y, i64 noundef %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #21, !noalias !435
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !435, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.z
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !435, !noundef !3
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @17, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !range !13, !noalias !435, !noundef !3
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.o, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit11

bb.o:                                             ; preds = %bb.n
  %i.aj = icmp eq i64 %i.z, -1
  br i1 %i.aj, label %bb.q, label %bb.p, !prof !10

bb.p:                                             ; preds = %bb.o
  %i.ak = add nuw i64 %i.z, 1
  store i64 %i.ak, ptr %i.b, align 8, !alias.scope !435
  br label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit11

bb.q:                                             ; preds = %bb.o
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #21, !noalias !435
  unreachable

_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit11: ; preds = %bb.l, %bb.n, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser12parse_number(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noalias noundef align 8 dereferenceable(160) %0)
  %i.al = load i64, ptr %i.a, align 8, !range !5, !noundef !3 ; 2 uses
  %i.am = icmp eq i64 %i.al, 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.am, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #21
  unreachable

bb.s:                                             ; preds = %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit11
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !3, !align !12, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.u

bb.t:                                             ; preds = %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit11
  %i.ap = load i64, ptr %i.an, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aq = trunc nuw i64 %i.al to i1
  %. = select i1 %i.aq, i64 %i.ap, i64 0
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %., ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %i.x, ptr %i.as, align 8
  br label %bb.u

bb.u:                                             ; preds = %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser5reset.exit, %bb.s, %bb.t
  %.sroa.0.0 = phi ptr [ %i.ao, %bb.s ], [ null, %bb.t ], [ null, %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser5reset.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsn_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_14ReleaseNumbers4push(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = load i64, ptr %0, align 8, !range !7, !noundef !3
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !442, !noundef !3 ; 3 uses
  %i.i = load i64, ptr %i.f, align 8, !range !14, !alias.scope !442, !noundef !3
  %i.j = icmp eq i64 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecyE8push_mutCsgHAIXRTqFF5_9pep440_rs.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCsgHAIXRTqFF5_9pep440_rs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecyE8push_mutCsgHAIXRTqFF5_9pep440_rs.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecyE8push_mutCsgHAIXRTqFF5_9pep440_rs.exit: ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !442, !nonnull !3, !noundef !3
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.h
  store i64 %1, ptr %i.m, align 8
  %i.n = add i64 %i.h, 1
end_hunk_0
