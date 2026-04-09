inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@_ZN11OpenImageIO4v3_16xxhash5XXH32EPKvmj
define noundef i32 @_ZN11OpenImageIO4v3_16xxhash5XXH32EPKvmj(ptr noundef readonly captures(address) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %i.c = icmp ugt i64 %1, 15
  br i1 %i.c, label %bb.b, label %bb.e

end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_16xxhash5XXH32EPKvmj:bb.a

.preheader:                                       ; preds = %.lr.ph, %bb.f
  %.183.i.lcssa = phi i32 [ %i.aw, %bb.f ], [ %i.bp, %.lr.ph ] ; 3 uses
  %.2.i.lcssa = phi ptr [ %.1.i, %bb.f ], [ %i.bk, %.lr.ph ] ; 5 uses
  %i.ay = icmp ult ptr %.2.i.lcssa, %i.b
  br i1 %i.ay, label %.lr.ph21.preheader, label %_ZN11OpenImageIO4v3_16xxhashL18XXH32_endian_alignEPKvmjNS1_13XXH_endianessENS1_13XXH_alignmentE.exit

.lr.ph21.preheader:                               ; preds = %.preheader
  %.2.i.lcssa69 = ptrtoint ptr %.2.i.lcssa to i64 ; 2 uses
  %i.az = add i64 %1, %i.a                        ; 2 uses
  %i.ba = sub i64 %i.az, %.2.i.lcssa69            ; 2 uses
  %scevgep = getelementptr i8, ptr %.2.i.lcssa, i64 %i.ba
  %xtraiter = and i64 %i.ba, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph21.prol.loopexit, label %.lr.ph21.prol
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_16xxhash5XXH32EPKvmj:bb.a
  br i1 %prol.iter.cmp.not, label %.lr.ph21.prol.loopexit, label %.lr.ph21.prol, !llvm.loop !12

.lr.ph21.prol.loopexit:                           ; preds = %.lr.ph21.prol, %.lr.ph21.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph21.preheader ], [ %i.bg, %.lr.ph21.prol ]
  %.3.i20.unr = phi ptr [ %.2.i.lcssa, %.lr.ph21.preheader ], [ %i.bh, %.lr.ph21.prol ]
  %.284.i19.unr = phi i32 [ %.183.i.lcssa, %.lr.ph21.preheader ], [ %i.bg, %.lr.ph21.prol ]
  %i.bi = sub i64 %.2.i.lcssa69, %i.az
  %i.bj = icmp ugt i64 %i.bi, -4
  br i1 %i.bj, label %_ZN11OpenImageIO4v3_16xxhashL18XXH32_endian_alignEPKvmjNS1_13XXH_endianessENS1_13XXH_alignmentE.exit, label %.lr.ph21
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_16xxhash5XXH32EPKvmj:bb.a
  %i.cq = tail call i32 @llvm.fshl.i32(i32 %i.cp, i32 %i.cp, i32 11)
  %i.cr = mul i32 %i.cq, -1640531535              ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.3.i20, i64 4 ; 2 uses
  %exitcond.not.3 = icmp eq ptr %i.cs, %scevgep
  br i1 %exitcond.not.3, label %_ZN11OpenImageIO4v3_16xxhashL18XXH32_endian_alignEPKvmjNS1_13XXH_endianessENS1_13XXH_alignmentE.exit, label %.lr.ph21, !llvm.loop !15

_ZN11OpenImageIO4v3_16xxhashL18XXH32_endian_alignEPKvmjNS1_13XXH_endianessENS1_13XXH_alignmentE.exit: ; preds = %.lr.ph21.prol.loopexit, %.lr.ph21, %.preheader
  %.284.i.lcssa = phi i32 [ %.183.i.lcssa, %.preheader ], [ %.lcssa.unr, %.lr.ph21.prol.loopexit ], [ %i.cr, %.lr.ph21 ] ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN11OpenImageIO4v3_16xxhash5XXH64EPKvmy
