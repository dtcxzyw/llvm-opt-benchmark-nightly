inline.NumInlined: 3173
inline.NumDeleted: 1582
begin_hunk_0_@_ZNK6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE16matchConstraintsEv:bb.a
  br i1 %i.ai, label %_ZNK6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE13canMatchASCIIEv.exit, label %bb.g

_ZNK6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE13canMatchASCIIEv.exit: ; preds = %.lr.ph.i, %bb.g, %.critedge.i, %bb.d, %bb.c, %bb.a, %bb.e, %bb.f
  %i.aj = phi i8 [ 0, %bb.c ], [ 1, %bb.d ], [ 1, %bb.f ], [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %.critedge.i ], [ 0, %.lr.ph.i ], [ 1, %bb.g ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !29
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.h, label %.thread

.thread:                                          ; preds = %_ZNK6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE13canMatchASCIIEv.exit
  %1 = or disjoint i8 %i.aj, 4
  br label %bb.i

bb.h:                                             ; preds = %_ZNK6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE13canMatchASCIIEv.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !577
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !577
  %i.ar = icmp ne ptr %i.ao, %i.aq
  %2 = or disjoint i8 %i.aj, 4
  %cond.fr = freeze i1 %i.ar
  %spec.select = select i1 %cond.fr, i8 %2, i8 %i.aj
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread
  %i.as = phi i8 [ %spec.select, %bb.h ], [ %1, %.thread ]
  ret i8 %i.as
}

end_hunk_0
