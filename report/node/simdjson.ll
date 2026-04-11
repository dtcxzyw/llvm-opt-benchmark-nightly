inline.NumInlined: 1198
inline.NumDeleted: 372
begin_hunk_0_@_ZN8simdjson8internal8to_charsEPcPKcd:bb.a
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn.i = phi ptr [ %i.ar, %bb.l ], [ %.012, %bb.k ] ; 7 uses
  %.056.i = getelementptr i8, ptr %.pn.i, i64 1
  %i.as = getelementptr i8, ptr %.pn.i, i64 2
  store i8 101, ptr %.056.i, align 1
  %i.at = add nsw i32 %i.m, -1
  %i.au = call i32 @llvm.abs.i32(i32 %i.at, i1 true) ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN8simdjson8internal8to_charsEPcPKcd:bb.a
  %i.ax = udiv i8 %.lhs.trunc.i.i, 10
  %i.ay = or disjoint i8 %i.ax, 48
  %i.az = urem i8 %.lhs.trunc.i.i, 10
  %3 = getelementptr i8, ptr %.pn.i, i64 5
  br label %_ZN8simdjson8internal9dtoa_impl15append_exponentEPci.exit.i

bb.o:                                             ; preds = %bb.m
end_hunk_1
begin_hunk_2_@_ZN8simdjson8internal8to_charsEPcPKcd:bb.a
  %i.bf = getelementptr i8, ptr %.pn.i, i64 5
  %i.bg = urem i8 %.lhs.trunc24.i.i, 10
  %i.bh = or disjoint i8 %i.bg, 48
  %4 = getelementptr i8, ptr %.pn.i, i64 6
  store i8 %i.bh, ptr %i.bf, align 1
  br label %_ZN8simdjson8internal9dtoa_impl15append_exponentEPci.exit.i

_ZN8simdjson8internal9dtoa_impl15append_exponentEPci.exit.i: ; preds = %bb.o, %bb.n
  %.sink28.i.i = phi i8 [ %i.ay, %bb.n ], [ %i.bc, %bb.o ]
  %.sink.in.i.i = phi i8 [ %i.az, %bb.n ], [ %i.be, %bb.o ]
  %.0.i.i = phi ptr [ %3, %bb.n ], [ %4, %bb.o ]
  %.sink.i.i = or disjoint i8 %.sink.in.i.i, 48
  %i.bi = getelementptr i8, ptr %.pn.i, i64 3
  store i8 %.sink28.i.i, ptr %i.bi, align 1
  %i.bj = getelementptr i8, ptr %.pn.i, i64 4
  store i8 %.sink.i.i, ptr %i.bj, align 1
  br label %_ZN8simdjson8internal9dtoa_impl13format_bufferEPciiii.exit

_ZN8simdjson8internal9dtoa_impl13format_bufferEPciiii.exit: ; preds = %bb.f, %bb.h, %bb.j, %_ZN8simdjson8internal9dtoa_impl15append_exponentEPci.exit.i
end_hunk_2