define noundef i64 @_ZN11OpenImageIO4v3_16xxhash5XXH64EPKvmy(ptr noundef readonly captures(address) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 5 uses
  %i.c = icmp ugt i64 %1, 31
  br i1 %i.c, label %bb.b, label %bb.e

end_hunk_4
begin_hunk_5_@_ZN11OpenImageIO4v3_16xxhash5XXH64EPKvmy:bb.a

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.2126.i = phi i64 [ %i.cw, %bb.g ], [ %.1125.i.lcssa, %._crit_edge ] ; 3 uses
  %.3.i = phi ptr [ %i.cp, %bb.g ], [ %.2.i.lcssa, %._crit_edge ] ; 5 uses
  %i.cx = icmp ult ptr %.3.i, %i.b
  br i1 %i.cx, label %.lr.ph22.preheader, label %_ZN11OpenImageIO4v3_16xxhashL18XXH64_endian_alignEPKvmyNS1_13XXH_endianessENS1_13XXH_alignmentE.exit

.lr.ph22.preheader:                               ; preds = %bb.h
  %.3.i71 = ptrtoint ptr %.3.i to i64             ; 2 uses
  %i.cy = add i64 %1, %i.a                        ; 2 uses
  %i.cz = sub i64 %i.cy, %.3.i71                  ; 2 uses
  %scevgep = getelementptr i8, ptr %.3.i, i64 %i.cz
  %xtraiter = and i64 %i.cz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph22.prol.loopexit, label %.lr.ph22.prol
end_hunk_5
begin_hunk_6_@_ZN11OpenImageIO4v3_16xxhash5XXH64EPKvmy:bb.a
  br i1 %prol.iter.cmp.not, label %.lr.ph22.prol.loopexit, label %.lr.ph22.prol, !llvm.loop !21

.lr.ph22.prol.loopexit:                           ; preds = %.lr.ph22.prol, %.lr.ph22.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph22.preheader ], [ %i.df, %.lr.ph22.prol ]
  %.4.i20.unr = phi ptr [ %.3.i, %.lr.ph22.preheader ], [ %i.dg, %.lr.ph22.prol ]
  %.3127.i19.unr = phi i64 [ %.2126.i, %.lr.ph22.preheader ], [ %i.df, %.lr.ph22.prol ]
  %i.dh = sub i64 %.3.i71, %i.cy
  %i.di = icmp ugt i64 %i.dh, -4
  br i1 %i.di, label %_ZN11OpenImageIO4v3_16xxhashL18XXH64_endian_alignEPKvmyNS1_13XXH_endianessENS1_13XXH_alignmentE.exit, label %.lr.ph22
end_hunk_6
begin_hunk_7_@_ZN11OpenImageIO4v3_16xxhash5XXH64EPKvmy:bb.a
  %i.ei = tail call i64 @llvm.fshl.i64(i64 %i.eh, i64 %i.eh, i64 11)
  %i.ej = mul i64 %i.ei, -7046029288634856825     ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.4.i20, i64 4 ; 2 uses
  %exitcond.not.3 = icmp eq ptr %i.ek, %scevgep
  br i1 %exitcond.not.3, label %_ZN11OpenImageIO4v3_16xxhashL18XXH64_endian_alignEPKvmyNS1_13XXH_endianessENS1_13XXH_alignmentE.exit, label %.lr.ph22, !llvm.loop !22

_ZN11OpenImageIO4v3_16xxhashL18XXH64_endian_alignEPKvmyNS1_13XXH_endianessENS1_13XXH_alignmentE.exit: ; preds = %.lr.ph22.prol.loopexit, %.lr.ph22, %bb.h
  %.3127.i.lcssa = phi i64 [ %.2126.i, %bb.h ], [ %.lcssa.unr, %.lr.ph22.prol.loopexit ], [ %i.ej, %.lr.ph22 ] ; 2 uses
end_hunk_7
