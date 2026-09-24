Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_core-439b9fb270738648.jiff_core.802705cc72501606-cgu.1?download=true
inline.NumInlined: 198
inline.NumDeleted: 73
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMs4_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_7DstInfo6in_dst:bb.a
  %i.ff = icmp eq i8 %.sroa.0.0.i11, 0
  br i1 %i.ff, label %bb.al, label %_RNvXs8_NtNtCsb09rMIQFAXO_9jiff_core5civil8datetimeNtB5_8DateTimeNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit13

bb.ak:                                            ; preds = %bb.ai
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.fh = load i8, ptr %i.fg, align 1, !alias.scope !189, !noalias !190, !noundef !5
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 31
  %i.fj = load i8, ptr %i.fi, align 1, !alias.scope !190, !noalias !189, !noundef !5
  %i.fk = tail call i8 @llvm.scmp.i8.i8(i8 %i.fh, i8 %i.fj)
  br label %bb.aj

bb.al:                                            ; preds = %bb.aj
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fm = load i8, ptr %i.fl, align 4, !alias.scope !189, !noalias !190, !noundef !5 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fo = load i8, ptr %i.fn, align 8, !alias.scope !190, !noalias !189, !noundef !5 ; 2 uses
  %i.fp = tail call i8 @llvm.scmp.i8.i8(i8 %i.fm, i8 %i.fo)
  %i.fq = icmp eq i8 %i.fm, %i.fo
  br i1 %i.fq, label %bb.am, label %_RNvXs8_NtNtCsb09rMIQFAXO_9jiff_core5civil8datetimeNtB5_8DateTimeNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit13

bb.am:                                            ; preds = %bb.al
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.fs = load i8, ptr %i.fr, align 1, !alias.scope !189, !noalias !190, !noundef !5 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.fu = load i8, ptr %i.ft, align 1, !alias.scope !190, !noalias !189, !noundef !5 ; 2 uses
  %i.fv = tail call i8 @llvm.scmp.i8.i8(i8 %i.fs, i8 %i.fu)
  %i.fw = icmp eq i8 %i.fs, %i.fu
  br i1 %i.fw, label %bb.an, label %_RNvXs8_NtNtCsb09rMIQFAXO_9jiff_core5civil8datetimeNtB5_8DateTimeNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit13

bb.an:                                            ; preds = %bb.am
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.fy = load i8, ptr %i.fx, align 2, !alias.scope !189, !noalias !190, !noundef !5 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.ga = load i8, ptr %i.fz, align 2, !alias.scope !190, !noalias !189, !noundef !5 ; 2 uses
  %i.gb = tail call i8 @llvm.scmp.i8.i8(i8 %i.fy, i8 %i.ga)
  %i.gc = icmp eq i8 %i.fy, %i.ga
  br i1 %i.gc, label %bb.ao, label %_RNvXs8_NtNtCsb09rMIQFAXO_9jiff_core5civil8datetimeNtB5_8DateTimeNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit13

bb.ao:                                            ; preds = %bb.an
  %i.gd = load i32, ptr %1, align 4, !alias.scope !189, !noalias !190, !noundef !5
  %i.ge = load i32, ptr %i.b, align 4, !alias.scope !190, !noalias !189, !noundef !5
  %i.gf = tail call i8 @llvm.scmp.i8.i32(i32 %i.gd, i32 %i.ge)
  br label %_RNvXs8_NtNtCsb09rMIQFAXO_9jiff_core5civil8datetimeNtB5_8DateTimeNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit13

_RNvXs8_NtNtCsb09rMIQFAXO_9jiff_core5civil8datetimeNtB5_8DateTimeNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit13: ; preds = %bb.aj, %bb.al, %bb.am, %bb.an, %bb.ao
  %.sroa.0.1.i12 = phi i8 [ %i.gf, %bb.ao ], [ %i.gb, %bb.an ], [ %i.fv, %bb.am ], [ %i.fp, %bb.al ], [ %.sroa.0.0.i11, %bb.aj ]
  %i.gg = icmp slt i8 %.sroa.0.1.i12, 0
  br label %bb.ag
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser12parse_prefix(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 5)) %0, ptr nofree noundef nonnull align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser21parse_posix_time_zone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.a, ptr noundef nonnull align 8 %1) #20
  %i.b = load i8, ptr %i.a, align 8, !range !6, !noundef !5 ; 2 uses
  %i.c = icmp eq i8 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.011.0.copyload = load i32, ptr %i.d, align 1 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 %.sroa.011.0.copyload, ptr %i.e, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(75) %.sroa.08.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(75) %.sroa.5.0..sroa_idx, i64 75, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.f, align 8, !noundef !5
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 %.sroa.011.0.copyload, ptr %.sroa.08.sroa.4.0..sroa_idx, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.val, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i8 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i1, i8 } @_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser12parse_second(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 5 uses
  %.promoted.i = load i64, ptr %i.a, align 8      ; 7 uses
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %.promoted.i)
  %i.e = icmp eq i64 %.promoted.i, %i.c
  br i1 %i.e, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser34parse_number_with_exactly_n_digits.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %exitcond.not.i.not = icmp ugt i64 %i.c, %.promoted.i
  br i1 %exitcond.not.i.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.promoted.i
  %i.h = load i8, ptr %i.g, align 1, !noundef !5  ; 2 uses
  %i.i = icmp ult i8 %i.h, 48
  br i1 %i.i, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser34parse_number_with_exactly_n_digits.exit.thread, label %bb.e

