inline.NumInlined: 6517
inline.NumDeleted: 2392
begin_hunk_0_@_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query3CteNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake:bb.a
  br i1 %i.ac, label %bb.g, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ad = sub i64 8, %i.ab                        ; 3 uses
  %.sroa.0.0.i.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 9, 8) %i.ad, i64 range(i64 0, -9223372036854775808) 8) ; 2 uses
  %i.ae = icmp ugt i64 %i.ad, 3                   ; 3 uses
  %.sroa.03.0.i.i = select i1 %i.ae, i64 4, i64 0 ; 4 uses
  %narrow = and i1 %i.ae, %i.x
  %.sroa.0.0.i10.i = zext i1 %narrow to i64       ; 2 uses
  %3 = or disjoint i64 %.sroa.03.0.i.i, 1
  %4 = icmp samesign ult i64 %3, %.sroa.0.0.i.i
  br i1 %4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query3CteNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake:bb.a
  %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel.idx
  %.sroa.015.0.copyload.i.i = load i16, ptr %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel, align 4, !alias.scope !14245, !noalias !14240
  %i.af = zext i16 %.sroa.015.0.copyload.i.i to i64
  %5 = shl nuw nsw i64 %.sroa.03.0.i.i, 3
  %i.ag = shl nuw nsw i64 %i.af, %5
  %i.ah = or i64 %i.ag, %.sroa.0.0.i10.i
  %6 = or disjoint i64 %.sroa.03.0.i.i, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.03.1.i.i = phi i64 [ %6, %bb.d ], [ %.sroa.03.0.i.i, %bb.c ] ; 3 uses
  %.sroa.0.1.i.i = phi i64 [ %i.ah, %bb.d ], [ %.sroa.0.0.i10.i, %bb.c ] ; 2 uses
  %7 = icmp samesign ult i64 %.sroa.03.1.i.i, %.sroa.0.0.i.i
  br i1 %7, label %bb.f, label %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.03.1.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !14245, !noalias !14240, !noundef !4
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl nuw nsw i64 %.sroa.03.1.i.i, 3
  %i.am = shl nuw nsw i64 %i.ak, %i.al
end_hunk_1
