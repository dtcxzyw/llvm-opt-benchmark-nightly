Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_core-439b9fb270738648.jiff_core.802705cc72501606-cgu.1?download=true
inline.NumInlined: 198
inline.NumDeleted: 73
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser20parse_posix_datetime:bb.a
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

bb.bd:                                            ; preds = %.sink.split, %bb.at, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.i, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i75, %bb.az, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i82, %bb.aa, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i68.i, %bb.au, %bb.aw, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser12parse_minute.exit.i, %bb.av, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit6.i.i
  %.sroa.16.0.i67.ph = phi i8 [ 1, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit6.i.i ], [ 2, %bb.av ], [ -1, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser12parse_minute.exit.i ], [ 2, %bb.aw ], [ 2, %bb.au ], [ 1, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i68.i ], [ 0, %bb.aa ], [ 0, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i82 ], [ undef, %bb.az ], [ undef, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i75 ], [ 2, %bb.at ], [ -1, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.i ], [ %.sroa.450.0.extract.trunc.i.sink, %.sink.split ]
  %.sroa.9.0.i.ph = phi i8 [ 5, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit6.i.i ], [ 4, %bb.av ], [ 4, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser12parse_minute.exit.i ], [ 4, %bb.aw ], [ 4, %bb.au ], [ 4, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i68.i ], [ 1, %bb.aa ], [ 5, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i82 ], [ 3, %bb.az ], [ 2, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i75 ], [ 4, %bb.at ], [ 1, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.i ], [ %.sroa.9.0.i.ph.ph, %.sink.split ]
  %.sroa.3.0.insert.ext.i = zext i8 %.sroa.16.0.i67.ph to i24
  %.sroa.3.0.insert.shift.i = shl nuw i24 %.sroa.3.0.insert.ext.i, 16
  %.sroa.2.0.insert.ext.i83 = zext nneg i8 %.sroa.9.0.i.ph to i24
  %.sroa.2.0.insert.shift.i84 = shl nuw nsw i24 %.sroa.2.0.insert.ext.i83, 8
  %.sroa.2.0.insert.insert.i = or disjoint i24 %.sroa.2.0.insert.shift.i84, %.sroa.3.0.insert.shift.i
  %.sroa.0.0.insert.insert.i85 = or disjoint i24 %.sroa.2.0.insert.insert.i, 2
  br label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser10maybe_byte.exit.thread

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser10maybe_byte.exit.thread: ; preds = %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_posix_time.exit, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_posix_date.exit, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser10maybe_byte.exit, %bb.x, %bb.bd
  %.sroa.6.sroa.0.0 = phi i24 [ %.sroa.2.0.insert.shift.i, %bb.x ], [ %tr.sh.diff, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser10maybe_byte.exit ], [ %.sroa.0.0.insert.insert.i85, %bb.bd ], [ %tr.sh.diff, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_posix_date.exit ], [ 1, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit ], [ %tr.sh.diff, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_posix_time.exit ]
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
  br label %bb.ap

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

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix3DstEEB13_.exit: ; preds = %2, %bb.q, %bb.p, %bb.g
  %.pn113 = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.ah, %bb.p ], [ %3, %2 ], [ %i.ah, %bb.q ]
  %switch.i.i = icmp samesign ult i8 %i.h, 2
  %i.q = icmp eq i64 %.sroa.557.sroa.5.0.copyload, 0
  %or.cond181 = select i1 %switch.i.i, i1 true, i1 %i.q
  br i1 %or.cond181, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEBG_.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix3DstEEB13_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.557.sroa.4.0.copyload) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.557.sroa.4.0.copyload, i64 noundef range(i64 1, 0) %.sroa.557.sroa.5.0.copyload, i64 noundef 1) #17, !noalias !223
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEBG_.exit

bb.g:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix3DstEEB13_.exit

bb.h:                                             ; preds = %bb.e
  %.sroa.7101.0.extract.shift = lshr i64 %i.p, 32
  %.sroa.7101.0.extract.trunc = trunc nuw i64 %.sroa.7101.0.extract.shift to i32 ; 2 uses
  %i.s = trunc i64 %i.p to i1
  br i1 %i.s, label %bb.aq, label %bb.i