bb.d:                                             ; preds = %bb.f, %bb.b
  %.lcssa30 = phi i64 [ %.promoted.i, %bb.b ], [ %i.l, %bb.f ]
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa30, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #18
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = add i8 %i.h, -48                         ; 2 uses
  %i.k = icmp ugt i8 %i.j, 9
  br i1 %i.k, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser34parse_number_with_exactly_n_digits.exit.thread, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i: ; preds = %bb.e
  %i.l = add nuw i64 %.promoted.i, 1              ; 4 uses
  store i64 %i.l, ptr %i.a, align 8
  %i.m = icmp eq i64 %i.l, %i.c
  br i1 %i.m, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser34parse_number_with_exactly_n_digits.exit.thread, label %bb.f

bb.f:                                             ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i
  %exitcond.not.i.1 = icmp eq i64 %i.d, 1
  br i1 %exitcond.not.i.1, label %bb.d, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.l
  %i.o = load i8, ptr %i.n, align 1, !noundef !5  ; 2 uses
  %i.p = icmp ult i8 %i.o, 48
  br i1 %i.p, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser34parse_number_with_exactly_n_digits.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = add i8 %i.o, -48                         ; 2 uses
  %i.r = icmp ugt i8 %i.q, 9
  br i1 %i.r, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser34parse_number_with_exactly_n_digits.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = add nuw i64 %.promoted.i, 2
  store i64 %i.s, ptr %i.a, align 8
  %narrow = mul nuw nsw i8 %i.j, 10
  %i.t = add nuw nsw i8 %narrow, %i.q             ; 2 uses
  %or.cond = icmp samesign ugt i8 %i.t, 59        ; 2 uses
  %. = select i1 %or.cond, i8 -1, i8 %i.t
  br label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser34parse_number_with_exactly_n_digits.exit.thread

_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser34parse_number_with_exactly_n_digits.exit.thread: ; preds = %bb.c, %bb.e, %bb.a, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i, %bb.g, %bb.h, %bb.i
  %.sroa.5.0 = phi i8 [ %., %bb.i ], [ 2, %bb.c ], [ 2, %bb.g ], [ 1, %bb.a ], [ 2, %bb.h ], [ 2, %bb.e ], [ 1, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i ]
  %.sroa.0.0 = phi i1 [ %or.cond, %bb.i ], [ true, %bb.c ], [ true, %bb.g ], [ true, %bb.a ], [ true, %bb.h ], [ true, %bb.e ], [ true, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i ]
  %i.u = insertvalue { i1, i8 } poison, i1 %.sroa.0.0, 0
  %i.v = insertvalue { i1, i8 } %i.u, i8 %.sroa.5.0, 1
  ret { i1, i8 } %i.v
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i1, i8 } @_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser13parse_weekday(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %.promoted.i = load i64, ptr %i.a, align 8      ; 5 uses
  %i.d = icmp eq i64 %.promoted.i, %i.c
  br i1 %i.d, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser34parse_number_with_exactly_n_digits.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %exitcond.not.i.not = icmp ugt i64 %i.c, %.promoted.i
  br i1 %exitcond.not.i.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.promoted.i
  %i.g = load i8, ptr %i.f, align 1, !noundef !5  ; 2 uses
  %i.h = icmp ult i8 %i.g, 48
  br i1 %i.h, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser34parse_number_with_exactly_n_digits.exit.thread, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.promoted.i, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #18
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = add i8 %i.g, -48                         ; 3 uses
  %i.j = icmp ugt i8 %i.i, 9
  br i1 %i.j, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser34parse_number_with_exactly_n_digits.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = add nuw i64 %.promoted.i, 1
  store i64 %i.k, ptr %i.a, align 8
  %i.l = icmp ult i8 %i.i, 7
  br i1 %i.l, label %switch.lookup, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser34parse_number_with_exactly_n_digits.exit.thread, !prof !191

switch.lookup:                                    ; preds = %bb.f
  %i.m = shl nuw nsw i8 %i.i, 3
  %switch.shiftamt = zext nneg i8 %i.m to i56
  %switch.downshift = lshr i56 1694364648734983, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  br label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser34parse_number_with_exactly_n_digits.exit.thread

_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser34parse_number_with_exactly_n_digits.exit.thread: ; preds = %bb.f, %switch.lookup, %bb.c, %bb.e, %bb.a
  %.sroa.5.1 = phi i8 [ 2, %bb.c ], [ %switch.masked, %switch.lookup ], [ 1, %bb.a ], [ 2, %bb.e ], [ -1, %bb.f ]
  %.sroa.0.1 = phi i1 [ true, %bb.c ], [ false, %switch.lookup ], [ true, %bb.a ], [ true, %bb.e ], [ true, %bb.f ]
  %i.n = insertvalue { i1, i8 } poison, i1 %.sroa.0.1, 0
  %i.o = insertvalue { i1, i8 } %i.n, i8 %.sroa.5.1, 1
  ret { i1, i8 } %i.o
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser18parse_abbreviation(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i3 = alloca i48, align 8             ; 6 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.0.i.i = alloca i48, align 8              ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 15 uses
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !noundef !5
  %i.k = icmp eq i8 %i.j, 60
  br i1 %i.k, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit, label %.split

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.d, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #18
  unreachable

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit: ; preds = %bb.b
  %i.l = add nuw i64 %i.d, 1                      ; 8 uses
  store i64 %i.l, ptr %i.c, align 8
  %.not = icmp eq i64 %i.l, %i.f
  br i1 %.not, label %bb.k, label %bb.l

.split:                                           ; preds = %bb.b, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.1
  %i.m = phi i64 [ %i.aa, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.1 ], [ %i.d, %bb.b ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !noalias !214, !noundef !5
  %i.p = and i8 %i.o, -33
  %i.q = add i8 %i.p, -65
  %or.cond21.i = icmp ult i8 %i.q, 26
  br i1 %or.cond21.i, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i, label %bb.d

bb.d:                                             ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.1, %.split.1, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i, %.split
  %i.r = phi i64 [ %i.m, %.split ], [ %i.f, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i ], [ %i.t, %.split.1 ], [ %i.f, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.1 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !214
  %i.s = icmp ult i64 %i.r, %i.d
  %.not.i = icmp ugt i64 %i.r, %i.f
  %or.cond22.i = or i1 %i.s, %.not.i
  br i1 %or.cond22.i, label %bb.g, label %bb.f, !prof !215

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i: ; preds = %.split
  %i.t = add i64 %i.m, 1                          ; 5 uses
  store i64 %i.t, ptr %i.c, align 8, !noalias !214
  %.not45.i = icmp eq i64 %i.t, %i.f
  br i1 %.not45.i, label %bb.d, label %.split.1

.split.1:                                         ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !noalias !214, !noundef !5
  %i.w = and i8 %i.v, -33
  %i.x = add i8 %i.w, -65
  %or.cond21.i.1 = icmp ult i8 %i.x, 26
  br i1 %or.cond21.i.1, label %bb.e, label %bb.d

bb.e:                                             ; preds = %.split.1
  %i.y = sub nuw i64 %i.t, %i.d
  %i.z = icmp samesign ugt i64 %i.y, 254
  br i1 %i.z, label %.loopexit53, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.1

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.1: ; preds = %bb.e
  %i.aa = add i64 %i.m, 2                         ; 3 uses
  store i64 %i.aa, ptr %i.c, align 8, !noalias !214
  %.not45.i.1 = icmp eq i64 %i.aa, %i.f
  br i1 %.not45.i.1, label %bb.d, label %.split

bb.f:                                             ; preds = %bb.d
  %i.ab = sub nuw i64 %i.r, %i.d
  call void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.ab), !noalias !214
  %i.ac = load i64, ptr %i.b, align 8, !range !216, !noalias !214, !noundef !5
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.d, i64 noundef %i.r, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #18, !noalias !214
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !214
  br label %.loopexit53

bb.i:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !214, !nonnull !5, !noundef !5 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !214, !noundef !5 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !214
  %i.ai = icmp ult i64 %i.ah, 3
  br i1 %i.ai, label %.loopexit53, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i), !noalias !214
  %i.aj = icmp ugt i64 %i.ah, 6
  br i1 %i.aj, label %_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit.thread.i, label %_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit.i

_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit.thread.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i), !noalias !214
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !217
  %i.ak = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %i.ah, i64 noundef 1) #17, !noalias !217 ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.noexc.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEEB12_.exit.i.i

