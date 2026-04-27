inline.NumInlined: 3912
inline.NumDeleted: 462
begin_hunk_0_@_ZN2v88internal17RestoreWasmParamsEPNS0_14MacroAssemblerEi:bb.a
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.12.0 = phi i64 [ 8650752, %bb.c ], [ 262144, %bb.a ], [ 4456448, %bb.b ]
  %.sroa.36.sroa.0.0 = phi i32 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ]
  %.sroa.36.sroa.24.sroa.0.0 = phi i32 [ %.sroa.36.sroa.24.0.extract.shift, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %i.e = phi ptr [ inttoptr (i64 6 to ptr), %bb.c ], [ inttoptr (i64 2 to ptr), %bb.a ], [ inttoptr (i64 3 to ptr), %bb.b ]
  %.sroa.36.sroa.0.0.insert.ext = and i32 %.sroa.36.sroa.0.0, 255
  %.sroa.36.sroa.0.0.insert.insert = or disjoint i32 %.sroa.36.sroa.24.sroa.0.0, %.sroa.36.sroa.0.0.insert.ext
end_hunk_0
begin_hunk_1_@_ZN2v88internal17RestoreWasmParamsEPNS0_14MacroAssemblerEi:bb.a
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.1

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.1: ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, %bb.d, %bb.e
  %.sroa.12.1 = phi i64 [ 4456448, %bb.d ], [ 8650752, %bb.e ], [ 262144, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit ]
  %.sroa.36.sroa.0.1 = phi i32 [ %indvars.iv.next.1, %bb.d ], [ %indvars.iv.next.1, %bb.e ], [ 0, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit ]
  %.sroa.36.sroa.24.sroa.0.1 = phi i32 [ 0, %bb.d ], [ %.sroa.36.sroa.24.0.extract.shift187, %bb.e ], [ 0, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit ]
  %i.i = phi ptr [ inttoptr (i64 3 to ptr), %bb.d ], [ inttoptr (i64 6 to ptr), %bb.e ], [ inttoptr (i64 2 to ptr), %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit ]
  %.sroa.36.sroa.0.0.insert.ext147 = and i32 %.sroa.36.sroa.0.1, 255
  %.sroa.36.sroa.0.0.insert.insert149 = or disjoint i32 %.sroa.36.sroa.24.sroa.0.1, %.sroa.36.sroa.0.0.insert.ext147
end_hunk_1
begin_hunk_2_@_ZN2v88internal17RestoreWasmParamsEPNS0_14MacroAssemblerEi:bb.a
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.2

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.2: ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.1, %bb.f, %bb.g
  %.sroa.12.2 = phi i64 [ 4456448, %bb.f ], [ 8650752, %bb.g ], [ 262144, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.1 ]
  %.sroa.36.sroa.0.2 = phi i32 [ %indvars.iv.next.2, %bb.f ], [ %indvars.iv.next.2, %bb.g ], [ 0, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.1 ]
  %.sroa.36.sroa.24.sroa.0.2 = phi i32 [ 0, %bb.f ], [ %.sroa.36.sroa.24.0.extract.shift189, %bb.g ], [ 0, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.1 ]
  %i.m = phi ptr [ inttoptr (i64 3 to ptr), %bb.f ], [ inttoptr (i64 6 to ptr), %bb.g ], [ inttoptr (i64 2 to ptr), %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.1 ]
  %.sroa.36.sroa.0.0.insert.ext150 = and i32 %.sroa.36.sroa.0.2, 255
  %.sroa.36.sroa.0.0.insert.insert152 = or disjoint i32 %.sroa.36.sroa.24.sroa.0.2, %.sroa.36.sroa.0.0.insert.ext150
end_hunk_2
begin_hunk_3_@_ZN2v88internal17RestoreWasmParamsEPNS0_14MacroAssemblerEi:bb.a
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.3

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.3: ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.2, %bb.h, %bb.i
  %.sroa.12.3 = phi i64 [ 4456448, %bb.h ], [ 8650752, %bb.i ], [ 262144, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.2 ]
  %.sroa.36.sroa.0.3 = phi i32 [ %indvars.iv.next.3, %bb.h ], [ %indvars.iv.next.3, %bb.i ], [ 0, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.2 ]
  %.sroa.36.sroa.24.sroa.0.3 = phi i32 [ 0, %bb.h ], [ %.sroa.36.sroa.24.0.extract.shift191, %bb.i ], [ 0, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.2 ]
  %i.q = phi ptr [ inttoptr (i64 3 to ptr), %bb.h ], [ inttoptr (i64 6 to ptr), %bb.i ], [ inttoptr (i64 2 to ptr), %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.2 ]
  %.sroa.36.sroa.0.0.insert.ext153 = and i32 %.sroa.36.sroa.0.3, 255
  %.sroa.36.sroa.0.0.insert.insert155 = or disjoint i32 %.sroa.36.sroa.24.sroa.0.3, %.sroa.36.sroa.0.0.insert.ext153
end_hunk_3
begin_hunk_4_@_ZN2v88internal17RestoreWasmParamsEPNS0_14MacroAssemblerEi:bb.a
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.4

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.4: ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.3, %bb.j, %bb.k
  %.sroa.12.4 = phi i64 [ 4456448, %bb.j ], [ 8650752, %bb.k ], [ 262144, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.3 ]
  %.sroa.36.sroa.0.4 = phi i32 [ %indvars.iv.next.4, %bb.j ], [ %indvars.iv.next.4, %bb.k ], [ 0, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.3 ]
  %.sroa.36.sroa.24.sroa.0.4 = phi i32 [ 0, %bb.j ], [ %.sroa.36.sroa.24.0.extract.shift193, %bb.k ], [ 0, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.3 ]
  %i.u = phi ptr [ inttoptr (i64 3 to ptr), %bb.j ], [ inttoptr (i64 6 to ptr), %bb.k ], [ inttoptr (i64 2 to ptr), %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.3 ]
  %.sroa.36.sroa.0.0.insert.ext156 = and i32 %.sroa.36.sroa.0.4, 255
  %.sroa.36.sroa.0.0.insert.insert158 = or disjoint i32 %.sroa.36.sroa.24.sroa.0.4, %.sroa.36.sroa.0.0.insert.ext156
end_hunk_4
begin_hunk_5_@_ZN2v88internal17RestoreWasmParamsEPNS0_14MacroAssemblerEi:bb.a
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.5

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.5: ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.4, %bb.l, %bb.m
  %.sroa.12.5 = phi i64 [ 4456448, %bb.l ], [ 8650752, %bb.m ], [ 262144, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.4 ]
  %.sroa.36.sroa.0.5 = phi i32 [ %indvars.iv.next.5, %bb.l ], [ %indvars.iv.next.5, %bb.m ], [ 0, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.4 ]
  %.sroa.36.sroa.24.sroa.0.5 = phi i32 [ 0, %bb.l ], [ %.sroa.36.sroa.24.0.extract.shift195, %bb.m ], [ 0, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.4 ]
  %i.y = phi ptr [ inttoptr (i64 3 to ptr), %bb.l ], [ inttoptr (i64 6 to ptr), %bb.m ], [ inttoptr (i64 2 to ptr), %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.4 ]
  %.sroa.36.sroa.0.0.insert.ext159 = and i32 %.sroa.36.sroa.0.5, 255
  %.sroa.36.sroa.0.0.insert.insert161 = or disjoint i32 %.sroa.36.sroa.24.sroa.0.5, %.sroa.36.sroa.0.0.insert.ext159
end_hunk_5
begin_hunk_6_@_ZN2v88internal12_GLOBAL__N_128Generate_DeoptimizationEntryEPNS0_14MacroAssemblerENS0_14DeoptimizeKindE:bb.a
  %i.at = icmp samesign ult i32 %.0189819, 8      ; 3 uses
  %i.au = shl i32 %.0189819, 4
  %i.av = and i32 %i.au, -256
  %.sroa.4.0 = select i1 %i.at, i64 4456448, i64 8650752
  %.sroa.9.sroa.6.sroa.0.0 = select i1 %i.at, i32 0, i32 %i.av
  %i.aw = select i1 %i.at, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 6 to ptr)
  %.sroa.9.sroa.0.0.insert.ext = and i32 %i.ar, 240
  %.sroa.9.sroa.0.0.insert.insert = or disjoint i32 %.sroa.9.sroa.6.sroa.0.0, %.sroa.9.sroa.0.0.insert.ext
end_hunk_6
