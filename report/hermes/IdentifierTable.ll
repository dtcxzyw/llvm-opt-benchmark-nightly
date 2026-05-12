inline.NumInlined: 965
inline.NumDeleted: 556
begin_hunk_0_@_ZN6hermes2vm15IdentifierTable19freeUnmarkedSymbolsERKN4llvh9BitVectorERNS0_6GCBase9IDTrackerE:bb.a
_ZN4llvh9BitVector4flipEv.exit:                   ; preds = %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i, %bb.e
  %i.ce = tail call noundef zeroext i1 @_ZN6hermes2vm6GCBase9IDTracker19hasTrackedObjectIDsEv(ptr noundef nonnull align 8 dereferenceable(200) %2) #15
  %i.cf = load i32, ptr %i.d, align 8, !tbaa !102 ; 2 uses
  %i.cg = load i32, ptr %i.b, align 8, !tbaa !102, !noalias !136 ; 3 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh9BitVector4flipEv.exit
  %i.ci = add i32 %i.cg, -1                       ; 2 uses
  %i.cj = lshr i32 %i.ci, 6                       ; 3 uses
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !61, !noalias !136 ; 2 uses
  %3 = and i32 %i.ci, 63
  %4 = xor i32 %3, 63
  %i.cl = zext nneg i32 %4 to i64
  %i.cm = lshr i64 -1, %i.cl                      ; 2 uses
  %i.cn = zext nneg i32 %i.cj to i64
  %i.co = add nuw nsw i32 %i.cj, 1
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm15IdentifierTable19freeUnmarkedSymbolsERKN4llvh9BitVectorERNS0_6GCBase9IDTrackerE:bb.a
  br label %bb.n

bb.n:                                             ; preds = %_ZN6hermes2vm15IdentifierTable10freeSymbolEj.exit, %bb.i
  %i.ec = phi i32 [ %.pre59, %_ZN6hermes2vm15IdentifierTable10freeSymbolEj.exit ], [ %i.dd, %bb.i ] ; 3 uses
  %i.ed = add nuw i32 %.sroa.4.048, 1             ; 3 uses
  %i.ee = icmp eq i32 %i.ed, %i.ec
  br i1 %i.ee, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ef = lshr i32 %i.ed, 6                       ; 4 uses
  %i.eg = add i32 %i.ec, -1                       ; 2 uses
  %i.eh = lshr i32 %i.eg, 6                       ; 4 uses
  %.not38.i.i.i.i = icmp samesign ugt i32 %i.ef, %i.eh
  br i1 %.not38.i.i.i.i, label %.critedge, label %.lr.ph.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm15IdentifierTable19freeUnmarkedSymbolsERKN4llvh9BitVectorERNS0_6GCBase9IDTrackerE:bb.a
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = lshr i64 -1, %i.el
  %i.en = xor i64 %i.em, -1
  %5 = and i32 %i.eg, 63
  %6 = xor i32 %5, 63
  %i.eo = zext nneg i32 %6 to i64
  %i.ep = lshr i64 -1, %i.eo                      ; 3 uses
  %i.eq = zext nneg i32 %i.ef to i64              ; 2 uses
  %i.er = zext nneg i32 %i.eh to i64              ; 2 uses
end_hunk_2