_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit.i: ; preds = %bb.j
  %i.am = sub nuw nsw i64 6, %i.ah
  %i.an = getelementptr i8, ptr %.sroa.0.i.i, i64 %i.ah
  call void @llvm.memset.p0.i64(ptr align 1 %i.an, i8 0, i64 %i.am, i1 false), !noalias !218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.i.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.af, i64 range(i64 3, 0) %i.ah, i1 false), !noalias !214
  %.sroa.0.0..sroa.0.0..sroa.05.sroa.0.0.copyload.i.i = load i48, ptr %.sroa.0.i.i, align 8, !noalias !218
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i), !noalias !214
  %.sroa.05.0.insert.ext.i.i = zext i48 %.sroa.0.0..sroa.0.0..sroa.05.sroa.0.0.copyload.i.i to i64
  %i.ao = shl nuw nsw i64 %i.ah, 48
  %i.ap = or disjoint i64 %i.ao, %.sroa.05.0.insert.ext.i.i
  %.sroa.414.0.extract.trunc.i = trunc nuw nsw i64 %i.ap to i56
  br label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser27parse_unquoted_abbreviation.exit

.noexc.i.i:                                       ; preds = %_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit.thread.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef %i.ah) #21, !noalias !219
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEEB12_.exit.i.i: ; preds = %_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit.thread.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull readonly align 1 %i.af, i64 %i.ah, i1 false), !noalias !220
  br label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser27parse_unquoted_abbreviation.exit

bb.k:                                             ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 4, ptr %i.ar, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.z

bb.l:                                             ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit
  %umax.i4 = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %i.f) ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i6, %bb.l
  %i.as = phi i64 [ %i.be, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i6 ], [ %i.l, %bb.l ] ; 5 uses
  %exitcond.not.i5 = icmp eq i64 %i.as, %umax.i4
  br i1 %exitcond.not.i5, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !noalias !221, !noundef !5 ; 6 uses
  %i.av = add nsw i8 %i.au, -48
  %.sroa.05.0.i = icmp ult i8 %i.av, 10
  %i.aw = icmp samesign ugt i8 %i.au, 64
  %i.ax = icmp samesign ult i8 %i.au, 91
  %.sroa.06.0.i = select i1 %i.aw, i1 %i.ax, i1 %.sroa.05.0.i
  %i.ay = icmp ugt i8 %i.au, 96
  %i.az = icmp ult i8 %i.au, 123
  %.sroa.07.0.i = select i1 %i.ay, i1 %i.az, i1 %.sroa.06.0.i
  br i1 %.sroa.07.0.i, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.m
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %umax.i4, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #18, !noalias !221
  unreachable

