inline.NumInlined: 275
inline.NumDeleted: 91
begin_hunk_0_@je_extent_alloc_wrapper:tsdn_witness_tsdp_get.exit
  %i.ba = shl nuw nsw i64 %i.az, 15
  %i.bb = zext nneg i8 %i.ao to i64
  %i.bc = shl nuw nsw i64 %i.bb, 13
  %.not.i = icmp eq i8 %i.ap, 0
  %9 = select i1 %.not.i, i64 0, i64 17592186044416
  %i.bd = or disjoint i32 %i.ay, 246415360
  %i.be = zext i32 %i.bd to i64
  %i.bf = or disjoint i64 %i.ba, %i.be
  %i.bg = or disjoint i64 %9, %i.bc
  %i.bh = or disjoint i64 %i.bg, %i.ar
  %i.bi = or i64 %i.bh, %i.bf
  store i64 %i.bi, ptr %i.f, align 8, !tbaa !47
end_hunk_0
