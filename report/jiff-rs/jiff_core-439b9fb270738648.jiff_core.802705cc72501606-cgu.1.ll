Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_core-439b9fb270738648.jiff_core.802705cc72501606-cgu.1?download=true
inline.NumInlined: 198
inline.NumDeleted: 73
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser18parse_posix_offset:bb.a
_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit6.i: ; preds = %bb.c
  %i.m = add nuw i64 %i.d, 1                      ; 3 uses
  store i64 %i.m, ptr %i.c, align 8
  %.not.i = icmp eq i64 %i.m, %i.f
  br i1 %.not.i, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit6.i, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i
  %.promoted.i.i.ph = phi i64 [ %i.l, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i ], [ %i.m, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit6.i ], [ %i.d, %bb.c ], [ %i.d, %bb.a ] ; 7 uses
  %.sroa.04.0.not = phi i1 [ true, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i ], [ false, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit6.i ], [ false, %bb.c ], [ false, %bb.a ]
  %i.n = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 %.promoted.i.i.ph)
  %i.o = icmp eq i64 %.promoted.i.i.ph, %i.f
  br i1 %i.o, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %exitcond.not.i.not.i = icmp ugt i64 %i.f, %.promoted.i.i.ph
  br i1 %exitcond.not.i.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.promoted.i.i.ph
  %i.r = load i8, ptr %i.q, align 1, !noundef !5
  %i.s = add i8 %i.r, -48                         ; 4 uses
  %or.cond.i.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i.i, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread

bb.h:                                             ; preds = %bb.i, %bb.f
  %.lcssa34.i = phi i64 [ %.promoted.i.i.ph, %bb.f ], [ %i.t, %bb.i ]
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa34.i, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #18
  unreachable

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i: ; preds = %bb.g
  %i.t = add nuw i64 %.promoted.i.i.ph, 1         ; 5 uses
  store i64 %i.t, ptr %i.c, align 8
  %i.u = icmp eq i64 %i.t, %i.f
  br i1 %i.u, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core2tz6offset6OffsetNtNtBN_6bounds10RangeErrorE6expectBN_.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i
  %exitcond.not.i.1.i = icmp eq i64 %i.n, 1
  br i1 %exitcond.not.i.1.i, label %bb.h, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t
  %i.w = load i8, ptr %i.v, align 1, !noundef !5
  %i.x = add i8 %i.w, -48                         ; 2 uses
  %or.cond.i.1.i = icmp ult i8 %i.x, 10
  br i1 %or.cond.i.1.i, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread78

_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit: ; preds = %bb.j
  %i.y = mul nuw nsw i8 %i.s, 10
  %i.z = add nuw nsw i8 %i.x, %i.y                ; 2 uses
  %i.aa = add nuw i64 %.promoted.i.i.ph, 2        ; 2 uses
  store i64 %i.aa, ptr %i.c, align 8
  %or.cond.i = icmp samesign ugt i8 %i.z, 24
  br i1 %or.cond.i, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread78

_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread78: ; preds = %bb.j, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit
  %i.ab = phi i64 [ %i.aa, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit ], [ %i.t, %bb.j ] ; 5 uses
  %..i82 = phi i8 [ %i.z, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit ], [ %i.s, %bb.j ] ; 5 uses
  %i.ac = icmp ult i64 %i.ab, %i.f
  br i1 %i.ac, label %bb.k, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core2tz6offset6OffsetNtNtBN_6bounds10RangeErrorE6expectBN_.exit