bb.p:                                             ; preds = %bb.n
  switch i8 %i.au, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.thread.i [
    i8 43, label %bb.q
    i8 45, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p, %bb.n
  %i.ba = sub nuw i64 %i.as, %i.l
  %i.bb = icmp samesign ugt i64 %i.ba, 254
  br i1 %i.bb, label %.loopexit, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i6

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.thread.i: ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i6, %bb.p
  %i.bc = phi i64 [ %i.as, %bb.p ], [ %i.f, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i6 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !221
  %i.bd = icmp ule i64 %i.bc, %i.d
  %.not.i7 = icmp ugt i64 %i.bc, %i.f
  %or.cond.i = or i1 %i.bd, %.not.i7
  br i1 %or.cond.i, label %bb.s, label %bb.r, !prof !215

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i6: ; preds = %bb.q
  %i.be = add i64 %i.as, 1                        ; 3 uses
  store i64 %i.be, ptr %i.c, align 8, !noalias !221
  %.not57.i = icmp eq i64 %i.be, %i.f
  br i1 %.not57.i, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.thread.i, label %bb.m

bb.r:                                             ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.thread.i
  %i.bf = sub nuw i64 %i.bc, %i.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  call void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef %i.bf), !noalias !221
  %i.bh = load i64, ptr %i.a, align 8, !range !216, !noalias !221, !noundef !5
  %i.bi = trunc nuw i64 %i.bh to i1
end_hunk_0
begin_hunk_1_@_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser20parse_posix_datetime:bb.a
  %i.j = load i8, ptr %i.i, align 1, !noundef !5  ; 2 uses
  switch i8 %i.j, label %bb.d [
    i8 74, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i
    i8 77, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit71.i
  ]

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.d, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = add i8 %i.j, -48                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.k, 10
  br i1 %or.cond.i, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i78.i, label %bb.x

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i: ; preds = %bb.b
  %i.l = add nuw i64 %i.d, 1                      ; 3 uses
  store i64 %i.l, ptr %i.c, align 8
  %.not97.i = icmp eq i64 %i.l, %i.f
  br i1 %.not97.i, label %bb.x, label %bb.e

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit71.i: ; preds = %bb.b
  %i.m = add nuw i64 %i.d, 1                      ; 3 uses
  store i64 %i.m, ptr %i.c, align 8
  %.not.i = icmp eq i64 %i.m, %i.f
  br i1 %.not.i, label %bb.x, label %bb.i

bb.e:                                             ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  %i.o = load i8, ptr %i.n, align 1, !noundef !5
  %i.p = add i8 %i.o, -48                         ; 2 uses
  %or.cond.i.i.i = icmp ult i8 %i.p, 10
  br i1 %or.cond.i.i.i, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i.i, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser30parse_posix_julian_day_no_leap.exit.thread.i

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i.i: ; preds = %bb.e
  %i.q = zext nneg i8 %i.p to i32                 ; 3 uses
  %i.r = add nuw i64 %i.d, 2                      ; 3 uses
  store i64 %i.r, ptr %i.c, align 8
  %i.s = icmp eq i64 %i.r, %i.f
  br i1 %i.s, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser30parse_posix_julian_day_no_leap.exit.i, label %bb.f

bb.f:                                             ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.r
  %i.u = load i8, ptr %i.t, align 1, !noundef !5
  %i.v = add i8 %i.u, -48                         ; 2 uses
  %or.cond.i.1.i.i = icmp ult i8 %i.v, 10
  br i1 %or.cond.i.1.i.i, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.1.i.i, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser30parse_posix_julian_day_no_leap.exit.i

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.1.i.i: ; preds = %bb.f
  %i.w = mul nuw nsw i32 %i.q, 10
  %i.x = zext nneg i8 %i.v to i32
  %i.y = add nuw nsw i32 %i.w, %i.x               ; 3 uses
  %i.z = add nuw i64 %i.d, 3                      ; 3 uses
  store i64 %i.z, ptr %i.c, align 8
  %i.aa = icmp eq i64 %i.z, %i.f
  br i1 %i.aa, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser30parse_posix_julian_day_no_leap.exit.i, label %bb.g

bb.g:                                             ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.1.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.z
  %i.ac = load i8, ptr %i.ab, align 1, !noundef !5
  %i.ad = add i8 %i.ac, -48                       ; 2 uses
  %or.cond.i.2.i.i = icmp ult i8 %i.ad, 10
  br i1 %or.cond.i.2.i.i, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.2.i.i, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser30parse_posix_julian_day_no_leap.exit.i

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.2.i.i: ; preds = %bb.g
  %i.ae = mul nuw nsw i32 %i.y, 10
  %i.af = zext nneg i8 %i.ad to i32
  %i.ag = add nuw nsw i32 %i.ae, %i.af
  %i.ah = add nuw i64 %i.d, 4
  store i64 %i.ah, ptr %i.c, align 8
  br label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser30parse_posix_julian_day_no_leap.exit.i

_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser30parse_posix_julian_day_no_leap.exit.i: ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.2.i.i, %bb.g, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.1.i.i, %bb.f, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i.i
  %.sroa.014.028.i.i.i = phi i32 [ %i.ag, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.2.i.i ], [ %i.y, %bb.g ], [ %i.y, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.1.i.i ], [ %i.q, %bb.f ], [ %i.q, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i.i ] ; 2 uses
  %i.ai = trunc nuw nsw i32 %.sroa.014.028.i.i.i to i16
  %i.aj = add nsw i16 %i.ai, -1
  %or.cond.i.i = icmp ult i16 %i.aj, 365
  %i.ak = shl nuw nsw i32 %.sroa.014.028.i.i.i, 16
  %spec.select.i.i = select i1 %or.cond.i.i, i32 %i.ak, i32 65281 ; 4 uses
  %i.al = trunc i32 %spec.select.i.i to i1
  br i1 %i.al, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser30parse_posix_julian_day_no_leap.exit.thread.i, label %bb.h

_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser30parse_posix_julian_day_no_leap.exit.thread.i: ; preds = %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser30parse_posix_julian_day_no_leap.exit.i, %bb.e
  %.sroa.5.0.insert.insert.i94.i = phi i32 [ %spec.select.i.i, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser30parse_posix_julian_day_no_leap.exit.i ], [ 1, %bb.e ]
  %i.am = trunc i32 %.sroa.5.0.insert.insert.i94.i to i16
  %.sroa.453.0.insert.shift.i = and i16 %i.am, -256
  %.sroa.052.0.insert.insert.i = or disjoint i16 %.sroa.453.0.insert.shift.i, 10
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %bb.x

bb.h:                                             ; preds = %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser30parse_posix_julian_day_no_leap.exit.i
  %.sroa.563.0.extract.shift.i = lshr i32 %spec.select.i.i, 16
  %.sroa.563.0.extract.trunc.i = trunc nuw nsw i32 %.sroa.563.0.extract.shift.i to i16
  %.sroa.5.i.1.i.1.i.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5.i, i64 1
  store i16 %.sroa.563.0.extract.trunc.i, ptr %.sroa.5.i.1.i.1.i.1..sroa_idx, align 1
  %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.1..sroa.10.0.copyload.i = load i16, ptr %.sroa.5.i, align 2
  %i.an = lshr i32 %spec.select.i.i, 24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_posix_date.exit

bb.i:                                             ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit71.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.m
  %i.ap = load i8, ptr %i.ao, align 1, !noundef !5
  %i.aq = add i8 %i.ap, -48                       ; 4 uses
  %or.cond.i.i.i.i = icmp ult i8 %i.aq, 10
  br i1 %or.cond.i.i.i.i, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i.i.i, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser22parse_weekday_of_month.exit.thread.i

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i.i.i: ; preds = %bb.i
  %i.ar = add nuw i64 %i.d, 2                     ; 4 uses
  store i64 %i.ar, ptr %i.c, align 8
  %i.as = icmp eq i64 %i.ar, %i.f
  br i1 %i.as, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser11parse_month.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ar
  %i.au = load i8, ptr %i.at, align 1, !noundef !5
  %i.av = add i8 %i.au, -48                       ; 2 uses
  %or.cond.i.1.i.i.i = icmp ult i8 %i.av, 10
  br i1 %or.cond.i.1.i.i.i, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.1.i.i.i, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser11parse_month.exit.i.i

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.1.i.i.i: ; preds = %bb.j
  %i.aw = mul nuw nsw i8 %i.aq, 10
  %i.ax = add nuw nsw i8 %i.av, %i.aw
  %i.ay = add nuw i64 %i.d, 3                     ; 2 uses
  store i64 %i.ay, ptr %i.c, align 8
  br label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser11parse_month.exit.i.i

_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser11parse_month.exit.i.i: ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.1.i.i.i, %bb.j, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i.i.i
  %i.az = phi i64 [ %i.ay, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.1.i.i.i ], [ %i.f, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i.i.i ], [ %i.ar, %bb.j ] ; 4 uses
  %.sroa.014.028.i.i.i.i = phi i8 [ %i.ax, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.1.i.i.i ], [ %i.aq, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i.i.i ], [ %i.aq, %bb.j ] ; 3 uses
  %i.ba = add nsw i8 %.sroa.014.028.i.i.i.i, -13
  %or.cond.i.i73.i = icmp ult i8 %i.ba, -12
  br i1 %or.cond.i.i73.i, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser22parse_weekday_of_month.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser11parse_month.exit.i.i
  %i.bb = icmp ult i64 %i.az, %i.f
  br i1 %i.bb, label %bb.l, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser22parse_weekday_of_month.exit.thread.i

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.az
  %i.bd = load i8, ptr %i.bc, align 1, !noundef !5
  %.not.i.i = icmp eq i8 %i.bd, 46
  br i1 %.not.i.i, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser22parse_weekday_of_month.exit.thread.i

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i: ; preds = %bb.l
  %i.be = add nuw i64 %i.az, 1                    ; 3 uses
  store i64 %i.be, ptr %i.c, align 8
  %.not41.i.i = icmp eq i64 %i.be, %i.f
  br i1 %.not41.i.i, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser22parse_weekday_of_month.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noundef !5 ; 3 uses
  %i.bh = icmp ult i8 %i.bg, 48
  br i1 %i.bh, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser22parse_weekday_of_month.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = add i8 %i.bg, -48                       ; 3 uses
  %i.bj = icmp ugt i8 %i.bi, 9
  br i1 %i.bj, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser22parse_weekday_of_month.exit.thread.i, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser10parse_week.exit.i.i

_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser10parse_week.exit.i.i: ; preds = %bb.n
  %i.bk = add nuw i64 %i.az, 2                    ; 3 uses
  store i64 %i.bk, ptr %i.c, align 8
  %i.bl = add nsw i8 %i.bg, -54
  %or.cond.i31.i.i = icmp ult i8 %i.bl, -5
  br i1 %or.cond.i31.i.i, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser22parse_weekday_of_month.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser10parse_week.exit.i.i
  %i.bm = icmp ult i64 %i.bk, %i.f
  br i1 %i.bm, label %bb.p, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser22parse_weekday_of_month.exit.thread.i

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bk
  %i.bo = load i8, ptr %i.bn, align 1, !noundef !5
  %.not27.i.i = icmp eq i8 %i.bo, 46
  br i1 %.not27.i.i, label %bb.q, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser22parse_weekday_of_month.exit.thread.i

bb.q:                                             ; preds = %bb.p
  %i.bp = tail call fastcc noundef zeroext i1 @_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump(ptr noundef nonnull align 8 %0)
  br i1 %i.bp, label %bb.r, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser22parse_weekday_of_month.exit.thread.i

bb.r:                                             ; preds = %bb.q
  %i.bq = tail call fastcc { i1, i8 } @_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser13parse_weekday(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.br = extractvalue { i1, i8 } %i.bq, 0
  %i.bs = extractvalue { i1, i8 } %i.bq, 1        ; 4 uses
  br i1 %i.br, label %bb.s, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser22parse_weekday_of_month.exit.i

bb.s:                                             ; preds = %bb.r
  %i.bt = add nsw i8 %i.bs, 1
  %i.bu = icmp ult i8 %i.bt, 5
  tail call void @llvm.assume(i1 %i.bu)
  br label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser22parse_weekday_of_month.exit.thread.i

_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser22parse_weekday_of_month.exit.i: ; preds = %bb.r
  %i.bv = icmp eq i8 %i.bs, 0
  br i1 %i.bv, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser22parse_weekday_of_month.exit.thread.i, label %bb.t

_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser22parse_weekday_of_month.exit.thread.i: ; preds = %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser22parse_weekday_of_month.exit.i, %bb.s, %bb.q, %bb.p, %bb.o, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser10parse_week.exit.i.i, %bb.n, %bb.m, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i, %bb.l, %bb.k, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser11parse_month.exit.i.i, %bb.i
  %.sroa.0.0.i72126.i = phi i8 [ %.sroa.014.028.i.i.i.i, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser22parse_weekday_of_month.exit.i ], [ 5, %bb.n ], [ 5, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser10parse_week.exit.i.i ], [ 4, %bb.i ], [ 5, %bb.m ], [ 2, %bb.o ], [ 1, %bb.k ], [ 2, %bb.p ], [ 0, %bb.q ], [ 6, %bb.s ], [ 3, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i ], [ 4, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser11parse_month.exit.i.i ], [ 1, %bb.l ]
  %.sroa.9.0.i125.i = phi i8 [ %i.bi, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser22parse_weekday_of_month.exit.i ], [ 2, %bb.n ], [ -1, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser10parse_week.exit.i.i ], [ 0, %bb.i ], [ 2, %bb.m ], [ undef, %bb.o ], [ undef, %bb.k ], [ undef, %bb.p ], [ undef, %bb.q ], [ %i.bs, %bb.s ], [ undef, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i ], [ -1, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser11parse_month.exit.i.i ], [ undef, %bb.l ]
  %.sroa.0.0.insert.ext.i.i = zext nneg i8 %.sroa.0.0.i72126.i to i16
  %.sroa.064.1.extract.trunc.i = zext i8 %.sroa.9.0.i125.i to i16
  %.sroa.460.0.insert.shift.i = shl nuw i16 %.sroa.064.1.extract.trunc.i, 8
  %.sroa.059.0.insert.insert.i = or disjoint i16 %.sroa.460.0.insert.shift.i, %.sroa.0.0.insert.ext.i.i
  br label %bb.x

bb.t:                                             ; preds = %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser22parse_weekday_of_month.exit.i
  %i.bw = zext nneg i8 %.sroa.014.028.i.i.i.i to i16
  %i.bx = zext nneg i8 %i.bi to i16
  %.sroa.448.2.insert.ext.i = shl nuw nsw i16 %i.bx, 8
  %.sroa.448.2.insert.insert.i = or disjoint i16 %.sroa.448.2.insert.ext.i, %i.bw
  %i.by = zext i8 %i.bs to i32
  br label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_posix_date.exit

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i78.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.524.i)
  %i.bz = zext nneg i8 %i.k to i32                ; 3 uses
  %i.ca = add nuw i64 %i.d, 1                     ; 3 uses
  store i64 %i.ca, ptr %i.c, align 8
  %i.cb = icmp eq i64 %i.ca, %i.f
  br i1 %i.cb, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser32parse_posix_julian_day_with_leap.exit.i, label %bb.u

bb.u:                                             ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i78.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ca
  %i.cd = load i8, ptr %i.cc, align 1, !noundef !5
  %i.ce = add i8 %i.cd, -48                       ; 2 uses
  %or.cond.i.1.i80.i = icmp ult i8 %i.ce, 10
  br i1 %or.cond.i.1.i80.i, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.1.i85.i, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser32parse_posix_julian_day_with_leap.exit.i

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.1.i85.i: ; preds = %bb.u
  %i.cf = mul nuw nsw i32 %i.bz, 10
  %i.cg = zext nneg i8 %i.ce to i32
  %i.ch = add nuw nsw i32 %i.cf, %i.cg            ; 3 uses
  %i.ci = add nuw i64 %i.d, 2                     ; 3 uses
  store i64 %i.ci, ptr %i.c, align 8
  %i.cj = icmp eq i64 %i.ci, %i.f
  br i1 %i.cj, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser32parse_posix_julian_day_with_leap.exit.i, label %bb.v

bb.v:                                             ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.1.i85.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ci
  %i.cl = load i8, ptr %i.ck, align 1, !noundef !5
  %i.cm = add i8 %i.cl, -48                       ; 2 uses
  %or.cond.i.2.i87.i = icmp ult i8 %i.cm, 10
  br i1 %or.cond.i.2.i87.i, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.2.i88.i, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser32parse_posix_julian_day_with_leap.exit.i

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.2.i88.i: ; preds = %bb.v
  %i.cn = mul nuw nsw i32 %i.ch, 10
  %i.co = zext nneg i8 %i.cm to i32
  %i.cp = add nuw nsw i32 %i.cn, %i.co
  %i.cq = add nuw i64 %i.d, 3
  store i64 %i.cq, ptr %i.c, align 8
  br label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser32parse_posix_julian_day_with_leap.exit.i

_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser32parse_posix_julian_day_with_leap.exit.i: ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.2.i88.i, %bb.v, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.1.i85.i, %bb.u, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i78.i
  %.sroa.014.028.i.i82.i = phi i32 [ %i.cp, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.2.i88.i ], [ %i.ch, %bb.v ], [ %i.ch, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.1.i85.i ], [ %i.bz, %bb.u ], [ %i.bz, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i78.i ] ; 2 uses
  %or.cond.i83.i = icmp samesign ult i32 %.sroa.014.028.i.i82.i, 366
  %i.cr = shl nuw nsw i32 %.sroa.014.028.i.i82.i, 16
  %spec.select.i84.i = select i1 %or.cond.i83.i, i32 %i.cr, i32 65281 ; 4 uses
  %i.cs = trunc i32 %spec.select.i84.i to i1
  br i1 %i.cs, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser32parse_posix_julian_day_with_leap.exit.thread.i, label %bb.w

_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser32parse_posix_julian_day_with_leap.exit.thread.i: ; preds = %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser32parse_posix_julian_day_with_leap.exit.i
  %i.ct = trunc i32 %spec.select.i84.i to i16
  %.sroa.054.0.insert.insert.i = or i16 %i.ct, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.524.i)
  br label %bb.x

