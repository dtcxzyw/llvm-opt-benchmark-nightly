inline.NumInlined: 629
inline.NumDeleted: 306
begin_hunk_0_@_ZN6hermes2vm8unescapeEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
.thread.thread:                                   ; preds = %_ZNK6hermes2vm10StringViewixEj.exit46.thread.thread
  %i.fm = zext i32 %.0334 to i64                  ; 2 uses
  %.sroa.3.0.i54 = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.fm
  %.sroa.3.0.i60 = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i54, i64 4
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i67

bb.ba:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.ap
  %.0.i.sink.i4.i.ph = phi ptr [ %i.ep, %bb.at ], [ %i.ek, %bb.as ], [ %i.ej, %bb.ar ], [ %i.ei, %bb.ap ]
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i.ph, i64 %i.ag
  %i.fo = zext i32 %.0334 to i64                  ; 5 uses
  %.sroa.3.0.i54423 = getelementptr inbounds nuw [2 x i8], ptr %i.fn, i64 %i.fo
  %.sroa.3.0.i60427 = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i54423, i64 4 ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i2.i65 = load i64, ptr %i.ad, align 8, !tbaa !27
  %i.fp = and i64 %.sroa.0.0.copyload.i.i.i.i2.i65, 281474976710655
  %i.fq = inttoptr i64 %i.fp to ptr               ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm8unescapeEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i67

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i67: ; preds = %.thread.thread, %bb.bf, %bb.be, %bb.bd, %bb.bb
  %.sroa.3.0.i60430.a = phi ptr [ %.sroa.3.0.i60, %.thread.thread ], [ %.sroa.3.0.i60427, %bb.bb ], [ %.sroa.3.0.i60427, %bb.bd ], [ %.sroa.3.0.i60427, %bb.be ], [ %.sroa.3.0.i60427, %bb.bf ]
  %i.gc = phi i64 [ %i.fm, %.thread.thread ], [ %i.fo, %bb.bb ], [ %i.fo, %bb.bd ], [ %i.fo, %bb.be ], [ %i.fo, %bb.bf ]
  %.0.i.sink.i4.i68 = phi ptr [ %i.ad, %.thread.thread ], [ %i.fu, %bb.bb ], [ %i.fv, %bb.bd ], [ %i.fw, %bb.be ], [ %i.gb, %bb.bf ]
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i68, i64 %i.ag
  br label %_ZNK6hermes2vm10StringView5beginEv.exit80

_ZNK6hermes2vm10StringView5beginEv.exit80:        ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i77, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i67
  %.sroa.0.0.i61402 = phi ptr [ %.sroa.0.0.i61399417, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i77 ], [ null, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i67 ] ; 3 uses
  %.sroa.3.0.i60400 = phi ptr [ %.sroa.3.0.i60398415, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i77 ], [ %.sroa.3.0.i60430.a, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i67 ] ; 3 uses
  %i.ge = phi i64 [ %i.fk, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i77 ], [ %i.gc, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i67 ] ; 2 uses
  %.sroa.3.0.i69 = phi ptr [ null, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i77 ], [ %i.gd, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i67 ]
  %.sroa.0.0.i70 = phi ptr [ %i.fl, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i77 ], [ null, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i67 ] ; 2 uses
end_hunk_1