2:                                                ; preds = %bb.n, %bb.k
  %3 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix3DstEEB13_.exit

bb.i:                                             ; preds = %bb.h
  %.val = load i64, ptr %i.e, align 8, !noundef !5 ; 3 uses
  %.val116 = load i64, ptr %i.f, align 8, !noundef !5 ; 4 uses
  %i.t = icmp eq i64 %.val116, %.val
  br i1 %i.t, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = icmp ult i64 %.val116, %.val
  br i1 %i.u, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.val116, i64 noundef %.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #18
          to label %.noexc unwind label %2

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.m, %bb.al, %bb.i
  %.sroa.20.sroa.0.0 = phi i8 [ undef, %bb.i ], [ %.sroa.084.0.extract.trunc.i.i, %bb.al ], [ undef, %bb.m ]
  %.sroa.20.sroa.6.0 = phi i32 [ undef, %bb.i ], [ %.sroa.459.i.i.0..sroa.459.i.i.0..sroa.459.i.i.0..sroa.459.i.0..sroa.459.i.0..sroa.459.0..sroa.459.0..sroa.459.0..sroa.459.0..sroa.459.1..sroa.68.0.copyload.i.i, %bb.al ], [ undef, %bb.m ]
  %.sroa.20.sroa.10.0 = phi i8 [ undef, %bb.i ], [ %.sroa.087.0.extract.trunc.i.i, %bb.al ], [ undef, %bb.m ]
  %.sroa.20.sroa.12.0 = phi i32 [ undef, %bb.i ], [ %.sroa.472.i.i.0..sroa.472.i.i.0..sroa.472.i.i.0..sroa.472.i.0..sroa.472.i.0..sroa.472.0..sroa.472.0..sroa.472.0..sroa.472.0..sroa.472.1..sroa.635.0.copyload.i.i, %bb.al ], [ undef, %bb.m ]
  %.sroa.17.0 = phi i64 [ undef, %bb.i ], [ %.sroa.575.sroa.5.0.copyload.i, %bb.al ], [ undef, %bb.m ]
  %.sroa.14.0 = phi ptr [ undef, %bb.i ], [ %.sroa.575.sroa.4.0.copyload.i, %bb.al ], [ undef, %bb.m ]
  %.sroa.10.0 = phi i32 [ undef, %bb.i ], [ %.sroa.474.0.copyload.i, %bb.al ], [ undef, %bb.m ]
  %.sroa.0137.0 = phi i8 [ -1, %bb.i ], [ %i.ab, %bb.al ], [ -1, %bb.m ]
  %.sroa.20.sroa.16.0 = phi i32 [ undef, %bb.i ], [ %.sroa.036.0.i, %bb.al ], [ undef, %bb.m ]
  %.sroa.052.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.052.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.8135, i64 3, i1 false)
  store i8 %i.h, ptr %0, align 8
  %.sroa.052.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 %.sroa.456.0.copyload, ptr %.sroa.052.sroa.4.0..sroa_idx, align 1
  %.sroa.052.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.557.sroa.4.0.copyload, ptr %.sroa.052.sroa.6.0..sroa_idx, align 8
  %.sroa.052.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.557.sroa.5.0.copyload, ptr %.sroa.052.sroa.7.0..sroa_idx, align 8
  %.sroa.052.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.0137.0, ptr %.sroa.052.sroa.8.0..sroa_idx, align 8
  %.sroa.052.sroa.8.sroa.4.0..sroa.052.sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i32 %.sroa.10.0, ptr %.sroa.052.sroa.8.sroa.4.0..sroa.052.sroa.8.0..sroa_idx.sroa_idx, align 1
  %.sroa.052.sroa.8.sroa.5.0..sroa.052.sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.052.sroa.8.sroa.5.0..sroa.052.sroa.8.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.12, i64 3, i1 false)
  %.sroa.052.sroa.8.sroa.6.0..sroa.052.sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.14.0, ptr %.sroa.052.sroa.8.sroa.6.0..sroa.052.sroa.8.0..sroa_idx.sroa_idx, align 8
  %.sroa.052.sroa.8.sroa.7.0..sroa.052.sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.17.0, ptr %.sroa.052.sroa.8.sroa.7.0..sroa.052.sroa.8.0..sroa_idx.sroa_idx, align 8
  %.sroa.052.sroa.8.sroa.8.0..sroa.052.sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sroa.20.sroa.0.0, ptr %.sroa.052.sroa.8.sroa.8.0..sroa.052.sroa.8.0..sroa_idx.sroa_idx, align 8
  %.sroa.052.sroa.8.sroa.8.sroa.4.0..sroa.052.sroa.8.sroa.8.0..sroa.052.sroa.8.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 49
  store i32 %.sroa.20.sroa.6.0, ptr %.sroa.052.sroa.8.sroa.8.sroa.4.0..sroa.052.sroa.8.sroa.8.0..sroa.052.sroa.8.0..sroa_idx.sroa_idx.sroa_idx, align 1
  %.sroa.052.sroa.8.sroa.8.sroa.5.0..sroa.052.sroa.8.sroa.8.0..sroa.052.sroa.8.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.052.sroa.8.sroa.8.sroa.5.0..sroa.052.sroa.8.sroa.8.0..sroa.052.sroa.8.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.20.sroa.8, i64 3, i1 false)
  %.sroa.052.sroa.8.sroa.8.sroa.6.0..sroa.052.sroa.8.sroa.8.0..sroa.052.sroa.8.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %.sroa.20.sroa.10.0, ptr %.sroa.052.sroa.8.sroa.8.sroa.6.0..sroa.052.sroa.8.sroa.8.0..sroa.052.sroa.8.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.052.sroa.8.sroa.8.sroa.7.0..sroa.052.sroa.8.sroa.8.0..sroa.052.sroa.8.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i32 %.sroa.20.sroa.12.0, ptr %.sroa.052.sroa.8.sroa.8.sroa.7.0..sroa.052.sroa.8.sroa.8.0..sroa.052.sroa.8.0..sroa_idx.sroa_idx.sroa_idx, align 1
  %.sroa.052.sroa.8.sroa.8.sroa.8.0..sroa.052.sroa.8.sroa.8.0..sroa.052.sroa.8.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.052.sroa.8.sroa.8.sroa.8.0..sroa.052.sroa.8.sroa.8.0..sroa.052.sroa.8.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(3) %i.c, i64 3, i1 false)
  %.sroa.052.sroa.8.sroa.8.sroa.9.0..sroa.052.sroa.8.sroa.8.0..sroa.052.sroa.8.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.sroa.20.sroa.16.0, ptr %.sroa.052.sroa.8.sroa.8.sroa.9.0..sroa.052.sroa.8.sroa.8.0..sroa.052.sroa.8.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.sroa.7101.0.extract.trunc, ptr %.sroa.553.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8135)
  br label %bb.ap