bb.w:                                             ; preds = %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser32parse_posix_julian_day_with_leap.exit.i
  %.sroa.568.0.extract.shift.i = lshr i32 %spec.select.i84.i, 16
  %.sroa.568.0.extract.trunc.i = trunc nuw nsw i32 %.sroa.568.0.extract.shift.i to i16
  %.sroa.524.i.1.i.1.i.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.524.i, i64 1
  store i16 %.sroa.568.0.extract.trunc.i, ptr %.sroa.524.i.1.i.1.i.1..sroa_idx, align 1
  %.sroa.524.i.0..sroa.524.i.0..sroa.524.i.0..sroa.524.0..sroa.524.0..sroa.524.0..sroa.524.1..sroa.10.0.copyload6.i = load i16, ptr %.sroa.524.i, align 2
  %i.cu = lshr i32 %spec.select.i84.i, 24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.524.i)
  br label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_posix_date.exit

bb.x:                                             ; preds = %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser32parse_posix_julian_day_with_leap.exit.thread.i, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit71.i, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser30parse_posix_julian_day_no_leap.exit.thread.i, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser22parse_weekday_of_month.exit.thread.i, %bb.d
  %.sroa.10.0.i.ph = phi i16 [ 11, %bb.d ], [ %.sroa.059.0.insert.insert.i, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser22parse_weekday_of_month.exit.thread.i ], [ 7, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i ], [ %.sroa.052.0.insert.insert.i, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser30parse_posix_julian_day_no_leap.exit.thread.i ], [ 8, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit71.i ], [ %.sroa.054.0.insert.insert.i, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser32parse_posix_julian_day_with_leap.exit.thread.i ]
  %.sroa.2.0.insert.ext.i = zext i16 %.sroa.10.0.i.ph to i24
  %.sroa.2.0.insert.shift.i = shl nuw i24 %.sroa.2.0.insert.ext.i, 8
  br label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser10maybe_byte.exit.thread