bb.k:                                             ; preds = %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread78
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ab
  %i.ae = load i8, ptr %i.ad, align 1, !noundef !5
  %i.af = icmp eq i8 %i.ae, 58
  br i1 %i.af, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core2tz6offset6OffsetNtNtBN_6bounds10RangeErrorE6expectBN_.exit

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit: ; preds = %bb.k
  %i.ag = add nuw i64 %i.ab, 1                    ; 6 uses
  store i64 %i.ag, ptr %i.c, align 8
  %.not = icmp eq i64 %i.ag, %i.f
  br i1 %.not, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread, label %bb.l

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core2tz6offset6OffsetNtNtBN_6bounds10RangeErrorE6expectBN_.exit: ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i, %bb.x, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread78, %bb.k, %bb.s, %bb.t
  %..i82111 = phi i8 [ %..i82, %bb.x ], [ %..i82, %bb.k ], [ %..i82, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread78 ], [ %..i82, %bb.s ], [ %..i82, %bb.t ], [ %i.s, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i ]
  %.sroa.037.0 = phi i32 [ %i.bq, %bb.x ], [ 0, %bb.k ], [ 0, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread78 ], [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i ]
  %.sroa.027.0 = phi i8 [ %i.bc, %bb.x ], [ 0, %bb.k ], [ 0, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread78 ], [ %i.bc, %bb.s ], [ %i.bc, %bb.t ], [ 0, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i ]
  %i.ah = zext nneg i8 %..i82111 to i32
  %.sroa.5.0.extract.shift.i = mul nuw nsw i32 %i.ah, 3600
  %i.ai = zext nneg i8 %.sroa.027.0 to i32
  %i.aj = mul nuw nsw i32 %i.ai, 60
  %i.ak = tail call noundef i32 @_RNvXs1_NtNtCsb09rMIQFAXO_9jiff_core2tz6offsetNtB5_6OffsetINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddlE3add(i32 noundef %.sroa.5.0.extract.shift.i, i32 noundef %i.aj)
  %i.al = tail call noundef i32 @_RNvXs1_NtNtCsb09rMIQFAXO_9jiff_core2tz6offsetNtB5_6OffsetINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddlE3add(i32 noundef %i.ak, i32 noundef %.sroa.037.0) ; 2 uses
  %i.am = sub i32 0, %i.al
  %.sroa.041.0 = select i1 %.sroa.04.0.not, i32 %i.al, i32 %i.am ; 3 uses
  %i.an = add i32 %.sroa.041.0, 89999
  %or.cond2 = icmp ult i32 %i.an, 179999
  br i1 %or.cond2, label %bb.z, label %bb.y, !prof !7

bb.l:                                             ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit
  %i.ao = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 %i.ag)
  %exitcond.not.i.not.i67 = icmp ugt i64 %i.f, %i.ag
  br i1 %exitcond.not.i.not.i67, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ag
  %i.aq = load i8, ptr %i.ap, align 1, !noundef !5 ; 2 uses
  %i.ar = icmp ult i8 %i.aq, 48
  br i1 %i.ar, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread, label %bb.o

bb.n:                                             ; preds = %bb.p, %bb.l
  %.lcssa30.i = phi i64 [ %i.ag, %bb.l ], [ %i.au, %bb.p ]
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa30.i, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #18
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.as = add i8 %i.aq, -48                       ; 2 uses
  %i.at = icmp ugt i8 %i.as, 9
  br i1 %i.at, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i68

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i68: ; preds = %bb.o
  %i.au = add nuw i64 %i.ab, 2                    ; 4 uses
  store i64 %i.au, ptr %i.c, align 8
  %i.av = icmp eq i64 %i.au, %i.f
  br i1 %i.av, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread, label %bb.p

bb.p:                                             ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i68
  %exitcond.not.i.1.i69 = icmp eq i64 %i.ao, 1
  br i1 %exitcond.not.i.1.i69, label %bb.n, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.au
  %i.ax = load i8, ptr %i.aw, align 1, !noundef !5 ; 2 uses
  %i.ay = icmp ult i8 %i.ax, 48
  br i1 %i.ay, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = add i8 %i.ax, -48                       ; 2 uses
  %i.ba = icmp ugt i8 %i.az, 9
  br i1 %i.ba, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser12parse_minute.exit

_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser12parse_minute.exit: ; preds = %bb.r
  %i.bb = add nuw i64 %i.ab, 3                    ; 3 uses
  store i64 %i.bb, ptr %i.c, align 8
  %narrow.i = mul nuw nsw i8 %i.as, 10
  %i.bc = add nuw nsw i8 %i.az, %narrow.i         ; 4 uses
  %or.cond.i70 = icmp samesign ugt i8 %i.bc, 59
  br i1 %or.cond.i70, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread, label %bb.s

bb.s:                                             ; preds = %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser12parse_minute.exit
  %i.bd = icmp ult i64 %i.bb, %i.f
  br i1 %i.bd, label %bb.t, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core2tz6offset6OffsetNtNtBN_6bounds10RangeErrorE6expectBN_.exit

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bb
  %i.bf = load i8, ptr %i.be, align 1, !noundef !5
  %i.bg = icmp eq i8 %i.bf, 58
  br i1 %i.bg, label %bb.u, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core2tz6offset6OffsetNtNtBN_6bounds10RangeErrorE6expectBN_.exit

