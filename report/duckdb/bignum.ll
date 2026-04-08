inline.NumInlined: 162
inline.NumDeleted: 17
begin_hunk_0_@mbedtls_mpi_write_string:bb.a
  %i.hb = icmp slt i16 %i.gm, 0
  %i.hc = icmp ne i64 %i.gz, 0
  %or.cond.i.i = select i1 %i.hb, i1 %i.hc, i1 false
  %i.hd = sub nsw i64 %i.fq, %i.gz
  %spec.select.i.i = select i1 %or.cond.i.i, i64 %i.hd, i64 %i.gz
  br label %mbedtls_mpi_mod_int.exit.i

end_hunk_0
begin_hunk_1_@mbedtls_mpi_write_string:bb.a
  br i1 %.not28.i, label %bb.z, label %_ZL13mpi_write_hlpP11mbedtls_mpiiPPcm.exit.thread

bb.z:                                             ; preds = %mbedtls_mpi_mod_int.exit.i
  %i.hf = icmp ult i64 %spec.select.sink.i.i, 10
  %i.hg = trunc nsw i64 %spec.select.sink.i.i to i8 ; 2 uses
  %i.hh = getelementptr inbounds i8, ptr %.0.i230, i64 -1 ; 5 uses
  %i.hi = add nsw i8 %i.hg, 55
  %i.hj = or disjoint i8 %i.hg, 48
  %.sink.i = select i1 %i.hf, i8 %i.hj, i8 %i.hi
  store i8 %.sink.i, ptr %i.hh, align 1, !tbaa !21
end_hunk_1
begin_hunk_2_@mbedtls_mpi_mod_int:bb.a
  %i.y = icmp slt i16 %i.x, 0
  %i.z = icmp ne i64 %i.u, 0
  %or.cond = select i1 %i.y, i1 %i.z, i1 false
  %i.aa = sub nsw i64 %2, %i.u
  %spec.select = select i1 %or.cond, i64 %i.aa, i64 %i.u
  br label %.sink.split

end_hunk_2