_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_posix_date.exit: ; preds = %bb.w, %bb.t, %bb.h
  %.sroa.16.0.i = phi i32 [ %i.by, %bb.t ], [ %i.cu, %bb.w ], [ %i.an, %bb.h ]
  %.sroa.10.0.i = phi i16 [ %.sroa.448.2.insert.insert.i, %bb.t ], [ %.sroa.524.i.0..sroa.524.i.0..sroa.524.i.0..sroa.524.0..sroa.524.0..sroa.524.0..sroa.524.1..sroa.10.0.copyload6.i, %bb.w ], [ %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.1..sroa.10.0.copyload.i, %bb.h ]
  %.sroa.0.0.i = phi i8 [ 2, %bb.t ], [ 1, %bb.w ], [ 0, %bb.h ] ; 3 uses
  %.sroa.10.0.insert.ext.i = zext i16 %.sroa.10.0.i to i32
  %.sroa.16.0.insert.shift.i = shl nuw nsw i32 %.sroa.16.0.i, 16
  %.sroa.10.0.insert.insert.i = or disjoint i32 %.sroa.16.0.insert.shift.i, %.sroa.10.0.insert.ext.i
  %tr.sh.diff = trunc nuw i32 %.sroa.10.0.insert.insert.i to i24 ; 3 uses
  %i.cv = load i64, ptr %i.e, align 8, !noundef !5 ; 23 uses
  %i.cw = load i64, ptr %i.c, align 8, !noundef !5 ; 7 uses
  %i.cx = icmp ult i64 %i.cw, %i.cv
  br i1 %i.cx, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser10maybe_byte.exit, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser10maybe_byte.exit.thread

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser10maybe_byte.exit: ; preds = %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_posix_date.exit
  %i.cy = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 11 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  %i.da = load i8, ptr %i.cz, align 1, !noundef !5
  %.not = icmp eq i8 %i.da, 47
  br i1 %.not, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser10maybe_byte.exit.thread

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit: ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser10maybe_byte.exit
  %i.db = add nuw i64 %i.cw, 1                    ; 10 uses
  store i64 %i.db, ptr %i.c, align 8
  %.not89 = icmp eq i64 %i.db, %i.cv
  br i1 %.not89, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser10maybe_byte.exit.thread, label %bb.y