bb.m:                                             ; preds = %bb.j
  %i.v = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.val116
  %i.x = load i8, ptr %i.w, align 1, !noundef !5  ; 2 uses
  %i.y = and i8 %i.x, -33
  %i.z = add i8 %i.y, -65
  %or.cond115 = icmp ult i8 %i.z, 26
  %i.aa = icmp eq i8 %i.x, 60
  %or.cond182 = or i1 %i.aa, %or.cond115
  br i1 %or.cond182, label %bb.n, label %bb.l

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8165.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !224
  invoke fastcc void @_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser18parse_abbreviation(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %1)
          to label %.noexc121 unwind label %2

.noexc121:                                        ; preds = %bb.n
  %i.ab = load i8, ptr %i.b, align 8, !range !6, !noalias !224, !noundef !5 ; 4 uses
  %i.ac = icmp eq i8 %i.ab, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  br i1 %i.ac, label %bb.o, label %bb.r

bb.o:                                             ; preds = %.noexc121
  %i.ae = load i16, ptr %i.ad, align 1, !noalias !224
  %i.af = zext i16 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 8
  %.sroa.076.0.insert.insert.i = or disjoint i32 %i.ag, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !224
  br label %bb.am

bb.p:                                             ; preds = %bb.af, %bb.ac, %.invoke.i, %bb.w, %bb.t
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %switch.i.i.i = icmp samesign ult i8 %i.ab, 2
  %i.ai = icmp eq i64 %.sroa.575.sroa.5.0.copyload.i, 0
  %or.cond.i = select i1 %switch.i.i.i, i1 true, i1 %i.ai
  br i1 %or.cond.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix3DstEEB13_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.575.sroa.4.0.copyload.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.575.sroa.4.0.copyload.i, i64 noundef range(i64 1, 0) %.sroa.575.sroa.5.0.copyload.i, i64 noundef 1) #17, !noalias !225
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix3DstEEB13_.exit

