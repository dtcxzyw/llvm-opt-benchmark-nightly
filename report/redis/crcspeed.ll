inline.NumInlined: 8
inline.NumDeleted: 1
begin_hunk_0_@crcspeed64little:bb.a
  %.0179212 = phi ptr [ %i.dh, %.lr.ph218 ], [ %i.dy, %bb.c ] ; 2 uses
  %.0180211 = phi ptr [ %i.dg, %.lr.ph218 ], [ %i.dv, %bb.c ] ; 2 uses
  %.1182210 = phi ptr [ %.0181.lcssa, %.lr.ph218 ], [ %i.ds, %bb.c ] ; 2 uses
  %i.dp = add i64 %.1173213, -8                   ; 2 uses
  %i.dq = load i64, ptr %.1182210, align 8, !tbaa !14
  %i.dr = xor i64 %i.dq, %.1216                   ; 8 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.1182210, i64 8
end_hunk_0
begin_hunk_1_@crcspeed64little:bb.a
  %.0169199 = phi ptr [ %i.ir, %.lr.ph203 ], [ %i.jf, %bb.f ] ; 2 uses
  %.2174198 = phi i64 [ %i.iq, %.lr.ph203 ], [ %i.iz, %bb.f ]
  %.2183197 = phi ptr [ %.0181.lcssa, %.lr.ph203 ], [ %i.jc, %bb.f ] ; 2 uses
  %i.iz = add i64 %.2174198, -8                   ; 2 uses
  %i.ja = load i64, ptr %.2183197, align 8, !tbaa !14
  %i.jb = xor i64 %i.ja, %.2200                   ; 8 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.2183197, i64 8
end_hunk_1