bb.y:                                             ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dd = load i8, ptr %i.dc, align 8, !range !11, !noundef !5
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.df = tail call i64 @llvm.usub.sat.i64(i64 %i.cv, i64 %i.db)
  %exitcond.not.i.not.i.i65 = icmp ugt i64 %i.cv, %i.db
  br i1 %exitcond.not.i.not.i.i65, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.db
  %i.dh = load i8, ptr %i.dg, align 1, !noundef !5
  %i.di = add i8 %i.dh, -48                       ; 4 uses
  %or.cond.i.i.i66 = icmp ult i8 %i.di, 10
  br i1 %or.cond.i.i.i66, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i.i71, label %bb.bd

bb.ab:                                            ; preds = %bb.ac, %bb.z
  %.lcssa34.i.i = phi i64 [ %i.db, %bb.z ], [ %i.dj, %bb.ac ]
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa34.i.i, i64 noundef %i.cv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #18
  unreachable

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i.i71: ; preds = %bb.aa
  %i.dj = add nuw i64 %i.cw, 2                    ; 5 uses
  store i64 %i.dj, ptr %i.c, align 8
  %i.dk = icmp eq i64 %i.dj, %i.cv
  br i1 %i.dk, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread78.i, label %bb.ac

bb.ac:                                            ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i.i71
  %exitcond.not.i.1.i.i72 = icmp eq i64 %i.df, 1
  br i1 %exitcond.not.i.1.i.i72, label %bb.ab, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.dj
  %i.dm = load i8, ptr %i.dl, align 1, !noundef !5
  %i.dn = add i8 %i.dm, -48                       ; 2 uses
  %or.cond.i.1.i.i73 = icmp ult i8 %i.dn, 10
  br i1 %or.cond.i.1.i.i73, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.i, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread78.i