bb.u:                                             ; preds = %bb.t
  %i.bh = tail call fastcc noundef zeroext i1 @_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump(ptr noundef nonnull align 8 %0)
  br i1 %i.bh, label %bb.v, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.bi = tail call fastcc { i1, i8 } @_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser12parse_second(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.bj = extractvalue { i1, i8 } %i.bi, 0
  %i.bk = extractvalue { i1, i8 } %i.bi, 1        ; 3 uses
  br i1 %i.bj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bl = add nsw i8 %i.bk, 1
  %i.bm = icmp ult i8 %i.bl, 5
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = zext i8 %i.bk to i64
  %i.bo = shl nuw nsw i64 %i.bn, 16
  %i.bp = or disjoint i64 %i.bo, 1281
  br label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread

bb.x:                                             ; preds = %bb.v
  %i.bq = sext i8 %i.bk to i32
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core2tz6offset6OffsetNtNtBN_6bounds10RangeErrorE6expectBN_.exit

bb.y:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core2tz6offset6OffsetNtNtBN_6bounds10RangeErrorE6expectBN_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.sroa.041.0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.458.0..sroa_idx, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @30, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #18
  unreachable

bb.z:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core2tz6offset6OffsetNtNtBN_6bounds10RangeErrorE6expectBN_.exit
  %i.br = zext i32 %.sroa.041.0 to i64
  %i.bs = shl nuw i64 %i.br, 32
  br label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread

_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread: ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit6.i, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser12parse_minute.exit, %bb.m, %bb.q, %bb.r, %bb.o, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i68, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit, %bb.g, %bb.e, %bb.u, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit, %bb.w, %bb.z
  %.sroa.14.0.insert.insert = phi i64 [ 131841, %bb.m ], [ 513, %bb.u ], [ 16711681, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit ], [ %i.bp, %bb.w ], [ %i.bs, %bb.z ], [ 257, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit ], [ 1, %bb.e ], [ 1, %bb.g ], [ 66305, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i68 ], [ 131841, %bb.o ], [ 131841, %bb.r ], [ 16712449, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser12parse_minute.exit ], [ 131841, %bb.q ], [ 1025, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i ], [ 66561, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit6.i ]
  ret i64 %.sroa.14.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define internal fastcc i64 @_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser20parse_posix_datetime(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %.sroa.524.i = alloca [3 x i8], align 2         ; 5 uses
  %.sroa.5.i = alloca [3 x i8], align 2           ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 25 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 13 uses
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d
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
  %.sroa.0.0.i72127.i = phi i8 [ %.sroa.014.028.i.i.i.i, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser22parse_weekday_of_month.exit.i ], [ 5, %bb.n ], [ 5, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser10parse_week.exit.i.i ], [ 4, %bb.i ], [ 5, %bb.m ], [ 2, %bb.o ], [ 1, %bb.k ], [ 2, %bb.p ], [ 0, %bb.q ], [ 6, %bb.s ], [ 3, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i ], [ 4, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser11parse_month.exit.i.i ], [ 1, %bb.l ]
  %.sroa.9.0.i126.i = phi i8 [ %i.bi, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser22parse_weekday_of_month.exit.i ], [ 2, %bb.n ], [ -1, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser10parse_week.exit.i.i ], [ 0, %bb.i ], [ 2, %bb.m ], [ undef, %bb.o ], [ undef, %bb.k ], [ undef, %bb.p ], [ undef, %bb.q ], [ %i.bs, %bb.s ], [ undef, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i ], [ -1, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser11parse_month.exit.i.i ], [ undef, %bb.l ]
  %.sroa.0.0.insert.ext.i.i = zext nneg i8 %.sroa.0.0.i72127.i to i16
  %.sroa.064.1.extract.trunc.i = zext i8 %.sroa.9.0.i126.i to i16
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
  %.not90 = icmp eq i64 %i.db, %i.cv
  br i1 %.not90, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser10maybe_byte.exit.thread, label %bb.y

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
    i8 45, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i83
    i8 43, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit6.i.i
  ]

bb.ag:                                            ; preds = %bb.ae
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.db, i64 noundef %i.cv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #18
  unreachable

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i83: ; preds = %bb.af
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

bb.ai:                                            ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit6.i.i, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i83, %bb.af
  %.promoted.i.i54.ph.i = phi i64 [ %i.du, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i83 ], [ %i.dv, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit6.i.i ], [ %i.db, %bb.af ] ; 8 uses
  %.sroa.0.1.i.ph.i = phi i32 [ -1, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i83 ], [ 1, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit6.i.i ], [ 1, %bb.af ]
  %i.ea = tail call i64 @llvm.usub.sat.i64(i64 %i.cv, i64 %.promoted.i.i54.ph.i) ; 2 uses
  %i.eb = icmp eq i64 %.promoted.i.i54.ph.i, %i.cv
  br i1 %i.eb, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser21parse_hour_ianav3plus.exit.thread.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %exitcond.not.i.not.i55.i = icmp ugt i64 %i.cv, %.promoted.i.i54.ph.i
  br i1 %exitcond.not.i.not.i55.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.promoted.i.i54.ph.i
  %i.ed = load i8, ptr %i.ec, align 1, !noundef !5
  %i.ee = add i8 %i.ed, -48                       ; 2 uses
  %or.cond.i.i56.i = icmp ult i8 %i.ee, 10
  br i1 %or.cond.i.i56.i, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i57.i, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser21parse_hour_ianav3plus.exit.thread.i

bb.al:                                            ; preds = %bb.ao, %bb.am, %bb.aj
  %.lcssa35.i.i79 = phi i64 [ %.promoted.i.i54.ph.i, %bb.aj ], [ %i.eg, %bb.am ], [ %i.eo, %bb.ao ]
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa35.i.i79, i64 noundef %i.cv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #18
  unreachable

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i57.i: ; preds = %bb.ak
  %i.ef = zext nneg i8 %i.ee to i32               ; 3 uses
  %i.eg = add nuw i64 %.promoted.i.i54.ph.i, 1    ; 5 uses
  store i64 %i.eg, ptr %i.c, align 8
  %i.eh = icmp eq i64 %i.eg, %i.cv
  br i1 %i.eh, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser21parse_hour_ianav3plus.exit.i, label %bb.am

bb.am:                                            ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i57.i
  %exitcond.not.i.1.i58.i = icmp eq i64 %i.ea, 1
  br i1 %exitcond.not.i.1.i58.i, label %bb.al, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.eg
  %i.ej = load i8, ptr %i.ei, align 1, !noundef !5
  %i.ek = add i8 %i.ej, -48                       ; 2 uses
  %or.cond.i.1.i59.i = icmp ult i8 %i.ek, 10
  br i1 %or.cond.i.1.i59.i, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.1.i64.i, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser21parse_hour_ianav3plus.exit.i

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.1.i64.i: ; preds = %bb.an
  %i.el = mul nuw nsw i32 %i.ef, 10
  %i.em = zext nneg i8 %i.ek to i32
  %i.en = add nuw nsw i32 %i.el, %i.em            ; 3 uses
  %i.eo = add nuw i64 %.promoted.i.i54.ph.i, 2    ; 5 uses
  store i64 %i.eo, ptr %i.c, align 8
  %i.ep = icmp eq i64 %i.eo, %i.cv
  br i1 %i.ep, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser21parse_hour_ianav3plus.exit.i, label %bb.ao

bb.ao:                                            ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.1.i64.i
  %exitcond.not.i.2.i.i80 = icmp eq i64 %i.ea, 2
  br i1 %exitcond.not.i.2.i.i80, label %bb.al, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.eo
  %i.er = load i8, ptr %i.eq, align 1, !noundef !5
  %i.es = add i8 %i.er, -48                       ; 2 uses
  %or.cond.i.2.i.i81 = icmp ult i8 %i.es, 10
  br i1 %or.cond.i.2.i.i81, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.2.i.i82, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser21parse_hour_ianav3plus.exit.i

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.2.i.i82: ; preds = %bb.ap
  %i.et = mul nuw nsw i32 %i.en, 10
  %i.eu = zext nneg i8 %i.es to i32
  %i.ev = add nuw nsw i32 %i.et, %i.eu
  %i.ew = add nuw i64 %.promoted.i.i54.ph.i, 3    ; 2 uses
  store i64 %i.ew, ptr %i.c, align 8
  br label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser21parse_hour_ianav3plus.exit.i

_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser21parse_hour_ianav3plus.exit.i: ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.2.i.i82, %bb.ap, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.1.i64.i, %bb.an, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i57.i
  %i.ex = phi i64 [ %i.ew, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.2.i.i82 ], [ %i.eo, %bb.ap ], [ %i.cv, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.1.i64.i ], [ %i.eg, %bb.an ], [ %i.cv, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i57.i ]
  %.sroa.014.028.i.i61.i = phi i32 [ %i.ev, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.2.i.i82 ], [ %i.en, %bb.ap ], [ %i.en, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.1.i64.i ], [ %i.ef, %bb.an ], [ %i.ef, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i57.i ] ; 2 uses
  %or.cond.i62.i = icmp samesign ult i32 %.sroa.014.028.i.i61.i, 168
  %i.ey = shl nuw nsw i32 %.sroa.014.028.i.i61.i, 16
  %spec.select.i63.i = select i1 %or.cond.i62.i, i32 %i.ey, i32 65281 ; 3 uses
  %i.ez = trunc i32 %spec.select.i63.i to i1
  br i1 %i.ez, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser21parse_hour_ianav3plus.exit.thread.i, label %bb.aq

_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser21parse_hour_ianav3plus.exit.thread.i: ; preds = %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser21parse_hour_ianav3plus.exit.i, %bb.ak, %bb.ai
  %.sroa.5.0.insert.insert.i84.i = phi i32 [ %spec.select.i63.i, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser21parse_hour_ianav3plus.exit.i ], [ 1, %bb.ai ], [ 1, %bb.ak ]
  %.sroa.450.0.extract.shift.i = lshr i32 %.sroa.5.0.insert.insert.i84.i, 8
  %.sroa.450.0.extract.trunc.i = trunc i32 %.sroa.450.0.extract.shift.i to i8
  br label %.sink.split

bb.aq:                                            ; preds = %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser21parse_hour_ianav3plus.exit.i
  %.sroa.551.0.extract.shift.i = lshr i32 %spec.select.i63.i, 16
  br label %bb.ah

bb.ar:                                            ; preds = %bb.ah
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.dy
  %i.fb = load i8, ptr %i.fa, align 1, !noundef !5
  %i.fc = icmp eq i8 %i.fb, 58
  br i1 %i.fc, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i75, label %bb.as

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i75: ; preds = %bb.ar
  %i.fd = add nuw i64 %i.dy, 1                    ; 3 uses
  store i64 %i.fd, ptr %i.c, align 8
  %.not.i76 = icmp eq i64 %i.fd, %i.cv
  br i1 %.not.i76, label %bb.bd, label %bb.at

bb.as:                                            ; preds = %bb.bb, %bb.ay, %bb.ax, %bb.ar, %bb.ah
  %.sroa.032.0.i = phi i8 [ %i.fy, %bb.bb ], [ 0, %bb.ar ], [ 0, %bb.ah ], [ %i.fy, %bb.ax ], [ %i.fy, %bb.ay ]
  %.sroa.042.0.i = phi i32 [ %i.gh, %bb.bb ], [ 0, %bb.ar ], [ 0, %bb.ah ], [ 0, %bb.ax ], [ 0, %bb.ay ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.fe = mul nuw nsw i32 %.sroa.016.0.i, 3600
  %i.ff = zext nneg i8 %.sroa.032.0.i to i32
  %i.fg = mul nuw nsw i32 %i.ff, 60
  %i.fh = add nsw i32 %.sroa.042.0.i, %i.fe
  %i.fi = add nsw i32 %i.fh, %i.fg
  %i.fj = mul nsw i32 %i.fi, %.sroa.03.0.i        ; 3 uses
  store i32 %i.fj, ptr %i.b, align 4
  %i.fk = add nsw i32 %i.fj, 604799
  %or.cond.i74 = icmp ult i32 %i.fk, 1209599
  br i1 %or.cond.i74, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_posix_time.exit, label %bb.bc, !prof !7

bb.at:                                            ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i75
  %i.fl = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.fd
  %i.fm = load i8, ptr %i.fl, align 1, !noundef !5 ; 2 uses
  %i.fn = icmp ult i8 %i.fm, 48
  br i1 %i.fn, label %bb.bd, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fo = add i8 %i.fm, -48                       ; 2 uses
  %i.fp = icmp ugt i8 %i.fo, 9
  br i1 %i.fp, label %bb.bd, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i68.i

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i68.i: ; preds = %bb.au
  %i.fq = add nuw i64 %i.dy, 2                    ; 3 uses
  store i64 %i.fq, ptr %i.c, align 8
  %i.fr = icmp eq i64 %i.fq, %i.cv
  br i1 %i.fr, label %bb.bd, label %bb.av

bb.av:                                            ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i68.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.fq
  %i.ft = load i8, ptr %i.fs, align 1, !noundef !5 ; 2 uses
  %i.fu = icmp ult i8 %i.ft, 48
  br i1 %i.fu, label %bb.bd, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fv = add i8 %i.ft, -48                       ; 2 uses
  %i.fw = icmp ugt i8 %i.fv, 9
  br i1 %i.fw, label %bb.bd, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser12parse_minute.exit.i

_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser12parse_minute.exit.i: ; preds = %bb.aw
  %i.fx = add nuw i64 %i.dy, 3                    ; 3 uses
  store i64 %i.fx, ptr %i.c, align 8
  %narrow.i.i = mul nuw nsw i8 %i.fo, 10
  %i.fy = add nuw nsw i8 %i.fv, %narrow.i.i       ; 4 uses
  %or.cond.i70.i = icmp samesign ugt i8 %i.fy, 59
  br i1 %or.cond.i70.i, label %bb.bd, label %bb.ax

bb.ax:                                            ; preds = %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser12parse_minute.exit.i
  %i.fz = icmp ult i64 %i.fx, %i.cv
  br i1 %i.fz, label %bb.ay, label %bb.as

bb.ay:                                            ; preds = %bb.ax
  %i.ga = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.fx
  %i.gb = load i8, ptr %i.ga, align 1, !noundef !5
  %i.gc = icmp eq i8 %i.gb, 58
  br i1 %i.gc, label %bb.az, label %bb.as

bb.az:                                            ; preds = %bb.ay
  %i.gd = tail call fastcc noundef zeroext i1 @_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump(ptr noundef nonnull align 8 %0)
  br i1 %i.gd, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.ge = tail call fastcc { i1, i8 } @_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser12parse_second(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.gf = extractvalue { i1, i8 } %i.ge, 0
  %i.gg = extractvalue { i1, i8 } %i.ge, 1        ; 2 uses
  br i1 %i.gf, label %.sink.split, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gh = sext i8 %i.gg to i32
  br label %bb.as

bb.bc:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.446.0..sroa_idx.i, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @28, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #18
  unreachable

_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_posix_time.exit: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.gi = zext i32 %i.fj to i64
  %i.gj = shl nuw i64 %i.gi, 32
  br label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser10maybe_byte.exit.thread

.sink.split:                                      ; preds = %bb.ba, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser21parse_hour_ianav3plus.exit.thread.i
  %.sroa.450.0.extract.trunc.i.sink = phi i8 [ %.sroa.450.0.extract.trunc.i, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser21parse_hour_ianav3plus.exit.thread.i ], [ %i.gg, %bb.ba ] ; 2 uses
  %.sroa.9.0.i.ph.ph = phi i8 [ 0, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser21parse_hour_ianav3plus.exit.thread.i ], [ 6, %bb.ba ]
  %i.gk = add i8 %.sroa.450.0.extract.trunc.i.sink, 1
  %i.gl = icmp ult i8 %i.gk, 5
  tail call void @llvm.assume(i1 %i.gl)
  br label %bb.bd

bb.bd:                                            ; preds = %.sink.split, %bb.at, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.i, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i75, %bb.az, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i83, %bb.aa, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i68.i, %bb.au, %bb.aw, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser12parse_minute.exit.i, %bb.av, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit6.i.i
  %.sroa.16.0.i67.ph = phi i8 [ 1, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit6.i.i ], [ 2, %bb.av ], [ -1, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser12parse_minute.exit.i ], [ 2, %bb.aw ], [ 2, %bb.au ], [ 1, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i68.i ], [ 0, %bb.aa ], [ 0, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i83 ], [ undef, %bb.az ], [ undef, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i75 ], [ 2, %bb.at ], [ -1, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.i ], [ %.sroa.450.0.extract.trunc.i.sink, %.sink.split ]
  %.sroa.9.0.i.ph = phi i8 [ 5, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit6.i.i ], [ 4, %bb.av ], [ 4, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser12parse_minute.exit.i ], [ 4, %bb.aw ], [ 4, %bb.au ], [ 4, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i68.i ], [ 1, %bb.aa ], [ 5, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i83 ], [ 3, %bb.az ], [ 2, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i75 ], [ 4, %bb.at ], [ 1, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.i ], [ %.sroa.9.0.i.ph.ph, %.sink.split ]
  %.sroa.3.0.insert.ext.i = zext i8 %.sroa.16.0.i67.ph to i24
  %.sroa.3.0.insert.shift.i = shl nuw i24 %.sroa.3.0.insert.ext.i, 16
  %.sroa.2.0.insert.ext.i84 = zext nneg i8 %.sroa.9.0.i.ph to i24
  %.sroa.2.0.insert.shift.i85 = shl nuw nsw i24 %.sroa.2.0.insert.ext.i84, 8
  %.sroa.2.0.insert.insert.i = or disjoint i24 %.sroa.2.0.insert.shift.i85, %.sroa.3.0.insert.shift.i
  %.sroa.0.0.insert.insert.i86 = or disjoint i24 %.sroa.2.0.insert.insert.i, 2
  br label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser10maybe_byte.exit.thread

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser10maybe_byte.exit.thread: ; preds = %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_posix_time.exit, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_posix_date.exit, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser10maybe_byte.exit, %bb.x, %bb.bd
  %.sroa.6.sroa.0.0 = phi i24 [ %.sroa.2.0.insert.shift.i, %bb.x ], [ %tr.sh.diff, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser10maybe_byte.exit ], [ %.sroa.0.0.insert.insert.i86, %bb.bd ], [ %tr.sh.diff, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_posix_date.exit ], [ 1, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit ], [ %tr.sh.diff, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_posix_time.exit ]
  %.sroa.9.0 = phi i64 [ 0, %bb.x ], [ 30923764531200, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser10maybe_byte.exit ], [ 0, %bb.bd ], [ 30923764531200, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_posix_date.exit ], [ 0, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit ], [ %i.gj, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_posix_time.exit ]
  %.sroa.0.0 = phi i8 [ -1, %bb.x ], [ %.sroa.0.0.i, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser10maybe_byte.exit ], [ -1, %bb.bd ], [ %.sroa.0.0.i, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_posix_date.exit ], [ -1, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit ], [ %.sroa.0.0.i, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_posix_time.exit ]
  %.sroa.6.0.insert.ext = zext i24 %.sroa.6.sroa.0.0 to i64
  %.sroa.6.0.insert.shift = shl nuw nsw i64 %.sroa.6.0.insert.ext, 8
  %.sroa.6.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.9.0
  %.sroa.0.0.insert.ext = zext i8 %.sroa.0.0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.insert, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser21parse_posix_time_zone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull align 8 captures(none) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.472.i.i = alloca [7 x i8], align 4       ; 4 uses
  %.sroa.459.i.i = alloca [7 x i8], align 4       ; 7 uses
  %i.a = alloca [4 x i8], align 2                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.8165.i = alloca [3 x i8], align 1        ; 5 uses
  %.sroa.12 = alloca [3 x i8], align 1            ; 2 uses
  %.sroa.20.sroa.8 = alloca [3 x i8], align 1     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.472.i.i, i64 4
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.8135 = alloca [3 x i8], align 1          ; 5 uses
  %i.e = getelementptr i8, ptr %1, i64 8          ; 5 uses
  %.val117 = load i64, ptr %i.e, align 8, !noundef !5
  %i.f = getelementptr i8, ptr %1, i64 16         ; 7 uses
  %.val118 = load i64, ptr %i.f, align 8, !noundef !5
  %i.g = icmp eq i64 %.val118, %.val117
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8135)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser18parse_abbreviation(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %1)
  %i.h = load i8, ptr %i.d, align 8, !range !6, !noundef !5 ; 4 uses
  %i.i = icmp eq i8 %i.h, -1
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 5, ptr %i.k, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.aq

bb.d:                                             ; preds = %bb.b
  %i.l = load i16, ptr %i.j, align 1
  %i.m = zext i16 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 8
  %.sroa.058.0.insert.insert = or disjoint i32 %i.n, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 %.sroa.058.0.insert.insert, ptr %i.o, align 1
  store i8 -1, ptr %0, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEBG_.exit133

bb.e:                                             ; preds = %bb.b
  %.sroa.456.0.copyload = load i32, ptr %i.j, align 1
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.8135, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.557.0..sroa_idx, i64 3, i1 false)
  %.sroa.557.sroa.4.0..sroa.557.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.557.sroa.4.0.copyload = load ptr, ptr %.sroa.557.sroa.4.0..sroa.557.0..sroa_idx.sroa_idx, align 8 ; 5 uses
  %.sroa.557.sroa.5.0..sroa.557.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.557.sroa.5.0.copyload = load i64, ptr %.sroa.557.sroa.5.0..sroa.557.0..sroa_idx.sroa_idx, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.p = invoke fastcc i64 @_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser18parse_posix_offset(ptr noundef nonnull align 8 %1)
          to label %bb.h unwind label %bb.g       ; 3 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix3DstEEB13_.exit: ; preds = %bb.i, %bb.r, %bb.q, %bb.g
  %.pn113 = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.ai, %bb.q ], [ %i.t, %bb.i ], [ %i.ai, %bb.r ]
  %switch.i.i = icmp samesign ult i8 %i.h, 2
  %i.q = icmp eq i64 %.sroa.557.sroa.5.0.copyload, 0
  %or.cond181 = select i1 %switch.i.i, i1 true, i1 %i.q
  br i1 %or.cond181, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEBG_.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix3DstEEB13_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.557.sroa.4.0.copyload) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.557.sroa.4.0.copyload, i64 noundef range(i64 1, 0) %.sroa.557.sroa.5.0.copyload, i64 noundef 1) #17, !noalias !246
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEBG_.exit

