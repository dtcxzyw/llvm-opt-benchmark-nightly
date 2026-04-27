inline.NumInlined: 1729
inline.NumDeleted: 639
begin_hunk_0_@_ZN2v88internal4wasm16LiftoffAssembler13PushRegistersENS1_14LiftoffRegListE:bb.a
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.c, %bb.b, %bb.d
  %.sroa.6.sroa.4.sroa.0.0 = phi i32 [ %.046, %bb.d ], [ 0, %bb.b ], [ %.046, %bb.c ]
  %.sroa.6.sroa.0.0 = phi i32 [ %.sroa.6.sroa.4.0.extract.shift, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ]
  %.sroa.2.0 = phi i64 [ 8650752, %bb.d ], [ 262144, %bb.b ], [ 4456448, %bb.c ]
  %i.r = phi ptr [ inttoptr (i64 6 to ptr), %bb.d ], [ inttoptr (i64 2 to ptr), %bb.b ], [ inttoptr (i64 3 to ptr), %bb.c ] ; 2 uses
  %i.s = add nsw i8 %i.m, -16                     ; 2 uses
  %.sroa.6.sroa.0.0.insert.ext = and i32 %.sroa.6.sroa.4.sroa.0.0, 240
  %.sroa.6.sroa.0.0.insert.insert = or disjoint i32 %.sroa.6.sroa.0.0, %.sroa.6.sroa.0.0.insert.ext
  %.sroa.6.0.insert.ext = zext i32 %.sroa.6.sroa.0.0.insert.insert to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.5.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.2.0
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm16LiftoffAssembler12PopRegistersENS1_14LiftoffRegListE:bb.a
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.b, %.lr.ph, %bb.c
  %.sroa.6.sroa.4.sroa.0.0 = phi i32 [ %.045, %bb.c ], [ 0, %.lr.ph ], [ %.045, %bb.b ]
  %.sroa.6.sroa.0.0 = phi i32 [ %.sroa.6.sroa.4.0.extract.shift, %bb.c ], [ 0, %.lr.ph ], [ 0, %bb.b ]
  %.sroa.2.0 = phi i64 [ 8650752, %bb.c ], [ 262144, %.lr.ph ], [ 4456448, %bb.b ]
  %i.j = phi ptr [ inttoptr (i64 6 to ptr), %bb.c ], [ inttoptr (i64 2 to ptr), %.lr.ph ], [ inttoptr (i64 3 to ptr), %bb.b ] ; 2 uses
  %.sroa.6.sroa.0.0.insert.ext = and i32 %.sroa.6.sroa.4.sroa.0.0, 240
  %.sroa.6.sroa.0.0.insert.insert = or disjoint i32 %.sroa.6.sroa.0.0, %.sroa.6.sroa.0.0.insert.ext
  %.sroa.6.0.insert.ext = zext i32 %.sroa.6.sroa.0.0.insert.insert to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.5.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.2.0
end_hunk_1
