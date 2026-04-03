begin_hunk_0
  %i.l = load i8, ptr %i.k, align 4, !range !5, !noundef !6
  %i.m = trunc nuw i8 %i.l to i1                  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8              ; 8 uses
  %i.p = icmp ult i64 %i.o, 2147483648            ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.h

end_hunk_0
begin_hunk_1
bb.k:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit29
  %.idx.i = shl nuw nsw i64 %i.o, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i
  %2 = icmp eq i64 %i.o, 0
  br i1 %2, label %_ZN2v88internal25CompareCharsEqualUnsignedIhtEEbPKT_PKT0_m.exit, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %bb.k, %.lr.ph.i30
  %.01013.i31 = phi ptr [ %i.ao, %.lr.ph.i30 ], [ %i.z, %bb.k ] ; 2 uses
  %.01112.i32 = phi ptr [ %i.ap, %.lr.ph.i30 ], [ %i.ab, %bb.k ] ; 2 uses
  %i.al = load i16, ptr %.01013.i31, align 2
end_hunk_1
begin_hunk_2
  %i.ar = icmp eq i32 %bcmp.i, 0
  br label %_ZN2v88internal25CompareCharsEqualUnsignedIhtEEbPKT_PKT0_m.exit

_ZN2v88internal25CompareCharsEqualUnsignedIhtEEbPKT_PKT0_m.exit: ; preds = %.lr.ph.i, %.lr.ph.i30, %_ZN2v88internal25CompareCharsEqualUnsignedIhtEEbPKT_PKT0_m.exit.sink.split, %bb.k, %.thread, %_ZNK2v88internal12AstRawString6lengthEv.exit26, %_ZNK2v88internal12AstRawString6lengthEv.exit23
  %.1 = phi i1 [ true, %_ZNK2v88internal12AstRawString6lengthEv.exit26 ], [ false, %_ZNK2v88internal12AstRawString6lengthEv.exit23 ], [ %i.ar, %_ZN2v88internal25CompareCharsEqualUnsignedIhtEEbPKT_PKT0_m.exit.sink.split ], [ %.not.i33, %.lr.ph.i30 ], [ true, %bb.k ], [ true, %.thread ], [ %.not.i, %.lr.ph.i ]
  ret i1 %.1
}

end_hunk_2