bb.r:                                             ; preds = %.noexc121
  %.sroa.474.0.copyload.i = load i32, ptr %i.ad, align 1, !noalias !224
  %.sroa.575.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.8165.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.575.0..sroa_idx.i, i64 3, i1 false), !noalias !224
  %.sroa.575.sroa.4.0..sroa.575.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.575.sroa.4.0.copyload.i = load ptr, ptr %.sroa.575.sroa.4.0..sroa.575.0..sroa_idx.sroa_idx.i, align 8, !noalias !224 ; 5 uses
  %.sroa.575.sroa.5.0..sroa.575.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.575.sroa.5.0.copyload.i = load i64, ptr %.sroa.575.sroa.5.0..sroa.575.0..sroa_idx.sroa_idx.i, align 8, !noalias !224 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !224
  %.val152.i = load i64, ptr %i.e, align 8, !noalias !224, !noundef !5 ; 4 uses
  %.val153.i = load i64, ptr %i.f, align 8, !noalias !224, !noundef !5 ; 5 uses
  %i.aj = icmp eq i64 %.val153.i, %.val152.i
  br i1 %i.aj, label %bb.aj, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.7101.0.extract.trunc, i32 3600) ; 2 uses
  %i.al = extractvalue { i32, i1 } %i.ak, 0       ; 2 uses
  %i.am = extractvalue { i32, i1 } %i.ak, 1
  %i.an = add i32 %i.al, -93600
  %or.cond.i.i = icmp ult i32 %i.an, -187199
  %or.cond10.not.i.i = or i1 %i.am, %or.cond.i.i
  %i.ao = zext i32 %i.al to i64
  %i.ap = shl nuw i64 %i.ao, 32
  %.sroa.0.0.insert.insert.i.i = select i1 %or.cond10.not.i.i, i64 335478785, i64 %i.ap, !prof !8 ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %.sroa.0.0.insert.insert.i.i, 32 ; 2 uses
  %i.aq = trunc i64 %.sroa.0.0.insert.insert.i.i to i1
  br i1 %i.aq, label %bb.t, label %bb.u, !prof !9

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !224
  store i16 5119, ptr %i.a, align 2, !noalias !224
  %.sroa.3.2..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.sroa.3.2.extract.trunc.i.i = trunc i64 %.sroa.5.0.extract.shift.i.i to i16
  store i16 %.sroa.3.2.extract.trunc.i.i, ptr %.sroa.3.2..sroa_idx.i.i, align 2, !noalias !224
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #18
          to label %.noexc.i unwind label %bb.p, !noalias !224

.noexc.i:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ar = icmp ult i64 %.val153.i, %.val152.i
  br i1 %i.ar, label %bb.v, label %.invoke.i

bb.v:                                             ; preds = %bb.u
  %i.as = load ptr, ptr %1, align 8, !noalias !224, !nonnull !5, !noundef !5
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.val153.i
  %i.au = load i8, ptr %i.at, align 1, !noalias !224, !noundef !5
  %i.av = icmp eq i8 %i.au, 44
  br i1 %i.av, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aw = invoke fastcc i64 @_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser18parse_posix_offset(ptr noundef nonnull align 8 %1)
          to label %bb.y unwind label %bb.p, !noalias !224 ; 3 uses