bb.g:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix3DstEEB13_.exit

bb.h:                                             ; preds = %bb.e
  %.sroa.7101.0.extract.shift = lshr i64 %i.p, 32
  %.sroa.7101.0.extract.trunc = trunc nuw i64 %.sroa.7101.0.extract.shift to i32 ; 2 uses
  %i.s = trunc i64 %i.p to i1
  br i1 %i.s, label %bb.ar, label %bb.j

bb.i:                                             ; preds = %bb.o, %bb.l
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix3DstEEB13_.exit

bb.j:                                             ; preds = %bb.h
  %.val = load i64, ptr %i.e, align 8, !noundef !5 ; 3 uses
  %.val116 = load i64, ptr %i.f, align 8, !noundef !5 ; 4 uses
  %i.u = icmp eq i64 %.val116, %.val
  br i1 %i.u, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = icmp ult i64 %.val116, %.val
  br i1 %i.v, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.val116, i64 noundef %.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #18
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.n, %bb.am, %bb.j
  %.sroa.20.sroa.0.0 = phi i8 [ undef, %bb.j ], [ %.sroa.084.0.extract.trunc.i.i, %bb.am ], [ undef, %bb.n ]
  %.sroa.20.sroa.6.0 = phi i32 [ undef, %bb.j ], [ %.sroa.459.i.i.0..sroa.459.i.i.0..sroa.459.i.i.0..sroa.459.i.0..sroa.459.i.0..sroa.459.0..sroa.459.0..sroa.459.0..sroa.459.0..sroa.459.1..sroa.68.0.copyload.i.i, %bb.am ], [ undef, %bb.n ]
  %.sroa.20.sroa.10.0 = phi i8 [ undef, %bb.j ], [ %.sroa.087.0.extract.trunc.i.i, %bb.am ], [ undef, %bb.n ]
  %.sroa.20.sroa.12.0 = phi i32 [ undef, %bb.j ], [ %.sroa.472.i.i.0..sroa.472.i.i.0..sroa.472.i.i.0..sroa.472.i.0..sroa.472.i.0..sroa.472.0..sroa.472.0..sroa.472.0..sroa.472.0..sroa.472.1..sroa.635.0.copyload.i.i, %bb.am ], [ undef, %bb.n ]
  %.sroa.17.0 = phi i64 [ undef, %bb.j ], [ %.sroa.575.sroa.5.0.copyload.i, %bb.am ], [ undef, %bb.n ]
  %.sroa.14.0 = phi ptr [ undef, %bb.j ], [ %.sroa.575.sroa.4.0.copyload.i, %bb.am ], [ undef, %bb.n ]
  %.sroa.10.0 = phi i32 [ undef, %bb.j ], [ %.sroa.474.0.copyload.i, %bb.am ], [ undef, %bb.n ]
  %.sroa.0137.0 = phi i8 [ -1, %bb.j ], [ %i.ac, %bb.am ], [ -1, %bb.n ]
  %.sroa.20.sroa.16.0 = phi i32 [ undef, %bb.j ], [ %.sroa.036.0.i, %bb.am ], [ undef, %bb.n ]
end_hunk_0
