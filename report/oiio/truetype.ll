inline.NumInlined: 294
inline.NumDeleted: 158
begin_hunk_0_@TT_RunIns:bb.a

bb.hp:                                            ; preds = %bb.hn
  %i.aer = load i16, ptr %i.az, align 2, !tbaa !309
  %.not11.i = icmp eq i16 %i.aer, 0
  %spec.select.i458 = select i1 %.not11.i, i8 -1, i8 -9 ; 2 uses
  %i.aes = load i16, ptr %i.ev, align 2, !tbaa !312
  %.not12.i = icmp eq i16 %i.aes, 0
  %11 = and i8 %spec.select.i458, -17
  %.1.i459 = select i1 %.not12.i, i8 %spec.select.i458, i8 %11
  %i.aet = load ptr, ptr %i.he, align 8, !tbaa !383
  %i.aeu = and i64 %.val389, 65535
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aet, i64 %i.aeu ; 2 uses
  %i.aew = load i8, ptr %i.aev, align 1, !tbaa !224
  %i.aex = and i8 %.1.i459, %i.aew
  store i8 %i.aex, ptr %i.aev, align 1, !tbaa !224
  br label %Ins_SPVTL.exitthread-pre-split

end_hunk_0
begin_hunk_1_@TT_Load_Composite_Glyph:bb.a

bb.e:                                             ; preds = %bb.d
  %i.ak = and i16 %i.y, 1
  %.not122 = icmp eq i16 %i.ak, 0
  %spec.select = select i1 %.not122, i32 2, i32 4 ; 3 uses
  %i.al = zext i16 %i.z to i32                    ; 7 uses
  %i.am = and i32 %i.al, 8
  %.not123 = icmp eq i32 %i.am, 0                 ; 2 uses
  br i1 %.not123, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %1 = add nuw nsw i32 %spec.select, 2
  br label %bb.j

bb.g:                                             ; preds = %bb.e
end_hunk_1
begin_hunk_2_@TT_Load_Composite_Glyph:bb.a
  br i1 %.not124, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %2 = add nuw nsw i32 %spec.select, 4
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %3 = lshr i32 %i.al, 4
  %4 = and i32 %3, 8
  %spec.select133 = or disjoint i32 %4, %spec.select
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %.1 = phi i32 [ %1, %bb.f ], [ %2, %bb.h ], [ %spec.select133, %bb.i ]
  %5 = zext nneg i32 %.1 to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 %5
  %i.ap = icmp ugt ptr %i.ao, %i.d
  br i1 %i.ap, label %.loopexit, label %bb.k

end_hunk_2