bb.x:                                             ; preds = %bb.z, %bb.v
  %i.ax = phi i64 [ %.val152.i, %bb.v ], [ %.val.i, %bb.z ] ; 3 uses
  %i.ay = phi i64 [ %.val153.i, %bb.v ], [ %.val151.i, %bb.z ] ; 4 uses
  %.sroa.036.0.in.i = phi i64 [ %.sroa.5.0.extract.shift.i.i, %bb.v ], [ %.sroa.7129.0.extract.shift.i, %bb.z ]
  %.sroa.036.0.i = trunc nuw i64 %.sroa.036.0.in.i to i32
  %i.az = icmp ult i64 %i.ay, %i.ax
  br i1 %i.az, label %bb.aa, label %.invoke.i

.invoke.i:                                        ; preds = %bb.x, %bb.u
  %i.ba = phi i64 [ %.val153.i, %bb.u ], [ %i.ay, %bb.x ]
  %i.bb = phi i64 [ %.val152.i, %bb.u ], [ %i.ax, %bb.x ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ba, i64 noundef %i.bb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #18
          to label %.cont.i unwind label %bb.p, !noalias !224

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bc = trunc i64 %i.aw to i1
  br i1 %i.bc, label %bb.ai, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.7129.0.extract.shift.i = lshr i64 %i.aw, 32
  %.val.i = load i64, ptr %i.e, align 8, !noalias !224, !noundef !5 ; 2 uses
  %.val151.i = load i64, ptr %i.f, align 8, !noalias !224, !noundef !5 ; 2 uses
  %i.bd = icmp eq i64 %.val151.i, %.val.i
  br i1 %i.bd, label %bb.aj, label %bb.x

bb.aa:                                            ; preds = %bb.x
  %i.be = load ptr, ptr %1, align 8, !noalias !224, !nonnull !5, !noundef !5
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ay
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !224, !noundef !5
  %i.bh = icmp eq i8 %i.bg, 44
  br i1 %i.bh, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  %i.bi = add nuw i64 %i.ay, 1                    ; 2 uses
  store i64 %i.bi, ptr %i.f, align 8, !noalias !224
  %.not.i = icmp eq i64 %i.bi, %i.ax
  br i1 %.not.i, label %bb.aj, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.459.i.i)
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.459.i.i, i64 4
  %i.bk = invoke fastcc i64 @_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser20parse_posix_datetime(ptr noundef nonnull align 8 %1)
          to label %.noexc158.i unwind label %bb.p, !noalias !224 ; 3 uses

.noexc158.i:                                      ; preds = %bb.ac
  %.sroa.084.0.extract.trunc.i.i = trunc i64 %i.bk to i8 ; 2 uses
  %.sroa.485.0.extract.shift.i.i = lshr i64 %i.bk, 8 ; 2 uses
  %i.bl = icmp eq i8 %.sroa.084.0.extract.trunc.i.i, -1
  br i1 %i.bl, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.noexc158.i
  %i.bm = trunc i64 %.sroa.485.0.extract.shift.i.i to i32
  %.sroa.461.0.insert.ext.i.i = shl i32 %i.bm, 8
  %.sroa.060.0.insert.insert.i.i = or disjoint i32 %.sroa.461.0.insert.ext.i.i, 1
  br label %bb.ah

