inline.NumInlined: 294
inline.NumDeleted: 153
begin_hunk_0_@_ZN6hermes3hbc26SerializedLiteralGenerator15serializeBufferEN4llvh8ArrayRefIPNS_7LiteralEEERSt6vectorIhSaIhEEb:bb.a
  %i.bg = ptrtoint ptr %.sroa.27.1 to i64         ; 2 uses
  %i.bh = ptrtoint ptr %.sroa.0132.0229 to i64    ; 4 uses
  %reass.sub241 = sub i64 %i.bg, %i.bh            ; 8 uses
  %i.bi = add i64 %reass.sub241, 4                ; 2 uses
  %i.bj = icmp ult i64 %reass.sub241, -4
  br i1 %i.bj, label %bb.t, label %bb.z

end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc26SerializedLiteralGenerator15serializeBufferEN4llvh8ArrayRefIPNS_7LiteralEEERSt6vectorIhSaIhEEb:bb.a
  %i.bl = sub i64 %i.bk, %i.bg                    ; 2 uses
  %i.bm = icmp sgt i64 %reass.sub241, -1
  tail call void @llvm.assume(i1 %i.bm)
  %5 = xor i64 %reass.sub241, 9223372036854775807 ; 2 uses
  %i.bn = icmp ule i64 %i.bl, %5
  tail call void @llvm.assume(i1 %i.bn)
  %.not23.i.i = icmp ult i64 %i.bl, 4
end_hunk_1
begin_hunk_2_@_ZN6hermes3hbc26SerializedLiteralGenerator15serializeBufferEN4llvh8ArrayRefIPNS_7LiteralEEERSt6vectorIhSaIhEEb:bb.a
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit75

bb.v:                                             ; preds = %bb.t
  %6 = icmp samesign ult i64 %5, 4
  br i1 %6, label %bb.w, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
end_hunk_2
begin_hunk_3_@_ZN6hermes3hbc26SerializedLiteralGenerator15serializeBufferEN4llvh8ArrayRefIPNS_7LiteralEEERSt6vectorIhSaIhEEb:bb.a
  %i.cb = ptrtoint ptr %.sroa.27.1 to i64         ; 2 uses
  %i.cc = ptrtoint ptr %.sroa.0132.0229 to i64    ; 4 uses
  %reass.sub240 = sub i64 %i.cb, %i.cc            ; 8 uses
  %i.cd = add i64 %reass.sub240, 8                ; 2 uses
  %i.ce = icmp ult i64 %reass.sub240, -8
  br i1 %i.ce, label %bb.aa, label %bb.ag

end_hunk_3
begin_hunk_4_@_ZN6hermes3hbc26SerializedLiteralGenerator15serializeBufferEN4llvh8ArrayRefIPNS_7LiteralEEERSt6vectorIhSaIhEEb:bb.a
  %i.cg = sub i64 %i.cf, %i.cb                    ; 2 uses
  %i.ch = icmp sgt i64 %reass.sub240, -1
  tail call void @llvm.assume(i1 %i.ch)
  %7 = xor i64 %reass.sub240, 9223372036854775807 ; 2 uses
  %i.ci = icmp ule i64 %i.cg, %7
  tail call void @llvm.assume(i1 %i.ci)
  %.not23.i.i77 = icmp ult i64 %i.cg, 8
end_hunk_4
begin_hunk_5_@_ZN6hermes3hbc26SerializedLiteralGenerator15serializeBufferEN4llvh8ArrayRefIPNS_7LiteralEEERSt6vectorIhSaIhEEb:bb.a
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit87

bb.ac:                                            ; preds = %bb.aa
  %8 = icmp samesign ult i64 %7, 8
  br i1 %8, label %bb.ad, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i80

bb.ad:                                            ; preds = %bb.ac
end_hunk_5
begin_hunk_6_@_ZN6hermes3hbc26SerializedLiteralGenerator15serializeBufferEN4llvh8ArrayRefIPNS_7LiteralEEERSt6vectorIhSaIhEEb:bb.a
  %i.dc = ptrtoint ptr %.sroa.27.1 to i64         ; 2 uses
  %i.dd = ptrtoint ptr %.sroa.0132.0229 to i64    ; 4 uses
  %reass.sub239 = sub i64 %i.dc, %i.dd            ; 8 uses
  %i.de = add i64 %reass.sub239, 4                ; 2 uses
  %i.df = icmp ult i64 %reass.sub239, -4
  br i1 %i.df, label %bb.am, label %bb.as

