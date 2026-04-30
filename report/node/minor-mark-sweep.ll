inline.NumInlined: 6343
inline.NumDeleted: 2345
begin_hunk_0_@_ZN2v88internal23MinorMarkSweepCollector18SweepNewLargeSpaceEv:bb.a
  br label %bb.m, !llvm.loop !106

bb.k:                                             ; preds = %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.029.046, i64 328 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = and i64 %i.cl, -17                      ; 2 uses
  %i.cn = load i64, ptr %i.bk, align 8
  %i.co = and i64 %i.cn, -262144
  %i.cp = inttoptr i64 %i.co to ptr
  store i64 %i.cm, ptr %i.cp, align 262144
  %i.cq = or i64 %i.cm, 8                         ; 2 uses
  store i64 %i.cq, ptr %i.ck, align 8
  %i.cr = load i64, ptr %i.bk, align 8
  %i.cs = and i64 %i.cr, -262144
end_hunk_0