bb.ae:                                            ; preds = %.noexc158.i
  %.sroa.485.0.extract.trunc.i.i = trunc i64 %.sroa.485.0.extract.shift.i.i to i24
  %.sroa.586.0.extract.shift.i.i = lshr i64 %i.bk, 32
  %.sroa.586.0.extract.trunc.i.i = trunc nuw i64 %.sroa.586.0.extract.shift.i.i to i32
  store i24 %.sroa.485.0.extract.trunc.i.i, ptr %.sroa.459.i.i, align 4, !noalias !226
  %.sroa.459.i.i.3.i.i.3.i.i.3.i.3.i.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.459.i.i, i64 3
  store i32 %.sroa.586.0.extract.trunc.i.i, ptr %.sroa.459.i.i.3.i.i.3.i.i.3.i.3.i.3..sroa_idx, align 1, !noalias !226
  %.sroa.459.i.i.0..sroa.459.i.i.0..sroa.459.i.i.0..sroa.459.i.0..sroa.459.i.0..sroa.459.0..sroa.459.0..sroa.459.0..sroa.459.0..sroa.459.1..sroa.68.0.copyload.i.i = load i32, ptr %.sroa.459.i.i, align 4, !noalias !226
  %i.bn = load i64, ptr %i.e, align 8, !noalias !226, !noundef !5 ; 2 uses
  %i.bo = load i64, ptr %i.f, align 8, !noalias !226, !noundef !5 ; 3 uses
  %i.bp = icmp ult i64 %i.bo, %i.bn
  br i1 %i.bp, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser10maybe_byte.exit.i.i, label %bb.ah

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser10maybe_byte.exit.i.i: ; preds = %bb.ae
  %i.bq = load ptr, ptr %1, align 8, !noalias !226, !nonnull !5, !noundef !5
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bo
  %i.bs = load i8, ptr %i.br, align 1, !noalias !226, !noundef !5
  %.not.i.i = icmp eq i8 %i.bs, 44
  br i1 %.not.i.i, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i, label %bb.ah

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i: ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser10maybe_byte.exit.i.i
  %i.bt = add nuw i64 %i.bo, 1                    ; 2 uses
  store i64 %i.bt, ptr %i.f, align 8, !noalias !226
  %.not93.i.i = icmp eq i64 %i.bt, %i.bn
  br i1 %.not93.i.i, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i
  %i.bu = invoke fastcc i64 @_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser20parse_posix_datetime(ptr noundef nonnull align 8 %1)
          to label %.noexc159.i unwind label %bb.p, !noalias !224 ; 3 uses

.noexc159.i:                                      ; preds = %bb.af
  %.sroa.087.0.extract.trunc.i.i = trunc i64 %i.bu to i8 ; 2 uses
  %.sroa.488.0.extract.shift.i.i = lshr i64 %i.bu, 8 ; 2 uses
  %i.bv = icmp eq i8 %.sroa.087.0.extract.trunc.i.i, -1
  br i1 %i.bv, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %.noexc159.i
  %i.bw = trunc i64 %.sroa.488.0.extract.shift.i.i to i32
  %.sroa.474.0.insert.ext.i.i = shl i32 %i.bw, 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser10maybe_byte.exit.i.i, %bb.ae, %bb.ad
  %.sroa.9169.0.ph.i = phi i32 [ 2, %bb.ae ], [ 2, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser10maybe_byte.exit.i.i ], [ 2, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i ], [ %.sroa.474.0.insert.ext.i.i, %bb.ag ], [ %.sroa.060.0.insert.insert.i.i, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.459.i.i)
  br label %bb.aj

bb.ai:                                            ; preds = %bb.y
  %i.bx = trunc i64 %i.aw to i32
  %.sroa.4142.0.insert.insert.i = and i32 %i.bx, 16776960
  %.sroa.0141.0.insert.insert.i = or disjoint i32 %.sroa.4142.0.insert.insert.i, 11
  br label %bb.aj

bb.aj:                                            ; preds = %bb.r, %bb.z, %bb.aa, %bb.ab, %bb.ai, %bb.ah
  %.sroa.13.0 = phi i32 [ 8, %bb.z ], [ 6, %bb.aa ], [ %.sroa.9169.0.ph.i, %bb.ah ], [ 9, %bb.ab ], [ %.sroa.0141.0.insert.insert.i, %bb.ai ], [ 7, %bb.r ] ; 2 uses
  %switch.i.i160.i = icmp samesign ult i8 %i.ab, 2
  %i.by = icmp eq i64 %.sroa.575.sroa.5.0.copyload.i, 0
  %or.cond178.i = select i1 %switch.i.i160.i, i1 true, i1 %i.by
  br i1 %or.cond178.i, label %bb.am, label %bb.ak
end_hunk_0