end_hunk_6
begin_hunk_7_@_ZN6hermes3hbc26SerializedLiteralGenerator15serializeBufferEN4llvh8ArrayRefIPNS_7LiteralEEERSt6vectorIhSaIhEEb:bb.a
  %i.dh = sub i64 %i.dg, %i.dc                    ; 2 uses
  %i.di = icmp sgt i64 %reass.sub239, -1
  tail call void @llvm.assume(i1 %i.di)
  %9 = xor i64 %reass.sub239, 9223372036854775807 ; 2 uses
  %i.dj = icmp ule i64 %i.dh, %9
  tail call void @llvm.assume(i1 %i.dj)
  %.not23.i.i89 = icmp ult i64 %i.dh, 4
end_hunk_7
begin_hunk_8_@_ZN6hermes3hbc26SerializedLiteralGenerator15serializeBufferEN4llvh8ArrayRefIPNS_7LiteralEEERSt6vectorIhSaIhEEb:bb.a
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit99

bb.ao:                                            ; preds = %bb.am
  %10 = icmp samesign ult i64 %9, 4
  br i1 %10, label %bb.ap, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i92

bb.ap:                                            ; preds = %bb.ao
end_hunk_8
begin_hunk_9_@_ZN6hermes3hbc26SerializedLiteralGenerator15serializeBufferEN4llvh8ArrayRefIPNS_7LiteralEEERSt6vectorIhSaIhEEb:bb.a
  %i.dx = icmp samesign ugt i32 %i.da, 255
  %i.dy = ptrtoint ptr %.sroa.27.1 to i64         ; 2 uses
  %i.dz = ptrtoint ptr %.sroa.0132.0229 to i64    ; 7 uses
  %reass.sub238 = sub i64 %i.dy, %i.dz            ; 16 uses
  br i1 %i.dx, label %bb.au, label %bb.bc

bb.au:                                            ; preds = %bb.at
  %i.ea = trunc nuw i32 %i.da to i16
  %i.eb = add i64 %reass.sub238, 2                ; 2 uses
  %i.ec = icmp ult i64 %reass.sub238, -2
  br i1 %i.ec, label %bb.av, label %bb.bb

end_hunk_9
begin_hunk_10_@_ZN6hermes3hbc26SerializedLiteralGenerator15serializeBufferEN4llvh8ArrayRefIPNS_7LiteralEEERSt6vectorIhSaIhEEb:bb.a
  %i.ee = sub i64 %i.ed, %i.dy                    ; 2 uses
  %i.ef = icmp sgt i64 %reass.sub238, -1
  tail call void @llvm.assume(i1 %i.ef)
  %11 = xor i64 %reass.sub238, 9223372036854775807 ; 2 uses
  %i.eg = icmp ule i64 %i.ee, %11
  tail call void @llvm.assume(i1 %i.eg)
  %.not23.i.i101 = icmp ult i64 %i.ee, 2
end_hunk_10
begin_hunk_11_@_ZN6hermes3hbc26SerializedLiteralGenerator15serializeBufferEN4llvh8ArrayRefIPNS_7LiteralEEERSt6vectorIhSaIhEEb:bb.a
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit111

bb.ax:                                            ; preds = %bb.av
  %12 = icmp samesign ult i64 %11, 2
  br i1 %12, label %bb.ay, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i104

bb.ay:                                            ; preds = %bb.ax
end_hunk_11
begin_hunk_12_@_ZN6hermes3hbc26SerializedLiteralGenerator15serializeBufferEN4llvh8ArrayRefIPNS_7LiteralEEERSt6vectorIhSaIhEEb:bb.a

bb.bc:                                            ; preds = %bb.at
  %i.ew = trunc nuw i32 %i.da to i8
  %i.ex = add i64 %reass.sub238, 1                ; 2 uses
  %.not279 = icmp eq i64 %reass.sub238, -1
  br i1 %.not279, label %bb.bj, label %bb.bd

end_hunk_12
begin_hunk_13_@_ZN6hermes3hbc26SerializedLiteralGenerator15serializeBufferEN4llvh8ArrayRefIPNS_7LiteralEEERSt6vectorIhSaIhEEb:bb.a
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit123

bb.bf:                                            ; preds = %bb.bd
  %13 = icmp eq i64 %reass.sub238, 9223372036854775807
  br i1 %13, label %bb.bg, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i116

bb.bg:                                            ; preds = %bb.bf
end_hunk_13