_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.i: ; preds = %bb.ad
  %i.do = mul nuw nsw i8 %i.di, 10
  %i.dp = add nuw nsw i8 %i.dn, %i.do             ; 2 uses
  %i.dq = add nuw i64 %i.cw, 3                    ; 2 uses
  store i64 %i.dq, ptr %i.c, align 8
  %or.cond.i.i77 = icmp samesign ugt i8 %i.dp, 24
  br i1 %or.cond.i.i77, label %bb.bd, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread78.i

bb.ae:                                            ; preds = %bb.y
  %i.dr = icmp ult i64 %i.db, %i.cv
  br i1 %i.dr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.db
  %i.dt = load i8, ptr %i.ds, align 1, !noundef !5
  switch i8 %i.dt, label %bb.ai [
    i8 45, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i82
    i8 43, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit6.i.i
  ]

bb.ag:                                            ; preds = %bb.ae
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.db, i64 noundef %i.cv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #18
  unreachable

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i82: ; preds = %bb.af
  %i.du = add nuw i64 %i.cw, 2                    ; 3 uses
  store i64 %i.du, ptr %i.c, align 8
  %.not7.i.i = icmp eq i64 %i.du, %i.cv
  br i1 %.not7.i.i, label %bb.bd, label %bb.ai

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit6.i.i: ; preds = %bb.af
  %i.dv = add nuw i64 %i.cw, 2                    ; 3 uses
  store i64 %i.dv, ptr %i.c, align 8
  %.not.i.i78 = icmp eq i64 %i.dv, %i.cv
  br i1 %.not.i.i78, label %bb.bd, label %bb.ai

_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread78.i: ; preds = %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.i, %bb.ad, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i.i71
  %i.dw = phi i64 [ %i.dq, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.i ], [ %i.cv, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i.i71 ], [ %i.dj, %bb.ad ]
  %..i82.i = phi i8 [ %i.dp, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.i ], [ %i.di, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i.i71 ], [ %i.di, %bb.ad ]
  %i.dx = zext nneg i8 %..i82.i to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aq, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread78.i
  %i.dy = phi i64 [ %i.ex, %bb.aq ], [ %i.dw, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread78.i ] ; 5 uses
  %.sroa.016.0.i = phi i32 [ %.sroa.551.0.extract.shift.i, %bb.aq ], [ %i.dx, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread78.i ]
  %.sroa.03.0.i = phi i32 [ %.sroa.0.1.i.ph.i, %bb.aq ], [ 1, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread78.i ]
  %i.dz = icmp ult i64 %i.dy, %i.cv
  br i1 %i.dz, label %bb.ar, label %bb.as

bb.ai:                                            ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit6.i.i, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i82, %bb.af
  %.promoted.i.i54.ph.i = phi i64 [ %i.du, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i82 ], [ %i.dv, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit6.i.i ], [ %i.db, %bb.af ] ; 8 uses
end_hunk_1
