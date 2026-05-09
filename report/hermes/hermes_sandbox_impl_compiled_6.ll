inline.NumInlined: 8639
inline.NumDeleted: 26
begin_hunk_0_@w2c_hermes_hermes_g_strtod:bb.a
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amy, i64 16
  %.0.copyload.i4982 = load i32, ptr %i.amz, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4982) #8, !srcloc !14
  %i.ana = icmp ult i32 %.0.copyload.i4982, 65536 ; 2 uses
  %i.anb = select i1 %i.ana, i32 16, i32 0        ; 2 uses
  %3 = or disjoint i32 %i.anb, 8
  %i.anc = shl i32 %.0.copyload.i4982, 16
  %i.and = select i1 %i.ana, i32 %i.anc, i32 %.0.copyload.i4982 ; 3 uses
  %i.ane = icmp ult i32 %i.and, 16777216          ; 2 uses
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes_g_strtod:bb.a
  %i.anr = select i1 %i.ano, i32 %i.anq, i32 %i.ann ; 2 uses
  %i.ans = icmp slt i32 %i.anr, 0
  %.not4559 = icmp ult i32 %i.anr, 1073741824
  %4 = add nuw nsw i32 %i.anp, 1
  %spec.select = select i1 %.not4559, i32 1073741824, i32 %4
  %.64187 = select i1 %i.ans, i32 %i.anp, i32 %spec.select
  %i.ant = tail call i32 @llvm.smax.i32(i32 %i.ams, i32 0)
end_hunk_1
