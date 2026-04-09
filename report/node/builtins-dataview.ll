inline.NumInlined: 361
inline.NumDeleted: 228
begin_hunk_0_@_ZN2v88internal27Builtin_DataViewConstructorEiPmPNS0_7IsolateE:bb.a

.critedge157.i:                                   ; preds = %bb.aa, %.critedge151.i
  %.sroa.0249.0.i = phi ptr [ %i.dx, %bb.aa ], [ %i.du, %.critedge151.i ] ; 5 uses
  %i.ea = load i64, ptr %.sroa.0249.0.i, align 8  ; 6 uses
  %i.eb = add i64 %i.ea, -1                       ; 3 uses
  %i.ec = inttoptr i64 %i.eb to ptr               ; 2 uses
  %i.ed = load atomic volatile i64, ptr %i.ec monotonic, align 8 ; 2 uses
  %i.ee = add i64 %i.ed, 11
end_hunk_0
begin_hunk_1_@_ZN2v88internal27Builtin_DataViewConstructorEiPmPNS0_7IsolateE:bb.a

_ZN2v88internal8JSObject16SetEmbedderFieldEiNS0_6TaggedINS0_3SmiEEE.exit.i: ; preds = %bb.ab, %.critedge157.i
  %i.eo = phi i64 [ %i.en, %bb.ab ], [ 24, %.critedge157.i ]
  %i.ep = add i64 %i.eo, %i.eb
  %i.eq = inttoptr i64 %i.ep to ptr
  store atomic volatile i64 0, ptr %i.eq monotonic, align 8
  %i.er = load atomic volatile i64, ptr %i.ec monotonic, align 8 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2v88internal27Builtin_DataViewConstructorEiPmPNS0_7IsolateE:bb.a

_ZN2v88internal8JSObject16SetEmbedderFieldEiNS0_6TaggedINS0_3SmiEEE.exit.1.i: ; preds = %bb.ac, %_ZN2v88internal8JSObject16SetEmbedderFieldEiNS0_6TaggedINS0_3SmiEEE.exit.i
  %i.fd = phi i64 [ %i.fc, %bb.ac ], [ 32, %_ZN2v88internal8JSObject16SetEmbedderFieldEiNS0_6TaggedINS0_3SmiEEE.exit.i ]
  %i.fe = add i64 %i.fd, %i.eb
  %i.ff = inttoptr i64 %i.fe to ptr
  store atomic volatile i64 0, ptr %i.ff monotonic, align 8
  %i.fg = add i64 %i.ea, 39
end_hunk_2
