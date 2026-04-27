inline.NumInlined: 12588
inline.NumDeleted: 1676
begin_hunk_0_@_ZN2v88internal8compiler13CodeGenerator14AssembleReturnEPNS1_18InstructionOperandE:bb.a
  %i.ae = shl nsw i32 %.0232, 4                   ; 3 uses
  %i.af = icmp samesign ult i32 %i.ae, 128        ; 3 uses
  %.sroa.9.sroa.6.0.extract.shift = and i32 %i.ae, 2147483392
  %.sroa.4.0 = select i1 %i.af, i64 4456448, i64 8650752
  %.sroa.9.sroa.6.sroa.0.0 = select i1 %i.af, i32 0, i32 %.sroa.9.sroa.6.0.extract.shift
  %i.ag = select i1 %i.af, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 6 to ptr) ; 2 uses
  %.sroa.9.sroa.0.0.insert.ext = and i32 %i.ae, 240
  %.sroa.9.sroa.0.0.insert.insert = or disjoint i32 %.sroa.9.sroa.6.sroa.0.0, %.sroa.9.sroa.0.0.insert.ext
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler13CodeGenerator22AssembleConstructFrameEv:bb.a
  %i.eq = shl nsw i32 %.082256, 4                 ; 3 uses
  %i.er = icmp samesign ult i32 %i.eq, 128        ; 3 uses
  %.sroa.9.sroa.6.0.extract.shift = and i32 %i.eq, 2147483392
  %.sroa.4.0 = select i1 %i.er, i64 4456448, i64 8650752
  %.sroa.9.sroa.6.sroa.0.0 = select i1 %i.er, i32 0, i32 %.sroa.9.sroa.6.0.extract.shift
  %i.es = select i1 %i.er, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 6 to ptr) ; 2 uses
  %.sroa.9.sroa.0.0.insert.ext = and i32 %i.eq, 240
  %.sroa.9.sroa.0.0.insert.insert = or disjoint i32 %.sroa.9.sroa.6.sroa.0.0, %.sroa.9.sroa.0.0.insert.ext
end_hunk_1
